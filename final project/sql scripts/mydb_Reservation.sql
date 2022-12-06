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
-- Table structure for table `Reservation`
--

DROP TABLE IF EXISTS `Reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Reservation` (
  `reservation id` int NOT NULL,
  `seat number` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `User table_id` int NOT NULL,
  `Event table_id` int NOT NULL,
  `Seat table_id` int NOT NULL,
  `Artist table_id` int NOT NULL,
  PRIMARY KEY (`reservation id`,`User table_id`,`Event table_id`,`Seat table_id`,`Artist table_id`),
  KEY `fk_Reservation_User table_idx` (`User table_id`),
  KEY `fk_Reservation_Concert table1_idx` (`Event table_id`),
  KEY `fk_Reservation_Seat table1_idx` (`Seat table_id`),
  KEY `fk_Reservation_Artist table1_idx` (`Artist table_id`),
  CONSTRAINT `fk_Reservation_Artist table1` FOREIGN KEY (`Artist table_id`) REFERENCES `ArtistTable` (`id`),
  CONSTRAINT `fk_Reservation_Concert table1` FOREIGN KEY (`Event table_id`) REFERENCES `EventTable` (`id`),
  CONSTRAINT `fk_Reservation_Seat table1` FOREIGN KEY (`Seat table_id`) REFERENCES `SeatTable` (`id`),
  CONSTRAINT `fk_Reservation_User table` FOREIGN KEY (`User table_id`) REFERENCES `UserTable` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reservation`
--

LOCK TABLES `Reservation` WRITE;
/*!40000 ALTER TABLE `Reservation` DISABLE KEYS */;
INSERT INTO `Reservation` VALUES (1,'31','30000',1,1,1,1);
/*!40000 ALTER TABLE `Reservation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-06 17:13:58
