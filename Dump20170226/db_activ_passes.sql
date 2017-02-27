-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: mysql.terres-de-belenos.com    Database: db_activ
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
-- Table structure for table `passes`
--

DROP TABLE IF EXISTS `passes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passes` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(50) NOT NULL,
  `Description` mediumtext NOT NULL,
  `Prix` decimal(7,2) DEFAULT NULL,
  `DateDebut` datetime NOT NULL,
  `DateFin` datetime NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Nom_UNIQUE` (`Nom`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passes`
--

LOCK TABLES `passes` WRITE;
/*!40000 ALTER TABLE `passes` DISABLE KEYS */;
INSERT INTO `passes` VALUES (1,'Passe de saison 2016','Donne accès aux activités principales en plus du Gala pour 2016. Donne aussi 50$ à allouer à un projet de construction.',180.00,'2016-05-01 00:00:00','2017-03-01 00:00:00'),(2,'Passe de banquets 2016','Donne accès aux trois banquets pré-saison en plus de 20$ sur un projet de construction de votre choix.',95.00,'2016-03-01 00:00:00','2016-12-31 00:00:00'),(3,'Passe Con-Tract 2016','Donne accès aux trois Con-Tracts de l\'année 2016. Donne également 20$ à allouer à un projet de construction.',50.00,'2016-03-01 00:00:00','2016-12-31 00:00:00'),(4,'Passe de saison 2017','Donne accès aux activités principales pour 2017. Donne aussi 50$ à allouer à un projet de construction.',180.00,'2017-05-01 00:00:00','2018-03-01 00:00:00'),(5,'Passe de banquets 2017','Donne accès aux trois banquets pré-saison en plus de 20$ sur un projet de construction de votre choix.',90.00,'2017-02-01 00:00:00','2017-12-31 00:00:00'),(6,'Passe Con-Tract 2017','Donne accès aux deux Con-Tracts et au Gladiamort de l\'année 2017. Donne également 20$ à allouer à un projet de construction.',50.00,'2017-02-01 00:00:00','2017-12-31 00:00:00'),(7,'Passeport GN','Paie l\'entrée pour 5 activités.',200.00,'2017-05-01 00:00:00','2999-12-31 00:00:00');
/*!40000 ALTER TABLE `passes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-26 15:43:42
