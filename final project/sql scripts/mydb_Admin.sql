-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Admin`
--

DROP TABLE IF EXISTS `Admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Admin` (
  `User table_id` int NOT NULL,
  `posistion` varchar(45) DEFAULT NULL,
  `permission` varchar(45) DEFAULT NULL,
  `company` varchar(45) DEFAULT NULL,
  `Error_id` int NOT NULL,
  `Task change log_id` int NOT NULL,
  `DB setting Table_id` int NOT NULL,
  PRIMARY KEY (`User table_id`,`Error_id`,`Task change log_id`,`DB setting Table_id`),
  KEY `fk_Admin_Error1_idx` (`Error_id`),
  KEY `fk_Admin_Task change log1_idx` (`Task change log_id`),
  KEY `fk_Admin_DB setting Table1_idx` (`DB setting Table_id`),
  CONSTRAINT `fk_Admin_DB setting Table1` FOREIGN KEY (`DB setting Table_id`) REFERENCES `DBSettingTable` (`id`),
  CONSTRAINT `fk_Admin_Error1` FOREIGN KEY (`Error_id`) REFERENCES `ErrorTable` (`id`),
  CONSTRAINT `fk_Admin_Task change log1` FOREIGN KEY (`Task change log_id`) REFERENCES `TaskChangeLog` (`id`),
  CONSTRAINT `fk_Admin_User table1` FOREIGN KEY (`User table_id`) REFERENCES `UserTable` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Admin`
--

LOCK TABLES `Admin` WRITE;
/*!40000 ALTER TABLE `Admin` DISABLE KEYS */;
INSERT INTO `Admin` VALUES (1,'CTO','Write','NAVER',1,1,1);
/*!40000 ALTER TABLE `Admin` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-06 17:13:59
