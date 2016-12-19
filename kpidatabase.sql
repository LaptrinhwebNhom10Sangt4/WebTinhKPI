CREATE DATABASE  IF NOT EXISTS `kpidatabase` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `kpidatabase`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: kpidatabase
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
  `TIENTRINH` varchar(500) DEFAULT NULL,
  `KPIDANHGIA` int(11) DEFAULT '0',
  `KPICAPTREN` int(11) DEFAULT '0',
  `TBMDUYET` bit(1) DEFAULT b'0',
  `TRKDUYET` bit(1) DEFAULT b'0',
  `BGHDUYET` bit(1) DEFAULT b'0',
  `DADUYETDK` bit(1) DEFAULT b'0',
  `DADUYETDG` bit(1) DEFAULT b'0',
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
INSERT INTO `bieumaudadk` VALUES ('giangvien@gmail.com',1,'Hoàn thành tốt',30,20,'','\0','\0','',''),('giangvien@gmail.com',2,'Chưa thực hiện tốt',30,20,'','\0','\0','',''),('giangvien@gmail.com',3,'Hoàn thành phần 1',40,45,'','','\0','',''),('giangvien@gmail.com',4,'Hầu hết gv đều được phổ biến',50,0,'','\0','\0','',''),('giangvien@gmail.com',6,NULL,0,0,'','\0','\0','',''),('giangvien@gmail.com',7,NULL,0,0,'','\0','\0','',''),('giangvien@gmail.com',8,NULL,0,0,'\0','\0','\0','','\0'),('truongbomon@gmail.com',2,NULL,0,0,'\0','\0','\0','\0','\0'),('truongbomon@gmail.com',3,'Không đủ số nhân lực đúng thời hạn',40,30,'\0','','\0','',''),('truongbomon@gmail.com',4,NULL,0,0,'\0','','\0','',''),('truongbomon@gmail.com',6,'Hoàn thành 123',19,40,'\0','','\0','',''),('truongkhoa@gmail.com',2,'BCE',17,15,'\0','\0','','',''),('truongkhoa@gmail.com',3,'Chưa hoàn thành công việc 1',40,35,'\0','\0','','',''),('truongkhoa@gmail.com',4,'Hoàn thành',60,50,'\0','\0','','',''),('truongkhoa@gmail.com',5,'Hoàn thành xuất sắc',10,10,'\0','\0','','','');
/*!40000 ALTER TABLE `bieumaudadk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cvchitiet`
--

DROP TABLE IF EXISTS `cvchitiet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cvchitiet` (
  `MaCvct` varchar(10) NOT NULL,
  `TenCvct` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`MaCvct`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cvchitiet`
--

LOCK TABLES `cvchitiet` WRITE;
/*!40000 ALTER TABLE `cvchitiet` DISABLE KEYS */;
INSERT INTO `cvchitiet` VALUES ('1.1','Xây dựng web kpi'),('1.2','Phổ biến cho toàn bộ GV'),('1.3','Triển khai đánh giá bằng website'),('2.1','Giới thiệu cho sv'),('2.2','Hướng dẫn giúp đỡ cho sv'),('2.3 ','Vấn đáp sv'),('3.1','Nghiên cứu vấn đề 1'),('3.2','Nghiên cứu vấn đề 2'),('3.3','Nghiên cứu vấn đề 3'),('3.4','Tổng hợp nghiên cứu'),('3.5','Tiến hành báo cáo cho người chỉ đạo'),('4.1','Phổ biến cho sinh viên'),('4.2','Thực hiện áp dụng'),('5.1','Lên bản vẽ'),('5.2','Lên danh sách vật liệu và kinh phí'),('5.3','Tiến hành giám sát thi công'),('5.4','Bàn giao công trình'),('6.1','Tìm hiểu các hãng máy uy tín'),('6.2','Xin trợ cấp '),('6.3','Đăng kí đặt hàng '),('6.4','Kiểm tra hàng nhập'),('6.5','Cài đặt sử dụng máy'),('7.1','Thu thập câu hỏi của sv'),('7.2','Tổ chức gặp mặt'),('8.1','Chuẩn bị công tác tư vấn'),('8.2','Tư vấn tại cụm abc'),('8.3','Tư vấn trực tuyến');
/*!40000 ALTER TABLE `cvchitiet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cvct`
--

DROP TABLE IF EXISTS `cvct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cvct` (
  `MaCV` varchar(10) DEFAULT NULL,
  `MaCvct` varchar(10) DEFAULT NULL,
  `stt` int(11) NOT NULL,
  PRIMARY KEY (`stt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cvct`
--

LOCK TABLES `cvct` WRITE;
/*!40000 ALTER TABLE `cvct` DISABLE KEYS */;
/*!40000 ALTER TABLE `cvct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dscv`
--

DROP TABLE IF EXISTS `dscv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dscv` (
  `MaCV` varchar(10) NOT NULL,
  `TenCV` varchar(45) DEFAULT NULL,
  `NgHD` varchar(100) NOT NULL,
  `Ngaybd` date DEFAULT NULL,
  `Ngaykt` date DEFAULT NULL,
  `MaKhoa` int(11) DEFAULT NULL,
  PRIMARY KEY (`MaCV`),
  KEY `HD_idx` (`NgHD`),
  KEY `MK_idx` (`MaKhoa`),
  CONSTRAINT `HD` FOREIGN KEY (`NgHD`) REFERENCES `users` (`EMAIL`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `MK` FOREIGN KEY (`MaKhoa`) REFERENCES `faculty` (`MaKhoa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dscv`
--

LOCK TABLES `dscv` WRITE;
/*!40000 ALTER TABLE `dscv` DISABLE KEYS */;
INSERT INTO `dscv` VALUES ('1','Phổ biến đánh giá KPI','truongkhoa@gmail.com','2016-11-11','2016-12-30',1),('2','Hướng dẫn SV làm đồ án abc','truongbomon@gmail.com','2016-11-01','2017-01-01',1),('3','Tiến hành nghiên cứu abc','truongkhoa@gmail.com','2016-10-01','2016-12-01',1),('4','Áp dụng abc vào xyz','giangvien@gmail.com','2016-12-06','2016-12-31',1),('5','Thi công công trình abc','truongbomon@gmail.com','2016-12-10','2017-02-01',1),('6','Nhập Máy xyz','truongkhoackm@gmail.com','2016-12-10','2017-02-01',2),('7','Tổ chức tư vấn lựa chọn chuyên ngành','truongkhoa@gmail.com','2016-12-01','2016-12-30',1),('8','Tư vấn tuyển sinh hệ đại học','phongtochuc@gmail.com','2016-09-08','2016-09-22',2);
/*!40000 ALTER TABLE `dscv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dscvct`
--

DROP TABLE IF EXISTS `dscvct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dscvct` (
  `MaCV` varchar(10) NOT NULL,
  `MaCvct` varchar(10) NOT NULL,
  `stt` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`stt`),
  KEY `Cvct_idx` (`MaCvct`),
  KEY `CV_idx` (`MaCV`),
  CONSTRAINT `CV` FOREIGN KEY (`MaCV`) REFERENCES `dscv` (`MaCV`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Ctcv` FOREIGN KEY (`MaCvct`) REFERENCES `cvchitiet` (`MaCvct`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dscvct`
--

LOCK TABLES `dscvct` WRITE;
/*!40000 ALTER TABLE `dscvct` DISABLE KEYS */;
INSERT INTO `dscvct` VALUES ('1','1.1',1),('1','1.2',2),('1','1.3',3),('2','2.1',4),('2','2.2',5),('2','2.3',6),('3','3.1',7),('3','3.2',8),('3','3.3',9),('3','3.4',10),('3','3.5',11),('4','4.2',12),('4','4.1',13),('5','5.4',17),('5','5.3',18),('5','5.2',19),('5','5.1',20),('6','6.1',21),('6','6.2',22),('6','6.3',23),('6','6.4',24),('6','6.5',25),('7','7.2',36),('7','7.1',37),('8','8.3',38),('8','8.2',39),('8','8.1',40);
/*!40000 ALTER TABLE `dscvct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faculty` (
  `MaKhoa` int(11) NOT NULL,
  `TenKhoa` varchar(100) NOT NULL,
  PRIMARY KEY (`MaKhoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty`
--

LOCK TABLES `faculty` WRITE;
/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
INSERT INTO `faculty` VALUES (1,'CNTT'),(2,'CKM');
/*!40000 ALTER TABLE `faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phancong`
--

DROP TABLE IF EXISTS `phancong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phancong` (
  `MaCV` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tientrinh` int(100) DEFAULT '0',
  PRIMARY KEY (`MaCV`,`email`),
  KEY `EMAIL_idx` (`email`),
  CONSTRAINT `CV1` FOREIGN KEY (`MaCV`) REFERENCES `dscv` (`MaCV`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `EMAIL` FOREIGN KEY (`email`) REFERENCES `users` (`EMAIL`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phancong`
--

LOCK TABLES `phancong` WRITE;
/*!40000 ALTER TABLE `phancong` DISABLE KEYS */;
INSERT INTO `phancong` VALUES ('1','giangvien1@gmail.com',0),('1','giangvien@gmail.com',33),('1','truongbomon@gmail.com',67),('1','truongkhoa@gmail.com',0),('2','giangvien1@gmail.com',0),('2','giangvien@gmail.com',100),('2','truongbomon@gmail.com',100),('3','giangvien1@gmail.com',0),('3','giangvien@gmail.com',80),('3','truongbomon@gmail.com',60),('3','truongkhoa@gmail.com',0),('4','giangvien1@gmail.com',0),('4','giangvien@gmail.com',50),('4','truongbomon@gmail.com',0),('5','giangvien1@gmail.com',0),('5','giangvien@gmail.com',100),('5','truongbomon@gmail.com',25),('5','truongkhoa@gmail.com',25),('6','truongbomonckm@gmail.com',20),('7','giangvien1@gmail.com',0),('7','truongbomon@gmail.com',0),('7','truongkhoa@gmail.com',0),('8','giangvienckm@gmail.com',0),('8','truongbomonckm@gmail.com',0),('8','truongkhoackm@gmail.com',100);
/*!40000 ALTER TABLE `phancong` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `kpidatabase`.`phancong_AFTER_INSERT` AFTER INSERT ON `phancong` FOR EACH ROW
BEGIN
declare cv varchar(10);
declare email varchar(100);
declare cnt int;
declare ct varchar(10);
set cnt = (select min(stt) from dscvct where MaCV = NEW.MaCV );
while(cnt<=(select max(stt) from dscvct where MaCV = NEW.MaCV))
do
insert into cvct (MaCV,MaCvct,stt) select MaCV,MaCvct,stt from dscvct where stt=cnt;
set cnt = cnt + 1;
end while;
set cnt = (select min(stt) from dscvct where MaCV = NEW.MaCV );
while(cnt<=(select max(stt) from dscvct where MaCV = NEW.MaCV))
do
	set ct = (select MaCvct from cvct where stt = cnt);
    insert into tientrinhcv values(ct,NEW.email,FALSE);
    delete from cvct where stt = cnt;
    set cnt = cnt + 1;
end while;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `kpidatabase`.`phancong_AFTER_DELETE` AFTER DELETE ON `phancong` FOR EACH ROW
BEGIN
declare cnt int;
declare ct varchar(10);
set cnt = (select min(stt) from dscvct where MaCV = OLD.MaCV );
while(cnt<=(select max(stt) from dscvct where MaCV = OLD.MaCV))
do
insert into cvct (MaCV,MaCvct,stt) select MaCV,MaCvct,stt from dscvct where stt=cnt;
set cnt = cnt + 1;
end while;
set cnt = (select min(stt) from dscvct where MaCV = OLD.MaCV );
while(cnt<=(select max(stt) from dscvct where MaCV = OLD.MaCV))
do
	set ct = (select MaCvct from cvct where stt = cnt);
    delete from tientrinhcv where MaCtcv = ct and email = OLD.email;
    delete from cvct where stt = cnt;
    set cnt = cnt + 1;
end while;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
  `MaKhoa` int(11) DEFAULT NULL,
  PRIMARY KEY (`MABIEUMAU`),
  KEY `regfrk1_idx` (`MaKhoa`),
  CONSTRAINT `regfrk1` FOREIGN KEY (`MaKhoa`) REFERENCES `faculty` (`MaKhoa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regform`
--

LOCK TABLES `regform` WRITE;
/*!40000 ALTER TABLE `regform` DISABLE KEYS */;
INSERT INTO `regform` VALUES (1,'Giảng dạy đủ số tiết','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus quia provident, reprehenderit itaque velit optio quisquam facilis, animi blanditiis explicabo magnam ipsa incidunt. Laboriosam ab adipisci, libero quasi reprehenderit excepturi quae ipsum eius nam quis quia error perferendis alias, harum.',80,'Nguyễn Văn A','120 tiết',40,1),(2,'Hướng dẫn abc','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus quia provident, reprehenderit itaque velit optio quisquam facilis, animi blanditiis explicabo magnam ipsa incidunt. Laboriosam ab adipisci, libero quasi reprehenderit excepturi quae ipsum eius nam quis quia error perferendis alias, harum.',20,'Nguyễn Văn B','Hoàn thành đúng tiến độ',30,1),(3,'Phân công thực hiện abc','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus quia provident, reprehenderit itaque velit optio quisquam facilis, animi blanditiis explicabo magnam ipsa incidunt. Laboriosam ab adipisci, libero quasi reprehenderit excepturi quae ipsum eius nam quis quia error perferendis alias, harum.',50,'Trần Thị B','Đủ số nhân lực đúng thời hạn',50,1),(4,'Phổ biến xyz','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus quia provident, reprehenderit itaque velit optio quisquam facilis, animi blanditiis explicabo magnam ipsa incidunt. Laboriosam ab adipisci, libero quasi reprehenderit excepturi quae ipsum eius nam quis quia error perferendis alias, harum.',30,'Nguyễn Văn D','Mọi gv đều được phổ biến',60,1),(5,'Chỉ đạo 123','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus quia provident, reprehenderit itaque velit optio quisquam facilis, animi blanditiis explicabo magnam ipsa incidunt. Laboriosam ab adipisci, libero quasi reprehenderit excepturi quae ipsum eius nam quis quia error perferendis alias, harum.',40,'Trần Văn C','Chỉ đạo thành công công việc',10,1),(6,'Hướng dẫn đồ án','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus quia provident, reprehenderit itaque velit optio quisquam facilis, animi blanditiis explicabo magnam ipsa incidunt. Laboriosam ab adipisci, libero quasi reprehenderit excepturi quae ipsum eius nam quis quia error perferendis alias, harum.',40,'Lê Văn G','Hướng dẫn sv hoàn thành tốt đồ án',40,1),(7,'Giảng dạy tốt','abcx',10,'Trần Thị N','Được sv đánh giá tốt',40,1),(8,'Phổ biến abc','abcd',60,'Nguyễn Văn D','Tất cả giảng viên đều được phổ biến và áp dụng ...',20,1),(9,'Giảng dạy chất lượng tốt','Giảng viên tích cực trong giảng dạy',40,'','Hoàn thành 150 tiết dạy',50,2),(10,'Hướng dẫn đồ án cho sinh viên','Giảng viên tích cực giảng dạy và hướng dẫn cho các em sinh viên',50,'Lê Văn y','Hướng dẫn sinh viên thực hiện thành công đồ án',50,2);
/*!40000 ALTER TABLE `regform` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thoihan`
--

DROP TABLE IF EXISTS `thoihan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thoihan` (
  `Ngay` varchar(10) NOT NULL,
  `NgayBD` datetime DEFAULT NULL,
  `NgayKT` datetime DEFAULT NULL,
  PRIMARY KEY (`Ngay`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thoihan`
--

LOCK TABLES `thoihan` WRITE;
/*!40000 ALTER TABLE `thoihan` DISABLE KEYS */;
INSERT INTO `thoihan` VALUES ('NgayDG','2016-12-15 22:53:00','2016-12-19 23:54:00'),('NgayDK','2016-12-16 22:00:00','2016-12-17 23:59:00');
/*!40000 ALTER TABLE `thoihan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tientrinhcv`
--

DROP TABLE IF EXISTS `tientrinhcv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tientrinhcv` (
  `MaCtcv` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `done` bit(1) DEFAULT b'0',
  PRIMARY KEY (`MaCtcv`,`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tientrinhcv`
--

LOCK TABLES `tientrinhcv` WRITE;
/*!40000 ALTER TABLE `tientrinhcv` DISABLE KEYS */;
INSERT INTO `tientrinhcv` VALUES ('1.1','giangvien1@gmail.com','\0'),('1.1','giangvien@gmail.com',''),('1.1','truongbomon@gmail.com',''),('1.1','truongkhoa@gmail.com','\0'),('1.2','giangvien1@gmail.com','\0'),('1.2','giangvien@gmail.com','\0'),('1.2','truongbomon@gmail.com',''),('1.2','truongkhoa@gmail.com','\0'),('1.3','giangvien1@gmail.com','\0'),('1.3','giangvien@gmail.com','\0'),('1.3','truongbomon@gmail.com','\0'),('1.3','truongkhoa@gmail.com','\0'),('2.1','giangvien1@gmail.com','\0'),('2.1','giangvien@gmail.com',''),('2.1','truongbomon@gmail.com',''),('2.2','giangvien1@gmail.com','\0'),('2.2','giangvien@gmail.com',''),('2.2','truongbomon@gmail.com',''),('2.3','giangvien1@gmail.com','\0'),('2.3','giangvien@gmail.com',''),('2.3','truongbomon@gmail.com',''),('3.1','giangvien1@gmail.com','\0'),('3.1','giangvien@gmail.com',''),('3.1','truongbomon@gmail.com',''),('3.1','truongkhoa@gmail.com','\0'),('3.2','giangvien1@gmail.com','\0'),('3.2','giangvien@gmail.com',''),('3.2','truongbomon@gmail.com',''),('3.2','truongkhoa@gmail.com','\0'),('3.3','giangvien1@gmail.com','\0'),('3.3','giangvien@gmail.com',''),('3.3','truongbomon@gmail.com',''),('3.3','truongkhoa@gmail.com','\0'),('3.4','giangvien1@gmail.com','\0'),('3.4','giangvien@gmail.com',''),('3.4','truongbomon@gmail.com','\0'),('3.4','truongkhoa@gmail.com','\0'),('3.5','giangvien1@gmail.com','\0'),('3.5','giangvien@gmail.com','\0'),('3.5','truongbomon@gmail.com','\0'),('3.5','truongkhoa@gmail.com','\0'),('4.1','giangvien1@gmail.com','\0'),('4.1','giangvien@gmail.com',''),('4.1','truongbomon@gmail.com','\0'),('4.2','giangvien1@gmail.com','\0'),('4.2','giangvien@gmail.com','\0'),('4.2','truongbomon@gmail.com','\0'),('5.1','giangvien1@gmail.com','\0'),('5.1','giangvien@gmail.com',''),('5.1','truongbomon@gmail.com',''),('5.1','truongkhoa@gmail.com',''),('5.2','giangvien1@gmail.com','\0'),('5.2','giangvien@gmail.com',''),('5.2','truongbomon@gmail.com','\0'),('5.2','truongkhoa@gmail.com','\0'),('5.3','giangvien1@gmail.com','\0'),('5.3','giangvien@gmail.com',''),('5.3','truongbomon@gmail.com','\0'),('5.3','truongkhoa@gmail.com','\0'),('5.4','giangvien1@gmail.com','\0'),('5.4','giangvien@gmail.com',''),('5.4','truongbomon@gmail.com','\0'),('5.4','truongkhoa@gmail.com','\0'),('6.1','truongbomonckm@gmail.com',''),('6.2','truongbomonckm@gmail.com','\0'),('6.3','truongbomonckm@gmail.com','\0'),('6.4','truongbomonckm@gmail.com','\0'),('6.5','truongbomonckm@gmail.com','\0'),('7.1','giangvien1@gmail.com','\0'),('7.1','truongbomon@gmail.com','\0'),('7.1','truongkhoa@gmail.com','\0'),('7.2','giangvien1@gmail.com','\0'),('7.2','truongbomon@gmail.com','\0'),('7.2','truongkhoa@gmail.com','\0'),('8.1','giangvienckm@gmail.com','\0'),('8.1','truongbomonckm@gmail.com','\0'),('8.1','truongkhoackm@gmail.com',''),('8.2','giangvienckm@gmail.com','\0'),('8.2','truongbomonckm@gmail.com','\0'),('8.2','truongkhoackm@gmail.com',''),('8.3','giangvienckm@gmail.com','\0'),('8.3','truongbomonckm@gmail.com','\0'),('8.3','truongkhoackm@gmail.com','');
/*!40000 ALTER TABLE `tientrinhcv` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `kpidatabase`.`tientrinhcv_AFTER_UPDATE` AFTER UPDATE ON `tientrinhcv` FOR EACH ROW
BEGIN
declare cv varchar(10);
declare val float;
set cv = (select MaCV from dscvct where MaCvct = NEW.MaCtcv);
set val = (select kpidatabase.tientrinh(cv, NEW.email));
update phancong set tientrinh = val where MaCV = cv and email = NEW.email;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `userinfo`
--

DROP TABLE IF EXISTS `userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userinfo` (
  `email` varchar(100) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `mscb` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`email`),
  UNIQUE KEY `mscb_UNIQUE` (`mscb`),
  CONSTRAINT `usinfo` FOREIGN KEY (`email`) REFERENCES `users` (`EMAIL`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3435 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userinfo`
--

LOCK TABLES `userinfo` WRITE;
/*!40000 ALTER TABLE `userinfo` DISABLE KEYS */;
INSERT INTO `userinfo` VALUES ('bangiamhieu@gmail.com','Nguyễn Văn T','Nam',6,'18 Hoàng Diệu 2, Q.Thủ Đức, Tp.HCM'),('giangvien1@gmail.com','Nguyễn Thị D','Nữ',7,'46 Trần Huy Liện, Q.Phú Nhuận, Tp.HCM'),('giangvien@gmail.com','Nguyễn Văn A','Nam',1,'104/D.DC11/P.Sơn Kỳ/Q.Tân phú'),('giangvienckm1@gmail.com','Vũ Văn D','Nam',8,'46 Trần Huy Liện, Q.Phú Nhuận, Tp.HCM'),('giangvienckm@gmail.com','Hoàng Văn T','Nữ',9,'1 Võ Văn Ngân, P.Bình Thọ, Q.Thủ Đức'),('phongtochuc@gmail.com','Lê Văn D','Nam',3,'12 Hoàng Văn Thụ, Q.Phú Nhuận,Tp.HCM'),('quantrivien@gmail.com','Võ Văn B','Nam',2,'1 Võ Văn Ngân, P.Bình Thọ, Q.Thủ Đức'),('truongbomon@gmail.com','Nguyễn Thị C','Nữ',4,'16 Phan Xích Long, Q.Phú Nhuận, Tp.HCM'),('truongbomonckm@gmail.com','Lại Văn G','Nam',10,'16 Phan Xích Long, Q.Phú Nhuận, Tp.HCM'),('truongkhoa@gmail.com','Trần Văn A','Nam',5,'2 Đồng Nai, P.15, Q.10, TP.HCM'),('truongkhoackm@gmail.com','Tống Văn B','Nữ',11,'104/D.DC11/P.Sơn Kỳ/Q.Tân phú,Tp.HCM');
/*!40000 ALTER TABLE `userinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `EMAIL` varchar(100) NOT NULL,
  `PASS` char(100) DEFAULT NULL,
  `ROLE` int(11) DEFAULT NULL,
  `FACULTY` int(11) DEFAULT NULL,
  PRIMARY KEY (`EMAIL`),
  KEY `usersfk2_idx` (`FACULTY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('bangiamhieu@gmail.com','1',4,NULL),('giangvien1@gmail.com','1',1,1),('giangvien@gmail.com','1',1,1),('giangvienckm1@gmail.com','1',1,2),('giangvienckm@gmail.com','1',1,2),('phongtochuc@gmail.com','1',5,NULL),('quantrivien@gmail.com','1',6,NULL),('truongbomon@gmail.com','1',2,1),('truongbomonckm@gmail.com','1',2,2),('truongkhoa@gmail.com','3',3,1),('truongkhoackm@gmail.com','3',3,2),('truongkhoaCNTT@gmail.com','1',3,1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'kpidatabase'
--

--
-- Dumping routines for database 'kpidatabase'
--
/*!50003 DROP FUNCTION IF EXISTS `CHECKUSER` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `CHECKUSER`(EMAILip char(100),PASSip char(100)) RETURNS int(11)
BEGIN
       if EMAILip not in (select EMAIL
						from users)
		then return -1;
	   end if;
       if PASSip != (select PASS
					   from users
                       where email = EMAILip)
		then return -1;
	   end if;
       return (select ROLE
			   from users
               where EMAILip=users.EMAIL and PASSip=users.PASS);
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `tientrinh` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `tientrinh`(cv varchar(10),inpemail varchar(100)) RETURNS float
BEGIN
declare cnt int;
declare ct varchar(10);
declare val int;
declare val1 bit(2);
declare sum int;
set val = 0;
set cnt = (select min(stt) from dscvct where MaCV = cv );
while(cnt<=(select max(stt) from dscvct where MaCV = cv))
do
insert into cvct (MaCV,MaCvct,stt) select MaCV,MaCvct,stt from dscvct where stt=cnt;
set cnt = cnt + 1;
end while;
set cnt = (select min(stt) from dscvct where MaCV = cv );
set sum = (select count(*) from dscvct where MaCV = cv);
while(cnt<=(select max(stt) from dscvct where MaCV = cv))
do
	set val1 = (select done from tientrinhcv
				where email = inpemail
                and MaCtcv = (select MaCvct from cvct where stt = cnt ));
	delete from cvct where stt = cnt;
    if val1 = TRUE
    then
		set val = val+1;
    end if;
    set cnt = cnt + 1;
end while;
RETURN val/sum*100;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-18 20:33:41
