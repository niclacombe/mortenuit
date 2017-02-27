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
-- Table structure for table `religions_interdites`
--

DROP TABLE IF EXISTS `religions_interdites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `religions_interdites` (
  `NoSeq` int(8) NOT NULL AUTO_INCREMENT,
  `CodeRace` varchar(7) NOT NULL,
  `CodeReligion` varchar(7) DEFAULT NULL,
  `TypeReligion` varchar(7) DEFAULT NULL,
  PRIMARY KEY (`NoSeq`),
  UNIQUE KEY `RaceReligion_UNIQUE` (`CodeRace`,`CodeReligion`),
  UNIQUE KEY `RaceType_UNIQUE` (`CodeRace`,`TypeReligion`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `religions_interdites`
--

LOCK TABLES `religions_interdites` WRITE;
/*!40000 ALTER TABLE `religions_interdites` DISABLE KEYS */;
INSERT INTO `religions_interdites` VALUES (1,'GOBELIN',NULL,'DIEU'),(2,'CHAPPY',NULL,'DEMON'),(3,'ELFE',NULL,'DEMON'),(4,'NAIN',NULL,'DEMON'),(5,'ORC',NULL,'DIEU'),(6,'ELFNOIR',NULL,'DIEU'),(7,'HRAT',NULL,'DIEU'),(8,'NAIN','SYLVA',NULL),(9,'ELFE','MAKUDAR',NULL),(10,'CHAPPY','USIRE',NULL),(11,'CHAPPY','SYLVA',NULL),(12,'CHAPPY','MAKUDAR',NULL),(13,'CHAPPY','GAEA',NULL),(14,'CHAPPY','GALLEON',NULL),(15,'CHAPPY','AYKA',NULL),(16,'HRAT','AMAIRA',NULL),(17,'CHAPPY','TOUDIEU',NULL),(18,'CHAPPY',NULL,'AUTRE'),(19,'ELFNOIR',NULL,'AUTRE'),(20,'GOBELIN','LAVOIE',NULL),(21,'HRAT','LAVOIE',NULL),(22,'NAIN','LAVOIE',NULL),(23,'ORC','LAVOIE',NULL),(24,'CHAPPY','GOLGOSM',NULL),(25,'HLEZARD',NULL,'DEMON'),(26,'GNOLL',NULL,'DIEU');
/*!40000 ALTER TABLE `religions_interdites` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-26 15:44:13
