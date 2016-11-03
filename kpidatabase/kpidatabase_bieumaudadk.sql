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
-- Table structure for table `bieumaudadk`
--

DROP TABLE IF EXISTS `bieumaudadk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bieumaudadk` (
  `email` varchar(100) NOT NULL,
  `MABIEUMAU` int(11) NOT NULL,
  `TIENTRINH` varchar(100) DEFAULT NULL,
  `KPIDANHGIA` int(11) DEFAULT NULL,
  `KPICAPTREN` int(11) DEFAULT NULL,
  `TBMDUYET` bit(1) DEFAULT b'0',
  `TRKDUYET` bit(1) DEFAULT b'0',
  `BGHDUYET` bit(1) DEFAULT b'0',
  PRIMARY KEY (`email`,`MABIEUMAU`),
  KEY `_idx` (`MABIEUMAU`),
  CONSTRAINT `bmfk1` FOREIGN KEY (`email`) REFERENCES `users` (`EMAIL`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `bmfk2` FOREIGN KEY (`MABIEUMAU`) REFERENCES `regform` (`MABIEUMAU`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bieumaudadk`
--

LOCK TABLES `bieumaudadk` WRITE;
/*!40000 ALTER TABLE `bieumaudadk` DISABLE KEYS */;
INSERT INTO `bieumaudadk` VALUES ('giangvien@gmail.com',1,'120 tiết',40,40,'','\0','\0'),('giangvien@gmail.com',2,'abc',NULL,NULL,'\0','\0','\0'),('giangvien@gmail.com',4,'XYZ',20,10,'','','\0'),('giangvien@gmail.com',7,'ABC',30,30,'','\0','\0'),('giangvien@gmail.com',8,'YCG',20,30,'\0','\0','\0'),('truongbomon@gmail.com',1,'AA',10,10,'\0','\0','\0'),('truongbomon@gmail.com',3,'bb',30,NULL,'\0','\0','\0'),('truongbomon@gmail.com',4,'DDD',40,30,'\0','','\0'),('truongbomon@gmail.com',5,'ABC',NULL,NULL,'\0','','\0'),('truongbomon@gmail.com',7,NULL,NULL,NULL,NULL,NULL,NULL),('truongkhoa@gmail.com',1,'ABC',NULL,NULL,'\0','\0','\0'),('truongkhoa@gmail.com',2,NULL,NULL,NULL,NULL,NULL,NULL),('truongkhoa@gmail.com',3,NULL,NULL,NULL,NULL,NULL,NULL),('truongkhoa@gmail.com',4,NULL,NULL,NULL,NULL,NULL,NULL),('truongkhoa@gmail.com',6,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `bieumaudadk` ENABLE KEYS */;
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
