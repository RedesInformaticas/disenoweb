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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formulariocontactos`
--

LOCK TABLES `formulariocontactos` WRITE;
/*!40000 ALTER TABLE `formulariocontactos` DISABLE KEYS */;
INSERT INTO `formulariocontactos` VALUES (50,'Juan Carlos ',' Torrealba Peraza','juan@redesinformaticas.net','922822244','Prueba de formulario de contacto','2015-05-08 13:26:45','2015-05-08 13:26:45'),(51,'Juan Carlos ',' Torrealba Peraza','juan@redesinformaticas.net','922822244','Prueba de formulario de contacto','2015-05-08 13:29:20','2015-05-08 13:29:20'),(52,'Maria Joséfina','Tovar delgado','mariaj@torvares.es','96665444','Prueba de contacto','2015-05-18 14:03:00','2015-05-18 14:03:00');
/*!40000 ALTER TABLE `formulariocontactos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcriptores`
--

DROP TABLE IF EXISTS `subcriptores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subcriptores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `denominacion` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcriptores`
--

LOCK TABLES `subcriptores` WRITE;
/*!40000 ALTER TABLE `subcriptores` DISABLE KEYS */;
INSERT INTO `subcriptores` VALUES (1,'lalo@aqui.es','2015-05-14 13:45:24','2015-05-14 13:45:24','Lalo'),(5,'mama21222@hotmail.com','2015-05-14 13:56:05','2015-05-14 13:56:05','yola'),(6,'jose@espa.es','2015-05-14 14:03:23','2015-05-14 14:03:23','jose'),(7,'juan@hotmail.com','2015-05-18 13:10:56','2015-05-18 13:10:56','Juan torres'),(8,'juan@hotmail.com','2015-05-18 13:12:00','2015-05-18 13:12:00','Juan torres'),(9,'pedro@per.es','2015-05-18 13:14:04','2015-05-18 13:14:04','pedro perez'),(14,'maria@esrror.es','2015-05-18 13:24:05','2015-05-18 13:24:05','maria '),(15,'maria@esrror.es','2015-05-18 13:26:49','2015-05-18 13:26:49','maria '),(16,'maria@esrror.es','2015-05-18 13:32:53','2015-05-18 13:32:53','maria '),(17,'maria@esrror.es','2015-05-18 13:34:45','2015-05-18 13:34:45','maria '),(18,'maria@esrror.es','2015-05-18 13:36:11','2015-05-18 13:36:11','maria '),(19,'maria@esrror.es','2015-05-18 13:36:34','2015-05-18 13:36:34','maria '),(20,'maria@esrror.es','2015-05-18 13:38:32','2015-05-18 13:38:32','maria '),(21,'maria@esrror.es','2015-05-18 13:40:15','2015-05-18 13:40:15','maria '),(22,'maria@esrror.es','2015-05-18 13:41:00','2015-05-18 13:41:00','maria '),(23,'maria@esrror.es','2015-05-18 13:41:28','2015-05-18 13:41:28','maria '),(24,'maria@esrror.es','2015-05-18 13:41:53','2015-05-18 13:41:53','maria '),(25,'maria@esrror.es','2015-05-18 13:42:18','2015-05-18 13:42:18','maria '),(26,'maria@esrror.es','2015-05-18 13:42:41','2015-05-18 13:42:41','maria '),(27,'maria@esrror.es','2015-05-18 13:43:01','2015-05-18 13:43:01','maria '),(28,'maria@esrror.es','2015-05-18 13:43:27','2015-05-18 13:43:27','maria '),(29,'maria@esrror.es','2015-05-18 13:44:31','2015-05-18 13:44:31','maria '),(30,'maria@esrror.es','2015-05-18 13:45:10','2015-05-18 13:45:10','maria '),(31,'maria@esrror.es','2015-05-18 13:46:10','2015-05-18 13:46:10','maria ');
/*!40000 ALTER TABLE `subcriptores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-05-18 21:18:04
