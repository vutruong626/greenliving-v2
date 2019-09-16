-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: greenliving
-- ------------------------------------------------------
-- Server version	5.7.25

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `order` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_foreign` (`parent_id`),
  CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,NULL,'1','giới thiệu','giới thiệu','2019-03-15 02:52:22','2019-03-21 01:09:33'),(2,NULL,'2','gia đình cordy','gia đình cordy','2019-03-15 02:52:22','2019-03-21 01:11:00'),(3,NULL,'3','tin tức và sự kiện','tin-tuc-va-su-kien','2019-03-21 01:11:18','2019-03-21 01:11:18'),(4,NULL,'4','faq','faq','2019-03-21 01:11:39','2019-03-21 01:11:39'),(5,NULL,'5','liên hệ','lien-he','2019-03-21 01:11:49','2019-03-21 01:11:49');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `face` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (2,'Trương Bùi Nhi','nhitb@gmail.com','<p>Người nh&agrave; t&ocirc;i vừa trải qua ca mổ, sức khoẻ suy giảm hẳn, ăn kh&ocirc;ng ngon n&ecirc;n sức khoẻ ng&agrave;y c&agrave;ng suy kiệt. T&ocirc;i được bạn b&egrave; giới thiệu sản phẩm Cao Nấm Tr&ugrave;ng Thảo CORDY &ndash; X v&agrave; mua cho người nh&agrave; d&ugrave;ng thử. Sau khi d&ugrave;ng khoảng 1 tuần, người nh&agrave; t&ocirc;i sức khoẻ phục hồi r&otilde; rệt, ăn uống cũng ngon miệng hơn n&ecirc;n da dẻ bắt đầu hồng h&agrave;o trở lại, cả nh&agrave; t&ocirc;i ai nấy cũng mừng. Gia đ&igrave;nh t&ocirc;i sẽ tiếp tục sử dụng sản phẩm.</p>','https://www.facebook.com/GreenLivingSongXanh/?ref=br_tf&epa=SEARCH_BOX','clients/April2019/CsSCJ24m2csIx8AioHFg.png','2019-03-21 04:43:00','2019-04-12 07:56:46'),(3,'Nguyễn Văn Sơn','nguuyenson1965@gmail.com','<p>Trước đ&acirc;y T&ocirc;i thường xuy&ecirc;n bị mất ngủ, ngủ chập chờn kh&ocirc;ng ngon giấc l&agrave;m ảnh hưởng đến c&ocirc;ng việc rất nhiều. T&ocirc;i đ&atilde; sử dụng qua rất nhiều sản phẩm kh&aacute;c những vẫn kh&ocirc;ng thấy cải thiện. Từ khi d&ugrave;ng sản phẩm cao Nấm Tr&ugrave;ng Thảo CORDY &ndash; X t&ocirc;i thấy ăn ngon, ngủ được, tinh thần minh mẫn hẳn ra. T&ocirc;i sẽ tiếp tục sử dụng sản phẩm.&rdquo;</p>','https://www.facebook.com/GreenLivingSongXanh/?ref=br_tf&epa=SEARCH_BOX','clients/April2019/X5w4xSOIRZpAYRp3B8b4.png','2019-03-21 04:46:00','2019-04-12 07:57:08'),(4,'Tô Hòa Thuận','https://www.facebook.com/522417118/posts/10157981071857119/','<p>H&ocirc;m nay c&oacute; người bạn gửi cho Bin th&ocirc;ng tin từ tọa đ&agrave;m ở B&igrave;nh Dương về c&ocirc;ng dụng thật sự của Đ&ocirc;ng tr&ugrave;ng hạ thảo được c&aacute;c chuy&ecirc;n gia, nh&agrave; khoa học uy t&iacute;n giới thiệu v&agrave; hướng dẫn. Tui chỉ tin những người c&oacute; chuy&ecirc;n m&ocirc;n, được đ&agrave;o tạo hẳn hoi chứ tui người trần mắt hột, đ&acirc;u c&oacute; biết hết được đ&acirc;u.&nbsp;Thấy trong tọa đ&agrave;m c&ograve;n c&oacute; giới thiệu loại cao đặc nấm tr&ugrave;ng thảo Cordy X được sản xuất từ đ&ocirc;ng tr&ugrave;ng hạ thảo. Vừa gi&uacute;p tăng cường sức khỏe, tăng cường đề kh&aacute;ng, giảm stress, chăm s&oacute;c giấc ngủ, thanh lọc v&agrave; trẻ h&oacute;a cơ thể. Tui chỉ tin những người c&oacute; chuy&ecirc;n m&ocirc;n, được đ&agrave;o tạo hẳn hoi chứ tui người trần mắt hột, đ&acirc;u c&oacute; biết hết được đ&acirc;u.&nbsp;</p>\r\n<p>G&igrave; chứ ri&ecirc;ng c&aacute;i khoản giảm stress với chăm s&oacute;c giấc ngủ l&agrave; tui ưng nhất. Giờ ai cũng vất vả, lo nghĩ nhiều, kh&oacute; ngủ cả. Đ&ocirc;ng Tr&ugrave;ng Hạ Thảo đ&atilde; qu&yacute; rồi, giải quyết được mấy chuyện kia th&igrave; c&ograve;n qu&yacute; hơn. Để Bin t&igrave;m hiểu về c&aacute;i anh cao đặc nấm tr&ugrave;ng thảo Cordy X n&agrave;y coi sao.</p>','https://www.facebook.com/522417118/posts/10157981071857119/','clients/April2019/xIrhPEWNKDdK60bR5P9f.jpg','2019-04-09 02:06:00','2019-04-12 07:56:17');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fanpage` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (2,'MHD PHARMA','info@mhdpharma.com','(028) 6680 8366','9B8-C9 Đường Số 10 KDC Dương Hồng Garden House, Xã Bình Hưng, Huyện Bình Chánh, TP.HCM','https://www.facebook.com/GreenLivingSongXanh/?ref=br_tf&epa=SEARCH_BOX','(028) 6680 8366',NULL,'2019-04-12 03:27:50',NULL);
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contents`
--

DROP TABLE IF EXISTS `contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contents`
--

LOCK TABLES `contents` WRITE;
/*!40000 ALTER TABLE `contents` DISABLE KEYS */;
INSERT INTO `contents` VALUES (2,'HỖ TRỢ GIÚP BỒI BỔ SỨC KHOẺ, TĂNG CƯỜNG SỨC ĐỀ KHÁNG CHO CƠ THỂ','<p style=\"text-align: center;\">Cao Nấm Tr&ugrave;ng Thảo Cordy-X l&agrave; sản phẩm cao đặc chứa tinh chất Đ&ocirc;ng Tr&ugrave;ng Hạ Thảo v&agrave; tinh chất Nấm Linh Chi</p>\r\n<p style=\"text-align: center;\">C&ocirc;ng nghệ chiết xuất PH&Acirc;N TỬ gi&uacute;p cao đặc ho&agrave; tan v&agrave; thẩm thấu nhanh.</p>','contents/April2019/QY9rRNwU3uQHkoWvmOGO.png',NULL,'2019-04-12 02:48:56');
/*!40000 ALTER TABLE `contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_rows`
--

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` VALUES (1,1,'id','number','ID',1,0,0,0,0,0,NULL,1),(2,1,'name','text','Name',1,1,1,1,1,1,NULL,2),(3,1,'email','text','Email',1,1,1,1,1,1,NULL,3),(4,1,'password','password','Password',1,0,0,1,1,0,NULL,4),(5,1,'remember_token','text','Remember Token',0,0,0,0,0,0,NULL,5),(6,1,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,6),(7,1,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,7),(8,1,'avatar','image','Avatar',0,1,1,1,1,1,NULL,8),(9,1,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}',10),(10,1,'user_belongstomany_role_relationship','relationship','Roles',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',11),(11,1,'settings','hidden','Settings',0,0,0,0,0,0,NULL,12),(12,2,'id','number','ID',1,0,0,0,0,0,NULL,1),(13,2,'name','text','Name',1,1,1,1,1,1,NULL,2),(14,2,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(15,2,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(16,3,'id','number','ID',1,0,0,0,0,0,NULL,1),(17,3,'name','text','Name',1,1,1,1,1,1,NULL,2),(18,3,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(19,3,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(20,3,'display_name','text','Display Name',1,1,1,1,1,1,NULL,5),(21,1,'role_id','text','Role',1,1,1,1,1,1,NULL,9),(22,4,'id','number','ID',1,0,0,0,0,0,'{}',1),(23,4,'parent_id','select_dropdown','Parent',0,0,1,1,1,1,'{\"default\":\"\",\"null\":\"\",\"options\":{\"_empty_\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',2),(24,4,'order','text','Order',1,1,1,1,1,1,'{\"default\":1}',3),(25,4,'name','text','Name',1,1,1,1,1,1,'{}',4),(26,4,'slug','text','Slug',1,1,1,1,1,1,'{\"slugify\":{\"origin\":\"name\"}}',5),(27,4,'created_at','timestamp','Created At',0,0,1,0,0,0,'{}',6),(28,4,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',7),(29,5,'id','number','ID',1,0,0,0,0,0,'{}',1),(30,5,'author_id','text','Author',1,0,1,1,0,1,'{}',2),(31,5,'category_id','text','Category',0,0,1,1,1,0,'{}',3),(32,5,'title','text','Title',1,1,1,1,1,1,'{}',4),(33,5,'excerpt','text_area','Excerpt',0,0,1,1,1,1,'{}',5),(34,5,'body','rich_text_box','Body',1,0,1,1,1,1,'{}',6),(35,5,'image','image','Post Image',0,1,1,1,1,1,'{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}',7),(36,5,'slug','text','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}',8),(37,5,'meta_description','text_area','Meta Description',0,0,1,1,1,1,'{}',9),(38,5,'meta_keywords','text_area','Meta Keywords',0,0,1,1,1,1,'{}',10),(39,5,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}',11),(40,5,'created_at','timestamp','Created At',0,1,1,1,0,0,'{}',12),(41,5,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',13),(42,5,'seo_title','text','SEO Title',0,1,1,1,1,1,'{}',14),(43,5,'featured','checkbox','Featured',1,1,1,1,1,1,'{}',15),(44,6,'id','number','ID',1,0,0,0,0,0,NULL,1),(45,6,'author_id','text','Author',1,0,0,0,0,0,NULL,2),(46,6,'title','text','Title',1,1,1,1,1,1,NULL,3),(47,6,'excerpt','text_area','Excerpt',1,0,1,1,1,1,NULL,4),(48,6,'body','rich_text_box','Body',1,0,1,1,1,1,NULL,5),(49,6,'slug','text','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}',6),(50,6,'meta_description','text','Meta Description',1,0,1,1,1,1,NULL,7),(51,6,'meta_keywords','text','Meta Keywords',1,0,1,1,1,1,NULL,8),(52,6,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}',9),(53,6,'created_at','timestamp','Created At',1,1,1,0,0,0,NULL,10),(54,6,'updated_at','timestamp','Updated At',1,0,0,0,0,0,NULL,11),(55,6,'image','image','Page Image',0,1,1,1,1,1,NULL,12),(56,7,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',4),(57,7,'id','text','Id',1,0,0,0,0,0,'{}',1),(58,7,'image','image','Image',1,1,1,1,1,1,'{}',3),(59,7,'title','text','Title',1,1,1,1,1,1,'{}',2),(60,7,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',5),(67,10,'category_id','text','Category Id',0,1,1,1,1,1,'{}',7),(68,10,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',11),(69,10,'id','text','Id',1,0,0,0,0,0,'{}',1),(70,10,'image','image','Image',0,1,1,1,1,1,'{}',8),(72,10,'slug','text','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true}}',10),(73,10,'title','text','Title',1,0,1,1,1,1,'{}',3),(74,10,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',12),(75,10,'name','text','Name',1,1,1,1,1,1,'{}',2),(76,10,'content','rich_text_box','Content',1,0,1,1,1,1,'{}',5),(77,10,'deleted_at','timestamp','Deleted At',0,0,1,0,0,1,'{}',6),(78,10,'price','text','Price',0,1,1,1,1,1,'{}',4),(80,12,'content','rich_text_box','Content',1,1,1,1,1,1,'{}',2),(81,12,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',3),(82,12,'email','text','Email',1,1,1,1,1,1,'{}',4),(83,12,'face','text','Face',1,1,1,1,1,1,'{}',5),(84,12,'id','text','Id',1,0,0,0,0,0,'{}',1),(85,12,'image','image','Image',1,1,1,1,1,1,'{}',6),(86,12,'name','text','Name',1,1,1,1,1,1,'{}',7),(87,12,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',8),(88,13,'content','rich_text_box','Content',1,0,1,1,1,1,'{}',3),(89,13,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',5),(90,13,'id','text','Id',1,0,0,0,0,0,'{}',1),(91,13,'image','image','Image',1,1,1,1,1,1,'{}',4),(92,13,'title','text','Title',1,1,1,1,1,1,'{}',2),(93,13,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6),(166,21,'id','text','Id',1,0,0,0,0,0,'{}',1),(167,21,'name','text','Name',1,1,1,1,1,1,'{}',2),(168,21,'phone','text','Phone',1,1,1,1,1,1,'{}',3),(169,21,'email','text','Email',1,1,1,1,1,1,'{}',4),(170,21,'address','text','Address',1,1,1,1,1,1,'{}',5),(171,21,'city','text','City',1,1,1,1,1,1,'{}',6),(172,21,'district','text','District',1,1,1,1,1,1,'{}',7),(173,21,'area','text','Area',1,1,1,1,1,1,'{}',8),(174,21,'note','text','Note',1,0,1,1,1,1,'{}',9),(175,21,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',10),(176,21,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',11),(177,22,'id','text','Id',1,0,0,0,0,0,'{}',1),(178,22,'id_orders','text','Id Orders',1,1,1,1,1,1,'{}',2),(179,22,'id_products','text','Id Products',1,1,1,1,1,1,'{}',3),(180,22,'amount','text','Amount',1,1,1,1,1,1,'{}',4),(181,22,'price','text','Price',1,1,1,1,1,1,'{}',5),(182,22,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',6),(183,22,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',7),(184,23,'id','text','Id',1,0,0,0,0,0,'{}',1),(185,23,'name','text','Name',1,1,1,1,1,1,'{}',2),(186,23,'university','text','University',1,1,1,1,1,1,'{}',3),(187,23,'research','text','Research',1,1,1,1,1,1,'{}',4),(188,23,'title','text','Title',1,1,1,1,1,1,'{}',5),(189,23,'content','rich_text_box','Content',1,0,1,1,1,1,'{}',6),(190,23,'image','image','Image',1,1,1,1,1,1,'{}',7),(191,23,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',8),(192,23,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',9),(193,23,'deleted_at','timestamp','Deleted At',0,1,1,1,1,1,'{}',10),(194,24,'id','text','Id',1,0,0,0,0,0,'{}',1),(195,24,'name','text','Name',1,1,1,1,1,1,'{}',2),(196,24,'email','text','Email',1,1,1,1,1,1,'{}',3),(197,24,'content','text','Feedback',1,1,1,1,1,1,'{}',4),(198,24,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',5),(199,24,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6),(200,24,'deleted_at','timestamp','Deleted At',0,1,1,1,1,1,'{}',7),(201,24,'agree','checkbox','Agree',0,1,1,1,1,1,'{}',8),(211,26,'id','text','Id',1,0,0,0,0,0,'{}',1),(212,26,'name','text','Name',1,1,1,1,1,1,'{}',2),(213,26,'email','text','Email',1,1,1,1,1,1,'{}',3),(214,26,'phone','text','Phone',1,1,1,1,1,1,'{}',4),(215,26,'address','text','Address',1,1,1,1,1,1,'{}',5),(216,26,'fanpage','text','Fanpage',1,1,1,1,1,1,'{}',6),(217,26,'youtube','text','Youtube',1,1,1,1,1,1,'{}',7),(218,26,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',8),(219,26,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',9),(220,26,'deleted_at','timestamp','Deleted At',0,1,1,1,1,1,'{}',4),(221,27,'id','text','Id',1,0,0,0,0,0,'{}',1),(222,27,'title','text','Title',1,1,1,1,1,1,'{}',2),(223,27,'image','image','Image',0,1,1,1,1,1,'{}',3),(224,27,'meta_description_cty','text','Meta Description Cty',1,1,1,1,1,1,'{}',4),(225,27,'meta_description_cn','text','Meta Description Cn',1,1,1,1,1,1,'{}',5),(226,27,'meta_description_sp','text','Meta Description Sp',1,1,1,1,1,1,'{}',6),(227,27,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',7),(228,27,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',8),(229,10,'save_title','text','Save Title',0,1,1,1,1,1,'{}',5),(230,10,'function','text','Function',0,1,1,1,1,1,'{}',10),(231,28,'id','text','Id',1,0,0,0,0,0,'{}',1),(232,28,'title','text','Title',1,1,1,1,1,1,'{}',2),(233,28,'image','image','Image',1,1,1,1,1,1,'{}',3),(234,28,'url','text','Url',1,1,1,1,1,1,'{}',4),(235,28,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',5),(236,28,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6),(237,10,'meta_description','text','Meta Description',0,1,1,1,1,1,'{}',14),(238,10,'meta_keywords','text','Meta Keywords',0,1,1,1,1,1,'{}',15),(239,10,'seo_title','text','Seo Title',0,1,1,1,1,1,'{}',16);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_types`
--

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` VALUES (1,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','TCG\\Voyager\\Http\\Controllers\\VoyagerUserController','',1,0,NULL,'2019-03-15 02:52:12','2019-03-15 02:52:12'),(2,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,NULL,'2019-03-15 02:52:13','2019-03-15 02:52:13'),(3,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'','',1,0,NULL,'2019-03-15 02:52:13','2019-03-15 02:52:13'),(4,'categories','categories','Category','Categories','voyager-categories','TCG\\Voyager\\Models\\Category',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2019-03-15 02:52:20','2019-03-27 18:19:54'),(5,'posts','posts','Post','Posts','voyager-news','TCG\\Voyager\\Models\\Post','TCG\\Voyager\\Policies\\PostPolicy',NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2019-03-15 02:52:22','2019-03-30 03:07:59'),(6,'pages','pages','Page','Pages','voyager-file-text','TCG\\Voyager\\Models\\Page',NULL,'','',1,0,NULL,'2019-03-15 02:52:24','2019-03-15 02:52:24'),(7,'logos','logos','Logo','Logos','voyager-images','App\\Models\\Logo',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2019-03-21 00:19:58','2019-03-21 00:19:58'),(10,'products','products','Tin Tức &  Sản Phẩm','Tin Tức &  Sản Phẩm','voyager-basket','App\\Models\\Product',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2019-03-21 01:37:35','2019-04-16 02:19:37'),(12,'clients','clients','khách hàng bình luận','khách hàng bình luận','voyager-person','App\\Models\\Client',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2019-03-21 04:35:24','2019-03-27 18:20:34'),(13,'contents','contents','Sản phẩm nổi  bật','Sản phẩm nổi  bật','voyager-file-text','App\\Models\\Content',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2019-03-21 05:07:27','2019-03-21 05:13:12'),(21,'orders','orders','Thông tin khách hàng','Thông tin khách hàng','voyager-group','App\\Models\\Order',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2019-03-26 19:15:17','2019-04-04 09:59:24'),(22,'detail_orders','detail-orders','Chi tiết đơn hàng','Chi tiết đơn hàng','voyager-dollar','App\\Models\\DetailOrder',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2019-03-26 19:44:23','2019-03-27 18:22:27'),(23,'faqs','faqs','Faq','Faqs','voyager-activity','App\\Models\\Faq',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2019-03-27 00:20:46','2019-03-27 00:43:37'),(24,'messages','messages','Phản hồi khách hàng','Phản hồi khách hàng','voyager-chat','App\\Models\\Message',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2019-03-27 01:39:36','2019-03-27 18:23:13'),(26,'contacts','contacts','Liên hệ','Liên hệ','voyager-company','App\\Models\\Contact',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2019-03-27 03:14:33','2019-03-27 18:21:11'),(27,'description_prdocucts','description-prdocucts','Mô tả về  công ty','Mô tả về  công ty','voyager-study','App\\Models\\DescriptionPrdocuct',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2019-03-28 09:15:00','2019-03-28 09:15:00'),(28,'sliders','sliders','Slider','Sliders','voyager-images','App\\Models\\Slider',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2019-04-10 06:43:54','2019-04-10 06:43:54');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `description_prdocucts`
--

DROP TABLE IF EXISTS `description_prdocucts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `description_prdocucts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description_cty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description_cn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description_sp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `description_prdocucts`
--

LOCK TABLES `description_prdocucts` WRITE;
/*!40000 ALTER TABLE `description_prdocucts` DISABLE KEYS */;
INSERT INTO `description_prdocucts` VALUES (1,'HỖ TRỢ GIÚP BỒI BỔ SỨC KHOẺ, TĂNG CƯỜNG SỨC ĐỀ KHÁNG CHO CƠ THỂ','description-prdocucts/April2019/kkxHThrAPoaFwc6sa5Lw.png','Công ty cổ phần MHD Pharma thành lập năm 2011; là Công ty dược phẩm uy tín hàng đầu Việt Nam lấy uy tín chất lượng dựng thương hiệu, đặt sự hài lòng khách hàng làm sứ mệnh.','Công nghệ chiết xuất nhiệt lạnh (Hàn Quốc)  và cô đặc chân không giúp giữ nguyên hàm lượng dược chất, giúp sản phẩm có độ hoà tan và thẩm thấu nhanh. Nguồn gốc nguyên liệu sạch, xuất xứ rõ ràng.','Hỗ trợ giúp bồi bổ sức khoẻ, tăng cường sức đề kháng cho cơ thể. Cân bằng cuộc sống, cải thiện tình trạng mất ngủ và suy nhược cơ thể. Thanh lọc cơ thể, giúp trẻ hoá từ bên trong.','2019-03-28 09:23:00','2019-04-11 04:36:20');
/*!40000 ALTER TABLE `description_prdocucts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail_orders`
--

DROP TABLE IF EXISTS `detail_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detail_orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_orders` int(11) NOT NULL,
  `id_products` int(11) NOT NULL,
  `amount` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail_orders`
--

LOCK TABLES `detail_orders` WRITE;
/*!40000 ALTER TABLE `detail_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `detail_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faqs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `university` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `research` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'MHD','TS','Dược','Sản phẩm này có tác dụng gì?','<p>Dạ thưa anh/chị, sản phẩm Cao Nấm Tr&ugrave;ng Thảo Cordy &ndash; X c&oacute; t&aacute;c dụng:<br />-&nbsp; &nbsp;Gi&uacute;p hỗ trợ bồi bổ sức khoẻ, tăng cường sức đề kh&aacute;ng cho cơ thể.<br />-&nbsp; &nbsp;C&acirc;n bằng cuộc sống, cải thiện t&igrave;nh trạng mất ngủ v&agrave; suy nhược cơ thể.<br />-&nbsp; &nbsp;Thanh lọc cơ thể, gi&uacute;p trẻ ho&aacute; từ b&ecirc;n trong.</p>','faqs/April2019/Ux36tzWtqdiAtKmxSoVj.png',NULL,'2019-04-05 02:44:23',NULL),(2,'TS: Nguyen Thi Lien Huong','Dai Hoc UISAN Han Quoc','GS TS Nghien Cuu & Thuc Nghiem','Người nhà mới mổ xong, có dùng sản phẩm được hay không? Vì tôi được biết Đông Trùng Hạ Thảo không dùng cho người đang chảy máu?','<p class=\"MsoNormal\">Dạ thưa anh/chị, sản phẩm Cao Nấm Tr&ugrave;ng Thảo Cordy - X l&agrave; sự kết hợp tinh chất chiết xuất Nấm Đ&ocirc;ng Tr&ugrave;ng Hạ Thảo v&agrave; Nấm Linh Chi với c&ocirc;ng dụng ch&iacute;nh l&agrave; phục hồi v&agrave; bồi bổ sức khoẻ, tăng sức đề kh&aacute;ng cho bệnh nhận sau điều trị bệnh, sau mổ, sau ho&aacute; xạ trị n&ecirc;n sản phẩm l&agrave; lựa chọn tối ưu để chăm lo sức khoẻ người th&acirc;n. Tuy nhi&ecirc;n kh&ocirc;ng d&ugrave;ng sản phẩm trong trường hợp c&oacute; vết thương hở đang chảy m&aacute;u, nếu người nh&agrave; anh/chị sau ca mổ đ&atilde; cầm được m&aacute;u, đang l&agrave;m l&agrave;nh lại vết thương, l&uacute;c n&agrave;y cơ thể suy yếu v&agrave; cần sự phục hồi th&igrave; c&oacute; thể d&ugrave;ng sản phẩm. Tuy nhi&ecirc;n anh/chị n&ecirc;n tham khảo th&ecirc;m &yacute; kiến b&aacute;c sĩ đang điều trị cho người nh&agrave; ạ.</p>','faqs/April2019/v9YkSbFGbL6oIBqdTpDV.png',NULL,'2019-04-05 02:37:58',NULL),(3,'TS. Nguyễn Thị Liên Thương','Tiến Sĩ','Dược','Tôi thấy sản phẩm có mật ong và maltose nhưng Tôi bị đái tháo đường, vậy có dùng sản phẩm được hay không?','<p class=\"MsoNormal\">Dạ thưa anh/chị, sản phẩm Cao Nấm Tr&ugrave;ng Thảo Cordy - X l&agrave; sự kết hợp tinh chất chiết xuất Nấm Đ&ocirc;ng Tr&ugrave;ng Hạ Thảo v&agrave; Nấm Linh Chi, mỗi loại dược liệu đều c&oacute; chức năng điều ho&agrave; đường huyết. Tuy trong sản phẩm c&oacute; đường v&agrave; mật ong nhưng tải trọng đường cho mỗi lần d&ugrave;ng chỉ tương đương nửa muỗng caf&eacute; cơm trắng, rất &iacute;t so với bữa ăn h&agrave;ng ng&agrave;y n&ecirc;n B&aacute;c c&oacute; thể y&ecirc;n t&acirc;m d&ugrave;ng sản phẩm ạ.</p>','faqs/March2019/UehXJa3hRQziwLI57kO5.png',NULL,'2019-04-05 02:19:24',NULL),(4,'MHD','TS','Dược','Sản phẩm này dùng thời điểm nào trong ngày là tốt nhất?','<p class=\"MsoNormal\"><span style=\"mso-spacerun: \'yes\'; font-family: Arial; mso-fareast-font-family: 等线; font-size: 11.0000pt;\">Dạ thưa anh/chị, sản phẩm Cao Nấm Tr&ugrave;ng Thảo Cordy - X l&agrave; sự kết hợp tinh chất chiết xuất Nấm Đ&ocirc;ng Tr&ugrave;ng Hạ Thảo v&agrave; Nấm Linh Chi với c&ocirc;ng dụng ch&iacute;nh l&agrave; phục hồi v&agrave; bồi bổ sức khoẻ, tăng sức đề kh&aacute;ng cho bệnh nhận. Thời gian sử dụng tốt nhất trong ng&agrave;y l&agrave; trước bữa ăn s&aacute;ng 30 ph&uacute;t. Trong trường hợp muốn cải thiện giấc ngủ s&acirc;u c&oacute; thể d&ugrave;ng l&uacute;c 17h chiều ạ.</span></p>','faqs/April2019/FUwULafshss1sCzeiVWR.png','2019-04-05 02:22:54','2019-04-05 02:22:54',NULL),(5,'MHD','TS','Dược','Trên thị trường có rất nhiều sản phẩm có Đông Trùng Hạ Thảo, vây sản phẩm này khác gì những sản phẩm còn lại?','<p>Cao Nấm Tr&ugrave;ng Thảo Cordy - X l&agrave; sản phẩm được nghi&ecirc;n cứu &amp; ph&aacute;t triển, chuyển giao c&ocirc;ng nghệ từ Đại Học Thủ Dầu Một. Sản phẩm l&agrave; Cao Đặc chứa tinh chất Đ&ocirc;ng Tr&ugrave;ng Hạ Thảo v&agrave; tinh chất Nấm Linh Chi. V&agrave; để đảm bảo sản phẩm c&oacute; được h&agrave;m lượng dược chất cao nhất, c&aacute;c nh&agrave; khoa học đ&atilde; rất ch&uacute; trọng đến từng giai đoạn trong qu&aacute; tr&igrave;nh ph&aacute;t triển v&agrave; h&igrave;nh th&agrave;nh n&ecirc;n Cordy - X:<br /><strong>-&nbsp; CON GIỐNG:</strong>&nbsp;Được nhập khẩu từ ATCC - Ng&acirc;n h&agrave;ng giống Hoa Kỳ uy t&iacute;n nhất thế giới.<br /><strong>-&nbsp; M&Ocirc;I TRƯỜNG NU&Ocirc;I TRỒNG:</strong>&nbsp;Thiết lập m&ocirc;i tường nu&ocirc;i trồng v&ocirc; tr&ugrave;ng, tu&acirc;n thủ nghi&ecirc;m ngặt c&aacute;c ti&ecirc;u ch&iacute; về nhiệt độ, độ ẩm &amp; &aacute;nh s&aacute;ng th&ocirc;ng qua hệ thống gi&aacute;m s&aacute;t tự động (giống như m&ocirc;i trường sinh trưởng của Đ&ocirc;ng Tr&ugrave;ng Hạ Thảo ngo&agrave;i tự nhi&ecirc;n).<br /><strong>-&nbsp; C&Ocirc;NG NGHỆ CHIẾT XUẤT NHIỆT LẠNH &amp; C&Ocirc; ĐẶC CH&Acirc;N KH&Ocirc;NG:<br /></strong>&nbsp; &nbsp; &nbsp;o&nbsp; Chỉ sử dụng Quả Thể c&ograve;n tươi để chiết xuất, tuyệt đối kh&ocirc;ng d&ugrave;ng cồn c&ocirc;ng nghiệp trong qu&aacute; tr&igrave;nh chiết xuất.<br />&nbsp; &nbsp; &nbsp;o&nbsp; D&acirc;y chuyền chiết xuất PH&Acirc;N TỬ hiện đại (từ H&agrave;n Quốc) gi&uacute;p Sản Phẩm c&oacute; độ h&ograve;a tan v&agrave; thẩm thấu nhanh.<br /><strong>-&nbsp; </strong>Cam kết kh&ocirc;ng d&ugrave;ng chất bảo quản, chất tạo m&agrave;u trong qu&aacute; tr&igrave;nh sản xuất.</p>','faqs/April2019/jRg8spFMsM1MXKw2YSjP.png',NULL,'2019-04-05 02:47:28',NULL),(6,'MHD','TS','Dược','Đông Trùng Hạ Thảo là sâu hay nấm? Nếu là sâu thì Bà Tôi ăn chay trường có dùng được sản phẩm này khồng vì có chứa Đông Trùng Hạ Thảo?','<p class=\"MsoNormal\">Dạ thưa anh/chị, Đ&ocirc;ng Tr&ugrave;ng Hạ Thảo bản chất l&agrave; nấm kh&ocirc;ng phải s&acirc;u. Sở dĩ c&oacute; t&ecirc;n gọi Đ&ocirc;ng Tr&ugrave;ng Hạ Thảo v&igrave; v&agrave;o m&ugrave;a đ&ocirc;ng, nấm k&yacute; sinh tr&ecirc;n lo&agrave;i s&acirc;u, sử dụng chất dinh dưỡng của s&acirc;u v&agrave; đến m&ugrave;a h&egrave; ph&aacute;t triển th&agrave;nh nấm (th&acirc;n thảo). Nguy&ecirc;n liệu sản xuất Cao Nấm Tr&ugrave;ng Thảo Cordy &ndash; X l&agrave; phần th&acirc;n thảo c&ograve;n tươi của loại nấm n&agrave;y n&ecirc;n anh/chị cứ y&ecirc;n t&acirc;m l&agrave; người ăn chay trường c&oacute; thể d&ugrave;ng được ạ.</p>','faqs/April2019/z0HjtdNWypz6EmXTLfhs.png',NULL,'2019-04-12 04:19:47',NULL);
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `list_citys`
--

DROP TABLE IF EXISTS `list_citys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `list_citys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_parent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list_citys`
--

LOCK TABLES `list_citys` WRITE;
/*!40000 ALTER TABLE `list_citys` DISABLE KEYS */;
/*!40000 ALTER TABLE `list_citys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logos`
--

DROP TABLE IF EXISTS `logos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logos`
--

LOCK TABLES `logos` WRITE;
/*!40000 ALTER TABLE `logos` DISABLE KEYS */;
INSERT INTO `logos` VALUES (2,'logo','logos/April2019/ODNfGnqmsJJs27y7piLa.png',NULL,'2019-04-11 04:16:08');
/*!40000 ALTER TABLE `logos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,1,'Dashboard','','_self','voyager-boat',NULL,NULL,1,'2019-03-15 02:52:15','2019-03-15 02:52:15','voyager.dashboard',NULL),(2,1,'Media','','_self','voyager-images',NULL,15,5,'2019-03-15 02:52:15','2019-03-28 03:55:39','voyager.media.index',NULL),(3,1,'Users','','_self','voyager-person',NULL,15,2,'2019-03-15 02:52:15','2019-03-20 23:57:40','voyager.users.index',NULL),(4,1,'Roles','','_self','voyager-lock',NULL,15,1,'2019-03-15 02:52:15','2019-03-20 23:57:39','voyager.roles.index',NULL),(5,1,'Tools','','_self','voyager-tools',NULL,NULL,12,'2019-03-15 02:52:15','2019-03-28 09:15:24',NULL,NULL),(6,1,'Menu Builder','','_self','voyager-list',NULL,5,1,'2019-03-15 02:52:15','2019-03-15 02:55:36','voyager.menus.index',NULL),(7,1,'Database','','_self','voyager-data',NULL,5,2,'2019-03-15 02:52:15','2019-03-15 02:55:36','voyager.database.index',NULL),(8,1,'Compass','','_self','voyager-compass',NULL,5,3,'2019-03-15 02:52:15','2019-03-15 02:55:36','voyager.compass.index',NULL),(9,1,'BREAD','','_self','voyager-bread',NULL,5,4,'2019-03-15 02:52:15','2019-03-15 02:55:36','voyager.bread.index',NULL),(10,1,'Settings','','_self','voyager-settings',NULL,NULL,13,'2019-03-15 02:52:15','2019-03-28 09:15:24','voyager.settings.index',NULL),(11,1,'Categories','','_self','voyager-categories',NULL,15,3,'2019-03-15 02:52:21','2019-03-20 23:57:55','voyager.categories.index',NULL),(12,1,'Posts','','_self','voyager-news',NULL,15,4,'2019-03-15 02:52:23','2019-03-28 03:55:39','voyager.posts.index',NULL),(13,1,'Pages','','_self','voyager-file-text',NULL,15,6,'2019-03-15 02:52:25','2019-03-28 03:55:40','voyager.pages.index',NULL),(14,1,'Hooks','','_self','voyager-hook',NULL,5,5,'2019-03-15 02:52:29','2019-03-15 02:55:36','voyager.hooks',NULL),(15,1,'User Management','','_self','voyager-people','#000000',NULL,11,'2019-03-20 23:57:00','2019-03-28 09:15:24',NULL,''),(16,1,'Logos','','_self','voyager-images','#000000',NULL,7,'2019-03-21 00:19:58','2019-03-27 01:39:49','voyager.logos.index','null'),(18,1,'Tin Tức &  Sản Phẩm','','_self','voyager-basket',NULL,NULL,2,'2019-03-21 01:37:35','2019-03-21 01:38:12','voyager.products.index',NULL),(19,1,'khách hàng bình luận','','_self','voyager-person',NULL,NULL,9,'2019-03-21 04:35:24','2019-03-27 01:39:50','voyager.clients.index',NULL),(20,1,'Sản phẩm nổi  bật','','_self','voyager-file-text',NULL,NULL,4,'2019-03-21 05:07:27','2019-03-26 19:50:45','voyager.contents.index',NULL),(27,1,'Thông tin khách hàng','','_self','voyager-group',NULL,29,1,'2019-03-26 19:15:17','2019-03-26 19:50:44','voyager.orders.index',NULL),(28,1,'Chi tiết đơn hàng','','_self','voyager-dollar',NULL,29,2,'2019-03-26 19:44:23','2019-03-26 19:50:46','voyager.detail-orders.index',NULL),(29,1,'Thông tin đặt hàng sản phẩm','','_self','voyager-archive','#000000',NULL,3,'2019-03-26 19:49:47','2019-03-26 19:50:38',NULL,''),(30,1,'Faqs','','_self','voyager-activity',NULL,NULL,5,'2019-03-27 00:20:46','2019-03-27 00:21:02','voyager.faqs.index',NULL),(31,1,'Phản hồi khách hàng','','_self','voyager-chat',NULL,NULL,6,'2019-03-27 01:39:36','2019-03-27 01:39:49','voyager.messages.index',NULL),(33,1,'Liên hệ','','_self','voyager-company',NULL,NULL,14,'2019-03-27 03:14:33','2019-03-28 09:15:24','voyager.contacts.index',NULL),(34,1,'Mô tả về  công ty','','_self','voyager-study',NULL,NULL,10,'2019-03-28 09:15:00','2019-03-28 09:15:24','voyager.description-prdocucts.index',NULL),(35,1,'Sliders','','_self','voyager-images',NULL,NULL,15,'2019-04-10 06:43:54','2019-04-10 06:43:54','voyager.sliders.index',NULL);
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'admin','2019-03-15 02:52:14','2019-03-15 02:52:14');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `agree` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_01_01_000000_add_voyager_user_fields',1),(4,'2016_01_01_000000_create_data_types_table',1),(5,'2016_01_01_000000_create_pages_table',1),(6,'2016_01_01_000000_create_posts_table',1),(7,'2016_02_15_204651_create_categories_table',1),(8,'2016_05_19_173453_create_menu_table',1),(9,'2016_10_21_190000_create_roles_table',1),(10,'2016_10_21_190000_create_settings_table',1),(11,'2016_11_30_135954_create_permission_table',1),(12,'2016_11_30_141208_create_permission_role_table',1),(13,'2016_12_26_201236_data_types__add__server_side',1),(14,'2017_01_13_000000_add_route_to_menu_items_table',1),(15,'2017_01_14_005015_create_translations_table',1),(16,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),(17,'2017_03_06_000000_add_controller_to_data_types_table',1),(18,'2017_04_11_000000_alter_post_nullable_fields_table',1),(19,'2017_04_21_000000_add_order_to_data_rows_table',1),(20,'2017_07_05_210000_add_policyname_to_data_types_table',1),(21,'2017_08_05_000000_add_group_to_settings_table',1),(22,'2017_11_26_013050_add_user_role_relationship',1),(23,'2017_11_26_015000_create_user_roles_table',1),(24,'2018_03_11_000000_add_user_settings',1),(25,'2018_03_14_000000_add_details_to_data_types_table',1),(26,'2018_03_16_000000_make_settings_value_nullable',1),(28,'2019_03_21_070727_create_logos_table',2),(29,'2019_03_21_074331_create_sliders_table',3),(30,'2019_03_21_082147_create_products_table',4),(32,'2019_03_21_112531_create_clients_table',5),(33,'2019_03_21_120156_create_contents_table',6),(35,'2019_03_25_013403_create_doctors_table',8),(38,'2019_03_26_113322_create_orders_table',9),(39,'2019_03_27_023303_create_detail_orders_table',10),(40,'2019_03_27_071104_create_faqs_table',11),(41,'2019_03_27_083457_create_messages_table',12),(43,'2019_03_22_021859_create_contacts_table',13),(44,'2019_03_28_055908_create_description_prdocucts_table',14),(45,'2019_03_28_084651_create_product_table',15),(46,'2019_03_29_012639_create_posts_table',16),(47,'2019_04_10_025151_create_list_citys_table',16),(48,'2019_04_10_032310_create_sliders_table',17);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,'Hello World','Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.','<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','pages/page1.jpg','hello-world','Yar Meta Description','Keyword1, Keyword2','ACTIVE','2019-03-15 02:52:26','2019-03-15 02:52:26');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_role` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1),(1,2),(2,1),(2,2),(3,1),(3,2),(4,1),(4,2),(5,1),(5,2),(6,1),(6,2),(7,1),(7,2),(8,1),(8,2),(9,1),(9,2),(10,1),(10,2),(11,1),(11,2),(12,1),(12,2),(13,1),(13,2),(14,1),(14,2),(15,1),(15,2),(16,1),(16,2),(17,1),(17,2),(18,1),(18,2),(19,1),(19,2),(20,1),(20,2),(21,1),(21,2),(22,1),(22,2),(23,1),(23,2),(24,1),(24,2),(25,1),(25,2),(26,1),(26,2),(27,1),(27,2),(28,1),(28,2),(29,1),(29,2),(30,1),(30,2),(31,1),(31,2),(32,1),(32,2),(33,1),(33,2),(34,1),(34,2),(35,1),(35,2),(36,1),(36,2),(37,1),(37,2),(38,1),(38,2),(39,1),(39,2),(40,1),(40,2),(41,2),(42,1),(43,1),(44,1),(45,1),(46,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(97,1),(98,1),(99,1),(100,1),(101,1),(102,1),(103,1),(104,1),(105,1),(106,1),(107,1),(108,1),(109,1),(110,1),(111,1),(112,1),(113,1),(114,1),(115,1),(116,1),(122,1),(123,1),(124,1),(125,1),(126,1),(127,1),(128,1),(129,1),(130,1),(131,1),(132,1),(133,1),(134,1),(135,1),(136,1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'browse_admin',NULL,'2019-03-15 02:52:16','2019-03-15 02:52:16'),(2,'browse_bread',NULL,'2019-03-15 02:52:16','2019-03-15 02:52:16'),(3,'browse_database',NULL,'2019-03-15 02:52:16','2019-03-15 02:52:16'),(4,'browse_media',NULL,'2019-03-15 02:52:16','2019-03-15 02:52:16'),(5,'browse_compass',NULL,'2019-03-15 02:52:16','2019-03-15 02:52:16'),(6,'browse_menus','menus','2019-03-15 02:52:16','2019-03-15 02:52:16'),(7,'read_menus','menus','2019-03-15 02:52:16','2019-03-15 02:52:16'),(8,'edit_menus','menus','2019-03-15 02:52:16','2019-03-15 02:52:16'),(9,'add_menus','menus','2019-03-15 02:52:16','2019-03-15 02:52:16'),(10,'delete_menus','menus','2019-03-15 02:52:16','2019-03-15 02:52:16'),(11,'browse_roles','roles','2019-03-15 02:52:16','2019-03-15 02:52:16'),(12,'read_roles','roles','2019-03-15 02:52:17','2019-03-15 02:52:17'),(13,'edit_roles','roles','2019-03-15 02:52:17','2019-03-15 02:52:17'),(14,'add_roles','roles','2019-03-15 02:52:17','2019-03-15 02:52:17'),(15,'delete_roles','roles','2019-03-15 02:52:17','2019-03-15 02:52:17'),(16,'browse_users','users','2019-03-15 02:52:17','2019-03-15 02:52:17'),(17,'read_users','users','2019-03-15 02:52:17','2019-03-15 02:52:17'),(18,'edit_users','users','2019-03-15 02:52:17','2019-03-15 02:52:17'),(19,'add_users','users','2019-03-15 02:52:17','2019-03-15 02:52:17'),(20,'delete_users','users','2019-03-15 02:52:17','2019-03-15 02:52:17'),(21,'browse_settings','settings','2019-03-15 02:52:17','2019-03-15 02:52:17'),(22,'read_settings','settings','2019-03-15 02:52:17','2019-03-15 02:52:17'),(23,'edit_settings','settings','2019-03-15 02:52:17','2019-03-15 02:52:17'),(24,'add_settings','settings','2019-03-15 02:52:17','2019-03-15 02:52:17'),(25,'delete_settings','settings','2019-03-15 02:52:18','2019-03-15 02:52:18'),(26,'browse_categories','categories','2019-03-15 02:52:21','2019-03-15 02:52:21'),(27,'read_categories','categories','2019-03-15 02:52:21','2019-03-15 02:52:21'),(28,'edit_categories','categories','2019-03-15 02:52:21','2019-03-15 02:52:21'),(29,'add_categories','categories','2019-03-15 02:52:21','2019-03-15 02:52:21'),(30,'delete_categories','categories','2019-03-15 02:52:22','2019-03-15 02:52:22'),(31,'browse_posts','posts','2019-03-15 02:52:23','2019-03-15 02:52:23'),(32,'read_posts','posts','2019-03-15 02:52:23','2019-03-15 02:52:23'),(33,'edit_posts','posts','2019-03-15 02:52:23','2019-03-15 02:52:23'),(34,'add_posts','posts','2019-03-15 02:52:24','2019-03-15 02:52:24'),(35,'delete_posts','posts','2019-03-15 02:52:24','2019-03-15 02:52:24'),(36,'browse_pages','pages','2019-03-15 02:52:25','2019-03-15 02:52:25'),(37,'read_pages','pages','2019-03-15 02:52:25','2019-03-15 02:52:25'),(38,'edit_pages','pages','2019-03-15 02:52:25','2019-03-15 02:52:25'),(39,'add_pages','pages','2019-03-15 02:52:25','2019-03-15 02:52:25'),(40,'delete_pages','pages','2019-03-15 02:52:25','2019-03-15 02:52:25'),(41,'browse_hooks',NULL,'2019-03-15 02:52:29','2019-03-15 02:52:29'),(42,'browse_logos','logos','2019-03-21 00:19:58','2019-03-21 00:19:58'),(43,'read_logos','logos','2019-03-21 00:19:58','2019-03-21 00:19:58'),(44,'edit_logos','logos','2019-03-21 00:19:58','2019-03-21 00:19:58'),(45,'add_logos','logos','2019-03-21 00:19:58','2019-03-21 00:19:58'),(46,'delete_logos','logos','2019-03-21 00:19:58','2019-03-21 00:19:58'),(52,'browse_products','products','2019-03-21 01:37:35','2019-03-21 01:37:35'),(53,'read_products','products','2019-03-21 01:37:35','2019-03-21 01:37:35'),(54,'edit_products','products','2019-03-21 01:37:35','2019-03-21 01:37:35'),(55,'add_products','products','2019-03-21 01:37:35','2019-03-21 01:37:35'),(56,'delete_products','products','2019-03-21 01:37:35','2019-03-21 01:37:35'),(57,'browse_clients','clients','2019-03-21 04:35:24','2019-03-21 04:35:24'),(58,'read_clients','clients','2019-03-21 04:35:24','2019-03-21 04:35:24'),(59,'edit_clients','clients','2019-03-21 04:35:24','2019-03-21 04:35:24'),(60,'add_clients','clients','2019-03-21 04:35:24','2019-03-21 04:35:24'),(61,'delete_clients','clients','2019-03-21 04:35:24','2019-03-21 04:35:24'),(62,'browse_contents','contents','2019-03-21 05:07:27','2019-03-21 05:07:27'),(63,'read_contents','contents','2019-03-21 05:07:27','2019-03-21 05:07:27'),(64,'edit_contents','contents','2019-03-21 05:07:27','2019-03-21 05:07:27'),(65,'add_contents','contents','2019-03-21 05:07:27','2019-03-21 05:07:27'),(66,'delete_contents','contents','2019-03-21 05:07:27','2019-03-21 05:07:27'),(97,'browse_orders','orders','2019-03-26 19:15:17','2019-03-26 19:15:17'),(98,'read_orders','orders','2019-03-26 19:15:17','2019-03-26 19:15:17'),(99,'edit_orders','orders','2019-03-26 19:15:17','2019-03-26 19:15:17'),(100,'add_orders','orders','2019-03-26 19:15:17','2019-03-26 19:15:17'),(101,'delete_orders','orders','2019-03-26 19:15:17','2019-03-26 19:15:17'),(102,'browse_detail_orders','detail_orders','2019-03-26 19:44:23','2019-03-26 19:44:23'),(103,'read_detail_orders','detail_orders','2019-03-26 19:44:23','2019-03-26 19:44:23'),(104,'edit_detail_orders','detail_orders','2019-03-26 19:44:23','2019-03-26 19:44:23'),(105,'add_detail_orders','detail_orders','2019-03-26 19:44:23','2019-03-26 19:44:23'),(106,'delete_detail_orders','detail_orders','2019-03-26 19:44:23','2019-03-26 19:44:23'),(107,'browse_faqs','faqs','2019-03-27 00:20:46','2019-03-27 00:20:46'),(108,'read_faqs','faqs','2019-03-27 00:20:46','2019-03-27 00:20:46'),(109,'edit_faqs','faqs','2019-03-27 00:20:46','2019-03-27 00:20:46'),(110,'add_faqs','faqs','2019-03-27 00:20:46','2019-03-27 00:20:46'),(111,'delete_faqs','faqs','2019-03-27 00:20:46','2019-03-27 00:20:46'),(112,'browse_messages','messages','2019-03-27 01:39:36','2019-03-27 01:39:36'),(113,'read_messages','messages','2019-03-27 01:39:36','2019-03-27 01:39:36'),(114,'edit_messages','messages','2019-03-27 01:39:36','2019-03-27 01:39:36'),(115,'add_messages','messages','2019-03-27 01:39:36','2019-03-27 01:39:36'),(116,'delete_messages','messages','2019-03-27 01:39:36','2019-03-27 01:39:36'),(122,'browse_contacts','contacts','2019-03-27 03:14:33','2019-03-27 03:14:33'),(123,'read_contacts','contacts','2019-03-27 03:14:33','2019-03-27 03:14:33'),(124,'edit_contacts','contacts','2019-03-27 03:14:33','2019-03-27 03:14:33'),(125,'add_contacts','contacts','2019-03-27 03:14:33','2019-03-27 03:14:33'),(126,'delete_contacts','contacts','2019-03-27 03:14:33','2019-03-27 03:14:33'),(127,'browse_description_prdocucts','description_prdocucts','2019-03-28 09:15:00','2019-03-28 09:15:00'),(128,'read_description_prdocucts','description_prdocucts','2019-03-28 09:15:00','2019-03-28 09:15:00'),(129,'edit_description_prdocucts','description_prdocucts','2019-03-28 09:15:00','2019-03-28 09:15:00'),(130,'add_description_prdocucts','description_prdocucts','2019-03-28 09:15:00','2019-03-28 09:15:00'),(131,'delete_description_prdocucts','description_prdocucts','2019-03-28 09:15:00','2019-03-28 09:15:00'),(132,'browse_sliders','sliders','2019-04-10 06:43:54','2019-04-10 06:43:54'),(133,'read_sliders','sliders','2019-04-10 06:43:54','2019-04-10 06:43:54'),(134,'edit_sliders','sliders','2019-04-10 06:43:54','2019-04-10 06:43:54'),(135,'add_sliders','sliders','2019-04-10 06:43:54','2019-04-10 06:43:54'),(136,'delete_sliders','sliders','2019-04-10 06:43:54','2019-04-10 06:43:54');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `save_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `function` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (3,'Cao Nấm Trùng Thảo CORDY - X',2,'Cao đặc, Hộp 1 hũ 50 g',NULL,'<p><strong>Th&agrave;nh phần:<br />&nbsp; &nbsp; &nbsp;-&nbsp; </strong>Mỗi lọ 50g chứa tinh chất chiết xuất.<br /><strong>&nbsp; &nbsp; &nbsp;-</strong>&nbsp; Nấm linh chi Ganoderma lucidum: 12.50g.<br /><strong>&nbsp; &nbsp; &nbsp;-&nbsp; </strong>Nấm tr&ugrave;ng thảo Cordyceps militaris: 1.25g.</p>\r\n<p><strong>C&ocirc;ng dụng:<br /></strong><strong>&nbsp; &nbsp; &nbsp;-</strong>&nbsp; Hỗ trợ phục hồi bồi bổ sức khoẻ v&agrave; tăng cường sức đề kh&aacute;ng.<br /><strong>&nbsp; &nbsp; &nbsp;-&nbsp; </strong>C&acirc;n bằng cơ thể, cải thiện giấc ngủ v&agrave; suy nhược cơ thể.<br /><strong>&nbsp; &nbsp; &nbsp;-&nbsp; </strong>Thanh lọc cơ thể, gi&uacute;p trẻ ho&aacute; từ b&ecirc;n trong.</p>\r\n<p><strong>Đối tượng sử dụng: </strong>Người c&oacute; nhu cầu phục hồi sức khoẻ v&agrave; người c&oacute; nhu cầu tăng cường sức đề kh&aacute;ng.</p>\r\n<p><strong>C&aacute;ch d&ugrave;ng: </strong>Pha 1 th&igrave;a nhỏ (tương đương 2,5 g) với 1 cốc nước ấm 50ml, khuấy nhẹ đều. D&ugrave;ng 1-2 lần/ ng&agrave;y.</p>\r\n<p><strong>Thận trọng: </strong>Kh&ocirc;ng d&ugrave;ng Nấm Tr&ugrave;ng Thảo trong trường hợp bệnh nh&acirc;n c&oacute; vết thương hở đang chảy m&aacute;u hoặc dị ứng với bất kỳ th&agrave;nh phần n&agrave;o của sản phẩm.</p>\r\n<p><strong>Bảo quản: </strong>Bảo quản nơi kh&ocirc; r&aacute;o, tr&aacute;nh &aacute;nh s&aacute;ng trực tiếp.</p>\r\n<p><strong>Quy c&aacute;ch đ&oacute;ng g&oacute;i: </strong>Hộp 1 lọ cao đặc.</p>\r\n<p><span style=\"color: #ff0000;\">*Sản phẩm n&agrave;y kh&ocirc;ng phải l&agrave; thuốc v&agrave; kh&ocirc;ng c&oacute; t&aacute;c dụng thay thế thuốc chữa bệnh.</span></p>','products/April2019/uBr1KkIXRvGeLn8967E5.jpg','cao-nam-trung-thao-cordy-x','1350000','Đông trùng hạ thảo','2019-03-29 17:25:07','2019-04-12 08:15:34',NULL,NULL,NULL,NULL),(4,'Nguồn gốc xuất xứ',1,'Đông trùng hạ thảo (tươi) và nấm linh chi (khô) được chiết xuất bằng cồn thực phẩm kết hợp công nghệ hiện đại từ Hàn Quốc giúp giữ nguyên hàm lượng dược chất.',NULL,'<p class=\"MsoNormal\"><strong>Cao Nấm Tr&ugrave;ng Thảo CORDY&ndash;X</strong>&nbsp;l&agrave; sản phẩm được nghi&ecirc;n cứu &amp; ph&aacute;t triển, chuyển giao c&ocirc;ng nghệ từ Đại Học Thủ Dầu Một. Sản phẩm l&agrave;&nbsp;<strong>Cao Đặc</strong> chứa tinh chất Đ&Ocirc;NG TR&Ugrave;NG HẠ THẢO v&agrave; tinh chất NẤM LINH CHI. Để đảm bảo sản phẩm c&oacute; được h&agrave;m lượng dược chất cao nhất, c&aacute;c nh&agrave; khoa học đ&atilde; rất ch&uacute; trọng đến từng giai đoạn trong qu&aacute; tr&igrave;nh ph&aacute;t triển v&agrave; h&igrave;nh th&agrave;nh n&ecirc;n CORDY-X:</p>\r\n<ul>\r\n<li class=\"MsoNormal\"><strong>Con giống:</strong> Được nhập khẩu từ ATCC - Ng&acirc;n h&agrave;ng giống Hoa Kỳ uy t&iacute;n nhất thế giới.</li>\r\n<li class=\"MsoNormal\"><strong>M&ocirc;i trường nu&ocirc;i trồng:</strong> Thiết lập m&ocirc;i tường nu&ocirc;i trồng v&ocirc; tr&ugrave;ng, tu&acirc;n thủ nghi&ecirc;m ngặt c&aacute;c ti&ecirc;u ch&iacute; về nhiệt độ, độ ẩm &amp; &aacute;nh s&aacute;ng th&ocirc;ng qua hệ thống gi&aacute;m s&aacute;t tự động (giống như m&ocirc;i trường sinh trưởng của Đ&Ocirc;NG TR&Ugrave;NG HẠ THẢO ngo&agrave;i tự nhi&ecirc;n).</li>\r\n<li class=\"MsoNormal\"><strong>C&Ocirc;NG NGHỆ CHIẾT XUẤT NHIỆT LẠNH &amp; C&Ocirc; ĐẶC CH&Acirc;N KH&Ocirc;NG:<br /></strong> <strong>&nbsp; </strong>&nbsp; <strong>o</strong>&nbsp; Chỉ sử dụng Quả Thể c&ograve;n tươi để chiết xuất, tuyệt đối kh&ocirc;ng d&ugrave;ng cồn c&ocirc;ng nghiệp trong qu&aacute; tr&igrave;nh chiết xuất.<br /><strong>&nbsp; &nbsp; o&nbsp; </strong>D&acirc;y chuyền chiết xuất PH&Acirc;N TỬ hiện đại (từ H&agrave;n Quốc) gi&uacute;p Sản Phẩm c&oacute; độ h&ograve;a tan v&agrave; thẩm thấu nhanh.</li>\r\n</ul>','products/April2019/167ePdygS3qV1puQCDkO.png','nguon-goc-xuat-xu','9000000','Dược chất','2019-03-28 09:37:15','2019-04-12 03:06:13',NULL,NULL,NULL,NULL),(5,'Đông trùng hạ thảo là gì - Nguồn gốc từ đâu',3,'Nhiều người vẫn thường truyền tai nhau về những giá trị sức khỏe mà đông trùng hạ thảo mang lại, tuy nhiên chúng ta đã thật sự hiểu hết về nguồn gốc cũng như công dụng của “tiên dược” được nhiều người ưa chuộng này?',NULL,'<p class=\"MsoNormal\">Nhiều người vẫn thường truyền tai nhau về những gi&aacute; trị sức khỏe m&agrave; đ&ocirc;ng tr&ugrave;ng hạ thảo mang lại, tuy nhi&ecirc;n ch&uacute;ng ta đ&atilde; thật sự hiểu hết về nguồn gốc cũng như c&ocirc;ng dụng của &ldquo;ti&ecirc;n dược&rdquo; được nhiều người ưa chuộng n&agrave;y?</p>\r\n<h3 class=\"MsoNormal\" style=\"margin-top: 1px;\">Đ&ocirc;ng tr&ugrave;ng hạ thảo l&agrave; g&igrave;?</h3>\r\n<p class=\"MsoNormal\" style=\"mso-pagination: none; text-align: justify; text-justify: inter-ideograph;\" align=\"justify\">Chỉ từ t&ecirc;n gọi, ch&uacute;ng ta c&oacute; thể hiểu được sản phẩm &ldquo;biệt dược tiền tỉ&rdquo; n&agrave;y l&agrave; kết quả của sự cộng sinh v&ocirc; c&ugrave;ng ho&agrave;n hảo giữa một giống lo&agrave;i thực vật&nbsp;v&agrave; động vật, cụ thể ở đ&acirc;y ch&iacute;nh l&agrave; lo&agrave;i nấm t&uacute;i c&oacute; t&ecirc;n gọi Cordyceps sinensis v&agrave; ấu tr&ugrave;ng non thuộc chi Hepialus.</p>\r\n<p class=\"MsoNormal\">Qu&aacute; tr&igrave;nh để cho ra đời sự kết hợp đặc biệt n&agrave;y cũng kh&ocirc;ng hề đơn giản ch&uacute;t n&agrave;o. V&agrave;o m&ugrave;a đ&ocirc;ng, nấm sẽ k&yacute; sinh v&agrave;o s&acirc;u non v&agrave; ăn hết chất dinh dưỡng của ch&uacute;ng l&agrave;m s&acirc;u non chết đi. Ấu tr&ugrave;ng trong s&acirc;u non bắt đầu lớn dần l&ecirc;n v&agrave; mọc ra khỏi lo&agrave;i vật n&agrave;y khi m&ugrave;a h&egrave; đến rồi vươn l&ecirc;n như một ngọn cỏ, h&igrave;nh th&agrave;nh n&ecirc;n thứ sản phẩm qu&yacute; hiếm với t&ecirc;n gọi đ&ocirc;ng tr&ugrave;ng hạ thảo.</p>\r\n<h3 class=\"MsoNormal\" style=\"margin-top: 1px;\">T&aacute;c dụng của đ&ocirc;ng tr&ugrave;ng hạ thảo</h3>\r\n<p class=\"MsoNormal\" style=\"mso-pagination: none; text-align: justify; text-justify: inter-ideograph;\" align=\"justify\">Lu&ocirc;n được quảng c&aacute;o l&agrave; sản phẩm cực kỳ bổ đối với nam giới nhưng đ&acirc;y kh&ocirc;ng phải l&agrave; c&ocirc;ng dụng duy nhất đ&ocirc;ng tr&ugrave;ng hạ thảo mang lại m&agrave; c&ograve;n v&ocirc; v&agrave;n những t&aacute;c dụng hữu &iacute;ch kh&aacute;c.</p>\r\n<p class=\"15\" style=\"margin-left: 36.0000pt; text-indent: -18.0000pt; mso-pagination: none; text-align: justify; text-justify: inter-ideograph; mso-list: l0 level1 lfo1;\" align=\"justify\"><!-- [if !supportLists]-->-&nbsp;<!--[endif]--><strong>Thanh lọc cơ thể</strong>: Gi&uacute;p thải độc v&agrave; loại bỏ đi c&aacute;c t&aacute;c nh&acirc;n xấu b&ecirc;n trong cơ thể để lu&ocirc;n cảm thấy thật tươi trẻ v&agrave; dễ chịu.</p>\r\n<p class=\"15\" style=\"margin-left: 36.0000pt; text-indent: -18.0000pt; mso-pagination: none; text-align: justify; text-justify: inter-ideograph; mso-list: l0 level1 lfo1;\" align=\"justify\"><!-- [if !supportLists]-->-&nbsp;<!--[endif]--><strong>Ph&ograve;ng chống bệnh thận</strong>: Gi&uacute;p người d&ugrave;ng bảo vệ thận do thiếu m&aacute;u, tăng cường nội tiết tố ở v&ugrave;ng thượng thận cũng như hồi phục tế b&agrave;o tiểu quản ở thận một c&aacute;ch hiệu quả.</p>\r\n<p class=\"15\" style=\"margin-left: 36.0000pt; text-indent: -18.0000pt; mso-pagination: none; text-align: justify; text-justify: inter-ideograph; mso-list: l0 level1 lfo1;\" align=\"justify\"><!-- [if !supportLists]-->-&nbsp;<!--[endif]--><strong>Giữ độ ổn định cho tim mạch, huyết &aacute;p</strong>: Gi&uacute;p cho nhịp đập của tim cũng như huyết &aacute;p lu&ocirc;n ở trạng th&aacute;i b&igrave;nh ổn, đồng thời gi&uacute;p người sử dụng chống lại hiện tượng thiếu m&aacute;u cơ tim.</p>\r\n<p class=\"15\" style=\"margin-left: 36.0000pt; text-indent: -18.0000pt; mso-pagination: none; text-align: justify; text-justify: inter-ideograph; mso-list: l0 level1 lfo1;\" align=\"justify\"><!-- [if !supportLists]-->-&nbsp;<!--[endif]--><strong>Khả năng hoạt huyết</strong>: Giảm h&agrave;m lượng cholesterol trong m&aacute;u, chống chứng xơ vữa động mạch v&agrave; điều tiết nồng độ đường trong m&aacute;u.</p>\r\n<p class=\"15\" style=\"margin-left: 36.0000pt; text-indent: -18.0000pt; mso-pagination: none; text-align: justify; text-justify: inter-ideograph; mso-list: l0 level1 lfo1;\" align=\"justify\"><!-- [if !supportLists]-->-&nbsp;<!--[endif]--><strong>Tăng cường sức đề kh&aacute;ng</strong>: Với c&ocirc;ng dụng gi&uacute;p cải thiện t&iacute;nh miễn dịch đặc hiệu, n&acirc;ng cao chức năng ti&ecirc;u h&oacute;a v&agrave; hấp thụ, đ&ocirc;ng tr&ugrave;ng hạ thảo rất th&iacute;ch hợp với những người bệnh cần phục hồi sức khỏe hoặc tăng cường sức đề kh&aacute;ng.</p>\r\n<p class=\"15\" style=\"margin-left: 36.0000pt; text-indent: -18.0000pt; mso-pagination: none; text-align: justify; text-justify: inter-ideograph; mso-list: l0 level1 lfo1;\" align=\"justify\"><!-- [if !supportLists]-->-&nbsp;<!--[endif]--><strong>Tốt cho người lớn tuổi</strong>: Những tinh chất c&oacute; trong sản phẩm sẽ gi&uacute;p chống lại qu&aacute; tr&igrave;nh l&atilde;o h&oacute;a v&agrave; hạn chế bệnh tật của tuổi gi&agrave;.</p>\r\n<p class=\"15\" style=\"margin-left: 36.0000pt; text-indent: -18.0000pt; mso-pagination: none; text-align: justify; text-justify: inter-ideograph; mso-list: l0 level1 lfo1;\" align=\"justify\"><strong>- Tốt cho phụ nữ</strong>: Gi&uacute;p tăng cường ho&oacute;c&nbsp;m&ocirc;n sinh dục của những bạn g&aacute;i đang ở tuổi dậy th&igrave;, l&agrave;m chậm qu&aacute; tr&igrave;nh m&atilde;n kinh để phụ nữ lu&ocirc;n trong độ tuổi hồi xu&acirc;n v&agrave; đặc biệt cải thiện l&agrave;n da một c&aacute;ch đ&aacute;ng kể.</p>\r\n<p class=\"MsoNormal\">Với nguồn gốc v&agrave; c&ocirc;ng dụng tuyệt vời mang lại, việc người d&ugrave;ng ưa th&iacute;ch sử dụng sản phẩm n&agrave;y l&agrave; điều rất dễ hiểu, tuy nhi&ecirc;n để t&igrave;m được một địa chỉ b&aacute;n h&agrave;ng uy t&iacute;n kh&ocirc;ng phải l&agrave; chuyện dễ d&agrave;ng. L&agrave; c&ocirc;ng ty Dược phẩm uy t&iacute;n h&agrave;ng đầu Việt Nam lu&ocirc;n ch&uacute; trọng v&agrave;o chất lượng v&agrave; sức khỏe của kh&aacute;ch h&agrave;ng, <a href=\"https://mhdpharma.com\">MHD Pharma</a> tự h&agrave;o mang đến sản phẩm đạt chuẩn chất lượng tốt nhất được tinh chế từ đ&ocirc;ng tr&ugrave;ng hạ thảo.</p>','products/April2019/9Tzpp7UVuM2wQ6ovMDR5.png','dong-trung-ha-thao-la-gi-nguon-goc-tu-dau','9000000','Brand','2019-03-29 17:25:07','2019-04-12 04:10:02',NULL,NULL,NULL,NULL),(6,'Chức năng sản phẩm',1,'Sản phẩm cao đặc là sự kết hợp tinh chất Đông trùng hạ thảo và tinh chất nấm linh chi hỗ trợ giúp bồi bổ sức khoẻ và tăng cường sức đề kháng cho cơ thể.',NULL,'<p class=\"MsoNormal\">Sản phẩm cao đặc l&agrave; sự kết hợp tinh chất Đ&ocirc;ng tr&ugrave;ng hạ thảo v&agrave; tinh chất nấm linh chi hỗ trợ gi&uacute;p bồi bổ sức khoẻ v&agrave; tăng cường sức đề kh&aacute;ng cho cơ thể.</p>','products/April2019/OSh4HqgrYSzhIW8NMQ8m.png','chuc-n-ng-san-pham','9000000','Lợi ích','2019-03-29 17:25:07','2019-04-12 03:08:05',NULL,NULL,NULL,NULL),(8,'Quà tặng sức khoẻ cho người thân yêu nhất',3,'Xu hướng quà tặng sức khỏe đang phát triển mạnh mẽ khi mà điều khiện sống ngày một nâng cao và mọi người ngày càng quan tâm bản thân hơn. Vì thế, hôm nay MHD Pharma sẽ gợi ý cho các bạn một số món quà tặng sức khỏe cực kì bổ ích .',NULL,'<p>Xu hướng qu&agrave; tặng sức khỏe đang ph&aacute;t triển mạnh mẽ khi m&agrave; điều khiện sống ng&agrave;y một n&acirc;ng cao v&agrave; mọi người ng&agrave;y c&agrave;ng quan t&acirc;m bản th&acirc;n hơn. V&igrave; thế, h&ocirc;m nay MHD Pharma sẽ gợi &yacute; cho c&aacute;c bạn một số m&oacute;n qu&agrave; tặng sức khỏe cực k&igrave; bổ &iacute;ch.</p>\r\n<h3 style=\"margin-top: 1px;\">Đ&ocirc;ng tr&ugrave;ng hạ thảo - Qu&agrave; tặng sức khoẻ gi&agrave;u năng lượng</h3>\r\n<p>Đ&ocirc;ng tr&ugrave;ng hạ thảo gần đ&acirc;y nổi l&ecirc;n như một hiện tượng qu&agrave; tặng d&agrave;nh cho sức khoẻ qu&yacute; gi&aacute; v&agrave; đắt tiền. Được biết đến với h&agrave;m lượng dược chất v&agrave; khả năng hỗ trợ điều trị nhiều loại bệnh l&yacute; kh&aacute;c nhau. <a href=\"http://greenliving.vip/chi-tiet-san-pham?3&amp;Cao%20Nấm%20Tr&ugrave;ng%20Thảo%20CORDY%20-%20X\">Đ&ocirc;ng tr&ugrave;ng hạ thảo</a> ng&agrave;y c&agrave;ng được nhiều người tin tưởng lựa chọn c&ugrave;ng với tổ yến v&agrave; nh&acirc;n s&acirc;m.</p>\r\n<p>Trong quả thể nấm đ&ocirc;ng tr&ugrave;ng hạ thảo chứa rất nhiều hợp chất polysaccharides c&oacute; t&aacute;c dụng chống oxy ho&aacute; cực mạnh v&agrave; giảm stress; nhờ đ&oacute; gi&uacute;p chống lại qu&aacute; tr&igrave;nh l&atilde;o ho&aacute; sơm. B&ecirc;n cạnh đ&oacute;, <strong>đ&ocirc;ng tr&ugrave;ng hạ thảo Cordy-X</strong> c&ograve;n c&oacute; thể điều ho&agrave; đường huyết, giảm cholesterol v&agrave; tăng cường sức đề kh&aacute;ng</p>\r\n<h3 style=\"margin-top: 1px;\">Tổ yến - Qu&agrave; tặng sức khoẻ tốt cho hệ thần kinh</h3>\r\n<p>Kh&ocirc;ng sai đ&acirc;u nh&eacute;, tổ yến từng được mệnh danh l&agrave; cao lương mĩ vị - tổ yến s&agrave;o được chế biến từ tổ của chim yến. Theo khoa học chứng minh, trong tổ yến s&agrave;o c&oacute; chứa h&agrave;m lượng protein cao, trong đ&oacute; c&oacute; tận 18 loại axit amin, một số axit amin kh&ocirc;ng thể thay thế như cystein, phenylalanine c&oacute; t&aacute;c dụng tăng cường tr&iacute; nhớ, tăng dẫn truyền xung động thần kinh.</p>\r\n<p class=\"MsoNormal\"><span style=\"mso-spacerun: \'yes\'; font-family: Calibri; mso-bidi-font-family: \'Times New Roman\'; font-size: 11.0000pt;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" title=\"qua-tang-suc-khoe-cho-nguoi-than-yeu-nhat-2\" src=\"http://greenliving.vip/storage/products/April2019/qua-tang-suc-khoe-cho-nguoi-than-yeu-nhat-2.jpg\" alt=\"qua-tang-suc-khoe-cho-nguoi-than-yeu-nhat-2\" width=\"750\" /></span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: center;\">Tổ yến. (Ảnh: pinterest)</p>\r\n<h3 class=\"MsoNormal\" style=\"margin-top: 1px;\">Nh&acirc;n s&acirc;m - Qu&agrave; tặng sức khoẻ tốt cho da</h3>\r\n<p>Nh&acirc;n s&acirc;m cũng l&agrave; một loại thảo dược m&agrave; bạn kh&ocirc;ng thể kh&ocirc;ng biết, n&oacute; cũng c&oacute; rất nhiều t&aacute;c dụng hỗ trợ v&agrave; điều trị như tăng sức đề kh&aacute;ng, chống đỡ bệnh tật v&agrave; đặc biệt l&agrave; ngăn ngừa l&atilde;o ho&aacute; da. Đ&acirc;y cũng l&agrave; th&agrave;nh phần ch&iacute;nh được c&aacute;c nh&atilde;n mỹ phẩm ưa chuộng, cực kỳ hiệu quả cho da.</p>\r\n<p class=\"MsoNormal\"><span style=\"mso-spacerun: \'yes\'; font-family: Calibri; mso-bidi-font-family: \'Times New Roman\'; font-size: 11.0000pt;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" title=\"qua-tang-suc-khoe-cho-nguoi-than-yeu-nhat-3\" src=\"http://greenliving.vip/storage/products/April2019/qua-tang-suc-khoe-cho-nguoi-than-yeu-nhat-3.jpg\" alt=\"qua-tang-suc-khoe-cho-nguoi-than-yeu-nhat-3\" width=\"750\" /></span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: right;\"><span style=\"text-align: start;\"><em><strong>Lee</strong></em></span></p>','products/April2019/gzjsB5BugrVPTRjEDys4.jpg','qua-tang-suc-khoe-cho-ng-oi-than-yeu-nhat','9000000','quà tặng','2019-03-29 17:25:07','2019-04-12 04:10:55',NULL,NULL,NULL,NULL),(9,'Làm thế nào để tăng sức đề kháng cho cơ thể',3,'Nếu biết cách phòng tránh và bảo vệ cơ thể từ bên trong bằng việc tăng sức đề kháng thì các loại vi khuẩn, virus có hại sẽ không thể phát huy tác hại khi xâm nhập vào cơ thể bạn.',NULL,'<p>Nếu biết c&aacute;ch ph&ograve;ng tr&aacute;nh v&agrave; bảo vệ cơ thể từ b&ecirc;n trong bằng việc tăng sức đề kh&aacute;ng th&igrave; c&aacute;c loại vi khuẩn, virus c&oacute; hại sẽ kh&ocirc;ng thể ph&aacute;t huy t&aacute;c hại khi x&acirc;m nhập v&agrave;o cơ thể bạn.</p>\r\n<h3 style=\"margin-top: 1px;\"><strong>Cung cấp đầy đủ dưỡng chất thiết yếu cho cơ thể</strong></h3>\r\n<p>Cơ thể sẽ tạo ra kh&aacute;ng thể cần thiết từ c&aacute;c axit amin tiềm ẩn trong c&aacute;c m&oacute;n ăn để chống lại mối đe doạ đối với sức khoẻ. Nguồn cung cấp chất đạm trước ti&ecirc;n l&agrave; thịt. Song sẽ rất tốt, nếu thay thế, cho d&ugrave; một phần - bằng c&aacute;c loại c&aacute;, đậu đỗ, những thực vật c&oacute; củ. Trong thực đơn h&agrave;ng ng&agrave;y cũng kh&ocirc;ng thể thiếu c&aacute;c vitamin v&agrave; c&aacute;c vi kho&aacute;ng. Tr&aacute;i lại cần hạn chế số lượng hydrat-c&aacute;cbon (b&aacute;nh ngọt, vốn k&igrave;m h&atilde;m hoạt động của hệ đề kh&aacute;ng), hạn chế chất b&eacute;o c&oacute; nguồn gốc động vật (thịt mỡ v&agrave; mỡ động vật). Ch&uacute;ng l&agrave;m gia tăng nồng độ cholesteron v&agrave; triglicerit trong m&aacute;u. Những hợp chất đ&oacute; c&agrave;ng nhiều, năng lực ti&ecirc;u diệt vi tr&ugrave;ng của bạch cầu c&agrave;ng thấp.</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" title=\"Thu-gian-cuoi-tuan-12\" src=\"http://greenliving.vip/storage/products/April2019/Tang-cuong-suc-de-khang-1.png\" alt=\"Thu-gian-cuoi-tuan-12\" width=\"750\" /></p>\r\n<p style=\"text-align: center;\">Bổ sung c&aacute;c kho&aacute;ng chất thiết yếu trong c&aacute;c bữa ăn. (Ảnh: webvitamin)</p>\r\n<h3 style=\"margin-top: 1px;\">Hạn chế sử dụng chất k&iacute;ch để tăng sức đề kh&aacute;ng cho cơ thể</h3>\r\n<p>Khi uống rượu v&agrave; h&uacute;t thuốc, cơ thể sẽ mất dần sự tự vệ v&igrave; phải li&ecirc;n tục v&ocirc; hiệu h&oacute;a c&aacute;c th&agrave;nh phần tự do xuất hiện khi h&uacute;t thuốc v&agrave; Vitamin trong cơ thể cũng bị hủy diệt bởi rượu. V&igrave; thế, cố gắng hạn chế h&uacute;t thuốc, bổ sung Vitamin hoặc chỉ n&ecirc;n uống 1 ly rượu vang th&ocirc;i nh&eacute;.</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" title=\"Tang-suc-de-khang-2\" src=\"http://greenliving.vip/storage/products/April2019/Tang-cuong-suc-de-khang-2.png\" alt=\"Tăng sức đề kh&aacute;ng\" width=\"750\" /></p>\r\n<p style=\"text-align: center;\">Hạn chế sử dụng c&aacute;c chất k&iacute;ch th&iacute;ch như thuốc l&aacute;, rượu, bia&hellip; (Ảnh: hellobacsi)</p>\r\n<h3 style=\"margin-top: 1px;\">Tăng cường sức đề kh&aacute;ng cho cơ thể với c&aacute;c loại hoa quả v&agrave; thảo dược tự nhi&ecirc;n</h3>\r\n<p>Một số thảo dược ph&aacute;t huy t&aacute;c dụng k&iacute;ch th&iacute;ch v&agrave; củng cố hệ miễn dịch cơ thể. Thỉnh thoảng cần tận dụng khả năng của ch&uacute;ng. Nhất l&agrave; v&agrave;o những ng&agrave;y thời tiết thất thường, khi ch&uacute;ng ta dễ bị c&uacute;m v&agrave; c&aacute;c bệnh l&acirc;y nhiễm kh&aacute;c.</p>\r\n<p>C&aacute;c loại hoa quả v&agrave; thảo dược tự nhi&ecirc;n tốt nhất với cơ thể để&nbsp;<strong>tăng sức đề kh&aacute;ng&nbsp;</strong>l&agrave;: bưởi, cam, chanh, c&aacute;c sản phẩm chế biến từ nh&acirc;n s&acirc;m, c&acirc;y l&ocirc; hội v&agrave; <a href=\"http://greenliving.vip/san-pham\">Cao Nấm Tr&ugrave;ng Thảo Cordy-X</a> của MHD Pharma.</p>','products/April2019/1auwIMCLiFytxzMdXllm.png','lam-the-nao-de-t-ng-suc-de-khang-cho-c-the','1','Lifestyle','2019-03-29 17:25:07','2019-04-12 04:11:25',NULL,NULL,NULL,NULL),(10,'Phục hồi sức khoẻ với đông trùng hạ thảo',3,'Suy nhược cơ thể, đây là bệnh lý chung trong những ngày nắng nóng đầu hè. Để MHD pharma giới thiệu các bạn cách bảo vệ và phục hồi sức khỏe hiệu quả nhất.',NULL,'<p>Suy nhược cơ thể, đ&acirc;y l&agrave; bệnh l&yacute; chung trong những ng&agrave;y nắng n&oacute;ng đầu h&egrave;. Để MHD pharma giới thiệu c&aacute;c bạn c&aacute;ch bảo vệ v&agrave; phục hồi sức khỏe hiệu quả nhất.</p>\r\n<h3 style=\"margin-top: 1px;\">Nguy&ecirc;n nh&acirc;n dẫn đến suy nhược cơ thể</h3>\r\n<p>Cơ thể bắt đầu l&ecirc;n tiếng khi c&aacute;c bạn l&agrave;m việc qu&aacute; sức, suy nghĩ nhiều, căng thẳng mệt mỏi, nhưng lại kh&ocirc;ng bổ sung đủ dưỡng chất cần thiết. Một điều rất dễ thấy l&agrave; c&aacute;c bạn rất tham việc, kh&ocirc;ng d&agrave;nh thời gian để nghỉ ngơi v&agrave; đặc biệt l&agrave; lười vận động, cũng c&oacute; những bạn suy nhược cơ thể v&igrave; mới hết bệnh hay đang mang thai. Đừng lo nh&eacute;, <a href=\"http://greenliving.vip/san-pham\">Cao nấm tr&ugrave;ng thảo CORDY &ndash; X</a> l&agrave; con cưng của MHD Pharma, hỗ trợ rất tốt trong vấn đề&nbsp;<strong>phục hồi sức khỏe.</strong></p>\r\n<h3 style=\"margin-top: 1px;\">Những điều cần l&agrave;m để phục hồi sức khỏe</h3>\r\n<ol>\r\n<li><strong>Tr&aacute;nh ăn đường v&agrave; nhiều ngũ cốc:&nbsp;</strong>thực phẩm chứa nhiều đường khiến th&acirc;n thể tiết ra nhiều serotonin, g&acirc;y n&ecirc;n t&igrave;nh trạng buồn ngủ. Đặc biệt l&agrave; sau khi thức khuya vẫn cần tiếp tục học tập, th&igrave; n&ecirc;n tr&aacute;nh ăn đồ ngọt, ngũ cốc để kh&ocirc;ng bị ngủ gật.</li>\r\n<li><strong>Bổ sung vitamin B12:&nbsp;</strong>vitamin B12 vốn rất trọng yếu trong việc cung cấp năng lượng cho cơ thể. Thiếu vitamin B12 kh&ocirc;ng chỉ khiến cơ thể c&oacute; cảm gi&aacute;c mệt mỏi, m&agrave; c&ograve;n dẫn đến nhận thức suy giảm, t&acirc;m trạng ủ rũ.</li>\r\n<li>S<strong>ử dụng c&aacute;c thảo dược thi&ecirc;n nhi&ecirc;n:</strong>&nbsp;C&aacute;c loại thảo dược từ thi&ecirc;n nhi&ecirc;n sẽ rất tốt trong qu&aacute; tr&igrave;nh trao đổi chất, v&igrave; thế đ&acirc;y cũng l&agrave; một biện ph&aacute;p phục hồi sức khỏe rất tốt. Lưu &yacute;, t&ugrave;y theo t&igrave;nh trạng thể chất đang bị suy nhược thiếu dưỡng chất n&agrave;o m&igrave;nh bổ sung dưỡng chất đ&oacute;.</li>\r\n</ol>\r\n<h3 style=\"margin-top: 1px;\">Đ&ocirc;ng tr&ugrave;ng hạ thảo c&oacute; t&aacute;c động như thế n&agrave;o đến việc phục hồi sức khỏe</h3>\r\n<p>Đ&ocirc;ng tr&ugrave;ng hạ thảo được xem l&agrave; loại thực phẩm c&acirc;n bằng &acirc;m dương tuyệt đối ph&ugrave; hợp&nbsp;<strong>phục hồi sức khỏe</strong>cho c&aacute;c bạn. Th&ecirc;m v&agrave;o đ&oacute;, những dược chất v&ocirc; c&ugrave;ng qu&yacute; hiếm c&oacute; khả năng gi&uacute;p cơ thể ph&ograve;ng ngừa v&agrave; hỗ trợ điều trị ung thư, Đ&ocirc;ng tr&ugrave;ng hạ thảo trở l&ecirc;n HOT hơn bao giờ hết.</p>\r\n<p>Cao nấm tr&ugrave;ng thảo CORDY&ndash;X của MHD pharma l&agrave; sản phẩm Cao đặc kết hợp giữa tinh chất Đ&ocirc;ng tr&ugrave;ng hạ thảo v&agrave; tinh chất Nấm linh chi, l&agrave; hai loại dược liệu qu&yacute; sử dụng từ rất l&acirc;u trong y học cổ truyền với những b&agrave;i thuốc hỗ trợ&nbsp;<strong>phục hồi sức khoẻ</strong>. Đặc biệt, đ&acirc;y l&agrave; sản phẩm dạng cao rất dễ hấp thụ v&agrave;o cơ thể. Bạn c&oacute; thể t&igrave;m hiểu th&ecirc;m sản phẩm tại Gia đ&igrave;nh Cordy.</p>','products/April2019/mwhBFnhBQATKADLkflww.jpg','phuc-hoi-suc-khoe-voi-dong-trung-ha-thao','1','health tips','2019-03-29 17:25:07','2019-04-12 04:11:50',NULL,NULL,NULL,NULL),(11,'Cách phân loại đông trùng hạ thảo để lựa chọn đúng đắn',3,'Với việc trên thế giới có đến hơn 500 loài trùng thảo khác nhau nhưng không phải loại đông trùng hạ thảo nào cũng được xem là “thần dược” giúp mang lại giá trị bổ ích cho người sử dụng.',NULL,'<p>Với việc tr&ecirc;n thế giới c&oacute; đến hơn 500 lo&agrave;i tr&ugrave;ng thảo kh&aacute;c nhau nhưng kh&ocirc;ng phải loại đ&ocirc;ng tr&ugrave;ng hạ thảo n&agrave;o cũng được xem l&agrave; &ldquo;thần dược&rdquo; gi&uacute;p mang lại gi&aacute; trị bổ &iacute;ch cho người sử dụng.</p>\r\n<h3 style=\"margin-top: 1px;\">Ph&acirc;n loại đ&ocirc;ng tr&ugrave;ng hạ thảo</h3>\r\n<p>Lo&agrave;i &ldquo;ti&ecirc;n dược&rdquo; n&agrave;y được ph&acirc;n loại dựa theo 2 ti&ecirc;u ch&iacute; đ&oacute; l&agrave; theo&nbsp;nguồn gốc xuất xứv&agrave; theo khoa học.</p>\r\n<p><strong>Theo nguồn gốc:</strong></p>\r\n<ul>\r\n<ul>\r\n<li>Tự nhi&ecirc;n: được t&igrave;m thấy chủ yếu tr&ecirc;n c&aacute;c v&ugrave;ng n&uacute;i cao khoảng 4.000m ở cao nguy&ecirc;n T&acirc;y Tạng v&agrave; Tứ Xuy&ecirc;n Trung Quốc.</li>\r\n<li>Nh&acirc;n tạo: tại c&aacute;c nước ph&aacute;t triển v&agrave; đang ph&aacute;t triển như Mỹ, Nhật, H&agrave;n, Th&aacute;i Lan v&agrave; đặc biệt l&agrave; ở Việt Nam, c&aacute;c nh&agrave; khoa học v&agrave; sinh vật học đ&atilde; nghi&ecirc;n cứu v&agrave; nu&ocirc;i trồng th&agrave;nh c&ocirc;ng đ&ocirc;ng tr&ugrave;ng hạ thảo nhờ v&agrave;o c&aacute;c biện ph&aacute;p nh&acirc;n tạo.</li>\r\n</ul>\r\n</ul>\r\n<p><strong>Theo khoa học:</strong></p>\r\n<ul>\r\n<li>Đ&ocirc;ng tr&ugrave;ng hạ thảo: l&agrave; sự kết hợp cộng sinh giữa lo&agrave;i nấm t&uacute;i c&oacute; t&ecirc;n Cordyceps sinensis v&agrave; ấu tr&ugrave;ng s&acirc;u non thuộc chi Hepialus.</li>\r\n<li>Nhộng tr&ugrave;ng thảo hoặc b&aacute;ch tr&ugrave;ng thảo: l&agrave; lo&agrave;i c&acirc;y nấm mọc từ một bộ phận kh&aacute;c của con s&acirc;u v&agrave; th&acirc;n c&acirc;y sẽ c&oacute; m&agrave;u v&agrave;ng ngả hồng.</li>\r\n</ul>\r\n<h3 style=\"margin-top: 1px;\">Đ&ocirc;ng tr&ugrave;ng hạ thảo nu&ocirc;i c&oacute; qu&yacute; như loại tự nhi&ecirc;n?</h3>\r\n<p>Một trong những c&acirc;u hỏi được rất nhiều người d&ugrave;ng quan t&acirc;m đ&oacute; ch&iacute;nh l&agrave; liệu sử dụng đ&ocirc;ng tr&ugrave;ng hạ thảo nu&ocirc;i trồng c&oacute; tốt bằng lo&agrave;i tự nhi&ecirc;n? Theo &yacute; kiến ph&aacute;t biểu tại buổi tọa đ&agrave;m trực tuyến \"Thị trường đ&ocirc;ng tr&ugrave;ng hạ thảo Việt Nam - minh bạch v&agrave; ph&aacute;t triển\" của Tiến Sĩ Phạm Văn Nha &ndash; Gi&aacute;m đốc trung t&acirc;m đấu tranh sinh học của Viện bảo vệ thực phẩm Bộ NNPTNT cho biết, việc so s&aacute;nh đ&ocirc;ng tr&ugrave;ng hạ thảo tự nhi&ecirc;n hay nu&ocirc;i trồng qu&yacute; hơn phụ thuộc rất nhiều v&agrave;o yếu tố m&ocirc;i trường nu&ocirc;i dưỡng như thế n&agrave;o. V&igrave; d&ugrave; c&oacute; lựa chọn được chủng nấm tốt nhưng qu&aacute; tr&igrave;nh nu&ocirc;i cấy c&oacute; m&ocirc;i trường kh&ocirc;ng tốt, sản phẩm cũng kh&ocirc;ng thể n&agrave;o đạt chất lượng tuyệt đối được. &Ocirc;ng cũng n&oacute;i th&ecirc;m, những dược chất c&oacute; trong sản phẩm sẽ dần mất hết chỉ sau 2 th&aacute;ng nếu c&aacute;ch sơ chế kh&ocirc;ng được đảm bảo ở nhiệt độ dưới 50 độ C hoặc c&aacute;ch bảo quản kh&ocirc;ng đ&uacute;ng chuẩn.</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" title=\"phan-loai-dong-trung-ha-thao-2\" src=\"http://greenliving.vip/storage/products/April2019/cach-phan-loai-dong-trung-ha-thao-1.png\" alt=\"ph&acirc;n loại đ&ocirc;ng tr&ugrave;ng ha thao\" width=\"750\" /></p>\r\n<p style=\"text-align: center;\">Cao nấm tr&ugrave;ng thảo Cordy-X &ndash; Sản phẩm đạt điểm chuẩn cho chất lượng (Ảnh: greenliving)</p>\r\n<p>Với c&ocirc;ng nghệ chiết suất nhiệt lạnh v&agrave; c&ocirc; đặc ch&acirc;n kh&ocirc;ng ti&ecirc;n tiến gi&uacute;p giữ nguy&ecirc;n h&agrave;m lượng dược chất c&ugrave;ng d&acirc;y chuyền chiết xuất ph&acirc;n tử hiện đại đến từ H&agrave;n Quốc, C&ocirc;ng ty Cổ phẩn MHD Pharma tự tin mang đến cho kh&aacute;ch h&agrave;ng những sản phẩm lu&ocirc;n đạt chất lượng tuyệt đối từ đ&ocirc;ng tr&ugrave;ng hạ thảo với t&ecirc;n gọi Cao Nấm Tr&ugrave;ng Thảo Cordy-X. Để t&igrave;m hiểu th&ocirc;ng tin chi tiết về sản phẩm, truy cập ngay tại đ&acirc;y:&nbsp;<a style=\"color: #954f72;\" href=\"http://greenliving.vip/san-pham\" target=\"_blank\" rel=\"noopener\">Gia Đ&igrave;nh Cordy.</a></p>','products/April2019/0LlFDV8W3DyNSI11G03J.jpg','cach-phan-loai-dong-trung-ha-thao-de-lua-chon-dung-dan','1','brand','2019-03-29 17:25:07','2019-04-12 04:37:29',NULL,NULL,NULL,NULL),(12,'Đông trùng hạ thảo mua tại Việt Nam có tốt không?',3,'Sản phẩm đông trùng hạ thảo được bán tại thị trường Việt Nam ngày càng nhiều khiến cho người dùng trở nên e ngại khi lựa chọn mua. Vậy Đông trùng hạ thảo Việt Nam có tốt không?',NULL,'<p>Sản phẩm đ&ocirc;ng tr&ugrave;ng hạ thảo được b&aacute;n tại thị trường Việt Nam ng&agrave;y c&agrave;ng nhiều khiến cho người d&ugrave;ng trở n&ecirc;n e ngại khi lựa chọn mua. Vậy Đ&ocirc;ng tr&ugrave;ng hạ thảo Việt Nam c&oacute; tốt kh&ocirc;ng?</p>\r\n<p>Một thử nghiệm v&ocirc; c&ugrave;ng đơn giản l&agrave; khi t&igrave;m kiếm từ kh&oacute;a &ldquo;<a href=\"http://greenliving.vip/chi-tiet-san-pham?3&amp;Cao%20Nấm%20Tr&ugrave;ng%20Thảo%20CORDY%20-%20X\">đ&ocirc;ng tr&ugrave;ng hạ thảo</a>&rdquo; tr&ecirc;n Google, số lượng kết quả trả về nhiều đến nỗi l&agrave;m cho ch&uacute;ng ta cảm thấy đắn đo kh&ocirc;ng biết n&ecirc;n v&agrave;o đường dẫn n&agrave;o để tin tưởng lựa chọn sản phẩm bổ &iacute;ch n&agrave;y.&nbsp;V&agrave; c&acirc;u hỏi&nbsp;được rất nhiều người d&ugrave;ng quan t&acirc;m:&nbsp;Đ&ocirc;ng tr&ugrave;ng hạ thảo mua tại Việt Nam c&oacute; thực sự tốt hay kh&ocirc;ng? Dưới đ&acirc;y l&agrave; những&nbsp;băn khoăn&nbsp;của kh&aacute;ch h&agrave;ng khi quyết định mua loại &ldquo;ti&ecirc;n dược&rdquo; n&agrave;y:</p>\r\n<h3 style=\"margin-top: 1px;\">Vấn đề thường gặp phải khi lựa chọn đ&ocirc;ng tr&ugrave;ng hạ thảo tại Việt Nam</h3>\r\n<p>Mua phải tr&ugrave;ng thảo, kh&ocirc;ng phải Đ&ocirc;ng Tr&ugrave;ng Hạ Thảo: Bởi v&igrave; tr&ecirc;n thế giới c&oacute; đến 507 lo&agrave;i tr&ugrave;ng thảo, tuy nhi&ecirc;n trong số đ&oacute; chỉ c&oacute; một giống lo&agrave;i cordyceps sinensis duy nhất được gọi l&agrave; Đ&ocirc;ng Tr&ugrave;ng Hạ Thảo.</p>\r\n<ul>\r\n<li>T&igrave;nh trạng mua tr&uacute;ng h&agrave;ng giả, h&agrave;ng nh&aacute;i, h&agrave;ng bị r&uacute;t hết dược chất: Rất nhiều đơn vị b&aacute;n h&agrave;ng hiện nay sử dụng c&aacute;ch l&agrave;m giả bằng th&acirc;n củ địa t&agrave;m v&agrave; thạch thảo rồi cắm cỏ v&agrave;o, hoặc l&agrave;m bằng bột ng&ocirc;, thạch cao, bột mạch, con s&acirc;u ch&iacute;t&hellip; một c&aacute;ch v&ocirc; c&ugrave;ng tinh vi khiến người mua h&agrave;ng rất kh&oacute; ph&acirc;n biệt.&nbsp;Thậm ch&iacute;, mua nhầm đ&ocirc;ng tr&ugrave;ng hạ thảo bị r&uacute;t hết dược chất, chỉ c&ograve;n lại x&aacute;c dược liệu.</li>\r\n<li>Mua sản phẩm ở những nơi kh&ocirc;ng c&oacute; tr&igrave;nh độ chuy&ecirc;n m&ocirc;n: Những c&aacute; nh&acirc;n hoạt động nhỏ hay chỉ b&aacute;n h&agrave;ng online kh&ocirc;ng c&oacute; bất kỳ kiến thức chuy&ecirc;n m&ocirc;n n&agrave;o về Đ&ocirc;ng Tr&ugrave;ng Hạ Thảo, đến khi người d&ugrave;ng c&oacute; vấn đề hay muốn tư vấn về thể trạng bệnh cũng kh&ocirc;ng thể.</li>\r\n</ul>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" title=\"dong-trung-ha-thao-viet-nam\" src=\"http://greenliving.vip/storage/products/April2019/Dong-trung-ha-thao-viet-nam1.png\" alt=\"đ&ocirc;ng tr&ugrave;ng hạ thảo việt nam\" width=\"750\" /></p>\r\n<p style=\"text-align: center;\">Lựa chọn Cao Nấm Tr&ugrave;ng Thảo tại MHD Pharma để lu&ocirc;n an t&acirc;m sử dụng.</p>\r\n<h3 style=\"margin-top: 1px;\">N&ecirc;n lựa chọn địa chỉ b&aacute;n h&agrave;ng uy t&iacute;n khi mua đ&ocirc;ng tr&ugrave;ng hạ thảo</h3>\r\n<p>Qua những vấn đề tr&ecirc;n, c&oacute; thể dễ d&agrave;ng nhận thấy, để mua được sản phẩm đ&ocirc;ng tr&ugrave;ng hạ thảo chất lượng v&agrave; an t&acirc;m sử dụng, ch&uacute;ng ta cần phải t&igrave;m hiểu r&otilde; những đơn vị b&aacute;n h&agrave;ng uy t&iacute;n, c&oacute; d&acirc;y chuyền sản xuất hiện đại v&agrave; nguồn gốc xuất xứ sản phẩm r&otilde; r&agrave;ng.</p>\r\n<p>C&oacute; hơn 8 năm kinh nghiệm trong lĩnh vực kinh doanh dược phẩm, C&ocirc;ng ty Cổ Phần <a href=\"https://mhdpharma.com\">MHD Pharma</a> tự h&agrave;o l&agrave; một trong những C&ocirc;ng ty Dược phẩm uy t&iacute;n h&agrave;ng đầu Việt Nam mang đến cho kh&aacute;ch h&agrave;ng những sản phẩm tốt v&agrave; chất lượng nhất hiện nay. Đặc biệt, MHD Pharma đ&atilde; c&ugrave;ng Đại học Thủ Dầu Một, đơn vị c&oacute; d&agrave;y năm nghi&ecirc;n cứu v&agrave; nu&ocirc;i trồng đ&ocirc;ng tr&ugrave;ng hạ thảo, nghi&ecirc;n cứu v&agrave; cho ra mắt th&agrave;nh c&ocirc;ng cao đặc kết hợp giữa tinh chất đ&ocirc;ng tr&ugrave;ng hạ thảo v&agrave; tinh chất nấm linh chi với t&ecirc;n gọi Cao Nấm Tr&ugrave;ng Thảo Cordy-X c&ugrave;ng nhiều c&ocirc;ng dụng vượt trội, đạt chứng nhận danh hiệu c&uacute;p v&agrave;ng &ldquo;Sản phẩm tin cậy, nh&atilde;n hiệu ưa d&ugrave;ng, dịch vụ ho&agrave;n hảo năm 2015&rdquo; của Tạp ch&iacute; sở hữu tr&iacute; tuệ v&agrave; s&aacute;ng tạo.</p>','products/April2019/DIzH68zBaJWiQ0RTFseh.png','dong-trung-ha-thao-mua-tai-viet-nam-co-tot-khong','1','brand','2019-03-29 17:25:07','2019-04-12 04:33:59',NULL,NULL,NULL,NULL),(13,'Sự kết hợp hoàn hảo từ Đông Trùng Hạ Thảo và Nấm Linh Chi',3,'Đã bao giờ bạn nghe loáng thoáng đâu đó cái tên Cao Nấm Trùng Thảo Cordy - X và cảm thấy thắc mắc sản phẩm này liệu có liên quan gì đến đông trùng hạ thảo cũng như công dụng của sản phẩm là gì?',NULL,'<h3 style=\"margin-top: 1px;\"><strong>Cao Nấm Tr&ugrave;ng Thảo Cordy - X l&agrave; g&igrave;?</strong></h3>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0000pt; mso-pagination: none; text-align: justify; text-justify: inter-ideograph;\" align=\"justify\">Cao Nấm Tr&ugrave;ng Thảo Cordy - X l&agrave; sản phẩm cao đặc chứa tinh chất <a href=\"http://greenliving.vip/san-pham\"><u>đ&ocirc;ng tr&ugrave;ng hạ thảo</u></a>&nbsp;v&agrave; tinh chất nấm linh chi. Sản phẩm được nghi&ecirc;n cứu &amp; ph&aacute;t triển, chuyển giao c&ocirc;ng nghệ từ Đại Học Thủ Dầu Một cho c&ocirc;ng ty Cổ Phần MHD Innocare chịu tr&aacute;ch nhiệm chất lượng sản phẩm, c&ocirc;ng bố, ph&acirc;n phối sản phẩm với t&ecirc;n gọi l&agrave; Cao Nấm Tr&ugrave;ng Thảo Cordy-X. Để đảm bảo sản phẩm lu&ocirc;n giữ được h&agrave;m lượng dược chất cao nhất, c&aacute;c nh&agrave; khoa học đ&atilde; rất ch&uacute; trọng đến từng giai đoạn trong qu&aacute; tr&igrave;nh h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển:</p>\r\n<ul>\r\n<li class=\"MsoNormal\" style=\"text-align: justify;\"><!-- [if !supportLists]-->Tuyển chọn v&agrave; nhập khẩu con giống từ ATCC &ndash; Ng&acirc;n h&agrave;ng giống Hoa Kỳ uy t&iacute;n v&agrave; chất lượng nhất thế giới.</li>\r\n<li class=\"MsoNormal\" style=\"text-align: justify;\">M&ocirc;i trường nu&ocirc;i trồng được thiết lập v&ocirc; tr&ugrave;ng, đảm bảo tu&acirc;n thủ nghi&ecirc;m ngặt c&aacute;c ti&ecirc;u ch&iacute; về nhiệt độ, độ ẩm v&agrave; &aacute;nh s&aacute;ng th&ocirc;ng qua một hệ thống gi&aacute;m s&aacute;t tự động giống như m&ocirc;i trường sinh trưởng ngo&agrave;i tự nhi&ecirc;n của đ&ocirc;ng tr&ugrave;ng hạ thảo.</li>\r\n<li class=\"MsoNormal\" style=\"text-align: justify;\">Chỉ sử dụng những quả thể c&ograve;n tươi để chiết xuất v&agrave; tuyệt đối kh&ocirc;ng d&ugrave;ng cồn c&ocirc;ng nghiệp trong qu&aacute; tr&igrave;nh thực hiện.</li>\r\n<li class=\"MsoNormal\">C&ocirc;ng nghệ chiết xuất nhiệt lạnh v&agrave; c&ocirc; đặc ch&acirc;n kh&ocirc;ng cải tiến c&ugrave;ng d&acirc;y chuyền chiết xuất ph&acirc;n tử hiện đại từ H&agrave;n Quốc gi&uacute;p sản phẩm lu&ocirc;n c&oacute; độ h&ograve;a tan v&agrave; thẩm thấu nhanh.</li>\r\n</ul>\r\n<h3 class=\"MsoNormal\" style=\"margin-top: 1px;\"><strong>C&ocirc;ng dụng của sự kết hợp ho&agrave;n hảo giữa tinh chất đ&ocirc;ng tr&ugrave;ng hạ thảo v&agrave; tinh chất nấm linh chi</strong></h3>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0000pt; mso-pagination: none; text-align: justify; text-justify: inter-ideograph;\" align=\"justify\">Sản phẩm Cao Nấm Tr&ugrave;ng Thảo Cordy - X c&oacute; rất nhiều c&ocirc;ng dụng bổ &iacute;ch m&agrave; nổi bật nhất ch&iacute;nh l&agrave;:</p>\r\n<ul>\r\n<li class=\"MsoNormal\" style=\"text-align: justify;\"><!-- [if !supportLists]-->Hỗ trợ bồi bổ sức khỏe, tăng cường sức đề kh&aacute;ng cho cơ thể, rất th&iacute;ch hợp với những người lớn tuổi tong tinh trạng suy nhược, suy dinh dưỡng v&agrave; những người đang điều trị hoặc sau điều trị h&oacute;a &ndash; xạ trị.</li>\r\n<li class=\"MsoNormal\" style=\"text-align: justify;\"><!-- [if !supportLists]-->C&acirc;n bằng cuộc sống, cải thiện t&igrave;nh trạng mất ngủ hay suy nhược thần kinh đối với những người thường xuy&ecirc;n bị &aacute;p lực c&ocirc;ng việc, người bị rối loạn giấc ngủ sinh l&yacute; hay phụ nữ trong giai đoạn tiền m&atilde;n kinh.</li>\r\n<li class=\"MsoNormal\">Thanh lọc cơ thể, chống oxi h&oacute;a dọn sạch gốc tự do v&agrave; bảo vệ gan thận một c&aacute;ch hiệu quả n&ecirc;n được nhiều đối tượng nh&acirc;n vi&ecirc;n văn ph&ograve;ng hay bệnh nh&acirc;n d&ugrave;ng thuốc l&acirc;u ng&agrave;y ưa chuộng v&agrave; sử dụng.</li>\r\n</ul>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" title=\"Su-ket-hop-hoan-hao-tu-dong-trung-ha-thao-va-nam-linh-chi-1\" src=\"http://greenliving.vip/storage/products/April2019/Picture1.png\" alt=\"Su-ket-hop-hoan-hao-tu-dong-trung-ha-thao-va-nam-linh-chi-1\" width=\"750\" height=\"500\" /></p>\r\n<p class=\"MsoNormal\" style=\"text-align: center;\"><em>Cao nấm tr&ugrave;ng thảo Cordy-X &ndash; Sản phẩm đạt điểm chuẩn cho chất lượng</em></p>\r\n<p class=\"MsoNormal\" style=\"text-align: right;\"><strong><em>Lee</em></strong></p>','products/April2019/6QjMLx6JsQKTvMz4fEZd.png','su-ket-hop-hoan-hao-tu-dong-trung-ha-thao-va-nam-linh-chi','1','Brand','2019-04-04 02:55:13','2019-04-12 04:08:41',NULL,NULL,NULL,NULL),(14,'Cao Nấm Trùng Thảo Cordy – X của MHD Pharma có gì đặc biệt?',3,'Giữa vô vàn những địa chỉ rao bán sản phẩm có thành phần đông trùng hạ thảo, việc khách hàng cảm thấy đắn đo và khó lựa chọn là lẽ tất nhiên. Vậy vì sao khách hàng có thể hoàn toàn yên tâm khi tin dùng “tiên dược” đến từ MHD Pharma?',NULL,'<h3 class=\"MsoNormal\" style=\"margin-top: 1px;\"><strong>C&ocirc;ng ty dược phẩm uy t&iacute;n với hơn 8 năm kinh nghiệm</strong></h3>\r\n<p class=\"MsoNormal\">Được th&agrave;nh lập từ năm 2011, C&ocirc;ng ty cổ phần MHD Pharma được xem l&agrave; c&ocirc;ng ty Dược phẩm uy t&iacute;n h&agrave;ng đầu Việt Nam lu&ocirc;n ch&uacute; trọng v&agrave;o chất lượng sản phẩm, hiệu quả điều trị v&agrave; nhu cầu bệnh nh&acirc;n. Sứ mệnh của ch&uacute;ng t&ocirc;i l&agrave; c&ugrave;ng với c&aacute;c chuy&ecirc;n gia chăm s&oacute;c sức khỏe mang lại sự h&agrave;i l&ograve;ng cho kh&aacute;ch h&agrave;ng của m&igrave;nh th&ocirc;ng qua c&aacute;c sản phẩm chăm s&oacute;c sức khỏe chất lượng cao v&agrave; dịch vụ thật ho&agrave;n hảo.</p>\r\n<h3 class=\"MsoNormal\" style=\"margin-top: 1px;\"><strong>Kh&ocirc;ng chỉ đơn giản l&agrave; đ&ocirc;ng tr&ugrave;ng hạ thảo th&ocirc;ng thường</strong></h3>\r\n<p class=\"MsoNormal\">Nếu như những đơn vị sản xuất v&agrave; ph&acirc;n phối kh&aacute;c chỉ tập trung v&agrave;o <a href=\"http://greenliving.vip/\"><u>đ&ocirc;ng tr&ugrave;ng hạ thảo</u></a> th&igrave; MHD Pharma đ&atilde; c&oacute; bước tiến xa hơn về c&ocirc;ng nghệ. MHD Pharma hợp t&aacute;c c&ugrave;ng Đại học Thủ Dầu Một để cho ra mắt th&agrave;nh c&ocirc;ng cao đặc kết hợp giữa tinh chất đ&ocirc;ng tr&ugrave;ng hạ thảo v&agrave; tinh chất nấm linh chi, với t&ecirc;n gọi <strong>Cao Nấm Tr&ugrave;ng Thảo Cordy-X</strong> được rất nhiều người ưa chuộng v&agrave; tin tưởng sử dụng. Chất lượng của sản phẩm đ&atilde; được Tạp ch&iacute; sở hữu tr&iacute; tuệ v&agrave; s&aacute;ng tạo trao tặng danh hiệu c&uacute;p v&agrave;ng &ldquo;Sản phẩm tin cậy, nh&atilde;n hiệu ưa d&ugrave;ng, dịch vụ ho&agrave;n hảo năm 2015&rdquo;.</p>\r\n<h3 class=\"MsoNormal\" style=\"margin-top: 1px;\"><strong>Qu&aacute; tr&igrave;nh sản xuất chất lượng</strong></h3>\r\n<p class=\"MsoNormal\">Với mong muốn mang đến những sản phẩm chất lượng nhất đến với kh&aacute;ch h&agrave;ng, MHD&nbsp;Pharma kết hợp c&ugrave;ng Đại Học Thủ Dầu Một rất ch&uacute; trọng v&agrave;o qu&aacute; tr&igrave;nh sản xuất của m&igrave;nh bằng c&aacute;ch &aacute;p dụng những cải tiến c&ocirc;ng nghệ về chiết xuất nhiệt lạnh v&agrave; c&ocirc; đặc ch&acirc;n kh&ocirc;ng, đảm bảo sản phẩm được nu&ocirc;i cấy trong một m&ocirc;i trường v&ocirc; tr&ugrave;ng y như m&ocirc;i trường sinh trưởng của đ&ocirc;ng tr&ugrave;ng hạ thảo ngo&agrave;i tự nhi&ecirc;n. Chưa dừng lại ở đ&oacute;, c&ocirc;ng ty c&ograve;n sử dụng những trang thiết bị, d&acirc;y chuyền chiết xuất ph&acirc;n tử v&ocirc; c&ugrave;ng hiện đại đến từ H&agrave;n Quốc để sản phẩm c&oacute; độ h&ograve;a tan v&agrave; thẩm thấu nhanh, gi&uacute;p đem lại hiệu quả tối ưu khi sử dụng cho kh&aacute;ch h&agrave;ng.</p>\r\n<p class=\"MsoNormal\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" title=\"Cao-Nam-Trung-Thao-MHD-Pharma-2\" src=\"http://greenliving.vip/storage/products/April2019/Cao-Nam-Trung-Thao-MHD-Pharma-2.jpg\" alt=\"Cao-Nam-Trung-Thao-MHD-Pharma-2\" width=\"750\" /></p>\r\n<p class=\"MsoNormal\" style=\"text-align: center;\"><em>C&ocirc;ng nghệ sản xuất cải tiến c&ugrave;ng d&acirc;y chuyền sản xuất hiện đại gi&uacute;p mang đến sản phẩm lu&ocirc;n đạt chất lượng tốt nhất.</em></p>\r\n<p class=\"MsoNormal\" style=\"mso-pagination: none; text-align: justify; text-justify: inter-ideograph;\" align=\"justify\">H&atilde;y c&ugrave;ng lắng nghe một v&agrave;i &yacute; kiến của người sử dụng để kiểm chứng về chất lượng m&agrave; sản phẩm Cordy-X của <a href=\"http://greenliving.vip\">MHD Pharma</a> mang lại.</p>\r\n<p class=\"MsoNormal\" style=\"mso-pagination: none; text-align: justify; text-justify: inter-ideograph;\" align=\"justify\">Anh Nguyễn Văn Sơn: &ldquo;Trước đ&acirc;y T&ocirc;i thường xuy&ecirc;n bị mất ngủ, ngủ chập chờn kh&ocirc;ng ngon giấc l&agrave;m ảnh hưởng đến c&ocirc;ng việc rất nhiều. T&ocirc;i đ&atilde; sử dụng qua rất nhiều sản phẩm kh&aacute;c những vẫn kh&ocirc;ng thấy cải thiện. Từ khi d&ugrave;ng sản phẩm Cao Nấm Tr&ugrave;ng Thảo CORDY &ndash; X t&ocirc;i thấy ăn ngon, ngủ được, tinh thần minh mẫn hẳn ra. T&ocirc;i sẽ tiếp tục sử dụng sản phẩm.&rdquo;</p>\r\n<p class=\"MsoNormal\" style=\"mso-pagination: none; text-align: justify; text-justify: inter-ideograph;\" align=\"justify\">Chị Trương B&ugrave;i Nhi: &ldquo;Người nh&agrave; t&ocirc;i vừa trải qua ca mổ, sức khoẻ suy giảm hẳn, ăn kh&ocirc;ng ngon n&ecirc;n sức khoẻ ng&agrave;y c&agrave;ng suy kiệt. T&ocirc;i được bạn b&egrave; giới thiệu sản phẩm <a href=\"http://greenliving.vip/san-pham\">Cao Nấm Tr&ugrave;ng Thảo CORDY &ndash; X</a> v&agrave; mua cho người nh&agrave; d&ugrave;ng thử. Sau khi d&ugrave;ng khoảng 1 tuần, người nh&agrave; t&ocirc;i sức khoẻ phục hồi r&otilde; rệt, ăn uống cũng ngon miệng hơn n&ecirc;n da dẻ bắt đầu hồng h&agrave;o trở lại, cả nh&agrave; t&ocirc;i ai nấy cũng mừng. Gia đ&igrave;nh t&ocirc;i sẽ tiếp tục sử dụng sản phẩm&rdquo;.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: right;\" align=\"justify\"><em><strong>Lee</strong></em></p>','products/April2019/kC46FvwBdo2P7lsGC8wA.jpg','cao-nam-trung-thao-cordy-x-cua-mhd-pharma-co-gi-dac-biet','1','Brand','2019-04-04 03:32:07','2019-04-12 04:07:13',NULL,NULL,NULL,NULL),(15,'Cao Nấm Trùng Thảo Cordy - X là gì?',3,'Cao nấm trùng thảo Cordy – X một cái tên nghe có vẻ rất lạ đúng không? Thế nên, hôm nay MHD Pharma sẽ chia sẽ về loại cao này để các bạn hiểu rõ hơn về nó nhé.',NULL,'<h3 class=\"MsoNormal\" style=\"margin-top: 1px;\"><strong>Về Cao Nấm Tr&ugrave;ng Thảo Cordy-X</strong></h3>\r\n<p>Chắc hẳn bạn đ&atilde; qu&aacute; quen thuộc với hai c&aacute;i t&ecirc;n &ldquo;Đ&ocirc;ng tr&ugrave;ng hạ Thảo&rdquo; v&agrave; &ldquo;Nấm Linh chi&rdquo; rồi đ&uacute;ng kh&ocirc;ng v&agrave; cũng kh&ocirc;ng thể phủ nhận c&ocirc;ng dụng tuyệt vời đối với sức khỏe từ hai loại thảo dược n&agrave;y. V&igrave; thế, MHD Pharma đ&atilde; cho ra đời một sản phẩm với sự kết hợp những điều tuyệt vời nhất từ hai dược liệu n&agrave;y. Vậy sự kết hợp n&agrave;y như thế n&agrave;o? M&igrave;nh c&ugrave;ng t&igrave;m hiểu nh&eacute;.</p>\r\n<p>Đ&ocirc;ng tr&ugrave;ng hạ thảo sau khi được nu&ocirc;i cấy trong điều kiện ti&ecirc;u chuẩn nghi&ecirc;m khắc sẽ được chiết xuất bằng cồn thực phẩm với c&ocirc;ng nghệ chiết xuất lạnh hiện đại từ H&agrave;n Quốc gi&uacute;p giữ nguy&ecirc;n h&agrave;m lượng dược chất vừa gi&uacute;p cơ thể dễ d&agrave;ng hấp thu. Sau đ&oacute; được tinh chế th&agrave;nh tinh chất cao đặc. Mỗi lọ chứa 1,25 g tinh chất Đ&ocirc;ng tr&ugrave;ng hạ thảo cần 7,5 kg Đ&ocirc;ng tr&ugrave;ng hạ thảo tươi.</p>\r\n<p>Nấm Linh Chi cũng được chiếc xuất từ quả thể Nấm linh chi th&ocirc;ng qua quy tr&igrave;nh kiểm tra đầu v&agrave;o chất lượng Nấm đạt ti&ecirc;u chuẩn quốc tế, cho ra tinh chất cao đặc giữ nguy&ecirc;n h&agrave;m lược dược chất. Mỗi lọ chứa 12,50 g tinh chất Nấm linh chi cần đến 0,5 kg Nấm linh chi kh&ocirc;.</p>\r\n<p><strong>Cao nấm tr&ugrave;ng thảo cordy-X</strong>&nbsp;l&agrave; một sản phẩm kết hợp từ những tinh t&uacute;y nhất của hai &ldquo;Ti&ecirc;n dược&rdquo;, để c&oacute; thể gửi đến Bạn một lọ Cao chất lượng l&agrave; cả một qu&aacute; tr&igrave;nh nghi&ecirc;n cứu từ c&aacute;c nh&agrave; nghi&ecirc;n cứu h&agrave;ng đầu Việt Nam.</p>\r\n<h3 class=\"MsoNormal\" style=\"margin-top: 1px;\"><strong>Sự kh&aacute;c biệt của Cao Nấm tr&ugrave;ng thảo Cordy-X đến từ MHD PHARMA</strong></h3>\r\n<p>Song song với những c&ocirc;ng tr&igrave;nh ph&aacute;t triển của c&ocirc;ng nghệ, b&ecirc;n cạnh đ&oacute; c&aacute;c lại vi khuẩn c&oacute; hại cũng ng&agrave;y c&agrave;ng th&ocirc;ng minh hơn, để th&iacute;ch nghi với m&ocirc;i trường sống. Ch&iacute;nh v&igrave; thế, xuất ph&aacute;t từ những b&acirc;n khu&acirc;n lo lắng cho sức khỏe chung của cộng đồng m&agrave; đội ngũ nghi&ecirc;n cứu của MHD Pharma đ&atilde; ấp ủ giấc mơ được chung tay cải thiện v&agrave; bảo vệ sức khỏe cho c&ocirc;ng đồng.</p>\r\n<p>Sự kh&aacute;c biệt về c&ocirc;ng nghệ, lựa chọn v&agrave; s&agrave;n lọc để cho ra những sản phẩm nấm linh chi v&agrave; <a href=\"http://greenliving.vip/san-pham\">đ&ocirc;ng tr&ugrave;ng hạ thảo</a> đạt chuẩn về nu&ocirc;i cấy lẫn c&aacute;ch thức chế tạo. N&oacute;i kh&ocirc;ng tuyệt đối với thuốc bảo vệ thực vật v&agrave; thuốc tăng trưởng.</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" title=\"Cao-nam--trung-thao-cordy-x-1\" src=\"http://greenliving.vip/storage/products/April2019/Dong-trung-ha-thao-cordy-x-gioi-thieu-2.png\" alt=\"Cao-nam--trung-thao-cordy-x-1\" width=\"500\" /></p>\r\n<p style=\"text-align: center;\"><em>Cao nấm tr&ugrave;ng thảo Cordy - X MHD Pharma.</em></p>\r\n<p>Nu&ocirc;i trồng trong điều kiện &aacute;nh s&aacute;ng ti&ecirc;u chuẩn, nấm trong qu&aacute; tr&igrave;nh sinh trưởng đều được theo d&otilde;i, chăm s&oacute;c từng li, để nấm đạt được chất lượng ho&agrave;n hảo nhất.</p>\r\n<p>C&ocirc;ng nghệ tinh chế ra sản phẩm cuối đến tay người ti&ecirc;u d&ugrave;ng lu&ocirc;n đảm bảo về chất lượng, từ kh&acirc;u v&ocirc; trung, đến kh&acirc;u đ&oacute;ng g&oacute;i. Thật sự, khi tạo ra một sản phẩm mang t&iacute;nh chất &yacute; nghĩa về sức khỏe thật sự kh&ocirc;ng dễ d&agrave;ng ch&uacute;t n&agrave;o. Nhưng xuất ph&aacute;t từ tr&aacute;i tim, <a href=\"http://greenliving.vip/gioi-thieu\">MHD pharma</a> đ&atilde; mang đến một sản phẩm kh&ocirc;ng chỉ tốt cho sức khỏe m&agrave; c&ograve;n mang gi&aacute; trị về cộng đồng</p>\r\n<p class=\"MsoNormal\" style=\"text-align: right;\"><em><strong>Lee</strong></em></p>','products/April2019/pZebbN7Qh1nh6S9zdqC8.jpg','cao-nam-trung-thao-cordy-x-la-gi','1','Brand','2019-04-04 03:19:39','2019-04-12 04:31:11',NULL,NULL,NULL,NULL),(16,'Công dụng của Cao Nấm Trùng Thảo Cordy - X',3,'Cao nấm trùng thảo cordy-X không phải ngẫu nhiên mà có được tác dụng ưu việt đến thế. Tác dụng ấy được thể hiện qua cách dùng và tính năng vượt trội của hai loại thảo dược quý.',NULL,'<h3 class=\"MsoNormal\" style=\"margin-top: 1px;\"><strong>Cao nấm tr&ugrave;ng thảo cordy-X c&oacute; t&aacute;c dụng như thế n&agrave;o?&nbsp;</strong></h3>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0000pt; mso-pagination: none; text-align: justify; text-justify: inter-ideograph; vertical-align: baseline;\" align=\"justify\">Mang trong m&igrave;nh nhiều kho&aacute;ng chất v&agrave; c&aacute;c chất dinh dưỡng tuyệt vời. <a href=\"http://greenliving.vip/san-pham\">Cao nấm tr&ugrave;ng thảo Cordy-X</a> thật sự tốt trong việc bồi bổ sức khỏe, gi&uacute;p tăng sức dề kh&aacute;ng đối với c&aacute;c bạn n&agrave;o vừa mới hết bệnh hay cơ địa vốn dĩ kh&ocirc;ng sản sinh ra sức đề kh&aacute;ng. B&ecirc;n cạnh đ&oacute;, với những bạn n&agrave;o l&agrave;m việc hay căng thẳng mệt mỏi, th&igrave; việc d&ugrave;ng một &iacute;t cao nấm tr&ugrave;ng thảo v&agrave;o buổi s&aacute;ng sẽ gi&uacute;p cơ thể hấp thụ nhiều kho&aacute;ng chất, giảm căng thẳng mệt mỏi. Nếu bạn c&oacute; triệu chứng mất ngủ th&igrave; d&ugrave;ng trước 5p sẽ gi&uacute;p bạn c&oacute; một giấc ngủ s&acirc;u v&agrave; ngon giấc hơn.&nbsp;Đặc biệt, cao nấm tr&ugrave;ng thảo c&ograve;n c&oacute; khả năng giảm cholesterol trong cơ thể, gi&uacute;p ph&ograve;ng ngừa c&aacute;c bệnh về tim mạch rất tốt.&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0000pt; mso-pagination: none; text-align: justify; text-justify: inter-ideograph; vertical-align: baseline;\" align=\"justify\">&nbsp;</p>\r\n<p class=\"MsoNormal\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" title=\"Cong-dung-cua-cao-nam-trung-thao\" src=\"http://greenliving.vip/storage/products/April2019/Cong-dung-cua-cao-nam-trung-thao-1.jpg\" alt=\"Cong-dung-cua-cao-nam-trung-thao\" width=\"750\" height=\"500\" /></p>\r\n<p class=\"MsoNormal\" style=\"text-align: center;\"><em>C&ocirc;ng nghệ </em><em>sản xuất lạnh v&agrave; tiệt tr&ugrave;ng nghi&ecirc;m ngặc.</em></p>\r\n<h3 class=\"MsoNormal\" style=\"margin-top: 1px;\">C&aacute;ch sử dụng Cao nấm tr&ugrave;ng thảo Cordy-X</h3>\r\n<p class=\"MsoNormal\">Cao nấm tr&ugrave;ng thảo Cordy-X c&oacute; 2 c&aacute;nh sử dụng ch&iacute;nh. Đ&oacute; l&agrave; bạn c&oacute; thể ngậm trực tiếp cao, để cao tan dần v&agrave; lan tỏa vị thơm của cao. Nếu bạn c&oacute; nhiều thời gian hơn, th&igrave; c&oacute; thể pha cao với nước ấm, h&ograve;a tan v&agrave; thưởng thức như một t&aacute;ch tr&agrave; v&agrave;o buổi s&aacute;ng sớm. Mỗi ng&agrave;y, m&igrave;nh sẽ sử dụng 1 đến 2 lần, lưu &yacute; l&agrave; trước bữa ăn 30p nh&eacute;. C&aacute;c bạn y&ecirc;n t&acirc;m về việc, cao sẽ kh&oacute; tan hay mất dưỡng chất v&igrave; d&acirc;y chuyền chiết xuất PH&Acirc;N TỬ hiện đại đến từ H&agrave;n Quốc sẽ gi&uacute;p sản phẩm c&oacute; độ h&ograve;a tan cao v&agrave; thẩm thấu v&agrave;o cơ thể nhanh hơn.</p>\r\n<p class=\"MsoNormal\"><strong>Cao Nấm TR&ugrave;ng Thảo CORDY&ndash;X</strong><strong>&nbsp;</strong>th&iacute;ch hợp cho c&aacute;c đối tượng l&agrave; nh&acirc;n vi&ecirc;n văn ph&ograve;ng, thường hay căng thẳng v&igrave; c&ocirc;ng việc bận rộn, &iacute;t vận động, sức đề kh&aacute;ng yếu, bị rối loạn giấc ngủ do &aacute;p lực c&ocirc;ng việc hay người mất ngủ do bệnh l&yacute;. Đặc biệt, l&agrave; c&aacute;c đối tượng đang điều trị hoặc sau điều trị h&oacute;a trị hay xạ trị.&nbsp;</p>\r\n<p class=\"MsoNormal\" style=\"text-align: right;\"><em><strong>Lee</strong></em></p>','products/April2019/IYEIoBikENl6xVhWPbpn.png','cong-dung-cua-cao-nam-trung-thao-cordy-x','1','Brand','2019-04-04 04:32:20','2019-04-12 04:16:56',NULL,NULL,NULL,NULL),(17,'Cải thiện làn da từ bên trong',3,'Đã bao giờ các bạn lắng nghe làn da mình lên tiếng chưa? Nghe có vẻ lạ, nhưng những gì da đang thể hiện là có nguyên nhân. Cùng MHD Pharma tìm hiểu những điều làn da muốn nói nhé.',NULL,'<p>Đ&atilde; bao giờ c&aacute;c bạn lắng nghe l&agrave;n da m&igrave;nh l&ecirc;n tiếng chưa? Nghe c&oacute; vẻ lạ, nhưng những g&igrave; da đang thể hiện l&agrave; c&oacute; nguy&ecirc;n nh&acirc;n. C&ugrave;ng MHD Pharma t&igrave;m hiểu những điều l&agrave;n da muốn n&oacute;i nh&eacute;.</p>\r\n<h3 class=\"MsoNormal\" style=\"margin-top: 1px;\">B&aacute;o động đỏ về sức khỏe đến từ l&agrave;n da</h3>\r\n<p class=\"15\" style=\"margin-left: 0.0000pt; mso-pagination: none; text-align: justify; text-justify: inter-ideograph;\" align=\"justify\">MHD Pharma n&oacute;i nghe c&aacute;i n&agrave;y n&egrave;! Da l&agrave; lớp ph&ograve;ng vệ cuối c&ugrave;ng của cơ thể khỏi c&aacute;c t&aacute;c nh&acirc;n g&acirc;y hại b&ecirc;n ngo&agrave;i. Điều n&agrave;y c&oacute; nghĩa khi da c&aacute;c bạn xuất hiện những nếp nhăn, mụn hay nổi mẩn đỏ. Đ&oacute; ch&iacute;nh l&agrave; l&uacute;c l&agrave;n da đang l&ecirc;n tiếng, v&agrave; cần được cải thiện từ b&ecirc;n ngo&agrave;i lẫn b&ecirc;n trong cơ thể.</p>\r\n<p class=\"MsoNormal\">V&iacute; dụ: khi bạn bị stress, căng thẳng qu&aacute; độ, da sẽ xuất hiện nếp nhăn. Cơ thể kh&ocirc;ng đủ nước, da sẽ xuất hiện t&igrave;nh trạng kh&ocirc;, bong da; đặc biệt l&agrave; v&ugrave;ng da m&ocirc;i, v&agrave; t&aacute;c nh&acirc;n mạnh mẽ nhất mất thẩm mỹ nhất đ&oacute; ch&iacute;nh l&agrave; MỤN.&nbsp;Thế n&ecirc;n, đừng để c&aacute;c t&igrave;nh trạng n&agrave;y k&eacute;o d&agrave;i, m&agrave; khi n&oacute; mới ở mức b&aacute;o động th&ocirc;i th&igrave; phải t&igrave;m ngay c&aacute;ch để <strong>cải thiện l&agrave;n da </strong>nh&eacute;.</p>\r\n<h3 class=\"MsoNormal\" style=\"margin-top: 1px;\"><strong>L&agrave;m thế n&agrave;o để cải thiện l&agrave;n da từ b&ecirc;n trong c&ugrave;ng MHD Pharma</strong></h3>\r\n<p class=\"MsoNormal\">L&agrave;n da chỉ rạng ngời bền vững khi cơ thể thật sự khỏe mạnh từ b&ecirc;n trong. Do đ&oacute;, b&ecirc;n cạnh c&aacute;c h&igrave;nh thức bảo vệ từ b&ecirc;n ngo&agrave;i, c&aacute;c bạn cũng cần chăm s&oacute;c&nbsp;cấu tr&uacute;c nền cũng như hỗ trợ &ldquo;hệ trục v&agrave;ng&rdquo; l&agrave; &ldquo;n&atilde;o bộ - tuyến y&ecirc;n - buồng trứng&rdquo; hoạt động tốt ngay khi bước qua tuổi 30.</p>\r\n<p class=\"MsoNormal\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" title=\"Cai-thien-lan-da-tu-ben-trong-1\" src=\"http://greenliving.vip/storage/products/April2019/cai-thien-lan-da-mun-1.jpg\" alt=\"Cai-thien-lan-da-tu-ben-trong-1\" width=\"750\" height=\"500\" /></p>\r\n<p class=\"MsoNormal\" style=\"text-align: center;\">Lắng nghe l&agrave;n da từ b&ecirc;n trong. (<em>Ảnh: dantri</em>)</p>\r\n<p class=\"MsoNormal\">Khoa học hiện đại ng&agrave;y c&agrave;ng c&oacute; những bước ph&aacute;t triển để t&igrave;m ra c&aacute;c giải ph&aacute;p l&agrave;m chậm l&atilde;o h&oacute;a, duy tr&igrave; sự tươi trẻ của l&agrave;n da cũng như bảo vệ sức khỏe to&agrave;n th&acirc;n. Hiện nay, trong khi thảo dược truyền thống d&agrave;nh ri&ecirc;ng cho ph&aacute;i đẹp như nh&acirc;n s&acirc;m hay tổ yến đ&atilde; qu&aacute; quen thuộc trong việc cải thiện l&agrave;n da, th&igrave; b&ecirc;n cạnh đ&oacute; <a href=\"http://greenliving.vip/san-pham\">Cao Nấm Tr&ugrave;ng Thảo CORDY &ndash; X</a> đang l&agrave; sự lựa chọn để bảo vệ v&agrave; cải thiện da từ b&ecirc;n trong v&ocirc; c&ugrave;ng xuất sắc lu&ocirc;n nh&eacute;.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: right;\"><em><strong>Lee</strong></em></p>','products/April2019/WMX0vev87nn7y5GQizvd.jpg','cai-thien-lan-da-tu-ben-trong','1','Health tips','2019-04-04 05:01:45','2019-04-12 04:06:00',NULL,NULL,NULL,NULL),(18,'Những cô nàng độc thân quyến rũ',3,'Cuộc sống “ĐỘC THÂN” tẻ nhạt và buồn chán lắm ư? Không hề đâu nhé, hỡi các cô nàng đang ngồi than thở ngoài kia, hãy cùng MHD Pharma khám phá cuộc sống “ĐỘC THÂN” tràn đầy sức sống nào.',NULL,'<p>Cuộc sống &ldquo;ĐỘC TH&Acirc;N&rdquo; tẻ nhạt v&agrave; buồn ch&aacute;n lắm ư? Kh&ocirc;ng hề đ&acirc;u nh&eacute;, hỡi c&aacute;c c&ocirc; n&agrave;ng đang ngồi than thở ngo&agrave;i kia, h&atilde;y c&ugrave;ng MHD Pharma kh&aacute;m ph&aacute; cuộc sống &ldquo;ĐỘC TH&Acirc;N&rdquo; tr&agrave;n đầy sức sống n&agrave;o.&nbsp;</p>\r\n<h3 class=\"MsoNormal\" style=\"margin-top: 1px;\"><strong>Buổi s&aacute;ng c&ugrave;ng c&ocirc; n&agrave;ng &ldquo;Độc th&acirc;n năng lượng&rdquo;</strong></h3>\r\n<p class=\"MsoNormal\" style=\"mso-pagination: none; text-align: justify; text-justify: inter-ideograph;\" align=\"justify\">Kh&ocirc;ng c&oacute; g&igrave; quan trọng bằng việc tự cung cấp cho m&igrave;nh một nguồn năng lượng t&iacute;ch cực,v&igrave; thế buổi s&aacute;ng sẽ l&agrave; thời gian ho&agrave;n hảo nhất, để c&aacute;c c&ocirc; n&agrave;ng độc th&acirc;n thu nạp nguồn năng lượng ấy bằng việc</p>\r\n<ul>\r\n<li class=\"MsoNormal\" style=\"mso-pagination: none; text-align: justify; text-justify: inter-ideograph;\"><!-- [if !supportLists]-->Thức dậy sớm, h&iacute;t thở kh&ocirc;ng kh&iacute; trong l&agrave;nh, tập yoga hay những b&agrave;i thể dục nhẹ để n&acirc;ng cao thể chất v&agrave; thưởng thức một t&aacute;ch caf&eacute; nơi g&oacute;c phố nhỏ. E h&egrave;m!!! Lưu &yacute; c&aacute;i n&agrave;y d&agrave;nh cho những c&ocirc; n&agrave;ng kh&ocirc;ng lười th&ocirc;i nha.</li>\r\n<li class=\"MsoNormal\">Với c&ocirc; n&agrave;ng bận rộn, th&igrave; đừng n&ecirc;n bỏ bữa s&aacute;ng v&igrave; n&oacute; sẽ khiến bạn kh&ocirc;ng c&oacute; đủ năng lượng cho một ng&agrave;y d&agrave;i l&agrave;m việc.</li>\r\n</ul>\r\n<h3 class=\"MsoNormal\" style=\"margin-top: 1px;\"><strong>Buổi Trưa c&ugrave;ng c&ocirc; n&agrave;ng &ldquo;Độc th&acirc;n tinh tế&rdquo;&nbsp;</strong></h3>\r\n<p class=\"MsoNormal\">Trưa sẽ l&agrave; khoảng thời gian c&aacute;c c&ocirc; n&agrave;ng lựa chọn m&oacute;n ăn sao cho thật tinh tế, để giữ vững nguồn năng lượng từ buổi s&aacute;ng. Thực đơn kh&ocirc;ng cần qu&aacute; cầu k&igrave;, chỉ cần đảm bảo đầy đủ dưỡng chất thiết yếu th&ocirc;i.Tr&aacute;nh những thực phẩm nhiều dầu mỡ sẽ dễ l&ecirc;n mụn v&agrave; đặc biệt phải uống đủ nước.</p>\r\n<p class=\"MsoNormal\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" title=\"Nhung-co-nang-doc-than-quyen-ru-2\" src=\"http://greenliving.vip/storage/products/April2019/Nhung-co-nang-doc-than-quyen-ru-2.png\" alt=\"Nhung-co-nang-doc-than-quyen-ru-2\" width=\"750\" /></p>\r\n<p class=\"MsoNormal\" style=\"text-align: center;\">Tr&aacute;nh những thức ăn chứa nhiều dầu mỡ. (<em>Ảnh: gramcik</em>)</p>\r\n<h3 class=\"MsoNormal\" style=\"margin-top: 1px;\"><strong>Buổi Chiều c&ugrave;ng c&ocirc; n&agrave;ng &ldquo;Độc th&acirc;n m&agrave;u sắc&rdquo;&nbsp;</strong></h3>\r\n<p class=\"MsoNormal\" style=\"mso-pagination: none; text-align: justify; text-justify: inter-ideograph;\" align=\"justify\">&ldquo;Cứ đến chiều l&agrave; <a href=\"http://greenliving.vip/tin-tuc-va-su-kien?cai-thien-lan-da-tu-ben-trong\">l&agrave;n da</a> sạm hẳn, kh&ocirc;ng c&ograve;n tươi như buổi sớm mai?&rdquo; đ&oacute; l&agrave; v&igrave; c&aacute;c nguy&ecirc;n nh&acirc;n:</p>\r\n<ul>\r\n<li class=\"MsoNormal\" style=\"mso-pagination: none; text-align: justify; text-justify: inter-ideograph;\">Sau một ng&agrave;y hoạt động, nếu kh&ocirc;ng bổ sung cho cơ thể những dưỡng chất thiết yếu, da sẽ rất dễ sạm v&agrave; đặc biệt tr&ocirc;ng rất thiếu sức sống.</li>\r\n<li class=\"MsoNormal\" style=\"mso-pagination: none; text-align: justify; text-justify: inter-ideograph;\">Kh&ocirc;ng cung cấp đủ nước cho cơ thể.</li>\r\n</ul>\r\n<p class=\"MsoNormal\">Một điều quan trọng l&agrave; &ldquo;Đừng để phai m&agrave;u makeup&rdquo;. T&ocirc; lại t&iacute; son th&ocirc;i l&agrave; đủ rồi.</p>\r\n<p class=\"MsoNormal\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" title=\"Cai-thien-lan-da-tu-ben-trong-2\" src=\"http://greenliving.vip/storage/products/April2019/Cai-thien-lan-da-tu-ben-trong-2.jpg\" alt=\"Cai-thien-lan-da-tu-ben-trong-2\" width=\"750\" /></p>\r\n<p class=\"MsoNormal\" style=\"text-align: center;\">Sự tươi trẻ đến từ l&agrave;n da.</p>\r\n<h3 class=\"MsoNormal\" style=\"margin-top: 1px;\"><strong>Buổi tối c&ugrave;ng c&ocirc; n&agrave;ng &ldquo;Độc th&acirc;n quyến rũ&rdquo;&nbsp;</strong></h3>\r\n<p class=\"MsoNormal\" style=\"mso-pagination: none; text-align: justify; text-justify: inter-ideograph;\" align=\"justify\">H&atilde;y trở n&ecirc;n quyến rũ bằng việc tạo cho m&igrave;nh một phong c&aacute;ch sống thật khỏe mạnh v&agrave; hiểu được những g&igrave; cơ thể m&igrave;nh muốn n&oacute;i. Buổi tối sẽ l&agrave; thời điểm m&agrave; cơ thể cần được thư gi&atilde;n. C&aacute;c c&ocirc; n&agrave;ng, n&ecirc;n kh&eacute;p lại c&ocirc;ng việc v&agrave; chia sẽ những điều l&agrave;m bạn đau đầu c&ugrave;ng nh&oacute;m bạn th&acirc;n v&igrave; đ&ocirc;i khi bạn sẽ cần một lời khuy&ecirc;n từ ai đ&oacute;.</p>\r\n<p class=\"MsoNormal\">Con g&aacute;i độc th&acirc;n kh&ocirc;ng buồn tẻ đ&acirc;u nh&eacute;. Ngo&agrave;i những việc m&agrave; c&aacute;c c&ocirc; n&agrave;ng n&ecirc;n l&agrave;m th&igrave; việc t&igrave;m cho m&igrave;nh một loại&nbsp;thảo&nbsp;dược bổ sung năng lương cho cơ thể l&agrave; kh&ocirc;ng thể thiếu. V&iacute; dụ như những&nbsp;thảo&nbsp;dược tốt cho da, trong đ&oacute; c&aacute;c c&ocirc; n&agrave;ng đ&atilde; biết đến đ&ocirc;ng tr&ugrave;ng hạ thảo chưa? Nếu c&aacute;c c&ocirc; n&agrave;ng c&ograve;n lăn&nbsp;tăn&nbsp;chưa hiểu th&igrave; n&ecirc;n t&igrave;m hiểu ngay tại <a href=\"http://greenliving.vip\">MHD Pharma</a>&nbsp;nha.</p>\r\n<p class=\"MsoNormal\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" title=\"Nhung-co-nang-doc-than-quyen-ru-4\" src=\"http://greenliving.vip/storage/products/April2019/Nhung-co-nang-doc-than-quyen-ru-4.png\" alt=\"Nhung-co-nang-doc-than-quyen-ru-4\" width=\"750\" /></p>\r\n<p class=\"MsoNormal\" style=\"text-align: center;\">Độc th&acirc;n quyến rũ.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: right;\"><em><strong>Lee</strong></em></p>','products/April2019/TKZDgRTiQv98IzjcHpev.png','nhung-co-nang-doc-than-quyen-r','1','Lifestyle','2019-04-04 06:20:12','2019-04-12 04:05:18',NULL,NULL,NULL,NULL),(19,'Lựa chọn của phụ nữ hiện đại',3,'Điều thiết yếu nhất của một người phụ nữ hiện đại là nên biết cách tự chăm sóc bản thân, chủ động về tài chính và đặc biệt là phải quyết đoán. Hãy cùng MHD Pharma trải nghiệm điều này nhé.',NULL,'<p>Điều thiết yếu nhất của một người phụ nữ hiện đại l&agrave; n&ecirc;n biết c&aacute;ch tự chăm s&oacute;c bản th&acirc;n, chủ động về t&agrave;i ch&iacute;nh v&agrave; đặc biệt l&agrave; phải quyết đo&aacute;n. H&atilde;y c&ugrave;ng MHD Pharma trải nghiệm điều n&agrave;y nh&eacute;.</p>\r\n<h3 class=\"MsoNormal\" style=\"margin-top: 1px;\"><strong>Xu hướng sống của Phụ nữ hiện đại</strong></h3>\r\n<p class=\"MsoNormal\">Định nghĩa về một người <strong>phụ nữ hiện đại</strong>&nbsp;thật sự rất mong lung v&agrave; lạ lẫm. Nhưng đối với những d&ograve;ng chia sẻ của c&aacute;c c&ocirc; n&agrave;ng Paris trong cuốn cẩm nang &rdquo;Sống như người Paris&rdquo; đ&atilde; gi&uacute;p cho <a href=\"http://greenliving.vip/\">MHD&nbsp;Pharma</a>&nbsp;nhận ra &nbsp;rằng: một người phụ nữ hiện đại, xu hướng sống của họ kh&ocirc;ng qu&aacute; cao si&ecirc;u, chỉ l&agrave; họ <strong>sống c&acirc;n bằng - xanh sức khỏe</strong>, d&agrave;nh nhiều thời gian hơn để chăm s&oacute;c cho bản th&acirc;n v&agrave; đặc biệt họ rất l&yacute; tr&iacute; v&agrave; quyết đoạn nhưng đ&ocirc;i l&uacute;c cũng thật sự đi&ecirc;n rồ.</p>\r\n<p class=\"MsoNormal\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" title=\"Phu-nu-hien-dai-2\" src=\"http://greenliving.vip/storage/products/April2019/Phu-nu-hien-dai-2.png\" alt=\"Phu-nu-hien-dai-2\" width=\"750\" /></p>\r\n<p class=\"MsoNormal\" style=\"text-align: center;\">Phải lu&ocirc;n xinh đẹp, kh&ocirc;ng phụ thuộc v&agrave;o người kh&aacute;c.</p>\r\n<h3 class=\"MsoNormal\" style=\"margin-top: 1px;\"><strong>Phong c&aacute;ch sống của Phụ nữ hiện đại</strong></h3>\r\n<p class=\"MsoNormal\">Đối với mỗi con người th&igrave; phong c&aacute;ch sống như thế n&agrave;o l&agrave; rất quan trọng. <strong>Phụ nữ</strong> cũng thế, họ lựa chọn những g&igrave; tốt nhất v&agrave; n&oacute;i l&ecirc;n phong th&aacute;i con người họ nhất.</p>\r\n<p class=\"MsoNormal\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" title=\"Phu-nu-hien-dai-3\" src=\"http://greenliving.vip/storage/products/April2019/Phu-nu-hien-dai-3.png\" alt=\"Phu-nu-hien-dai-3\" width=\"750\" /></p>\r\n<p class=\"MsoNormal\" style=\"text-align: center;\">Biết nấu ăn l&agrave; điều kh&ocirc;ng thể thiếu của một phụ nữ hiện đại.</p>\r\n<h3 class=\"MsoNormal\" style=\"margin-top: 1px;\"><strong>Sự lựa chọn th&ocirc;ng minh của phụ nữ hiện đại</strong></h3>\r\n<p class=\"MsoNormal\">Duy nhất một điều m&agrave; <strong>phụ nữ</strong> hiện đại lu&ocirc;n lựa chọn đ&oacute; l&agrave; &ldquo;tập cho m&igrave;nh th&oacute;i quen nu&ocirc;i dưỡng sức khỏe v&agrave; t&acirc;m hồn&rdquo;. Kh&ocirc;ng n&ecirc;n để bản th&acirc;n rơi v&agrave;o t&igrave;nh trạng stress k&eacute;o d&agrave;i, n&ecirc;n tập cho bản th&acirc;n c&oacute; một quỹ thời gian để r&egrave;n luyện sức khỏe, giữ cho tinh thần lu&ocirc;n sảng kho&aacute;i, tươi trẻ để hưởng thụ cuộc sống.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: right;\"><em><strong>Lee</strong></em></p>\r\n<p class=\"MsoNormal\">&nbsp;</p>','products/April2019/Uq6Vi7br6pKmcKnIbmPE.png','lua-chon-cua-phu-nu-hien-dai','1','Lifestyle','2019-04-04 06:36:33','2019-04-12 04:18:23',NULL,NULL,NULL,NULL),(20,'Thư giãn cuối tuần',3,'Ôi!!! Thứ 6 đến rồi cả nhà ơi. Nhưng làm gì để thư giãn cuối tuần đây? Để MHD Pharma mách bạn một vài điều cho cuối tuần này nhé.',NULL,'<p>&Ocirc;i!!! Thứ 6 đến rồi cả nh&agrave; ơi. Nhưng l&agrave;m g&igrave; để thư gi&atilde;n cuối tuần đ&acirc;y? Để MHD Pharma m&aacute;ch bạn một v&agrave;i điều cho cuối tuần n&agrave;y nh&eacute;.</p>\r\n<h3 class=\"MsoNormal\" style=\"margin-top: 1px;\"><strong>N&ecirc;n l&agrave;m g&igrave; để c&oacute; một &ldquo;weekend&rdquo; thật thư gi&atilde;n?</strong></h3>\r\n<p class=\"MsoNormal\">C&aacute;c Bạn &agrave;! cuối tuần l&agrave; kh&ocirc;ng được ngủ nướng đ&acirc;u nha, v&igrave; bạn đang l&atilde;ng ph&iacute; rất nhiều thời gian qu&yacute; gi&aacute;. Phải dậy sớm, d&agrave;nh thời gian h&iacute;t thở kh&ocirc;ng kh&iacute; trong l&agrave;nh, <strong>thư gi&atilde;n</strong>&nbsp;với những b&agrave;i tập thể dục nhẹ, tăng cường sự trao đổi chất v&agrave; gi&uacute;p n&atilde;o nạp nhiều oxy hơn sau 1 tuần lao động vất vả. Đừng bỏ lỡ bữa cơm c&ugrave;ng gia đ&igrave;nh v&agrave; n&ecirc;n d&agrave;nh một x&iacute;u thời gian để theo d&otilde;i c&aacute;c b&agrave;i Tips về sức khỏe của MHD Pharma.&nbsp;</p>\r\n<p class=\"MsoNormal\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" title=\"Thu-gian-cuoi-tuan\" src=\"http://greenliving.vip/storage/products/April2019/Thu-gian-cuoi-tuan-1.png\" alt=\"Thu-gian-cuoi-tuan\" width=\"500\" /></p>\r\n<p class=\"MsoNormal\" style=\"text-align: center;\">Dậy sớm, thư gi&atilde;n với những b&agrave;i tập thể dục.</p>\r\n<h3 class=\"MsoNormal\" style=\"margin-top: 1px;\"><strong>C&aacute;c địa điểm vui chơi</strong></h3>\r\n<p class=\"MsoNormal\" style=\"mso-pagination: none; text-align: justify; text-justify: inter-ideograph;\" align=\"justify\">Bạn n&agrave;o ở TPHCM th&igrave; kh&ocirc;ng thể bỏ lỡ những địa điểm n&agrave;y v&agrave;o cuối tuần nha. Nếu bạn đ&atilde; l&agrave; phụ huynh rồi th&igrave; n&ecirc;n dẫn b&eacute; đến <em>SnowTown Saigon</em><strong>, </strong>chỗ n&agrave;y <a href=\"http://greenliving.vip\">MHD&nbsp;Pharma</a>&nbsp;cũng th&iacute;ch lắm, v&igrave; ở đ&acirc;y nổi tiếng với thế giới tuyết, tuyết rơi m&ugrave;a h&egrave; S&agrave;i G&ograve;n l&agrave; c&oacute; thật, c&ugrave;ng trải nghiệm nhanh nhanh n&agrave;o.</p>\r\n<p class=\"MsoNormal\">Bạn n&agrave;o th&iacute;ch nghệ thuật v&agrave; muốn trải nghiệm kh&ocirc;ng gian 3D si&ecirc;u th&uacute; vị th&igrave; kh&ocirc;ng thể n&agrave;o bỏ lỡ <em>Ph&ograve;ng tranh nghệ thuật 3D Artinus</em><strong>. </strong>C&ograve;n nhiều địa điểm kh&ocirc;ng kể hết được.&nbsp;</p>\r\n<h3 class=\"MsoNormal\" style=\"margin-top: 1px;\"><strong>Những loại thực phẩm gi&uacute;p cơ thể thư gi&atilde;n</strong></h3>\r\n<p class=\"MsoNormal\" style=\"mso-pagination: none; text-align: justify; text-justify: inter-ideograph;\" align=\"justify\">Cũng c&oacute; một ch&uacute;t kiến thức về dinh dưỡng, để MHD&nbsp;pharma&nbsp;chia sẽ cho c&aacute;c bạn một v&agrave;i loại thực phẩm gi&uacute;p cho cơ thể <strong>thư gi&atilde;n</strong>&nbsp;v&agrave; giảm stress.</p>\r\n<p class=\"MsoNormal\" style=\"mso-pagination: none; text-align: justify; text-justify: inter-ideograph;\" align=\"justify\">Những thực phẩm c&oacute; DHA cao sẽ gi&uacute;p bạn giảm stress v&agrave; tăng sự hạnh ph&uacute;c như c&aacute; hồi, c&aacute; tầm, c&aacute; ngừ... C&aacute;c loại rau v&agrave; c&aacute;c loại đậu chứa nhiều h&agrave;m lượng Vitamin B sẽ k&iacute;ch th&iacute;ch sản sinh hormone dopamine&nbsp;th&uacute;c đẩy cảm x&uacute;c t&iacute;ch cực v&agrave; cuối c&ugrave;ng l&agrave; <a href=\"http://greenliving.vip/san-pham\"><u>Đ&ocirc;ng tr&ugrave;ng hạ thảo</u></a> c&oacute; thể điều chỉnh nội tiết tố trong cơ thể, tăng cường tuần ho&agrave;n m&aacute;u, nhanh ch&oacute;ng loại bỏ Lactic axit v&agrave; c&aacute;c chất b&atilde; trong cơ thể.&nbsp;</p>\r\n<p class=\"MsoNormal\" align=\"justify\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" title=\"Thu-gian-cuoi-tuan-2\" src=\"http://greenliving.vip/storage/products/April2019/Thu-gian-cuoi-tuan-21.png\" alt=\"Thu-gian-cuoi-tuan-2\" width=\"750\" height=\"551\" /></p>\r\n<p class=\"MsoNormal\" style=\"text-align: center;\" align=\"justify\">Bổ sung nhiều thực phẩm gi&agrave;u DHA.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: right;\" align=\"justify\"><em><strong>Lee</strong></em></p>','products/April2019/A0zDXILnNslOhRXYjlGi.jpg','th-gian-cuoi-tuan','1','Lifestyle','2019-04-04 06:53:25','2019-04-12 04:03:19',NULL,NULL,NULL,NULL),(21,'Năng lượng cho ngày mới',3,'Cuối tuần sao mà qua lẹ quá vậy nè, Thứ hai lại đến rồi, năng lượng cạn kiệt hết mất tiêu luôn. Đừng lo nhé, MHD Pharma sẽ lấy lại năng lượng cho bạn ngay bây giờ.',NULL,'<p>Cuối tuần sao m&agrave; qua lẹ qu&aacute; vậy n&egrave;, Thứ hai lại đến rồi, năng lượng cạn kiệt hết mất ti&ecirc;u lu&ocirc;n. Đừng lo nh&eacute;, MHD Pharma sẽ lấy lại năng lượng cho bạn ngay b&acirc;y giờ.&nbsp;</p>\r\n<h3 class=\"MsoNormal\" style=\"margin-top: 1px;\"><strong>L&yacute; do tại sao phải nạp đủ năng lượng cho cơ thể?&nbsp;</strong></h3>\r\n<p class=\"MsoNormal\">C&aacute;c bạn c&oacute; biết kh&ocirc;ng? Khi m&agrave; cơ thể nạp kh&ocirc;ng đủ năng lượng l&agrave; nguy&ecirc;n nh&acirc;n cơ bản nhất khiến bạn cảm thấy ủ rũ v&agrave; mệt mỏi. Từ đ&oacute; sẽ dẫn đến c&aacute;c triệu chứng bệnh như mất ngủ, giảm khả năng tư duy v&agrave; ảnh hưởng rất lớn đến c&ocirc;ng việc. V&igrave; thế, c&aacute;c bạn phải nhớ rằng kh&ocirc;ng được thức khuya v&agrave; kh&ocirc;ng được bỏ bất k&igrave; một bữa ăn ch&iacute;nh n&agrave;o trong ng&agrave;y đặc biệt l&agrave; bữa s&aacute;ng v&igrave; đ&acirc;y l&agrave; 2 kẻ địch lấy đi nhiều năng lượng nhất của cơ thể.</p>\r\n<h3 class=\"MsoNormal\" style=\"margin-top: 1px;\"><strong>L&agrave;m thế n&agrave;o để lấy lại năng lượng khi mệt mỏi?</strong></h3>\r\n<p class=\"MsoNormal\" style=\"mso-pagination: none; text-align: justify; text-justify: inter-ideograph;\" align=\"justify\">Thứ hai đến rồi, đi l&agrave;m với khu&ocirc;n mặt thiếu sức sống thật sự l&agrave; điều rất tối kỵ v&agrave; sẽ ảnh hưởng rất lớn đến mọi người xung quanh, thế n&ecirc;n bạn cần phải:</p>\r\n<ul>\r\n<li class=\"MsoNormal\" style=\"mso-pagination: none; text-align: justify; text-justify: inter-ideograph;\"><!-- [if !supportLists]-->Ngủ đủ giấc để c&aacute;c tế b&agrave;o cơ thể giải ph&oacute;ng năng lượng, xua tan căng thẳng mệt mỏi sau ng&agrave;y d&agrave;i hoạt động</li>\r\n<li class=\"MsoNormal\" style=\"mso-pagination: none; text-align: justify; text-justify: inter-ideograph;\"><!-- [if !supportLists]-->N&ecirc;n c&oacute; một bữa s&aacute;ng đầy đủ dinh dưỡng để kiểm so&aacute;t lượng đường trong m&aacute;u tốt hơn v&agrave; gi&uacute;p bạn cảm thấy h&agrave;i l&ograve;ng, thoải m&aacute;i để bắt đầu ng&agrave;y l&agrave;m việc mới.</li>\r\n<li class=\"MsoNormal\" style=\"mso-pagination: none; text-align: justify; text-justify: inter-ideograph;\">Nếu tinh thần bạn suy sụp, những nụ cười cho m&igrave;nh v&agrave; cho những người th&acirc;n sẽ gi&uacute;p bạn giảm stress hiệu quả. Bạn c&oacute; thể xem phim hay bất cứ điều g&igrave; l&agrave;m cho bạn thấy vui, y&ecirc;u đời.</li>\r\n</ul>\r\n<h3 class=\"MsoNormal\" style=\"margin-top: 1px;\"><strong>Một ng&agrave;y tr&agrave;n đầy &ldquo;năng lượng sống&rdquo; c&ugrave;ng MHD </strong><strong>Pharma</strong></h3>\r\n<p class=\"MsoNormal\">Mỗi sớm mai thức giấc, chỉ cần bạn truyền tải những th&ocirc;ng điệp thật sự t&iacute;ch cực v&agrave;o từng tế b&agrave;o của cơ thể, chắc chắn điều đ&oacute; sẽ khiến c&aacute;c bạn tr&agrave;n đầy năng lượng sống v&agrave; đừng qu&ecirc;n bắt đầu ng&agrave;y mới c&ugrave;ng một &iacute;t <a href=\"http://greenliving.vip/san-pham\">Cao Nấm Tr&ugrave;ng Thảo Cordy-X</a>, sẽ gi&uacute;p bạn kh&ocirc;i phục năng lượng v&agrave; tăng cường hệ miễn dịch.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: right;\"><em><strong>Lee</strong></em></p>','products/April2019/YQjjdwPY31ixWtGZeDhy.jpg','nang-luong-cho-ngay-moi','1','Lifestyle','2019-04-04 07:04:20','2019-04-12 04:02:43',NULL,NULL,NULL,NULL),(22,'Cao Nấm Trùng Thảo Cordy-X KHÔNG chất bảo quản, KHÔNG chất tạo màu',3,'“An toàn” là vấn đề mà mọi người đang rất băn khoăn và lo ngại, đặc biệt với các sản phẩm bảo vệ sức khỏe. Cao Nấm Trùng Thảo Cordy - X có thật sự an toàn? Câu hỏi này cũng là điều mà mọi người đang rất quan tâm!',NULL,'<p>&ldquo;An to&agrave;n&rdquo; l&agrave; vấn đề m&agrave; mọi người đang rất băn khoăn v&agrave; lo ngại, đặc biệt với c&aacute;c sản phẩm bảo vệ sức khỏe. Cao Nấm Tr&ugrave;ng Thảo Cordy - X c&oacute; thật sự an to&agrave;n? C&acirc;u hỏi n&agrave;y cũng l&agrave; điều m&agrave; mọi người đang rất quan t&acirc;m!</p>\r\n<h3 class=\"MsoNormal\" style=\"margin-top: 1px;\"><strong>Tại sao ch&uacute;ng ta lại sử dụng chất bảo quản v&agrave; chất tạo m&agrave;u, tạo m&ugrave;i?</strong></h3>\r\n<p class=\"MsoNormal\">&ldquo;Chất bảo quản&rdquo;, &ldquo;Chất tạo m&agrave;u, tạo m&ugrave;i&rdquo; đ&acirc;y l&agrave; những cụm từ rất quen thuộc được nh&igrave;n thấy v&agrave; nghe thấy hằng ng&agrave;y. Đ&oacute; l&agrave; những chất phụ gia m&agrave; c&aacute;i t&ecirc;n đ&atilde; thể hiện được chức năng v&agrave; vai tr&ograve; của n&oacute;. Bản chất của c&aacute;c chất bảo quản v&agrave; chất tạo m&agrave;u, tạo m&ugrave;i kh&ocirc;ng hề xấu, v&igrave; n&oacute; gi&uacute;p cho ch&uacute;ng ta bảo quản thực phẩm l&acirc;u hỏng hơn, gi&uacute;p m&ugrave;i vị v&agrave; thẩm mỹ của m&oacute;n ăn tr&ocirc;ng ngon hơn. Nhưng cũng v&igrave; lẽ đ&oacute;, một số nơi đ&atilde; qu&aacute; lạm dụng những hợp chất n&agrave;y, khiến ch&uacute;ng trở th&agrave;nh một h&oacute;a chất độc hại, x&acirc;m nhập v&agrave;o cơ thể v&agrave; g&acirc;y ra những t&aacute;c hại cho sức khoẻ.</p>\r\n<p class=\"MsoNormal\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" title=\"Cao-nam-trung-thao-cordy-x\" src=\"http://greenliving.vip/storage/products/April2019/Picture1.png\" alt=\"Cao-nam-trung-thao-cordy-x\" width=\"750\" /></p>\r\n<p class=\"MsoNormal\" style=\"text-align: center;\">Kh&ocirc;ng n&ecirc;n qu&aacute; lạm dụng chất bảo quản.</p>\r\n<h3 class=\"MsoNormal\" style=\"margin-top: 1px;\">Cao Nấm Tr&ugrave;ng Thảo Cordy-X, đảm bảo an to&agrave;n cho sức khỏe</h3>\r\n<p class=\"MsoNormal\" style=\"mso-pagination: none; text-align: justify; text-justify: inter-ideograph;\" align=\"justify\">Đ&acirc;y l&agrave; c&acirc;u hỏi m&agrave; ngay từ ng&agrave;y đầu ti&ecirc;n khi MHD Pharma t&igrave;m đến Đại Học Thủ Dầu Một, c&aacute;i n&ocirc;i của <a href=\"http://greenliving.vip/chi-tiet-san-pham?3&amp;cao-nam-trung-thao-cordy-x\">Cao Nấm Tr&ugrave;ng Thảo Cordy-X</a>. MHD Pharma thật sự bất ngờ khi to&agrave;n bộ qu&aacute; tr&igrave;nh h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển sản phẩm đều n&oacute;i KH&Ocirc;NG với phụ gia độc hại:</p>\r\n<ul>\r\n<li class=\"MsoNormal\" style=\"mso-pagination: none; text-align: justify; text-justify: inter-ideograph;\"><!-- [if !supportLists]-->Nu&ocirc;i trồng: M&ocirc;i trường v&ocirc; tr&ugrave;ng. Kh&ocirc;ng thuốc tăng trưởng, kh&ocirc;ng thuốc bảo vệ thực vật.</li>\r\n<li class=\"MsoNormal\" style=\"mso-pagination: none; text-align: justify; text-justify: inter-ideograph;\"><!-- [if !supportLists]-->Chiết xuất: C&ocirc;ng nghệ chiết xuất Ph&acirc;n Tử. Kh&ocirc;ng cồn c&ocirc;ng nghiệp, kh&ocirc;ng chất l&agrave;m đặc.</li>\r\n<li class=\"MsoNormal\">Sản Xuất: D&acirc;y truyền chuẩn GMP. Kh&ocirc;ng chất tạo m&agrave;u, kh&ocirc;ng chất bảo quản.</li>\r\n</ul>\r\n<p class=\"MsoNormal\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" title=\"Dong-trung-ha-thao-cordy-x\" src=\"http://greenliving.vip/storage/products/April2019/Dong-trung-ha-thao-cordy-x-gioi-thieu1.png\" alt=\"Dong-trung-ha-thao-cordy-x\" width=\"750\" /></p>\r\n<p class=\"MsoNormal\" style=\"text-align: center;\">Cao Nấm Tr&ugrave;ng Thảo Cordy - X bảo vệ bạn tận t&acirc;m.</p>','products/April2019/yQYpYdpdGgtYZOvxSBuW.png','cao-nam-trung-thao-cordy-x-khong-chat-bao-quan-khong-chat-tao-mau',NULL,'Healthy','2019-04-10 02:44:08','2019-04-12 04:02:17',NULL,NULL,NULL,NULL),(25,'Sống khoẻ ăn ngon cho bệnh nhân tim mạch',3,'Có khi nào bạn nghe trái tim mình kêu gọi những cơn đau chưa, cho dù chỉ thoáng qua thôi nhé? Vì thế hôm nay, MHD Pharma sẽ cùng bạn tìm hiểu về cách “sống khỏe ăn ngon” để bảo vệ trái tim của mình.',NULL,'<p>C&oacute; khi n&agrave;o bạn nghe tr&aacute;i tim m&igrave;nh k&ecirc;u gọi những cơn đau chưa, cho d&ugrave; chỉ tho&aacute;ng qua th&ocirc;i nh&eacute;? V&igrave; thế h&ocirc;m nay, <a href=\"http://greenliving.vip\">MHD Pharma</a> sẽ c&ugrave;ng bạn t&igrave;m hiểu về c&aacute;ch &ldquo;sống khỏe ăn ngon&rdquo; để bảo vệ tr&aacute;i tim của m&igrave;nh.&nbsp;</p>\r\n<h3 style=\"margin-top: 1px;\"><strong>Nguy&ecirc;n nh&acirc;n dẫn đến bệnh tim mạch</strong></h3>\r\n<p>Choslesterol l&agrave; nguy&ecirc;n nh&acirc;n ch&iacute;nh ảnh hưởng rất lớn đến tr&aacute;i tim của ch&uacute;ng ta. Khi cholesterol trong m&aacute;u l&ecirc;n qu&aacute; cao, ch&uacute;ng sẽ b&aacute;m v&agrave;o th&agrave;nh động mạch v&agrave;nh, l&agrave;m th&agrave;nh mạch hẹp lại, g&acirc;y cản trở lưu th&ocirc;ng m&aacute;u v&agrave; l&agrave;m giảm lưu lượng m&aacute;u đến nu&ocirc;i c&aacute;c cơ quan v&agrave; tổ chức trong cơ thể, dẫn đến thiếu m&aacute;u cơ tim cũng như thiếu m&aacute;u nu&ocirc;i c&aacute;c cơ quan tổ chức kh&aacute;c.</p>\r\n<p>Cao huyết &aacute;p, đ&acirc;y l&agrave; một bệnh l&yacute; kh&aacute; phổ biến hiện nay v&agrave; ngay cả những người chưa đến 40 tuổi cũng l&agrave; nạn nh&acirc;n của căn bệnh n&agrave;y. Khi huyết &aacute;p tăng đột ngột sẽ dẫn đến việc tim phải chịu một khối lượng c&ocirc;ng việc kh&aacute; lớn l&agrave; cố gắng co b&oacute;p nhiều hơn để đưa m&aacute;u đến nu&ocirc;i cơ thể, đặc biệt l&agrave; với trường hợp khi động mạch v&agrave;nh tắc nghẽn v&agrave; kh&ocirc;ng cung cấp đủ oxy v&agrave; c&aacute;c chất dinh dưỡng th&igrave; tim lại c&agrave;ng phải hoạt động nhiều hơn b&igrave;nh thường gắp hai lần.&nbsp;</p>\r\n<p>Bệnh tiểu đường cũng rất nguy hiểm đến tim của ch&uacute;ng ta, bệnh tiểu đường l&agrave;m tăng nguy cơ bệnh mạch v&agrave;nh l&ecirc;n gấp 1,8 lần. H&uacute;t thuốc l&aacute;, sử dụng c&aacute;c chất k&iacute;ch th&iacute;ch như rượu bia cũng sẽ dẫn đến c&aacute;c bệnh l&yacute; về tim mạch như suy tim do tăng lượng chất b&eacute;o triglyceride, giảm c&aacute;c chất b&eacute;o tốt như HDL v&agrave; g&acirc;y xơ vữa động mạch.&nbsp;</p>\r\n<h3 style=\"margin-top: 1px;\">Chế độ &ldquo;Sống khỏe ăn ngon&rdquo; tốt cho tim mạch&nbsp;</h3>\r\n<p>Để hạn chế việc tăng cholesterol, c&aacute;c bạn n&ecirc;n bổ sung chất xơ, vitamin v&agrave; kho&aacute;ng chất cần thiết cho cơ thể. Chất xơ bạn c&oacute; thể t&igrave;m thấy n&oacute; trong c&aacute;c loại rau củ quả v&agrave; những loại ngũ cốt th&ocirc; như: gạo lức,c&aacute;c loại đậu c&oacute; t&aacute;c dụng chuyển h&oacute;a c&aacute;c chất b&eacute;o v&agrave; l&agrave;m hạ huyết &aacute;p. C&aacute;c loại rau củ v&agrave; tr&aacute;i c&acirc;y sẽ bổ sung flavonoid l&agrave; dưỡng chất c&oacute; lợi cho sức khỏe, c&aacute;c chất n&agrave;y hoạt động như c&aacute;c chất chống oxi h&oacute;a v&agrave; c&oacute; thể giảm nguy cơ vi&ecirc;m nhiễm, ngăn ngừa bệnh tim mạch. Ngo&agrave;i ra, c&aacute;c bạn c&ograve;n cần phải hạn chết bổ sung mỡ động vật, hạn chế ăn mặn v&agrave; ngọt, uống đủ nước m&agrave; cơ thể cần, đặt biệt phải c&aacute;c bạn phải tập thể dục vừa đủ, để n&acirc;ng cao thể chất,một số hoạt chất trong thức ăn chỉ bị đ&aacute;nh thức khi chung ta hoạt động cơ thể cũng như l&agrave; tiếp x&uacute;c với &aacute;nh nắng mặt trời. V&igrave; thế, một ch&uacute;t vận động l&agrave; kh&ocirc;ng thể thiếu đ&acirc;u nh&eacute;.&nbsp;</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" title=\"bo-sung-dinh-duong\" src=\"http://greenliving.vip/storage/products/April2019/bo-sung-dinh-duong-1.png\" alt=\"bo-sung-dinh-duong\" width=\"750\" /></p>\r\n<p style=\"text-align: center;\">Cao Nấm Tr&ugrave;ng Thảo Cordy-X.</p>\r\n<h3 style=\"margin-top: 1px;\"><strong>Sống khỏe ăn ngon để bảo về tr&aacute;i tim của bạn&nbsp;</strong></h3>\r\n<p>Đừng bao giờ ngủ qu&ecirc;n trong việc &ldquo;m&igrave;nh rất khỏe v&agrave; kh&ocirc;ng cần bảo vệ&rdquo;. Điều n&agrave;y ho&agrave;n to&agrave;n sai lầm, mỗi ng&agrave;y ch&uacute;ng ta đều cần phải cung cấp rất nhiều chất dinh dưỡng, để nu&ocirc;i c&aacute;c cơ quan tổ chức v&agrave; đủ để c&oacute; năng lượng mỗi ng&agrave;y l&agrave;m việc, thế n&ecirc;n việc lựa chọn cho m&igrave;nh một cuộc sống khỏe mạnh l&agrave; kh&ocirc;ng thể bỏ qua.&nbsp;</p>\r\n<p>Nhưng đ&acirc;u đ&oacute;, c&aacute;c bạn lại nghĩ rằng, ăn uống qu&aacute; nhạt, hay qu&aacute; &ldquo;healthy&rdquo; sẽ l&agrave;m mất hương vị của cuộc sống. C&aacute;c bạn h&atilde;y y&ecirc;n t&acirc;m, chỉ cần ch&uacute;ng ta biết c&aacute;ch lựa chọn những thực phẩm sạch, tươi sống v&agrave; đảm bảo được chất lượng đầu ra của sản phẩm th&igrave; hiển nhi&ecirc;n kh&ocirc;ng cần n&ecirc;m g&igrave; cả bạn cũng sẽ c&oacute; được cả một bầu trời hương vị m&agrave; vẫn an to&agrave;n cho sức khỏe.&nbsp;</p>\r\n<p>Song song đ&oacute;, c&aacute;c bạn đừng qu&ecirc;n rằng, Cao Nấm Tr&ugrave;ng Thảo Cordy-X cũng l&agrave; một loại Thực Phẩm Bảo Vệ Sức Khỏe, k&iacute;ch th&iacute;ch vị gi&aacute;c của bạn. Mỗi buổi s&aacute;ng, chỉ cần bạn ngậm một &iacute;t cao, để tan v&agrave; thẩm thấu từ từ, bạn sẽ thấy được điều diệu k&igrave; của Cao Nấm Tr&ugrave;ng Thảo Cordy-X mang lại, từng tế b&agrave;o vị gi&aacute;c dường như được đ&aacute;nh thức sau một đ&ecirc;m ngon giấc. H&atilde;y trải nghiệm điều n&agrave;y c&ugrave;ng MHD Pharma nha.&nbsp;&nbsp;</p>\r\n<p style=\"text-align: right;\"><em><strong>Lee</strong></em></p>','products/April2019/vlaibQ9ROyNNOX468Vvf.png','song-khoe-n-ngon-cho-benh-nhan-tim-mach',NULL,'Healthy','2019-04-11 06:45:15','2019-04-12 04:01:07',NULL,NULL,NULL,NULL),(28,'3 Cách bổ sung sức khoẻ cho bệnh nhân tim mạch',3,'Mỗi chúng ta, ngoài việc tự vận động và truyền cho mình nguồn năng lượng để phục hồi sức khỏe thì bên cạnh đó còn cần phải nhờ sự tác động từ bên ngoài. Thế nên hôm nay MHD Pharma sẽ mách bạn một vài cách để bồi bổ sức khỏe cho những bệnh nhân có bệnh lý về tim mạch.',NULL,'<p>Mỗi ch&uacute;ng ta, ngo&agrave;i việc tự vận động v&agrave; truyền cho m&igrave;nh nguồn năng lượng để phục hồi sức khỏe th&igrave; b&ecirc;n cạnh đ&oacute; c&ograve;n cần phải nhờ sự t&aacute;c động từ b&ecirc;n ngo&agrave;i. Thế n&ecirc;n h&ocirc;m nay MHD Pharma sẽ m&aacute;ch bạn một v&agrave;i c&aacute;ch để bồi bổ sức khỏe cho những bệnh nh&acirc;n c&oacute; bệnh l&yacute; về tim mạch.</p>\r\n<h3 style=\"margin-top: 1px;\"><strong>Suy nghĩ chưa đ&uacute;ng về việc bồi bổ sức khỏe cho bệnh nh&acirc;n tim mạch</strong></h3>\r\n<p>Bệnh tim mạch l&agrave; bệnh m&agrave; ảnh hưởng của n&oacute; t&aacute;c động tới chức năng của tim v&agrave; mạch m&aacute;u, g&acirc;y n&ecirc;n những vấn đề rất nghi&ecirc;m trọng về sức khỏe. V&igrave; thế khi ch&uacute;ng ta c&oacute; những triệu chứng bệnh l&yacute; về tim mạch, hiển nhi&ecirc;n cần được chăm s&oacute;c đặc biệt do c&aacute;c bệnh tim mạch thường cấp t&iacute;nh v&agrave; nguy hiểm.</p>\r\n<p>Nhiều trường hợp bệnh nh&acirc;n tim mạch lu&ocirc;n c&oacute; t&acirc;m l&yacute; lo lắng v&igrave; cơ thể m&igrave;nh kh&ocirc;ng khỏe mạnh. Họ chọn c&aacute;ch bảo vệ m&igrave;nh bằng việc ki&ecirc;ng khen qu&aacute; mức trong đ&oacute; c&oacute; việc ăn uống. Song nhiều chuy&ecirc;n gia về tim mạch cho rằng: Người mắc bệnh tim mạch kh&ocirc;ng cần ki&ecirc;ng khen nhiều, chỉ cần điều chỉnh chế độ dinh dưỡng hợp l&yacute;. N&oacute;i một c&aacute;ch kh&aacute;c đi, những người mắc bệnh tim mạch kh&ocirc;ng kh&oacute; để c&oacute; những bữa ăn vừa hợp khẩu vị, vừa g&oacute;p phần bảo vệ được tr&aacute;i tim v&agrave; mạch m&aacute;u của m&igrave;nh.</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" title=\"benh-tim-mach\" src=\"http://greenliving.vip/storage/products/April2019/Cao-nam-trung-thao-cordy-x-poster.png\" alt=\"benh-tim-mach\" width=\"500\" /></p>\r\n<p style=\"text-align: center;\">Qu&agrave; tặng sức khoẻ cho người th&acirc;n y&ecirc;u nhất.</p>\r\n<h3 style=\"margin-top: 1px;\"><strong>Bệnh nh&acirc;n tim mạch n&ecirc;n bồi bổ như thế n&agrave;o?</strong></h3>\r\n<p>Để xua tan đi nổi lo lắng của c&aacute;c bệnh nhận tim mạch, <a href=\"http://greenliving.vip/thong-tin-can-quan-tam.html\">MHD Pharma</a> sẽ bật m&iacute; với bạn một v&agrave;i c&aacute;ch để c&oacute; thể vừa c&oacute; một chế độ ăn tốt nhưng vẫn rất đậm đ&agrave; hương vị nh&eacute;.&nbsp;</p>\r\n<p>1.&nbsp; &nbsp; Cao Nấm Tr&ugrave;ng Thảo Cordy-X chắc đ&atilde; kh&ocirc;ng c&ograve;n xa lạ với c&aacute;c bạn rồi đ&uacute;ng kh&ocirc;ng? L&yacute; do m&agrave; MHD Pharma n&oacute;i đến sản phẩm n&agrave;y l&agrave; v&igrave; Cao Nấm Tr&ugrave;ng Thảo Cordy-X l&agrave; sản phẩm chứa tinh chất Đ&ocirc;ng Tr&ugrave;ng Hạ Thảo c&oacute; t&aacute;c dụng l&agrave;m gi&atilde;n mạch m&aacute;u, tăng lưu lượng tuần ho&agrave;n n&atilde;o, gi&uacute;p ổn định nhịp tim, điều chỉnh lipid m&aacute;u, giảm cholesterol v&agrave; lipoprotein, hạn chế qu&aacute; tr&igrave;nh tiến triển của t&igrave;nh trạng xơ vữa động mạch. Sản phẩm c&ograve;n gi&uacute;p tăng cường sức đề kh&aacute;ng cũng như tăng khả năng tự hồi phục v&agrave; bồi bộ sức khỏe cho c&aacute;c tế b&agrave;o cơ thể. Ngo&agrave;i ra, Cao Nấm Tr&ugrave;ng Thảo Cordy-X, c&ograve;n c&oacute; khả năng k&iacute;ch th&iacute;ch vị gi&aacute;c, gi&uacute;p c&aacute;c bệnh nh&acirc;n tim mạch d&ugrave;ng bữa trọn vị hơn.</p>\r\n<p class=\"MsoListParagraph\" style=\"text-indent: -18.0pt; mso-list: l0 level1 lfo1;\">&nbsp;</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" title=\"benh-tim-mach\" src=\"http://greenliving.vip/storage/products/April2019/Tang-cuong-rau-cu.png\" alt=\"benh-tim-mach\" width=\"750\" /></p>\r\n<p style=\"text-align: center;\">Tăng cường rau củ trong mỗi bữa ăn. (<em>Ảnh: vuonthaoduoc</em>)</p>\r\n<p>2. &nbsp;&nbsp;Bổ sung thực phẩm gi&agrave;u kali. Một số trường hợp bệnh l&yacute; về tim nặng c&oacute; thể phải d&ugrave;ng đến thuốc lợi tiểu, l&agrave;m giảm kali m&aacute;u. Khi đ&oacute; việc bổ sung kali trong bệnh tim l&agrave; rất cần thiết. Bạn c&oacute; thể t&igrave;m thấy nguồn kali tuyệt vời ở trong chuối, mận ch&iacute;n, l&ecirc;, cam, nho, c&aacute;c loại rau họ cải (s&uacute;p lơ, cải b&oacute; x&ocirc;i). B&ecirc;n cạnh đ&oacute;, bạn n&ecirc;n lựa chọn đa dạng c&aacute;c thực phẩm tươi, sạch, quan t&acirc;m đến vấn đề vệ sinh an to&agrave;n của c&aacute;c loại thực phẩm h&agrave;ng ng&agrave;y. Ăn nhiều tr&aacute;i c&acirc;y, quả ch&iacute;n, rau xanh để bổ sung những vitamin c&oacute; lợi cho sức khỏe.</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" title=\"benh-tim-mach\" src=\"http://greenliving.vip/storage/products/April2019/benh-tim-mach-13.png\" alt=\"benh-tim-mach\" width=\"750\" /></p>\r\n<p style=\"text-align: center;\">Hạn chế sử dụng dầu động vật.</p>\r\n<p>3. &nbsp;&nbsp;&nbsp;Sử dụng dầu thực vật thay thế mỡ động vật, hạn chế c&aacute;c m&oacute;n x&agrave;o, r&aacute;n, tăng cường c&aacute;c m&oacute;n luộc, hấp. Ăn c&aacute; nhiều v&igrave; trong c&aacute;c loại c&aacute; biển c&oacute; chứa nhiều acid b&eacute;o omega-3, omega-6 rất tốt với người mắc bệnh tim mạch. Hạn chế c&aacute;c loại thịt đỏ (thịt b&ograve;, thịt heo), tăng cường c&aacute;c loại thịt trắng (ức g&agrave;, t&ocirc;m, c&aacute;), bổ sung th&ecirc;m c&aacute;c loại thực phẩm gi&agrave;u đạm thực vật như đậu, đỗ, lạc, vừng. C&ugrave;ng với thực đơn khoa học h&agrave;ng ng&agrave;y th&igrave; thực phẩm bổ sung từ sữa l&agrave; sự lựa chọn cho người bệnh tim mạch hoặc c&oacute; nguy cơ mắc bệnh tim mạch như người trung v&agrave; cao tuổi. Đ&acirc;y l&agrave; loại thực phẩm c&oacute; gi&aacute; trị dinh dưỡng cao, tiện lợi v&agrave; dễ sử dụng. C&aacute;c chất đạm của sữa l&agrave; chất đạm c&oacute; gi&aacute; trị sinh học cao, chứa nhiều axit amin cần thiết. Một số một số loại thực phẩm bổ sung c&oacute; th&agrave;nh phần Mufa, Pufa, Omega 3, Omega 6 cũng l&agrave; những axit b&eacute;o gi&uacute;p giảm cholesterol xấu trong cơ thể, ph&ograve;ng xơ vữa động mạch, tốt cho bệnh tim mạch, huyết &aacute;p. Những axit b&eacute;o n&agrave;y cũng c&oacute; vai tr&ograve; rất quan trọng đối với việc x&acirc;y dựng v&agrave; bảo vệ hệ thần kinh. Tuy nhi&ecirc;n, một số người cao tuổi hay bị rối loạn ti&ecirc;u h&oacute;a khi sử dụng c&aacute;c chế phẩm từ sữa b&ograve; n&ecirc;n lựa chọn thực phẩm bổ sung c&oacute; sử dụng nguy&ecirc;n liệu từ đạm đậu n&agrave;nh để vừa ph&ugrave; hợp với nhu cầu dinh dưỡng, vừa kh&ocirc;ng cần phải lo lắng đến t&igrave;nh trạng kh&oacute; chịu của đường ti&ecirc;u h&oacute;a.</p>\r\n<p>&nbsp;</p>\r\n<p class=\"MsoListParagraph\" style=\"text-indent: -18.0pt; mso-list: l0 level1 lfo1;\">&nbsp;</p>','products/April2019/1fhDdTf2jzwXGGev2UyF.png','3-cach-bo-sung-suc-khoe-cho-benh-nhan-tim-mach',NULL,'Healthy','2019-04-11 07:30:54','2019-04-12 04:21:40',NULL,NULL,NULL,NULL),(29,'Cao Nấm Trùng Thảo Cordy - X có dùng được cho bệnh nhân tim mạch?',3,'Bệnh tim mạch, một loại bệnh mà đòi hỏi bệnh nhân phải đặc biệt chú ý đến chế độ ăn uống hàng ngày cũng như hạn chế rất nhiều thành phần dinh dưỡng để đảm bảo và duy trì sự ổn định cho cơ thể.',NULL,'<p>Bệnh tim mạch, một loại bệnh m&agrave; đ&ograve;i hỏi bệnh nh&acirc;n phải đặc biệt ch&uacute; &yacute; đến chế độ ăn uống h&agrave;ng ng&agrave;y cũng như hạn chế rất nhiều th&agrave;nh phần dinh dưỡng để đảm bảo v&agrave; duy tr&igrave; sự ổn định cho cơ thể. V&igrave; thế, khi cho ra mắt, <a href=\"http://greenliving.vip\">MHD Pharma</a> đ&atilde; nhận được kh&ocirc;ng &iacute;t mối quan t&acirc;m từ kh&aacute;ch h&agrave;ng rằng liệu sản phẩm c&oacute; d&ugrave;ng được cho bệnh nh&acirc;n tim mạch. Để trả lời được c&acirc;u hỏi n&agrave;y, trước ti&ecirc;n ch&uacute;ng ta phải hiểu r&otilde; những vấn đề trong chế độ dinh dưỡng m&agrave; người mắc bệnh về tim mạch cần lưu &yacute; qua b&agrave;i viết dưới đ&acirc;y!</p>\r\n<h3 style=\"margin-top: 1px;\">V&igrave; sao bệnh nh&acirc;n tim mạch n&ecirc;n lưu &yacute; về th&agrave;nh phần dinh dưỡng?</h3>\r\n<p>C&oacute; một sự thật l&agrave; hầu hết những m&oacute;n ăn ch&uacute;ng ta ăn h&agrave;ng ng&agrave;y đều chứa rất nhiều h&agrave;m lượng cholesterol. Việc bổ sung qu&aacute; nhiều sẽ khiến h&agrave;m lượng chất n&agrave;y trong m&aacute;u bị lắng động ở th&agrave;nh mạch g&acirc;y xơ vữa v&agrave; l&agrave; nguy&ecirc;n nh&acirc;n dẫn đến c&aacute;c bệnh l&yacute; tim mạch.</p>\r\n<p>Do đ&oacute;, để ph&ograve;ng tr&aacute;nh cũng như hạn chế sự ph&aacute;t triển của <a href=\"http://greenliving.vip/thong-tin-can-quan-tam?3-cach-bo-sung-suc-khoe-cho-benh-nhan-tim-mach\">bệnh tim mạch</a>, ch&uacute;ng ta cần phải ch&uacute; trọng đến chế độ dinh dưỡng, kh&ocirc;ng ăn những loại đồ ăn nhiều mỡ, nhiều cholesterol để lu&ocirc;n duy tr&igrave; được c&acirc;n nặng hợp l&yacute; v&agrave; huyết &aacute;p ổn định.</p>\r\n<h3 style=\"margin-top: 1px;\">Cao Nấm Tr&ugrave;ng Thảo Cordy-X mang lại lợi &iacute;ch g&igrave; cho bệnh nh&acirc;n tim mạch?</h3>\r\n<p>L&agrave; sản phẩm được d&agrave;y c&ocirc;ng nghi&ecirc;n cứu v&agrave; sản xuất của trường Đại học Thủ Dầu Một, <a href=\"http://greenliving.vip/san-pham\">Cao Nấm Tr&ugrave;ng Thảo Cordy-X</a> được đ&aacute;nh gi&aacute; l&agrave; sản phẩm chất lượng với nhiều c&ocirc;ng dụng bổ &iacute;ch m&agrave; một trong số đ&oacute; l&agrave; tốt cho người mắc bệnh tim mạch.</p>\r\n<p>V&igrave; được kết hợp giữa tinh chất đ&ocirc;ng tr&ugrave;ng hạ thảo v&agrave; tinh chất nấm linh chi, Cordy-X hấp thụ đầy đủ những dược chất trong cả 2 loại thảo dược n&agrave;y, bao gồm rất nhiều những th&agrave;nh phần dược liệu ph&ugrave; hợp với bệnh nh&acirc;n c&oacute; vấn đề về tim mạch, như:</p>\r\n<ul>\r\n<li>Mannitol: C&oacute; t&aacute;c dụng l&agrave;m gi&atilde;n nở cơ tim v&agrave; mạch m&aacute;u n&atilde;o, đồng thời gi&uacute;p tăng tuần ho&agrave;n n&atilde;o v&agrave; tim.</li>\r\n<li>Lipoprotein: Hạn chế nguy cơ xơ vữa động mạch.</li>\r\n<li>Adenosine: L&agrave;m giảm Cholesterol v&agrave; mỡ trong cơ thể, gi&uacute;p c&acirc;n bằng qu&aacute; tr&igrave;nh trao đổi chất từ đ&oacute; đảm bảo huyết &aacute;p lu&ocirc;n ở mức b&igrave;nh thường v&agrave; ổn định c&acirc;n nặng.</li>\r\n<li>Germanium: L&agrave; chất gi&uacute;p kh&iacute; huyết lưu th&ocirc;ng v&agrave; c&aacute;c tế b&agrave;o hấp thu Oxy tốt hơn.</li>\r\n</ul>\r\n<p style=\"text-align: right;\"><em><strong>Lee</strong></em></p>','products/April2019/r9dgx5EYOFFCdy0NzgoO.png','cao-nam-trung-thao-cordy-x-co-dung-d-oc-cho-benh-nhan-tim-mach',NULL,'Healthy','2019-04-12 04:51:00','2019-04-16 02:58:52',NULL,'Bệnh tim mạch, một loại bệnh mà đòi hỏi bệnh nhân phải đặc biệt chú ý đến chế độ ăn uống hàng ngày cũng như hạn chế rất nhiều thành phần dinh dưỡng để đảm bảo và duy trì sự ổn định cho cơ thể.','Cao Nấm Trùng Thảo Cordy - X có dùng được cho bệnh nhân tim mạch?','dinh duong'),(30,'Bồi bổ sức khỏe cho bệnh nhân tim mạch với Cao Nấm Trùng Thảo Cordy-X',3,'Luôn được biết đến là sản phẩm rất tốt cho người mắc các bệnh lý về tim mạch nhờ vào những thành phần dinh dưỡng của mình, đông trùng hạ thảo hẳn là cái tên quá quen thuộc với người dùng.',NULL,'<p>Lu&ocirc;n được biết đến l&agrave; sản phẩm rất tốt cho người mắc c&aacute;c bệnh l&yacute; về tim mạch nhờ v&agrave;o những th&agrave;nh phần dinh dưỡng của m&igrave;nh, đ&ocirc;ng tr&ugrave;ng hạ thảo hẳn l&agrave; c&aacute;i t&ecirc;n qu&aacute; quen thuộc với người d&ugrave;ng. Tr&ecirc;n thị trường hiện nay c&oacute; một sản phẩm c&oacute; khả năng bồi bổ, phục hồi sức khỏe, gi&uacute;p ổn định huyết &aacute;p cực kỳ tốt với t&ecirc;n gọi Cao Nấm Tr&ugrave;ng Thảo Cordy-X đến từ c&ocirc;ng ty MHD Pharma.</p>\r\n<p>H&atilde;y c&ugrave;ng t&igrave;m hiểu những l&yacute; do khiến Cao Nấm Tr&ugrave;ng Thảo Cordy-X trở th&agrave;nh sản phẩm được nhiều kh&aacute;ch h&agrave;ng, đặc biệt l&agrave; người mắc bệnh <a href=\"http://greenliving.vip/thong-tin-can-quan-tam?cao-nam-trung-thao-cordy-x-co-dung-d-oc-cho-benh-nhan-tim-mach\">tim mạch</a> ưa chuộng sử dụng qua b&agrave;i viết n&agrave;y nh&eacute;!</p>\r\n<h3 style=\"margin-top: 1px;\">Nguồn gốc v&agrave; quy tr&igrave;nh sản xuất ra Cao Nấm Tr&ugrave;ng Thảo Cordy-X</h3>\r\n<p>Với sứ mệnh v&agrave; mục ti&ecirc;u mang đến cho kh&aacute;ch h&agrave;ng, bệnh nh&acirc;n những sản phẩm đạt chất lượng v&agrave; hiệu quả tốt nhất, năm 2011, trường Đại học Thủ Dầu M&ocirc;t (TDMU) đ&atilde; cho ra đời Cao Nấm Tr&ugrave;ng Thảo Cordy-X &ndash; l&agrave; sự kết hợp của tinh chất đ&ocirc;ng tr&ugrave;ng hạ thảo v&agrave; tinh chất nấm linh chi.</p>\r\n<p>V&agrave; để Cordy-X lu&ocirc;n đạt h&agrave;m lượng dược chất cao nhất, c&aacute;c nh&agrave; khoa học l&agrave; c&aacute;c Ph&oacute; Gi&aacute;o Sư, Tiến Sĩ của trường ĐH Thủ Dầu Một rất ch&uacute; trọng đến từng giai đoạn trong qu&aacute; tr&igrave;nh ph&aacute;t triển v&agrave; h&igrave;nh th&agrave;nh n&ecirc;n sản phẩm của m&igrave;nh. Từ kh&acirc;u tuyển chọn con giống (nhập khẩu con giống từ ATCC &ndash; Ng&acirc;n h&agrave;ng giống uy t&iacute;n v&agrave; lớn nhất thế giới từ Hoa Kỳ) cho đến m&ocirc;i trường nu&ocirc;i trồng (được thiết lập v&ocirc; tr&ugrave;ng th&ocirc;ng qua một hệ thống gi&aacute;m s&aacute;t tự động giống như m&ocirc;i trường sinh trưởng ngo&agrave;i tự nhi&ecirc;n của đ&ocirc;ng tr&ugrave;ng hạ thảo) v&agrave; đặc biệt l&agrave; &aacute;p dụng c&ocirc;ng nghệ chiết xuất hiện đại từ H&agrave;n Quốc gi&uacute;p sản phẩm c&oacute; độ h&ograve;a tan v&agrave; thẩm thấu nhanh.</p>\r\n<p><img title=\"dong-trung-ha-thao-viet-nam\" src=\"http://greenliving.vip/storage/products/April2019/Dong-trung-ha-thao-viet-nam2.png\" alt=\"dong-trung-ha-thao-viet-nam\" width=\"750\" /></p>\r\n<p style=\"text-align: center;\">Cao Nấm Tr&ugrave;ng Thảo Cordy-X l&agrave; sản phẩm Cao Đặc&nbsp;kết hợp giữa&nbsp;tinh chất&nbsp;đ&ocirc;ng tr&ugrave;ng hạ thảo v&agrave;&nbsp;tinh chất nấm linh chi.</p>\r\n<h3 style=\"margin-top: 1px;\">C&ocirc;ng dụng của Cao Nấm Tr&ugrave;ng Thảo Cordy-X với bệnh nh&acirc;n tim mạch</h3>\r\n<p>Như đ&atilde; giải th&iacute;ch ở tr&ecirc;n, <a href=\"http://greenliving.vip/thong-tin-can-quan-tam?song-khoe-n-ngon-cho-benh-nhan-tim-mach\">Cordy-X</a> được tạo ra nhờ v&agrave;o sự kết hợp của tinh chất nấm linh chi v&agrave; tinh chất đ&ocirc;ng tr&ugrave;ng hạ thảo n&ecirc;n sản phẩm mang lại rất nhiều dược chất c&oacute; lợi cho việc bồi bồ sức khỏe của người sử dụng, nhất l&agrave; với người mắc bệnh tim mạch:</p>\r\n<ul>\r\n<li>Kiểm so&aacute;t cholesterol v&agrave; c&aacute;c chất b&eacute;o trong m&aacute;u, gi&uacute;p kiểm so&aacute;t huyết &aacute;p tốt hơn, hạn chế những cơn tăng &aacute;p đột ngột &ndash; nguy cơ dẫn đến đột quỵ, tử vong.</li>\r\n<li>Gi&uacute;p hoạt huyết v&agrave; chống xơ vữa động mạch, ph&ograve;ng tr&aacute;nh những cơn đau tim hay c&aacute;c bệnh l&yacute; li&ecirc;n quan đến tim mạch.</li>\r\n<li>Gi&uacute;p cơ thể tăng lưu lượng m&aacute;u đến cơ quan tạng phủ, từ đ&oacute; dễ d&agrave;ng bồi bổ v&agrave; bảo vệ cơ thể khi suy nhược</li>\r\n<li>Tăng khả năng thực b&agrave;o của Bạch Cầu nhằm tăng sức đề kh&aacute;ng.</li>\r\n</ul>','products/April2019/vng750qgiEqmlhGoPqEZ.png','boi-bo-suc-khoe-cho-benh-nhan-tim-mach-voi-cao-nam-trung-thao-cordy-x',NULL,'Healthy','2019-04-12 05:05:18','2019-04-16 02:54:03',NULL,'Luôn được biết đến là sản phẩm rất tốt cho người mắc các bệnh lý về tim mạch nhờ vào những thành phần dinh dưỡng của mình, đông trùng hạ thảo hẳn là cái tên quá quen thuộc với người dùng.','bồi bổ','Bồi bổ sức khỏe cho bệnh nhân tim mạch với Cao Nấm Trùng Thảo Cordy-X');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Administrator','2019-03-15 02:52:15','2019-03-15 02:52:15'),(2,'user','Normal User','2019-03-15 02:52:15','2019-03-15 02:52:15');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'site.title','Site Title','Site Title','','text',1,'Site'),(2,'site.description','Site Description','Site Description','','text',2,'Site'),(3,'site.logo','Site Logo','settings/April2019/Ms0C8qurs0BK2jq8CPTy.png','','image',3,'Site'),(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID','ga(\'set\', \'userId\', \'USER_ID\');','','text',4,'Site'),(5,'admin.bg_image','Admin Background Image','settings/April2019/HDnMQj5RgKNbkoRZTzF2.jpg','','image',5,'Admin'),(6,'admin.title','Admin Title','MHD PHARMA','','text',1,'Admin'),(7,'admin.description','Admin Description','Welcome to Voyager. The Missing Admin for Laravel','','text',2,'Admin'),(8,'admin.loader','Admin Loader','','','image',3,'Admin'),(9,'admin.icon_image','Admin Icon Image','settings/April2019/Tx8rOqOeH7fvT3pdBwJP.png','','image',4,'Admin'),(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)','280884404475-mvol5b6qlkidn8158nu4r6sjqfv7u7t6.apps.googleusercontent.com','','text',1,'Admin');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sliders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sliders`
--

LOCK TABLES `sliders` WRITE;
/*!40000 ALTER TABLE `sliders` DISABLE KEYS */;
INSERT INTO `sliders` VALUES (2,'Quà tặng sức khỏe cho người thân yêu nhất!','sliders/April2019/SE0JEjMOi3i3bvajOoqj.jpg','http://greenliving.vip/thong-tin-can-quan-tam?cong-dung-cua-cao-nam-trung-thao-cordy-x',NULL,'2019-04-11 03:38:46');
/*!40000 ALTER TABLE `sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` VALUES (1,'data_types','display_name_singular',5,'pt','Post','2019-03-15 02:52:26','2019-03-15 02:52:26'),(2,'data_types','display_name_singular',6,'pt','Página','2019-03-15 02:52:26','2019-03-15 02:52:26'),(3,'data_types','display_name_singular',1,'pt','Utilizador','2019-03-15 02:52:26','2019-03-15 02:52:26'),(4,'data_types','display_name_singular',4,'pt','Categoria','2019-03-15 02:52:26','2019-03-15 02:52:26'),(5,'data_types','display_name_singular',2,'pt','Menu','2019-03-15 02:52:26','2019-03-15 02:52:26'),(6,'data_types','display_name_singular',3,'pt','Função','2019-03-15 02:52:26','2019-03-15 02:52:26'),(7,'data_types','display_name_plural',5,'pt','Posts','2019-03-15 02:52:26','2019-03-15 02:52:26'),(8,'data_types','display_name_plural',6,'pt','Páginas','2019-03-15 02:52:26','2019-03-15 02:52:26'),(9,'data_types','display_name_plural',1,'pt','Utilizadores','2019-03-15 02:52:26','2019-03-15 02:52:26'),(10,'data_types','display_name_plural',4,'pt','Categorias','2019-03-15 02:52:26','2019-03-15 02:52:26'),(11,'data_types','display_name_plural',2,'pt','Menus','2019-03-15 02:52:26','2019-03-15 02:52:26'),(12,'data_types','display_name_plural',3,'pt','Funções','2019-03-15 02:52:26','2019-03-15 02:52:26'),(13,'categories','slug',1,'pt','categoria-1','2019-03-15 02:52:27','2019-03-15 02:52:27'),(14,'categories','name',1,'pt','Categoria 1','2019-03-15 02:52:27','2019-03-15 02:52:27'),(15,'categories','slug',2,'pt','categoria-2','2019-03-15 02:52:27','2019-03-15 02:52:27'),(16,'categories','name',2,'pt','Categoria 2','2019-03-15 02:52:27','2019-03-15 02:52:27'),(17,'pages','title',1,'pt','Olá Mundo','2019-03-15 02:52:27','2019-03-15 02:52:27'),(18,'pages','slug',1,'pt','ola-mundo','2019-03-15 02:52:27','2019-03-15 02:52:27'),(19,'pages','body',1,'pt','<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','2019-03-15 02:52:27','2019-03-15 02:52:27'),(20,'menu_items','title',1,'pt','Painel de Controle','2019-03-15 02:52:27','2019-03-15 02:52:27'),(21,'menu_items','title',2,'pt','Media','2019-03-15 02:52:27','2019-03-15 02:52:27'),(22,'menu_items','title',12,'pt','Publicações','2019-03-15 02:52:27','2019-03-15 02:52:27'),(23,'menu_items','title',3,'pt','Utilizadores','2019-03-15 02:52:27','2019-03-15 02:52:27'),(24,'menu_items','title',11,'pt','Categorias','2019-03-15 02:52:27','2019-03-15 02:52:27'),(25,'menu_items','title',13,'pt','Páginas','2019-03-15 02:52:28','2019-03-15 02:52:28'),(26,'menu_items','title',4,'pt','Funções','2019-03-15 02:52:28','2019-03-15 02:52:28'),(27,'menu_items','title',5,'pt','Ferramentas','2019-03-15 02:52:28','2019-03-15 02:52:28'),(28,'menu_items','title',6,'pt','Menus','2019-03-15 02:52:28','2019-03-15 02:52:28'),(29,'menu_items','title',7,'pt','Base de dados','2019-03-15 02:52:28','2019-03-15 02:52:28'),(30,'menu_items','title',10,'pt','Configurações','2019-03-15 02:52:28','2019-03-15 02:52:28');
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'Admin','admin@admin.com','users/April2019/A7v7Y9g6QCRyVpm92s3G.png','$2y$10$NbWNiiiIgr4Jqf6em12e8ONHI4YFkUdH5FptjCQuC0EQSf48J17ni','kp9OYdHjENwrgY5fiRWIcW8K3jqrNGmHXPxWSgysVDVbhbwWi6qJ6dC1gPuO','{\"locale\":\"en\"}','2019-03-15 02:52:22','2019-04-09 03:38:53');
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

-- Dump completed on 2019-04-19  4:34:51
