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
-- Table structure for table `outbound_detail`
--

DROP TABLE IF EXISTS `outbound_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `outbound_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `out_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `unit_price` int NOT NULL,
  `quantity` int NOT NULL,
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_outbound_detail_header` (`out_no`),
  KEY `fk_outbound_detail_products` (`pro_no`),
  CONSTRAINT `fk_outbound_detail_header` FOREIGN KEY (`out_no`) REFERENCES `outbound_header` (`out_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_outbound_detail_products` FOREIGN KEY (`pro_no`) REFERENCES `products` (`pro_no`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outbound_detail`
--

LOCK TABLES `outbound_detail` WRITE;
/*!40000 ALTER TABLE `outbound_detail` DISABLE KEYS */;
INSERT INTO `outbound_detail` VALUES (1,'out20250201001','pro001',500,1,'明細測試 A','2025-02-19 16:59:18','2025-02-24 03:23:29'),(2,'out20250201001','pro002',300,1,'明細測試 B','2025-02-19 16:59:18','2025-02-20 02:21:28'),(3,'out20250201002','pro001',500,1,'明細測試 C','2025-02-19 16:59:18','2025-02-24 03:23:29'),(4,'out20250220001','pro004',150,1,'','2025-02-20 01:50:11','2025-02-24 03:23:29'),(5,'out20250220001','pro006',200,1,'','2025-02-20 01:50:20','2025-02-24 03:23:29'),(6,'out20250220001','pro002',300,1,'客人說可以拿舊一點的','2025-02-20 01:50:37','2025-02-20 02:21:28'),(7,'out20250220002','pro005',400,1,'','2025-02-20 05:17:15','2025-02-24 03:23:29'),(8,'out20250220001','pro001',500,1,'','2025-02-20 06:36:29',NULL),(10,'out20250220003','pro001',500,1,'','2025-02-20 06:55:46',NULL),(11,'out20250220003','pro004',150,1,'','2025-02-20 06:55:54','2025-02-24 03:23:29'),(12,'out20250220004','pro005',400,1,'','2025-02-20 07:21:01','2025-02-24 03:23:29'),(13,'out20250220004','pro008',350,1,'','2025-02-20 07:21:18','2025-02-24 03:23:29'),(15,'out20250220004','pro001',500,1,'','2025-02-20 14:50:04',NULL),(16,'out20250220004','pro002',300,1,'','2025-02-20 14:50:42',NULL),(17,'out20250127001','pro001',500,1,'紅色','2025-02-21 04:58:41',NULL),(18,'out20250127001','pro002',300,1,'外箱要大','2025-02-21 04:58:41','2025-02-24 03:23:29'),(19,'out20250127001','pro005',400,1,'','2025-02-21 04:58:41','2025-02-24 03:23:29'),(20,'out20250127001','pro009',500,1,'','2025-02-21 04:58:41','2025-02-24 03:23:29'),(21,'out20250128001','pro001',500,1,'玫瑰我要紅色','2025-02-21 05:25:46',NULL),(22,'out20250128001','pro009',500,1,'','2025-02-21 05:25:46','2025-02-24 03:23:29'),(23,'out20250128001','pro008',350,1,'','2025-02-21 05:25:46','2025-02-24 03:23:29'),(24,'out20250128002','pro001',500,1,'','2025-02-21 05:26:16','2025-02-24 03:23:29'),(25,'out20250128002','pro008',350,1,'','2025-02-21 05:30:46','2025-02-24 03:23:29'),(29,'out20250221001','pro008',350,1,'','2025-02-21 06:43:18',NULL),(30,'out20250221001','pro011',145,1,'','2025-02-21 06:43:24',NULL),(31,'out20250221001','pro003',5000,1,'','2025-02-21 06:43:30',NULL),(32,'out20250221002','pro006',200,1,'','2025-02-21 06:43:47',NULL),(33,'out20250221002','pro001',500,1,'','2025-02-21 06:43:57','2025-02-24 03:23:29'),(34,'out20250128002','pro005',400,1,'','2025-02-21 07:16:11',NULL),(35,'out20250128002','pro001',300,1,'','2025-02-21 07:16:36','2025-02-21 07:22:16'),(37,'out20250221002','pro002',400,1,'','2025-02-21 07:47:36','2025-02-21 07:47:43'),(38,'out20250221003','pro001',500,1,'','2025-02-21 07:51:51',NULL),(39,'out20250221003','pro003',5000,1,'','2025-02-21 07:51:51','2025-02-24 03:23:29'),(41,'out20250221004','pro001',500,1,'','2025-02-21 08:19:57','2025-02-24 03:23:29'),(42,'out20250221005','pro001',500,1,'','2025-02-21 08:28:02',NULL),(43,'out20250221005','pro006',200,1,'漂亮點','2025-02-21 08:28:02','2025-02-24 03:23:29'),(44,'out20250221006','pro001',500,1,'','2025-02-21 13:18:05',NULL),(45,'out20250225003','pro004',150,1,'1','2025-02-25 01:50:03','2025-02-25 01:50:03'),(47,'out20250225003','pro010',200,10,'新鮮一點','2025-02-25 01:50:03','2025-02-25 02:02:01'),(48,'out20250225003','pro004',150,3,'','2025-02-25 02:13:51','2025-02-25 02:13:51'),(49,'out20250225004','pro005',400,2,'要新鮮一點','2025-02-25 07:28:08','2025-02-25 07:28:08'),(50,'out20250225004','pro013',180,5,'','2025-02-25 07:28:08','2025-02-25 07:28:08'),(51,'out20250225004','pro002',300,2,'可以幫我分裝好嗎?','2025-02-25 07:28:08','2025-02-25 07:28:08'),(52,'out20250225005','pro002',300,1,'','2025-02-25 14:11:32','2025-02-25 14:11:32'),(53,'out20250225005','pro005',400,5,'','2025-02-25 14:11:32','2025-02-25 14:11:32'),(54,'out20250225005','pro013',180,2,'','2025-02-25 14:11:32','2025-02-25 14:11:32'),(55,'out20250225005','pro010',200,1,'','2025-02-25 14:11:32','2025-02-25 14:11:32'),(56,'out20250225005','pro009',500,5,'請協助多給我一些分裝袋。','2025-02-25 14:11:32','2025-02-25 14:11:32');
/*!40000 ALTER TABLE `outbound_detail` ENABLE KEYS */;
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
