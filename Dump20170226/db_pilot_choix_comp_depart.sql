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
-- Table structure for table `choix_comp_depart`
--

DROP TABLE IF EXISTS `choix_comp_depart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `choix_comp_depart` (
  `Code` varchar(8) NOT NULL,
  `CodeClasse` varchar(7) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  PRIMARY KEY (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `choix_comp_depart`
--

LOCK TABLES `choix_comp_depart` WRITE;
/*!40000 ALTER TABLE `choix_comp_depart` DISABLE KEYS */;
INSERT INTO `choix_comp_depart` VALUES ('ACOLYTE1','ACOLYTE','Malédiction'),('ACOLYTE2','ACOLYTE','Pouvoir démoniaque'),('ALCHIMIS','HMETIER','Alchimiste'),('AUBERGI','HMETIER','Aubergiste'),('BARDE1','BARDE','Par défaut'),('BERSERK','GUERR','Berserker'),('CLERC1','CLERC','Rétablissement'),('CLERC2','CLERC','Pouvoir divin'),('CULTIST1','CULTIST','Malédiction'),('CULTIST2','CULTIST','Pouvoir démoniaque'),('ECLAIR1','ECLAIR','Par défaut'),('GFORGE','GUERR','Forgeron'),('GUERISS','HMETIER','Guérisseur'),('GUERR1','GUERR','De base'),('HMETIER1','HMETIER','De base'),('HMFORGE','HMETIER','Forgeron'),('INGENIR','GUERR','Ingénieur'),('MAGE1','MAGE','Par défaut'),('MOINE1','MOINE','Par défaut'),('NIVZERO1','NIVZERO','Par défaut'),('NOBLE','HMETIER','Noble'),('PRETRE1','PRETRE','Rétablissement'),('PRETRE2','PRETRE','Pouvoir divin'),('SHAMAN1','SHAMAN','Par défaut'),('VOLEUR1','VOLEUR','Par défaut');
/*!40000 ALTER TABLE `choix_comp_depart` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-26 15:44:07
