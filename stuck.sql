-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-10-2023 a las 18:04:05
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `stuck`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stuck`
--

CREATE TABLE `stuck` (
  `id_articulo` int(10) NOT NULL,
  `id_provedor` int(10) NOT NULL,
  `nombre_articulo` varchar(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `unidad_medida` enum('ml','lt','gr','kg','unidades') NOT NULL,
  `cantidad` int(10) NOT NULL,
  `minimos` enum('2','4','6','8','10') NOT NULL,
  `maximos` enum('12','14','16','18','20') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `stuck`
--

INSERT INTO `stuck` (`id_articulo`, `id_provedor`, `nombre_articulo`, `descripcion`, `unidad_medida`, `cantidad`, `minimos`, `maximos`) VALUES
(3, 10, ' Nutella Escupida poir mi', 'Siemopre sale algo mal 0', 'ml', 130, '2', '12');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `stuck`
--
ALTER TABLE `stuck`
  ADD PRIMARY KEY (`id_articulo`,`id_provedor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `stuck`
--
ALTER TABLE `stuck`
  MODIFY `id_articulo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
