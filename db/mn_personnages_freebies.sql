-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mn_personnages
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.21-MariaDB

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
-- Table structure for table `freebies`
--

DROP TABLE IF EXISTS `freebies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `freebies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_personnage` int(11) NOT NULL,
  `freebies` int(11) DEFAULT NULL,
  `raison` varchar(45) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `freebies`
--

LOCK TABLES `freebies` WRITE;
/*!40000 ALTER TABLE `freebies` DISABLE KEYS */;
INSERT INTO `freebies` VALUES (2,3,999,'ddd','2017-10-23 00:00:00'),(6,3,-6,'Achat Hélène Gagné','2017-10-24 19:06:45'),(7,3,-5,'Achat Yvonne Saint-Onge','2017-10-24 19:06:46'),(8,3,-5,'Achat Benjamin Robert','2017-10-24 19:06:48'),(14,3,-2,'Déverouiller une action du 2017-11-08','2017-11-09 17:36:36'),(15,3,0,'Achat ','2017-11-09 18:49:37'),(16,3,0,'Achat ','2017-11-09 18:50:54'),(17,3,0,'Achat ','2017-11-09 18:51:07'),(18,3,-3,'Achat Frank McKenna','2017-11-09 19:24:35'),(19,3,-3,'Achat Frank McKenna','2017-11-09 19:27:37'),(20,3,-3,'Achat Frank McKenna','2017-11-09 19:29:28'),(21,3,-3,'Achat Frank McKenna','2017-11-09 19:34:42'),(22,3,-3,'Achat Frank McKenna','2017-11-09 19:35:04'),(23,3,-3,'Achat Frank McKenna','2017-11-09 19:35:27'),(24,3,-3,'Achat Frank McKenna','2017-11-09 19:35:54'),(25,3,-3,'Achat Frank McKenna','2017-11-09 19:36:12'),(26,3,-3,'Achat Frank McKenna','2017-11-09 19:36:36'),(27,3,-3,'Achat Frank McKenna','2017-11-09 19:37:19'),(28,3,-3,'Achat Frank McKenna','2017-11-09 19:38:24'),(29,3,-3,'Achat Frank McKenna','2017-11-09 19:38:37'),(30,3,-3,'Achat Frank McKenna','2017-11-09 19:39:21'),(31,3,-3,'Achat Frank McKenna','2017-11-09 19:40:09'),(32,3,-3,'Achat Frank McKenna','2017-11-09 19:42:11'),(33,3,-3,'Achat Frank McKenna','2017-11-09 19:42:54'),(34,3,-3,'Achat Frank McKenna','2017-11-09 19:43:14'),(35,3,-3,'Achat Frank McKenna','2017-11-09 19:43:38'),(36,3,-3,'Achat Frank McKenna','2017-11-09 19:44:08'),(37,3,-3,'Achat Frank McKenna','2017-11-09 19:44:35'),(38,3,-3,'Achat Frank McKenna','2017-11-09 19:45:00'),(39,3,-3,'Achat Frank McKenna','2017-11-09 19:45:03'),(40,3,-3,'Achat Frank McKenna','2017-11-09 19:45:34'),(41,3,-3,'Achat Frank McKenna','2017-11-09 19:45:39'),(42,3,-3,'Achat Frank McKenna','2017-11-09 19:46:17');
/*!40000 ALTER TABLE `freebies` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-09 16:54:00
