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
-- Table structure for table `personnages`
--

DROP TABLE IF EXISTS `personnages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personnages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `nom` varchar(45) NOT NULL,
  `concept` varchar(45) DEFAULT NULL,
  `clan` int(11) NOT NULL,
  `generation` int(11) NOT NULL DEFAULT '13',
  `physique` int(11) NOT NULL,
  `social` int(11) NOT NULL,
  `mental` int(11) NOT NULL,
  `nature` varchar(45) DEFAULT NULL,
  `attitude` varchar(45) DEFAULT NULL,
  `etat` varchar(10) NOT NULL DEFAULT 'EN ATTENTE',
  `reroll` int(11) DEFAULT '3',
  `is_deleted` int(11) NOT NULL DEFAULT '0',
  `is_verified` int(11) NOT NULL DEFAULT '0',
  `startDisc_1` int(2) DEFAULT NULL,
  `startDisc_2` int(2) DEFAULT NULL,
  `startDisc_3` int(2) DEFAULT NULL,
  `ressources` int(11) DEFAULT '0',
  `herd` int(11) DEFAULT '0',
  `background` text,
  `date_soumission` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personnages`
--

LOCK TABLES `personnages` WRITE;
/*!40000 ALTER TABLE `personnages` DISABLE KEYS */;
INSERT INTO `personnages` VALUES (3,5,'Christophe Bilodeau','Dieu',5,12,3,5,7,NULL,NULL,'INACT',27,0,1,1,2,14,2,2,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque id dictum magna. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Suspendisse accumsan risus a volutpat luctus. Aenean ac mauris sed leo ultrices pretium. Sed id orci bibendum, faucibus libero et, pulvinar erat. Vivamus non nibh et ex malesuada fermentum sit amet ut sem. Nam elementum dapibus tortor, nec sagittis nibh maximus a. Pellentesque habitant morbi tristique senectus et netus id.',NULL),(4,6,'Christophe 2','Dieu',5,12,3,5,7,NULL,NULL,'ACTIF',27,0,1,1,2,14,2,2,NULL,NULL),(5,5,'Test McTest','Test',1,13,7,5,3,'1','1','ATTENT',3,0,0,5,13,14,0,0,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque id dictum magna. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Suspendisse accumsan risus a volutpat luctus. Aenean ac mauris sed leo ultrices pretium. Sed id orci bibendum, faucibus libero et, pulvinar erat. Vivamus non nibh et ex malesuada fermentum sit amet ut sem. Nam elementum dapibus tortor, nec sagittis nibh maximus a. Pellentesque habitant morbi tristique senectus et netus id.','2017-01-01 00:00:00');
/*!40000 ALTER TABLE `personnages` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-09 16:53:59
