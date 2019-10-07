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
  CONSTRAINT `FK_cvar_docentes` FOREIGN KEY (`id_docente`) REFERENCES `docentes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `cvar` */

insert  into `cvar`(`id`,`id_docente`,`areas`,`experticia`,`grado`,`especializacion`,`maestria`,`doctorado`) values (1,2,'','','','','',''),(2,3,'','','','','',''),(3,4,'','','','','',''),(4,5,'','','','','',''),(5,6,'','','','','',''),(6,7,'','','','','',''),(7,8,'','','','','',''),(8,9,'','','','','',''),(9,10,'','','','','',''),(10,11,'','','','','',''),(11,12,'','','','','',''),(12,13,'','','','','',''),(13,14,'','','','','',''),(14,15,'','','','','',''),(15,16,'','','','','',''),(16,17,'','','','','',''),(17,18,'','','','','',''),(18,19,'','','','','',''),(19,20,'','','','','',''),(20,21,'','','','','',''),(21,22,'','','','','',''),(22,23,'','','','','',''),(23,24,'','','','','',''),(24,25,'','','','','',''),(25,26,'','','','','',''),(26,27,'','','','','',''),(27,28,'','','','','',''),(28,29,'','','','','',''),(29,30,'','','','','',''),(30,31,'','','','','',''),(31,32,'','','','','',''),(32,33,'','','','','',''),(33,34,'','','','','',''),(34,35,'','','','','',''),(35,36,'','','','','',''),(36,37,'','','','','',''),(37,38,'','','','','',''),(38,39,'','','','','',''),(39,40,'','','','','',''),(40,41,'','','','','',''),(41,42,'','','','','',''),(42,43,'','','','','',''),(43,44,'','','','','',''),(44,45,'','','','','',''),(45,46,'','','','','',''),(46,47,'','','','','',''),(47,48,'','','','','',''),(48,49,'','','','','',''),(49,50,'','','','','',''),(50,51,'','','','','',''),(51,52,'','','','','',''),(52,53,'','','','','',''),(53,54,'','','','','',''),(54,55,'','','','','',''),(55,56,'','','','','',''),(56,57,'','','','','',''),(57,58,'','','','','',''),(58,59,'','','','','',''),(59,60,'','','','','',''),(60,61,'','','','','',''),(61,62,'','','','','',''),(62,63,'','','','','',''),(63,64,'','','','','',''),(64,66,'','','','','','');

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

/*Data for the table `docentes` */

insert  into `docentes`(`id`,`persona_id`,`id_docente_categoria`,`descripcion`) values (2,2,4,'adasd'),(3,3,5,NULL),(4,4,5,NULL),(5,5,3,NULL),(6,6,4,NULL),(7,7,3,NULL),(8,8,NULL,NULL),(9,9,NULL,NULL),(10,10,1,NULL),(11,11,NULL,NULL),(12,12,4,NULL),(13,13,4,NULL),(14,14,NULL,NULL),(15,15,1,NULL),(16,16,5,NULL),(17,17,3,NULL),(18,18,5,NULL),(19,19,3,NULL),(20,20,3,NULL),(21,21,5,NULL),(22,22,1,NULL),(23,23,4,NULL),(24,24,5,NULL),(25,25,5,NULL),(26,26,3,NULL),(27,27,3,NULL),(28,28,1,NULL),(29,29,4,NULL),(30,30,1,NULL),(31,31,1,NULL),(32,32,1,NULL),(33,33,NULL,NULL),(34,34,2,NULL),(35,35,4,NULL),(36,36,5,NULL),(37,37,3,NULL),(38,38,3,NULL),(39,39,4,NULL),(40,40,NULL,NULL),(41,41,3,NULL),(42,42,4,NULL),(43,43,1,NULL),(44,44,4,NULL),(45,45,1,NULL),(46,46,3,NULL),(47,47,4,NULL),(48,48,3,NULL),(49,49,4,NULL),(50,50,3,NULL),(51,51,3,NULL),(52,52,3,NULL),(53,53,5,NULL),(54,54,4,NULL),(55,55,5,NULL),(56,56,5,NULL),(57,57,3,NULL),(58,58,4,NULL),(59,59,3,NULL),(60,60,NULL,NULL),(61,61,NULL,NULL),(62,62,4,NULL),(63,63,3,NULL),(64,64,4,NULL),(66,65,3,NULL);

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

/*Data for the table `estudiantes` */

insert  into `estudiantes`(`id`,`persona_id`,`legajo`,`id_plan`) values (1,1,'12345',2);

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

/*Data for the table `institucion` */

insert  into `institucion`(`id`,`razon_social`,`cuit`,`direccion`) values (1,'UNdeC','20306531655','9 de julio 42'),(2,'inti','20656544557',NULL);

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

/*Data for the table `persona` */

insert  into `persona`(`id`,`apellido`,`nombre`,`nombre_2`,`dni`,`cuit`,`email1`,`email2`) values (1,'Arevalo','Sergio',NULL,'30653165',NULL,'sarevalo@undec.edu.ar',NULL),(2,'Albrieu','Eliana','','','','elianaalbrieu@gmail.com',''),(3,'Alvarez','Jonatan',NULL,NULL,NULL,'jonatanemanuel.alvarez@gmail.com',NULL),(4,'Anzalaz','Fernando','Alejandro',NULL,NULL,'faanzalaz@yahoo.com',NULL),(5,'Arana','Germinal',NULL,NULL,NULL,'garana@hotmail.com',NULL),(6,'Barrionuevo','Claudio','Patricio',NULL,NULL,'claudiopbarrionuevo@gmail.com',NULL),(7,'Barros Olivera','Ruy','Enio',NULL,NULL,'ruy1958@yahoo.com.ar','rbarros@undec.edu.ar'),(8,'Bustos','Florencia',NULL,NULL,NULL,'mariaflorenciabustos@gmail.com',NULL),(9,'Cargnelutti','Pablo','Fernando',NULL,NULL,'pablo.fernando.cargnelutti@gmail.com',NULL),(10,'Carmona','Fernanda','Beatriz',NULL,NULL,'fbcarmona69@gmail.com',NULL),(11,'Carneiro','Verónica',NULL,NULL,NULL,'veronica_pini@hotmail.com',NULL),(12,'Castañeda','Miguel','Alejandro',NULL,NULL,'m78castaneda@gmail.com',NULL),(13,'Castro','Silvana','Elizabeth',NULL,NULL,'ecastro@undec.edu.ar',NULL),(14,'Cena','Diego',NULL,NULL,NULL,'diegocena2@gmail.com',NULL),(15,'Chade','Pablo',NULL,NULL,NULL,'pablochade@hotmail.com',NULL),(16,'Cruz','Alejandro',NULL,NULL,NULL,'alejandrocruz1987@gmail.com',NULL),(17,'Dantiacq Piccolella','Alejandro','Gastón',NULL,NULL,'alejandro.dantiacq@gmail.com',NULL),(18,'Dávila','Juan','José',NULL,NULL,'juan-jose-davila@hotmail.com','jjdavila@undec.edu.ar'),(19,'Fajardo','Hugo',NULL,NULL,NULL,'hugofajardo1@gmail.com ',NULL),(20,'Frati','Fernando','Emmanuel',NULL,NULL,'emmanuelfrati@gmail.com','fefrati@undec.edu.ar'),(21,'Frati','Francisco',NULL,NULL,NULL,'pacofrati@hotmail.com',NULL),(22,'Furlani','Marco',NULL,NULL,NULL,'mfurlani@undec.edu.ar',NULL),(23,'Gagliardi','Marisa',NULL,NULL,NULL,'marisagagliardi76@gmail.com',NULL),(24,'Gómez','Fabian',NULL,NULL,NULL,'albertogomez@hotmail.com',NULL),(25,'Guidet Canovas','Sebastián',NULL,NULL,NULL,'seba_guidet@hotmail.com','sguidet@undec.edu.ar'),(26,'Isaia','Claudia',NULL,NULL,NULL,'cpeisaia@gmail.com ','cpeisaia@hotmail.com'),(27,'Lábaque','María','Elena',NULL,NULL,'malena_labaque@yahoo.com.ar','malenalabaque@gmail.com'),(28,'Lucero','Ricardo',NULL,NULL,NULL,'ricardo_a_lucero@yahoo.com.ar','ricardo.lucero@gmail.com'),(29,'Manrique','Carolina',NULL,NULL,NULL,'acmanrique11@gmail.com',NULL),(30,'Martinez del Pezzo','Horacio',NULL,NULL,NULL,'martinezdelpezzo@gmail.com','martinezdelpezzo@yahoo.com.ar'),(31,'Martinez','Enrique',NULL,NULL,NULL,'enriquenmartinez@gmail.com',NULL),(32,'Martinez','Gabriel',NULL,NULL,NULL,'chilecito@gmail.com',NULL),(33,'Maza','Hugo',NULL,NULL,NULL,'hcmaza@yahoo.com.ar','hcmaza@gmail.com'),(34,'Mazolla','Nora',NULL,NULL,NULL,'noramazzola@hotmail.com',NULL),(35,'Mercado','Julio','Oscar',NULL,NULL,'julioosmercado@hotmail.com',NULL),(36,'Millon','Roberto',NULL,NULL,NULL,'robertomillontello@gmail.com','rmillon@undec.edu.ar'),(37,'Moralejo','Raúl',NULL,NULL,NULL,'romoralejo@gmail.com',NULL),(38,'Neder','Enrique',NULL,NULL,NULL,'enrique.neder@eco.uncor.edu',NULL),(39,'Ochova','Juan','Marcelo',NULL,NULL,'jmochova@hotmail.com',NULL),(40,'Olmedo','Pablo',NULL,NULL,NULL,'polmedo@undec.edu.ar',NULL),(41,'Quiroga','Gabriel',NULL,NULL,NULL,'quirogagabriel@gmail.com',NULL),(42,'Quiroga Marín','Carlos','Ariel',NULL,NULL,'caqmchilecito@hotmail.com',NULL),(43,'Quiroga','Rosana',NULL,NULL,NULL,'roquiroga4@hotmail.com',NULL),(44,'Ramos','Raul',NULL,NULL,NULL,'rramos@undec.edu.ar',NULL),(45,'Riba','Alberto',NULL,NULL,NULL,'albertoriba@gmail.com',NULL),(46,'Rivero','Eugenia',NULL,NULL,NULL,'eugeriverop@yahoo.com.ar',NULL),(47,'Robador','Emmanuel',NULL,NULL,NULL,'robador@gmail.com',NULL),(48,'Robins','Hector','Daniel',NULL,NULL,'daniel.robins@kunan.com.ar',NULL),(49,'Rodriguez','Lucía',NULL,NULL,NULL,'luciarwaidatt@gmail.com',NULL),(50,'Rojo','Jorge','Mario',NULL,NULL,'jorgerojo@arnet.com.ar','jrojo@undec.edu.ar'),(51,'Roldan','Horacio',NULL,NULL,NULL,'horacioroldan08@gmail.com',NULL),(52,'Romero','Clelia',NULL,NULL,NULL,'cromero@undec.edu.ar','cleliardr@hotmail.com'),(53,'Rovero','Mara',NULL,NULL,NULL,'mararovero@gmail.com',NULL),(54,'Ruitti','Alberto','Javier',NULL,NULL,'ruittijavier@gmail.com','jruitti@undec.edu.ar'),(55,'Ruitti','Natalia',NULL,NULL,NULL,'nruitti@undec.edu.ar',NULL),(56,'Sanchez','Valeria',NULL,NULL,NULL,'valeria_vas22@hotmail.com','valesanchezb@gmail.com'),(57,'Sigampa Paez','Elvio',NULL,NULL,NULL,'esigampapaez@yahoo.com.ar',NULL),(58,'Tejada','Jorge',NULL,NULL,NULL,'jorgedat@gmail.com',NULL),(59,'Texier Ramirez','José','Daniel',NULL,NULL,'dantexier@gmail.com',NULL),(60,'Torrielli','Edgar',NULL,NULL,NULL,'e.torrielli@gmail.com',NULL),(61,'Turne','Daniel',NULL,NULL,NULL,'daniel.turne@gmail.com',NULL),(62,'Valleto','Marcela',NULL,NULL,NULL,'marcevalletto@gmail.com','marcelavalletto@hotmail.com'),(63,'Varas','Hector',NULL,NULL,NULL,'micovaras@yahoo.com.ar','micovaras@hotmail.com'),(64,'Vicencio','Verena',NULL,NULL,NULL,'verevere@gmail.com','verena.vicencio@gmail.com'),(65,'Curti','Hugo','Javier',NULL,NULL,NULL,NULL);

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

/*Data for the table `proyecto_documento` */

insert  into `proyecto_documento`(`id`,`id_proyecto`,`documento`) values (1,1,'html.png'),(2,1,'images.jpeg'),(3,1,'html.png'),(4,9,'html.png'),(5,9,'images.jpeg'),(6,9,'html.png'),(7,10,'');

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

/*Data for the table `proyecto_estudiante` */

insert  into `proyecto_estudiante`(`id`,`id_proyecto`,`id_estudiante`) values (1,1,1),(2,2,1),(3,4,1),(4,3,1),(5,6,1),(6,7,1),(7,8,1),(8,9,1),(9,10,1),(10,11,1),(11,12,1),(12,13,1);

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

/*Data for the table `proyectos` */

insert  into `proyectos`(`id`,`id_tipo`,`titulo`,`id_institucion`,`id_tutor`,`activo`,`observaciones`,`creacion`,`finalizacion`) values (1,1,'Trabajo final 1',1,20,1,NULL,'2019-10-06',NULL),(2,2,'Practica',2,20,0,NULL,'2019-10-06',NULL),(3,1,'otra tesis',1,22,1,NULL,'2019-10-06',NULL),(4,1,'trabajo final 2',1,20,1,'oberservaciones agregadas','2019-10-06',NULL),(6,2,'PPP PPP PPP',2,58,0,'Esto es una prueba de ppp','2019-10-06',NULL),(7,2,'PPP PPP PPP',2,58,1,'Esto es una prueba de ppp','2019-10-06',NULL),(8,2,'wrwccdsc',2,66,1,'ssfsfsdfs  sfsf s  sf  fsfsf','2019-10-06',NULL),(9,1,'nueva nueva',2,66,1,'','2019-10-06',NULL),(10,1,'popdaodp',2,66,0,'asdad','2019-10-06','2019-10-07'),(11,1,'titi',2,66,0,'aklfmalkf','2019-10-07',NULL),(12,1,'titi',2,66,0,'aklfmalkf','2019-10-07',NULL),(13,1,'titi',2,66,1,'aklfmalkf','2019-10-07',NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `publicaciones` */

insert  into `publicaciones`(`id`,`titulo`,`contenido`,`creador_id`,`fecha_creacion`,`ultima_modificacion`,`modificador_id`,`esta_publicado`,`fecha`,`lugar`,`comienzo`,`fin`,`tipo`) values (1,'Se extendió el período de acreditación de las carreras de Ingeniería y Licenciatura en Sistemas','<p style=\"text-align:center\"><img src=\"/eing/assets/uploads/servidor/files/image-20191016081115-1.png\" style=\"height:426px; width:640px\" /></p>\r\n\r\n<p style=\"text-align:justify\">La Escuela de Tecnolog&iacute;as de la Informaci&oacute;n y las Comunicaciones informa que la Comisi&oacute;n Nacional de Evaluaci&oacute;n y Acreditaci&oacute;n Universitaria (CONEAU) resolvi&oacute;, mediante las resoluciones N&ordm; 137/18 y N&ordm; 158/18, extender por un per&iacute;odo&nbsp;de tres a&ntilde;os la acreditaci&oacute;n de las carreras de Ingenier&iacute;a en Sistemas y Licenciatura en Sistemas de la Universidad Nacional de Chilecito, otorgada por Resoluci&oacute;n CONEAU N&ordm; 767/13.</p>\r\n\r\n<p style=\"text-align:justify\">Esta decisi&oacute;n significa que ambas carreras cumplen con el perfil de calidad definido en la Resoluci&oacute;n ME N&deg; 786/09, en cuanto a contenidos curriculares b&aacute;sicos, carga horaria m&iacute;nima, intensidad de la formaci&oacute;n pr&aacute;ctica y est&aacute;ndares para la acreditaci&oacute;n. Estos est&aacute;ndares abarcan las siguientes dimensiones: contexto institucional, plan de estudio y formaci&oacute;n, cuerpo acad&eacute;mico, alumnos y graduados, as&iacute; como infraestructura y equipamiento.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>La evaluaci&oacute;n y acreditaci&oacute;n de carreras</strong></p>\r\n\r\n<p style=\"text-align:justify\">La evaluaci&oacute;n y acreditaci&oacute;n de carreras tiene por finalidad contribuir al mejoramiento de la educaci&oacute;n universitaria, mediante el aseguramiento y la mejora continua de la calidad de la oferta acad&eacute;mica. Este control contribuye a reafirmar el car&aacute;cter de bien p&uacute;blico social y derecho humano que se le reconoce a la educaci&oacute;n superior en Am&eacute;rica Latina.</p>\r\n\r\n<p style=\"text-align:justify\">En Argentina, la Ley de Educaci&oacute;n Superior (N&ordm; 24.521) prev&eacute; la acreditaci&oacute;n de las carreras de posgrado (art. 39), as&iacute; como de las carreras de grado que otorgan t&iacute;tulos correspondientes a profesiones reguladas por el Estado, cuyo ejercicio puede comprometer el inter&eacute;s p&uacute;blico, al poner en riesgo la salud, seguridad, derechos, bienes o formaci&oacute;n de los habitantes (art. 43). Las siguientes carreras son alcanzadas por esta norma: <a href=\"http://www.coneau.gob.ar/CONEAU/?page_id=3610\">Abogac&iacute;a, </a><a href=\"http://www.coneau.gob.ar/CONEAU/?page_id=359\">Arquitectura, </a><a href=\"http://www.coneau.gob.ar/CONEAU/?page_id=399\">Biolog&iacute;a, </a><a href=\"http://www.coneau.gob.ar/CONEAU/?page_id=3356\">Biotecnolog&iacute;a, </a><a href=\"http://www.coneau.gob.ar/CONEAU/?page_id=3615\">Contador P&uacute;blico, </a><a href=\"http://www.coneau.gob.ar/CONEAU/?page_id=1980\">Enfermer&iacute;a, </a><a href=\"http://www.coneau.gob.ar/CONEAU/?page_id=401\">Farmacia y Bioqu&iacute;mica, </a><a href=\"http://www.coneau.gob.ar/CONEAU/?page_id=3365\">Gen&eacute;tica, </a><a href=\"http://www.coneau.gob.ar/CONEAU/?page_id=403\">Geolog&iacute;a, </a><a href=\"http://www.coneau.gob.ar/CONEAU/?page_id=575\">Inform&aacute;tica, </a><a href=\"http://www.coneau.gob.ar/CONEAU/?page_id=577\">Ingenier&iacute;a, </a><a href=\"http://www.coneau.gob.ar/CONEAU/?page_id=582\">Ingenier&iacute;a Agron&oacute;mica, </a><a href=\"http://www.coneau.gob.ar/CONEAU/?page_id=584\">Ingenier&iacute;a en Recursos Naturales, </a><a href=\"http://www.coneau.gob.ar/CONEAU/?page_id=589\">Ingenier&iacute;a Forestal, </a><a href=\"http://www.coneau.gob.ar/CONEAU/?page_id=591\">Ingenier&iacute;a Zootecnista, </a><a href=\"http://www.coneau.gob.ar/CONEAU/?page_id=593\">Medicina, </a><a href=\"http://www.coneau.gob.ar/CONEAU/?page_id=596\">Odontolog&iacute;a, </a><a href=\"http://www.coneau.gob.ar/CONEAU/?page_id=599\">Psicolog&iacute;a, </a><a href=\"http://www.coneau.gob.ar/CONEAU/?page_id=601\">Qu&iacute;mica y </a><a href=\"http://www.coneau.gob.ar/CONEAU/?page_id=603\">Veterinaria.</a></p>\r\n\r\n<p style=\"text-align:justify\">La oferta acad&eacute;mica de la UNdeC incluye siete carreras de grado que son objeto de acreditaci&oacute;n seg&uacute;n la normativa vigente: Ingenier&iacute;a en Sistemas, Licenciatura en Sistemas, Ingenier&iacute;a Agron&oacute;mica, Licenciatura en Ciencias Biol&oacute;gicas, Licenciatura en Enfermer&iacute;a, Abogac&iacute;a e Ingenier&iacute;a en Agrimensura. Las primeras cuatro est&aacute;n acreditadas, mientras que las &uacute;ltimas tres se encuentran en proceso de acreditaci&oacute;n.</p>\r\n\r\n<p style=\"text-align:justify\">Para estas carreras, la acreditaci&oacute;n es un pre requisito para el reconocimiento y validez nacional del t&iacute;tulo.</p>\r\n\r\n<p style=\"text-align:justify\">Para ser acreditadas, las carreras deben demostrar que cumplen con los requisitos en cuanto a carga horaria m&iacute;nima, contenidos curriculares b&aacute;sicos e intensidad de la formaci&oacute;n pr&aacute;ctica. El Ministerio de Educaci&oacute;n, en acuerdo con el Consejo de Universidades, especifica los requisitos concretos para cada carrera, establece las actividades profesionales reservadas y fija los est&aacute;ndares para la acreditaci&oacute;n.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><strong>El proceso de acreditaci&oacute;n consta de las siguientes etapas:</strong></p>\r\n\r\n<ol>\r\n	<li style=\"text-align: justify;\">Autoevaluaci&oacute;n. En el marco de la autoevaluaci&oacute;n, la carrera examina diversos aspectos, tales como la formaci&oacute;n del cuerpo docente, los proyectos de investigaci&oacute;n y las actividades de vinculaci&oacute;n con el medio que se llevan a cabo, el rendimiento acad&eacute;mico de los alumnos, la bibliograf&iacute;a disponible y la adecuaci&oacute;n de los recursos edilicios, entre otros. Es importante se&ntilde;alar que este es un proceso colaborativo, en el cual se busca la participaci&oacute;n de todos los actores: docentes/investigadores, alumnos, graduados y personal Nodocente, as&iacute; como organizaciones e instituciones vinculadas a la carrera.</li>\r\n	<li style=\"text-align: justify;\">Planes de mejora. En base a los resultados de la autoevaluaci&oacute;n, la carrera elabora planes de mejora, que pueden incluir medidas como la adquisici&oacute;n de material bibliogr&aacute;fico, la firma de convenios con empresas del medio para la realizaci&oacute;n de pr&aacute;cticas pre profesionales o la organizaci&oacute;n de actividades destinadas a los graduados, entre otras.</li>\r\n	<li style=\"text-align: justify;\">Evaluaci&oacute;n externa. La autoevaluaci&oacute;n y los planes de mejora provienen de pares de otras universidades del pa&iacute;s.&nbsp;Dichos acad&eacute;micos pueden realizar requerimientos, exigiendo por ejemplo que se especifiquen o ampl&iacute;en las medidas propuestas.</li>\r\n	<li style=\"text-align: justify;\">Acreditaci&oacute;n. Una vez aprobados los planes de mejora, se acredita la carrera por tres a&ntilde;os. En este lapso se deben implementar las medidas establecidas.</li>\r\n	<li style=\"text-align: justify;\">Extensi&oacute;n de la acreditaci&oacute;n. Al cabo de los tres a&ntilde;os, se verifica el cumplimiento de los compromisos asumidos: nuevamente, la carrera realiza su autoevaluaci&oacute;n y se somete a evaluaci&oacute;n externa. En caso de encontrarse cumplimentados los requerimientos establecidos, la CONEAU procede a otorgar la extensi&oacute;n de la acreditaci&oacute;n por un nuevo per&iacute;odo.</li>\r\n</ol>\r\n',2,'2018-07-03','2019-10-16',1,1,'0000-00-00','','00:00:00','00:00:00',2),(7,'NUEVA JORNADA CIENTÍFICA DE ESTUDIANTES INVESTIGADORES','<p style=\"text-align:center\"><img src=\"/eing/assets/uploads/servidor/files/image-20191016081352-1.png\" style=\"height:563px; width:900px\" /></p>\r\n\r\n<p style=\"text-align:justify\">La Jornada Cient&iacute;fica de Estudiantes Investigadores (JCEI) se realiza en forma ininterrumpida desde el a&ntilde;o 2012 y est&aacute; destinada a alumnos de grado y posgrado de la Universidad Nacional de Chilecito y del nivel medio que deseen presentar sus proyectos de Feria de Ciencias, trabajos pr&aacute;cticos, etc.&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">Desde su primera edici&oacute;n, la JCEI fue superando a&ntilde;o tras a&ntilde;o sus objetivos ampliamente y hoy es un reconocido espacio de promoci&oacute;n de la actividad cient&iacute;fica estudiantil.&nbsp; &Aacute;mbito&nbsp;donde los alumnos universitarios se apropian de los proyectos en los que participan, aprenden a defender un trabajo en una reuni&oacute;n acad&eacute;mica y se comprometen a&uacute;n m&aacute;s con la investigaci&oacute;n y/o extensi&oacute;n. Y donde los alumnos del nivel medio presentan un trabajo sin competir y con el que ya est&aacute;n familiarizados permiti&eacute;ndoles disfrutar de la experiencia y conocer la Universidad de una forma distendida. Adem&aacute;s estas Jornadas tambi&eacute;n permiten a los equipos de investigaci&oacute;n mostrar los avances en los proyectos a trav&eacute;s de la presentaci&oacute;n de sus alumnos integrantes. Es organizada por la Secretaria de Ciencia y Tecnolog&iacute;a y las Escuelas de la UNdeC.</p>\r\n\r\n<p style=\"text-align:justify\">Este a&ntilde;o, como en otras ediciones, se replicar&aacute; la realizaci&oacute;n del <strong>Taller de Escritura Cient&iacute;fica&nbsp;</strong>destinado a los participantes de las Jornadas quienes recibir&aacute;n asesoramiento en la realizaci&oacute;n de sus res&uacute;menes. El Taller estar&aacute; cargo de la Dra. Jusmeidy Zambrano y se realizar&aacute; los d&iacute;as 22-23 y 29-30 de agosto.&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><strong>Cronograma tentativo</strong></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\">22-23 y 29-30 de agosto Taller de Escritura Cient&iacute;fica</li>\r\n	<li style=\"text-align:justify\">8 de septiembre: L&iacute;mite para recepci&oacute;n de res&uacute;menes</li>\r\n	<li style=\"text-align:justify\">18 de septiembre: fecha l&iacute;mite para enviar a imprimir los poster</li>\r\n	<li style=\"text-align:justify\"><strong>9 y 10 de octubre: Jornada Cient&iacute;fica de Estudiantes Investigadores</strong>&nbsp;</li>\r\n</ul>\r\n\r\n<p style=\"text-align:center\"><img src=\"/eing/assets/uploads/servidor/files/image-20191016081535-2.png\" style=\"height:147px; width:150px\" /> <img src=\"/eing/assets/uploads/servidor/files/image-20191016081547-3.png\" style=\"height:147px; width:150px\" /><img src=\"/eing/assets/uploads/servidor/files/image-20191016081555-4.png\" style=\"height:147px; width:150px\" /></p>\r\n',1,'2019-10-02','2019-10-16',1,1,'0000-00-00','','00:00:00','00:00:00',2),(8,'PROGRAMAS DE MOVILIDAD ESTUDIANTIL','<p style=\"text-align:center\"><img src=\"/eing/assets/uploads/servidor/files/image-20191016090446-1.png\" style=\"height:450px; width:900px\" /></p>\r\n\r\n<p style=\"text-align:justify\">La Universidad Nacional de Chilecito (UNdeC) se complace en informar la apertura de las convocatorias a los programas PILA (Programa de Intercambio Acad&eacute;mico Latinoamericano) y CRISCOS (Consejo de Rectores para la Integraci&oacute;n de la Subregi&oacute;n Centro Oeste de Sudam&eacute;rica). Destinatarios: Estudiantes de la UNdeC.</p>\r\n\r\n<p style=\"text-align:justify\">Requisitos excluyentes:</p>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\">Ser estudiante regular.</li>\r\n	<li style=\"text-align: justify;\">Requisitos indicativos para ambos programas:</li>\r\n	<li style=\"text-align: justify;\">Tener aprobado 25 % de la carrera en curso.</li>\r\n	<li style=\"text-align: justify;\">Promedio superior a 6.</li>\r\n	<li style=\"text-align: justify;\">Adeudar no menos de 6 materias para finalizar la carrera o no ser alumno del &uacute;ltimo<br />\r\n	a&ntilde;o de la misma.</li>\r\n	<li style=\"text-align: justify;\">Ser menor de 30 a&ntilde;os y mayor de 18.</li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\"><strong>&ldquo;Programa de Intercambio Acad&eacute;mico Latinoamericano&rdquo; (PILA)</strong></p>\r\n\r\n<p style=\"text-align:justify\">Es el fruto de un convenio entre el Consejo Interuniversitario Nacional (C.I.N) por Argentina, la Asociaci&oacute;n Nacional de Universidades e Instituciones de Educaci&oacute;n Superior (ANUIES), de M&eacute;xico y la Asociaci&oacute;n Colombiana de Universidades (ASCUN) de Colombia, a llevarse a cabo durante el primer semestre de 2020. La fecha l&iacute;mite de postulaci&oacute;n permanecer&aacute; abierta hasta las 12:00 horas del d&iacute;a mi&eacute;rcoles 09 de Octubre del 2019. Se ofrecen TRES (3) plazas para estudiantes de GRADO en las siguientes Universidades:</p>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\">Universidad de Santander (Colombia)</li>\r\n	<li style=\"text-align: justify;\">Universidad Pontificia Bolivariana. Sede Armenia (Colombia)</li>\r\n	<li style=\"text-align: justify;\">Universidad Pontificia Bolivariana. Sede Palmira (Colombia)</li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\">La documentaci&oacute;n que debe presentar para su postulaci&oacute;n es:</p>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\">Formulario de postulaci&oacute;n PILA.</li>\r\n	<li style=\"text-align: justify;\">Anexo II del convenio firmado por el postulante.</li>\r\n	<li style=\"text-align: justify;\">Fotocopia del Documento Nacional de Identidad.</li>\r\n	<li style=\"text-align: justify;\">Certificado Anal&iacute;tico.</li>\r\n	<li style=\"text-align: justify;\">Certificado de Alumno Regular.</li>\r\n	<li style=\"text-align: justify;\">Carta de motivaci&oacute;n del postulante.</li>\r\n	<li style=\"text-align: justify;\">Carta de recomendaci&oacute;n de dos docente.</li>\r\n	<li style=\"text-align: justify;\">Certificado m&eacute;dico de buena salud y antecedentes m&eacute;dicos.</li>\r\n	<li style=\"text-align: justify;\">Curriculum Vitae.</li>\r\n	<li style=\"text-align: justify;\"><a href=\"https://www.undec.edu.ar/wp-content/uploads/2019/09/01-PILA-Formulario-Postulacion.doc\">01 &ndash; PILA &ndash; Formulario Postulacion</a></li>\r\n	<li style=\"text-align: justify;\"><a href=\"https://www.undec.edu.ar/wp-content/uploads/2019/09/02-PILA-Anexo-II-Requsitos-y-Obligacion-del-Estudiante.doc\">02 &ndash; PILA &ndash; Anexo II &ndash; Requsitos y Obligacion del Estudiante</a></li>\r\n	<li style=\"text-align: justify;\"><a href=\"https://www.undec.edu.ar/wp-content/uploads/2019/09/03-Convenio-Programa-PILA.pdf\">03 &ndash; Convenio Programa PILA</a></li>\r\n	<li style=\"text-align: justify;\"><a href=\"https://www.undec.edu.ar/wp-content/uploads/2019/09/Universidad-de-Santander-FIB-2020.pdf\">Universidad de Santander &ndash; FIB 2020</a></li>\r\n	<li style=\"text-align: justify;\"><a href=\"https://www.undec.edu.ar/wp-content/uploads/2019/09/Universidad-Pontificia-Bolivariana-Monteria-FIB-2020.pdf\">Universidad Pontificia Bolivariana (Monteria) &ndash; FIB 2020</a></li>\r\n	<li style=\"text-align: justify;\"><a href=\"https://www.undec.edu.ar/wp-content/uploads/2019/09/Universidad-Pontificia-Bolivariana-Palmira-FIB-2020.pdf\">Universidad Pontificia Bolivariana (Palmira) &ndash; FIB 2020</a></li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\">TODOS LOS DOCUMENTOS DEBEN SER ENTREGADOS POR TRIPLICADO EN FOLIO INDIVIDUAL POR JUEGO EN UNA CARPETA POR POSTULANTE.</p>\r\n\r\n<p style=\"text-align:justify\">La dotaci&oacute;n de la beca se encuentra compartida entre ambas Instituciones, la UNdeC como Universidad de origen brindar&aacute; al estudiante pasajes a&eacute;reos, seguro internacional correspondiente y una ayuda extraordinaria de $6.000,00 (pesos seis mil). La Instituci&oacute;n anfitriona cubrir&aacute; el alojamiento, la eximici&oacute;n de pago de matr&iacute;cula y la manutenci&oacute;n alimentaria durante la estancia acad&eacute;mica del becario. El estudiante afrontara los gastos del tr&aacute;mite de visa y pasaporte.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>&ldquo;Consejo de Rectores para la Integraci&oacute;n de la Subregi&oacute;n Centro Oeste de Sudam&eacute;rica&rdquo; (CRISCOS)</strong></p>\r\n\r\n<p style=\"text-align:justify\">Se informa la apertura de la 44&ordf; convocatorio internacional del programa de movilidad estudiantil del Consejo de Rectores para la Integraci&oacute;n de la Subregi&oacute;n Centro Oeste de Sudam&eacute;rica (CRISCOS). La convocatoria permanecer&aacute; abierta hasta las 12:00 horas del d&iacute;a viernes 18 de Octubre de 2019. CRISCOS tiene el prop&oacute;sito de facilitar a estudiantes universitarios de grado la oportunidad de realizar un semestre de sus estudios en alguna universidad miembro de otro pa&iacute;s (Bolivia, Chile, Paraguay, Per&uacute; y Ecuador) contribuyendo a la internacionalizaci&oacute;n universitaria. La documentaci&oacute;n que deben presentar para su postulaci&oacute;n es:</p>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\">Formulario de postulaci&oacute;n CRISCOS.</li>\r\n	<li style=\"text-align: justify;\">Responsabilidad de becarios.</li>\r\n	<li style=\"text-align: justify;\">Servicio b&aacute;sicos para becados.</li>\r\n	<li style=\"text-align: justify;\">Fotocopia del Documento Nacional de Identidad.</li>\r\n	<li style=\"text-align: justify;\">Certificado Anal&iacute;tico.</li>\r\n	<li style=\"text-align: justify;\">Certificado de Alumno Regular.</li>\r\n	<li style=\"text-align: justify;\">Carta de motivaci&oacute;n del postulante.</li>\r\n	<li style=\"text-align: justify;\">Carta de recomendaci&oacute;n de dos docente.</li>\r\n	<li style=\"text-align: justify;\">Certificado m&eacute;dico de buena salud y antecedentes m&eacute;dicos.</li>\r\n	<li style=\"text-align: justify;\">Curriculum Vitae.</li>\r\n	<li style=\"text-align: justify;\"><a href=\"https://www.undec.edu.ar/wp-content/uploads/2019/09/01-Formulario-Postulaci¢n-PME.docx\">01 &ndash; Formulario Postulaci&cent;n PME</a></li>\r\n	<li style=\"text-align: justify;\"><a href=\"https://www.undec.edu.ar/wp-content/uploads/2019/09/02-Compromiso-acadÇmico-PME.doc\">02 &ndash; Compromiso acadÇmico PME</a></li>\r\n	<li style=\"text-align: justify;\"><a href=\"https://www.undec.edu.ar/wp-content/uploads/2019/09/03-Responsabilidades-de-becarios.doc\">03 &ndash; Responsabilidades de becarios</a></li>\r\n	<li style=\"text-align: justify;\"><a href=\"https://www.undec.edu.ar/wp-content/uploads/2019/09/04-Servicio-b†sicos-para-becados.doc\">04 &ndash; Servicio b&dagger;sicos para becados</a></li>\r\n	<li style=\"text-align: justify;\"><a href=\"https://www.undec.edu.ar/wp-content/uploads/2019/09/05-Reglamento-Programa-de-Movilidad-Estudiantil.pdf\">05 &ndash; Reglamento Programa de Movilidad Estudiantil</a></li>\r\n	<li style=\"text-align: justify;\"><a href=\"https://www.undec.edu.ar/wp-content/uploads/2019/09/44¶-Convocatoria-Oferta-acadÇmica-2019-07-30.pdf\">44&para; Convocatoria Oferta acadÇmica 2019 07 30</a></li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\">TODOS LOS DOCUMENTOS DEBEN SER ENTREGADOS POR TRIPLICADO EN FOLIO INDIVIDUAL POR JUEGO EN UNA CARPETA POR POSTULANTE.</p>\r\n\r\n<p style=\"text-align:justify\">La dotaci&oacute;n de la beca se encuentra compartida entre ambas Instituciones, la UNdeC como Universidad de origen brindar&aacute; al estudiante pasajes terrestres, seguro internacional correspondiente y una ayuda extraordinaria de $6.000,00 (pesos seis mil). La Instituci&oacute;n anfitriona cubrir&aacute; el alojamiento, la eximici&oacute;n de pago de matr&iacute;cula y la manutenci&oacute;n alimentaria durante la estancia acad&eacute;mica del becario. El estudiante afrontara los gastos del tr&aacute;mite de visa y pasaporte.</p>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\">Para mayor informaci&oacute;n pueden dirigirse a la oficina de Becas Universitarias de la UNdeC en el Campus Los Sarmientos en el horario de 09:00 a 16:00 horas</li>\r\n	<li style=\"text-align: justify;\">Por mail a Matias Pedone <a href=\"mailto:mpedone@undec.edu.ar\">mpedone@undec.edu.ar</a> ; Luis Frati <a href=\"mailto:lfrati@undec.edu.ar\">lfrati@undec.edu.ar</a></li>\r\n</ul>\r\n',1,'2019-10-02','2019-10-16',1,1,'0000-00-00','','00:00:00','00:00:00',2),(9,'Semana del algarrobo. Del 30 de Octubre al 4 de Noviembre','<p style=\"text-align:center\"><img src=\"/eing/assets/uploads/servidor/files/image-20191016091718-1.png\" style=\"height:563px; width:900px\" /></p>\r\n\r\n<p style=\"text-align:justify\">A partir del a&ntilde;o 2015, el Instituto de Ambiente de Monta&ntilde;as y Regiones &Aacute;ridas (IAMRA) de la Universidad Nacional de Chilecito ha realizado actividades de capacitaci&oacute;n, divulgaci&oacute;n y sensibilizaci&oacute;n sobre la importancia de proteger el algarrobo como &aacute;rbol nativo de gran importancia para las zonas &aacute;ridas, gener&aacute;ndose diversas actividades de extensi&oacute;n y divulgaci&oacute;n en el departamento Chilecito y departamentos vecinos, a ra&iacute;z de esto es que surgen demandas&nbsp;&nbsp;por parte de la comunidad y de instituciones del medio sobre&nbsp;&nbsp;la necesidad de abordar el tema, por lo que en el a&ntilde;o 2017 surge la denominada &ldquo;Semana del Algarrobo&rdquo;, con un programa de actividades de gran concurrencia p&uacute;blica en varios departamentos de la provincia, como resultado del trabajo conjunto con la Subsecretaria de Agricultura Familiar (SsAF) y la Fundaci&oacute;n Argentina de Alimentos (FADA).</p>\r\n\r\n<p style=\"text-align:justify\">Posteriormente en el a&ntilde;o 2018 se incorpora a la organizaci&oacute;n La Municipalidad del Departamento Chilecito y la Secretaria Gesti&oacute;n Comunitaria de la Universidad Nacional de Chilecito que contin&uacute;an participando en el transcurso de este a&ntilde;o, durante ese periodo se organizaron charlas en diferentes escuelas del medio, se plantaron algarrobos en el acceso sur de la ciudad y se brindaron capacitaciones a&nbsp;&nbsp;los diferentes actores comprometidos con los algarrobos, adem&aacute;s de realizar eventos y degustaciones p&uacute;blicas ,entre otras actividades, cerrando con una mesa redonda que permiti&oacute; formar una comisi&oacute;n de trabajo y generar nuevos proyectos para el 2019.</p>\r\n\r\n<p style=\"text-align:justify\">Durante el corriente a&ntilde;o con el trabajo en conjunto con la SsAF y FADA, La Municipalidad del Departamento Chilecito y la Secretaria Gesti&oacute;n Comunitaria, coordinados por el IAMRA se plantea la realizaci&oacute;n de &ldquo;La Semana del Algarrobo&nbsp;2019 &rdquo;&nbsp;bajo el lema,&nbsp;<strong><em>&ldquo;Los algarrobos como grandes protectores de los ambientes &aacute;ridos&rdquo; ,&nbsp;</em></strong>el objetivo principal de estas actividades es la de sensibilizar e informar a las comunidades de la zona sobre la necesidad&nbsp;&nbsp;de protecci&oacute;n de los algarrobos; &aacute;rbol nativo que posee un alto valor social-cultural, adem&aacute;s del valor econ&oacute;mico y natural que representa para las comunidades, siendo adem&aacute;s su protecci&oacute;n necesaria para la&nbsp;detenci&oacute;n&nbsp;del avance de la desertificaci&oacute;n en la provincia de La Rioja.</p>\r\n\r\n<p style=\"text-align:justify\">Las actividades de este a&ntilde;o se realizar&aacute;n en diferentes puntos de la ciudad de Chilecito y en departamentos vecinos; como actividad de apertura en la Plaza Principal de la ciudad de Chilecito se dispondr&aacute; de una carpa donde se degustar&aacute;n alimentos elaborados con harina de algarroba y se presentar&aacute;n ballets y grupos musicales. Adem&aacute;s se expondr&aacute;n trabajos de alumnos de las escuelas donde se brindaron anteriormente talleres sobre el algarrobo; pertenecientes a los niveles: inicial, secundario y terciario del departamento Chilecito y departamentos vecinos.</p>\r\n\r\n<p style=\"text-align:justify\">Adem&aacute;s, se llevar&aacute;n a cabo actividades en Guandacol Departamento Gral. Felipe Varela donde se presentar&aacute; una charla-taller abierta a la comunidad; posteriormente como cierre de la Semana se realizar&aacute; una jornada de conferencias destinadas a docentes del nivel primario, medio y superior con puntaje docente para posibilitar asistencia, cuyo objetivo es generar promotores de acciones educativas referidas a la protecci&oacute;n de &ldquo;El algarrobo&rdquo;, al finalizar la jornada se realizar&aacute; un an&aacute;lisis de la semana y expondr&aacute;n conclusiones para generar acciones posteriores.</p>\r\n',1,'2019-10-02','2019-10-16',1,1,'2019-10-30','Plaza Caudillos Federales','10:30:00','12:00:00',1),(10,'Jornada “DERECHOS DE LOS USUARIOS Y CONSUMIDORES EN LA LEGISLACIÓN ARGENTINA”','<p>El pr&oacute;ximo jueves&nbsp;3 de Octubre&nbsp;de 2019, de 10 a 12 hs en el Campus Los Sarmientos, se realizar&aacute; la primera Jornada&nbsp;&ldquo;Derechos de los usuarios y consumidores en la legislaci&oacute;n&nbsp;argentina&rdquo;</p>\r\n\r\n<p>A cargo del abogado Dario Di Noto, creador&nbsp;de&nbsp;<strong>Data Docta</strong> y&nbsp;&nbsp;Coordinador de la Comisi&oacute;n de J&oacute;venes Abogados del Colegio de Abogados de C&oacute;rdoba.&nbsp;Junto al abogado Exequiel Vergara Director del proyecto de extensi&oacute;n&nbsp;<strong><strong>&ldquo;</strong></strong>DERECHOS DE LOS USUARIOS Y CONSUMIDORES EN LA LEGISLACI&Oacute;N ARGENTINA&rdquo;&nbsp;y&nbsp;docente de la asignatura Sociolog&iacute;a.</p>\r\n\r\n<p><strong>Las Inscripciones son gratuitas y destinadas a toda la comunidad interesada en la tem&aacute;tica.</strong></p>\r\n\r\n<ul>\r\n	<li>M&aacute;s informaci&oacute;n:&nbsp;<a href=\"mailto:escueladederecho@undec.edu.ar\">escueladederecho@undec.edu.ar</a>&nbsp;o al tel&eacute;fono&nbsp;<a href=\"callto:03825-427200\" target=\"_blank\">03825-427200</a>&nbsp;interno 2142</li>\r\n	<li>Organizan:&nbsp;Carrera de Abogac&iacute;a y la Secretar&iacute;a de Gesti&oacute;n Comunitaria.</li>\r\n</ul>\r\n',1,'2019-10-02','2019-10-03',1,1,'2019-11-27','Campus Los Sarmientos - Auditorio','09:00:00','15:00:00',1),(11,'Jornada “DERECHOS DE LOS USUARIOS Y CONSUMIDORES EN LA LEGISLACIÓN ARGENTINA”','<p style=\"text-align:center\"><img src=\"/eing/assets/uploads/servidor/files/image-20191016090724-1.png\" style=\"height:563px; width:900px\" /></p>\r\n\r\n<p>El pr&oacute;ximo jueves&nbsp;3 de Octubre&nbsp;de 2019, de 10 a 12 hs en el Campus Los Sarmientos, se realizar&aacute; la primera Jornada&nbsp;&ldquo;Derechos de los usuarios y consumidores en la legislaci&oacute;n&nbsp;argentina&rdquo;</p>\r\n\r\n<p>A cargo del abogado Dario Di Noto, creador&nbsp;de&nbsp;<strong>Data Docta</strong> y&nbsp;&nbsp;Coordinador de la Comisi&oacute;n de J&oacute;venes Abogados del Colegio de Abogados de C&oacute;rdoba.&nbsp;Junto al abogado Exequiel Vergara Director del proyecto de extensi&oacute;n&nbsp;<strong><strong>&ldquo;</strong></strong>DERECHOS DE LOS USUARIOS Y CONSUMIDORES EN LA LEGISLACI&Oacute;N ARGENTINA&rdquo;&nbsp;y&nbsp;docente de la asignatura Sociolog&iacute;a.</p>\r\n\r\n<p><strong>Las Inscripciones son gratuitas y destinadas a toda la comunidad interesada en la tem&aacute;tica.</strong></p>\r\n\r\n<ul>\r\n	<li>M&aacute;s informaci&oacute;n:&nbsp;<a href=\"mailto:escueladederecho@undec.edu.ar\">escueladederecho@undec.edu.ar</a>&nbsp;o al tel&eacute;fono&nbsp;<a href=\"callto:03825-427200\" rel=\"noopener\" target=\"_blank\">03825-427200</a>&nbsp;interno 2142</li>\r\n	<li>Organizan:&nbsp;Carrera de Abogac&iacute;a y la Secretar&iacute;a de Gesti&oacute;n Comunitaria.</li>\r\n</ul>\r\n',1,'2019-10-02','2019-10-16',1,1,'2019-10-03','Campus Los Sarmientos','10:00:00','12:00:00',1),(12,'Disertación: El láser en la medicina','<p style=\"text-align:justify\"><img src=\"/eing/assets/uploads/servidor/files/image-20191016090959-1.png\" style=\"height:645px; width:900px\" /></p>\r\n\r\n<p style=\"text-align:justify\">El pr&oacute;ximo jueves 10 de octubre a las 10 hs en el Campus Los Sarmientos el Dr. Horacio Poteca disertar&aacute; acerca de los nuevos desarrollos&nbsp;&nbsp;de los l&aacute;sers en medicina y su aplicaci&oacute;n en los campos de la Cirug&iacute;a est&eacute;tica, Terap&eacute;utica en quemaduras. Tratamiento de las heridas sobre infectadas. Los tratamiento en el pie diabetico y en las escaras. Cirug&iacute;as y Tratamientos en cabeza y cuello. Cirug&iacute;a del ronquido.&nbsp; Recanalizaci&oacute;n de la hipertrofia benigna de Pr&oacute;stata. Cirug&iacute;as de c&aacute;nceres a mano alzada, a cielo abierto, endoc&oacute;picas, laparosc&oacute;picas, intratumorales percutaneas, y radiocirug&iacute;a. Intervencionismo imagenol&oacute;gico. Diagn&oacute;stico fotodin&aacute;mico. Terap&eacute;utica Fotodin&aacute;mica. Nuevas y futuras terap&eacute;uticas de enfermedades benignas y neopl&aacute;sicas.</p>\r\n\r\n<p style=\"text-align:justify\">Har&aacute; una s&iacute;ntesis de las principales acciones de los l&aacute;seres en el cuerpo humano, describir&aacute; ventajas en diversas especialidades, y les mostrar&aacute; im&aacute;genes de algunos pacientes tratados y los beneficios de utilizar esta tecnolog&iacute;a.</p>\r\n\r\n<p style=\"text-align:justify\"><em>(*) El Dr. Horacio Poteca es medico cirujano, onc&oacute;logo, Jefe del Servicio de Cirug&iacute;a L&aacute;ser y Terap&eacute;utica Fotodin&aacute;mica del Instituto Medico Mater Dei de La Plata. Profesor de Postgrado de la UNLP&nbsp;&nbsp;y Presidente de la fundaci&oacute;n Innovatec que desarrolla y fabrica l&aacute;sers m&eacute;dicos .</em></p>\r\n',1,'2019-10-02','2019-10-16',1,1,'2019-10-10','Campus Los Sarmientos','10:00:00','22:00:00',1),(13,'TALLERES DE APOYO PARA ESTUDIANTES SECUNDARIOS','<p style=\"text-align:center\"><img src=\"/eing/assets/uploads/servidor/files/image-20191016091437-1.png\" style=\"height:563px; width:900px\" /></p>\r\n\r\n<div class=\"clearfix\" id=\"content-area\">\r\n<div id=\"left-area\">\r\n<div class=\"entry-content\">\r\n<p style=\"text-align:justify\">La Universidad Nacional de Chilecito, en el marco del Programa NEXOS (Articulaci&oacute;n Universidad &ndash; Escuela Secundaria) invita a estudiantes secundarios del &uacute;ltimo a&ntilde;o a inscribirse en los &ldquo;Talleres de apoyo acad&eacute;mico para el nivel superior&rdquo;.</p>\r\n\r\n<p style=\"text-align:justify\">Los cursos son gratuitos y tienen por objetivo la preparaci&oacute;n de estudiantes secundarios en&nbsp;las asignaturas de:&nbsp;matem&aacute;tica, f&iacute;sica, qu&iacute;mica, ingles, lectura y escritura. Las clases se desarrollar&aacute;n en la Universidad Nacional de Chilecito Campus Los Sarmientos a partir del lunes&nbsp;21 de Octubre.</p>\r\n\r\n<p style=\"text-align:justify\">Las inscripciones se realizar&aacute;n desde el <strong>7 al&nbsp;18 de Octubre</strong>&nbsp;mediante el siguiente formulario:&nbsp;<a href=\"https://bit.ly/2ortlcQ\">https://docs.google.com/forms/d/e/1FAIpQLSfk51RQU4z_QopytDEC4wEJP-R623dgftGcwxyt1zDAxf29cg/viewform?usp=sf_link&nbsp;</a>o personalmente en la oficina del Servicio de Orientaci&oacute;n Vocacional Sede Centro de 10 a 12 y de 16 a 18 hs.</p>\r\n\r\n<p style=\"text-align:justify\"><strong>Horarios:</strong></p>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\"><strong>Matem&aacute;tica.&nbsp;</strong><strong>Martes: 20 a 22 hs&nbsp;&nbsp;</strong></li>\r\n	<li style=\"text-align: justify;\"><strong>F&iacute;sica.&nbsp;</strong><strong>S&aacute;bado: 9.30 a 11.30 hs</strong></li>\r\n	<li style=\"text-align: justify;\"><strong>Qu&iacute;mica.&nbsp;</strong><strong>Jueves: 20 a 22 hs</strong></li>\r\n	<li style=\"text-align: justify;\"><strong>Lectura y escritura:&nbsp;</strong><strong>Lunes: 20 a 22 hs&nbsp;</strong></li>\r\n	<li style=\"text-align: justify;\"><strong>Ingl&eacute;s:&nbsp;</strong><strong>Viernes: 20 a 22hs</strong></li>\r\n</ul>\r\n\r\n<div>\r\n<p style=\"text-align:justify\">Por dudas y consultas escribir a:&nbsp;<a href=\"mailto:talleresapoyoundec@gmail.com\" rel=\"noopener\" target=\"_blank\">talleresapoyoundec@gmail.com</a></p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"et_post_meta_wrapper\">&nbsp;</div>\r\n</div>\r\n</div>\r\n',1,'2019-10-16','2019-10-16',1,1,'2019-10-21','','10:00:00','18:00:00',1);

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

/*Data for the table `tipo_proyecto` */

insert  into `tipo_proyecto`(`id`,`nombre`,`abreviatura`) values (1,'Trabajo Final','TF'),(2,'Práctica Pre-Profesional','PPP');

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

/*Data for the table `titulos` */

insert  into `titulos`(`id`,`id_plan`,`nombre`,`id_orientacion`) values (1,1,'Licenciado en Sistemas',NULL),(2,2,'Ingeniero en Sistemas',NULL),(3,3,'Técnico Universitario en Desarrollo de Aplicaciones Web',NULL),(4,5,'Ingeniero Mecatrónico',NULL),(5,4,'Ingeniero Agrimensor',NULL),(6,6,'Técnico Universitario en Topografía',NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`id`,`ip_address`,`username`,`password`,`salt`,`email`,`activation_code`,`forgotten_password_code`,`forgotten_password_time`,`remember_code`,`created_on`,`last_login`,`active`,`first_name`,`last_name`,`company`,`phone`) values (1,'127.0.0.1','admin','$2y$08$mrY7snWRhma2O0pDbqkkUuCvzYrcYnBdByICxHPMDnyD3iEIRXB9u','','admin@admin.com',NULL,NULL,NULL,NULL,1268889823,1571223989,1,'Sergio','Arevalo','ADMIN','0'),(2,'127.0.0.1','user','$2y$08$4t0JshOQrSJwbqJbTLRineDCBESSAwNTkL4kRz9KzAq0RoyPXHF0i',NULL,'user@user.com',NULL,'dbh2E39uTZ5Ud9Tb.wO9ee37b9e7bb6f9ed71b6b',1522911545,NULL,1521634623,1570320707,1,'user','user','UNdeC',''),(3,'127.0.0.1','sergioa@mail.com','$2y$08$8qb2e5DyVMInQCmgJMzeXuEFz8KgJZvGfEhEnvSSK.yp81e1zs/am',NULL,'sergioa@mail.com',NULL,NULL,NULL,NULL,1570798111,NULL,1,'nuevo','usuarioo',NULL,''),(4,'127.0.0.1','usuario@usuario.com','$2y$08$.jmlrYWt/OGfuFF4IPBt4udhESL7jhqFlOtRIAjtZNjJkZVLfdvcW',NULL,'usuario@usuario.com',NULL,NULL,NULL,NULL,1570798362,NULL,1,'otro','usuario',NULL,'12345678'),(5,'127.0.0.1','as@as.com','$2y$08$kX5EVc137DH/AAEYTct1kuhwdpRaFoA4rTgfBjrafxfMT.xyj.P7a',NULL,'as@as.com',NULL,NULL,NULL,NULL,1570803996,NULL,1,'Ser','as',NULL,'545233'),(6,'127.0.0.1','sdvs@com.com','$2y$08$NBwBFa3Xrj7ymiDfvZkWverLC7CAeEFVIr21i5njMvPEzx39Of1Vy',NULL,'sdvs@com.com',NULL,NULL,NULL,NULL,1570805264,NULL,1,'asd','sdfsg',NULL,'');

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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

/*Data for the table `users_groups` */

insert  into `users_groups`(`id`,`user_id`,`group_id`) values (12,1,1),(13,1,2),(20,2,1),(27,3,2),(28,4,2),(24,5,2),(25,6,2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
