CREATE DATABASE  IF NOT EXISTS `redsight` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `redsight`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: redsight
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
-- Table structure for table `station`
--

DROP TABLE IF EXISTS `station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `station` (
  `stationID` varchar(10) NOT NULL,
  `stationName` text,
  `stationNo` int DEFAULT NULL,
  `stationOwner` text,
  `locID` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`stationID`),
  KEY `stationLoc_idx` (`locID`),
  CONSTRAINT `stationLoc` FOREIGN KEY (`locID`) REFERENCES `location` (`locID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `station`
--

LOCK TABLES `station` WRITE;
/*!40000 ALTER TABLE `station` DISABLE KEYS */;
INSERT INTO `station` VALUES ('EPAdiv1','EPA Barishal 1',1,'EPA','divbar'),('EPAdiv10','EPA Barishal 10',10,'EPA','divbar'),('EPAdiv11','EPA Barishal 11',11,'EPA','divbar'),('EPAdiv12','EPA Barishal 12',12,'EPA','divbar'),('EPAdiv13','EPA Barishal 13',13,'EPA','divbar'),('EPAdiv14','EPA Barishal 14',14,'EPA','divbar'),('EPAdiv15','EPA Barishal 15',15,'EPA','divbar'),('EPAdiv16','EPA Barishal 16',16,'EPA','divbar'),('EPAdiv17','EPA Barishal 17',17,'EPA','divbar'),('EPAdiv18','EPA Barishal 18',18,'EPA','divbar'),('EPAdiv19','EPA Barishal 19',19,'EPA','divbar'),('EPAdiv2','EPA Barishal 2',2,'EPA','divbar'),('EPAdiv20','EPA Barishal 20',20,'EPA','divbar'),('EPAdiv21','EPA Barishal 21',21,'EPA','divbar'),('EPAdiv22','EPA Barishal 22',22,'EPA','divbar'),('EPAdiv23','EPA Barishal 23',23,'EPA','divbar'),('EPAdiv3','EPA Barishal 3',3,'EPA','divbar'),('EPAdiv4','EPA Barishal 4',4,'EPA','divbar'),('EPAdiv5','EPA Barishal 5',5,'EPA','divbar'),('EPAdiv6','EPA Barishal 6',6,'EPA','divbar'),('EPAdiv7','EPA Barishal 7',7,'EPA','divbar'),('EPAdiv8','EPA Barishal 8',8,'EPA','divbar'),('EPAdiv9','EPA Barishal 9',9,'EPA','divbar'),('IQAdiv1','IQAir Dhaka 1',1,'IQAir','divdha'),('IQAdiv10','IQAir Dhaka 10',10,'IQAir','divdha'),('IQAdiv11','IQAir Khulna 11',11,'IQAir','divkhu'),('IQAdiv12','IQAir Dhaka 12',12,'IQAir','divdha'),('IQAdiv13','IQAir Dhaka 13',13,'IQAir','divdha'),('IQAdiv14','IQAir Dhaka 14',14,'IQAir','divdha'),('IQAdiv15','IQAir Dhaka 15',15,'IQAir','divdha'),('IQAdiv16','IQAir Khulna 16',16,'IQAir','divkhu'),('IQAdiv17','IQAir Khulna 17',17,'IQAir','divkhu'),('IQAdiv18','IQAir Dhaka 18',18,'IQAir','divdha'),('IQAdiv19','IQAir Dhaka 19',19,'IQAir','divdha'),('IQAdiv2','IQAir Dhaka 2',2,'IQAir','divdha'),('IQAdiv20','IQAir Dhaka 20',20,'IQAir','divdha'),('IQAdiv21','IQAir Dhaka 21',21,'IQAir','divdha'),('IQAdiv22','IQAir Dhaka 22',22,'IQAir','divdha'),('IQAdiv23','IQAir Dhaka 23',23,'IQAir','divdha'),('IQAdiv3','IQAir Dhaka 3',3,'IQAir','divdha'),('IQAdiv4','IQAir Dhaka 4',4,'IQAir','divdha'),('IQAdiv5','IQAir Dhaka 5',5,'IQAir','divdha'),('IQAdiv6','IQAir Dhaka 6',6,'IQAir','divdha'),('IQAdiv7','IQAir Dhaka 7',7,'IQAir','divdha'),('IQAdiv8','IQAir Dhaka 8',8,'IQAir','divdha'),('IQAdiv9','IQAir Dhaka 9',9,'IQAir','divdha'),('Purdiv1','PurpleAir Rajshahi 1',1,'PurpleAir','divraj'),('Purdiv10','PurpleAir Rajshahi 10',10,'PurpleAir','divraj'),('Purdiv11','PurpleAir Rajshahi 11',11,'PurpleAir','divraj'),('Purdiv12','PurpleAir Rajshahi 12',12,'PurpleAir','divraj'),('Purdiv13','PurpleAir Rajshahi 13',13,'PurpleAir','divraj'),('Purdiv14','PurpleAir Rajshahi 14',14,'PurpleAir','divraj'),('Purdiv15','PurpleAir Rajshahi 15',15,'PurpleAir','divraj'),('Purdiv16','PurpleAir Rajshahi 16',16,'PurpleAir','divraj'),('Purdiv17','PurpleAir Rajshahi 17',17,'PurpleAir','divraj'),('Purdiv18','PurpleAir Rajshahi 18',18,'PurpleAir','divraj'),('Purdiv19','PurpleAir Rajshahi 19',19,'PurpleAir','divraj'),('Purdiv2','PurpleAir Rajshahi 2',2,'PurpleAir','divraj'),('Purdiv20','PurpleAir Rajshahi 20',20,'PurpleAir','divraj'),('Purdiv21','PurpleAir Rajshahi 21',21,'PurpleAir','divraj'),('Purdiv22','PurpleAir Rajshahi 22',22,'PurpleAir','divraj'),('Purdiv23','PurpleAir Rajshahi 23',23,'PurpleAir','divraj'),('Purdiv3','PurpleAir Rajshahi 3',3,'PurpleAir','divraj'),('Purdiv4','PurpleAir Rajshahi 4',4,'PurpleAir','divraj'),('Purdiv5','PurpleAir Rajshahi 5',5,'PurpleAir','divraj'),('Purdiv6','PurpleAir Rajshahi 6',6,'PurpleAir','divraj'),('Purdiv7','PurpleAir Rajshahi 7',7,'PurpleAir','divraj'),('Purdiv8','PurpleAir Rajshahi 8',8,'PurpleAir','divraj'),('Purdiv9','PurpleAir Rajshahi 9',9,'PurpleAir','divraj');
/*!40000 ALTER TABLE `station` ENABLE KEYS */;
UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-24  0:10:45
