<?php
// Conecta con la base de datos
$conexion = mysqli_connect("localhost", "root", "", "DatosP");

// Verificar si la conexión fue exitosa
if (!$conexion) {
    die("Error al conectar a la base de datos: " . mysqli_connect_error());
}

// Verificar si se ha seleccionado una imagen
if (isset($_FILES['imagen']) && $_FILES['imagen']['error'] == 0) {
    $nombre_imagen = $_FILES['imagen']['name'];
    $tipo = $_FILES['imagen']['type'];
    $tamanio = $_FILES['imagen']['size'];
    $temp = $_FILES['imagen']['tmp_name'];

    // Validar que el archivo sea una imagen y no exceda el tamaño permitido
    if (strpos($tipo, 'image') !== false && $tamanio <= 1000000) {
        // Guardar la imagen en la carpeta "img"
        $ruta = "img/" . $nombre_imagen;
        move_uploaded_file($temp, $ruta);

        // Insertar los datos en la tabla correspondiente
        $nombre = $_POST["nombre"];
        $apellido = $_POST["apellido"];
        $email = $_POST["email"];
        $clavelector = $_POST["clavelector"];
        $contraseña = $_POST["contraseña"];

        $sql = "INSERT INTO persona (nombre, apellido, email, clavelector, contraseña, nombre_imagen) VALUES ('$nombre', '$apellido', '$email', '$clavelector', '$contraseña', '$nombre_imagen')";
        if (mysqli_query($conexion, $sql)) {
            // Registro exitoso, redireccionar al archivo HTML deseado
            header("Location: RegistroExitoso.html");
            exit();
        } else {
            echo "Error al registrar los datos: " . mysqli_error($conexion);
        }

        echo "La imagen se ha guardado correctamente.";
    } else {
        echo "El archivo no es una imagen o excede el tamaño permitido.";
    }
} else if (isset($_POST["eliminar"])) {
    // Eliminar registro por clavelector
    $clavelector = $_POST["clavelector"];

    $sql = "DELETE FROM persona WHERE clavelector = '$clavelector'";
    if (mysqli_query($conexion, $sql)) {
        echo "Registro eliminado correctamente.";
    } else {
        echo "Error al eliminar el registro: " . mysqli_error($conexion);
    }
} else if (isset($_POST["actualizar"])) {
    // Redireccionar a otro archivo HTML para actualizar
    header("Location: ActualizarRegistro.html");
    exit();
} else if (isset($_POST["clavelector"])) {
    $clavelector = $_POST["clavelector"];
    
    // Obtener los nuevos datos del formulario
    $email = $_POST["email"];
    $contraseña = $_POST["contraseña"];
    $nombre = $_POST["nombre"];
    $apellido = $_POST["apellido"];

    // Construir la consulta para actualizar los datos
    $sql = "UPDATE persona SET email = '$email', contraseña = '$contraseña', nombre = '$nombre', apellido = '$apellido' WHERE clavelector = '$clavelector'";

    // Ejecutar la consulta
    if (mysqli_query($conexion, $sql)) {
        echo "El registro se actualizó correctamente.";
    } else {
        echo "Error al actualizar el registro: " . mysqli_error($conexion);
    }
}

// Cierra la conexión con la base de datos
mysqli_close($conexion);
?>
