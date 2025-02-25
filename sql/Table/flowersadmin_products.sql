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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pro_no` varchar(50) NOT NULL,
  `pro_type` int NOT NULL DEFAULT '1',
  `pro_name` varchar(100) NOT NULL,
  `pro_pricing_price` int NOT NULL DEFAULT '0',
  `pro_state` int NOT NULL DEFAULT '1',
  `pro_note` varchar(255) DEFAULT NULL,
  `maintained_by` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_pro_no` (`pro_no`),
  KEY `idx_maintained_by` (`maintained_by`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (3,'pro001',1,'玫瑰植栽',500,1,'紅色玫瑰','joe@gmail.com','2025-02-18 06:29:51',NULL),(4,'pro002',0,'泥炭土',300,1,'適用於各式植栽','it@example.com','2025-02-18 06:29:51','2025-02-19 13:34:24'),(5,'pro003',0,'陶盆',5000,1,'','it@example.com','2025-02-19 13:33:31',NULL),(6,'pro004',1,'菊花',150,1,'','it@example.com','2025-02-19 13:33:54','2025-02-19 13:34:18'),(7,'pro005',1,'大波斯菊',400,1,'','it@example.com','2025-02-19 13:34:39',NULL),(8,'pro006',0,'藍石',200,1,'色澤較淺','it@example.com','2025-02-19 13:35:08','2025-02-24 01:48:16'),(9,'pro007',0,'黑軟石',50,0,'暫時不賣','joe@gmail.com','2025-02-20 02:05:09',NULL),(10,'pro008',1,'千代蘭',350,1,'','it@example.com','2025-02-20 05:25:51','2025-02-20 14:36:17'),(11,'pro009',0,'山土',500,1,'','tony@yahoo.com','2025-02-20 05:26:16',NULL),(12,'pro010',1,'藍蕨',200,1,'','it@example.com','2025-02-20 12:17:31','2025-02-23 04:55:23'),(14,'pro011',1,'矮牽牛',145,1,'','joe@gmail.com','2025-02-20 12:28:55','2025-02-25 02:16:19'),(15,'pro012',1,'鳳梨',99,0,'','joe@gmail.com','2025-02-20 12:33:13','2025-02-20 12:33:21'),(16,'pro013',1,'梔子花',180,1,'','joe@gmail.com','2025-02-25 02:16:37',NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
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
