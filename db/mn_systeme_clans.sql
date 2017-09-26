-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: mn_systeme
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.19-MariaDB

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
-- Table structure for table `clans`
--

DROP TABLE IF EXISTS `clans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `start_discipline1` int(11) NOT NULL,
  `start_discipline2` int(11) NOT NULL,
  `start_discipline3` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clans`
--

LOCK TABLES `clans` WRITE;
/*!40000 ALTER TABLE `clans` DISABLE KEYS */;
INSERT INTO `clans` VALUES (1,'Brujah','Du temps de Carthage, ils étaient de grands rois philosophes. À l\'époque contemporaine, ils soutiennent également les anarchs, peut-être même davantage que la Camarilla. De fait, les Anarchs comptent plus de Brujahs dans leurs rangs que de membres de tous les autres clans réunis. Certains Vampires pensent que le clan Brujah sera le premier à quitter la Camarilla. Les Brujahs le pensent aussi... Leur devise : « Pense par toi-même, ou tu es mort. Dans les deux cas, moi, ça me va. »',2,3,5),(2,'Malkavian','Les Malkaviens sont un Clan mystérieux que personne ne comprend réellement. Ils ont un savoir que beaucoup aimeraient posséder mais ils sont trop instables et inconstants pour être des individus de confiance. Ils font partie des Clans fondateurs de la Camarilla. Leur devise : « Tu peux rire si tu veux. Ça ne fait rien. Crois que tu es plus malin que le pauvre, le misérable Dément. Ça ne fait rien. Mais réfléchis à ça : tu es une chose morte, comme moi. Tu es mort et tu es rené... en ça. Ce qui nous rend différent? Simple : je me souviens de ce que j\'ai vu lorsque j\'étais vraiment et totalement mort. Tu serais fou, toi aussi. »',1,4,8),(3,'Nosferatu','Les Nosferatus sont des créatures à l\'apparence monstrueuse, mais paradoxalement souvent plus humanistes, que les autres vampires. Ils vivent cachés, souvent au plus profond des égouts et des catacombes, et usent des secrets des autres vampires dans leurs propres intérêts. Ils sont un Clan fondateur de la Camarilla. Leur devise : « Viens ici, petit garçon. Tu veux un bisou? [reniflement sonore] Qu\'est-ce qui se passe? Le gros vilain bandit te fait peur? Tu n\'aimes pas trop être une victime, hein? Ben, faudra t\'y habituer, parce que tu n\'en as pas encore vu la moitié! »',3,6,8),(4,'Toreador','Un des Clans fondateurs de la Camarilla. C\'est un Clan constitué principalement de personnes proches du milieu artistique. Ils sont très proches des humains, dont ils aiment beaucoup la compagnie mais ils sont aussi des politiciens très doués.',2,4,5),(5,'Tremere','Les usurpateurs sont les sorciers des vampires. Ils ont une structure très organisée et une puissante magie qui fait d\'eux un des Clans fondateurs de la Camarilla. Ils sont devenus vampires de leur propre initiative par l\'usurpation de quelques vampires Tzimisces, et de la quasi-totalité des Salubriens. Leur devise: « Nous sommes plus que des vampires. Nous sommes l\'échelon suivant de l\'évolution caïnite. Nous dirigerons les autres s\'ils nous le permettent, ou nous resterons seuls s\'il le faut. Mais nous survivrons. »»',1,4,11),(6,'Ventrue','Ses membres se voient comme formant le Clan le plus prestigieux de la Camarilla. Les princes nobles de la Camarilla dont ils sont les principaux fondateurs et dirigeants. Ils se considèrent comme les garants de la société vampirique qu\'ils sont les seuls à pouvoir guider. Ils sont bien souvent très influents, et capables de détruire la vie d\'un vampire en quelques coups de téléphone. Leur devise : « Guider les Damnés est mon fardeau, non le tien. Tu ferais toutefois bien de te demander si ta non-vie se fait au bénéfice des Enfants de Caïn, ou à leur détriment. J\'ai déjà forgé mon opinion. »',1,2,7),(7,'Gangrel','Ce Clan a pactisé avec les ennemis jurés des vampires : les loups-garou. Le Clan le plus proche de la nature, un des clans fondateurs de la Camarilla. Ils vivent principalement hors des villes, dans lesquelles ils sont souvent une menace pour la Mascarade, du fait des caractéristiques physiques animales, qu\'ils acquièrent avec le temps. Très récemment, ils ont quitté la Camarilla, devenant des indépendants. Leur devise : « Tu m\'as donné du sport, mortel. Mais maintenant, la chasse est terminée. »',6,7,9),(8,'Lasombra','Les Lasombras sont un Clan de manipulateurs nés. Leurs ennemis de toujours sont les Ventrues avec lesquels ils se disputent la suprématie sur les vampires. Au contraire des Ventrues, les Lasombras préfèrent les manipulations dans l\'ombre au pouvoir réel direct. Ils sont un des deux clans fondateurs du Sabbat dont ils sont les principaux leaders politiques.»',1,3,10);
/*!40000 ALTER TABLE `clans` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-25 21:02:02
