CREATE DATABASE  IF NOT EXISTS `hotel_reg` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hotel_reg`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: hotel_reg
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `class_of_room`
--

DROP TABLE IF EXISTS `class_of_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_of_room` (
  `id_class_of_room` int NOT NULL,
  `class_room_en` varchar(20) NOT NULL,
  `class_room_uk` varchar(45) NOT NULL,
  `amount` int DEFAULT NULL,
  `guests` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  PRIMARY KEY (`id_class_of_room`),
  CONSTRAINT `id_class_of_room` FOREIGN KEY (`id_class_of_room`) REFERENCES `rooms` (`id_class_of_room`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_of_room`
--

LOCK TABLES `class_of_room` WRITE;
/*!40000 ALTER TABLE `class_of_room` DISABLE KEYS */;
INSERT INTO `class_of_room` VALUES (0,'unknown','невідомо',0,0,0),(1,'luxe','люкс',2,2,5500),(2,'comfort','комфорт',3,3,2000),(3,'basic','звичайний',5,2,1000),(4,'econom','економ',5,2,750);
/*!40000 ALTER TABLE `class_of_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id_order` int NOT NULL AUTO_INCREMENT,
  `id_user` int NOT NULL,
  `date_of_settlement` date NOT NULL,
  `date_of_departure` date NOT NULL,
  `id_room` int NOT NULL,
  `payment_status_en` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `payment_status_uk` varchar(45) COLLATE utf8mb4_croatian_ci NOT NULL,
  `date_of_create_order` date NOT NULL,
  `amount_of_guests` int NOT NULL,
  `room_type` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id_order`),
  KEY `id_user_idx` (`id_user`),
  KEY `id_room_idx` (`id_room`),
  CONSTRAINT `id_room` FOREIGN KEY (`id_room`) REFERENCES `rooms` (`id_room`),
  CONSTRAINT `id_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_croatian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (23,6,'2022-05-21','2022-05-28',14,'expired','протермінований','2022-05-10',0,'null'),(24,6,'2022-05-13','2022-05-21',13,'expired','протермінований','2022-05-10',0,'null'),(25,6,'2022-05-14','2022-05-21',12,'expired','протермінований','2022-05-05',0,'null'),(26,6,'2022-05-20','2022-05-20',6,'payed','сплачений','2022-05-13',3,'comfort'),(27,6,'2022-05-13','2022-05-20',15,'payed','сплачений','2022-05-13',1,'luxe'),(28,6,'2022-05-14','2022-05-15',6,'payed','сплачений','2022-05-14',0,'null'),(29,6,'2022-05-14','2022-05-15',7,'payed','сплачений','2022-05-14',2,'comfort'),(30,6,'2022-05-20','2022-05-28',2,'payed','сплачений','2022-05-14',2,'comfort'),(31,6,'2022-05-20','2022-05-21',10,'payed','сплачений','2022-05-14',2,'comfort'),(32,6,'2022-05-20','2022-05-28',1,'expired','протермінований','2022-05-10',0,'null'),(33,6,'2022-05-19','2022-05-31',8,'payed','сплачений','2022-05-14',1,'comfort'),(34,6,'2022-05-14','2022-05-21',15,'payed','сплачений','2022-05-14',1,'basic'),(35,6,'2022-05-14','2022-05-21',14,'payed','сплачений','2022-05-14',0,'null'),(36,6,'2022-05-14','2022-05-28',11,'payed','сплачений','2022-05-14',3,'econome'),(37,6,'2022-05-14','2022-05-28',13,'payed','сплачений','2022-05-14',2,'basic'),(38,6,'2022-05-28','2022-05-30',9,'expired','протермінований','2022-05-14',3,'econome'),(39,6,'2022-05-21','2022-05-28',12,'expired','протермінований','2022-05-14',2,'basic'),(40,6,'2022-05-20','2022-05-28',1,'payed','сплачений','2022-05-14',0,'null'),(41,6,'2022-05-14','2022-05-21',3,'expired','протермінований','2022-05-14',2,'comfort'),(42,6,'2022-05-21','2022-05-28',4,'expired','протермінований','2022-05-14',2,'basic'),(43,6,'2022-05-19','2022-05-28',3,'expired','протермінований','2022-05-15',1,'comfort'),(44,6,'2022-05-15','2022-05-23',0,'payed','сплачений','2022-05-15',0,'null'),(45,6,'2022-05-20','2022-05-28',0,'waiting to approve','розглядається','2022-05-18',2,'basic'),(46,6,'2022-05-20','2022-05-20',0,'waiting to approve','розглядається','2022-05-18',1,'comfort'),(47,6,'2022-05-20','2022-05-28',0,'waiting to approve','розглядається','2022-05-18',2,'basic'),(48,6,'2022-05-20','2022-05-28',0,'waiting to approve','розглядається','2022-05-18',2,'basic'),(49,6,'2022-05-20','2022-05-28',0,'waiting to approve','розглядається','2022-05-18',3,'basic'),(50,6,'2022-05-20','2022-05-28',0,'waiting to approve','розглядається','2022-05-18',3,'comfort'),(51,6,'2022-05-20','2022-05-28',0,'expired','протермінований','2022-05-18',0,'null'),(52,6,'2022-05-20','2022-05-28',0,'expired','протермінований','2022-05-18',0,'null');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `id_room` int NOT NULL AUTO_INCREMENT,
  `id_class_of_room` int NOT NULL,
  `image` varchar(255) NOT NULL,
  `status_en` varchar(255) DEFAULT NULL,
  `status_uk` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_room`),
  KEY `id_class_of_room_idx` (`id_class_of_room`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (0,0,'EMPTY_ROOM','available','доступний'),(1,2,'/images/comfort_room.png','booked','заброньований'),(2,3,'/images/basic_room.png','booked','заброньований'),(3,4,'/images/econome_room.png','available','доступний'),(4,4,'/images/econome_room.png','available','доступний'),(5,4,'/images/econome_room.png','available','доступний'),(6,1,'/images/luxe_room.png','booked','заброньований'),(7,2,'/images/comfort_room.png','booked','заброньований'),(8,3,'/images/basic_room.png','booked','заброньований'),(9,4,'/images/econome_room.png','available','доступний'),(10,1,'/images/luxe_room.png','booked','заброньований'),(11,3,'/images/basic_room.png','booked','заброньований'),(12,4,'/images/econome_room.png','available','доступний'),(13,3,'/images/basic_room.png','booked','заброньований'),(14,2,'/images/comfort_room.png','booked','заброньований'),(15,3,'/images/basic_room.png','booked','заброньований');
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL,
  `fname` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lname` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `mobile` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Ivanko','Babuk','m@ga.as','DAsad2ad','2002-08-15','0986087609','user'),(2,'Ihor','Bober','bober@gmail.com','fasvaNMW21','2002-08-15','0986087609','user'),(3,'Sergiy','Olejuk','user1@gmail.com','nasaMAasd12','2002-08-15','0986087609','user'),(5,'Danylo','Vinovskyi','danylo.vinovskiy@gmail.com','Danylo2641164','2002-08-15','0986087609','user'),(6,'Manager','Manager','manager@manager.com','Manager1','2022-05-13','0630311988','admin'),(7,'Jack','Bober','User123@gmail.com','Danylo15','2022-05-14','0955595661','user'),(8,'Yapel','Moj','igor@gmail.com','basa2agsA','2002-08-15','0986087609','user'),(9,'Jojo','Casper','da@gmail.com','basawyakmA2','2002-08-15','0986087609','user'),(10,'Jasper','Zelenyi','Yes@gmail.com','VASJBNHV1avaw','2002-08-15','0986087609','user'),(11,'Joe','Lency','No@gmail.com','VAwJHWhvAW1','2002-08-15','0986087609','user'),(12,'Mijar','India','Lolo@gmail.com','LKJVawvuUyv2','2002-08-15','0986087609','user'),(13,'Jayko','Bezz','Uas@gmail.com','AVWasvassva1','2002-08-15','0986087609','user'),(14,'Slava','Io','margin@gmail.com','vaSWFASBVA1','2002-08-15','0986087609','user'),(15,'Maryan','Bas','yoy@gmail.com','vasavAW21av','2002-08-15','0986087609','user'),(16,'Taras','Prots','yas@gmail.com','YAFSAbasAV12','2002-08-15','0986087609','user'),(17,'Yurii','Moq','Mesan@gmail.com','vASSUSAB1','2002-08-15','0986087609','user'),(18,'Joe','Paper','Meyson@gmail.com','AGSAKJNB1','2002-08-15','0986087609','user'),(19,'Ivas','Ivaskoc','ivas@gmail.com','ABSANMASU1','2002-08-15','0986087609','user'),(20,'Uas','Hoe','soa@gmail.com','ABSAUIasacv1','2002-08-15','0986087609','user'),(21,'Hyas','Mattee','malina@gmail.com','VAjlBA21vA','2002-08-15','0986087609','user'),(22,'Koa','Muja','jojo@gmail.com','BASnmakl21','2002-08-15','0986087609','user'),(24,'ASbas','bsabsa','man1241ager@manager.com','Gisbter12412','2022-05-14','1211721211','user'),(25,'Pok','Jok','yoy@gmail.com','PokJok123','2003-12-08','0864123152','user');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'hotel_reg'
--
/*!50106 SET @save_time_zone= @@TIME_ZONE */ ;
/*!50106 DROP EVENT IF EXISTS `update_status` */;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `update_status` ON SCHEDULE EVERY 1 SECOND STARTS '2022-05-13 23:47:46' ON COMPLETION NOT PRESERVE ENABLE COMMENT 'Update Status from booked to avaliable after 2 days.' DO UPDATE orders
INNER JOIN rooms ON orders.id_room = rooms.id_room
SET 
orders.payment_status_en = "expired",
orders.payment_status_uk= "протермінований",
rooms.status_en = 'available',
rooms.status_uk = 'доступний'
WHERE date_of_create_order < CURRENT_TIMESTAMP - INTERVAL 2 day and orders.payment_status_en = 'need to pay' and rooms.status_en <> 'available' */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
DELIMITER ;
/*!50106 SET TIME_ZONE= @save_time_zone */ ;

--
-- Dumping routines for database 'hotel_reg'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-26 15:33:04
