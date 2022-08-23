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
-- Table structure for table `city_corporation`
--

DROP TABLE IF EXISTS `city_corporation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city_corporation` (
  `corpID` varchar(10) NOT NULL,
  `corpName` text,
  `minID` varchar(10) DEFAULT NULL,
  `locID` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`corpID`),
  KEY `cityLoc` (`locID`),
  CONSTRAINT `cityLoc` FOREIGN KEY (`locID`) REFERENCES `location` (`locID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city_corporation`
--

LOCK TABLES `city_corporation` WRITE;
/*!40000 ALTER TABLE `city_corporation` DISABLE KEYS */;
INSERT INTO `city_corporation` VALUES 
('corpBan1','Barishal City Corporation','fminBan','cntBan'),
('corpBan10','Rajshahi City Corporation','fminBan','cntBan'),
('corpBan11','Rangpur City Corporation','fminBan','cntBan'),
('corpBan12','Sylhet City Corporation','fminBan','cntBan'),
('corpBan2','Chittagong City Corporation','fminBan','cntBan'),
('corpBan3','Comilla City Corporation','fminBan','cntBan'),
('corpBan4','Dhaka North City Corporation','fminBan','cntBan'),
('corpBan5','Dhaka South City Corporation','fminBan','cntBan'),
('corpBan6','Gazipur City Corporation','fminBan','cntBan'),
('corpBan7','Narayanganj City Corporation','fminBan','cntBan'),
('corpBan8','Khulna City Corporation','fminBan','cntBan'),
('corpBan9','Mymensingh City Corporation','fminBan','cntBan'),
('corpUK1','','fminUK','cntUK'),
('corpUK10','','fminUK','cntUK'),
('corpUK11','','fminUK','cntUK'),
('corpUK12','','fminUK','cntUK'),
('corpUK13','','fminUK','cntUK'),
('corpUK14','','fminUK','cntUK'),
('corpUK15','','fminUK','cntUK'),
('corpUK2','','fminUK','cntUK'),
('corpUK3','','fminUK','cntUK'),
('corpUK4','','fminUK','cntUK'),
('corpUK5','','fminUK','cntUK'),
('corpUK6','','fminUK','cntUK'),
('corpUK7','','fminUK','cntUK'),
('corpUK8','','fminUK','cntUK'),
('corpUK9','','fminUK','cntUK'),
('corpUSA1','','fminUSA','cntUSA'),
('corpUSA10','','fminUSA','cntUSA'),
('corpUSA11','','fminUSA','cntUSA'),
('corpUSA12','','fminUSA','cntUSA'),
('corpUSA13','','fminUSA','cntUSA'),
('corpUSA14','','fminUSA','cntUSA'),
('corpUSA15','','fminUSA','cntUSA'),
('corpUSA2','','fminUSA','cntUSA'),
('corpUSA3','','fminUSA','cntUSA'),
('corpUSA4','','fminUSA','cntUSA'),
('corpUSA5','','fminUSA','cntUSA'),
('corpUSA6','','fminUSA','cntUSA'),
('corpUSA7','','fminUSA','cntUSA'),
('corpUSA8','','fminUSA','cntUSA'),
('corpUSA9','','fminUSA','cntUSA'),
('corUkr1','','fminUkr','cntUkr'),
('corUkr10','','fminUkr','cntUkr'),
('corUkr11','','fminUkr','cntUkr'),
('corUkr12','','fminUkr','cntUkr'),
('corUkr2','','fminUkr','cntUkr'),
('corUkr3','','fminUkr','cntUkr'),
('corUkr4','','fminUkr','cntUkr'),
('corUkr5','','fminUkr','cntUkr'),
('corUkr6','','fminUkr','cntUkr'),
('corUkr7','','fminUkr','cntUkr'),
('corUkr8','','fminUkr','cntUkr'),
('corUkr9','','fminUkr','cntUkr');
/*!40000 ALTER TABLE `city_corporation` ENABLE KEYS */;
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
