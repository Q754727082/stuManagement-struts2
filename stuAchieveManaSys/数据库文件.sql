/*
SQLyog Ultimate v11.27 (32 bit)
MySQL - 5.5.23 : Database - db_project
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_project` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `db_project`;

/*Table structure for table `course` */

DROP TABLE IF EXISTS `course`;

CREATE TABLE `course` (
  `courseName` varchar(30) DEFAULT NULL,
  `teacher` varchar(30) DEFAULT NULL,
  `courseTime` varchar(30) DEFAULT NULL,
  `courseNO` varchar(30) DEFAULT NULL,
  `credit` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `course` */

insert  into `course`(`courseName`,`teacher`,`courseTime`,`courseNO`,`credit`) values ('软件工程导论','小亮','16周','1001','2'),('操作系统','小甘','17周','1002','4'),('服务工程','小红','16周','1003','2'),('jquery程序设计','小克','16周','1004','4'),('struts2框架','小英','17周','1005','4'),('瑜伽','小翠','16周','1006','2'),('马原','小周','14周','1007','1'),('毛概','小张','16周','1008','2'),('学习心理学','小超','18周','1009','4'),('强迫症治疗与预防','小超','16周','1010','4'),('王阳明心学','小欧','18周','1011','4'),('教育心理学','小华','17周','1012','3'),('理论法学','小李','16周','1013','4'),('法哲学','小马','16周','1014','3'),('大学英语','小龙人','16周','1015','2'),('高等数学','小辉辉','16周','1016','4'),('法律逻辑学','小锐锐','16周','1017','3'),('线性代数','小兰','18周','1018','2');

/*Table structure for table `grade` */

DROP TABLE IF EXISTS `grade`;

CREATE TABLE `grade` (
  `id` int(10) DEFAULT NULL,
  `stuName` varchar(20) NOT NULL,
  `math` int(10) DEFAULT NULL,
  `chinese` int(10) DEFAULT NULL,
  `english` int(10) DEFAULT NULL,
  `physics` int(10) DEFAULT NULL,
  `biology` int(10) DEFAULT NULL,
  `chemistry` int(10) DEFAULT NULL,
  PRIMARY KEY (`stuName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `grade` */

insert  into `grade`(`id`,`stuName`,`math`,`chinese`,`english`,`physics`,`biology`,`chemistry`) values (78,'地方撒角度考虑附近',155,66,88,44,55,66),(29,'小庄',150,100,100,60,10,25),(29,'小欧',150,150,150,110,90,100),(29,'小聂',100,150,130,60,80,70),(29,'小超',150,150,150,110,90,100),(23,'小辉',100,90,80,100,80,90),(23,'小辉辉',120,130,150,90,80,100),(15,'此傲龙',10,23,3,1,1,5),(18,'龙傲天',100,50,35,65,55,44);

/*Table structure for table `stucourse` */

DROP TABLE IF EXISTS `stucourse`;

CREATE TABLE `stucourse` (
  `courseName` varchar(30) DEFAULT NULL,
  `teacher` varchar(30) DEFAULT NULL,
  `courerTime` varchar(30) DEFAULT NULL,
  `courseNO` varchar(30) DEFAULT NULL,
  `credit` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `stucourse` */

insert  into `stucourse`(`courseName`,`teacher`,`courerTime`,`courseNO`,`credit`) values ('服务工程','小红','16周','1003','2'),('struts2框架','小英','17周','1005','4'),('学习心理学','小超','18周','1009','4'),('强迫症治疗与预防','小超','16周','1010','4'),('线性代数','小兰','18周','1018','2'),('大学英语','小龙人','16周','1015','2'),('瑜伽','小翠','16周','1006','2'),('学习心理学','小超','18周','1009','4'),('王阳明心学','小欧','18周','1011','4');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` char(20) DEFAULT NULL,
  `password` char(20) DEFAULT NULL,
  `phone` char(30) DEFAULT NULL,
  `email` char(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`name`,`password`,`phone`,`email`) values (1,'小超','123456','1324564654','754727082@qq.com'),(2,'大超','123456','1231565','1231456@qq.com'),(3,'小彬','123456','12345646','1234156@qq.com'),(4,'大彬','123456','1321654','2131456@qq.com'),(5,'劳广宙','123456','13654451556','5615665@qq.com'),(6,'劳广宙','123456','12345646','321645321@qq.com'),(7,'萨瓦迪卡','123456','1324554656','13456461@qq.com'),(8,'12312','123','2132','12331'),(9,'2132','23123','123123','1212312'),(10,'4564','56456','456456','465465'),(11,'','','',''),(12,'123','123','125','55'),(13,'和第三方','123456','2345','13265'),(14,'fg','fdg','fg','fdg'),(15,'','','',''),(16,'','','',''),(17,'地方撒','123456','14545612','5641564@qq.com'),(18,'dfg','dfg','dfg','dfghgh'),(19,'小红','123456','13456456','1234654654@qq.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
