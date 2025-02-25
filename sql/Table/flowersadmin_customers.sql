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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cus_username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `cus_password` varchar(100) NOT NULL COMMENT '顧客會員表',
  `cus_name` varchar(100) NOT NULL,
  `cus_phone` varchar(50) NOT NULL,
  `cus_email` varchar(100) DEFAULT NULL,
  `cus_address` varchar(255) DEFAULT NULL,
  `cus_state` int NOT NULL DEFAULT '1',
  `cus_note` varchar(255) DEFAULT NULL,
  `maintained_by` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_cus_username` (`cus_username`),
  KEY `idx_maintained_by` (`maintained_by`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'F160399837','A123456','劉宇威','0987654321','ccc@yahoo.com','台中市西屯區ZZ路50號1樓',1,'','it@example.com','2025-02-18 06:31:03','2025-02-25 14:57:00'),(2,'A124567890','A123456','葉先生','0999888777','abc@gmail.com','高雄市前鎮區AA路88號',1,'',NULL,'2025-02-18 06:31:03','2025-02-20 13:30:10'),(7,'C286545912','A123456','劉馨','096066635','','台北市北投區立德路20號6樓',1,NULL,NULL,'2025-02-19 09:02:06','2025-02-25 14:57:00'),(8,'Z265478193','A123456','林美貞','0960666656','JOE@GMAIL.COM','台北市萬華區康定路33號15樓',1,NULL,NULL,'2025-02-19 12:45:01','2025-02-25 14:57:00'),(9,'A152666333','A123456','陳仙','0965336663','','桃園市蘆竹區六福路61號4樓',1,NULL,NULL,'2025-02-20 13:31:52','2025-02-25 14:57:00'),(10,'A125066630','A123456','Joe Yeh','0960666635','','台北市中正區公園路30號3樓',1,NULL,NULL,'2025-02-21 03:00:38','2025-02-21 05:41:40'),(11,'A222066737','A123456','陳宇蓁','0962555555','','台東縣太麻里鄉鹿燈大道151-2號',1,NULL,NULL,'2025-02-21 14:32:42','2025-02-25 14:57:00'),(12,'C259663226','A123456','林香蘭','0945998663','','台中市中區臨生路152號6樓',1,NULL,NULL,'2025-02-25 01:18:54','2025-02-25 02:18:21');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-25 23:05:40
