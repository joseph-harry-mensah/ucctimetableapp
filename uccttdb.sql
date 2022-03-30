-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: localhost    Database: uccttdb
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
-- Table structure for table `booked_venues`
--

DROP TABLE IF EXISTS `booked_venues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booked_venues` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `venue_id` smallint DEFAULT NULL,
  `course_id` int(6) unsigned zerofill DEFAULT NULL,
  `duration` tinyint(1) DEFAULT NULL,
  `date_booked` datetime DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `session` int NOT NULL,
  `lecturer_name` varchar(25) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `day` varchar(12) DEFAULT NULL,
  `venue` varchar(255) DEFAULT NULL,
  `slot` varchar(15) DEFAULT NULL,
  `course_code` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booked_venues`
--

LOCK TABLES `booked_venues` WRITE;
/*!40000 ALTER TABLE `booked_venues` DISABLE KEYS */;
INSERT INTO `booked_venues` VALUES (0000000001,277,106210,2,'2022-01-31 00:00:00','12250',20202,'Mr. Elliot Attipoe','MICROBIOLOGY V','TUESDAY','NLT17','09:30-11:30','MLT418AS'),(0000000002,333,106213,1,'2022-01-31 00:00:00','12250',20202,'Mr. Elliot Attipoe','HAEMATOLOGY V PRACTICAL','FRIDAY','SWLT9-19','08:30-9:30','MLT417BS'),(0000000003,24,106213,1,'2022-01-31 00:00:00','12250',20202,'Mr. Elliot Attipoe','HAEMATOLOGY V PRACTICAL','WEDNESDAY','C.A. ACKAH LT5','10:30-11:30','MLT417BS'),(0000000004,11,106208,1,'2022-02-01 00:00:00','12250',20202,'Mr. Elliot Attipoe','CHEMICAL PATHOLOGY III','MONDAY','NLT2','06:30-7:30','MLT416AS'),(0000000005,22,106209,2,'2022-03-23 00:00:00','username1',20202,'FIRSTNAME1 LASTNAME1','CHEMICAL PATHOLOGY III PRACTICAL','TUESDAY','C.A. ACKAH LT3','07:30-9:30','MLT416BS'),(0000000006,20,103704,1,'2022-03-23 00:00:00','username1',20202,'FIRSTNAME1 LASTNAME1','NEGOTIATION TECHNIQUES','TUESDAY','C.A. ACKAH LT1','07:30-8:30','PSB401'),(0000000007,11,106216,1,'2022-03-25 00:00:00','username1',20202,'FIRSTNAME1 LASTNAME1','DRUG METABOLISM AND TOXICOLOGY','MONDAY','NLT2','06:30-7:30','MLT360S'),(0000000008,24,103709,3,'2022-03-25 00:00:00','username1',20202,'FIRSTNAME1 LASTNAME1','FIRST AID, DISASTER MANAGEMENT AND OCCUPATIONAL HAZARDS','MONDAY','C.A. ACKAH LT5','06:30-9:30','PSB409'),(0000000009,20,112616,1,'2022-03-25 00:00:00','username1',20202,'FIRSTNAME1 LASTNAME1','QUR\'ANIC STUDIES','WEDNESDAY','C.A. ACKAH LT1','07:30-8:30','RLH836'),(0000000010,13,106212,1,'2022-03-29 00:00:00','username1',20202,'FIRSTNAME1 LASTNAME1','HAEMATOLOGY V','MONDAY','PHYSICS LAB','12:30-13:30','MLT417AS'),(0000000011,13,106214,2,'2022-03-29 00:00:00','username1',20202,'FIRSTNAME1 LASTNAME1','HISTOPATHOLOGY IV','THURSDAY','PHYSICS LAB','13:20-15:20','MLT419AS');
/*!40000 ALTER TABLE `booked_venues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `day`
--

DROP TABLE IF EXISTS `day`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `day` (
  `day_id` smallint NOT NULL AUTO_INCREMENT,
  `day_code` varchar(3) DEFAULT NULL,
  `day_name` varchar(10) DEFAULT NULL,
  `day_status` smallint DEFAULT NULL,
  PRIMARY KEY (`day_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `day`
--

LOCK TABLES `day` WRITE;
/*!40000 ALTER TABLE `day` DISABLE KEYS */;
INSERT INTO `day` VALUES (1,'MON','MONDAY',1),(2,'TUE','TUESDAY',1),(3,'WED','WEDNESDAY',1),(4,'THU','THURSDAY',1),(5,'FRI','FRIDAY',1),(6,'SAT','SATURDAY',1),(7,'SUN','SUNDAY',1);
/*!40000 ALTER TABLE `day` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `day_time`
--

DROP TABLE IF EXISTS `day_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `day_time` (
  `day_id` smallint DEFAULT NULL,
  `time_id` smallint DEFAULT NULL,
  UNIQUE KEY `day_id` (`day_id`,`time_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `day_time`
--

LOCK TABLES `day_time` WRITE;
/*!40000 ALTER TABLE `day_time` DISABLE KEYS */;
INSERT INTO `day_time` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(2,7),(2,8),(2,9),(2,10),(2,11),(2,12),(2,13),(2,14),(2,15),(3,1),(3,2),(3,3),(3,4),(3,5),(3,6),(3,7),(3,8),(3,9),(3,10),(3,11),(3,12),(3,13),(3,14),(3,15),(4,1),(4,2),(4,3),(4,4),(4,5),(4,6),(4,7),(4,8),(4,9),(4,10),(4,11),(4,12),(4,13),(4,14),(4,15),(5,1),(5,2),(5,3),(5,4),(5,5),(5,6),(5,7),(5,8),(5,9),(5,10),(5,11),(5,12),(5,13),(5,14),(5,15),(6,1),(6,2),(6,3),(6,4),(6,5),(6,6),(6,7),(6,8),(6,9),(6,10),(6,11),(6,12),(6,13),(6,14),(6,15),(7,1),(7,2),(7,3),(7,4),(7,5),(7,6),(7,7),(7,8),(7,9),(7,10),(7,11),(7,12),(7,13),(7,14),(7,15);
/*!40000 ALTER TABLE `day_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `duration`
--

DROP TABLE IF EXISTS `duration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `duration` (
  `duration_id` smallint NOT NULL,
  `duration_name` varchar(12) NOT NULL,
  `duration_value` smallint NOT NULL,
  `duration_status` smallint NOT NULL,
  PRIMARY KEY (`duration_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `duration`
--

LOCK TABLES `duration` WRITE;
/*!40000 ALTER TABLE `duration` DISABLE KEYS */;
INSERT INTO `duration` VALUES (1,'1 CREDIT HR',1,1),(2,'2 CREDIT HRS',2,1),(3,'3 CREDIT HRS',3,1);
/*!40000 ALTER TABLE `duration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `times`
--

DROP TABLE IF EXISTS `times`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `times` (
  `time_id` smallint NOT NULL AUTO_INCREMENT,
  `time_name` varchar(5) NOT NULL,
  `status` smallint NOT NULL,
  PRIMARY KEY (`time_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `times`
--

LOCK TABLES `times` WRITE;
/*!40000 ALTER TABLE `times` DISABLE KEYS */;
INSERT INTO `times` VALUES (1,'06:30',1),(2,'07:30',1),(3,'08:30',1),(4,'09:30',1),(5,'10:30',1),(6,'11:30',1),(7,'12:30',1),(8,'13:20',1),(9,'14:30',1),(10,'15:30',1),(11,'16:30',1),(12,'17:30',1),(13,'18:30',1),(14,'19:30',1),(15,'20:30',1);
/*!40000 ALTER TABLE `times` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venue`
--

DROP TABLE IF EXISTS `venue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venue` (
  `venue_id` int(3) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `venue_code` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `exam_capacity` int DEFAULT NULL,
  `normal_capacity` int DEFAULT NULL,
  `covid_capacity` int DEFAULT NULL,
  `location_id` int DEFAULT NULL,
  `venue_name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT 'NULL',
  `lab` int NOT NULL DEFAULT '0',
  `centre_id` int DEFAULT NULL,
  `venue_status` smallint DEFAULT NULL,
  PRIMARY KEY (`venue_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=353 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venue`
--

LOCK TABLES `venue` WRITE;
/*!40000 ALTER TABLE `venue` DISABLE KEYS */;
INSERT INTO `venue` VALUES (011,'NLT2',120,140,100,2,'New Lecture Theatre Block',0,1,1),(013,'PHYSICS LAB',10000,1000,980,2,'Laboratory',1,2,1),(020,'C.A. ACKAH LT1',110,200,150,2,'Coll. of Edu. Lect. Theater Complex',0,3,1),(021,'C.A. ACKAH LT2',120,200,150,2,'Coll. of Edu. Lect. Theater Complex',0,3,1),(022,'C.A. ACKAH LT3',110,200,150,2,'Coll. of Edu. Lect. Theater Complex',0,3,1),(023,'C.A. ACKAH LT4',60,150,100,2,'Coll. of Edu. Lect. Theater Complex',0,3,1),(024,'C.A. ACKAH LT5',160,300,280,2,'Coll. of Edu. Lect. Theater Complex',0,3,1),(025,'C.A. ACKAH LT6',60,150,100,2,'Coll. of Edu. Lect. Theater Complex',0,3,1),(026,'C.A. ACKAH LT7',120,200,150,2,'Coll. of Edu. Lect. Theater Complex',0,3,1),(027,'C.A. ACKAH LT8',210,400,328,2,'Coll. of Edu. Lect. Theater Complex',0,3,1),(028,'C.A. ACKAH LT9',210,400,3283,2,'Coll. of Edu. Lect. Theater Complex',0,3,1),(029,'C.A. ACKAH LT10',130,280,260,2,'Coll. of Edu. Lect. Theater Complex',0,3,1),(030,'C.A. ACKAH LT11',130,280,260,2,'Coll. of Edu. Lect. Theater Complex',0,3,1),(031,'C.A. ACKAH LT12',60,120,100,2,'Coll. of Edu. Lect. Theater Complex',0,3,1),(032,'C.A. ACKAH LT13',60,120,100,2,'Coll. of Edu. Lect. Theater Complex',0,3,1),(033,'LT1',28,70,50,2,'Science Fac. Lect. Theater 1',0,2,1),(034,'LT2',28,70,60,2,'Science Fac. Lect. Theater ',0,2,1),(035,'LT3',28,70,60,2,'Science Fac. Lect. Theater ',0,2,1),(036,'LT4',28,70,60,2,'Science Fac. Lect. Theater ',0,2,1),(037,'LT5',28,70,60,2,'Science Fac. Lect. Theater ',0,2,1),(038,'LT7',28,70,60,2,'Science Fac. Lect. Theater ',0,2,1),(039,'LT8',28,70,60,2,'Science Fac. Lect. Theater ',0,2,1),(040,'LT10',28,70,60,2,'Science Fac. Lect. Theater ',0,2,1),(041,'LT11',28,70,60,2,'Science Fac. Lect. Theater ',0,2,1),(042,'LT12',28,70,60,2,'Science Fac. Lect. Theater ',0,2,1),(043,'LT13',28,70,60,2,'Science Fac. Lect. Theater ',0,2,1),(044,'LT14',21,70,60,2,'Science Fac. Lect. Theater ',0,2,1),(045,'LT16',21,70,60,2,'Science Fac. Lect. Theater ',0,2,1),(046,'LT17',21,70,60,2,'Science Fac. Lect. Theater ',0,2,1),(047,'LT18',28,70,60,2,'Science Fac. Lect. Theater ',0,2,1),(048,'LT19',28,70,60,2,'Science Fac. Lect. Theater ',0,2,1),(049,'LT22',28,70,60,2,'Science Fac. Lect. Theater ',0,2,1),(050,'LT20',70,198,188,2,'Science Fac. Lect. Theater ',0,2,1),(051,'LT21',70,198,188,2,'Science Fac. Lect. Theater ',0,2,1),(102,'LAB ',10000,10000,9960,2,'Lab',0,7,1),(104,'NEC',550,800,780,2,'New Exams Centre',0,4,1),(138,'DEPT',10000,10000,9940,1,'Department',0,0,1),(141,'SWLT1',120,250,230,2,'Sandwich Block Room 1',0,7,1),(142,'SWLT2',120,250,240,2,'Sandwich Block Room 2',0,7,1),(143,'SWLT3',120,250,240,2,'Sandwich Block Room 3',0,7,1),(144,'SWLT4',120,250,240,2,'Sandwich Block Room 4',0,7,1),(145,'SWLT5',120,250,230,2,'Sandwich Block Room 5',0,7,1),(146,'SWLT6',120,250,240,2,'Sandwich Block Room 6',0,7,1),(147,'SWLT7',120,250,240,2,'Sandwich Block Room 7',0,7,1),(148,'SWLT8',120,250,230,2,'Sandwich Block Room 8',0,7,1),(149,'SWLT9',120,250,230,2,'Sandwich Block Room 9',0,7,1),(150,'SWLT10',120,250,230,2,'Sandwich Block Room 10',0,7,1),(152,'SWLT12',120,250,200,2,'Sandwich Block Room 12',0,7,1),(153,'SWLT13',120,250,200,2,'Sandwich Block Room 13',0,7,1),(154,'SWLT14',120,250,200,2,'Sandwich Block Room 14',0,7,1),(155,'SWLT15',120,250,200,2,'Sandwich Block Room 15',0,7,1),(156,'SWLT16',120,250,230,2,'Sandwich Block Room 16',0,7,1),(157,'SWLT17',120,250,245,2,'Sandwich Block Room 17',0,7,1),(158,'SWLT18',120,250,245,2,'Sandwich Block Room 18',0,7,1),(164,'SWLT19',120,250,246,2,'Sandwich Block Room 19',0,7,1),(237,'NLT19',120,140,220,2,'New Lecture Theatre Block',0,6,1),(238,'NLT15',120,140,200,2,'New Lecture Theatre Block',0,6,1),(239,'NLT4',120,140,100,2,'New Lecture Theatre Block',0,6,1),(240,'NLT5',120,140,100,2,'New Lecture Theatre Block',0,6,1),(241,'NLT13',120,140,100,2,'New Lecture Theatre Block',0,6,1),(242,'NLT6',120,140,100,2,'New Lecture Theatre Block',0,6,1),(243,'NLT1',120,140,100,2,'New Lecture Theatre Block',0,6,1),(244,'NLT8',120,140,100,2,'New Lecture Theatre Block',0,6,1),(245,'NLT12',120,140,0,2,'New Lecture Theatre Block',0,6,1),(246,'NLT11',120,140,0,2,'New Lecture Theatre Block',0,6,1),(269,'NLT14',120,140,100,2,'New Lecture Theatre Block',0,6,1),(270,'NLT20',120,100,140,2,'New Lecture Theatre Block',0,6,1),(271,'NLT9',120,140,100,2,'New Lecture Theatre Block',0,6,1),(272,'NLT3',120,140,100,2,'New Lecture Theatre Block',0,6,1),(273,'NLT16',120,140,100,2,'New Lecture Theatre Block',0,6,1),(275,'NLT18',120,140,120,2,'New Lecture Theatre Block',0,6,1),(276,'NLT10',120,140,120,2,'New Lecture Theatre Block',0,6,1),(277,'NLT17',120,140,110,2,'New Lecture Theatre Block',0,6,1),(278,'N.S.B&T',10000,10000,9960,1,'Nduom Sch. of Bus.',0,10,1),(307,'LLR1',100,100,80,2,'Law Lecture Room',0,0,1),(310,'LLT ',550,1000,975,2,'S.K AGYAPONG THEATER',0,1,1),(311,'ICTC',100000,10000,9980,2,'ICT CENTRE',0,1,1),(312,'NLT1&2',240,240,220,2,'NEW LECTURE BLOCK',0,9,1),(313,'NLT3&4',240,240,220,2,'NEW LECTURE BLOCK',0,9,1),(314,'NLT5&6',240,240,220,2,'NEW LECTURE BLOCK',0,9,1),(315,'NLT7&8',240,240,20,2,'NEW LECTURE BLOCK',0,9,1),(316,'NLT9&10',240,240,220,2,'NEW LECTURE BLOCK',0,9,1),(317,'NLT11&12',240,240,220,2,'NEW LECTURE BLOCK',0,9,1),(318,'NLT13&14',240,240,220,2,'NEW LECTURE BLOCK',0,9,1),(319,'NLT15&16',240,240,220,2,'NEW LECTURE BLOCK',0,9,1),(320,'NLT17&18',240,240,220,2,'NEW LECTURE BLOCK',0,9,1),(321,'NLT19&20',240,240,230,2,'NEW LECTURE BLOCK',0,9,1),(322,'SWLT1&2',240,240,220,2,'COMBINE ROOM',0,8,1),(323,'SWLT3&4',240,240,220,2,'COMBINE ROOM',0,8,1),(324,'SWLT5&6',240,240,220,2,'COMBINE ROOM',0,8,1),(325,'SWLT7&8',240,240,220,2,'COMBINE ROOM',0,8,1),(326,'SWLT9&10',240,240,220,2,'COMBINE ROOM',0,8,1),(327,'SWLT12&13',240,240,220,2,'COMBINE ROOM',0,8,1),(328,'SWLT14&15',240,240,220,2,'COMBINE ROOM',0,8,1),(329,'SWLT16&17',240,240,220,2,'COMBINE ROOM',0,8,1),(330,'SWLT18&19',240,240,220,2,'COMBINE ROOM',0,8,1),(331,'LT20&21',240,240,220,2,'COMBINE ROOM',0,5,1),(332,'SWLT1-8',960,240,220,2,'COMBINE ROOM',0,8,1),(333,'SWLT9-19',1200,240,220,2,'COMBINE ROOM',0,8,1),(334,'C.A ACKAH LT1,2',240,240,220,2,'COMBINE ROOM',0,3,1),(335,'C.A ACKAH LT11,13',170,240,220,2,'COMBINE ROOM',0,3,1),(336,'C.A ACKAH LT10,12',170,240,220,2,'COMBINE ROOM',0,3,1),(337,'C.A ACKAH LT7',170,240,210,2,'COMBINE ROOM',0,3,1),(338,'274',110,120,140,2,'New Lecture Theatre Block',0,6,1),(339,'C.A ACKAH LT3,4,5,6',390,240,220,2,'COMBINE ROOM',0,3,1),(340,'C.A ACKAH LT8',420,240,220,2,'COMBINE ROOM',0,3,1),(341,'NLT3,4,5,6,7,8,9',840,240,220,2,'COMBINE ROOM',0,6,1),(342,'NLT1,2,3,4',480,240,220,2,'COMBINE ROOM',0,6,1),(343,'D3',100,100,80,2,'CODE',0,9,1),(344,'D6',100,100,80,2,'CODE',0,9,1),(345,'C6',100,100,80,2,'CODE',0,9,1),(346,'C5',100,100,80,2,'CODE',0,9,1),(347,'C2',100,100,80,2,'CODE',0,9,1),(348,'C1',100,100,80,2,'CODE',0,9,1),(349,'C11',100,100,80,2,'CODE',0,9,1),(350,'C.A ACKAH LT4,6',120,120,100,2,'COMBINE ROOM',0,3,1),(351,'C.A ACKAH LT12,13',120,120,100,2,'COMBINE ROOM',0,3,1),(352,'NLT1-10',1200,10000,99960,2,'Combined Rooms',0,6,1);
/*!40000 ALTER TABLE `venue` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-30 10:46:15
