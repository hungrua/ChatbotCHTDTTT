-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: kbs
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `inference`
--

DROP TABLE IF EXISTS `inference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inference` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `law_id` varchar(10) DEFAULT NULL,
  `symptom_id` varchar(10) DEFAULT NULL,
  `cause_id` varchar(10) DEFAULT NULL,
  `disease_id` varchar(10) DEFAULT NULL,
  `advice_id` int DEFAULT NULL,
  `condition_age` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `law_id` (`law_id`),
  KEY `symtom_id` (`symptom_id`),
  KEY `disease_id` (`disease_id`),
  KEY `cause_id` (`cause_id`),
  CONSTRAINT `inference_ibfk_1` FOREIGN KEY (`law_id`) REFERENCES `rule` (`id`),
  CONSTRAINT `inference_ibfk_2` FOREIGN KEY (`symptom_id`) REFERENCES `symptom` (`id`),
  CONSTRAINT `inference_ibfk_3` FOREIGN KEY (`disease_id`) REFERENCES `disease` (`id`),
  CONSTRAINT `inference_ibfk_4` FOREIGN KEY (`cause_id`) REFERENCES `cause` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1728 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inference`
--

LOCK TABLES `inference` WRITE;
/*!40000 ALTER TABLE `inference` DISABLE KEYS */;
INSERT INTO `inference` VALUES (1031,'L1','TC01',NULL,'B1',NULL,NULL),(1032,'L1','TC07',NULL,'B1',NULL,NULL),(1033,'L1','TC18',NULL,'B1',NULL,NULL),(1034,'L1','TC39',NULL,'B1',NULL,NULL),(1035,'L2','TC01',NULL,'B1',NULL,NULL),(1036,'L2','TC10',NULL,'B1',NULL,NULL),(1037,'L2','TC18',NULL,'B1',NULL,NULL),(1038,'L2','TC39',NULL,'B1',NULL,NULL),(1039,'L3','TC01',NULL,'B1',NULL,NULL),(1040,'L3','TC11',NULL,'B1',NULL,NULL),(1041,'L3','TC18',NULL,'B1',NULL,NULL),(1042,'L3','TC39',NULL,'B1',NULL,NULL),(1043,'L4','TC01',NULL,'B1',NULL,NULL),(1044,'L4','TC18',NULL,'B1',NULL,NULL),(1045,'L4','TC27',NULL,'B1',NULL,NULL),(1046,'L4','TC39',NULL,'B1',NULL,NULL),(1047,'L5','TC01',NULL,'B1',NULL,NULL),(1048,'L5','TC07',NULL,'B1',NULL,NULL),(1049,'L5','TC25',NULL,'B1',NULL,NULL),(1050,'L5','TC38',NULL,'B1',NULL,NULL),(1051,'L6','TC01',NULL,'B1',NULL,NULL),(1052,'L6','TC07',NULL,'B1',NULL,NULL),(1053,'L6','TC25',NULL,'B1',NULL,NULL),(1054,'L6','TC39',NULL,'B1',NULL,NULL),(1055,'L7','TC01',NULL,'B1',NULL,NULL),(1056,'L7','TC10',NULL,'B1',NULL,NULL),(1057,'L7','TC25',NULL,'B1',NULL,NULL),(1058,'L7','TC38',NULL,'B1',NULL,NULL),(1059,'L8','TC01',NULL,'B1',NULL,NULL),(1060,'L8','TC10',NULL,'B1',NULL,NULL),(1061,'L8','TC25',NULL,'B1',NULL,NULL),(1062,'L8','TC39',NULL,'B1',NULL,NULL),(1063,'L9','TC01',NULL,'B1',NULL,NULL),(1064,'L9','TC11',NULL,'B1',NULL,NULL),(1065,'L9','TC27',NULL,'B1',NULL,NULL),(1066,'L9','TC39',NULL,'B1',NULL,NULL),(1067,'L10','TC01',NULL,'B1',NULL,NULL),(1068,'L10','TC07',NULL,'B1',NULL,NULL),(1069,'L10','TC18',NULL,'B1',NULL,NULL),(1070,'L10','TC27',NULL,'B1',NULL,NULL),(1071,'L10','TC39',NULL,'B1',NULL,NULL),(1072,'L11','TC01',NULL,'B1',NULL,NULL),(1073,'L11','TC10',NULL,'B1',NULL,NULL),(1074,'L11','TC18',NULL,'B1',NULL,NULL),(1075,'L11','TC27',NULL,'B1',NULL,NULL),(1076,'L11','TC39',NULL,'B1',NULL,NULL),(1077,'L12','TC01',NULL,'B1',NULL,NULL),(1078,'L12','TC11',NULL,'B1',NULL,NULL),(1079,'L12','TC18',NULL,'B1',NULL,NULL),(1080,'L12','TC27',NULL,'B1',NULL,NULL),(1081,'L12','TC39',NULL,'B1',NULL,NULL),(1082,'L13','TC01',NULL,'B2',NULL,NULL),(1083,'L13','TC20',NULL,'B2',NULL,NULL),(1084,'L13','TC24',NULL,'B2',NULL,NULL),(1085,'L13','TC31',NULL,'B2',NULL,NULL),(1086,'L14','TC01',NULL,'B2',NULL,NULL),(1087,'L14','TC20',NULL,'B2',NULL,NULL),(1088,'L14','TC24',NULL,'B2',NULL,NULL),(1089,'L14','TC38',NULL,'B2',NULL,NULL),(1090,'L15','TC01',NULL,'B2',NULL,NULL),(1091,'L15','TC20',NULL,'B2',NULL,NULL),(1092,'L15','TC24',NULL,'B2',NULL,NULL),(1093,'L15',NULL,'NN6','B2',NULL,NULL),(1094,'L16','TC01',NULL,'B2',NULL,NULL),(1095,'L16','TC02',NULL,'B2',NULL,NULL),(1096,'L16','TC24',NULL,'B2',NULL,NULL),(1097,'L16','TC38',NULL,'B2',NULL,NULL),(1098,'L17','TC01',NULL,'B2',NULL,NULL),(1099,'L17','TC03',NULL,'B2',NULL,NULL),(1100,'L17','TC24',NULL,'B2',NULL,NULL),(1101,'L17','TC38',NULL,'B2',NULL,NULL),(1102,'L18','TC01',NULL,'B2',NULL,NULL),(1103,'L18','TC04',NULL,'B2',NULL,NULL),(1104,'L18','TC24',NULL,'B2',NULL,NULL),(1105,'L18','TC38',NULL,'B2',NULL,NULL),(1106,'L19','TC01',NULL,'B2',NULL,NULL),(1107,'L19','TC05',NULL,'B2',NULL,NULL),(1108,'L19','TC24',NULL,'B2',NULL,NULL),(1109,'L19','TC38',NULL,'B2',NULL,NULL),(1110,'L20','TC01',NULL,'B2',NULL,NULL),(1111,'L20','TC06',NULL,'B2',NULL,NULL),(1112,'L20','TC24',NULL,'B2',NULL,NULL),(1113,'L20','TC38',NULL,'B2',NULL,NULL),(1114,'L21','TC01',NULL,'B2',NULL,NULL),(1115,'L21','TC11',NULL,'B2',NULL,NULL),(1116,'L21','TC24',NULL,'B2',NULL,NULL),(1117,'L21','TC31',NULL,'B2',NULL,NULL),(1118,'L22','TC01',NULL,'B2',NULL,NULL),(1119,'L22','TC11',NULL,'B2',NULL,NULL),(1120,'L22','TC20',NULL,'B2',NULL,NULL),(1121,'L22','TC24',NULL,'B2',NULL,NULL),(1122,'L22','TC31',NULL,'B2',NULL,NULL),(1123,'L23','TC01',NULL,'B3',NULL,NULL),(1124,'L23','TC07',NULL,'B3',NULL,NULL),(1125,'L23','TC18',NULL,'B3',NULL,NULL),(1126,'L23','TC27',NULL,'B3',NULL,NULL),(1127,'L23','TC32',NULL,'B3',NULL,NULL),(1128,'L24','TC01',NULL,'B3',NULL,NULL),(1129,'L24','TC07',NULL,'B3',NULL,NULL),(1130,'L24','TC18',NULL,'B3',NULL,NULL),(1131,'L24','TC27',NULL,'B3',NULL,NULL),(1132,'L24','TC34',NULL,'B3',NULL,NULL),(1133,'L25','TC01',NULL,'B3',NULL,NULL),(1134,'L25','TC07',NULL,'B3',NULL,NULL),(1135,'L25','TC18',NULL,'B3',NULL,NULL),(1136,'L25','TC27',NULL,'B3',NULL,NULL),(1137,'L25','TC40',NULL,'B3',NULL,NULL),(1138,'L26','TC01',NULL,'B3',NULL,NULL),(1139,'L26','TC07',NULL,'B3',NULL,NULL),(1140,'L26','TC18',NULL,'B3',NULL,NULL),(1141,'L26','TC27',NULL,'B3',NULL,NULL),(1142,'L26',NULL,'NN4','B3',NULL,NULL),(1143,'L27','TC01',NULL,'B3',NULL,NULL),(1144,'L27','TC07',NULL,'B3',NULL,NULL),(1145,'L27','TC18',NULL,'B3',NULL,NULL),(1146,'L27','TC27',NULL,'B3',NULL,NULL),(1147,'L27',NULL,'NN5','B3',NULL,NULL),(1148,'L28','TC01',NULL,'B3',NULL,NULL),(1149,'L28','TC07',NULL,'B3',NULL,NULL),(1150,'L28','TC18',NULL,'B3',NULL,NULL),(1151,'L28','TC32',NULL,'B3',NULL,NULL),(1152,'L29','TC01',NULL,'B3',NULL,NULL),(1153,'L29','TC07',NULL,'B3',NULL,NULL),(1154,'L29','TC18',NULL,'B3',NULL,NULL),(1155,'L29','TC34',NULL,'B3',NULL,NULL),(1156,'L30','TC01',NULL,'B3',NULL,NULL),(1157,'L30','TC07',NULL,'B3',NULL,NULL),(1158,'L30','TC18',NULL,'B3',NULL,NULL),(1159,'L30','TC40',NULL,'B3',NULL,NULL),(1160,'L31','TC01',NULL,'B3',NULL,NULL),(1161,'L31','TC07',NULL,'B3',NULL,NULL),(1162,'L31','TC18',NULL,'B3',NULL,NULL),(1163,'L31',NULL,'NN4','B3',NULL,NULL),(1164,'L32','TC01',NULL,'B3',NULL,NULL),(1165,'L32','TC07',NULL,'B3',NULL,NULL),(1166,'L32','TC18',NULL,'B3',NULL,NULL),(1167,'L32',NULL,'NN5','B3',NULL,NULL),(1168,'L33','TC01',NULL,'B3',NULL,NULL),(1169,'L33','TC07',NULL,'B3',NULL,NULL),(1170,'L33','TC27',NULL,'B3',NULL,NULL),(1171,'L33','TC32',NULL,'B3',NULL,NULL),(1172,'L34','TC01',NULL,'B3',NULL,NULL),(1173,'L34','TC07',NULL,'B3',NULL,NULL),(1174,'L34','TC27',NULL,'B3',NULL,NULL),(1175,'L34','TC34',NULL,'B3',NULL,NULL),(1176,'L35','TC01',NULL,'B3',NULL,NULL),(1177,'L35','TC07',NULL,'B3',NULL,NULL),(1178,'L35','TC27',NULL,'B3',NULL,NULL),(1179,'L35','TC40',NULL,'B3',NULL,NULL),(1180,'L36','TC01',NULL,'B3',NULL,NULL),(1181,'L36','TC07',NULL,'B3',NULL,NULL),(1182,'L36','TC27',NULL,'B3',NULL,NULL),(1183,'L36',NULL,'NN4','B3',NULL,NULL),(1184,'L37','TC01',NULL,'B3',NULL,NULL),(1185,'L37','TC07',NULL,'B3',NULL,NULL),(1186,'L37','TC27',NULL,'B3',NULL,NULL),(1187,'L37',NULL,'NN5','B3',NULL,NULL),(1188,'L38','TC01',NULL,'B3',NULL,NULL),(1189,'L38','TC07',NULL,'B3',NULL,NULL),(1190,'L38','TC32',NULL,'B3',NULL,NULL),(1191,'L38','TC34',NULL,'B3',NULL,NULL),(1192,'L39','TC01',NULL,'B3',NULL,NULL),(1193,'L39','TC07',NULL,'B3',NULL,NULL),(1194,'L39','TC32',NULL,'B3',NULL,NULL),(1195,'L39','TC40',NULL,'B3',NULL,NULL),(1196,'L40','TC01',NULL,'B3',NULL,NULL),(1197,'L40','TC10',NULL,'B3',NULL,NULL),(1198,'L40','TC18',NULL,'B3',NULL,NULL),(1199,'L40','TC27',NULL,'B3',NULL,NULL),(1200,'L40','TC32',NULL,'B3',NULL,NULL),(1201,'L41','TC01',NULL,'B3',NULL,NULL),(1202,'L41','TC10',NULL,'B3',NULL,NULL),(1203,'L41','TC18',NULL,'B3',NULL,NULL),(1204,'L41','TC27',NULL,'B3',NULL,NULL),(1205,'L41','TC34',NULL,'B3',NULL,NULL),(1206,'L42','TC01',NULL,'B3',NULL,NULL),(1207,'L42','TC10',NULL,'B3',NULL,NULL),(1208,'L42','TC18',NULL,'B3',NULL,NULL),(1209,'L42','TC27',NULL,'B3',NULL,NULL),(1210,'L42','TC40',NULL,'B3',NULL,NULL),(1211,'L43','TC01',NULL,'B3',NULL,NULL),(1212,'L43','TC10',NULL,'B3',NULL,NULL),(1213,'L43','TC18',NULL,'B3',NULL,NULL),(1214,'L43','TC27',NULL,'B3',NULL,NULL),(1215,'L43',NULL,'NN4','B3',NULL,NULL),(1216,'L44','TC01',NULL,'B3',NULL,NULL),(1217,'L44','TC10',NULL,'B3',NULL,NULL),(1218,'L44','TC18',NULL,'B3',NULL,NULL),(1219,'L44','TC27',NULL,'B3',NULL,NULL),(1220,'L44',NULL,'NN5','B3',NULL,NULL),(1221,'L45','TC01',NULL,'B3',NULL,NULL),(1222,'L45','TC10',NULL,'B3',NULL,NULL),(1223,'L45','TC18',NULL,'B3',NULL,NULL),(1224,'L45','TC32',NULL,'B3',NULL,NULL),(1225,'L46','TC01',NULL,'B3',NULL,NULL),(1226,'L46','TC10',NULL,'B3',NULL,NULL),(1227,'L46','TC18',NULL,'B3',NULL,NULL),(1228,'L46','TC34',NULL,'B3',NULL,NULL),(1229,'L47','TC01',NULL,'B3',NULL,NULL),(1230,'L47','TC10',NULL,'B3',NULL,NULL),(1231,'L47','TC18',NULL,'B3',NULL,NULL),(1232,'L47','TC40',NULL,'B3',NULL,NULL),(1233,'L48','TC01',NULL,'B3',NULL,NULL),(1234,'L48','TC10',NULL,'B3',NULL,NULL),(1235,'L48','TC18',NULL,'B3',NULL,NULL),(1236,'L48',NULL,'NN4','B3',NULL,NULL),(1237,'L49','TC01',NULL,'B3',NULL,NULL),(1238,'L49','TC10',NULL,'B3',NULL,NULL),(1239,'L49','TC18',NULL,'B3',NULL,NULL),(1240,'L49',NULL,'NN5','B3',NULL,NULL),(1241,'L50','TC01',NULL,'B3',NULL,NULL),(1242,'L50','TC10',NULL,'B3',NULL,NULL),(1243,'L50','TC27',NULL,'B3',NULL,NULL),(1244,'L50','TC32',NULL,'B3',NULL,NULL),(1245,'L51','TC01',NULL,'B3',NULL,NULL),(1246,'L51','TC10',NULL,'B3',NULL,NULL),(1247,'L51','TC27',NULL,'B3',NULL,NULL),(1248,'L51','TC34',NULL,'B3',NULL,NULL),(1249,'L52','TC01',NULL,'B3',NULL,NULL),(1250,'L52','TC10',NULL,'B3',NULL,NULL),(1251,'L52','TC27',NULL,'B3',NULL,NULL),(1252,'L52','TC40',NULL,'B3',NULL,NULL),(1253,'L53','TC01',NULL,'B3',NULL,NULL),(1254,'L53','TC10',NULL,'B3',NULL,NULL),(1255,'L53','TC27',NULL,'B3',NULL,NULL),(1256,'L53',NULL,'NN4','B3',NULL,NULL),(1257,'L54','TC01',NULL,'B3',NULL,NULL),(1258,'L54','TC10',NULL,'B3',NULL,NULL),(1259,'L54','TC27',NULL,'B3',NULL,NULL),(1260,'L54',NULL,'NN5','B3',NULL,NULL),(1261,'L55','TC01',NULL,'B3',NULL,NULL),(1262,'L55','TC10',NULL,'B3',NULL,NULL),(1263,'L55','TC32',NULL,'B3',NULL,NULL),(1264,'L55','TC34',NULL,'B3',NULL,NULL),(1265,'L56','TC01',NULL,'B3',NULL,NULL),(1266,'L56','TC10',NULL,'B3',NULL,NULL),(1267,'L56','TC32',NULL,'B3',NULL,NULL),(1268,'L56','TC40',NULL,'B3',NULL,NULL),(1269,'L57','TC01',NULL,'B3',NULL,NULL),(1270,'L57','TC11',NULL,'B3',NULL,NULL),(1271,'L57','TC18',NULL,'B3',NULL,NULL),(1272,'L57','TC27',NULL,'B3',NULL,NULL),(1273,'L57','TC32',NULL,'B3',NULL,NULL),(1274,'L58','TC01',NULL,'B3',NULL,NULL),(1275,'L58','TC11',NULL,'B3',NULL,NULL),(1276,'L58','TC18',NULL,'B3',NULL,NULL),(1277,'L58','TC27',NULL,'B3',NULL,NULL),(1278,'L58','TC34',NULL,'B3',NULL,NULL),(1279,'L59','TC01',NULL,'B3',NULL,NULL),(1280,'L59','TC11',NULL,'B3',NULL,NULL),(1281,'L59','TC18',NULL,'B3',NULL,NULL),(1282,'L59','TC27',NULL,'B3',NULL,NULL),(1283,'L59','TC40',NULL,'B3',NULL,NULL),(1284,'L60','TC01',NULL,'B3',NULL,NULL),(1285,'L60','TC11',NULL,'B3',NULL,NULL),(1286,'L60','TC18',NULL,'B3',NULL,NULL),(1287,'L60','TC27',NULL,'B3',NULL,NULL),(1288,'L60',NULL,'NN4','B3',NULL,NULL),(1289,'L61','TC01',NULL,'B3',NULL,NULL),(1290,'L61','TC11',NULL,'B3',NULL,NULL),(1291,'L61','TC18',NULL,'B3',NULL,NULL),(1292,'L61','TC27',NULL,'B3',NULL,NULL),(1293,'L61',NULL,'NN5','B3',NULL,NULL),(1294,'L62','TC01',NULL,'B3',NULL,NULL),(1295,'L62','TC11',NULL,'B3',NULL,NULL),(1296,'L62','TC18',NULL,'B3',NULL,NULL),(1297,'L62','TC32',NULL,'B3',NULL,NULL),(1298,'L63','TC01',NULL,'B3',NULL,NULL),(1299,'L63','TC11',NULL,'B3',NULL,NULL),(1300,'L63','TC18',NULL,'B3',NULL,NULL),(1301,'L63','TC34',NULL,'B3',NULL,NULL),(1302,'L64','TC01',NULL,'B3',NULL,NULL),(1303,'L64','TC11',NULL,'B3',NULL,NULL),(1304,'L64','TC18',NULL,'B3',NULL,NULL),(1305,'L64','TC40',NULL,'B3',NULL,NULL),(1306,'L65','TC01',NULL,'B3',NULL,NULL),(1307,'L65','TC11',NULL,'B3',NULL,NULL),(1308,'L65','TC18',NULL,'B3',NULL,NULL),(1309,'L65',NULL,'NN4','B3',NULL,NULL),(1310,'L66','TC01',NULL,'B3',NULL,NULL),(1311,'L66','TC11',NULL,'B3',NULL,NULL),(1312,'L66','TC18',NULL,'B3',NULL,NULL),(1313,'L66',NULL,'NN5','B3',NULL,NULL),(1314,'L67','TC01',NULL,'B3',NULL,NULL),(1315,'L67','TC11',NULL,'B3',NULL,NULL),(1316,'L67','TC27',NULL,'B3',NULL,NULL),(1317,'L67','TC32',NULL,'B3',NULL,NULL),(1318,'L68','TC01',NULL,'B3',NULL,NULL),(1319,'L68','TC11',NULL,'B3',NULL,NULL),(1320,'L68','TC27',NULL,'B3',NULL,NULL),(1321,'L68','TC34',NULL,'B3',NULL,NULL),(1322,'L69','TC01',NULL,'B3',NULL,NULL),(1323,'L69','TC11',NULL,'B3',NULL,NULL),(1324,'L69','TC27',NULL,'B3',NULL,NULL),(1325,'L69','TC40',NULL,'B3',NULL,NULL),(1326,'L70','TC01',NULL,'B3',NULL,NULL),(1327,'L70','TC11',NULL,'B3',NULL,NULL),(1328,'L70','TC27',NULL,'B3',NULL,NULL),(1329,'L70',NULL,'NN4','B3',NULL,NULL),(1330,'L71','TC01',NULL,'B3',NULL,NULL),(1331,'L71','TC11',NULL,'B3',NULL,NULL),(1332,'L71','TC27',NULL,'B3',NULL,NULL),(1333,'L71',NULL,'NN5','B3',NULL,NULL),(1334,'L72','TC01',NULL,'B3',NULL,NULL),(1335,'L72','TC14',NULL,'B3',NULL,NULL),(1336,'L72','TC24',NULL,'B3',NULL,NULL),(1337,'L72','TC32',NULL,'B3',NULL,NULL),(1338,'L73','TC01',NULL,'B3',NULL,NULL),(1339,'L73','TC14',NULL,'B3',NULL,NULL),(1340,'L73','TC24',NULL,'B3',NULL,NULL),(1341,'L73','TC34',NULL,'B3',NULL,NULL),(1342,'L74','TC01',NULL,'B3',NULL,NULL),(1343,'L74','TC14',NULL,'B3',NULL,NULL),(1344,'L74','TC24',NULL,'B3',NULL,NULL),(1345,'L74','TC38',NULL,'B3',NULL,NULL),(1346,'L75','TC01',NULL,'B3',NULL,NULL),(1347,'L75','TC14',NULL,'B3',NULL,NULL),(1348,'L75','TC24',NULL,'B3',NULL,NULL),(1349,'L75','TC40',NULL,'B3',NULL,NULL),(1350,'L76','TC01',NULL,'B3',NULL,NULL),(1351,'L76','TC14',NULL,'B3',NULL,NULL),(1352,'L76','TC24',NULL,'B3',NULL,NULL),(1353,'L76',NULL,'NN4','B3',NULL,NULL),(1354,'L77','TC01',NULL,'B3',NULL,NULL),(1355,'L77','TC14',NULL,'B3',NULL,NULL),(1356,'L77','TC24',NULL,'B3',NULL,NULL),(1357,'L77',NULL,'NN5','B3',NULL,NULL),(1358,'L78','TC01',NULL,'B3',NULL,NULL),(1359,'L78','TC18',NULL,'B3',NULL,NULL),(1360,'L78','TC24',NULL,'B3',NULL,NULL),(1361,'L78','TC32',NULL,'B3',NULL,NULL),(1362,'L79','TC01',NULL,'B3',NULL,NULL),(1363,'L79','TC18',NULL,'B3',NULL,NULL),(1364,'L79','TC24',NULL,'B3',NULL,NULL),(1365,'L79','TC38',NULL,'B3',NULL,NULL),(1366,'L80','TC01',NULL,'B3',NULL,NULL),(1367,'L80','TC18',NULL,'B3',NULL,NULL),(1368,'L80','TC24',NULL,'B3',NULL,NULL),(1369,'L80','TC40',NULL,'B3',NULL,NULL),(1370,'L81','TC01',NULL,'B3',NULL,NULL),(1371,'L81','TC18',NULL,'B3',NULL,NULL),(1372,'L81','TC24',NULL,'B3',NULL,NULL),(1373,'L81',NULL,'NN4','B3',NULL,NULL),(1374,'L82','TC01',NULL,'B3',NULL,NULL),(1375,'L82','TC18',NULL,'B3',NULL,NULL),(1376,'L82','TC24',NULL,'B3',NULL,NULL),(1377,'L82',NULL,'NN5','B3',NULL,NULL),(1378,'L83','TC01',NULL,'B3',NULL,NULL),(1379,'L83','TC18',NULL,'B3',NULL,NULL),(1380,'L83','TC27',NULL,'B3',NULL,NULL),(1381,'L83','TC32',NULL,'B3',NULL,NULL),(1382,'L84','TC01',NULL,'B3',NULL,NULL),(1383,'L84','TC18',NULL,'B3',NULL,NULL),(1384,'L84','TC27',NULL,'B3',NULL,NULL),(1385,'L84','TC34',NULL,'B3',NULL,NULL),(1386,'L85','TC01',NULL,'B3',NULL,NULL),(1387,'L85','TC18',NULL,'B3',NULL,NULL),(1388,'L85','TC27',NULL,'B3',NULL,NULL),(1389,'L85','TC40',NULL,'B3',NULL,NULL),(1390,'L86','TC01',NULL,'B3',NULL,NULL),(1391,'L86','TC18',NULL,'B3',NULL,NULL),(1392,'L86','TC27',NULL,'B3',NULL,NULL),(1393,'L86',NULL,'NN4','B3',NULL,NULL),(1394,'L87','TC01',NULL,'B3',NULL,NULL),(1395,'L87','TC18',NULL,'B3',NULL,NULL),(1396,'L87','TC27',NULL,'B3',NULL,NULL),(1397,'L87',NULL,'NN5','B3',NULL,NULL),(1398,'L88','TC01',NULL,'B4',NULL,NULL),(1399,'L88','TC18',NULL,'B4',NULL,NULL),(1400,'L88','TC24',NULL,'B4',NULL,NULL),(1401,'L88','TC35',NULL,'B4',NULL,NULL),(1402,'L89','TC01',NULL,'B4',NULL,NULL),(1403,'L89','TC18',NULL,'B4',NULL,NULL),(1404,'L89','TC24',NULL,'B4',NULL,NULL),(1405,'L89','TC36',NULL,'B4',NULL,NULL),(1406,'L90','TC01',NULL,'B4',NULL,NULL),(1407,'L90','TC18',NULL,'B4',NULL,NULL),(1408,'L90','TC24',NULL,'B4',NULL,NULL),(1409,'L90','TC37',NULL,'B4',NULL,NULL),(1410,'L91','TC01',NULL,'B4',NULL,NULL),(1411,'L91','TC18',NULL,'B4',NULL,NULL),(1412,'L91','TC24',NULL,'B4',NULL,NULL),(1413,'L91',NULL,'NN1','B4',NULL,NULL),(1414,'L92','TC01',NULL,'B4',NULL,NULL),(1415,'L92','TC20',NULL,'B4',NULL,NULL),(1416,'L92','TC24',NULL,'B4',NULL,NULL),(1417,'L92','TC34',NULL,'B4',NULL,NULL),(1418,'L93','TC01',NULL,'B4',NULL,NULL),(1419,'L93','TC20',NULL,'B4',NULL,NULL),(1420,'L93','TC24',NULL,'B4',NULL,NULL),(1421,'L93','TC35',NULL,'B4',NULL,NULL),(1422,'L94','TC01',NULL,'B4',NULL,NULL),(1423,'L94','TC20',NULL,'B4',NULL,NULL),(1424,'L94','TC24',NULL,'B4',NULL,NULL),(1425,'L94','TC36',NULL,'B4',NULL,NULL),(1426,'L95','TC01',NULL,'B4',NULL,NULL),(1427,'L95','TC20',NULL,'B4',NULL,NULL),(1428,'L95','TC24',NULL,'B4',NULL,NULL),(1429,'L95','TC37',NULL,'B4',NULL,NULL),(1430,'L96','TC01',NULL,'B4',NULL,NULL),(1431,'L96','TC20',NULL,'B4',NULL,NULL),(1432,'L96','TC24',NULL,'B4',NULL,NULL),(1433,'L96',NULL,'NN1','B4',NULL,NULL),(1434,'L97','TC01',NULL,'B5',NULL,NULL),(1435,'L97','TC02',NULL,'B5',NULL,NULL),(1436,'L97','TC31',NULL,'B5',NULL,NULL),(1437,'L97',NULL,'NN3','B5',NULL,NULL),(1438,'L98','TC01',NULL,'B5',NULL,NULL),(1439,'L98','TC02',NULL,'B5',NULL,NULL),(1440,'L98','TC31',NULL,'B5',NULL,NULL),(1441,'L98',NULL,'NN7','B5',NULL,NULL),(1442,'L99','TC01',NULL,'B5',NULL,NULL),(1443,'L99','TC02',NULL,'B5',NULL,NULL),(1444,'L99','TC31',NULL,'B5',NULL,NULL),(1445,'L99',NULL,'NN9','B5',NULL,NULL),(1446,'L100','TC01',NULL,'B5',NULL,NULL),(1447,'L100','TC24',NULL,'B5',NULL,NULL),(1448,'L100','TC31',NULL,'B5',NULL,NULL),(1449,'L100',NULL,'NN3','B5',NULL,NULL),(1450,'L101','TC01',NULL,'B5',NULL,NULL),(1451,'L101','TC24',NULL,'B5',NULL,NULL),(1452,'L101','TC31',NULL,'B5',NULL,NULL),(1453,'L101',NULL,'NN7','B5',NULL,NULL),(1454,'L102','TC01',NULL,'B5',NULL,NULL),(1455,'L102','TC24',NULL,'B5',NULL,NULL),(1456,'L102','TC31',NULL,'B5',NULL,NULL),(1457,'L102',NULL,'NN9','B5',NULL,NULL),(1458,'L103','TC01',NULL,'B5',NULL,NULL),(1459,'L103','TC02',NULL,'B5',NULL,NULL),(1460,'L103','TC31',NULL,'B5',NULL,NULL),(1461,'L103',NULL,'NN3','B5',NULL,NULL),(1462,'L104','TC01',NULL,'B5',NULL,NULL),(1463,'L104','TC02',NULL,'B5',NULL,NULL),(1464,'L104','TC31',NULL,'B5',NULL,NULL),(1465,'L104',NULL,'NN7','B5',NULL,NULL),(1466,'L105','TC01',NULL,'B5',NULL,NULL),(1467,'L105','TC02',NULL,'B5',NULL,NULL),(1468,'L105','TC31',NULL,'B5',NULL,NULL),(1469,'L105',NULL,'NN9','B5',NULL,NULL),(1470,'L106','TC01',NULL,'B5',NULL,NULL),(1471,'L106','TC04',NULL,'B5',NULL,NULL),(1472,'L106','TC31',NULL,'B5',NULL,NULL),(1473,'L106',NULL,'NN3','B5',NULL,NULL),(1474,'L107','TC01',NULL,'B5',NULL,NULL),(1475,'L107','TC04',NULL,'B5',NULL,NULL),(1476,'L107','TC31',NULL,'B5',NULL,NULL),(1477,'L107',NULL,'NN7','B5',NULL,NULL),(1478,'L108','TC01',NULL,'B5',NULL,NULL),(1479,'L108','TC04',NULL,'B5',NULL,NULL),(1480,'L108','TC31',NULL,'B5',NULL,NULL),(1481,'L108',NULL,'NN9','B5',NULL,NULL),(1482,'L109','TC01',NULL,'B5',NULL,NULL),(1483,'L109','TC05',NULL,'B5',NULL,NULL),(1484,'L109','TC31',NULL,'B5',NULL,NULL),(1485,'L109',NULL,'NN3','B5',NULL,NULL),(1486,'L110','TC01',NULL,'B5',NULL,NULL),(1487,'L110','TC05',NULL,'B5',NULL,NULL),(1488,'L110','TC31',NULL,'B5',NULL,NULL),(1489,'L110',NULL,'NN7','B5',NULL,NULL),(1490,'L111','TC01',NULL,'B5',NULL,NULL),(1491,'L111','TC05',NULL,'B5',NULL,NULL),(1492,'L111','TC31',NULL,'B5',NULL,NULL),(1493,'L111',NULL,'NN9','B5',NULL,NULL),(1494,'L112','TC01',NULL,'B5',NULL,NULL),(1495,'L112','TC24',NULL,'B5',NULL,NULL),(1496,'L112','TC31',NULL,'B5',NULL,NULL),(1497,'L112',NULL,'NN3','B5',NULL,NULL),(1498,'L113','TC01',NULL,'B5',NULL,NULL),(1499,'L113','TC24',NULL,'B5',NULL,NULL),(1500,'L113','TC31',NULL,'B5',NULL,NULL),(1501,'L113',NULL,'NN7','B5',NULL,NULL),(1502,'L114','TC01',NULL,'B5',NULL,NULL),(1503,'L114','TC24',NULL,'B5',NULL,NULL),(1504,'L114','TC31',NULL,'B5',NULL,NULL),(1505,'L114',NULL,'NN9','B5',NULL,NULL),(1506,'L115','TC01',NULL,'B6',NULL,NULL),(1507,'L115','TC07',NULL,'B6',NULL,NULL),(1508,'L115','TC15',NULL,'B6',NULL,NULL),(1509,'L115','TC33',NULL,'B6',NULL,NULL),(1510,'L116','TC01',NULL,'B6',NULL,NULL),(1511,'L116','TC07',NULL,'B6',NULL,NULL),(1512,'L116','TC17',NULL,'B6',NULL,NULL),(1513,'L116','TC33',NULL,'B6',NULL,NULL),(1514,'L117','TC01',NULL,'B6',NULL,NULL),(1515,'L117','TC07',NULL,'B6',NULL,NULL),(1516,'L117','TC25',NULL,'B6',NULL,NULL),(1517,'L117','TC32',NULL,'B6',NULL,NULL),(1518,'L118','TC01',NULL,'B6',NULL,NULL),(1519,'L118','TC07',NULL,'B6',NULL,NULL),(1520,'L118','TC25',NULL,'B6',NULL,NULL),(1521,'L118','TC33',NULL,'B6',NULL,NULL),(1522,'L119','TC01',NULL,'B6',NULL,NULL),(1523,'L119','TC10',NULL,'B6',NULL,NULL),(1524,'L119','TC15',NULL,'B6',NULL,NULL),(1525,'L119','TC33',NULL,'B6',NULL,NULL),(1526,'L120','TC01',NULL,'B6',NULL,NULL),(1527,'L120','TC10',NULL,'B6',NULL,NULL),(1528,'L120','TC17',NULL,'B6',NULL,NULL),(1529,'L120','TC33',NULL,'B6',NULL,NULL),(1530,'L121','TC01',NULL,'B6',NULL,NULL),(1531,'L121','TC10',NULL,'B6',NULL,NULL),(1532,'L121','TC25',NULL,'B6',NULL,NULL),(1533,'L121','TC32',NULL,'B6',NULL,NULL),(1534,'L122','TC01',NULL,'B6',NULL,NULL),(1535,'L122','TC10',NULL,'B6',NULL,NULL),(1536,'L122','TC25',NULL,'B6',NULL,NULL),(1537,'L122','TC33',NULL,'B6',NULL,NULL),(1538,'L123','TC01',NULL,'B6',NULL,NULL),(1539,'L123','TC07',NULL,'B6',NULL,NULL),(1540,'L123','TC32',NULL,'B6',NULL,NULL),(1541,'L123',NULL,'NN8','B6',NULL,NULL),(1542,'L124','TC01',NULL,'B6',NULL,NULL),(1543,'L124','TC10',NULL,'B6',NULL,NULL),(1544,'L124','TC32',NULL,'B6',NULL,NULL),(1545,'L124',NULL,'NN8','B6',NULL,NULL),(1662,'T1','TC02',NULL,'B5',NULL,NULL),(1663,'T2','TC02',NULL,'B1',NULL,NULL),(1664,'T3','TC02',NULL,'B2',NULL,NULL),(1665,'T4','TC03',NULL,'B5',NULL,NULL),(1666,'T5','TC03',NULL,'B2',NULL,NULL),(1667,'T6','TC04',NULL,'B5',NULL,NULL),(1668,'T7','TC04',NULL,'B2',NULL,NULL),(1669,'T8','TC04',NULL,'B1',NULL,NULL),(1670,'T9','TC05',NULL,'B5',NULL,NULL),(1671,'T10','TC05',NULL,'B1',NULL,NULL),(1672,'T11','TC05',NULL,'B2',NULL,NULL),(1673,'T12','TC06',NULL,'B5',NULL,NULL),(1674,'T13','TC06',NULL,'B2',NULL,NULL),(1675,'T14','TC07',NULL,'B6',NULL,NULL),(1676,'T15','TC07',NULL,'B1',NULL,NULL),(1677,'T16','TC07',NULL,'B3',NULL,NULL),(1678,'T17','TC08',NULL,'B1',NULL,NULL),(1679,'T18','TC08',NULL,'B2',NULL,NULL),(1680,'T19','TC09',NULL,'B1',NULL,NULL),(1681,'T20','TC10',NULL,'B6',NULL,NULL),(1682,'T21','TC10',NULL,'B3',NULL,NULL),(1683,'T22','TC10',NULL,'B1',NULL,NULL),(1684,'T23','TC11',NULL,'B1',NULL,NULL),(1685,'T24','TC11',NULL,'B2',NULL,NULL),(1686,'T25','TC11',NULL,'B3',NULL,NULL),(1687,'T26','TC12',NULL,'B3',NULL,NULL),(1688,'T27','TC13',NULL,'B5',NULL,NULL),(1689,'T28','TC13',NULL,'B6',NULL,NULL),(1690,'T29','TC14',NULL,'B5',NULL,NULL),(1691,'T30','TC14',NULL,'B3',NULL,NULL),(1692,'T31','TC15',NULL,'B6',NULL,NULL),(1693,'T32','TC15',NULL,'B3',NULL,NULL),(1694,'T33','TC16',NULL,'B6',NULL,NULL),(1695,'T34','TC17',NULL,'B6',NULL,NULL),(1696,'T35','TC17',NULL,'B3',NULL,NULL),(1697,'T36','TC18',NULL,'B1',NULL,NULL),(1698,'T37','TC18',NULL,'B3',NULL,NULL),(1699,'T38','TC18',NULL,'B4',NULL,NULL),(1700,'T39','TC19',NULL,'B3',NULL,NULL),(1701,'T40','TC20',NULL,'B2',NULL,NULL),(1702,'T41','TC20',NULL,'B4',NULL,NULL),(1703,'T42','TC21',NULL,'B3',NULL,NULL),(1704,'T43','TC22',NULL,'B3',NULL,NULL),(1705,'T44','TC23',NULL,'B2',NULL,NULL),(1706,'T45','TC24',NULL,'B5',NULL,NULL),(1707,'T46','TC24',NULL,'B4',NULL,NULL),(1708,'T47','TC24',NULL,'B3',NULL,NULL),(1709,'T48','TC24',NULL,'B2',NULL,NULL),(1710,'T49','TC25',NULL,'B6',NULL,NULL),(1711,'T50','TC25',NULL,'B1',NULL,NULL),(1712,'T51','TC26',NULL,'B6',NULL,NULL),(1713,'T52','TC27',NULL,'B1',NULL,NULL),(1714,'T53','TC27',NULL,'B3',NULL,NULL),(1715,'T54','TC28',NULL,'B3',NULL,NULL),(1716,'T55','TC29',NULL,'B3',NULL,NULL),(1717,'T56','TC30',NULL,'B2',NULL,NULL),(1718,'T57','TC31',NULL,'B5',NULL,NULL),(1719,'T58','TC31',NULL,'B2',NULL,NULL),(1720,'T59',NULL,NULL,'B1',37,'<40'),(1721,'T60',NULL,NULL,'B1',38,'>40'),(1722,'T61',NULL,NULL,'B2',39,'<16'),(1723,'T62',NULL,NULL,'B2',40,'>16'),(1724,'T63',NULL,NULL,'B3',41,'>00'),(1725,'T64',NULL,NULL,'B4',6,'>00'),(1726,'T65',NULL,NULL,'B5',42,'>00'),(1727,'T66',NULL,NULL,'B6',43,'>00');
/*!40000 ALTER TABLE `inference` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-30 17:18:00