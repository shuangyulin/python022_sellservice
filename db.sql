-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: django66uvg
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `django66uvg`
--

/*!40000 DROP DATABASE IF EXISTS `django66uvg`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `django66uvg` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `django66uvg`;

--
-- Table structure for table `cheliangxinxi`
--

DROP TABLE IF EXISTS `cheliangxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cheliangxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cheliangmingcheng` varchar(200) DEFAULT NULL COMMENT '车辆名称',
  `chepaihaoma` varchar(200) DEFAULT NULL COMMENT '车牌号码',
  `cheliangpinpai` varchar(200) DEFAULT NULL COMMENT '车辆品牌',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `yanse` varchar(200) DEFAULT NULL COMMENT '颜色',
  `goumaishijian` date DEFAULT NULL COMMENT '购买时间',
  `paifangliang` varchar(200) DEFAULT NULL COMMENT '排放量',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1651063413724 DEFAULT CHARSET=utf8 COMMENT='车辆信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cheliangxinxi`
--

LOCK TABLES `cheliangxinxi` WRITE;
/*!40000 ALTER TABLE `cheliangxinxi` DISABLE KEYS */;
INSERT INTO `cheliangxinxi` VALUES (31,'2022-04-27 12:40:27','车辆名称1','车牌号码1','车辆品牌1','upload/cheliangxinxi_tupian1.jpg','颜色1','2022-04-27','排放量1','价格1','用户账号1','用户姓名1','手机1'),(32,'2022-04-27 12:40:27','车辆名称2','车牌号码2','车辆品牌2','upload/cheliangxinxi_tupian2.jpg','颜色2','2022-04-27','排放量2','价格2','用户账号2','用户姓名2','手机2'),(33,'2022-04-27 12:40:27','车辆名称3','车牌号码3','车辆品牌3','upload/cheliangxinxi_tupian3.jpg','颜色3','2022-04-27','排放量3','价格3','用户账号3','用户姓名3','手机3'),(34,'2022-04-27 12:40:27','车辆名称4','车牌号码4','车辆品牌4','upload/cheliangxinxi_tupian4.jpg','颜色4','2022-04-27','排放量4','价格4','用户账号4','用户姓名4','手机4'),(35,'2022-04-27 12:40:27','车辆名称5','车牌号码5','车辆品牌5','upload/cheliangxinxi_tupian5.jpg','颜色5','2022-04-27','排放量5','价格5','用户账号5','用户姓名5','手机5'),(36,'2022-04-27 12:40:27','车辆名称6','车牌号码6','车辆品牌6','upload/cheliangxinxi_tupian6.jpg','颜色6','2022-04-27','排放量6','价格6','用户账号6','用户姓名6','手机6'),(1651063413723,'2022-04-27 12:43:33','雷凌','江S2122','本田','upload/1651063391999.png','白色','2021-02-09','180','150000','111','杨洋','13525252525');
/*!40000 ALTER TABLE `cheliangxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shouhouanpai`
--

DROP TABLE IF EXISTS `shouhouanpai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shouhouanpai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cheliangmingcheng` varchar(200) DEFAULT NULL COMMENT '车辆名称',
  `chepaihaoma` varchar(200) DEFAULT NULL COMMENT '车牌号码',
  `cheliangpinpai` varchar(200) DEFAULT NULL COMMENT '车辆品牌',
  `paifangliang` varchar(200) DEFAULT NULL COMMENT '排放量',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `yuyueriqi` date DEFAULT NULL COMMENT '预约日期',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `fuwuxiangmu` varchar(200) DEFAULT NULL COMMENT '服务项目',
  `fuwujiage` float DEFAULT NULL COMMENT '服务价格',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1651063515352 DEFAULT CHARSET=utf8 COMMENT='售后安排';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shouhouanpai`
--

LOCK TABLES `shouhouanpai` WRITE;
/*!40000 ALTER TABLE `shouhouanpai` DISABLE KEYS */;
INSERT INTO `shouhouanpai` VALUES (51,'2022-04-27 12:40:27','车辆名称1','车牌号码1','车辆品牌1','排放量1','用户账号1','用户姓名1','手机1','2022-04-27','员工工号1','员工姓名1','服务项目1',1,1,1),(52,'2022-04-27 12:40:27','车辆名称2','车牌号码2','车辆品牌2','排放量2','用户账号2','用户姓名2','手机2','2022-04-27','员工工号2','员工姓名2','服务项目2',2,2,2),(53,'2022-04-27 12:40:27','车辆名称3','车牌号码3','车辆品牌3','排放量3','用户账号3','用户姓名3','手机3','2022-04-27','员工工号3','员工姓名3','服务项目3',3,3,3),(54,'2022-04-27 12:40:27','车辆名称4','车牌号码4','车辆品牌4','排放量4','用户账号4','用户姓名4','手机4','2022-04-27','员工工号4','员工姓名4','服务项目4',4,4,4),(55,'2022-04-27 12:40:27','车辆名称5','车牌号码5','车辆品牌5','排放量5','用户账号5','用户姓名5','手机5','2022-04-27','员工工号5','员工姓名5','服务项目5',5,5,5),(56,'2022-04-27 12:40:27','车辆名称6','车牌号码6','车辆品牌6','排放量6','用户账号6','用户姓名6','手机6','2022-04-27','员工工号6','员工姓名6','服务项目6',6,6,6),(1651063515351,'2022-04-27 12:45:15','雷凌','江S2122','本田','180','111','杨洋','13525252525','2022-04-27','222','刘平','汽车保养',300,1,1651063425935);
/*!40000 ALTER TABLE `shouhouanpai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shouhoufuwu`
--

DROP TABLE IF EXISTS `shouhoufuwu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shouhoufuwu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cheliangmingcheng` varchar(200) DEFAULT NULL COMMENT '车辆名称',
  `chepaihaoma` varchar(200) DEFAULT NULL COMMENT '车牌号码',
  `cheliangpinpai` varchar(200) DEFAULT NULL COMMENT '车辆品牌',
  `paifangliang` varchar(200) DEFAULT NULL COMMENT '排放量',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `yuyueriqi` date DEFAULT NULL COMMENT '预约日期',
  `fuwuxiangmu` varchar(200) DEFAULT NULL COMMENT '服务项目',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1651063425936 DEFAULT CHARSET=utf8 COMMENT='售后服务';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shouhoufuwu`
--

LOCK TABLES `shouhoufuwu` WRITE;
/*!40000 ALTER TABLE `shouhoufuwu` DISABLE KEYS */;
INSERT INTO `shouhoufuwu` VALUES (41,'2022-04-27 12:40:27','车辆名称1','车牌号码1','车辆品牌1','排放量1','用户账号1','用户姓名1','手机1','2022-04-27','服务项目1','是',''),(42,'2022-04-27 12:40:27','车辆名称2','车牌号码2','车辆品牌2','排放量2','用户账号2','用户姓名2','手机2','2022-04-27','服务项目2','是',''),(43,'2022-04-27 12:40:27','车辆名称3','车牌号码3','车辆品牌3','排放量3','用户账号3','用户姓名3','手机3','2022-04-27','服务项目3','是',''),(44,'2022-04-27 12:40:27','车辆名称4','车牌号码4','车辆品牌4','排放量4','用户账号4','用户姓名4','手机4','2022-04-27','服务项目4','是',''),(45,'2022-04-27 12:40:27','车辆名称5','车牌号码5','车辆品牌5','排放量5','用户账号5','用户姓名5','手机5','2022-04-27','服务项目5','是',''),(46,'2022-04-27 12:40:27','车辆名称6','车牌号码6','车辆品牌6','排放量6','用户账号6','用户姓名6','手机6','2022-04-27','服务项目6','是',''),(1651063425935,'2022-04-27 12:43:45','雷凌','江S2122','本田','180','111','杨洋','13525252525','2022-04-27','汽车保养','是','收到用户预约保养信息，安排人员售后');
/*!40000 ALTER TABLE `shouhoufuwu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-04-27 12:40:27');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wanchengshouhou`
--

DROP TABLE IF EXISTS `wanchengshouhou`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wanchengshouhou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cheliangmingcheng` varchar(200) DEFAULT NULL COMMENT '车辆名称',
  `chepaihaoma` varchar(200) DEFAULT NULL COMMENT '车牌号码',
  `cheliangpinpai` varchar(200) DEFAULT NULL COMMENT '车辆品牌',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `fuwuxiangmu` varchar(200) DEFAULT NULL COMMENT '服务项目',
  `fuwujiage` varchar(200) DEFAULT NULL COMMENT '服务价格',
  `fuwujieguo` longtext COMMENT '服务结果',
  `baogaofujian` varchar(200) DEFAULT NULL COMMENT '报告附件',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1651063565610 DEFAULT CHARSET=utf8 COMMENT='完成售后';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wanchengshouhou`
--

LOCK TABLES `wanchengshouhou` WRITE;
/*!40000 ALTER TABLE `wanchengshouhou` DISABLE KEYS */;
INSERT INTO `wanchengshouhou` VALUES (61,'2022-04-27 12:40:27','车辆名称1','车牌号码1','车辆品牌1','用户账号1','用户姓名1','手机1','员工工号1','员工姓名1','服务项目1','服务价格1','服务结果1','',1,1,'未支付'),(62,'2022-04-27 12:40:27','车辆名称2','车牌号码2','车辆品牌2','用户账号2','用户姓名2','手机2','员工工号2','员工姓名2','服务项目2','服务价格2','服务结果2','',2,2,'未支付'),(63,'2022-04-27 12:40:27','车辆名称3','车牌号码3','车辆品牌3','用户账号3','用户姓名3','手机3','员工工号3','员工姓名3','服务项目3','服务价格3','服务结果3','',3,3,'未支付'),(64,'2022-04-27 12:40:27','车辆名称4','车牌号码4','车辆品牌4','用户账号4','用户姓名4','手机4','员工工号4','员工姓名4','服务项目4','服务价格4','服务结果4','',4,4,'未支付'),(65,'2022-04-27 12:40:27','车辆名称5','车牌号码5','车辆品牌5','用户账号5','用户姓名5','手机5','员工工号5','员工姓名5','服务项目5','服务价格5','服务结果5','',5,5,'未支付'),(66,'2022-04-27 12:40:27','车辆名称6','车牌号码6','车辆品牌6','用户账号6','用户姓名6','手机6','员工工号6','员工姓名6','服务项目6','服务价格6','服务结果6','',6,6,'未支付'),(1651063565609,'2022-04-27 12:46:05','雷凌','江S2122','本田','111','杨洋','13525252525','222','刘平','汽车保养','300','员工收到指令，进行服务工作，完成提交报告单','upload/1651063542889.png',11,1651063515351,'已支付');
/*!40000 ALTER TABLE `wanchengshouhou` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1651063347396 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (21,'2022-04-27 12:40:27','用户账号1','123456','用户姓名1','upload/yonghu_touxiang1.jpg','男',1,'13823888881','773890001@qq.com'),(22,'2022-04-27 12:40:27','用户账号2','123456','用户姓名2','upload/yonghu_touxiang2.jpg','男',2,'13823888882','773890002@qq.com'),(23,'2022-04-27 12:40:27','用户账号3','123456','用户姓名3','upload/yonghu_touxiang3.jpg','男',3,'13823888883','773890003@qq.com'),(24,'2022-04-27 12:40:27','用户账号4','123456','用户姓名4','upload/yonghu_touxiang4.jpg','男',4,'13823888884','773890004@qq.com'),(25,'2022-04-27 12:40:27','用户账号5','123456','用户姓名5','upload/yonghu_touxiang5.jpg','男',5,'13823888885','773890005@qq.com'),(26,'2022-04-27 12:40:27','用户账号6','123456','用户姓名6','upload/yonghu_touxiang6.jpg','男',6,'13823888886','773890006@qq.com'),(1651063347395,'2022-04-27 12:42:27','111','111','杨洋','upload/1651063357604.png','男',21,'13525252525','2525@qq.com');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuangong`
--

DROP TABLE IF EXISTS `yuangong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuangong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) NOT NULL COMMENT '员工工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yuangongxingming` varchar(200) NOT NULL COMMENT '员工姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuangonggonghao` (`yuangonggonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='员工';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuangong`
--

LOCK TABLES `yuangong` WRITE;
/*!40000 ALTER TABLE `yuangong` DISABLE KEYS */;
INSERT INTO `yuangong` VALUES (11,'2022-04-27 12:40:27','222','222','刘平','upload/yuangong_touxiang1.jpg','男',22,'13823888881','773890001@qq.com'),(12,'2022-04-27 12:40:27','员工工号2','123456','员工姓名2','upload/yuangong_touxiang2.jpg','男',2,'13823888882','773890002@qq.com'),(13,'2022-04-27 12:40:27','员工工号3','123456','员工姓名3','upload/yuangong_touxiang3.jpg','男',3,'13823888883','773890003@qq.com'),(14,'2022-04-27 12:40:27','员工工号4','123456','员工姓名4','upload/yuangong_touxiang4.jpg','男',4,'13823888884','773890004@qq.com'),(15,'2022-04-27 12:40:27','员工工号5','123456','员工姓名5','upload/yuangong_touxiang5.jpg','男',5,'13823888885','773890005@qq.com'),(16,'2022-04-27 12:40:27','员工工号6','123456','员工姓名6','upload/yuangong_touxiang6.jpg','男',6,'13823888886','773890006@qq.com');
/*!40000 ALTER TABLE `yuangong` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-29 15:15:05
