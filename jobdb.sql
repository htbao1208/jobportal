-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: jobdb
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `bai_tuyen_dung`
--

DROP TABLE IF EXISTS `bai_tuyen_dung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bai_tuyen_dung` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mo_ta_cong_viec` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ngay_tao` date NOT NULL,
  `id_tai_khoan` int NOT NULL,
  `id_loai_cong_viec` int NOT NULL,
  `ten_bai_dang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ten_cong_ty` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_nganh_nghe` int NOT NULL,
  `luong` decimal(10,0) DEFAULT NULL,
  `trinh_do_hoc_van` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `kinh_nghiem` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_post_user_idx` (`id_tai_khoan`),
  KEY `fk_post_jobtype_idx` (`id_loai_cong_viec`),
  KEY `fk_post_career_idx` (`id_nganh_nghe`),
  CONSTRAINT `fk_post_career` FOREIGN KEY (`id_nganh_nghe`) REFERENCES `nganh_nghe` (`id`),
  CONSTRAINT `fk_post_jobtype` FOREIGN KEY (`id_loai_cong_viec`) REFERENCES `loai_cong_viec` (`id`),
  CONSTRAINT `fk_post_user` FOREIGN KEY (`id_tai_khoan`) REFERENCES `tai_khoan_nguoi_dung` (`id_tai_khoan`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bai_tuyen_dung`
--

LOCK TABLES `bai_tuyen_dung` WRITE;
/*!40000 ALTER TABLE `bai_tuyen_dung` DISABLE KEYS */;
INSERT INTO `bai_tuyen_dung` VALUES (2,'123','2021-10-03',4,2,'ÄÄng tuyá»n','Äáº§u trÆ°á»ng','test.vn',2,NULL,'123','123'),(3,'ÄÄng tuyá»n','2021-10-03',4,4,'ÄÄng tuyá»n','ÄÄng tuyá»n','ÄÄng tuyá»n',1,NULL,'ÄÄng tuyá»n','ÄÄng tuyá»n'),(4,'Mô tả công việc','2010-10-10',4,2,'Tuyển dụng nhân viên bất động sản','Công ty TNHH ABC','',2,NULL,'Cử nhân','3 năm làm việc'),(5,'Mô tả công việc','2010-10-10',4,2,'Tuyển dụng nhân viên kế toán','Công ty TNHH vật liệu xây dựng abc','',2,NULL,'Cử nhân','3 năm làm việc'),(6,'mÃ´ phá»ng','2021-10-06',4,3,'BÃ i ÄÄng','abc','text.vn',3,NULL,'mÃ´ phá»ng','mÃ´ phá»ng'),(7,'ÄÄng tuyá»n','2021-10-06',4,3,'ÄÄng tuyá»n','ÄÄng tuyá»n','test.vn',2,NULL,'ÄÄng tuyá»n','ÄÄng tuyá»n'),(8,'ÄÄng tuyá»n','2021-10-06',4,2,'ÄÄng tuyá»n','ÄÄng tuyá»n','test.vn',2,NULL,'ÄÄng tuyá»n','ÄÄng tuyá»n'),(9,'ÄÄng tuyá»n','2021-10-06',4,1,'ÄÄng tuyá»n','ÄÄng tuyá»n','sad',3,NULL,'ÄÄng tuyá»n','ÄÄng tuyá»n'),(10,'Personal info\r\n','2021-10-07',4,2,'ÄÄng tuyá»n','Personal info','Personal info',1,NULL,'Personal info\r\n','Personal info\r\n');
/*!40000 ALTER TABLE `bai_tuyen_dung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chi_tiet_trinh_do`
--

DROP TABLE IF EXISTS `chi_tiet_trinh_do`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chi_tiet_trinh_do` (
  `id_level` int DEFAULT NULL,
  `id_infor` int DEFAULT NULL,
  `ten_truong` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `chuyen_nganh` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngay_bat_dau` date NOT NULL,
  `ngay_ket_thuc` date DEFAULT NULL,
  `mo_ta` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `fk_ct_level_idx` (`id_level`),
  KEY `fk_ct_info_idx` (`id_infor`),
  CONSTRAINT `fk_ct_info` FOREIGN KEY (`id_infor`) REFERENCES `thong_tin_ung_vien` (`id`),
  CONSTRAINT `fk_ct_level` FOREIGN KEY (`id_level`) REFERENCES `trinh_do_hoc_van` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chi_tiet_trinh_do`
--

LOCK TABLES `chi_tiet_trinh_do` WRITE;
/*!40000 ALTER TABLE `chi_tiet_trinh_do` DISABLE KEYS */;
/*!40000 ALTER TABLE `chi_tiet_trinh_do` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cong_ty`
--

DROP TABLE IF EXISTS `cong_ty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cong_ty` (
  `id` int NOT NULL,
  `ten_cong_ty` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ngay_thanh_lap` date NOT NULL,
  `website_cong_ty` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo_cong_ty` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cong_ty`
--

LOCK TABLES `cong_ty` WRITE;
/*!40000 ALTER TABLE `cong_ty` DISABLE KEYS */;
/*!40000 ALTER TABLE `cong_ty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dia_chi_lam_viec`
--

DROP TABLE IF EXISTS `dia_chi_lam_viec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dia_chi_lam_viec` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dia_chi` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_quan_huyen` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_location_quan_idx` (`id_quan_huyen`),
  CONSTRAINT `fk_location_quan` FOREIGN KEY (`id_quan_huyen`) REFERENCES `quan_huyen` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dia_chi_lam_viec`
--

LOCK TABLES `dia_chi_lam_viec` WRITE;
/*!40000 ALTER TABLE `dia_chi_lam_viec` DISABLE KEYS */;
/*!40000 ALTER TABLE `dia_chi_lam_viec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kinh_nghiem_lam_viec`
--

DROP TABLE IF EXISTS `kinh_nghiem_lam_viec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kinh_nghiem_lam_viec` (
  `da_tung_lam_viec` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ngay_bat_dau` date NOT NULL,
  `ngay_ket_thuc` date NOT NULL,
  `chuc_danh` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ten_cong_ty` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mo_ta_cong_viec` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id_tai_khoan` int NOT NULL,
  `id_kinh_nghiem` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_kinh_nghiem`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kinh_nghiem_lam_viec`
--

LOCK TABLES `kinh_nghiem_lam_viec` WRITE;
/*!40000 ALTER TABLE `kinh_nghiem_lam_viec` DISABLE KEYS */;
/*!40000 ALTER TABLE `kinh_nghiem_lam_viec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ky_nang`
--

DROP TABLE IF EXISTS `ky_nang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ky_nang` (
  `id` int NOT NULL,
  `ten_ky_nang` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ky_nang`
--

LOCK TABLES `ky_nang` WRITE;
/*!40000 ALTER TABLE `ky_nang` DISABLE KEYS */;
/*!40000 ALTER TABLE `ky_nang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ky_nang_ung_vien`
--

DROP TABLE IF EXISTS `ky_nang_ung_vien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ky_nang_ung_vien` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_tai_khoan` int NOT NULL,
  `id_ky_nang` int NOT NULL,
  `trinh_do` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_kinangungvien_kinang_idx` (`id_ky_nang`),
  CONSTRAINT `fk_kinangungvien_kinang` FOREIGN KEY (`id_ky_nang`) REFERENCES `ky_nang` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ky_nang_ung_vien`
--

LOCK TABLES `ky_nang_ung_vien` WRITE;
/*!40000 ALTER TABLE `ky_nang_ung_vien` DISABLE KEYS */;
/*!40000 ALTER TABLE `ky_nang_ung_vien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loai_cong_viec`
--

DROP TABLE IF EXISTS `loai_cong_viec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loai_cong_viec` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ten_loai` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loai_cong_viec`
--

LOCK TABLES `loai_cong_viec` WRITE;
/*!40000 ALTER TABLE `loai_cong_viec` DISABLE KEYS */;
INSERT INTO `loai_cong_viec` VALUES (1,'van phong'),(2,'Thực tập'),(3,'Partime'),(4,'Fulltime');
/*!40000 ALTER TABLE `loai_cong_viec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nganh_nghe`
--

DROP TABLE IF EXISTS `nganh_nghe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nganh_nghe` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ten_nganh_nghe` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ten_nganh_nghe_UNIQUE` (`ten_nganh_nghe`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nganh_nghe`
--

LOCK TABLES `nganh_nghe` WRITE;
/*!40000 ALTER TABLE `nganh_nghe` DISABLE KEYS */;
INSERT INTO `nganh_nghe` VALUES (1,'Công nghệ thông tin'),(2,'Kế toán'),(3,'Luật');
/*!40000 ALTER TABLE `nganh_nghe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quan_huyen`
--

DROP TABLE IF EXISTS `quan_huyen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quan_huyen` (
  `id` int NOT NULL,
  `ten_quan_huyen` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `loai` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `id_tinh` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_quan_tinh_idx` (`id_tinh`),
  CONSTRAINT `fk_quan_tinh` FOREIGN KEY (`id_tinh`) REFERENCES `tinh` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quan_huyen`
--

LOCK TABLES `quan_huyen` WRITE;
/*!40000 ALTER TABLE `quan_huyen` DISABLE KEYS */;
INSERT INTO `quan_huyen` VALUES (1,'Quận Ba Đình','Quận',1),(2,'Quận Hoàn Kiếm','Quận',1),(3,'Quận Tây Hồ','Quận',1),(4,'Quận Long Biên','Quận',1),(5,'Quận Cầu Giấy','Quận',1),(6,'Quận Đống Đa','Quận',1),(7,'Quận Hai Bà Trưng','Quận',1),(8,'Quận Hoàng Mai','Quận',1),(9,'Quận Thanh Xuân','Quận',1),(16,'Huyện Sóc Sơn','Huyện',1),(17,'Huyện Đông Anh','Huyện',1),(18,'Huyện Gia Lâm','Huyện',1),(19,'Quận Nam Từ Liêm','Quận',1),(20,'Huyện Thanh Trì','Huyện',1),(21,'Quận Bắc Từ Liêm','Quận',1),(24,'Thành phố Hà Giang','Thành phố',2),(26,'Huyện Đồng Văn','Huyện',2),(27,'Huyện Mèo Vạc','Huyện',2),(28,'Huyện Yên Minh','Huyện',2),(29,'Huyện Quản Bạ','Huyện',2),(30,'Huyện Vị Xuyên','Huyện',2),(31,'Huyện Bắc Mê','Huyện',2),(32,'Huyện Hoàng Su Phì','Huyện',2),(33,'Huyện Xín Mần','Huyện',2),(34,'Huyện Bắc Quang','Huyện',2),(35,'Huyện Quang Bình','Huyện',2),(40,'Thành phố Cao Bằng','Thành phố',4),(42,'Huyện Bảo Lâm','Huyện',4),(43,'Huyện Bảo Lạc','Huyện',4),(44,'Huyện Thông Nông','Huyện',4),(45,'Huyện Hà Quảng','Huyện',4),(46,'Huyện Trà Lĩnh','Huyện',4),(47,'Huyện Trùng Khánh','Huyện',4),(48,'Huyện Hạ Lang','Huyện',4),(49,'Huyện Quảng Uyên','Huyện',4),(50,'Huyện Phục Hoà','Huyện',4),(51,'Huyện Hoà An','Huyện',4),(52,'Huyện Nguyên Bình','Huyện',4),(53,'Huyện Thạch An','Huyện',4),(58,'Thành Phố Bắc Kạn','Thành phố',6),(60,'Huyện Pác Nặm','Huyện',6),(61,'Huyện Ba Bể','Huyện',6),(62,'Huyện Ngân Sơn','Huyện',6),(63,'Huyện Bạch Thông','Huyện',6),(64,'Huyện Chợ Đồn','Huyện',6),(65,'Huyện Chợ Mới','Huyện',6),(66,'Huyện Na Rì','Huyện',6),(70,'Thành phố Tuyên Quang','Thành phố',8),(71,'Huyện Lâm Bình','Huyện',8),(72,'Huyện Nà Hang','Huyện',8),(73,'Huyện Chiêm Hóa','Huyện',8),(74,'Huyện Hàm Yên','Huyện',8),(75,'Huyện Yên Sơn','Huyện',8),(76,'Huyện Sơn Dương','Huyện',8),(80,'Thành phố Lào Cai','Thành phố',10),(82,'Huyện Bát Xát','Huyện',10),(83,'Huyện Mường Khương','Huyện',10),(84,'Huyện Si Ma Cai','Huyện',10),(85,'Huyện Bắc Hà','Huyện',10),(86,'Huyện Bảo Thắng','Huyện',10),(87,'Huyện Bảo Yên','Huyện',10),(88,'Huyện Sa Pa','Huyện',10),(89,'Huyện Văn Bàn','Huyện',10),(94,'Thành phố Điện Biên Phủ','Thành phố',11),(95,'Thị Xã Mường Lay','Thị xã',11),(96,'Huyện Mường Nhé','Huyện',11),(97,'Huyện Mường Chà','Huyện',11),(98,'Huyện Tủa Chùa','Huyện',11),(99,'Huyện Tuần Giáo','Huyện',11),(100,'Huyện Điện Biên','Huyện',11),(101,'Huyện Điện Biên Đông','Huyện',11),(102,'Huyện Mường Ảng','Huyện',11),(103,'Huyện Nậm Pồ','Huyện',11),(105,'Thành phố Lai Châu','Thành phố',12),(106,'Huyện Tam Đường','Huyện',12),(107,'Huyện Mường Tè','Huyện',12),(108,'Huyện Sìn Hồ','Huyện',12),(109,'Huyện Phong Thổ','Huyện',12),(110,'Huyện Than Uyên','Huyện',12),(111,'Huyện Tân Uyên','Huyện',12),(112,'Huyện Nậm Nhùn','Huyện',12),(116,'Thành phố Sơn La','Thành phố',14),(118,'Huyện Quỳnh Nhai','Huyện',14),(119,'Huyện Thuận Châu','Huyện',14),(120,'Huyện Mường La','Huyện',14),(121,'Huyện Bắc Yên','Huyện',14),(122,'Huyện Phù Yên','Huyện',14),(123,'Huyện Mộc Châu','Huyện',14),(124,'Huyện Yên Châu','Huyện',14),(125,'Huyện Mai Sơn','Huyện',14),(126,'Huyện Sông Mã','Huyện',14),(127,'Huyện Sốp Cộp','Huyện',14),(128,'Huyện Vân Hồ','Huyện',14),(132,'Thành phố Yên Bái','Thành phố',15),(133,'Thị xã Nghĩa Lộ','Thị xã',15),(135,'Huyện Lục Yên','Huyện',15),(136,'Huyện Văn Yên','Huyện',15),(137,'Huyện Mù Căng Chải','Huyện',15),(138,'Huyện Trấn Yên','Huyện',15),(139,'Huyện Trạm Tấu','Huyện',15),(140,'Huyện Văn Chấn','Huyện',15),(141,'Huyện Yên Bình','Huyện',15),(148,'Thành phố Hòa Bình','Thành phố',17),(150,'Huyện Đà Bắc','Huyện',17),(151,'Huyện Kỳ Sơn','Huyện',17),(152,'Huyện Lương Sơn','Huyện',17),(153,'Huyện Kim Bôi','Huyện',17),(154,'Huyện Cao Phong','Huyện',17),(155,'Huyện Tân Lạc','Huyện',17),(156,'Huyện Mai Châu','Huyện',17),(157,'Huyện Lạc Sơn','Huyện',17),(158,'Huyện Yên Thủy','Huyện',17),(159,'Huyện Lạc Thủy','Huyện',17),(164,'Thành phố Thái Nguyên','Thành phố',19),(165,'Thành phố Sông Công','Thành phố',19),(167,'Huyện Định Hóa','Huyện',19),(168,'Huyện Phú Lương','Huyện',19),(169,'Huyện Đồng Hỷ','Huyện',19),(170,'Huyện Võ Nhai','Huyện',19),(171,'Huyện Đại Từ','Huyện',19),(172,'Thị xã Phổ Yên','Thị xã',19),(173,'Huyện Phú Bình','Huyện',19),(178,'Thành phố Lạng Sơn','Thành phố',20),(180,'Huyện Tràng Định','Huyện',20),(181,'Huyện Bình Gia','Huyện',20),(182,'Huyện Văn Lãng','Huyện',20),(183,'Huyện Cao Lộc','Huyện',20),(184,'Huyện Văn Quan','Huyện',20),(185,'Huyện Bắc Sơn','Huyện',20),(186,'Huyện Hữu Lũng','Huyện',20),(187,'Huyện Chi Lăng','Huyện',20),(188,'Huyện Lộc Bình','Huyện',20),(189,'Huyện Đình Lập','Huyện',20),(193,'Thành phố Hạ Long','Thành phố',22),(194,'Thành phố Móng Cái','Thành phố',22),(195,'Thành phố Cẩm Phả','Thành phố',22),(196,'Thành phố Uông Bí','Thành phố',22),(198,'Huyện Bình Liêu','Huyện',22),(199,'Huyện Tiên Yên','Huyện',22),(200,'Huyện Đầm Hà','Huyện',22),(201,'Huyện Hải Hà','Huyện',22),(202,'Huyện Ba Chẽ','Huyện',22),(203,'Huyện Vân Đồn','Huyện',22),(204,'Huyện Hoành Bồ','Huyện',22),(205,'Thị xã Đông Triều','Thị xã',22),(206,'Thị xã Quảng Yên','Thị xã',22),(207,'Huyện Cô Tô','Huyện',22),(213,'Thành phố Bắc Giang','Thành phố',24),(215,'Huyện Yên Thế','Huyện',24),(216,'Huyện Tân Yên','Huyện',24),(217,'Huyện Lạng Giang','Huyện',24),(218,'Huyện Lục Nam','Huyện',24),(219,'Huyện Lục Ngạn','Huyện',24),(220,'Huyện Sơn Động','Huyện',24),(221,'Huyện Yên Dũng','Huyện',24),(222,'Huyện Việt Yên','Huyện',24),(223,'Huyện Hiệp Hòa','Huyện',24),(227,'Thành phố Việt Trì','Thành phố',25),(228,'Thị xã Phú Thọ','Thị xã',25),(230,'Huyện Đoan Hùng','Huyện',25),(231,'Huyện Hạ Hoà','Huyện',25),(232,'Huyện Thanh Ba','Huyện',25),(233,'Huyện Phù Ninh','Huyện',25),(234,'Huyện Yên Lập','Huyện',25),(235,'Huyện Cẩm Khê','Huyện',25),(236,'Huyện Tam Nông','Huyện',25),(237,'Huyện Lâm Thao','Huyện',25),(238,'Huyện Thanh Sơn','Huyện',25),(239,'Huyện Thanh Thuỷ','Huyện',25),(240,'Huyện Tân Sơn','Huyện',25),(243,'Thành phố Vĩnh Yên','Thành phố',26),(244,'Thị xã Phúc Yên','Thị xã',26),(246,'Huyện Lập Thạch','Huyện',26),(247,'Huyện Tam Dương','Huyện',26),(248,'Huyện Tam Đảo','Huyện',26),(249,'Huyện Bình Xuyên','Huyện',26),(250,'Huyện Mê Linh','Huyện',1),(251,'Huyện Yên Lạc','Huyện',26),(252,'Huyện Vĩnh Tường','Huyện',26),(253,'Huyện Sông Lô','Huyện',26),(256,'Thành phố Bắc Ninh','Thành phố',27),(258,'Huyện Yên Phong','Huyện',27),(259,'Huyện Quế Võ','Huyện',27),(260,'Huyện Tiên Du','Huyện',27),(261,'Thị xã Từ Sơn','Thị xã',27),(262,'Huyện Thuận Thành','Huyện',27),(263,'Huyện Gia Bình','Huyện',27),(264,'Huyện Lương Tài','Huyện',27),(268,'Quận Hà Đông','Quận',1),(269,'Thị xã Sơn Tây','Thị xã',1),(271,'Huyện Ba Vì','Huyện',1),(272,'Huyện Phúc Thọ','Huyện',1),(273,'Huyện Đan Phượng','Huyện',1),(274,'Huyện Hoài Đức','Huyện',1),(275,'Huyện Quốc Oai','Huyện',1),(276,'Huyện Thạch Thất','Huyện',1),(277,'Huyện Chương Mỹ','Huyện',1),(278,'Huyện Thanh Oai','Huyện',1),(279,'Huyện Thường Tín','Huyện',1),(280,'Huyện Phú Xuyên','Huyện',1),(281,'Huyện Ứng Hòa','Huyện',1),(282,'Huyện Mỹ Đức','Huyện',1),(288,'Thành phố Hải Dương','Thành phố',30),(290,'Thị xã Chí Linh','Thị xã',30),(291,'Huyện Nam Sách','Huyện',30),(292,'Huyện Kinh Môn','Huyện',30),(293,'Huyện Kim Thành','Huyện',30),(294,'Huyện Thanh Hà','Huyện',30),(295,'Huyện Cẩm Giàng','Huyện',30),(296,'Huyện Bình Giang','Huyện',30),(297,'Huyện Gia Lộc','Huyện',30),(298,'Huyện Tứ Kỳ','Huyện',30),(299,'Huyện Ninh Giang','Huyện',30),(300,'Huyện Thanh Miện','Huyện',30),(303,'Quận Hồng Bàng','Quận',31),(304,'Quận Ngô Quyền','Quận',31),(305,'Quận Lê Chân','Quận',31),(306,'Quận Hải An','Quận',31),(307,'Quận Kiến An','Quận',31),(308,'Quận Đồ Sơn','Quận',31),(309,'Quận Dương Kinh','Quận',31),(311,'Huyện Thuỷ Nguyên','Huyện',31),(312,'Huyện An Dương','Huyện',31),(313,'Huyện An Lão','Huyện',31),(314,'Huyện Kiến Thuỵ','Huyện',31),(315,'Huyện Tiên Lãng','Huyện',31),(316,'Huyện Vĩnh Bảo','Huyện',31),(317,'Huyện Cát Hải','Huyện',31),(318,'Huyện Bạch Long Vĩ','Huyện',31),(323,'Thành phố Hưng Yên','Thành phố',33),(325,'Huyện Văn Lâm','Huyện',33),(326,'Huyện Văn Giang','Huyện',33),(327,'Huyện Yên Mỹ','Huyện',33),(328,'Huyện Mỹ Hào','Huyện',33),(329,'Huyện Ân Thi','Huyện',33),(330,'Huyện Khoái Châu','Huyện',33),(331,'Huyện Kim Động','Huyện',33),(332,'Huyện Tiên Lữ','Huyện',33),(333,'Huyện Phù Cừ','Huyện',33),(336,'Thành phố Thái Bình','Thành phố',34),(338,'Huyện Quỳnh Phụ','Huyện',34),(339,'Huyện Hưng Hà','Huyện',34),(340,'Huyện Đông Hưng','Huyện',34),(341,'Huyện Thái Thụy','Huyện',34),(342,'Huyện Tiền Hải','Huyện',34),(343,'Huyện Kiến Xương','Huyện',34),(344,'Huyện Vũ Thư','Huyện',34),(347,'Thành phố Phủ Lý','Thành phố',35),(349,'Huyện Duy Tiên','Huyện',35),(350,'Huyện Kim Bảng','Huyện',35),(351,'Huyện Thanh Liêm','Huyện',35),(352,'Huyện Bình Lục','Huyện',35),(353,'Huyện Lý Nhân','Huyện',35),(356,'Thành phố Nam Định','Thành phố',36),(358,'Huyện Mỹ Lộc','Huyện',36),(359,'Huyện Vụ Bản','Huyện',36),(360,'Huyện Ý Yên','Huyện',36),(361,'Huyện Nghĩa Hưng','Huyện',36),(362,'Huyện Nam Trực','Huyện',36),(363,'Huyện Trực Ninh','Huyện',36),(364,'Huyện Xuân Trường','Huyện',36),(365,'Huyện Giao Thủy','Huyện',36),(366,'Huyện Hải Hậu','Huyện',36),(369,'Thành phố Ninh Bình','Thành phố',37),(370,'Thành phố Tam Điệp','Thành phố',37),(372,'Huyện Nho Quan','Huyện',37),(373,'Huyện Gia Viễn','Huyện',37),(374,'Huyện Hoa Lư','Huyện',37),(375,'Huyện Yên Khánh','Huyện',37),(376,'Huyện Kim Sơn','Huyện',37),(377,'Huyện Yên Mô','Huyện',37),(380,'Thành phố Thanh Hóa','Thành phố',38),(381,'Thị xã Bỉm Sơn','Thị xã',38),(382,'Thị xã Sầm Sơn','Thị xã',38),(384,'Huyện Mường Lát','Huyện',38),(385,'Huyện Quan Hóa','Huyện',38),(386,'Huyện Bá Thước','Huyện',38),(387,'Huyện Quan Sơn','Huyện',38),(388,'Huyện Lang Chánh','Huyện',38),(389,'Huyện Ngọc Lặc','Huyện',38),(390,'Huyện Cẩm Thủy','Huyện',38),(391,'Huyện Thạch Thành','Huyện',38),(392,'Huyện Hà Trung','Huyện',38),(393,'Huyện Vĩnh Lộc','Huyện',38),(394,'Huyện Yên Định','Huyện',38),(395,'Huyện Thọ Xuân','Huyện',38),(396,'Huyện Thường Xuân','Huyện',38),(397,'Huyện Triệu Sơn','Huyện',38),(398,'Huyện Thiệu Hóa','Huyện',38),(399,'Huyện Hoằng Hóa','Huyện',38),(400,'Huyện Hậu Lộc','Huyện',38),(401,'Huyện Nga Sơn','Huyện',38),(402,'Huyện Như Xuân','Huyện',38),(403,'Huyện Như Thanh','Huyện',38),(404,'Huyện Nông Cống','Huyện',38),(405,'Huyện Đông Sơn','Huyện',38),(406,'Huyện Quảng Xương','Huyện',38),(407,'Huyện Tĩnh Gia','Huyện',38),(412,'Thành phố Vinh','Thành phố',40),(413,'Thị xã Cửa Lò','Thị xã',40),(414,'Thị xã Thái Hoà','Thị xã',40),(415,'Huyện Quế Phong','Huyện',40),(416,'Huyện Quỳ Châu','Huyện',40),(417,'Huyện Kỳ Sơn','Huyện',40),(418,'Huyện Tương Dương','Huyện',40),(419,'Huyện Nghĩa Đàn','Huyện',40),(420,'Huyện Quỳ Hợp','Huyện',40),(421,'Huyện Quỳnh Lưu','Huyện',40),(422,'Huyện Con Cuông','Huyện',40),(423,'Huyện Tân Kỳ','Huyện',40),(424,'Huyện Anh Sơn','Huyện',40),(425,'Huyện Diễn Châu','Huyện',40),(426,'Huyện Yên Thành','Huyện',40),(427,'Huyện Đô Lương','Huyện',40),(428,'Huyện Thanh Chương','Huyện',40),(429,'Huyện Nghi Lộc','Huyện',40),(430,'Huyện Nam Đàn','Huyện',40),(431,'Huyện Hưng Nguyên','Huyện',40),(432,'Thị xã Hoàng Mai','Thị xã',40),(436,'Thành phố Hà Tĩnh','Thành phố',42),(437,'Thị xã Hồng Lĩnh','Thị xã',42),(439,'Huyện Hương Sơn','Huyện',42),(440,'Huyện Đức Thọ','Huyện',42),(441,'Huyện Vũ Quang','Huyện',42),(442,'Huyện Nghi Xuân','Huyện',42),(443,'Huyện Can Lộc','Huyện',42),(444,'Huyện Hương Khê','Huyện',42),(445,'Huyện Thạch Hà','Huyện',42),(446,'Huyện Cẩm Xuyên','Huyện',42),(447,'Huyện Kỳ Anh','Huyện',42),(448,'Huyện Lộc Hà','Huyện',42),(449,'Thị xã Kỳ Anh','Thị xã',42),(450,'Thành Phố Đồng Hới','Thành phố',44),(452,'Huyện Minh Hóa','Huyện',44),(453,'Huyện Tuyên Hóa','Huyện',44),(454,'Huyện Quảng Trạch','Thị xã',44),(455,'Huyện Bố Trạch','Huyện',44),(456,'Huyện Quảng Ninh','Huyện',44),(457,'Huyện Lệ Thủy','Huyện',44),(458,'Thị xã Ba Đồn','Huyện',44),(461,'Thành phố Đông Hà','Thành phố',45),(462,'Thị xã Quảng Trị','Thị xã',45),(464,'Huyện Vĩnh Linh','Huyện',45),(465,'Huyện Hướng Hóa','Huyện',45),(466,'Huyện Gio Linh','Huyện',45),(467,'Huyện Đa Krông','Huyện',45),(468,'Huyện Cam Lộ','Huyện',45),(469,'Huyện Triệu Phong','Huyện',45),(470,'Huyện Hải Lăng','Huyện',45),(471,'Huyện Cồn Cỏ','Huyện',45),(474,'Thành phố Huế','Thành phố',46),(476,'Huyện Phong Điền','Huyện',46),(477,'Huyện Quảng Điền','Huyện',46),(478,'Huyện Phú Vang','Huyện',46),(479,'Thị xã Hương Thủy','Thị xã',46),(480,'Thị xã Hương Trà','Thị xã',46),(481,'Huyện A Lưới','Huyện',46),(482,'Huyện Phú Lộc','Huyện',46),(483,'Huyện Nam Đông','Huyện',46),(490,'Quận Liên Chiểu','Quận',48),(491,'Quận Thanh Khê','Quận',48),(492,'Quận Hải Châu','Quận',48),(493,'Quận Sơn Trà','Quận',48),(494,'Quận Ngũ Hành Sơn','Quận',48),(495,'Quận Cẩm Lệ','Quận',48),(497,'Huyện Hòa Vang','Huyện',48),(498,'Huyện Hoàng Sa','Huyện',48),(502,'Thành phố Tam Kỳ','Thành phố',49),(503,'Thành phố Hội An','Thành phố',49),(504,'Huyện Tây Giang','Huyện',49),(505,'Huyện Đông Giang','Huyện',49),(506,'Huyện Đại Lộc','Huyện',49),(507,'Thị xã Điện Bàn','Thị xã',49),(508,'Huyện Duy Xuyên','Huyện',49),(509,'Huyện Quế Sơn','Huyện',49),(510,'Huyện Nam Giang','Huyện',49),(511,'Huyện Phước Sơn','Huyện',49),(512,'Huyện Hiệp Đức','Huyện',49),(513,'Huyện Thăng Bình','Huyện',49),(514,'Huyện Tiên Phước','Huyện',49),(515,'Huyện Bắc Trà My','Huyện',49),(516,'Huyện Nam Trà My','Huyện',49),(517,'Huyện Núi Thành','Huyện',49),(518,'Huyện Phú Ninh','Huyện',49),(519,'Huyện Nông Sơn','Huyện',49),(522,'Thành phố Quảng Ngãi','Thành phố',51),(524,'Huyện Bình Sơn','Huyện',51),(525,'Huyện Trà Bồng','Huyện',51),(526,'Huyện Tây Trà','Huyện',51),(527,'Huyện Sơn Tịnh','Huyện',51),(528,'Huyện Tư Nghĩa','Huyện',51),(529,'Huyện Sơn Hà','Huyện',51),(530,'Huyện Sơn Tây','Huyện',51),(531,'Huyện Minh Long','Huyện',51),(532,'Huyện Nghĩa Hành','Huyện',51),(533,'Huyện Mộ Đức','Huyện',51),(534,'Huyện Đức Phổ','Huyện',51),(535,'Huyện Ba Tơ','Huyện',51),(536,'Huyện Lý Sơn','Huyện',51),(540,'Thành phố Qui Nhơn','Thành phố',52),(542,'Huyện An Lão','Huyện',52),(543,'Huyện Hoài Nhơn','Huyện',52),(544,'Huyện Hoài Ân','Huyện',52),(545,'Huyện Phù Mỹ','Huyện',52),(546,'Huyện Vĩnh Thạnh','Huyện',52),(547,'Huyện Tây Sơn','Huyện',52),(548,'Huyện Phù Cát','Huyện',52),(549,'Thị xã An Nhơn','Thị xã',52),(550,'Huyện Tuy Phước','Huyện',52),(551,'Huyện Vân Canh','Huyện',52),(555,'Thành phố Tuy Hoà','Thành phố',54),(557,'Thị xã Sông Cầu','Thị xã',54),(558,'Huyện Đồng Xuân','Huyện',54),(559,'Huyện Tuy An','Huyện',54),(560,'Huyện Sơn Hòa','Huyện',54),(561,'Huyện Sông Hinh','Huyện',54),(562,'Huyện Tây Hoà','Huyện',54),(563,'Huyện Phú Hoà','Huyện',54),(564,'Huyện Đông Hòa','Huyện',54),(568,'Thành phố Nha Trang','Thành phố',56),(569,'Thành phố Cam Ranh','Thành phố',56),(570,'Huyện Cam Lâm','Huyện',56),(571,'Huyện Vạn Ninh','Huyện',56),(572,'Thị xã Ninh Hòa','Thị xã',56),(573,'Huyện Khánh Vĩnh','Huyện',56),(574,'Huyện Diên Khánh','Huyện',56),(575,'Huyện Khánh Sơn','Huyện',56),(576,'Huyện Trường Sa','Huyện',56),(582,'Thành phố Phan Rang-Tháp Chàm','Thành phố',58),(584,'Huyện Bác Ái','Huyện',58),(585,'Huyện Ninh Sơn','Huyện',58),(586,'Huyện Ninh Hải','Huyện',58),(587,'Huyện Ninh Phước','Huyện',58),(588,'Huyện Thuận Bắc','Huyện',58),(589,'Huyện Thuận Nam','Huyện',58),(593,'Thành phố Phan Thiết','Thành phố',60),(594,'Thị xã La Gi','Thị xã',60),(595,'Huyện Tuy Phong','Huyện',60),(596,'Huyện Bắc Bình','Huyện',60),(597,'Huyện Hàm Thuận Bắc','Huyện',60),(598,'Huyện Hàm Thuận Nam','Huyện',60),(599,'Huyện Tánh Linh','Huyện',60),(600,'Huyện Đức Linh','Huyện',60),(601,'Huyện Hàm Tân','Huyện',60),(602,'Huyện Phú Quí','Huyện',60),(608,'Thành phố Kon Tum','Thành phố',62),(610,'Huyện Đắk Glei','Huyện',62),(611,'Huyện Ngọc Hồi','Huyện',62),(612,'Huyện Đắk Tô','Huyện',62),(613,'Huyện Kon Plông','Huyện',62),(614,'Huyện Kon Rẫy','Huyện',62),(615,'Huyện Đắk Hà','Huyện',62),(616,'Huyện Sa Thầy','Huyện',62),(617,'Huyện Tu Mơ Rông','Huyện',62),(618,'Huyện Ia H\' Drai','Huyện',62),(622,'Thành phố Pleiku','Thành phố',64),(623,'Thị xã An Khê','Thị xã',64),(624,'Thị xã Ayun Pa','Thị xã',64),(625,'Huyện KBang','Huyện',64),(626,'Huyện Đăk Đoa','Huyện',64),(627,'Huyện Chư Păh','Huyện',64),(628,'Huyện Ia Grai','Huyện',64),(629,'Huyện Mang Yang','Huyện',64),(630,'Huyện Kông Chro','Huyện',64),(631,'Huyện Đức Cơ','Huyện',64),(632,'Huyện Chư Prông','Huyện',64),(633,'Huyện Chư Sê','Huyện',64),(634,'Huyện Đăk Pơ','Huyện',64),(635,'Huyện Ia Pa','Huyện',64),(637,'Huyện Krông Pa','Huyện',64),(638,'Huyện Phú Thiện','Huyện',64),(639,'Huyện Chư Pưh','Huyện',64),(643,'Thành phố Buôn Ma Thuột','Thành phố',66),(644,'Thị Xã Buôn Hồ','Thị xã',66),(645,'Huyện Ea H\'leo','Huyện',66),(646,'Huyện Ea Súp','Huyện',66),(647,'Huyện Buôn Đôn','Huyện',66),(648,'Huyện Cư M\'gar','Huyện',66),(649,'Huyện Krông Búk','Huyện',66),(650,'Huyện Krông Năng','Huyện',66),(651,'Huyện Ea Kar','Huyện',66),(652,'Huyện M\'Đrắk','Huyện',66),(653,'Huyện Krông Bông','Huyện',66),(654,'Huyện Krông Pắc','Huyện',66),(655,'Huyện Krông A Na','Huyện',66),(656,'Huyện Lắk','Huyện',66),(657,'Huyện Cư Kuin','Huyện',66),(660,'Thị xã Gia Nghĩa','Thị xã',67),(661,'Huyện Đăk Glong','Huyện',67),(662,'Huyện Cư Jút','Huyện',67),(663,'Huyện Đắk Mil','Huyện',67),(664,'Huyện Krông Nô','Huyện',67),(665,'Huyện Đắk Song','Huyện',67),(666,'Huyện Đắk R\'Lấp','Huyện',67),(667,'Huyện Tuy Đức','Huyện',67),(672,'Thành phố Đà Lạt','Thành phố',68),(673,'Thành phố Bảo Lộc','Thành phố',68),(674,'Huyện Đam Rông','Huyện',68),(675,'Huyện Lạc Dương','Huyện',68),(676,'Huyện Lâm Hà','Huyện',68),(677,'Huyện Đơn Dương','Huyện',68),(678,'Huyện Đức Trọng','Huyện',68),(679,'Huyện Di Linh','Huyện',68),(680,'Huyện Bảo Lâm','Huyện',68),(681,'Huyện Đạ Huoai','Huyện',68),(682,'Huyện Đạ Tẻh','Huyện',68),(683,'Huyện Cát Tiên','Huyện',68),(688,'Thị xã Phước Long','Thị xã',70),(689,'Thị xã Đồng Xoài','Thị xã',70),(690,'Thị xã Bình Long','Thị xã',70),(691,'Huyện Bù Gia Mập','Huyện',70),(692,'Huyện Lộc Ninh','Huyện',70),(693,'Huyện Bù Đốp','Huyện',70),(694,'Huyện Hớn Quản','Huyện',70),(695,'Huyện Đồng Phú','Huyện',70),(696,'Huyện Bù Đăng','Huyện',70),(697,'Huyện Chơn Thành','Huyện',70),(698,'Huyện Phú Riềng','Huyện',70),(703,'Thành phố Tây Ninh','Thành phố',72),(705,'Huyện Tân Biên','Huyện',72),(706,'Huyện Tân Châu','Huyện',72),(707,'Huyện Dương Minh Châu','Huyện',72),(708,'Huyện Châu Thành','Huyện',72),(709,'Huyện Hòa Thành','Huyện',72),(710,'Huyện Gò Dầu','Huyện',72),(711,'Huyện Bến Cầu','Huyện',72),(712,'Huyện Trảng Bàng','Huyện',72),(718,'Thành phố Thủ Dầu Một','Thành phố',74),(719,'Huyện Bàu Bàng','Huyện',74),(720,'Huyện Dầu Tiếng','Huyện',74),(721,'Thị xã Bến Cát','Thị xã',74),(722,'Huyện Phú Giáo','Huyện',74),(723,'Thị xã Tân Uyên','Thị xã',74),(724,'Thị xã Dĩ An','Thị xã',74),(725,'Thị xã Thuận An','Thị xã',74),(726,'Huyện Bắc Tân Uyên','Huyện',74),(731,'Thành phố Biên Hòa','Thành phố',75),(732,'Thị xã Long Khánh','Thị xã',75),(734,'Huyện Tân Phú','Huyện',75),(735,'Huyện Vĩnh Cửu','Huyện',75),(736,'Huyện Định Quán','Huyện',75),(737,'Huyện Trảng Bom','Huyện',75),(738,'Huyện Thống Nhất','Huyện',75),(739,'Huyện Cẩm Mỹ','Huyện',75),(740,'Huyện Long Thành','Huyện',75),(741,'Huyện Xuân Lộc','Huyện',75),(742,'Huyện Nhơn Trạch','Huyện',75),(747,'Thành phố Vũng Tàu','Thành phố',77),(748,'Thành phố Bà Rịa','Thành phố',77),(750,'Huyện Châu Đức','Huyện',77),(751,'Huyện Xuyên Mộc','Huyện',77),(752,'Huyện Long Điền','Huyện',77),(753,'Huyện Đất Đỏ','Huyện',77),(754,'Huyện Tân Thành','Huyện',77),(755,'Huyện Côn Đảo','Huyện',77),(760,'Quận 1','Quận',79),(761,'Quận 12','Quận',79),(762,'Quận Thủ Đức','Quận',79),(763,'Quận 9','Quận',79),(764,'Quận Gò Vấp','Quận',79),(765,'Quận Bình Thạnh','Quận',79),(766,'Quận Tân Bình','Quận',79),(767,'Quận Tân Phú','Quận',79),(768,'Quận Phú Nhuận','Quận',79),(769,'Quận 2','Quận',79),(770,'Quận 3','Quận',79),(771,'Quận 10','Quận',79),(772,'Quận 11','Quận',79),(773,'Quận 4','Quận',79),(774,'Quận 5','Quận',79),(775,'Quận 6','Quận',79),(776,'Quận 8','Quận',79),(777,'Quận Bình Tân','Quận',79),(778,'Quận 7','Quận',79),(783,'Huyện Củ Chi','Huyện',79),(784,'Huyện Hóc Môn','Huyện',79),(785,'Huyện Bình Chánh','Huyện',79),(786,'Huyện Nhà Bè','Huyện',79),(787,'Huyện Cần Giờ','Huyện',79),(794,'Thành phố Tân An','Thành phố',80),(795,'Thị xã Kiến Tường','Thị xã',80),(796,'Huyện Tân Hưng','Huyện',80),(797,'Huyện Vĩnh Hưng','Huyện',80),(798,'Huyện Mộc Hóa','Huyện',80),(799,'Huyện Tân Thạnh','Huyện',80),(800,'Huyện Thạnh Hóa','Huyện',80),(801,'Huyện Đức Huệ','Huyện',80),(802,'Huyện Đức Hòa','Huyện',80),(803,'Huyện Bến Lức','Huyện',80),(804,'Huyện Thủ Thừa','Huyện',80),(805,'Huyện Tân Trụ','Huyện',80),(806,'Huyện Cần Đước','Huyện',80),(807,'Huyện Cần Giuộc','Huyện',80),(808,'Huyện Châu Thành','Huyện',80),(815,'Thành phố Mỹ Tho','Thành phố',82),(816,'Thị xã Gò Công','Thị xã',82),(817,'Thị xã Cai Lậy','Huyện',82),(818,'Huyện Tân Phước','Huyện',82),(819,'Huyện Cái Bè','Huyện',82),(820,'Huyện Cai Lậy','Thị xã',82),(821,'Huyện Châu Thành','Huyện',82),(822,'Huyện Chợ Gạo','Huyện',82),(823,'Huyện Gò Công Tây','Huyện',82),(824,'Huyện Gò Công Đông','Huyện',82),(825,'Huyện Tân Phú Đông','Huyện',82),(829,'Thành phố Bến Tre','Thành phố',83),(831,'Huyện Châu Thành','Huyện',83),(832,'Huyện Chợ Lách','Huyện',83),(833,'Huyện Mỏ Cày Nam','Huyện',83),(834,'Huyện Giồng Trôm','Huyện',83),(835,'Huyện Bình Đại','Huyện',83),(836,'Huyện Ba Tri','Huyện',83),(837,'Huyện Thạnh Phú','Huyện',83),(838,'Huyện Mỏ Cày Bắc','Huyện',83),(842,'Thành phố Trà Vinh','Thành phố',84),(844,'Huyện Càng Long','Huyện',84),(845,'Huyện Cầu Kè','Huyện',84),(846,'Huyện Tiểu Cần','Huyện',84),(847,'Huyện Châu Thành','Huyện',84),(848,'Huyện Cầu Ngang','Huyện',84),(849,'Huyện Trà Cú','Huyện',84),(850,'Huyện Duyên Hải','Huyện',84),(851,'Thị xã Duyên Hải','Thị xã',84),(855,'Thành phố Vĩnh Long','Thành phố',86),(857,'Huyện Long Hồ','Huyện',86),(858,'Huyện Mang Thít','Huyện',86),(859,'Huyện  Vũng Liêm','Huyện',86),(860,'Huyện Tam Bình','Huyện',86),(861,'Thị xã Bình Minh','Thị xã',86),(862,'Huyện Trà Ôn','Huyện',86),(863,'Huyện Bình Tân','Huyện',86),(866,'Thành phố Cao Lãnh','Thành phố',87),(867,'Thành phố Sa Đéc','Thành phố',87),(868,'Thị xã Hồng Ngự','Thị xã',87),(869,'Huyện Tân Hồng','Huyện',87),(870,'Huyện Hồng Ngự','Huyện',87),(871,'Huyện Tam Nông','Huyện',87),(872,'Huyện Tháp Mười','Huyện',87),(873,'Huyện Cao Lãnh','Huyện',87),(874,'Huyện Thanh Bình','Huyện',87),(875,'Huyện Lấp Vò','Huyện',87),(876,'Huyện Lai Vung','Huyện',87),(877,'Huyện Châu Thành','Huyện',87),(883,'Thành phố Long Xuyên','Thành phố',89),(884,'Thành phố Châu Đốc','Thành phố',89),(886,'Huyện An Phú','Huyện',89),(887,'Thị xã Tân Châu','Thị xã',89),(888,'Huyện Phú Tân','Huyện',89),(889,'Huyện Châu Phú','Huyện',89),(890,'Huyện Tịnh Biên','Huyện',89),(891,'Huyện Tri Tôn','Huyện',89),(892,'Huyện Châu Thành','Huyện',89),(893,'Huyện Chợ Mới','Huyện',89),(894,'Huyện Thoại Sơn','Huyện',89),(899,'Thành phố Rạch Giá','Thành phố',91),(900,'Thị xã Hà Tiên','Thị xã',91),(902,'Huyện Kiên Lương','Huyện',91),(903,'Huyện Hòn Đất','Huyện',91),(904,'Huyện Tân Hiệp','Huyện',91),(905,'Huyện Châu Thành','Huyện',91),(906,'Huyện Giồng Riềng','Huyện',91),(907,'Huyện Gò Quao','Huyện',91),(908,'Huyện An Biên','Huyện',91),(909,'Huyện An Minh','Huyện',91),(910,'Huyện Vĩnh Thuận','Huyện',91),(911,'Huyện Phú Quốc','Huyện',91),(912,'Huyện Kiên Hải','Huyện',91),(913,'Huyện U Minh Thượng','Huyện',91),(914,'Huyện Giang Thành','Huyện',91),(916,'Quận Ninh Kiều','Quận',92),(917,'Quận Ô Môn','Quận',92),(918,'Quận Bình Thuỷ','Quận',92),(919,'Quận Cái Răng','Quận',92),(923,'Quận Thốt Nốt','Quận',92),(924,'Huyện Vĩnh Thạnh','Huyện',92),(925,'Huyện Cờ Đỏ','Huyện',92),(926,'Huyện Phong Điền','Huyện',92),(927,'Huyện Thới Lai','Huyện',92),(930,'Thành phố Vị Thanh','Thành phố',93),(931,'Thị xã Ngã Bảy','Thị xã',93),(932,'Huyện Châu Thành A','Huyện',93),(933,'Huyện Châu Thành','Huyện',93),(934,'Huyện Phụng Hiệp','Huyện',93),(935,'Huyện Vị Thuỷ','Huyện',93),(936,'Huyện Long Mỹ','Huyện',93),(937,'Thị xã Long Mỹ','Thị xã',93),(941,'Thành phố Sóc Trăng','Thành phố',94),(942,'Huyện Châu Thành','Huyện',94),(943,'Huyện Kế Sách','Huyện',94),(944,'Huyện Mỹ Tú','Huyện',94),(945,'Huyện Cù Lao Dung','Huyện',94),(946,'Huyện Long Phú','Huyện',94),(947,'Huyện Mỹ Xuyên','Huyện',94),(948,'Thị xã Ngã Năm','Thị xã',94),(949,'Huyện Thạnh Trị','Huyện',94),(950,'Thị xã Vĩnh Châu','Thị xã',94),(951,'Huyện Trần Đề','Huyện',94),(954,'Thành phố Bạc Liêu','Thành phố',95),(956,'Huyện Hồng Dân','Huyện',95),(957,'Huyện Phước Long','Huyện',95),(958,'Huyện Vĩnh Lợi','Huyện',95),(959,'Thị xã Giá Rai','Thị xã',95),(960,'Huyện Đông Hải','Huyện',95),(961,'Huyện Hoà Bình','Huyện',95),(964,'Thành phố Cà Mau','Thành phố',96),(966,'Huyện U Minh','Huyện',96),(967,'Huyện Thới Bình','Huyện',96),(968,'Huyện Trần Văn Thời','Huyện',96),(969,'Huyện Cái Nước','Huyện',96),(970,'Huyện Đầm Dơi','Huyện',96),(971,'Huyện Năm Căn','Huyện',96),(972,'Huyện Phú Tân','Huyện',96),(973,'Huyện Ngọc Hiển','Huyện',96);
/*!40000 ALTER TABLE `quan_huyen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tai_khoan_nguoi_dung`
--

DROP TABLE IF EXISTS `tai_khoan_nguoi_dung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tai_khoan_nguoi_dung` (
  `id_tai_khoan` int NOT NULL AUTO_INCREMENT,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sdt` char(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `anh_nguoi_dung` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_role` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngay_tao` date NOT NULL,
  `active` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_tai_khoan`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tai_khoan_nguoi_dung`
--

LOCK TABLES `tai_khoan_nguoi_dung` WRITE;
/*!40000 ALTER TABLE `tai_khoan_nguoi_dung` DISABLE KEYS */;
INSERT INTO `tai_khoan_nguoi_dung` VALUES (1,'123@gmail.com','$2a$10$XFZSJNmZkV/DBPqUzdk2AexMjRWrpdQw5xsy1kF4lXdMdwO8ppmA.','\0','https://res.cloudinary.com/bh1208jobportal/image/upload/v1633231774/viatg6gqi70ftsfwzle8.png','ROLE_USER','baohuynh','2010-10-10','0'),(2,'asdf@gmail.com','$2a$10$IqHEYsrhAB2Wdgd4tmHuYugarQqhfnJYAEBQfTfJHXXe9Q2IEr22u','\0','https://res.cloudinary.com/bh1208jobportal/image/upload/v1633231774/viatg6gqi70ftsfwzle8.png','ROLE_USER','test1','2010-10-11','0'),(3,'123@gmail.com','$2a$10$BakXfiMgmPXkNlR99Ic3HuD.LGEyeNWEOMO94oftZKlBj0a9D0HpK','\0','https://res.cloudinary.com/bh1208jobportal/image/upload/v1633231774/viatg6gqi70ftsfwzle8.png','ROLE_USER','test2','2010-10-12','0'),(4,'kid03789125@gmail.com','$2a$10$WyAaBzMmvsIpb2c7795Ogu5UuDuG9p.LhA/pRYOpeiK/cG2B1Bk6m','\0','https://res.cloudinary.com/bh1208jobportal/image/upload/v1633231774/viatg6gqi70ftsfwzle8.png','ROLE_COMPANY','avt111','2010-10-10','0'),(5,'abc@gmail.com','$2a$10$64kuMYhcRYCG1mRtmZpwB.OxPj8ToEx.J0aAGuU/3GxAOJq4pKTwq','\0','https://res.cloudinary.com/bh1208jobportal/image/upload/v1633265899/uckyzy3pb5epuiln8ffm.jpg','ROLE_ADMIN','testn12','2010-10-10','0'),(6,'abc@gmail.com','$2a$10$IJEq555OUCLLEu0Pf8.oAe52MEez0lb4EUAZ17JILp3uiACYDe0se','\0','https://res.cloudinary.com/bh1208jobportal/image/upload/v1633320852/w3vio3deqfcfutgruk9y.jpg','ROLE_SEEKER','testseeker','2010-10-10','0'),(7,'test@gmail.com','$2a$10$B1hr6DUju6.nkler.ITKzegcbND7YpLoR/8sd/jnHiMEIzkhWv.3q','\0','https://res.cloudinary.com/bh1208jobportal/image/upload/v1633346471/ua1gevidqpacdg219jfs.jpg','ROLE_SEEKER','seeker1','2010-10-10','0');
/*!40000 ALTER TABLE `tai_khoan_nguoi_dung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thong_tin_ung_vien`
--

DROP TABLE IF EXISTS `thong_tin_ung_vien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thong_tin_ung_vien` (
  `ho` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ten` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dia_chi` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ngay_sinh` date NOT NULL,
  `gioi_tinh` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta_kinh_nghiem` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mo_ta_ky_nang` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_tai_khoan` int NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `fk_info_user_idx` (`id_tai_khoan`),
  CONSTRAINT `fk_info_user` FOREIGN KEY (`id_tai_khoan`) REFERENCES `tai_khoan_nguoi_dung` (`id_tai_khoan`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thong_tin_ung_vien`
--

LOCK TABLES `thong_tin_ung_vien` WRITE;
/*!40000 ALTER TABLE `thong_tin_ung_vien` DISABLE KEYS */;
INSERT INTO `thong_tin_ung_vien` VALUES ('Huá»³nh Tháº¿','Báº£o','256/1/4 DÆ°Æ¡ng Quáº£ng HÃ m, PhÆ°á»ng 5, GÃ² Váº¥p','2003-06-19','0','KhÃ´ng cÃ³ gÃ¬ Äá» mÃ´ táº£','KhÃ´ng cÃ³ gÃ¬ Äá» mÃ´ táº£',7,1);
/*!40000 ALTER TABLE `thong_tin_ung_vien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tinh`
--

DROP TABLE IF EXISTS `tinh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tinh` (
  `id` int NOT NULL,
  `ten_tinh` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `loai` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tinh`
--

LOCK TABLES `tinh` WRITE;
/*!40000 ALTER TABLE `tinh` DISABLE KEYS */;
INSERT INTO `tinh` VALUES (1,'Thành phố Hà Nội','Thành phố Trung ương'),(2,'Tỉnh Hà Giang','Tỉnh'),(4,'Tỉnh Cao Bằng','Tỉnh'),(6,'Tỉnh Bắc Kạn','Tỉnh'),(8,'Tỉnh Tuyên Quang','Tỉnh'),(10,'Tỉnh Lào Cai','Tỉnh'),(11,'Tỉnh Điện Biên','Tỉnh'),(12,'Tỉnh Lai Châu','Tỉnh'),(14,'Tỉnh Sơn La','Tỉnh'),(15,'Tỉnh Yên Bái','Tỉnh'),(17,'Tỉnh Hoà Bình','Tỉnh'),(19,'Tỉnh Thái Nguyên','Tỉnh'),(20,'Tỉnh Lạng Sơn','Tỉnh'),(22,'Tỉnh Quảng Ninh','Tỉnh'),(24,'Tỉnh Bắc Giang','Tỉnh'),(25,'Tỉnh Phú Thọ','Tỉnh'),(26,'Tỉnh Vĩnh Phúc','Tỉnh'),(27,'Tỉnh Bắc Ninh','Tỉnh'),(30,'Tỉnh Hải Dương','Tỉnh'),(31,'Thành phố Hải Phòng','Thành phố Trung ương'),(33,'Tỉnh Hưng Yên','Tỉnh'),(34,'Tỉnh Thái Bình','Tỉnh'),(35,'Tỉnh Hà Nam','Tỉnh'),(36,'Tỉnh Nam Định','Tỉnh'),(37,'Tỉnh Ninh Bình','Tỉnh'),(38,'Tỉnh Thanh Hóa','Tỉnh'),(40,'Tỉnh Nghệ An','Tỉnh'),(42,'Tỉnh Hà Tĩnh','Tỉnh'),(44,'Tỉnh Quảng Bình','Tỉnh'),(45,'Tỉnh Quảng Trị','Tỉnh'),(46,'Tỉnh Thừa Thiên Huế','Tỉnh'),(48,'Thành phố Đà Nẵng','Thành phố Trung ương'),(49,'Tỉnh Quảng Nam','Tỉnh'),(51,'Tỉnh Quảng Ngãi','Tỉnh'),(52,'Tỉnh Bình Định','Tỉnh'),(54,'Tỉnh Phú Yên','Tỉnh'),(56,'Tỉnh Khánh Hòa','Tỉnh'),(58,'Tỉnh Ninh Thuận','Tỉnh'),(60,'Tỉnh Bình Thuận','Tỉnh'),(62,'Tỉnh Kon Tum','Tỉnh'),(64,'Tỉnh Gia Lai','Tỉnh'),(66,'Tỉnh Đắk Lắk','Tỉnh'),(67,'Tỉnh Đắk Nông','Tỉnh'),(68,'Tỉnh Lâm Đồng','Tỉnh'),(70,'Tỉnh Bình Phước','Tỉnh'),(72,'Tỉnh Tây Ninh','Tỉnh'),(74,'Tỉnh Bình Dương','Tỉnh'),(75,'Tỉnh Đồng Nai','Tỉnh'),(77,'Tỉnh Bà Rịa - Vũng Tàu','Tỉnh'),(79,'Thành phố Hồ Chí Minh','Thành phố Trung ương'),(80,'Tỉnh Long An','Tỉnh'),(82,'Tỉnh Tiền Giang','Tỉnh'),(83,'Tỉnh Bến Tre','Tỉnh'),(84,'Tỉnh Trà Vinh','Tỉnh'),(86,'Tỉnh Vĩnh Long','Tỉnh'),(87,'Tỉnh Đồng Tháp','Tỉnh'),(89,'Tỉnh An Giang','Tỉnh'),(91,'Tỉnh Kiên Giang','Tỉnh'),(92,'Thành phố Cần Thơ','Thành phố Trung ương'),(93,'Tỉnh Hậu Giang','Tỉnh'),(94,'Tỉnh Sóc Trăng','Tỉnh'),(95,'Tỉnh Bạc Liêu','Tỉnh'),(96,'Tỉnh Cà Mau','Tỉnh');
/*!40000 ALTER TABLE `tinh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trinh_do_hoc_van`
--

DROP TABLE IF EXISTS `trinh_do_hoc_van`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trinh_do_hoc_van` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ten_trinh_do` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ten_trinh_do_UNIQUE` (`ten_trinh_do`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trinh_do_hoc_van`
--

LOCK TABLES `trinh_do_hoc_van` WRITE;
/*!40000 ALTER TABLE `trinh_do_hoc_van` DISABLE KEYS */;
INSERT INTO `trinh_do_hoc_van` VALUES (4,'Cao đẳng'),(5,'Cử nhân'),(9,'Khác'),(6,'Kỹ sư'),(1,'Phổ thông cơ sở'),(7,'Thạc sĩ'),(8,'Tiến sĩ'),(3,'Trung cấp'),(2,'Trung học');
/*!40000 ALTER TABLE `trinh_do_hoc_van` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_log`
--

DROP TABLE IF EXISTS `user_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ngay_dang_nhap` datetime NOT NULL,
  `id_tai_khoan` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_log_user_idx` (`id_tai_khoan`),
  CONSTRAINT `fk_log_user` FOREIGN KEY (`id_tai_khoan`) REFERENCES `tai_khoan_nguoi_dung` (`id_tai_khoan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_log`
--

LOCK TABLES `user_log` WRITE;
/*!40000 ALTER TABLE `user_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vai_tro_nguoi_dung`
--

DROP TABLE IF EXISTS `vai_tro_nguoi_dung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vai_tro_nguoi_dung` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ten_vai_tro` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vai_tro_nguoi_dung`
--

LOCK TABLES `vai_tro_nguoi_dung` WRITE;
/*!40000 ALTER TABLE `vai_tro_nguoi_dung` DISABLE KEYS */;
INSERT INTO `vai_tro_nguoi_dung` VALUES (1,'admin'),(2,'user');
/*!40000 ALTER TABLE `vai_tro_nguoi_dung` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-07 19:55:10
