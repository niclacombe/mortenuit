-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: mn_mortenuit
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
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ci_sessions`
--

LOCK TABLES `ci_sessions` WRITE;
/*!40000 ALTER TABLE `ci_sessions` DISABLE KEYS */;
INSERT INTO `ci_sessions` VALUES ('ed7c14h6ieb3vm1aku3ris949ukmjrf7','::1',1509236399,'__ci_last_regenerate|i:1509236372;is_logged_in|b:1;user_info|O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"5\";s:6:\"prenom\";s:7:\"Nicolas\";s:3:\"nom\";s:7:\"Lacombe\";s:8:\"courriel\";s:20:\"niclacombe@gmail.com\";s:8:\"password\";s:172:\"a44103e47f24e6cd33827c1516bd30deb09cba52e42855fb70c9386877f34e6fab7c3a04c04ea784b17c8f57eb1cd09ca05a88260873bce9b5335c4f03333da2lYuqRx1ebulCufDftULS+qUi7Gy2RYPznzfhwWufr1E=\";s:10:\"created_at\";s:19:\"0000-00-00 00:00:00\";s:10:\"updated_at\";N;s:8:\"is_admin\";s:1:\"1\";s:12:\"is_confirmed\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";}'),('13c9jlavaejibiij81fgff9edoi73h0u','::1',1509237716,'__ci_last_regenerate|i:1509237442;is_logged_in|b:1;user_info|O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"5\";s:6:\"prenom\";s:7:\"Nicolas\";s:3:\"nom\";s:7:\"Lacombe\";s:8:\"courriel\";s:20:\"niclacombe@gmail.com\";s:8:\"password\";s:172:\"a44103e47f24e6cd33827c1516bd30deb09cba52e42855fb70c9386877f34e6fab7c3a04c04ea784b17c8f57eb1cd09ca05a88260873bce9b5335c4f03333da2lYuqRx1ebulCufDftULS+qUi7Gy2RYPznzfhwWufr1E=\";s:10:\"created_at\";s:19:\"0000-00-00 00:00:00\";s:10:\"updated_at\";N;s:8:\"is_admin\";s:1:\"1\";s:12:\"is_confirmed\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";}'),('73fq9jo4t0nkvgr6hlum6ee4d4hfht0l','::1',1509238307,'__ci_last_regenerate|i:1509237746;is_logged_in|b:1;user_info|O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"5\";s:6:\"prenom\";s:7:\"Nicolas\";s:3:\"nom\";s:7:\"Lacombe\";s:8:\"courriel\";s:20:\"niclacombe@gmail.com\";s:8:\"password\";s:172:\"a44103e47f24e6cd33827c1516bd30deb09cba52e42855fb70c9386877f34e6fab7c3a04c04ea784b17c8f57eb1cd09ca05a88260873bce9b5335c4f03333da2lYuqRx1ebulCufDftULS+qUi7Gy2RYPznzfhwWufr1E=\";s:10:\"created_at\";s:19:\"0000-00-00 00:00:00\";s:10:\"updated_at\";N;s:8:\"is_admin\";s:1:\"1\";s:12:\"is_confirmed\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";}'),('bg3iqs3pbb6qpqdaubj3btvha3ft66m1','::1',1509238638,'__ci_last_regenerate|i:1509238311;is_logged_in|b:1;user_info|O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"5\";s:6:\"prenom\";s:7:\"Nicolas\";s:3:\"nom\";s:7:\"Lacombe\";s:8:\"courriel\";s:20:\"niclacombe@gmail.com\";s:8:\"password\";s:172:\"a44103e47f24e6cd33827c1516bd30deb09cba52e42855fb70c9386877f34e6fab7c3a04c04ea784b17c8f57eb1cd09ca05a88260873bce9b5335c4f03333da2lYuqRx1ebulCufDftULS+qUi7Gy2RYPznzfhwWufr1E=\";s:10:\"created_at\";s:19:\"0000-00-00 00:00:00\";s:10:\"updated_at\";N;s:8:\"is_admin\";s:1:\"1\";s:12:\"is_confirmed\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";}'),('u3lt13h4470aaluk1m8lu0rs7gm96kur','::1',1509240397,'__ci_last_regenerate|i:1509238706;is_logged_in|b:1;user_info|O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"5\";s:6:\"prenom\";s:7:\"Nicolas\";s:3:\"nom\";s:7:\"Lacombe\";s:8:\"courriel\";s:20:\"niclacombe@gmail.com\";s:8:\"password\";s:172:\"a44103e47f24e6cd33827c1516bd30deb09cba52e42855fb70c9386877f34e6fab7c3a04c04ea784b17c8f57eb1cd09ca05a88260873bce9b5335c4f03333da2lYuqRx1ebulCufDftULS+qUi7Gy2RYPznzfhwWufr1E=\";s:10:\"created_at\";s:19:\"0000-00-00 00:00:00\";s:10:\"updated_at\";N;s:8:\"is_admin\";s:1:\"1\";s:12:\"is_confirmed\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";}'),('5csq1m1a8mrqko9b3ann68qdlfusd6u6','::1',1509240712,'__ci_last_regenerate|i:1509240432;is_logged_in|b:1;user_info|O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"5\";s:6:\"prenom\";s:7:\"Nicolas\";s:3:\"nom\";s:7:\"Lacombe\";s:8:\"courriel\";s:20:\"niclacombe@gmail.com\";s:8:\"password\";s:172:\"a44103e47f24e6cd33827c1516bd30deb09cba52e42855fb70c9386877f34e6fab7c3a04c04ea784b17c8f57eb1cd09ca05a88260873bce9b5335c4f03333da2lYuqRx1ebulCufDftULS+qUi7Gy2RYPznzfhwWufr1E=\";s:10:\"created_at\";s:19:\"0000-00-00 00:00:00\";s:10:\"updated_at\";N;s:8:\"is_admin\";s:1:\"1\";s:12:\"is_confirmed\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";}'),('ttmrb3dmanue4qq7b2muf3hn63ofnr88','::1',1509245108,'__ci_last_regenerate|i:1509241392;is_logged_in|b:1;user_info|O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"5\";s:6:\"prenom\";s:7:\"Nicolas\";s:3:\"nom\";s:7:\"Lacombe\";s:8:\"courriel\";s:20:\"niclacombe@gmail.com\";s:8:\"password\";s:172:\"a44103e47f24e6cd33827c1516bd30deb09cba52e42855fb70c9386877f34e6fab7c3a04c04ea784b17c8f57eb1cd09ca05a88260873bce9b5335c4f03333da2lYuqRx1ebulCufDftULS+qUi7Gy2RYPznzfhwWufr1E=\";s:10:\"created_at\";s:19:\"0000-00-00 00:00:00\";s:10:\"updated_at\";N;s:8:\"is_admin\";s:1:\"1\";s:12:\"is_confirmed\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";}'),('g3n1q9ai9ojbip4vbrjc5r429ij7houk','::1',1509245130,'__ci_last_regenerate|i:1509245112;is_logged_in|b:1;user_info|O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"5\";s:6:\"prenom\";s:7:\"Nicolas\";s:3:\"nom\";s:7:\"Lacombe\";s:8:\"courriel\";s:20:\"niclacombe@gmail.com\";s:8:\"password\";s:172:\"a44103e47f24e6cd33827c1516bd30deb09cba52e42855fb70c9386877f34e6fab7c3a04c04ea784b17c8f57eb1cd09ca05a88260873bce9b5335c4f03333da2lYuqRx1ebulCufDftULS+qUi7Gy2RYPznzfhwWufr1E=\";s:10:\"created_at\";s:19:\"0000-00-00 00:00:00\";s:10:\"updated_at\";N;s:8:\"is_admin\";s:1:\"1\";s:12:\"is_confirmed\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";}'),('s4bhdfiav5l4vb73beq9mglh55v6qr1r','::1',1509245650,'__ci_last_regenerate|i:1509245650;is_logged_in|b:1;user_info|O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"5\";s:6:\"prenom\";s:7:\"Nicolas\";s:3:\"nom\";s:7:\"Lacombe\";s:8:\"courriel\";s:20:\"niclacombe@gmail.com\";s:8:\"password\";s:172:\"a44103e47f24e6cd33827c1516bd30deb09cba52e42855fb70c9386877f34e6fab7c3a04c04ea784b17c8f57eb1cd09ca05a88260873bce9b5335c4f03333da2lYuqRx1ebulCufDftULS+qUi7Gy2RYPznzfhwWufr1E=\";s:10:\"created_at\";s:19:\"0000-00-00 00:00:00\";s:10:\"updated_at\";N;s:8:\"is_admin\";s:1:\"1\";s:12:\"is_confirmed\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";}');
/*!40000 ALTER TABLE `ci_sessions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-29 23:05:15
