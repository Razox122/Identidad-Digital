-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-06-2023 a las 20:57:29
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `datosp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id_persona` int(10) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `clavelector` varchar(18) NOT NULL,
  `contraseña` varchar(10) NOT NULL,
  `nombre_imagen` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id_persona`, `nombre`, `apellido`, `email`, `clavelector`, `contraseña`, `nombre_imagen`) VALUES
(8, 'Daniel', 'Hernandez', 'vidaherna12@gmail.com', '325476587', '976786', 'a944ab33-5ee2-4d46-8ef3-77542c91ca49.jpg'),
(9, 'Daniel', 'Hernandez', 'vidaherna12@gmail.com', '142356786', '124387', 'L8EIpF.jpg'),
(10, 'victor', 'hjgvfd', 'vidaherna122@gmail.com', '5678o', 'eee', 'L8EIpF.jpg'),
(11, 'Victor Dan', 'Hernandez', 'jsbc@gmail.com', '12345t', 'vbnb', 'L8EIpF.jpg'),
(12, 'Daniel Her', 'hjgvfd', 'qi@gnmai.com', '1', 'fdsa', 'L8EIpF.jpg'),
(13, 'Daniel Her', 'hjgvfd', 'vidaherna12@gmail.com', '2', '45', 'L8EIpF.jpg'),
(14, 'victor', 'Hernandez', 'vidaherna122@gmail.com', '3', '5', 'L8EIpF.jpg'),
(15, 'Daniel Her', 'Hernandez', 'vidaherna122@gmail.com', '4', 'ig', 'L8EIpF.jpg'),
(16, 'Daniel', 'hjgvfd', 'vidaherna122@gmail.com', '10', 'uyruy', 'L8EIpF.jpg'),
(17, 'alfredo', 'Hernandez', 'vidaherna12@gmail.com', '123456789098765432', 'aaa', '2.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id_persona`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id_persona` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
