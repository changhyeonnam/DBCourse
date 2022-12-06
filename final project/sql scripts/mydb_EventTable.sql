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
-- Table structure for table `EventTable`
--

DROP TABLE IF EXISTS `EventTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EventTable` (
  `id` int NOT NULL,
  `concert name` varchar(45) DEFAULT NULL,
  `genre` varchar(45) DEFAULT NULL,
  `rate` varchar(45) DEFAULT NULL,
  `start time` varchar(45) DEFAULT NULL,
  `end time` varchar(45) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `Artist table_id` int NOT NULL,
  `Concert hall address` varchar(45) DEFAULT NULL,
  `Concert hall max` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`,`Artist table_id`),
  KEY `fk_Concert table_Artist table1_idx` (`Artist table_id`),
  CONSTRAINT `fk_Concert table_Artist table1` FOREIGN KEY (`Artist table_id`) REFERENCES `ArtistTable` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EventTable`
--

LOCK TABLES `EventTable` WRITE;
/*!40000 ALTER TABLE `EventTable` DISABLE KEYS */;
INSERT INTO `EventTable` VALUES (1,'davich concert','BALAD','ALL','20:00','21:00','20221231',1,'88-2 Bangi-dong, Songpa-gu, Seoul','1000'),(1,'davich concert','BALAD','ALL','20:00','21:00','20221231',2,'88-2 Bangi-dong, Songpa-gu, Seoul','1000');
/*!40000 ALTER TABLE `EventTable` ENABLE KEYS */;
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
