CREATE DATABASE  IF NOT EXISTS `disenospaginasweb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `disenospaginasweb`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: disenospaginasweb
-- ------------------------------------------------------
-- Server version	5.6.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `boletines`
--

DROP TABLE IF EXISTS `boletines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boletines` (
  `idboletin` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `subtitulo` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `contenido` text COLLATE utf8_spanish_ci NOT NULL,
  `enlace` varchar(250) COLLATE utf8_spanish_ci DEFAULT 'Null',
  `tituloenlace` varchar(250) COLLATE utf8_spanish_ci DEFAULT 'Null',
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`idboletin`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boletines`
--

LOCK TABLES `boletines` WRITE;
/*!40000 ALTER TABLE `boletines` DISABLE KEYS */;
INSERT INTO `boletines` VALUES (1,'Primer boletín','boletas borra bien','Novelas','','','2015-06-02 13:33:45',NULL),(4,'joder que bien','aqui estamos','aun se algo de esto','','','2015-06-03 09:01:14','2015-06-03 09:01:14'),(5,'Primer boletin','Diseño de páginas web','Aqui&nbsp;<b>un</b>&nbsp;<u>texto</u> largo','http://www.hola.es','','2015-06-03 09:04:03','2015-06-03 09:03:24');
/*!40000 ALTER TABLE `boletines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boletines_envios`
--

DROP TABLE IF EXISTS `boletines_envios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boletines_envios` (
  `idenvio` int(11) NOT NULL AUTO_INCREMENT,
  `fechaenvio` datetime NOT NULL,
  `idboletin` int(11) NOT NULL,
  `estado` smallint(6) NOT NULL DEFAULT '0',
  `listas` text COLLATE utf8_spanish_ci,
  `n_enviar` int(11) DEFAULT '0',
  PRIMARY KEY (`idenvio`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boletines_envios`
--

LOCK TABLES `boletines_envios` WRITE;
/*!40000 ALTER TABLE `boletines_envios` DISABLE KEYS */;
INSERT INTO `boletines_envios` VALUES (138,'2015-06-03 10:26:20',1,1,'(4)',2);
/*!40000 ALTER TABLE `boletines_envios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boletines_enviosok`
--

DROP TABLE IF EXISTS `boletines_enviosok`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boletines_enviosok` (
  `idenvio` int(11) NOT NULL,
  `idcontacto` int(11) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `resultado` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`idenvio`,`idcontacto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boletines_enviosok`
--

LOCK TABLES `boletines_enviosok` WRITE;
/*!40000 ALTER TABLE `boletines_enviosok` DISABLE KEYS */;
INSERT INTO `boletines_enviosok` VALUES (138,51,'2015-06-03 00:00:00',1),(138,52,'2015-06-03 10:54:30',1);
/*!40000 ALTER TABLE `boletines_enviosok` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactos`
--

DROP TABLE IF EXISTS `contactos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contactos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `denominacion` varchar(100) NOT NULL,
  `enviarboletin` smallint(1) DEFAULT '1',
  `idlista` smallint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactos`
--

LOCK TABLES `contactos` WRITE;
/*!40000 ALTER TABLE `contactos` DISABLE KEYS */;
INSERT INTO `contactos` VALUES (38,'pepe@as.los','2015-05-28 14:09:12','2015-05-28 14:09:12','pedro',1,1),(48,'jose@telefonica.es','2015-06-01 17:39:50','2015-06-01 17:39:50','jose Torres',1,1),(49,'RR1965@hotmail.com','2015-06-01 17:40:20','2015-06-01 17:40:20','Ramón Rodríguez',1,1),(50,'Pedro19545@hotmail.com','2015-06-01 17:40:42','2015-06-01 17:40:42','Pedro Manriquez',1,1),(51,'juan@redesinformaticas.net',NULL,NULL,'Juan Prueba',1,4),(52,'tecnico@redesinformaticas.net',NULL,NULL,'Técnico Redes',1,4),(53,'jjoojojo@hot.es','2015-06-09 13:38:43','2015-06-09 13:38:43','juanjojojooj',1,1),(54,'info@quesabroson.com','2015-06-09 13:43:25','2015-06-09 13:43:25','quesabroson',1,1),(55,'info@suscr.com','2015-06-09 13:45:15','2015-06-09 13:45:15','prueba de suscribirse',1,1),(56,'juan@redesinformaticas.net','2015-06-10 11:43:51','2015-06-10 11:43:51','juan carlos torrealba',1,1),(57,'juan@redesinformaticas.net','2015-06-10 11:46:36','2015-06-10 11:46:36','juan carlos torrealba',1,1),(58,'jose@pre.es','2015-06-10 11:47:12','2015-06-10 11:47:12','prueba ',1,1);
/*!40000 ALTER TABLE `contactos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formulariocontactos`
--

DROP TABLE IF EXISTS `formulariocontactos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formulariocontactos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `apellidos` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefono` varchar(9) DEFAULT NULL,
  `asunto` text NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formulariocontactos`
--

LOCK TABLES `formulariocontactos` WRITE;
/*!40000 ALTER TABLE `formulariocontactos` DISABLE KEYS */;
INSERT INTO `formulariocontactos` VALUES (50,'Juan Carlos ',' Torrealba Peraza','juan@redesinformaticas.net','922822244','Prueba de formulario de contacto','2015-05-08 13:26:45','2015-05-08 13:26:45'),(52,'Maria Joséfina','Tovar delgado','mariaj@torvares.es','96665444','Prueba de contacto','2015-05-18 14:03:00','2015-05-18 14:03:00'),(54,'josé luis','Validado checqueo','jos@val.es','','valida el campo de aceptar','2015-05-19 14:19:13','2015-05-19 14:19:13'),(57,'Raul','Mendoza','rmendoza@hotmail.com','922484884','nada de nada','2015-06-02 08:16:28','2015-06-02 08:16:28'),(58,'Juan prueba','locura','lodura@punto.com','92224655','Aqui un breve comentario de este campo.','2015-06-08 11:58:38','2015-06-08 11:58:38'),(59,'sdf sadas','sda ssad','dsfds@ho.es','','adsasda dsadas','2015-06-09 13:06:16','2015-06-09 13:06:16'),(60,'sdf sadas','sda ssad','dsfds@ho.es','','adsasda dsadas','2015-06-09 13:11:36','2015-06-09 13:11:36'),(61,'sdf sadas','sda ssad','dsfds@ho.es','','adsasda dsadas','2015-06-09 13:11:51','2015-06-09 13:11:51'),(62,'prueba de contacto','prueba de contacto','prueba@cont.com','9999999','aqui una prueba de contacto','2015-06-09 13:46:01','2015-06-09 13:46:01');
/*!40000 ALTER TABLE `formulariocontactos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listas`
--

DROP TABLE IF EXISTS `listas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `listas` (
  `idlista` int(11) NOT NULL AUTO_INCREMENT,
  `lista` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`idlista`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listas`
--

LOCK TABLES `listas` WRITE;
/*!40000 ALTER TABLE `listas` DISABLE KEYS */;
INSERT INTO `listas` VALUES (1,'Lista Oficial','2015-06-01 07:59:18','2015-06-02 08:41:40'),(4,'Lista de prueba','2015-06-02 08:59:18','2015-06-02 09:04:45');
/*!40000 ALTER TABLE `listas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `idusuario` int(11) NOT NULL AUTO_INCREMENT,
  `dni` varchar(15) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `apellidos` varchar(180) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `usuario` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `remember_token` varchar(250) DEFAULT NULL,
  `tipo` smallint(6) NOT NULL DEFAULT '2',
  `activo` smallint(6) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (2,'7433319','Juan Carlos','Torrealba Peraza','juan@redesinformaticas.net','JCTP','\'$2y$10$92PR.sYyfjTgcVkZHlqTQ.C7alWD.2I8Smyf61BRFO4TVFwOM5O82\'','\'nZ2HdsSiwrMNVvzYmHIYEJpyKZShTHkSPutNhYkfueXSeiwZ8BRJNLqwPnUC\'',0,1,NULL,NULL);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-07-04  8:54:45
