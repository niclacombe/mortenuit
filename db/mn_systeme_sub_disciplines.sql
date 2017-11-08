-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mn_systeme
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
-- Table structure for table `sub_disciplines`
--

DROP TABLE IF EXISTS `sub_disciplines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_disciplines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_parent` int(5) NOT NULL,
  `niveau` int(11) NOT NULL DEFAULT '1',
  `name` varchar(50) NOT NULL,
  `description` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_disciplines`
--

LOCK TABLES `sub_disciplines` WRITE;
/*!40000 ALTER TABLE `sub_disciplines` DISABLE KEYS */;
INSERT INTO `sub_disciplines` VALUES (1,5,1,'Domination 1','Description Domination 1'),(2,5,2,'Domination 2','Description Domination 2'),(3,5,3,'Domination 3','Description Domination 3'),(4,5,4,'Domination 4','Description Domination 4'),(5,5,5,'Domination 5','Description Domination 5'),(6,14,1,'Présence 1','Description Présence 1'),(7,14,2,'Présence 2','Description Présence 2'),(8,14,3,'Présence 3','Description Présence 3'),(9,14,4,'Présence 4','Description Présence 4'),(10,14,5,'Présence 5','Description Présence 5'),(11,13,1,'Potence 1','Description Potence 1'),(12,13,2,'Potence 2','Description Potence 2'),(13,13,3,'Potence 3','Description Potence 3'),(14,13,4,'Potence 4','Description Potence 4'),(15,13,5,'Potence 5','Description Potence 5'),(16,2,1,'Auspex 1','Description Auspex 1'),(17,2,2,'Auspex 2','Description Auspex 2'),(18,2,3,'Auspex 3','Description Auspex 3'),(19,2,4,'Auspex 4','Description Auspex 4'),(20,2,5,'Auspex 5','Description Auspex 5'),(21,3,1,'Célérité 1','Description Célérité 1'),(22,3,2,'Célérité 2','Description Célérité 2'),(23,3,3,'Célérité 3','Description Célérité 3'),(24,3,4,'Célérité 4','Description Célérité 4'),(25,3,5,'Célérité 5','Description Célérité 5'),(26,1,1,'Animalisme 1','Description Animalisme 1'),(27,1,2,'Animalisme 2','Description Animalisme 2'),(28,1,3,'Animalisme 3','Description Animalisme 3'),(29,1,4,'Animalisme 4','Description Animalisme 4'),(30,1,5,'Animalisme 5','Description Animalisme 5'),(31,6,1,'Fortitude 1','Description Fortitude 1'),(32,6,2,'Fortitude 2','Description Fortitude 2'),(33,6,3,'Fortitude 3','Description Fortitude 3'),(34,6,4,'Fortitude 4','Description Fortitude 4'),(35,6,5,'Fortitude 5','Description Fortitude 5'),(36,11,1,'Obfuscate 1','Description Obfuscate 1'),(37,11,2,'Obfuscate 2','Description Obfuscate 2'),(38,11,3,'Obfuscate 3','Description Obfuscate 3'),(39,11,4,'Obfuscate 4','Description Obfuscate 4'),(40,11,5,'Obfuscate 5','Description Obfuscate 5'),(41,15,1,'Protean 1','Description Protean 1'),(42,15,2,'Protean 2','Description Protean 2'),(43,15,3,'Protean 3','Description Protean 3'),(44,15,4,'Protean 4','Description Protean 4'),(45,15,5,'Protean 5','Description Protean 5'),(46,12,1,'Obtenebration 1','Description Obtenebration 1'),(47,12,2,'Obtenebration 2','Description Obtenebration 2'),(48,12,3,'Obtenebration 3','Description Obtenebration 3'),(49,12,4,'Obtenebration 4','Description Obtenebration 4'),(50,12,5,'Obtenebration 5','Description Obtenebration 5'),(51,29,1,'Thaumaturgie 1','Description Thaumaturgie 1'),(52,29,2,'Thaumaturgie 2','Description Thaumaturgie 2'),(53,29,3,'Thaumaturgie 3','Description Thaumaturgie 3'),(54,29,4,'Thaumaturgie 4','Description Thaumaturgie 4'),(55,29,5,'Thaumaturgie 5','Description Thaumaturgie 5');
/*!40000 ALTER TABLE `sub_disciplines` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-08 16:51:19
