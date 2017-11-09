-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mn_influence
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
-- Table structure for table `secteurs`
--

DROP TABLE IF EXISTS `secteurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `secteurs` (
  `id` int(11) NOT NULL,
  `secteur` varchar(45) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `secteurs`
--

LOCK TABLES `secteurs` WRITE;
/*!40000 ALTER TABLE `secteurs` DISABLE KEYS */;
INSERT INTO `secteurs` VALUES (1,'Bureaucratie','Vous pouvez gérer plusieurs agences gouvernementales et la fonction publique. En manipulant les programmes sociaux et les fonctionnaires, vous pouvez outrepasser les règles et les normes ou contourner l\'appareil bureaucratique à votre avantage. La bureaucratie peut être utile pour manipuler ou fermer des compagnies, falsifier ou obtenir des permis et des papiers d\'identité ou diriger les bâtiments de la gestion publique.\r\n\r\nLes fonctionnaires municipaux ou provinciaux, les cols bleus, les sondeurs et les autres employés de l\'État sont de potentiels contacts ou alliés.'),(2,'Église','Même si l\'Église moderne a considérablement moins de contrôle sur la société que par le passé, ses politiques continuent d\'exercer une influence considérable sur les tendances politiques et les communautés. En connaissant les gens appropriés, vous avez un regard privilégié sur les courants internes religieux des groupes comme les Chrétiens, les Juifs, les Musulmans, les Hindou, les Shintoïstes ou les Bouddhistes. Les sectes ou les regroupements déviant religieux, comme les Scientologues, sont cependant considérés comme Occultes. En exerçant de l\'influence sur le Clergé, vous pouvez changer des politiques internes, affecter l\'organisation de ceux-ci et accéder à une variété de connaissances et de ressources.\r\n\r\nLes prêtres, évêques, curés, chasseurs de sorcières subventionnés par l\'Église, les ordres sacrés et leurs fidèles sont de potentiels contacts ou alliés.'),(3,'Finance','Manipulé les marches, les rapports de la bourse et les investissements est un passe-temps pour plusieurs Kindred, spécialement ceux qui utilisent leurs connaissances pour garder leurs fortunes secrètes. Même si votre niveau d\'argent disponible est fixé en fonction de <em>Ressources</em>, vous pouvez utiliser l\'influence en Finance pour créer ou nuire aux compagnies, détruire ou supporter des institutions bancaires et modifier vos rapports de crédits. Évidemment, un tel pouvoir sur l\'argent n\'est pas à être prit à la légère, les fortunes disparaissent souvent beaucoup plus vite qu\'ils ne se créent.  \r\n\r\nLes banquiers, actionnaires, spéculateurs boursiers, économistes, requins de la finance, agent de prêts et CEO seront vos principaux contacts et alliés.'),(4,'Haute Société','Les célébrités au sommet de la société forment un cercle fermé de richesse et d\'élégance. Plusieurs kindreds trouvent une telle position attirante et s\'adonnent à leur passion de la célébrité et de la richesse. Connaitre les acteurs célèbres, les hautes figures et les gens fortunés accorde une certaine emprise sur les tendances à la mode. Combiner avec la célébrité, un minimum d\'influence sur la Haute Société peut changer un vampire en débonnaires chéri des cercles sociaux les plus fermés et huppés.\r\n\r\nParmi ces cercles se retrouvent rock stars, mannequins, artistes de toutes les disciplines, membres de familles riches, sportifs de haut niveau et membres du jetset pouvant être de potentiels alliés ou contacts.'),(5,'Industrie','Les engrenages du labeur et du travail nourrissent les économies et les marchés du monde. Les machines, les usines et leurs employés s\'entassant dans un travail ingrat, plaçant et construisant des babioles dans un rythme monotone et routinier. Le contrôle sur l\'Industrie donne main basse sur la formation de syndicats, les conditions de travail, la localisation des usines, la production ouvrière. \r\n\r\nTravailleurs syndiqués, contremaitre, ingénieurs, travailleurs de la construction, employés d\'usines sont tous de bons candidats de contacts ou d\'alliés.'),(6,'Légal','Puisque plusieurs opérations que les Kindreds entreprennent sont partiellement illégales, une bonne main mise sur quelques juges ou avocats est indispensable. Les Kindreds qui se spécialisent dans les lois tirent souvent les ficelles des courts pour s\'assurer que les pratiques questionnables de la société vampirique passent inaperçu et impunies. Bien sure cette influence est aussi très pratique pour harceler les entreprises de ses ennemis.\r\n\r\nUne telle influence compte dans ses alliés les écoles de lois aux firmes, les avocats, juges, magistrats, avocats de la couronne et tout le personnel gravitant autour d\'eux.'),(7,'Média','Diriger l\'attention des médias loin des activités vampiriques est un élément clé à la Mascarade. Mettre de l\'emphase sur certains événements peut placer un ennemi dans une situation inconfortable ou discréditer un rival. Avec l\'influence des médias, vous pouvez détruire ou altérer les nouvelles de l\'actualité, contrôler les opérations des stations de nouvelles, des reporters et jouer avec l\'opinion publique. \r\n\r\nLes DJs, éditeur de tout genre, reporteurs, caméraman, photographes et chef d\'antenne sont à votre disposition comme potentiels alliés. Les médias s\'étendent autant au domaine de la télévision, de la radio et aux films.'),(8,'Occulte','Le monde caché du surnaturel est peuplé de factions marginales, de secrets et de conspirations. Évidemment, un vampire sait qu\'il y a des êtres mystérieux qui rôdent simplement à se regarder lui même (Après tout, si les vampires existent...), mais la connaissance précise de ces phénomènes est liés à l\'Habileté Occult et non pas l\'Influence. Avec l\'influence sur l\'Occultisme, vous pouvez chercher des informations pour perfectionner vos connaissances, infiltrer les communautés occultes et trouver des composantes rares pour les rituels magiques. Peut-être même un morceau du légendaire Book of Nod si vous avez les bons contacts.\r\n\r\nChef de cultes, groupes religieux marginaux (paiens, démonologiste, etc.), charlatans, occultistes, adeptes du New Age et quelques éléments aussi dangereux que mystérieux pourront être vos contacts et vos alliés.'),(9,'Pègre','Le monde du crime offre de lucratives possibilités à ses sournois leaders et ses fins stratèges. Armes à feu, argent, drogue et tous les autres objets de désirs vicieux peuvent être retrouvé dans ce monde récompensant les gens talentueux. L\'influence dans le crime organisé vous permet de demander des services de toutes sortes dans l\'univers de l\'illégalité. \r\n\r\nLa Mafia, la Cosa Nostra, vendeurs de drogue, preneurs de paris illégaux, Yakuza, tueurs à gage, groupes criminalisés et fiers à bras peuvent être courtisés comme alliés et contacts, mais à quel prix?'),(10,'Police','\"Protéger et servir\"\" tel est la devise de la police, mais de nos jours, les Kindred et les hommes peuvent fixer qui doit être vraiment protégé et servi. Ceci dit, l\'influence sur la Police peut être très utile pour aider la Mascarade, pour protéger ses avoirs ou alors pour attaquer ceux des autres. Après tout, ce n\'est pas l\'attitude qui sauvera les anarchs contre un raid à la lumière du jour...'),(11,'Politique','Marchander est une seconde nature chez plusieurs vampires, leur faisant ainsi un point commun avec une toute autre sorte de suceur de sang; les politiciens. Changer le programme d\'un parti, contrôler les élections locales, jouer dans les ministères et réclamer des faveurs sont tous dépendant de cette influence. Du chantage bien placé, la corruption et le lobbying sont des munitions en réserve de chaque côté de cette clôture.\r\n\r\nEn tant qu\'alliés et contacts potentiels vous trouverez les sondeurs, lobbyistes, activistes, membres de partis, conseillers spéciaux et politiciens de tous genres; du chef du parti d\'aménagement rural au maire de la ville ou au sénateur.'),(12,'Rue','Ignorer et supplanté par leurs plus riches et lumineux cousins, les sombres ruelles et les pauvres quartiers ont créés leur propre culture pour dealer avec la vie et n\'importe quel étranger qui voudrais venir les déranger.\r\n\r\nL\'influence sur la rue permet de compter les sans abris, les gangs de rue, les assistés sociaux, les petits criminels, les prostituées, les habitants des quartiers pauvres et les éléments des cultures marginales (punks, skinheads, etc.) comme de potentiels alliés.'),(13,'Santé','Certains kindreds comptent sur leurs contacts dans la communauté médicale pour obtenir leur sang. Les nécromanciens et pratiquants des arts mystiques peuvent aussi avoir besoin de morçeaux de corps ou d\'informations médicales pour avancer dans leurs études. Qui plus est, la préservation de la Mascarade nécessite l\'altération de dossiers médicaux ou la falsification de certains diagnostiques; certains kindreds se spécialisent même dans l\'étude des maladies du sang. Toutes ces formes d\'études et de recherches dépendent des champs d\'influence de la santé.\r\n\r\nLes coroners, docteurs, assistants de laboratoire, thérapeutes, pharmaciens et les spécialistes sont des exemples de contacts entourant ce champ d\'influence.'),(14,'Transport','La plupart des kindreds ont leurs havens dans des parties de la ville sécurisées et surveillées. Se déplacer sur de longues distances est difficile, avec la menace des rayons du soleil sans parler des Lupins maraudant dans les grands espaces. Sans cette influence, la société vampirique rapetisserait à une multitude d\'îles de civilisations séparés par un océan de dangers. Cette influence permet aussi d\'avoir accès à des services et des matériaux spéciaux.\r\n\r\nToutes ces choses peuvent être contrôlées par une main mise sur des camionneurs, les ports, les voies ferrées, les aéroport, les compagnies de taxi, les douaniers, les pilotes ainsi que les compagnies de livraisons et des dizaines d\'autres types de contacts.'),(15,'Université','Les institutions scolaires et les recherches sont de l\'essor de l\'influence Université. Avoir accès aux coulisses de l\'éducation peut vous aider avec un nombre surprenant de ressources, des langues mortes aux recherches scientifiques ou simplement à trouver bon nombre de jeunes facilement impressionnables.\r\n\r\nProfesseurs, étudiants autant de niveau maternelle que collégial ou universitaire, diplômés, facultés, confréries étudiantes et le personnel de soutien sont tous des alliés en puissance.');
/*!40000 ALTER TABLE `secteurs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-09 16:54:00
