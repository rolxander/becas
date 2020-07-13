-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-07-2020 a las 10:15:33
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
(1, 2, 'Derecho', '2', '1', 'Licenciatura', 'Acreditado'),
(2, 6, 'Ingeniería de sistemas', '1', '2', 'Licenciatura', 'Sin acreditar'),
(3, 6, 'Ingeniería de ciencias de la computacion', '1', '3', 'Licenciatura', 'Sin acreditar'),
(4, 3, 'Diseño de interiores', '2', '2', 'Licenciatura', 'Acreditado'),
(5, 3, 'Arquitectura', '2', '1', 'Licenciatura', 'Sin acreditar'),
(6, 6, 'Ingeniería de telecomunicaciones', '1', '3', 'Licenciatura', 'acreditado'),
(10, 3, NULL, NULL, NULL, NULL, NULL),
(11, 6, NULL, NULL, NULL, NULL, NULL);

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
(0, NULL),
(1, 'Agronomia'),
(2, 'Derecho'),
(3, 'F.Arquitectura'),
(4, 'Odontologia'),
(5, 'F.Humanidades'),
(6, 'Tecnologia');

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
(1, 'Jose Gael', 'Choque', ' Serrano', '7895462', '78665874', 'gaelelpapi@gmail.com', '1561-15616'),
(2, 'yufan', 'Condori', 'leon', '9054159', '61885175', 'gogeta9000.ycl@gmail.com', '35-4546'),
(3, 'Juan', 'Colque', 'Paz', '8543920', '74329293', 'raul@gmail.com', '34-4252'),
(4, 'Selena', 'Barba', 'Cuellar', '5949369', '73492592', 'selenio@gmail.com', '35-4540'),
(5, 'Ely', 'Soliz', 'Mollo', '9259523', '72359203', 'soliz@gmail.com', '32-3526'),
(6, 'Edson', 'Marquez', 'Cuellar', '5829452', '63492595', 'mmarquez@gmail.com', '32-3526'),
(7, 'Leydi', 'Gonzales', 'Cruz', '7485929', '73925932', 'gonzalito@gmail.com', '35-2673'),
(8, 'Daniela', 'Ramires', 'flores', '2395920', '75329910', 'flores74@gmail.com', '33-3250');

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
(1, 1, 1, 1),
(2, 2, 2, 4),
(3, 3, 3, 3),
(4, 4, 4, 4),
(5, 5, 5, 1),
(6, 6, 6, 4),
(7, 7, 3, 2),
(8, 8, 6, 4);

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
(1, 'B.Estudio', 85.000, 'Otorgado a los  mejores 4 estudiantes de cada carrera'),
(2, 'B.Alimentaria', 50.000, 'Necesitado'),
(3, 'B.Auxliatura', 70.000, 'Favorece a los estudiantes que cooperen con las labores y enseñansas'),
(4, 'B.Vivenda', 90.000, 'Otorgado a estudiantes de escasos recursos economicos');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `facultad`
--
ALTER TABLE `facultad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `persona_beca`
--
ALTER TABLE `persona_beca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tipo_becas`
--
ALTER TABLE `tipo_becas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
