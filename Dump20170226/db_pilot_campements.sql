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
-- Table structure for table `campements`
--

DROP TABLE IF EXISTS `campements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campements` (
  `Code` varchar(7) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Type` varchar(7) NOT NULL,
  `Description` mediumtext,
  `Capacite` int(3) DEFAULT NULL,
  `Responsables` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Code`),
  UNIQUE KEY `Nom_UNIQUE` (`Nom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campements`
--

LOCK TABLES `campements` WRITE;
/*!40000 ALTER TABLE `campements` DISABLE KEYS */;
INSERT INTO `campements` VALUES ('ARENE','L\'Arène','ECONOMI',NULL,43,'Chuck Marcotte (Peste de Lorcraft), Vanessa Garceau (Meute de Zuscht et François Béland (Ézork)'),('BRUMES','La Porte des Brumes','ECONOMI','Village marchant très ouvert. Souhaitent profiter de la situation avantageuse de la Porte des Brumes, soit d\'être le dernier village avant Hyden.',46,'Dakie et Marc Lavigeur'),('DANAE','Danaë','NORMAL','Manoir Larcohen et refuge des Insoumis.',44,'Charles du Tremblay'),('DOUVES','Les Douves','NORMAL',NULL,10,'Alexandre Guay'),('FORTG','Le Fort G','NORMAL','Gustavs, priants de Mak’Udar, cherche à se construire un empire. Animosité envers Gaea. Prêt à rendre coup pour coup aux démonistes, mais n’iront pas les dénicher hors de leurs terres. Souhaitent réglementer l’usage de la magie.',37,'Miakim L’Heureux'),('HACHE','Site de la Hache','TENTES','Site sans bâtiment possédant un espace pour le feu et où il est possible de monter un campement de tentes.',NULL,NULL),('HYDEN','Village d\'Hyden','ECONOMI','Plusieurs groupes disparates aux buts divergeant qui respectaient jusqu’à présent une grande mixité religieuse, un code de loi et les taxes et impôts imposés par Dagoth. ',187,'Multiples'),('LIBOURG','Librebourg','FORT','Guilde de banquiers. Un petit village de partisans de Dagoth respectant sa vision voulant que la valeur de chacun soit directement lié à sa capacité à tailler sa place et à mériter le respect de ses pairs et cela sans égard à sa race ou ses croyances.',47,'Renaud Hould et Michel Caisse'),('LUNEB','Site de la Lune Bleue','TENTES','Site sans bâtiment possédant un espace pour le feu et où il est possible de monter un campement de tentes.',NULL,NULL),('LYRE','Domaine de la Lyre','NORMAL','Groupe mercenaire',12,'Éric Tremblay'),('MAILLON','Forteresse du Maillon','FORT','Troupe d\'Eseldorf fraîchement arrivée à Hyden.',20,'Charles Béliveau'),('MILUDIN','Miludin','NORMAL','Repaire du Tallion, un groupe militaire neutre.',28,'Mathieu Brouillette'),('ORION','Forteresse d\'Orion','FORT','Une influente famille de la noblesse belenoise afin de défendre les intérêts de ‎de ladite famille dans la région hydenoise. ',36,'Patrick Laliberté'),('PERORIO','Périphérie d\'Orion','TENTES','Site sans bâtiment possédant un espace pour le feu et où il est possible de monter un campement de tentes.',NULL,NULL),('PHENIX','Auberge du Phénix','NORMAL','Groupe dédié aux esprits et au commerce.',10,'Antony Colpron'),('RAKASHA','Site Rakashan','TENTES','Site sans bâtiment possédant un espace pour le feu et où il est possible de monter un campement de tentes.',NULL,NULL),('RENOR','Campement Renor Mantis','NORMAL','Elfes noires aux buts secrets.',8,'Dany St-Pierre'),('SOUCHE','La Souche','FORT',NULL,26,'Jessy Beausoleil'),('SYPTO','Forteresse de Syptosis','FORT',NULL,71,'Martin \"Pc\"'),('TEMPLEG','Temple de Golgoth','NORMAL','Militaires d’Ayka.',12,'Gabriel Côté-Carrier');
/*!40000 ALTER TABLE `campements` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-26 15:44:00
