CREATE DATABASE  IF NOT EXISTS `flowersadmin` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `flowersadmin`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: flowersadmin
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `inbound_header`
--

DROP TABLE IF EXISTS `inbound_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inbound_header` (
  `id` int NOT NULL AUTO_INCREMENT,
  `inb_no` varchar(50) NOT NULL,
  `sup_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `inb_date` date NOT NULL,
  `order_status` int NOT NULL DEFAULT '0',
  `note` varchar(255) DEFAULT NULL,
  `maintained_by` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_inb_no` (`inb_no`),
  UNIQUE KEY `inb_no` (`inb_no`),
  KEY `idx_sup_no` (`sup_no`),
  KEY `idx_maintained_by` (`maintained_by`),
  CONSTRAINT `fk_inbound_header_suppliers` FOREIGN KEY (`sup_no`) REFERENCES `suppliers` (`sup_no`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbound_header`
--

LOCK TABLES `inbound_header` WRITE;
/*!40000 ALTER TABLE `inbound_header` DISABLE KEYS */;
INSERT INTO `inbound_header` VALUES (3,'inb20250218001','20566325','2025-02-19',1,'2/18-明天會進貨','it@example.com','2025-02-18 06:32:19','2025-02-25 14:40:44'),(4,'inb20250223001','15963457','2025-02-23',1,'2/23-家家幫我聯繫一下老闆看有無貨物','it@example.com','2025-02-23 12:57:33','2025-02-25 14:39:54'),(5,'inb20250224001','42462101','2025-02-24',1,'','joe@gmail.com','2025-02-23 16:29:54','2025-02-25 14:41:07'),(6,'inb20250224002','20566325','2025-02-24',1,'2/24-補訂購菊花、玫瑰','it@example.com','2025-02-24 03:36:40','2025-02-25 14:40:07'),(7,'inb20250225001','01225105','2025-02-25',0,'2/24-老闆說找看看有無庫存再給我們出貨。','joe@gmail.com','2025-02-25 02:15:05','2025-02-25 14:39:32');
/*!40000 ALTER TABLE `inbound_header` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-25 23:05:39
