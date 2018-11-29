/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50626
 Source Host           : localhost
 Source Database       : asa_db

 Target Server Type    : MySQL
 Target Server Version : 50626
 File Encoding         : utf-8

 Date: 11/29/2018 09:31:29 AM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `course_period`
-- ----------------------------
DROP TABLE IF EXISTS `course_period`;
CREATE TABLE `course_period` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_date` datetime DEFAULT NULL COMMENT '选课开始时间',
  `end_date` datetime DEFAULT NULL COMMENT '结束时间',
  `comments` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` varchar(1) DEFAULT '0' COMMENT '是否为当前period, ''0'': 是 ,''1'': 否',
  `course_start_date` datetime DEFAULT NULL COMMENT '课程开始时间',
  `course_end_date` datetime DEFAULT NULL COMMENT '课程结束时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `course_period`
-- ----------------------------
BEGIN;
INSERT INTO `course_period` VALUES ('11', '2018-11-07 00:00:00', '2018-11-24 00:00:00', '12', '0', null, null);
COMMIT;

-- ----------------------------
--  Table structure for `course_teacher`
-- ----------------------------
DROP TABLE IF EXISTS `course_teacher`;
CREATE TABLE `course_teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT '' COMMENT '课程名',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `delete_status` varchar(1) DEFAULT '1' COMMENT '是否有效  1.有效  2无效',
  `capacity` int(5) DEFAULT NULL COMMENT '学生容量',
  `brief` varchar(5000) DEFAULT NULL COMMENT '课程简介',
  `tuition` varchar(20) DEFAULT NULL COMMENT '学费',
  `course_date` varchar(50) DEFAULT NULL COMMENT '课程日期',
  `create_user` int(11) DEFAULT NULL COMMENT '创建人id',
  `update_user` int(11) DEFAULT NULL COMMENT '更信任id',
  `start_date` datetime DEFAULT NULL COMMENT '开始时间',
  `end_date` datetime DEFAULT NULL COMMENT '结束时间',
  `type` varchar(1) DEFAULT NULL COMMENT '0: 普通, 1: 外聘',
  `tuition_type` varchar(2) DEFAULT NULL COMMENT '费用类型: 1:每人,2:课时,3:学期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='发布号作者表';

-- ----------------------------
--  Records of `course_teacher`
-- ----------------------------
BEGIN;
INSERT INTO `course_teacher` VALUES ('5', '莎士比亚1', '2017-10-25 09:08:45', '2018-11-27 15:50:34', '1', '2', '美方向移民发射催泪弹（图源：路透社）\n\n海外网11月27日电随着大批中美洲移民抵达美墨边境的墨西哥一侧，试图越过围栏进入美国，美方也在上周末起采取一系列强硬措施，包括对移民发射催泪弹，随即引发一些移民权利组织的不满。当地时间26日，美国总统特朗普为美边境巡逻队使用催泪弹的做法辩护，直指一些移民“非常粗暴”，美方是“不得已采取了这样的行动”。\n\n', '100/年1', '{\"thu\":false,\"tue\":false,\"wed\":true}', '10003', '10003', null, null, null, null), ('6', 'KKK', '2017-10-26 10:49:28', '2018-11-27 15:50:36', '1', '25', '12', '1', '{\"thu\":true,\"tue\":true,\"wed\":true}', '10003', '10003', null, null, null, null), ('19', '文章test2', '2017-11-18 13:37:07', '2018-11-27 15:50:39', '1', '25', '烦烦烦', '111/月', '{\"tue\":true,\"wed\":false,\"thu\":true}', '10003', '10003', null, null, null, null), ('20', '劳斯莱斯了', '2018-11-21 14:07:19', '2018-11-27 15:50:41', '1', '25', '12', '1年1万', '{\"thu\":true,\"tue\":true,\"wed\":true}', '10003', '10003', null, null, null, null), ('23', '反反复复2反反复复', '2018-11-21 14:07:34', '2018-11-27 17:17:23', '1', '25', 'sdafsadfasdf', '50/季度', '{\"thu\":false,\"tue\":true,\"wed\":true}', '10003', '10003', null, null, null, null), ('24', '1212', '2018-11-21 14:07:42', '2018-11-27 15:50:53', '1', '25', '方法', '400/年', '{\"thu\":true,\"tue\":true,\"wed\":true}', '10003', '10003', null, null, null, null), ('25', '发发发', '2018-11-21 14:07:47', '2018-11-27 15:50:47', '1', '25', '综合福克斯新闻、美国中文网等媒体报道，26日，特朗普在白宫外对记者发表讲话时谈及了近日引发诸多关注的移民问题。对于美国边境巡逻队上周末使用催泪弹驱逐一群冲向边境的大篷车移民，特朗普表示：“他们（边境巡逻队）不得不使用催泪瓦斯，因为冲向他们的是一些非常粗暴的人。正因为如此，他们使用了催泪瓦斯。（我们的）底线就是：除非合法进入，否则没人可以进入美国。”\n\n除了特朗普，此次事件的当事方——圣地亚哥边境巡逻队主管斯科特26日也在接受媒体采访时谈及了当时的情况。他表示，移民走近边境围栏后开始向移民官员投掷石块和碎片。“我们的人受到攻击，而他们的数量开始增长，你知道我们两到三个人要面对数百人，所以就使用催泪瓦斯来保护自己。”\n\n不过，美国公民自由联盟移民权利项目副主任格伦特却认为，边境巡逻队是在“过度使用武力”。“那里有妇女和儿童。在这种情况下使用催泪瓦斯似乎并不合理。”格伦特说。\n聚集在美墨边境的移民（图源：路透社）\n\n此前，美媒曾报道特朗普就“移民大军”向墨西哥“发难”，要求墨方将那些想在美国申请庇护的移民送回本来的国家，否则就会在必要时永久关闭美墨边境。墨西哥政府尚未对此作出回应。\n\n连日来，大批中美洲移民在墨西哥的边境城市聚集，寻求进入美国，美墨两国也纷纷在边境地区加派兵力展开应对。在周末的骚乱发生后，墨西哥方面表示将立即驱逐大约500名非法越境的移民。墨西哥还表示，自10月19日以来，已将1.1万名中美洲移民送回原籍国，其中有1906名是近期大篷车队的成员。（海外网 张霓）\n\n本文系版权作品，未经授权严禁转载。海外视野，中国立场，登陆人民日报海外版官网——海外网www.haiwainet.cn或“海客”客户端，领先一步获取权威资讯。\n本文由百家号作者上传并发布，百家号仅提供信息发布平台。文章仅代表作者个人观点，不代表百度立场。未经作者许可，不得转载。\n本文由百家号作者上传并发布，百家号仅提供信息发布平台。文章仅代表作者个人观点，不代表百度立场。未经作者许可，不得转载。\n本文由百家号作者上传并发布，百家号仅提供信息发布平台。文章仅代表作者个人观点，不代表百度立场。未经作者许可，不得转载。\n聚集在美墨边境的移民（图源：路透社）\n\n此前，美媒曾报道特朗普就“移民大军”向墨西哥“发难”，要求墨方将那些想在美国申请庇护的移民送回本来的国家，否则就会在必要时永久关闭美墨边境。墨西哥政府尚未对此作出回应。\n\n连日来，大批中美洲移民在墨西哥的边境城市聚集，寻求进入美国，美墨两国也纷纷在边境地区加派兵力展开应对。在周末的骚乱发生后，墨西哥方面表示将立即驱逐大约500名非法越境的移民。墨西哥还表示，自10月19日以来，已将1.1万名中美洲移民送回原籍国，其中有1906名是近期大篷车队的成员。（海外网 张霓）\n\n本文系版权作品，未经授权严禁转载。海外视野，中国立场，登陆人民日报海外版官网——海外网www.haiwainet.cn或“海客”客户端，领先一步获取权威资讯。', null, '{\"thu\":true,\"tue\":true,\"wed\":true}', '10003', '10003', null, null, null, null), ('26', '1test12', '2018-11-23 13:51:01', '2018-11-27 15:50:49', '1', '25', '反反复复', '45/月', '{\"thu\":true,\"tue\":true,\"wed\":true}', '10003', '10003', null, null, null, null), ('27', 'eer', '2018-11-27 16:29:39', '2018-11-27 19:15:44', '1', '25', '12', 'sdf', '{\"thu\":false,\"tue\":true,\"wed\":false}', '10003', '10003', '2018-11-07 00:00:00', '2018-11-24 00:00:00', null, null);
COMMIT;

-- ----------------------------
--  Table structure for `grade`
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade` (
  `id` int(11) NOT NULL,
  `grade_name` varchar(255) DEFAULT NULL,
  `level` varchar(1) DEFAULT NULL,
  `delete_status` varchar(1) DEFAULT '0' COMMENT '''0'': 生效,''1'': 已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `sys_email_config`
-- ----------------------------
DROP TABLE IF EXISTS `sys_email_config`;
CREATE TABLE `sys_email_config` (
  `id` int(11) NOT NULL,
  `host` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `sys_permission`
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT '自定id,主要供前端展示权限列表分类排序使用.',
  `menu_code` varchar(255) DEFAULT '' COMMENT '归属菜单,前端判断并展示菜单使用,',
  `menu_name` varchar(255) DEFAULT '' COMMENT '菜单的中文释义',
  `permission_code` varchar(255) DEFAULT '' COMMENT '权限的代码/通配符,对应代码中@RequiresPermissions 的value',
  `permission_name` varchar(255) DEFAULT '' COMMENT '本权限的中文释义',
  `required_permission` tinyint(1) DEFAULT '2' COMMENT '是否本菜单必选权限, 1.必选 2非必选 通常是"列表"权限是必选',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='后台权限表';

-- ----------------------------
--  Records of `sys_permission`
-- ----------------------------
BEGIN;
INSERT INTO `sys_permission` VALUES ('101', 'course-teacher', '课程管理', 'course-teacher:list', '列表', '1'), ('102', 'course-teacher', '课程管理', 'course-teacher:add', '新增', '2'), ('103', 'course-teacher', '课程管理', 'course-teacher:update', '修改', '2'), ('104', 'course-teacher', '课程管理', 'course-teacher:delete', '删除', '2'), ('201', 'course-student', '学生选课', 'course-student:list', '列表', '1'), ('202', 'course-student', '学生选课', 'course-student:update', '选课', '2'), ('601', 'user', '用户', 'user:list', '列表', '1'), ('602', 'user', '用户', 'user:add', '新增', '2'), ('603', 'user', '用户', 'user:update', '修改', '2'), ('701', 'role', '角色权限', 'role:list', '列表', '1'), ('702', 'role', '角色权限', 'role:add', '新增', '2'), ('703', 'role', '角色权限', 'role:update', '修改', '2'), ('704', 'role', '角色权限', 'role:delete', '删除', '2'), ('801', 'period', '选课周期', 'sys:period', '选课周期', '2');
COMMIT;

-- ----------------------------
--  Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(20) DEFAULT NULL COMMENT '角色名',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `delete_status` varchar(1) DEFAULT '1' COMMENT '是否有效  1有效  2无效',
  `register_show` varchar(1) DEFAULT '1' COMMENT '注册时是否显示该角色 ''1'': 显示, ''2'': 不显示',
  `group_tag` varchar(1) DEFAULT '0' COMMENT '0或null: 未设置, 1: 学生组, 2: 教师组',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='后台角色表';

-- ----------------------------
--  Records of `sys_role`
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` VALUES ('1', '管理员', '2017-11-22 16:24:34', '2018-11-21 15:37:15', '1', '2', null), ('2', '作家', '2017-11-22 16:24:34', '2018-11-23 13:19:04', '1', '2', '2'), ('3', '教师', '2017-11-22 16:28:47', '2018-11-23 13:19:03', '1', '1', '2'), ('4', '学生', '2018-11-20 09:49:12', '2018-11-23 13:18:50', '1', '1', '1'), ('5', 'test', '2018-11-23 13:18:30', '2018-11-27 17:31:09', '2', '1', '2');
COMMIT;

-- ----------------------------
--  Table structure for `sys_role_permission`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL COMMENT '角色id',
  `permission_id` int(11) DEFAULT NULL COMMENT '权限id',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `delete_status` varchar(1) DEFAULT '1' COMMENT '是否有效 1有效     2无效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='角色-权限关联表';

-- ----------------------------
--  Records of `sys_role_permission`
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_permission` VALUES ('1', '2', '101', '2017-11-22 16:26:21', '2017-11-22 16:26:32', '1'), ('2', '2', '102', '2017-11-22 16:26:21', '2017-11-22 16:26:32', '1'), ('5', '2', '602', '2017-11-22 16:28:28', '2017-11-22 16:28:28', '1'), ('6', '2', '601', '2017-11-22 16:28:28', '2017-11-22 16:28:28', '1'), ('7', '2', '603', '2017-11-22 16:28:28', '2017-11-22 16:28:28', '1'), ('8', '2', '703', '2017-11-22 16:28:28', '2017-11-22 16:28:28', '1'), ('9', '2', '701', '2017-11-22 16:28:28', '2017-11-22 16:28:28', '1'), ('10', '2', '702', '2017-11-22 16:28:28', '2017-11-22 16:28:28', '1'), ('11', '2', '704', '2017-11-22 16:28:31', '2017-11-22 16:28:31', '1'), ('12', '2', '103', '2017-11-22 16:28:31', '2017-11-22 16:28:31', '1'), ('13', '3', '601', '2017-11-22 16:28:47', '2017-11-22 16:28:47', '1'), ('14', '3', '701', '2017-11-22 16:28:47', '2017-11-22 16:28:47', '1'), ('15', '3', '702', '2017-11-22 16:35:01', '2017-11-22 16:35:01', '1'), ('16', '3', '704', '2017-11-22 16:35:01', '2017-11-22 16:35:01', '1'), ('17', '3', '102', '2017-11-22 16:35:01', '2017-11-22 16:35:01', '1'), ('18', '3', '101', '2017-11-22 16:35:01', '2017-11-22 16:35:01', '1'), ('19', '3', '603', '2017-11-22 16:35:01', '2017-11-22 16:35:01', '1'), ('20', '4', '101', '2018-11-20 09:49:12', '2018-11-20 12:01:57', '2'), ('23', '4', '201', '2018-11-20 12:01:17', '2018-11-20 12:01:17', '1'), ('24', '4', '202', '2018-11-20 12:01:17', '2018-11-20 12:01:17', '1'), ('25', '5', '101', '2018-11-23 13:18:30', '2018-11-27 17:31:09', '2'), ('26', '5', '102', '2018-11-23 13:18:30', '2018-11-27 17:31:09', '2'), ('27', '5', '103', '2018-11-23 13:18:30', '2018-11-27 17:31:09', '2'), ('28', '5', '801', '2018-11-23 13:18:30', '2018-11-27 17:31:09', '2'), ('29', '5', '201', '2018-11-23 13:52:31', '2018-11-27 17:31:09', '2'), ('30', '5', '202', '2018-11-23 13:52:31', '2018-11-27 17:31:09', '2'), ('31', '3', '201', '2018-11-27 17:32:02', '2018-11-28 15:53:37', '2'), ('32', '3', '202', '2018-11-27 17:32:02', '2018-11-28 15:53:37', '2'), ('33', '3', '104', '2018-11-27 17:32:02', '2018-11-27 17:37:44', '2'), ('34', '3', '103', '2018-11-27 17:32:02', '2018-11-27 17:32:02', '1'), ('35', '3', '801', '2018-11-27 18:17:05', '2018-11-27 18:18:37', '2');
COMMIT;

-- ----------------------------
--  Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
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
  `class` varchar(8) DEFAULT NULL COMMENT '班级(学生用)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10048 DEFAULT CHARSET=utf8 COMMENT='运营后台用户表';

-- ----------------------------
--  Records of `sys_user`
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` VALUES ('10003', 'admin', '123456', '超级用户23', '1', '2017-10-30 11:52:38', '2018-11-21 16:55:15', '1', '1', 'admin@sdf.com', null, null, null), ('10004', 'user', 'sls@ads.com', '莎士比亚', '2', '2017-10-30 16:13:02', '2018-11-27 17:30:49', '2', '0', 'sls@ads.com', null, null, null), ('10005', 'aaa', '123456', 'abba', '1', '2017-11-15 14:02:56', '2018-11-21 16:55:26', '1', '0', 'sdfee@asdl.com', null, null, null), ('10007', 'test', '123456', '就看看列表', '3', '2017-11-22 16:29:41', '2018-11-21 17:00:43', '1', '1', 'sfdfsad@sdf.com', null, null, null), ('10008', 'xiaoming', 'xiaoming', '小明', '4', '2018-11-20 09:49:43', '2018-11-21 17:00:50', '1', '0', 'asdf@aaa.som', null, null, null), ('10009', 'vvv', '123456', 'vvv', '3', '2018-11-21 14:12:38', '2018-11-21 17:00:55', '1', '0', 'as2df@aaa.som', null, null, null), ('10010', 'fff', 'fff', 'fff', '2', '2018-11-21 14:12:56', '2018-11-21 17:00:57', '1', '0', 'as3df@aaa.som', null, null, null), ('10011', 'eee', 'eee', 'eee', '2', '2018-11-21 14:13:04', '2018-11-21 17:01:08', '1', '0', 'a33f@aaa.som', null, null, null), ('10012', 'www', 'www', 'www', '3', '2018-11-21 14:13:13', '2018-11-21 17:01:03', '1', '0', 'asd23f@aaa.som', null, null, null), ('10015', '12345', '12345', '12345', '4', '2018-11-23 16:47:47', '2018-11-23 16:47:47', '1', '0', '', null, null, null), ('10016', '12', '12', '12', '4', '2018-11-23 17:00:35', '2018-11-23 17:00:35', '1', '0', '', null, null, null), ('10017', '121', '123456', 'sss', '3', '2018-11-23 17:08:34', '2018-11-23 17:08:34', '1', '0', 'sfds@sdf.com', null, null, null), ('10018', '12', '12', '12', '4', '2018-11-23 17:09:24', '2018-11-23 17:09:24', '1', '0', '', null, null, null), ('10021', '11111', 'kkk', '111', '4', '2018-11-24 09:04:34', '2018-11-24 12:08:38', '1', '1', '', null, null, null), ('10022', '111', '123456', '111', '4', '2018-11-24 12:07:58', '2018-11-24 12:07:58', '1', '1', '', null, null, null), ('10023', 'fffe', '123', 'fffe', '4', '2018-11-24 17:24:01', '2018-11-24 17:24:01', '1', '1', '', null, null, null), ('10038', '1', '1', '1', '3', '2018-11-24 20:38:55', '2018-11-24 23:33:41', '1', '1', '328901261@qq.com', null, null, null), ('10039', '122222', '1', '1', '4', '2018-11-25 00:18:19', '2018-11-25 00:18:19', '1', '1', '', null, null, null), ('10043', '123', '1', '1', '3', '2018-11-25 14:08:34', '2018-11-28 15:36:09', '1', '1', '1070323320a@gmail.com', null, null, null), ('10044', '232', '1', '1', '3', '2018-11-28 15:08:58', '2018-11-28 15:15:10', '1', '0', '107033320a@gmail.com', null, '12131313', null), ('10045', '22222', '1', '12', '3', '2018-11-28 15:16:08', '2018-11-28 15:16:08', '1', '0', '070333@a.com', null, '1234', null), ('10046', '222222', '1', '1234', '3', '2018-11-28 15:18:13', '2018-11-28 15:36:07', '1', '1', '11207033320a@gmail.com', null, '123123', null), ('10047', '22', '1', '12k', '4', '2018-11-28 15:37:23', '2018-11-28 15:37:23', '1', '1', '07033320a@gmail.com', null, '232323', null);
COMMIT;

-- ----------------------------
--  Table structure for `sys_user_active`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_active`;
CREATE TABLE `sys_user_active` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `active_code` varchar(255) DEFAULT NULL COMMENT '激活码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `sys_user_active`
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_active` VALUES ('2', '328901261@qq.com', 'cCM8Q06Oq465f97l39xB010261'), ('3', '', 'Z9Owo12663P6343em21v72gh24'), ('4', '07033320a@gmail.com', '915546561D5O04rLW42ny222aP'), ('5', '07033320a@gmail.com', '1C05g30Hl0H4h457nY3iJ5rMtf'), ('6', '07033320a@gmail.com', 'Qt896DoF9188WDuEQ4s92S5714'), ('7', '07033320a@gmail.com', 'b8GID4wim09cC8Dj21DWrJ181G'), ('8', '07033320a@gmail.com', 'kJ2N4hQ0vp866om0gZ88BpY13H'), ('9', '070333@a.com', 'PVT0O4BNF8x6qS82TZk0C62597'), ('10', '07033320a@gmail.com', 'eYAc560431AOyp529Id1886xed'), ('11', '07033320a@gmail.com', 'I8P866DS499Ap29g3I11B4WP53');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;