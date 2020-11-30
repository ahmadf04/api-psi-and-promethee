-- MySQL dump 10.13  Distrib 8.0.20, for macos10.15 (x86_64)
--
-- Host: localhost    Database: db_spk
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
-- Table structure for table `alternatifs`
--

DROP TABLE IF EXISTS `alternatifs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alternatifs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pekerjaan` varchar(45) DEFAULT NULL,
  `penghasilan` varchar(45) DEFAULT NULL,
  `status_rumah` varchar(45) DEFAULT NULL,
  `status_siswa` varchar(45) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alternatifs`
--

LOCK TABLES `alternatifs` WRITE;
/*!40000 ALTER TABLE `alternatifs` DISABLE KEYS */;
INSERT INTO `alternatifs` VALUES (1,'Petani','< 600.000','Cukup Rumah','Lengkap','2020-07-26 12:55:19','2020-07-26 12:55:19'),(2,'Buruh','600.000 - 1.800.00','Tidak Layak','Piatu','2020-07-26 12:55:51','2020-07-26 12:55:51'),(3,'Wiraswasta','1.800.000 - 2.400.000','CukupLayak','Yatim','2020-07-26 12:56:28','2020-07-26 12:56:28'),(4,'PNS','> 2.400.000','Sangat Layak','Yatim Piatu','2020-07-26 12:57:00','2020-07-26 12:57:00'),(5,'Wiraswasta','600.000 - 1.800.000','Cukup Layak','Lengkap','2020-07-26 12:57:39','2020-07-26 12:57:39');
/*!40000 ALTER TABLE `alternatifs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jurusans`
--

DROP TABLE IF EXISTS `jurusans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jurusans` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) DEFAULT NULL,
  `alias` varchar(45) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jurusans`
--

LOCK TABLES `jurusans` WRITE;
/*!40000 ALTER TABLE `jurusans` DISABLE KEYS */;
INSERT INTO `jurusans` VALUES (1,'Desain Permodelan dan Informasi Bangunan','DPIB','2020-11-30 13:41:32','2020-11-30 13:41:32'),(2,'Teknik Kendaraan Ringan Otomotif','TKRO','2020-11-30 13:44:33','2020-11-30 13:44:33'),(3,'Teknik dan Bisnis Sepeda Motor','TBSM','2020-11-30 13:44:33','2020-11-30 13:44:33'),(4,'Teknik Komputer dan Jaringan','TKJ','2020-11-30 13:44:33','2020-11-30 13:44:33'),(5,'Perbankan dan Keuangan Mikro','PKM','2020-11-30 13:44:33','2020-11-30 13:44:33'),(6,'Teknik Otomasi Industri','TOI','2020-11-30 13:44:33','2020-11-30 13:44:33');
/*!40000 ALTER TABLE `jurusans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pekerjaans`
--

DROP TABLE IF EXISTS `pekerjaans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pekerjaans` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sub_kriteria` varchar(45) DEFAULT NULL,
  `bobot` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pekerjaans`
--

LOCK TABLES `pekerjaans` WRITE;
/*!40000 ALTER TABLE `pekerjaans` DISABLE KEYS */;
INSERT INTO `pekerjaans` VALUES (1,'Petani',4,'2020-07-25 15:53:00','2020-07-25 15:53:00'),(2,'Buruh',3,'2020-07-25 15:53:31','2020-07-25 15:53:31'),(3,'Wiraswasta',2,'2020-07-25 15:53:37','2020-07-25 15:53:37'),(4,'PNS',1,'2020-07-25 15:53:48','2020-07-25 15:53:48');
/*!40000 ALTER TABLE `pekerjaans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pengajuans`
--

DROP TABLE IF EXISTS `pengajuans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pengajuans` (
  `id` int NOT NULL AUTO_INCREMENT,
  `alternatif` varchar(45) DEFAULT NULL,
  `pekerjaan` varchar(45) DEFAULT NULL,
  `penghasilan` varchar(45) DEFAULT NULL,
  `status_rumah` varchar(45) DEFAULT NULL,
  `status_siswa` varchar(45) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `kelas` varchar(45) DEFAULT NULL,
  `nisn` varchar(45) DEFAULT NULL,
  `jurusan` varchar(100) DEFAULT NULL,
  `jenis_bantuan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pengajuans`
--

LOCK TABLES `pengajuans` WRITE;
/*!40000 ALTER TABLE `pengajuans` DISABLE KEYS */;
INSERT INTO `pengajuans` VALUES (20,'Rahmat','Petani','< 600.000','Cukup Layak','Lengkap','2020-08-20 06:27:58','2020-11-30 12:19:31','XI','123','Teknik Kendaraan Ringan Otomotif','Kartu Indonesia Pintar (KIP)'),(21,'Diki','Buruh','600.000 - 1.800.000','Tidak Layak','Piatu','2020-08-20 06:28:22','2020-11-30 12:22:52','XI','456','TBSM','Surat Keterangan Tidak Mampu (SKTM)'),(22,'Budi','Wiraswasta','1.800.000 - 2.400.000','Cukup Layak','Yatim','2020-08-20 06:29:25','2020-11-30 14:42:29','XI','789','TKJ','Kartu Keluarga Sejahtera'),(23,'Ilham','PNS','> 2.400.000','Sangat Layak','Yatim Piatu','2020-08-20 06:29:51','2020-11-30 14:44:19','X','012','TOI','Surat Keterangan Tidak Mampu (SKTM)'),(24,'Joko','Wiraswasta','600.000 - 1.800.000','Cukup Layak','Lengkap','2020-08-20 06:30:55','2020-11-30 14:42:52','XII','345','TBSM','Tidak Ada');
/*!40000 ALTER TABLE `pengajuans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `penghasilans`
--

DROP TABLE IF EXISTS `penghasilans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `penghasilans` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sub_kriteria` varchar(45) DEFAULT NULL,
  `bobot` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penghasilans`
--

LOCK TABLES `penghasilans` WRITE;
/*!40000 ALTER TABLE `penghasilans` DISABLE KEYS */;
INSERT INTO `penghasilans` VALUES (1,'< 600.000',4,'2020-07-25 15:54:43','2020-07-25 15:54:43'),(2,'600.000 - 1.800.000',3,'2020-07-25 15:54:54','2020-07-25 15:54:54'),(3,'1.800.000 - 2.400.000',2,'2020-07-25 15:55:05','2020-07-25 15:55:05'),(4,'> 2.400.000',1,'2020-07-25 15:55:14','2020-07-25 15:55:14');
/*!40000 ALTER TABLE `penghasilans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preferenses`
--

DROP TABLE IF EXISTS `preferenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preferenses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `kategori` varchar(45) DEFAULT NULL,
  `nilai` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preferenses`
--

LOCK TABLES `preferenses` WRITE;
/*!40000 ALTER TABLE `preferenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `preferenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preferensis`
--

DROP TABLE IF EXISTS `preferensis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preferensis` (
  `id` int NOT NULL AUTO_INCREMENT,
  `kategori` varchar(45) DEFAULT NULL,
  `nilai` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preferensis`
--

LOCK TABLES `preferensis` WRITE;
/*!40000 ALTER TABLE `preferensis` DISABLE KEYS */;
INSERT INTO `preferensis` VALUES (2,'Tinggi',4,'2020-07-25 16:08:49','2020-07-25 16:08:49'),(3,'Cukup',3,'2020-07-25 16:08:58','2020-07-25 16:08:58'),(4,'Rendah',2,'2020-07-25 16:09:06','2020-07-25 16:09:06'),(5,'Sangat Rendah',1,'2020-07-25 16:09:12','2020-07-25 16:09:12');
/*!40000 ALTER TABLE `preferensis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `program_bantuans`
--

DROP TABLE IF EXISTS `program_bantuans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `program_bantuans` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sub_kriteria` varchar(100) DEFAULT NULL,
  `bobot` varchar(45) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `program_bantuans`
--

LOCK TABLES `program_bantuans` WRITE;
/*!40000 ALTER TABLE `program_bantuans` DISABLE KEYS */;
INSERT INTO `program_bantuans` VALUES (1,'Kartu Indonesia Pintar (KIP)','4','2020-11-30 18:46:08','2020-11-30 18:46:08'),(2,'Kartu Keluarga Sejahtera','3','2020-11-30 18:46:08','2020-11-30 18:46:08'),(3,'Surat Keterangan Tidak Mampu (SKTM)','2','2020-11-30 18:46:08','2020-11-30 18:46:08'),(4,'Tidak Ada','1','2020-11-30 18:46:08','2020-11-30 18:46:08');
/*!40000 ALTER TABLE `program_bantuans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_rumahs`
--

DROP TABLE IF EXISTS `status_rumahs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_rumahs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sub_kriteria` varchar(45) DEFAULT NULL,
  `bobot` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_rumahs`
--

LOCK TABLES `status_rumahs` WRITE;
/*!40000 ALTER TABLE `status_rumahs` DISABLE KEYS */;
INSERT INTO `status_rumahs` VALUES (1,'Tidak Layak',4,'2020-07-25 16:09:46','2020-07-25 16:09:46'),(2,'Kurang Layak',3,'2020-07-25 16:09:52','2020-07-25 16:09:52'),(3,'Cukup Layak',2,'2020-07-25 16:09:56','2020-07-25 16:09:56'),(4,'Sangat Layak',1,'2020-07-25 16:10:03','2020-07-25 16:10:03');
/*!40000 ALTER TABLE `status_rumahs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_siswas`
--

DROP TABLE IF EXISTS `status_siswas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_siswas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sub_kriteria` varchar(45) DEFAULT NULL,
  `bobot` int DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_siswas`
--

LOCK TABLES `status_siswas` WRITE;
/*!40000 ALTER TABLE `status_siswas` DISABLE KEYS */;
INSERT INTO `status_siswas` VALUES (1,'Yatim Piatu',4,'2020-07-25 16:10:18','2020-07-25 16:10:18'),(2,'Yatim',3,'2020-07-25 16:10:24','2020-07-25 16:10:24'),(3,'Piatu',2,'2020-07-25 16:10:29','2020-07-25 16:10:29'),(4,'Lengkap',1,'2020-07-25 16:10:40','2020-07-25 16:10:40');
/*!40000 ALTER TABLE `status_siswas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-30 22:35:42
