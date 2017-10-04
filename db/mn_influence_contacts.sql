-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: mn_influence
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
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` int(11) DEFAULT NULL,
  `nom` text,
  `titre` text,
  `secteur` int(11) DEFAULT NULL,
  `niveau` int(3) DEFAULT NULL,
  `proprietaire` int(11) DEFAULT NULL,
  `date_achat` datetime DEFAULT NULL,
  `date_protection` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Samuel Lachance',NULL,1,0,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,'Hélène Gagné','Régistraire aux Entreprises',1,6,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,'Jean Breau','Enquêteur pour Revenu Québec',1,4,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,'Danielle Fauchée','Gestionnaire en partenaria-public-privé',1,4,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,'Frank McKenna','Reponsable de l\'urbanisme pour la Ville de Qc',1,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(6,'Yvonne Saint-Onge','Directrice de la fonction publique',1,5,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(7,'Wilfried Samson','Haut-fonctionnaire responsable des contrats publics',1,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,'Ulysse Dondedieu','Sous-directeur adjoint, bureau des fraudes, ministère du revenue',1,4,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(9,'Benjamin Robert','Directeur Général de la Ville de Québec',1,5,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10,'Karen Rocheleau',NULL,1,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(11,'Maurice Fiset',NULL,1,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(12,'Laure Silverstone',NULL,1,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(13,'Henri Masson','Fonctionnaire au ministère des finances',1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(14,'Simon Reinette',NULL,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(15,'Andrée Melançon','Secrétaire à l\'école Saint-Chrétienne',1,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(16,'Victor Schliemann','Percepteur d\'impôt',1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(17,'Isabelle Hunt','Alliance des Familles du Québec (adoption internationale)',1,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(18,'Pierre Klein',NULL,1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(19,'Yannick St-Amant','Comptable agréé chez CGI/Prescott DRIP',1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(20,'Mireille Francis','fonctionnaire pour les PPP',1,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(21,'Vanessa Vanlois','Recherchiste',1,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(22,'Cardinal Mould','Cardinal de Québec',2,4,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(24,'Albert Jalbert',NULL,2,0,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(25,'Soeur Marie-de-Magdala','Mère Supérieure, Dominicaine Missionnaire Adoratrice, Couvent de Beauport',2,4,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(26,'Professeur Saint-Onge','Directeur du programme de Théologie de l\'Université Laval',2,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(27,'Stéphane Héroux','Cardinal de Québec - Prélat de la Sainte Croix - Opus Dei',2,5,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(28,'Père Florentin',NULL,2,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(29,'Mario Morin','Prêtre de l\'Église St-Patrick-en-St-Jean-Baptiste',2,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(30,'Julie Trottier','conseillère spirituelle',2,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(31,'André Fortin','Évêque de la ville de Québec',2,4,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(32,'Évélyne Guitard','Dévote catholique reconvertie dans le renouveau charismatique.',2,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(33,'Robert Tremblay','curé de la paroisse de l\'église Saint-François d\'Assise à Limoilou',2,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(34,'Irène Leblanc','Soeur Dominicaine Missionnaire Adoratrice - Beauport',2,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(35,'Robert Beauchemin','Prêtre',2,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(36,'Martha Beaudoin','Soeur Dominicaine Missionnaire Adoratrice - Beauport',2,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(37,'Paul Lemay','Prêtre et Vicaire de l\'église St-Charles de Limoilou',2,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(38,'Louise Normandin',NULL,2,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(39,'Guillaume Bellerive',NULL,2,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(40,'Marie-Ève Baril',NULL,2,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(41,'Jean-Luc Allaire',NULL,2,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(42,'Bernard Ermite','Scientologue',2,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(43,'Alexandre Santerre','Président de BNQ',3,4,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(44,'Gracia Beauchêne','Actuaire',3,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(45,'Denis Robitaille','Président de TI Développement.',3,5,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(46,'Henri Lavolonté','Propriétaire de Sécurité Sirois',3,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(47,'Melanie Gelinas','investisseuse',3,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(48,'Alcide Tessier','Philantrope',3,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(49,'Johannie Tremblay','Présidente de T-Investissement Corporation.',3,4,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(50,'Frédéric Cantin','PDG de Cantin World',3,5,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(51,'Patricia Demers','Présidente chez Groupe Demers Investissements',3,4,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(52,'Pierre-Luc Prescott','CEO de Groupe CGI',3,6,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(53,'Marie-Jade Pelletier',NULL,3,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(54,'Jean-Francois Legault',NULL,3,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(55,'Karine Bolduc','investisseure en immobilier',3,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(56,'Pierre Damphousse','Conseiller d\'investissement en bourse',3,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(57,'Éloïse Soucis','Femme d\'affaires',3,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(58,'Maurice Boucher','propriétaire HR bloc',3,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(59,'Julie Pratte','Comptable chez Paintex Inc',3,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(60,'Marie-Andrée Robitaille','Propriétaire terrien.',3,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(61,'Jean Cruise','Consultant',3,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(62,'Vanessa Cloutier','Propriétaire de restaurants et de bars',3,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(63,'Simon Vandale','CEO de Panpharma',3,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(64,'Tommy Dubois','Conservateur d\'oeuvres d\'art',4,5,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(65,'Catherine Beaudoin','Intellectuelle et philosophe',4,5,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(66,'Kenny Dupré','Agent d\'artistes',4,4,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(67,'Marcel Lavigueur','Propriétaire de la chaine Cosmos',4,4,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(68,'Cindy Rivard','Chanteuse et animatrice-télé',4,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(69,'Carl Paquin','Acteur',4,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(70,'Denise Thivierge','propriétaire du Laurie-Raphael succursale de Québec',4,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(71,'Claude Toupin','Créateur de Goth It!',4,4,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(72,'Céline Rivard','Présidente de la Fondation Cantin-Rivard',4,0,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(73,'Pierre Gélinas',NULL,4,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(74,'Martine Ouellet','Belle riche écervellé, star déchue',4,0,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(75,'Yves St-Ours','Propriétaire de la Mercerie St-Ours',4,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(76,'Lyne Bélanger','Designer d\'intérieur branchée',4,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(77,'Olivier Leblanc','Philisophe et poète',4,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(78,'Suzie LaCharité',NULL,4,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(79,'Olivier Durand','Ex finaliste de l\'émission La voix',4,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(80,'Lise Demers','Auteure',4,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(81,'Jean-Phillipe Boudreau','Propriétaire du Club Sodome et Gomorrhe',4,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(82,'Gaétanne Lajoie','Artiste Sculpteuse',4,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(83,'Wilfrid Joli','Gérant de Société Cigar Lounge sur Grande-Allée',4,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(84,'Réjean Magny','Président de la FTQ',5,5,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(85,'Claire Lacroix','DG division armes a feu de Power Corp',5,4,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(86,'Mathieu Fluet',NULL,5,5,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(87,'Johanie Guité','Présidente de Paintex Inc',5,6,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(88,'Dany Castonguay','Fondateur de TI Développement',5,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(89,'Luc Vaugeois','Éditeur indépendant - Les Éditions du Rêveur',5,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(90,'Lucie Lamothe',NULL,5,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(91,'Doris Grimard','Présidente de Fabrication Grimard Inc.',5,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(92,'Alain Bordeleau','Directeur Général, Black Métal Corp',5,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(93,'Carole Bouffard','Présidente chez Bouffard; Traitement des déchets',5,4,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(94,'Martin Noël','Président de Contruction Noël',5,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(95,'Stéphanie Ouellet','Constructions Ouellet et Fille.',5,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(96,'Vincent Lavoie','Président du syndicat chez Bouffard; Traitement des déchets',5,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(97,'Roxanne Lemire',NULL,5,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(98,'Samuel Lacroix','Président de la compagnie de construction Lacroix et fils.',5,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(99,'Jean-Phillipe Simard','Gérant à Mountain COOP',5,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(100,'Hélène Lafont','Ingénieur Informaticien',5,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(101,'Éric Plamondon','Président de Télécom Cantin Média',5,4,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(102,'Marie-Claude Prince',NULL,5,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(103,'Charles Beaudoin','VP Opérations, Demers Division Armement et Technologies',5,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(104,'Stéphane Pronovost',NULL,5,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(105,'Alexandre Montigny','Juge en Chef de la Cour du Québec',6,4,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(106,'Juliette Jeanson','Procureure en chef de la couronne',6,5,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(107,'Réjean Tremblay','Juge',6,4,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(108,'Kim Massicotte',NULL,6,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(109,'Mario Bellerive','Avocat',6,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(110,'Cindy Morel','Greffière municipale et propriétaire de Cindy Morel Avocat',6,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(111,'Alex Lampron','Juge en chef de la Cour du Québec',6,5,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(112,'Marcel Charland','spécialiste en droit économique',6,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(113,'Pierre Clément','Avocat',6,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(114,'Louise Gélinas','Avocate',6,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(115,'Patrick Langevin','Avocat, pdg de Langevin de Llyod, Bertrand et Associers',6,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(116,'Denise Beaulieu','Avocate',6,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(117,'Michel Bacon','Avocat',6,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(118,'Steve Beaudoin','Avocat',6,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(119,'Marjorie Collin','Procureur',6,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(120,'Dominique Guimont','Adjointe administrative.',6,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(121,'Max Hains','Étudiant étrangé en droit',6,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(122,'Julie Hamel',NULL,6,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(123,'Nicole Labaie','Procureur-Général de la Couronne',6,4,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(124,'François Lacoursière','Avocat',6,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(125,'Martin Grégoire','Directeur de programmation pour Bell Média',7,4,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(126,'Louis Gravel','Journaliste chez Les Érudits',7,4,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(127,'Jacques Grenier','Directeur de la programmation de radio-canada',7,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(128,'Gaston Lacroix','Éditorialiste en Chef, Journal de Québec',7,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(129,'Cindy Richer','Bloggeuse du dimanche, \"Quand on crie, il y a de l\'écho\"\"\"',7,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(130,'Henri Veilleux','Bloggeur indépendant',7,4,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(131,'Diane Cayer',NULL,7,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(132,'Sophie Vallières','Designer Graphique et Blogueuse',7,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(133,'Valérie Levasseur','Bloggeuse',7,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(134,'George Brunette','Animateur radio à  c.h.u.t. 96,2 la radio des oiseaux de nuits',7,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(135,'Rita Fortin','Animatrice du midi à NRJ',7,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(136,'Dave Mercure',NULL,7,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(137,'Maurice Parent','Animateur à CHOI',7,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(138,'Marie-Pier Pellerin','Éditrice indépendante du journal populaire \"Les Valeurs\"\"\"',7,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(139,'Claude Massé','Journaliste pour RDI',7,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(140,'Fernande Bergeron','Journaliste de fait divers',7,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(141,'Marc Tessier','Journaliste au Beauport-Express',7,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(142,'Yvonne Guimont','Journaliste au journal le Soleil',7,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(143,'René Brûlé','un grand brûlée',8,0,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(144,'Carole Tremblay','Gardienne des Loups',8,4,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(145,'Jacques Sanschagrin','Prêtre de l\'Église Satanique de Vanier',8,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(146,'Mélanie Roy','Boutique \'L\'Horizon Zen\'',8,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(147,'Mario Lamothe','Expert en spiritisme et en écriture automatique.',8,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(148,'Sarah-Ève Desbiens','Oracle du culte d\'Hadès',8,4,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(149,'Sylvain Richard','Écrivain de fiction occulte',8,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(150,'Frank Campanozzi','Créateur de la Wicca à Québec',8,6,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(151,'Maryse Plante','Herboriste, membre de l\'Ordre maçonique de Québec',8,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(152,'Michel Pépin','Propriétaire d\'une boutique occulte',8,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(153,'Charles Langlois','Organisateur, Ordre Sacré de la Rose-Croix.',8,5,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(154,'Martine Allard',NULL,8,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(155,'Jean-Robert Arçeau',NULL,8,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(156,'Marjorie Hallé','Membre de l\'Ordre Maçonnique de Québec',8,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(157,'Justin Pilote','Scientologue',8,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(158,'Cathy Lacoursière','Propriétaire de la boutique occulte \"Grimoire d\'Enoch\"\"\"',8,4,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(159,'Agathe St-Antoine',NULL,8,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(160,'Nathalie Poulin',NULL,8,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(161,'Denis Poirier','Occultiste autodidacte',8,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(162,'Antoine Tourelli','Chargé de Cours en Histoire des Religions',8,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(163,'Mario Thibault','enquêteur journaliste du paranormal',8,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(164,'Cécile Lambert',NULL,9,0,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(165,'Gérald Tremblay','Président des Sons of Mayhem - MC Québec',9,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(166,'Andrée Dufresne',NULL,9,0,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(167,'Steve Pomerleau','Membre du Black Lotus',9,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(168,'Gilles Brisebois',NULL,9,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(169,'Roger Rousseau','Tenancier du Bar Haystack, Gérant Club Pro-Am de Limoilou.',9,5,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(170,'Conrad Allaire','Gérant de l\'underground',9,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(171,'Fredéric Robitalle','Gros Caïd',9,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(172,'Noémie Labranche','Seconde de Tania Rousseau',9,4,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(173,'Pierre Labonté',NULL,9,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(174,'Paul Lachapelle',NULL,9,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(175,'Serge Desjardins','Bras Droit - Les Scorpions',9,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(176,'Vanessa Falco','Membre de Black Lotus, Femme fatale',9,5,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(177,'Louis Fafard','Dit : Le Gros Louis ou l\'irlandais. Chef du Irish-Gang',9,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(178,'Danielle Blais','Membre de Black Lotus',9,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(179,'Jacques Cloutier','dit \'\'Le Bulldog\'\' propriétaire du bar le 69',9,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(180,'Jean-Guy Buisson','Propriétaire d\'un Pawn Shop',9,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(181,'Chantale Blais-Morin','Mère supérieure du couvent des filles de Marie-Madelaine',9,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(182,'Derek Ouellet',NULL,9,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(183,'Yvon Pagé','Caïd',9,4,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(184,'Phillipe Leserf',NULL,10,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(185,'Sylvain Carignan','Policier au SPVQ',10,4,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(186,'Diane Bélanger','Lieutenant au SPVQ, chef des affaires internes',10,5,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(187,'Karl Besson','Lieutenant pour le SPVQ',10,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(188,'Émile Guy','Employé de bureau au poste Victoria',10,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(189,'George Hébert','Lieutenant au SPVQ',10,4,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(190,'René Hardi',NULL,10,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(191,'Paul Richer','Patrouilleur au SPVQ',10,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(192,'Mathilda Robidoux','Policière du SPVQ',10,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(193,'Norman Guérin','Sergent du SPVQ',10,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(194,'Claude Ladouceur','Capitaine, Chef du SPVQ',10,5,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(195,'Jean-Yves Demers','Chef de la sécurité chez Groupe Demers Investissement',10,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(196,'Denis Maheux','Brigade anti-Cybercriminels',10,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(197,'Vicky Marchand','Agente de sécurité du groupe Paintex INC.',10,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(198,'Lucien Martel','Membre du soutient opérationnel  Police de Québec',10,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(199,'Mario Deauphin','Chef de la Sécurité, Garda - Cantin World',10,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(200,'Charley Davidson','petite police mal aimée',10,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(201,'Roger Caroufel','Chef du SPVQ',10,6,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(202,'Catherine Beaudoin','Étudiante en techniques policières',10,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(203,'Alain Paré',NULL,10,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(204,'Marcel Kurz','Enquêteur',10,4,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(205,'Nicolas Lecomble','Chef de l\'opposition officiel - Parti Bleu',11,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(206,'Michael Donovan','Ministre des Finances.',11,5,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(207,'Yvon Plante','Premier Ministre de 2013 à 2014, assassiné.',11,0,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(208,'André Laflamme',NULL,11,0,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(209,'Bernard Langelier','Ministre des Finances',11,0,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(210,'Manon Brousseau','Ministre de la Santé et de l\'Éducation',11,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(211,'Marie Claude Déziel','Condamnée pour l\'assassinat d\'Yvon Plante',11,0,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(212,'Audrey Diamond',NULL,11,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(213,'Geneviève Dion','Députée de Sept-Iles',11,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(214,'Kevin Desrosiers','Porte-Parole du Parti Blanc',11,4,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(215,'Vincent Langlois','Ministre de la Culture et des Communications, Parti Noir',11,4,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(216,'René Lapointe','Député d\'Ungava',11,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(217,'Pierre Larrivée','Député de Montreal-Nord',11,4,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(218,'Andréanne Lalale',NULL,11,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(219,'Claudette Lebaril','Deputé de Lavaltrie',11,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(220,'Stephane Cosette','porte parole du parti vert',11,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(221,'Guillaume Corriveau',NULL,11,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(222,'Martin Courteau','Ministre de l\'Industrie et des Transports',11,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(223,'Raymond Courchesne','Conseiller de la ville municipal de Beauport',11,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(224,'Claire Dubé','Députée de La Pointe-Sainte-Foy',11,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(225,'Marcel Jacques','Député de Val-d\'Or',11,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(226,'Roger Paquin','Conseiller Municipal de la ville de Québec, secteur Basse-Ville',11,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(227,'Fran Jodoin','Leader du Groupe QuebeXois',12,5,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(228,'Brad Bradley','Chef des Dark Ones',12,5,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(229,'Lyon Gingras','Chef des Hell\'s Angel',12,4,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(230,'Jack Smart','Chef des Breb-Thug',12,4,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(231,'Serge Lortie','Chef Réputé des Brothers',12,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(232,'Jocelin Santerre',NULL,12,4,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(233,'Celine Fortier','membre des québeXois',12,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(234,'Roland Laterreur','père monoparental militant',12,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(235,'Marc Poliquin','Chef des Gewalt',12,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(236,'Julie Morency','Membre des bloods',12,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(237,'Yves Forget','Skateux au Carré d\'Youville',12,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(238,'Jean-Hugues Bouchard','SDF',12,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(239,'Leon Houde','Quêteux',12,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(240,'Éric Tremblay','Livreur de Pizz\'',12,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(241,'Étienne Pequin','Employé du Fanamanga',12,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(242,'Guy Garneau','Bras droit des Hell\'s Angel',12,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(243,'Stéphanie Boudreault','Ex travailleuse du sexe',12,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(244,'Sabrina Aubin','Chef des Blackshadows  (gang de rue Goth-Punk)',12,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(245,'Ghislain Tremblay','Skinhead',12,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(246,'Mawa',NULL,12,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(247,'Guy Roy','Dir. de l\'Agence de la Santé et des Services Sociaux de la région de Québec',13,5,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(248,'Leopold Laprise','Président de PharmaNet',13,4,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(249,'Rémy Houle','Membre du Comité des usagers de Robert Giffard',13,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(250,'Carl Horth',NULL,13,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(251,'Annie Dubé','Sous-ministre adjointe, Santé Publique, Ministère de la Santé',13,4,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(252,'Jean-Pierre Lord','Médecin spécialiste de la santé virale',13,5,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(253,'Patricia Tanguay','Médecin Légiste',13,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(254,'Fabienne Taschereau','Psychiatre spécialisée en comportement criminel',13,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(255,'Vanessa Walsh','Thérapeute en toxicomanie',13,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(256,'Vo Trung Khoa','MD Expert en Chef de l\'Institut Robert Giffard',13,0,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(257,'Arsène Cloutier','suposée docteur',13,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(258,'Marie-Line Allen',NULL,13,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(259,'Pierre Boucher',NULL,13,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(260,'Danielle Giroux','Infirmière practicienne',13,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(261,'Marc Lapointe',NULL,13,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(262,'Sophie Montminy','Directrice des opérations, Hémo-Aide',13,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(263,'Isabelle Bouret',NULL,13,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(264,'Marc-André Lagacé','Infirmier au CHUL',13,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(265,'Micheline Samson','Infirmière. Soin paliatif',13,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(266,'André Charest',NULL,13,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(267,'Herman Baxter','Président de l\'Aéroport International de Québec - YQB',14,7,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(268,'Laurent Mercier','Propriétaire de Logistique Larouche',14,5,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(269,'Pierre De Varennes',NULL,14,6,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(270,'Sylvain Lorquet','Propriétaire de T.L.I.',14,5,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(271,'Marie-France Lebel','Propriétaire des Limousines des deux-rives',14,4,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(272,'Gérald McAuley',NULL,14,4,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(273,'Helmut Winter','Pilote pour VIP chez TransSecure',14,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(274,'Gabriel Sioui','grand boss de la compagnie \'\' buz buz aime ton bus\'\'',14,4,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(275,'Tuomo Kuopalla',NULL,14,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(276,'Guillaume Côté','Chef du Contrôle Aérien, YQB',14,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(277,'François Charbonneau','Propriétaire des Limousines de la Capitale',14,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(278,'Bastien Roberge','Chauffeur de taxi',14,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(279,'Lisette Wiseman',NULL,14,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(280,'Laurene Wolfe','PDG de Wolfe Transportation',14,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(281,'Marcel Gobeil',NULL,14,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(282,'Laurent Caouette','Chauffeur particulier',14,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(283,'Ali Ayed','Président de Taxi Capitale',14,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(284,'Christian Drouin','Chauffeur Privé',14,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(285,'Ismet Prijic','Chauffeur privé',14,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(286,'David Prévost-Gagnon','Chauffeur de taxi',14,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(287,'Ruth Simard','Camionneuse pour DMR',14,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(288,'Danielle Blais',NULL,14,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(289,'Magella Bourget','Représentant syndical',15,5,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(290,'Jacynthe Tyers',NULL,15,0,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(291,'Joseph Baby','professeur a l\'universitée laval du cours : \'\' la joie de vivre\'\'',15,5,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(292,'Guillaume Bogiaris',NULL,15,4,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(293,'Marie-France Hamel','Chercheuse en phytothérapie',15,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(294,'Frédéric Riverain','Archéologiste Recherchiste',15,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(295,'Michel Marcoux',NULL,15,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(296,'Valérie Tanguay','Directrice du département de Génie Informatique',15,4,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(297,'Marie-Laure Tapp','Département des Sciences Appliquées, UL',15,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(298,'James Whan','Maitrîse en politique internationale',15,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(299,'Casey Donkervoort','Professeur d\'histoire et d\'occulte à l\'Université Laval',15,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(300,'Geneviève Voyer',NULL,15,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(301,'Alexandre Sirois','Chercheur en biologie',15,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(302,'Véronique Wagner','Chercheur en Génie Mécanique, UQAQ',15,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(303,'Ilya Vukadinovich',NULL,15,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(304,'Tyler Jackson','Chercheur en langue Ancienne',15,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(305,'Maxime Gagnon','Recteur de l\'Université Laval',15,6,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(306,'Simon Soucy','Étudiant. Biochimie',15,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(307,'Marie-Ève Samson',NULL,15,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(308,'Yann Jobin',NULL,15,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(309,'Pierre-André Audet','Étudiant en écologie',15,1,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(311,'Vita Carleane','\"La Vedova\"\"\"',9,0,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(312,'Léopold Malenfant','Haut-Fonctionnaire',1,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(313,'Serge Robitaille','Petit caïd',9,0,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(314,'Marc Gagnon','Président des Sons of Mayhem - MC Lévis',9,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(315,'Francine Fauchée','propriétaire d\'un salon de massage',9,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(316,'Samuel Legendre','Père Rédemptoriste (dit le Prophète)',2,5,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(317,'Giuseppe Falco','Propriétaire du restaurant ¨Morta Notte¨',9,6,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(318,'François Tardif',NULL,11,0,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(319,'Jeannie Richard','Designer mode',4,2,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(320,'Victor Gauthier','Vice-Recteur de l\'Université Laval',15,4,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(321,'Vincenzo Renaldo','Maire de Québec',11,6,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(322,'Nikolai Valko','Rosicrucien',8,5,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(323,'Otoya Asanuma','Leader des Black Lotus, Assassins',9,4,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(324,'Tommy Lemieux','Ministre de la Sécurité Publique et de la Justice, Parti Noir.',11,5,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(325,'Brendan Frasier','Maître Tendances !',4,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(326,'Coraline Guillard','Première Ministre du Québec',11,7,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(327,'Maude Samson','Députée de Témiscouata',11,3,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(328,'Hermenegill Butoms',NULL,13,4,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-03 23:00:24
