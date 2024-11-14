/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm51k00
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm51k00` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm51k00`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619919292416 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-05-02 09:22:50',1,'宇宙银河系金星1号','金某','13823888881','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (2,'2021-05-02 09:22:50',2,'宇宙银河系木星1号','木某','13823888882','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (3,'2021-05-02 09:22:50',3,'宇宙银河系水星1号','水某','13823888883','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (4,'2021-05-02 09:22:50',4,'宇宙银河系火星1号','火某','13823888884','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (5,'2021-05-02 09:22:50',5,'宇宙银河系土星1号','土某','13823888885','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (6,'2021-05-02 09:22:50',6,'宇宙银河系月球1号','月某','13823888886','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1619919292415,'2021-05-02 09:34:51',1619918893933,'广东省揭阳市榕城区东兴街道天欢乐幼儿园玉浦小学','11','11112222111','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619919253603 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `chongwujiyang` */

DROP TABLE IF EXISTS `chongwujiyang`;

CREATE TABLE `chongwujiyang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `chongwumingcheng` varchar(200) NOT NULL COMMENT '宠物名称',
  `chongwufenlei` varchar(200) NOT NULL COMMENT '宠物分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `shifoujueyu` varchar(200) DEFAULT NULL COMMENT '是否绝育',
  `chongwuxiangqing` longtext COMMENT '宠物详情',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619918977465 DEFAULT CHARSET=utf8 COMMENT='宠物寄养';

/*Data for the table `chongwujiyang` */

insert  into `chongwujiyang`(`id`,`addtime`,`biaoti`,`chongwumingcheng`,`chongwufenlei`,`tupian`,`xingbie`,`nianling`,`shifoujueyu`,`chongwuxiangqing`,`zhanghao`,`xingming`,`clicktime`,`clicknum`) values (41,'2021-05-02 09:22:50','标题1','宠物名称1','宠物分类1','http://localhost:8080/ssm51k00/upload/chongwujiyang_tupian1.jpg','公','年龄1','是','宠物详情1','账号1','姓名1','2021-05-02 09:22:50',1);
insert  into `chongwujiyang`(`id`,`addtime`,`biaoti`,`chongwumingcheng`,`chongwufenlei`,`tupian`,`xingbie`,`nianling`,`shifoujueyu`,`chongwuxiangqing`,`zhanghao`,`xingming`,`clicktime`,`clicknum`) values (42,'2021-05-02 09:22:50','标题2','宠物名称2','宠物分类2','http://localhost:8080/ssm51k00/upload/chongwujiyang_tupian2.jpg','公','年龄2','是','宠物详情2','账号2','姓名2','2021-05-02 09:33:39',5);
insert  into `chongwujiyang`(`id`,`addtime`,`biaoti`,`chongwumingcheng`,`chongwufenlei`,`tupian`,`xingbie`,`nianling`,`shifoujueyu`,`chongwuxiangqing`,`zhanghao`,`xingming`,`clicktime`,`clicknum`) values (43,'2021-05-02 09:22:50','标题3','宠物名称3','宠物分类3','http://localhost:8080/ssm51k00/upload/chongwujiyang_tupian3.jpg','公','年龄3','是','宠物详情3','账号3','姓名3','2021-05-02 09:22:50',3);
insert  into `chongwujiyang`(`id`,`addtime`,`biaoti`,`chongwumingcheng`,`chongwufenlei`,`tupian`,`xingbie`,`nianling`,`shifoujueyu`,`chongwuxiangqing`,`zhanghao`,`xingming`,`clicktime`,`clicknum`) values (44,'2021-05-02 09:22:50','标题4','宠物名称4','宠物分类4','http://localhost:8080/ssm51k00/upload/chongwujiyang_tupian4.jpg','公','年龄4','是','宠物详情4','账号4','姓名4','2021-05-02 09:22:50',4);
insert  into `chongwujiyang`(`id`,`addtime`,`biaoti`,`chongwumingcheng`,`chongwufenlei`,`tupian`,`xingbie`,`nianling`,`shifoujueyu`,`chongwuxiangqing`,`zhanghao`,`xingming`,`clicktime`,`clicknum`) values (45,'2021-05-02 09:22:50','标题5','宠物名称5','宠物分类5','http://localhost:8080/ssm51k00/upload/chongwujiyang_tupian5.jpg','公','年龄5','是','宠物详情5','账号5','姓名5','2021-05-02 09:22:50',5);
insert  into `chongwujiyang`(`id`,`addtime`,`biaoti`,`chongwumingcheng`,`chongwufenlei`,`tupian`,`xingbie`,`nianling`,`shifoujueyu`,`chongwuxiangqing`,`zhanghao`,`xingming`,`clicktime`,`clicknum`) values (46,'2021-05-02 09:22:50','标题6','宠物名称6','宠物分类6','http://localhost:8080/ssm51k00/upload/chongwujiyang_tupian6.jpg','公','年龄6','是','宠物详情6','账号6','姓名6','2021-05-02 09:22:50',6);
insert  into `chongwujiyang`(`id`,`addtime`,`biaoti`,`chongwumingcheng`,`chongwufenlei`,`tupian`,`xingbie`,`nianling`,`shifoujueyu`,`chongwuxiangqing`,`zhanghao`,`xingming`,`clicktime`,`clicknum`) values (1619918977464,'2021-05-02 09:29:36','我要寄养','第三方删掉','删掉发送到','http://localhost:8080/ssm51k00/upload/1619918968996.jpg','公','33','是','<p>地方打算发多少发送到地方打算发多少发送到地方打算发多少发送到地方打算发多少发送到地方打算发多少发送到</p><p><img src=\"http://localhost:8080/ssm51k00/upload/1619918975656.jpg\"></p>','11','色粉','2021-05-02 09:33:33',8);

/*Table structure for table `chongwuxinxi` */

DROP TABLE IF EXISTS `chongwuxinxi`;

CREATE TABLE `chongwuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chongwumingcheng` varchar(200) NOT NULL COMMENT '宠物名称',
  `chongwufenlei` varchar(200) NOT NULL COMMENT '宠物分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `shifoujueyu` varchar(200) DEFAULT NULL COMMENT '是否绝育',
  `chongwuxiangqing` longtext COMMENT '宠物详情',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619918956744 DEFAULT CHARSET=utf8 COMMENT='宠物信息';

/*Data for the table `chongwuxinxi` */

insert  into `chongwuxinxi`(`id`,`addtime`,`chongwumingcheng`,`chongwufenlei`,`tupian`,`xingbie`,`nianling`,`shifoujueyu`,`chongwuxiangqing`,`zhanghao`,`xingming`) values (31,'2021-05-02 09:22:50','宠物名称1','宠物分类1','http://localhost:8080/ssm51k00/upload/chongwuxinxi_tupian1.jpg','公','年龄1','是','宠物详情1','账号1','姓名1');
insert  into `chongwuxinxi`(`id`,`addtime`,`chongwumingcheng`,`chongwufenlei`,`tupian`,`xingbie`,`nianling`,`shifoujueyu`,`chongwuxiangqing`,`zhanghao`,`xingming`) values (32,'2021-05-02 09:22:50','宠物名称2','宠物分类2','http://localhost:8080/ssm51k00/upload/chongwuxinxi_tupian2.jpg','公','年龄2','是','宠物详情2','账号2','姓名2');
insert  into `chongwuxinxi`(`id`,`addtime`,`chongwumingcheng`,`chongwufenlei`,`tupian`,`xingbie`,`nianling`,`shifoujueyu`,`chongwuxiangqing`,`zhanghao`,`xingming`) values (33,'2021-05-02 09:22:50','宠物名称3','宠物分类3','http://localhost:8080/ssm51k00/upload/chongwuxinxi_tupian3.jpg','公','年龄3','是','宠物详情3','账号3','姓名3');
insert  into `chongwuxinxi`(`id`,`addtime`,`chongwumingcheng`,`chongwufenlei`,`tupian`,`xingbie`,`nianling`,`shifoujueyu`,`chongwuxiangqing`,`zhanghao`,`xingming`) values (34,'2021-05-02 09:22:50','宠物名称4','宠物分类4','http://localhost:8080/ssm51k00/upload/chongwuxinxi_tupian4.jpg','公','年龄4','是','宠物详情4','账号4','姓名4');
insert  into `chongwuxinxi`(`id`,`addtime`,`chongwumingcheng`,`chongwufenlei`,`tupian`,`xingbie`,`nianling`,`shifoujueyu`,`chongwuxiangqing`,`zhanghao`,`xingming`) values (35,'2021-05-02 09:22:50','宠物名称5','宠物分类5','http://localhost:8080/ssm51k00/upload/chongwuxinxi_tupian5.jpg','公','年龄5','是','宠物详情5','账号5','姓名5');
insert  into `chongwuxinxi`(`id`,`addtime`,`chongwumingcheng`,`chongwufenlei`,`tupian`,`xingbie`,`nianling`,`shifoujueyu`,`chongwuxiangqing`,`zhanghao`,`xingming`) values (36,'2021-05-02 09:22:50','宠物名称6','宠物分类6','http://localhost:8080/ssm51k00/upload/chongwuxinxi_tupian6.jpg','公','年龄6','是','宠物详情6','账号6','姓名6');
insert  into `chongwuxinxi`(`id`,`addtime`,`chongwumingcheng`,`chongwufenlei`,`tupian`,`xingbie`,`nianling`,`shifoujueyu`,`chongwuxiangqing`,`zhanghao`,`xingming`) values (1619918956743,'2021-05-02 09:29:16',' 电饭锅地方','发给地方','http://localhost:8080/ssm51k00/upload/1619918941248.jpg','公','22','是','<p>地方打算发多少发送到地方打算发多少发送到地方打算发多少发送到地方打算发多少发送到地方打算发多少发送到地方打算发多少发送到地方打算发多少发送到地方打算发多少发送到地方打算发多少发送到地方打算发多少发送到地方打算发多少发送到地方打算发多少发送到地方打算发多少发送到地方打算发多少发送到地方打算发多少发送到地方打算发多少发送到地方打算发多少发送到地方打算发多少发送到地方打算发多少发送到地方打算发多少发送到</p><p><img src=\"http://localhost:8080/ssm51k00/upload/1619918952926.jpg\"></p><p><br></p><p><img src=\"http://localhost:8080/ssm51k00/upload/1619918954815.jpg\"></p><p><br></p>','11','色粉');

/*Table structure for table `chongwuzhenliao` */

DROP TABLE IF EXISTS `chongwuzhenliao`;

CREATE TABLE `chongwuzhenliao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhenliaobianhao` varchar(200) DEFAULT NULL COMMENT '诊疗编号',
  `yishenggonghao` varchar(200) DEFAULT NULL COMMENT '医生工号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `chongwumingcheng` varchar(200) DEFAULT NULL COMMENT '宠物名称',
  `chongwufenlei` varchar(200) DEFAULT NULL COMMENT '宠物分类',
  `zhengzhuangmiaoshu` longtext COMMENT '症状描述',
  `chubuzhenduan` longtext COMMENT '初步诊断',
  `yaofang` longtext COMMENT '药方',
  `zhenzhishijian` datetime DEFAULT NULL COMMENT '诊治时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhenliaobianhao` (`zhenliaobianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619919344676 DEFAULT CHARSET=utf8 COMMENT='宠物诊疗';

/*Data for the table `chongwuzhenliao` */

insert  into `chongwuzhenliao`(`id`,`addtime`,`zhenliaobianhao`,`yishenggonghao`,`yishengxingming`,`zhanghao`,`xingming`,`chongwumingcheng`,`chongwufenlei`,`zhengzhuangmiaoshu`,`chubuzhenduan`,`yaofang`,`zhenzhishijian`) values (71,'2021-05-02 09:22:50','诊疗编号1','医生工号1','医生姓名1','账号1','姓名1','宠物名称1','宠物分类1','症状描述1','初步诊断1','药方1','2021-05-02 09:22:50');
insert  into `chongwuzhenliao`(`id`,`addtime`,`zhenliaobianhao`,`yishenggonghao`,`yishengxingming`,`zhanghao`,`xingming`,`chongwumingcheng`,`chongwufenlei`,`zhengzhuangmiaoshu`,`chubuzhenduan`,`yaofang`,`zhenzhishijian`) values (72,'2021-05-02 09:22:50','诊疗编号2','医生工号2','医生姓名2','账号2','姓名2','宠物名称2','宠物分类2','症状描述2','初步诊断2','药方2','2021-05-02 09:22:50');
insert  into `chongwuzhenliao`(`id`,`addtime`,`zhenliaobianhao`,`yishenggonghao`,`yishengxingming`,`zhanghao`,`xingming`,`chongwumingcheng`,`chongwufenlei`,`zhengzhuangmiaoshu`,`chubuzhenduan`,`yaofang`,`zhenzhishijian`) values (73,'2021-05-02 09:22:50','诊疗编号3','医生工号3','医生姓名3','账号3','姓名3','宠物名称3','宠物分类3','症状描述3','初步诊断3','药方3','2021-05-02 09:22:50');
insert  into `chongwuzhenliao`(`id`,`addtime`,`zhenliaobianhao`,`yishenggonghao`,`yishengxingming`,`zhanghao`,`xingming`,`chongwumingcheng`,`chongwufenlei`,`zhengzhuangmiaoshu`,`chubuzhenduan`,`yaofang`,`zhenzhishijian`) values (74,'2021-05-02 09:22:50','诊疗编号4','医生工号4','医生姓名4','账号4','姓名4','宠物名称4','宠物分类4','症状描述4','初步诊断4','药方4','2021-05-02 09:22:50');
insert  into `chongwuzhenliao`(`id`,`addtime`,`zhenliaobianhao`,`yishenggonghao`,`yishengxingming`,`zhanghao`,`xingming`,`chongwumingcheng`,`chongwufenlei`,`zhengzhuangmiaoshu`,`chubuzhenduan`,`yaofang`,`zhenzhishijian`) values (75,'2021-05-02 09:22:50','诊疗编号5','医生工号5','医生姓名5','账号5','姓名5','宠物名称5','宠物分类5','症状描述5','初步诊断5','药方5','2021-05-02 09:22:50');
insert  into `chongwuzhenliao`(`id`,`addtime`,`zhenliaobianhao`,`yishenggonghao`,`yishengxingming`,`zhanghao`,`xingming`,`chongwumingcheng`,`chongwufenlei`,`zhengzhuangmiaoshu`,`chubuzhenduan`,`yaofang`,`zhenzhishijian`) values (76,'2021-05-02 09:22:50','诊疗编号6','医生工号6','医生姓名6','账号6','姓名6','宠物名称6','宠物分类6','症状描述6','初步诊断6','药方6','2021-05-02 09:22:50');
insert  into `chongwuzhenliao`(`id`,`addtime`,`zhenliaobianhao`,`yishenggonghao`,`yishengxingming`,`zhanghao`,`xingming`,`chongwumingcheng`,`chongwufenlei`,`zhengzhuangmiaoshu`,`chubuzhenduan`,`yaofang`,`zhenzhishijian`) values (1619919344675,'2021-05-02 09:35:44','1619919265754','22','跟地方g','11','色粉','地方是','水电费删掉','地方打算发送到删掉','宠物分类1跟地方给对方给对方给对方给对方鬼地方个地方宠物分类1跟地方给对方给对方给对方给对方鬼地方个地方','宠物分类1跟地方给对方给对方给对方给对方鬼地方个地方宠物分类1跟地方给对方给对方给对方给对方鬼地方个地方宠物分类1跟地方给对方给对方给对方给对方鬼地方个地方','2021-05-02 09:34:25');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm51k00/upload/1619919112918.png');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssm51k00/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssm51k00/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619919267996 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (151,'2021-05-02 09:22:50',1,'用户名1','留言内容1','回复内容1');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (152,'2021-05-02 09:22:50',2,'用户名2','留言内容2','回复内容2');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (153,'2021-05-02 09:22:50',3,'用户名3','留言内容3','回复内容3');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (154,'2021-05-02 09:22:50',4,'用户名4','留言内容4','回复内容4');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (155,'2021-05-02 09:22:50',5,'用户名5','留言内容5','回复内容5');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (156,'2021-05-02 09:22:50',6,'用户名6','留言内容6','回复内容6');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (1619919267995,'2021-05-02 09:34:27',1619918893933,'11','地方是否水电费删掉发送到','宠物分类1跟地方给对方给对方给对方给对方鬼地方个地方');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619919128530 DEFAULT CHARSET=utf8 COMMENT='通知公告';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (141,'2021-05-02 09:22:50','标题1','简介1','http://localhost:8080/ssm51k00/upload/news_picture1.jpg','内容1');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (142,'2021-05-02 09:22:50','标题2','简介2','http://localhost:8080/ssm51k00/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (143,'2021-05-02 09:22:50','标题3','简介3','http://localhost:8080/ssm51k00/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (144,'2021-05-02 09:22:50','标题4','简介4','http://localhost:8080/ssm51k00/upload/news_picture4.jpg','内容4');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (145,'2021-05-02 09:22:50','标题5','简介5','http://localhost:8080/ssm51k00/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (146,'2021-05-02 09:22:50','标题6','简介6','http://localhost:8080/ssm51k00/upload/news_picture6.jpg','内容6');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (1619919128529,'2021-05-02 09:32:07','水电费水电费删掉','宠物分类1跟地方给对方给对方给对方给对方鬼地方个地方宠物分类1跟地方给对方给对方给对方给对方鬼地方个地方','http://localhost:8080/ssm51k00/upload/1619919120752.png','<p>宠物分类1跟地方给对方给对方给对方给对方鬼地方个地方宠物分类1跟地方给对方给对方给对方给对方鬼地方个地方</p><p><img src=\"http://localhost:8080/ssm51k00/upload/1619919126267.png\"></p>');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1619919309168 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1619919309167,'2021-05-02 09:35:08','2021529335419301168','shangpinxinxi',1619918893933,1619919099934,'水电费删掉','http://localhost:8080/ssm51k00/upload/1619919076391.jpg',2,11,11,22,22,1,'已完成','广东省揭阳市榕城区东兴街道天欢乐幼儿园玉浦小学','11112222111','11');

/*Table structure for table `shangpinfenlei` */

DROP TABLE IF EXISTS `shangpinfenlei`;

CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619919066396 DEFAULT CHARSET=utf8 COMMENT='商品分类';

/*Data for the table `shangpinfenlei` */

insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (91,'2021-05-02 09:22:50','商品分类1');
insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (92,'2021-05-02 09:22:50','商品分类2');
insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (93,'2021-05-02 09:22:50','商品分类3');
insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (94,'2021-05-02 09:22:50','商品分类4');
insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (95,'2021-05-02 09:22:50','商品分类5');
insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (96,'2021-05-02 09:22:50','商品分类6');
insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (1619919066395,'2021-05-02 09:31:06','数码');

/*Table structure for table `shangpinxinxi` */

DROP TABLE IF EXISTS `shangpinxinxi`;

CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shangpinjieshao` longtext COMMENT '商品介绍',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  `onelimittimes` int(11) DEFAULT '-1' COMMENT '单限',
  `alllimittimes` int(11) DEFAULT '-1' COMMENT '库存',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619919099935 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `shangpinxinxi` */

insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`guige`,`tupian`,`shangpinjieshao`,`clicktime`,`clicknum`,`price`,`onelimittimes`,`alllimittimes`) values (81,'2021-05-02 09:22:50','商品名称1','商品分类1','规格1','http://localhost:8080/ssm51k00/upload/shangpinxinxi_tupian1.jpg','商品介绍1','2021-05-02 09:22:50',1,99.9,1,99);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`guige`,`tupian`,`shangpinjieshao`,`clicktime`,`clicknum`,`price`,`onelimittimes`,`alllimittimes`) values (82,'2021-05-02 09:22:50','商品名称2','商品分类2','规格2','http://localhost:8080/ssm51k00/upload/shangpinxinxi_tupian2.jpg','商品介绍2','2021-05-02 09:22:50',2,99.9,2,99);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`guige`,`tupian`,`shangpinjieshao`,`clicktime`,`clicknum`,`price`,`onelimittimes`,`alllimittimes`) values (83,'2021-05-02 09:22:50','商品名称3','商品分类3','规格3','http://localhost:8080/ssm51k00/upload/shangpinxinxi_tupian3.jpg','商品介绍3','2021-05-02 09:22:50',3,99.9,3,99);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`guige`,`tupian`,`shangpinjieshao`,`clicktime`,`clicknum`,`price`,`onelimittimes`,`alllimittimes`) values (84,'2021-05-02 09:22:50','商品名称4','商品分类4','规格4','http://localhost:8080/ssm51k00/upload/shangpinxinxi_tupian4.jpg','商品介绍4','2021-05-02 09:22:50',4,99.9,4,99);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`guige`,`tupian`,`shangpinjieshao`,`clicktime`,`clicknum`,`price`,`onelimittimes`,`alllimittimes`) values (85,'2021-05-02 09:22:50','商品名称5','商品分类5','规格5','http://localhost:8080/ssm51k00/upload/shangpinxinxi_tupian5.jpg','商品介绍5','2021-05-02 09:22:50',5,99.9,5,99);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`guige`,`tupian`,`shangpinjieshao`,`clicktime`,`clicknum`,`price`,`onelimittimes`,`alllimittimes`) values (86,'2021-05-02 09:22:50','商品名称6','商品分类6','规格6','http://localhost:8080/ssm51k00/upload/shangpinxinxi_tupian6.jpg','商品介绍6','2021-05-02 09:22:50',6,99.9,6,99);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`guige`,`tupian`,`shangpinjieshao`,`clicktime`,`clicknum`,`price`,`onelimittimes`,`alllimittimes`) values (1619919099934,'2021-05-02 09:31:39','水电费删掉','数码','水电费删掉','http://localhost:8080/ssm51k00/upload/1619919076391.jpg','<p>宠物分类1跟地方给对方给对方给对方给对方鬼地方个地方宠物分类1跟地方给对方给对方给对方给对方鬼地方个地方宠物分类1跟地方给对方给对方给对方给对方鬼地方个地方宠物分类1跟地方给对方给对方给对方给对方鬼地方个地方</p><p><img src=\"http://localhost:8080/ssm51k00/upload/1619919097830.png\"></p>','2021-05-02 09:35:08',11,11,2,886);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619919258684 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1619919217800,'2021-05-02 09:33:36',1619918893933,42,'chongwujiyang','标题2','http://localhost:8080/ssm51k00/upload/chongwujiyang_tupian2.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1619918904640,'22','yisheng','医生','clrwra8dblabbkzok2qgikwj2031bqtv','2021-05-02 09:28:27','2021-05-02 10:35:27');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,1619918893933,'11','yonghu','用户','1har3dv9twhopmg30uo2qjcsfnuvdaom','2021-05-02 09:28:46','2021-05-02 10:36:21');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,1,'abo','users','管理员','j0l6stulmc0ar51qt6c3gc0amm5z0g1u','2021-05-02 09:29:46','2021-05-02 10:35:52');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-02 09:22:50');

/*Table structure for table `yisheng` */

DROP TABLE IF EXISTS `yisheng`;

CREATE TABLE `yisheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishenggonghao` varchar(200) DEFAULT NULL COMMENT '医生工号',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `yiling` int(11) DEFAULT NULL COMMENT '医龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yishenggonghao` (`yishenggonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619918904641 DEFAULT CHARSET=utf8 COMMENT='医生';

/*Data for the table `yisheng` */

insert  into `yisheng`(`id`,`addtime`,`yishenggonghao`,`mima`,`yishengxingming`,`zhicheng`,`xingbie`,`yiling`,`shouji`,`touxiang`,`money`) values (21,'2021-05-02 09:22:50','医生1','123456','医生姓名1','初级','男',1,'13823888881','http://localhost:8080/ssm51k00/upload/yisheng_touxiang1.jpg',100);
insert  into `yisheng`(`id`,`addtime`,`yishenggonghao`,`mima`,`yishengxingming`,`zhicheng`,`xingbie`,`yiling`,`shouji`,`touxiang`,`money`) values (22,'2021-05-02 09:22:50','医生2','123456','医生姓名2','初级','男',2,'13823888882','http://localhost:8080/ssm51k00/upload/yisheng_touxiang2.jpg',100);
insert  into `yisheng`(`id`,`addtime`,`yishenggonghao`,`mima`,`yishengxingming`,`zhicheng`,`xingbie`,`yiling`,`shouji`,`touxiang`,`money`) values (23,'2021-05-02 09:22:50','医生3','123456','医生姓名3','初级','男',3,'13823888883','http://localhost:8080/ssm51k00/upload/yisheng_touxiang3.jpg',100);
insert  into `yisheng`(`id`,`addtime`,`yishenggonghao`,`mima`,`yishengxingming`,`zhicheng`,`xingbie`,`yiling`,`shouji`,`touxiang`,`money`) values (24,'2021-05-02 09:22:50','医生4','123456','医生姓名4','初级','男',4,'13823888884','http://localhost:8080/ssm51k00/upload/yisheng_touxiang4.jpg',100);
insert  into `yisheng`(`id`,`addtime`,`yishenggonghao`,`mima`,`yishengxingming`,`zhicheng`,`xingbie`,`yiling`,`shouji`,`touxiang`,`money`) values (25,'2021-05-02 09:22:50','医生5','123456','医生姓名5','初级','男',5,'13823888885','http://localhost:8080/ssm51k00/upload/yisheng_touxiang5.jpg',100);
insert  into `yisheng`(`id`,`addtime`,`yishenggonghao`,`mima`,`yishengxingming`,`zhicheng`,`xingbie`,`yiling`,`shouji`,`touxiang`,`money`) values (26,'2021-05-02 09:22:50','医生6','123456','医生姓名6','初级','男',6,'13823888886','http://localhost:8080/ssm51k00/upload/yisheng_touxiang6.jpg',100);
insert  into `yisheng`(`id`,`addtime`,`yishenggonghao`,`mima`,`yishengxingming`,`zhicheng`,`xingbie`,`yiling`,`shouji`,`touxiang`,`money`) values (1619918904640,'2021-05-02 09:28:24','22','22','跟地方g','初级','女',22,'11122222222','http://localhost:8080/ssm51k00/upload/1619918913565.jpg',0);

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1619918893934 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`,`money`) values (12,'2021-05-02 09:22:50','用户2','123456','姓名2','年龄2','男','13823888882','http://localhost:8080/ssm51k00/upload/yonghu_zhaopian2.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`,`money`) values (13,'2021-05-02 09:22:50','用户3','123456','姓名3','年龄3','男','13823888883','http://localhost:8080/ssm51k00/upload/yonghu_zhaopian3.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`,`money`) values (14,'2021-05-02 09:22:50','用户4','123456','姓名4','年龄4','男','13823888884','http://localhost:8080/ssm51k00/upload/yonghu_zhaopian4.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`,`money`) values (15,'2021-05-02 09:22:50','用户5','123456','姓名5','年龄5','男','13823888885','http://localhost:8080/ssm51k00/upload/yonghu_zhaopian5.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`,`money`) values (16,'2021-05-02 09:22:50','用户6','123456','姓名6','年龄6','男','13823888886','http://localhost:8080/ssm51k00/upload/yonghu_zhaopian6.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`,`money`) values (1619918893933,'2021-05-02 09:28:13','11','11','色粉','11','男','11122211111','http://localhost:8080/ssm51k00/upload/1619918933258.jpg',44422);

/*Table structure for table `zaixianguahao` */

DROP TABLE IF EXISTS `zaixianguahao`;

CREATE TABLE `zaixianguahao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `keshimingcheng` varchar(200) DEFAULT NULL COMMENT '科室名称',
  `chongwumingcheng` varchar(200) NOT NULL COMMENT '宠物名称',
  `chongwufenlei` varchar(200) NOT NULL COMMENT '宠物分类',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `guahaoyuanyin` longtext COMMENT '挂号原因',
  `guahaoshijian` datetime DEFAULT NULL COMMENT '挂号时间',
  `yishenggonghao` varchar(200) DEFAULT NULL COMMENT '医生工号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619919241714 DEFAULT CHARSET=utf8 COMMENT='在线挂号';

/*Data for the table `zaixianguahao` */

insert  into `zaixianguahao`(`id`,`addtime`,`keshimingcheng`,`chongwumingcheng`,`chongwufenlei`,`xingbie`,`nianling`,`guahaoyuanyin`,`guahaoshijian`,`yishenggonghao`,`yishengxingming`,`zhanghao`,`xingming`,`sfsh`,`shhf`) values (61,'2021-05-02 09:22:50','科室名称1','宠物名称1','宠物分类1','公',1,'挂号原因1','2021-05-02 09:22:50','医生工号1','医生姓名1','账号1','姓名1','是','');
insert  into `zaixianguahao`(`id`,`addtime`,`keshimingcheng`,`chongwumingcheng`,`chongwufenlei`,`xingbie`,`nianling`,`guahaoyuanyin`,`guahaoshijian`,`yishenggonghao`,`yishengxingming`,`zhanghao`,`xingming`,`sfsh`,`shhf`) values (62,'2021-05-02 09:22:50','科室名称2','宠物名称2','宠物分类2','公',2,'挂号原因2','2021-05-02 09:22:50','医生工号2','医生姓名2','账号2','姓名2','是','');
insert  into `zaixianguahao`(`id`,`addtime`,`keshimingcheng`,`chongwumingcheng`,`chongwufenlei`,`xingbie`,`nianling`,`guahaoyuanyin`,`guahaoshijian`,`yishenggonghao`,`yishengxingming`,`zhanghao`,`xingming`,`sfsh`,`shhf`) values (63,'2021-05-02 09:22:50','科室名称3','宠物名称3','宠物分类3','公',3,'挂号原因3','2021-05-02 09:22:50','医生工号3','医生姓名3','账号3','姓名3','是','');
insert  into `zaixianguahao`(`id`,`addtime`,`keshimingcheng`,`chongwumingcheng`,`chongwufenlei`,`xingbie`,`nianling`,`guahaoyuanyin`,`guahaoshijian`,`yishenggonghao`,`yishengxingming`,`zhanghao`,`xingming`,`sfsh`,`shhf`) values (64,'2021-05-02 09:22:50','科室名称4','宠物名称4','宠物分类4','公',4,'挂号原因4','2021-05-02 09:22:50','医生工号4','医生姓名4','账号4','姓名4','是','');
insert  into `zaixianguahao`(`id`,`addtime`,`keshimingcheng`,`chongwumingcheng`,`chongwufenlei`,`xingbie`,`nianling`,`guahaoyuanyin`,`guahaoshijian`,`yishenggonghao`,`yishengxingming`,`zhanghao`,`xingming`,`sfsh`,`shhf`) values (65,'2021-05-02 09:22:50','科室名称5','宠物名称5','宠物分类5','公',5,'挂号原因5','2021-05-02 09:22:50','医生工号5','医生姓名5','账号5','姓名5','是','');
insert  into `zaixianguahao`(`id`,`addtime`,`keshimingcheng`,`chongwumingcheng`,`chongwufenlei`,`xingbie`,`nianling`,`guahaoyuanyin`,`guahaoshijian`,`yishenggonghao`,`yishengxingming`,`zhanghao`,`xingming`,`sfsh`,`shhf`) values (66,'2021-05-02 09:22:50','科室名称6','宠物名称6','宠物分类6','公',6,'挂号原因6','2021-05-02 09:22:50','医生工号6','医生姓名6','账号6','姓名6','是','');
insert  into `zaixianguahao`(`id`,`addtime`,`keshimingcheng`,`chongwumingcheng`,`chongwufenlei`,`xingbie`,`nianling`,`guahaoyuanyin`,`guahaoshijian`,`yishenggonghao`,`yishengxingming`,`zhanghao`,`xingming`,`sfsh`,`shhf`) values (1619919241713,'2021-05-02 09:34:00','第三方','地方是','水电费删掉','公',22,'<p>请输入挂号原因宠物分类1跟地方给对方给对方给对方给对方鬼地方个地方宠物分类1跟地方给对方给对方给对方给对方鬼地方个地方宠物分类1跟地方给对方给对方给对方给对方鬼地方个地方宠物分类1跟地方给对方给对方给对方给对方鬼地方个地方宠物分类1跟地方给对方给对方给对方给对方鬼地方个地方</p>','2021-05-02 09:32:35','22','跟地方g','11','色粉','是','可以444444444444444444');

/*Table structure for table `zaixianmenzhen` */

DROP TABLE IF EXISTS `zaixianmenzhen`;

CREATE TABLE `zaixianmenzhen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `keshimingcheng` varchar(200) DEFAULT NULL COMMENT '科室名称',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `shangbanshijian` varchar(200) DEFAULT NULL COMMENT '上班时间',
  `yishenggonghao` varchar(200) DEFAULT NULL COMMENT '医生工号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `yiling` varchar(200) DEFAULT NULL COMMENT '医龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `zhuzhijibing` longtext COMMENT '主治疾病',
  `keshijieshao` longtext COMMENT '科室介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1619919045148 DEFAULT CHARSET=utf8 COMMENT='在线门诊';

/*Data for the table `zaixianmenzhen` */

insert  into `zaixianmenzhen`(`id`,`addtime`,`keshimingcheng`,`leixing`,`shangbanshijian`,`yishenggonghao`,`yishengxingming`,`yiling`,`shouji`,`zhicheng`,`fengmian`,`zhuzhijibing`,`keshijieshao`) values (51,'2021-05-02 09:22:50','科室名称1','普通门诊','上班时间1','医生工号1','医生姓名1','医龄1','手机1','职称1','http://localhost:8080/ssm51k00/upload/zaixianmenzhen_fengmian1.jpg','主治疾病1','科室介绍1');
insert  into `zaixianmenzhen`(`id`,`addtime`,`keshimingcheng`,`leixing`,`shangbanshijian`,`yishenggonghao`,`yishengxingming`,`yiling`,`shouji`,`zhicheng`,`fengmian`,`zhuzhijibing`,`keshijieshao`) values (52,'2021-05-02 09:22:50','科室名称2','普通门诊','上班时间2','医生工号2','医生姓名2','医龄2','手机2','职称2','http://localhost:8080/ssm51k00/upload/zaixianmenzhen_fengmian2.jpg','主治疾病2','科室介绍2');
insert  into `zaixianmenzhen`(`id`,`addtime`,`keshimingcheng`,`leixing`,`shangbanshijian`,`yishenggonghao`,`yishengxingming`,`yiling`,`shouji`,`zhicheng`,`fengmian`,`zhuzhijibing`,`keshijieshao`) values (53,'2021-05-02 09:22:50','科室名称3','普通门诊','上班时间3','医生工号3','医生姓名3','医龄3','手机3','职称3','http://localhost:8080/ssm51k00/upload/zaixianmenzhen_fengmian3.jpg','主治疾病3','科室介绍3');
insert  into `zaixianmenzhen`(`id`,`addtime`,`keshimingcheng`,`leixing`,`shangbanshijian`,`yishenggonghao`,`yishengxingming`,`yiling`,`shouji`,`zhicheng`,`fengmian`,`zhuzhijibing`,`keshijieshao`) values (54,'2021-05-02 09:22:50','科室名称4','普通门诊','上班时间4','医生工号4','医生姓名4','医龄4','手机4','职称4','http://localhost:8080/ssm51k00/upload/zaixianmenzhen_fengmian4.jpg','主治疾病4','科室介绍4');
insert  into `zaixianmenzhen`(`id`,`addtime`,`keshimingcheng`,`leixing`,`shangbanshijian`,`yishenggonghao`,`yishengxingming`,`yiling`,`shouji`,`zhicheng`,`fengmian`,`zhuzhijibing`,`keshijieshao`) values (55,'2021-05-02 09:22:50','科室名称5','普通门诊','上班时间5','医生工号5','医生姓名5','医龄5','手机5','职称5','http://localhost:8080/ssm51k00/upload/zaixianmenzhen_fengmian5.jpg','主治疾病5','科室介绍5');
insert  into `zaixianmenzhen`(`id`,`addtime`,`keshimingcheng`,`leixing`,`shangbanshijian`,`yishenggonghao`,`yishengxingming`,`yiling`,`shouji`,`zhicheng`,`fengmian`,`zhuzhijibing`,`keshijieshao`) values (56,'2021-05-02 09:22:50','科室名称6','普通门诊','上班时间6','医生工号6','医生姓名6','医龄6','手机6','职称6','http://localhost:8080/ssm51k00/upload/zaixianmenzhen_fengmian6.jpg','主治疾病6','科室介绍6');
insert  into `zaixianmenzhen`(`id`,`addtime`,`keshimingcheng`,`leixing`,`shangbanshijian`,`yishenggonghao`,`yishengxingming`,`yiling`,`shouji`,`zhicheng`,`fengmian`,`zhuzhijibing`,`keshijieshao`) values (1619919045147,'2021-05-02 09:30:44','第三方','专家门诊','是否删掉双方都水电费删掉','22','跟地方g','22','11122222222','初级','http://localhost:8080/ssm51k00/upload/1619919032413.jpg','宠物分类1跟地方给对方给对方给对方给对方鬼地方个地方宠物分类1跟地方给对方给对方给对方给对方鬼地方个地方宠物分类1跟地方给对方给对方给对方给对方鬼地方个地方','<p>宠物分类1跟地方给对方给对方给对方给对方鬼地方个地方宠物分类1跟地方给对方给对方给对方给对方鬼地方个地方宠物分类1跟地方给对方给对方给对方给对方鬼地方个地方宠物分类1跟地方给对方给对方给对方给对方鬼地方个地方</p><p><img src=\"http://localhost:8080/ssm51k00/upload/1619919043616.jpg\"></p>');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
