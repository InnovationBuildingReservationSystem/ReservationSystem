-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: reservationsystem
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `administrator`
--

DROP TABLE IF EXISTS `administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
/*管理员表*/
CREATE TABLE `administrator` (
  `aid` varchar(50) NOT NULL, /*管理员id*/
  `apwd` varchar(50) NOT NULL, /*管理员密码*/
  `arole` int(11) NOT NULL DEFAULT '1', /*用户角色（管理员为1）*/
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator`
--

LOCK TABLES `administrator` WRITE;
/*!40000 ALTER TABLE `administrator` DISABLE KEYS */;
/*!40000 ALTER TABLE `administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classroom`
--

DROP TABLE IF EXISTS `classroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
/*教室表*/
CREATE TABLE `classroom` (
  `cid` varchar(50) NOT NULL, /*教室号*/
  `cnum` int(11) NOT NULL, /*教室人数容量*/
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classroom`
--

LOCK TABLES `classroom` WRITE;
/*!40000 ALTER TABLE `classroom` DISABLE KEYS */;
/*!40000 ALTER TABLE `classroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordercr`
--

DROP TABLE IF EXISTS `ordercr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
/*教室预订表*/
CREATE TABLE `ordercr` (
  `orderid` int(11) NOT NULL AUTO_INCREMENT, /*预订单号*/
  `cid` varchar(50) NOT NULL, /*教室号*/
  `starttime` varchar(50) NOT NULL, /*使用开始时间*/
  `endtime` varchar(50) NOT NULL, /*使用结束时间*/
  `theme` varchar(50) NOT NULL, /*活动主题*/
  `snum` varchar(50) NOT NULL, /*申请人学号*/
  `faculty` varchar(50) NOT NULL, /*活动组织学院*/
  `groupname` varchar(50) NOT NULL, /*活动团体名称*/
  `teacher` varchar(50) NOT NULL, /*指导教师姓名*/
  `stelephone` varchar(50) NOT NULL, /*申请人联系电话*/
  `attendcount` int(11) NOT NULL, /*参加人数*/
  `orderstatus` int(11) NOT NULL, /*订单状态：0-申请中，1-同意，2-拒绝，3-撤销，4-已使用*/
  `createtime` varchar(50) NOT NULL, /*订单创建时间*/
  PRIMARY KEY (`orderid`),
  KEY `FK_1_idx` (`cid`),
  KEY `FK_2_idx` (`snum`),
  CONSTRAINT `FK_1` FOREIGN KEY (`cid`) REFERENCES `classroom` (`cid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_2` FOREIGN KEY (`snum`) REFERENCES `student` (`snum`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordercr`
--

LOCK TABLES `ordercr` WRITE;
/*!40000 ALTER TABLE `ordercr` DISABLE KEYS */;
/*!40000 ALTER TABLE `ordercr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
/*公告表*/
CREATE TABLE `notice` (
  `nid` int(11) NOT NULL AUTO_INCREMENT, /*公告id*/
  `ntitle` varchar(50) NOT NULL, /*标题*/
  `ncontent` varchar(50) NOT NULL, /*内容*/
  `ntime` varchar(50) NOT NULL, /*发布时间*/
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
/*学生表*/
CREATE TABLE `student` (
  `snum` varchar(50) NOT NULL, /*学号*/
  `sname` varchar(50) NOT NULL, /*姓名*/
  `sid` varchar(50) NOT NULL, /*身份证号码*/
  `sfaculty` varchar(50) NOT NULL, /*学院*/
  `smajor` varchar(50) NOT NULL, /*专业*/
  `sclass` varchar(50) NOT NULL, /*班级*/
  `stelphone` varchar(50) NOT NULL, /*手机号*/
  `spwd` varchar(50) NOT NULL, /*密码*/
  `sstatus` int(11) NOT NULL DEFAULT '0', /*激活状态：0-未激活，1-已激活*/
  `srole` int(11) NOT NULL DEFAULT '0', /*用户角色：学生为0*/
  PRIMARY KEY (`snum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'reservationsystem'
--

--
-- Dumping routines for database 'reservationsystem'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-10 20:36:12
