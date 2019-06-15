CREATE DATABASE  IF NOT EXISTS `storagecontrol` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `storagecontrol`;
-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: storagecontrol
-- ------------------------------------------------------
-- Server version	5.7.22

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
-- Table structure for table `companys`
--

DROP TABLE IF EXISTS `companys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cif` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `contact` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `telephone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `province` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `postalcode` varchar(45) DEFAULT NULL,
  `banck` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `cta` varchar(45) DEFAULT NULL,
  `notas` varchar(510) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companys`
--

LOCK TABLES `companys` WRITE;
/*!40000 ALTER TABLE `companys` DISABLE KEYS */;
INSERT INTO `companys` VALUES (1,'4587','casaassss212s','pepitocaocoaa1','ffff','91631722','test@testtttttt.comm','calleeee','','',NULL,'12314','BN12414','4445556651','1223','asfafcasfafa11333'),(2,'2135153','casoplonaCO','pepotee','sss','6669998866','aa@gg.com','','','',NULL,'','1414141','','121',''),(3,NULL,'apartamentoooo','apaaaaaa','ccc','777722451','bb@.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,NULL,'pisito','pisoton',NULL,'666666666',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,NULL,'aaa','aaa',NULL,'999','aa@a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,NULL,'aaa','aaa',NULL,'999','aa@a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,NULL,'aaa','aaa',NULL,'999','aa@a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,NULL,'aaa','aaa',NULL,'999','aa@a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,NULL,'aaa','aaa',NULL,'999','aa@a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,NULL,'aaa','aaa',NULL,'999','aa@a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,NULL,'aaa','aaa',NULL,'999','aa@a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,NULL,'aaa','aaa',NULL,'999','aa@a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,NULL,'aaa','aaa',NULL,'999','aa@a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,NULL,'aaa','aaa',NULL,'999','aa@a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,NULL,'aaa','aaa',NULL,'999','aa@a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,NULL,'aaa','aaa',NULL,'999','aa@a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,NULL,'aaa','aaa',NULL,'999','aa@a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,NULL,'aaa','aaa',NULL,'999','aa@a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,NULL,'aaa','aaa',NULL,'999','aa@a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,NULL,'aaa','aaa',NULL,'999','aa@a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,NULL,'aaa','aaa',NULL,'999','aa@a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,NULL,'aaa111','aaa',NULL,'9997877','aa@a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,NULL,'bbbnnn','aaa',NULL,'999','aa@a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,NULL,'ccc','aaa',NULL,'999','aa@a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,NULL,'ggggg','aaa',NULL,'999','aa@a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,NULL,'aaa','aaa',NULL,'999','aa@a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,NULL,'vvvvvvvvvvvvvv','aaa',NULL,'999','aa@a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,NULL,'aaa','aaa',NULL,'999','aa@a',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `companys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `idcontacts` int(11) NOT NULL AUTO_INCREMENT,
  `idcompany` int(11) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `telephone` varchar(45) DEFAULT NULL,
  `facturacion` int(11) DEFAULT '0',
  PRIMARY KEY (`idcontacts`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (10,3,'caca@#g,com','apartaa',NULL,'1421241',0),(14,2,'rara@gg.com','aca',NULL,'46465',0),(33,3,'sasadfa@hh.com','asfasf',NULL,'',0),(35,1,'facturas2@g,com','luis facturas',NULL,'',0),(36,1,'pepe@aa.com','pepe',NULL,'241142124',0),(37,1,'AAA@AA','AAAAA',NULL,'2241',0);
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-15 14:46:53