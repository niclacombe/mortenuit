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
-- Table structure for table `competences_speciales`
--

DROP TABLE IF EXISTS `competences_speciales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `competences_speciales` (
  `Code` varchar(7) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Type` varchar(7) NOT NULL,
  `CodeEtat` varchar(5) NOT NULL,
  PRIMARY KEY (`Code`),
  UNIQUE KEY `Nom_UNIQUE` (`Nom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competences_speciales`
--

LOCK TABLES `competences_speciales` WRITE;
/*!40000 ALTER TABLE `competences_speciales` DISABLE KEYS */;
INSERT INTO `competences_speciales` VALUES ('APOTHIC','Apothicaire','MAJEURE','ACTIF'),('ARCHIMA','Archimage','PRESTIG','ACTIF'),('ARCHON','Archon','EMYTHIQ','ACTIF'),('ARMMAGS','Arme magique supérieure','MAJEURE','ACTIF'),('ARMSUPP','Une compétence d\'arme supplémentaire à choisir','CREATIO','ACTIF'),('ASSASSI','Assassin','PRESTIG','ACTIF'),('ASSOFEU','Les sorts de feu vous assoment','RACIALE','ACTIF'),('AVATAR','Avatar','PRESTIG','ACTIF'),('BABOCHE','Baboche','MAJEURE','ACTIF'),('BOTSOUR','Botte sournoise','MINEURE','ACTIF'),('BRETEUR','Bretteur','PRESTIG','ACTIF'),('BRISCOU','Brise-cou','MAJEURE','ACTIF'),('BRISSOR','Brise-sort','MINEURE','ACTIF'),('CANALIS','Canalisation','MAJEURE','ACTIF'),('CHAPELA','Chapelain','PRESTIG','ACTIF'),('CHARMEB','Charme de barde','MAJEURE','ACTIF'),('CHAROGN','Charognard','MINEURE','ACTIF'),('CRIGUER','Cri de guerre','MAJEURE','ACTIF'),('CUIRASS','Cuirassé','PRESTIG','ACTIF'),('DEFIMP','Défense impénétrable','MINEURE','ACTIF'),('DESTRUC','Destructeur','PRESTIG','ACTIF'),('DOSAGEX','Dosage excessif','MAJEURE','ACTIF'),('ELALC4','4 éléments alchimiques de départ','CREATIO','ACTIF'),('ELARC25','+25 éléments magiques arcaniques','CLASSE','ACTIF'),('ELCLR10','+10 éléments magiques cléricaux','CLASSE','ACTIF'),('ELCLR20','+20 éléments magiques cléricaux','CLASSE','ACTIF'),('ELEMENT','Élémentaliste','PRESTIG','ACTIF'),('ERMITE','Ermite','PRESTIG','ACTIF'),('ESPFRAG','La durée des charmes est doublée contre vous','RACIALE','ACTIF'),('ESPION','Espion','PRESTIG','ACTIF'),('EXPERIM','Expérimentateur','PRESTIG','ACTIF'),('EXPERPG','Expert en piège','MINEURE','ACTIF'),('FASCINA','Fascination','MINEURE','ACTIF'),('FAUSAIR','Faussaire','MAJEURE','ACTIF'),('FORESTI','Forestier','PRESTIG','ACTIF'),('FORGMYT','Forgeron mythique','PRESTIG','ACTIF'),('FOUGUER','Fou de guerre','PRESTIG','ACTIF'),('FOURNEX','Fournisseur exclusif','MINEURE','ACTIF'),('FRAPPEP','Frappe puissante','MAJEURE','ACTIF'),('FRIPON','Fripon','PRESTIG','ACTIF'),('GARDIEN','Gardien de la Voie','PRESTIG','ACTIF'),('GNOLL','Compétences raciales des gnolls!','CREATIO','ACTIF'),('GRENADE','Grenades','MINEURE','ACTIF'),('GRMESSE','Grande messe','MINEURE','ACTIF'),('GUERARC','Guerrier arcanique','PRESTIG','ACTIF'),('HALLUN1','Recette de niveau 1 : \"Encens hallucinogène\"','CLASSE','ACTIF'),('HANTISE','Hantise','MINEURE','ACTIF'),('HARMONI','Harmonie','MINEURE','ACTIF'),('HERBOX2','Les effets d\'herboristerie sont doublés sur vous','RACIALE','ACTIF'),('HLEZARD','Compétences raciales des hommes-lézard!','CREATIO','ACTIF'),('HM120XP','120 XP de compétences \"Homme de métier\"','CREATIO','ACTIF'),('INCARNA','Incarnation','MINEURE','ACTIF'),('INCORUP','Incorruptible','MINEURE','ACTIF'),('INQUISI','Inquisition','MAJEURE','ACTIF'),('LAMEARC','Lame arcanique','MAJEURE','ACTIF'),('LICHE','Liche','EMYTHIQ','ACTIF'),('LOUPGAR','Loup-garou','EMYTHIQ','ACTIF'),('MAITREA','Maître d\'armes','PRESTIG','ACTIF'),('MDIPLO','Manoeuvre diplomatique','MINEURE','ACTIF'),('MENESTR','Ménestrel','PRESTIG','ACTIF'),('MERCENA','Mercenaire','PRESTIG','ACTIF'),('MMALEDI','Maître des malédictions','MAJEURE','ACTIF'),('NEGATEU','Négateur','PRESTIG','ACTIF'),('NIVMSUP','Niveau de magie supérieur','MINEURE','ACTIF'),('PARADE','Parade','MAJEURE','ACTIF'),('PARLESP','Parler aux esprits','MINEURE','ACTIF'),('PEURSOR','Recevoir un sort arcanique vous fait Peur','RACIALE','ACTIF'),('POISONS','Poison secret','MINEURE','ACTIF'),('POSTDEF','Posture défensive','MAJEURE','ACTIF'),('POUVDEM','Pouvoir démoniaque de votre démon ou démone','CLASSE','ACTIF'),('POUVDIV','Pouvoir divin de votre dieu ou déesse','CLASSE','ACTIF'),('PROPHET','Prophète','PRESTIG','ACTIF'),('PVMOIN1','PV de départ : -1','RACIALE','ACTIF'),('PVPLUS1','PV de départ : +1','RACIALE','ACTIF'),('PYROTEC','Pyrotechnie','MAJEURE','ACTIF'),('RAGEFEU','Les sorts de feu vous enragent subitement','RACIALE','ACTIF'),('RECPERS','Recette personnelle','MINEURE','ACTIF'),('REMPART','Rempart','MINEURE','ACTIF'),('RENAISS','Renaissance sauvage','MAJEURE','ACTIF'),('RENFSUP','Renfort supérieur','MINEURE','ACTIF'),('RUNEPER','Rune personnelle','MAJEURE','ACTIF'),('SACRIFI','Sacrificateur','MAJEURE','ACTIF'),('SANCTIF','Sanctification','MINEURE','ACTIF'),('SECSOUF','Second souffle','MINEURE','ACTIF'),('SIGNMAG','Signature magique','MAJEURE','ACTIF'),('SOLISTE','Soliste','MAJEURE','ACTIF'),('SORTRES','Sort résiduel','MAJEURE','ACTIF'),('SRTENEB','Seigneur ténébreux','PRESTIG','ACTIF'),('STUPEFI','Stupéfiant','MINEURE','ACTIF'),('SYNTESE','Synthèse','MAJEURE','ACTIF'),('TETEDUR','Immunisé à la compétence \"Assommer\"','RACIALE','ACTIF'),('TONECRO','Toucher nécromant','MINEURE','ACTIF'),('TRANSEB','Transe berserk','MINEURE','ACTIF'),('TRANSMU','Transmutation alchimique','MAJEURE','ACTIF'),('TRAQUEU','Traqueur','PRESTIG','ACTIF'),('VAMPIRE','Vampire','EMYTHIQ','ACTIF'),('VIRTUOS','Virtuose','MINEURE','ACTIF'),('VOLDAME','Vol d\'âme','MINEURE','ACTIF');
/*!40000 ALTER TABLE `competences_speciales` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-26 15:44:15
