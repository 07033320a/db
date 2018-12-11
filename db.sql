-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: asa_db
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
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
 SET character_set_client = utf8mb4 ;
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
 SET character_set_client = utf8mb4 ;
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_period`
--

LOCK TABLES `course_period` WRITE;
/*!40000 ALTER TABLE `course_period` DISABLE KEYS */;
INSERT INTO `course_period` (`id`, `comments`, `status`, `course_start_date`, `course_end_date`, `pick_start_date`, `pick_end_date`, `fee_start_date`, `fee_end_date`, `finance_start_date`, `finance_end_date`, `notice_start_date`, `type`) VALUES (15,'12','0','2018-12-03 00:00:00','2018-12-15 00:00:00','2018-12-13 00:00:00','2019-01-15 00:00:00','2018-12-10 00:00:00','2019-01-15 00:00:00','2018-12-10 00:00:00','2019-01-30 00:00:00','2018-12-18 00:00:00','1');
/*!40000 ALTER TABLE `course_period` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_student`
--

DROP TABLE IF EXISTS `course_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_student`
--

LOCK TABLES `course_student` WRITE;
/*!40000 ALTER TABLE `course_student` DISABLE KEYS */;
/*!40000 ALTER TABLE `course_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_teacher`
--

DROP TABLE IF EXISTS `course_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='发布号作者表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_teacher`
--

LOCK TABLES `course_teacher` WRITE;
/*!40000 ALTER TABLE `course_teacher` DISABLE KEYS */;
INSERT INTO `course_teacher` (`id`, `content`, `create_time`, `update_time`, `capacity`, `brief`, `tuition_type`, `tuition`, `tuition_sub_type`, `course_date`, `create_user`, `update_user`, `teacher_type`, `final_tuition`, `grade`, `course_area`, `start_date`, `end_date`, `delete_status`, `teacher_name`, `status`, `need_training_aid`, `phone`, `price`, `recommend_brand`) VALUES (46,'555555555555','2018-12-04 06:58:10','2018-12-10 02:35:55',15,'23232323kkk','fee','12','2','wed,thu',10003,10003,'2',NULL,'[7]',NULL,'2018-11-07 00:00:00','2018-11-24 00:00:00','1',10003,'publish','1','12',1111,'fskksdkfkdfkf'),(58,'我的历史课','2018-12-11 02:21:17','2018-12-11 02:22:05',14,'历史是一门悠久的学科','free',NULL,NULL,'tue',10007,10007,'0',NULL,'[0,1,2,3,4,5,6,7,8,9]',NULL,'2018-12-10 00:00:00','2019-01-15 00:00:00','1',10007,'publish','1',NULL,NULL,NULL);
/*!40000 ALTER TABLE `course_teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade`
--

DROP TABLE IF EXISTS `grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sys_attach` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '上传者userId',
  `location` varchar(2000) DEFAULT NULL COMMENT '文件存放路径',
  `business_id` int(11) DEFAULT NULL COMMENT '业务主键',
  `origin_fileName` varchar(512) DEFAULT NULL COMMENT '真实文件名',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `type` set('course-teacher','course-student') DEFAULT NULL COMMENT '附件所属业务表',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='附件表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_attach`
--

LOCK TABLES `sys_attach` WRITE;
/*!40000 ALTER TABLE `sys_attach` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_attach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_email_config`
--

DROP TABLE IF EXISTS `sys_email_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
 SET character_set_client = utf8mb4 ;
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
 SET character_set_client = utf8mb4 ;
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
 SET character_set_client = utf8mb4 ;
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
 SET character_set_client = utf8mb4 ;
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
INSERT INTO `sys_user` (`id`, `username`, `password`, `nickname`, `role_id`, `create_time`, `update_time`, `delete_status`, `active_status`, `email`, `nickname_cn`, `phone`, `grade`, `class`) VALUES (10003,'admin','123456','superman dear agular-v',1,'2017-10-30 03:52:38','2018-12-10 08:08:08','1','1','admin@sdf.com','我是管理员',NULL,NULL,NULL),(10004,'user','123456','莎士比亚',2,'2017-10-30 08:13:02','2018-12-09 06:45:05','2','0','sls@ads.com','123',NULL,NULL,NULL),(10007,'test','123456','just see',3,'2017-11-22 08:29:41','2018-12-08 15:00:32','1','1','sfdfsad@sdf.com','就看看列表',NULL,NULL,NULL),(10008,'xiaoming','123456','xiaomingming',4,'2018-11-20 01:49:43','2018-12-10 02:41:18','1','1','asdf@aaa.som','小明',NULL,7,NULL);
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_active`
--

DROP TABLE IF EXISTS `sys_user_active`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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

-- Dump completed on 2018-12-11 10:26:02
