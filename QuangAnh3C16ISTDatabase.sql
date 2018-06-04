-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: istdatabase
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.31-MariaDB

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
-- Table structure for table `post_topic`
--

DROP TABLE IF EXISTS `post_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_topic` (
  `id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `topic_id` int(11) DEFAULT NULL,
  KEY `post_topic_ibfk_1` (`post_id`),
  KEY `post_topic_ibfk_2` (`topic_id`),
  CONSTRAINT `post_topic_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `post_topic_ibfk_2` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_topic`
--

LOCK TABLES `post_topic` WRITE;
/*!40000 ALTER TABLE `post_topic` DISABLE KEYS */;
INSERT INTO `post_topic` VALUES (NULL,7,11),(NULL,9,6),(NULL,10,8),(NULL,11,16),(NULL,12,3),(NULL,13,3);
/*!40000 ALTER TABLE `post_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `body` text CHARACTER SET utf8,
  `published` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (7,1,'Thông báo thay đổi lịch học môn cơ sở văn hóa','th-ng-b-o-thay-i-l-ch-h-c-m-n-c-s-v-n-h-a',0,'default.jpg','&lt;p&gt;Tất cả c&amp;aacute;c lớp cơ sở văn h&amp;oacute;a (d&amp;agrave;nh cho sinh vi&amp;ecirc;n khoa ng&amp;ocirc;n ngữ&amp;nbsp;H&amp;agrave;n Quốc) v&amp;agrave;o ng&amp;agrave;y 12/06 sẽ dời lịch sang ng&amp;agrave;y 20/06&lt;/p&gt;\r\n',1,'2018-06-03 10:39:33','2018-06-03 10:39:33'),(9,1,'About the graduation of k14 students','about-the-graduation-of-k14-students',0,'hanuStadium.jpg','&lt;p&gt;For all k14 students of English department&lt;/p&gt;\r\n\r\n&lt;p&gt;Please submit your internship result before 20/6&lt;/p&gt;\r\n',1,'2018-06-04 09:39:11','2018-06-04 09:39:11'),(10,1,'Changing the date of final test','changing-the-date-of-final-test',0,'hanuStadium.jpg','&lt;p&gt;All the final test for k15 students of Japanese students will be moved to 22/06&lt;/p&gt;\r\n',1,'2018-06-04 10:19:54','2018-06-04 10:19:54'),(11,1,'abc','abc',0,'default.jpg','&lt;p&gt;xyz&lt;/p&gt;\r\n',1,'2018-06-04 12:41:47','2018-06-04 12:41:47'),(12,1,'IST marks released','ist-marks-released',0,'hanuStadium.jpg','&lt;p&gt;All k16 students, please check your project marks in Fit portal&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n',1,'2018-06-04 12:44:42','2018-06-04 12:44:42'),(13,1,'Cơ hội tham quan doanh nghiệp cho các sinh viên khoa FIT','c-h-i-tham-quan-doanh-nghi-p-cho-c-c-sinh-vi-n-khoa-fit',0,'hanuStadium.jpg','&lt;p&gt;V&amp;agrave;o ng&amp;agrave;y 01/07 sắp tới, c&amp;aacute;c sinh vi&amp;ecirc;n đạt học lực giỏi trở l&amp;ecirc;n của khoa C&amp;ocirc;ng nghệ th&amp;ocirc;ng tin, trường đại học H&amp;agrave; Nội sẽ c&amp;oacute; cơ hội được thăm quan trụ sở của tập đo&amp;agrave;n Google tại Mountain View, California, Mỹ. To&amp;agrave;n bộ chi ph&amp;iacute; cho chuyến đi sẽ do nh&amp;agrave; trường t&amp;agrave;i trợ&lt;/p&gt;\r\n\r\n&lt;p&gt;Đặc biệt, c&amp;aacute;c bạn sẽ c&amp;oacute; cơ hội được giao lưu v&amp;agrave; tr&amp;ograve; chuyện với CEO của Google - &amp;ocirc;ng Sundar Pichai&lt;/p&gt;\r\n\r\n&lt;p&gt;C&amp;aacute;c bạn sinh vi&amp;ecirc;n c&amp;oacute; nhu cầu xin đăng k&amp;iacute; tại văn ph&amp;ograve;ng khoa: Ph&amp;ograve;ng 210 nh&amp;agrave; C (gặp c&amp;ocirc; Huyền)&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;Google headquater &quot; src=&quot;https://cdn-images-1.medium.com/max/800/1*-eHsPGu530zwNtrLPUyMsg.jpeg&quot; style=&quot;height:200px; width:400px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:right&quot;&gt;Trưởng khoa&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:right&quot;&gt;Nguyễn Xu&amp;acirc;n Thắng&lt;/p&gt;\r\n',1,'2018-06-04 12:47:54','2018-06-04 12:47:54');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topics`
--

DROP TABLE IF EXISTS `topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topics`
--

LOCK TABLES `topics` WRITE;
/*!40000 ALTER TABLE `topics` DISABLE KEYS */;
INSERT INTO `topics` VALUES (1,'General','general'),(2,'FMT','fmt'),(3,'FIT','fit'),(4,'FIS','fis'),(5,'ESPD','espd'),(6,'EnglishDepartment','en'),(7,'RussianDepartment','ru'),(8,'JapaneseDepartment','jp'),(9,'FrenchDepartment','fr'),(10,'ChineseDepartment','cn'),(11,'KoreanDepartment','kr'),(12,'PortugueseDepartment','pt'),(13,'SpanishDepartment','es'),(14,'ItalianDepartment','ita'),(15,'VietnameseDepartment','vn'),(16,'OtherDepartment','other');
/*!40000 ALTER TABLE `topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` enum('Student','Admin') DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'QuangAnh','','','d41d8cd98f00b204e9800998ecf8427e','2018-01-08 05:52:58','2018-01-08 05:52:58'),(3,'Admin2','abc@gmail.com','Admin','25f9e794323b453885f5181f1b624d0b','2018-06-03 03:10:20','2018-06-03 03:10:20'),(4,'1601040019','whatever@gmail.com','Student','202cb962ac59075b964b07152d234b70','2018-06-03 08:33:28','2018-06-03 08:33:28');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-04 23:36:17
