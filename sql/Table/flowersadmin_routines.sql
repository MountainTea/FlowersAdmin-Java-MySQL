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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-25 23:05:40
