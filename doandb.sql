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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content`
--

LOCK TABLES `content` WRITE;
/*!40000 ALTER TABLE `content` DISABLE KEYS */;
INSERT INTO `content` VALUES (1,'Dan1','Dan1 TranVanDan','ghjkhghhjjknb','2021-11-25 16:33:32',NULL,1),(2,'Dan2','k,jmhngd','mndxmzm zd','2021-11-25 16:33:32',NULL,1),(3,'kjhg','DDNDNFDRNGFN','lokịhy.fy,t','2021-11-25 16:33:32',NULL,1),(4,'DBDNDNNDN','DNFDNGNNDG','FNFNB CXVCXFDNNDRFX','2021-11-26 12:35:48',NULL,2),(5,'TVD','vsndmndbf','mndbsnm','2021-11-26 15:32:24',NULL,3),(6,'Dan1','nrbếna','jhg hngfbfd','2021-11-27 00:10:12',NULL,1),(7,'DanA','mnbm,y,mn','.,mgnfnxmt,,tdmr','2021-11-30 14:00:39',NULL,6),(8,'DanB','kjhgdfghjk','dfghjhbgvhj','2021-11-27 00:10:12',NULL,6),(9,'ghjhjn','DanA','ghjbnknhbj','2021-11-30 14:00:39',NULL,6),(10,'Dân','vsa','bfvs','2021-12-01 12:53:14',NULL,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'admin','tôi là','admin','12345678','145670984','admin@gmail.com','Tôi là admin','2021-11-25 15:32:26','2021-12-02 04:53:24'),(2,'danh','hoang','dh','87654321','123456788','dh@gmail.com','','2021-11-25 15:33:33','2021-11-26 18:16:09'),(3,'Tr&#7847;n','Dân','haha','12345678','123456789','haha@gmail.com','','2021-11-25 15:35:12','2021-11-26 23:48:30'),(4,'tuan','tuan','tuan','222333444',NULL,'tuan@gmail.com',NULL,'2021-11-25 17:35:11',NULL),(5,NULL,NULL,'test','12345678','','test@gmail.com',NULL,'2021-11-26 23:36:31',NULL),(6,'Trần','Dân','tvd','12345678','1234567890','tvd@gmail.com','đã edit','2021-11-30 13:52:51','2021-11-30 15:49:36'),(7,'danh','hoang','Danh','12345678','9876543222','danh123@gmail.com','','2021-12-02 09:57:39','2021-12-02 10:00:08');
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

-- Dump completed on 2021-12-02 17:05:35
