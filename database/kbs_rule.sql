-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: kbs
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `rule`
--

DROP TABLE IF EXISTS `rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rule` (
  `id` varchar(10) NOT NULL,
  `type` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rule`
--

LOCK TABLES `rule` WRITE;
/*!40000 ALTER TABLE `rule` DISABLE KEYS */;
INSERT INTO `rule` VALUES ('L1','lui'),('L10','lui'),('L100','lui'),('L101','lui'),('L102','lui'),('L103','lui'),('L104','lui'),('L105','lui'),('L106','lui'),('L107','lui'),('L108','lui'),('L109','lui'),('L11','lui'),('L110','lui'),('L111','lui'),('L112','lui'),('L113','lui'),('L114','lui'),('L115','lui'),('L116','lui'),('L117','lui'),('L118','lui'),('L119','lui'),('L12','lui'),('L120','lui'),('L121','lui'),('L122','lui'),('L123','lui'),('L124','lui'),('L13','lui'),('L14','lui'),('L15','lui'),('L16','lui'),('L17','lui'),('L18','lui'),('L19','lui'),('L2','lui'),('L20','lui'),('L21','lui'),('L22','lui'),('L23','lui'),('L24','lui'),('L25','lui'),('L26','lui'),('L27','lui'),('L28','lui'),('L29','lui'),('L3','lui'),('L30','lui'),('L31','lui'),('L32','lui'),('L33','lui'),('L34','lui'),('L35','lui'),('L36','lui'),('L37','lui'),('L38','lui'),('L39','lui'),('L4','lui'),('L40','lui'),('L41','lui'),('L42','lui'),('L43','lui'),('L44','lui'),('L45','lui'),('L46','lui'),('L47','lui'),('L48','lui'),('L49','lui'),('L5','lui'),('L50','lui'),('L51','lui'),('L52','lui'),('L53','lui'),('L54','lui'),('L55','lui'),('L56','lui'),('L57','lui'),('L58','lui'),('L59','lui'),('L6','lui'),('L60','lui'),('L61','lui'),('L62','lui'),('L63','lui'),('L64','lui'),('L65','lui'),('L66','lui'),('L67','lui'),('L68','lui'),('L69','lui'),('L7','lui'),('L70','lui'),('L71','lui'),('L72','lui'),('L73','lui'),('L74','lui'),('L75','lui'),('L76','lui'),('L77','lui'),('L78','lui'),('L79','lui'),('L8','lui'),('L80','lui'),('L81','lui'),('L82','lui'),('L83','lui'),('L84','lui'),('L85','lui'),('L86','lui'),('L87','lui'),('L88','lui'),('L89','lui'),('L9','lui'),('L90','lui'),('L91','lui'),('L92','lui'),('L93','lui'),('L94','lui'),('L95','lui'),('L96','lui'),('L97','lui'),('L98','lui'),('L99','lui'),('T1','tien'),('T10','tien'),('T11','tien'),('T12','tien'),('T13','tien'),('T14','tien'),('T15','tien'),('T16','tien'),('T17','tien'),('T18','tien'),('T19','tien'),('T2','tien'),('T20','tien'),('T21','tien'),('T22','tien'),('T23','tien'),('T24','tien'),('T25','tien'),('T26','tien'),('T27','tien'),('T28','tien'),('T29','tien'),('T3','tien'),('T30','tien'),('T31','tien'),('T32','tien'),('T33','tien'),('T34','tien'),('T35','tien'),('T36','tien'),('T37','tien'),('T38','tien'),('T39','tien'),('T4','tien'),('T40','tien'),('T41','tien'),('T42','tien'),('T43','tien'),('T44','tien'),('T45','tien'),('T46','tien'),('T47','tien'),('T48','tien'),('T49','tien'),('T5','tien'),('T50','tien'),('T51','tien'),('T52','tien'),('T53','tien'),('T54','tien'),('T55','tien'),('T56','tien'),('T57','tien'),('T58','tien'),('T6','tien'),('T7','tien'),('T8','tien'),('T9','tien');
/*!40000 ALTER TABLE `rule` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-23 23:56:35
