-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: doanweb
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
-- Table structure for table `content`
--

DROP TABLE IF EXISTS `content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `content` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(200) DEFAULT NULL,
  `Brief` varchar(150) DEFAULT NULL,
  `Content` varchar(1000) DEFAULT NULL,
  `CreateDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdateTime` timestamp NULL DEFAULT NULL,
  `AuthorId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `AuthorId_idx` (`AuthorId`),
  CONSTRAINT `AuthorId` FOREIGN KEY (`AuthorId`) REFERENCES `member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content`
--

LOCK TABLES `content` WRITE;
/*!40000 ALTER TABLE `content` DISABLE KEYS */;
INSERT INTO `content` VALUES (1,'Sơ lược loài người số 1 ','Sơ lược loài người số 1 Sơ lược loài người số 1 Sơ lược loài người số 1 ','Sơ lược loài người số 1 Sơ lược loài người số 1 Sơ lược loài người số 1 Sơ lược loài người số 1 Sơ lược loài người số 1 Sơ lược loài người số 1 ','2021-11-25 16:33:32','2021-12-03 14:57:51',1),(2,'Sơ lược loài người số 2','Sơ lược loài người số 2 Sơ lược loài người số 1 Sơ lược loài người số 1 ','Sơ lược loài người số 2 Sơ lược loài người số 1 Sơ lược loài người số 1 Sơ lược loài người số 2 Sơ lược loài người số 1 Sơ lược loài người số 1 ','2021-11-25 16:33:32','2021-12-03 14:58:06',1),(3,'Bài viết 1','Tóm tắt về lịch sử loài người số 1','Tóm tắt về lịch sử loài người Tóm tắt về lịch sử loài người Tóm tắt về lịch sử loài người Tóm tắt về lịch sử loài người Tóm tắt về lịch sử loài người Tóm tắt về lịch sử loài người Tóm tắt về lịch sử loài người ','2021-11-25 16:33:32','2021-12-02 13:11:48',1),(4,'Sơ lược loài người số 3','Sơ lược loài người số 3 Sơ lược loài người số 1 Sơ lược loài người số 1 ','Sơ lược loài người số 3 Sơ lược loài người số 1 Sơ lược loài người số 1 Sơ lược loài người số 3 Sơ lược loài người số 1 Sơ lược loài người số 1 ','2021-12-03 08:17:26','2021-12-03 14:58:28',6),(5,'Sơ lược loài người số 4','Sơ lược loài người số 4Sơ lược loài người số 4Sơ lược loài người số 4Sơ lược loài người số 4','Sơ lược loài người số 4Sơ lược loài người số 4Sơ lược loài người số 4Sơ lược loài người số 4Sơ lược loài người số 4Sơ lược loài người số 4Sơ lược loài người số 4Sơ lược loài người số 4','2021-11-26 15:32:24','2021-12-03 14:58:47',3),(6,'Sơ lược loài người số 5','Sơ lược loài người số 5Sơ lược loài người số 4Sơ lược loài người số 4Sơ lược loài người số 4','Sơ lược loài người số 5Sơ lược loài người số 4Sơ lược loài người số 4Sơ lược loài người số 4Sơ lược loài người số 5Sơ lược loài người số 4Sơ lược loài người số 4Sơ lược loài người số 4','2021-11-27 00:10:12','2021-12-03 14:59:13',1),(7,'Sơ lược loài người số 6','Sơ lược loài người số 6Sơ lược loài người số 4Sơ lược loài người số 4Sơ lược loài người số 4','Sơ lược loài người số 6Sơ lược loài người số 6Sơ lược loài người số 6Sơ lược loài người số 6Sơ lược loài người số 6','2021-11-30 14:00:39','2021-12-03 14:59:30',6),(8,'Sơ lược loài người số 7 ','Sơ lược loài người số 7 Sơ lược loài người số 7 Sơ lược loài người số 7 Sơ lược loài người số 7 Sơ lược loài người số 7 ','Sơ lược loài người số 7 Sơ lược loài người số 7 Sơ lược loài người số 7 Sơ lược loài người số 7 Sơ lược loài người số 7 Sơ lược loài người số 7 ','2021-11-27 00:10:12','2021-12-03 14:59:45',6),(9,'Dân TranVD2','Dân TranVDDân TranVDDân TranVDDân TranVDDân TranVDDân TranVDDân TranVDDân TranV','Dân TranVDDân TranVDDân TranVDDân TranVDDân TranVDDân TranVDDân TranVDDân TranVDDân TranVDDân TranVDDân TranVDDân TranVDDân TranVDDân TranVDDân TranVDDân TranVD','2021-12-02 16:27:12',NULL,6),(10,'Dân TranVD','Sơ lược loài người số 8 Sơ lược loài người số 7 Sơ lược loài người số 7 Sơ lược loài người số 7 ','Dân TranVDDân TranVDDân TranVDDân TranVDDân TranVDDân TranVDDân TranVDDân TranVDSơ lược loài người số 8 Sơ lược loài người số 7 Sơ lược loài người số 7 Sơ lược loài người số 7','2021-12-01 12:53:14','2021-12-03 15:00:00',6),(11,'Dân TranVD3','Dân TranVD3Dân TranVD3Dân TranVD3Dân TranVD3','Dân TranVD3Dân TranVD3Dân TranVD3Dân TranVD3Dân TranVD3Dân TranVD3Dân TranVD3','2021-12-03 08:17:54',NULL,6),(12,'Dân TranVD3','Dân TranVDDân TranVDDân TranVD','Dân TranVDDân TranVDDân TranVDDân TranVDDân TranVDDân TranVD','2021-12-02 16:31:40',NULL,6),(13,'Lịch sử loài người số 2 Lịch sử loài người số 2 Lịch sử loài người số 2 Lịch sử loài người số 2 ','Lịch sử loài người số 2 Lịch sử loài người số 2 Lịch sử loài người số 2 Lịch sử loài người số 2 ','Lịch sử loài người số 2 Lịch sử loài người số 2 Lịch sử loài người số 2 Lịch sử loài người số 2 Lịch sử loài người số 2 Lịch sử loài người số 2 Lịch sử loài người số 2 Lịch sử loài người số 2 ','2021-12-02 17:02:05',NULL,6),(14,'Bài test số 111','Bài test số 111Bài test số 111Bài test số 111','Bài test số 111Bài test số 111Bài test số 111Bài test số 111Bài test số 111Bài test số 111Bài test số 111Bài test số 111','2021-12-03 07:20:59',NULL,6),(15,'Bài test số 111','Bài test số 111Bài test số 111Bài test số 111','Bài test số 111Bài test số 111Bài test số 111Bài test số 111Bài test số 111Bài test số 111Bài test số 111Bài test số 111','2021-12-03 07:21:25',NULL,6),(16,'Bài viết số 2','Bài viết số 2Bài viết số 2Bài viết số 2Bài viết số 2Bài viết số 2','Bài viết số 2Bài viết số 2Bài viết số 2Bài viết số 2Bài viết số 2Bài viết số 2Bài viết số 2','2021-12-03 07:24:10',NULL,6),(17,'Bài viết số 3','Bài viết số 3Bài viết số 3Bài viết số 3Bài viết số 3','Bài viết số 3Bài viết số 3Bài viết số 3Bài viết số 3Bài viết số 3Bài viết số 3Bài viết số 3Bài viết số 3Bài viết số 3Bài viết số 3Bài viết số 3Bài viết số 3','2021-12-03 08:13:03',NULL,6),(18,'Bài viết số 4 ','Bài viết số 4 Bài viết số 4 Bài viết số 4 Bài viết số 4 Bài viết số 4 Bài viết số 4 Bài viết số 4 Bài viết số 4 Bài viết số 4 ','Bài viết số 4 Bài viết số 4 Bài viết số 4 Bài viết số 4 Bài viết số 4 Bài viết số 4 Bài viết số 4 Bài viết số 4 Bài viết số 4 Bài viết số 4 Bài viết số 4 Bài viết số 4 Bài viết số 4 Bài viết số 4 Bài viết số 4 Bài viết số 4 Bài viết số 4 Bài viết số 4 ','2021-12-03 08:13:26',NULL,6),(19,'Bài viết số 5 ','Bài viết số 5 Bài viết số 5 Bài viết số 5 Bài viết số 5 Bài viết số 5 Bài viết số 5 ','Bài viết số 5 Bài viết số 5 Bài viết số 5 Bài viết số 5 Bài viết số 5 Bài viết số 5 Bài viết số 5 Bài viết số 5 Bài viết số 5 Bài viết số 5 Bài viết số 5 Bài viết số 5 Bài viết số 5 Bài viết số 5 Bài viết số 5 Bài viết số 5 Bài viết số 5 Bài viết số 5 ','2021-12-03 08:14:36',NULL,6),(20,'Bài viết số 6 ','Bài viết số 6 Bài viết số 6 Bài viết số 6 Bài viết số 6 Bài viết số 6 Bài viết số 6 ','Bài viết số 6 Bài viết số 6 Bài viết số 6 Bài viết số 6 Bài viết số 6 Bài viết số 6 Bài viết số 6 Bài viết số 6 Bài viết số 6 Bài viết số 6 Bài viết số 6 Bài viết số 6 ','2021-12-03 08:15:28',NULL,6),(24,'Bài viết số 7 ','Bài viết số 7 Bài viết số 7 Bài viết số 7 Bài viết số 7 Bài viết số 7 ','Bài viết số 7 Bài viết số 7 Bài viết số 7 Bài viết số 7 Bài viết số 7 Bài viết số 7 Bài viết số 7 Bài viết số 7 Bài viết số 7 Bài viết số 7 Bài viết số 7 Bài viết số 7 Bài viết số 7 Bài viết số 7 Bài viết số 7 ','2021-12-03 08:32:50',NULL,6),(25,'Lịch sử loài người số 3 ','Lịch sử loài người số 33333333333333','Lịch sử loài người số 333333 Lịch sử loài người số 333333Lịch sử loài người số 333333','2021-12-03 13:58:47','2021-12-03 13:59:53',17),(27,'Lịch sử loài người số 4 ','Lịch sử loài người số 4 Lịch sử loài người số 4 Lịch sử loài người số 4 Lịch sử loài người số 4 Lịch sử loài người số 4 ','Lịch sử loài người số 4 Lịch sử loài người số 4 Lịch sử loài người số 4 Lịch sử loài người số 4 Lịch sử loài người số 4 Lịch sử loài người số 4 Lịch sử loài người số 4 Lịch sử loài người số 4 Lịch sử loài người số 4 Lịch sử loài người số 4 ','2021-12-03 14:01:42',NULL,17),(28,'Lịch sử loài người số 5 ','Lịch sử loài người số 5 Lịch sử loài người số 4 Lịch sử loài người số 4 Lịch sử loài người số 4 Lịch sử loài người số 4 ','Lịch sử loài người số 5 Lịch sử loài người số 4 Lịch sử loài người số 4 Lịch sử loài người số 4 Lịch sử loài người số 4 Lịch sử loài người số 5 Lịch sử loài người số 4 Lịch sử loài người số 4 Lịch sử loài người số 4 Lịch sử loài người số 4 ','2021-12-03 14:02:01',NULL,17),(29,'Lịch sử loài người số 6','Lịch sử loài người số 6 Lịch sử loài người số 4 Lịch sử loài người số 4 Lịch sử loài người số 4 Lịch sử loài người số 4 ','Lịch sử loài người số 6 Lịch sử loài người số 4 Lịch sử loài người số 4 Lịch sử loài người số 4 Lịch sử loài người số 4 Lịch sử loài người số 6 Lịch sử loài người số 4 Lịch sử loài người số 4 Lịch sử loài người số 4 Lịch sử loài người số 4 ','2021-12-03 14:03:57',NULL,17),(30,'Lịch sử loài người số 7','Lịch sử loài người số 7 Lịch sử loài người số 4 Lịch sử loài người số 4 Lịch sử loài người số 4 Lịch sử loài người số 4 ','Lịch sử loài người số 7 Lịch sử loài người số 4 Lịch sử loài người số 4 Lịch sử loài người số 4 Lịch sử loài người số 4 Lịch sử loài người số 7 Lịch sử loài người số 4 Lịch sử loài người số 4 Lịch sử loài người số 4 Lịch sử loài người số 4 ','2021-12-03 14:04:15',NULL,17),(31,'Lịch sử loài người số 8 ','Lịch sử loài người số 8 Lịch sử loài người số 4 Lịch sử loài người số 4 Lịch sử loài người số 4 Lịch sử loài người số 4 ','Lịch sử loài người số 8 Lịch sử loài người số 8 Lịch sử loài người số 8 Lịch sử loài người số 8 Lịch sử loài người số 8 Lịch sử loài người số 8 ','2021-12-03 14:04:34',NULL,17),(32,'Lịch sử loài người số 9 ','Lịch sử loài người số 9 Lịch sử loài người số 9 Lịch sử loài người số 9 Lịch sử loài người số 9 ','Lịch sử loài người số 9 Lịch sử loài người số 9 Lịch sử loài người số 9 Lịch sử loài người số 9 Lịch sử loài người số 9 Lịch sử loài người số 9 Lịch sử loài người số 9 Lịch sử loài người số 9 ','2021-12-03 14:04:49',NULL,17),(33,'Lịch sử loài người số 10','Lịch sử loài người số 10 Lịch sử loài người số 9 Lịch sử loài người số 9 Lịch sử loài người số 9 ','Lịch sử loài người số 10 Lịch sử loài người số 9 Lịch sử loài người số 9 Lịch sử loài người số 9 Lịch sử loài người số 10 Lịch sử loài người số 9 Lịch sử loài người số 9 Lịch sử loài người số 9 ','2021-12-03 14:05:12',NULL,17),(34,'Lịch sử loài người số 11','Lịch sử loài người số 11Lịch sử loài người số 11Lịch sử loài người số 11','Lịch sử loài người số 11Lịch sử loài người số 11Lịch sử loài người số 11Lịch sử loài người số 11Lịch sử loài người số 11','2021-12-03 14:05:34',NULL,17),(35,'Lịch sử loài người số 12 ','Lịch sử loài người số 12 Lịch sử loài người số 12 Lịch sử loài người số 12','Lịch sử loài người số 12 Lịch sử loài người số 12 Lịch sử loài người số 12 Lịch sử loài người số 12 Lịch sử loài người số 12 Lịch sử loài người số 12 ','2021-12-03 14:06:03',NULL,17);
/*!40000 ALTER TABLE `content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Firstname` varchar(30) DEFAULT NULL,
  `Lastname` varchar(30) DEFAULT NULL,
  `Username` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Phone` varchar(13) DEFAULT NULL,
  `Email` varchar(50) NOT NULL,
  `Discription` varchar(200) DEFAULT NULL,
  `CreatedDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdateTime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Email_UNIQUE` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'admin','tôi là','admin','12345678','145670984','admin@gmail.com','Tôi là admin','2021-11-25 15:32:26','2021-12-02 04:53:24'),(2,'danh','hoang','dh','87654321','123456788','dh@gmail.com','','2021-11-25 15:33:33','2021-11-26 18:16:09'),(3,'Tr&#7847;n','Dân','haha','12345678','123456789','haha@gmail.com','','2021-11-25 15:35:12','2021-11-26 23:48:30'),(4,'tuan','tuan','tuan','222333444',NULL,'tuan@gmail.com',NULL,'2021-11-25 17:35:11',NULL),(5,NULL,NULL,'test','12345678','','test@gmail.com',NULL,'2021-11-26 23:36:31',NULL),(6,'Trần','Văn Dân','tvd','12345678','1234567890','tvd@gmail.com','vừa mới edit xong','2021-11-30 13:52:51','2021-12-03 07:24:31'),(7,'danh','hoang','Danh','12345678','9876543222','danh123@gmail.com','','2021-12-02 09:57:39','2021-12-02 10:00:08'),(9,'Memb','Số 1','mbso1','12345678','987654333','mbso1@gmail.com','Tôi là mb số 1','2021-12-02 10:54:02','2021-12-02 10:54:56'),(17,'a123','b123456789','mbso3','12345678','1234555555555','mbso3@gmail.com','','2021-12-03 13:55:38','2021-12-03 13:57:54');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-03 22:04:45
