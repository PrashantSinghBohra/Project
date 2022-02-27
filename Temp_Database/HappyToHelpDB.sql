-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: dummy
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `booking_info_tbl`
--

DROP TABLE IF EXISTS `booking_info_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking_info_tbl` (
  `Booking_id` int NOT NULL AUTO_INCREMENT,
  `Booking_Service_info_id` int DEFAULT NULL,
  `Booking_Customer_id` int DEFAULT NULL,
  `Booking_service_id` int DEFAULT NULL,
  `Booking_service_cost` int DEFAULT NULL,
  `Booking_Status` text,
  `Booking_Date` datetime DEFAULT NULL,
  `Booking_Shedule_Date_Time` datetime DEFAULT NULL,
  `Feedback_Rating` int DEFAULT NULL,
  `FeedBack_Comment` text,
  `Feedback_Date` date DEFAULT NULL,
  PRIMARY KEY (`Booking_id`),
  KEY `Booking_Service_info_id` (`Booking_Service_info_id`),
  KEY `Booking_Customer_id` (`Booking_Customer_id`),
  KEY `Booking_service_id` (`Booking_service_id`),
  CONSTRAINT `booking_info_tbl_ibfk_1` FOREIGN KEY (`Booking_Service_info_id`) REFERENCES `booking_service_info_tbl` (`Booking_Service_Id`),
  CONSTRAINT `booking_info_tbl_ibfk_2` FOREIGN KEY (`Booking_Customer_id`) REFERENCES `customer_info_tbl` (`Customer_id`),
  CONSTRAINT `booking_info_tbl_ibfk_3` FOREIGN KEY (`Booking_service_id`) REFERENCES `service_info_tbl` (`Service_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=504 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_info_tbl`
--

LOCK TABLES `booking_info_tbl` WRITE;
/*!40000 ALTER TABLE `booking_info_tbl` DISABLE KEYS */;
INSERT INTO `booking_info_tbl` VALUES (501,1,11,1001,500,'Completed','2022-02-20 01:50:11','2022-03-25 02:00:00',5,' Satisfy with the service','2022-02-26'),(502,1,11,1002,600,'Completed','2022-02-20 01:55:01','2022-03-25 02:00:00',4,'Good Service','2022-02-26'),(503,2,12,1001,500,'Inprogess','2022-02-25 02:55:01','2022-03-02 03:00:10',NULL,NULL,NULL);
/*!40000 ALTER TABLE `booking_info_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_service_info_tbl`
--

DROP TABLE IF EXISTS `booking_service_info_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking_service_info_tbl` (
  `Booking_Service_Id` int NOT NULL AUTO_INCREMENT,
  `Booking_total_Cost` int DEFAULT NULL,
  `Service_Status` varchar(255) DEFAULT NULL,
  `Booking_CustomerId` int DEFAULT NULL,
  PRIMARY KEY (`Booking_Service_Id`),
  KEY `CustomerId` (`Booking_CustomerId`),
  CONSTRAINT `booking_service_info_tbl_ibfk_1` FOREIGN KEY (`Booking_CustomerId`) REFERENCES `customer_info_tbl` (`Customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_service_info_tbl`
--

LOCK TABLES `booking_service_info_tbl` WRITE;
/*!40000 ALTER TABLE `booking_service_info_tbl` DISABLE KEYS */;
INSERT INTO `booking_service_info_tbl` VALUES (1,1100,'Completed',11),(2,500,'InProcess',12);
/*!40000 ALTER TABLE `booking_service_info_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_info_tbl`
--

DROP TABLE IF EXISTS `customer_info_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_info_tbl` (
  `Customer_id` int NOT NULL AUTO_INCREMENT,
  `Customer_FirstName` varchar(255) DEFAULT NULL,
  `Customer_LastName` varchar(255) DEFAULT NULL,
  `Customer_MobileNo` varchar(255) DEFAULT NULL,
  `Customer_EmailId` varchar(255) DEFAULT NULL,
  `Customer_UserName` varchar(255) DEFAULT NULL,
  `Customer_Password` varchar(255) DEFAULT NULL,
  `Customer_Address` text,
  `Customer_State` varchar(255) DEFAULT NULL,
  `Customer_City` varchar(255) DEFAULT NULL,
  `Customer_Pincode` int DEFAULT NULL,
  PRIMARY KEY (`Customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_info_tbl`
--

LOCK TABLES `customer_info_tbl` WRITE;
/*!40000 ALTER TABLE `customer_info_tbl` DISABLE KEYS */;
INSERT INTO `customer_info_tbl` VALUES (11,'Pooja','Kale','9988776655','Poojakale0911@gm1il.com','Pooja-Kale','Pooja@01','Near Post Office','Maharashtra','Pune',442277),(12,'Rutuja','Firke','8877665511','RutujaFirke1002@gmail.com','Rututja-Firke','Rutuja@02','Near Station','Maharashtra','Mumbai',402271),(13,'Prashant','Bohra','9881776655','PrashantBohra22@gm1il.com','Prashant-Bohra','Prashant@123','Behind HDFC Bank','Maharashtra','Nashik',402277),(14,'Nikhil','Sahane','8781776655','NikhilSahane33@gmail.com','Nikhil-Sahane','Nikhil@456','ABC Chock','Maharashtra','Pune',402217),(15,'Lucky','Kumar','9881116611','LuckyKumar@gmail.com','Lucky_Kumar','Lucky@123','Near Market','Maharashtra','Nashik',403271),(16,'Anurag','Deore','9881226611','AnuragDeore@gmail.com','Anurag-Deore','Anurag@123','Near church','Maharashtra','Pune',203271),(17,'Anurag','Deore','9881226611','AnuragDeore@gmail.com','Anurag-Deore','Anurag@123','Near church','Maharashtra','Pune',203271);
/*!40000 ALTER TABLE `customer_info_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback_info_tbl`
--

DROP TABLE IF EXISTS `feedback_info_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback_info_tbl` (
  `Feedback_Id` int NOT NULL AUTO_INCREMENT,
  `Feedback_vendor_id` int DEFAULT NULL,
  `Feedback_customer_id` int DEFAULT NULL,
  PRIMARY KEY (`Feedback_Id`),
  KEY `Feedback_vendor_id` (`Feedback_vendor_id`),
  KEY `Feedback_customer_id` (`Feedback_customer_id`),
  CONSTRAINT `feedback_info_tbl_ibfk_1` FOREIGN KEY (`Feedback_vendor_id`) REFERENCES `vendor_info_tbl` (`Vendor_id`),
  CONSTRAINT `feedback_info_tbl_ibfk_2` FOREIGN KEY (`Feedback_customer_id`) REFERENCES `customer_info_tbl` (`Customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10005 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback_info_tbl`
--

LOCK TABLES `feedback_info_tbl` WRITE;
/*!40000 ALTER TABLE `feedback_info_tbl` DISABLE KEYS */;
INSERT INTO `feedback_info_tbl` VALUES (10001,101,11),(10002,101,12),(10003,102,13),(10004,103,14);
/*!40000 ALTER TABLE `feedback_info_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_info_tbl`
--

DROP TABLE IF EXISTS `service_info_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_info_tbl` (
  `Service_Id` int NOT NULL AUTO_INCREMENT,
  `Service_Name` varchar(255) DEFAULT NULL,
  `Service_Cost` int DEFAULT NULL,
  `Service_Discount` int DEFAULT NULL,
  `Service_Time_Duration` int DEFAULT NULL,
  `Service_vendor_id` int DEFAULT NULL,
  PRIMARY KEY (`Service_Id`),
  KEY `Service_vendor_id` (`Service_vendor_id`),
  CONSTRAINT `service_info_tbl_ibfk_1` FOREIGN KEY (`Service_vendor_id`) REFERENCES `vendor_info_tbl` (`Vendor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1008 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_info_tbl`
--

LOCK TABLES `service_info_tbl` WRITE;
/*!40000 ALTER TABLE `service_info_tbl` DISABLE KEYS */;
INSERT INTO `service_info_tbl` VALUES (1001,'AC Repairing',500,2,1,101),(1002,'Fan Repairing',600,3,1,101),(1003,'AC Repairing',400,2,1,102),(1004,'Fan Repairing',700,2,1,102),(1005,'Refrigerator Repairing',900,2,1,103),(1006,'Refrigerator Repairing',600,2,2,101),(1007,'Washing Machine',800,3,1,104);
/*!40000 ALTER TABLE `service_info_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor_info_tbl`
--

DROP TABLE IF EXISTS `vendor_info_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor_info_tbl` (
  `Vendor_id` int NOT NULL AUTO_INCREMENT,
  `Vendor_FirstName` varchar(255) DEFAULT NULL,
  `Vendor_LastName` varchar(255) DEFAULT NULL,
  `Vendor_MobileNo` varchar(255) DEFAULT NULL,
  `Vendor_EmailId` varchar(255) DEFAULT NULL,
  `Vendor_UserName` varchar(255) DEFAULT NULL,
  `Vendor_Password` varchar(255) DEFAULT NULL,
  `Vendor_Address` text,
  `Vendor_State` varchar(255) DEFAULT NULL,
  `Vendor_City` varchar(255) DEFAULT NULL,
  `Vendor_Pincode` int DEFAULT NULL,
  PRIMARY KEY (`Vendor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_info_tbl`
--

LOCK TABLES `vendor_info_tbl` WRITE;
/*!40000 ALTER TABLE `vendor_info_tbl` DISABLE KEYS */;
INSERT INTO `vendor_info_tbl` VALUES (101,'Aditya','Birla','8181116611','AdityaBirla@gmail.com','AdityaBirla','Aditya@123','Market Yard','Maharashtra','Pune',203171),(102,'Advik','Jadhav','8811166711','AdvikJadhav@gmail.com','Advik-Jadhav','Advik@123','Behind Post Office','Maharashtra','Pune',403171),(103,'Yash','Kumar','8811008811','YashKumar101@gmail.com','Yash-Kumar','Yash@123','Shivajichoak','Maharashtra','Nashik',203133),(104,'Niraj','Desai','9811008800','NirajDesai01@gmail.com','Niraj-Desai','Niraj@123','Near SP College','Maharashtra','Pune',403113),(105,'Sanjay','Raut','8899116611','SanjayRaut99@gmail.com','Sanjay-Raut','Sanjay@123','near kalyan','Maharashtra','Mumbai',207671);
/*!40000 ALTER TABLE `vendor_info_tbl` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-27 16:52:30
