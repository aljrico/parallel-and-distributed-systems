-- MySQL dump 10.13  Distrib 5.5.27, for osx10.6 (i386)
--
-- Host: localhost    Database: experiments
-- ------------------------------------------------------
-- Server version	5.5.27

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
-- Table structure for table `Data`
--

use experiments;

DROP TABLE IF EXISTS `Data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Data` (
  `affyId` varchar(30) NOT NULL,
  `exptId` varchar(10) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`affyId`,`exptId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Data`
--

LOCK TABLES `Data` WRITE;
/*!40000 ALTER TABLE `Data` DISABLE KEYS */;
INSERT INTO `Data` VALUES ('31315_at','3',250),('31325_at','1',191),('31324_at','3',91),('31325_at','2',101),('31356_at','3',91),('31362_at','3',260),('31510_s_at','3',257),('31325_at','4',51),('5321_at','4',90),('5322_at','4',90),('5323_at','4',90),('5324_at','3',57),('5324_at','4',90),('5325_at','4',90),('AFFX-BioB-3_at','3',97),('AFFX-BioB-5_at','3',20),('AFFX-BioB-M_at','3',20),('AFFX-BioB-M_at','5',214),('AFFX-BioB-M_at','7',20),('AFFX-BioB-M_at','8',40),('AFFX-BioB-M_at','9',20),('AFFX-HSAC07/X00351_M_at','3',86),('AFFX-HUMBAPDH/M33197_3_st','3',277),('AFFX-HUMTFFR/M11507_at','3',90),('AFFX-M27830_3_at','3',271),('AFFX-MurIL10_at','3',8),('AFFX-MurIL10_at','5',8),('AFFX-MurIL10_at','6',4),('AFFX-MurIL2_at','3',20),('AFFX-MurIL4_at','5',78),('31325_at','5',71),('AFFX-MurIL4_at','6',20),('U95-32123_at','1',128),('U95-32123_at','2',128),('U98-40474_at','1',57),('U98-40474_at','2',57),('31325_at','6',31);
/*!40000 ALTER TABLE `Data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Descriptions`
--

DROP TABLE IF EXISTS `Descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Descriptions` (
  `gbId` varchar(20) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`gbId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Descriptions`
--

LOCK TABLES `Descriptions` WRITE;
/*!40000 ALTER TABLE `Descriptions` DISABLE KEYS */;
INSERT INTO `Descriptions` VALUES ('A00142','granulysin'),('A00146','lypase, gastric'),('A03911','seryne (or cysteine) proteinase inhibitor'),('A06977','albumin'),('A12027','S100 calcium binding protein A8'),('A12345','HSLFBPS7 Human fructose-1, 6-biphosphatase'),('A12346','HSU30872 Human mitosin mRNA'),('A12347','HSU33052 Human lipid-activated protein kinase'),('A12348','HSU33053 Human lipid-activated protein kinase'),('A12349','Human clone lambda 5 semaphorin mRNA'),('A22123','Homo sapiens immunoglobulin lambda locus DNA, clone 288A10'),('A22124','Human rearranged immunoglobulin lambda light chain mRNA'),('A22125','Homo sapiens immunoglobulin lambda locus DNA, clone 31F3'),('A22126','Homo sapiens immunoglobulin lambda locus DNA, clone 288A10'),('A22127','Human rearranged immunoglobulin lambda light chain mRNA'),('S75295','Glucan');
/*!40000 ALTER TABLE `Descriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GO_Descr`
--

DROP TABLE IF EXISTS `GO_Descr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GO_Descr` (
  `goAcc` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`goAcc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GO_Descr`
--

LOCK TABLES `GO_Descr` WRITE;
/*!40000 ALTER TABLE `GO_Descr` DISABLE KEYS */;
INSERT INTO `GO_Descr` VALUES ('0001234','fructose-2, 6-biophosphatase 2-phosphatase'),('0001235','regulation of mitosis'),('0001236','protein kinase'),('0001237','protein kinase'),('0001238','extracellular space'),('0003844','Glucan Enz'),('0005202','Serine Prot.'),('1112222','protein kinase'),('4442222','protein kinase');
/*!40000 ALTER TABLE `GO_Descr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LocusDescr`
--

DROP TABLE IF EXISTS `LocusDescr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LocusDescr` (
  `linkId` int(11) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `species` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`linkId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LocusDescr`
--

LOCK TABLES `LocusDescr` WRITE;
/*!40000 ALTER TABLE `LocusDescr` DISABLE KEYS */;
INSERT INTO `LocusDescr` VALUES (1294,'Collagen','Hs'),(2632,'Glucan','Hs'),(3000,'granulysin','Hs'),(3001,'lipase','Hs'),(3002,'serine','Hs'),(3003,'albumin','Hs'),(3004,'s100 calcium binding protein','Hs');
/*!40000 ALTER TABLE `LocusDescr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LocusLinks`
--

DROP TABLE IF EXISTS `LocusLinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LocusLinks` (
  `gbId` varchar(20) NOT NULL,
  `linkId` int(11) NOT NULL,
  PRIMARY KEY (`gbId`,`linkId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LocusLinks`
--

LOCK TABLES `LocusLinks` WRITE;
/*!40000 ALTER TABLE `LocusLinks` DISABLE KEYS */;
INSERT INTO `LocusLinks` VALUES ('A00142',3000),('A00142',4010),('A00146',3001),('A00146',4011),('A003911',3002),('A03911',4012),('A06977',3003),('A06977',4013),('A12027',3004),('A12027',4014),('A12345',4015),('A12346',4016),('A12347',4017),('A12348',4018),('A12349',4019),('A22123',5321),('A22124',5321),('A22125',5321),('A22126',5321),('A22127',5321),('L02870',1294),('S75295',2632);
/*!40000 ALTER TABLE `LocusLinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ontologies`
--

DROP TABLE IF EXISTS `Ontologies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ontologies` (
  `linkId` int(11) NOT NULL,
  `goAcc` varchar(20) NOT NULL,
  PRIMARY KEY (`linkId`,`goAcc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ontologies`
--

LOCK TABLES `Ontologies` WRITE;
/*!40000 ALTER TABLE `Ontologies` DISABLE KEYS */;
INSERT INTO `Ontologies` VALUES (0,'4015'),(0,'4016'),(1294,'0005202'),(2632,'0003844'),(4015,'0001234'),(4016,'0001235'),(4017,'0001236'),(4018,'0001237'),(4019,'0001238');
/*!40000 ALTER TABLE `Ontologies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RefSeqs`
--

DROP TABLE IF EXISTS `RefSeqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RefSeqs` (
  `linkId` int(11) NOT NULL,
  `ntRefSeq` varchar(10) NOT NULL,
  `aaRefSeq` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ntRefSeq`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RefSeqs`
--

LOCK TABLES `RefSeqs` WRITE;
/*!40000 ALTER TABLE `RefSeqs` DISABLE KEYS */;
INSERT INTO `RefSeqs` VALUES (5321,'NG_000002',''),(1294,'NM_000094','NP_000085'),(2632,'NM_000158','NP_000149'),(1053,'NM_001805','NP_001796'),(1054,'NM_001806','NP_001797'),(1056,'NM_001807','NP_001798'),(1058,'NM_001809','NP_001800'),(105887,'NM_127943','XP_127943'),(105892,'NM_128276','XP_128276'),(105910,'NM_134094','NP_598855'),(1057,'NR_001275',''),(105870,'XM_128254','XP_128254'),(105866,'XM_128271','XP_128271');
/*!40000 ALTER TABLE `RefSeqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sources`
--

DROP TABLE IF EXISTS `Sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sources` (
  `exptId` varchar(10) NOT NULL,
  `source` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`exptId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sources`
--

LOCK TABLES `Sources` WRITE;
/*!40000 ALTER TABLE `Sources` DISABLE KEYS */;
INSERT INTO `Sources` VALUES ('1','Pancreas'),('2','Liver'),('4','Human Liver');
/*!40000 ALTER TABLE `Sources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Targets`
--

DROP TABLE IF EXISTS `Targets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Targets` (
  `gbId` varchar(20) NOT NULL,
  `affyId` varchar(20) NOT NULL,
  `species` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`affyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Targets`
--

LOCK TABLES `Targets` WRITE;
/*!40000 ALTER TABLE `Targets` DISABLE KEYS */;
INSERT INTO `Targets` VALUES ('AI846313','1234_at','Mm'),('M18228','1235_at','Mm'),('X70393','1236_at','Hs'),('A00142','3123_at','Hs'),('A00146','3124_at','Hs'),('A03911','3154_at','Hs'),('A06977','3155_at','Hs'),('A12027','3156_at','Hs'),('A12345','3157_at','Hs'),('A12346','3158_at','Hs'),('A12347','3159_at','Hs'),('A12348','3160_at','Hs'),('A12349','3161_at','Hs'),('A22123','5321_at','Hs'),('A22124','5322_at','Hs'),('A22125','5323_at','Hs'),('A22126','5324_at','Hs'),('A22127','5325_at','Hs'),('L02870','U95_32123_at','Mm'),('S75295','U95_40474_at','Hs');
/*!40000 ALTER TABLE `Targets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UniDescr`
--

DROP TABLE IF EXISTS `UniDescr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UniDescr` (
  `uId` varchar(10) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`uId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UniDescr`
--

LOCK TABLES `UniDescr` WRITE;
/*!40000 ALTER TABLE `UniDescr` DISABLE KEYS */;
INSERT INTO `UniDescr` VALUES ('Hs1640','Collagen'),('Hs1691','Glucan'),('Hs.12','albumin'),('Hs.14','albumin'),('Hs.15','protein kinase'),('Hs.36','protein kinase'),('Hs.66','protein kinase');
/*!40000 ALTER TABLE `UniDescr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UniSeqs`
--

DROP TABLE IF EXISTS `UniSeqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UniSeqs` (
  `uId` varchar(20) NOT NULL,
  `gbId` varchar(20) NOT NULL,
  PRIMARY KEY (`gbId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UniSeqs`
--

LOCK TABLES `UniSeqs` WRITE;
/*!40000 ALTER TABLE `UniSeqs` DISABLE KEYS */;
INSERT INTO `UniSeqs` VALUES ('Hs.2','D90042'),('Hs.11','D90278'),('Hs.11','L00693'),('Hs1640','L02870'),('Hs.21','M16652'),('Hs1691','S75295'),('Hs.4','X03350'),('Hs.12','A22123'),('Hs.14','A22124'),('Hs.15','A22125'),('Hs.36','A22126'),('Hs.66','A22127');
/*!40000 ALTER TABLE `UniSeqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Unigenes`
--

DROP TABLE IF EXISTS `Unigenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Unigenes` (
  `linkId` int(11) NOT NULL,
  `uId` varchar(10) NOT NULL,
  PRIMARY KEY (`uId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Unigenes`
--

LOCK TABLES `Unigenes` WRITE;
/*!40000 ALTER TABLE `Unigenes` DISABLE KEYS */;
INSERT INTO `Unigenes` VALUES (1294,'Hs1640'),(2632,'Hs1691');
/*!40000 ALTER TABLE `Unigenes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-12 12:43:40
