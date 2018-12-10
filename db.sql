-- MySQL dump 10.13  Distrib 5.6.26, for osx10.8 (x86_64)
--
-- Host: 127.0.0.1    Database: asa_db
-- ------------------------------------------------------
-- Server version	5.6.26

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
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT '' COMMENT '文章内容',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `delete_status` varchar(1) DEFAULT '1' COMMENT '是否有效  1.有效  2无效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='发布号作者表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` (`id`, `content`, `create_time`, `update_time`, `delete_status`) VALUES (5,'莎士比亚','2017-10-25 01:08:45','2017-10-30 09:59:41','1'),(6,'亚里士多德','2017-10-26 02:49:28','2017-11-18 01:54:15','1'),(10,'亚历山大','2017-10-26 06:57:45','2017-11-08 05:28:52','1'),(11,'李白','2017-10-26 07:23:42','2017-10-26 07:23:42','1'),(19,'文章test2','2017-11-18 05:37:07','2017-11-18 05:37:11','1');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_period`
--

DROP TABLE IF EXISTS `course_period`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_period` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` varchar(1) DEFAULT '0' COMMENT '是否为当前period, ''0'': 是 ,''1'': 否',
  `course_start_date` datetime DEFAULT NULL COMMENT '课程开始时间',
  `course_end_date` datetime DEFAULT NULL COMMENT '课程结束时间',
  `pick_start_date` datetime DEFAULT NULL COMMENT '选课开始时间',
  `pick_end_date` datetime DEFAULT NULL COMMENT '选课结束时间',
  `fee_start_date` datetime DEFAULT NULL COMMENT '学生缴费开始时间',
  `fee_end_date` datetime DEFAULT NULL COMMENT '学生缴费结束时间',
  `finance_start_date` datetime DEFAULT NULL COMMENT '财务审批开始时间',
  `finance_end_date` datetime DEFAULT NULL COMMENT '财务审批结束时间',
  `notice_start_date` datetime DEFAULT NULL COMMENT '选课结果公示开始时间',
  `type` varchar(2) DEFAULT '0' COMMENT '0 正选;1 补选',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_period`
--

LOCK TABLES `course_period` WRITE;
/*!40000 ALTER TABLE `course_period` DISABLE KEYS */;
INSERT INTO `course_period` (`id`, `comments`, `status`, `course_start_date`, `course_end_date`, `pick_start_date`, `pick_end_date`, `fee_start_date`, `fee_end_date`, `finance_start_date`, `finance_end_date`, `notice_start_date`, `type`) VALUES (12,'f','1','2018-12-20 00:00:00','2019-01-22 00:00:00','2018-12-05 00:00:00','2019-01-22 00:00:00','2018-12-11 00:00:00','2019-01-20 00:00:00','2018-12-04 00:00:00','2018-12-22 00:00:00','2018-12-18 00:00:00','0'),(13,'12','1','2018-12-03 00:00:00','2018-12-15 00:00:00','2018-12-18 00:00:00','2019-01-15 00:00:00','2018-12-10 00:00:00','2019-01-15 00:00:00','2018-12-10 00:00:00','2019-01-30 00:00:00','2018-12-18 00:00:00','0'),(14,'12','1','2018-12-03 00:00:00','2018-12-15 00:00:00','2018-12-18 00:00:00','2019-01-15 00:00:00','2018-12-10 00:00:00','2019-01-15 00:00:00','2018-12-10 00:00:00','2019-01-30 00:00:00','2018-12-18 00:00:00','1'),(15,'12','0','2018-12-03 00:00:00','2018-12-15 00:00:00','2018-12-10 00:00:00','2019-01-15 00:00:00','2018-12-10 00:00:00','2019-01-15 00:00:00','2018-12-10 00:00:00','2019-01-30 00:00:00','2018-12-18 00:00:00','1');
/*!40000 ALTER TABLE `course_period` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_student`
--

DROP TABLE IF EXISTS `course_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) DEFAULT NULL COMMENT '选中课程id',
  `select_user_id` int(11) DEFAULT NULL COMMENT '选课学生id',
  `create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '第一次选课时间',
  `update_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_pay` varchar(255) DEFAULT '0' COMMENT '''0'':未支付,''1'':已支付',
  `pay_num` float DEFAULT NULL COMMENT '支付金额',
  `comment` varchar(5000) DEFAULT NULL COMMENT '备注',
  `delete_status` varchar(255) DEFAULT '1' COMMENT '删除字段, 1.有效  2无效',
  `course_date` set('tue','wed','thu') DEFAULT NULL COMMENT '课程日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_student`
--

LOCK TABLES `course_student` WRITE;
/*!40000 ALTER TABLE `course_student` DISABLE KEYS */;
INSERT INTO `course_student` (`id`, `course_id`, `select_user_id`, `create_date`, `update_date`, `is_pay`, `pay_num`, `comment`, `delete_status`, `course_date`) VALUES (12,45,10003,'2018-12-02 03:06:27','2018-12-02 03:21:16','0',NULL,NULL,'2',NULL),(13,45,10003,'2018-12-02 03:24:10','2018-12-08 06:37:26','0',NULL,NULL,'2',NULL),(14,26,10003,'2018-12-02 03:40:56','2018-12-05 13:44:53','0',NULL,NULL,'2',NULL),(15,46,10003,'2018-12-08 09:20:40','2018-12-08 09:24:26','0',NULL,NULL,'2',NULL),(16,45,10003,'2018-12-08 09:20:50','2018-12-08 09:24:25','0',NULL,NULL,'2',NULL),(17,46,10003,'2018-12-08 09:24:41','2018-12-08 09:29:04','0',NULL,NULL,'2','thu'),(18,46,10003,'2018-12-08 13:11:40','2018-12-08 13:11:55','0',NULL,NULL,'2','tue,wed,thu'),(19,46,10003,'2018-12-08 13:12:45','2018-12-08 13:13:02','0',NULL,NULL,'2','thu'),(20,46,10003,'2018-12-09 06:46:44','2018-12-09 06:46:50','0',NULL,NULL,'2','tue,wed,thu'),(21,46,10003,'2018-12-09 06:47:08','2018-12-09 06:47:26','0',NULL,NULL,'2','wed,thu'),(22,46,10003,'2018-12-09 06:47:36','2018-12-09 11:02:59','0',NULL,NULL,'2','wed');
/*!40000 ALTER TABLE `course_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_teacher`
--

DROP TABLE IF EXISTS `course_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT '' COMMENT '课程名',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `capacity` int(5) DEFAULT NULL COMMENT '学生容量',
  `brief` varchar(5000) DEFAULT NULL COMMENT '课程简介',
  `tuition_type` varchar(5) DEFAULT NULL COMMENT '费用大类型: fee:付费,free:免费',
  `tuition` varchar(10) DEFAULT NULL COMMENT '原始学费(教师上报)',
  `tuition_sub_type` varchar(10) DEFAULT NULL COMMENT '费用类型: 1:每人,2:课时,3:学期',
  `course_date` set('tue','wed','thu') DEFAULT NULL COMMENT '课程日期',
  `create_user` int(11) DEFAULT NULL COMMENT '创建人id',
  `update_user` int(11) DEFAULT NULL COMMENT '更信任id',
  `teacher_type` varchar(1) DEFAULT NULL COMMENT '0: 中教, 1: 外教, 2: 外聘',
  `final_tuition` varchar(20) DEFAULT NULL COMMENT '最终价格(由管理员修改)',
  `grade` varchar(25) DEFAULT NULL COMMENT '授课年级,区间',
  `course_area` varchar(100) DEFAULT NULL COMMENT '上课场地',
  `start_date` datetime DEFAULT NULL COMMENT '开始时间',
  `end_date` datetime DEFAULT NULL COMMENT '结束时间',
  `delete_status` varchar(1) DEFAULT '1' COMMENT '是否有效  1.有效  2无效',
  `teacher_name` int(11) DEFAULT NULL COMMENT '授课教师',
  `status` set('draft','publish') DEFAULT 'draft' COMMENT '课程状态',
  `need_training_aid` varchar(2) DEFAULT NULL COMMENT '是否自带教具 1:是, 2:否',
  `phone` varchar(15) DEFAULT NULL COMMENT '电话',
  `price` float DEFAULT NULL COMMENT '教具金额',
  `recommend_brand` varchar(2000) DEFAULT NULL COMMENT '推荐品牌',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COMMENT='发布号作者表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_teacher`
--

LOCK TABLES `course_teacher` WRITE;
/*!40000 ALTER TABLE `course_teacher` DISABLE KEYS */;
INSERT INTO `course_teacher` (`id`, `content`, `create_time`, `update_time`, `capacity`, `brief`, `tuition_type`, `tuition`, `tuition_sub_type`, `course_date`, `create_user`, `update_user`, `teacher_type`, `final_tuition`, `grade`, `course_area`, `start_date`, `end_date`, `delete_status`, `teacher_name`, `status`, `need_training_aid`, `phone`, `price`, `recommend_brand`) VALUES (5,'莎士比亚1','2017-10-25 01:08:45','2018-12-02 02:30:01',2,'美方向移民发射催泪弹（图源：路透社）\n\n海外网11月27日电随着大批中美洲移民抵达美墨边境的墨西哥一侧，试图越过围栏进入美国，美方也在上周末起采取一系列强硬措施，包括对移民发射催泪弹，随即引发一些移民权利组织的不满。当地时间26日，美国总统特朗普为美边境巡逻队使用催泪弹的做法辩护，直指一些移民“非常粗暴”，美方是“不得已采取了这样的行动”。\n\n',NULL,'100','2','wed,thu',10003,10003,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'draft',NULL,NULL,NULL,NULL),(6,'KKK','2017-10-26 02:49:28','2018-12-02 02:37:16',25,'12',NULL,'1','2','tue,wed',10003,10003,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'draft',NULL,NULL,NULL,NULL),(19,'文章test2','2017-11-18 05:37:07','2018-12-02 02:37:14',25,'烦烦烦',NULL,'111','2','tue,wed,thu',10003,10003,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'draft',NULL,NULL,NULL,NULL),(20,'劳斯莱斯了','2018-11-21 06:07:19','2018-12-02 02:37:12',25,'12',NULL,'1999','2','tue,thu',10003,10003,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'draft',NULL,NULL,NULL,NULL),(23,'反反复复2反反复复','2018-11-21 06:07:34','2018-12-05 13:44:39',25,'sdafsadfasdf',NULL,'509','2','wed',10008,10003,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'draft',NULL,NULL,NULL,NULL),(24,'1212','2018-11-21 06:07:42','2018-12-05 13:44:33',25,'方法',NULL,'400','2','tue',10008,10003,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'draft',NULL,NULL,NULL,NULL),(25,'发发发','2018-11-21 06:07:47','2018-12-05 13:44:34',25,'综合福克斯新闻、美国中文网等媒体报道，26日，特朗普在白宫外对记者发表讲话时谈及了近日引发诸多关注的移民问题。对于美国边境巡逻队上周末使用催泪弹驱逐一群冲向边境的大篷车移民，特朗普表示：“他们（边境巡逻队）不得不使用催泪瓦斯，因为冲向他们的是一些非常粗暴的人。正因为如此，他们使用了催泪瓦斯。（我们的）底线就是：除非合法进入，否则没人可以进入美国。”\n\n除了特朗普，此次事件的当事方——圣地亚哥边境巡逻队主管斯科特26日也在接受媒体采访时谈及了当时的情况。他表示，移民走近边境围栏后开始向移民官员投掷石块和碎片。“我们的人受到攻击，而他们的数量开始增长，你知道我们两到三个人要面对数百人，所以就使用催泪瓦斯来保护自己。”\n\n不过，美国公民自由联盟移民权利项目副主任格伦特却认为，边境巡逻队是在“过度使用武力”。“那里有妇女和儿童。在这种情况下使用催泪瓦斯似乎并不合理。”格伦特说。\n聚集在美墨边境的移民（图源：路透社）\n\n此前，美媒曾报道特朗普就“移民大军”向墨西哥“发难”，要求墨方将那些想在美国申请庇护的移民送回本来的国家，否则就会在必要时永久关闭美墨边境。墨西哥政府尚未对此作出回应。\n\n连日来，大批中美洲移民在墨西哥的边境城市聚集，寻求进入美国，美墨两国也纷纷在边境地区加派兵力展开应对。在周末的骚乱发生后，墨西哥方面表示将立即驱逐大约500名非法越境的移民。墨西哥还表示，自10月19日以来，已将1.1万名中美洲移民送回原籍国，其中有1906名是近期大篷车队的成员。（海外网 张霓）\n\n本文系版权作品，未经授权严禁转载。海外视野，中国立场，登陆人民日报海外版官网——海外网www.haiwainet.cn或“海客”客户端，领先一步获取权威资讯。\n本文由百家号作者上传并发布，百家号仅提供信息发布平台。文章仅代表作者个人观点，不代表百度立场。未经作者许可，不得转载。\n本文由百家号作者上传并发布，百家号仅提供信息发布平台。文章仅代表作者个人观点，不代表百度立场。未经作者许可，不得转载。\n本文由百家号作者上传并发布，百家号仅提供信息发布平台。文章仅代表作者个人观点，不代表百度立场。未经作者许可，不得转载。\n聚集在美墨边境的移民（图源：路透社）\n\n此前，美媒曾报道特朗普就“移民大军”向墨西哥“发难”，要求墨方将那些想在美国申请庇护的移民送回本来的国家，否则就会在必要时永久关闭美墨边境。墨西哥政府尚未对此作出回应。\n\n连日来，大批中美洲移民在墨西哥的边境城市聚集，寻求进入美国，美墨两国也纷纷在边境地区加派兵力展开应对。在周末的骚乱发生后，墨西哥方面表示将立即驱逐大约500名非法越境的移民。墨西哥还表示，自10月19日以来，已将1.1万名中美洲移民送回原籍国，其中有1906名是近期大篷车队的成员。（海外网 张霓）\n\n本文系版权作品，未经授权严禁转载。海外视野，中国立场，登陆人民日报海外版官网——海外网www.haiwainet.cn或“海客”客户端，领先一步获取权威资讯。',NULL,NULL,'2','thu',10008,10003,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'draft',NULL,NULL,NULL,NULL),(26,'1test12','2018-11-23 05:51:01','2018-12-05 13:44:59',25,'反反复复',NULL,'45','2','wed,thu',10008,10003,NULL,NULL,NULL,NULL,NULL,NULL,'2',NULL,'draft',NULL,NULL,NULL,NULL),(27,'eer','2018-11-27 08:29:39','2018-12-02 02:37:11',25,'12',NULL,'12','2','wed,thu',10003,10003,NULL,NULL,NULL,NULL,'2018-11-07 00:00:00','2018-11-24 00:00:00','2',NULL,'draft',NULL,NULL,NULL,NULL),(32,'22','2018-11-29 09:25:08','2018-12-02 02:37:09',25,'12',NULL,'12','2','wed,thu',10003,10003,'1',NULL,'[2,7]',NULL,'2018-11-07 00:00:00','2018-11-24 00:00:00','2',NULL,'draft',NULL,NULL,NULL,NULL),(33,'1212','2018-12-01 06:41:26','2018-12-02 02:35:59',25,'12',NULL,NULL,'2','wed,thu',10003,10003,NULL,NULL,'[0,9]',NULL,'2018-11-07 00:00:00','2018-11-24 00:00:00','2',NULL,'draft',NULL,NULL,NULL,NULL),(34,'121','2018-12-01 06:41:58','2018-12-02 02:30:59',25,'12',NULL,NULL,'2','wed,thu',10003,10003,NULL,NULL,'[0,9]',NULL,'2018-11-07 00:00:00','2018-11-24 00:00:00','2',NULL,'draft',NULL,NULL,NULL,NULL),(35,'w22','2018-12-01 07:42:31','2018-12-02 02:35:56',25,'12',NULL,NULL,'2','wed,thu',10003,10003,NULL,NULL,'[0,9]',NULL,'2018-11-07 00:00:00','2018-11-24 00:00:00','2',NULL,'draft',NULL,NULL,NULL,NULL),(36,'哥哥','2018-12-01 08:30:48','2018-12-02 02:35:53',25,'12','fee','1212','2','wed,thu',10003,10003,'1',NULL,'[0,7]','12','2018-11-07 00:00:00','2018-11-24 00:00:00','2',NULL,'draft',NULL,NULL,NULL,NULL),(37,'12hhhhhh','2018-12-01 09:07:18','2018-12-02 02:31:04',25,'12','fee','12','2','wed,thu',10003,10003,'2',NULL,'[0,9]',NULL,'2018-11-07 00:00:00','2018-11-24 00:00:00','2',NULL,'draft',NULL,NULL,NULL,NULL),(38,'ooooooooooo','2018-12-01 09:50:21','2018-12-02 02:35:50',20,'12112','fee','111','2','tue,wed,thu',10003,10003,'2',NULL,'[9,9]',NULL,'2018-11-07 00:00:00','2018-11-24 00:00:00','2',NULL,'draft',NULL,NULL,NULL,NULL),(39,'12','2018-12-01 12:21:38','2018-12-02 02:35:47',25,'12','fee','12','3','tue,wed,thu',10003,10003,'1',NULL,'[9,9]',NULL,'2018-11-07 00:00:00','2018-11-24 00:00:00','2',NULL,'draft',NULL,NULL,NULL,NULL),(40,'lllll','2018-12-01 13:26:47','2018-12-02 02:35:43',25,'21','free',NULL,NULL,'wed,thu',10003,10003,'2',NULL,'[2,2]',NULL,'2018-11-07 00:00:00','2018-11-24 00:00:00','2',NULL,'draft',NULL,NULL,NULL,NULL),(41,'777777','2018-12-01 13:31:09','2018-12-02 02:35:39',25,'2w','free',NULL,NULL,'tue,wed,thu',10003,10003,'1',NULL,'[6,6]',NULL,'2018-11-07 00:00:00','2018-11-24 00:00:00','2',NULL,'draft',NULL,NULL,NULL,NULL),(42,'00000000000','2018-12-02 01:21:17','2018-12-02 02:34:26',25,'kkk','free',NULL,NULL,'tue',10003,10003,'1',NULL,'[0,9]',NULL,'2018-11-07 00:00:00','2018-11-24 00:00:00','2',NULL,'draft',NULL,NULL,NULL,NULL),(43,'00000000000','2018-12-02 01:39:21','2018-12-02 02:34:36',25,'kkk','free',NULL,NULL,'tue,wed',10003,10003,'1',NULL,'[0,9]',NULL,'2018-11-07 00:00:00','2018-11-24 00:00:00','2',NULL,'draft',NULL,NULL,NULL,NULL),(44,'00000000000','2018-12-02 01:46:17','2018-12-02 02:35:25',25,'kkk','free',NULL,NULL,'tue,wed',10003,10003,'1',NULL,'[0,9]',NULL,'2018-11-07 00:00:00','2018-11-24 00:00:00','2',NULL,'draft',NULL,NULL,NULL,NULL),(45,'发送的风景-sdfsd ','2018-12-02 02:37:41','2018-12-08 13:07:02',15,'反倒是','free',NULL,NULL,'tue',10003,10003,'1',NULL,'[0,9]',NULL,'2018-11-07 00:00:00','2018-11-24 00:00:00','2',10003,'publish',NULL,NULL,NULL,NULL),(46,'fff','2018-12-04 06:58:10','2018-12-09 13:28:18',15,'23232323kkk','fee','12','2','wed,thu',10003,10003,'2',NULL,'[7]',NULL,'2018-11-07 00:00:00','2018-11-24 00:00:00','1',10003,'publish','1','12',1111,'fskksdkfkdfkf'),(47,'我的课程','2018-12-05 13:45:33','2018-12-08 04:45:49',25,NULL,'free',NULL,NULL,'tue',10007,10003,'1',NULL,'[0,7]',NULL,'2018-12-10 00:00:00','2019-01-15 00:00:00','2',NULL,'draft',NULL,NULL,NULL,NULL),(48,'可以','2018-12-05 13:45:56','2018-12-08 08:56:03',15,'12','fee','12','2','tue',10007,10003,'0',NULL,'[0,5]',NULL,'2018-12-10 00:00:00','2019-01-15 00:00:00','2',NULL,'draft',NULL,NULL,NULL,NULL),(49,'2222','2018-12-08 05:16:48','2018-12-08 08:55:58',14,NULL,NULL,NULL,NULL,'wed',10007,10003,NULL,NULL,'[0,9]',NULL,'2018-12-10 00:00:00','2019-01-15 00:00:00','2',NULL,'draft',NULL,NULL,NULL,NULL),(50,'12','2018-12-08 06:16:25','2018-12-08 08:56:02',15,NULL,NULL,NULL,NULL,'wed',10003,10003,NULL,NULL,'[0,9]',NULL,'2018-12-10 00:00:00','2019-01-15 00:00:00','2',NULL,'draft',NULL,NULL,NULL,NULL),(51,'fff','2018-12-08 08:56:27','2018-12-08 08:58:56',15,NULL,NULL,NULL,NULL,'wed',10003,10003,NULL,NULL,'[0,9]',NULL,'2018-12-10 00:00:00','2019-01-15 00:00:00','2',10003,'draft',NULL,NULL,NULL,NULL),(52,'212','2018-12-08 08:58:02','2018-12-09 10:11:04',15,NULL,NULL,NULL,NULL,'wed',10003,10003,NULL,NULL,'[0,9]',NULL,'2018-12-10 00:00:00','2019-01-15 00:00:00','2',10007,'draft',NULL,NULL,NULL,NULL),(53,'ffff','2018-12-08 08:59:08','2018-12-09 13:19:07',15,NULL,'free',NULL,NULL,'wed',10003,10003,'2',NULL,'[0,1,2,3,4,5,6,7]',NULL,'2018-12-10 00:00:00','2019-01-15 00:00:00','1',10007,'draft','2','23',23,'2'),(54,'rr','2018-12-08 09:04:22','2018-12-08 11:39:21',15,NULL,NULL,NULL,NULL,'wed',10003,10003,NULL,NULL,'[0,9]',NULL,'2018-12-10 00:00:00','2019-01-15 00:00:00','2',10003,'draft',NULL,NULL,NULL,NULL),(55,'rf','2018-12-08 09:04:55','2018-12-09 13:11:29',15,'这个课程是','fee','12','2','tue',10003,10003,'2',NULL,'[0,1,2,3,4,5,6,7,8,9]',NULL,'2018-12-10 00:00:00','2019-01-15 00:00:00','1',10007,'draft','1',NULL,NULL,NULL),(56,'f','2018-12-09 10:52:51','2018-12-09 10:54:00',15,NULL,'free',NULL,NULL,'thu',10003,10003,'2',NULL,'[0,9]',NULL,'2018-12-10 00:00:00','2019-01-15 00:00:00','2',10007,'draft','1',NULL,NULL,NULL),(57,'dsf','2018-12-09 10:54:17','2018-12-09 13:28:24',15,'q','free',NULL,NULL,'thu',10003,10003,'2',NULL,'[3,4,5,6,7]',NULL,'2018-12-10 00:00:00','2019-01-15 00:00:00','1',10007,'publish','2','12',12,'12');
/*!40000 ALTER TABLE `course_teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade`
--

DROP TABLE IF EXISTS `grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grade` (
  `id` int(11) NOT NULL,
  `grade_name` varchar(255) DEFAULT NULL,
  `level` varchar(1) DEFAULT NULL,
  `delete_status` varchar(1) DEFAULT '0' COMMENT '''0'': 生效,''1'': 已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='年级表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade`
--

LOCK TABLES `grade` WRITE;
/*!40000 ALTER TABLE `grade` DISABLE KEYS */;
/*!40000 ALTER TABLE `grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_attach`
--

DROP TABLE IF EXISTS `sys_attach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_attach` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '上传者userId',
  `location` varchar(2000) DEFAULT NULL COMMENT '文件存放路径',
  `business_id` int(11) DEFAULT NULL COMMENT '业务主键',
  `origin_fileName` varchar(512) DEFAULT NULL COMMENT '真实文件名',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='附件表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_attach`
--

LOCK TABLES `sys_attach` WRITE;
/*!40000 ALTER TABLE `sys_attach` DISABLE KEYS */;
INSERT INTO `sys_attach` (`id`, `user_id`, `location`, `business_id`, `origin_fileName`, `create_date`) VALUES (5,10003,'files\\f4ef1729-43f6-4df6-8405-5b79c645805b',NULL,'协同看板需求交接文档.docx','2018-12-06 14:45:27'),(6,10003,'files\\e37920c9-adad-4e82-9dc0-8aa17e7d7726',NULL,'协同看板需求交接文档.docx','2018-12-06 14:56:52'),(7,10003,'files\\ff929b6d-8689-4919-baec-1f03b1960bd5',NULL,'协同看板需求交接文档.docx','2018-12-06 15:02:29'),(8,10003,'files\\0cc84461-b1d1-4cdb-934e-70f4e7dbd6a5',NULL,'协同看板需求交接文档.docx','2018-12-06 15:04:03'),(9,10003,'files\\615eb085-041b-4b46-8673-882855d03c13',NULL,'协同看板需求交接文档.docx','2018-12-06 15:12:41'),(10,10003,'files\\1b6c8c5d-a831-434d-8302-598d069d0ad4',NULL,'协同看板需求交接文档.docx','2018-12-06 15:33:45'),(11,10003,'96c4cd6a-a45f-4c56-94fe-cc76c00224bb',NULL,'协同看板需求交接文档.docx','2018-12-06 15:40:07'),(12,10003,NULL,NULL,'协同看板需求交接文档.docx','2018-12-06 15:51:03'),(13,10003,'52e68376-db4a-456d-9141-301d8fee02bd',NULL,'协同看板需求交接文档.docx','2018-12-06 15:58:40'),(14,10003,'758b6263-3b20-4ff6-846a-01483c216c35',NULL,'协同看板需求交接文档.docx','2018-12-06 15:59:12'),(15,10003,'d036bc0a-e488-4ee0-91cd-1cf9a1f08cf4',NULL,'协同看板需求交接文档.docx','2018-12-06 16:03:31'),(16,10003,'540b01d7-c150-445b-95d1-69baafe91719',NULL,'协同看板需求交接文档.docx','2018-12-06 16:06:05'),(17,10003,'562dfaad-6f29-46f9-a1d9-4d5a27320079',NULL,'协同看板需求交接文档.docx','2018-12-06 16:18:36'),(18,10003,'4305ac2b-ca0f-44a2-b3b4-65531d8a7867',NULL,'协同看板需求交接文档.docx','2018-12-06 16:30:14'),(19,10003,'b92f9280-2516-410c-980d-36feafc0af54',NULL,'协同看板需求交接文档.docx','2018-12-06 16:35:06'),(20,10003,'c933f3e0-e3fa-4162-abac-22470d8bd55b',NULL,'test111.docx','2018-12-06 16:36:04'),(21,10003,'51fd6a5d-52eb-488f-abc9-3a5bbce650d4',NULL,'协同看板需求交接文档.docx','2018-12-06 16:40:29'),(22,10003,'3c6b33f8-e2ba-42db-a8b0-352d966ee9d8',NULL,'初中排课表逻辑.pdf','2018-12-06 16:40:58'),(23,10003,'7ee81220-c906-4ce9-90d8-6ca85e0983c6',NULL,'协同看板需求交接文档.docx','2018-12-06 16:45:06'),(24,10003,'3d05d19d-8eaf-4ccc-8da4-be48178ea1d4',NULL,'test111.docx','2018-12-06 16:46:10'),(25,10003,'f168afc6-087d-4a38-8b45-52edcb9c075b',NULL,'test1.docx','2018-12-06 16:47:26'),(26,10003,'5c964a52-e295-44d1-8860-53abdfabc658',NULL,'协同看板需求交接文档.docx','2018-12-06 16:47:39'),(29,10003,'a3838912-14d9-447f-abd1-d2c88a0a6c59',46,'toeic_exam.pdf','2018-12-08 09:17:26'),(30,10003,'47071585-cc37-4600-a9f3-053f43a11468',NULL,'Job Aid for Chinese employees.pdf','2018-12-08 09:52:32'),(31,10003,'1199bdad-21f6-4c0e-96e8-45bae3d162de',NULL,'Job Aid for Chinese employees.pdf','2018-12-08 09:54:18'),(32,10003,'e69e69ba-6b99-44a9-a5fc-53d16e9bad95',45,'Job Aid for Chinese employees.pdf','2018-12-08 09:56:28'),(33,10007,'d410cbe9-b611-4fbc-9561-f00713967a4f',48,'toeic_exam.pdf','2018-12-08 13:14:46'),(34,10003,'7499ce5d-581d-472b-b7d1-88d93f793105',57,'toeic_exam.pdf','2018-12-09 19:00:23');
/*!40000 ALTER TABLE `sys_attach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_email_config`
--

DROP TABLE IF EXISTS `sys_email_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_email_config` (
  `id` int(11) NOT NULL,
  `host` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_email_config`
--

LOCK TABLES `sys_email_config` WRITE;
/*!40000 ALTER TABLE `sys_email_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_email_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_permission`
--

DROP TABLE IF EXISTS `sys_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_permission` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT '自定id,主要供前端展示权限列表分类排序使用.',
  `menu_code` varchar(255) DEFAULT '' COMMENT '归属菜单,前端判断并展示菜单使用,',
  `menu_name` varchar(255) DEFAULT '' COMMENT '菜单的中文释义',
  `permission_code` varchar(255) DEFAULT '' COMMENT '权限的代码/通配符,对应代码中@RequiresPermissions 的value',
  `permission_name` varchar(255) DEFAULT '' COMMENT '本权限的中文释义',
  `required_permission` tinyint(1) DEFAULT '2' COMMENT '是否本菜单必选权限, 1.必选 2非必选 通常是"列表"权限是必选',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='后台权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_permission`
--

LOCK TABLES `sys_permission` WRITE;
/*!40000 ALTER TABLE `sys_permission` DISABLE KEYS */;
INSERT INTO `sys_permission` (`id`, `menu_code`, `menu_name`, `permission_code`, `permission_name`, `required_permission`) VALUES (101,'course-teacher','课程管理','course-teacher:list','列表',1),(102,'course-teacher','课程管理','course-teacher:add','新增',2),(103,'course-teacher','课程管理','course-teacher:update','修改',2),(104,'course-teacher','课程管理','course-teacher:delete','删除',2),(201,'course-student','学生选课','course-student:list','列表',1),(202,'course-student','学生选课','course-student:update','选课',2),(601,'user','用户','user:list','列表',1),(602,'user','用户','user:add','新增',2),(603,'user','用户','user:update','修改',2),(701,'role','角色权限','role:list','列表',1),(702,'role','角色权限','role:add','新增',2),(703,'role','角色权限','role:update','修改',2),(704,'role','角色权限','role:delete','删除',2),(801,'period','选课周期','sys:period','选课周期',2),(901,'course-finance','财务管理','course-finance:list','列表',1),(902,'course-finance','财务管理','course-finance:update','管理',2);
/*!40000 ALTER TABLE `sys_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(20) DEFAULT NULL COMMENT '角色名',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `register_show` varchar(1) DEFAULT '1' COMMENT '注册时是否显示该角色 ''1'': 显示, ''2'': 不显示',
  `group_tag` varchar(1) DEFAULT '0' COMMENT '0或null: 未设置, 1: 学生组, 2: 教师组，3：财务',
  `delete_status` varchar(1) DEFAULT '1' COMMENT '是否有效  1有效  2无效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='后台角色表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` (`id`, `role_name`, `create_time`, `update_time`, `register_show`, `group_tag`, `delete_status`) VALUES (1,'管理员','2017-11-22 08:24:34','2018-11-21 07:37:15','2',NULL,'1'),(2,'作家','2017-11-22 08:24:34','2018-12-08 14:50:27','2','2','2'),(3,'教师','2017-11-22 08:28:47','2018-11-23 05:19:03','1','2','1'),(4,'学生','2018-11-20 01:49:12','2018-11-30 03:42:31','2','1','1'),(5,'test','2018-11-23 05:18:30','2018-11-27 09:31:09','1','2','2'),(6,'财务','2018-12-08 14:57:28','2018-12-08 14:57:28','1','3','1');
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_permission`
--

DROP TABLE IF EXISTS `sys_role_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL COMMENT '角色id',
  `permission_id` int(11) DEFAULT NULL COMMENT '权限id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `delete_status` varchar(1) DEFAULT '1' COMMENT '是否有效 1有效     2无效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='角色-权限关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_permission`
--

LOCK TABLES `sys_role_permission` WRITE;
/*!40000 ALTER TABLE `sys_role_permission` DISABLE KEYS */;
INSERT INTO `sys_role_permission` (`id`, `role_id`, `permission_id`, `create_time`, `update_time`, `delete_status`) VALUES (1,2,101,'2017-11-22 08:26:21','2018-12-08 14:50:27','2'),(2,2,102,'2017-11-22 08:26:21','2018-12-08 14:50:27','2'),(5,2,602,'2017-11-22 08:28:28','2018-12-08 14:50:27','2'),(6,2,601,'2017-11-22 08:28:28','2018-12-08 14:50:27','2'),(7,2,603,'2017-11-22 08:28:28','2018-12-08 14:50:27','2'),(8,2,703,'2017-11-22 08:28:28','2018-12-08 14:50:27','2'),(9,2,701,'2017-11-22 08:28:28','2018-12-08 14:50:27','2'),(10,2,702,'2017-11-22 08:28:28','2018-12-08 14:50:27','2'),(11,2,704,'2017-11-22 08:28:31','2018-12-08 14:50:27','2'),(12,2,103,'2017-11-22 08:28:31','2018-12-08 14:50:27','2'),(13,3,601,'2017-11-22 08:28:47','2017-11-22 08:28:47','1'),(14,3,701,'2017-11-22 08:28:47','2017-11-22 08:28:47','1'),(15,3,702,'2017-11-22 08:35:01','2018-12-05 15:42:56','2'),(16,3,704,'2017-11-22 08:35:01','2018-12-05 15:42:56','2'),(17,3,102,'2017-11-22 08:35:01','2017-11-22 08:35:01','1'),(18,3,101,'2017-11-22 08:35:01','2017-11-22 08:35:01','1'),(19,3,603,'2017-11-22 08:35:01','2018-12-05 15:42:56','2'),(20,4,101,'2018-11-20 01:49:12','2018-11-20 04:01:57','2'),(23,4,201,'2018-11-20 04:01:17','2018-11-20 04:01:17','1'),(24,4,202,'2018-11-20 04:01:17','2018-11-20 04:01:17','1'),(25,5,101,'2018-11-23 05:18:30','2018-11-27 09:31:09','2'),(26,5,102,'2018-11-23 05:18:30','2018-11-27 09:31:09','2'),(27,5,103,'2018-11-23 05:18:30','2018-11-27 09:31:09','2'),(28,5,801,'2018-11-23 05:18:30','2018-11-27 09:31:09','2'),(29,5,201,'2018-11-23 05:52:31','2018-11-27 09:31:09','2'),(30,5,202,'2018-11-23 05:52:31','2018-11-27 09:31:09','2'),(31,3,201,'2018-11-27 09:32:02','2018-11-28 07:53:37','2'),(32,3,202,'2018-11-27 09:32:02','2018-11-28 07:53:37','2'),(33,3,104,'2018-11-27 09:32:02','2018-11-27 09:37:44','2'),(34,3,103,'2018-11-27 09:32:02','2018-11-27 09:32:02','1'),(35,3,801,'2018-11-27 10:17:05','2018-11-27 10:18:37','2'),(36,3,104,'2018-12-05 15:42:56','2018-12-05 15:42:56','1'),(37,6,901,'2018-12-08 14:57:28','2018-12-08 14:57:28','1'),(38,6,902,'2018-12-08 14:57:28','2018-12-08 14:57:28','1'),(39,6,601,'2018-12-08 14:57:28','2018-12-08 14:57:28','1');
/*!40000 ALTER TABLE `sys_role_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `nickname` varchar(255) DEFAULT NULL COMMENT '昵称(英文)',
  `role_id` int(11) DEFAULT '0' COMMENT '角色ID',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `delete_status` varchar(1) DEFAULT '1' COMMENT '是否有效  1有效  2无效',
  `active_status` varchar(1) DEFAULT '0' COMMENT '''0'': 未激活, ''1'': 激活',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `nickname_cn` varchar(255) DEFAULT NULL COMMENT '姓名 中文',
  `phone` varchar(20) DEFAULT NULL COMMENT '电话',
  `grade` int(2) DEFAULT NULL COMMENT '年级(学生用)',
  `class` varchar(8) DEFAULT NULL COMMENT '班级(学生用)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10009 DEFAULT CHARSET=utf8 COMMENT='运营后台用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `role_id`, `create_time`, `update_time`, `delete_status`, `active_status`, `email`, `nickname_cn`, `phone`, `grade`, `class`) VALUES (10003,'admin','123456','超级用户23',1,'2017-10-30 03:52:38','2018-12-05 13:54:13','1','1','admin@sdf.com','123',NULL,NULL,NULL),(10004,'user','123456','莎士比亚',2,'2017-10-30 08:13:02','2018-12-09 06:45:05','2','0','sls@ads.com','123',NULL,NULL,NULL),(10007,'test','123456','just see',3,'2017-11-22 08:29:41','2018-12-08 15:00:32','1','1','sfdfsad@sdf.com','就看看列表',NULL,NULL,NULL),(10008,'xiaoming','123456','xiaomingming',4,'2018-11-20 01:49:43','2018-12-09 06:45:00','1','1','asdf@aaa.som','小明',NULL,NULL,NULL);
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_active`
--

DROP TABLE IF EXISTS `sys_user_active`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_active` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `active_code` varchar(255) DEFAULT NULL COMMENT '激活码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_active`
--

LOCK TABLES `sys_user_active` WRITE;
/*!40000 ALTER TABLE `sys_user_active` DISABLE KEYS */;
INSERT INTO `sys_user_active` (`id`, `email`, `active_code`) VALUES (2,'328901261@qq.com','cCM8Q06Oq465f97l39xB010261'),(3,'','Z9Owo12663P6343em21v72gh24'),(4,'07033320a@gmail.com','915546561D5O04rLW42ny222aP'),(5,'07033320a@gmail.com','1C05g30Hl0H4h457nY3iJ5rMtf'),(6,'07033320a@gmail.com','Qt896DoF9188WDuEQ4s92S5714'),(7,'07033320a@gmail.com','b8GID4wim09cC8Dj21DWrJ181G'),(8,'07033320a@gmail.com','kJ2N4hQ0vp866om0gZ88BpY13H'),(9,'070333@a.com','PVT0O4BNF8x6qS82TZk0C62597'),(10,'07033320a@gmail.com','eYAc560431AOyp529Id1886xed'),(11,'07033320a@gmail.com','I8P866DS499Ap29g3I11B4WP53');
/*!40000 ALTER TABLE `sys_user_active` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-10  9:24:19
