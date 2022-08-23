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
INSERT INTO `location` VALUES ('cntBan','','','','Bangladesh'),('cntUK','','','','UK'),('cntUkr','','','','Ukraine'),('cntUSA','','','','USA'),('cor1','41.965193','-87.876265','',''),('cor10','41.902525','-87.736138','',''),('cor11','41.670992','-87.732457','',''),('cor12','41.767763','-87.730133','',''),('cor13','41.837326','-87.72829','',''),('cor14','41.814712','-87.727484','',''),('cor15','41.858649','-87.724521','',''),('cor16','41.912739','-87.722673','',''),('cor17','41.834072','-87.718255','',''),('cor18','41.980272','-87.717115','',''),('cor19','41.980277','-87.717093','',''),('cor2','42.060285','-87.863225','',''),('cor20','41.98028','-87.717046','',''),('cor21','41.7514','-87.713488','',''),('cor22','41.817572','-87.699566','',''),('cor23','41.849535','-87.695218','',''),('cor24','41.914445','-87.694901','',''),('cor25','41.853763','-87.693032','',''),('cor26','41.996','-87.692','',''),('cor27','41.892698','-87.685693','',''),('cor28','41.892265','-87.685569','',''),('cor29','41.831385','-87.678529','',''),('cor3','41.80118','-87.832349','',''),('cor30','41.829173','-87.677909','',''),('cor31','41.80837','-87.67698','',''),('cor32','41.8232','-87.675182','',''),('cor33','41.824976','-87.670256','',''),('cor34','41.911945','-87.668633','',''),('cor35','41.903514','-87.665978','',''),('cor36','41.9036','-87.665812','',''),('cor37','41.861','-87.6632','',''),('cor38','41.923524','-87.657978','',''),('cor39','41.919745','-87.65742','',''),('cor4','41.83212','-87.812948','',''),('cor40','41.991683','-87.656908','',''),('cor41','41.829361','-87.650137','',''),('cor42','41.935698','-87.641253','',''),('cor43','41.861205','-87.629891','',''),('cor44','41.868892','-87.629436','',''),('cor45','41.57862','-87.557406','',''),('cor46','41.72017','-87.551366','',''),('cor47','41.687165','-87.539315','',''),('cor5','41.782766','-87.805377','',''),('cor6','42.139996','-87.799227','',''),('cor7','42.0225','-87.763718','',''),('cor8','41.965485','-87.749928','',''),('cor9','41.864426','-87.748902','',''),('divBar','','','Barishal',''),('divChi','','','Chittagong',''),('divDha','','','Dhaka',''),('divKhu','','','Khulna',''),('divMym','','','Mymensingh',''),('divRaj','','','Rajshahi',''),('divRan','','','Rangpur',''),('divSyl','','','Sylhet','');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
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
