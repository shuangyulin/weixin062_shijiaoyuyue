/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm45k9p
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm45k9p` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm45k9p`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm45k9p/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssm45k9p/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssm45k9p/upload/picture3.jpg');

/*Table structure for table `dingdanxinxi` */

DROP TABLE IF EXISTS `dingdanxinxi`;

CREATE TABLE `dingdanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `keshi` varchar(200) DEFAULT NULL COMMENT '课时',
  `xuefei` int(11) DEFAULT NULL COMMENT '学费',
  `kechengtupian` varchar(200) DEFAULT NULL COMMENT '课程图片',
  `dingdanzhuangtai` varchar(200) DEFAULT NULL COMMENT '订单状态',
  `huiyuankahao` varchar(200) DEFAULT NULL COMMENT '会员卡号',
  `huiyuanxingming` varchar(200) DEFAULT NULL COMMENT '会员姓名',
  `jiaolianbianhao` varchar(200) DEFAULT NULL COMMENT '教练编号',
  `jiaolianxingming` varchar(200) DEFAULT NULL COMMENT '教练姓名',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='订单信息';

/*Data for the table `dingdanxinxi` */

insert  into `dingdanxinxi`(`id`,`addtime`,`dingdanbianhao`,`kechengmingcheng`,`kechengleixing`,`keshi`,`xuefei`,`kechengtupian`,`dingdanzhuangtai`,`huiyuankahao`,`huiyuanxingming`,`jiaolianbianhao`,`jiaolianxingming`,`ispay`,`userid`) values (51,'2021-05-26 20:55:04','订单编号1','课程名称1','课程类型1','课时1',1,'http://localhost:8080/ssm45k9p/upload/dingdanxinxi_kechengtupian1.jpg','已完成','会员卡号1','会员姓名1','教练编号1','教练姓名1','未支付',1);
insert  into `dingdanxinxi`(`id`,`addtime`,`dingdanbianhao`,`kechengmingcheng`,`kechengleixing`,`keshi`,`xuefei`,`kechengtupian`,`dingdanzhuangtai`,`huiyuankahao`,`huiyuanxingming`,`jiaolianbianhao`,`jiaolianxingming`,`ispay`,`userid`) values (52,'2021-05-26 20:55:04','订单编号2','课程名称2','课程类型2','课时2',2,'http://localhost:8080/ssm45k9p/upload/dingdanxinxi_kechengtupian2.jpg','已完成','会员卡号2','会员姓名2','教练编号2','教练姓名2','未支付',2);
insert  into `dingdanxinxi`(`id`,`addtime`,`dingdanbianhao`,`kechengmingcheng`,`kechengleixing`,`keshi`,`xuefei`,`kechengtupian`,`dingdanzhuangtai`,`huiyuankahao`,`huiyuanxingming`,`jiaolianbianhao`,`jiaolianxingming`,`ispay`,`userid`) values (53,'2021-05-26 20:55:04','订单编号3','课程名称3','课程类型3','课时3',3,'http://localhost:8080/ssm45k9p/upload/dingdanxinxi_kechengtupian3.jpg','已完成','会员卡号3','会员姓名3','教练编号3','教练姓名3','未支付',3);
insert  into `dingdanxinxi`(`id`,`addtime`,`dingdanbianhao`,`kechengmingcheng`,`kechengleixing`,`keshi`,`xuefei`,`kechengtupian`,`dingdanzhuangtai`,`huiyuankahao`,`huiyuanxingming`,`jiaolianbianhao`,`jiaolianxingming`,`ispay`,`userid`) values (54,'2021-05-26 20:55:04','订单编号4','课程名称4','课程类型4','课时4',4,'http://localhost:8080/ssm45k9p/upload/dingdanxinxi_kechengtupian4.jpg','已完成','会员卡号4','会员姓名4','教练编号4','教练姓名4','未支付',4);
insert  into `dingdanxinxi`(`id`,`addtime`,`dingdanbianhao`,`kechengmingcheng`,`kechengleixing`,`keshi`,`xuefei`,`kechengtupian`,`dingdanzhuangtai`,`huiyuankahao`,`huiyuanxingming`,`jiaolianbianhao`,`jiaolianxingming`,`ispay`,`userid`) values (55,'2021-05-26 20:55:04','订单编号5','课程名称5','课程类型5','课时5',5,'http://localhost:8080/ssm45k9p/upload/dingdanxinxi_kechengtupian5.jpg','已完成','会员卡号5','会员姓名5','教练编号5','教练姓名5','未支付',5);
insert  into `dingdanxinxi`(`id`,`addtime`,`dingdanbianhao`,`kechengmingcheng`,`kechengleixing`,`keshi`,`xuefei`,`kechengtupian`,`dingdanzhuangtai`,`huiyuankahao`,`huiyuanxingming`,`jiaolianbianhao`,`jiaolianxingming`,`ispay`,`userid`) values (56,'2021-05-26 20:55:04','订单编号6','课程名称6','课程类型6','课时6',6,'http://localhost:8080/ssm45k9p/upload/dingdanxinxi_kechengtupian6.jpg','已完成','会员卡号6','会员姓名6','教练编号6','教练姓名6','未支付',6);

/*Table structure for table `huiyuan` */

DROP TABLE IF EXISTS `huiyuan`;

CREATE TABLE `huiyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huiyuankahao` varchar(200) NOT NULL COMMENT '会员卡号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `huiyuanxingming` varchar(200) NOT NULL COMMENT '会员姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `shengri` date DEFAULT NULL COMMENT '生日',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `huiyuankahao` (`huiyuankahao`)
) ENGINE=InnoDB AUTO_INCREMENT=1622033795187 DEFAULT CHARSET=utf8 COMMENT='会员';

/*Data for the table `huiyuan` */

insert  into `huiyuan`(`id`,`addtime`,`huiyuankahao`,`mima`,`huiyuanxingming`,`xingbie`,`shouji`,`shenfenzheng`,`shengri`,`touxiang`) values (11,'2021-05-26 20:55:04','会员1','123456','会员姓名1','男','13823888881','440300199101010001','2021-05-26','http://localhost:8080/ssm45k9p/upload/huiyuan_touxiang1.jpg');
insert  into `huiyuan`(`id`,`addtime`,`huiyuankahao`,`mima`,`huiyuanxingming`,`xingbie`,`shouji`,`shenfenzheng`,`shengri`,`touxiang`) values (12,'2021-05-26 20:55:04','会员2','123456','会员姓名2','男','13823888882','440300199202020002','2021-05-26','http://localhost:8080/ssm45k9p/upload/huiyuan_touxiang2.jpg');
insert  into `huiyuan`(`id`,`addtime`,`huiyuankahao`,`mima`,`huiyuanxingming`,`xingbie`,`shouji`,`shenfenzheng`,`shengri`,`touxiang`) values (13,'2021-05-26 20:55:04','会员3','123456','会员姓名3','男','13823888883','440300199303030003','2021-05-26','http://localhost:8080/ssm45k9p/upload/huiyuan_touxiang3.jpg');
insert  into `huiyuan`(`id`,`addtime`,`huiyuankahao`,`mima`,`huiyuanxingming`,`xingbie`,`shouji`,`shenfenzheng`,`shengri`,`touxiang`) values (14,'2021-05-26 20:55:04','会员4','123456','会员姓名4','男','13823888884','440300199404040004','2021-05-26','http://localhost:8080/ssm45k9p/upload/huiyuan_touxiang4.jpg');
insert  into `huiyuan`(`id`,`addtime`,`huiyuankahao`,`mima`,`huiyuanxingming`,`xingbie`,`shouji`,`shenfenzheng`,`shengri`,`touxiang`) values (15,'2021-05-26 20:55:04','会员5','123456','会员姓名5','男','13823888885','440300199505050005','2021-05-26','http://localhost:8080/ssm45k9p/upload/huiyuan_touxiang5.jpg');
insert  into `huiyuan`(`id`,`addtime`,`huiyuankahao`,`mima`,`huiyuanxingming`,`xingbie`,`shouji`,`shenfenzheng`,`shengri`,`touxiang`) values (16,'2021-05-26 20:55:04','会员6','123456','会员姓名6','男','13823888886','440300199606060006','2021-05-26','http://localhost:8080/ssm45k9p/upload/huiyuan_touxiang6.jpg');
insert  into `huiyuan`(`id`,`addtime`,`huiyuankahao`,`mima`,`huiyuanxingming`,`xingbie`,`shouji`,`shenfenzheng`,`shengri`,`touxiang`) values (1622033795186,'2021-05-26 20:56:35','1','1','1','男',NULL,NULL,NULL,NULL);

/*Table structure for table `jianshenkecheng` */

DROP TABLE IF EXISTS `jianshenkecheng`;

CREATE TABLE `jianshenkecheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `kechengneirong` longtext COMMENT '课程内容',
  `jianshenxiaoguo` longtext COMMENT '健身效果',
  `keshi` varchar(200) DEFAULT NULL COMMENT '课时',
  `xuefei` int(11) DEFAULT NULL COMMENT '学费',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `kechengtupian` varchar(200) DEFAULT NULL COMMENT '课程图片',
  `jiaolianbianhao` varchar(200) DEFAULT NULL COMMENT '教练编号',
  `jiaolianxingming` varchar(200) DEFAULT NULL COMMENT '教练姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='健身课程';

/*Data for the table `jianshenkecheng` */

insert  into `jianshenkecheng`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`kechengneirong`,`jianshenxiaoguo`,`keshi`,`xuefei`,`lianxidianhua`,`kechengtupian`,`jiaolianbianhao`,`jiaolianxingming`,`userid`) values (31,'2021-05-26 20:55:04','课程名称1','课程类型1','课程内容1','健身效果1','课时1',1,'13823888881','http://localhost:8080/ssm45k9p/upload/jianshenkecheng_kechengtupian1.jpg','教练编号1','教练姓名1',1);
insert  into `jianshenkecheng`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`kechengneirong`,`jianshenxiaoguo`,`keshi`,`xuefei`,`lianxidianhua`,`kechengtupian`,`jiaolianbianhao`,`jiaolianxingming`,`userid`) values (32,'2021-05-26 20:55:04','课程名称2','课程类型2','课程内容2','健身效果2','课时2',2,'13823888882','http://localhost:8080/ssm45k9p/upload/jianshenkecheng_kechengtupian2.jpg','教练编号2','教练姓名2',2);
insert  into `jianshenkecheng`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`kechengneirong`,`jianshenxiaoguo`,`keshi`,`xuefei`,`lianxidianhua`,`kechengtupian`,`jiaolianbianhao`,`jiaolianxingming`,`userid`) values (33,'2021-05-26 20:55:04','课程名称3','课程类型3','课程内容3','健身效果3','课时3',3,'13823888883','http://localhost:8080/ssm45k9p/upload/jianshenkecheng_kechengtupian3.jpg','教练编号3','教练姓名3',3);
insert  into `jianshenkecheng`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`kechengneirong`,`jianshenxiaoguo`,`keshi`,`xuefei`,`lianxidianhua`,`kechengtupian`,`jiaolianbianhao`,`jiaolianxingming`,`userid`) values (34,'2021-05-26 20:55:04','课程名称4','课程类型4','课程内容4','健身效果4','课时4',4,'13823888884','http://localhost:8080/ssm45k9p/upload/jianshenkecheng_kechengtupian4.jpg','教练编号4','教练姓名4',4);
insert  into `jianshenkecheng`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`kechengneirong`,`jianshenxiaoguo`,`keshi`,`xuefei`,`lianxidianhua`,`kechengtupian`,`jiaolianbianhao`,`jiaolianxingming`,`userid`) values (35,'2021-05-26 20:55:04','课程名称5','课程类型5','课程内容5','健身效果5','课时5',5,'13823888885','http://localhost:8080/ssm45k9p/upload/jianshenkecheng_kechengtupian5.jpg','教练编号5','教练姓名5',5);
insert  into `jianshenkecheng`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`kechengneirong`,`jianshenxiaoguo`,`keshi`,`xuefei`,`lianxidianhua`,`kechengtupian`,`jiaolianbianhao`,`jiaolianxingming`,`userid`) values (36,'2021-05-26 20:55:04','课程名称6','课程类型6','课程内容6','健身效果6','课时6',6,'13823888886','http://localhost:8080/ssm45k9p/upload/jianshenkecheng_kechengtupian6.jpg','教练编号6','教练姓名6',6);

/*Table structure for table `jiaolian` */

DROP TABLE IF EXISTS `jiaolian`;

CREATE TABLE `jiaolian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaolianbianhao` varchar(200) NOT NULL COMMENT '教练编号',
  `jiaolianxingming` varchar(200) NOT NULL COMMENT '教练姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoling` int(11) DEFAULT NULL COMMENT '教龄',
  `dengji` varchar(200) DEFAULT NULL COMMENT '等级',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaolianbianhao` (`jiaolianbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='教练';

/*Data for the table `jiaolian` */

insert  into `jiaolian`(`id`,`addtime`,`jiaolianbianhao`,`jiaolianxingming`,`mima`,`jiaoling`,`dengji`,`lianxidianhua`,`shenfenzheng`,`touxiang`) values (21,'2021-05-26 20:55:04','教练1','教练姓名1','123456',1,'等级1','13823888881','440300199101010001','http://localhost:8080/ssm45k9p/upload/jiaolian_touxiang1.jpg');
insert  into `jiaolian`(`id`,`addtime`,`jiaolianbianhao`,`jiaolianxingming`,`mima`,`jiaoling`,`dengji`,`lianxidianhua`,`shenfenzheng`,`touxiang`) values (22,'2021-05-26 20:55:04','教练2','教练姓名2','123456',2,'等级2','13823888882','440300199202020002','http://localhost:8080/ssm45k9p/upload/jiaolian_touxiang2.jpg');
insert  into `jiaolian`(`id`,`addtime`,`jiaolianbianhao`,`jiaolianxingming`,`mima`,`jiaoling`,`dengji`,`lianxidianhua`,`shenfenzheng`,`touxiang`) values (23,'2021-05-26 20:55:04','教练3','教练姓名3','123456',3,'等级3','13823888883','440300199303030003','http://localhost:8080/ssm45k9p/upload/jiaolian_touxiang3.jpg');
insert  into `jiaolian`(`id`,`addtime`,`jiaolianbianhao`,`jiaolianxingming`,`mima`,`jiaoling`,`dengji`,`lianxidianhua`,`shenfenzheng`,`touxiang`) values (24,'2021-05-26 20:55:04','教练4','教练姓名4','123456',4,'等级4','13823888884','440300199404040004','http://localhost:8080/ssm45k9p/upload/jiaolian_touxiang4.jpg');
insert  into `jiaolian`(`id`,`addtime`,`jiaolianbianhao`,`jiaolianxingming`,`mima`,`jiaoling`,`dengji`,`lianxidianhua`,`shenfenzheng`,`touxiang`) values (25,'2021-05-26 20:55:04','教练5','教练姓名5','123456',5,'等级5','13823888885','440300199505050005','http://localhost:8080/ssm45k9p/upload/jiaolian_touxiang5.jpg');
insert  into `jiaolian`(`id`,`addtime`,`jiaolianbianhao`,`jiaolianxingming`,`mima`,`jiaoling`,`dengji`,`lianxidianhua`,`shenfenzheng`,`touxiang`) values (26,'2021-05-26 20:55:04','教练6','教练姓名6','123456',6,'等级6','13823888886','440300199606060006','http://localhost:8080/ssm45k9p/upload/jiaolian_touxiang6.jpg');

/*Table structure for table `kechengfenlei` */

DROP TABLE IF EXISTS `kechengfenlei`;

CREATE TABLE `kechengfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='课程分类';

/*Data for the table `kechengfenlei` */

insert  into `kechengfenlei`(`id`,`addtime`,`leixing`) values (71,'2021-05-26 20:55:04','类型1');
insert  into `kechengfenlei`(`id`,`addtime`,`leixing`) values (72,'2021-05-26 20:55:04','类型2');
insert  into `kechengfenlei`(`id`,`addtime`,`leixing`) values (73,'2021-05-26 20:55:04','类型3');
insert  into `kechengfenlei`(`id`,`addtime`,`leixing`) values (74,'2021-05-26 20:55:04','类型4');
insert  into `kechengfenlei`(`id`,`addtime`,`leixing`) values (75,'2021-05-26 20:55:04','类型5');
insert  into `kechengfenlei`(`id`,`addtime`,`leixing`) values (76,'2021-05-26 20:55:04','类型6');

/*Table structure for table `kechengyuyue` */

DROP TABLE IF EXISTS `kechengyuyue`;

CREATE TABLE `kechengyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `keshi` varchar(200) DEFAULT NULL COMMENT '课时',
  `jiaolianbianhao` varchar(200) DEFAULT NULL COMMENT '教练编号',
  `jiaolianxingming` varchar(200) DEFAULT NULL COMMENT '教练姓名',
  `kechengtupian` varchar(200) DEFAULT NULL COMMENT '课程图片',
  `yuyueshijian` datetime DEFAULT NULL COMMENT '预约时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `huiyuankahao` varchar(200) DEFAULT NULL COMMENT '会员卡号',
  `huiyuanxingming` varchar(200) DEFAULT NULL COMMENT '会员姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1622033890121 DEFAULT CHARSET=utf8 COMMENT='课程预约';

/*Data for the table `kechengyuyue` */

insert  into `kechengyuyue`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`keshi`,`jiaolianbianhao`,`jiaolianxingming`,`kechengtupian`,`yuyueshijian`,`beizhu`,`huiyuankahao`,`huiyuanxingming`,`sfsh`,`shhf`,`userid`) values (41,'2021-05-26 20:55:04','课程名称1','课程类型1','课时1','教练编号1','教练姓名1','http://localhost:8080/ssm45k9p/upload/kechengyuyue_kechengtupian1.jpg','2021-05-26 20:55:04','备注1','会员卡号1','会员姓名1','是','',1);
insert  into `kechengyuyue`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`keshi`,`jiaolianbianhao`,`jiaolianxingming`,`kechengtupian`,`yuyueshijian`,`beizhu`,`huiyuankahao`,`huiyuanxingming`,`sfsh`,`shhf`,`userid`) values (42,'2021-05-26 20:55:04','课程名称2','课程类型2','课时2','教练编号2','教练姓名2','http://localhost:8080/ssm45k9p/upload/kechengyuyue_kechengtupian2.jpg','2021-05-26 20:55:04','备注2','会员卡号2','会员姓名2','是','',2);
insert  into `kechengyuyue`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`keshi`,`jiaolianbianhao`,`jiaolianxingming`,`kechengtupian`,`yuyueshijian`,`beizhu`,`huiyuankahao`,`huiyuanxingming`,`sfsh`,`shhf`,`userid`) values (43,'2021-05-26 20:55:04','课程名称3','课程类型3','课时3','教练编号3','教练姓名3','http://localhost:8080/ssm45k9p/upload/kechengyuyue_kechengtupian3.jpg','2021-05-26 20:55:04','备注3','会员卡号3','会员姓名3','是','',3);
insert  into `kechengyuyue`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`keshi`,`jiaolianbianhao`,`jiaolianxingming`,`kechengtupian`,`yuyueshijian`,`beizhu`,`huiyuankahao`,`huiyuanxingming`,`sfsh`,`shhf`,`userid`) values (44,'2021-05-26 20:55:04','课程名称4','课程类型4','课时4','教练编号4','教练姓名4','http://localhost:8080/ssm45k9p/upload/kechengyuyue_kechengtupian4.jpg','2021-05-26 20:55:04','备注4','会员卡号4','会员姓名4','是','',4);
insert  into `kechengyuyue`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`keshi`,`jiaolianbianhao`,`jiaolianxingming`,`kechengtupian`,`yuyueshijian`,`beizhu`,`huiyuankahao`,`huiyuanxingming`,`sfsh`,`shhf`,`userid`) values (45,'2021-05-26 20:55:04','课程名称5','课程类型5','课时5','教练编号5','教练姓名5','http://localhost:8080/ssm45k9p/upload/kechengyuyue_kechengtupian5.jpg','2021-05-26 20:55:04','备注5','会员卡号5','会员姓名5','是','',5);
insert  into `kechengyuyue`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`keshi`,`jiaolianbianhao`,`jiaolianxingming`,`kechengtupian`,`yuyueshijian`,`beizhu`,`huiyuankahao`,`huiyuanxingming`,`sfsh`,`shhf`,`userid`) values (46,'2021-05-26 20:55:04','课程名称6','课程类型6','课时6','教练编号6','教练姓名6','http://localhost:8080/ssm45k9p/upload/kechengyuyue_kechengtupian6.jpg','2021-05-26 20:55:04','备注6','会员卡号6','会员姓名6','是','',6);
insert  into `kechengyuyue`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`keshi`,`jiaolianbianhao`,`jiaolianxingming`,`kechengtupian`,`yuyueshijian`,`beizhu`,`huiyuankahao`,`huiyuanxingming`,`sfsh`,`shhf`,`userid`) values (1622033890120,'2021-05-26 20:58:09','课程名称1','课程类型1','课时1','教练编号1','教练姓名1','http://localhost:8080/ssm45k9p/upload/jianshenkecheng_kechengtupian1.jpg','2021-05-26 21:58:06','','1','1','','',1622033795186);

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
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='健身资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (111,'2021-05-26 20:55:04','标题1','简介1','http://localhost:8080/ssm45k9p/upload/news_picture1.jpg','内容1');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (112,'2021-05-26 20:55:04','标题2','简介2','http://localhost:8080/ssm45k9p/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (113,'2021-05-26 20:55:04','标题3','简介3','http://localhost:8080/ssm45k9p/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (114,'2021-05-26 20:55:04','标题4','简介4','http://localhost:8080/ssm45k9p/upload/news_picture4.jpg','内容4');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (115,'2021-05-26 20:55:04','标题5','简介5','http://localhost:8080/ssm45k9p/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (116,'2021-05-26 20:55:04','标题6','简介6','http://localhost:8080/ssm45k9p/upload/news_picture6.jpg','内容6');

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
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,2:赞,3:踩)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1622033849533 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`,`type`) values (1622033849532,'2021-05-26 20:57:28',1622033795186,31,'jianshenkecheng','课程名称1','http://localhost:8080/ssm45k9p/upload/jianshenkecheng_kechengtupian1.jpg','1');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1622033795186,'1','huiyuan','会员','ho1kaafctcaa9fh2xyip9u401yb6x6xu','2021-05-26 20:56:39','2021-05-26 21:56:40');

/*Table structure for table `tuikuanxinxi` */

DROP TABLE IF EXISTS `tuikuanxinxi`;

CREATE TABLE `tuikuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `keshi` varchar(200) DEFAULT NULL COMMENT '课时',
  `xuefei` int(11) DEFAULT NULL COMMENT '学费',
  `kechengtupian` varchar(200) DEFAULT NULL COMMENT '课程图片',
  `tuikuanriqi` datetime DEFAULT NULL COMMENT '退款日期',
  `tuikuanyuanyin` varchar(200) DEFAULT NULL COMMENT '退款原因',
  `jiaolianbianhao` varchar(200) DEFAULT NULL COMMENT '教练编号',
  `huiyuankahao` varchar(200) DEFAULT NULL COMMENT '会员卡号',
  `huiyuanxingming` varchar(200) DEFAULT NULL COMMENT '会员姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='退款信息';

/*Data for the table `tuikuanxinxi` */

insert  into `tuikuanxinxi`(`id`,`addtime`,`dingdanbianhao`,`kechengmingcheng`,`kechengleixing`,`keshi`,`xuefei`,`kechengtupian`,`tuikuanriqi`,`tuikuanyuanyin`,`jiaolianbianhao`,`huiyuankahao`,`huiyuanxingming`,`sfsh`,`shhf`,`ispay`,`userid`) values (61,'2021-05-26 20:55:04','订单编号1','课程名称1','课程类型1','课时1',1,'http://localhost:8080/ssm45k9p/upload/tuikuanxinxi_kechengtupian1.jpg','2021-05-26 20:55:04','退款原因1','教练编号1','会员卡号1','会员姓名1','是','','未支付',1);
insert  into `tuikuanxinxi`(`id`,`addtime`,`dingdanbianhao`,`kechengmingcheng`,`kechengleixing`,`keshi`,`xuefei`,`kechengtupian`,`tuikuanriqi`,`tuikuanyuanyin`,`jiaolianbianhao`,`huiyuankahao`,`huiyuanxingming`,`sfsh`,`shhf`,`ispay`,`userid`) values (62,'2021-05-26 20:55:04','订单编号2','课程名称2','课程类型2','课时2',2,'http://localhost:8080/ssm45k9p/upload/tuikuanxinxi_kechengtupian2.jpg','2021-05-26 20:55:04','退款原因2','教练编号2','会员卡号2','会员姓名2','是','','未支付',2);
insert  into `tuikuanxinxi`(`id`,`addtime`,`dingdanbianhao`,`kechengmingcheng`,`kechengleixing`,`keshi`,`xuefei`,`kechengtupian`,`tuikuanriqi`,`tuikuanyuanyin`,`jiaolianbianhao`,`huiyuankahao`,`huiyuanxingming`,`sfsh`,`shhf`,`ispay`,`userid`) values (63,'2021-05-26 20:55:04','订单编号3','课程名称3','课程类型3','课时3',3,'http://localhost:8080/ssm45k9p/upload/tuikuanxinxi_kechengtupian3.jpg','2021-05-26 20:55:04','退款原因3','教练编号3','会员卡号3','会员姓名3','是','','未支付',3);
insert  into `tuikuanxinxi`(`id`,`addtime`,`dingdanbianhao`,`kechengmingcheng`,`kechengleixing`,`keshi`,`xuefei`,`kechengtupian`,`tuikuanriqi`,`tuikuanyuanyin`,`jiaolianbianhao`,`huiyuankahao`,`huiyuanxingming`,`sfsh`,`shhf`,`ispay`,`userid`) values (64,'2021-05-26 20:55:04','订单编号4','课程名称4','课程类型4','课时4',4,'http://localhost:8080/ssm45k9p/upload/tuikuanxinxi_kechengtupian4.jpg','2021-05-26 20:55:04','退款原因4','教练编号4','会员卡号4','会员姓名4','是','','未支付',4);
insert  into `tuikuanxinxi`(`id`,`addtime`,`dingdanbianhao`,`kechengmingcheng`,`kechengleixing`,`keshi`,`xuefei`,`kechengtupian`,`tuikuanriqi`,`tuikuanyuanyin`,`jiaolianbianhao`,`huiyuankahao`,`huiyuanxingming`,`sfsh`,`shhf`,`ispay`,`userid`) values (65,'2021-05-26 20:55:04','订单编号5','课程名称5','课程类型5','课时5',5,'http://localhost:8080/ssm45k9p/upload/tuikuanxinxi_kechengtupian5.jpg','2021-05-26 20:55:04','退款原因5','教练编号5','会员卡号5','会员姓名5','是','','未支付',5);
insert  into `tuikuanxinxi`(`id`,`addtime`,`dingdanbianhao`,`kechengmingcheng`,`kechengleixing`,`keshi`,`xuefei`,`kechengtupian`,`tuikuanriqi`,`tuikuanyuanyin`,`jiaolianbianhao`,`huiyuankahao`,`huiyuanxingming`,`sfsh`,`shhf`,`ispay`,`userid`) values (66,'2021-05-26 20:55:04','订单编号6','课程名称6','课程类型6','课时6',6,'http://localhost:8080/ssm45k9p/upload/tuikuanxinxi_kechengtupian6.jpg','2021-05-26 20:55:04','退款原因6','教练编号6','会员卡号6','会员姓名6','是','','未支付',6);

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-26 20:55:04');

/*Table structure for table `yuejiesuantongji` */

DROP TABLE IF EXISTS `yuejiesuantongji`;

CREATE TABLE `yuejiesuantongji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `keshi` varchar(200) DEFAULT NULL COMMENT '课时',
  `xuefei` int(11) DEFAULT NULL COMMENT '学费',
  `wanchengrenshu` int(11) DEFAULT NULL COMMENT '完成人数',
  `yuefen` date DEFAULT NULL COMMENT '月份',
  `kechengtupian` varchar(200) DEFAULT NULL COMMENT '课程图片',
  `jiaolianbianhao` varchar(200) DEFAULT NULL COMMENT '教练编号',
  `jiaolianxingming` varchar(200) DEFAULT NULL COMMENT '教练姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='月结算统计';

/*Data for the table `yuejiesuantongji` */

insert  into `yuejiesuantongji`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`keshi`,`xuefei`,`wanchengrenshu`,`yuefen`,`kechengtupian`,`jiaolianbianhao`,`jiaolianxingming`,`userid`) values (91,'2021-05-26 20:55:04','课程名称1','课程类型1','课时1',1,1,'2021-05-26','http://localhost:8080/ssm45k9p/upload/yuejiesuantongji_kechengtupian1.jpg','教练编号1','教练姓名1',1);
insert  into `yuejiesuantongji`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`keshi`,`xuefei`,`wanchengrenshu`,`yuefen`,`kechengtupian`,`jiaolianbianhao`,`jiaolianxingming`,`userid`) values (92,'2021-05-26 20:55:04','课程名称2','课程类型2','课时2',2,2,'2021-05-26','http://localhost:8080/ssm45k9p/upload/yuejiesuantongji_kechengtupian2.jpg','教练编号2','教练姓名2',2);
insert  into `yuejiesuantongji`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`keshi`,`xuefei`,`wanchengrenshu`,`yuefen`,`kechengtupian`,`jiaolianbianhao`,`jiaolianxingming`,`userid`) values (93,'2021-05-26 20:55:04','课程名称3','课程类型3','课时3',3,3,'2021-05-26','http://localhost:8080/ssm45k9p/upload/yuejiesuantongji_kechengtupian3.jpg','教练编号3','教练姓名3',3);
insert  into `yuejiesuantongji`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`keshi`,`xuefei`,`wanchengrenshu`,`yuefen`,`kechengtupian`,`jiaolianbianhao`,`jiaolianxingming`,`userid`) values (94,'2021-05-26 20:55:04','课程名称4','课程类型4','课时4',4,4,'2021-05-26','http://localhost:8080/ssm45k9p/upload/yuejiesuantongji_kechengtupian4.jpg','教练编号4','教练姓名4',4);
insert  into `yuejiesuantongji`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`keshi`,`xuefei`,`wanchengrenshu`,`yuefen`,`kechengtupian`,`jiaolianbianhao`,`jiaolianxingming`,`userid`) values (95,'2021-05-26 20:55:04','课程名称5','课程类型5','课时5',5,5,'2021-05-26','http://localhost:8080/ssm45k9p/upload/yuejiesuantongji_kechengtupian5.jpg','教练编号5','教练姓名5',5);
insert  into `yuejiesuantongji`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`keshi`,`xuefei`,`wanchengrenshu`,`yuefen`,`kechengtupian`,`jiaolianbianhao`,`jiaolianxingming`,`userid`) values (96,'2021-05-26 20:55:04','课程名称6','课程类型6','课时6',6,6,'2021-05-26','http://localhost:8080/ssm45k9p/upload/yuejiesuantongji_kechengtupian6.jpg','教练编号6','教练姓名6',6);

/*Table structure for table `zongjiesuantongji` */

DROP TABLE IF EXISTS `zongjiesuantongji`;

CREATE TABLE `zongjiesuantongji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `keshi` varchar(200) DEFAULT NULL COMMENT '课时',
  `xuefei` int(11) DEFAULT NULL COMMENT '学费',
  `wanchengrenshu` int(11) DEFAULT NULL COMMENT '完成人数',
  `kechengtupian` varchar(200) DEFAULT NULL COMMENT '课程图片',
  `jiaolianbianhao` varchar(200) DEFAULT NULL COMMENT '教练编号',
  `jiaolianxingming` varchar(200) DEFAULT NULL COMMENT '教练姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='总结算统计';

/*Data for the table `zongjiesuantongji` */

insert  into `zongjiesuantongji`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`keshi`,`xuefei`,`wanchengrenshu`,`kechengtupian`,`jiaolianbianhao`,`jiaolianxingming`,`userid`) values (81,'2021-05-26 20:55:04','课程名称1','课程类型1','课时1',1,1,'http://localhost:8080/ssm45k9p/upload/zongjiesuantongji_kechengtupian1.jpg','教练编号1','教练姓名1',1);
insert  into `zongjiesuantongji`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`keshi`,`xuefei`,`wanchengrenshu`,`kechengtupian`,`jiaolianbianhao`,`jiaolianxingming`,`userid`) values (82,'2021-05-26 20:55:04','课程名称2','课程类型2','课时2',2,2,'http://localhost:8080/ssm45k9p/upload/zongjiesuantongji_kechengtupian2.jpg','教练编号2','教练姓名2',2);
insert  into `zongjiesuantongji`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`keshi`,`xuefei`,`wanchengrenshu`,`kechengtupian`,`jiaolianbianhao`,`jiaolianxingming`,`userid`) values (83,'2021-05-26 20:55:04','课程名称3','课程类型3','课时3',3,3,'http://localhost:8080/ssm45k9p/upload/zongjiesuantongji_kechengtupian3.jpg','教练编号3','教练姓名3',3);
insert  into `zongjiesuantongji`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`keshi`,`xuefei`,`wanchengrenshu`,`kechengtupian`,`jiaolianbianhao`,`jiaolianxingming`,`userid`) values (84,'2021-05-26 20:55:04','课程名称4','课程类型4','课时4',4,4,'http://localhost:8080/ssm45k9p/upload/zongjiesuantongji_kechengtupian4.jpg','教练编号4','教练姓名4',4);
insert  into `zongjiesuantongji`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`keshi`,`xuefei`,`wanchengrenshu`,`kechengtupian`,`jiaolianbianhao`,`jiaolianxingming`,`userid`) values (85,'2021-05-26 20:55:04','课程名称5','课程类型5','课时5',5,5,'http://localhost:8080/ssm45k9p/upload/zongjiesuantongji_kechengtupian5.jpg','教练编号5','教练姓名5',5);
insert  into `zongjiesuantongji`(`id`,`addtime`,`kechengmingcheng`,`kechengleixing`,`keshi`,`xuefei`,`wanchengrenshu`,`kechengtupian`,`jiaolianbianhao`,`jiaolianxingming`,`userid`) values (86,'2021-05-26 20:55:04','课程名称6','课程类型6','课时6',6,6,'http://localhost:8080/ssm45k9p/upload/zongjiesuantongji_kechengtupian6.jpg','教练编号6','教练姓名6',6);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
