-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-01-2024 a las 14:07:24
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prueba-tec2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citizen`
--

CREATE TABLE `citizen` (
  `DNI` varchar(255) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `citizen`
--

INSERT INTO `citizen` (`DNI`, `name`, `surname`) VALUES
('51234568A', 'Jose Manuel', 'Rodriguez Rodriguez'),
('53194686B', 'Manuel', 'Garrido Lopez'),
('53194686x', 'David', 'Fernandez Comesaña'),
('54123251B', 'Sofia', 'Garrido Graña'),
('54554784F', 'Javier', 'Garrido Fernandez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turn`
--

CREATE TABLE `turn` (
  `ID` bigint(20) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `TURNDATE` date DEFAULT NULL,
  `TURNSTATE` tinyint(1) DEFAULT 0,
  `citizen_dni` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `turn`
--

INSERT INTO `turn` (`ID`, `DESCRIPTION`, `TURNDATE`, `TURNSTATE`, `citizen_dni`) VALUES
(1, 'Renovacion del DNI', '2024-02-01', 0, '51234568A'),
(2, 'Expedicion de certificados', '2024-02-01', 0, '53194686B'),
(3, 'Tramitacion de licencias', '2024-02-01', 0, '53194686x'),
(4, 'Tramites administrativos', '2024-02-01', 0, '54123251B'),
(5, 'Tramites administrativos', '2024-02-01', 0, '54554784F'),
(6, 'Registro en el censo', '2024-02-02', 0, '51234568A'),
(7, 'Renovacion del DNI', '2024-02-02', 0, '53194686B'),
(8, 'Tramitacion de licencias', '2024-02-02', 0, '53194686x'),
(9, 'Registro en el censo', '2024-02-02', 0, '54123251B'),
(10, 'Expedicion de certificados', '2024-02-02', 0, '54554784F');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `citizen`
--
ALTER TABLE `citizen`
  ADD PRIMARY KEY (`DNI`);

--
-- Indices de la tabla `turn`
--
ALTER TABLE `turn`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_turn_citizen_dni` (`citizen_dni`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `turn`
--
ALTER TABLE `turn`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `turn`
--
ALTER TABLE `turn`
  ADD CONSTRAINT `FK_turn_citizen_dni` FOREIGN KEY (`citizen_dni`) REFERENCES `citizen` (`DNI`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
