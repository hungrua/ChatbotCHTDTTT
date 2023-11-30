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
-- Table structure for table `advice_for_all`
--

DROP TABLE IF EXISTS `advice_for_all`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `advice_for_all` (
  `id` varchar(10) NOT NULL,
  `ask` text,
  `advice` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advice_for_all`
--

LOCK TABLES `advice_for_all` WRITE;
/*!40000 ALTER TABLE `advice_for_all` DISABLE KEYS */;
INSERT INTO `advice_for_all` VALUES ('CD1','Hay ăn các thực phẩm giàu protein, chất béo như thịt đỏ, nội tạng động vật,... ','- Hãy hạn chế mức tiêu thụ thụ thịt đỏ, chất béo ở mức vừa phải (không quá 300 - 500g mỗi tuần)\n - Bạn hãy thay thế thịt đỏ bằng các thực phẩm giàu đạm khác như cá, ức gà để giảm thiểu lượng chất béo\n '),('CD2','Hay ăn mặn ','- Ăn dưới 5g muối mỗi ngày\n - Hãy hạn chế ăn tiệm và ăn các đồ ăn chế biến sẵn\n - Tính toán lượng muối, bột canh, nước mắm,.. cho vào thức ăn khi nấu nướng'),('CD3','Hay ăn đồ ngọt','- Hạn chế lượng tiêu thụ đường dưới mức 10% tổng lượng calo nạp vào 1 ngày\n - Thay thế dần dần lượng đường tinh chế bạn sử dụng hằng ngày bằng lượng đường tự nhiên có trong trái cây hay mật ong'),('CD4','Ít ăn thực phẩm chứa chất xơ như rau xanh, trái cây','- Tăng lượng chất xơ trong khẩu phần ăn hàng ngày ít nhất 20-35g\n- Hãy bao gồm nhiều loại rau quả và thực phẩm giàu chất xơ như cải bina, cải xoăn, bông cải xanh, cà chua, lúa mạch, hạt lanh, hạt óc chó, và nhiều loại quả.'),('CD5','Hay sử dụng đồ ăn nhanh, các loại nước ngọt có ga, rượu bia, cafe','- Giảm tối đa mức tiêu thụ các loại thực phẩm đồ ăn nhanh, chứa chất kích thích, đồ uống có cồn trong chế độ ăn.\r '),('CD6','Ăn uống đầy đủ chất dinh dưỡng','- Bạn nên duy trì thói quen đó kèm với việc tập thể dục, điều này sẽ giúp bạn có một hệ cơ xương khớp chắc khỏe hơn và tránh được các bệnh.\r '),('TQ1','Ít vận động, không chơi (ít chơi) các môn thể thao','- Bạn nên vận động nhiều hơn, không nên ngồi quá lâu.\n- Bạn có thể thử chơi các môn thể thao như bóng đá, cầu lông, chạy bộ,... hoặc các môn thể thao nhẹ nhàng như nhảy dây, yoga, golf,...'),('TQ2','Hay bê vác đồ nặng','- Bạn nên hạn chế mang vác các đồ vật nặng quá sức. Điều này làm ảnh hưởng xấu đến các khớp và xương (đặc biệt là đốt sống lưng). \n- Trong trường hợp bắt buộc phải mang vác vật nặng, bạn nên bê đúng tư thế: không khom người để bê mà nên ngồi xuống (ngang với vật), 2 tay bê đều và nâng vật lên theo phương thẳng đứng.'),('TQ3','Thường xuyên bẻ khớp ngón tay, vặn khớp cổ, lưng','- Thói quen bẻ khớp ngón tay, vặn khớp cổ, lưng không phải quá nghiêm trọng, tuy nhiên nếu làm việc đó thường xuyên thì sẽ ảnh hưởng xấu đến khớp, về lâu dài có thể gây viêm sưng khớp. Đặc biệt vặn khớp cổ, khớp lưng có thể gây sai khớp. Cho nên tôi khuyên bạn hạn chế bẻ khớp ngón tay, vặn khớp cổ hay lưng.'),('TQ4','Hay ngồi sai tư thế (ngồi gập gối, ngồi vẹo lưng, gù lưng, …)','- Bạn cần điều chỉnh lại tư thế sao cho chuẩn. Tôi sẽ hướng dẫn bạn các tư thế ngồi chuẩn.\n- Người ngồi trên ghế:\n + Hãy đảm bảo rằng bạn ngồi chếch về phía trước ở phần mông của ghế để cảm nhận sự hỗ trợ từ phần dưới của cột sống.\n + Đảm bảo rằng cả hai chân đều chạm đất hoặc trên một nền làm việc ổn định.\n + Gối và đầu gối nên ở mức độ 90 độ, với đầu gối ở phía dưới mức mông.\n- Máy tính và bàn làm việc:\n + Màn hình máy tính nên ở mức mắt hoặc ít hơn một chút để bạn không cần phải ngửa hoặc cúi quá mức.\n + Bàn làm việc cũng nên ở độ cao sao cho cánh tay của bạn ở mức gần 90 độ khi đặt trên bàn.\n- Tư thế của cột sống:\n + Cột sống nên được giữ thẳng, tránh tư thế cong hoặc cúi xuống quá mức.\n + Sử dụng gối hỗ trợ nếu cần thiết để giữ cột sống ở vị trí tự nhiên.\n + Nếu bạn phải ngồi lâu, hãy đứng dậy và di chuyển mỗi 30-60 phút.\n- Vị trí của vai và cổ:\n + Vai nên ở trạng thái thư giãn và không căng trước.\n + Cổ nên ở vị trí tự nhiên và không cúi xuống hoặc ngửa quá mức.\n- Các vật dụng hỗ trợ:\n + Sử dụng ghế có hỗ trợ lưng để giữ cho cột sống dựa lên.\n + Sử dụng gối hỗ trợ cổ nếu cần thiết, đặc biệt là khi làm việc trước máy tính.\n- Thói quen làm việc:\n + Tránh ngồi quá lâu một chỗ. Hãy đứng dậy và làm những bài tập giãn cơ đơn giản.\n + Thực hiện các động tác căng giãn cơ định kỳ.'),('TQ5','Hay chơi thể thao, ngồi đúng tư thế','- Bạn nên duy trì thói quen đó, nhưng bạn lưu ý tránh các chấn thương khi chơi thể thao. Bạn có thể phòng ngừa chấn thương bằng cách:\n + Khởi động trước khi chơi\n + Sử dụng đồ bảo hộ (băng quấn khớp, giày chuyên dụng,..)\n + Tránh các tư thế khó\n + Tập luyện kết hợp nghỉ ngơi hồi phục');
/*!40000 ALTER TABLE `advice_for_all` ENABLE KEYS */;
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
