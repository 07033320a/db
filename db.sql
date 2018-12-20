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
  `course_start_date` datetime DEFAULT NULL COMMENT '课程发布开始时间',
  `course_end_date` datetime DEFAULT NULL COMMENT '课程发布结束时间',
  `pick_start_date` datetime DEFAULT NULL COMMENT '选课开始时间',
  `pick_end_date` datetime DEFAULT NULL COMMENT '选课结束时间',
  `fee_start_date` datetime DEFAULT NULL COMMENT '学生缴费开始时间',
  `fee_end_date` datetime DEFAULT NULL COMMENT '学生缴费结束时间',
  `finance_start_date` datetime DEFAULT NULL COMMENT '财务审批开始时间',
  `finance_end_date` datetime DEFAULT NULL COMMENT '财务审批结束时间',
  `notice_start_date` datetime DEFAULT NULL COMMENT '选课结果公示开始时间',
  `type` varchar(2) DEFAULT '0' COMMENT '0 正选;1 补选',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_period`
--

LOCK TABLES `course_period` WRITE;
/*!40000 ALTER TABLE `course_period` DISABLE KEYS */;
INSERT INTO `course_period` (`id`, `comments`, `status`, `course_start_date`, `course_end_date`, `pick_start_date`, `pick_end_date`, `fee_start_date`, `fee_end_date`, `finance_start_date`, `finance_end_date`, `notice_start_date`, `type`) VALUES (24,'hgh','1','2018-12-12 00:00:00','2018-12-15 00:00:00','2018-12-13 00:00:00','2018-12-22 00:00:00','2018-12-13 00:00:00','2018-12-21 00:00:00','2018-12-06 00:00:00','2018-12-06 00:00:00','2018-12-20 00:00:00','0'),(25,'high','1','2018-12-16 00:00:00','2018-12-27 00:00:00','2018-12-16 00:00:00','2018-12-27 00:00:00','2018-12-17 00:00:00','2018-12-28 00:00:00','2018-12-26 00:00:00','2018-12-29 00:00:00','2018-12-20 00:00:00','0'),(26,'high','1','2018-12-16 00:00:00','2018-12-27 00:00:00','2018-12-16 00:00:00','2018-12-27 00:00:00','2018-12-17 00:00:00','2018-12-28 00:00:00','2018-12-26 00:00:00','2018-12-29 00:00:00','2018-12-20 00:00:00','0'),(27,'high','1','2018-12-16 00:00:00','2018-12-27 00:00:00','2018-12-16 00:00:00','2018-12-27 00:00:00','2018-12-17 00:00:00','2018-12-28 00:00:00','2018-12-26 00:00:00','2018-12-29 00:00:00','2018-12-20 00:00:00','0'),(28,'high','1','2018-12-16 00:00:00','2018-12-27 00:00:00','2018-12-16 00:00:00','2018-12-27 00:00:00','2018-12-17 00:00:00','2018-12-28 00:00:00','2018-12-26 00:00:00','2018-12-29 00:00:00','2018-12-20 00:00:00','0'),(29,'high','1','2018-12-16 00:00:00','2018-12-27 00:00:00','2018-12-16 00:00:00','2018-12-27 00:00:00','2018-12-17 00:00:00','2018-12-28 00:00:00','2018-12-16 00:00:00','2018-12-17 00:00:00','2018-12-20 00:00:00','0'),(30,'high','1','2018-12-14 00:00:00','2018-12-18 00:00:00','2018-12-16 00:00:00','2018-12-27 00:00:00','2018-12-17 00:00:00','2018-12-28 00:00:00','2018-12-16 00:00:00','2018-12-17 00:00:00','2018-12-11 00:00:00','0'),(31,'high','1','2018-12-14 00:00:00','2018-12-18 00:00:00','2018-12-16 00:00:00','2018-12-27 00:00:00','2018-12-17 00:00:00','2018-12-28 00:00:00','2018-12-16 00:00:00','2018-12-17 00:00:00','2018-12-11 00:00:00','0'),(32,'high','0','2018-12-14 00:00:00','2018-12-18 00:00:00','2018-12-16 00:00:00','2018-12-27 00:00:00','2018-12-17 00:00:00','2018-12-28 00:00:00','2018-12-16 00:00:00','2018-12-17 00:00:00','2018-12-11 00:00:00','0');
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
  `is_pay` varchar(2) DEFAULT '0' COMMENT '''0'':未支付,''1'':已支付',
  `pay_num` float DEFAULT NULL COMMENT '支付金额',
  `comment` varchar(5000) DEFAULT NULL COMMENT '备注',
  `delete_status` varchar(255) DEFAULT '1' COMMENT '删除字段, 1.有效  2无效',
  `course_date` set('tue','wed','thu') DEFAULT NULL COMMENT '课程日期',
  `finance_is_pay` varchar(2) DEFAULT '0' COMMENT '''0'': 未支付, ''1'': 已支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_student`
--

LOCK TABLES `course_student` WRITE;
/*!40000 ALTER TABLE `course_student` DISABLE KEYS */;
INSERT INTO `course_student` (`id`, `course_id`, `select_user_id`, `create_date`, `update_date`, `is_pay`, `pay_num`, `comment`, `delete_status`, `course_date`, `finance_is_pay`) VALUES (28,46,10003,'2018-12-11 02:56:52','2018-12-11 06:11:12','0',NULL,NULL,'2','wed,thu','0'),(29,46,10008,'2018-12-11 06:11:20','2018-12-11 06:11:34','0',NULL,NULL,'2','wed,thu','0'),(32,46,10008,'2018-12-11 06:37:16','2018-12-11 09:18:23','1',NULL,NULL,'2','wed,thu','0'),(33,46,10009,'2018-12-11 08:57:36','2018-12-17 15:01:56','0',NULL,NULL,'1','wed,thu','0'),(34,59,10008,'2018-12-11 09:02:03','2018-12-11 09:18:11','0',NULL,NULL,'2','tue','0'),(35,59,10008,'2018-12-11 09:18:18','2018-12-13 08:46:36','1',NULL,NULL,'1','tue','0'),(36,46,10008,'2018-12-11 09:18:35','2018-12-11 09:33:14','0',NULL,NULL,'2','thu','0'),(37,46,10008,'2018-12-11 09:33:41','2018-12-11 09:49:34','1',NULL,NULL,'2','thu','0'),(38,46,10008,'2018-12-11 09:50:29','2018-12-11 09:54:38','1',NULL,NULL,'2','thu','0'),(39,46,10008,'2018-12-11 09:55:29','2018-12-11 10:02:01','1',NULL,NULL,'2','thu','0'),(40,46,10008,'2018-12-11 10:02:08','2018-12-11 10:02:58','1',NULL,NULL,'2','thu','0'),(41,46,10008,'2018-12-11 10:03:07','2018-12-11 10:11:59','1',NULL,NULL,'2','wed','0'),(42,46,10008,'2018-12-11 10:12:06','2018-12-11 10:12:15','1',NULL,NULL,'2','thu','0'),(43,46,10008,'2018-12-11 10:12:27','2018-12-11 10:12:36','0',NULL,NULL,'2','thu','0'),(44,46,10008,'2018-12-11 10:12:42','2018-12-11 10:25:31','1',NULL,NULL,'2','thu','0'),(45,46,10008,'2018-12-11 10:25:42','2018-12-13 08:57:11','1',NULL,NULL,'1','thu','1'),(46,58,10003,'2018-12-12 08:30:15','2018-12-12 08:30:15','0',NULL,NULL,'1','tue','0'),(47,58,10008,'2018-12-13 07:36:02','2018-12-13 08:39:44','0',NULL,NULL,'2','tue','0'),(48,58,10009,'2018-12-17 14:39:35','2018-12-17 14:39:35','0',NULL,NULL,'1','tue','0'),(49,60,10008,'2018-12-17 14:52:47','2018-12-17 14:56:08','1',NULL,NULL,'2','wed','0');
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
  `final_tuition` varchar(100) DEFAULT NULL COMMENT '最终价格(由管理员修改)',
  `grade` varchar(25) DEFAULT NULL COMMENT '授课年级,区间',
  `course_area` varchar(100) DEFAULT NULL COMMENT '上课场地',
  `start_date` datetime DEFAULT NULL COMMENT '开始时间',
  `end_date` datetime DEFAULT NULL COMMENT '结束时间',
  `delete_status` varchar(1) DEFAULT '1' COMMENT '是否有效  1.有效  2无效',
  `teacher_name` int(11) DEFAULT NULL COMMENT '授课教师',
  `status` set('draft','publish','success') DEFAULT 'draft' COMMENT '课程状态',
  `need_training_aid` varchar(2) DEFAULT NULL COMMENT '是否自带教具 1:是, 2:否',
  `phone` varchar(15) DEFAULT NULL COMMENT '电话',
  `price` float DEFAULT NULL COMMENT '教具金额',
  `recommend_brand` varchar(2000) DEFAULT NULL COMMENT '推荐品牌',
  `comments` varchar(5000) DEFAULT NULL COMMENT ' 备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COMMENT='发布号作者表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_teacher`
--

LOCK TABLES `course_teacher` WRITE;
/*!40000 ALTER TABLE `course_teacher` DISABLE KEYS */;
INSERT INTO `course_teacher` (`id`, `content`, `create_time`, `update_time`, `capacity`, `brief`, `tuition_type`, `tuition`, `tuition_sub_type`, `course_date`, `create_user`, `update_user`, `teacher_type`, `final_tuition`, `grade`, `course_area`, `start_date`, `end_date`, `delete_status`, `teacher_name`, `status`, `need_training_aid`, `phone`, `price`, `recommend_brand`, `comments`) VALUES (46,'555555555555','2018-12-04 06:58:10','2018-12-14 09:28:33',15,'23232323kkk','fee','12','2','wed,thu',10003,10003,'2','12','[7]','1楼302','2018-11-07 00:00:00','2018-11-24 00:00:00','1',10003,'success','1','12',1111,'fskksdkfkdfkf',NULL),(58,'我的历史课','2018-12-11 02:21:17','2018-12-20 05:46:24',14,'历史是一门悠久的学科','free',NULL,NULL,'tue',10007,10003,'0','222RMB','[0,1,2,3,4,5,6,7,8,9]','2楼大会议室','2018-12-10 00:00:00','2019-01-15 00:00:00','1',10007,'publish','1',NULL,33,NULL,NULL),(59,'我的历史课','2018-12-11 09:01:01','2018-12-17 14:51:30',1,'多舒服撒','fee','123','2','tue',10003,10003,'2','333RRB','[0,1,2,3,4,5,6,7,8,9]','3楼厕所','2018-12-11 00:00:00','2019-01-15 00:00:00','1',10003,'publish','1','1232123072',312,'12',NULL),(60,'我的第二个课','2018-12-17 14:41:15','2018-12-17 14:55:46',7,'深度放松的方式','fee','12','2','wed',10007,10007,'2','1RMB','[0,1,2,3,4,5,6,7,8,9]','3楼厕所','2018-12-16 00:00:00','2018-12-27 00:00:00','1',10007,'draft','1','1337272828323',23,'Huawei',NULL);
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
  `type` set('course-teacher','course-student') DEFAULT NULL COMMENT '附件所属业务表',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 COMMENT='附件表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_attach`
--

LOCK TABLES `sys_attach` WRITE;
/*!40000 ALTER TABLE `sys_attach` DISABLE KEYS */;
INSERT INTO `sys_attach` (`id`, `user_id`, `location`, `business_id`, `origin_fileName`, `create_date`, `type`) VALUES (39,10008,'3ffb86a2-c671-49c2-b710-6142b6ccd7ab',58,'Theme开发环境搭建指南 v1.docx','2018-12-11 11:39:17','course-teacher'),(41,10008,'c638d664-5e19-4792-b2e1-4a09a2bb10d1',58,'初中排课表逻辑.pdf','2018-12-11 13:57:48','course-student'),(42,10003,'ad49fc81-ac7a-49a0-948d-abdc9fa05f3f',46,'协同看板需求交接文档.docx','2018-12-11 14:10:46','course-teacher'),(53,10008,'96e3a6a8-fcd7-4fd8-9018-060fc0434f98',32,'Jellyfish.jpg','2018-12-11 15:19:23','course-student'),(54,10003,'d3410b36-fa24-4638-9408-bc7f264e6a72',59,'test1.docx','2018-12-11 17:01:21','course-teacher'),(57,10008,'9f473bde-145f-4fb7-90bc-e0f92368cd05',36,'Lighthouse.jpg','2018-12-11 17:34:24','course-student'),(58,10008,'7fff5b9f-3314-4268-b74b-5a6aece6e377',37,'Hydrangeas.jpg','2018-12-11 17:41:53','course-student'),(59,10008,'223d5c96-6299-4774-a5f5-9913ba42e72e',37,'Jellyfish.jpg','2018-12-11 17:50:35','course-student'),(60,10008,'055b7ea5-6a03-44c1-bae1-0c0351c32cc5',38,'Lighthouse.jpg','2018-12-11 17:50:57','course-student'),(63,10008,'770d983f-b421-4a1b-a242-4350c0464e29',39,'Jellyfish.jpg','2018-12-11 18:02:14','course-student'),(64,10008,'2490ae0b-71a9-4d57-9c93-99b32f59f096',39,'Chrysanthemum.jpg','2018-12-11 18:02:23','course-student'),(65,10008,'298a9686-3db6-471b-9909-788ec136b26c',39,'Tulips.jpg','2018-12-11 18:02:38','course-student'),(69,10008,'df142ade-7d05-4082-936d-55622943de27',42,'Lighthouse.jpg','2018-12-11 18:13:51','course-student'),(70,10008,'0c4359ec-a73a-458a-83de-f058a59acb94',42,'Koala.jpg','2018-12-11 18:14:18','course-student'),(71,10008,'372ddb4c-4443-4f43-b9d9-5e56b4ea99ad',42,'Koala.jpg','2018-12-11 18:15:47','course-student'),(74,10008,'100508ee-2dc4-4dad-8d02-e508b2950e8f',35,'Lighthouse.jpg','2018-12-11 18:22:15','course-student'),(76,10003,'ce64392c-4d28-4fc0-9bf5-2d3eec313e69',46,'Jellyfish.jpg','2018-12-12 16:30:28','course-student'),(77,10008,'149ef73c-2531-409a-a064-23612f0808e6',45,'Koala.jpg','2018-12-13 16:54:24','course-student'),(78,10007,'65ba10dc-a581-4c22-9c93-abff95917cfa',60,'toeic_exam.pdf','2018-12-17 22:41:50','course-teacher');
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
INSERT INTO `sys_permission` (`id`, `menu_code`, `menu_name`, `permission_code`, `permission_name`, `required_permission`) VALUES (101,'course-teacher','课程管理','course-teacher:list','列表',1),(102,'course-teacher','课程管理','course-teacher:add','新增',2),(103,'course-teacher','课程管理','course-teacher:update','修改',2),(104,'course-teacher','课程管理','course-teacher:delete','删除',2),(201,'course-student','学生选课','course-student:list','列表',1),(202,'course-student','学生选课','course-student:update','选课',2),(601,'user','用户','user:list','列表',1),(602,'user','用户','user:add','新增',2),(603,'user','用户','user:update','修改',2),(701,'role','角色权限','role:list','列表',1),(702,'role','角色权限','role:add','新增',2),(703,'role','角色权限','role:update','修改',2),(704,'role','角色权限','role:delete','删除',2),(801,'period','选课周期','sys:period','选课周期',2),(901,'course-finance','财务管理','course-finance:list','列表',1),(902,'course-finance','财务管理','course-finance:update','管理',2),(903,'course-notice','选课结果','course-notice:list','列表',1);
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
  `group_tag` varchar(2) DEFAULT '0' COMMENT '0或null: 未设置, -1：admin, 1: 学生组, 2: 教师组，3：财务',
  `delete_status` varchar(1) DEFAULT '1' COMMENT '是否有效  1有效  2无效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='后台角色表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` (`id`, `role_name`, `create_time`, `update_time`, `register_show`, `group_tag`, `delete_status`) VALUES (1,'管理员','2017-11-22 08:24:34','2018-12-10 08:48:38','2','-1','1'),(2,'作家','2017-11-22 08:24:34','2018-12-08 14:50:27','2','2','2'),(3,'教师','2017-11-22 08:28:47','2018-11-23 05:19:03','1','2','1'),(4,'学生','2018-11-20 01:49:12','2018-11-30 03:42:31','2','1','1'),(5,'test','2018-11-23 05:18:30','2018-11-27 09:31:09','1','2','2'),(6,'财务','2018-12-08 14:57:28','2018-12-08 14:57:28','1','3','1');
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COMMENT='角色-权限关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_permission`
--

LOCK TABLES `sys_role_permission` WRITE;
/*!40000 ALTER TABLE `sys_role_permission` DISABLE KEYS */;
INSERT INTO `sys_role_permission` (`id`, `role_id`, `permission_id`, `create_time`, `update_time`, `delete_status`) VALUES (1,2,101,'2017-11-22 08:26:21','2018-12-08 14:50:27','2'),(2,2,102,'2017-11-22 08:26:21','2018-12-08 14:50:27','2'),(5,2,602,'2017-11-22 08:28:28','2018-12-08 14:50:27','2'),(6,2,601,'2017-11-22 08:28:28','2018-12-08 14:50:27','2'),(7,2,603,'2017-11-22 08:28:28','2018-12-08 14:50:27','2'),(8,2,703,'2017-11-22 08:28:28','2018-12-08 14:50:27','2'),(9,2,701,'2017-11-22 08:28:28','2018-12-08 14:50:27','2'),(10,2,702,'2017-11-22 08:28:28','2018-12-08 14:50:27','2'),(11,2,704,'2017-11-22 08:28:31','2018-12-08 14:50:27','2'),(12,2,103,'2017-11-22 08:28:31','2018-12-08 14:50:27','2'),(13,3,601,'2017-11-22 08:28:47','2018-12-17 14:33:54','2'),(14,3,701,'2017-11-22 08:28:47','2018-12-17 14:33:54','2'),(15,3,702,'2017-11-22 08:35:01','2018-12-05 15:42:56','2'),(16,3,704,'2017-11-22 08:35:01','2018-12-05 15:42:56','2'),(17,3,102,'2017-11-22 08:35:01','2017-11-22 08:35:01','1'),(18,3,101,'2017-11-22 08:35:01','2017-11-22 08:35:01','1'),(19,3,603,'2017-11-22 08:35:01','2018-12-05 15:42:56','2'),(20,4,101,'2018-11-20 01:49:12','2018-11-20 04:01:57','2'),(23,4,201,'2018-11-20 04:01:17','2018-11-20 04:01:17','1'),(24,4,202,'2018-11-20 04:01:17','2018-11-20 04:01:17','1'),(25,5,101,'2018-11-23 05:18:30','2018-11-27 09:31:09','2'),(26,5,102,'2018-11-23 05:18:30','2018-11-27 09:31:09','2'),(27,5,103,'2018-11-23 05:18:30','2018-11-27 09:31:09','2'),(28,5,801,'2018-11-23 05:18:30','2018-11-27 09:31:09','2'),(29,5,201,'2018-11-23 05:52:31','2018-11-27 09:31:09','2'),(30,5,202,'2018-11-23 05:52:31','2018-11-27 09:31:09','2'),(31,3,201,'2018-11-27 09:32:02','2018-11-28 07:53:37','2'),(32,3,202,'2018-11-27 09:32:02','2018-11-28 07:53:37','2'),(33,3,104,'2018-11-27 09:32:02','2018-11-27 09:37:44','2'),(34,3,103,'2018-11-27 09:32:02','2018-11-27 09:32:02','1'),(35,3,801,'2018-11-27 10:17:05','2018-11-27 10:18:37','2'),(36,3,104,'2018-12-05 15:42:56','2018-12-05 15:42:56','1'),(37,6,901,'2018-12-08 14:57:28','2018-12-08 14:57:28','1'),(38,6,902,'2018-12-08 14:57:28','2018-12-08 14:57:28','1'),(39,6,601,'2018-12-08 14:57:28','2018-12-08 14:57:28','1'),(40,3,903,'2018-12-13 02:26:25','2018-12-13 02:26:25','1'),(41,6,903,'2018-12-13 02:26:31','2018-12-13 02:26:31','1');
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
) ENGINE=InnoDB AUTO_INCREMENT=10011 DEFAULT CHARSET=utf8 COMMENT='运营后台用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `role_id`, `create_time`, `update_time`, `delete_status`, `active_status`, `email`, `nickname_cn`, `phone`, `grade`, `class`) VALUES (10003,'admin','123456','superman dear agular-v',1,'2017-10-30 03:52:38','2018-12-10 08:08:08','1','1','admin@sdf.com','我是管理员',NULL,NULL,NULL),(10004,'user','123456','莎士比亚',2,'2017-10-30 08:13:02','2018-12-09 06:45:05','2','0','sls@ads.com','123',NULL,NULL,NULL),(10007,'test','123456','just see',3,'2017-11-22 08:29:41','2018-12-08 15:00:32','1','1','sfdfsad@sdf.com','就看看列表',NULL,NULL,NULL),(10008,'xiaoming','123456','xiaomingming',4,'2018-11-20 01:49:43','2018-12-10 02:41:18','1','1','asdf@aaa.som','小明',NULL,7,NULL),(10009,'xiaofang','123456','I\'m fang',4,'2018-12-11 08:53:29','2018-12-11 08:53:29','1','1',NULL,'小芳',NULL,NULL,NULL),(10010,'finance','123456','I\'m finance',6,'2018-12-13 08:56:04','2018-12-13 08:56:04','1','1',NULL,'财务',NULL,NULL,NULL);
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

-- Dump completed on 2018-12-20 13:58:36
