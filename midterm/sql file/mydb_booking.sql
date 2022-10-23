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
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `id` int NOT NULL,
  `booking_ref` int DEFAULT NULL,
  `Location_dep` int NOT NULL,
  `Location_arr` int NOT NULL,
  `Vehicle_id` int NOT NULL,
  `Driver_id` int NOT NULL,
  `Official_id` int NOT NULL,
  `dep_time` datetime DEFAULT NULL,
  `arr_time` datetime DEFAULT NULL,
  `dep_odo` varchar(45) DEFAULT NULL,
  `arr_odo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_booking_location_idx` (`Location_dep`),
  KEY `fk_booking_location1_idx` (`Location_arr`),
  KEY `fk_booking_Vehicle1_idx` (`Vehicle_id`),
  KEY `fk_booking_driver1_idx` (`Driver_id`),
  KEY `fk_booking_Official1_idx` (`Official_id`),
  CONSTRAINT `fk_booking_driver1` FOREIGN KEY (`Driver_id`) REFERENCES `Driver` (`id`),
  CONSTRAINT `fk_booking_location` FOREIGN KEY (`Location_dep`) REFERENCES `Location` (`locid`),
  CONSTRAINT `fk_booking_location1` FOREIGN KEY (`Location_arr`) REFERENCES `Location` (`locid`),
  CONSTRAINT `fk_booking_Official1` FOREIGN KEY (`Official_id`) REFERENCES `Official` (`id`),
  CONSTRAINT `fk_booking_Vehicle1` FOREIGN KEY (`Vehicle_id`) REFERENCES `Vehicle` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (1,23,1,2,1,1,1,'2022-10-01 12:30:30','2022-10-01 11:30:30','4400','4350');
INSERT INTO `booking` VALUES (2,24,2,1,2,2,2,'2022-10-01 12:35:30','2022-10-01 10:30:30','2200','2195');
INSERT INTO `booking` VALUES (3,25,3,2,3,3,3,'2022-10-02 12:30:30','2022-10-01 09:30:30','1000','509');
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-23 20:54:45
