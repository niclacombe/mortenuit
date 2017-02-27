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
-- Table structure for table `races`
--

DROP TABLE IF EXISTS `races`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `races` (
  `Code` varchar(7) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Description` mediumtext,
  `ContraintesDecorum` mediumtext,
  `IndPermissionRequise` tinyint(1) NOT NULL,
  PRIMARY KEY (`Code`),
  UNIQUE KEY `Nom_UNIQUE` (`Nom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `races`
--

LOCK TABLES `races` WRITE;
/*!40000 ALTER TABLE `races` DISABLE KEYS */;
INSERT INTO `races` VALUES ('CHAPPY','Chapardeur','Joviaux et courageux, les Chapardeurs sont généralement peu honnêtes et aiment mieux voler que travailler. La plupart sont cleptomanes sans même comprendre ce qu\'ils font. Si de façon générale ils s’attardent peu à des activités académiques ou politiques, c’est plus par manque d’intérêt que par manque d’intelligence. D’ailleurs, leur insouciance et manque d’intérêt envers l’opinion des autres accentue l’incompréhension.','Des cheveux roux naturels ou teints, ou une perruque d\'aspect réaliste dont la couleur peut aller jusqu\'à orange ou rouge. Un costume flamboyant, aux couleurs vives, avec un style gitan ou nomade.',0),('ELFE','Elfe','Les Elfes semblent généralement plus délicats et raffinés que les Humains. Un certain aspect magique semble les entourer. Ils sont imberbes, même pour les plus vénérables. Les Elfes vivent plusieurs siècles et sont très patients. Leur façon d\'agir peut sembler assez abstraite aux yeux d\'un non-elfe, mais ils sont clairement axés vers le bien et l\'ordre, s\'opposant toujours fortement aux démonistes et aux nécromanciens.','Pas de barbe. Avoir des prothèses d\'oreilles pointues.',0),('ELFNOIR','Elfe noir','Très semblables aux Elfes, ils ont leurs oreilles pointues et leur taille svelte. Mais contrairement à eux, ils ont la peau aussi noire que la nuit et leurs cheveux sont d\'un blanc immaculé. Les Elfes noirs sont aussi cruels et sadiques que leur démone Amaï\'ra. Ils ont une attirance certaine pour la magie et vouent une haine sans bornes envers les Hommes-rats, leurs éternels ennemis.','Pas de barbe. Avoir des prothèses d\'oreilles pointues. Cheveux blancs et peau noire. Costume sombre.',0),('GNOLL','Gnoll','Les gnolls sont des créatures robustes, voûtées, aux traits à mi-chemin entre la hyène et le chien. Ils sont recouverts d’une fourrure grise, brune ou rousse, souvent tachetée, sinon rayée. Ils ont de plus une longue crinière, qui leur descend le long de l’échine. Ils sont souvent vêtus de peaux, de lambeaux ou d’articles retrouvés sur les victimes de leurs pillages. Les gnolls ont tendance à vivre dans de petites bandes généralement matriarcales. Bien qu’ils soient presque exclusivement pillards, ils sont plutôt lâches et hésitent à attaquer s’ils n’ont pas l’avantage du nombre ou de la force. Ils n’hésiteront aucunement à attaquer lorsque leur proie est seule. Les Gnolls suivent les conseils de leurs chefs et vivent en meutes. Ces clans sont formés d’une vingtaine d’individus préférant ne pas trop attirer l’attention des troupes armées environnantes. Pour ces mêmes raisons, ils ont de la difficulté à s’allier avec les orcs et les gobelins, qui sont trop bruyants pour eux. Sans aucune ambition particulière, les Gnolls veulent avant tout survivre plutôt que de conquérir le territoire et piller les ressources. On les retrouve surtout à l’ouest en bordure de Dorgon et en Confédération Urdienne Libéré. Ils s’aventurent quelque fois en Khalonnie pour piller. En Bélénos, on les retrouve généralement dans les terres maudites.','Les Gnolls doivent avoir une bosse sur le dos et des épaules légèrement plus larges qu’un humain. Ils ont une longue crinière qui se termine au milieu de la bosse. Ils doivent avoir un masque qui rappelle la hyène. ',1),('GOBELIN','Gobelin','Les Gobelins se remarquent facilement à leur peau verte, leur long nez, leurs oreilles difformes et leurs dents bien acérées. Bien que la majorité de ces créatures ait le teint vert, il est commun de voir différentes variations cutanées allant d’un vert jauni à un vert très noirci, en passant par des couleurs rappelant le brun. L\'attitude des gobelins évolue avec l\'âge. Durant leur enfance, ils ont des tendances bouffonnes et ridicules mais déjà ils se caractérisent par leur ingéniosité et leur cruauté. Leur nature leur permet d\'apprendre à lire, écrire et compter par eux-mêmes sans source d\'éducation. Une fois à l\'âge adulte, ils deviennent des créatures malsaines et vicieuses qui développent un talent inné pour la destruction, et parfois même l\'autodestruction...','Masque obligatoire. Nez et oreilles très longs. Peau verte, verte-brune, ou verte-noire.',0),('HLEZARD','Homme-lézard','À venir... Les sorts de feu font entré les hommes Lézard en rage subite ou assomée dépendamment du la personnalité du personnages (choisit à la création du personnage). Les hommes-lésards ne peuvent que forger leur propres armes. De plus comme ils sont à sang froid, ils doivent jouer l’effet que la température a sur leur système. ','Peau écailleuse et queue obligatoire. Doit être approuvé par l\'organisation.',1),('HRAT','Homme-rat','Les Hommes-rats ont l\'apparence d\'un rat : une longue queue, un museau et du poil. Les seules exceptions notables sont qu\'ils ont la taille d\'un Humain et marchent debout. Ils sont généralement vêtus sommairement, avec des vêtements en lambeaux. Les Hommes-rats sont fourbes et peu téméraires. Constamment en guerre avec les Elfes noirs, ils ont développé une logique et une loyauté étrangère au commun des mortels.','Au minimum une queue, un museau et des oreilles de rat. Costume généralement usé voire déchiré.',0),('HUMAIN','Humain','Il y a des Humains de toute taille et de toute forme. Contrairement aux autres races, ils n\'ont pas de traits distinctifs. Leur habillement varie grandement selon leur culture et nation respective. L\'attitude des Humains va d\'un extrême à un autre. Ils peuvent être bons et sympathiques ou cruels et sanguinaires. Malgré cela, la majorité des Humains est relativement civilisée et bien intentionnée.','Aucune',0),('NAIN','Nain','Les Nains sont généralement plus petits que les humains. Ils sont naturellement larges d\'épaules et ils portent fièrement un bon ventre ainsi qu\'une longue barbe bien soignée. Les nains sont généralement très méfiants envers les autres races. Habitués à se débrouiller seuls dans leur mine et à la guerre, ils semblent généralement têtus et bourrus lorsqu\'ils se retrouvent en présence des autres races. Avec les autres nains et les quelques personnes qui réussissent à gagner leur confiance, les nains sont foncièrement sympathiques et d\'une grande loyauté.','Avoir une barbe tant pour les hommes que les femmes. Celle des hommes doit être généreuse (6\'\' et plus), être tressé et mise en valeur par des bijoux.',0),('ORC','Orc','De grandes et grosses créatures au teint verdâtre, vêtues de haillons, de peau, d\'os, et de pièces trouvées sur leurs pauvres victimes. Il n\'est pas rare de les voir recouverts de sang et de saleté. Les Orcs sont avant tout un peuple guerrier et sanguinaire. Des gens croient, à tort, que ce ne sont que des brutes sauvages et primaires. Or, ils ne sont pas plus stupides que n\'importe quel Humain, même que les Orcs savent être diaboliques quand vient le temps de faire la guerre.','Masque obligatoire. Peau verte, verte-brune ou verte-noire.',0);
/*!40000 ALTER TABLE `races` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-26 15:44:03
