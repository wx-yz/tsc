-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: TSC
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `Schema`
--

DROP TABLE IF EXISTS `Schema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Schema` (
  `id` varchar(300) NOT NULL,
  `name` varchar(300) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `tags` varchar(300) DEFAULT NULL,
  `accountId` varchar(300) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `updatedBy` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Schema`
--

LOCK TABLES `Schema` WRITE;
/*!40000 ALTER TABLE `Schema` DISABLE KEYS */;
INSERT INTO `Schema` VALUES ('65c5b6fa-4712-448a-88e0-b754d7072d61','MySchema-1','The XYZ position object schema','[tag1, tag2, tag3]','acc-38750a7a-8651','2022-02-09 00:57:32','2022-02-09 00:57:32','jane_doe'),('6f7c6c2d-2a5b-449e-90e7-7e4e06cae02e','MySchema-2','The visibility object','[transform, address, customer]','acc-ff14305a-769e','2022-02-09 00:57:31','2022-02-09 00:57:31','john_m');
/*!40000 ALTER TABLE `Schema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SchemaMapping`
--

DROP TABLE IF EXISTS `SchemaMapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SchemaMapping` (
  `id` varchar(300) NOT NULL,
  `schemaVersionId` varchar(300) NOT NULL,
  `validationScheme` varchar(300) DEFAULT NULL,
  `transformType` varchar(300) DEFAULT NULL,
  `transform` text,
  `version` varchar(300) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `schemaVersionId` (`schemaVersionId`),
  CONSTRAINT `SchemaMapping_ibfk_1` FOREIGN KEY (`schemaVersionId`) REFERENCES `SchemaVersions` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SchemaMapping`
--

LOCK TABLES `SchemaMapping` WRITE;
/*!40000 ALTER TABLE `SchemaMapping` DISABLE KEYS */;
INSERT INTO `SchemaMapping` VALUES ('b4e1bb26-2bc5-4796-860f-a864fa85bdd8','098b6d81-1dba-41ac-bb4d-524f63c819e2','false','LIQUID','{{ \"Ground control to Major Tom.\" | split: \" \" | first }}\n','V1',1);
/*!40000 ALTER TABLE `SchemaMapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SchemaVersions`
--

DROP TABLE IF EXISTS `SchemaVersions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SchemaVersions` (
  `id` varchar(300) NOT NULL,
  `schemaId` varchar(300) NOT NULL,
  `version` varchar(300) DEFAULT NULL,
  `type` varchar(300) DEFAULT NULL,
  `schemaDefinition` text,
  `description` varchar(300) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL,
  `updatedBy` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `schemaId` (`schemaId`),
  CONSTRAINT `SchemaVersions_ibfk_1` FOREIGN KEY (`schemaId`) REFERENCES `Schema` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SchemaVersions`
--

LOCK TABLES `SchemaVersions` WRITE;
/*!40000 ALTER TABLE `SchemaVersions` DISABLE KEYS */;
INSERT INTO `SchemaVersions` VALUES ('098b6d81-1dba-41ac-bb4d-524f63c819e2','6f7c6c2d-2a5b-449e-90e7-7e4e06cae02e','V1','JSON','{json schema goes here}','Position Schema 1 for demo','2022-02-09 00:57:43','2022-02-09 00:57:43','john_m'),('0f61a156-83bb-42d3-a845-4a2b9915d45a','65c5b6fa-4712-448a-88e0-b754d7072d61','V1','JSON','{json schema goes here}','Position Schema 2 for demo','2022-02-09 00:57:43','2022-02-09 00:57:43','john_m');
/*!40000 ALTER TABLE `SchemaVersions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-10 10:44:49
