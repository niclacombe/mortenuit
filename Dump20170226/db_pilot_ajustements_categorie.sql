-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: mysql.terres-de-belenos.com    Database: db_pilot
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
-- Table structure for table `ajustements_categorie`
--

DROP TABLE IF EXISTS `ajustements_categorie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ajustements_categorie` (
  `CodeClasse` varchar(7) NOT NULL,
  `Categorie` varchar(50) NOT NULL,
  `Multiplicateur` decimal(3,2) NOT NULL,
  PRIMARY KEY (`CodeClasse`,`Categorie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ajustements_categorie`
--

LOCK TABLES `ajustements_categorie` WRITE;
/*!40000 ALTER TABLE `ajustements_categorie` DISABLE KEYS */;
INSERT INTO `ajustements_categorie` VALUES ('ACOLYTE','G',1.00),('ACOLYTE','H',1.00),('ACOLYTE','M',1.00),('ACOLYTE','P',0.75),('ACOLYTE','V',1.25),('BARDE','G',1.00),('BARDE','H',1.00),('BARDE','M',1.00),('BARDE','P',1.25),('BARDE','V',0.75),('CLERC','G',1.00),('CLERC','H',1.00),('CLERC','M',1.00),('CLERC','P',0.75),('CLERC','V',1.25),('CULTIST','G',1.00),('CULTIST','H',1.00),('CULTIST','M',1.00),('CULTIST','P',0.75),('CULTIST','V',1.25),('ECLAIR','G',0.75),('ECLAIR','H',1.00),('ECLAIR','M',1.25),('ECLAIR','P',1.00),('ECLAIR','V',1.00),('GUERR','G',0.75),('GUERR','H',1.00),('GUERR','M',1.25),('GUERR','P',1.00),('GUERR','V',1.00),('HMETIER','G',1.00),('HMETIER','H',0.75),('HMETIER','M',1.25),('HMETIER','P',1.25),('HMETIER','V',1.00),('MAGE','G',1.25),('MAGE','H',1.00),('MAGE','M',0.75),('MAGE','P',1.00),('MAGE','V',1.00),('MOINE','G',1.00),('MOINE','H',1.00),('MOINE','M',1.00),('MOINE','P',0.75),('MOINE','V',1.25),('PRETRE','G',1.00),('PRETRE','H',1.00),('PRETRE','M',1.00),('PRETRE','P',0.75),('PRETRE','V',1.25),('SHAMAN','G',1.00),('SHAMAN','H',1.00),('SHAMAN','M',1.00),('SHAMAN','P',0.75),('SHAMAN','V',1.25),('VOLEUR','G',1.00),('VOLEUR','H',1.00),('VOLEUR','M',1.00),('VOLEUR','P',1.25),('VOLEUR','V',0.75);
/*!40000 ALTER TABLE `ajustements_categorie` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-26 15:44:09
