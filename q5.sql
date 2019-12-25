-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: questionnaire_survey_system
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `administrator`
--

DROP TABLE IF EXISTS `administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `administrator` (
  `AID` varchar(10) NOT NULL,
  `telephone` varchar(45) DEFAULT NULL,
  `key` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`AID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator`
--

LOCK TABLES `administrator` WRITE;
/*!40000 ALTER TABLE `administrator` DISABLE KEYS */;
INSERT INTO `administrator` VALUES ('A1','18260188192','123');
/*!40000 ALTER TABLE `administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qoption`
--

DROP TABLE IF EXISTS `qoption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `qoption` (
  `OID` int(11) NOT NULL AUTO_INCREMENT,
  `qcontexts` varchar(45) DEFAULT NULL,
  `op_num` int(11) NOT NULL DEFAULT '0',
  `QuID` int(11) DEFAULT NULL,
  `remark` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`OID`),
  KEY `QuID_idx` (`QuID`),
  CONSTRAINT `QuID` FOREIGN KEY (`QuID`) REFERENCES `question` (`QuID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci KEY_BLOCK_SIZE=1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qoption`
--

LOCK TABLES `qoption` WRITE;
/*!40000 ALTER TABLE `qoption` DISABLE KEYS */;
INSERT INTO `qoption` VALUES (1,'有',0,1,'A'),(2,'没有',0,1,'B'),(3,'捷安特',0,2,'A'),(4,'凤凰',0,2,'B'),(5,'宝马',0,2,'C'),(6,'不知道',0,2,'D'),(7,'不到一个学期',0,3,'A'),(8,'一个学期',0,3,'B'),(9,'一年',0,3,'C'),(10,'一年以上',0,3,'D'),(11,'正规商店购买',0,4,'A'),(12,'充话费获赠的',0,4,'B'),(13,'二手市场买的',0,4,'C'),(14,'其他人送的',0,4,'D'),(15,'上课',0,5,'A'),(16,'出校',0,5,'B'),(17,'锻炼身体',0,5,'C'),(18,'娱乐',0,5,'D'),(19,'基本伴随出行',0,6,'A'),(20,'经常使用',0,6,'B'),(21,'偶尔使用',0,6,'C'),(22,'从不使用',0,6,'D'),(23,'本周内',0,7,'A'),(24,'一周以前',0,7,'B'),(25,'一个月前',0,7,'C'),(26,'不记得了',0,7,'D'),(27,'新车',0,8,'A'),(28,'二手车',0,8,'B'),(29,'捷安特',0,9,'A'),(30,'凤凰',0,9,'B'),(31,'美利达',0,9,'C'),(32,'不考虑',0,9,'D'),(33,'200以下',0,10,'A'),(34,'200至500',0,10,'B'),(35,'500以上',0,10,'C'),(36,'不管价格',0,10,'D'),(37,'大一',0,11,'A'),(38,'大二',0,11,'B'),(39,'大三',0,11,'C'),(40,'大四',0,11,'D'),(41,'正规商店购买',0,12,'A'),(42,'二手市场',0,12,'B'),(43,'从身边人转购',0,12,'C'),(44,'其他',0,12,'D'),(45,'带回本部',0,13,'A'),(46,'作二手车卖',0,13,'B'),(47,'转送亲友',0,13,'C'),(48,'其他',0,13,'D'),(49,'在附近找买家购买',0,14,'A'),(50,'送到二手车回收市场',0,14,'B'),(51,'希望有人可以就近收购',0,14,'C'),(52,'其他',0,14,'D'),(53,'50以下',0,15,'A'),(54,'50到100',0,15,'B'),(55,'100到200',0,15,'C'),(56,'不管价格',0,15,'D'),(57,'男',0,16,'A'),(58,'女',0,16,'B'),(59,'大一',0,17,'A'),(60,'大二',0,17,'B'),(61,'大三',0,17,'C'),(62,'大四',0,17,'D'),(63,'是',0,18,'A'),(64,'否',0,18,'B'),(65,'大一',0,19,'A'),(66,'大二',0,19,'B'),(67,'大三',0,19,'C'),(68,'大四',0,19,'D'),(69,'大学期间',0,20,'A'),(70,'工作期间',0,20,'B'),(71,'其他',0,20,'C'),(72,'不确定',0,20,'D'),(73,'学习需要',0,21,'A'),(74,'社会工作需要',0,21,'B'),(75,'游戏娱乐',0,21,'C'),(76,'从众心理',0,21,'D'),(77,'亲人朋友赞助',0,22,'A'),(78,'兼职取得',0,22,'B'),(79,'生活费中节省出来',0,22,'C'),(80,'奖学金或助学金',0,22,'D'),(81,'价格',0,23,'A'),(82,'功能',0,23,'B'),(83,'外形',0,23,'C'),(84,'品牌',0,23,'D'),(85,'2000元以下',0,24,'A'),(86,'2000到4000元',0,24,'B'),(87,'4000到6000元',0,24,'C'),(88,'6000元以上',0,24,'D'),(89,'越高越好',0,25,'A'),(90,'能满足日常生活需要',0,25,'B'),(91,'比日常高一些就好',0,25,'C'),(92,'无所谓',0,25,'D');
/*!40000 ALTER TABLE `qoption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `question` (
  `QuID` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) DEFAULT NULL,
  `remarks` varchar(45) DEFAULT NULL,
  `contexts` varchar(45) DEFAULT NULL,
  `QID` int(11) NOT NULL,
  PRIMARY KEY (`QuID`),
  KEY `QID_idx` (`QID`),
  CONSTRAINT `QID` FOREIGN KEY (`QID`) REFERENCES `questionnaire` (`QID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (1,'单选','必填','您拥有自行车吗?',1),(2,'多选','选填','您选择买什么品牌的自行车?',1),(3,'单选','选填','您的自行车买多久了?',1),(4,'单选','选填','您的自行车来源是?',1),(5,'多选','选填','您使用自行车的用途有哪些?',1),(6,'单选','必填','您使用自行车的频率是?',2),(7,'单选','选填','您自行车最近一次维修时在什么时候?',2),(8,'单选','必填','如果购买一辆自行车您倾向于购买新的还是二手?',2),(9,'单选','必填','如果购买一辆自行车您会考虑的品牌是?',2),(10,'单选','必填','如果购买一辆自行车您会考虑的价位是?',2),(11,'单选','必填','您就读的年级是?',3),(12,'单选','必填','如果购买一辆自行车您选择购买的途径是?',3),(13,'单选','选填','若搬回本部,您考虑如何处理您的车?',3),(14,'单选','必填','您希望以怎样的方式对自行车二手处理?',3),(15,'单选','必填','如果您选择二手出售您的自行车,您期望的价格如何?',3),(16,'单选','必填','您的性别是?',4),(17,'单选','必填','您现在读几年级?',4),(18,'单选','必填','您是否拥有电脑?',4),(19,'单选','选填','如果您现有一台电脑,是何时得到的?',4),(20,'单选','选填','如果您现在无电脑或想再购买,准备何时购买?',4),(21,'多选','必填','您购买电脑的动机是?',4),(22,'单选','选填','您购买电脑的最主要经济来源?',4),(23,'单选','选填','您购买电脑最优先考虑的因素是?',4),(24,'单选','选填','您能接受的价格范围是?',4),(25,'单选','选填','您对电脑硬件配置要求的态度是?',4);
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questionnaire`
--

DROP TABLE IF EXISTS `questionnaire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `questionnaire` (
  `QID` int(11) NOT NULL AUTO_INCREMENT,
  `Qname` varchar(45) DEFAULT NULL,
  `Qnum` int(11) DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  `release_time` datetime(1) DEFAULT NULL,
  `release_way` varchar(10) DEFAULT NULL,
  `AID` varchar(10) DEFAULT NULL,
  `Qstatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`QID`),
  KEY `AID_idx` (`AID`),
  CONSTRAINT `AID` FOREIGN KEY (`AID`) REFERENCES `administrator` (`AID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questionnaire`
--

LOCK TABLES `questionnaire` WRITE;
/*!40000 ALTER TABLE `questionnaire` DISABLE KEYS */;
INSERT INTO `questionnaire` VALUES (1,'大学生自行车的使用情况调查',5,'2019-02-03','2019-01-01 00:00:00.0','定时','A1',1),(2,'大学生自行车的购买情况调查',5,'2019-01-01','2019-01-01 00:00:00.0','非定时','A1',0),(3,'大学生自行车的搬迁情况调查',5,'2019-02-02','2019-02-01 00:00:00.0','定时','A1',0),(4,'大学生电脑需求情况调查',10,'2019-02-03','2019-01-01 00:00:00.0','定时','A1',1);
/*!40000 ALTER TABLE `questionnaire` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `UserID` int(11) NOT NULL,
  `keywords` varchar(10) DEFAULT NULL,
  `telephone` varchar(45) DEFAULT NULL,
  `QID` int(11) NOT NULL,
  PRIMARY KEY (`UserID`),
  KEY `QID1_idx` (`QID`),
  CONSTRAINT `QID1` FOREIGN KEY (`QID`) REFERENCES `questionnaire` (`QID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'123','123456',1),(2,'123','1234',2),(3,'321','15896552787',4);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-25 19:41:56
