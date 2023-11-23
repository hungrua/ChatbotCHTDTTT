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
-- Table structure for table `symptom`
--

DROP TABLE IF EXISTS `symptom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `symptom` (
  `id` varchar(10) NOT NULL,
  `name` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `symptom`
--

LOCK TABLES `symptom` WRITE;
/*!40000 ALTER TABLE `symptom` DISABLE KEYS */;
INSERT INTO `symptom` VALUES ('TC01','Đau khớp'),('TC02','Đau ở khớp ngón chân cái'),('TC03','Đau ở mắt cá chân'),('TC04','Đau ở đầu gối'),('TC05','Đau ở cổ tay'),('TC06','Đau ở khuỷu tay'),('TC07','Đau ở cổ vai gáy'),('TC08','Đau khớp háng'),('TC09','Đau đĩa đệm'),('TC10','Đau thắt lưng'),('TC11','Đau khớp ngón tay'),('TC12','Đau nửa đầu'),('TC13','Đau đột ngột dữ dội'),('TC14','Đau dữ dội vài giờ trong 1-2 ngày, sau đó chuyển sang đau âm ỉ vài ngày hoặc vài tuần'),('TC15','Đau nhức mỏi cổ sau đó lan sang bả vai, cánh tay hay lên đầu'),('TC16','Đau liên tục hoặc đau ngắt quãng'),('TC17','Đau buốt, buốt, như có điện, lan tỏa hoặc xuyên qua'),('TC18','Đau nhức nhối sâu bên trong liên tục'),('TC19','Đau kèm tê'),('TC20','Đau kèm sưng'),('TC21','Đau lan xuống vai, cánh tay và ngón tay'),('TC22','Đau tê ở cổ lan sang hai tay'),('TC23','Đau đối xứng 2 bên'),('TC24','Đau về đêm và gần sáng'),('TC25','Đau tăng khi hoạt động giảm khi nghỉ ngơi'),('TC26','Đau khi ngồi, nằm nghiêng, ho, hắt hơi hoặc đại tiện'),('TC27','Đau khi thay đổi thời tiết hoặc giao mùa'),('TC28','Đau khi căng thẳng mệt mỏi'),('TC29','Đau khi vận động vùng cổ'),('TC30','Đau cả ngày'),('TC31','Khớp bị sưng đỏ tấy'),('TC32','Tê bì chân tay'),('TC33','Són tiểu, bí tiểu'),('TC34','Sốt thường'),('TC35','Sốt cao, co giật'),('TC36','Da nhợt nhạt hoặc tím đỏ'),('TC37','Tĩnh mạch nổi rõ'),('TC38','Cứng khớp sau khi ngủ dậy'),('TC39','Nghe rõ tiếng kẹt kẹt ở khớp'),('TC40','Đau đầu, chóng mặt');
/*!40000 ALTER TABLE `symptom` ENABLE KEYS */;
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
