-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mn_mortenuit
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
INSERT INTO `ci_sessions` VALUES ('ldnka15elk0588dpmt5lhfc4tlmkmvsq','::1',1508790600,'__ci_last_regenerate|i:1508790393;is_logged_in|b:1;user_info|O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"5\";s:6:\"prenom\";s:7:\"Nicolas\";s:3:\"nom\";s:7:\"Lacombe\";s:8:\"courriel\";s:20:\"niclacombe@gmail.com\";s:8:\"password\";s:172:\"a44103e47f24e6cd33827c1516bd30deb09cba52e42855fb70c9386877f34e6fab7c3a04c04ea784b17c8f57eb1cd09ca05a88260873bce9b5335c4f03333da2lYuqRx1ebulCufDftULS+qUi7Gy2RYPznzfhwWufr1E=\";s:10:\"created_at\";s:19:\"0000-00-00 00:00:00\";s:10:\"updated_at\";N;s:8:\"is_admin\";s:1:\"1\";s:12:\"is_confirmed\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";}'),('sntkla69v8pqogf8or2voscnp5i7renv','::1',1508791041,'__ci_last_regenerate|i:1508790862;is_logged_in|b:1;user_info|O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"5\";s:6:\"prenom\";s:7:\"Nicolas\";s:3:\"nom\";s:7:\"Lacombe\";s:8:\"courriel\";s:20:\"niclacombe@gmail.com\";s:8:\"password\";s:172:\"a44103e47f24e6cd33827c1516bd30deb09cba52e42855fb70c9386877f34e6fab7c3a04c04ea784b17c8f57eb1cd09ca05a88260873bce9b5335c4f03333da2lYuqRx1ebulCufDftULS+qUi7Gy2RYPznzfhwWufr1E=\";s:10:\"created_at\";s:19:\"0000-00-00 00:00:00\";s:10:\"updated_at\";N;s:8:\"is_admin\";s:1:\"1\";s:12:\"is_confirmed\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";}'),('7n7a50e3p19315jg1khkmt9gdt4126k6','::1',1508797169,'__ci_last_regenerate|i:1508797164;is_logged_in|b:1;user_info|O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"5\";s:6:\"prenom\";s:7:\"Nicolas\";s:3:\"nom\";s:7:\"Lacombe\";s:8:\"courriel\";s:20:\"niclacombe@gmail.com\";s:8:\"password\";s:172:\"a44103e47f24e6cd33827c1516bd30deb09cba52e42855fb70c9386877f34e6fab7c3a04c04ea784b17c8f57eb1cd09ca05a88260873bce9b5335c4f03333da2lYuqRx1ebulCufDftULS+qUi7Gy2RYPznzfhwWufr1E=\";s:10:\"created_at\";s:19:\"0000-00-00 00:00:00\";s:10:\"updated_at\";N;s:8:\"is_admin\";s:1:\"1\";s:12:\"is_confirmed\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";}'),('e519u3vphq49pnc942fjk5ch9193n5fc','::1',1508801271,'__ci_last_regenerate|i:1508801017;is_logged_in|b:1;user_info|O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"5\";s:6:\"prenom\";s:7:\"Nicolas\";s:3:\"nom\";s:7:\"Lacombe\";s:8:\"courriel\";s:20:\"niclacombe@gmail.com\";s:8:\"password\";s:172:\"a44103e47f24e6cd33827c1516bd30deb09cba52e42855fb70c9386877f34e6fab7c3a04c04ea784b17c8f57eb1cd09ca05a88260873bce9b5335c4f03333da2lYuqRx1ebulCufDftULS+qUi7Gy2RYPznzfhwWufr1E=\";s:10:\"created_at\";s:19:\"0000-00-00 00:00:00\";s:10:\"updated_at\";N;s:8:\"is_admin\";s:1:\"1\";s:12:\"is_confirmed\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";}'),('cpcs64p0r6490fuabtfo8u5dr924f4bb','::1',1508801625,'__ci_last_regenerate|i:1508801360;is_logged_in|b:1;user_info|O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"5\";s:6:\"prenom\";s:7:\"Nicolas\";s:3:\"nom\";s:7:\"Lacombe\";s:8:\"courriel\";s:20:\"niclacombe@gmail.com\";s:8:\"password\";s:172:\"a44103e47f24e6cd33827c1516bd30deb09cba52e42855fb70c9386877f34e6fab7c3a04c04ea784b17c8f57eb1cd09ca05a88260873bce9b5335c4f03333da2lYuqRx1ebulCufDftULS+qUi7Gy2RYPznzfhwWufr1E=\";s:10:\"created_at\";s:19:\"0000-00-00 00:00:00\";s:10:\"updated_at\";N;s:8:\"is_admin\";s:1:\"1\";s:12:\"is_confirmed\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";}'),('umqpnavif60dk0gifgg3gthc7m2jf9f8','::1',1508801787,'__ci_last_regenerate|i:1508801685;is_logged_in|b:1;user_info|O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"5\";s:6:\"prenom\";s:7:\"Nicolas\";s:3:\"nom\";s:7:\"Lacombe\";s:8:\"courriel\";s:20:\"niclacombe@gmail.com\";s:8:\"password\";s:172:\"a44103e47f24e6cd33827c1516bd30deb09cba52e42855fb70c9386877f34e6fab7c3a04c04ea784b17c8f57eb1cd09ca05a88260873bce9b5335c4f03333da2lYuqRx1ebulCufDftULS+qUi7Gy2RYPznzfhwWufr1E=\";s:10:\"created_at\";s:19:\"0000-00-00 00:00:00\";s:10:\"updated_at\";N;s:8:\"is_admin\";s:1:\"1\";s:12:\"is_confirmed\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";}'),('u0112emmgkqvtmrrdg3gvh1jm0h9qm5g','::1',1508802307,'__ci_last_regenerate|i:1508802050;is_logged_in|b:1;user_info|O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"5\";s:6:\"prenom\";s:7:\"Nicolas\";s:3:\"nom\";s:7:\"Lacombe\";s:8:\"courriel\";s:20:\"niclacombe@gmail.com\";s:8:\"password\";s:172:\"a44103e47f24e6cd33827c1516bd30deb09cba52e42855fb70c9386877f34e6fab7c3a04c04ea784b17c8f57eb1cd09ca05a88260873bce9b5335c4f03333da2lYuqRx1ebulCufDftULS+qUi7Gy2RYPznzfhwWufr1E=\";s:10:\"created_at\";s:19:\"0000-00-00 00:00:00\";s:10:\"updated_at\";N;s:8:\"is_admin\";s:1:\"1\";s:12:\"is_confirmed\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";}'),('eo0tv9trlbq3vfancdf6khmdnck495tt','::1',1508802842,'__ci_last_regenerate|i:1508802595;is_logged_in|b:1;user_info|O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"5\";s:6:\"prenom\";s:7:\"Nicolas\";s:3:\"nom\";s:7:\"Lacombe\";s:8:\"courriel\";s:20:\"niclacombe@gmail.com\";s:8:\"password\";s:172:\"a44103e47f24e6cd33827c1516bd30deb09cba52e42855fb70c9386877f34e6fab7c3a04c04ea784b17c8f57eb1cd09ca05a88260873bce9b5335c4f03333da2lYuqRx1ebulCufDftULS+qUi7Gy2RYPznzfhwWufr1E=\";s:10:\"created_at\";s:19:\"0000-00-00 00:00:00\";s:10:\"updated_at\";N;s:8:\"is_admin\";s:1:\"1\";s:12:\"is_confirmed\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";}'),('mq0itf44h5ffq96p9cs3as6ac6004c40','::1',1508803435,'__ci_last_regenerate|i:1508803167;is_logged_in|b:1;user_info|O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"5\";s:6:\"prenom\";s:7:\"Nicolas\";s:3:\"nom\";s:7:\"Lacombe\";s:8:\"courriel\";s:20:\"niclacombe@gmail.com\";s:8:\"password\";s:172:\"a44103e47f24e6cd33827c1516bd30deb09cba52e42855fb70c9386877f34e6fab7c3a04c04ea784b17c8f57eb1cd09ca05a88260873bce9b5335c4f03333da2lYuqRx1ebulCufDftULS+qUi7Gy2RYPznzfhwWufr1E=\";s:10:\"created_at\";s:19:\"0000-00-00 00:00:00\";s:10:\"updated_at\";N;s:8:\"is_admin\";s:1:\"1\";s:12:\"is_confirmed\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";}'),('uabguu87hneragm1hk5gnta0v6oigi4g','::1',1508803950,'__ci_last_regenerate|i:1508803669;is_logged_in|b:1;user_info|O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"5\";s:6:\"prenom\";s:7:\"Nicolas\";s:3:\"nom\";s:7:\"Lacombe\";s:8:\"courriel\";s:20:\"niclacombe@gmail.com\";s:8:\"password\";s:172:\"a44103e47f24e6cd33827c1516bd30deb09cba52e42855fb70c9386877f34e6fab7c3a04c04ea784b17c8f57eb1cd09ca05a88260873bce9b5335c4f03333da2lYuqRx1ebulCufDftULS+qUi7Gy2RYPznzfhwWufr1E=\";s:10:\"created_at\";s:19:\"0000-00-00 00:00:00\";s:10:\"updated_at\";N;s:8:\"is_admin\";s:1:\"1\";s:12:\"is_confirmed\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";}'),('3ccnb5762c79obj184as1032d7vvivcf','::1',1508804507,'__ci_last_regenerate|i:1508804227;is_logged_in|b:1;user_info|O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"5\";s:6:\"prenom\";s:7:\"Nicolas\";s:3:\"nom\";s:7:\"Lacombe\";s:8:\"courriel\";s:20:\"niclacombe@gmail.com\";s:8:\"password\";s:172:\"a44103e47f24e6cd33827c1516bd30deb09cba52e42855fb70c9386877f34e6fab7c3a04c04ea784b17c8f57eb1cd09ca05a88260873bce9b5335c4f03333da2lYuqRx1ebulCufDftULS+qUi7Gy2RYPznzfhwWufr1E=\";s:10:\"created_at\";s:19:\"0000-00-00 00:00:00\";s:10:\"updated_at\";N;s:8:\"is_admin\";s:1:\"1\";s:12:\"is_confirmed\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";}'),('2r2vbsc2lth5g7f4tqovtrrtjhta2ts9','::1',1508804894,'__ci_last_regenerate|i:1508804596;is_logged_in|b:1;user_info|O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"5\";s:6:\"prenom\";s:7:\"Nicolas\";s:3:\"nom\";s:7:\"Lacombe\";s:8:\"courriel\";s:20:\"niclacombe@gmail.com\";s:8:\"password\";s:172:\"a44103e47f24e6cd33827c1516bd30deb09cba52e42855fb70c9386877f34e6fab7c3a04c04ea784b17c8f57eb1cd09ca05a88260873bce9b5335c4f03333da2lYuqRx1ebulCufDftULS+qUi7Gy2RYPznzfhwWufr1E=\";s:10:\"created_at\";s:19:\"0000-00-00 00:00:00\";s:10:\"updated_at\";N;s:8:\"is_admin\";s:1:\"1\";s:12:\"is_confirmed\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";}'),('mhke63t5u89fdeoqmpj40ho6tip32ktb','::1',1508805179,'__ci_last_regenerate|i:1508804927;is_logged_in|b:1;user_info|O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"5\";s:6:\"prenom\";s:7:\"Nicolas\";s:3:\"nom\";s:7:\"Lacombe\";s:8:\"courriel\";s:20:\"niclacombe@gmail.com\";s:8:\"password\";s:172:\"a44103e47f24e6cd33827c1516bd30deb09cba52e42855fb70c9386877f34e6fab7c3a04c04ea784b17c8f57eb1cd09ca05a88260873bce9b5335c4f03333da2lYuqRx1ebulCufDftULS+qUi7Gy2RYPznzfhwWufr1E=\";s:10:\"created_at\";s:19:\"0000-00-00 00:00:00\";s:10:\"updated_at\";N;s:8:\"is_admin\";s:1:\"1\";s:12:\"is_confirmed\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";}'),('t34isei76b9pdf5uactjaf1bho9rlfeq','::1',1508805522,'__ci_last_regenerate|i:1508805254;is_logged_in|b:1;user_info|O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"5\";s:6:\"prenom\";s:7:\"Nicolas\";s:3:\"nom\";s:7:\"Lacombe\";s:8:\"courriel\";s:20:\"niclacombe@gmail.com\";s:8:\"password\";s:172:\"a44103e47f24e6cd33827c1516bd30deb09cba52e42855fb70c9386877f34e6fab7c3a04c04ea784b17c8f57eb1cd09ca05a88260873bce9b5335c4f03333da2lYuqRx1ebulCufDftULS+qUi7Gy2RYPznzfhwWufr1E=\";s:10:\"created_at\";s:19:\"0000-00-00 00:00:00\";s:10:\"updated_at\";N;s:8:\"is_admin\";s:1:\"1\";s:12:\"is_confirmed\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";}'),('v7bh232eiktjn2cre3gkrtgpotoi5593','::1',1508805959,'__ci_last_regenerate|i:1508805671;is_logged_in|b:1;user_info|O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"5\";s:6:\"prenom\";s:7:\"Nicolas\";s:3:\"nom\";s:7:\"Lacombe\";s:8:\"courriel\";s:20:\"niclacombe@gmail.com\";s:8:\"password\";s:172:\"a44103e47f24e6cd33827c1516bd30deb09cba52e42855fb70c9386877f34e6fab7c3a04c04ea784b17c8f57eb1cd09ca05a88260873bce9b5335c4f03333da2lYuqRx1ebulCufDftULS+qUi7Gy2RYPznzfhwWufr1E=\";s:10:\"created_at\";s:19:\"0000-00-00 00:00:00\";s:10:\"updated_at\";N;s:8:\"is_admin\";s:1:\"1\";s:12:\"is_confirmed\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";}'),('n1mgatgt328s8rno9r3f7dajoioq5626','::1',1508806214,'__ci_last_regenerate|i:1508806001;is_logged_in|b:1;user_info|O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"5\";s:6:\"prenom\";s:7:\"Nicolas\";s:3:\"nom\";s:7:\"Lacombe\";s:8:\"courriel\";s:20:\"niclacombe@gmail.com\";s:8:\"password\";s:172:\"a44103e47f24e6cd33827c1516bd30deb09cba52e42855fb70c9386877f34e6fab7c3a04c04ea784b17c8f57eb1cd09ca05a88260873bce9b5335c4f03333da2lYuqRx1ebulCufDftULS+qUi7Gy2RYPznzfhwWufr1E=\";s:10:\"created_at\";s:19:\"0000-00-00 00:00:00\";s:10:\"updated_at\";N;s:8:\"is_admin\";s:1:\"1\";s:12:\"is_confirmed\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";}'),('tj2pt3a0ek3jc30k5bj85fvp9p3qsup5','::1',1508806810,'__ci_last_regenerate|i:1508806675;is_logged_in|b:1;user_info|O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"5\";s:6:\"prenom\";s:7:\"Nicolas\";s:3:\"nom\";s:7:\"Lacombe\";s:8:\"courriel\";s:20:\"niclacombe@gmail.com\";s:8:\"password\";s:172:\"a44103e47f24e6cd33827c1516bd30deb09cba52e42855fb70c9386877f34e6fab7c3a04c04ea784b17c8f57eb1cd09ca05a88260873bce9b5335c4f03333da2lYuqRx1ebulCufDftULS+qUi7Gy2RYPznzfhwWufr1E=\";s:10:\"created_at\";s:19:\"0000-00-00 00:00:00\";s:10:\"updated_at\";N;s:8:\"is_admin\";s:1:\"1\";s:12:\"is_confirmed\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";}'),('t2j0an1a4gpedqfad7867tc2jk200446','::1',1508807596,'__ci_last_regenerate|i:1508807299;is_logged_in|b:1;user_info|O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"5\";s:6:\"prenom\";s:7:\"Nicolas\";s:3:\"nom\";s:7:\"Lacombe\";s:8:\"courriel\";s:20:\"niclacombe@gmail.com\";s:8:\"password\";s:172:\"a44103e47f24e6cd33827c1516bd30deb09cba52e42855fb70c9386877f34e6fab7c3a04c04ea784b17c8f57eb1cd09ca05a88260873bce9b5335c4f03333da2lYuqRx1ebulCufDftULS+qUi7Gy2RYPznzfhwWufr1E=\";s:10:\"created_at\";s:19:\"0000-00-00 00:00:00\";s:10:\"updated_at\";N;s:8:\"is_admin\";s:1:\"1\";s:12:\"is_confirmed\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";}'),('ouqjadtobkj7enb8dhr30v0gtlaqe1ad','::1',1508807846,'__ci_last_regenerate|i:1508807623;is_logged_in|b:1;user_info|O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"5\";s:6:\"prenom\";s:7:\"Nicolas\";s:3:\"nom\";s:7:\"Lacombe\";s:8:\"courriel\";s:20:\"niclacombe@gmail.com\";s:8:\"password\";s:172:\"a44103e47f24e6cd33827c1516bd30deb09cba52e42855fb70c9386877f34e6fab7c3a04c04ea784b17c8f57eb1cd09ca05a88260873bce9b5335c4f03333da2lYuqRx1ebulCufDftULS+qUi7Gy2RYPznzfhwWufr1E=\";s:10:\"created_at\";s:19:\"0000-00-00 00:00:00\";s:10:\"updated_at\";N;s:8:\"is_admin\";s:1:\"1\";s:12:\"is_confirmed\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";}'),('5jbamj0p2gtrsr949rm8fqins0ud1tag','::1',1508862458,'__ci_last_regenerate|i:1508862218;is_logged_in|b:1;user_info|O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"5\";s:6:\"prenom\";s:7:\"Nicolas\";s:3:\"nom\";s:7:\"Lacombe\";s:8:\"courriel\";s:20:\"niclacombe@gmail.com\";s:8:\"password\";s:172:\"a44103e47f24e6cd33827c1516bd30deb09cba52e42855fb70c9386877f34e6fab7c3a04c04ea784b17c8f57eb1cd09ca05a88260873bce9b5335c4f03333da2lYuqRx1ebulCufDftULS+qUi7Gy2RYPznzfhwWufr1E=\";s:10:\"created_at\";s:19:\"0000-00-00 00:00:00\";s:10:\"updated_at\";N;s:8:\"is_admin\";s:1:\"1\";s:12:\"is_confirmed\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";}'),('legiu6skq6hg2om5rh49t5uaa20231bj','::1',1508862662,'__ci_last_regenerate|i:1508862588;is_logged_in|b:1;user_info|O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"5\";s:6:\"prenom\";s:7:\"Nicolas\";s:3:\"nom\";s:7:\"Lacombe\";s:8:\"courriel\";s:20:\"niclacombe@gmail.com\";s:8:\"password\";s:172:\"a44103e47f24e6cd33827c1516bd30deb09cba52e42855fb70c9386877f34e6fab7c3a04c04ea784b17c8f57eb1cd09ca05a88260873bce9b5335c4f03333da2lYuqRx1ebulCufDftULS+qUi7Gy2RYPznzfhwWufr1E=\";s:10:\"created_at\";s:19:\"0000-00-00 00:00:00\";s:10:\"updated_at\";N;s:8:\"is_admin\";s:1:\"1\";s:12:\"is_confirmed\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";}'),('er8gld3u65ktc16p79bj52m7kbdrobv0','::1',1508863674,'__ci_last_regenerate|i:1508863421;is_logged_in|b:1;user_info|O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"5\";s:6:\"prenom\";s:7:\"Nicolas\";s:3:\"nom\";s:7:\"Lacombe\";s:8:\"courriel\";s:20:\"niclacombe@gmail.com\";s:8:\"password\";s:172:\"a44103e47f24e6cd33827c1516bd30deb09cba52e42855fb70c9386877f34e6fab7c3a04c04ea784b17c8f57eb1cd09ca05a88260873bce9b5335c4f03333da2lYuqRx1ebulCufDftULS+qUi7Gy2RYPznzfhwWufr1E=\";s:10:\"created_at\";s:19:\"0000-00-00 00:00:00\";s:10:\"updated_at\";N;s:8:\"is_admin\";s:1:\"1\";s:12:\"is_confirmed\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";}'),('3qmkrhbgd0f20g8nhr2j8hotfjrp28l5','::1',1508863821,'__ci_last_regenerate|i:1508863764;is_logged_in|b:1;user_info|O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"5\";s:6:\"prenom\";s:7:\"Nicolas\";s:3:\"nom\";s:7:\"Lacombe\";s:8:\"courriel\";s:20:\"niclacombe@gmail.com\";s:8:\"password\";s:172:\"a44103e47f24e6cd33827c1516bd30deb09cba52e42855fb70c9386877f34e6fab7c3a04c04ea784b17c8f57eb1cd09ca05a88260873bce9b5335c4f03333da2lYuqRx1ebulCufDftULS+qUi7Gy2RYPznzfhwWufr1E=\";s:10:\"created_at\";s:19:\"0000-00-00 00:00:00\";s:10:\"updated_at\";N;s:8:\"is_admin\";s:1:\"1\";s:12:\"is_confirmed\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";}'),('k332rlig697hvauincoq0ll4k7ir1c5j','::1',1508864336,'__ci_last_regenerate|i:1508864068;is_logged_in|b:1;user_info|O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"5\";s:6:\"prenom\";s:7:\"Nicolas\";s:3:\"nom\";s:7:\"Lacombe\";s:8:\"courriel\";s:20:\"niclacombe@gmail.com\";s:8:\"password\";s:172:\"a44103e47f24e6cd33827c1516bd30deb09cba52e42855fb70c9386877f34e6fab7c3a04c04ea784b17c8f57eb1cd09ca05a88260873bce9b5335c4f03333da2lYuqRx1ebulCufDftULS+qUi7Gy2RYPznzfhwWufr1E=\";s:10:\"created_at\";s:19:\"0000-00-00 00:00:00\";s:10:\"updated_at\";N;s:8:\"is_admin\";s:1:\"1\";s:12:\"is_confirmed\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";}'),('ar4e1lo0mt583hvvtpt8jnpbqkk0ev28','::1',1508864670,'__ci_last_regenerate|i:1508864418;is_logged_in|b:1;user_info|O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"5\";s:6:\"prenom\";s:7:\"Nicolas\";s:3:\"nom\";s:7:\"Lacombe\";s:8:\"courriel\";s:20:\"niclacombe@gmail.com\";s:8:\"password\";s:172:\"a44103e47f24e6cd33827c1516bd30deb09cba52e42855fb70c9386877f34e6fab7c3a04c04ea784b17c8f57eb1cd09ca05a88260873bce9b5335c4f03333da2lYuqRx1ebulCufDftULS+qUi7Gy2RYPznzfhwWufr1E=\";s:10:\"created_at\";s:19:\"0000-00-00 00:00:00\";s:10:\"updated_at\";N;s:8:\"is_admin\";s:1:\"1\";s:12:\"is_confirmed\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";}'),('ofpnerjpbr6cgdg086neivfts6gklsp8','::1',1508864828,'__ci_last_regenerate|i:1508864769;is_logged_in|b:1;user_info|O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"5\";s:6:\"prenom\";s:7:\"Nicolas\";s:3:\"nom\";s:7:\"Lacombe\";s:8:\"courriel\";s:20:\"niclacombe@gmail.com\";s:8:\"password\";s:172:\"a44103e47f24e6cd33827c1516bd30deb09cba52e42855fb70c9386877f34e6fab7c3a04c04ea784b17c8f57eb1cd09ca05a88260873bce9b5335c4f03333da2lYuqRx1ebulCufDftULS+qUi7Gy2RYPznzfhwWufr1E=\";s:10:\"created_at\";s:19:\"0000-00-00 00:00:00\";s:10:\"updated_at\";N;s:8:\"is_admin\";s:1:\"1\";s:12:\"is_confirmed\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";}'),('l0bi409745l7gh45lgkjhq9eu7tie7ra','::1',1508865211,'__ci_last_regenerate|i:1508865158;is_logged_in|b:1;user_info|O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"5\";s:6:\"prenom\";s:7:\"Nicolas\";s:3:\"nom\";s:7:\"Lacombe\";s:8:\"courriel\";s:20:\"niclacombe@gmail.com\";s:8:\"password\";s:172:\"a44103e47f24e6cd33827c1516bd30deb09cba52e42855fb70c9386877f34e6fab7c3a04c04ea784b17c8f57eb1cd09ca05a88260873bce9b5335c4f03333da2lYuqRx1ebulCufDftULS+qUi7Gy2RYPznzfhwWufr1E=\";s:10:\"created_at\";s:19:\"0000-00-00 00:00:00\";s:10:\"updated_at\";N;s:8:\"is_admin\";s:1:\"1\";s:12:\"is_confirmed\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";}'),('918nkek6qk5a45sb00ujpa5khn72cgkl','::1',1508867181,'__ci_last_regenerate|i:1508866910;is_logged_in|b:1;user_info|O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"5\";s:6:\"prenom\";s:7:\"Nicolas\";s:3:\"nom\";s:7:\"Lacombe\";s:8:\"courriel\";s:20:\"niclacombe@gmail.com\";s:8:\"password\";s:172:\"a44103e47f24e6cd33827c1516bd30deb09cba52e42855fb70c9386877f34e6fab7c3a04c04ea784b17c8f57eb1cd09ca05a88260873bce9b5335c4f03333da2lYuqRx1ebulCufDftULS+qUi7Gy2RYPznzfhwWufr1E=\";s:10:\"created_at\";s:19:\"0000-00-00 00:00:00\";s:10:\"updated_at\";N;s:8:\"is_admin\";s:1:\"1\";s:12:\"is_confirmed\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";}'),('sgkbf6jkhkv21cehcvh5mk1o2mk899kt','::1',1508867402,'__ci_last_regenerate|i:1508867243;is_logged_in|b:1;user_info|O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"5\";s:6:\"prenom\";s:7:\"Nicolas\";s:3:\"nom\";s:7:\"Lacombe\";s:8:\"courriel\";s:20:\"niclacombe@gmail.com\";s:8:\"password\";s:172:\"a44103e47f24e6cd33827c1516bd30deb09cba52e42855fb70c9386877f34e6fab7c3a04c04ea784b17c8f57eb1cd09ca05a88260873bce9b5335c4f03333da2lYuqRx1ebulCufDftULS+qUi7Gy2RYPznzfhwWufr1E=\";s:10:\"created_at\";s:19:\"0000-00-00 00:00:00\";s:10:\"updated_at\";N;s:8:\"is_admin\";s:1:\"1\";s:12:\"is_confirmed\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";}'),('52tl3emj4iesoefbl7rvqs7qppl48old','::1',1508867916,'__ci_last_regenerate|i:1508867623;is_logged_in|b:1;user_info|O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"5\";s:6:\"prenom\";s:7:\"Nicolas\";s:3:\"nom\";s:7:\"Lacombe\";s:8:\"courriel\";s:20:\"niclacombe@gmail.com\";s:8:\"password\";s:172:\"a44103e47f24e6cd33827c1516bd30deb09cba52e42855fb70c9386877f34e6fab7c3a04c04ea784b17c8f57eb1cd09ca05a88260873bce9b5335c4f03333da2lYuqRx1ebulCufDftULS+qUi7Gy2RYPznzfhwWufr1E=\";s:10:\"created_at\";s:19:\"0000-00-00 00:00:00\";s:10:\"updated_at\";N;s:8:\"is_admin\";s:1:\"1\";s:12:\"is_confirmed\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";}'),('uh4b38dj8ba0cdupvu0ap7ar3adp3n5m','::1',1508868258,'__ci_last_regenerate|i:1508868091;is_logged_in|b:1;user_info|O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"5\";s:6:\"prenom\";s:7:\"Nicolas\";s:3:\"nom\";s:7:\"Lacombe\";s:8:\"courriel\";s:20:\"niclacombe@gmail.com\";s:8:\"password\";s:172:\"a44103e47f24e6cd33827c1516bd30deb09cba52e42855fb70c9386877f34e6fab7c3a04c04ea784b17c8f57eb1cd09ca05a88260873bce9b5335c4f03333da2lYuqRx1ebulCufDftULS+qUi7Gy2RYPznzfhwWufr1E=\";s:10:\"created_at\";s:19:\"0000-00-00 00:00:00\";s:10:\"updated_at\";N;s:8:\"is_admin\";s:1:\"1\";s:12:\"is_confirmed\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";}'),('v4f7abo043pvbo7dgks0por3ln0p875u','::1',1508868751,'__ci_last_regenerate|i:1508868547;is_logged_in|b:1;user_info|O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"5\";s:6:\"prenom\";s:7:\"Nicolas\";s:3:\"nom\";s:7:\"Lacombe\";s:8:\"courriel\";s:20:\"niclacombe@gmail.com\";s:8:\"password\";s:172:\"a44103e47f24e6cd33827c1516bd30deb09cba52e42855fb70c9386877f34e6fab7c3a04c04ea784b17c8f57eb1cd09ca05a88260873bce9b5335c4f03333da2lYuqRx1ebulCufDftULS+qUi7Gy2RYPznzfhwWufr1E=\";s:10:\"created_at\";s:19:\"0000-00-00 00:00:00\";s:10:\"updated_at\";N;s:8:\"is_admin\";s:1:\"1\";s:12:\"is_confirmed\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";}'),('u1krbf0tsapfsu8jsfm2ahph0q57jbkj','::1',1508869052,'__ci_last_regenerate|i:1508869030;is_logged_in|b:1;user_info|O:8:\"stdClass\":10:{s:2:\"id\";s:1:\"5\";s:6:\"prenom\";s:7:\"Nicolas\";s:3:\"nom\";s:7:\"Lacombe\";s:8:\"courriel\";s:20:\"niclacombe@gmail.com\";s:8:\"password\";s:172:\"a44103e47f24e6cd33827c1516bd30deb09cba52e42855fb70c9386877f34e6fab7c3a04c04ea784b17c8f57eb1cd09ca05a88260873bce9b5335c4f03333da2lYuqRx1ebulCufDftULS+qUi7Gy2RYPznzfhwWufr1E=\";s:10:\"created_at\";s:19:\"0000-00-00 00:00:00\";s:10:\"updated_at\";N;s:8:\"is_admin\";s:1:\"1\";s:12:\"is_confirmed\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";}');
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

-- Dump completed on 2017-10-24 14:21:27
