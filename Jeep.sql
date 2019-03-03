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
-- Table structure for table `j_banner`
--

DROP TABLE IF EXISTS `j_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `j_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgurl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j_banner`
--

LOCK TABLES `j_banner` WRITE;
/*!40000 ALTER TABLE `j_banner` DISABLE KEYS */;
INSERT INTO `j_banner` VALUES (1,'http://127.0.0.1:5050/images/banner/banner1.jpg'),(2,'http://127.0.0.1:5050/images/banner/banner2.jpg'),(3,'http://127.0.0.1:5050/images/banner/banner3.jpg'),(4,'http://127.0.0.1:5050/images/banner/banner4.jpg'),(5,'http://127.0.0.1:5050/images/banner/banner5.jpg'),(6,'http://127.0.0.1:5050/images/banner/banner6.jpg');
/*!40000 ALTER TABLE `j_banner` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `j_nav` VALUES (1,0,'logo','http://127.0.0.1:5050/images/nav/logo.png'),(2,0,'品牌车型','null'),(3,0,'Jeep Life','null'),(4,0,'购车支持','null'),(5,0,'Jeep全境界','null'),(6,0,'品牌信息','null'),(7,0,'查询经销商','null'),(8,0,'预约试驾','null'),(9,0,'搜索','http://127.0.0.1:5050/images/nav/search.png'),(10,0,'收藏','http://127.0.0.1:5050/images/nav/sc.png '),(11,0,'导航','http://127.0.0.1:5050/images/nav/dt.png');
/*!40000 ALTER TABLE `j_nav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j_nav_function`
--

DROP TABLE IF EXISTS `j_nav_function`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `j_nav_function` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgurl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j_nav_function`
--

LOCK TABLES `j_nav_function` WRITE;
/*!40000 ALTER TABLE `j_nav_function` DISABLE KEYS */;
INSERT INTO `j_nav_function` VALUES (1,'http://127.0.0.1:5050/images/subnavfunc/nav1.jpg'),(2,'http://127.0.0.1:5050/images/subnavfunc/nav2.jpg');
/*!40000 ALTER TABLE `j_nav_function` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `j_nav_list`
--

DROP TABLE IF EXISTS `j_nav_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `j_nav_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgurl` varchar(255) DEFAULT NULL,
  `infourl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `j_nav_list`
--

LOCK TABLES `j_nav_list` WRITE;
/*!40000 ALTER TABLE `j_nav_list` DISABLE KEYS */;
INSERT INTO `j_nav_list` VALUES (1,'http://127.0.0.1:5050/images/subnav/car1.png','http://127.0.0.1:5050/images/subnav/carsub1.jpg'),(2,'http://127.0.0.1:5050/images/subnav/car2.png','http://127.0.0.1:5050/images/subnav/carsub2.jpg'),(3,'http://127.0.0.1:5050/images/subnav/car3.png','http://127.0.0.1:5050/images/subnav/carsub3.jpg'),(4,'http://127.0.0.1:5050/images/subnav/car4.png','http://127.0.0.1:5050/images/subnav/carsub4.jpg'),(5,'http://127.0.0.1:5050/images/subnav/car5.png','http://127.0.0.1:5050/images/subnav/carsub5.jpg'),(6,'http://127.0.0.1:5050/images/subnav/car6.png','http://127.0.0.1:5050/images/subnav/carsub6.jpg'),(7,'http://127.0.0.1:5050/images/subnav/car7.png','http://127.0.0.1:5050/images/subnav/carsub7.jpg'),(8,'http://127.0.0.1:5050/images/subnav/car8.png','http://127.0.0.1:5050/images/subnav/carsub8.jpg'),(9,'http://127.0.0.1:5050/images/subnav/car9.png','http://127.0.0.1:5050/images/subnav/carsub9.jpg'),(10,'http://127.0.0.1:5050/images/subnav/more.png',NULL);
/*!40000 ALTER TABLE `j_nav_list` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-03 18:48:56
