/*
SQLyog Enterprise - MySQL GUI v8.05 
MySQL - 5.7.27-0ubuntu0.18.04.1 : Database - eing
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

/*Data for the table `carrera` */

insert  into `carrera`(`id`,`nombre`,`presentacion`,`perfil`,`plan_pdf`,`imagen`,`activo`) values (1,'Licenciatura en Sistemas','<p>La carrera de Licenciatura en Sistemas tiene como fin formar profesionales con un perfil que responda a las exigencias del mercado y de las empresas, que, continuamente, actualizan sus recursos tecnol&oacute;gicos y procesos de administraci&oacute;n y gesti&oacute;n inform&aacute;tica. Por tal motivo el plan fue dise&ntilde;ado para brindar una s&oacute;lida formaci&oacute;n b&aacute;sica en &aacute;reas espec&iacute;ficas como gesti&oacute;n e ingenier&iacute;a de software, programaci&oacute;n, dise&ntilde;o y an&aacute;lisis de sistemas, redes y asignaturas que permiten la adquisici&oacute;n de una formaci&oacute;n continuamente actualizada que facilita la inserci&oacute;n laboral en forma inmediata. La preparaci&oacute;n integral recibida en materias t&eacute;cnicas y human&iacute;sticas lo habilita para responder a las demandas de una sociedad que exige de un profesional con un marcado compromiso con la preservaci&oacute;n del medio ambiente, el mejoramiento de la calidad de vida en general y una gran responsabilidad social en el quehacer profesional.</p>\r\n','<p>Se aspira a formar profesionales con significativos fundamentos te&oacute;ricos de Inform&aacute;tica y conocimiento actualizado de las tecnolog&iacute;as, de modo de orientarse especialmente al mercado profesional vinculado con los Sistemas Inform&aacute;ticos, en particular los aspectos propios del manejo de software y datos dentro de una organizaci&oacute;n. El graduado estar&aacute; en condiciones de participar en actividades de Investigaci&oacute;n, Desarrollo y Transferencia dentro de la disciplina. Asimismo los egresados de UNdeC, estar&aacute;n en condiciones de:</p>\r\n\r\n<ol>\r\n	<li>Planificar, dirigir, realizar y/o evaluar proyectos de relevamiento de problemas del mundo real, especificaci&oacute;n formal de los mismos, dise&ntilde;o, implementaci&oacute;n, prueba, verificaci&oacute;n, validaci&oacute;n, mantenimiento y control de calidad de sistemas de software que se ejecuten sobre sistemas de procesamiento de datos.</li>\r\n	<li>Organizar, dirigir y controlar las &aacute;reas inform&aacute;ticas de las organizaciones, seleccionando y capacitando al personal t&eacute;cnico de los mismos.</li>\r\n	<li>Dirigir el relevamiento y an&aacute;lisis de los procesos funcionales de una Organizaci&oacute;n, con la finalidad de dirigir proyectos de dise&ntilde;o de Sistemas de Informaci&oacute;n asociados, as&iacute; como los Sistemas de Software que hagan a su funcionamiento. Determinar, regular y administrar las pautas operativas y reglas de control que hacen al funcionamiento de las &aacute;reas inform&aacute;ticas de las empresas y organizaciones.</li>\r\n	<li>Entender, planificar y/o participar de los estudios t&eacute;cnicos-econ&oacute;micos de factibilidad y/o referentes a la configuraci&oacute;n y dimensionamiento de sistemas de procesamiento de informaci&oacute;n. Supervisar la implantaci&oacute;n de los sistemas de informaci&oacute;n y organizar y capacitar al personal afectado por dichos sistemas.</li>\r\n	<li>Establecer m&eacute;tricas y normas de calidad y seguridad de software, controlando las mismas a fin de tener un producto industrial que respete las normas nacionales e internacionales.</li>\r\n	<li>Control de la especificaci&oacute;n formal del producto, del proceso de dise&ntilde;o, desarrollo, implementaci&oacute;n y mantenimiento. Establecimiento de m&eacute;tricas de validaci&oacute;n y certificaci&oacute;n de calidad.</li>\r\n	<li>Planificar, dirigir, realizar y/o evaluar los sistemas de seguridad en el almacenamiento y procesamiento de la informaci&oacute;n. Establecer y controlar las metodolog&iacute;as de procesamiento de datos orientadas a seguridad, incluyendo data-warehousing.</li>\r\n	<li>Efectuar las tareas de Auditor&iacute;a de los Sistemas Inform&aacute;ticos. Participar de arbitrajes, pericias y tasaciones relacionados con los Sistemas Inform&aacute;ticos. 9. Planificar, dirigir, realizar y/o evaluar proyectos de sistemas de administraci&oacute;n de recursos. Dise&ntilde;o, implementaci&oacute;n, prueba, verificaci&oacute;n, validaci&oacute;n, mantenimiento y control de eficiencia/ calidad de los sistemas de administraci&oacute;n de recursos que se implanten como software sobre sistemas de procesamiento de datos. 10. Analizar y evaluar proyectos de especificaci&oacute;n, dise&ntilde;o, implementaci&oacute;n, verificaci&oacute;n, puesta a punto, mantenimiento y actualizaci&oacute;n de sistemas de procesamiento de datos.</li>\r\n	<li>Participar de proyectos de especificaci&oacute;n, dise&ntilde;o, implementaci&oacute;n, verificaci&oacute;n, puesta a punto y mantenimiento de redes de comunicaciones que vinculen sistemas de procesamiento de datos.</li>\r\n	<li>Realizar tareas como docente universitario en Inform&aacute;tica en todos los niveles, de acuerdo a la jerarqu&iacute;a de t&iacute;tulo de grado m&aacute;ximo. Realizar tareas de ense&ntilde;anza de la especialidad en todos los niveles educativos. Planificar y desarrollar cursos de actualizaci&oacute;n profesional y capacitaci&oacute;n en general en Sistemas de Informaci&oacute;n.</li>\r\n	<li>Realizar tareas de investigaci&oacute;n cient&iacute;fica b&aacute;sica y aplicada en temas de Sistemas de Software y Sistemas de Informaci&oacute;n, participando como Becario, Docente-Investigador o Investigador Cient&iacute;fico/ Tecnol&oacute;gico.</li>\r\n	<li>Dirigir Proyectos, Laboratorios, Centros e Institutos de Investigaci&oacute;n y Desarrollo en Inform&aacute;tica orientados a las &aacute;reas de Sistemas de Informaci&oacute;n.</li>\r\n</ol>\r\n','planLS.pdf','licenciatura.jpg',1),(2,'Ingeniería en Sistemas','<p><em>La carrera de Ingenier&iacute;a en Sistemas que se dicta en la Universidad Nacional de Chilecito fue aprobada por Ordenanza N&deg; 173 (20 de diciembre de 2001). Desde esa oportunidad hasta la fecha, las ciencias inform&aacute;ticas y las disciplinas vinculadas a ella como son, por ejemplo, las comunicaciones o la teleinform&aacute;tica han sufrido importantes cambios tecnol&oacute;gicos que ameritan una actualizaci&oacute;n de los planes de estudio vigentes, de forma de poder ofrecerles a los alumnos una curr&iacute;cula m&aacute;s acorde con los tiempos actuales.</em></p>\r\n\r\n<p>El Plan de Carrera tiene en cuenta las exigencias que se establecen para todas las carreras de ingenier&iacute;a en cuanto a la cantidad total de horas m&iacute;nimas que se deben cursar y la realizaci&oacute;n de la denominada Pr&aacute;ctica Profesional Supervisada &ndash; PPS. Por otra parte se ha considerado muy especialmente la distribuci&oacute;n de horas te&oacute;ricas y pr&aacute;cticas, la capacitaci&oacute;n cient&iacute;fica y pedag&oacute;gica del plantel docente, y los niveles de exigencias que permitan la adecuada promoci&oacute;n de materias, y la asignaci&oacute;n de horas de forma que los contenidos m&iacute;nimos de las mismas puedan ser dictados en forma efectiva y completa. Se mantienen los conceptos b&aacute;sicos bajo los cuales esta carrera fue creada, formar un profesional tecnol&oacute;gico capacitado para desarrollar sistemas de ingenier&iacute;a y tecnolog&iacute;a afines a los existentes y producir innovaciones; capaz de analizar y evaluar requerimientos de procesamientos de informaci&oacute;n, y sobre esa base, desarrollar, dise&ntilde;ar, organizar, implementar y controlar sistemas inform&aacute;ticos, al servicio de m&uacute;ltiples necesidades de informaci&oacute;n, de las organizaciones y de todas las profesiones con las que deber&aacute; interactuar con versatilidad y vocaci&oacute;n de servicio interdisciplinario. Adem&aacute;s, que reciba una formaci&oacute;n integral en materias t&eacute;cnicas y human&iacute;sticas que lo habilite para responder a las demandas de una sociedad que exige del mismo un marcado compromiso con la preservaci&oacute;n del medio ambiente; el mejoramiento de la calidad de vida en general y una gran responsabilidad social en el quehacer profesional.</p>\r\n\r\n<p><strong>Objetivos</strong></p>\r\n\r\n<p>La Carrera de Ingenier&iacute;a en Sistemas tiene como fin formar un Ingeniero tecnol&oacute;gico capacitado para desarrollar sistemas de ingenier&iacute;a y tecnolog&iacute;a afines a los existentes y producir innovaciones. Se propone formar un profesional capaz de analizar y evaluar requerimientos de procesamientos de informaci&oacute;n, y sobre esa base, desarrollar, dise&ntilde;ar, organizar, implementar y controlar sistemas inform&aacute;ticos, al servicio de m&uacute;ltiples necesidades de informaci&oacute;n, de las organizaciones y de todas las profesiones con las que deber&aacute; interactuar con versatilidad y vocaci&oacute;n de servicio interdisciplinario. La preparaci&oacute;n integral recibida en materias t&eacute;cnicas y human&iacute;sticas lo habilita para responder a las demandas de una sociedad que exige de un Ingeniero un marcado compromiso con la preservaci&oacute;n del medio ambiente, el mejoramiento de la calidad de vida en general y una gran responsabilidad social en el quehacer profesional.</p>\r\n','<p>T&iacute;tulo: Ingeniero en Sistemas</p>\r\n\r\n<p>Se aspira a formar profesionales que, egresados de la UNdeC, deber&aacute;n estar en condiciones de:</p>\r\n\r\n<ol>\r\n	<li>Realizar estudios y an&aacute;lisis de factibilidad, planificar, dirigir, realizar y/o evaluar proyectos de relevamiento, an&aacute;lisis, especificaci&oacute;n, dise&ntilde;o, desarrollo, implementaci&oacute;n, Verificaci&oacute;n, validaci&oacute;n, puesta a punto, mantenimiento y actualizaci&oacute;n, para todo tipo de personas f&iacute;sicas o jur&iacute;dicas, de: &nbsp;Sistemas de Informaci&oacute;n. &nbsp;Software vinculado indirectamente al hardware y a los sistemas de comunicaci&oacute;n de datos. &nbsp;Organizaci&oacute;n, dise&ntilde;o y funcionamiento de Centros de Procesamiento de Datos. &nbsp;Dise&ntilde;o de aplicaciones gr&aacute;ficas con medios inform&aacute;ticos.</li>\r\n	<li>Determinar, aplicar y controlar estrategias y pol&iacute;ticas de desarrollo de Sistemas de Informaci&oacute;n y de Software.</li>\r\n	<li>Evaluar y seleccionar los lenguajes de especificaci&oacute;n, herramientas de dise&ntilde;o, procesos de desarrollo, lenguajes de programaci&oacute;n y arquitecturas de software relacionados con el punto 1.</li>\r\n	<li>Evaluar y seleccionar las arquitecturas tecnol&oacute;gicas de procesamiento, sistemas de comunicaci&oacute;n de datos, telecomunicaciones y software de base para su utilizaci&oacute;n en los sistemas de informaci&oacute;n.</li>\r\n	<li>Dise&ntilde;ar metodolog&iacute;as y tecnolog&iacute;as para desarrollo de software y los sistemas de informaci&oacute;n vinculados al punto 1.</li>\r\n	<li>Organizar y dirigir el &aacute;rea de sistemas de todo tipo de personas f&iacute;sicas o jur&iacute;dicas, determinar el perfil de los recursos humanos necesarios y contribuir a su selecci&oacute;n y formaci&oacute;n.</li>\r\n	<li>Planificar, dise&ntilde;ar, dirigir y realizar la capacitaci&oacute;n de usuarios en la utilizaci&oacute;n del software y sistemas de informaci&oacute;n vinculados al punto 1.</li>\r\n	<li>Determinar y controlar el cumplimiento de pautas t&eacute;cnicas, normas y procedimientos que rijan el funcionamiento y la utilizaci&oacute;n del software y sistemas de informaci&oacute;n vinculados al punto 1.</li>\r\n	<li>Elaborar, dise&ntilde;ar, implementar y/o evaluar m&eacute;todos y normas a seguir en cuestiones de seguridad de la informaci&oacute;n y los datos procesados, generados y/o transmitidos por el software.</li>\r\n	<li>Elaborar, dise&ntilde;ar, implementar y/o evaluar m&eacute;todos y procedimientos de auditor&iacute;a, aseguramiento de la calidad, seguridad y forensia del software y sistemas de informaci&oacute;n vinculados al punto 1.</li>\r\n	<li>Realizar arbitrajes, peritajes y tasaciones referidas a las &aacute;reas espec&iacute;ficas de su aplicaci&oacute;n y entendimiento.</li>\r\n	<li>Participar en equipos de an&aacute;lisis interdisciplinarios para la comprensi&oacute;n de la problem&aacute;tica relacionada con la &eacute;tica profesional del ingeniero y la problem&aacute;tica de los derechos humanos.</li>\r\n</ol>\r\n','planIS.pdf','ingenieria.jpg',1),(3,'Tecnicatura Universitaria en Desarrollo de Aplicaciones Web ','<p>Esta carrera tiene como objetivo general formar profesionales en Inform&aacute;tica capaces de trabajar en estrecha relaci&oacute;n con otros profesionales inform&aacute;ticos y de distintas disciplinas, a los efectos de satisfacer requerimientos vinculados con el desarrollo, planificaci&oacute;n, dise&ntilde;o, ejecuci&oacute;n y control de sistemas inform&aacute;ticos complejos, en particular, desarrollos inform&aacute;ticos para aplicaciones web.</p>\r\n','<p>Prestar asistencia t&eacute;cnica a los profesionales con formaci&oacute;n de grado en Inform&aacute;tica o Sistemas de Informaci&oacute;n en tareas relacionadas con estudio, an&aacute;lisis, especificaci&oacute;n, dise&ntilde;o, desarrollo, implementaci&oacute;n, verificaci&oacute;n, validaci&oacute;n, puesta a punto, mantenimiento de:</p>\r\n\r\n<ul>\r\n	<li>Aplicaciones Web.</li>\r\n	<li>Sistemas de Informaci&oacute;n (en general).</li>\r\n	<li>Dise&ntilde;o de aplicaciones gr&aacute;ficas con medios inform&aacute;ticos.</li>\r\n	<li>Participar en el desarrollo de Sistemas de Informaci&oacute;n y de Software.</li>\r\n	<li>Participar en la selecci&oacute;n de las arquitecturas tecnol&oacute;gicas de procesamiento, y software para dise&ntilde;o de aplicaciones Web.</li>\r\n	<li>Participar en el dise&ntilde;o de metodolog&iacute;as para desarrollo de software vinculados al punto primero.</li>\r\n</ul>\r\n\r\n<p><strong>Programas de Movilidad</strong></p>\r\n\r\n<ul>\r\n	<li>Programa de Movilidad MACA (Colombia) &ndash; Movilidad Acad&eacute;mica Colombia Argentina</li>\r\n	<li>Programa de Movilidad Estudiantil del CRISCOS (Paraguay, Per&uacute;, Bolivia y Chile) Consejo de Rectores &nbsp;por la Integraci&oacute;n de la Subregi&oacute;n Centro Oeste de Sudam&eacute;rica.</li>\r\n</ul>\r\n','planTUDAW.pdf','tudaw.jpg',1),(4,'Ingeniería Mecatrónica','<p>El acelerado avance de la tecnolog&iacute;a a nivel mundial impacta en el sector productivo regional y nacional, forzando a las industrias a incorporar nuevas estrategias de crecimiento que incluyan la automatizaci&oacute;n y el control en sus procesos. Esto requiere de ingenieros especializados en diferentes &aacute;reas entre la que sobresale la Ingenier&iacute;a Mecatr&oacute;nica.</p>\r\n\r\n<p>El dominio de esta disciplina es indispensable para mantener operativos los procesos existentes y generar propuestas novedosas de procesos automatizados que demande la industria en el futuro pr&oacute;ximo.</p>\r\n\r\n<p>Es imprescindible disminuir la dependencia tecnol&oacute;gica de empresas extranjeras ya que su adquisici&oacute;n y mantenimiento provoca altos costos de inversi&oacute;n. El Ingeniero Mecatr&oacute;nico est&aacute; capacitado para desarrollar soluciones innovadoras, generar dispositivos de automatizaci&oacute;n y mecanismos que se convertir&iacute;an en desarrollos tecnol&oacute;gicos.</p>\r\n\r\n<p>En la regi&oacute;n, las principales cadenas productivas son la oliv&iacute;cola, vitivin&iacute;cola, frut&iacute;cola (nogal). Otras fuentes importantes de ingresos son las industrias del cuero y pieles secas, av&iacute;cola, alimenticia (frutas y verduras envasadas), energ&iacute;as alternativas (e&oacute;lica y solar), entre otras.</p>\r\n\r\n<p>Estas industrias demandan de profesionales que est&eacute;n capacitados para crear y mantener la tecnolog&iacute;a necesaria para su funcionamiento, dotando de procesos automatizados que incrementen su productividad.</p>\r\n\r\n<p>La UNdeC se crea en la convicci&oacute;n de constituirse en un factor decisivo en el desarrollo regional. Es por ello que est&aacute; comprometida con la formaci&oacute;n de profesionales altamente preparados, capaces de adquirir conocimientos para afrontar nuevos retos, demostrando siempre un fuerte sentido de responsabilidad social, respeto a la cultura y el medio ambiente.</p>\r\n\r\n<p>Ese compromiso se traduce en una oferta acad&eacute;mica din&aacute;mica que intenta resolver los problemas que dificultan el desarrollo econ&oacute;mico y social. La Mecatr&oacute;nica es la aplicaci&oacute;n de las &uacute;ltimas t&eacute;cnicas en ingenier&iacute;a mec&aacute;nica de precisi&oacute;n,&nbsp; electr&oacute;nica, teor&iacute;a de control y ciencias de la computaci&oacute;n, para dise&ntilde;ar procesos y productos cada vez m&aacute;s funcionales y adaptables. La idea b&aacute;sica es aplicar nuevas tecnolog&iacute;as de control y de computadoras, conjuntamente con electr&oacute;nica asociada seg&uacute;n el caso, para obtener niveles de desempe&ntilde;o superiores de un dispositivo.&nbsp;</p>\r\n','','Ord.-023-17-Ingeniería-Mecatrónica.pdf','mecatronica.jpg',1),(5,'Ingeniería en Agrimensura','<p>La Universidad Nacional de Chilecito se crea en la convicci&oacute;n de constituirse en un factor decisivo en el desarrollo regional. A partir de su propia definici&oacute;n de pertinencia se presenta con un marcado compromiso con la regi&oacute;n.&nbsp;</p>\r\n\r\n<p>Ese compromiso se traduce en una oferta din&aacute;mica que intenta resolver los problemas que dificultan el desarrollo econ&oacute;mico y social. Uno de los factores determinantes para esas dificultades es la gran superficie del territorio provincial con situaci&oacute;n territorial desordenada, con falta de t&iacute;tulos y mensuras, que expone a la comunidad a riesgos de conflictos entre linderos, inseguridad jur&iacute;dica para propietarios poseedores, desaliento para inversiones productivas, dificultades para el acceso a cr&eacute;ditos, a lo que se agrega la existencia de campos comuneros que mantienen indefinidos los derechos de quienes comparten su explotaci&oacute;n y no permite el aprovechamiento en grandes extensiones.&nbsp;</p>\r\n\r\n<p>La disciplina destinada a atender el ordenamiento territorial la agrimensura y el profesional universitario destinado a cumplir con ese rol es el Ingeniero Agrimensor. Por eso el presente proyecto propone la creaci&oacute;n de la carrera de Ingenier&iacute;a en Agrimensura cuya duraci&oacute;n es de 5 (cinco) a&ntilde;os.&nbsp;</p>\r\n','<p>El Plan de Estudios que se propone procura lograr que el Ingeniero Agrimensor graduado en la Universidad Nacional de Chilecito posea una s&oacute;lida formaci&oacute;n basada en fundamentos te&oacute;ricos, metodol&oacute;gicos y &eacute;ticos, que le den sustento jur&iacute;dico, socioecon&oacute;mico y tecnol&oacute;gico a su actividad profesional.&nbsp;</p>\r\n\r\n<p>El contenido curricular y el cr&eacute;dito horario aseguran la formaci&oacute;n acad&eacute;mica del egresado para:</p>\r\n\r\n<ol>\r\n	<li>Resolver la aplicaci&oacute;n territorial del derecho por ejecuci&oacute;n de los actos de mensura, mediante los cuales el Ingeniero Agrimensor define, demarca, mide y representa los l&iacute;mites originados en hechos de car&aacute;cter jur&iacute;dico administrativo, ya sean internacionales, provinciales, jurisdiccionales o de la propiedad p&uacute;blica o privada y de servidumbres, en cualquier &aacute;mbito del espacio territorial, generando el estado parcelario y sus modificaciones.</li>\r\n	<li>Programar, confeccionar y dirigir la gesti&oacute;n p&uacute;blica del Catastro Territorial, tanto en los aspectos geotopofotocartogr&aacute;ficos, como los que se refieren al saneamiento de los derechos territoriales, a la valuaci&oacute;n inmobiliaria y al desarrollo e implementaci&oacute;n de Sistemas de Informaci&oacute;n Territorial multiprop&oacute;sito.</li>\r\n	<li>Elaborar la cartograf&iacute;a b&aacute;sica, parcelaria y tem&aacute;tica, aptas para la planificaci&oacute;n del desarrollo territorial, a partir del relevamiento de la informaci&oacute;n contenida en el espacio geogr&aacute;fico por aplicaci&oacute;n de las ciencias geotopofotocartogr&aacute;ficas o de teledetecci&oacute;n espacial, por medio del ordenamiento y generalizaci&oacute;n de la misma, conforme a escalas adaptadas, aportando los principios y las leyes de semiolog&iacute;a gr&aacute;fica adecuadas a al representaci&oacute;n pretendida, ya sea gr&aacute;fica o digital.&nbsp;&nbsp;</li>\r\n	<li>Ejecutar la valuaci&oacute;n de los inmuebles y sus mejoras y las divisiones del territorio en zonas de caracter&iacute;sticas econ&oacute;micas homog&eacute;neas, determinad sus valores b&aacute;sicos con fines catastrales de planeamiento y planificaci&oacute;n de unidades econ&oacute;micas zonales.</li>\r\n	<li>Determinar la forma de la tierra, sus relaciones geom&eacute;tricas con el plano de la representaci&oacute;n y la medida de todo aquello que defina las dimensiones, posici&oacute;n y forma de cualquier parte de la superficie terrestre y de los elementos o construcciones a ella referidos.</li>\r\n	<li>Dirigir y participar en equipos de investigaci&oacute;n cient&iacute;fica y aplicada en distintas tem&aacute;ticas que necesitan del aporte insustituible del relevamiento del territorio en sus aspectos, f&iacute;sicos, jur&iacute;dicos y econ&oacute;micos, de las mediciones especiales y del procesamiento de la informaci&oacute;n territorial .</li>\r\n</ol>\r\n','Ord.-021-17-Ingeniería-en-Agrimensura.pdf','agrimensura.jpg',1),(6,'Tecnicatura Universitaria en Topografía','<p>En raz&oacute;n de dar respuesta a la marcada demanda de carreras cortas con inmediata salida laboral, especialmente en el sector de las carreras t&eacute;cnicas, con aplicaci&oacute;n de avances tecnol&oacute;gicos e inform&aacute;ticos, es que se presenta el proyecto de la carrera Tecnicatura Universitaria en Topograf&iacute;a. Esta carrera se propone conjunta y simult&aacute;neamente con Ingenier&iacute;a en Agrimensura, pero no como carrera intermedia sino como una tecnicatura que permita al graduado desempe&ntilde;arse como auxiliar de diversas ramas de la ingenier&iacute;a.</p>\r\n','<p>El T&eacute;cnico Universitario en Topograf&iacute;a est&aacute; destinado a ser un estrecho colaborador con los Ing. Agrimensores, Ing. Civiles, Ing. En v&iacute;as de comunicaci&oacute;n, Ing. Hidr&aacute;ulicos entre otros, gracias a la formaci&oacute;n que recibe en Topograf&iacute;a, cartograf&iacute;a, Dibujo Cartogr&aacute;fico y Topogr&aacute;fico, Inform&aacute;tica, entre otras asignaturas.</p>\r\n\r\n<p>B&aacute;sicamente tiene en cuenta las condiciones reales existentes en el mercado laboral que requiere de T&eacute;cnicos Universitarios que se desempe&ntilde;en eficazmente en la actividad privada&nbsp; colaborando con los ingenieros, como en el sector p&uacute;blico Municipal, provincial y Nacional de diversos sectores y dependencias. Es una demanda existente no solo en la provincia de La Rioja, sino en el resto del pa&iacute;s.</p>\r\n','Ord.-022-17-Tecnicatura-Universitaria-en-Topografí','topografia.jpg',1);

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

/*Data for the table `ciclo_materia` */

insert  into `ciclo_materia`(`id`,`id_ciclo`,`id_materia`,`id_regimen`,`horas`,`hs_total`,`programa`,`anio`,`codigo`) values (1,1,1,1,5,150,NULL,1,101),(2,1,2,1,5,150,NULL,1,102),(3,1,3,2,4,60,NULL,1,111),(4,1,4,2,4,60,NULL,1,112),(5,1,5,2,3,45,NULL,1,113),(6,1,8,1,4,120,NULL,2,201),(7,1,9,1,4,120,NULL,2,202),(8,1,10,1,4,120,NULL,2,203),(9,1,11,2,4,60,NULL,2,211),(10,1,12,2,4,60,NULL,2,212),(11,1,13,3,4,60,NULL,2,221),(12,1,14,3,4,60,NULL,2,222),(13,1,15,3,4,60,NULL,2,223),(14,1,16,1,3,90,NULL,3,301),(15,1,17,1,4,120,NULL,3,302),(16,1,18,1,4,120,NULL,3,303),(17,1,19,1,4,120,NULL,3,304),(18,1,20,2,5,75,NULL,3,311),(19,1,21,2,3,45,NULL,3,312),(20,1,22,3,4,60,NULL,3,321),(21,1,23,3,3,45,NULL,3,322),(22,1,24,1,4,120,NULL,4,401),(23,1,25,1,4,120,NULL,4,402),(24,1,26,2,4,60,NULL,4,411),(25,1,27,2,4,60,NULL,4,412),(26,1,28,2,3,45,NULL,4,413),(27,1,29,2,4,60,NULL,4,414),(28,1,30,3,3,45,NULL,4,421),(29,1,31,3,4,60,NULL,4,422),(30,1,32,3,3,45,NULL,4,423),(31,1,33,3,5,75,NULL,4,424),(32,1,34,3,4,60,NULL,4,425),(33,1,35,1,4,120,NULL,5,501),(34,1,36,2,3,45,NULL,5,511),(35,1,37,2,4,60,NULL,5,512),(36,1,38,2,4,60,NULL,5,513),(37,1,39,2,4,60,NULL,5,514),(38,1,40,2,5,75,NULL,5,515),(39,1,41,3,4,60,NULL,5,521),(40,1,42,3,4,60,NULL,5,522),(41,1,43,3,4,60,NULL,5,523),(42,1,44,3,4,60,NULL,5,524),(43,1,6,3,4,60,NULL,1,121),(44,1,7,3,4,60,NULL,1,122),(45,2,1,1,5,150,NULL,1,101),(46,2,2,1,5,150,NULL,1,102),(47,2,45,2,5,75,NULL,1,111),(48,2,3,2,4,60,NULL,1,112),(49,2,4,2,4,60,NULL,1,113),(50,2,5,2,3,45,NULL,1,114),(51,2,6,3,4,60,NULL,1,121),(52,2,46,3,5,75,NULL,1,122),(53,2,7,3,4,60,NULL,1,123),(54,2,47,3,4,60,NULL,1,124),(55,2,8,1,4,120,NULL,2,201),(56,2,9,1,4,120,NULL,2,202),(57,2,10,1,4,120,NULL,2,203),(58,2,48,2,5,75,NULL,2,211),(59,2,11,2,4,60,NULL,2,212),(60,2,12,2,4,60,NULL,2,213),(61,2,49,3,5,75,NULL,2,221),(62,2,13,3,4,60,NULL,2,222),(63,2,14,3,4,60,NULL,2,223),(64,2,15,3,4,60,NULL,2,224),(65,2,16,1,3,90,NULL,3,301),(66,2,17,1,4,120,NULL,3,302),(67,2,18,1,4,120,NULL,3,303),(68,2,19,1,4,120,NULL,3,304),(69,2,50,2,4,60,NULL,3,311),(70,2,51,2,3,45,NULL,3,312),(71,2,52,2,4,60,NULL,3,313),(72,2,22,3,4,60,NULL,3,321),(73,2,53,3,4,60,NULL,3,322),(74,2,23,3,3,45,NULL,3,323),(75,2,24,1,4,120,NULL,4,401),(76,2,25,1,4,120,NULL,4,402),(77,2,26,2,4,60,NULL,4,411),(78,2,27,2,4,60,NULL,4,412),(79,2,28,2,3,45,NULL,4,413),(80,2,29,2,4,60,NULL,4,414),(81,2,21,2,3,45,NULL,4,415),(82,2,30,3,4,60,NULL,4,421),(83,2,34,3,4,60,NULL,4,422),(84,2,54,3,4,60,NULL,4,423),(85,2,31,3,4,60,NULL,4,424),(86,2,32,3,3,45,NULL,4,425),(87,2,35,1,4,120,NULL,5,501),(88,2,36,2,3,45,NULL,5,511),(89,2,37,2,4,60,NULL,5,512),(90,2,38,2,4,60,NULL,5,513),(91,2,39,2,4,60,NULL,5,514),(92,2,55,2,4,60,NULL,5,515),(93,2,43,3,4,60,NULL,5,521),(94,2,56,3,4,60,NULL,5,522),(95,2,41,3,4,60,NULL,5,523),(96,2,57,3,3,45,NULL,5,524),(97,2,42,3,4,60,NULL,5,525),(98,3,58,2,5,75,NULL,1,1),(99,3,4,2,4,60,NULL,1,2),(100,3,61,2,4,60,NULL,1,3),(101,3,59,2,4,60,NULL,1,4),(102,3,10,2,5,75,NULL,1,5),(103,3,60,2,4,60,NULL,1,6),(104,3,62,3,5,75,NULL,1,7),(105,3,63,3,4,60,NULL,1,8),(106,3,64,3,5,75,NULL,1,9),(107,3,65,3,4,60,NULL,1,10),(108,3,66,3,4,60,NULL,1,11),(109,3,67,3,5,75,NULL,1,12),(110,3,68,2,4,60,NULL,2,13),(111,3,18,2,4,60,NULL,2,14),(112,3,69,2,5,75,NULL,2,15),(113,3,70,2,4,60,NULL,2,16),(114,3,71,2,5,75,NULL,2,17),(115,3,19,2,5,75,NULL,2,18),(116,3,24,3,5,75,NULL,2,19),(117,3,13,3,3,45,NULL,2,20),(118,3,72,3,5,75,NULL,2,21),(119,3,73,3,5,75,NULL,2,22),(120,3,16,3,5,75,NULL,2,23),(121,3,74,3,5,75,NULL,2,24),(122,3,75,2,6,90,NULL,3,25),(123,3,76,2,5,75,NULL,3,26),(124,3,77,2,4,60,NULL,3,27),(125,3,78,2,5,75,NULL,3,28),(126,3,79,2,4,60,NULL,3,29),(127,3,35,2,5,75,NULL,3,30),(128,4,1,1,6,180,NULL,1,1),(129,4,80,2,4,60,NULL,1,2),(130,4,81,1,4,120,NULL,1,3),(131,4,46,1,6,180,NULL,1,4),(132,4,45,1,4,120,NULL,1,5),(133,4,82,3,4,60,NULL,1,6),(134,4,83,3,6,90,NULL,1,7),(135,4,8,2,5,75,NULL,2,8),(136,4,84,2,4,60,NULL,2,9),(137,4,48,2,6,90,NULL,2,10),(138,4,85,2,4,60,NULL,2,11),(139,4,86,2,5,75,NULL,2,12),(140,4,87,2,6,90,NULL,2,13),(141,4,13,3,6,90,NULL,2,14),(142,4,88,3,4,60,NULL,2,15),(143,4,49,3,4,60,NULL,2,16),(144,4,89,3,5,75,NULL,2,17),(145,4,90,3,4,60,NULL,2,18),(146,4,91,3,5,75,NULL,2,19),(147,4,92,2,5,75,NULL,3,20),(148,4,93,2,4,60,NULL,3,21),(149,4,94,2,8,120,NULL,3,22),(150,4,95,1,8,240,NULL,3,23),(151,4,96,1,6,90,NULL,3,24),(152,4,97,3,6,90,NULL,3,25),(153,4,98,3,4,60,NULL,3,26),(154,4,99,3,6,90,NULL,3,27),(155,4,100,2,4,60,NULL,4,28),(156,4,101,2,5,75,NULL,4,29),(157,4,102,2,4,60,NULL,4,30),(158,4,103,2,6,90,NULL,4,31),(159,4,104,2,6,90,NULL,4,32),(160,4,105,3,6,90,NULL,4,33),(161,4,106,3,8,120,NULL,4,34),(162,4,107,3,5,75,NULL,4,35),(163,4,108,3,6,90,NULL,4,36),(164,4,109,2,6,90,NULL,5,37),(165,4,110,2,6,90,NULL,5,38),(166,4,111,2,6,90,NULL,5,39),(167,4,112,3,6,90,NULL,5,40),(168,4,113,3,6,90,NULL,5,41),(169,4,35,3,0,500,NULL,5,42),(170,5,1,2,6,90,NULL,1,111),(171,5,114,2,5,75,NULL,1,112),(172,5,3,2,5,75,NULL,1,113),(173,5,115,2,4,60,NULL,1,114),(174,5,8,3,6,90,NULL,1,121),(175,5,116,3,5,75,NULL,1,122),(176,5,7,3,4,60,NULL,1,123),(177,5,47,3,5,75,NULL,1,124),(178,5,117,3,3,45,NULL,1,125),(179,5,50,2,4,60,NULL,2,211),(180,5,9,2,5,75,NULL,2,212),(181,5,46,2,8,120,NULL,2,213),(182,5,45,2,6,90,NULL,2,214),(183,5,118,2,3,45,NULL,2,215),(184,5,48,3,7,105,NULL,2,221),(185,5,17,3,5,75,NULL,2,222),(186,5,119,3,6,90,NULL,2,223),(187,5,120,3,4,60,NULL,2,224),(188,5,121,3,3,45,NULL,2,225),(189,5,13,2,6,90,NULL,3,311),(190,5,51,2,6,90,NULL,3,312),(191,5,122,2,6,90,NULL,3,313),(192,5,123,2,6,90,NULL,3,314),(193,5,124,3,5,75,NULL,3,321),(194,5,125,3,6,90,NULL,3,322),(195,5,126,3,6,90,NULL,3,323),(196,5,127,3,7,105,NULL,3,324),(197,5,128,2,6,90,NULL,4,411),(198,5,129,2,6,90,NULL,4,412),(199,5,130,2,6,90,NULL,4,413),(200,5,131,2,7,105,NULL,4,414),(201,5,132,3,6,90,NULL,4,421),(202,5,133,3,5,75,NULL,4,422),(203,5,134,3,5,75,NULL,4,423),(204,5,135,3,6,90,NULL,4,424),(205,5,136,3,4,60,NULL,4,425),(206,5,137,2,4,60,NULL,5,511),(207,5,138,2,5,75,NULL,5,512),(208,5,139,2,4,60,NULL,5,513),(209,5,140,2,5,75,NULL,5,514),(210,5,141,2,4,60,NULL,5,515),(211,5,42,3,3,45,NULL,5,521),(212,5,142,3,4,60,NULL,5,522),(213,5,143,3,12,180,NULL,5,523),(214,5,144,3,4,60,NULL,5,524),(215,6,58,2,6,90,NULL,1,1),(216,6,46,2,4,60,NULL,1,2),(217,6,82,2,4,60,NULL,1,3),(218,6,84,1,5,150,NULL,1,4),(219,6,45,2,6,90,NULL,1,5),(220,6,62,3,6,90,NULL,1,6),(221,6,48,3,4,60,NULL,1,7),(222,6,86,3,6,90,NULL,1,8),(223,6,87,3,6,90,NULL,1,9),(224,6,95,1,10,300,NULL,2,10),(225,6,89,1,3,90,NULL,2,11),(226,6,13,2,4,60,NULL,2,12),(227,6,96,3,4,60,NULL,2,13),(228,6,91,3,4,60,NULL,2,14),(229,6,93,3,5,75,NULL,2,15),(230,6,108,2,8,120,NULL,3,16),(231,6,90,2,4,60,NULL,3,17),(232,6,145,2,4,60,NULL,3,18);

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

/*Data for the table `ciclos` */

insert  into `ciclos`(`id`,`nombre`,`id_plan`,`id_orientacion`) values (1,'LS Básico',1,NULL),(2,'IS Básico',2,NULL),(3,'tudaw Básico',3,NULL),(4,'IA Básico',4,NULL),(5,'IM Básico',5,NULL),(6,'TUT Básico',6,NULL);

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

/*Data for the table `correlativas` */

insert  into `correlativas`(`id`,`id_ciclo_materia`,`id_correlativa`,`id_correlativa_tipo`) values (1,43,4,1),(2,43,4,3),(3,44,3,1),(4,44,3,3),(5,6,1,1),(6,6,1,3),(7,7,2,1),(8,7,2,3),(9,8,5,1),(11,8,5,3),(12,9,43,1),(13,9,43,3),(14,10,43,1),(15,10,43,3),(16,11,44,1),(17,11,3,2),(18,11,44,3),(19,12,9,1),(20,12,10,1),(21,12,9,3),(22,12,10,3),(23,13,9,1),(24,13,4,2),(25,13,9,3),(26,14,12,1),(27,14,43,2),(28,14,12,3),(29,15,7,1),(30,15,2,2),(31,15,7,3),(32,16,7,1),(33,16,8,1),(34,16,2,2),(35,16,7,3),(36,16,8,3),(37,17,8,1),(38,17,5,2),(39,17,8,3),(40,18,8,1),(41,18,12,1),(42,18,8,3),(43,18,12,3),(44,19,8,1),(45,19,8,3),(46,20,6,1),(47,20,1,2),(48,20,44,2),(49,20,6,3),(50,21,11,1),(51,21,1,2),(52,21,5,2),(53,21,11,3),(54,22,16,1),(55,22,7,2),(56,22,8,2),(57,22,16,3),(58,23,15,1),(59,23,16,1),(60,23,7,2),(61,23,8,2),(62,23,15,3),(63,23,16,3),(64,24,15,1),(65,24,7,2),(66,24,15,3),(67,25,14,1),(68,25,12,2),(69,25,13,2),(70,25,14,3),(71,26,21,1),(72,26,11,2),(73,26,21,3),(74,27,20,1),(75,27,11,2),(76,27,20,3),(77,28,25,1),(78,28,11,2),(79,28,25,3),(80,29,27,1),(81,29,27,3),(82,30,26,1),(83,30,26,3),(84,31,15,1),(85,31,25,1),(86,31,15,3),(87,31,25,3),(88,32,15,1),(89,32,7,2),(90,32,15,3),(91,34,19,1),(92,34,17,2),(93,34,19,3),(94,35,29,1),(95,35,15,2),(96,35,29,3),(97,36,28,1),(98,36,30,1),(99,36,14,2),(100,36,28,3),(101,36,30,3),(102,37,22,1),(103,37,29,1),(104,37,17,2),(105,37,22,3),(106,37,29,3),(107,38,23,1),(108,38,25,1),(109,38,15,2),(110,38,17,2),(111,38,23,3),(112,38,25,3),(113,39,37,1),(114,39,15,2),(115,39,17,2),(116,39,37,3),(117,40,37,1),(118,40,15,2),(119,40,17,2),(120,40,37,3),(121,41,30,1),(122,41,34,1),(123,41,14,2),(124,41,30,3),(125,41,34,3),(126,42,37,1),(127,42,15,2),(128,42,17,2),(129,42,37,3),(130,51,49,1),(131,51,49,3),(132,52,48,1),(133,52,45,3),(134,52,48,3),(135,53,48,1),(136,53,48,3),(137,55,45,1),(138,55,45,3),(139,56,46,1),(140,56,46,3),(141,57,50,1),(142,57,50,3),(143,58,45,1),(144,58,52,1),(145,58,45,3),(146,58,52,3),(147,59,51,1),(148,59,51,3),(149,60,51,1),(150,60,51,3),(151,61,58,1),(152,61,45,2),(153,61,55,3),(154,61,58,3),(155,62,53,1),(156,62,48,2),(157,62,53,3),(158,63,59,1),(159,63,60,1),(160,63,59,3),(162,63,60,3),(163,64,59,1),(164,64,49,2),(165,64,59,3),(166,65,63,1),(167,65,51,2),(168,65,63,3),(169,66,56,1),(170,66,46,2),(171,66,56,3),(172,67,56,1),(173,67,57,1),(174,67,46,2),(175,67,56,3),(176,67,57,3),(177,68,57,1),(178,68,50,2),(179,68,57,3),(180,69,55,1),(181,69,45,2),(182,69,53,2),(183,69,55,3),(184,70,61,1),(185,70,58,2),(186,70,61,1),(187,71,64,1),(188,71,51,2),(189,71,64,3),(190,72,69,1),(191,72,45,2),(192,72,53,2),(193,72,69,3),(194,73,69,1),(195,73,70,1),(196,73,51,2),(197,73,54,2),(198,73,69,3),(199,73,70,3),(200,74,62,1),(201,74,45,2),(202,74,50,2),(203,74,62,3),(204,75,67,1),(205,75,56,2),(206,75,57,2),(207,75,67,3),(208,76,66,1),(209,76,67,1),(211,76,56,2),(212,76,57,2),(213,76,66,3),(214,76,67,3),(215,77,66,1),(216,77,56,2),(217,77,66,3),(218,78,65,1),(219,78,63,2),(220,78,64,2),(221,78,65,3),(222,79,74,1),(223,79,62,2),(224,79,74,3),(225,80,72,1),(226,80,62,2),(227,80,72,3),(228,81,68,1),(229,81,68,3),(230,82,74,1),(231,82,78,1),(232,82,62,2),(233,82,74,3),(234,82,78,3),(235,83,66,1),(236,83,56,2),(237,83,66,3),(238,84,78,1),(239,84,63,2),(240,84,64,2),(241,84,78,3),(242,85,80,1),(243,85,80,3),(244,86,79,1),(245,86,79,3),(246,88,81,1),(247,88,68,2),(248,88,81,3),(249,89,85,1),(250,89,66,2),(251,89,85,3),(252,90,82,1),(253,90,86,1),(254,90,65,2),(255,90,82,3),(256,90,86,3),(257,91,75,1),(258,91,85,1),(259,91,67,2),(260,91,75,3),(261,91,85,3),(262,92,84,1),(263,92,65,2),(264,92,84,3),(265,93,84,1),(266,93,88,1),(267,93,65,2),(268,93,84,3),(269,93,88,3),(270,94,92,1),(271,94,78,2),(272,94,92,3),(273,95,91,1),(274,95,66,2),(275,95,68,2),(276,95,91,3),(277,96,88,1),(278,96,70,2),(279,96,88,3),(280,97,91,1),(281,97,66,2),(282,97,68,2),(283,97,91,3),(284,104,98,1),(285,104,98,3),(286,105,99,1),(287,105,100,1),(288,105,99,3),(289,105,100,3),(290,106,99,1),(291,106,101,1),(292,106,99,3),(293,106,101,3),(294,107,100,1),(295,107,103,1),(296,107,100,3),(297,107,103,3),(298,108,100,1),(299,108,103,1),(300,108,100,3),(301,108,103,3),(302,110,106,1),(303,110,101,3),(304,110,106,3),(305,111,107,1),(306,111,108,1),(307,111,107,3),(308,111,108,3),(309,112,107,1),(310,112,108,1),(311,112,109,1),(312,112,107,3),(313,112,108,3),(314,112,109,3),(315,113,107,1),(316,113,108,1),(317,113,107,3),(318,113,108,3),(319,114,107,1),(320,114,108,1),(321,114,107,3),(322,114,108,3),(323,115,102,1),(324,115,102,3),(325,116,107,1),(326,116,108,1),(327,116,111,3),(331,117,104,1),(332,117,98,2),(333,117,104,3),(334,118,112,1),(335,118,113,1),(336,118,114,1),(337,118,107,2),(338,118,108,2),(339,118,112,3),(340,118,113,3),(341,118,114,3),(342,119,112,1),(343,119,113,1),(344,119,114,1),(345,119,107,2),(346,119,108,2),(347,119,112,3),(348,119,113,3),(349,119,114,3),(350,120,110,1),(351,120,101,2),(352,120,110,3),(358,121,110,1),(359,121,112,1),(360,121,106,2),(361,121,110,3),(362,121,112,3),(363,122,118,1),(364,122,119,1),(365,122,112,2),(366,122,118,3),(367,122,119,3),(368,123,118,1),(369,123,119,1),(370,123,112,2),(371,123,118,3),(372,123,119,3),(373,124,115,1),(374,124,121,1),(375,124,102,2),(376,124,115,3),(377,124,121,3),(378,125,120,1),(379,125,106,2),(380,125,120,3),(381,126,118,1),(382,126,119,1),(383,126,109,2),(384,126,112,2),(387,126,118,3),(388,126,109,3),(389,126,119,3),(390,135,128,3),(391,135,129,3),(392,136,128,3),(393,136,129,3),(394,137,128,3),(395,137,131,3),(396,138,132,3),(397,138,133,3),(398,139,130,3),(399,139,133,3),(400,140,128,3),(401,140,130,3),(402,140,132,3),(403,141,128,3),(404,141,130,3),(405,142,135,3),(406,143,137,3),(407,144,139,3),(408,144,140,3),(409,145,138,3),(410,145,139,3),(411,146,138,3),(412,146,140,3),(413,147,138,3),(414,147,140,3),(415,148,136,3),(416,148,140,3),(417,148,141,3),(418,148,142,3),(419,149,140,3),(420,149,143,3),(421,149,144,3),(422,149,146,3),(423,150,141,3),(424,150,143,3),(425,150,144,3),(426,151,144,3),(427,151,146,3),(428,152,141,3),(429,152,149,3),(430,153,145,3),(431,153,146,3),(432,153,147,3),(433,154,147,3),(434,154,150,3),(435,155,153,3),(436,155,154,3),(437,156,151,3),(438,156,153,3),(439,156,154,3),(440,157,151,3),(441,157,153,3),(442,158,150,3),(443,158,152,3),(444,159,150,3),(445,159,151,3),(446,160,154,3),(447,160,156,3),(448,160,157,3),(449,161,152,3),(450,161,158,3),(451,161,159,3),(452,162,155,3),(453,162,157,3),(454,163,157,3),(455,163,158,3),(456,164,151,3),(457,164,156,3),(458,165,156,3),(459,165,160,3),(460,166,161,3),(461,166,163,3),(462,174,170,1),(463,175,171,1),(464,176,172,1),(465,174,170,3),(466,175,171,3),(467,176,172,3),(468,178,173,1),(469,178,173,3),(470,179,174,1),(471,179,170,2),(472,179,174,3),(473,179,170,3),(474,180,175,1),(475,180,171,2),(476,180,175,3),(477,180,171,3),(478,181,174,1),(479,181,170,2),(480,181,172,2),(481,181,174,3),(482,181,170,3),(483,181,172,3),(484,183,178,1),(485,183,178,3),(486,184,176,1),(487,184,179,1),(488,184,181,1),(489,184,174,2),(491,184,176,3),(492,184,179,3),(493,184,181,3),(494,184,174,3),(495,185,180,1),(496,185,175,2),(497,185,180,3),(498,185,175,3),(499,186,177,1),(500,186,181,1),(501,186,182,1),(502,186,177,3),(503,186,181,3),(504,186,182,3),(505,187,176,1),(506,187,179,1),(507,187,172,2),(508,187,176,3),(509,187,179,3),(510,187,172,3),(511,188,178,1),(512,188,183,1),(514,188,173,2),(515,188,178,3),(516,188,183,3),(517,188,173,3),(518,189,174,1),(519,189,170,2),(520,189,174,3),(521,189,170,3),(522,190,181,1),(523,190,187,1),(524,190,181,3),(525,190,187,3),(526,191,179,1),(527,191,181,1),(528,191,177,2),(529,191,179,3),(530,191,181,3),(531,191,177,3),(532,192,177,1),(533,192,181,1),(534,192,174,2),(535,192,177,3),(536,192,181,3),(537,192,174,3),(538,193,179,1),(539,193,185,1),(540,193,189,1),(541,193,175,2),(542,193,176,2),(543,193,179,3),(544,193,185,3),(545,193,189,3),(546,193,175,3),(547,193,176,3),(548,194,181,1),(549,194,190,1),(550,194,181,3),(551,194,190,3),(552,195,181,1),(553,195,190,1),(554,195,181,3),(555,195,190,3),(556,196,181,1),(557,196,187,1),(558,196,179,2),(559,196,181,3),(560,196,187,3),(561,196,179,3),(562,197,185,1),(563,197,190,1),(564,197,193,1),(565,197,180,2),(566,197,187,2),(567,197,185,3),(568,197,190,3),(569,197,193,3),(570,197,180,3),(571,197,187,3),(572,198,184,1),(573,198,190,1),(574,198,181,2),(575,198,184,3),(576,198,190,3),(577,198,181,3),(578,199,185,1),(579,199,193,1),(580,199,196,1),(581,199,180,2),(582,199,185,3),(583,199,193,3),(584,199,196,3),(585,199,180,3),(586,200,191,1),(587,200,192,1),(588,200,196,1),(589,200,182,2),(590,200,186,2),(591,200,191,3),(592,200,192,3),(593,200,196,3),(594,200,182,3),(595,200,186,3),(596,201,190,1),(597,201,194,1),(598,201,195,1),(599,201,187,2),(600,201,190,3),(601,201,194,3),(602,201,195,3),(603,201,187,3),(604,202,193,1),(605,202,194,1),(606,202,198,1),(607,202,179,2),(608,202,193,3),(609,202,194,3),(610,202,198,3),(611,202,179,3),(612,203,194,1),(613,203,198,1),(614,203,185,2),(615,203,187,2),(616,203,194,3),(617,203,198,3),(618,203,185,3),(619,203,187,3),(620,204,200,1),(621,204,192,2),(622,204,200,3),(623,204,192,3),(624,205,195,1),(625,205,197,1),(626,205,199,1),(627,205,182,2),(628,205,179,2),(629,205,195,3),(630,205,197,3),(631,205,199,3),(632,205,182,3),(633,205,179,3),(634,206,205,1),(635,206,194,2),(636,206,205,3),(637,206,194,3),(638,207,203,1),(639,207,190,2),(640,207,203,3),(641,207,190,3),(642,208,199,1),(643,208,200,1),(644,208,201,1),(645,208,196,2),(646,208,184,2),(647,208,199,3),(648,208,200,3),(649,208,201,3),(650,208,196,3),(651,208,184,3),(652,209,203,1),(653,209,205,1),(654,209,193,2),(655,209,203,3),(656,209,205,3),(657,209,193,3),(658,211,188,1),(659,211,178,2),(660,211,183,2),(661,211,188,3),(662,211,178,3),(663,211,183,3),(664,212,188,1),(665,212,178,2),(666,212,183,2),(667,212,188,3),(668,212,178,3),(669,212,183,3),(670,220,215,3),(671,221,216,3),(672,222,217,3),(673,223,215,3),(674,224,223,3),(675,224,218,3),(676,224,220,3),(677,225,223,3),(678,225,219,3),(679,225,218,3),(680,226,220,3),(681,227,224,3),(682,228,224,3),(683,229,223,3),(684,229,224,3),(685,230,222,3),(686,230,223,3),(687,230,224,3),(688,230,226,3),(689,231,222,3),(690,231,223,3),(691,231,224,3),(692,231,226,3),(693,232,227,3);

/*Table structure for table `correlativas_tipo` */

DROP TABLE IF EXISTS `correlativas_tipo`;

CREATE TABLE `correlativas_tipo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;

/*Data for the table `correlativas_tipo` */

insert  into `correlativas_tipo`(`id`,`descripcion`) values (1,'Regularizada para cursar'),(2,'Aprobada para cursar'),(3,'Aprobada para rendir');

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

/*Data for the table `cvar` */

/*Table structure for table `docente_categoria` */

DROP TABLE IF EXISTS `docente_categoria`;

CREATE TABLE `docente_categoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED;

/*Data for the table `docente_categoria` */

insert  into `docente_categoria`(`id`,`nombre`) values (1,'Profesor Titular'),(2,'Profesor Asociado'),(3,'Profesor Adjunto'),(4,'Jefe de Trabajos Prácticos'),(5,'Ayudante de Primera'),(6,'Profesor Adjunto Ad Honorem');

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

insert  into `docentes`(`id`,`persona_id`,`id_docente_categoria`,`descripcion`) values (2,2,4,NULL),(3,3,5,NULL),(4,4,5,NULL),(5,5,3,NULL),(6,6,4,NULL),(7,7,3,NULL),(8,8,NULL,NULL),(9,9,NULL,NULL),(10,10,1,NULL),(11,11,NULL,NULL),(12,12,4,NULL),(13,13,4,NULL),(14,14,NULL,NULL),(15,15,1,NULL),(16,16,5,NULL),(17,17,3,NULL),(18,18,5,NULL),(19,19,3,NULL),(20,20,3,NULL),(21,21,5,NULL),(22,22,1,NULL),(23,23,4,NULL),(24,24,5,NULL),(25,25,5,NULL),(26,26,3,NULL),(27,27,3,NULL),(28,28,1,NULL),(29,29,4,NULL),(30,30,1,NULL),(31,31,1,NULL),(32,32,1,NULL),(33,33,NULL,NULL),(34,34,2,NULL),(35,35,4,NULL),(36,36,5,NULL),(37,37,3,NULL),(38,38,3,NULL),(39,39,4,NULL),(40,40,NULL,NULL),(41,41,3,NULL),(42,42,4,NULL),(43,43,1,NULL),(44,44,4,NULL),(45,45,1,NULL),(46,46,3,NULL),(47,47,4,NULL),(48,48,3,NULL),(49,49,4,NULL),(50,50,3,NULL),(51,51,3,NULL),(52,52,3,NULL),(53,53,5,NULL),(54,54,4,NULL),(55,55,5,NULL),(56,56,5,NULL),(57,57,3,NULL),(58,58,4,NULL),(59,59,3,NULL),(60,60,NULL,NULL),(61,61,NULL,NULL),(62,62,4,NULL),(63,63,3,NULL),(64,64,4,NULL),(66,65,3,NULL);

/*Table structure for table `documentos` */

DROP TABLE IF EXISTS `documentos`;

CREATE TABLE `documentos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `ubicacion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `documentos` */

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

/*Data for the table `escuela` */

insert  into `escuela`(`id`,`nombre`,`universidad`,`director`,`color`) values (1,'Escuela de Ingenieria','UNdeC','Ing. Alberto Riba','#0080ff');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `estudiantes` */

/*Table structure for table `groups` */

DROP TABLE IF EXISTS `groups`;

CREATE TABLE `groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `groups` */

insert  into `groups`(`id`,`name`,`description`) values (1,'admin','Administrator'),(2,'members','General User');

/*Table structure for table `institucion` */

DROP TABLE IF EXISTS `institucion`;

CREATE TABLE `institucion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `razon_social` varchar(100) DEFAULT NULL,
  `cuit` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `institucion` */

/*Table structure for table `login_attempts` */

DROP TABLE IF EXISTS `login_attempts`;

CREATE TABLE `login_attempts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `login_attempts` */

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

/*Data for the table `materia_docente` */

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

/*Data for the table `materias` */

insert  into `materias`(`id`,`nombre`,`id_tipo`) values (1,'Análisis Matemático I',1),(2,'Algoritmos y Estructura de Datos',1),(3,'Algebra y Geometría Analítica',1),(4,'Matemática Discreta',1),(5,'Administración y Organización de Empresas',1),(6,'Electrónica Digital',1),(7,'Algebra Lineal',1),(8,'Análisis Matemático II',1),(9,'Programación I',1),(10,'Sistemas I',1),(11,'Arquitectura de Computadoras I',1),(12,'Sistemas Operativos I',1),(13,'Probabilidad y Estadística',1),(14,'Sistemas Operativos II',1),(15,'Arquitectura de Computadoras II',1),(16,'Tecnologías de Comunicaciones',1),(17,'Programación II',1),(18,'Bases de Datos I',1),(19,'Sistemas II',1),(20,'Seminario I',1),(21,'Ética Profesional',1),(22,'Cálculo Numérico y Avanzado',1),(23,'Economía',1),(24,'Base de Datos II',1),(25,'Programación III',1),(26,'Teoría de la Computación',1),(27,'Redes de Datos I',1),(28,'Contabilidad y Costos',1),(29,'Investigación Operativa',1),(30,'Formulación y Evaluación de Proyectos',1),(31,'Modelos y Simulación',1),(32,'Planeamiento y Control de Gestión',1),(33,'Seminario II',1),(34,'Paradigmas de Programación',1),(35,'Trabajo Final',1),(36,'Legislación',1),(37,'Inteligencia Artificial',1),(38,'Administración de Proyectos Informáticos',1),(39,'Ingeniería de Software',1),(40,'Seminario III',1),(41,'Auditoria de Sistemas',1),(42,'Gestión de la Calidad',1),(43,'Pericias Informáticas y de Comunicaciones',1),(44,'Herramientas de Ingeniería de Software',1),(45,'Sistema de Representación',1),(46,'Física I',1),(47,'Química General',1),(48,'Física II',1),(49,'Física III',1),(50,'Análisis Matemático III',1),(51,'Electrotecnia',1),(52,'Arquitecturas Paralelas',1),(53,'Teoría de Control',1),(54,'Redes de Datos II',1),(55,'Comunicaciones Inalámbricas',1),(56,'Criptografía y Seguridad Informática',1),(57,'Higiene y Seguridad en el Trabajo y el Medio Ambiente',1),(58,'Matemática I',1),(59,'Taller de Computación',1),(60,'Inglés Técnico',1),(61,'Estructura de Datos y Algoritmos I',1),(62,'Matemática II',1),(63,'Estructura de Datos y Algoritmos II',1),(64,'Arquitectura de Computadores',1),(65,'Lenguaje de Programación I',1),(66,'Taller de Programación I',1),(67,'Diseño Gráfico',1),(68,'Sistemas Operativos',1),(69,'Introducción al Diseño de Aplicaciones Web',1),(70,'Lenguaje de Programación II',1),(71,'Taller de Programación II',1),(72,'Diseño de Aplicaciones Web I',1),(73,'Taller de Programación III',1),(74,'Seguridad en Aplicaciones Web',1),(75,'Diseño de Aplicaciones Web II',1),(76,'Taller de Programación IV',1),(77,'Legislación y Ética Profesional',1),(78,'Redes de Datos',1),(79,'Taller de Diseño de Aplicaciones Web',1),(80,'Geometría Analítica',1),(81,'Algebra',1),(82,'Fundamentos de Informática',1),(83,'Química',1),(84,'Trigonometría',1),(85,'Introducción a la Agrimensura',1),(86,'Informática',1),(87,'Topografía I',1),(88,'Cálculo Avanzado',1),(89,'Dibujo Topográfico y Cartográfico',1),(90,'Elementos de Edificios',1),(91,'Geografía Física y Geomorfología',1),(92,'Introducción al Derecho',1),(93,'Cálculo de Compensación',1),(94,'Fotogrametría y Fotointerpretación',1),(95,'Topografía II',1),(96,'Cartografía',1),(97,'Teledetección Satelital',1),(98,'Información Rural y Agrología',1),(99,'Derechos Reales y Registral',1),(100,'Economía y Gestión Empresarial',1),(101,'Catastro Territorial',1),(102,'Ordenamiento Territorial y Planeamiento',1),(103,'Geodesia Física y Geométrica',1),(104,'Astronomía Geodésica',1),(105,'Agrimensura Legal',1),(106,'Geodesia Espacial',1),(107,'Valuaciones Inmobiliarias',1),(108,'Mediciones para Obras de Ingeniería',1),(109,'Sistema de Información Territorial',1),(110,'Mensura',1),(111,'Introducción a la Metodología de la Investigación Científica',1),(112,'Electiva 1',2),(113,'Electiva 2',2),(114,'Algoritmos',1),(115,'Introducción a la Ingeniería',1),(116,'Estructura de Datos',1),(117,'Economía y Sociedad',1),(118,'Ética y Legislación',1),(119,'Estática y Resistencia de Materiales',1),(120,'Matemáticas Especiales',1),(121,'Organización Industrial',1),(122,'Termodinámica y Máquinas Térmicas',1),(123,'Ciencia de los Materiales',1),(124,'Cálculo Numérico',1),(125,'Mediciones Mecánicas. Eléctricas y Electrónicas',1),(126,'Máquinas Eléctricas Industriales',1),(127,'Mecánica Racional',1),(128,'Sistemas de Control',1),(129,'Electrónica Básica y Digital',1),(130,'Robótica Industrial I',1),(131,'Mecanismos y Elementos de Máquinas',1),(132,'Instalaciones Elétricas Industriales',1),(133,'Automatización Industrial',1),(134,'Computadores Digitales',1),(135,'Tecnología Industrial',1),(136,'Control de Accionamientos Mecatrónicos',1),(137,'Diseño de Sistemas Mecatrónicos',1),(138,'Redes de Comunicación Industriales',1),(139,'Robótica Industrial II',1),(140,'Tecnología de Control de Sistemas Mecatrónicos',1),(141,'Optativa I',2),(142,'Seguridad, Higiene y Medio Ambiente',1),(143,'Proyecto de Ingeniería Mecatrónica',1),(144,'Optativa II',2),(145,'Sensores Remotos',1);

/*Table structure for table `materias_tipo` */

DROP TABLE IF EXISTS `materias_tipo`;

CREATE TABLE `materias_tipo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `materias_tipo` */

insert  into `materias_tipo`(`id`,`nombre`) values (1,'Común'),(2,'Genérica'),(3,'Optativa');

/*Table structure for table `operaciones` */

DROP TABLE IF EXISTS `operaciones`;

CREATE TABLE `operaciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL,
  `imagen` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `operaciones` */

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

/*Data for the table `optativas` */

/*Table structure for table `orientaciones` */

DROP TABLE IF EXISTS `orientaciones`;

CREATE TABLE `orientaciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_plan` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_plan` (`id_plan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `orientaciones` */

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

insert  into `persona`(`id`,`apellido`,`nombre`,`nombre_2`,`dni`,`cuit`,`email1`,`email2`) values (1,'Arevalo','Sergio',NULL,'30653165',NULL,'sarevalo@undec.edu.ar',NULL),(2,'Albrieu','Eliana',NULL,NULL,NULL,'elianaalbrieu@gmail.com',NULL),(3,'Alvarez','Jonatan',NULL,NULL,NULL,'jonatanemanuel.alvarez@gmail.com',NULL),(4,'Anzalaz','Fernando','Alejandro',NULL,NULL,'faanzalaz@yahoo.com',NULL),(5,'Arana','Germinal',NULL,NULL,NULL,'garana@hotmail.com',NULL),(6,'Barrionuevo','Claudio','Patricio',NULL,NULL,'claudiopbarrionuevo@gmail.com',NULL),(7,'Barros Olivera','Ruy','Enio',NULL,NULL,'ruy1958@yahoo.com.ar','rbarros@undec.edu.ar'),(8,'Bustos','Florencia',NULL,NULL,NULL,'mariaflorenciabustos@gmail.com',NULL),(9,'Cargnelutti','Pablo','Fernando',NULL,NULL,'pablo.fernando.cargnelutti@gmail.com',NULL),(10,'Carmona','Fernanda','Beatriz',NULL,NULL,'fbcarmona69@gmail.com',NULL),(11,'Carneiro','Verónica',NULL,NULL,NULL,'veronica_pini@hotmail.com',NULL),(12,'Castañeda','Miguel','Alejandro',NULL,NULL,'m78castaneda@gmail.com',NULL),(13,'Castro','Silvana','Elizabeth',NULL,NULL,'ecastro@undec.edu.ar',NULL),(14,'Cena','Diego',NULL,NULL,NULL,'diegocena2@gmail.com',NULL),(15,'Chade','Pablo',NULL,NULL,NULL,'pablochade@hotmail.com',NULL),(16,'Cruz','Alejandro',NULL,NULL,NULL,'alejandrocruz1987@gmail.com',NULL),(17,'Dantiacq Piccolella','Alejandro','Gastón',NULL,NULL,'alejandro.dantiacq@gmail.com',NULL),(18,'Dávila','Juan','José',NULL,NULL,'juan-jose-davila@hotmail.com','jjdavila@undec.edu.ar'),(19,'Fajardo','Hugo',NULL,NULL,NULL,'hugofajardo1@gmail.com ',NULL),(20,'Frati','Fernando','Emmanuel',NULL,NULL,'emmanuelfrati@gmail.com','fefrati@undec.edu.ar'),(21,'Frati','Francisco',NULL,NULL,NULL,'pacofrati@hotmail.com',NULL),(22,'Furlani','Marco',NULL,NULL,NULL,'mfurlani@undec.edu.ar',NULL),(23,'Gagliardi','Marisa',NULL,NULL,NULL,'marisagagliardi76@gmail.com',NULL),(24,'Gómez','Fabian',NULL,NULL,NULL,'albertogomez@hotmail.com',NULL),(25,'Guidet Canovas','Sebastián',NULL,NULL,NULL,'seba_guidet@hotmail.com','sguidet@undec.edu.ar'),(26,'Isaia','Claudia',NULL,NULL,NULL,'cpeisaia@gmail.com ','cpeisaia@hotmail.com'),(27,'Lábaque','María','Elena',NULL,NULL,'malena_labaque@yahoo.com.ar','malenalabaque@gmail.com'),(28,'Lucero','Ricardo',NULL,NULL,NULL,'ricardo_a_lucero@yahoo.com.ar','ricardo.lucero@gmail.com'),(29,'Manrique','Carolina',NULL,NULL,NULL,'acmanrique11@gmail.com',NULL),(30,'Martinez del Pezzo','Horacio',NULL,NULL,NULL,'martinezdelpezzo@gmail.com','martinezdelpezzo@yahoo.com.ar'),(31,'Martinez','Enrique',NULL,NULL,NULL,'enriquenmartinez@gmail.com',NULL),(32,'Martinez','Gabriel',NULL,NULL,NULL,'chilecito@gmail.com',NULL),(33,'Maza','Hugo',NULL,NULL,NULL,'hcmaza@yahoo.com.ar','hcmaza@gmail.com'),(34,'Mazolla','Nora',NULL,NULL,NULL,'noramazzola@hotmail.com',NULL),(35,'Mercado','Julio','Oscar',NULL,NULL,'julioosmercado@hotmail.com',NULL),(36,'Millon','Roberto',NULL,NULL,NULL,'robertomillontello@gmail.com','rmillon@undec.edu.ar'),(37,'Moralejo','Raúl',NULL,NULL,NULL,'romoralejo@gmail.com',NULL),(38,'Neder','Enrique',NULL,NULL,NULL,'enrique.neder@eco.uncor.edu',NULL),(39,'Ochova','Juan','Marcelo',NULL,NULL,'jmochova@hotmail.com',NULL),(40,'Olmedo','Pablo',NULL,NULL,NULL,'polmedo@undec.edu.ar',NULL),(41,'Quiroga','Gabriel',NULL,NULL,NULL,'quirogagabriel@gmail.com',NULL),(42,'Quiroga Marín','Carlos','Ariel',NULL,NULL,'caqmchilecito@hotmail.com',NULL),(43,'Quiroga','Rosana',NULL,NULL,NULL,'roquiroga4@hotmail.com',NULL),(44,'Ramos','Raul',NULL,NULL,NULL,'rramos@undec.edu.ar',NULL),(45,'Riba','Alberto',NULL,NULL,NULL,'albertoriba@gmail.com',NULL),(46,'Rivero','Eugenia',NULL,NULL,NULL,'eugeriverop@yahoo.com.ar',NULL),(47,'Robador','Emmanuel',NULL,NULL,NULL,'robador@gmail.com',NULL),(48,'Robins','Hector','Daniel',NULL,NULL,'daniel.robins@kunan.com.ar',NULL),(49,'Rodriguez','Lucía',NULL,NULL,NULL,'luciarwaidatt@gmail.com',NULL),(50,'Rojo','Jorge','Mario',NULL,NULL,'jorgerojo@arnet.com.ar','jrojo@undec.edu.ar'),(51,'Roldan','Horacio',NULL,NULL,NULL,'horacioroldan08@gmail.com',NULL),(52,'Romero','Clelia',NULL,NULL,NULL,'cromero@undec.edu.ar','cleliardr@hotmail.com'),(53,'Rovero','Mara',NULL,NULL,NULL,'mararovero@gmail.com',NULL),(54,'Ruitti','Alberto','Javier',NULL,NULL,'ruittijavier@gmail.com','jruitti@undec.edu.ar'),(55,'Ruitti','Natalia',NULL,NULL,NULL,'nruitti@undec.edu.ar',NULL),(56,'Sanchez','Valeria',NULL,NULL,NULL,'valeria_vas22@hotmail.com','valesanchezb@gmail.com'),(57,'Sigampa Paez','Elvio',NULL,NULL,NULL,'esigampapaez@yahoo.com.ar',NULL),(58,'Tejada','Jorge',NULL,NULL,NULL,'jorgedat@gmail.com',NULL),(59,'Texier Ramirez','José','Daniel',NULL,NULL,'dantexier@gmail.com',NULL),(60,'Torrielli','Edgar',NULL,NULL,NULL,'e.torrielli@gmail.com',NULL),(61,'Turne','Daniel',NULL,NULL,NULL,'daniel.turne@gmail.com',NULL),(62,'Valleto','Marcela',NULL,NULL,NULL,'marcevalletto@gmail.com','marcelavalletto@hotmail.com'),(63,'Varas','Hector',NULL,NULL,NULL,'micovaras@yahoo.com.ar','micovaras@hotmail.com'),(64,'Vicencio','Verena',NULL,NULL,NULL,'verevere@gmail.com','verena.vicencio@gmail.com'),(65,'Curti','Hugo','Javier',NULL,NULL,NULL,NULL);

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

/*Data for the table `planes` */

insert  into `planes`(`id`,`id_carrera`,`nombre`,`duracion`,`vigente`) values (1,1,'07108',5,1),(2,2,'003-11',5,1),(3,3,'033-09',3,1),(4,5,'021-17',5,1),(5,4,'023-17',5,1),(6,6,'022-17',3,1);

/*Table structure for table `proyecto_documento` */

DROP TABLE IF EXISTS `proyecto_documento`;

CREATE TABLE `proyecto_documento` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_proyecto` int(11) DEFAULT NULL,
  `id_documento` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_proyecto_documento_proyecto` (`id_proyecto`),
  KEY `FK_proyecto_documento_documento` (`id_documento`),
  CONSTRAINT `FK_proyecto_documento_documento` FOREIGN KEY (`id_documento`) REFERENCES `documentos` (`id`),
  CONSTRAINT `FK_proyecto_documento_proyecto` FOREIGN KEY (`id_proyecto`) REFERENCES `proyectos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `proyecto_documento` */

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `proyecto_estudiante` */

/*Table structure for table `proyectos` */

DROP TABLE IF EXISTS `proyectos`;

CREATE TABLE `proyectos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_tipo` int(11) DEFAULT NULL,
  `titulo` varchar(200) DEFAULT NULL,
  `id_institucion` int(11) DEFAULT NULL,
  `id_tutor` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_proyectos_tipo` (`id_tipo`),
  KEY `FK_proyectos_institucion` (`id_institucion`),
  KEY `FK_proyectos_tutor` (`id_tutor`),
  CONSTRAINT `FK_proyectos_institucion` FOREIGN KEY (`id_institucion`) REFERENCES `institucion` (`id`),
  CONSTRAINT `FK_proyectos_tipo` FOREIGN KEY (`id_tipo`) REFERENCES `tipo_proyecto` (`id`),
  CONSTRAINT `FK_proyectos_tutor` FOREIGN KEY (`id_tutor`) REFERENCES `tutor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `proyectos` */

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `publicaciones` */

insert  into `publicaciones`(`id`,`titulo`,`contenido`,`creador_id`,`fecha_creacion`,`ultima_modificacion`,`modificador_id`,`esta_publicado`,`fecha`,`lugar`,`comienzo`,`fin`,`tipo`) values (1,'titulosss','',2,NULL,'2019-10-02',1,1,'2019-10-31','UNdeC','00:00:00','00:00:00',1),(7,'titulo 10','<p>dfg</p>\r\n',1,'2019-10-02','2019-10-02',1,1,'0000-00-00','UNdeC','00:00:00','00:00:00',2),(8,'PROGRAMAS DE MOVILIDAD ESTUDIANTIL','<p>La Universidad Nacional de Chilecito (UNdeC) se complace en informar la apertura de las convocatorias a los programas PILA (Programa de Intercambio Acad&eacute;mico Latinoamericano) y CRISCOS (Consejo de Rectores para la Integraci&oacute;n de la Subregi&oacute;n Centro Oeste de Sudam&eacute;rica). Destinatarios: Estudiantes de la UNdeC.</p>\r\n\r\n<p>Requisitos excluyentes:</p>\r\n\r\n<ul>\r\n	<li>Ser estudiante regular.</li>\r\n	<li>Requisitos indicativos para ambos programas:</li>\r\n	<li>Tener aprobado 25 % de la carrera en curso.</li>\r\n	<li>Promedio superior a 6.</li>\r\n	<li>Adeudar no menos de 6 materias para finalizar la carrera o no ser alumno del &uacute;ltimo<br />\r\n	a&ntilde;o de la misma.</li>\r\n	<li>Ser menor de 30 a&ntilde;os y mayor de 18.</li>\r\n</ul>\r\n\r\n<p><strong>&ldquo;Programa de Intercambio Acad&eacute;mico Latinoamericano&rdquo; (PILA)</strong></p>\r\n\r\n<p>Es el fruto de un convenio entre el Consejo Interuniversitario Nacional (C.I.N) por Argentina, la Asociaci&oacute;n Nacional de Universidades e Instituciones de Educaci&oacute;n Superior (ANUIES), de M&eacute;xico y la Asociaci&oacute;n Colombiana de Universidades (ASCUN) de Colombia, a llevarse a cabo durante el primer semestre de 2020. La fecha l&iacute;mite de postulaci&oacute;n permanecer&aacute; abierta hasta las 12:00 horas del d&iacute;a mi&eacute;rcoles 09 de Octubre del 2019. Se ofrecen TRES (3) plazas para estudiantes de GRADO en las siguientes Universidades:</p>\r\n\r\n<ul>\r\n	<li>Universidad de Santander (Colombia)</li>\r\n	<li>Universidad Pontificia Bolivariana. Sede Armenia (Colombia)</li>\r\n	<li>Universidad Pontificia Bolivariana. Sede Palmira (Colombia)</li>\r\n</ul>\r\n\r\n<p>La documentaci&oacute;n que debe presentar para su postulaci&oacute;n es:</p>\r\n\r\n<ul>\r\n	<li>Formulario de postulaci&oacute;n PILA.</li>\r\n	<li>Anexo II del convenio firmado por el postulante.</li>\r\n	<li>Fotocopia del Documento Nacional de Identidad.</li>\r\n	<li>Certificado Anal&iacute;tico.</li>\r\n	<li>Certificado de Alumno Regular.</li>\r\n	<li>Carta de motivaci&oacute;n del postulante.</li>\r\n	<li>Carta de recomendaci&oacute;n de dos docente.</li>\r\n	<li>Certificado m&eacute;dico de buena salud y antecedentes m&eacute;dicos.</li>\r\n	<li>Curriculum Vitae.</li>\r\n	<li><a href=\"https://www.undec.edu.ar/wp-content/uploads/2019/09/01-PILA-Formulario-Postulacion.doc\">01 &ndash; PILA &ndash; Formulario Postulacion</a></li>\r\n	<li><a href=\"https://www.undec.edu.ar/wp-content/uploads/2019/09/02-PILA-Anexo-II-Requsitos-y-Obligacion-del-Estudiante.doc\">02 &ndash; PILA &ndash; Anexo II &ndash; Requsitos y Obligacion del Estudiante</a></li>\r\n	<li><a href=\"https://www.undec.edu.ar/wp-content/uploads/2019/09/03-Convenio-Programa-PILA.pdf\">03 &ndash; Convenio Programa PILA</a></li>\r\n	<li><a href=\"https://www.undec.edu.ar/wp-content/uploads/2019/09/Universidad-de-Santander-FIB-2020.pdf\">Universidad de Santander &ndash; FIB 2020</a></li>\r\n	<li><a href=\"https://www.undec.edu.ar/wp-content/uploads/2019/09/Universidad-Pontificia-Bolivariana-Monteria-FIB-2020.pdf\">Universidad Pontificia Bolivariana (Monteria) &ndash; FIB 2020</a></li>\r\n	<li><a href=\"https://www.undec.edu.ar/wp-content/uploads/2019/09/Universidad-Pontificia-Bolivariana-Palmira-FIB-2020.pdf\">Universidad Pontificia Bolivariana (Palmira) &ndash; FIB 2020</a></li>\r\n</ul>\r\n\r\n<p>TODOS LOS DOCUMENTOS DEBEN SER ENTREGADOS POR TRIPLICADO EN FOLIO INDIVIDUAL POR JUEGO EN UNA CARPETA POR POSTULANTE.</p>\r\n\r\n<p>La dotaci&oacute;n de la beca se encuentra compartida entre ambas Instituciones, la UNdeC como Universidad de origen brindar&aacute; al estudiante pasajes a&eacute;reos, seguro internacional correspondiente y una ayuda extraordinaria de $6.000,00 (pesos seis mil). La Instituci&oacute;n anfitriona cubrir&aacute; el alojamiento, la eximici&oacute;n de pago de matr&iacute;cula y la manutenci&oacute;n alimentaria durante la estancia acad&eacute;mica del becario. El estudiante afrontara los gastos del tr&aacute;mite de visa y pasaporte.</p>\r\n\r\n<p><strong>&ldquo;Consejo de Rectores para la Integraci&oacute;n de la Subregi&oacute;n Centro Oeste de Sudam&eacute;rica&rdquo; (CRISCOS)</strong></p>\r\n\r\n<p>Se informa la apertura de la 44&ordf; convocatorio internacional del programa de movilidad estudiantil del Consejo de Rectores para la Integraci&oacute;n de la Subregi&oacute;n Centro Oeste de Sudam&eacute;rica (CRISCOS). La convocatoria permanecer&aacute; abierta hasta las 12:00 horas del d&iacute;a viernes 18 de Octubre de 2019. CRISCOS tiene el prop&oacute;sito de facilitar a estudiantes universitarios de grado la oportunidad de realizar un semestre de sus estudios en alguna universidad miembro de otro pa&iacute;s (Bolivia, Chile, Paraguay, Per&uacute; y Ecuador) contribuyendo a la internacionalizaci&oacute;n universitaria. La documentaci&oacute;n que deben presentar para su postulaci&oacute;n es:</p>\r\n\r\n<ul>\r\n	<li>Formulario de postulaci&oacute;n CRISCOS.</li>\r\n	<li>Responsabilidad de becarios.</li>\r\n	<li>Servicio b&aacute;sicos para becados.</li>\r\n	<li>Fotocopia del Documento Nacional de Identidad.</li>\r\n	<li>Certificado Anal&iacute;tico.</li>\r\n	<li>Certificado de Alumno Regular.</li>\r\n	<li>Carta de motivaci&oacute;n del postulante.</li>\r\n	<li>Carta de recomendaci&oacute;n de dos docente.</li>\r\n	<li>Certificado m&eacute;dico de buena salud y antecedentes m&eacute;dicos.</li>\r\n	<li>Curriculum Vitae.</li>\r\n	<li><a href=\"https://www.undec.edu.ar/wp-content/uploads/2019/09/01-Formulario-Postulaci¢n-PME.docx\">01 &ndash; Formulario Postulaci&cent;n PME</a></li>\r\n	<li><a href=\"https://www.undec.edu.ar/wp-content/uploads/2019/09/02-Compromiso-acadÇmico-PME.doc\">02 &ndash; Compromiso acadÇmico PME</a></li>\r\n	<li><a href=\"https://www.undec.edu.ar/wp-content/uploads/2019/09/03-Responsabilidades-de-becarios.doc\">03 &ndash; Responsabilidades de becarios</a></li>\r\n	<li><a href=\"https://www.undec.edu.ar/wp-content/uploads/2019/09/04-Servicio-b†sicos-para-becados.doc\">04 &ndash; Servicio b&dagger;sicos para becados</a></li>\r\n	<li><a href=\"https://www.undec.edu.ar/wp-content/uploads/2019/09/05-Reglamento-Programa-de-Movilidad-Estudiantil.pdf\">05 &ndash; Reglamento Programa de Movilidad Estudiantil</a></li>\r\n	<li><a href=\"https://www.undec.edu.ar/wp-content/uploads/2019/09/44¶-Convocatoria-Oferta-acadÇmica-2019-07-30.pdf\">44&para; Convocatoria Oferta acadÇmica 2019 07 30</a></li>\r\n</ul>\r\n\r\n<p>TODOS LOS DOCUMENTOS DEBEN SER ENTREGADOS POR TRIPLICADO EN FOLIO INDIVIDUAL POR JUEGO EN UNA CARPETA POR POSTULANTE.</p>\r\n\r\n<p>La dotaci&oacute;n de la beca se encuentra compartida entre ambas Instituciones, la UNdeC como Universidad de origen brindar&aacute; al estudiante pasajes terrestres, seguro internacional correspondiente y una ayuda extraordinaria de $6.000,00 (pesos seis mil). La Instituci&oacute;n anfitriona cubrir&aacute; el alojamiento, la eximici&oacute;n de pago de matr&iacute;cula y la manutenci&oacute;n alimentaria durante la estancia acad&eacute;mica del becario. El estudiante afrontara los gastos del tr&aacute;mite de visa y pasaporte.</p>\r\n\r\n<ul>\r\n	<li>Para mayor informaci&oacute;n pueden dirigirse a la oficina de Becas Universitarias de la UNdeC en el Campus Los Sarmientos en el horario de 09:00 a 16:00 horas</li>\r\n	<li>Por mail a Matias Pedone <a href=\"mailto:mpedone@undec.edu.ar\">mpedone@undec.edu.ar</a> ; Luis Frati <a href=\"mailto:lfrati@undec.edu.ar\">lfrati@undec.edu.ar</a></li>\r\n</ul>\r\n',1,'2019-10-02','2019-10-02',1,1,'2019-10-24','UNdeC','00:00:00','00:00:00',1),(9,'semana del algarrobo. Del 30 de septiembre al 4 de octubre','<p>A partir del a&ntilde;o 2015, el Instituto de Ambiente de Monta&ntilde;as y Regiones &Aacute;ridas (IAMRA) de la Universidad Nacional de Chilecito ha realizado actividades de capacitaci&oacute;n, divulgaci&oacute;n y sensibilizaci&oacute;n sobre la importancia de proteger el algarrobo como &aacute;rbol nativo de gran importancia para las zonas &aacute;ridas, gener&aacute;ndose diversas actividades de extensi&oacute;n y divulgaci&oacute;n en el departamento Chilecito y departamentos vecinos, a ra&iacute;z de esto es que surgen demandas&nbsp;&nbsp;por parte de la comunidad y de instituciones del medio sobre&nbsp;&nbsp;la necesidad de abordar el tema, por lo que en el a&ntilde;o 2017 surge la denominada &ldquo;Semana del Algarrobo&rdquo;, con un programa de actividades de gran concurrencia p&uacute;blica en varios departamentos de la provincia, como resultado del trabajo conjunto con la Subsecretaria de Agricultura Familiar (SsAF) y la Fundaci&oacute;n Argentina de Alimentos (FADA).</p>\r\n\r\n<p>Posteriormente en el a&ntilde;o 2018 se incorpora a la organizaci&oacute;n La Municipalidad del Departamento Chilecito y la Secretaria Gesti&oacute;n Comunitaria de la Universidad Nacional de Chilecito que contin&uacute;an participando en el transcurso de este a&ntilde;o, durante ese periodo se organizaron charlas en diferentes escuelas del medio, se plantaron algarrobos en el acceso sur de la ciudad y se brindaron capacitaciones a&nbsp;&nbsp;los diferentes actores comprometidos con los algarrobos, adem&aacute;s de realizar eventos y degustaciones p&uacute;blicas ,entre otras actividades, cerrando con una mesa redonda que permiti&oacute; formar una comisi&oacute;n de trabajo y generar nuevos proyectos para el 2019.</p>\r\n\r\n<p>Durante el corriente a&ntilde;o con el trabajo en conjunto con la SsAF y FADA, La Municipalidad del Departamento Chilecito y la Secretaria Gesti&oacute;n Comunitaria, coordinados por el IAMRA se plantea la realizaci&oacute;n de &ldquo;La Semana del Algarrobo&nbsp;2019 &rdquo;&nbsp;bajo el lema,&nbsp;<strong><em>&ldquo;Los algarrobos como grandes protectores de los ambientes &aacute;ridos&rdquo; ,&nbsp;</em></strong>el objetivo principal de estas actividades es la de sensibilizar e informar a las comunidades de la zona sobre la necesidad&nbsp;&nbsp;de protecci&oacute;n de los algarrobos; &aacute;rbol nativo que posee un alto valor social-cultural, adem&aacute;s del valor econ&oacute;mico y natural que representa para las comunidades, siendo adem&aacute;s su protecci&oacute;n necesaria para la&nbsp;detenci&oacute;n&nbsp;del avance de la desertificaci&oacute;n en la provincia de La Rioja.</p>\r\n\r\n<p>Las actividades de este a&ntilde;o se realizar&aacute;n en diferentes puntos de la ciudad de Chilecito y en departamentos vecinos; como actividad de apertura en la Plaza Principal de la ciudad de Chilecito se dispondr&aacute; de una carpa donde se degustar&aacute;n alimentos elaborados con harina de algarroba y se presentar&aacute;n ballets y grupos musicales. Adem&aacute;s se expondr&aacute;n trabajos de alumnos de las escuelas donde se brindaron anteriormente talleres sobre el algarrobo; pertenecientes a los niveles: inicial, secundario y terciario del departamento Chilecito y departamentos vecinos.</p>\r\n\r\n<p>Adem&aacute;s, se llevar&aacute;n a cabo actividades en Guandacol Departamento Gral. Felipe Varela donde se presentar&aacute; una charla-taller abierta a la comunidad; posteriormente como cierre de la Semana se realizar&aacute; una jornada de conferencias destinadas a docentes del nivel primario, medio y superior con puntaje docente para posibilitar asistencia, cuyo objetivo es generar promotores de acciones educativas referidas a la protecci&oacute;n de &ldquo;El algarrobo&rdquo;, al finalizar la jornada se realizar&aacute; un an&aacute;lisis de la semana y expondr&aacute;n conclusiones para generar acciones posteriores.</p>\r\n',1,'2019-10-02','2019-10-02',1,1,'2019-10-24','UNdeC','00:00:00','00:00:00',1),(10,'Jornada “DERECHOS DE LOS USUARIOS Y CONSUMIDORES EN LA LEGISLACIÓN ARGENTINA”','<p>El pr&oacute;ximo jueves&nbsp;3 de Octubre&nbsp;de 2019, de 10 a 12 hs en el Campus Los Sarmientos, se realizar&aacute; la primera Jornada&nbsp;&ldquo;Derechos de los usuarios y consumidores en la legislaci&oacute;n&nbsp;argentina&rdquo;</p>\r\n\r\n<p>A cargo del abogado Dario Di Noto, creador&nbsp;de&nbsp;<strong>Data Docta</strong> y&nbsp;&nbsp;Coordinador de la Comisi&oacute;n de J&oacute;venes Abogados del Colegio de Abogados de C&oacute;rdoba.&nbsp;Junto al abogado Exequiel Vergara Director del proyecto de extensi&oacute;n&nbsp;<strong><strong>&ldquo;</strong></strong>DERECHOS DE LOS USUARIOS Y CONSUMIDORES EN LA LEGISLACI&Oacute;N ARGENTINA&rdquo;&nbsp;y&nbsp;docente de la asignatura Sociolog&iacute;a.</p>\r\n\r\n<p><strong>Las Inscripciones son gratuitas y destinadas a toda la comunidad interesada en la tem&aacute;tica.</strong></p>\r\n\r\n<ul>\r\n	<li>M&aacute;s informaci&oacute;n:&nbsp;<a href=\"mailto:escueladederecho@undec.edu.ar\">escueladederecho@undec.edu.ar</a>&nbsp;o al tel&eacute;fono&nbsp;<a href=\"callto:03825-427200\" target=\"_blank\">03825-427200</a>&nbsp;interno 2142</li>\r\n	<li>Organizan:&nbsp;Carrera de Abogac&iacute;a y la Secretar&iacute;a de Gesti&oacute;n Comunitaria.</li>\r\n</ul>\r\n',1,'2019-10-02','2019-10-02',1,1,'2019-11-27','Campus Los Sarmientos - Auditorio','09:00:00','15:00:00',1),(11,'Publicacion de articulo actualizada','<p>kjhkj</p>\r\n',1,'2019-10-02','2019-10-02',1,1,'0000-00-00','UNdeC','00:00:00','00:00:00',2);

/*Table structure for table `regimen` */

DROP TABLE IF EXISTS `regimen`;

CREATE TABLE `regimen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `regimen` */

insert  into `regimen`(`id`,`nombre`) values (1,'Anual'),(2,'Cuatrimestre 1'),(3,'Cuatrimestre 2');

/*Table structure for table `tipo_proyecto` */

DROP TABLE IF EXISTS `tipo_proyecto`;

CREATE TABLE `tipo_proyecto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tipo_proyecto` */

/*Table structure for table `tipo_publicacion` */

DROP TABLE IF EXISTS `tipo_publicacion`;

CREATE TABLE `tipo_publicacion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tipo_publicacion` */

insert  into `tipo_publicacion`(`id`,`nombre`) values (1,'Eventos'),(2,'Artículos');

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

/*Table structure for table `tutor` */

DROP TABLE IF EXISTS `tutor`;

CREATE TABLE `tutor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_docente` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_tutor_docente` (`id_docente`),
  CONSTRAINT `FK_tutor_docente` FOREIGN KEY (`id_docente`) REFERENCES `docentes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tutor` */

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

/*Data for the table `users` */

insert  into `users`(`id`,`ip_address`,`username`,`password`,`salt`,`email`,`activation_code`,`forgotten_password_code`,`forgotten_password_time`,`remember_code`,`created_on`,`last_login`,`active`,`first_name`,`last_name`,`company`,`phone`) values (1,'127.0.0.1','admin','$2y$08$kOKjC2ZI.r9ZDap5y6VXzuOLTW01TWZI/mE5yD1VNWCEWaYidlBzq','','admin@admin.com',NULL,NULL,NULL,NULL,1268889823,1570012362,1,'Sergio','Arevalo','ADMIN','0'),(2,'127.0.0.1','user','$2y$08$4t0JshOQrSJwbqJbTLRineDCBESSAwNTkL4kRz9KzAq0RoyPXHF0i',NULL,'user@user.com',NULL,'dbh2E39uTZ5Ud9Tb.wO9ee37b9e7bb6f9ed71b6b',1522911545,NULL,1521634623,1560525321,1,'user','user','UNdeC','');

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

/*Data for the table `users_groups` */

insert  into `users_groups`(`id`,`user_id`,`group_id`) values (12,1,1),(13,1,2),(18,2,2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
