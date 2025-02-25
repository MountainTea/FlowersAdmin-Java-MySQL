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
-- Table structure for table `adminers`
--

DROP TABLE IF EXISTS `adminers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adminers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `adm_username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `adm_password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `adm_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `adm_phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adm_role` int NOT NULL DEFAULT '2',
  `adm_note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_adm_username` (`adm_username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminers`
--

LOCK TABLES `adminers` WRITE;
/*!40000 ALTER TABLE `adminers` DISABLE KEYS */;
INSERT INTO `adminers` VALUES (1,'it@example.com','password123','it小嵐','0912345678',0,'系統初始管理員。','2025-02-15 06:24:34','2025-02-24 03:39:02'),(2,'joe@gmail.com','ab123456','素嚕嚕','0945636663',1,'主管。','2025-02-16 02:25:01','2025-02-24 03:39:08'),(3,'tony@yahoo.com','tony001002','黑皮','0986556448',2,'員工。','2025-02-17 12:05:59','2025-02-24 03:39:13'),(5,'abcdefg@hotmail.com','A123456','小惠','0978556332',2,'新來的員工。','2025-02-24 03:38:44','2025-02-24 03:38:55');
/*!40000 ALTER TABLE `adminers` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `inbound_detail`
--

DROP TABLE IF EXISTS `inbound_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inbound_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `inb_no` varchar(50) NOT NULL,
  `pro_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `unit_price` int NOT NULL DEFAULT '0',
  `quantity` int NOT NULL DEFAULT '1',
  `note` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_inb_header_id` (`inb_no`),
  KEY `idx_pro_no` (`pro_no`),
  CONSTRAINT `fk_inbound_detail_inb_no` FOREIGN KEY (`inb_no`) REFERENCES `inbound_header` (`inb_no`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbound_detail`
--

LOCK TABLES `inbound_detail` WRITE;
/*!40000 ALTER TABLE `inbound_detail` DISABLE KEYS */;
INSERT INTO `inbound_detail` VALUES (3,'inb20250218001','pro001',400,1,'單品進貨','2025-02-18 06:33:16','2025-02-24 02:51:37'),(4,'inb20250218001','pro002',50,1,'補充花泥','2025-02-18 06:33:16','2025-02-24 02:54:15'),(5,'inb20250218001','pro010',60,1,'蕨類','2025-02-18 06:33:16','2025-02-24 02:54:15'),(6,'inb20250218001','pro003',150,2,'','2025-02-18 06:33:16','2025-02-25 15:00:31'),(7,'inb20250218001','pro011',90,1,'','2025-02-23 14:12:03','2025-02-24 05:24:10'),(8,'inb20250223001','pro001',350,1,'新鮮的可以二周','2025-02-23 15:01:46','2025-02-24 02:51:37'),(9,'inb20250223001','pro004',100,5,'','2025-02-23 15:01:56','2025-02-25 15:00:52'),(10,'inb20250224001','pro002',200,4,'','2025-02-23 16:30:13','2025-02-24 03:39:59'),(11,'inb20250224002','pro004',99,1,'','2025-02-24 03:36:55',NULL),(12,'inb20250224002','pro001',500,13,'補玫瑰、留一當庫存','2025-02-24 03:37:39',NULL),(13,'inb20250224001','pro005',300,4,'','2025-02-24 03:40:08',NULL),(14,'inb20250224001','pro008',200,4,'','2025-02-24 03:40:17',NULL),(15,'inb20250225001','pro004',150,7,'','2025-02-25 02:15:16',NULL),(16,'inb20250225001','pro010',200,10,'','2025-02-25 02:15:49',NULL),(17,'inb20250224002','pro006',200,1,'','2025-02-25 15:01:23',NULL),(18,'inb20250224002','pro010',200,9,'','2025-02-25 15:01:31',NULL),(19,'inb20250224001','pro009',500,2,'','2025-02-25 15:02:09',NULL);
/*!40000 ALTER TABLE `inbound_detail` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `outbound_header`
--

DROP TABLE IF EXISTS `outbound_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `outbound_header` (
  `id` int NOT NULL AUTO_INCREMENT,
  `out_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cus_username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `order_date` date NOT NULL,
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintained_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ship_status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_out_no` (`out_no`),
  KEY `fk_outbound_header_adminers` (`maintained_by`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outbound_header`
--

LOCK TABLES `outbound_header` WRITE;
/*!40000 ALTER TABLE `outbound_header` DISABLE KEYS */;
INSERT INTO `outbound_header` VALUES (1,'out20250201001','F160399837','2025-03-01','測試 1','it@example.com',2,'2025-02-19 16:59:01','2025-02-25 14:59:56'),(2,'out20250201002','C286545912','2025-03-01','測試 2','it@example.com',2,'2025-02-19 16:59:01','2025-02-25 14:59:56'),(3,'out20250220001','A124567890','2025-02-20','測試 3','joe@gmail.com',2,'2025-02-20 01:49:39','2025-02-25 14:59:56'),(4,'out20250220002','F160399837','2025-02-20','','joe@gmail.com',1,'2025-02-20 05:07:07','2025-02-25 14:59:56'),(5,'out20250220003','C286545912','2025-02-20','測4','tony@yahoo.com',2,'2025-02-20 06:55:39','2025-02-25 14:59:56'),(6,'out20250220004','Z265478193','2025-02-26','','it@example.com',1,'2025-02-20 07:20:49','2025-02-25 14:59:56'),(7,'out20250127001','A125066630','2025-02-27','箱子裝厚一點','joe@gmail.com',1,'2025-02-21 04:58:41','2025-02-25 14:59:56'),(8,'out20250128001','C286545912','2025-02-28','假日才在家',NULL,1,'2025-02-21 05:25:46','2025-02-25 14:59:56'),(9,'out20250128002','C286545912','2025-02-28','第二筆測試',NULL,1,'2025-02-21 05:26:16','2025-02-25 14:59:56'),(11,'out20250221001','A125066630','2025-02-21','','joe@gmail.com',1,'2025-02-21 06:43:02','2025-02-25 14:59:56'),(12,'out20250221002','A152666333','2025-02-21','','joe@gmail.com',2,'2025-02-21 06:43:10','2025-02-25 14:59:56'),(16,'out20250221003','A125066630','2025-02-24','',NULL,1,'2025-02-21 07:51:51','2025-02-24 06:31:23'),(17,'out20250221004','F160399837','2025-02-27','',NULL,1,'2025-02-21 08:19:57','2025-02-25 14:59:56'),(18,'out20250221005','F160399837','2025-02-24','',NULL,1,'2025-02-21 08:28:02','2025-02-25 14:59:56'),(19,'out20250221006','F160399837','2025-02-26','',NULL,1,'2025-02-21 13:18:05','2025-02-25 14:59:56'),(20,'out20250225001','C259663226','2025-02-26','我們有電梯，放心。',NULL,2,'2025-02-25 01:21:07','2025-02-25 01:35:03'),(21,'out20250225002','C259663226','2025-02-26','1',NULL,2,'2025-02-25 01:33:24','2025-02-25 01:35:08'),(22,'out20250225003','C259663226','2025-02-26','0',NULL,1,'2025-02-25 01:50:03','2025-02-25 14:59:56'),(23,'out20250225004','A222066737','2025-02-25','我的箱子請幫我幫好一點，之前有植物被壓壞。',NULL,0,'2025-02-25 07:28:08',NULL),(24,'out20250225005','F160399837','2025-02-25','請協助將箱子裝厚一點。謝謝',NULL,0,'2025-02-25 14:11:32',NULL);
/*!40000 ALTER TABLE `outbound_header` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sup_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sup_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sup_phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_person` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sup_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sup_state` int NOT NULL DEFAULT '1',
  `sup_note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintained_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_sup_no` (`sup_no`),
  UNIQUE KEY `uniq_sup_no` (`sup_no`),
  KEY `idx_maintained_by` (`maintained_by`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (1,'20566325','玫瑰桑桑','0222333444','森小姐',NULL,'台北市中正區XX路100號',1,'主要供應玫瑰花','it@example.com','2025-02-18 06:27:55','2025-02-22 14:55:43'),(2,'15963457','卉材','0333444555','','atc@gmail.com','新北市板橋區YY路200號',1,'主要是花藝材料類輔助','it@example.com','2025-02-18 06:27:55','2025-02-25 14:19:35'),(5,'01225105','永進花卉','0227903212','TonyChen','chingflowers@gmail.com','臺北市內湖區新湖三路28號1507攤位',1,'各式花卉','it@example.com','2025-02-24 05:04:03','2025-02-25 14:19:13'),(6,'42462101','上苑園藝坊','0911222555','小芳','','臺北市大安區建國南路1段高架橋下建國假日花市508攤',1,'鮮花','it@example.com','2025-02-25 02:17:58','2025-02-25 14:19:02');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `v_inbound_detail`
--

DROP TABLE IF EXISTS `v_inbound_detail`;
/*!50001 DROP VIEW IF EXISTS `v_inbound_detail`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_inbound_detail` AS SELECT 
 1 AS `id`,
 1 AS `inb_no`,
 1 AS `inb_date`,
 1 AS `order_status`,
 1 AS `sup_name`,
 1 AS `pro_state`,
 1 AS `pro_type`,
 1 AS `pro_no`,
 1 AS `pro_name`,
 1 AS `unit_price`,
 1 AS `quantity`,
 1 AS `note`,
 1 AS `created_at`,
 1 AS `updated_at`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_inbound_header_summary`
--

DROP TABLE IF EXISTS `v_inbound_header_summary`;
/*!50001 DROP VIEW IF EXISTS `v_inbound_header_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_inbound_header_summary` AS SELECT 
 1 AS `id`,
 1 AS `inb_no`,
 1 AS `inb_date`,
 1 AS `order_status`,
 1 AS `note`,
 1 AS `maintained_by`,
 1 AS `created_at`,
 1 AS `updated_at`,
 1 AS `sup_no`,
 1 AS `sup_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_inventory_combined`
--

DROP TABLE IF EXISTS `v_inventory_combined`;
/*!50001 DROP VIEW IF EXISTS `v_inventory_combined`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_inventory_combined` AS SELECT 
 1 AS `pro_state`,
 1 AS `pro_type`,
 1 AS `pro_no`,
 1 AS `pro_name`,
 1 AS `total_inbound`,
 1 AS `total_outbound_simulated`,
 1 AS `total_outbound_actual`,
 1 AS `stock_simulated`,
 1 AS `stock_actual`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_outbound_detail`
--

DROP TABLE IF EXISTS `v_outbound_detail`;
/*!50001 DROP VIEW IF EXISTS `v_outbound_detail`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_outbound_detail` AS SELECT 
 1 AS `id`,
 1 AS `out_no`,
 1 AS `pro_no`,
 1 AS `pro_name`,
 1 AS `unit_price`,
 1 AS `quantity`,
 1 AS `note`,
 1 AS `created_at`,
 1 AS `updated_at`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_outbound_summary`
--

DROP TABLE IF EXISTS `v_outbound_summary`;
/*!50001 DROP VIEW IF EXISTS `v_outbound_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_outbound_summary` AS SELECT 
 1 AS `id`,
 1 AS `out_no`,
 1 AS `cus_username`,
 1 AS `cus_name`,
 1 AS `cus_phone`,
 1 AS `cus_address`,
 1 AS `order_date`,
 1 AS `total_amount`,
 1 AS `note`,
 1 AS `maintained_by`,
 1 AS `ship_status`,
 1 AS `created_at`,
 1 AS `updated_at`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `v_inbound_detail`
--

/*!50001 DROP VIEW IF EXISTS `v_inbound_detail`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_inbound_detail` AS select `d`.`id` AS `id`,`h`.`inb_no` AS `inb_no`,`h`.`inb_date` AS `inb_date`,`h`.`order_status` AS `order_status`,`s`.`sup_name` AS `sup_name`,`p`.`pro_state` AS `pro_state`,`p`.`pro_type` AS `pro_type`,`p`.`pro_no` AS `pro_no`,`p`.`pro_name` AS `pro_name`,`d`.`unit_price` AS `unit_price`,`d`.`quantity` AS `quantity`,`d`.`note` AS `note`,`d`.`created_at` AS `created_at`,`d`.`updated_at` AS `updated_at` from (((`inbound_detail` `d` join `inbound_header` `h` on((`d`.`inb_no` = `h`.`inb_no`))) left join `suppliers` `s` on((`h`.`sup_no` = `s`.`sup_no`))) left join `products` `p` on((`d`.`pro_no` = `p`.`pro_no`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_inbound_header_summary`
--

/*!50001 DROP VIEW IF EXISTS `v_inbound_header_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_inbound_header_summary` AS select `h`.`id` AS `id`,`h`.`inb_no` AS `inb_no`,`h`.`inb_date` AS `inb_date`,`h`.`order_status` AS `order_status`,`h`.`note` AS `note`,`h`.`maintained_by` AS `maintained_by`,`h`.`created_at` AS `created_at`,`h`.`updated_at` AS `updated_at`,`h`.`sup_no` AS `sup_no`,`s`.`sup_name` AS `sup_name` from (`inbound_header` `h` join `suppliers` `s` on((`h`.`sup_no` = `s`.`sup_no`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_inventory_combined`
--

/*!50001 DROP VIEW IF EXISTS `v_inventory_combined`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_inventory_combined` AS select `p`.`pro_state` AS `pro_state`,`p`.`pro_type` AS `pro_type`,`p`.`pro_no` AS `pro_no`,`p`.`pro_name` AS `pro_name`,ifnull(`i_1`.`total_inbound`,0) AS `total_inbound`,ifnull(`o_sim`.`total_qty`,0) AS `total_outbound_simulated`,ifnull(`o_actual`.`total_qty`,0) AS `total_outbound_actual`,((ifnull(`i_1`.`total_inbound`,0) + ifnull(`i_0`.`total_inbound`,0)) - ifnull(`o_sim`.`total_qty`,0)) AS `stock_simulated`,(ifnull(`i_1`.`total_inbound`,0) - ifnull(`o_actual`.`total_qty`,0)) AS `stock_actual` from ((((`products` `p` left join (select `d`.`pro_no` AS `pro_no`,sum(`d`.`quantity`) AS `total_inbound` from (`inbound_detail` `d` join `inbound_header` `h` on((`d`.`inb_no` = `h`.`inb_no`))) where (`h`.`order_status` = 1) group by `d`.`pro_no`) `i_1` on((`p`.`pro_no` = `i_1`.`pro_no`))) left join (select `d`.`pro_no` AS `pro_no`,sum(`d`.`quantity`) AS `total_inbound` from (`inbound_detail` `d` join `inbound_header` `h` on((`d`.`inb_no` = `h`.`inb_no`))) where (`h`.`order_status` = 0) group by `d`.`pro_no`) `i_0` on((`p`.`pro_no` = `i_0`.`pro_no`))) left join (select `d`.`pro_no` AS `pro_no`,sum(`d`.`quantity`) AS `total_qty` from (`outbound_detail` `d` join `outbound_header` `h` on((`d`.`out_no` = `h`.`out_no`))) where (`h`.`ship_status` = 1) group by `d`.`pro_no`) `o_actual` on((`p`.`pro_no` = `o_actual`.`pro_no`))) left join (select `d`.`pro_no` AS `pro_no`,sum(`d`.`quantity`) AS `total_qty` from (`outbound_detail` `d` join `outbound_header` `h` on((`d`.`out_no` = `h`.`out_no`))) where (`h`.`ship_status` in (0,1)) group by `d`.`pro_no`) `o_sim` on((`p`.`pro_no` = `o_sim`.`pro_no`))) group by `p`.`pro_type`,`p`.`pro_no`,`p`.`pro_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_outbound_detail`
--

/*!50001 DROP VIEW IF EXISTS `v_outbound_detail`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_outbound_detail` AS select `d`.`id` AS `id`,`d`.`out_no` AS `out_no`,`d`.`pro_no` AS `pro_no`,`p`.`pro_name` AS `pro_name`,`d`.`unit_price` AS `unit_price`,`d`.`quantity` AS `quantity`,`d`.`note` AS `note`,`d`.`created_at` AS `created_at`,`d`.`updated_at` AS `updated_at` from (`outbound_detail` `d` left join `products` `p` on((`d`.`pro_no` = `p`.`pro_no`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_outbound_summary`
--

/*!50001 DROP VIEW IF EXISTS `v_outbound_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_outbound_summary` AS select `oh`.`id` AS `id`,`oh`.`out_no` AS `out_no`,`oh`.`cus_username` AS `cus_username`,`c`.`cus_name` AS `cus_name`,`c`.`cus_phone` AS `cus_phone`,`c`.`cus_address` AS `cus_address`,`oh`.`order_date` AS `order_date`,coalesce(sum((`od`.`unit_price` * `od`.`quantity`)),0) AS `total_amount`,`oh`.`note` AS `note`,`oh`.`maintained_by` AS `maintained_by`,`oh`.`ship_status` AS `ship_status`,`oh`.`created_at` AS `created_at`,`oh`.`updated_at` AS `updated_at` from ((`outbound_header` `oh` left join `outbound_detail` `od` on((`oh`.`out_no` = `od`.`out_no`))) left join `customers` `c` on(((`oh`.`cus_username` collate utf8mb4_0900_ai_ci) = (`c`.`cus_username` collate utf8mb4_0900_ai_ci)))) group by `oh`.`id`,`oh`.`out_no`,`oh`.`cus_username`,`c`.`cus_name`,`c`.`cus_phone`,`c`.`cus_address`,`oh`.`order_date`,`oh`.`note`,`oh`.`maintained_by`,`oh`.`ship_status`,`oh`.`created_at`,`oh`.`updated_at` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-25 23:05:20
