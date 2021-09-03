-- MySQL dump 10.13  Distrib 8.0.19, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: gymcarry
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `PLACE`
--

DROP TABLE IF EXISTS `PLACE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PLACE` (
  `PLACENUM` int NOT NULL COMMENT '운동구분',
  `PLACEIDX` int NOT NULL AUTO_INCREMENT COMMENT '플레이스IDX',
  `PLACENAME` varchar(50) NOT NULL COMMENT '업체명',
  `PLACEADDRESS` mediumtext NOT NULL COMMENT '업체주소',
  `LATITUDE` float NOT NULL COMMENT '위도',
  `LONGITUDE` float NOT NULL COMMENT '경도',
  `PLACEPHONE` varchar(50) NOT NULL COMMENT '업체전화번호',
  `PLACEINFO` text NOT NULL COMMENT '이용정보',
  `PLACEINTRO` text NOT NULL COMMENT '업체소개',
  `OPENHOUR` text NOT NULL COMMENT '영업시간',
  `PLACEIMG` text NOT NULL COMMENT '이미지',
  PRIMARY KEY (`PLACEIDX`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='플레이스';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PLACE`
--

