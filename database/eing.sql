-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 14-06-2019 a las 13:06:53
-- Versión del servidor: 5.7.26-0ubuntu0.18.04.1
-- Versión de PHP: 7.2.19-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `eing2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `id` int(11) NOT NULL,
  `nombre` varchar(80) DEFAULT NULL,
  `presentacion` blob,
  `perfil` blob,
  `plan_pdf` varchar(50) DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciclos`
--

CREATE TABLE `ciclos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `id_plan` int(11) NOT NULL,
  `id_orientacion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciclo_materia`
--

CREATE TABLE `ciclo_materia` (
  `id` int(11) NOT NULL,
  `id_ciclo` int(11) NOT NULL,
  `id_materia` int(11) NOT NULL,
  `id_regimen` int(11) NOT NULL,
  `horas` int(11) NOT NULL,
  `hs_total` int(11) NOT NULL,
  `programa` varchar(100) DEFAULT NULL,
  `anio` int(11) NOT NULL,
  `codigo` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `correlativas`
--

CREATE TABLE `correlativas` (
  `id` int(11) NOT NULL,
  `id_ciclo_materia` int(11) NOT NULL,
  `id_correlativa` int(11) NOT NULL,
  `id_correlativa_tipo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `correlativas_tipo`
--

CREATE TABLE `correlativas_tipo` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cvar`
--

CREATE TABLE `cvar` (
  `id` int(11) NOT NULL,
  `id_docente` int(11) NOT NULL,
  `areas` varchar(500) DEFAULT NULL,
  `experticia` varchar(500) DEFAULT NULL,
  `grado` varchar(500) DEFAULT NULL,
  `especializacion` varchar(500) DEFAULT NULL,
  `maestria` varchar(500) DEFAULT NULL,
  `doctorado` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentes`
--

CREATE TABLE `docentes` (
  `id` int(10) NOT NULL,
  `persona_id` bigint(20) NOT NULL,
  `id_docente_categoria` int(11) DEFAULT NULL,
  `descripcion` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente_categoria`
--

CREATE TABLE `docente_categoria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `id` int(11) NOT NULL,
  `persona_id` bigint(20) NOT NULL,
  `legajo` varchar(50) NOT NULL,
  `plan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'members', 'General User');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `id_tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias_tipo`
--

CREATE TABLE `materias_tipo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia_docente`
--

CREATE TABLE `materia_docente` (
  `id` int(11) NOT NULL,
  `id_ciclo_materia` int(11) NOT NULL,
  `id_docente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `operaciones`
--

CREATE TABLE `operaciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `imagen` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `optativas`
--

CREATE TABLE `optativas` (
  `id` int(11) NOT NULL,
  `id_origen` int(11) NOT NULL,
  `id_optativa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orientaciones`
--

CREATE TABLE `orientaciones` (
  `id` int(11) NOT NULL,
  `id_plan` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `id` bigint(20) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `nombre_2` varchar(50) DEFAULT NULL,
  `dni` varchar(50) DEFAULT NULL,
  `cuit` varchar(50) DEFAULT NULL,
  `email1` varchar(50) DEFAULT NULL,
  `email2` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planes`
--

CREATE TABLE `planes` (
  `id` int(11) NOT NULL,
  `id_carrera` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `duracion` int(11) NOT NULL,
  `vigente` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regimen`
--

CREATE TABLE `regimen` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `titulos`
--

CREATE TABLE `titulos` (
  `id` int(11) NOT NULL,
  `id_plan` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `id_orientacion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'admin', '$2y$08$kOKjC2ZI.r9ZDap5y6VXzuOLTW01TWZI/mE5yD1VNWCEWaYidlBzq', '', 'admin@admin.com', NULL, NULL, NULL, NULL, 1268889823, 1560525392, 1, 'Sergio', 'Arevalo', 'ADMIN', '0'),
(2, '127.0.0.1', 'user', '$2y$08$4t0JshOQrSJwbqJbTLRineDCBESSAwNTkL4kRz9KzAq0RoyPXHF0i', NULL, 'user@user.com', NULL, 'dbh2E39uTZ5Ud9Tb.wO9ee37b9e7bb6f9ed71b6b', 1522911545, NULL, 1521634623, 1560525321, 1, 'user', 'user', 'UNdeC', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(12, 1, 1),
(13, 1, 2),
(18, 2, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ciclos`
--
ALTER TABLE `ciclos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_plan` (`id_plan`),
  ADD KEY `id_orientacion` (`id_orientacion`);

--
-- Indices de la tabla `ciclo_materia`
--
ALTER TABLE `ciclo_materia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_ciclo` (`id_ciclo`),
  ADD KEY `id_materia` (`id_materia`),
  ADD KEY `id_regimen` (`id_regimen`);

--
-- Indices de la tabla `correlativas`
--
ALTER TABLE `correlativas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_correlativa` (`id_correlativa`),
  ADD KEY `id_ciclo` (`id_ciclo_materia`),
  ADD KEY `id_correlativa_tipo` (`id_correlativa_tipo`);

--
-- Indices de la tabla `correlativas_tipo`
--
ALTER TABLE `correlativas_tipo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cvar`
--
ALTER TABLE `cvar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_docente` (`id_docente`);

--
-- Indices de la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `docente_categoria_idx` (`id_docente_categoria`),
  ADD KEY `persona_id` (`persona_id`);

--
-- Indices de la tabla `docente_categoria`
--
ALTER TABLE `docente_categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tipo_id` (`id_tipo`);

--
-- Indices de la tabla `materias_tipo`
--
ALTER TABLE `materias_tipo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `materia_docente`
--
ALTER TABLE `materia_docente`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_ciclo` (`id_ciclo_materia`,`id_docente`),
  ADD KEY `cm_materia_docente` (`id_docente`);

--
-- Indices de la tabla `operaciones`
--
ALTER TABLE `operaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `optativas`
--
ALTER TABLE `optativas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_origen` (`id_origen`),
  ADD KEY `id_origen_2` (`id_origen`),
  ADD KEY `optativa_cm` (`id_optativa`);

--
-- Indices de la tabla `orientaciones`
--
ALTER TABLE `orientaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_plan` (`id_plan`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `planes`
--
ALTER TABLE `planes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_carrera` (`id_carrera`);

--
-- Indices de la tabla `regimen`
--
ALTER TABLE `regimen`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `titulos`
--
ALTER TABLE `titulos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_plan` (`id_plan`),
  ADD KEY `id_orientacion` (`id_orientacion`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carrera`
--
ALTER TABLE `carrera`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ciclos`
--
ALTER TABLE `ciclos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `ciclo_materia`
--
ALTER TABLE `ciclo_materia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `correlativas`
--
ALTER TABLE `correlativas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `correlativas_tipo`
--
ALTER TABLE `correlativas_tipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `cvar`
--
ALTER TABLE `cvar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `docentes`
--
ALTER TABLE `docentes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `docente_categoria`
--
ALTER TABLE `docente_categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `materias_tipo`
--
ALTER TABLE `materias_tipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `materia_docente`
--
ALTER TABLE `materia_docente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `operaciones`
--
ALTER TABLE `operaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `optativas`
--
ALTER TABLE `optativas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `orientaciones`
--
ALTER TABLE `orientaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `planes`
--
ALTER TABLE `planes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `regimen`
--
ALTER TABLE `regimen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `titulos`
--
ALTER TABLE `titulos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ciclos`
--
ALTER TABLE `ciclos`
  ADD CONSTRAINT `ciclo_orientacion` FOREIGN KEY (`id_orientacion`) REFERENCES `orientaciones` (`id`),
  ADD CONSTRAINT `ciclo_plan` FOREIGN KEY (`id_plan`) REFERENCES `planes` (`id`);

--
-- Filtros para la tabla `cvar`
--
ALTER TABLE `cvar`
  ADD CONSTRAINT `cvar_docente` FOREIGN KEY (`id_docente`) REFERENCES `docentes` (`id`);

--
-- Filtros para la tabla `docentes`
--
ALTER TABLE `docentes`
  ADD CONSTRAINT `docente_categoria` FOREIGN KEY (`id_docente_categoria`) REFERENCES `docente_categoria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `persona_id_docente` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `materias`
--
ALTER TABLE `materias`
  ADD CONSTRAINT `asignatura_tipo` FOREIGN KEY (`id_tipo`) REFERENCES `materias_tipo` (`id`);

--
-- Filtros para la tabla `materia_docente`
--
ALTER TABLE `materia_docente`
  ADD CONSTRAINT `cm_docente` FOREIGN KEY (`id_docente`) REFERENCES `docentes` (`id`),
  ADD CONSTRAINT `cm_materia_docente` FOREIGN KEY (`id_ciclo_materia`) REFERENCES `ciclo_materia` (`id`);

--
-- Filtros para la tabla `optativas`
--
ALTER TABLE `optativas`
  ADD CONSTRAINT `optativa_cm` FOREIGN KEY (`id_optativa`) REFERENCES `ciclo_materia` (`id`),
  ADD CONSTRAINT `origen_cm` FOREIGN KEY (`id_origen`) REFERENCES `ciclo_materia` (`id`);

--
-- Filtros para la tabla `titulos`
--
ALTER TABLE `titulos`
  ADD CONSTRAINT `titulo_orientacion` FOREIGN KEY (`id_orientacion`) REFERENCES `orientaciones` (`id`),
  ADD CONSTRAINT `titulo_plan` FOREIGN KEY (`id_plan`) REFERENCES `planes` (`id`);

--
-- Filtros para la tabla `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
