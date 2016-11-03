CREATE DATABASE  IF NOT EXISTS `kpidatabase` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `kpidatabase`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: kpidatabase
-- ------------------------------------------------------
-- Server version	5.7.16-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `regform`
--

DROP TABLE IF EXISTS `regform`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regform` (
  `MABIEUMAU` int(11) NOT NULL,
  `KEHOACH` varchar(200) NOT NULL,
  `CHITIETKEHOACH` varchar(500) DEFAULT NULL,
  `TYTRONG` int(11) DEFAULT NULL,
  `CHIDAO` varchar(20) DEFAULT NULL,
  `CHITIEU` varchar(100) DEFAULT NULL,
  `KPIMAX` int(11) NOT NULL,
  PRIMARY KEY (`MABIEUMAU`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regform`
--

LOCK TABLES `regform` WRITE;
/*!40000 ALTER TABLE `regform` DISABLE KEYS */;
INSERT INTO `regform` VALUES (1,'Giảng dạy 120 tiết','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus quia provident, reprehenderit itaque velit optio quisquam facilis, animi blanditiis explicabo magnam ipsa incidunt. Laboriosam ab adipisci, libero quasi reprehenderit excepturi quae ipsum eius nam quis quia error perferendis alias, harum.',80,'Nguyễn Văn A',NULL,40),(2,'Hướng dẫn abc','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus quia provident, reprehenderit itaque velit optio quisquam facilis, animi blanditiis explicabo magnam ipsa incidunt. Laboriosam ab adipisci, libero quasi reprehenderit excepturi quae ipsum eius nam quis quia error perferendis alias, harum.',20,'Nguyễn Văn B',NULL,30),(3,'Phân công abc','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus quia provident, reprehenderit itaque velit optio quisquam facilis, animi blanditiis explicabo magnam ipsa incidunt. Laboriosam ab adipisci, libero quasi reprehenderit excepturi quae ipsum eius nam quis quia error perferendis alias, harum.',50,'Trần Thị B',NULL,50),(4,'Phổ biến xyz','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus quia provident, reprehenderit itaque velit optio quisquam facilis, animi blanditiis explicabo magnam ipsa incidunt. Laboriosam ab adipisci, libero quasi reprehenderit excepturi quae ipsum eius nam quis quia error perferendis alias, harum.',30,'Nguyễn Văn D',NULL,60),(5,'Chỉ đạo 123','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus quia provident, reprehenderit itaque velit optio quisquam facilis, animi blanditiis explicabo magnam ipsa incidunt. Laboriosam ab adipisci, libero quasi reprehenderit excepturi quae ipsum eius nam quis quia error perferendis alias, harum.',40,'Trần Văn C',NULL,10),(6,'Hướng dẫn đồ án','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus quia provident, reprehenderit itaque velit optio quisquam facilis, animi blanditiis explicabo magnam ipsa incidunt. Laboriosam ab adipisci, libero quasi reprehenderit excepturi quae ipsum eius nam quis quia error perferendis alias, harum.',50,'Lê Văn G',NULL,20),(7,'Chỉ đạo','abcx',10,'Trần Thị N',NULL,30),(8,'Phổ biến iii','123',60,'Nguyễn Văn C',NULL,50);
/*!40000 ALTER TABLE `regform` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-02 10:56:44
