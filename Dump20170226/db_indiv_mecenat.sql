-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: mysql.terres-de-belenos.com    Database: db_indiv
-- ------------------------------------------------------
-- Server version	5.6.25-log

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
-- Table structure for table `mecenat`
--

DROP TABLE IF EXISTS `mecenat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mecenat` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdIndividu` int(11) NOT NULL,
  `Projet` varchar(100) DEFAULT NULL,
  `Montant` decimal(7,2) NOT NULL,
  `DateInscription` datetime NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mecenat`
--

LOCK TABLES `mecenat` WRITE;
/*!40000 ALTER TABLE `mecenat` DISABLE KEYS */;
INSERT INTO `mecenat` VALUES (1,6,'Danaë',200.00,'2016-01-01 00:00:00'),(2,6,'Passe de saison 2014',-100.00,'2016-01-01 00:00:00'),(3,25,'La Hanse',1200.00,'2016-01-01 00:00:00'),(5,109,'Renor Mantis',100.00,'2016-01-01 00:00:00'),(6,75,'Renor Mantis',100.00,'2016-01-01 00:00:00'),(7,96,'Renor Mantis',100.00,'2016-01-01 00:00:00'),(8,9,'Danaë',200.00,'2016-01-01 00:00:00'),(9,9,'Passe de saison 2014',-100.00,'2016-01-01 00:00:00'),(10,7,'Danaë',200.00,'2016-01-01 00:00:00'),(11,7,'Passe de saison 2014',-100.00,'2016-01-01 00:00:00'),(12,7,'Passe de saison 2015',-100.00,'2016-01-01 00:00:00'),(13,18,'Danaë',100.00,'2016-01-01 00:00:00'),(14,18,'Passe de saison 2015',-100.00,'2016-01-01 00:00:00'),(15,20,'Danaë',100.00,'2016-01-01 00:00:00'),(16,12,'Danaë',100.00,'2016-01-01 00:00:00'),(17,12,'Passe de saison 2015',-100.00,'2016-01-01 00:00:00'),(18,23,'Danaë',100.00,'2016-01-01 00:00:00'),(19,23,'Passe de saison 2015',-100.00,'2016-01-01 00:00:00'),(20,15,'Danaë',100.00,'2016-01-01 00:00:00'),(21,15,'Passe de saison 2015',-100.00,'2016-01-01 00:00:00'),(22,24,'Danaë',200.00,'2016-01-01 00:00:00'),(23,24,'Passe de saison 2014',-100.00,'2016-01-01 00:00:00'),(24,17,'Danaë',200.00,'2016-01-01 00:00:00'),(25,17,'Passe de saison 2014',-100.00,'2016-01-01 00:00:00'),(26,17,'Passe de saison 2015',-100.00,'2016-01-01 00:00:00'),(27,14,'Danaë',100.00,'2016-01-01 00:00:00'),(28,14,'Passe de saison 2015',-100.00,'2016-01-01 00:00:00'),(29,8,'Danaë',100.00,'2016-01-01 00:00:00'),(30,8,'Passe de saison 2015',-100.00,'2016-01-01 00:00:00'),(31,252,'Danaë',100.00,'2016-01-01 00:00:00'),(32,109,'Passe de saison 2016',-100.00,'2016-05-05 12:31:31'),(34,311,'Danaë',100.00,'2016-01-01 00:00:00'),(35,75,'Passe de saison 2016',-100.00,'2016-05-13 09:35:40');
/*!40000 ALTER TABLE `mecenat` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-26 15:43:47
