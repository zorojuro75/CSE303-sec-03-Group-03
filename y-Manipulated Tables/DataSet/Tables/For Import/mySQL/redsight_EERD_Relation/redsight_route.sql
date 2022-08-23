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
INSERT INTO `route` VALUES ('r001','IEPA TRAILER'),('r002','REGIONAL OFFICE BUILDING'),('r003','VILLAGE HALL'),('r004','The Heart of Riverside'),('r005','The Heart of Riverside B'),('r006','GRAVES ES'),('r007','NORTHBROOK WATER PLANT'),('r008','Mulford Manor'),('r009','Mulford Manor B'),('r010','MAYFAIR PUMP STATION'),('r011','LIBERTY SCHOOL'),('r012','West Humboldt Park'),('r013','West Humboldt Park B'),('r014','VILLAGE GARAGE'),('r015','West Lawn'),('r016','West Lawn B'),('r017','CFD Eng. 99'),('r018','CFD Eng. 99 B'),('r019','LVEJO_2'),('r020','LVEJO_2 B'),('r021','CFD Eng 38'),('r022','CFD Eng 38 B'),('r023','SPRINGFIELD PUMP STATION'),('r024','LVEJO_Location3'),('r025','LVEJO_Location3 B'),('r026','NEIU 1'),('r027','NEIU 1 B'),('r028','NEIU 2'),('r029','NEIU 2 B'),('r030','NEIU 3'),('r031','NEIU 3 B'),('r032','COM ED MAINTENANCE BLDG'),('r033','CFD Eng 65'),('r034','CFD Eng 65 B'),('r035','Marshall Blvd / Little Village'),('r036','Marshall Blvd / Little Village B'),('r037','Logan Square'),('r038','Logan Square B'),('r039','LVEJO_Location4'),('r040','LVEJO_Location4 B'),('r041','West Rogers Park'),('r042','West Rogers Park B'),('r043','Ukrainian Village'),('r044','Ukrainian Village B'),('r045','McKinley Park Central'),('r046','McKinley Park Central B'),('r047','Ducktown'),('r048','Ducktown B'),('r049','BOTY Coffee Shop'),('r050','BOTY Coffee Shop B'),('r051','Damen and Pershing'),('r052','Damen and Pershing B'),('r053','McKinley Park South'),('r054','McKinley Park South B'),('r055','CPS Burr Elem'),('r056','CPS Burr Elem B'),('r057','Studio Gang'),('r058','Studio Gang B'),('r059','Studio Gang Green Roof'),('r060','Studio Gang Green Roof B'),('r061','Otis, Chicago'),('r062','Otis, Chicago B'),('r063','CPS O Mayer'),('r064','CPS O Mayer B'),('r065','Sheffield Neighbors '),('r066','Sheffield Neighbors  B'),('r067','Edgewater'),('r068','Edgewater B'),('r069','Bridgeport SW'),('r070','Bridgeport SW B'),('r071','Lakeview East'),('r072','Lakeview East B'),('r073','SASA_PA2_SL_W'),('r074','SASA_PA2_SL_W B'),('r075','1138 PLYMOUTH'),('r076','1138 PLYMOUTH B'),('r077','Kingery Near Road #1'),('r078','SETF_SV1'),('r079','SETF_SV1 B'),('r080','WASHINGTON HS');
/*!40000 ALTER TABLE `route` ENABLE KEYS */;
UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-24  0:10:45
