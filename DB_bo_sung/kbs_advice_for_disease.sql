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
-- Table structure for table `advice_for_disease`
--

DROP TABLE IF EXISTS `advice_for_disease`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `advice_for_disease` (
  `id` int NOT NULL AUTO_INCREMENT,
  `advice` longtext,
  `disease_id` varchar(5) DEFAULT NULL,
  `age` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `disease_id` (`disease_id`),
  CONSTRAINT `advice_for_disease_ibfk_1` FOREIGN KEY (`disease_id`) REFERENCES `disease` (`id`),
  CONSTRAINT `advice_for_disease_ibfk_2` FOREIGN KEY (`disease_id`) REFERENCES `disease` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advice_for_disease`
--

LOCK TABLES `advice_for_disease` WRITE;
/*!40000 ALTER TABLE `advice_for_disease` DISABLE KEYS */;
INSERT INTO `advice_for_disease` VALUES (6,'- Nên đến cơ sở y tế sớm, để được xét nghiệm và điều trị đầy đủ, đúng cách. Không nên tự ý dùng thuốc.','B4','>00'),(37,'- Giữ chế độ vận động đều đặn, đặc biệt là tình trạng ít vận động ở những công việc văn phòng\n- Bỏ các thói quen ăn uống không khoa học(thức ăn nhanh, đồ hộp)\n- Thay đổi lối sống kém lành mạnh (thức khuya, ngủ không đủ giấc, lạm dụng rượu bia, thuốc lá, chất kích thích)\n- Nên thăm khám bác sĩ thường xuyên\n- Nên vận động nhẹ nhàng, có băng thun bảo vệ khớp gối khi tập thể dục thể thao\n- Tránh leo cầu thang, mang vác nặng hoặc ngồi xổm…gây áp lực lên khớp gối\n- Nếu ở tình trạng thoái hóa sụn khớp gối giai đoạn nhẹ hoặc trung bình, người bệnh có thể sử dụng các liệu pháp như kem bôi có capsaicin, châm cứu hoặc chất bổ sung (glucosamine, chondroitin…)','B1','<40'),(38,'- Năng vận động, chú ý vận động ở các tư thế thích hợp.Các động tác thể dục nhịp điệu, đi bộ, chạy xe đạp và bơi lội không tạo nhiều áp lực cho khớp. \n- Hãy thử dành ra 20-30 phút vận động trong ba lần một tuần sẽ khiến các khớp của bạn cải thiện đáng kể. \n- Cân bằng giữa vận động và nghỉ ngơi, đừng làm việc quá sức.\n- Bổ sung canxi cho xương bằng các thực phẩm giàu canxi đó là các loại thịt: thịt heo, thịt bò, thịt gia cầm, cá biển, tôm, sò.\n- Thêm vào đó, cần tăng cường các loại trái cây như: đu đủ, dứa, chanh, bưởi vì các loại trái này là nguồn cung ứng men kháng viêm và sinh tố C, 2 hoạt chất có tác dụng kháng viêm.\n- Bỏ thuốc lá, hạn chế rượu bia, chất kích thích.','B1','>40'),(39,'- Nên cho trẻ điều trị nội khoa để được chăm sóc và điều trị đúng liệu trình.\n- Vật lý trị liệu.\n- Châm cứu giúp cải thiện sự linh hoạt của khớp.\n- Hạn chế sử dụng thuốc giảm đau','B2','<16'),(40,'- Nên tập các bài tập thể dục nhẹ nhàng, mục đích chính là giữ trọng lượng cơ thể khỏe mạnh và bảo vệ các khớp (yoga, khiêu vũ,thể dục nhịp điệu)\n- Bổ sung các vitamin D (có trong cá hồi, sữa, nấm, lòng đỏ trứng,...), dầu cá \n- Bỏ thuốc lá, hạn chế sử dụng rượu bia, chất kích thích','B2','>16'),(41,'- Thay đổi thói quen ngồi lâu, ít vận động\n- Tập thể dục bệnh gai cột sống mau phục hồi hơn, giảm tình trạng đau. Nên vận động thể dục qua các bài tập nhẹ nhàng. Các môn thể thao vận động nhẹ như bơi lội, yoga, thể dục dưỡng sinh\n- Uống đủ nước (từ 1,5 - 2l nước mỗi ngày)\n- Bổ sung canxi từ các thực phẩm như sữa, rau lá xanh, các loại đậu, hải sản, cá biển,...','B3','>00'),(42,'- Xây dựng chế độ dinh dưỡng cân bằng: Bổ sung rau xanh, hoa quả tươi. \n- Ăn không quá 100g thực phẩm giàu đạm/ngày với người có trọng lượng 50kg. \n- Hạn chế thực phẩm nhiều chất béo, đồ ăn chế biến sẵn, thịt đỏ, nội tạng động vật. \n- Uống đủ 2 lít nước mỗi ngày, không uống rượu bia\n- Dành ra ít nhất 30 phút tập luyện các môn thể dục, thể thao vừa sức\n- Đứng dậy đi lại, tập những động tác nhẹ nhàng sau từ 30 – 45 phút ngồi lâu một chỗ\n- Bạn nên ăn đúng giờ, ngủ đủ giấc, tránh thức khuya (nên ngủ trước 11 giờ đêm). Cân bằng giữa công việc và nghỉ ngơi, tránh tối đa áp lực tinh thần\n- Thường xuyên ngâm chân với nước ấm hoặc nước muối để giảm cơn đau nhanh chóng\n- Khi nằm, nên kê chân cao để máu được lưu thông, tạo sự thoải mái','B5','>00'),(43,'- Thay đổi thói quen sinh hoạt: không nên đeo túi nặng lệch về 1 bên vai, tập thể dục thể thao nhẹ nhàng, hạn chế khuân vác, bê những đồ vật nặng\n- Thường xuyên đi lại sau khi đứng hoặc ngồi từ 45-60 phút\n- Bổ sung thêm Glucose: hoa quả, ngũ cốc,…\n- Sử dụng các thực phẩm chứa nhiều vitamin A: sữa, thịt bò, cà rốt, bí đỏ,.... Tuy nhiên không nên lạm dụng bổ sung quá nhiều vitamin A (bổ sung <= 2.000 mg) để tránh nguy cơ gãy xương khi bổ sung quá nhiều vitamin A\n- Sử dụng túi đá lạnh để giảm cơn đau, sưng vùng bị thoát vị.','B6','>00');
/*!40000 ALTER TABLE `advice_for_disease` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-30 16:05:01
