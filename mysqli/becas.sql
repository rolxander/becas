-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-07-2020 a las 08:51:44
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `becas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `id` int(11) NOT NULL,
  `id_facultad` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `id_modalidad` varchar(5) DEFAULT NULL,
  `admision` varchar(20) DEFAULT NULL,
  `grado` varchar(20) DEFAULT NULL,
  `acreditacion` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`id`, `id_facultad`, `nombre`, `id_modalidad`, `admision`, `grado`, `acreditacion`) VALUES
(1, 1, 'Ingenieria de sistemas', '1', '1', '1', 'sin acreditacion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facultad`
--

CREATE TABLE `facultad` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `facultad`
--

INSERT INTO `facultad` (`id`, `nombre`) VALUES
(1, 'Tecnologia'),
(2, 'Derecho');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `apellido_paterno` varchar(30) DEFAULT NULL,
  `apellido_materno` varchar(30) DEFAULT NULL,
  `carnet_identidad` varchar(30) DEFAULT NULL,
  `celulcar` varchar(11) DEFAULT NULL,
  `correo` varchar(30) DEFAULT NULL,
  `cu` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id`, `nombre`, `apellido_paterno`, `apellido_materno`, `carnet_identidad`, `celulcar`, `correo`, `cu`) VALUES
(1, 'Jose Gael', 'Choque', ' Serrano', '7895462', '78665874', 'gaelelpapi@gmail.com', '1561-15616');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona_beca`
--

CREATE TABLE `persona_beca` (
  `id` int(11) NOT NULL,
  `id_persona` int(11) DEFAULT NULL,
  `id_carrera` int(11) DEFAULT NULL,
  `id_tipo_beca` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `persona_beca`
--

INSERT INTO `persona_beca` (`id`, `id_persona`, `id_carrera`, `id_tipo_beca`) VALUES
(1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_becas`
--

CREATE TABLE `tipo_becas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `monto` double(5,3) DEFAULT NULL,
  `detalle` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_becas`
--

INSERT INTO `tipo_becas` (`id`, `nombre`, `monto`, `detalle`) VALUES
(1, NULL, NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`id`,`id_facultad`),
  ADD KEY `id_facultad` (`id_facultad`);

--
-- Indices de la tabla `facultad`
--
ALTER TABLE `facultad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `persona_beca`
--
ALTER TABLE `persona_beca`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_persona` (`id_persona`),
  ADD KEY `id_carrera` (`id_carrera`),
  ADD KEY `id_tipo_beca` (`id_tipo_beca`);

--
-- Indices de la tabla `tipo_becas`
--
ALTER TABLE `tipo_becas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carrera`
--
ALTER TABLE `carrera`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `facultad`
--
ALTER TABLE `facultad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `persona_beca`
--
ALTER TABLE `persona_beca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tipo_becas`
--
ALTER TABLE `tipo_becas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD CONSTRAINT `carrera_ibfk_1` FOREIGN KEY (`id_facultad`) REFERENCES `facultad` (`id`);

--
-- Filtros para la tabla `persona_beca`
--
ALTER TABLE `persona_beca`
  ADD CONSTRAINT `persona_beca_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id`),
  ADD CONSTRAINT `persona_beca_ibfk_2` FOREIGN KEY (`id_carrera`) REFERENCES `carrera` (`id`),
  ADD CONSTRAINT `persona_beca_ibfk_3` FOREIGN KEY (`id_tipo_beca`) REFERENCES `tipo_becas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
