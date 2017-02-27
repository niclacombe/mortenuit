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
-- Table structure for table `competences_choix`
--

DROP TABLE IF EXISTS `competences_choix`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `competences_choix` (
  `NoSeq` int(8) NOT NULL AUTO_INCREMENT,
  `CodeChoix` varchar(8) NOT NULL,
  `CodeCompReg` varchar(7) DEFAULT NULL,
  `CodeCompSpec` varchar(7) DEFAULT NULL,
  PRIMARY KEY (`NoSeq`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competences_choix`
--

LOCK TABLES `competences_choix` WRITE;
/*!40000 ALTER TABLE `competences_choix` DISABLE KEYS */;
INSERT INTO `competences_choix` VALUES (1,'ACOLYTE1','MALEDIC',NULL),(2,'ACOLYTE2',NULL,'POUVDEM'),(4,'CLERC1','RETAB',NULL),(5,'CLERC2',NULL,'POUVDIV'),(6,'CULTIST1','MALEDIC',NULL),(7,'CULTIST2',NULL,'POUVDEM'),(9,'GUERR1','DETBOUC',NULL),(10,'BERSERK','DETBOUC',NULL),(11,'GFORGE','FORGE1',NULL),(12,'INGENIR','INGENI1',NULL),(13,'HMETIER1',NULL,'HM120XP'),(14,'ALCHIMIS','ARME8',NULL),(15,'HMFORGE','COMMET1',NULL),(16,'GUERISS','PRESOIN',NULL),(17,'AUBERGI','ALCOLB1',NULL),(18,'NOBLE','CONTACT',NULL),(22,'PRETRE1','RETAB',NULL),(23,'PRETRE2',NULL,'POUVDIV'),(26,'ALCHIMIS','ALCHIM1',NULL),(27,'ALCHIMIS','RECETA1',NULL),(28,'ALCHIMIS','RECETA1',NULL),(29,'ALCHIMIS','RECETA1',NULL),(30,'ALCHIMIS','RECETA1',NULL),(32,'HMFORGE','FORGE1',NULL),(33,'HMFORGE','INGENI1',NULL),(34,'HMFORGE','RICHESS',NULL),(35,'ALCHIMIS',NULL,'ELALC4'),(36,'GUERISS','GUERISO',NULL),(37,'GUERISS','HERBO1',NULL),(38,'GUERISS','RECETH1',NULL),(39,'GUERISS','RECETH1',NULL),(40,'GUERISS','RECETH1',NULL),(41,'AUBERGI','ALCOLV1',NULL),(42,'AUBERGI','ALCOLS1',NULL),(43,'AUBERGI','RICHESS',NULL),(44,'AUBERGI','RICHESS',NULL),(45,'NOBLE','NOTAIRE',NULL),(46,'BERSERK','ASSOMER',NULL),(47,'BERSERK','RBERZK1',NULL),(48,'GUERR1','ASSOMER',NULL),(49,'GUERR1','ARMURF1',NULL),(50,'GFORGE','ARMURF1',NULL),(51,'INGENIR','ARMURF1',NULL),(52,'NOBLE','RICHESS',NULL),(53,'NOBLE','RICHESS',NULL),(54,'AUBERGI','RICHESS',NULL),(55,'NOBLE','RICHESS',NULL);
/*!40000 ALTER TABLE `competences_choix` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-26 15:44:05
