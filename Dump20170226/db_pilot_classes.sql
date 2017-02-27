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
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classes` (
  `Code` varchar(7) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Description` mediumtext,
  `PVDepart` int(2) NOT NULL,
  PRIMARY KEY (`Code`),
  UNIQUE KEY `Nom_UNIQUE` (`Nom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` VALUES ('ACOLYTE','Acolyte combattant','Un adepte du mal, l\'esprit insondable de l\'acolyte combattant recèle des prières incompréhensibles vouées à un démon aussi vil que macabre. Il est le croisement entre le cultiste et le guerrier et n\'a pas de pouvoirs magiques aussi puissants que le cultiste.',6),('BARDE','Barde','Le barde est un être charmeur, plutôt social et frivole. C\'est avant tout un chanteur, un conteur et un musicien, racontant les légendes du passé et les récits de grandes batailles ou jouant un air populaire afin de récolter quelques piécettes. Le barde usera de ses talents plutôt que de sa lame pour se sortir du pétrin.',5),('CLERC','Clerc','Un représentant de son Église tout aussi pieux que le prêtre, le clerc est toutefois plus physique dans son approche. Il est la parole et l\'épée de son dieu en ce monde. Bien que ses pouvoirs ne soient pas aussi grands que ceux du prêtre, le clerc compense amplement avec ses habiletés guerrières.',6),('CULTIST','Cultiste','Un adepte du mal, l\'esprit insondable du cultiste recèle de prières incompréhensibles vouées à un démon aussi vil que macabre. Il est l\'émissaire direct des démons dans le monde et bien qu\'il ne soit pas aussi fort au combat que l\'acolyte combattant, ses pouvoirs sont bien plus grands.',6),('ECLAIR','Éclaireur','L\'éclaireur est un combattant léger se fiant plus à la vitesse, la discrétion et l\'agilité qu\'à la force brute ou à une armure lourde pour vaincre. Certains sont des coureurs des bois vivant en solitaire alors que d\'autres font le travail de reconnaissance pour des forces organisées. Ils opèrent souvent seuls ou en petits groupes.',8),('GUERR','Guerrier','Le guerrier est une personne ayant voué sa vie à l\'art du combat et peut-être même à celui de la guerre. Il peut être un aventurier, un pillard, un soldat ou un milicien ayant reçu un entraînement sommaire et qui va parfaire ses techniques au fil de ses aventures.',9),('HMETIER','Homme de métier','L\'homme de métier n\'est ni un combattant, ni un homme de foi ou un mage. Il fait partie de la majorité tranquille qui fait rouler l’économie, et il peut être un allié de choix, car il amasse souvent une petite fortune en vendant ses services.',5),('MAGE','Mage','Homme de savoir, curieux de nature, le mage poursuit une quête incessante du savoir et du pouvoir. Le mage est habile dans la manipulation des liens magiques qui tissent l\'univers. Le comportement d\'un mage peut être aussi varié que les sorts qu\'il lance.',4),('MOINE','Moine','Les moines sont des personnages pacifiques, issus de différentes croyances, mais qui ont en commun le développement du potentiel du corps et de l\'esprit. Même s\'ils sont bienveillants, ils ne sont pas non plus sans défense. Ce sont souvent des maîtres des arts martiaux, mais parfois aussi de sages ermites, de pacifiques scribes errants, ou les soeurs d\'un couvent. Un moine doit suivre les préceptes de la Voie, ou risquer de perdre ses pouvoirs.',7),('NIVZERO','Niveau zéro','Aventurier sans expérience, le niveau zéro n\'a aucune expérience pratique sur la vocation qu\'il désire entreprendre. Il commence son épopée dans les Terres de Bélénos telle une page vierge. Tant qu\'un joueur est de niveau zéro, il ne recevra pas de points d\'expérience, mais il pourra se choisir une classe au début d\'un GN subséquent à sa création.',4),('PRETRE','Prêtre','Un pieux représentant de son Église, le prêtre est parfois un écrivain, un moine ou un aide de combat, mais il est surtout un homme de grande foi. Il est la parole directe de son dieu dans le monde. Il n\'est pas aussi fort en combat que le clerc, mais ses pouvoirs divins sont très grands.',6),('SHAMAN','Shaman','Le shaman est souvent l\'autorité spirituelle dans les cultures moins avancées qui n\'ont pas encore développé de culte organisé. Même dans les civilisations plus avancées, certaines personnes peu orthodoxes développent des affinités avec les esprits. Le shaman ne tire pas ses pouvoirs d\'un dieu ou d\'un démon mais des esprits qui habitent le monde.',6),('VOLEUR','Voleur','Expert dans le dépouillement d\'autrui, ce personnage ingénieux et inventif cherche d\'abord et avant tout à faire fortune. Plus expérimenté, il cherchera toujours à s\'accomplir à travers ses délits.',6);
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-26 15:44:11
