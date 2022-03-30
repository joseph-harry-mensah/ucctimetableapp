-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: localhost    Database: osisauth
-- ------------------------------------------------------
-- Server version	8.0.28-0ubuntu0.20.04.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userid` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `staff_no` varchar(10) DEFAULT NULL,
  `verified` tinyint(1) DEFAULT NULL,
  `username` varchar(20) NOT NULL DEFAULT '0',
  `password` varchar(50) NOT NULL DEFAULT '',
  `type` varchar(4) NOT NULL DEFAULT 'STAF',
  `roleid` int(2) unsigned zerofill NOT NULL DEFAULT '00',
  `status` varchar(8) NOT NULL DEFAULT 'Active',
  `fname` varchar(50) NOT NULL DEFAULT '',
  `lname` varchar(50) NOT NULL DEFAULT '',
  `email_old` varchar(100) DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `deptid` int DEFAULT '0',
  `facultyid` int DEFAULT '0',
  `cellphone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `status_id` int DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `pwd_expiry` int NOT NULL DEFAULT '1',
  `pwd_expiry_time` int NOT NULL DEFAULT '50',
  `login_count` int NOT NULL DEFAULT '0',
  `reset_code` varchar(6) DEFAULT NULL,
  `reset_req_date` date DEFAULT NULL,
  `comment` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`userid`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE,
  UNIQUE KEY `staff_no` (`staff_no`) USING BTREE,
  KEY `roleid` (`roleid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1 COMMENT='Users and access privilages';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (0000000001,'12345',1,'username1','secret','STAF',04,'Active','FIRSTNAME1','LASTNAME1','','LECTURER1',4005,4000,'123456789','somethung@gmail.com',1,'2022-01-01 00:00:00',1,1,1,'1','2022-01-01','1\r'),(0000000002,'12346',1,'username2','e10adc3949ba59abbe56e057f20f883e','STAF',04,'Active','FIRSTNAME2','LASTNAME2','','LECTURER2',4001,4000,'123456789','somethung@gmail.com',1,'2022-01-02 00:00:00',1,1,1,'1','2022-01-02','1\r'),(0000000003,'12347',1,'username3','e10adc3949ba59abbe56e057f20f883e','STAF',04,'Active','FIRSTNAME3','LASTNAME3','','LECTURER3',4500,9000,'123456789','somethung@gmail.com',1,'2022-01-03 00:00:00',1,1,1,'1','2022-01-03','1\r'),(0000000004,'12348',1,'username4','e10adc3949ba59abbe56e057f20f883e','STAF',04,'Active','FIRSTNAME4','LASTNAME4','','LECTURER4',4009,4000,'123456789','somethung@gmail.com',1,'2022-01-04 00:00:00',1,1,1,'1','2022-01-04','1\r'),(0000000005,'12349',1,'username5','e10adc3949ba59abbe56e057f20f883e','STAF',04,'Active','FIRSTNAME5','LASTNAME5','','LECTURER5',2003,2000,'123456789','somethung@gmail.com',1,'2022-01-05 00:00:00',1,1,1,'1','2022-01-05','1\r'),(0000000006,'12350',1,'username6','e10adc3949ba59abbe56e057f20f883e','STAF',04,'Active','FIRSTNAME6','LASTNAME6','','LECTURER6',2001,2000,'123456789','somethung@gmail.com',1,'2022-01-06 00:00:00',1,1,1,'1','2022-01-06','1\r'),(0000000007,'12351',1,'username7','e10adc3949ba59abbe56e057f20f883e','STAF',04,'Active','FIRSTNAME7','LASTNAME7','','LECTURER7',2001,2000,'123456789','somethung@gmail.com',1,'2022-01-07 00:00:00',1,1,1,'1','2022-01-07','1\r'),(0000000008,'12352',1,'username8','e10adc3949ba59abbe56e057f20f883e','STAF',04,'Active','FIRSTNAME8','LASTNAME8','','LECTURER8',4003,4000,'123456789','somethung@gmail.com',1,'2022-01-08 00:00:00',1,1,1,'1','2022-01-08','1\r'),(0000000009,'12353',1,'username9','e10adc3949ba59abbe56e057f20f883e','STAF',04,'Active','FIRSTNAME9','LASTNAME9','','LECTURER9',4004,4000,'123456789','somethung@gmail.com',1,'2022-01-09 00:00:00',1,1,1,'1','2022-01-09','1\r'),(0000000010,'12354',1,'username10','e10adc3949ba59abbe56e057f20f883e','STAF',04,'Active','FIRSTNAME10','LASTNAME10','','LECTURER10',8005,5000,'123456789','somethung@gmail.com',1,'2022-01-10 00:00:00',1,1,1,'1','2022-01-10','1\r'),(0000000011,'12355',1,'username11','e10adc3949ba59abbe56e057f20f883e','STAF',04,'Active','FIRSTNAME11','LASTNAME11','','LECTURER11',3402,3400,'123456789','somethung@gmail.com',1,'2022-01-11 00:00:00',1,1,1,'1','2022-01-11','1\r'),(0000000012,'12356',1,'username12','e10adc3949ba59abbe56e057f20f883e','STAF',04,'Active','FIRSTNAME12','LASTNAME12','','LECTURER12',4005,9000,'123456789','somethung@gmail.com',1,'2022-01-12 00:00:00',1,1,1,'1','2022-01-12','1\r'),(0000000013,'12357',1,'username13','e10adc3949ba59abbe56e057f20f883e','STAF',04,'Active','FIRSTNAME13','LASTNAME13','','LECTURER13',1001,1000,'123456789','somethung@gmail.com',1,'2022-01-13 00:00:00',1,1,1,'1','2022-01-13','1\r'),(0000000014,'12358',1,'username14','e10adc3949ba59abbe56e057f20f883e','STAF',04,'Active','FIRSTNAME14','LASTNAME14','','LECTURER14',8007,8000,'123456789','somethung@gmail.com',1,'2022-01-14 00:00:00',1,1,1,'1','2022-01-14','1\r'),(0000000015,'12359',1,'username15','e10adc3949ba59abbe56e057f20f883e','STAF',04,'Active','FIRSTNAME15','LASTNAME15','','LECTURER15',5006,5000,'123456789','somethung@gmail.com',1,'2022-01-15 00:00:00',1,1,1,'1','2022-01-15','1\r'),(0000000016,'12360',1,'username16','e10adc3949ba59abbe56e057f20f883e','STAF',04,'Active','FIRSTNAME16','LASTNAME16','','LECTURER16',5009,5000,'123456789','somethung@gmail.com',1,'2022-01-16 00:00:00',1,1,1,'1','2022-01-16','1\r'),(0000000017,'12361',1,'username17','e10adc3949ba59abbe56e057f20f883e','STAF',04,'Active','FIRSTNAME17','LASTNAME17','','LECTURER17',1003,1000,'123456789','somethung@gmail.com',1,'2022-01-17 00:00:00',1,1,1,'1','2022-01-17','1\r'),(0000000018,'12362',1,'username18','e10adc3949ba59abbe56e057f20f883e','STAF',04,'Active','FIRSTNAME18','LASTNAME18','','LECTURER18',1003,1000,'123456789','somethung@gmail.com',1,'2022-01-18 00:00:00',1,1,1,'1','2022-01-18','1\r'),(0000000019,'12363',1,'username19','e10adc3949ba59abbe56e057f20f883e','STAF',04,'Active','FIRSTNAME19','LASTNAME19','','LECTURER19',1003,1000,'123456789','somethung@gmail.com',1,'2022-01-19 00:00:00',1,1,1,'1','2022-01-19','1\r'),(0000000020,'12364',1,'username20','e10adc3949ba59abbe56e057f20f883e','STAF',04,'Active','FIRSTNAME20','LASTNAME20','','LECTURER20',5002,5000,'123456789','somethung@gmail.com',1,'2022-01-20 00:00:00',1,1,1,'1','2022-01-20','1\r'),(0000000021,'12365',1,'username21','e10adc3949ba59abbe56e057f20f883e','STAF',04,'Active','FIRSTNAME21','LASTNAME21','','LECTURER21',4500,9000,'123456789','somethung@gmail.com',1,'2022-01-21 00:00:00',1,1,1,'1','2022-01-21','1\r'),(0000000022,'12366',1,'username22','e10adc3949ba59abbe56e057f20f883e','STAF',04,'Active','FIRSTNAME22','LASTNAME22','','LECTURER22',4600,9000,'123456789','somethung@gmail.com',1,'2022-01-22 00:00:00',1,1,1,'1','2022-01-22','1\r'),(0000000023,'12367',1,'username23','e10adc3949ba59abbe56e057f20f883e','STAF',04,'Active','FIRSTNAME23','LASTNAME23','','LECTURER23',4002,4000,'123456789','somethung@gmail.com',1,'2022-01-23 00:00:00',1,1,1,'1','2022-01-23','1\r'),(0000000024,'12368',1,'username24','e10adc3949ba59abbe56e057f20f883e','STAF',04,'Active','FIRSTNAME24','LASTNAME24','','LECTURER24',4500,9000,'123456789','somethung@gmail.com',1,'2022-01-24 00:00:00',1,1,1,'1','2022-01-24','1\r'),(0000000025,'12369',1,'username25','e10adc3949ba59abbe56e057f20f883e','STAF',04,'Active','FIRSTNAME25','LASTNAME25','','LECTURER25',4002,4000,'123456789','somethung@gmail.com',1,'2022-01-25 00:00:00',1,1,1,'1','2022-01-25','1\r'),(0000000026,'12370',1,'username26','e10adc3949ba59abbe56e057f20f883e','STAF',04,'Active','FIRSTNAME26','LASTNAME26','','LECTURER26',4002,4000,'123456789','somethung@gmail.com',1,'2022-01-26 00:00:00',1,1,1,'1','2022-01-26','1\r'),(0000000027,'12371',1,'username27','e10adc3949ba59abbe56e057f20f883e','STAF',04,'Active','FIRSTNAME27','LASTNAME27','','LECTURER27',4001,4000,'123456789','somethung@gmail.com',1,'2022-01-27 00:00:00',1,1,1,'1','2022-01-27','1\r'),(0000000028,'12372',1,'username28','e10adc3949ba59abbe56e057f20f883e','STAF',04,'Active','FIRSTNAME28','LASTNAME28','','LECTURER28',5001,5000,'123456789','somethung@gmail.com',1,'2022-01-28 00:00:00',1,1,1,'1','2022-01-28','1\r'),(0000000029,'12373',1,'username29','e10adc3949ba59abbe56e057f20f883e','STAF',04,'Active','FIRSTNAME29','LASTNAME29','','LECTURER29',8004,8000,'123456789','somethung@gmail.com',1,'2022-01-29 00:00:00',1,1,1,'1','2022-01-29','1\r'),(0000000030,'12374',1,'username30','e10adc3949ba59abbe56e057f20f883e','STAF',04,'Active','FIRSTNAME30','LASTNAME30','','LECTURER30',5003,5000,'123456789','somethung@gmail.com',1,'2022-01-30 00:00:00',1,1,1,'1','2022-01-30','1\r'),(0000000031,'12375',1,'username31','e10adc3949ba59abbe56e057f20f883e','STAF',04,'Active','FIRSTNAME31','LASTNAME31','','LECTURER31',5007,5000,'123456789','somethung@gmail.com',1,'2022-01-31 00:00:00',1,1,1,'1','2022-01-31','1');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-30 10:49:30
