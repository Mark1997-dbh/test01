/*
SQLyog Ultimate v12.2.6 (64 bit)
MySQL - 5.5.40 : Database - problem
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`problem` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `problem`;

/*Table structure for table `classes` */

DROP TABLE IF EXISTS `classes`;

CREATE TABLE `classes` (
  `id` int(50) NOT NULL AUTO_INCREMENT COMMENT '类别编号',
  `cname` varchar(50) NOT NULL COMMENT '类别名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `classes` */

insert  into `classes`(`id`,`cname`) values 
(1,'PHP'),
(2,'JavaScript'),
(3,'Java');

/*Table structure for table `faqs` */

DROP TABLE IF EXISTS `faqs`;

CREATE TABLE `faqs` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT COMMENT '问题编号',
  `classid` int(50) NOT NULL COMMENT '类别编号',
  `title` varchar(50) NOT NULL COMMENT '标题',
  `content` varchar(50) NOT NULL COMMENT '内容',
  `createdate` datetime DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `faqs` */

insert  into `faqs`(`id`,`classid`,`title`,`content`,`createdate`) values 
(1,1,'PHP介绍','PHP是个啥？？？？','2020-06-22 00:00:00'),
(2,3,'Java的配置环境','配置环境详细步骤','2020-06-22 00:00:00'),
(3,2,'JavaScript表达','JavaScript？？？？？','2020-06-22 00:00:00'),
(4,2,'JavaScript框架有哪些','第一框架，第二框架...','2020-06-22 00:00:00'),
(5,3,'Java的框架','spring框架','2020-06-22 00:00:00'),
(6,1,'cddd','dddd','2020-06-22 18:10:01'),
(7,2,'ddddd','ddddd','2020-06-22 18:10:20');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
