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
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `CodeQuestionnaire` varchar(7) NOT NULL,
  `Numero` int(2) NOT NULL,
  `SousTitre` varchar(100) DEFAULT NULL,
  `Question` varchar(150) NOT NULL,
  `TypeReponse` varchar(5) NOT NULL,
  `ListeChoix` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`CodeQuestionnaire`,`Numero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES ('BGPERSO',1,'Magie arcanique','... les arcanistes.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',2,NULL,'... les utilisateurs d\'objets magiques.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',3,NULL,'... la nécromancie.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',4,NULL,'... les éléments réactifs et leur utilisation.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',5,'Religion','... Golgoth.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',6,NULL,'... les golgotiens.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',7,NULL,'... Ayka.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',8,NULL,'... les aykanites.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',9,NULL,'... Galléon.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',10,NULL,'... les galléonites.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',11,NULL,'... Mak\'Udar.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',12,NULL,'... les makudaris.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',13,NULL,'... les Sibylles.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',14,NULL,'... les sibylliens.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',15,NULL,'... Sylva.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',16,NULL,'... les sylvanites.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',17,NULL,'... Usire.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',18,NULL,'... les aédonites.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',19,NULL,'... Gaea.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',20,NULL,'... les gaéens.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',21,NULL,'... Chaos.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',22,NULL,'... les chaossiens.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',23,NULL,'... Amaï\'ra.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',24,NULL,'... les amaï de toutes les races.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',25,NULL,'... Godtakk.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',26,NULL,'... les godtakkis.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',27,NULL,'... Toyash.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',28,NULL,'... les toïshme.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',29,NULL,'... Kaalkhorn.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',30,NULL,'... les kaalkhorniens.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',31,NULL,'... Khalii.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',32,NULL,'... les khaliites.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',33,NULL,'... Noctave.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',34,NULL,'... les noctaviens.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',35,NULL,'... Ottor-Kom.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',36,NULL,'... les fidèles d\'Ottor-Kom.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',37,NULL,'... les Esprits.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',38,NULL,'... les shamans','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',39,'Races','... les humains.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',40,NULL,'... les elfes.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',41,NULL,'... les nains.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',42,NULL,'... les chapardeurs.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',43,NULL,'... les hommes-lézards.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',44,NULL,'... les orcs.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',45,NULL,'... les gobelins.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',46,NULL,'... les elfes noirs.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',47,NULL,'... les hommes-rats.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',48,NULL,'... les gnolls.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',49,NULL,'... les trolls.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',50,'Politique','... l\'Aurélius et Marussia.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',51,NULL,'... le Royaume de Dagoth et son régent.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',52,NULL,'... Eseldorf et ses dirigents.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',53,NULL,'... la Griffe de l\'Ouest et l\'Ilfirin Taurë.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',54,NULL,'... la noblesse en général.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',55,NULL,'... l\'aristocratie héréditaire (le sang noble dirige).','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',56,NULL,'... la méritocratie (les plus méritants dirigent).','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',57,'Autres','... l\'esclavage.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',58,NULL,'... l\'utilisation de poisons.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',59,NULL,'... l\'utilisation de drogues.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',60,NULL,'... la science et ses créations.','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect'),('BGPERSO',61,NULL,'... la préservation de la nature','CHOIX','Haine viscérale;Animosité;Neutre;Affinité;Grand respect');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-26 15:44:04
