/*
SQLyog Enterprise - MySQL GUI v8.05 
MySQL - 5.7.24 : Database - eing
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `cursos` */

CREATE TABLE `cursos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `modalidad` varchar(300) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nombre` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  `enlace` varchar(300) COLLATE utf8_spanish_ci DEFAULT NULL,
  `profesor` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `publicado` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='Datos básicos de los cursos.';

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;