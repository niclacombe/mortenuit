-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: mysql.terres-de-belenos.com    Database: db_group
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
-- Table structure for table `responsables_groupe`
--

DROP TABLE IF EXISTS `responsables_groupe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `responsables_groupe` (
  `IdGroupe` int(11) NOT NULL,
  `IdResponsable` int(11) NOT NULL,
  PRIMARY KEY (`IdGroupe`,`IdResponsable`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `responsables_groupe`
--

LOCK TABLES `responsables_groupe` WRITE;
/*!40000 ALTER TABLE `responsables_groupe` DISABLE KEYS */;
INSERT INTO `responsables_groupe` VALUES (1,6),(1,15),(1,160),(2,25),(4,8),(4,9),(4,24),(4,476),(5,12),(5,19),(6,54),(6,56),(6,64),(6,117),(6,173),(6,175),(6,206),(6,219),(6,231),(6,241),(6,268),(6,329),(6,446),(6,506),(7,38),(8,85),(8,93),(8,204),(9,123),(10,109),(10,203),(11,96),(12,169),(13,137),(14,158),(15,217),(16,72),(17,90),(17,258),(18,267),(19,233),(19,278),(20,289),(21,138),(22,69),(23,39),(23,478),(24,200),(25,75),(26,305),(26,314),(26,395),(27,86),(27,132),(28,380),(29,352),(30,108),(30,382),(31,369),(32,503),(33,383),(34,74),(35,33),(35,162),(35,406),(35,502),(35,505),(36,107),(36,483),(36,484),(37,5),(38,458),(39,547),(40,102),(41,361),(42,696),(43,634),(44,1008),(45,439),(46,30),(46,70),(47,225),(47,409),(47,1265),(47,1266),(48,194),(49,622),(49,789),(50,422),(50,425),(51,795),(52,1123),(53,1280);
/*!40000 ALTER TABLE `responsables_groupe` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-26 15:44:20
