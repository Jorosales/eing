/*
SQLyog Enterprise - MySQL GUI v8.05 
MySQL - 5.7.23 : Database - eing
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`eing` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `eing`;

/*Table structure for table `carrera` */

DROP TABLE IF EXISTS `carrera`;

CREATE TABLE `carrera` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) DEFAULT NULL,
  `presentacion` blob,
  `perfil` blob,
  `plan_pdf` varchar(50) DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;

/*Table structure for table `ciclo_materia` */

DROP TABLE IF EXISTS `ciclo_materia`;

CREATE TABLE `ciclo_materia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_ciclo` int(11) NOT NULL,
  `id_materia` int(11) NOT NULL,
  `id_regimen` int(11) NOT NULL,
  `horas` int(11) NOT NULL,
  `hs_total` int(11) NOT NULL,
  `programa` varchar(100) DEFAULT NULL,
  `anio` int(11) NOT NULL,
  `codigo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_ciclo` (`id_ciclo`),
  KEY `id_materia` (`id_materia`),
  KEY `id_regimen` (`id_regimen`)
) ENGINE=InnoDB AUTO_INCREMENT=233 DEFAULT CHARSET=latin1;

/*Table structure for table `ciclos` */

DROP TABLE IF EXISTS `ciclos`;

CREATE TABLE `ciclos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) NOT NULL,
  `id_plan` int(11) NOT NULL,
  `id_orientacion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_plan` (`id_plan`),
  KEY `id_orientacion` (`id_orientacion`),
  CONSTRAINT `ciclo_orientacion` FOREIGN KEY (`id_orientacion`) REFERENCES `orientaciones` (`id`),
  CONSTRAINT `ciclo_plan` FOREIGN KEY (`id_plan`) REFERENCES `planes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Table structure for table `correlativas` */

DROP TABLE IF EXISTS `correlativas`;

CREATE TABLE `correlativas` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `id_ciclo_materia` int(11) NOT NULL,
  `id_correlativa` int(11) NOT NULL,
  `id_correlativa_tipo` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_correlativa` (`id_correlativa`),
  KEY `id_ciclo` (`id_ciclo_materia`),
  KEY `id_correlativa_tipo` (`id_correlativa_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=694 DEFAULT CHARSET=latin1;

/*Table structure for table `correlativas_tipo` */

DROP TABLE IF EXISTS `correlativas_tipo`;

CREATE TABLE `correlativas_tipo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;

/*Table structure for table `cvar` */

DROP TABLE IF EXISTS `cvar`;

CREATE TABLE `cvar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_docente` int(11) NOT NULL,
  `areas` varchar(500) DEFAULT NULL,
  `experticia` varchar(500) DEFAULT NULL,
  `grado` varchar(500) DEFAULT NULL,
  `especializacion` varchar(500) DEFAULT NULL,
  `maestria` varchar(500) DEFAULT NULL,
  `doctorado` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_docente` (`id_docente`),
  CONSTRAINT `cvar_docente` FOREIGN KEY (`id_docente`) REFERENCES `docentes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `docente_categoria` */

DROP TABLE IF EXISTS `docente_categoria`;

CREATE TABLE `docente_categoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;

/*Table structure for table `docentes` */

DROP TABLE IF EXISTS `docentes`;

CREATE TABLE `docentes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `persona_id` bigint(20) NOT NULL,
  `id_docente_categoria` int(11) DEFAULT NULL,
  `descripcion` blob,
  PRIMARY KEY (`id`),
  KEY `docente_categoria_idx` (`id_docente_categoria`),
  KEY `persona_id` (`persona_id`),
  CONSTRAINT `docente_categoria` FOREIGN KEY (`id_docente_categoria`) REFERENCES `docente_categoria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `persona_id_docente` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;

/*Table structure for table `escuela` */

DROP TABLE IF EXISTS `escuela`;

CREATE TABLE `escuela` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) NOT NULL,
  `universidad` varchar(60) NOT NULL,
  `director` varchar(80) NOT NULL,
  `color` char(7) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Table structure for table `estudiantes` */

DROP TABLE IF EXISTS `estudiantes`;

CREATE TABLE `estudiantes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `persona_id` bigint(20) NOT NULL,
  `legajo` varchar(50) NOT NULL,
  `id_plan` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_estudiantes_persona` (`persona_id`),
  KEY `FK_estudiantes_planes` (`id_plan`),
  CONSTRAINT `FK_estudiantes_persona` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`),
  CONSTRAINT `FK_estudiantes_planes` FOREIGN KEY (`id_plan`) REFERENCES `planes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Table structure for table `groups` */

DROP TABLE IF EXISTS `groups`;

CREATE TABLE `groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Table structure for table `institucion` */

DROP TABLE IF EXISTS `institucion`;

CREATE TABLE `institucion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `razon_social` varchar(100) DEFAULT NULL,
  `cuit` varchar(11) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Table structure for table `login_attempts` */

DROP TABLE IF EXISTS `login_attempts`;

CREATE TABLE `login_attempts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `materia_docente` */

DROP TABLE IF EXISTS `materia_docente`;

CREATE TABLE `materia_docente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_ciclo_materia` int(11) NOT NULL,
  `id_docente` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_ciclo` (`id_ciclo_materia`,`id_docente`),
  KEY `cm_materia_docente` (`id_docente`),
  CONSTRAINT `cm_docente` FOREIGN KEY (`id_docente`) REFERENCES `docentes` (`id`),
  CONSTRAINT `cm_materia_docente` FOREIGN KEY (`id_ciclo_materia`) REFERENCES `ciclo_materia` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `materias` */

DROP TABLE IF EXISTS `materias`;

CREATE TABLE `materias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `id_tipo` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tipo_id` (`id_tipo`),
  CONSTRAINT `asignatura_tipo` FOREIGN KEY (`id_tipo`) REFERENCES `materias_tipo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;

/*Table structure for table `materias_tipo` */

DROP TABLE IF EXISTS `materias_tipo`;

CREATE TABLE `materias_tipo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Table structure for table `operaciones` */

DROP TABLE IF EXISTS `operaciones`;

CREATE TABLE `operaciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `imagen` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `optativas` */

DROP TABLE IF EXISTS `optativas`;

CREATE TABLE `optativas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_origen` int(11) NOT NULL,
  `id_optativa` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_origen` (`id_origen`),
  KEY `id_origen_2` (`id_origen`),
  KEY `optativa_cm` (`id_optativa`),
  CONSTRAINT `optativa_cm` FOREIGN KEY (`id_optativa`) REFERENCES `ciclo_materia` (`id`),
  CONSTRAINT `origen_cm` FOREIGN KEY (`id_origen`) REFERENCES `ciclo_materia` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `orientaciones` */

DROP TABLE IF EXISTS `orientaciones`;

CREATE TABLE `orientaciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_plan` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_plan` (`id_plan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `persona` */

DROP TABLE IF EXISTS `persona`;

CREATE TABLE `persona` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `apellido` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `nombre_2` varchar(50) DEFAULT NULL,
  `dni` varchar(50) DEFAULT NULL,
  `cuit` varchar(50) DEFAULT NULL,
  `email1` varchar(50) DEFAULT NULL,
  `email2` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;

/*Table structure for table `planes` */

DROP TABLE IF EXISTS `planes`;

CREATE TABLE `planes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_carrera` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `duracion` int(11) NOT NULL,
  `vigente` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id_carrera` (`id_carrera`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Table structure for table `proyecto_documento` */

DROP TABLE IF EXISTS `proyecto_documento`;

CREATE TABLE `proyecto_documento` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_proyecto` int(11) DEFAULT NULL,
  `documento` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_proyecto_documento_proyecto` (`id_proyecto`),
  KEY `FK_proyecto_documento_documento` (`documento`),
  CONSTRAINT `FK_proyecto_documento_proyecto` FOREIGN KEY (`id_proyecto`) REFERENCES `proyectos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Table structure for table `proyecto_estudiante` */

DROP TABLE IF EXISTS `proyecto_estudiante`;

CREATE TABLE `proyecto_estudiante` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_proyecto` int(11) DEFAULT NULL,
  `id_estudiante` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_proyecto_estudiante_proyecto` (`id_proyecto`),
  KEY `FK_proyecto_estudiante_estudiante` (`id_estudiante`),
  CONSTRAINT `FK_proyecto_estudiante_estudiante` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiantes` (`id`),
  CONSTRAINT `FK_proyecto_estudiante_proyecto` FOREIGN KEY (`id_proyecto`) REFERENCES `proyectos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Table structure for table `proyectos` */

DROP TABLE IF EXISTS `proyectos`;

CREATE TABLE `proyectos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_tipo` int(11) DEFAULT NULL,
  `titulo` varchar(200) DEFAULT NULL,
  `id_institucion` int(11) DEFAULT NULL,
  `id_tutor` int(11) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  `observaciones` varchar(500) DEFAULT NULL,
  `creacion` date DEFAULT NULL,
  `finalizacion` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_proyectos_tipo` (`id_tipo`),
  KEY `FK_proyectos_institucion` (`id_institucion`),
  KEY `FK_proyectos_tutor` (`id_tutor`),
  CONSTRAINT `FK_proyectos_institucion` FOREIGN KEY (`id_institucion`) REFERENCES `institucion` (`id`),
  CONSTRAINT `FK_proyectos_tipo` FOREIGN KEY (`id_tipo`) REFERENCES `tipo_proyecto` (`id`),
  CONSTRAINT `FK_proyectos_tutor` FOREIGN KEY (`id_tutor`) REFERENCES `docentes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Table structure for table `publicaciones` */

DROP TABLE IF EXISTS `publicaciones`;

CREATE TABLE `publicaciones` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `contenido` blob,
  `creador_id` int(10) unsigned DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `ultima_modificacion` date DEFAULT NULL,
  `modificador_id` int(10) unsigned DEFAULT NULL,
  `esta_publicado` tinyint(1) NOT NULL,
  `fecha` date NOT NULL,
  `lugar` varchar(100) DEFAULT 'UNdeC',
  `comienzo` time DEFAULT '09:00:00',
  `fin` time DEFAULT '15:00:00',
  `tipo` int(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `FK_publicaciones_creador_id` (`creador_id`),
  KEY `FK_publicaciones_modificador_id` (`modificador_id`),
  KEY `FK_publicaciones_tipo_publicacion` (`tipo`),
  CONSTRAINT `FK_publicaciones_creador_id` FOREIGN KEY (`creador_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_publicaciones_modificador_id` FOREIGN KEY (`modificador_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_publicaciones_tipo_publicacion` FOREIGN KEY (`tipo`) REFERENCES `tipo_publicacion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Table structure for table `regimen` */

DROP TABLE IF EXISTS `regimen`;

CREATE TABLE `regimen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Table structure for table `tipo_proyecto` */

DROP TABLE IF EXISTS `tipo_proyecto`;

CREATE TABLE `tipo_proyecto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `abreviatura` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Table structure for table `tipo_publicacion` */

DROP TABLE IF EXISTS `tipo_publicacion`;

CREATE TABLE `tipo_publicacion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `titulos` */

DROP TABLE IF EXISTS `titulos`;

CREATE TABLE `titulos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_plan` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `id_orientacion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_plan` (`id_plan`),
  KEY `id_orientacion` (`id_orientacion`),
  CONSTRAINT `titulo_orientacion` FOREIGN KEY (`id_orientacion`) REFERENCES `orientaciones` (`id`),
  CONSTRAINT `titulo_plan` FOREIGN KEY (`id_plan`) REFERENCES `planes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Table structure for table `users_groups` */

DROP TABLE IF EXISTS `users_groups`;

CREATE TABLE `users_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  KEY `fk_users_groups_users1_idx` (`user_id`),
  KEY `fk_users_groups_groups1_idx` (`group_id`),
  CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
