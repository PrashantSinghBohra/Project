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
-- Table structure for table `image_tbl`
--

DROP TABLE IF EXISTS `image_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image_tbl` (
  `id` int NOT NULL,
  `image` longblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image_tbl`
--

LOCK TABLES `image_tbl` WRITE;
/*!40000 ALTER TABLE `image_tbl` DISABLE KEYS */;
INSERT INTO `image_tbl` VALUES (1,_binary '�\��\�\0JFIF\0\0\0\0\0\0�\�\0C\0		\n !%0)!#-$*9*-13666 (;?:4>0563�\�\0C			3\"\"33333333333333333333333333333333333333333333333333��\0\0�\0�\"\0�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0:\0\0\0\0\0\0!1AQ\"aq���#2��B\�\�$34C�\�r�\��\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0\0\0\0\0\0\0\0\0\0\0!12\"�\�\0\0\0?\0\�CM\�OᲗ\�4T�Sd\�\'v\�E�\�ʟ\�\n\\0J�\�lL :ާe��VE�PMW5\�F\�\�nO ��\��Ng��\�\�gx�r\�Q]H�\�8ަB>��6�n��IU�X�uD�\����\\\�\�\�m3\�\�\�\�K��j�j�Oܞ\�ܵ\���\�6�6\�\�\�)c	\�\������-�?�\\B�@j\�k\"\Z88\0\�y�>����9^d�\�s\��\�d���k:[��]t�+\�;�\�0\�+�\�\���sn<�\�q^5\�KY�\�6	\���\\lb&\�\�:s^�\rDuT\�\'fc��Mr\�uJP�Rz��\"�\0��E���j\�\�X\�eX�9(&\�js@�\Z$\0�\�I�\�mQ.g�j\�\�\�5�d$ߐ\�%l��\"\\\�߼�\\0r\0s\�\�Ly�\���H\r�>V\�=7?�ڤkbs#e�9]Q˕\�/\�\�t(8N����\�\�\�h>�����[q\�\�Ɣme{M��v�,�\��\�$�\�);1k^m!\�K-*\�\0���\�\�mW�N|�s����S\�8\��m+ߘ܇s<\�]\�	Uf���\�\�\�\�\�\�\�Vc�Mpk\�\�VRc�C+�1\�\�\�_~у�Z\�I@�9�U\�J\"\n\0\"4*Pe:�eԋ�u�\�M�D�@\�J.\nbRJuP\rwP5My(�>�.\"�Jz\�\�\�v	3�\�l�\�\�͎�:��ݴ\�\�\�+^0�\�Mu�\� �A\���U`�\�)\�f� ?ir6�ǖ[��\�\�+c=/\�q8��\��Y|%tX_\�u\�,���G^\�k�^6\r�\�\"v#1牑�(\ZZ��\���A�RR\�\�F\�5\�p\�\�y밲\�9��u�\�עO4q\�\�=\���`7�cX`�\'T\�v�\�>\'kꠥ��f\�\�y\0m\�l�j�\Z�\nȦ����7۽lї�\�\'C���q\�/\�Yی鱍V\�U\�zY\�]ce0Y[�F\�\�mE\�\������Z\�8�4\�k�r1���l:z+\��12Yu�R\�{��\�:���\�n��	\Zl�\rfԢ��2y�\n<\� uM\�dt�\r\�R��\�]P(Ӣ�\����%.�J]����\�0i���n\���L�\�c. �4y\��#�剥�l���Z�3�i\�\�m���\\�v=.Ik��8\�!\�^yV�d���F\�M�\�U<4D4U\�r\�\�\�}ۃ<o\�ϒ�cj�\�\�\�\�ҹ\�\�˓\��\0\��2\�^&�w\ZO�\�X�\'Sj\�&��ۑ\�\�\�:\�\�\�Y,�\\N8�p\�\Z�\0*\�\r���<�-n��U���Ҵ\�}\�Nz��\�\�\�\�\\s\�������yMj2�rQh� ۭ�,\�M\�#Jk�dn��T�j�	�]l�\���6HN�#��-�4�\�Ou\0��l��\�\�5\�B\�\�c\�\�䷬}|�1UZ\�\�O����G�+\�5\�[W7x�\��\0N��\�d\"��R]{}�\ZWb\'���X\�\�\�1\��)�\�2��ق\�tE\�-f�\Z\�d�\�*��I\��ZަFU�\�$��2\�t�\�[�S�8�F���]Vb8���\�\�,yh�K\�Ve���\�F\�\�k\��,\�o����[^ʙ���\�\�h>&�xA��P\�w[x\�\�/?�/l�}Q	Q��\�G	�X�)��t�(\�TgU\��X\�`u)��\�X*ja��\�\�\�\�ah\�\�xh�M�\r\�\�f\�\�q8�iXE)s(Y-l�fg���O\�\�q.\�q\�\�\�㣈�e�g�\��T\�Q�]\�7����\Z\�i^ӬL��\�;yk䟃!l�-L\�؜�\�\���\"{� �\�%\�p$�nI^�\�\�P~	\��^@��\�^F6`�ƿ\�\�\�7͂\�$��\�nZ7�\�>(�i$8�;|�\�l>��t�h��U��G���B9[l��\�6��?(�\0\�U\�6/W\�\�b�����\�|)��\�1�r֫�pk4\ne�E��C\�`�e5[|\',SE{gm�\�\�u\�\�Oax\�a\�Ռ┆�C�h�o�Ê\�\r�6q\�Z�f\Z��~\�ѓx�ܺʾ�\�C\��`GP�\n�Ũ,\�\\J���\�	o�\�\�){B\�*kg���\rİ�}\�d\�=�؅��a�\�Z^\�\�k�+0�\�?�\�HA�u�\0U}K\�7T\0%�zWR\�m\�.�֧q\�7E\0�Z�8�#z*�j\0=ۮG�\�pn|�hm\�$p�\�\�\�{]\�\r\�r�i81ӾJ\��\0d\0ߓ�]q]�⏭\�g\�\��\�H�\��\�c�?q\�\�/c}��.\�.v\�qԱ)\�\�\ZX)[\�μ��\�\�\\^!�V\�\�\�\�SO\'#+�[\�m\�Z�)\�6�\��Wd\�ĢF�PF�	t]�f\�V���ǣ��\�qcEe\��±�y\�\�F\�\���E_&;\�g\�O�0\�Y3�-\�b��9�C�t\�\�%$%t\Z\�㪷c[\�>!\�p\�\�y�\�ެ\�mQM�E\�ݵ\�P\�P�WK�_�]ԁ�c������ik���(C\��1��\�\rDm;F\�>\�U�\Z<IƸ�6L�\�\0*�4^��\�\�B�\"6Pn�q����2�m t�����\�\�ݟ�H\�\�;:\�\n�F:�6�w\��@�\'\�n\�؂y\�\�\�yq\"ˡ\�j\�E\�\�]\����\�\��\0�\�\��	U\�\�a\�1J\�\�k\�L\�\�rZm\��v敺)�\�&Q��\�&\�%\Z +^RZ\��>\�c\�+���K�a�\�]Ʀ��\�U��Ѱ�,�w4\�yiȯN�\�sn\�kt_=vyC%W\ZP:�\�BL\�#��\�_@����\�^w���j=/ܰ\�7���ө�\�_~�u\�9\�_BW-\�8��\�\n��ߊ\�\�p��\�?��m�.\�ɍxV,\�Q�W\�\\\�y�_��Q(�4��<\�=OT\�֓�<{\�\�:\�\�7]Q\"\�\r�P;\"�\�\�\����g\�\�\�ĉ\�\�\�\�\�X۩D� \�x\�*b�\�6@�6E\�Ah �g\r�^\�q�Qc�vz�\�\�8�\n\�Ꚋ|B��}K�\0Ձ�4\r��\�^K\�骩\�\�\�QM+e�@\�\Z\�\�\�\�\�\�$<k��{c\�\�\�jH\�v��O�Y9\�\�K�=M\�!\�[U\�}�q/\�\�u\���\�Ѹ\�9���\�^ٌ8�\r�-%�D\�\�\��d�\0i��\�+�\ZK\�u\�\�d\�\�u�3��\�����\�?Y\�O�\��J\��\�\�c���d\�K�@|7N4��\0-d(?�\�');
/*!40000 ALTER TABLE `image_tbl` ENABLE KEYS */;
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
  `Service_Image` longblob,
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
INSERT INTO `service_info_tbl` VALUES (1001,'AC Repairing',500,2,1,101,NULL),(1002,'Fan Repairing',600,3,1,101,NULL),(1003,'AC Repairing',400,2,1,102,NULL),(1004,'Fan Repairing',700,2,1,102,NULL),(1005,'Refrigerator Repairing',900,2,1,103,NULL),(1006,'Refrigerator Repairing',600,2,2,101,NULL),(1007,'Washing Machine',800,3,1,104,NULL);
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
  `Vendor_Image` longblob,
  PRIMARY KEY (`Vendor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_info_tbl`
--

LOCK TABLES `vendor_info_tbl` WRITE;
/*!40000 ALTER TABLE `vendor_info_tbl` DISABLE KEYS */;
INSERT INTO `vendor_info_tbl` VALUES (101,'Aditya','Birla','8181116611','AdityaBirla@gmail.com','AdityaBirla','Aditya@123','Market Yard','Maharashtra','Pune',203171,_binary '�\��\�\0JFIF\0\0\0\0\0\0�\�\0C\0		\n !%0)!#-$*9*-13666 (;?:4>0563�\�\0C			3\"\"33333333333333333333333333333333333333333333333333��\0\0�\0�\"\0�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0:\0\0\0\0\0\0!1AQ\"aq���#2��B\�\�$34C�\�r�\��\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0\0\0\0\0\0\0\0\0\0\0!12\"�\�\0\0\0?\0\�CM\�OᲗ\�4T�Sd\�\'v\�E�\�ʟ\�\n\\0J�\�lL :ާe��VE�PMW5\�F\�\�nO ��\��Ng��\�\�gx�r\�Q]H�\�8ަB>��6�n��IU�X�uD�\����\\\�\�\�m3\�\�\�\�K��j�j�Oܞ\�ܵ\���\�6�6\�\�\�)c	\�\������-�?�\\B�@j\�k\"\Z88\0\�y�>����9^d�\�s\��\�d���k:[��]t�+\�;�\�0\�+�\�\���sn<�\�q^5\�KY�\�6	\���\\lb&\�\�:s^�\rDuT\�\'fc��Mr\�uJP�Rz��\"�\0��E���j\�\�X\�eX�9(&\�js@�\Z$\0�\�I�\�mQ.g�j\�\�\�5�d$ߐ\�%l��\"\\\�߼�\\0r\0s\�\�Ly�\���H\r�>V\�=7?�ڤkbs#e�9]Q˕\�/\�\�t(8N����\�\�\�h>�����[q\�\�Ɣme{M��v�,�\��\�$�\�);1k^m!\�K-*\�\0���\�\�mW�N|�s����S\�8\��m+ߘ܇s<\�]\�	Uf���\�\�\�\�\�\�\�Vc�Mpk\�\�VRc�C+�1\�\�\�_~у�Z\�I@�9�U\�J\"\n\0\"4*Pe:�eԋ�u�\�M�D�@\�J.\nbRJuP\rwP5My(�>�.\"�Jz\�\�\�v	3�\�l�\�\�͎�:��ݴ\�\�\�+^0�\�Mu�\� �A\���U`�\�)\�f� ?ir6�ǖ[��\�\�+c=/\�q8��\��Y|%tX_\�u\�,���G^\�k�^6\r�\�\"v#1牑�(\ZZ��\���A�RR\�\�F\�5\�p\�\�y밲\�9��u�\�עO4q\�\�=\���`7�cX`�\'T\�v�\�>\'kꠥ��f\�\�y\0m\�l�j�\Z�\nȦ����7۽lї�\�\'C���q\�/\�Yی鱍V\�U\�zY\�]ce0Y[�F\�\�mE\�\������Z\�8�4\�k�r1���l:z+\��12Yu�R\�{��\�:���\�n��	\Zl�\rfԢ��2y�\n<\� uM\�dt�\r\�R��\�]P(Ӣ�\����%.�J]����\�0i���n\���L�\�c. �4y\��#�剥�l���Z�3�i\�\�m���\\�v=.Ik��8\�!\�^yV�d���F\�M�\�U<4D4U\�r\�\�\�}ۃ<o\�ϒ�cj�\�\�\�\�ҹ\�\�˓\��\0\��2\�^&�w\ZO�\�X�\'Sj\�&��ۑ\�\�\�:\�\�\�Y,�\\N8�p\�\Z�\0*\�\r���<�-n��U���Ҵ\�}\�Nz��\�\�\�\�\\s\�������yMj2�rQh� ۭ�,\�M\�#Jk�dn��T�j�	�]l�\���6HN�#��-�4�\�Ou\0��l��\�\�5\�B\�\�c\�\�䷬}|�1UZ\�\�O����G�+\�5\�[W7x�\��\0N��\�d\"��R]{}�\ZWb\'���X\�\�\�1\��)�\�2��ق\�tE\�-f�\Z\�d�\�*��I\��ZަFU�\�$��2\�t�\�[�S�8�F���]Vb8���\�\�,yh�K\�Ve���\�F\�\�k\��,\�o����[^ʙ���\�\�h>&�xA��P\�w[x\�\�/?�/l�}Q	Q��\�G	�X�)��t�(\�TgU\��X\�`u)��\�X*ja��\�\�\�\�ah\�\�xh�M�\r\�\�f\�\�q8�iXE)s(Y-l�fg���O\�\�q.\�q\�\�\�㣈�e�g�\��T\�Q�]\�7����\Z\�i^ӬL��\�;yk䟃!l�-L\�؜�\�\���\"{� �\�%\�p$�nI^�\�\�P~	\��^@��\�^F6`�ƿ\�\�\�7͂\�$��\�nZ7�\�>(�i$8�;|�\�l>��t�h��U��G���B9[l��\�6��?(�\0\�U\�6/W\�\�b�����\�|)��\�1�r֫�pk4\ne�E��C\�`�e5[|\',SE{gm�\�\�u\�\�Oax\�a\�Ռ┆�C�h�o�Ê\�\r�6q\�Z�f\Z��~\�ѓx�ܺʾ�\�C\��`GP�\n�Ũ,\�\\J���\�	o�\�\�){B\�*kg���\rİ�}\�d\�=�؅��a�\�Z^\�\�k�+0�\�?�\�HA�u�\0U}K\�7T\0%�zWR\�m\�.�֧q\�7E\0�Z�8�#z*�j\0=ۮG�\�pn|�hm\�$p�\�\�\�{]\�\r\�r�i81ӾJ\��\0d\0ߓ�]q]�⏭\�g\�\��\�H�\��\�c�?q\�\�/c}��.\�.v\�qԱ)\�\�\ZX)[\�μ��\�\�\\^!�V\�\�\�\�SO\'#+�[\�m\�Z�)\�6�\��Wd\�ĢF�PF�	t]�f\�V���ǣ��\�qcEe\��±�y\�\�F\�\���E_&;\�g\�O�0\�Y3�-\�b��9�C�t\�\�%$%t\Z\�㪷c[\�>!\�p\�\�y�\�ެ\�mQM�E\�ݵ\�P\�P�WK�_�]ԁ�c������ik���(C\��1��\�\rDm;F\�>\�U�\Z<IƸ�6L�\�\0*�4^��\�\�B�\"6Pn�q����2�m t�����\�\�ݟ�H\�\�;:\�\n�F:�6�w\��@�\'\�n\�؂y\�\�\�yq\"ˡ\�j\�E\�\�]\����\�\��\0�\�\��	U\�\�a\�1J\�\�k\�L\�\�rZm\��v敺)�\�&Q��\�&\�%\Z +^RZ\��>\�c\�+���K�a�\�]Ʀ��\�U��Ѱ�,�w4\�yiȯN�\�sn\�kt_=vyC%W\ZP:�\�BL\�#��\�_@����\�^w���j=/ܰ\�7���ө�\�_~�u\�9\�_BW-\�8��\�\n��ߊ\�\�p��\�?��m�.\�ɍxV,\�Q�W\�\\\�y�_��Q(�4��<\�=OT\�֓�<{\�\�:\�\�7]Q\"\�\r�P;\"�\�\�\����g\�\�\�ĉ\�\�\�\�\�X۩D� \�x\�*b�\�6@�6E\�Ah �g\r�^\�q�Qc�vz�\�\�8�\n\�Ꚋ|B��}K�\0Ձ�4\r��\�^K\�骩\�\�\�QM+e�@\�\Z\�\�\�\�\�\�$<k��{c\�\�\�jH\�v��O�Y9\�\�K�=M\�!\�[U\�}�q/\�\�u\���\�Ѹ\�9���\�^ٌ8�\r�-%�D\�\�\��d�\0i��\�+�\ZK\�u\�\�d\�\�u�3��\�����\�?Y\�O�\��J\��\�\�c���d\�K�@|7N4��\0-d(?�\�'),(102,'Advik','Jadhav','8811166711','AdvikJadhav@gmail.com','Advik-Jadhav','Advik@123','Behind Post Office','Maharashtra','Pune',403171,NULL),(103,'Yash','Kumar','8811008811','YashKumar101@gmail.com','Yash-Kumar','Yash@123','Shivajichoak','Maharashtra','Nashik',203133,NULL),(104,'Niraj','Desai','9811008800','NirajDesai01@gmail.com','Niraj-Desai','Niraj@123','Near SP College','Maharashtra','Pune',403113,NULL),(105,'Sanjay','Raut','8899116611','SanjayRaut99@gmail.com','Sanjay-Raut','Sanjay@123','near kalyan','Maharashtra','Mumbai',207671,NULL);
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

-- Dump completed on 2022-03-01 21:28:16
