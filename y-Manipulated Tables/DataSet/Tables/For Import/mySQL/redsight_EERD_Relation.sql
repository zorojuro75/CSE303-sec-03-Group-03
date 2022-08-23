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
/*!40000 ALTER TABLE `city_corporation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forest_ministry`
--

DROP TABLE IF EXISTS `forest_ministry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forest_ministry` (
  `minID` varchar(10) NOT NULL,
  `ministryName` text,
  `locationID` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`minID`),
  KEY `minLoc_idx` (`locationID`),
  CONSTRAINT `minLoc` FOREIGN KEY (`locationID`) REFERENCES `location` (`locID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forest_ministry`
--

LOCK TABLES `forest_ministry` WRITE;
/*!40000 ALTER TABLE `forest_ministry` DISABLE KEYS */;
/*!40000 ALTER TABLE `forest_ministry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `locID` varchar(10) NOT NULL,
  `latitude` text,
  `longitude` text,
  `division` text,
  `country` text,
  PRIMARY KEY (`locID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_ministry`
--

DROP TABLE IF EXISTS `org_ministry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `org_ministry` (
  `orgID` varchar(10) NOT NULL,
  `minID` varchar(10) NOT NULL,
  `comment` text,
  PRIMARY KEY (`orgID`,`minID`),
  KEY `minOrg_idx` (`minID`),
  KEY `orgMin_idx` (`orgID`),
  CONSTRAINT `minOrg` FOREIGN KEY (`minID`) REFERENCES `forest_ministry` (`minID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `orgMin` FOREIGN KEY (`orgID`) REFERENCES `organization` (`orgID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_ministry`
--

LOCK TABLES `org_ministry` WRITE;
/*!40000 ALTER TABLE `org_ministry` DISABLE KEYS */;
/*!40000 ALTER TABLE `org_ministry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_route`
--

DROP TABLE IF EXISTS `org_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `org_route` (
  `orgID` varchar(10) NOT NULL,
  `routeID` varchar(10) NOT NULL,
  PRIMARY KEY (`orgID`,`routeID`),
  KEY `routeOrg_idx` (`routeID`) /*!80000 INVISIBLE */,
  KEY `orgRoute` (`orgID`),
  CONSTRAINT `orgRoute` FOREIGN KEY (`orgID`) REFERENCES `organization` (`orgID`) ON UPDATE CASCADE,
  CONSTRAINT `routeOrg` FOREIGN KEY (`routeID`) REFERENCES `route` (`routeID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_route`
--

LOCK TABLES `org_route` WRITE;
/*!40000 ALTER TABLE `org_route` DISABLE KEYS */;
/*!40000 ALTER TABLE `org_route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization`
--

DROP TABLE IF EXISTS `organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `organization` (
  `orgID` varchar(10) NOT NULL,
  `orgName` text,
  PRIMARY KEY (`orgID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization`
--

LOCK TABLES `organization` WRITE;
/*!40000 ALTER TABLE `organization` DISABLE KEYS */;
/*!40000 ALTER TABLE `organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `route`
--

DROP TABLE IF EXISTS `route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `route` (
  `routeID` varchar(10) NOT NULL,
  `routeName` text,
  PRIMARY KEY (`routeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route`
--

LOCK TABLES `route` WRITE;
/*!40000 ALTER TABLE `route` DISABLE KEYS */;
/*!40000 ALTER TABLE `route` ENABLE KEYS */;
UNLOCK TABLES;

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
/*!40000 ALTER TABLE `station` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `username` varchar(10) NOT NULL,
  `email` text,
  `password` text,
  `minID` varchar(10) DEFAULT NULL,
  `orgID` varchar(10) DEFAULT NULL,
  `corpID` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`username`),
  KEY `minUser_idx` (`minID`),
  KEY `orgUser_idx` (`orgID`),
  KEY `corpUser_idx` (`corpID`),
  CONSTRAINT `corpUser` FOREIGN KEY (`corpID`) REFERENCES `city_corporation` (`corpID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `minUser` FOREIGN KEY (`minID`) REFERENCES `forest_ministry` (`minID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `orgUser` FOREIGN KEY (`orgID`) REFERENCES `organization` (`orgID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weather_info`
--

DROP TABLE IF EXISTS `weather_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weather_info` (
  `wInfoID` varchar(10) NOT NULL,
  `date` text,
  `time` text,
  `season` text,
  `pm25` text,
  `rainPrec` text,
  `cloudCover` text,
  `windSpeed` text,
  `relHumid` text,
  `visibility` text,
  `mean` text,
  `routeID` varchar(10) DEFAULT NULL,
  `locID` varchar(10) DEFAULT NULL,
  `stationID` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`wInfoID`),
  KEY `stationInfo_idx` (`stationID`),
  KEY `locInfo_idx` (`locID`),
  KEY `routeIndo_idx` (`routeID`),
  CONSTRAINT `locInfo` FOREIGN KEY (`locID`) REFERENCES `location` (`locID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `routeIndo` FOREIGN KEY (`routeID`) REFERENCES `route` (`routeID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `stationInfo` FOREIGN KEY (`stationID`) REFERENCES `station` (`stationID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weather_info`
--

LOCK TABLES `weather_info` WRITE;
/*!40000 ALTER TABLE `weather_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `weather_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-24  0:12:25
