CREATE DATABASE  IF NOT EXISTS `jeep` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `jeep`;
-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: jeep
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `j_nav`
--

DROP TABLE IF EXISTS `j_nav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `j_nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `nav` varchar(45) NOT NULL,
  `url` varchar(255) NOT NULL DEFAULT 'null' COMMENT 'iid与j_nav_img表的id关联',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='导航表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j_nav`
--

LOCK TABLES `j_nav` WRITE;
/*!40000 ALTER TABLE `j_nav` DISABLE KEYS */;
INSERT INTO `j_nav` VALUES (1,0,'logo','/images/nav/logo.png'),(2,0,'品牌车型','null'),(3,0,'Jeep Life','null'),(4,0,'购车支持','null'),(5,0,'Jeep全境界','null'),(6,0,'品牌信息','null'),(7,0,'查询经销商','null'),(8,0,'预约试驾','null'),(9,0,'搜索','/images/nav/search.png'),(10,0,'收藏','/images/nav/sc.png '),(11,0,'导航','/images/nav/dt.png');
/*!40000 ALTER TABLE `j_nav` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-25 23:07:20
