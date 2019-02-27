-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 27-02-2019 a las 07:50:58
-- Versión del servidor: 5.7.25
-- Versión de PHP: 7.0.33-0+deb9u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `test_rails`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Acceso`
--

CREATE TABLE `Acceso` (
  `acceso_id` int(11) NOT NULL,
  `persona_id` int(11) NOT NULL,
  `fecha_entrada` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_salida` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Acceso`
--

INSERT INTO `Acceso` (`acceso_id`, `persona_id`, `fecha_entrada`, `fecha_salida`) VALUES
(1, 3, '2018-11-22 03:24:39', NULL),
(3, 3, '2018-11-28 17:40:24', '2018-11-28 17:41:26'),
(4, 3, '2018-11-30 05:28:16', NULL),
(5, 3, '2018-12-03 21:19:26', '2018-12-03 21:21:41'),
(6, 3, '2018-12-03 21:24:39', '2018-12-03 21:24:49'),
(7, 3, '2018-12-03 21:25:10', '2018-12-03 21:25:21'),
(8, 3, '2018-12-03 21:27:28', '2018-12-03 21:38:57'),
(9, 3, '2018-12-03 21:39:01', '2018-12-03 21:39:04'),
(10, 3, '2018-12-03 21:39:40', '2018-12-03 21:42:33'),
(11, 3, '2018-12-03 21:54:52', '2018-12-03 21:56:30'),
(12, 3, '2018-12-03 22:16:28', '2018-12-03 22:16:48'),
(13, 3, '2018-12-03 22:22:05', '2018-12-03 22:22:08'),
(14, 8, '2018-12-03 22:38:09', '2018-12-03 22:38:18'),
(15, 7, '2018-12-05 16:40:22', '2018-12-05 16:40:32'),
(16, 8, '2018-12-05 16:40:45', NULL),
(17, 10, '2018-12-05 17:08:05', NULL),
(18, 12, '2018-12-05 17:16:28', NULL),
(19, 3, '2018-12-13 05:55:57', NULL),
(20, 4, '2018-12-18 04:58:25', NULL),
(21, 3, '2018-12-18 04:58:38', NULL),
(22, 6, '2018-12-18 04:58:51', NULL),
(23, 3, '2018-12-23 23:23:38', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Organizacion`
--

CREATE TABLE `Organizacion` (
  `organizacion_id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estatus` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Organizacion`
--

INSERT INTO `Organizacion` (`organizacion_id`, `nombre`, `fecha_registro`, `estatus`) VALUES
(1, 'Estatal de Seguros caracas', '2018-11-23 04:43:34', 1),
(3, 'Samantha  2', '2018-11-20 08:00:03', 1),
(5, 'Betsy Palencia y', '2018-11-21 16:09:22', 1),
(6, 'Seguros Horizonte 5656', '2018-11-21 16:49:31', 1),
(7, 'Seguros Horizonte mirandas', '2018-11-21 13:50:30', 1),
(12, 'camaguan v', '2018-11-21 16:08:57', 1),
(13, 'Nueva', '2018-11-21 16:06:13', 1),
(14, 'Roraima', '2018-11-21 17:41:39', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Persona`
--

CREATE TABLE `Persona` (
  `persona_id` int(11) NOT NULL,
  `organizacion_id` int(11) NOT NULL,
  `cedula` varchar(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `credencial` varchar(100) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estatus` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Persona`
--

INSERT INTO `Persona` (`persona_id`, `organizacion_id`, `cedula`, `nombre`, `apellido`, `credencial`, `fecha_registro`, `estatus`) VALUES
(3, 1, '18486175', 'Carolina', 'Prieto', '54321', '2018-09-05 21:26:30', 1),
(4, 1, '3444888', 'Folinda', 'Castro', '98765', '2018-09-05 21:39:54', 1),
(6, 3, '5289944', 'Diego', 'turin', '098123', '2018-09-23 15:13:50', 1),
(7, 1, '78887778', 'Jose Armando', 'Ramirez', '6544567654', '2018-11-21 23:09:41', 1),
(8, 1, '654455', 'Ismael', 'Ascanio', '762143', '2018-11-26 12:15:44', 1),
(9, 6, '3344556', 'evaristo', 'nautilus', '987456', '2018-12-05 12:58:36', 1),
(10, 7, '533344', 'Sonia', 'Benavides', '123321123', '2018-12-05 13:06:54', 1),
(11, 12, '5334332', 'enmanuel', 'piñera', '4343454', '2018-12-05 13:12:40', 1),
(12, 5, '5566444', 'Pedro', 'Rivera', '4545343', '2018-12-05 13:16:03', 1),
(13, 14, '322334', 'Lorenzo', 'Mendoza', '651209', '2018-12-05 13:18:19', 1),
(14, 1, '2222111', 'Roberto', 'Duran', '4551212', '2018-12-05 13:27:08', 1),
(15, 3, '90009', 'kalendula', 'jojova', '433434444', '2018-12-05 13:28:30', 1),
(16, 5, '4545666', 'Corazon', 'llanero', '98989999', '2018-12-05 13:31:15', 1),
(17, 6, '2322333', 'Rodolfo', 'Arismendi', '4444333', '2018-12-05 13:33:30', 1),
(18, 1, '12333555', 'Rodrigo', 'Cabeza', '7678877', '2018-12-05 13:36:55', 1),
(19, 3, '122345', 'Jose', 'Boves', '342233', '2018-12-05 13:39:34', 1),
(20, 3, '332233', 'Gerasimos', 'Toletero', '345678', '2018-12-05 13:41:24', 1),
(21, 3, '7788900', 'corintio', 'pelaes', '9988777', '2018-12-05 13:46:38', 1),
(22, 6, '1099988', 'ventrilocuo', 'perez', '9876500', '2018-12-05 13:49:14', 1),
(23, 7, '554444', 'Colision', 'Verdadera', '3344444', '2018-12-05 14:02:15', 1),
(24, 3, '5678907', 'solomo', 'rendon', '677899', '2018-12-05 14:38:32', 1),
(25, 1, '679532', 'earisto', 'arisco', '555555', '2018-12-05 14:25:23', 1),
(26, 1, '903456', 'Jhon', 'Boultin', '541122', '2018-12-05 14:32:30', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuario`
--

CREATE TABLE `Usuario` (
  `usuario_id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `password_digest` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `estatus` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `Usuario`
--

INSERT INTO `Usuario` (`usuario_id`, `nombre`, `password_digest`, `correo`, `fecha_registro`, `estatus`) VALUES
(6, 'alexis canchica', '$2a$10$x2bNuSEFHtiE0iESdh/F5eiw24u0ZZI.RK8vDQB9UQ3KKj0zDaxXG', 'alenux1@gmail.com', '2018-11-21 22:39:03', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Acceso`
--
ALTER TABLE `Acceso`
  ADD PRIMARY KEY (`acceso_id`),
  ADD KEY `persona_id` (`persona_id`);

--
-- Indices de la tabla `Organizacion`
--
ALTER TABLE `Organizacion`
  ADD PRIMARY KEY (`organizacion_id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `Persona`
--
ALTER TABLE `Persona`
  ADD PRIMARY KEY (`persona_id`),
  ADD UNIQUE KEY `cedula` (`cedula`),
  ADD UNIQUE KEY `credencial` (`credencial`),
  ADD KEY `organizacion_id` (`organizacion_id`);

--
-- Indices de la tabla `Usuario`
--
ALTER TABLE `Usuario`
  ADD PRIMARY KEY (`usuario_id`),
  ADD UNIQUE KEY `nombre` (`nombre`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Acceso`
--
ALTER TABLE `Acceso`
  MODIFY `acceso_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT de la tabla `Organizacion`
--
ALTER TABLE `Organizacion`
  MODIFY `organizacion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `Persona`
--
ALTER TABLE `Persona`
  MODIFY `persona_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT de la tabla `Usuario`
--
ALTER TABLE `Usuario`
  MODIFY `usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Persona`
--
ALTER TABLE `Persona`
  ADD CONSTRAINT `Persona_ibfk_1` FOREIGN KEY (`organizacion_id`) REFERENCES `Organizacion` (`organizacion_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
