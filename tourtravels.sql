-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: tourtravels
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_role_id` (`role_id`),
  CONSTRAINT `fk_role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'pankaj','123',1);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package`
--

DROP TABLE IF EXISTS `package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `package` (
  `package_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `base_fare` double DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `location` varchar(55) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `tour_mgr_id` int DEFAULT NULL,
  `tour_manager_id` int DEFAULT NULL,
  PRIMARY KEY (`package_id`),
  KEY `fk_tour_mgr_id` (`tour_mgr_id`),
  KEY `FK3cb54i12u8qw91paf6qpt8sm1` (`tour_manager_id`),
  CONSTRAINT `FK3cb54i12u8qw91paf6qpt8sm1` FOREIGN KEY (`tour_manager_id`) REFERENCES `tour_manager` (`tour_manager_id`),
  CONSTRAINT `fk_tour_mgr_id` FOREIGN KEY (`tour_mgr_id`) REFERENCES `tour_manager` (`tour_manager_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package`
--

LOCK TABLES `package` WRITE;
/*!40000 ALTER TABLE `package` DISABLE KEYS */;
INSERT INTO `package` VALUES (2,'nom',2.25,5,'sdfghj','22',NULL,NULL);
/*!40000 ALTER TABLE `package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `role_id` int NOT NULL,
  `role_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'admin'),(2,'tourmgr'),(3,'tourist');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour`
--

DROP TABLE IF EXISTS `tour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tour` (
  `tour_id` int NOT NULL AUTO_INCREMENT,
  `fare` double DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `seat_vacent` int DEFAULT NULL,
  `tour_mgr_id` int DEFAULT NULL,
  `package_id` int DEFAULT NULL,
  `tour_manager_id` int DEFAULT NULL,
  PRIMARY KEY (`tour_id`),
  KEY `fk_package_ids` (`package_id`),
  KEY `fk_tour_manager_id` (`tour_mgr_id`),
  KEY `FKrwb5jspfeejek65birji2svcu` (`tour_manager_id`),
  CONSTRAINT `fk_package_ids` FOREIGN KEY (`package_id`) REFERENCES `package` (`package_id`),
  CONSTRAINT `fk_tour_manager_id` FOREIGN KEY (`tour_mgr_id`) REFERENCES `tour_manager` (`tour_manager_id`),
  CONSTRAINT `FKrwb5jspfeejek65birji2svcu` FOREIGN KEY (`tour_manager_id`) REFERENCES `tour_manager` (`tour_manager_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour`
--

LOCK TABLES `tour` WRITE;
/*!40000 ALTER TABLE `tour` DISABLE KEYS */;
INSERT INTO `tour` VALUES (1,5.5,'1970-01-01 00:00:00','1970-01-01 00:00:00',5,NULL,NULL,NULL),(2,3.5,NULL,NULL,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tour` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour_manager`
--

DROP TABLE IF EXISTS `tour_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tour_manager` (
  `tour_manager_id` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) DEFAULT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `contact` varchar(45) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`tour_manager_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour_manager`
--

LOCK TABLES `tour_manager` WRITE;
/*!40000 ALTER TABLE `tour_manager` DISABLE KEYS */;
INSERT INTO `tour_manager` VALUES (1,'Pankaj','ASb','afdefa','2347987','gifugeqwbf'),(2,'chetan','bawane','dskj@gmail.com','1234567898','Solapur'),(3,'omkar','wandhare','kshdhk@gmail.com','1234567898','Mumbai');
/*!40000 ALTER TABLE `tour_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tourist`
--

DROP TABLE IF EXISTS `tourist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tourist` (
  `tourist_id` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(30) DEFAULT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `contact` varchar(10) DEFAULT NULL,
  `gender` char(10) DEFAULT NULL,
  `login_id` int DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `age` int DEFAULT NULL,
  PRIMARY KEY (`tourist_id`),
  KEY `fk_login_ids` (`login_id`),
  CONSTRAINT `FKf3gs3qu1bfbvt6lqnekgfao4g` FOREIGN KEY (`login_id`) REFERENCES `login` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tourist`
--

LOCK TABLES `tourist` WRITE;
/*!40000 ALTER TABLE `tourist` DISABLE KEYS */;
INSERT INTO `tourist` VALUES (1,'Akanksha','Suryawanshi','fdfhgjk','9853465','female',NULL,NULL,NULL,NULL),(3,'osdkar','wansfdf','omka@dddfdfd.com','986028789','male',NULL,NULL,NULL,NULL),(4,'osdkar','wansfdf','omka@dddfdfd.com','986028787','male',NULL,NULL,NULL,NULL),(5,'osdkar','wansfdf','omka@dddfdfd.com','986028787','male',NULL,NULL,NULL,NULL),(6,'odddddr','wanereere','omka@dddfdfd.com','986028787','male',NULL,NULL,NULL,NULL),(7,'odddddr','wanereere','omka@dddfdfd.com','986028787','male',NULL,NULL,NULL,NULL),(8,'','','','0','',NULL,'','',0),(9,'odddddr','wanereere','omka@dddfdfd.com','986028787','male',NULL,'A@123','Nagpur',28),(10,NULL,NULL,NULL,'0','',NULL,NULL,'',0),(11,NULL,NULL,NULL,'0','',NULL,'','',0),(12,NULL,NULL,NULL,'0','',NULL,NULL,'',0),(13,NULL,NULL,NULL,'0','',NULL,NULL,'',0),(14,'','','','0','',NULL,'','',0),(15,'hgjhjhj','qqwwd','chetan@123','1234567898','',NULL,'hgghjhj','',88),(16,'kharanjo','japan','kgf@gmail.com','1234567898','',NULL,'kgf@123','',121),(17,'chutki','kdd','dskj@gmail.com','1234567898','',NULL,'Omkar','',45),(18,'hgjhjhj','jhjhjhjh','kshdhk@gmail.com','1234567898','',NULL,'omkjgshhds','Nagpur',45);
/*!40000 ALTER TABLE `tourist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction` (
  `transaction_id` int NOT NULL AUTO_INCREMENT,
  `amout` double DEFAULT NULL,
  `transaction_date` datetime DEFAULT NULL,
  `transaction_type` varchar(45) DEFAULT NULL,
  `travler_booking_id` int DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `transaction_date_date` date DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  KEY `fk_transaction` (`travler_booking_id`),
  CONSTRAINT `fk_transaction` FOREIGN KEY (`travler_booking_id`) REFERENCES `travler_booking` (`travler_booking_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (2,NULL,NULL,'gpay',3,52.2,NULL),(3,NULL,NULL,'gpay',3,52.2,NULL);
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `travler_booking`
--

DROP TABLE IF EXISTS `travler_booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `travler_booking` (
  `travler_booking_id` int NOT NULL AUTO_INCREMENT,
  `booking_date` datetime DEFAULT NULL,
  `tour_id` int DEFAULT NULL,
  `login_id` int DEFAULT NULL,
  `package_id` int DEFAULT NULL,
  `no_of_seats` int DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `booking_date_date_time` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`travler_booking_id`),
  KEY `fk_tour_id` (`tour_id`),
  KEY `fk_package_id` (`package_id`),
  KEY `fk_login_id` (`login_id`),
  CONSTRAINT `fk_login_id` FOREIGN KEY (`login_id`) REFERENCES `login` (`id`),
  CONSTRAINT `fk_package_id` FOREIGN KEY (`package_id`) REFERENCES `package` (`package_id`),
  CONSTRAINT `fk_tour_id` FOREIGN KEY (`tour_id`) REFERENCES `tour` (`tour_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travler_booking`
--

LOCK TABLES `travler_booking` WRITE;
/*!40000 ALTER TABLE `travler_booking` DISABLE KEYS */;
INSERT INTO `travler_booking` VALUES (3,'2023-12-12 00:00:00',NULL,NULL,NULL,22,5.21,NULL);
/*!40000 ALTER TABLE `travler_booking` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-26 13:00:11
