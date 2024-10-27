/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - lajifenleihuishou
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`lajifenleihuishou` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `lajifenleihuishou`;

/*Table structure for table `chuku` */

DROP TABLE IF EXISTS `chuku`;

CREATE TABLE `chuku` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `huishou_yuyue_id` int(11) DEFAULT NULL COMMENT '垃圾运输',
  `chuku_name` varchar(200) DEFAULT NULL COMMENT '运输名称  Search111 ',
  `chuku_uuid_number` varchar(200) DEFAULT NULL COMMENT '运输编号',
  `chuku_photo` varchar(200) DEFAULT NULL COMMENT '运输照片',
  `chuku_address` varchar(200) DEFAULT NULL COMMENT '运输地点',
  `chuku_types` int(11) DEFAULT NULL COMMENT '运输类型 Search111',
  `chuku_mudi_address` varchar(200) DEFAULT NULL COMMENT '运输目的地',
  `chuku_content` longtext COMMENT '运输介绍 ',
  `chuku_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='运输';

/*Data for the table `chuku` */

insert  into `chuku`(`id`,`huishou_yuyue_id`,`chuku_name`,`chuku_uuid_number`,`chuku_photo`,`chuku_address`,`chuku_types`,`chuku_mudi_address`,`chuku_content`,`chuku_delete`,`insert_time`,`create_time`) values (1,1,'运输名称1','1679369909491','upload/chuku1.jpg','运输地点1',3,'运输目的地1','运输介绍1',1,'2023-03-21 11:38:29','2023-03-21 11:38:29'),(2,2,'运输名称2','1679369909477','upload/chuku2.jpg','运输地点2',1,'运输目的地2','运输介绍2',1,'2023-03-21 11:38:29','2023-03-21 11:38:29'),(3,3,'运输名称3','1679369909461','upload/chuku3.jpg','运输地点3',1,'运输目的地3','运输介绍3',1,'2023-03-21 11:38:29','2023-03-21 11:38:29'),(4,4,'运输名称4','1679369909433','upload/chuku4.jpg','运输地点4',3,'运输目的地4','运输介绍4',1,'2023-03-21 11:38:29','2023-03-21 11:38:29'),(5,5,'运输名称5','1679369909450','upload/chuku5.jpg','运输地点5',2,'运输目的地5','运输介绍5',1,'2023-03-21 11:38:29','2023-03-21 11:38:29'),(6,6,'运输名称6','1679369909501','upload/chuku6.jpg','运输地点6',4,'运输目的地6','运输介绍6',1,'2023-03-21 11:38:29','2023-03-21 11:38:29'),(7,7,'运输名称7','1679369909474','upload/chuku7.jpg','运输地点7',3,'运输目的地7','运输介绍7',1,'2023-03-21 11:38:29','2023-03-21 11:38:29'),(8,8,'运输名称8','1679369909445','upload/chuku8.jpg','运输地点8',2,'运输目的地8','运输介绍8',1,'2023-03-21 11:38:29','2023-03-21 11:38:29'),(9,9,'运输名称9','1679369909424','upload/chuku9.jpg','运输地点9',2,'运输目的地9','运输介绍9',1,'2023-03-21 11:38:29','2023-03-21 11:38:29'),(10,10,'运输名称10','1679369909415','upload/chuku10.jpg','运输地点10',3,'运输目的地10','运输介绍10',1,'2023-03-21 11:38:29','2023-03-21 11:38:29'),(11,11,'运输名称11','1679369909505','upload/chuku11.jpg','运输地点11',1,'运输目的地11','运输介绍11',1,'2023-03-21 11:38:29','2023-03-21 11:38:29'),(12,12,'运输名称12','1679369909434','upload/chuku12.jpg','运输地点12',4,'运输目的地12','运输介绍12',1,'2023-03-21 11:38:29','2023-03-21 11:38:29'),(13,13,'运输名称13','1679369909506','upload/chuku13.jpg','运输地点13',1,'运输目的地13','运输介绍13',1,'2023-03-21 11:38:29','2023-03-21 11:38:29'),(14,14,'运输名称14','1679369909438','upload/chuku14.jpg','运输地点14',1,'运输目的地14','运输介绍14',1,'2023-03-21 11:38:29','2023-03-21 11:38:29'),(15,16,'111','1679376162582','/upload/1679376177983.jpg','家里',3,'12651','<p>手打打算</p>',1,'2023-03-21 13:23:00','2023-03-21 13:23:00');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-03-21 11:37:24'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-03-21 11:37:24'),(3,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-03-21 11:37:24'),(4,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-03-21 11:37:24'),(5,'huishou_types','垃圾回收类型',1,'垃圾回收类型1',NULL,NULL,'2023-03-21 11:37:24'),(6,'huishou_types','垃圾回收类型',2,'垃圾回收类型2',NULL,NULL,'2023-03-21 11:37:24'),(7,'huishou_types','垃圾回收类型',3,'垃圾回收类型3',NULL,NULL,'2023-03-21 11:37:24'),(8,'huishou_types','垃圾回收类型',4,'垃圾回收类型4',NULL,NULL,'2023-03-21 11:37:24'),(9,'huishou_yuyue_yesno_types','申请状态',1,'待审核',NULL,NULL,'2023-03-21 11:37:24'),(10,'huishou_yuyue_yesno_types','申请状态',2,'同意',NULL,NULL,'2023-03-21 11:37:24'),(11,'huishou_yuyue_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2023-03-21 11:37:24'),(12,'chuku_types','运输类型',1,'运输类型1',NULL,NULL,'2023-03-21 11:37:24'),(13,'chuku_types','运输类型',2,'运输类型2',NULL,NULL,'2023-03-21 11:37:24'),(14,'chuku_types','运输类型',3,'运输类型3',NULL,NULL,'2023-03-21 11:37:24'),(15,'chuku_types','运输类型',4,'运输类型4',NULL,NULL,'2023-03-21 11:37:24');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',2,'2023-03-21 11:38:29','公告详情1','2023-03-21 11:38:29'),(2,'公告名称2','upload/gonggao2.jpg',2,'2023-03-21 11:38:29','公告详情2','2023-03-21 11:38:29'),(3,'公告名称3','upload/gonggao3.jpg',1,'2023-03-21 11:38:29','公告详情3','2023-03-21 11:38:29'),(4,'公告名称4','upload/gonggao4.jpg',1,'2023-03-21 11:38:29','公告详情4','2023-03-21 11:38:29'),(5,'公告名称5','upload/gonggao5.jpg',1,'2023-03-21 11:38:29','公告详情5','2023-03-21 11:38:29'),(6,'公告名称6','upload/gonggao6.jpg',1,'2023-03-21 11:38:29','公告详情6','2023-03-21 11:38:29'),(7,'公告名称7','upload/gonggao7.jpg',2,'2023-03-21 11:38:29','公告详情7','2023-03-21 11:38:29'),(8,'公告名称8','upload/gonggao8.jpg',1,'2023-03-21 11:38:29','公告详情8','2023-03-21 11:38:29'),(9,'公告名称9','upload/gonggao9.jpg',1,'2023-03-21 11:38:29','公告详情9','2023-03-21 11:38:29'),(10,'公告名称10','upload/gonggao10.jpg',2,'2023-03-21 11:38:29','公告详情10','2023-03-21 11:38:29'),(11,'公告名称11','upload/gonggao11.jpg',1,'2023-03-21 11:38:29','公告详情11','2023-03-21 11:38:29'),(12,'公告名称12','upload/gonggao12.jpg',2,'2023-03-21 11:38:29','公告详情12','2023-03-21 11:38:29'),(13,'公告名称13','upload/gonggao13.jpg',1,'2023-03-21 11:38:29','公告详情13','2023-03-21 11:38:29'),(14,'公告名称14','upload/gonggao14.jpg',2,'2023-03-21 11:38:29','公告详情14','2023-03-21 11:38:29');

/*Table structure for table `huishou` */

DROP TABLE IF EXISTS `huishou`;

CREATE TABLE `huishou` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `huishou_name` varchar(200) DEFAULT NULL COMMENT '垃圾回收名称  Search111 ',
  `huishou_uuid_number` varchar(200) DEFAULT NULL COMMENT '垃圾回收编号',
  `huishou_photo` varchar(200) DEFAULT NULL COMMENT '垃圾回收照片',
  `huishou_address` varchar(200) DEFAULT NULL COMMENT '垃圾回收地点',
  `huishou_types` int(11) DEFAULT NULL COMMENT '垃圾回收类型 Search111',
  `huishou_kucun_number` int(11) DEFAULT NULL COMMENT '垃圾回收库存',
  `huishou_time` timestamp NULL DEFAULT NULL COMMENT '入库时间',
  `huishou_content` longtext COMMENT '垃圾回收介绍 ',
  `huishou_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='垃圾回收';

/*Data for the table `huishou` */

insert  into `huishou`(`id`,`huishou_name`,`huishou_uuid_number`,`huishou_photo`,`huishou_address`,`huishou_types`,`huishou_kucun_number`,`huishou_time`,`huishou_content`,`huishou_delete`,`insert_time`,`create_time`) values (1,'垃圾回收名称1','1679369909448','upload/huishou1.jpg','垃圾回收地点1',4,101,'2023-03-21 11:38:29','垃圾回收介绍1',1,'2023-03-21 11:38:29','2023-03-21 11:38:29'),(2,'垃圾回收名称2','1679369909479','upload/huishou2.jpg','垃圾回收地点2',3,102,'2023-03-21 11:38:29','垃圾回收介绍2',1,'2023-03-21 11:38:29','2023-03-21 11:38:29'),(3,'垃圾回收名称3','1679369909487','upload/huishou3.jpg','垃圾回收地点3',1,103,'2023-03-21 11:38:29','垃圾回收介绍3',1,'2023-03-21 11:38:29','2023-03-21 11:38:29'),(4,'垃圾回收名称4','1679369909445','upload/huishou4.jpg','垃圾回收地点4',4,104,'2023-03-21 11:38:29','垃圾回收介绍4',1,'2023-03-21 11:38:29','2023-03-21 11:38:29'),(5,'垃圾回收名称5','1679369909496','upload/huishou5.jpg','垃圾回收地点5',2,105,'2023-03-21 11:38:29','垃圾回收介绍5',1,'2023-03-21 11:38:29','2023-03-21 11:38:29'),(6,'垃圾回收名称6','1679369909499','upload/huishou6.jpg','垃圾回收地点6',3,106,'2023-03-21 11:38:29','垃圾回收介绍6',1,'2023-03-21 11:38:29','2023-03-21 11:38:29'),(7,'垃圾回收名称7','1679369909457','upload/huishou7.jpg','垃圾回收地点7',3,107,'2023-03-21 11:38:29','垃圾回收介绍7',1,'2023-03-21 11:38:29','2023-03-21 11:38:29'),(8,'垃圾回收名称8','1679369909448','upload/huishou8.jpg','垃圾回收地点8',3,108,'2023-03-21 11:38:29','垃圾回收介绍8',1,'2023-03-21 11:38:29','2023-03-21 11:38:29'),(9,'垃圾回收名称9','1679369909516','upload/huishou9.jpg','垃圾回收地点9',3,109,'2023-03-21 11:38:29','垃圾回收介绍9',1,'2023-03-21 11:38:29','2023-03-21 11:38:29'),(10,'垃圾回收名称10','1679369909452','upload/huishou10.jpg','垃圾回收地点10',3,1010,'2023-03-21 11:38:29','垃圾回收介绍10',1,'2023-03-21 11:38:29','2023-03-21 11:38:29'),(11,'垃圾回收名称11','1679369909517','upload/huishou11.jpg','垃圾回收地点11',1,1011,'2023-03-21 11:38:29','垃圾回收介绍11',1,'2023-03-21 11:38:29','2023-03-21 11:38:29'),(12,'垃圾回收名称12','1679369909505','upload/huishou12.jpg','垃圾回收地点12',2,1012,'2023-03-21 11:38:29','垃圾回收介绍12',1,'2023-03-21 11:38:29','2023-03-21 11:38:29'),(13,'垃圾回收名称13','1679369909472','upload/huishou13.jpg','垃圾回收地点13',1,1013,'2023-03-21 11:38:29','垃圾回收介绍13',1,'2023-03-21 11:38:29','2023-03-21 11:38:29'),(14,'垃圾回收名称14','1679369909498','upload/huishou14.jpg','垃圾回收地点14',1,1014,'2023-03-21 11:38:29','垃圾回收介绍14',1,'2023-03-21 11:38:29','2023-03-21 11:38:29'),(15,'111','1679370417527','/upload/1679370435476.jpg','地点',1,50,'2023-03-21 11:47:10','<p>呀呀呀</p>',2,'2023-03-21 11:47:19','2023-03-21 11:47:19'),(16,'11','1679375989240','/upload/1679375999499.jpg','165',3,23,'2023-03-21 13:19:56','<p>525162</p>',1,'2023-03-21 13:20:01','2023-03-21 13:20:01');

/*Table structure for table `huishou_yuyue` */

DROP TABLE IF EXISTS `huishou_yuyue`;

CREATE TABLE `huishou_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huishou_yuyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '报名编号 Search111 ',
  `huishou_id` int(11) DEFAULT NULL COMMENT '垃圾回收',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `huishou_yuyue_text` longtext COMMENT '报名理由',
  `huishou_chuku_time` timestamp NULL DEFAULT NULL COMMENT '出库时间',
  `huishou_yuyue_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态 Search111 ',
  `huishou_yuyue_yesno_text` longtext COMMENT '审核回复',
  `huishou_yuyue_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '活动报名时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='垃圾出库申请';

/*Data for the table `huishou_yuyue` */

insert  into `huishou_yuyue`(`id`,`huishou_yuyue_uuid_number`,`huishou_id`,`yonghu_id`,`huishou_yuyue_text`,`huishou_chuku_time`,`huishou_yuyue_yesno_types`,`huishou_yuyue_yesno_text`,`huishou_yuyue_shenhe_time`,`insert_time`,`create_time`) values (1,'1679369909425',1,1,'报名理由1','2023-03-21 11:38:29',3,NULL,NULL,'2023-03-21 11:38:29','2023-03-21 11:38:29'),(2,'1679369909463',2,1,'报名理由2','2023-03-21 11:38:29',3,NULL,NULL,'2023-03-21 11:38:29','2023-03-21 11:38:29'),(3,'1679369909451',3,3,'报名理由3','2023-03-21 11:38:29',3,NULL,NULL,'2023-03-21 11:38:29','2023-03-21 11:38:29'),(4,'1679369909453',4,1,'报名理由4','2023-03-21 11:38:29',3,NULL,NULL,'2023-03-21 11:38:29','2023-03-21 11:38:29'),(5,'1679369909504',5,1,'报名理由5','2023-03-21 11:38:29',3,NULL,NULL,'2023-03-21 11:38:29','2023-03-21 11:38:29'),(6,'1679369909502',6,1,'报名理由6','2023-03-21 11:38:29',3,NULL,NULL,'2023-03-21 11:38:29','2023-03-21 11:38:29'),(7,'1679369909474',7,3,'报名理由7','2023-03-21 11:38:29',3,NULL,NULL,'2023-03-21 11:38:29','2023-03-21 11:38:29'),(8,'1679369909482',8,1,'报名理由8','2023-03-21 11:38:29',3,NULL,NULL,'2023-03-21 11:38:29','2023-03-21 11:38:29'),(9,'1679369909424',9,3,'报名理由9','2023-03-21 11:38:29',3,NULL,NULL,'2023-03-21 11:38:29','2023-03-21 11:38:29'),(10,'1679369909436',10,1,'报名理由10','2023-03-21 11:38:29',3,NULL,NULL,'2023-03-21 11:38:29','2023-03-21 11:38:29'),(11,'1679369909445',11,3,'报名理由11','2023-03-21 11:38:29',3,NULL,NULL,'2023-03-21 11:38:29','2023-03-21 11:38:29'),(12,'1679369909440',12,3,'报名理由12','2023-03-21 11:38:29',3,NULL,NULL,'2023-03-21 11:38:29','2023-03-21 11:38:29'),(13,'1679369909483',13,2,'报名理由13','2023-03-21 11:38:29',2,NULL,NULL,'2023-03-21 11:38:29','2023-03-21 11:38:29'),(14,'1679369909521',14,1,'报名理由14','2023-03-21 11:38:29',2,NULL,NULL,'2023-03-21 11:38:29','2023-03-21 11:38:29'),(16,'1679376005057',16,1,'26','2023-03-21 13:20:09',2,'好的','2023-03-21 13:21:03',NULL,NULL);

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '儿童id',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','mkxs5e7yjybvtk0gkf7p538x12vqcjoh','2023-03-21 11:43:09','2023-03-21 14:20:31'),(2,1,'a1','yonghu','用户','eaumo6537amrc6t7brkbhkq9xsdirl40','2023-03-21 11:45:33','2023-03-21 14:19:16');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-21 11:37:24');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',1,'1@qq.com','2023-03-21 11:38:29'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',2,'2@qq.com','2023-03-21 11:38:29'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',1,'3@qq.com','2023-03-21 11:38:29');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
