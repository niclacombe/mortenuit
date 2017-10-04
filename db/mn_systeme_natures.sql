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
-- Table structure for table `natures`
--

DROP TABLE IF EXISTS `natures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `natures` (
  `id` int(11) DEFAULT NULL,
  `nom` text,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `natures`
--

LOCK TABLES `natures` WRITE;
/*!40000 ALTER TABLE `natures` DISABLE KEYS */;
INSERT INTO `natures` VALUES (1,'Architect','Vous espérez laissez une marque, un héritage, bâtir pour le futur.'),(2,'Autocrat','Vous prenez les choses en main, puisque personne n\'est capable de le faire.'),(3,'Bon Vivant','Il n\'y a que le bon temps pour apaiser votre existence vide de sens.'),(4,'Bravo','Les gens ne font que se mettre dans votre chemin, et vous n\'hésiter pas à ruer dans les brancards.'),(5,'Caregiver','Protéger et récomforter, c\'est votre mot d\'ordre.'),(6,'Celebrant','Vous trouvez plaisir et joie dans la vie en vous abandonnant à vos passions'),(7,'Child','Vous avez besoin des autres pour vous nourrir et vous aider.'),(8,'Competitor','Tout est un concours, et vous voulez gagner.'),(9,'Conformist','Vous prenez les ordres de quelqu\'un d\'autre, laissant les autres assumer la responsabilité.'),(10,'Conniver','Il n\'y a aucun but à faire les choses vous-même quand vous pouvez trouver quelqu\'un d\'autre qui le fera.'),(11,'Curmudgeon','Rien n\'est parfait, tout est stupide et vous allez vous assurer que tout le monde le sait.'),(12,'Deviant','Normal? Qu\'est-ce que c\'est? Vous n\'avez pas d\'utilisation pour les normes sociales et les moeurs.'),(13,'Director','Vous vous sentez un besoin impérieux d\'imposer l\'ordre.'),(14,'Fanatic','Une cause, une vérité, un seul but: vous servez et faites du prosélytisme avec une conviction absolue.'),(15,'Gallant','Tout ce que vous faites est orienté vers la flamboyance et l\'excès, puisque vous avez besoin de l\'attention de ceux qui vous entourent.'),(16,'Judge','Vous avez un profond sens du bien et du mal, et vous cherchez la justice à la mesure de vos principes.'),(17,'Loner','Vous ne faites tout simplement pas partie, que ce soit par choix ou dû à votre nature.'),(18,'Martyr','Tout le monde en profite lorsque vous assumer les charges de vos idéaux.'),(19,'Masochist','Vous testez vos connaissances à travers la souffrance, et trouvez un sens à la douleur persistante.'),(20,'Monster','Vous construisez votre objectif à partir d\'une inspiration malicieuse pour mettre en valeur le mal à travers vos actions.'),(21,'Pedagogue','Tout le monde peut apprendre de vos exemple et expériences; vous êtes né pour enseigner aux autres.'),(22,'Penitent','Vous avez péché, et vous ne pourrez pas vous reposer jusqu\'à ce que vous vous rachetiez.'),(23,'Perfectionist','Vous faites tout avec un zèle sincère visant à l\'achèvement immaculé. Il n\'y a aucune excuse pour les efforts imparfaits.'),(24,'Rebel','Que ce soit par habitude ou par pulsion, vous vous déchaînez sur le système et essayez de le détruire.'),(25,'Rogue','D\'abord et avant tout, vous visez la première place.'),(26,'Survivor','Rien ne vous arrête, votre résolution à vous en sortir est indomptable.'),(27,'Thrill-Seeker','Vous êtes toujours à la recherche d\'adrénaline, en bravant le danger, de plus en plus.'),(28,'Traditionalist','Les vieilles méthodes sont les meilleures, et donc vous les préservez et les protégez.'),(29,'Trickster','L\'existence est absurde, si vous la remplissez avec humour et irrévérence, vous éviterez de ressentir trop profondément la douleur.'),(30,'Visionary','Un but vous dirige, et vos rêves apportent la foi aux autres.'),(31,'Capitalist','Vous êtes le mercenaire ultime, avec une bonne compréhension de la façon de manipuler les autres.'),(32,'Chameleon','Vous pouvez se fondre dans n\'importe quelle situation, capable de vous faire passer pour n\'importe quoi. Vous n\'avez pas d\'allégeances véritable.'),(33,'Creep Show','Vous vous efforcez de choquer et de dégoûter, afin d\'intimider et de contrôler les autres.'),(34,'Daredevil','Vous aimez prendre des risques et saisir toute opportunité de le faire.'),(35,'Dark Pioneer','Vous ne pouvez pas changer les traditions du passé, mais vous pouvez être la force qui amène l\'avenir.'),(36,'Dark Poet','Vous voulez faire partager la beauté de l\'obscurité avec le reste du monde.'),(37,'Drunk Uncle','Lorsque les choses vont bien, vous êtes le meilleur ami de tous. Quand elles vont mal, vous êtes leur pire cauchemar.'),(38,'Enigma','Vos actions sont bizarres, incontrôlées, votre comportement erratique est considéré comme de la folie par ceux que vous rencontrez.'),(39,'Eye of the Storm','Malgré votre apparence calme, vous vous entourez du chaos et la mort.'),(40,'Guru','Vous cherchez l\'illumination et vous vous accrochez à votre idéalisme, en essayant de convertir les autres.'),(41,'Recruiter','Il est logique de construire votre côté avant de tenter de d\'arracher le leur.'),(42,'Sadist','Vous existez pour infliger la douleur et la souffrance. Tuer est trop facile, ils doivent connaître la douleur.'),(43,'Sociopath','Tous les êtres inférieurs doivent être éradiqués. Vous n\'avez pas de remords ou de compassion. Vous êtes une machine.'),(44,'Stalker','La chasse est tout; la capture et l\'alimentation sont presque décevante.'),(45,'Sorority Sister','Vous faites tout ce que les gens populaires font, et le faites mieux.'),(46,'Torturer','Infliger la douleur n\'est pas une profession pour vous, mais une vocation.');
/*!40000 ALTER TABLE `natures` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-03 23:00:22
