CREATE DATABASE  IF NOT EXISTS `tour` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `tour`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: tour
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `carbooking`
--

DROP TABLE IF EXISTS `carbooking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carbooking` (
  `loginid` varchar(6) DEFAULT NULL,
  `type` varchar(2) DEFAULT NULL,
  `pickupcity` varchar(2) DEFAULT NULL,
  `dropoffcity` varchar(4) DEFAULT NULL,
  `sdate` varchar(45) DEFAULT NULL,
  `ddate` varchar(45) DEFAULT NULL,
  `pickuptime` varchar(5) DEFAULT NULL,
  `dropofftime` varchar(5) DEFAULT NULL,
  `carclass` varchar(2) DEFAULT NULL,
  `cardno` smallint DEFAULT NULL,
  `reqno` smallint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carbooking`
--

LOCK TABLES `carbooking` WRITE;
/*!40000 ALTER TABLE `carbooking` DISABLE KEYS */;
INSERT INTO `carbooking` VALUES ('vivek','RT','ND','null','21','21','12:00','12:00','SM',1234,500),('ashish','RT','ND','null','21','21','12:00','12:00','MD',4567,501),('ravi','RT','MB','null','2023-04-14','2023-04-17','12:00','12:00','MD',1234,503);
/*!40000 ALTER TABLE `carbooking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cruisebooking`
--

DROP TABLE IF EXISTS `cruisebooking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cruisebooking` (
  `loginid` varchar(10) DEFAULT NULL,
  `source` varchar(2) DEFAULT NULL,
  `destination` varchar(2) DEFAULT NULL,
  `sdd` tinyint DEFAULT NULL,
  `smm` tinyint DEFAULT NULL,
  `syy` smallint DEFAULT NULL,
  `cruiselines` tinyint DEFAULT NULL,
  `nights` tinyint DEFAULT NULL,
  `tickets` tinyint DEFAULT NULL,
  `children` tinyint DEFAULT NULL,
  `cardno` smallint DEFAULT NULL,
  `reqno` smallint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cruisebooking`
--

LOCK TABLES `cruisebooking` WRITE;
/*!40000 ALTER TABLE `cruisebooking` DISABLE KEYS */;
INSERT INTO `cruisebooking` VALUES ('harshbajaj','ND','MB',21,4,4,1,1,2,1,4567,400),('harsh','ND','CH',21,11,4,1,1,1,1,3456,401),('ravi','ND','CH',21,11,4,1,1,1,1,2345,402),('ravi','ND','CH',21,11,4,1,1,1,1,8907,403),('ravi','ND','CH',21,11,5,1,1,1,1,4567,404),('1234','ND','CH',22,4,2023,1,1,1,0,1234,405),('11111','ND','CH',22,2,2222,1,1,1,0,1234,406);
/*!40000 ALTER TABLE `cruisebooking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `loginid` varchar(11) DEFAULT NULL,
  `pswd` varchar(9) DEFAULT NULL,
  `security_question` varchar(4) DEFAULT NULL,
  `answer` varchar(9) DEFAULT NULL,
  `fname` varchar(8) DEFAULT NULL,
  `mname` varchar(6) DEFAULT NULL,
  `lname` varchar(10) DEFAULT NULL,
  `sex` varchar(4) DEFAULT NULL,
  `dd` varchar(4) DEFAULT NULL,
  `mm` varchar(4) DEFAULT NULL,
  `yy` varchar(4) DEFAULT NULL,
  `add1` varchar(28) DEFAULT NULL,
  `add2` varchar(19) DEFAULT NULL,
  `city` varchar(9) DEFAULT NULL,
  `state` varchar(4) DEFAULT NULL,
  `pin` varchar(6) DEFAULT NULL,
  `cno` varchar(11) DEFAULT NULL,
  `mailid` varchar(31) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('sudivya','rolly','1','divya','Suraj','Kumar','Gupta','M','1','1','1950','Room No 160','Periyar Hostel, JNU','New Delhi','ND','110067','9818777614','suraj_kumar4u@yahoo.co.in'),('harshbajaj','harsh','8','bombay','harsh','','bajaj','F','13','10','1954','110067','JNU','New Delhi','ND','11007','34253452','harsh@yahoo.com'),('ravi','rajeev','5','taal','ravi','rajeev','singh','M','1','1','1950','110067','JNU','hyderabad','AP','500046','9440074490','ravi@yahoo.com'),('Rohit kumar','rohit','4','bindu','Rohit','kumar','singh','M','1','1','1957','110067','JNU','patna','BR','800024','9835265930','rohit@yahoo.com'),('amit','amit','1','amit','amit','kumar','singh','M','1','1','1980','110067','HCU','hyderabad','AP','500046','9440074490','amit@yahoo.com'),('meetu','meetu','5','meetu','meetu','meetu','meetu','M','1','1','1980','110067','HCU','hyderabad','AP','500046','9440826781','meetu@yahoo.com'),('rajeev','rajeev','4','bindu','ravi','','rajeev','M','11','1','1981','110067','HCU','hyderabad','AP','500046','9440074490','ravi@yahoo.com'),('abcinfo','abcinfo','5','asfsf','asfs','asfsdf','asfsdf','M','1','1','1980','asfsf','asdfsdf','asdfsdf','ND','530004','9090909','abcinfo@gmail.com'),('abc','abc','2','abc','a','b','c','F','1','1','1980','9876','789','hjk','HP','766','8789','a@yahoo.com'),('anutosh','ashu','1','adasasd','uuiyiu','','uiyiuyui','M','1','1','1950','110067','JNU','uiyuiy','ND','iuyuiy','iuyiuyiu','as@c.com'),('asdfg','asdf','1','fsdfs','fsdfsdf','','dsfsfs','M','1','1','1950','110067','JNU','fsdsdfsdf','ND','fdgdf','fsdsffsd','a@d.in'),('ashish','ashu','1','shruti','Ashish','','Srivastava','M','1','1','1950','Room No. 010, Periyar Hostel','JNU','New Delhi','ND','11007','9891071840','ashu_2171@yahoo.co.in'),('harsh','harsh','1','harsh','harsh','','bajaj','F','2','2','1953','110067','JNU','delhi','ND','11067','465464646','as@dd.com'),('ashu','shruti','2','proad','Ashu','','Srivastava','M','4','3','1954','104/296, ','P Road','Kanpur','UP','208012','05122540723','getashish_mca@indiatimes.com'),('vivek','nature','1','mango','Vivek','','Kumar','M','2','3','1957','Room no 032','Mahi Hostel, JNU','New Delhi','ND','110067','0113291508','vivekkumar@rediffmail.com'),('null','null','null','null','null','null','null','null','null','null','null','null','null','null','null','null','null','null'),('suarj','surya','1','fgdfg','yuiyuiy','','uiyuiyi','M','1','1','1950','110067','JNU','yuiyiuy','ND','uiuyiu','uiyiyi','as@c.com'),('suraj','deoprasad','1','ffssddf','gfhgfh','','ghfhgf','M','1','1','1950','110067','JNU','hgfhgf','ND','fgfhg','hgfhgf','qw@sd.com'),('puneet','9999','1','uioweruoi','fsioueri','','fsdurieu','M','1','1','1950','110067','JNU','iouio','ND','iouoiu','iouoiu','as@c.in'),('ruchi','shukanshi','5','titanic','Ruchi','','Srivastava','F','1','2','1953','104/296 ','Sisamau','Kanpur','ND','208012','05122540723','ruchi_srivastava@rediffmail.com'),('e1010','12345','2','ddd','kavita','kumari','sharms','F','23','06','2000','sector-14','kk','Gurgaon','HR','122003','5566565','nn@gmail.com');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flightbooking`
--

DROP TABLE IF EXISTS `flightbooking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flightbooking` (
  `loginid` varchar(6) DEFAULT NULL,
  `source` varchar(2) DEFAULT NULL,
  `destination` varchar(2) DEFAULT NULL,
  `sdd` int DEFAULT NULL,
  `smm` int DEFAULT NULL,
  `syy` int DEFAULT NULL,
  `not` tinyint DEFAULT NULL,
  `clas` varchar(2) DEFAULT NULL,
  `type` varchar(2) DEFAULT NULL,
  `ddd` varchar(2) DEFAULT NULL,
  `dmm` varchar(2) DEFAULT NULL,
  `dyy` varchar(2) DEFAULT NULL,
  `cardno` smallint DEFAULT NULL,
  `reqno` smallint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flightbooking`
--

LOCK TABLES `flightbooking` WRITE;
/*!40000 ALTER TABLE `flightbooking` DISABLE KEYS */;
INSERT INTO `flightbooking` VALUES ('ashish','ND','CH',21,11,4,5,'EC','OW','','','',1234,104),('harsh','ND','CH',21,11,4,4,'EC','OW','','','',4444,105),('ashish','ND','CH',21,11,4,1,'EC','OW','','','',1234,106),('vivek','ND','CH',21,11,4,4,'EC','OW','','','',4567,107),('ravi','ND','CH',21,11,4,5,'EC','OW','','','',8907,108),('ravi','ND','MB',21,11,5,2,'EC','OW','','','',6789,109),('ashish','ND','CH',25,6,4,2,'EC','OW','','','',2567,100),('ruchi','ND','CH',21,11,4,8,'EC','RT','29','12','04',5896,101),('ashish','ND','CH',26,4,4,7,'BS','RT','30','08','04',1234,102),('vivek','BG','MB',24,6,4,5,'FS','OW','','','',5555,103);
/*!40000 ALTER TABLE `flightbooking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotelbooking`
--

DROP TABLE IF EXISTS `hotelbooking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotelbooking` (
  `loginid` varchar(10) DEFAULT NULL,
  `type` varchar(3) DEFAULT NULL,
  `sdd` int DEFAULT NULL,
  `smm` int DEFAULT NULL,
  `syy` int DEFAULT NULL,
  `ddd` int DEFAULT NULL,
  `dmm` int DEFAULT NULL,
  `dyy` int DEFAULT NULL,
  `dest` varchar(2) DEFAULT NULL,
  `rooms` tinyint DEFAULT NULL,
  `children` varchar(4) DEFAULT NULL,
  `cardno` smallint DEFAULT NULL,
  `reqno` smallint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotelbooking`
--

LOCK TABLES `hotelbooking` WRITE;
/*!40000 ALTER TABLE `hotelbooking` DISABLE KEYS */;
INSERT INTO `hotelbooking` VALUES ('ashish','GH',21,11,4,21,11,4,'ND',1,'1',3456,526),('harshbajaj','23S',21,11,4,21,12,4,'BG',2,'2',5678,527),('harshbajaj','GH',21,11,4,21,11,4,'ND',1,'1',5678,528),('ashish','GH',21,11,4,21,11,4,'BG',2,'null',3456,529),('harshbajaj','GH',21,11,4,21,11,4,'ND',1,'null',5678,531),('ravi','GH',21,11,4,21,11,4,'ND',1,'null',6789,533),('ravi','GH',21,11,5,24,11,5,'ND',1,'null',6789,534),('1201','GH',12,1,2023,23,1,2023,'ND',1,'',1234,535),('1232','GH',12,5,2023,15,5,2023,'ND',1,'',1111,536);
/*!40000 ALTER TABLE `hotelbooking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotelbooking1`
--

DROP TABLE IF EXISTS `hotelbooking1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotelbooking1` (
  `loginid` varchar(0) DEFAULT NULL,
  `type` varchar(0) DEFAULT NULL,
  `sdd` varchar(0) DEFAULT NULL,
  `smm` varchar(0) DEFAULT NULL,
  `syy` varchar(0) DEFAULT NULL,
  `ddd` varchar(0) DEFAULT NULL,
  `dmm` varchar(0) DEFAULT NULL,
  `dyy` varchar(0) DEFAULT NULL,
  `dest` varchar(0) DEFAULT NULL,
  `rooms` varchar(0) DEFAULT NULL,
  `children` varchar(0) DEFAULT NULL,
  `cardno` varchar(0) DEFAULT NULL,
  `reqno` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotelbooking1`
--

LOCK TABLES `hotelbooking1` WRITE;
/*!40000 ALTER TABLE `hotelbooking1` DISABLE KEYS */;
/*!40000 ALTER TABLE `hotelbooking1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotelbooking2`
--

DROP TABLE IF EXISTS `hotelbooking2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotelbooking2` (
  `loginid` varchar(4) DEFAULT NULL,
  `type` varchar(2) DEFAULT NULL,
  `sdd` tinyint DEFAULT NULL,
  `smm` tinyint DEFAULT NULL,
  `syy` tinyint DEFAULT NULL,
  `ddd` tinyint DEFAULT NULL,
  `dmm` tinyint DEFAULT NULL,
  `dyy` tinyint DEFAULT NULL,
  `dest` varchar(2) DEFAULT NULL,
  `rooms` tinyint DEFAULT NULL,
  `children` tinyint DEFAULT NULL,
  `cardno` varchar(4) DEFAULT NULL,
  `reqno` smallint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotelbooking2`
--

LOCK TABLES `hotelbooking2` WRITE;
/*!40000 ALTER TABLE `hotelbooking2` DISABLE KEYS */;
INSERT INTO `hotelbooking2` VALUES ('null','GH',21,11,4,21,11,4,'ND',1,1,'3456',500),('null','GH',21,11,4,21,11,4,'ND',1,1,'vbcv',501);
/*!40000 ALTER TABLE `hotelbooking2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurance`
--

DROP TABLE IF EXISTS `insurance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insurance` (
  `name` varchar(45) DEFAULT NULL,
  `age` tinyint DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `reqno` smallint DEFAULT NULL,
  `amount` smallint DEFAULT NULL,
  `creditcardno` smallint DEFAULT NULL,
  `insuranceno` smallint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurance`
--

LOCK TABLES `insurance` WRITE;
/*!40000 ALTER TABLE `insurance` DISABLE KEYS */;
INSERT INTO `insurance` VALUES ('vivek',25,'M',123,234,2345,5000),('vivek',25,'M',123,234,2345,5001),('vivek',25,'M',123,234,2345,5002),('vivek',25,'M',123,234,2345,5003),('vivek',25,'M',123,1234,2345,5004),('vivek',25,'M',121,234,1234,5005),('vivek',25,'M',123,12,1234,5006),('ravi',24,'M',139,500,1234,5007),('ravi',24,'M',139,500,5678,5008),('ravi',24,'M',139,600,5678,5009),('ravi',24,'M',139,600,1234,5010),('ravi',24,'M',142,600,6789,5011),('kavita kumari sharms',22,'F',121,1000,1234,5012);
/*!40000 ALTER TABLE `insurance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pckgbooking`
--

DROP TABLE IF EXISTS `pckgbooking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pckgbooking` (
  `reqno` int NOT NULL AUTO_INCREMENT,
  `PackageID` varchar(4) DEFAULT NULL,
  `Type` varchar(14) DEFAULT NULL,
  `Place` varchar(13) DEFAULT NULL,
  `Cost` mediumint DEFAULT NULL,
  `Duration` tinyint DEFAULT NULL,
  `Season` varchar(9) DEFAULT NULL,
  PRIMARY KEY (`reqno`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pckgbooking`
--

LOCK TABLES `pckgbooking` WRITE;
/*!40000 ALTER TABLE `pckgbooking` DISABLE KEYS */;
INSERT INTO `pckgbooking` VALUES (1,'RR26','Adventure Tour','Uttar Pradesh',15000,2,'Oct-May'),(2,'RR27','Adventure Tour','Nepal',20000,2,'Oct-June'),(3,'RR28','Adventure Tour','Rajasthan',25000,2,'Oct-Mar'),(4,'RR29','Adventure Tour','Himachal',25000,12,'July-Sept'),(5,'RR30','Adventure Tour','Himachal',20000,10,'July-Sept'),(6,'RR31','Adventure Tour','Ladakh',25000,4,'July-Sept'),(7,'RR32','Adventure Tour','Ladakh',15000,8,'June-Sept'),(8,'RR33','Adventure Tour','Garwhal',20000,7,'July-Oct'),(9,'RR34','Adventure Tour','Garwhal',25000,9,'June-Oct'),(10,'RR35','Adventure Tour','Kumaon Hills',20000,12,'May-Oct'),(11,'RR0','GoldenTriangle','ND',80000,0,'11-11');
/*!40000 ALTER TABLE `pckgbooking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table1`
--

DROP TABLE IF EXISTS `table1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `table1` (
  `ff` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table1`
--

LOCK TABLES `table1` WRITE;
/*!40000 ALTER TABLE `table1` DISABLE KEYS */;
/*!40000 ALTER TABLE `table1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trainbooking`
--

DROP TABLE IF EXISTS `trainbooking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trainbooking` (
  `loginid` varchar(6) DEFAULT NULL,
  `source` varchar(4) DEFAULT NULL,
  `destination` varchar(3) DEFAULT NULL,
  `sdd` tinyint DEFAULT NULL,
  `smm` tinyint DEFAULT NULL,
  `syy` smallint DEFAULT NULL,
  `not` tinyint DEFAULT NULL,
  `noc` tinyint DEFAULT NULL,
  `class` varchar(2) DEFAULT NULL,
  `trainno` smallint DEFAULT NULL,
  `cardno` smallint DEFAULT NULL,
  `pnrno1` smallint DEFAULT NULL,
  `pnno2` int DEFAULT NULL,
  `status` varchar(7) DEFAULT NULL,
  `reqno` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`reqno`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainbooking`
--

LOCK TABLES `trainbooking` WRITE;
/*!40000 ALTER TABLE `trainbooking` DISABLE KEYS */;
INSERT INTO `trainbooking` VALUES ('ravi','NDLS','BCT',13,11,4,1,0,'SL',7091,1234,139,6234612,'confirm',1),('vivek ','NDLS','NK',13,11,5,1,0,'SL',7091,3456,141,6234612,'confirm',3),('ravi','PNP','BCT',13,11,5,2,0,'SL',6789,4567,142,6234612,'confirm',4),('rajeev','NDLS','BCT',13,11,5,2,0,'SL',7091,5678,143,6234612,'confirm',5),('vivek','NDLS','BCT',13,11,4,1,0,'SL',1234,9876,121,6234612,'confirm',6),('vivek','NDLS','BCT',13,11,4,1,0,'SL',1234,4563,122,6234612,'confirm',7),('ashish','NDLS','BCT',13,11,4,1,0,'SL',1234,1234,123,6234612,'confirm',8),('vivek','NDLS','BCT',13,11,4,3,0,'SL',234,2345,124,6234612,'confirm',9),('ashish','NDLS','BCT',13,11,4,1,0,'SL',1234,2345,125,6234612,'confirm',10),('vivek','NDLS','BCT',13,11,4,3,0,'SL',2356,6786,126,6234612,'confirm',11),('ashish','NDLS','BCT',13,11,4,4,0,'SL',2345,5678,127,6234612,'confirm',12),('vivek','NDLS','BCT',13,11,4,2,0,'SL',2345,6789,128,6234612,'confirm',13),('ashish','NDLS','BCT',13,11,4,3,0,'SL',4567,4567,129,6234612,'confirm',14),('ashish','NDLS','BCT',13,11,4,5,0,'SL',3456,7896,130,6234612,'confirm',15),('ashish','NDLS','BCT',13,11,4,2,0,'SL',1234,1234,131,6234612,'confirm',16),('ashish','NDLS','BCT',13,11,4,4,0,'SL',44,4567,132,6234612,'confirm',17),('XXXXX','NDLS','BCT',13,11,4,2,0,'SL',1234,2345,133,6234612,'confirm',18),('vivek','NDLS','BCT',13,11,2004,2,0,'SL',1234,4567,134,6234612,'confirm',19),('vivek','NDLS','BCT',13,11,4,2,0,'SL',1234,4567,135,6234612,'confirm',20),('vivek','NDLS','BCT',13,11,4,12,0,'SL',1234,1234,136,6234612,'confirm',21),('ashish','NDLS','BCT',13,11,4,12,0,'SL',1234,2345,137,6234612,'confirm',22),('ravi','NDLS','BCT',13,11,4,3,0,'SL',7091,3456,138,6234612,'confirm',23),('1991','NDLS','BCT',15,4,2023,2,1,'FC',11111,1234,24,11111024,'confirm',24);
/*!40000 ALTER TABLE `trainbooking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userinfo`
--

DROP TABLE IF EXISTS `userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userinfo` (
  `loginid` varchar(5) DEFAULT NULL,
  `password` varchar(6) DEFAULT NULL,
  `reqno` smallint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userinfo`
--

LOCK TABLES `userinfo` WRITE;
/*!40000 ALTER TABLE `userinfo` DISABLE KEYS */;
INSERT INTO `userinfo` VALUES ('vivek','anjani',100),('sunil','sunil',101),('1991','',24),('1234','12345',405),('1234','12345',405),('1234','12345',405),('1234','12345',405),('1234','12345',405),('1234','12345',405),('1234','12345',405),('1234','12345',405),('1234','12345',405),('1234','12345',405),('1234','12345',405),('1234','12345',405),('1234','12345',405),('1234','12345',405),('1234','12345',405),('1234','12345',405),('1234','12345',405),('1234','12345',405),('1234','12345',405),('1234','12345',405),('1234','12345',405),('11111','12345',406),('1201','12345',535),('1201','12345',535),('1201','12345',535),('1232','12345',536);
/*!40000 ALTER TABLE `userinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-15  0:22:25
