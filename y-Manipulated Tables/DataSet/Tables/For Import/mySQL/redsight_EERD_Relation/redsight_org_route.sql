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
INSERT INTO `org_route` VALUES ('org1','r10'),('org1','r11'),('org1','r12'),('org1','r14'),('org1','r15'),('org1','r17'),('org1','r18'),('org1','r19'),('org1','r2'),('org1','r21'),('org1','r22'),('org1','r23'),('org1','r25'),('org1','r26'),('org1','r27'),('org1','r29'),('org1','r3'),('org1','r31'),('org1','r32'),('org1','r33'),('org1','r34'),('org1','r35'),('org1','r36'),('org1','r37'),('org1','r38'),('org1','r39'),('org1','r4'),('org1','r41'),('org1','r42'),('org1','r45'),('org1','r46'),('org1','r47'),('org1','r48'),('org1','r5'),('org1','r50'),('org1','r52'),('org1','r53'),('org1','r60'),('org1','r61'),('org1','r63'),('org1','r65'),('org1','r68'),('org1','r69'),('org1','r7'),('org1','r71'),('org1','r72'),('org1','r73'),('org1','r75'),('org1','r76'),('org1','r77'),('org1','r78'),('org1','r79'),('org1','r80'),('org2','r1'),('org2','r10'),('org2','r11'),('org2','r14'),('org2','r15'),('org2','r16'),('org2','r17'),('org2','r19'),('org2','r21'),('org2','r22'),('org2','r23'),('org2','r27'),('org2','r28'),('org2','r29'),('org2','r30'),('org2','r31'),('org2','r33'),('org2','r34'),('org2','r35'),('org2','r36'),('org2','r37'),('org2','r38'),('org2','r4'),('org2','r40'),('org2','r41'),('org2','r42'),('org2','r43'),('org2','r46'),('org2','r47'),('org2','r48'),('org2','r49'),('org2','r5'),('org2','r50'),('org2','r51'),('org2','r52'),('org2','r53'),('org2','r55'),('org2','r56'),('org2','r57'),('org2','r61'),('org2','r62'),('org2','r63'),('org2','r64'),('org2','r67'),('org2','r68'),('org2','r70'),('org2','r72'),('org2','r75'),('org2','r76'),('org2','r77'),('org2','r79'),('org2','r80'),('org2','r9'),('org3','r10'),('org3','r12'),('org3','r13'),('org3','r15'),('org3','r17'),('org3','r19'),('org3','r22'),('org3','r23'),('org3','r24'),('org3','r25'),('org3','r26'),('org3','r27'),('org3','r28'),('org3','r29'),('org3','r3'),('org3','r33'),('org3','r35'),('org3','r37'),('org3','r39'),('org3','r4'),('org3','r40'),('org3','r42'),('org3','r43'),('org3','r45'),('org3','r46'),('org3','r48'),('org3','r49'),('org3','r5'),('org3','r50'),('org3','r51'),('org3','r52'),('org3','r53'),('org3','r54'),('org3','r55'),('org3','r58'),('org3','r59'),('org3','r60'),('org3','r63'),('org3','r69'),('org3','r7'),('org3','r70'),('org3','r71'),('org3','r72'),('org3','r73'),('org3','r74'),('org3','r77'),('org3','r78'),('org3','r79'),('org3','r8'),('org3','r80'),('org3','r9');
/*!40000 ALTER TABLE `org_route` ENABLE KEYS */;
UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-24  0:10:45
