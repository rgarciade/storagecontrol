-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
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
  `name` varchar(45) DEFAULT NULL,
  `contact` varchar(45) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `telephone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companys`
--

LOCK TABLES `companys` WRITE;
/*!40000 ALTER TABLE `companys` DISABLE KEYS */;
INSERT INTO `companys` VALUES (1,'casa','pepitocaocoa','ffff','91631721','test@test.com'),(2,'casoplonaCO','pepotee','sss','6669998866','aa@gg.com'),(3,'apartamentoooo','apaaaaaa','ccc','777722451','bb@.com');
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
  PRIMARY KEY (`idcontacts`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,1,'fff@ggg.com','raul','las rozas','6660006988'),(10,3,'caca@#g,com','apartaa',NULL,'1421241'),(14,2,'rara@gg.com','aca',NULL,'46465'),(31,1,'caca@ccc.com','casac',NULL,'2325532');
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

-- Dump completed on 2019-03-14 20:05:27
-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: eventos
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
-- Table structure for table `eventos`
--

DROP TABLE IF EXISTS `eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eventos` (
  `id_eventos` int(11) NOT NULL AUTO_INCREMENT,
  `json` json DEFAULT NULL,
  PRIMARY KEY (`id_eventos`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventos`
--

LOCK TABLES `eventos` WRITE;
/*!40000 ALTER TABLE `eventos` DISABLE KEYS */;
INSERT INTO `eventos` VALUES (1,'{\"2018\": {\"December\": {\"1\": [18], \"2\": [19], \"6\": [31], \"8\": [20, 32], \"9\": [21], \"12\": [22], \"14\": [23], \"15\": [24, 25], \"19\": [26], \"23\": [27], \"25\": [33, 34], \"29\": [28]}, \"November\": {\"1\": [2, 30], \"3\": [9], \"7\": [4], \"9\": [29], \"10\": [3, 10], \"11\": [3, 11], \"14\": [5, 12], \"16\": [1], \"17\": [1, 13], \"18\": [1, 14], \"21\": [6, 7], \"24\": [15], \"25\": [16], \"28\": [8, 17]}}, \"2019\": {\"May\": {\"1\": [107, 205], \"2\": [108, 109, 110, 205], \"4\": [111], \"11\": [112, 113, 114], \"12\": [115], \"13\": [116], \"17\": [46, 117], \"18\": [46, 117], \"19\": [46, 117], \"22\": [118], \"25\": [38, 119, 120, 121, 122], \"26\": [38, 123, 124], \"28\": [125], \"29\": [126], \"31\": [47]}, \"July\": {\"1\": [142], \"2\": [143], \"3\": [143], \"4\": [143], \"6\": [144], \"7\": [145], \"8\": [146], \"9\": [146], \"10\": [146], \"12\": [49], \"13\": [49], \"14\": [49, 147], \"20\": [148], \"21\": [148]}, \"June\": {\"1\": [47, 127, 128], \"2\": [47, 127], \"3\": [129], \"5\": [130], \"8\": [131], \"9\": [132], \"12\": [133], \"15\": [134], \"16\": [134], \"17\": [135], \"19\": [136], \"22\": [58, 137], \"23\": [138], \"24\": [208], \"26\": [139], \"28\": [48], \"29\": [48, 140], \"30\": [48, 141]}, \"April\": {\"1\": [60, 61], \"2\": [60, 61, 205, 207], \"3\": [60, 61, 204, 205], \"4\": [60, 61, 205], \"5\": [45, 60, 61, 205], \"6\": [45, 60, 61, 205], \"7\": [45, 60, 61, 205], \"8\": [60, 61, 205], \"9\": [60, 61, 205], \"10\": [60, 61, 205], \"11\": [60, 61, 205], \"12\": [60, 61, 205], \"13\": [37, 60, 61, 205], \"14\": [37, 60, 61, 205], \"15\": [60, 61, 205], \"16\": [60, 61, 205], \"17\": [60, 61, 205], \"18\": [60, 61, 104, 205], \"19\": [60, 61, 104, 205], \"20\": [104, 205], \"21\": [104, 205], \"22\": [205], \"23\": [205], \"24\": [205], \"25\": [205], \"26\": [205], \"27\": [205], \"28\": [105, 106, 205], \"29\": [205], \"30\": [205]}, \"March\": {\"1\": [206], \"2\": [82, 83, 206], \"3\": [84, 206], \"4\": [206], \"6\": [85], \"8\": [43], \"9\": [43, 92, 93, 94], \"10\": [43, 95], \"11\": [96], \"16\": [97], \"17\": [98], \"20\": [99], \"21\": [86, 87, 88, 89, 90, 91, 203], \"23\": [36, 100, 101, 102], \"24\": [36, 103], \"25\": [61], \"26\": [60, 61], \"27\": [60, 61], \"28\": [60, 61], \"29\": [44, 60, 61], \"30\": [44, 60, 61], \"31\": [44, 60, 61]}, \"August\": {\"15\": [149]}, \"January\": {\"1\": [62], \"6\": [63], \"12\": [64], \"13\": [65], \"19\": [67], \"20\": [66], \"27\": [68]}, \"October\": {\"2\": [157], \"3\": [158], \"4\": [52, 159], \"5\": [52, 160], \"6\": [52], \"7\": [161], \"9\": [162], \"12\": [163, 164], \"13\": [165, 166, 167], \"15\": [168, 169], \"16\": [168, 169], \"19\": [170, 171, 172], \"20\": [170], \"23\": [173], \"25\": [53], \"26\": [40, 53, 174], \"27\": [40, 53, 175, 176], \"28\": [177], \"30\": [178]}, \"December\": {\"1\": [57, 194, 195], \"6\": [196, 197], \"7\": [198], \"8\": [199, 200], \"14\": [42, 59, 201], \"25\": [202]}, \"February\": {\"3\": [69], \"4\": [206], \"5\": [206], \"6\": [206], \"7\": [206], \"8\": [206], \"9\": [70, 71, 206], \"10\": [72, 206], \"11\": [206], \"12\": [206], \"13\": [206], \"14\": [206], \"15\": [206], \"16\": [35, 73, 206], \"17\": [35, 74, 75, 206], \"18\": [206], \"19\": [206], \"20\": [76, 206], \"21\": [206], \"22\": [206], \"23\": [77, 78, 79, 80, 206], \"24\": [81, 206], \"25\": [206], \"26\": [206], \"27\": [206], \"28\": [206]}, \"November\": {\"1\": [179], \"6\": [180], \"9\": [181, 182, 183], \"10\": [184], \"11\": [185], \"16\": [41, 186, 187], \"17\": [41, 188], \"22\": [54, 56], \"23\": [54, 56, 189], \"24\": [54, 56, 190, 191, 192], \"29\": [55, 57], \"30\": [55, 57, 193]}, \"September\": {\"20\": [50], \"21\": [39, 50, 150], \"22\": [39, 50, 151, 152], \"27\": [51], \"28\": [51, 153, 154, 155], \"29\": [51, 156]}}, \"events\": {\"1\": {\"id\": 1, \"type\": \"Torneo_CROQUET\", \"title\": \"SOCIAL IND. CG\", \"eventTimeFinal\": \"2018-11-18\", \"eventTimeInitial\": \"2018-11-16\"}, \"2\": {\"id\": 2, \"type\": \"Eventos_CLUB\", \"title\": \"HALLOWEEN\", \"eventTimeFinal\": \"2018-11-01\", \"eventTimeInitial\": \"2018-11-01\"}, \"3\": {\"id\": 3, \"type\": \"HÍPICA\", \"title\": \"CSN**\", \"eventTimeFinal\": \"2018-11-11\", \"eventTimeInitial\": \"2018-11-10\"}, \"4\": {\"id\": 4, \"type\": \"BRIDGE\", \"title\": \"BRIDGE\", \"eventTimeFinal\": \"2018-11-07\", \"eventTimeInitial\": \"2018-11-07\"}, \"5\": {\"id\": 5, \"type\": \"BRIDGE\", \"title\": \"BRIDGE\", \"eventTimeFinal\": \"2018-11-14\", \"eventTimeInitial\": \"2018-11-14\"}, \"7\": {\"id\": 7, \"type\": \"BRIDGE\", \"title\": \"BRIDGE\", \"eventTimeFinal\": \"2018-11-21\", \"eventTimeInitial\": \"2018-11-21\"}, \"8\": {\"id\": 8, \"type\": \"BRIDGE\", \"title\": \"BRIDGE\", \"eventTimeFinal\": \"2018-11-28\", \"eventTimeInitial\": \"2018-11-28\"}, \"9\": {\"id\": 9, \"type\": \"Sociales_GOLF\", \"title\": \"TORNEO GOLF COACHING ACADEMY\", \"eventTimeFinal\": \"2018-11-03\", \"eventTimeInitial\": \"2018-11-03\"}, \"10\": {\"id\": 10, \"type\": \"Sociales_GOLF\", \"title\": \"CTO. RSHECC SENIOR DAMAS\", \"eventTimeFinal\": \"2018-11-10\", \"eventTimeInitial\": \"2018-11-10\"}, \"11\": {\"id\": 11, \"type\": \"Sociales_GOLF\", \"title\": \"JUVENIL\", \"eventTimeFinal\": \"2018-11-11\", \"eventTimeInitial\": \"2018-11-11\"}, \"12\": {\"id\": 12, \"type\": \"Sociales_GOLF\", \"title\": \"PUNTUABLE DAM./CAB.\", \"eventTimeFinal\": \"2018-11-14\", \"eventTimeInitial\": \"2018-11-14\"}, \"13\": {\"id\": 13, \"type\": \"Sociales_GOLF\", \"title\": \"HCPS. ALTOS / LIGA SRAS. PARES 3\", \"eventTimeFinal\": \"2018-11-17\", \"eventTimeInitial\": \"2018-11-17\"}, \"14\": {\"id\": 14, \"type\": \"Sociales_GOLF\", \"title\": \"JUVENIL\", \"eventTimeFinal\": \"2018-11-18\", \"eventTimeInitial\": \"2018-11-18\"}, \"15\": {\"id\": 15, \"type\": \"Sociales_GOLF\", \"title\": \"JUVENIL\", \"eventTimeFinal\": \"2018-11-24\", \"eventTimeInitial\": \"2018-11-24\"}, \"16\": {\"id\": 16, \"type\": \"Sociales_GOLF\", \"title\": \"HCPS. ALTOS / LIGA SRAS. 9 LARGOS\", \"eventTimeFinal\": \"2018-11-25\", \"eventTimeInitial\": \"2018-11-25\"}, \"17\": {\"id\": 17, \"type\": \"Sociales_GOLF\", \"title\": \"PUNTUABLE DAM./CAB.\", \"eventTimeFinal\": \"2018-11-28\", \"eventTimeInitial\": \"2018-11-28\"}, \"18\": {\"id\": 18, \"type\": \"Sociales_GOLF\", \"title\": \"NAVIDAD DAMAS\", \"eventTimeFinal\": \"2018-12-01\", \"eventTimeInitial\": \"2018-12-01\"}, \"19\": {\"id\": 19, \"type\": \"Sociales_GOLF\", \"title\": \"LIGA SRAS. PARES 3\", \"eventTimeFinal\": \"2018-12-02\", \"eventTimeInitial\": \"2018-12-02\"}, \"20\": {\"id\": 20, \"type\": \"Sociales_GOLF\", \"title\": \"NAVIDAD 3ª 4ª 5ª CAT. CAB.\", \"eventTimeFinal\": \"2018-12-08\", \"eventTimeInitial\": \"2018-12-08\"}, \"21\": {\"id\": 21, \"type\": \"Sociales_GOLF\", \"title\": \"NAVIDAD JUVENIL\", \"eventTimeFinal\": \"2018-12-09\", \"eventTimeInitial\": \"2018-12-09\"}, \"22\": {\"id\": 22, \"type\": \"BRIDGE\", \"title\": \"BRIDGE\", \"eventTimeFinal\": \"2018-12-12\", \"eventTimeInitial\": \"2018-12-12\"}, \"23\": {\"id\": 23, \"type\": \"MALLORCA\", \"title\": \"COMIDA MEDICOS (PRIVADO)\", \"eventTimeFinal\": \"2018-12-14\", \"eventTimeInitial\": \"2018-12-14\"}, \"24\": {\"id\": 24, \"type\": \"Eventos_CLUB\", \"title\": \"ENTREGA NAVIDAD\", \"eventTimeFinal\": \"2018-12-15\", \"eventTimeInitial\": \"2018-12-15\"}, \"25\": {\"id\": 25, \"type\": \"Sociales_GOLF\", \"title\": \"NAVIDAD 1ª Y 2ª CAT. CAB.\", \"eventTimeFinal\": \"2018-12-15\", \"eventTimeInitial\": \"2018-12-15\"}, \"26\": {\"id\": 26, \"type\": \"BRIDGE\", \"title\": \"BRIDGE\", \"eventTimeFinal\": \"2018-12-19\", \"eventTimeInitial\": \"2018-12-19\"}, \"27\": {\"id\": 27, \"type\": \"MALLORCA\", \"title\": \"BAUTIZO\", \"eventTimeFinal\": \"2018-12-23\", \"eventTimeInitial\": \"2018-12-23\"}, \"28\": {\"id\": 28, \"type\": \"MALLORCA\", \"title\": \"BODA\", \"eventTimeFinal\": \"2018-12-29\", \"eventTimeInitial\": \"2018-12-29\"}, \"29\": {\"id\": 29, \"type\": \"FIESTAS_LABORALES\", \"title\": \"ALMUDENA\", \"eventTimeFinal\": \"2018-11-09\", \"eventTimeInitial\": \"2018-11-09\"}, \"30\": {\"id\": 30, \"type\": \"FIESTAS_LABORALES\", \"title\": \"TODOS LOS SANTOS\", \"eventTimeFinal\": \"2018-11-01\", \"eventTimeInitial\": \"2018-11-01\"}, \"31\": {\"id\": 31, \"type\": \"FIESTAS_LABORALES\", \"title\": \"CONSTITUCIÓN\", \"eventTimeFinal\": \"2018-12-06\", \"eventTimeInitial\": \"2018-12-06\"}, \"32\": {\"id\": 32, \"type\": \"FIESTAS_LABORALES\", \"title\": \"INM. CONCEPCIÓN\", \"eventTimeFinal\": \"2018-12-08\", \"eventTimeInitial\": \"2018-12-08\"}, \"34\": {\"id\": 34, \"type\": \"FIESTAS_LABORALES\", \"title\": \"DIA DE NAVIDAD\", \"eventTimeFinal\": \"2018-12-25\", \"eventTimeInitial\": \"2018-12-25\"}, \"35\": {\"id\": 35, \"type\": \"HÍPICA\", \"title\": \"CSN**\", \"eventTimeFinal\": \"2019-02-17\", \"eventTimeInitial\": \"2019-02-16\"}, \"36\": {\"id\": 36, \"type\": \"HÍPICA\", \"title\": \"CSN**\", \"eventTimeFinal\": \"2019-03-24\", \"eventTimeInitial\": \"2019-03-23\"}, \"37\": {\"id\": 37, \"type\": \"HÍPICA\", \"title\": \"CSN** CJ\", \"eventTimeFinal\": \"2019-04-14\", \"eventTimeInitial\": \"2019-04-13\"}, \"38\": {\"id\": 38, \"type\": \"HÍPICA\", \"title\": \"CSN**\", \"eventTimeFinal\": \"2019-05-26\", \"eventTimeInitial\": \"2019-05-25\"}, \"39\": {\"id\": 39, \"type\": \"HÍPICA\", \"title\": \"CSN** CJjjjjjjj\", \"eventTimeFinal\": \"2019-09-22\", \"eventTimeInitial\": \"2019-09-21\"}, \"40\": {\"id\": 40, \"type\": \"HÍPICA\", \"title\": \"CSN**\", \"eventTimeFinal\": \"2019-10-27\", \"eventTimeInitial\": \"2019-10-26\"}, \"41\": {\"id\": 41, \"type\": \"HÍPICA\", \"title\": \"CSN**\", \"eventTimeFinal\": \"2019-11-17\", \"eventTimeInitial\": \"2019-11-16\"}, \"42\": {\"id\": 42, \"type\": \"HÍPICA\", \"title\": \"SOCIAL NAVIDAD\", \"eventTimeFinal\": \"2019-12-14\", \"eventTimeInitial\": \"2019-12-14\"}, \"43\": {\"id\": 43, \"type\": \"Torneo_CROQUET\", \"title\": \"BILATERAL vs PINEDA\", \"eventTimeFinal\": \"2019-03-10\", \"eventTimeInitial\": \"2019-03-08\"}, \"44\": {\"id\": 44, \"type\": \"Torneo_CROQUET\", \"title\": \"SOCIAL INDIVIDUAL\", \"eventTimeFinal\": \"2019-03-31\", \"eventTimeInitial\": \"2019-03-29\"}, \"45\": {\"id\": 45, \"type\": \"Torneo_CROQUET\", \"title\": \"ORDEN DE MALTA\", \"eventTimeFinal\": \"2019-04-07\", \"eventTimeInitial\": \"2019-04-05\"}, \"46\": {\"id\": 46, \"type\": \"Torneo_CROQUET\", \"title\": \"CTO. IND. ABS. RSHECC\", \"eventTimeFinal\": \"2019-05-19\", \"eventTimeInitial\": \"2019-05-17\"}, \"47\": {\"id\": 47, \"type\": \"Torneo_CROQUET\", \"title\": \"III CTO. DE MADRID\", \"eventTimeFinal\": \"2019-06-02\", \"eventTimeInitial\": \"2019-05-31\"}, \"48\": {\"id\": 48, \"type\": \"Torneo_CROQUET\", \"title\": \"II PASTA GAROFALO\", \"eventTimeFinal\": \"2019-06-30\", \"eventTimeInitial\": \"2019-06-28\"}, \"49\": {\"id\": 49, \"type\": \"Torneo_CROQUET\", \"title\": \"PRESIDENT CUP\", \"eventTimeFinal\": \"2019-07-14\", \"eventTimeInitial\": \"2019-07-12\"}, \"50\": {\"id\": 50, \"type\": \"Torneo_CROQUET\", \"title\": \"BILATERAL vs. P.HIERRO\", \"eventTimeFinal\": \"2019-09-22\", \"eventTimeInitial\": \"2019-09-20\"}, \"51\": {\"id\": 51, \"type\": \"Torneo_CROQUET\", \"title\": \"CTO. ESPAÑA 3ª Cat.\", \"eventTimeFinal\": \"2019-09-29\", \"eventTimeInitial\": \"2019-09-27\"}, \"52\": {\"id\": 52, \"type\": \"Torneo_CROQUET\", \"title\": \"III FIFTY POUNDS\", \"eventTimeFinal\": \"2019-10-06\", \"eventTimeInitial\": \"2019-10-04\"}, \"53\": {\"id\": 53, \"type\": \"Torneo_CROQUET\", \"title\": \"III TROFEO CASER\", \"eventTimeFinal\": \"2019-10-27\", \"eventTimeInitial\": \"2019-10-25\"}, \"56\": {\"id\": 56, \"type\": \"Torneo_CROQUET\", \"title\": \"SOCIAL OTOÑO (Tier1)\", \"eventTimeFinal\": \"2019-11-24\", \"eventTimeInitial\": \"2019-11-22\"}, \"57\": {\"id\": 57, \"type\": \"Torneo_CROQUET\", \"title\": \"SOCIAL OTOÑO (Tier2)\", \"eventTimeFinal\": \"2019-12-01\", \"eventTimeInitial\": \"2019-11-29\"}, \"58\": {\"id\": 58, \"type\": \"Eventos_CLUB\", \"title\": \"CENA DE VERANO\", \"eventTimeFinal\": \"2019-06-22\", \"eventTimeInitial\": \"2019-06-22\"}, \"59\": {\"id\": 59, \"type\": \"Eventos_CLUB\", \"title\": \"MERIENDA NAVIDAD\", \"eventTimeFinal\": \"2019-12-14\", \"eventTimeInitial\": \"2019-12-14\"}, \"62\": {\"id\": 62, \"type\": \"FIESTAS_LABORALES\", \"title\": \"AÑO NUEVO\", \"eventTimeFinal\": \"2019-01-01\", \"eventTimeInitial\": \"2019-01-01\"}, \"63\": {\"id\": 63, \"type\": \"FIESTAS_LABORALES\", \"title\": \"REYES\", \"eventTimeFinal\": \"2019-01-06\", \"eventTimeInitial\": \"2019-01-06\"}, \"64\": {\"id\": 64, \"type\": \"Sociales_GOLF\", \"title\": \"REYES DAMAS Y 1ª CAT. CABALLEROS\", \"eventTimeFinal\": \"2019-01-12\", \"eventTimeInitial\": \"2019-01-12\"}, \"65\": {\"id\": 65, \"type\": \"Sociales_GOLF\", \"title\": \"REYES 2ª CAT. CABALLEROS\", \"eventTimeFinal\": \"2019-01-13\", \"eventTimeInitial\": \"2019-01-13\"}, \"66\": {\"id\": 66, \"type\": \"Sociales_GOLF\", \"title\": \"JUVENIL\", \"eventTimeFinal\": \"2019-01-20\", \"eventTimeInitial\": \"2019-01-20\"}, \"67\": {\"id\": 67, \"type\": \"Sociales_GOLF\", \"title\": \"MATCH vs RACE\", \"eventTimeFinal\": \"2019-01-19\", \"eventTimeInitial\": \"2019-01-19\"}, \"68\": {\"id\": 68, \"type\": \"Sociales_GOLF\", \"title\": \"MATCH vs LAS LOMAS\", \"eventTimeFinal\": \"2019-01-27\", \"eventTimeInitial\": \"2019-01-27\"}, \"69\": {\"id\": 69, \"type\": \"Sociales_GOLF\", \"title\": \"JUVENIL\", \"eventTimeFinal\": \"2019-02-03\", \"eventTimeInitial\": \"2019-02-03\"}, \"70\": {\"id\": 70, \"type\": \"Sociales_GOLF\", \"title\": \"GREENSOME DAMAS P3\", \"eventTimeFinal\": \"2019-02-09\", \"eventTimeInitial\": \"2019-02-09\"}, \"71\": {\"id\": 71, \"type\": \"Sociales_GOLF\", \"title\": \"MATCH vs CCVM\", \"eventTimeFinal\": \"2019-02-09\", \"eventTimeInitial\": \"2019-02-09\"}, \"72\": {\"id\": 72, \"type\": \"Sociales_GOLF\", \"title\": \"MATCH vs LA MORALEJA\", \"eventTimeFinal\": \"2019-02-10\", \"eventTimeInitial\": \"2019-02-10\"}, \"73\": {\"id\": 73, \"type\": \"Sociales_GOLF\", \"title\": \"JUVENIL\", \"eventTimeFinal\": \"2019-02-16\", \"eventTimeInitial\": \"2019-02-16\"}, \"74\": {\"id\": 74, \"type\": \"Sociales_GOLF\", \"title\": \"HCPS ALTOS\", \"eventTimeFinal\": \"2019-02-17\", \"eventTimeInitial\": \"2019-02-17\"}, \"75\": {\"id\": 75, \"type\": \"Sociales_GOLF\", \"title\": \"MATCH vs LA HERRERIA\", \"eventTimeFinal\": \"2019-02-17\", \"eventTimeInitial\": \"2019-02-17\"}, \"76\": {\"id\": 76, \"type\": \"Sociales_GOLF\", \"title\": \"PUNTUABLE D/C\", \"eventTimeFinal\": \"2019-02-20\", \"eventTimeInitial\": \"2019-02-20\"}, \"77\": {\"id\": 77, \"type\": \"Sociales_GOLF\", \"title\": \"HDCPS ALTOS\", \"eventTimeFinal\": \"2019-02-23\", \"eventTimeInitial\": \"2019-02-23\"}, \"78\": {\"id\": 78, \"type\": \"Sociales_GOLF\", \"title\": \"MACTH vs RETAMARES\", \"eventTimeFinal\": \"2019-02-23\", \"eventTimeInitial\": \"2019-02-23\"}, \"79\": {\"id\": 79, \"type\": \"Sociales_GOLF\", \"title\": \"LIGA DAMAS 9H LARGOS\", \"eventTimeFinal\": \"2019-02-23\", \"eventTimeInitial\": \"2019-02-23\"}, \"80\": {\"id\": 80, \"type\": \"Sociales_GOLF\", \"title\": \"PUNT. JUVENIL 9H LARGOS\", \"eventTimeFinal\": \"2019-02-23\", \"eventTimeInitial\": \"2019-02-23\"}, \"81\": {\"id\": 81, \"type\": \"Sociales_GOLF\", \"title\": \"JUVENIL\", \"eventTimeFinal\": \"2019-02-24\", \"eventTimeInitial\": \"2019-02-24\"}, \"82\": {\"id\": 82, \"type\": \"Sociales_GOLF\", \"title\": \"LIGA DAMAS P3\", \"eventTimeFinal\": \"2019-03-02\", \"eventTimeInitial\": \"2019-03-02\"}, \"83\": {\"id\": 83, \"type\": \"Sociales_GOLF\", \"title\": \"PUNT. JUVENIL P3\", \"eventTimeFinal\": \"2019-03-02\", \"eventTimeInitial\": \"2019-03-02\"}, \"84\": {\"id\": 84, \"type\": \"Sociales_GOLF\", \"title\": \"JUVENIL\", \"eventTimeFinal\": \"2019-03-03\", \"eventTimeInitial\": \"2019-03-03\"}, \"92\": {\"id\": 92, \"type\": \"Sociales_GOLF\", \"title\": \"FUNDACION SINDROME DE WEST\", \"eventTimeFinal\": \"2019-03-09\", \"eventTimeInitial\": \"2019-03-09\"}, \"93\": {\"id\": 93, \"type\": \"Sociales_GOLF\", \"title\": \"LIGA DAMAS\", \"eventTimeFinal\": \"2019-03-09\", \"eventTimeInitial\": \"2019-03-09\"}, \"94\": {\"id\": 94, \"type\": \"Sociales_GOLF\", \"title\": \"PUNT. JUVENIL P3\", \"eventTimeFinal\": \"2019-03-09\", \"eventTimeInitial\": \"2019-03-09\"}, \"95\": {\"id\": 95, \"type\": \"Sociales_GOLF\", \"title\": \"SOCIAL\", \"eventTimeFinal\": \"2019-03-10\", \"eventTimeInitial\": \"2019-03-10\"}, \"96\": {\"id\": 96, \"type\": \"Sociales_GOLF\", \"title\": \"SOCIAL DAMAS\", \"eventTimeFinal\": \"2019-03-11\", \"eventTimeInitial\": \"2019-03-11\"}, \"97\": {\"id\": 97, \"type\": \"Sociales_GOLF\", \"title\": \"MAPFREeeeeeee\", \"eventTimeFinal\": \"2019-03-16\", \"eventTimeInitial\": \"2019-03-16\"}, \"98\": {\"id\": 98, \"type\": \"Sociales_GOLF\", \"title\": \"SOCIAL\", \"eventTimeFinal\": \"2019-03-17\", \"eventTimeInitial\": \"2019-03-17\"}, \"99\": {\"id\": 99, \"type\": \"Sociales_GOLF\", \"title\": \"PUNTUABLE D/C\", \"eventTimeFinal\": \"2019-03-20\", \"eventTimeInitial\": \"2019-03-20\"}, \"101\": {\"id\": 101, \"type\": \"Sociales_GOLF\", \"title\": \"XVI LUIS GOMEZ ECCHEVARRIA (1ª CAT. CAB. Y DAMAS)\", \"eventTimeFinal\": \"2019-03-23\", \"eventTimeInitial\": \"2019-03-23\"}, \"102\": {\"id\": 102, \"type\": \"Sociales_GOLF\", \"title\": \"LIGA DAMAS 9 LARGOS\", \"eventTimeFinal\": \"2019-03-23\", \"eventTimeInitial\": \"2019-03-23\"}, \"103\": {\"id\": 103, \"type\": \"Sociales_GOLF\", \"title\": \"XVI LUIS GOMEZ ECHEVARRIA (2ª CAT. CAB.)\", \"eventTimeFinal\": \"2019-03-24\", \"eventTimeInitial\": \"2019-03-24\"}, \"104\": {\"id\": 104, \"type\": \"FIESTAS_LABORALES\", \"title\": \"SEMANA SANTA\", \"eventTimeFinal\": \"2019-04-21\", \"eventTimeInitial\": \"2019-04-18\"}, \"105\": {\"id\": 105, \"type\": \"Sociales_GOLF\", \"title\": \"LIGA DAMAS\", \"eventTimeFinal\": \"2019-04-28\", \"eventTimeInitial\": \"2019-04-28\"}, \"106\": {\"id\": 106, \"type\": \"Sociales_GOLF\", \"title\": \"PUNT. JUVENIL P3\", \"eventTimeFinal\": \"2019-04-28\", \"eventTimeInitial\": \"2019-04-28\"}, \"107\": {\"id\": 107, \"type\": \"FIESTAS_LABORALES\", \"title\": \"DIAL DEL TRABAJADOR\", \"eventTimeFinal\": \"2019-05-01\", \"eventTimeInitial\": \"2019-05-01\"}, \"110\": {\"id\": 110, \"type\": \"FIESTAS_LABORALES\", \"title\": \"COMUNIDAD DE MADRID\", \"eventTimeFinal\": \"2019-05-02\", \"eventTimeInitial\": \"2019-05-02\"}, \"111\": {\"id\": 111, \"type\": \"Sociales_GOLF\", \"title\": \"DIA DE LA MADRE (9 HOYOS LARGOS Y P3)\", \"eventTimeFinal\": \"2019-05-04\", \"eventTimeInitial\": \"2019-05-04\"}, \"112\": {\"id\": 112, \"type\": \"Sociales_GOLF\", \"title\": \"MAHOU\", \"eventTimeFinal\": \"2019-05-11\", \"eventTimeInitial\": \"2019-05-11\"}, \"113\": {\"id\": 113, \"type\": \"Sociales_GOLF\", \"title\": \"LIGA DAMAS 9H LARGOS\", \"eventTimeFinal\": \"2019-05-11\", \"eventTimeInitial\": \"2019-05-11\"}, \"114\": {\"id\": 114, \"type\": \"Sociales_GOLF\", \"title\": \"PUNT. JUVENIL 9 LARGOS\", \"eventTimeFinal\": \"2019-05-11\", \"eventTimeInitial\": \"2019-05-11\"}, \"115\": {\"id\": 115, \"type\": \"Sociales_GOLF\", \"title\": \"SOCIAL\", \"eventTimeFinal\": \"2019-05-12\", \"eventTimeInitial\": \"2019-05-12\"}, \"116\": {\"id\": 116, \"type\": \"Sociales_GOLF\", \"title\": \"SOCIAL DAMAS\", \"eventTimeFinal\": \"2019-05-13\", \"eventTimeInitial\": \"2019-05-13\"}, \"117\": {\"id\": 117, \"type\": \"Sociales_GOLF\", \"title\": \"CTO. RSHECC 1ª Y 2ª CAB. (WAGR)\", \"eventTimeFinal\": \"2019-05-19\", \"eventTimeInitial\": \"2019-05-17\"}, \"118\": {\"id\": 118, \"type\": \"Sociales_GOLF\", \"title\": \"SENIORES CABALLEROS\", \"eventTimeFinal\": \"2019-05-22\", \"eventTimeInitial\": \"2019-05-22\"}, \"119\": {\"id\": 119, \"type\": \"Sociales_GOLF\", \"title\": \"CT. RSHECC SENIORES CAB.\", \"eventTimeFinal\": \"2019-05-25\", \"eventTimeInitial\": \"2019-05-25\"}, \"120\": {\"id\": 120, \"type\": \"Sociales_GOLF\", \"title\": \"CTO. RSHECC SENIOR DAMAS\", \"eventTimeFinal\": \"2019-05-25\", \"eventTimeInitial\": \"2019-05-25\"}, \"121\": {\"id\": 121, \"type\": \"Sociales_GOLF\", \"title\": \"LIGA DAMAS\", \"eventTimeFinal\": \"2019-05-25\", \"eventTimeInitial\": \"2019-05-25\"}, \"122\": {\"id\": 122, \"type\": \"Sociales_GOLF\", \"title\": \"PUNT. JUVENIL 9LARGOS\", \"eventTimeFinal\": \"2019-05-25\", \"eventTimeInitial\": \"2019-05-25\"}, \"123\": {\"id\": 123, \"type\": \"Sociales_GOLF\", \"title\": \"BENÉFICO\", \"eventTimeFinal\": \"2019-05-26\", \"eventTimeInitial\": \"2019-05-26\"}, \"124\": {\"id\": 124, \"type\": \"Sociales_GOLF\", \"title\": \"INTERCLUBES DAMAS\", \"eventTimeFinal\": \"2019-05-26\", \"eventTimeInitial\": \"2019-05-26\"}, \"125\": {\"id\": 125, \"type\": \"Sociales_GOLF\", \"title\": \"CIRCUITO 6 CLUBES SENIORES CAB.\", \"eventTimeFinal\": \"2019-05-28\", \"eventTimeInitial\": \"2019-05-28\"}, \"126\": {\"id\": 126, \"type\": \"Sociales_GOLF\", \"title\": \"PUNTUABLE D/C\", \"eventTimeFinal\": \"2019-05-29\", \"eventTimeInitial\": \"2019-05-29\"}, \"127\": {\"id\": 127, \"type\": \"Sociales_GOLF\", \"title\": \"CTO. RSHECC 3ª Y 4ª CAB.\", \"eventTimeFinal\": \"2019-06-02\", \"eventTimeInitial\": \"2019-06-01\"}, \"128\": {\"id\": 128, \"type\": \"Sociales_GOLF\", \"title\": \"CTO. RSHECC DAMAS\", \"eventTimeFinal\": \"2019-06-01\", \"eventTimeInitial\": \"2019-06-01\"}, \"129\": {\"id\": 129, \"type\": \"Sociales_GOLF\", \"title\": \"SOCIAL DAMAS\", \"eventTimeFinal\": \"2019-06-03\", \"eventTimeInitial\": \"2019-06-03\"}, \"130\": {\"id\": 130, \"type\": \"Sociales_GOLF\", \"title\": \"SENIORES CABALLEROS\", \"eventTimeFinal\": \"2019-06-05\", \"eventTimeInitial\": \"2019-06-05\"}, \"131\": {\"id\": 131, \"type\": \"Sociales_GOLF\", \"title\": \"CTO. RSHECC IND. DAMAS\", \"eventTimeFinal\": \"2019-06-08\", \"eventTimeInitial\": \"2019-06-08\"}, \"132\": {\"id\": 132, \"type\": \"Sociales_GOLF\", \"title\": \"CTO. RSHECC JUVENIL\", \"eventTimeFinal\": \"2019-06-09\", \"eventTimeInitial\": \"2019-06-09\"}, \"133\": {\"id\": 133, \"type\": \"Sociales_GOLF\", \"title\": \"PUNTUABLE D/C\", \"eventTimeFinal\": \"2019-06-12\", \"eventTimeInitial\": \"2019-06-12\"}, \"134\": {\"id\": 134, \"type\": \"Sociales_GOLF\", \"title\": \"INFINITI\", \"eventTimeFinal\": \"2019-06-16\", \"eventTimeInitial\": \"2019-06-15\"}, \"135\": {\"id\": 135, \"type\": \"Sociales_GOLF\", \"title\": \"SOCIAL DAMAS\", \"eventTimeFinal\": \"2019-06-17\", \"eventTimeInitial\": \"2019-06-17\"}, \"136\": {\"id\": 136, \"type\": \"Sociales_GOLF\", \"title\": \"SENIORES CABALLEROS\", \"eventTimeFinal\": \"2019-06-19\", \"eventTimeInitial\": \"2019-06-19\"}, \"137\": {\"id\": 137, \"type\": \"Sociales_GOLF\", \"title\": \"MEMORIAL JOAQUIN VEGA DE SEOANE\", \"eventTimeFinal\": \"2019-06-22\", \"eventTimeInitial\": \"2019-06-22\"}, \"138\": {\"id\": 138, \"type\": \"Sociales_GOLF\", \"title\": \"JUVENIL\", \"eventTimeFinal\": \"2019-06-23\", \"eventTimeInitial\": \"2019-06-23\"}, \"139\": {\"id\": 139, \"type\": \"Sociales_GOLF\", \"title\": \"PUNTUABLE D/C\", \"eventTimeFinal\": \"2019-06-26\", \"eventTimeInitial\": \"2019-06-26\"}, \"140\": {\"id\": 140, \"type\": \"Sociales_GOLF\", \"title\": \"PREMIO EQUIPOS DE 4\", \"eventTimeFinal\": \"2019-06-29\", \"eventTimeInitial\": \"2019-06-29\"}, \"141\": {\"id\": 141, \"type\": \"Sociales_GOLF\", \"title\": \"PADRES E HIJOS\", \"eventTimeFinal\": \"2019-06-30\", \"eventTimeInitial\": \"2019-06-30\"}, \"142\": {\"id\": 142, \"type\": \"Sociales_GOLF\", \"title\": \"COPA PRESIDENTES MADRID\", \"eventTimeFinal\": \"2019-07-01\", \"eventTimeInitial\": \"2019-07-01\"}, \"143\": {\"id\": 143, \"type\": \"Sociales_GOLF\", \"title\": \"CTO. FGM SUB25, SUB18 Y CADETE\", \"eventTimeFinal\": \"2019-07-04\", \"eventTimeInitial\": \"2019-07-02\"}, \"144\": {\"id\": 144, \"type\": \"Sociales_GOLF\", \"title\": \"AUDI QUATTRO CUP\", \"eventTimeFinal\": \"2019-07-06\", \"eventTimeInitial\": \"2019-07-06\"}, \"145\": {\"id\": 145, \"type\": \"Sociales_GOLF\", \"title\": \"III MEMORIAL FERNANDO SATRUSTEGUI\", \"eventTimeFinal\": \"2019-07-07\", \"eventTimeInitial\": \"2019-07-07\"}, \"146\": {\"id\": 146, \"type\": \"Sociales_GOLF\", \"title\": \"CTO. MADRID INTERCLUBES INF.-CADETE\", \"eventTimeFinal\": \"2019-07-10\", \"eventTimeInitial\": \"2019-07-08\"}, \"147\": {\"id\": 147, \"type\": \"Sociales_GOLF\", \"title\": \"GOLF ADAPTADO FGM\", \"eventTimeFinal\": \"2019-07-14\", \"eventTimeInitial\": \"2019-07-14\"}, \"148\": {\"id\": 148, \"type\": \"Sociales_GOLF\", \"title\": \"INTERCLUBS MID-AMATEUR (Copa Marqués de Bolarque)\", \"eventTimeFinal\": \"2019-07-21\", \"eventTimeInitial\": \"2019-07-20\"}, \"149\": {\"id\": 149, \"type\": \"FIESTAS_LABORALES\", \"title\": \"ASUNCION DE LA VIRGEN\", \"eventTimeFinal\": \"2019-08-15\", \"eventTimeInitial\": \"2019-08-15\"}, \"150\": {\"id\": 150, \"type\": \"Sociales_GOLF\", \"title\": \"PADRES E HIJOS\", \"eventTimeFinal\": \"2019-09-21\", \"eventTimeInitial\": \"2019-09-21\"}, \"151\": {\"id\": 151, \"type\": \"Sociales_GOLF\", \"title\": \"MIXTO MATRIMONIOS\", \"eventTimeFinal\": \"2019-09-22\", \"eventTimeInitial\": \"2019-09-22\"}, \"152\": {\"id\": 152, \"type\": \"Sociales_GOLF\", \"title\": \"RYDER PADRES vs HIJOS\", \"eventTimeFinal\": \"2019-09-22\", \"eventTimeInitial\": \"2019-09-22\"}, \"153\": {\"id\": 153, \"type\": \"Sociales_GOLF\", \"title\": \"COPA PRESIDENTE DAMAS Y 1ª CAT. CAB.\", \"eventTimeFinal\": \"2019-09-28\", \"eventTimeInitial\": \"2019-09-28\"}, \"154\": {\"id\": 154, \"type\": \"Sociales_GOLF\", \"title\": \"LIGA DAMAS P3\", \"eventTimeFinal\": \"2019-09-28\", \"eventTimeInitial\": \"2019-09-28\"}, \"155\": {\"id\": 155, \"type\": \"Sociales_GOLF\", \"title\": \"PUNT. JUVENIL\", \"eventTimeFinal\": \"2019-09-28\", \"eventTimeInitial\": \"2019-09-28\"}, \"156\": {\"id\": 156, \"type\": \"Sociales_GOLF\", \"title\": \"COPA PRESIDENTE 2ª CAT. CAB.\", \"eventTimeFinal\": \"2019-09-29\", \"eventTimeInitial\": \"2019-09-29\"}, \"157\": {\"id\": 157, \"type\": \"Sociales_GOLF\", \"title\": \"SENIORES CABALLEROS\", \"eventTimeFinal\": \"2019-10-02\", \"eventTimeInitial\": \"2019-10-02\"}, \"158\": {\"id\": 158, \"type\": \"Sociales_GOLF\", \"title\": \"CLUB SERIES SPONSORY\", \"eventTimeFinal\": \"2019-10-03\", \"eventTimeInitial\": \"2019-10-03\"}, \"159\": {\"id\": 159, \"type\": \"Sociales_GOLF\", \"title\": \"SOCIAL\", \"eventTimeFinal\": \"2019-10-04\", \"eventTimeInitial\": \"2019-10-04\"}, \"160\": {\"id\": 160, \"type\": \"Sociales_GOLF\", \"title\": \"SOCIAL\", \"eventTimeFinal\": \"2019-10-05\", \"eventTimeInitial\": \"2019-10-05\"}, \"161\": {\"id\": 161, \"type\": \"Sociales_GOLF\", \"title\": \"PROFESIONALES FGM\", \"eventTimeFinal\": \"2019-10-07\", \"eventTimeInitial\": \"2019-10-07\"}, \"162\": {\"id\": 162, \"type\": \"Sociales_GOLF\", \"title\": \"PUNTUABLE D/C\", \"eventTimeFinal\": \"2019-10-09\", \"eventTimeInitial\": \"2019-10-09\"}, \"163\": {\"id\": 163, \"type\": \"FIESTAS_LABORALES\", \"title\": \"NTRA. SRA. DEL PILAR\", \"eventTimeFinal\": \"2019-10-12\", \"eventTimeInitial\": \"2019-10-12\"}, \"164\": {\"id\": 164, \"type\": \"Sociales_GOLF\", \"title\": \"JUVENIL\", \"eventTimeFinal\": \"2019-10-12\", \"eventTimeInitial\": \"2019-10-12\"}, \"165\": {\"id\": 165, \"type\": \"Sociales_GOLF\", \"title\": \"SOCIAL OTOÑO\", \"eventTimeFinal\": \"2019-10-13\", \"eventTimeInitial\": \"2019-10-13\"}, \"166\": {\"id\": 166, \"type\": \"Sociales_GOLF\", \"title\": \"LIGA DAMAS P3\", \"eventTimeFinal\": \"2019-10-13\", \"eventTimeInitial\": \"2019-10-13\"}, \"167\": {\"id\": 167, \"type\": \"Sociales_GOLF\", \"title\": \"PUNT. JUVENIL P3\", \"eventTimeFinal\": \"2019-10-13\", \"eventTimeInitial\": \"2019-10-13\"}, \"169\": {\"id\": 169, \"type\": \"Sociales_GOLF\", \"title\": \"CTO. MADRID SENIOR FEMENINO FGM\", \"eventTimeFinal\": \"2019-10-16\", \"eventTimeInitial\": \"2019-10-15\"}, \"170\": {\"id\": 170, \"type\": \"Sociales_GOLF\", \"title\": \"CTO. RSHECC DOBLES CAB.\", \"eventTimeFinal\": \"2019-10-20\", \"eventTimeInitial\": \"2019-10-19\"}, \"171\": {\"id\": 171, \"type\": \"Sociales_GOLF\", \"title\": \"LIGA DAMAS 9LARGOS\", \"eventTimeFinal\": \"2019-10-19\", \"eventTimeInitial\": \"2019-10-19\"}, \"172\": {\"id\": 172, \"type\": \"Sociales_GOLF\", \"title\": \"PUNT. JUVENIL\", \"eventTimeFinal\": \"2019-10-19\", \"eventTimeInitial\": \"2019-10-19\"}, \"173\": {\"id\": 173, \"type\": \"Sociales_GOLF\", \"title\": \"PUNTUABLE D/C\", \"eventTimeFinal\": \"2019-10-23\", \"eventTimeInitial\": \"2019-10-23\"}, \"174\": {\"id\": 174, \"type\": \"Sociales_GOLF\", \"title\": \"MISION COSTA MARFIL\", \"eventTimeFinal\": \"2019-10-26\", \"eventTimeInitial\": \"2019-10-26\"}, \"175\": {\"id\": 175, \"type\": \"Sociales_GOLF\", \"title\": \"LIGA DAMAS 9 LARGOS\", \"eventTimeFinal\": \"2019-10-27\", \"eventTimeInitial\": \"2019-10-27\"}, \"176\": {\"id\": 176, \"type\": \"Sociales_GOLF\", \"title\": \"PUNT. JUVENIL\", \"eventTimeFinal\": \"2019-10-27\", \"eventTimeInitial\": \"2019-10-27\"}, \"177\": {\"id\": 177, \"type\": \"Sociales_GOLF\", \"title\": \"SOCIAL DAMAS\", \"eventTimeFinal\": \"2019-10-28\", \"eventTimeInitial\": \"2019-10-28\"}, \"178\": {\"id\": 178, \"type\": \"Sociales_GOLF\", \"title\": \"SENIORES CABALLEROS\", \"eventTimeFinal\": \"2019-10-30\", \"eventTimeInitial\": \"2019-10-30\"}, \"179\": {\"id\": 179, \"type\": \"FIESTAS_LABORALES\", \"title\": \"TODOS LOS SANTOS\", \"eventTimeFinal\": \"2019-11-01\", \"eventTimeInitial\": \"2019-11-01\"}, \"180\": {\"id\": 180, \"type\": \"Sociales_GOLF\", \"title\": \"PUNTUABLE D/C\", \"eventTimeFinal\": \"2019-11-06\", \"eventTimeInitial\": \"2019-11-06\"}, \"181\": {\"id\": 181, \"type\": \"Sociales_GOLF\", \"title\": \"HDCPS ALTOS\", \"eventTimeFinal\": \"2019-11-09\", \"eventTimeInitial\": \"2019-11-09\"}, \"182\": {\"id\": 182, \"type\": \"Sociales_GOLF\", \"title\": \"LIGA DAMAS 9 LARGOS\", \"eventTimeFinal\": \"2019-11-09\", \"eventTimeInitial\": \"2019-11-09\"}, \"183\": {\"id\": 183, \"type\": \"Sociales_GOLF\", \"title\": \"PUNT. JUVENIL 9 LARGOS\", \"eventTimeFinal\": \"2019-11-09\", \"eventTimeInitial\": \"2019-11-09\"}, \"184\": {\"id\": 184, \"type\": \"Sociales_GOLF\", \"title\": \"JUVENIL\", \"eventTimeFinal\": \"2019-11-10\", \"eventTimeInitial\": \"2019-11-10\"}, \"185\": {\"id\": 185, \"type\": \"Sociales_GOLF\", \"title\": \"SOCIAL DAMAS\", \"eventTimeFinal\": \"2019-11-11\", \"eventTimeInitial\": \"2019-11-11\"}, \"186\": {\"id\": 186, \"type\": \"Sociales_GOLF\", \"title\": \"LIGA DAMAS P3\", \"eventTimeFinal\": \"2019-11-16\", \"eventTimeInitial\": \"2019-11-16\"}, \"187\": {\"id\": 187, \"type\": \"Sociales_GOLF\", \"title\": \"PUNT. JUVENIL P3\", \"eventTimeFinal\": \"2019-11-16\", \"eventTimeInitial\": \"2019-11-16\"}, \"188\": {\"id\": 188, \"type\": \"Sociales_GOLF\", \"title\": \"JUVENIL\", \"eventTimeFinal\": \"2019-11-17\", \"eventTimeInitial\": \"2019-11-17\"}, \"189\": {\"id\": 189, \"type\": \"Sociales_GOLF\", \"title\": \"JUVENIL\", \"eventTimeFinal\": \"2019-11-23\", \"eventTimeInitial\": \"2019-11-23\"}, \"190\": {\"id\": 190, \"type\": \"Sociales_GOLF\", \"title\": \"HDCPS. ALTOS\", \"eventTimeFinal\": \"2019-11-24\", \"eventTimeInitial\": \"2019-11-24\"}, \"191\": {\"id\": 191, \"type\": \"Sociales_GOLF\", \"title\": \"LIGA DAMAS 9 LARGOS\", \"eventTimeFinal\": \"2019-11-24\", \"eventTimeInitial\": \"2019-11-24\"}, \"192\": {\"id\": 192, \"type\": \"Sociales_GOLF\", \"title\": \"PUNT. JUVENIL\", \"eventTimeFinal\": \"2019-11-24\", \"eventTimeInitial\": \"2019-11-24\"}, \"193\": {\"id\": 193, \"type\": \"Sociales_GOLF\", \"title\": \"NAVIDAD DAMAS\", \"eventTimeFinal\": \"2019-11-30\", \"eventTimeInitial\": \"2019-11-30\"}, \"194\": {\"id\": 194, \"type\": \"Sociales_GOLF\", \"title\": \"LIGA DAMAS P3\", \"eventTimeFinal\": \"2019-12-01\", \"eventTimeInitial\": \"2019-12-01\"}, \"195\": {\"id\": 195, \"type\": \"Sociales_GOLF\", \"title\": \"PUNT. JUVENIL\", \"eventTimeFinal\": \"2019-12-01\", \"eventTimeInitial\": \"2019-12-01\"}, \"197\": {\"id\": 197, \"type\": \"FIESTAS_LABORALES\", \"title\": \"DIA DE LA CONSTITUCIÓN \", \"eventTimeFinal\": \"2019-12-06\", \"eventTimeInitial\": \"2019-12-06\"}, \"198\": {\"id\": 198, \"type\": \"Sociales_GOLF\", \"title\": \"NAVIDAD 2ª CAT. CAB.\", \"eventTimeFinal\": \"2019-12-07\", \"eventTimeInitial\": \"2019-12-07\"}, \"199\": {\"id\": 199, \"type\": \"FIESTAS_LABORALES\", \"title\": \"INM. CONCEPCIÓN\", \"eventTimeFinal\": \"2019-12-08\", \"eventTimeInitial\": \"2019-12-08\"}, \"200\": {\"id\": 200, \"type\": \"Sociales_GOLF\", \"title\": \"NAVIDAD JUVENIL\", \"eventTimeFinal\": \"2019-12-08\", \"eventTimeInitial\": \"2019-12-08\"}, \"201\": {\"id\": 201, \"type\": \"Sociales_GOLF\", \"title\": \"NAVIDAD 1ª CAT. CAB.\", \"eventTimeFinal\": \"2019-12-14\", \"eventTimeInitial\": \"2019-12-14\"}, \"202\": {\"id\": 202, \"type\": \"FIESTAS_LABORALES\", \"title\": \"NAVIDAD\", \"eventTimeFinal\": \"2019-12-25\", \"eventTimeInitial\": \"2019-12-25\"}, \"203\": {\"id\": 203, \"type\": \"T._COMERCIALES\", \"title\": \"TOREROS VS GANADEROS\", \"eventTimeFinal\": \"2019-03-21\", \"eventTimeInitial\": \"2019-03-21\"}, \"207\": {\"id\": 207, \"type\": \"BRIDGE\", \"title\": \"dddd\", \"eventTimeFinal\": \"2019-04-02\", \"eventTimeInitial\": \"2019-04-02\"}, \"208\": {\"id\": 208, \"type\": \"BRIDGE\", \"title\": \"saasfdass\", \"eventTimeFinal\": \"2019-06-24\", \"eventTimeInitial\": \"2019-06-24\"}}, \"eventsTypes\": {\"BRIDGE\": {\"color\": \"rgba(64, 0, 128, 1)\", \"colorWord\": \"rgba(255, 255, 255, 1)\"}, \"HÍPICA\": {\"color\": \"rgba(128, 64, 0, 1)\", \"colorWord\": \"rgba(255, 255, 255, 1)\"}, \"MALLORCA\": {\"color\": \"rgba(255, 128, 192, 1)\", \"colorWord\": \"rgba(0, 0, 0, 1)\"}, \"Eventos_CLUB\": {\"color\": \"rgba(255, 0, 0, 1)\", \"colorWord\": \"rgba(255, 255, 255, 1)\"}, \"Sociales_GOLF\": {\"color\": \"rgba(255, 255, 0, 1)\", \"colorWord\": \"rgba(0, 0, 0, 1)\"}, \"T._COMERCIALES\": {\"color\": \"rgba(255, 0, 128, 1)\", \"colorWord\": \"rgba(0, 0, 0, 1)\"}, \"Torneo_CROQUET\": {\"color\": \"rgba(0, 0, 0, 1)\", \"colorWord\": \"rgba(255, 255, 255, 1)\"}, \"FIESTAS_LABORALES\": {\"color\": \"rgba(128, 128, 128, 1)\", \"colorWord\": \"rgba(255, 255, 255, 1)\"}}, \"specialDays\": {\"CSur\": [\"2019-2-6\", \"2019-2-13\", \"2019-2-14\", \"2019-2-7\"], \"Criket\": [\"2019-2-13\", \"2019-2-20\", \"2019-2-21\", \"2019-2-14\"]}, \"eventslength\": 208}');
/*!40000 ALTER TABLE `eventos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-14 20:05:27
-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: sys
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
-- Temporary table structure for view `host_summary`
--

DROP TABLE IF EXISTS `host_summary`;
/*!50001 DROP VIEW IF EXISTS `host_summary`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `host_summary` AS SELECT 
 1 AS `host`,
 1 AS `statements`,
 1 AS `statement_latency`,
 1 AS `statement_avg_latency`,
 1 AS `table_scans`,
 1 AS `file_ios`,
 1 AS `file_io_latency`,
 1 AS `current_connections`,
 1 AS `total_connections`,
 1 AS `unique_users`,
 1 AS `current_memory`,
 1 AS `total_memory_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `host_summary_by_file_io`
--

DROP TABLE IF EXISTS `host_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `host_summary_by_file_io` AS SELECT 
 1 AS `host`,
 1 AS `ios`,
 1 AS `io_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `host_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `host_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `host_summary_by_file_io_type` AS SELECT 
 1 AS `host`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `host_summary_by_stages`
--

DROP TABLE IF EXISTS `host_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `host_summary_by_stages` AS SELECT 
 1 AS `host`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `host_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `host_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `host_summary_by_statement_latency` AS SELECT 
 1 AS `host`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `host_summary_by_statement_type`
--

DROP TABLE IF EXISTS `host_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `host_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `host_summary_by_statement_type` AS SELECT 
 1 AS `host`,
 1 AS `statement`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `innodb_buffer_stats_by_schema`
--

DROP TABLE IF EXISTS `innodb_buffer_stats_by_schema`;
/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_schema`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `innodb_buffer_stats_by_schema` AS SELECT 
 1 AS `object_schema`,
 1 AS `allocated`,
 1 AS `data`,
 1 AS `pages`,
 1 AS `pages_hashed`,
 1 AS `pages_old`,
 1 AS `rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `innodb_buffer_stats_by_table`
--

DROP TABLE IF EXISTS `innodb_buffer_stats_by_table`;
/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_table`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `innodb_buffer_stats_by_table` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `allocated`,
 1 AS `data`,
 1 AS `pages`,
 1 AS `pages_hashed`,
 1 AS `pages_old`,
 1 AS `rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `innodb_lock_waits`
--

DROP TABLE IF EXISTS `innodb_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `innodb_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `innodb_lock_waits` AS SELECT 
 1 AS `wait_started`,
 1 AS `wait_age`,
 1 AS `wait_age_secs`,
 1 AS `locked_table`,
 1 AS `locked_index`,
 1 AS `locked_type`,
 1 AS `waiting_trx_id`,
 1 AS `waiting_trx_started`,
 1 AS `waiting_trx_age`,
 1 AS `waiting_trx_rows_locked`,
 1 AS `waiting_trx_rows_modified`,
 1 AS `waiting_pid`,
 1 AS `waiting_query`,
 1 AS `waiting_lock_id`,
 1 AS `waiting_lock_mode`,
 1 AS `blocking_trx_id`,
 1 AS `blocking_pid`,
 1 AS `blocking_query`,
 1 AS `blocking_lock_id`,
 1 AS `blocking_lock_mode`,
 1 AS `blocking_trx_started`,
 1 AS `blocking_trx_age`,
 1 AS `blocking_trx_rows_locked`,
 1 AS `blocking_trx_rows_modified`,
 1 AS `sql_kill_blocking_query`,
 1 AS `sql_kill_blocking_connection`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `io_by_thread_by_latency`
--

DROP TABLE IF EXISTS `io_by_thread_by_latency`;
/*!50001 DROP VIEW IF EXISTS `io_by_thread_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `io_by_thread_by_latency` AS SELECT 
 1 AS `user`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `thread_id`,
 1 AS `processlist_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `io_global_by_file_by_bytes`
--

DROP TABLE IF EXISTS `io_global_by_file_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `io_global_by_file_by_bytes` AS SELECT 
 1 AS `file`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_write`,
 1 AS `total`,
 1 AS `write_pct`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `io_global_by_file_by_latency`
--

DROP TABLE IF EXISTS `io_global_by_file_by_latency`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `io_global_by_file_by_latency` AS SELECT 
 1 AS `file`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `count_read`,
 1 AS `read_latency`,
 1 AS `count_write`,
 1 AS `write_latency`,
 1 AS `count_misc`,
 1 AS `misc_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `io_global_by_wait_by_bytes`
--

DROP TABLE IF EXISTS `io_global_by_wait_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `io_global_by_wait_by_bytes` AS SELECT 
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_written`,
 1 AS `total_requested`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `io_global_by_wait_by_latency`
--

DROP TABLE IF EXISTS `io_global_by_wait_by_latency`;
/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `io_global_by_wait_by_latency` AS SELECT 
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `read_latency`,
 1 AS `write_latency`,
 1 AS `misc_latency`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_written`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `latest_file_io`
--

DROP TABLE IF EXISTS `latest_file_io`;
/*!50001 DROP VIEW IF EXISTS `latest_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `latest_file_io` AS SELECT 
 1 AS `thread`,
 1 AS `file`,
 1 AS `latency`,
 1 AS `operation`,
 1 AS `requested`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `memory_by_host_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_by_host_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_by_host_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `memory_by_host_by_current_bytes` AS SELECT 
 1 AS `host`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `memory_by_thread_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_by_thread_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_by_thread_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `memory_by_thread_by_current_bytes` AS SELECT 
 1 AS `thread_id`,
 1 AS `user`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `memory_by_user_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_by_user_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_by_user_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `memory_by_user_by_current_bytes` AS SELECT 
 1 AS `user`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `memory_global_by_current_bytes`
--

DROP TABLE IF EXISTS `memory_global_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `memory_global_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `memory_global_by_current_bytes` AS SELECT 
 1 AS `event_name`,
 1 AS `current_count`,
 1 AS `current_alloc`,
 1 AS `current_avg_alloc`,
 1 AS `high_count`,
 1 AS `high_alloc`,
 1 AS `high_avg_alloc`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `memory_global_total`
--

DROP TABLE IF EXISTS `memory_global_total`;
/*!50001 DROP VIEW IF EXISTS `memory_global_total`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `memory_global_total` AS SELECT 
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `metrics`
--

DROP TABLE IF EXISTS `metrics`;
/*!50001 DROP VIEW IF EXISTS `metrics`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `metrics` AS SELECT 
 1 AS `Variable_name`,
 1 AS `Variable_value`,
 1 AS `Type`,
 1 AS `Enabled`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `processlist`
--

DROP TABLE IF EXISTS `processlist`;
/*!50001 DROP VIEW IF EXISTS `processlist`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `processlist` AS SELECT 
 1 AS `thd_id`,
 1 AS `conn_id`,
 1 AS `user`,
 1 AS `db`,
 1 AS `command`,
 1 AS `state`,
 1 AS `time`,
 1 AS `current_statement`,
 1 AS `statement_latency`,
 1 AS `progress`,
 1 AS `lock_latency`,
 1 AS `rows_examined`,
 1 AS `rows_sent`,
 1 AS `rows_affected`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `full_scan`,
 1 AS `last_statement`,
 1 AS `last_statement_latency`,
 1 AS `current_memory`,
 1 AS `last_wait`,
 1 AS `last_wait_latency`,
 1 AS `source`,
 1 AS `trx_latency`,
 1 AS `trx_state`,
 1 AS `trx_autocommit`,
 1 AS `pid`,
 1 AS `program_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `ps_check_lost_instrumentation`
--

DROP TABLE IF EXISTS `ps_check_lost_instrumentation`;
/*!50001 DROP VIEW IF EXISTS `ps_check_lost_instrumentation`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `ps_check_lost_instrumentation` AS SELECT 
 1 AS `variable_name`,
 1 AS `variable_value`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `schema_auto_increment_columns`
--

DROP TABLE IF EXISTS `schema_auto_increment_columns`;
/*!50001 DROP VIEW IF EXISTS `schema_auto_increment_columns`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `schema_auto_increment_columns` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `column_name`,
 1 AS `data_type`,
 1 AS `column_type`,
 1 AS `is_signed`,
 1 AS `is_unsigned`,
 1 AS `max_value`,
 1 AS `auto_increment`,
 1 AS `auto_increment_ratio`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `schema_index_statistics`
--

DROP TABLE IF EXISTS `schema_index_statistics`;
/*!50001 DROP VIEW IF EXISTS `schema_index_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `schema_index_statistics` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `index_name`,
 1 AS `rows_selected`,
 1 AS `select_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `schema_object_overview`
--

DROP TABLE IF EXISTS `schema_object_overview`;
/*!50001 DROP VIEW IF EXISTS `schema_object_overview`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `schema_object_overview` AS SELECT 
 1 AS `db`,
 1 AS `object_type`,
 1 AS `count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `schema_redundant_indexes`
--

DROP TABLE IF EXISTS `schema_redundant_indexes`;
/*!50001 DROP VIEW IF EXISTS `schema_redundant_indexes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `schema_redundant_indexes` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `redundant_index_name`,
 1 AS `redundant_index_columns`,
 1 AS `redundant_index_non_unique`,
 1 AS `dominant_index_name`,
 1 AS `dominant_index_columns`,
 1 AS `dominant_index_non_unique`,
 1 AS `subpart_exists`,
 1 AS `sql_drop_index`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `schema_table_lock_waits`
--

DROP TABLE IF EXISTS `schema_table_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `schema_table_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `schema_table_lock_waits` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `waiting_thread_id`,
 1 AS `waiting_pid`,
 1 AS `waiting_account`,
 1 AS `waiting_lock_type`,
 1 AS `waiting_lock_duration`,
 1 AS `waiting_query`,
 1 AS `waiting_query_secs`,
 1 AS `waiting_query_rows_affected`,
 1 AS `waiting_query_rows_examined`,
 1 AS `blocking_thread_id`,
 1 AS `blocking_pid`,
 1 AS `blocking_account`,
 1 AS `blocking_lock_type`,
 1 AS `blocking_lock_duration`,
 1 AS `sql_kill_blocking_query`,
 1 AS `sql_kill_blocking_connection`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `schema_table_statistics`
--

DROP TABLE IF EXISTS `schema_table_statistics`;
/*!50001 DROP VIEW IF EXISTS `schema_table_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `schema_table_statistics` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `total_latency`,
 1 AS `rows_fetched`,
 1 AS `fetch_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`,
 1 AS `io_read_requests`,
 1 AS `io_read`,
 1 AS `io_read_latency`,
 1 AS `io_write_requests`,
 1 AS `io_write`,
 1 AS `io_write_latency`,
 1 AS `io_misc_requests`,
 1 AS `io_misc_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `schema_table_statistics_with_buffer`
--

DROP TABLE IF EXISTS `schema_table_statistics_with_buffer`;
/*!50001 DROP VIEW IF EXISTS `schema_table_statistics_with_buffer`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `schema_table_statistics_with_buffer` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `rows_fetched`,
 1 AS `fetch_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`,
 1 AS `io_read_requests`,
 1 AS `io_read`,
 1 AS `io_read_latency`,
 1 AS `io_write_requests`,
 1 AS `io_write`,
 1 AS `io_write_latency`,
 1 AS `io_misc_requests`,
 1 AS `io_misc_latency`,
 1 AS `innodb_buffer_allocated`,
 1 AS `innodb_buffer_data`,
 1 AS `innodb_buffer_free`,
 1 AS `innodb_buffer_pages`,
 1 AS `innodb_buffer_pages_hashed`,
 1 AS `innodb_buffer_pages_old`,
 1 AS `innodb_buffer_rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `schema_tables_with_full_table_scans`
--

DROP TABLE IF EXISTS `schema_tables_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `schema_tables_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `schema_tables_with_full_table_scans` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `rows_full_scanned`,
 1 AS `latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `schema_unused_indexes`
--

DROP TABLE IF EXISTS `schema_unused_indexes`;
/*!50001 DROP VIEW IF EXISTS `schema_unused_indexes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `schema_unused_indexes` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `index_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `session`
--

DROP TABLE IF EXISTS `session`;
/*!50001 DROP VIEW IF EXISTS `session`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `session` AS SELECT 
 1 AS `thd_id`,
 1 AS `conn_id`,
 1 AS `user`,
 1 AS `db`,
 1 AS `command`,
 1 AS `state`,
 1 AS `time`,
 1 AS `current_statement`,
 1 AS `statement_latency`,
 1 AS `progress`,
 1 AS `lock_latency`,
 1 AS `rows_examined`,
 1 AS `rows_sent`,
 1 AS `rows_affected`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `full_scan`,
 1 AS `last_statement`,
 1 AS `last_statement_latency`,
 1 AS `current_memory`,
 1 AS `last_wait`,
 1 AS `last_wait_latency`,
 1 AS `source`,
 1 AS `trx_latency`,
 1 AS `trx_state`,
 1 AS `trx_autocommit`,
 1 AS `pid`,
 1 AS `program_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `session_ssl_status`
--

DROP TABLE IF EXISTS `session_ssl_status`;
/*!50001 DROP VIEW IF EXISTS `session_ssl_status`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `session_ssl_status` AS SELECT 
 1 AS `thread_id`,
 1 AS `ssl_version`,
 1 AS `ssl_cipher`,
 1 AS `ssl_sessions_reused`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `statement_analysis`
--

DROP TABLE IF EXISTS `statement_analysis`;
/*!50001 DROP VIEW IF EXISTS `statement_analysis`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `statement_analysis` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `full_scan`,
 1 AS `exec_count`,
 1 AS `err_count`,
 1 AS `warn_count`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `avg_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined`,
 1 AS `rows_examined_avg`,
 1 AS `rows_affected`,
 1 AS `rows_affected_avg`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `rows_sorted`,
 1 AS `sort_merge_passes`,
 1 AS `digest`,
 1 AS `first_seen`,
 1 AS `last_seen`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `statements_with_errors_or_warnings`
--

DROP TABLE IF EXISTS `statements_with_errors_or_warnings`;
/*!50001 DROP VIEW IF EXISTS `statements_with_errors_or_warnings`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `statements_with_errors_or_warnings` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `errors`,
 1 AS `error_pct`,
 1 AS `warnings`,
 1 AS `warning_pct`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `statements_with_full_table_scans`
--

DROP TABLE IF EXISTS `statements_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `statements_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `statements_with_full_table_scans` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `no_index_used_count`,
 1 AS `no_good_index_used_count`,
 1 AS `no_index_used_pct`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined_avg`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `statements_with_runtimes_in_95th_percentile`
--

DROP TABLE IF EXISTS `statements_with_runtimes_in_95th_percentile`;
/*!50001 DROP VIEW IF EXISTS `statements_with_runtimes_in_95th_percentile`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `statements_with_runtimes_in_95th_percentile` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `full_scan`,
 1 AS `exec_count`,
 1 AS `err_count`,
 1 AS `warn_count`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `avg_latency`,
 1 AS `rows_sent`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined`,
 1 AS `rows_examined_avg`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `statements_with_sorting`
--

DROP TABLE IF EXISTS `statements_with_sorting`;
/*!50001 DROP VIEW IF EXISTS `statements_with_sorting`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `statements_with_sorting` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `sort_merge_passes`,
 1 AS `avg_sort_merges`,
 1 AS `sorts_using_scans`,
 1 AS `sort_using_range`,
 1 AS `rows_sorted`,
 1 AS `avg_rows_sorted`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `statements_with_temp_tables`
--

DROP TABLE IF EXISTS `statements_with_temp_tables`;
/*!50001 DROP VIEW IF EXISTS `statements_with_temp_tables`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `statements_with_temp_tables` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `memory_tmp_tables`,
 1 AS `disk_tmp_tables`,
 1 AS `avg_tmp_tables_per_query`,
 1 AS `tmp_tables_to_disk_pct`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_config` (
  `variable` varchar(128) NOT NULL,
  `value` varchar(128) DEFAULT NULL,
  `set_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `set_by` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`variable`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES ('diagnostics.allow_i_s_tables','OFF','2018-06-14 20:44:10',NULL),('diagnostics.include_raw','OFF','2018-06-14 20:44:10',NULL),('ps_thread_trx_info.max_length','65535','2018-06-14 20:44:10',NULL),('statement_performance_analyzer.limit','100','2018-06-14 20:44:10',NULL),('statement_performance_analyzer.view',NULL,'2018-06-14 20:44:10',NULL),('statement_truncate_len','64','2018-06-14 20:44:10',NULL);
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `user_summary`
--

DROP TABLE IF EXISTS `user_summary`;
/*!50001 DROP VIEW IF EXISTS `user_summary`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `user_summary` AS SELECT 
 1 AS `user`,
 1 AS `statements`,
 1 AS `statement_latency`,
 1 AS `statement_avg_latency`,
 1 AS `table_scans`,
 1 AS `file_ios`,
 1 AS `file_io_latency`,
 1 AS `current_connections`,
 1 AS `total_connections`,
 1 AS `unique_hosts`,
 1 AS `current_memory`,
 1 AS `total_memory_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `user_summary_by_file_io`
--

DROP TABLE IF EXISTS `user_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `user_summary_by_file_io` AS SELECT 
 1 AS `user`,
 1 AS `ios`,
 1 AS `io_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `user_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `user_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `user_summary_by_file_io_type` AS SELECT 
 1 AS `user`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `user_summary_by_stages`
--

DROP TABLE IF EXISTS `user_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `user_summary_by_stages` AS SELECT 
 1 AS `user`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `user_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `user_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `user_summary_by_statement_latency` AS SELECT 
 1 AS `user`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `user_summary_by_statement_type`
--

DROP TABLE IF EXISTS `user_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `user_summary_by_statement_type` AS SELECT 
 1 AS `user`,
 1 AS `statement`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `version`
--

DROP TABLE IF EXISTS `version`;
/*!50001 DROP VIEW IF EXISTS `version`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `version` AS SELECT 
 1 AS `sys_version`,
 1 AS `mysql_version`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `wait_classes_global_by_avg_latency`
--

DROP TABLE IF EXISTS `wait_classes_global_by_avg_latency`;
/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_avg_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `wait_classes_global_by_avg_latency` AS SELECT 
 1 AS `event_class`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `wait_classes_global_by_latency`
--

DROP TABLE IF EXISTS `wait_classes_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `wait_classes_global_by_latency` AS SELECT 
 1 AS `event_class`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `waits_by_host_by_latency`
--

DROP TABLE IF EXISTS `waits_by_host_by_latency`;
/*!50001 DROP VIEW IF EXISTS `waits_by_host_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `waits_by_host_by_latency` AS SELECT 
 1 AS `host`,
 1 AS `event`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `waits_by_user_by_latency`
--

DROP TABLE IF EXISTS `waits_by_user_by_latency`;
/*!50001 DROP VIEW IF EXISTS `waits_by_user_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `waits_by_user_by_latency` AS SELECT 
 1 AS `user`,
 1 AS `event`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `waits_global_by_latency`
--

DROP TABLE IF EXISTS `waits_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `waits_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `waits_global_by_latency` AS SELECT 
 1 AS `events`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$host_summary`
--

DROP TABLE IF EXISTS `x$host_summary`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$host_summary` AS SELECT 
 1 AS `host`,
 1 AS `statements`,
 1 AS `statement_latency`,
 1 AS `statement_avg_latency`,
 1 AS `table_scans`,
 1 AS `file_ios`,
 1 AS `file_io_latency`,
 1 AS `current_connections`,
 1 AS `total_connections`,
 1 AS `unique_users`,
 1 AS `current_memory`,
 1 AS `total_memory_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$host_summary_by_file_io`
--

DROP TABLE IF EXISTS `x$host_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$host_summary_by_file_io` AS SELECT 
 1 AS `host`,
 1 AS `ios`,
 1 AS `io_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$host_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `x$host_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$host_summary_by_file_io_type` AS SELECT 
 1 AS `host`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$host_summary_by_stages`
--

DROP TABLE IF EXISTS `x$host_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$host_summary_by_stages` AS SELECT 
 1 AS `host`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$host_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `x$host_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$host_summary_by_statement_latency` AS SELECT 
 1 AS `host`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$host_summary_by_statement_type`
--

DROP TABLE IF EXISTS `x$host_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$host_summary_by_statement_type` AS SELECT 
 1 AS `host`,
 1 AS `statement`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$innodb_buffer_stats_by_schema`
--

DROP TABLE IF EXISTS `x$innodb_buffer_stats_by_schema`;
/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_schema`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$innodb_buffer_stats_by_schema` AS SELECT 
 1 AS `object_schema`,
 1 AS `allocated`,
 1 AS `data`,
 1 AS `pages`,
 1 AS `pages_hashed`,
 1 AS `pages_old`,
 1 AS `rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$innodb_buffer_stats_by_table`
--

DROP TABLE IF EXISTS `x$innodb_buffer_stats_by_table`;
/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_table`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$innodb_buffer_stats_by_table` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `allocated`,
 1 AS `data`,
 1 AS `pages`,
 1 AS `pages_hashed`,
 1 AS `pages_old`,
 1 AS `rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$innodb_lock_waits`
--

DROP TABLE IF EXISTS `x$innodb_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `x$innodb_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$innodb_lock_waits` AS SELECT 
 1 AS `wait_started`,
 1 AS `wait_age`,
 1 AS `wait_age_secs`,
 1 AS `locked_table`,
 1 AS `locked_index`,
 1 AS `locked_type`,
 1 AS `waiting_trx_id`,
 1 AS `waiting_trx_started`,
 1 AS `waiting_trx_age`,
 1 AS `waiting_trx_rows_locked`,
 1 AS `waiting_trx_rows_modified`,
 1 AS `waiting_pid`,
 1 AS `waiting_query`,
 1 AS `waiting_lock_id`,
 1 AS `waiting_lock_mode`,
 1 AS `blocking_trx_id`,
 1 AS `blocking_pid`,
 1 AS `blocking_query`,
 1 AS `blocking_lock_id`,
 1 AS `blocking_lock_mode`,
 1 AS `blocking_trx_started`,
 1 AS `blocking_trx_age`,
 1 AS `blocking_trx_rows_locked`,
 1 AS `blocking_trx_rows_modified`,
 1 AS `sql_kill_blocking_query`,
 1 AS `sql_kill_blocking_connection`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$io_by_thread_by_latency`
--

DROP TABLE IF EXISTS `x$io_by_thread_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$io_by_thread_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$io_by_thread_by_latency` AS SELECT 
 1 AS `user`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `thread_id`,
 1 AS `processlist_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$io_global_by_file_by_bytes`
--

DROP TABLE IF EXISTS `x$io_global_by_file_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$io_global_by_file_by_bytes` AS SELECT 
 1 AS `file`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_write`,
 1 AS `total`,
 1 AS `write_pct`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$io_global_by_file_by_latency`
--

DROP TABLE IF EXISTS `x$io_global_by_file_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$io_global_by_file_by_latency` AS SELECT 
 1 AS `file`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `count_read`,
 1 AS `read_latency`,
 1 AS `count_write`,
 1 AS `write_latency`,
 1 AS `count_misc`,
 1 AS `misc_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$io_global_by_wait_by_bytes`
--

DROP TABLE IF EXISTS `x$io_global_by_wait_by_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$io_global_by_wait_by_bytes` AS SELECT 
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_written`,
 1 AS `total_requested`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$io_global_by_wait_by_latency`
--

DROP TABLE IF EXISTS `x$io_global_by_wait_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$io_global_by_wait_by_latency` AS SELECT 
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`,
 1 AS `read_latency`,
 1 AS `write_latency`,
 1 AS `misc_latency`,
 1 AS `count_read`,
 1 AS `total_read`,
 1 AS `avg_read`,
 1 AS `count_write`,
 1 AS `total_written`,
 1 AS `avg_written`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$latest_file_io`
--

DROP TABLE IF EXISTS `x$latest_file_io`;
/*!50001 DROP VIEW IF EXISTS `x$latest_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$latest_file_io` AS SELECT 
 1 AS `thread`,
 1 AS `file`,
 1 AS `latency`,
 1 AS `operation`,
 1 AS `requested`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$memory_by_host_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_by_host_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_by_host_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$memory_by_host_by_current_bytes` AS SELECT 
 1 AS `host`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$memory_by_thread_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_by_thread_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_by_thread_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$memory_by_thread_by_current_bytes` AS SELECT 
 1 AS `thread_id`,
 1 AS `user`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$memory_by_user_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_by_user_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_by_user_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$memory_by_user_by_current_bytes` AS SELECT 
 1 AS `user`,
 1 AS `current_count_used`,
 1 AS `current_allocated`,
 1 AS `current_avg_alloc`,
 1 AS `current_max_alloc`,
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$memory_global_by_current_bytes`
--

DROP TABLE IF EXISTS `x$memory_global_by_current_bytes`;
/*!50001 DROP VIEW IF EXISTS `x$memory_global_by_current_bytes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$memory_global_by_current_bytes` AS SELECT 
 1 AS `event_name`,
 1 AS `current_count`,
 1 AS `current_alloc`,
 1 AS `current_avg_alloc`,
 1 AS `high_count`,
 1 AS `high_alloc`,
 1 AS `high_avg_alloc`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$memory_global_total`
--

DROP TABLE IF EXISTS `x$memory_global_total`;
/*!50001 DROP VIEW IF EXISTS `x$memory_global_total`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$memory_global_total` AS SELECT 
 1 AS `total_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$processlist`
--

DROP TABLE IF EXISTS `x$processlist`;
/*!50001 DROP VIEW IF EXISTS `x$processlist`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$processlist` AS SELECT 
 1 AS `thd_id`,
 1 AS `conn_id`,
 1 AS `user`,
 1 AS `db`,
 1 AS `command`,
 1 AS `state`,
 1 AS `time`,
 1 AS `current_statement`,
 1 AS `statement_latency`,
 1 AS `progress`,
 1 AS `lock_latency`,
 1 AS `rows_examined`,
 1 AS `rows_sent`,
 1 AS `rows_affected`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `full_scan`,
 1 AS `last_statement`,
 1 AS `last_statement_latency`,
 1 AS `current_memory`,
 1 AS `last_wait`,
 1 AS `last_wait_latency`,
 1 AS `source`,
 1 AS `trx_latency`,
 1 AS `trx_state`,
 1 AS `trx_autocommit`,
 1 AS `pid`,
 1 AS `program_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$ps_digest_95th_percentile_by_avg_us`
--

DROP TABLE IF EXISTS `x$ps_digest_95th_percentile_by_avg_us`;
/*!50001 DROP VIEW IF EXISTS `x$ps_digest_95th_percentile_by_avg_us`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$ps_digest_95th_percentile_by_avg_us` AS SELECT 
 1 AS `avg_us`,
 1 AS `percentile`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$ps_digest_avg_latency_distribution`
--

DROP TABLE IF EXISTS `x$ps_digest_avg_latency_distribution`;
/*!50001 DROP VIEW IF EXISTS `x$ps_digest_avg_latency_distribution`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$ps_digest_avg_latency_distribution` AS SELECT 
 1 AS `cnt`,
 1 AS `avg_us`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$ps_schema_table_statistics_io`
--

DROP TABLE IF EXISTS `x$ps_schema_table_statistics_io`;
/*!50001 DROP VIEW IF EXISTS `x$ps_schema_table_statistics_io`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$ps_schema_table_statistics_io` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `count_read`,
 1 AS `sum_number_of_bytes_read`,
 1 AS `sum_timer_read`,
 1 AS `count_write`,
 1 AS `sum_number_of_bytes_write`,
 1 AS `sum_timer_write`,
 1 AS `count_misc`,
 1 AS `sum_timer_misc`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$schema_flattened_keys`
--

DROP TABLE IF EXISTS `x$schema_flattened_keys`;
/*!50001 DROP VIEW IF EXISTS `x$schema_flattened_keys`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$schema_flattened_keys` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `index_name`,
 1 AS `non_unique`,
 1 AS `subpart_exists`,
 1 AS `index_columns`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$schema_index_statistics`
--

DROP TABLE IF EXISTS `x$schema_index_statistics`;
/*!50001 DROP VIEW IF EXISTS `x$schema_index_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$schema_index_statistics` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `index_name`,
 1 AS `rows_selected`,
 1 AS `select_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$schema_table_lock_waits`
--

DROP TABLE IF EXISTS `x$schema_table_lock_waits`;
/*!50001 DROP VIEW IF EXISTS `x$schema_table_lock_waits`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$schema_table_lock_waits` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `waiting_thread_id`,
 1 AS `waiting_pid`,
 1 AS `waiting_account`,
 1 AS `waiting_lock_type`,
 1 AS `waiting_lock_duration`,
 1 AS `waiting_query`,
 1 AS `waiting_query_secs`,
 1 AS `waiting_query_rows_affected`,
 1 AS `waiting_query_rows_examined`,
 1 AS `blocking_thread_id`,
 1 AS `blocking_pid`,
 1 AS `blocking_account`,
 1 AS `blocking_lock_type`,
 1 AS `blocking_lock_duration`,
 1 AS `sql_kill_blocking_query`,
 1 AS `sql_kill_blocking_connection`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$schema_table_statistics`
--

DROP TABLE IF EXISTS `x$schema_table_statistics`;
/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$schema_table_statistics` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `total_latency`,
 1 AS `rows_fetched`,
 1 AS `fetch_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`,
 1 AS `io_read_requests`,
 1 AS `io_read`,
 1 AS `io_read_latency`,
 1 AS `io_write_requests`,
 1 AS `io_write`,
 1 AS `io_write_latency`,
 1 AS `io_misc_requests`,
 1 AS `io_misc_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$schema_table_statistics_with_buffer`
--

DROP TABLE IF EXISTS `x$schema_table_statistics_with_buffer`;
/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics_with_buffer`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$schema_table_statistics_with_buffer` AS SELECT 
 1 AS `table_schema`,
 1 AS `table_name`,
 1 AS `rows_fetched`,
 1 AS `fetch_latency`,
 1 AS `rows_inserted`,
 1 AS `insert_latency`,
 1 AS `rows_updated`,
 1 AS `update_latency`,
 1 AS `rows_deleted`,
 1 AS `delete_latency`,
 1 AS `io_read_requests`,
 1 AS `io_read`,
 1 AS `io_read_latency`,
 1 AS `io_write_requests`,
 1 AS `io_write`,
 1 AS `io_write_latency`,
 1 AS `io_misc_requests`,
 1 AS `io_misc_latency`,
 1 AS `innodb_buffer_allocated`,
 1 AS `innodb_buffer_data`,
 1 AS `innodb_buffer_free`,
 1 AS `innodb_buffer_pages`,
 1 AS `innodb_buffer_pages_hashed`,
 1 AS `innodb_buffer_pages_old`,
 1 AS `innodb_buffer_rows_cached`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$schema_tables_with_full_table_scans`
--

DROP TABLE IF EXISTS `x$schema_tables_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `x$schema_tables_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$schema_tables_with_full_table_scans` AS SELECT 
 1 AS `object_schema`,
 1 AS `object_name`,
 1 AS `rows_full_scanned`,
 1 AS `latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$session`
--

DROP TABLE IF EXISTS `x$session`;
/*!50001 DROP VIEW IF EXISTS `x$session`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$session` AS SELECT 
 1 AS `thd_id`,
 1 AS `conn_id`,
 1 AS `user`,
 1 AS `db`,
 1 AS `command`,
 1 AS `state`,
 1 AS `time`,
 1 AS `current_statement`,
 1 AS `statement_latency`,
 1 AS `progress`,
 1 AS `lock_latency`,
 1 AS `rows_examined`,
 1 AS `rows_sent`,
 1 AS `rows_affected`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `full_scan`,
 1 AS `last_statement`,
 1 AS `last_statement_latency`,
 1 AS `current_memory`,
 1 AS `last_wait`,
 1 AS `last_wait_latency`,
 1 AS `source`,
 1 AS `trx_latency`,
 1 AS `trx_state`,
 1 AS `trx_autocommit`,
 1 AS `pid`,
 1 AS `program_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$statement_analysis`
--

DROP TABLE IF EXISTS `x$statement_analysis`;
/*!50001 DROP VIEW IF EXISTS `x$statement_analysis`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$statement_analysis` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `full_scan`,
 1 AS `exec_count`,
 1 AS `err_count`,
 1 AS `warn_count`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `avg_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined`,
 1 AS `rows_examined_avg`,
 1 AS `rows_affected`,
 1 AS `rows_affected_avg`,
 1 AS `tmp_tables`,
 1 AS `tmp_disk_tables`,
 1 AS `rows_sorted`,
 1 AS `sort_merge_passes`,
 1 AS `digest`,
 1 AS `first_seen`,
 1 AS `last_seen`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$statements_with_errors_or_warnings`
--

DROP TABLE IF EXISTS `x$statements_with_errors_or_warnings`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_errors_or_warnings`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$statements_with_errors_or_warnings` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `errors`,
 1 AS `error_pct`,
 1 AS `warnings`,
 1 AS `warning_pct`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$statements_with_full_table_scans`
--

DROP TABLE IF EXISTS `x$statements_with_full_table_scans`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_full_table_scans`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$statements_with_full_table_scans` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `no_index_used_count`,
 1 AS `no_good_index_used_count`,
 1 AS `no_index_used_pct`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined_avg`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$statements_with_runtimes_in_95th_percentile`
--

DROP TABLE IF EXISTS `x$statements_with_runtimes_in_95th_percentile`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_runtimes_in_95th_percentile`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$statements_with_runtimes_in_95th_percentile` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `full_scan`,
 1 AS `exec_count`,
 1 AS `err_count`,
 1 AS `warn_count`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `avg_latency`,
 1 AS `rows_sent`,
 1 AS `rows_sent_avg`,
 1 AS `rows_examined`,
 1 AS `rows_examined_avg`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$statements_with_sorting`
--

DROP TABLE IF EXISTS `x$statements_with_sorting`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_sorting`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$statements_with_sorting` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `sort_merge_passes`,
 1 AS `avg_sort_merges`,
 1 AS `sorts_using_scans`,
 1 AS `sort_using_range`,
 1 AS `rows_sorted`,
 1 AS `avg_rows_sorted`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$statements_with_temp_tables`
--

DROP TABLE IF EXISTS `x$statements_with_temp_tables`;
/*!50001 DROP VIEW IF EXISTS `x$statements_with_temp_tables`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$statements_with_temp_tables` AS SELECT 
 1 AS `query`,
 1 AS `db`,
 1 AS `exec_count`,
 1 AS `total_latency`,
 1 AS `memory_tmp_tables`,
 1 AS `disk_tmp_tables`,
 1 AS `avg_tmp_tables_per_query`,
 1 AS `tmp_tables_to_disk_pct`,
 1 AS `first_seen`,
 1 AS `last_seen`,
 1 AS `digest`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$user_summary`
--

DROP TABLE IF EXISTS `x$user_summary`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$user_summary` AS SELECT 
 1 AS `user`,
 1 AS `statements`,
 1 AS `statement_latency`,
 1 AS `statement_avg_latency`,
 1 AS `table_scans`,
 1 AS `file_ios`,
 1 AS `file_io_latency`,
 1 AS `current_connections`,
 1 AS `total_connections`,
 1 AS `unique_hosts`,
 1 AS `current_memory`,
 1 AS `total_memory_allocated`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$user_summary_by_file_io`
--

DROP TABLE IF EXISTS `x$user_summary_by_file_io`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$user_summary_by_file_io` AS SELECT 
 1 AS `user`,
 1 AS `ios`,
 1 AS `io_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$user_summary_by_file_io_type`
--

DROP TABLE IF EXISTS `x$user_summary_by_file_io_type`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io_type`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$user_summary_by_file_io_type` AS SELECT 
 1 AS `user`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$user_summary_by_stages`
--

DROP TABLE IF EXISTS `x$user_summary_by_stages`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_stages`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$user_summary_by_stages` AS SELECT 
 1 AS `user`,
 1 AS `event_name`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$user_summary_by_statement_latency`
--

DROP TABLE IF EXISTS `x$user_summary_by_statement_latency`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$user_summary_by_statement_latency` AS SELECT 
 1 AS `user`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$user_summary_by_statement_type`
--

DROP TABLE IF EXISTS `x$user_summary_by_statement_type`;
/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_type`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$user_summary_by_statement_type` AS SELECT 
 1 AS `user`,
 1 AS `statement`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `max_latency`,
 1 AS `lock_latency`,
 1 AS `rows_sent`,
 1 AS `rows_examined`,
 1 AS `rows_affected`,
 1 AS `full_scans`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$wait_classes_global_by_avg_latency`
--

DROP TABLE IF EXISTS `x$wait_classes_global_by_avg_latency`;
/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_avg_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$wait_classes_global_by_avg_latency` AS SELECT 
 1 AS `event_class`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$wait_classes_global_by_latency`
--

DROP TABLE IF EXISTS `x$wait_classes_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$wait_classes_global_by_latency` AS SELECT 
 1 AS `event_class`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `min_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$waits_by_host_by_latency`
--

DROP TABLE IF EXISTS `x$waits_by_host_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$waits_by_host_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$waits_by_host_by_latency` AS SELECT 
 1 AS `host`,
 1 AS `event`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$waits_by_user_by_latency`
--

DROP TABLE IF EXISTS `x$waits_by_user_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$waits_by_user_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$waits_by_user_by_latency` AS SELECT 
 1 AS `user`,
 1 AS `event`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `x$waits_global_by_latency`
--

DROP TABLE IF EXISTS `x$waits_global_by_latency`;
/*!50001 DROP VIEW IF EXISTS `x$waits_global_by_latency`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `x$waits_global_by_latency` AS SELECT 
 1 AS `events`,
 1 AS `total`,
 1 AS `total_latency`,
 1 AS `avg_latency`,
 1 AS `max_latency`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `host_summary`
--

/*!50001 DROP VIEW IF EXISTS `host_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary` AS select if(isnull(`performance_schema`.`accounts`.`HOST`),'background',`performance_schema`.`accounts`.`HOST`) AS `host`,sum(`stmt`.`total`) AS `statements`,`sys`.`format_time`(sum(`stmt`.`total_latency`)) AS `statement_latency`,`sys`.`format_time`(ifnull((sum(`stmt`.`total_latency`) / nullif(sum(`stmt`.`total`),0)),0)) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,`sys`.`format_time`(sum(`io`.`io_latency`)) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`USER`) AS `unique_users`,`sys`.`format_bytes`(sum(`mem`.`current_allocated`)) AS `current_memory`,`sys`.`format_bytes`(sum(`mem`.`total_allocated`)) AS `total_memory_allocated` from (((`performance_schema`.`accounts` join `sys`.`x$host_summary_by_statement_latency` `stmt` on((`performance_schema`.`accounts`.`HOST` = `stmt`.`host`))) join `sys`.`x$host_summary_by_file_io` `io` on((`performance_schema`.`accounts`.`HOST` = `io`.`host`))) join `sys`.`x$memory_by_host_by_current_bytes` `mem` on((`performance_schema`.`accounts`.`HOST` = `mem`.`host`))) group by if(isnull(`performance_schema`.`accounts`.`HOST`),'background',`performance_schema`.`accounts`.`HOST`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_file_io`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_file_io` AS select if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR`) AS `ios`,`sys`.`format_time`(sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`)) AS `io_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') group by if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_file_io_type`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_file_io_type` AS select if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where ((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file%') and (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` > 0)) order by if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_stages`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_stages` AS select if(isnull(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency` from `performance_schema`.`events_stages_summary_by_host_by_event_name` where (`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if(isnull(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_statement_latency`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_statement_latency` AS select if(isnull(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR`) AS `total`,`sys`.`format_time`(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,`sys`.`format_time`(max(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency`,`sys`.`format_time`(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME`)) AS `lock_latency`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED`)) AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` group by if(isnull(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `host_summary_by_statement_type`
--

/*!50001 DROP VIEW IF EXISTS `host_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `host_summary_by_statement_type` AS select if(isnull(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,substring_index(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`EVENT_NAME`,'/',-(1)) AS `statement`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` where (`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if(isnull(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `innodb_buffer_stats_by_schema`
--

/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_schema`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `innodb_buffer_stats_by_schema` AS select if((locate('.',`ibp`.`TABLE_NAME`) = 0),'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,`sys`.`format_bytes`(sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`))) AS `allocated`,`sys`.`format_bytes`(sum(`ibp`.`DATA_SIZE`)) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if((`ibp`.`IS_HASHED` = 'YES'),1,NULL)) AS `pages_hashed`,count(if((`ibp`.`IS_OLD` = 'YES'),1,NULL)) AS `pages_old`,round((sum(`ibp`.`NUMBER_RECORDS`) / count(distinct `ibp`.`INDEX_NAME`)),0) AS `rows_cached` from `information_schema`.`innodb_buffer_page` `ibp` where (`ibp`.`TABLE_NAME` is not null) group by `object_schema` order by sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `innodb_buffer_stats_by_table`
--

/*!50001 DROP VIEW IF EXISTS `innodb_buffer_stats_by_table`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `innodb_buffer_stats_by_table` AS select if((locate('.',`ibp`.`TABLE_NAME`) = 0),'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,replace(substring_index(`ibp`.`TABLE_NAME`,'.',-(1)),'`','') AS `object_name`,`sys`.`format_bytes`(sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`))) AS `allocated`,`sys`.`format_bytes`(sum(`ibp`.`DATA_SIZE`)) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if((`ibp`.`IS_HASHED` = 'YES'),1,NULL)) AS `pages_hashed`,count(if((`ibp`.`IS_OLD` = 'YES'),1,NULL)) AS `pages_old`,round((sum(`ibp`.`NUMBER_RECORDS`) / count(distinct `ibp`.`INDEX_NAME`)),0) AS `rows_cached` from `information_schema`.`innodb_buffer_page` `ibp` where (`ibp`.`TABLE_NAME` is not null) group by `object_schema`,`object_name` order by sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `innodb_lock_waits`
--

/*!50001 DROP VIEW IF EXISTS `innodb_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `innodb_lock_waits` AS select `r`.`trx_wait_started` AS `wait_started`,timediff(now(),`r`.`trx_wait_started`) AS `wait_age`,timestampdiff(SECOND,`r`.`trx_wait_started`,now()) AS `wait_age_secs`,`rl`.`lock_table` AS `locked_table`,`rl`.`lock_index` AS `locked_index`,`rl`.`lock_type` AS `locked_type`,`r`.`trx_id` AS `waiting_trx_id`,`r`.`trx_started` AS `waiting_trx_started`,timediff(now(),`r`.`trx_started`) AS `waiting_trx_age`,`r`.`trx_rows_locked` AS `waiting_trx_rows_locked`,`r`.`trx_rows_modified` AS `waiting_trx_rows_modified`,`r`.`trx_mysql_thread_id` AS `waiting_pid`,`sys`.`format_statement`(`r`.`trx_query`) AS `waiting_query`,`rl`.`lock_id` AS `waiting_lock_id`,`rl`.`lock_mode` AS `waiting_lock_mode`,`b`.`trx_id` AS `blocking_trx_id`,`b`.`trx_mysql_thread_id` AS `blocking_pid`,`sys`.`format_statement`(`b`.`trx_query`) AS `blocking_query`,`bl`.`lock_id` AS `blocking_lock_id`,`bl`.`lock_mode` AS `blocking_lock_mode`,`b`.`trx_started` AS `blocking_trx_started`,timediff(now(),`b`.`trx_started`) AS `blocking_trx_age`,`b`.`trx_rows_locked` AS `blocking_trx_rows_locked`,`b`.`trx_rows_modified` AS `blocking_trx_rows_modified`,concat('KILL QUERY ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_query`,concat('KILL ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_connection` from ((((`information_schema`.`innodb_lock_waits` `w` join `information_schema`.`innodb_trx` `b` on((`b`.`trx_id` = `w`.`blocking_trx_id`))) join `information_schema`.`innodb_trx` `r` on((`r`.`trx_id` = `w`.`requesting_trx_id`))) join `information_schema`.`innodb_locks` `bl` on((`bl`.`lock_id` = `w`.`blocking_lock_id`))) join `information_schema`.`innodb_locks` `rl` on((`rl`.`lock_id` = `w`.`requested_lock_id`))) order by `r`.`trx_wait_started` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_by_thread_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `io_by_thread_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_by_thread_by_latency` AS select if(isnull(`performance_schema`.`threads`.`PROCESSLIST_ID`),substring_index(`performance_schema`.`threads`.`NAME`,'/',-(1)),concat(`performance_schema`.`threads`.`PROCESSLIST_USER`,'@',`performance_schema`.`threads`.`PROCESSLIST_HOST`)) AS `user`,sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`COUNT_STAR`) AS `total`,`sys`.`format_time`(sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,`sys`.`format_time`(min(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MIN_TIMER_WAIT`)) AS `min_latency`,`sys`.`format_time`(avg(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`AVG_TIMER_WAIT`)) AS `avg_latency`,`sys`.`format_time`(max(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency`,`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` AS `thread_id`,`performance_schema`.`threads`.`PROCESSLIST_ID` AS `processlist_id` from (`performance_schema`.`events_waits_summary_by_thread_by_event_name` left join `performance_schema`.`threads` on((`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`))) where ((`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT` > 0)) group by `performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID`,`performance_schema`.`threads`.`PROCESSLIST_ID`,`user` order by sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_file_by_bytes`
--

/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_global_by_file_by_bytes` AS select `sys`.`format_path`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,`sys`.`format_bytes`(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_read`,`sys`.`format_bytes`(ifnull((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_READ`,0)),0)) AS `avg_read`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,`sys`.`format_bytes`(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total_written`,`sys`.`format_bytes`(ifnull((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE`,0)),0.00)) AS `avg_write`,`sys`.`format_bytes`((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`)) AS `total`,ifnull(round((100 - ((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`),0)) * 100)),2),0.00) AS `write_pct` from `performance_schema`.`file_summary_by_instance` order by (`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_file_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `io_global_by_file_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_global_by_file_by_latency` AS select `sys`.`format_path`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,`sys`.`format_time`(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_READ`) AS `read_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,`sys`.`format_time`(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WRITE`) AS `write_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_MISC` AS `count_misc`,`sys`.`format_time`(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_MISC`) AS `misc_latency` from `performance_schema`.`file_summary_by_instance` order by `performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_wait_by_bytes`
--

/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_global_by_wait_by_bytes` AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-(2)) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,`sys`.`format_bytes`(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_read`,`sys`.`format_bytes`(ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0)),0)) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,`sys`.`format_bytes`(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total_written`,`sys`.`format_bytes`(ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0)),0)) AS `avg_written`,`sys`.`format_bytes`((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`)) AS `total_requested` from `performance_schema`.`file_summary_by_event_name` where ((`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0)) order by (`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `io_global_by_wait_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `io_global_by_wait_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `io_global_by_wait_by_latency` AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-(2)) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_READ`) AS `read_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WRITE`) AS `write_latency`,`sys`.`format_time`(`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_MISC`) AS `misc_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,`sys`.`format_bytes`(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_read`,`sys`.`format_bytes`(ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0)),0)) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,`sys`.`format_bytes`(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total_written`,`sys`.`format_bytes`(ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0)),0)) AS `avg_written` from `performance_schema`.`file_summary_by_event_name` where ((`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0)) order by `performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `latest_file_io`
--

/*!50001 DROP VIEW IF EXISTS `latest_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `latest_file_io` AS select if(isnull(`information_schema`.`processlist`.`ID`),concat(substring_index(`performance_schema`.`threads`.`NAME`,'/',-(1)),':',`performance_schema`.`events_waits_history_long`.`THREAD_ID`),concat(`information_schema`.`processlist`.`USER`,'@',`information_schema`.`processlist`.`HOST`,':',`information_schema`.`processlist`.`ID`)) AS `thread`,`sys`.`format_path`(`performance_schema`.`events_waits_history_long`.`OBJECT_NAME`) AS `file`,`sys`.`format_time`(`performance_schema`.`events_waits_history_long`.`TIMER_WAIT`) AS `latency`,`performance_schema`.`events_waits_history_long`.`OPERATION` AS `operation`,`sys`.`format_bytes`(`performance_schema`.`events_waits_history_long`.`NUMBER_OF_BYTES`) AS `requested` from ((`performance_schema`.`events_waits_history_long` join `performance_schema`.`threads` on((`performance_schema`.`events_waits_history_long`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`))) left join `information_schema`.`processlist` on((`performance_schema`.`threads`.`PROCESSLIST_ID` = `information_schema`.`processlist`.`ID`))) where ((`performance_schema`.`events_waits_history_long`.`OBJECT_NAME` is not null) and (`performance_schema`.`events_waits_history_long`.`EVENT_NAME` like 'wait/io/file/%')) order by `performance_schema`.`events_waits_history_long`.`TIMER_START` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_by_host_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `memory_by_host_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_by_host_by_current_bytes` AS select if(isnull(`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,`sys`.`format_bytes`(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_allocated`,`sys`.`format_bytes`(ifnull((sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`),0)),0)) AS `current_avg_alloc`,`sys`.`format_bytes`(max(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_max_alloc`,`sys`.`format_bytes`(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`)) AS `total_allocated` from `performance_schema`.`memory_summary_by_host_by_event_name` group by if(isnull(`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_by_thread_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `memory_by_thread_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_by_thread_by_current_bytes` AS select `mt`.`THREAD_ID` AS `thread_id`,if((`t`.`NAME` = 'thread/sql/one_connection'),concat(`t`.`PROCESSLIST_USER`,'@',`t`.`PROCESSLIST_HOST`),replace(`t`.`NAME`,'thread/','')) AS `user`,sum(`mt`.`CURRENT_COUNT_USED`) AS `current_count_used`,`sys`.`format_bytes`(sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_allocated`,`sys`.`format_bytes`(ifnull((sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`mt`.`CURRENT_COUNT_USED`),0)),0)) AS `current_avg_alloc`,`sys`.`format_bytes`(max(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_max_alloc`,`sys`.`format_bytes`(sum(`mt`.`SUM_NUMBER_OF_BYTES_ALLOC`)) AS `total_allocated` from (`performance_schema`.`memory_summary_by_thread_by_event_name` `mt` join `performance_schema`.`threads` `t` on((`mt`.`THREAD_ID` = `t`.`THREAD_ID`))) group by `mt`.`THREAD_ID`,if((`t`.`NAME` = 'thread/sql/one_connection'),concat(`t`.`PROCESSLIST_USER`,'@',`t`.`PROCESSLIST_HOST`),replace(`t`.`NAME`,'thread/','')) order by sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_by_user_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `memory_by_user_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_by_user_by_current_bytes` AS select if(isnull(`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,`sys`.`format_bytes`(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_allocated`,`sys`.`format_bytes`(ifnull((sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`),0)),0)) AS `current_avg_alloc`,`sys`.`format_bytes`(max(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `current_max_alloc`,`sys`.`format_bytes`(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`)) AS `total_allocated` from `performance_schema`.`memory_summary_by_user_by_event_name` group by if(isnull(`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_global_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `memory_global_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_global_by_current_bytes` AS select `performance_schema`.`memory_summary_global_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED` AS `current_count`,`sys`.`format_bytes`(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_alloc`,`sys`.`format_bytes`(ifnull((`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED`,0)),0)) AS `current_avg_alloc`,`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED` AS `high_count`,`sys`.`format_bytes`(`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED`) AS `high_alloc`,`sys`.`format_bytes`(ifnull((`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED`,0)),0)) AS `high_avg_alloc` from `performance_schema`.`memory_summary_global_by_event_name` where (`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` > 0) order by `performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `memory_global_total`
--

/*!50001 DROP VIEW IF EXISTS `memory_global_total`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `memory_global_total` AS select `sys`.`format_bytes`(sum(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`)) AS `total_allocated` from `performance_schema`.`memory_summary_global_by_event_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `metrics`
--

/*!50001 DROP VIEW IF EXISTS `metrics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `metrics` AS (select lower(`performance_schema`.`global_status`.`VARIABLE_NAME`) AS `Variable_name`,`performance_schema`.`global_status`.`VARIABLE_VALUE` AS `Variable_value`,'Global Status' AS `Type`,'YES' AS `Enabled` from `performance_schema`.`global_status`) union all (select `information_schema`.`INNODB_METRICS`.`NAME` AS `Variable_name`,`information_schema`.`INNODB_METRICS`.`COUNT` AS `Variable_value`,concat('InnoDB Metrics - ',`information_schema`.`INNODB_METRICS`.`SUBSYSTEM`) AS `Type`,if((`information_schema`.`INNODB_METRICS`.`STATUS` = 'enabled'),'YES','NO') AS `Enabled` from `information_schema`.`INNODB_METRICS` where (`information_schema`.`INNODB_METRICS`.`NAME` not in ('lock_row_lock_time','lock_row_lock_time_avg','lock_row_lock_time_max','lock_row_lock_waits','buffer_pool_reads','buffer_pool_read_requests','buffer_pool_write_requests','buffer_pool_wait_free','buffer_pool_read_ahead','buffer_pool_read_ahead_evicted','buffer_pool_pages_total','buffer_pool_pages_misc','buffer_pool_pages_data','buffer_pool_bytes_data','buffer_pool_pages_dirty','buffer_pool_bytes_dirty','buffer_pool_pages_free','buffer_pages_created','buffer_pages_written','buffer_pages_read','buffer_data_reads','buffer_data_written','file_num_open_files','os_log_bytes_written','os_log_fsyncs','os_log_pending_fsyncs','os_log_pending_writes','log_waits','log_write_requests','log_writes','innodb_dblwr_writes','innodb_dblwr_pages_written','innodb_page_size'))) union all (select 'memory_current_allocated' AS `Variable_name`,sum(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `Variable_value`,'Performance Schema' AS `Type`,if(((select count(0) from `performance_schema`.`setup_instruments` where ((`performance_schema`.`setup_instruments`.`NAME` like 'memory/%') and (`performance_schema`.`setup_instruments`.`ENABLED` = 'YES'))) = 0),'NO',if(((select count(0) from `performance_schema`.`setup_instruments` where ((`performance_schema`.`setup_instruments`.`NAME` like 'memory/%') and (`performance_schema`.`setup_instruments`.`ENABLED` = 'YES'))) = (select count(0) from `performance_schema`.`setup_instruments` where (`performance_schema`.`setup_instruments`.`NAME` like 'memory/%'))),'YES','PARTIAL')) AS `Enabled` from `performance_schema`.`memory_summary_global_by_event_name`) union all (select 'memory_total_allocated' AS `Variable_name`,sum(`performance_schema`.`memory_summary_global_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `Variable_value`,'Performance Schema' AS `Type`,if(((select count(0) from `performance_schema`.`setup_instruments` where ((`performance_schema`.`setup_instruments`.`NAME` like 'memory/%') and (`performance_schema`.`setup_instruments`.`ENABLED` = 'YES'))) = 0),'NO',if(((select count(0) from `performance_schema`.`setup_instruments` where ((`performance_schema`.`setup_instruments`.`NAME` like 'memory/%') and (`performance_schema`.`setup_instruments`.`ENABLED` = 'YES'))) = (select count(0) from `performance_schema`.`setup_instruments` where (`performance_schema`.`setup_instruments`.`NAME` like 'memory/%'))),'YES','PARTIAL')) AS `Enabled` from `performance_schema`.`memory_summary_global_by_event_name`) union all (select 'NOW()' AS `Variable_name`,now(3) AS `Variable_value`,'System Time' AS `Type`,'YES' AS `Enabled`) union all (select 'UNIX_TIMESTAMP()' AS `Variable_name`,round(unix_timestamp(now(3)),3) AS `Variable_value`,'System Time' AS `Type`,'YES' AS `Enabled`) order by `Type`,`Variable_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `processlist`
--

/*!50001 DROP VIEW IF EXISTS `processlist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `processlist` AS select `pps`.`THREAD_ID` AS `thd_id`,`pps`.`PROCESSLIST_ID` AS `conn_id`,if((`pps`.`NAME` = 'thread/sql/one_connection'),concat(`pps`.`PROCESSLIST_USER`,'@',`pps`.`PROCESSLIST_HOST`),replace(`pps`.`NAME`,'thread/','')) AS `user`,`pps`.`PROCESSLIST_DB` AS `db`,`pps`.`PROCESSLIST_COMMAND` AS `command`,`pps`.`PROCESSLIST_STATE` AS `state`,`pps`.`PROCESSLIST_TIME` AS `time`,`sys`.`format_statement`(`pps`.`PROCESSLIST_INFO`) AS `current_statement`,if(isnull(`esc`.`END_EVENT_ID`),`sys`.`format_time`(`esc`.`TIMER_WAIT`),NULL) AS `statement_latency`,if(isnull(`esc`.`END_EVENT_ID`),round((100 * (`estc`.`WORK_COMPLETED` / `estc`.`WORK_ESTIMATED`)),2),NULL) AS `progress`,`sys`.`format_time`(`esc`.`LOCK_TIME`) AS `lock_latency`,`esc`.`ROWS_EXAMINED` AS `rows_examined`,`esc`.`ROWS_SENT` AS `rows_sent`,`esc`.`ROWS_AFFECTED` AS `rows_affected`,`esc`.`CREATED_TMP_TABLES` AS `tmp_tables`,`esc`.`CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,if(((`esc`.`NO_GOOD_INDEX_USED` > 0) or (`esc`.`NO_INDEX_USED` > 0)),'YES','NO') AS `full_scan`,if((`esc`.`END_EVENT_ID` is not null),`sys`.`format_statement`(`esc`.`SQL_TEXT`),NULL) AS `last_statement`,if((`esc`.`END_EVENT_ID` is not null),`sys`.`format_time`(`esc`.`TIMER_WAIT`),NULL) AS `last_statement_latency`,`sys`.`format_bytes`(`mem`.`current_allocated`) AS `current_memory`,`ewc`.`EVENT_NAME` AS `last_wait`,if((isnull(`ewc`.`END_EVENT_ID`) and (`ewc`.`EVENT_NAME` is not null)),'Still Waiting',`sys`.`format_time`(`ewc`.`TIMER_WAIT`)) AS `last_wait_latency`,`ewc`.`SOURCE` AS `source`,`sys`.`format_time`(`etc`.`TIMER_WAIT`) AS `trx_latency`,`etc`.`STATE` AS `trx_state`,`etc`.`AUTOCOMMIT` AS `trx_autocommit`,`conattr_pid`.`ATTR_VALUE` AS `pid`,`conattr_progname`.`ATTR_VALUE` AS `program_name` from (((((((`performance_schema`.`threads` `pps` left join `performance_schema`.`events_waits_current` `ewc` on((`pps`.`THREAD_ID` = `ewc`.`THREAD_ID`))) left join `performance_schema`.`events_stages_current` `estc` on((`pps`.`THREAD_ID` = `estc`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `esc` on((`pps`.`THREAD_ID` = `esc`.`THREAD_ID`))) left join `performance_schema`.`events_transactions_current` `etc` on((`pps`.`THREAD_ID` = `etc`.`THREAD_ID`))) left join `sys`.`x$memory_by_thread_by_current_bytes` `mem` on((`pps`.`THREAD_ID` = `mem`.`thread_id`))) left join `performance_schema`.`session_connect_attrs` `conattr_pid` on(((`conattr_pid`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID`) and (`conattr_pid`.`ATTR_NAME` = '_pid')))) left join `performance_schema`.`session_connect_attrs` `conattr_progname` on(((`conattr_progname`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID`) and (`conattr_progname`.`ATTR_NAME` = 'program_name')))) order by `pps`.`PROCESSLIST_TIME` desc,`last_wait_latency` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ps_check_lost_instrumentation`
--

/*!50001 DROP VIEW IF EXISTS `ps_check_lost_instrumentation`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `ps_check_lost_instrumentation` AS select `performance_schema`.`global_status`.`VARIABLE_NAME` AS `variable_name`,`performance_schema`.`global_status`.`VARIABLE_VALUE` AS `variable_value` from `performance_schema`.`global_status` where ((`performance_schema`.`global_status`.`VARIABLE_NAME` like 'perf%lost') and (`performance_schema`.`global_status`.`VARIABLE_VALUE` > 0)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_auto_increment_columns`
--

/*!50001 DROP VIEW IF EXISTS `schema_auto_increment_columns`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_auto_increment_columns` AS select `information_schema`.`COLUMNS`.`TABLE_SCHEMA` AS `table_schema`,`information_schema`.`COLUMNS`.`TABLE_NAME` AS `table_name`,`information_schema`.`COLUMNS`.`COLUMN_NAME` AS `column_name`,`information_schema`.`COLUMNS`.`DATA_TYPE` AS `data_type`,`information_schema`.`COLUMNS`.`COLUMN_TYPE` AS `column_type`,(locate('unsigned',`information_schema`.`COLUMNS`.`COLUMN_TYPE`) = 0) AS `is_signed`,(locate('unsigned',`information_schema`.`COLUMNS`.`COLUMN_TYPE`) > 0) AS `is_unsigned`,((case `information_schema`.`COLUMNS`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end) >> if((locate('unsigned',`information_schema`.`COLUMNS`.`COLUMN_TYPE`) > 0),0,1)) AS `max_value`,`information_schema`.`TABLES`.`AUTO_INCREMENT` AS `auto_increment`,(`information_schema`.`TABLES`.`AUTO_INCREMENT` / ((case `information_schema`.`COLUMNS`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end) >> if((locate('unsigned',`information_schema`.`COLUMNS`.`COLUMN_TYPE`) > 0),0,1))) AS `auto_increment_ratio` from (`INFORMATION_SCHEMA`.`COLUMNS` join `INFORMATION_SCHEMA`.`TABLES` on(((`information_schema`.`COLUMNS`.`TABLE_SCHEMA` = `information_schema`.`TABLES`.`TABLE_SCHEMA`) and (`information_schema`.`COLUMNS`.`TABLE_NAME` = `information_schema`.`TABLES`.`TABLE_NAME`)))) where ((`information_schema`.`COLUMNS`.`TABLE_SCHEMA` not in ('mysql','sys','INFORMATION_SCHEMA','performance_schema')) and (`information_schema`.`TABLES`.`TABLE_TYPE` = 'BASE TABLE') and (`information_schema`.`COLUMNS`.`EXTRA` = 'auto_increment')) order by (`information_schema`.`TABLES`.`AUTO_INCREMENT` / ((case `information_schema`.`COLUMNS`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end) >> if((locate('unsigned',`information_schema`.`COLUMNS`.`COLUMN_TYPE`) > 0),0,1))) desc,((case `information_schema`.`COLUMNS`.`DATA_TYPE` when 'tinyint' then 255 when 'smallint' then 65535 when 'mediumint' then 16777215 when 'int' then 4294967295 when 'bigint' then 18446744073709551615 end) >> if((locate('unsigned',`information_schema`.`COLUMNS`.`COLUMN_TYPE`) > 0),0,1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_index_statistics`
--

/*!50001 DROP VIEW IF EXISTS `schema_index_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_index_statistics` AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `table_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `table_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` AS `index_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_FETCH` AS `rows_selected`,`sys`.`format_time`(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_FETCH`) AS `select_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_INSERT` AS `rows_inserted`,`sys`.`format_time`(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_INSERT`) AS `insert_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_UPDATE` AS `rows_updated`,`sys`.`format_time`(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_UPDATE`) AS `update_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_DELETE` AS `rows_deleted`,`sys`.`format_time`(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_INSERT`) AS `delete_latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where (`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is not null) order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_object_overview`
--

/*!50001 DROP VIEW IF EXISTS `schema_object_overview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_object_overview` AS select `information_schema`.`routines`.`ROUTINE_SCHEMA` AS `db`,`information_schema`.`routines`.`ROUTINE_TYPE` AS `object_type`,count(0) AS `count` from `information_schema`.`routines` group by `information_schema`.`routines`.`ROUTINE_SCHEMA`,`information_schema`.`routines`.`ROUTINE_TYPE` union select `information_schema`.`tables`.`TABLE_SCHEMA` AS `TABLE_SCHEMA`,`information_schema`.`tables`.`TABLE_TYPE` AS `TABLE_TYPE`,count(0) AS `COUNT(*)` from `information_schema`.`tables` group by `information_schema`.`tables`.`TABLE_SCHEMA`,`information_schema`.`tables`.`TABLE_TYPE` union select `information_schema`.`statistics`.`TABLE_SCHEMA` AS `TABLE_SCHEMA`,concat('INDEX (',`information_schema`.`statistics`.`INDEX_TYPE`,')') AS `CONCAT('INDEX (', INDEX_TYPE, ')')`,count(0) AS `COUNT(*)` from `information_schema`.`statistics` group by `information_schema`.`statistics`.`TABLE_SCHEMA`,`information_schema`.`statistics`.`INDEX_TYPE` union select `information_schema`.`triggers`.`TRIGGER_SCHEMA` AS `TRIGGER_SCHEMA`,'TRIGGER' AS `TRIGGER`,count(0) AS `COUNT(*)` from `information_schema`.`triggers` group by `information_schema`.`triggers`.`TRIGGER_SCHEMA` union select `information_schema`.`events`.`EVENT_SCHEMA` AS `EVENT_SCHEMA`,'EVENT' AS `EVENT`,count(0) AS `COUNT(*)` from `information_schema`.`events` group by `information_schema`.`events`.`EVENT_SCHEMA` order by `db`,`object_type` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_redundant_indexes`
--

/*!50001 DROP VIEW IF EXISTS `schema_redundant_indexes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_redundant_indexes` AS select `redundant_keys`.`table_schema` AS `table_schema`,`redundant_keys`.`table_name` AS `table_name`,`redundant_keys`.`index_name` AS `redundant_index_name`,`redundant_keys`.`index_columns` AS `redundant_index_columns`,`redundant_keys`.`non_unique` AS `redundant_index_non_unique`,`dominant_keys`.`index_name` AS `dominant_index_name`,`dominant_keys`.`index_columns` AS `dominant_index_columns`,`dominant_keys`.`non_unique` AS `dominant_index_non_unique`,if((`redundant_keys`.`subpart_exists` or `dominant_keys`.`subpart_exists`),1,0) AS `subpart_exists`,concat('ALTER TABLE `',`redundant_keys`.`table_schema`,'`.`',`redundant_keys`.`table_name`,'` DROP INDEX `',`redundant_keys`.`index_name`,'`') AS `sql_drop_index` from (`sys`.`x$schema_flattened_keys` `redundant_keys` join `sys`.`x$schema_flattened_keys` `dominant_keys` on(((`redundant_keys`.`table_schema` = `dominant_keys`.`table_schema`) and (`redundant_keys`.`table_name` = `dominant_keys`.`table_name`)))) where ((`redundant_keys`.`index_name` <> `dominant_keys`.`index_name`) and (((`redundant_keys`.`index_columns` = `dominant_keys`.`index_columns`) and ((`redundant_keys`.`non_unique` > `dominant_keys`.`non_unique`) or ((`redundant_keys`.`non_unique` = `dominant_keys`.`non_unique`) and (if((`redundant_keys`.`index_name` = 'PRIMARY'),'',`redundant_keys`.`index_name`) > if((`dominant_keys`.`index_name` = 'PRIMARY'),'',`dominant_keys`.`index_name`))))) or ((locate(concat(`redundant_keys`.`index_columns`,','),`dominant_keys`.`index_columns`) = 1) and (`redundant_keys`.`non_unique` = 1)) or ((locate(concat(`dominant_keys`.`index_columns`,','),`redundant_keys`.`index_columns`) = 1) and (`dominant_keys`.`non_unique` = 0)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_table_lock_waits`
--

/*!50001 DROP VIEW IF EXISTS `schema_table_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_table_lock_waits` AS select `g`.`OBJECT_SCHEMA` AS `object_schema`,`g`.`OBJECT_NAME` AS `object_name`,`pt`.`THREAD_ID` AS `waiting_thread_id`,`pt`.`PROCESSLIST_ID` AS `waiting_pid`,`sys`.`ps_thread_account`(`p`.`OWNER_THREAD_ID`) AS `waiting_account`,`p`.`LOCK_TYPE` AS `waiting_lock_type`,`p`.`LOCK_DURATION` AS `waiting_lock_duration`,`sys`.`format_statement`(`pt`.`PROCESSLIST_INFO`) AS `waiting_query`,`pt`.`PROCESSLIST_TIME` AS `waiting_query_secs`,`ps`.`ROWS_AFFECTED` AS `waiting_query_rows_affected`,`ps`.`ROWS_EXAMINED` AS `waiting_query_rows_examined`,`gt`.`THREAD_ID` AS `blocking_thread_id`,`gt`.`PROCESSLIST_ID` AS `blocking_pid`,`sys`.`ps_thread_account`(`g`.`OWNER_THREAD_ID`) AS `blocking_account`,`g`.`LOCK_TYPE` AS `blocking_lock_type`,`g`.`LOCK_DURATION` AS `blocking_lock_duration`,concat('KILL QUERY ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_query`,concat('KILL ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_connection` from (((((`performance_schema`.`metadata_locks` `g` join `performance_schema`.`metadata_locks` `p` on(((`g`.`OBJECT_TYPE` = `p`.`OBJECT_TYPE`) and (`g`.`OBJECT_SCHEMA` = `p`.`OBJECT_SCHEMA`) and (`g`.`OBJECT_NAME` = `p`.`OBJECT_NAME`) and (`g`.`LOCK_STATUS` = 'GRANTED') and (`p`.`LOCK_STATUS` = 'PENDING')))) join `performance_schema`.`threads` `gt` on((`g`.`OWNER_THREAD_ID` = `gt`.`THREAD_ID`))) join `performance_schema`.`threads` `pt` on((`p`.`OWNER_THREAD_ID` = `pt`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `gs` on((`g`.`OWNER_THREAD_ID` = `gs`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `ps` on((`p`.`OWNER_THREAD_ID` = `ps`.`THREAD_ID`))) where (`g`.`OBJECT_TYPE` = 'TABLE') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_table_statistics`
--

/*!50001 DROP VIEW IF EXISTS `schema_table_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_table_statistics` AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,`sys`.`format_time`(`pst`.`SUM_TIMER_WAIT`) AS `total_latency`,`pst`.`COUNT_FETCH` AS `rows_fetched`,`sys`.`format_time`(`pst`.`SUM_TIMER_FETCH`) AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,`sys`.`format_time`(`pst`.`SUM_TIMER_INSERT`) AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,`sys`.`format_time`(`pst`.`SUM_TIMER_UPDATE`) AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,`sys`.`format_time`(`pst`.`SUM_TIMER_DELETE`) AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,`sys`.`format_bytes`(`fsbi`.`sum_number_of_bytes_read`) AS `io_read`,`sys`.`format_time`(`fsbi`.`sum_timer_read`) AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,`sys`.`format_bytes`(`fsbi`.`sum_number_of_bytes_write`) AS `io_write`,`sys`.`format_time`(`fsbi`.`sum_timer_write`) AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,`sys`.`format_time`(`fsbi`.`sum_timer_misc`) AS `io_misc_latency` from (`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `sys`.`x$ps_schema_table_statistics_io` `fsbi` on(((`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema`) and (`pst`.`OBJECT_NAME` = `fsbi`.`table_name`)))) order by `pst`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_table_statistics_with_buffer`
--

/*!50001 DROP VIEW IF EXISTS `schema_table_statistics_with_buffer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_table_statistics_with_buffer` AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,`pst`.`COUNT_FETCH` AS `rows_fetched`,`sys`.`format_time`(`pst`.`SUM_TIMER_FETCH`) AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,`sys`.`format_time`(`pst`.`SUM_TIMER_INSERT`) AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,`sys`.`format_time`(`pst`.`SUM_TIMER_UPDATE`) AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,`sys`.`format_time`(`pst`.`SUM_TIMER_DELETE`) AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,`sys`.`format_bytes`(`fsbi`.`sum_number_of_bytes_read`) AS `io_read`,`sys`.`format_time`(`fsbi`.`sum_timer_read`) AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,`sys`.`format_bytes`(`fsbi`.`sum_number_of_bytes_write`) AS `io_write`,`sys`.`format_time`(`fsbi`.`sum_timer_write`) AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,`sys`.`format_time`(`fsbi`.`sum_timer_misc`) AS `io_misc_latency`,`sys`.`format_bytes`(`ibp`.`allocated`) AS `innodb_buffer_allocated`,`sys`.`format_bytes`(`ibp`.`data`) AS `innodb_buffer_data`,`sys`.`format_bytes`((`ibp`.`allocated` - `ibp`.`data`)) AS `innodb_buffer_free`,`ibp`.`pages` AS `innodb_buffer_pages`,`ibp`.`pages_hashed` AS `innodb_buffer_pages_hashed`,`ibp`.`pages_old` AS `innodb_buffer_pages_old`,`ibp`.`rows_cached` AS `innodb_buffer_rows_cached` from ((`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `sys`.`x$ps_schema_table_statistics_io` `fsbi` on(((`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema`) and (`pst`.`OBJECT_NAME` = `fsbi`.`table_name`)))) left join `sys`.`x$innodb_buffer_stats_by_table` `ibp` on(((`pst`.`OBJECT_SCHEMA` = `ibp`.`object_schema`) and (`pst`.`OBJECT_NAME` = `ibp`.`object_name`)))) order by `pst`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_tables_with_full_table_scans`
--

/*!50001 DROP VIEW IF EXISTS `schema_tables_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_tables_with_full_table_scans` AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `object_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `object_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` AS `rows_full_scanned`,`sys`.`format_time`(`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT`) AS `latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where (isnull(`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME`) and (`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` > 0)) order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `schema_unused_indexes`
--

/*!50001 DROP VIEW IF EXISTS `schema_unused_indexes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `schema_unused_indexes` AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `object_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `object_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` AS `index_name` from `performance_schema`.`table_io_waits_summary_by_index_usage` where ((`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is not null) and (`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_STAR` = 0) and (`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` <> 'mysql') and (`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` <> 'PRIMARY')) order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `session`
--

/*!50001 DROP VIEW IF EXISTS `session`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `session` AS select `processlist`.`thd_id` AS `thd_id`,`processlist`.`conn_id` AS `conn_id`,`processlist`.`user` AS `user`,`processlist`.`db` AS `db`,`processlist`.`command` AS `command`,`processlist`.`state` AS `state`,`processlist`.`time` AS `time`,`processlist`.`current_statement` AS `current_statement`,`processlist`.`statement_latency` AS `statement_latency`,`processlist`.`progress` AS `progress`,`processlist`.`lock_latency` AS `lock_latency`,`processlist`.`rows_examined` AS `rows_examined`,`processlist`.`rows_sent` AS `rows_sent`,`processlist`.`rows_affected` AS `rows_affected`,`processlist`.`tmp_tables` AS `tmp_tables`,`processlist`.`tmp_disk_tables` AS `tmp_disk_tables`,`processlist`.`full_scan` AS `full_scan`,`processlist`.`last_statement` AS `last_statement`,`processlist`.`last_statement_latency` AS `last_statement_latency`,`processlist`.`current_memory` AS `current_memory`,`processlist`.`last_wait` AS `last_wait`,`processlist`.`last_wait_latency` AS `last_wait_latency`,`processlist`.`source` AS `source`,`processlist`.`trx_latency` AS `trx_latency`,`processlist`.`trx_state` AS `trx_state`,`processlist`.`trx_autocommit` AS `trx_autocommit`,`processlist`.`pid` AS `pid`,`processlist`.`program_name` AS `program_name` from `sys`.`processlist` where ((`processlist`.`conn_id` is not null) and (`processlist`.`command` <> 'Daemon')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `session_ssl_status`
--

/*!50001 DROP VIEW IF EXISTS `session_ssl_status`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `session_ssl_status` AS select `sslver`.`THREAD_ID` AS `thread_id`,`sslver`.`VARIABLE_VALUE` AS `ssl_version`,`sslcip`.`VARIABLE_VALUE` AS `ssl_cipher`,`sslreuse`.`VARIABLE_VALUE` AS `ssl_sessions_reused` from ((`performance_schema`.`status_by_thread` `sslver` left join `performance_schema`.`status_by_thread` `sslcip` on(((`sslcip`.`THREAD_ID` = `sslver`.`THREAD_ID`) and (`sslcip`.`VARIABLE_NAME` = 'Ssl_cipher')))) left join `performance_schema`.`status_by_thread` `sslreuse` on(((`sslreuse`.`THREAD_ID` = `sslver`.`THREAD_ID`) and (`sslreuse`.`VARIABLE_NAME` = 'Ssl_sessions_reused')))) where (`sslver`.`VARIABLE_NAME` = 'Ssl_version') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statement_analysis`
--

/*!50001 DROP VIEW IF EXISTS `statement_analysis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statement_analysis` AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,if(((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0)),'*','') AS `full_scan`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `err_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warn_count`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`MAX_TIMER_WAIT`) AS `max_latency`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`AVG_TIMER_WAIT`) AS `avg_latency`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`SUM_LOCK_TIME`) AS `lock_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_sent_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` AS `rows_affected`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_affected_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen` from `performance_schema`.`events_statements_summary_by_digest` order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_errors_or_warnings`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_errors_or_warnings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_errors_or_warnings` AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `errors`,(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100) AS `error_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warnings`,(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100) AS `warning_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where ((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` > 0)) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_full_table_scans`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_full_table_scans` AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` AS `no_index_used_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` AS `no_good_index_used_count`,round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100),0) AS `no_index_used_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`),0) AS `rows_sent_avg`,round((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`),0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0)) and (not((`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` like 'SHOW%')))) order by round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100),0) desc,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_runtimes_in_95th_percentile`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_runtimes_in_95th_percentile`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_runtimes_in_95th_percentile` AS select `sys`.`format_statement`(`stmts`.`DIGEST_TEXT`) AS `query`,`stmts`.`SCHEMA_NAME` AS `db`,if(((`stmts`.`SUM_NO_GOOD_INDEX_USED` > 0) or (`stmts`.`SUM_NO_INDEX_USED` > 0)),'*','') AS `full_scan`,`stmts`.`COUNT_STAR` AS `exec_count`,`stmts`.`SUM_ERRORS` AS `err_count`,`stmts`.`SUM_WARNINGS` AS `warn_count`,`sys`.`format_time`(`stmts`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`stmts`.`MAX_TIMER_WAIT`) AS `max_latency`,`sys`.`format_time`(`stmts`.`AVG_TIMER_WAIT`) AS `avg_latency`,`stmts`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull((`stmts`.`SUM_ROWS_SENT` / nullif(`stmts`.`COUNT_STAR`,0)),0),0) AS `rows_sent_avg`,`stmts`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull((`stmts`.`SUM_ROWS_EXAMINED` / nullif(`stmts`.`COUNT_STAR`,0)),0),0) AS `rows_examined_avg`,`stmts`.`FIRST_SEEN` AS `first_seen`,`stmts`.`LAST_SEEN` AS `last_seen`,`stmts`.`DIGEST` AS `digest` from (`performance_schema`.`events_statements_summary_by_digest` `stmts` join `sys`.`x$ps_digest_95th_percentile_by_avg_us` `top_percentile` on((round((`stmts`.`AVG_TIMER_WAIT` / 1000000),0) >= `top_percentile`.`avg_us`))) order by `stmts`.`AVG_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_sorting`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_sorting`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_sorting` AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_sort_merges`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_SCAN` AS `sorts_using_scans`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_RANGE` AS `sort_using_range`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` > 0) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `statements_with_temp_tables`
--

/*!50001 DROP VIEW IF EXISTS `statements_with_temp_tables`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `statements_with_temp_tables` AS select `sys`.`format_statement`(`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT`) AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT`) AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `memory_tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `disk_tmp_tables`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_tmp_tables_per_query`,round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES`,0)),0) * 100),0) AS `tmp_tables_to_disk_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` > 0) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary`
--

/*!50001 DROP VIEW IF EXISTS `user_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary` AS select if(isnull(`performance_schema`.`accounts`.`USER`),'background',`performance_schema`.`accounts`.`USER`) AS `user`,sum(`stmt`.`total`) AS `statements`,`sys`.`format_time`(sum(`stmt`.`total_latency`)) AS `statement_latency`,`sys`.`format_time`(ifnull((sum(`stmt`.`total_latency`) / nullif(sum(`stmt`.`total`),0)),0)) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,`sys`.`format_time`(sum(`io`.`io_latency`)) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`HOST`) AS `unique_hosts`,`sys`.`format_bytes`(sum(`mem`.`current_allocated`)) AS `current_memory`,`sys`.`format_bytes`(sum(`mem`.`total_allocated`)) AS `total_memory_allocated` from (((`performance_schema`.`accounts` left join `sys`.`x$user_summary_by_statement_latency` `stmt` on((if(isnull(`performance_schema`.`accounts`.`USER`),'background',`performance_schema`.`accounts`.`USER`) = `stmt`.`user`))) left join `sys`.`x$user_summary_by_file_io` `io` on((if(isnull(`performance_schema`.`accounts`.`USER`),'background',`performance_schema`.`accounts`.`USER`) = `io`.`user`))) left join `sys`.`x$memory_by_user_by_current_bytes` `mem` on((if(isnull(`performance_schema`.`accounts`.`USER`),'background',`performance_schema`.`accounts`.`USER`) = `mem`.`user`))) group by if(isnull(`performance_schema`.`accounts`.`USER`),'background',`performance_schema`.`accounts`.`USER`) order by sum(`stmt`.`total_latency`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_file_io`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_file_io` AS select if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR`) AS `ios`,`sys`.`format_time`(sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`)) AS `io_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') group by if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_file_io_type`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_file_io_type` AS select if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where ((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file%') and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` > 0)) order by if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_stages`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_stages` AS select if(isnull(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency` from `performance_schema`.`events_stages_summary_by_user_by_event_name` where (`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if(isnull(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_statement_latency`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_statement_latency` AS select if(isnull(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR`) AS `total`,`sys`.`format_time`(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,`sys`.`format_time`(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency`,`sys`.`format_time`(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME`)) AS `lock_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED`)) AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` group by if(isnull(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `user_summary_by_statement_type`
--

/*!50001 DROP VIEW IF EXISTS `user_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `user_summary_by_statement_type` AS select if(isnull(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,substring_index(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`EVENT_NAME`,'/',-(1)) AS `statement`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,`sys`.`format_time`(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` where (`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if(isnull(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `version`
--

/*!50001 DROP VIEW IF EXISTS `version`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `version` AS select '1.5.1' AS `sys_version`,version() AS `mysql_version` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `wait_classes_global_by_avg_latency`
--

/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_avg_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `wait_classes_global_by_avg_latency` AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,`sys`.`format_time`(cast(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) as unsigned)) AS `total_latency`,`sys`.`format_time`(min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`)) AS `min_latency`,`sys`.`format_time`(ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0)) AS `avg_latency`,`sys`.`format_time`(cast(max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) as unsigned)) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0) and (`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle')) group by `event_class` order by ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `wait_classes_global_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `wait_classes_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `wait_classes_global_by_latency` AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,`sys`.`format_time`(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`)) AS `total_latency`,`sys`.`format_time`(min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`)) AS `min_latency`,`sys`.`format_time`(ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0)) AS `avg_latency`,`sys`.`format_time`(max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`)) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0) and (`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle')) group by substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) order by sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `waits_by_host_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `waits_by_host_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `waits_by_host_by_latency` AS select if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where ((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `waits_by_user_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `waits_by_user_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `waits_by_user_by_latency` AS select if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where ((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is not null) and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `waits_global_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `waits_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `waits_global_by_latency` AS select `performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` AS `events`,`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR` AS `total`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_global_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,`sys`.`format_time`(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by `performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary` AS select if(isnull(`performance_schema`.`accounts`.`HOST`),'background',`performance_schema`.`accounts`.`HOST`) AS `host`,sum(`stmt`.`total`) AS `statements`,sum(`stmt`.`total_latency`) AS `statement_latency`,(sum(`stmt`.`total_latency`) / sum(`stmt`.`total`)) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,sum(`io`.`io_latency`) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`USER`) AS `unique_users`,sum(`mem`.`current_allocated`) AS `current_memory`,sum(`mem`.`total_allocated`) AS `total_memory_allocated` from (((`performance_schema`.`accounts` join `sys`.`x$host_summary_by_statement_latency` `stmt` on((`performance_schema`.`accounts`.`HOST` = `stmt`.`host`))) join `sys`.`x$host_summary_by_file_io` `io` on((`performance_schema`.`accounts`.`HOST` = `io`.`host`))) join `sys`.`x$memory_by_host_by_current_bytes` `mem` on((`performance_schema`.`accounts`.`HOST` = `mem`.`host`))) group by if(isnull(`performance_schema`.`accounts`.`HOST`),'background',`performance_schema`.`accounts`.`HOST`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_file_io`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_file_io` AS select if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR`) AS `ios`,sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `io_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') group by if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_file_io_type`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_file_io_type` AS select if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where ((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` like 'wait/io/file%') and (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` > 0)) order by if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_stages`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_stages` AS select if(isnull(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_stages_summary_by_host_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency` from `performance_schema`.`events_stages_summary_by_host_by_event_name` where (`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if(isnull(`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_stages_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_stages_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_statement_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_statement_latency` AS select if(isnull(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,max(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,(sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED`)) AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` group by if(isnull(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$host_summary_by_statement_type`
--

/*!50001 DROP VIEW IF EXISTS `x$host_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$host_summary_by_statement_type` AS select if(isnull(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`) AS `host`,substring_index(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`EVENT_NAME`,'/',-(1)) AS `statement`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_LOCK_TIME` AS `lock_latency`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_host_by_event_name` where (`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if(isnull(`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_statements_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_statements_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$innodb_buffer_stats_by_schema`
--

/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_schema`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$innodb_buffer_stats_by_schema` AS select if((locate('.',`ibp`.`TABLE_NAME`) = 0),'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) AS `allocated`,sum(`ibp`.`DATA_SIZE`) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if((`ibp`.`IS_HASHED` = 'YES'),1,NULL)) AS `pages_hashed`,count(if((`ibp`.`IS_OLD` = 'YES'),1,NULL)) AS `pages_old`,round(ifnull((sum(`ibp`.`NUMBER_RECORDS`) / nullif(count(distinct `ibp`.`INDEX_NAME`),0)),0),0) AS `rows_cached` from `information_schema`.`innodb_buffer_page` `ibp` where (`ibp`.`TABLE_NAME` is not null) group by `object_schema` order by sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$innodb_buffer_stats_by_table`
--

/*!50001 DROP VIEW IF EXISTS `x$innodb_buffer_stats_by_table`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$innodb_buffer_stats_by_table` AS select if((locate('.',`ibp`.`TABLE_NAME`) = 0),'InnoDB System',replace(substring_index(`ibp`.`TABLE_NAME`,'.',1),'`','')) AS `object_schema`,replace(substring_index(`ibp`.`TABLE_NAME`,'.',-(1)),'`','') AS `object_name`,sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) AS `allocated`,sum(`ibp`.`DATA_SIZE`) AS `data`,count(`ibp`.`PAGE_NUMBER`) AS `pages`,count(if((`ibp`.`IS_HASHED` = 'YES'),1,NULL)) AS `pages_hashed`,count(if((`ibp`.`IS_OLD` = 'YES'),1,NULL)) AS `pages_old`,round(ifnull((sum(`ibp`.`NUMBER_RECORDS`) / nullif(count(distinct `ibp`.`INDEX_NAME`),0)),0),0) AS `rows_cached` from `information_schema`.`innodb_buffer_page` `ibp` where (`ibp`.`TABLE_NAME` is not null) group by `object_schema`,`object_name` order by sum(if((`ibp`.`COMPRESSED_SIZE` = 0),16384,`ibp`.`COMPRESSED_SIZE`)) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$innodb_lock_waits`
--

/*!50001 DROP VIEW IF EXISTS `x$innodb_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$innodb_lock_waits` AS select `r`.`trx_wait_started` AS `wait_started`,timediff(now(),`r`.`trx_wait_started`) AS `wait_age`,timestampdiff(SECOND,`r`.`trx_wait_started`,now()) AS `wait_age_secs`,`rl`.`lock_table` AS `locked_table`,`rl`.`lock_index` AS `locked_index`,`rl`.`lock_type` AS `locked_type`,`r`.`trx_id` AS `waiting_trx_id`,`r`.`trx_started` AS `waiting_trx_started`,timediff(now(),`r`.`trx_started`) AS `waiting_trx_age`,`r`.`trx_rows_locked` AS `waiting_trx_rows_locked`,`r`.`trx_rows_modified` AS `waiting_trx_rows_modified`,`r`.`trx_mysql_thread_id` AS `waiting_pid`,`r`.`trx_query` AS `waiting_query`,`rl`.`lock_id` AS `waiting_lock_id`,`rl`.`lock_mode` AS `waiting_lock_mode`,`b`.`trx_id` AS `blocking_trx_id`,`b`.`trx_mysql_thread_id` AS `blocking_pid`,`b`.`trx_query` AS `blocking_query`,`bl`.`lock_id` AS `blocking_lock_id`,`bl`.`lock_mode` AS `blocking_lock_mode`,`b`.`trx_started` AS `blocking_trx_started`,timediff(now(),`b`.`trx_started`) AS `blocking_trx_age`,`b`.`trx_rows_locked` AS `blocking_trx_rows_locked`,`b`.`trx_rows_modified` AS `blocking_trx_rows_modified`,concat('KILL QUERY ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_query`,concat('KILL ',`b`.`trx_mysql_thread_id`) AS `sql_kill_blocking_connection` from ((((`information_schema`.`innodb_lock_waits` `w` join `information_schema`.`innodb_trx` `b` on((`b`.`trx_id` = `w`.`blocking_trx_id`))) join `information_schema`.`innodb_trx` `r` on((`r`.`trx_id` = `w`.`requesting_trx_id`))) join `information_schema`.`innodb_locks` `bl` on((`bl`.`lock_id` = `w`.`blocking_lock_id`))) join `information_schema`.`innodb_locks` `rl` on((`rl`.`lock_id` = `w`.`requested_lock_id`))) order by `r`.`trx_wait_started` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_by_thread_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$io_by_thread_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_by_thread_by_latency` AS select if(isnull(`performance_schema`.`threads`.`PROCESSLIST_ID`),substring_index(`performance_schema`.`threads`.`NAME`,'/',-(1)),concat(`performance_schema`.`threads`.`PROCESSLIST_USER`,'@',`performance_schema`.`threads`.`PROCESSLIST_HOST`)) AS `user`,sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,min(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,avg(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`AVG_TIMER_WAIT`) AS `avg_latency`,max(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` AS `thread_id`,`performance_schema`.`threads`.`PROCESSLIST_ID` AS `processlist_id` from (`performance_schema`.`events_waits_summary_by_thread_by_event_name` left join `performance_schema`.`threads` on((`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`))) where ((`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT` > 0)) group by `performance_schema`.`events_waits_summary_by_thread_by_event_name`.`THREAD_ID`,`performance_schema`.`threads`.`PROCESSLIST_ID`,`user` order by sum(`performance_schema`.`events_waits_summary_by_thread_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_file_by_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_global_by_file_by_bytes` AS select `performance_schema`.`file_summary_by_instance`.`FILE_NAME` AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` AS `total_read`,ifnull((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_READ`,0)),0) AS `avg_read`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE` AS `total_written`,ifnull((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE`,0)),0.00) AS `avg_write`,(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `total`,ifnull(round((100 - ((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` / nullif((`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`),0)) * 100)),2),0.00) AS `write_pct` from `performance_schema`.`file_summary_by_instance` order by (`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ` + `performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_file_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$io_global_by_file_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_global_by_file_by_latency` AS select `performance_schema`.`file_summary_by_instance`.`FILE_NAME` AS `file`,`performance_schema`.`file_summary_by_instance`.`COUNT_STAR` AS `total`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_READ` AS `read_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WRITE` AS `write_latency`,`performance_schema`.`file_summary_by_instance`.`COUNT_MISC` AS `count_misc`,`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_MISC` AS `misc_latency` from `performance_schema`.`file_summary_by_instance` order by `performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_wait_by_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_global_by_wait_by_bytes` AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-(2)) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`file_summary_by_event_name`.`MIN_TIMER_WAIT` AS `min_latency`,`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` AS `total_read`,ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0)),0) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` AS `total_written`,ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0)),0) AS `avg_written`,(`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) AS `total_requested` from `performance_schema`.`file_summary_by_event_name` where ((`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0)) order by (`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` + `performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$io_global_by_wait_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$io_global_by_wait_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$io_global_by_wait_by_latency` AS select substring_index(`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME`,'/',-(2)) AS `event_name`,`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`file_summary_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`file_summary_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_READ` AS `read_latency`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WRITE` AS `write_latency`,`performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_MISC` AS `misc_latency`,`performance_schema`.`file_summary_by_event_name`.`COUNT_READ` AS `count_read`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` AS `total_read`,ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_READ` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_READ`,0)),0) AS `avg_read`,`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE` AS `count_write`,`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` AS `total_written`,ifnull((`performance_schema`.`file_summary_by_event_name`.`SUM_NUMBER_OF_BYTES_WRITE` / nullif(`performance_schema`.`file_summary_by_event_name`.`COUNT_WRITE`,0)),0) AS `avg_written` from `performance_schema`.`file_summary_by_event_name` where ((`performance_schema`.`file_summary_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') and (`performance_schema`.`file_summary_by_event_name`.`COUNT_STAR` > 0)) order by `performance_schema`.`file_summary_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$latest_file_io`
--

/*!50001 DROP VIEW IF EXISTS `x$latest_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$latest_file_io` AS select if(isnull(`information_schema`.`processlist`.`ID`),concat(substring_index(`performance_schema`.`threads`.`NAME`,'/',-(1)),':',`performance_schema`.`events_waits_history_long`.`THREAD_ID`),concat(`information_schema`.`processlist`.`USER`,'@',`information_schema`.`processlist`.`HOST`,':',`information_schema`.`processlist`.`ID`)) AS `thread`,`performance_schema`.`events_waits_history_long`.`OBJECT_NAME` AS `file`,`performance_schema`.`events_waits_history_long`.`TIMER_WAIT` AS `latency`,`performance_schema`.`events_waits_history_long`.`OPERATION` AS `operation`,`performance_schema`.`events_waits_history_long`.`NUMBER_OF_BYTES` AS `requested` from ((`performance_schema`.`events_waits_history_long` join `performance_schema`.`threads` on((`performance_schema`.`events_waits_history_long`.`THREAD_ID` = `performance_schema`.`threads`.`THREAD_ID`))) left join `information_schema`.`processlist` on((`performance_schema`.`threads`.`PROCESSLIST_ID` = `information_schema`.`processlist`.`ID`))) where ((`performance_schema`.`events_waits_history_long`.`OBJECT_NAME` is not null) and (`performance_schema`.`events_waits_history_long`.`EVENT_NAME` like 'wait/io/file/%')) order by `performance_schema`.`events_waits_history_long`.`TIMER_START` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_by_host_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_by_host_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_by_host_by_current_bytes` AS select if(isnull(`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) AS `host`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_allocated`,ifnull((sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_COUNT_USED`),0)),0) AS `current_avg_alloc`,max(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_max_alloc`,sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `total_allocated` from `performance_schema`.`memory_summary_by_host_by_event_name` group by if(isnull(`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`memory_summary_by_host_by_event_name`.`HOST`) order by sum(`performance_schema`.`memory_summary_by_host_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_by_thread_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_by_thread_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_by_thread_by_current_bytes` AS select `t`.`THREAD_ID` AS `thread_id`,if((`t`.`NAME` = 'thread/sql/one_connection'),concat(`t`.`PROCESSLIST_USER`,'@',`t`.`PROCESSLIST_HOST`),replace(`t`.`NAME`,'thread/','')) AS `user`,sum(`mt`.`CURRENT_COUNT_USED`) AS `current_count_used`,sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_allocated`,ifnull((sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`mt`.`CURRENT_COUNT_USED`),0)),0) AS `current_avg_alloc`,max(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_max_alloc`,sum(`mt`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `total_allocated` from (`performance_schema`.`memory_summary_by_thread_by_event_name` `mt` join `performance_schema`.`threads` `t` on((`mt`.`THREAD_ID` = `t`.`THREAD_ID`))) group by `t`.`THREAD_ID`,if((`t`.`NAME` = 'thread/sql/one_connection'),concat(`t`.`PROCESSLIST_USER`,'@',`t`.`PROCESSLIST_HOST`),replace(`t`.`NAME`,'thread/','')) order by sum(`mt`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_by_user_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_by_user_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_by_user_by_current_bytes` AS select if(isnull(`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`) AS `current_count_used`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_allocated`,ifnull((sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) / nullif(sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_COUNT_USED`),0)),0) AS `current_avg_alloc`,max(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `current_max_alloc`,sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`SUM_NUMBER_OF_BYTES_ALLOC`) AS `total_allocated` from `performance_schema`.`memory_summary_by_user_by_event_name` group by if(isnull(`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`memory_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`memory_summary_by_user_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_global_by_current_bytes`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_global_by_current_bytes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_global_by_current_bytes` AS select `performance_schema`.`memory_summary_global_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED` AS `current_count`,`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` AS `current_alloc`,ifnull((`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_COUNT_USED`,0)),0) AS `current_avg_alloc`,`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED` AS `high_count`,`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED` AS `high_alloc`,ifnull((`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_NUMBER_OF_BYTES_USED` / nullif(`performance_schema`.`memory_summary_global_by_event_name`.`HIGH_COUNT_USED`,0)),0) AS `high_avg_alloc` from `performance_schema`.`memory_summary_global_by_event_name` where (`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` > 0) order by `performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$memory_global_total`
--

/*!50001 DROP VIEW IF EXISTS `x$memory_global_total`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$memory_global_total` AS select sum(`performance_schema`.`memory_summary_global_by_event_name`.`CURRENT_NUMBER_OF_BYTES_USED`) AS `total_allocated` from `performance_schema`.`memory_summary_global_by_event_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$processlist`
--

/*!50001 DROP VIEW IF EXISTS `x$processlist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$processlist` AS select `pps`.`THREAD_ID` AS `thd_id`,`pps`.`PROCESSLIST_ID` AS `conn_id`,if((`pps`.`NAME` = 'thread/sql/one_connection'),concat(`pps`.`PROCESSLIST_USER`,'@',`pps`.`PROCESSLIST_HOST`),replace(`pps`.`NAME`,'thread/','')) AS `user`,`pps`.`PROCESSLIST_DB` AS `db`,`pps`.`PROCESSLIST_COMMAND` AS `command`,`pps`.`PROCESSLIST_STATE` AS `state`,`pps`.`PROCESSLIST_TIME` AS `time`,`pps`.`PROCESSLIST_INFO` AS `current_statement`,if(isnull(`esc`.`END_EVENT_ID`),`esc`.`TIMER_WAIT`,NULL) AS `statement_latency`,if(isnull(`esc`.`END_EVENT_ID`),round((100 * (`estc`.`WORK_COMPLETED` / `estc`.`WORK_ESTIMATED`)),2),NULL) AS `progress`,`esc`.`LOCK_TIME` AS `lock_latency`,`esc`.`ROWS_EXAMINED` AS `rows_examined`,`esc`.`ROWS_SENT` AS `rows_sent`,`esc`.`ROWS_AFFECTED` AS `rows_affected`,`esc`.`CREATED_TMP_TABLES` AS `tmp_tables`,`esc`.`CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,if(((`esc`.`NO_GOOD_INDEX_USED` > 0) or (`esc`.`NO_INDEX_USED` > 0)),'YES','NO') AS `full_scan`,if((`esc`.`END_EVENT_ID` is not null),`esc`.`SQL_TEXT`,NULL) AS `last_statement`,if((`esc`.`END_EVENT_ID` is not null),`esc`.`TIMER_WAIT`,NULL) AS `last_statement_latency`,`mem`.`current_allocated` AS `current_memory`,`ewc`.`EVENT_NAME` AS `last_wait`,if((isnull(`ewc`.`END_EVENT_ID`) and (`ewc`.`EVENT_NAME` is not null)),'Still Waiting',`ewc`.`TIMER_WAIT`) AS `last_wait_latency`,`ewc`.`SOURCE` AS `source`,`etc`.`TIMER_WAIT` AS `trx_latency`,`etc`.`STATE` AS `trx_state`,`etc`.`AUTOCOMMIT` AS `trx_autocommit`,`conattr_pid`.`ATTR_VALUE` AS `pid`,`conattr_progname`.`ATTR_VALUE` AS `program_name` from (((((((`performance_schema`.`threads` `pps` left join `performance_schema`.`events_waits_current` `ewc` on((`pps`.`THREAD_ID` = `ewc`.`THREAD_ID`))) left join `performance_schema`.`events_stages_current` `estc` on((`pps`.`THREAD_ID` = `estc`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `esc` on((`pps`.`THREAD_ID` = `esc`.`THREAD_ID`))) left join `performance_schema`.`events_transactions_current` `etc` on((`pps`.`THREAD_ID` = `etc`.`THREAD_ID`))) left join `sys`.`x$memory_by_thread_by_current_bytes` `mem` on((`pps`.`THREAD_ID` = `mem`.`thread_id`))) left join `performance_schema`.`session_connect_attrs` `conattr_pid` on(((`conattr_pid`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID`) and (`conattr_pid`.`ATTR_NAME` = '_pid')))) left join `performance_schema`.`session_connect_attrs` `conattr_progname` on(((`conattr_progname`.`PROCESSLIST_ID` = `pps`.`PROCESSLIST_ID`) and (`conattr_progname`.`ATTR_NAME` = 'program_name')))) order by `pps`.`PROCESSLIST_TIME` desc,`last_wait_latency` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$ps_digest_95th_percentile_by_avg_us`
--

/*!50001 DROP VIEW IF EXISTS `x$ps_digest_95th_percentile_by_avg_us`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$ps_digest_95th_percentile_by_avg_us` AS select `s2`.`avg_us` AS `avg_us`,ifnull((sum(`s1`.`cnt`) / nullif((select count(0) from `performance_schema`.`events_statements_summary_by_digest`),0)),0) AS `percentile` from (`sys`.`x$ps_digest_avg_latency_distribution` `s1` join `sys`.`x$ps_digest_avg_latency_distribution` `s2` on((`s1`.`avg_us` <= `s2`.`avg_us`))) group by `s2`.`avg_us` having (ifnull((sum(`s1`.`cnt`) / nullif((select count(0) from `performance_schema`.`events_statements_summary_by_digest`),0)),0) > 0.95) order by `percentile` limit 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$ps_digest_avg_latency_distribution`
--

/*!50001 DROP VIEW IF EXISTS `x$ps_digest_avg_latency_distribution`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$ps_digest_avg_latency_distribution` AS select count(0) AS `cnt`,round((`performance_schema`.`events_statements_summary_by_digest`.`AVG_TIMER_WAIT` / 1000000),0) AS `avg_us` from `performance_schema`.`events_statements_summary_by_digest` group by `avg_us` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$ps_schema_table_statistics_io`
--

/*!50001 DROP VIEW IF EXISTS `x$ps_schema_table_statistics_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$ps_schema_table_statistics_io` AS select `extract_schema_from_file_name`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `table_schema`,`extract_table_from_file_name`(`performance_schema`.`file_summary_by_instance`.`FILE_NAME`) AS `table_name`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_READ`) AS `count_read`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_READ`) AS `sum_number_of_bytes_read`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_READ`) AS `sum_timer_read`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_WRITE`) AS `count_write`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_NUMBER_OF_BYTES_WRITE`) AS `sum_number_of_bytes_write`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_WRITE`) AS `sum_timer_write`,sum(`performance_schema`.`file_summary_by_instance`.`COUNT_MISC`) AS `count_misc`,sum(`performance_schema`.`file_summary_by_instance`.`SUM_TIMER_MISC`) AS `sum_timer_misc` from `performance_schema`.`file_summary_by_instance` group by `table_schema`,`table_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_flattened_keys`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_flattened_keys`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_flattened_keys` AS select `information_schema`.`STATISTICS`.`TABLE_SCHEMA` AS `table_schema`,`information_schema`.`STATISTICS`.`TABLE_NAME` AS `table_name`,`information_schema`.`STATISTICS`.`INDEX_NAME` AS `index_name`,max(`information_schema`.`STATISTICS`.`NON_UNIQUE`) AS `non_unique`,max(if(isnull(`information_schema`.`STATISTICS`.`SUB_PART`),0,1)) AS `subpart_exists`,group_concat(`information_schema`.`STATISTICS`.`COLUMN_NAME` order by `information_schema`.`STATISTICS`.`SEQ_IN_INDEX` ASC separator ',') AS `index_columns` from `INFORMATION_SCHEMA`.`STATISTICS` where ((`information_schema`.`STATISTICS`.`INDEX_TYPE` = 'BTREE') and (`information_schema`.`STATISTICS`.`TABLE_SCHEMA` not in ('mysql','sys','INFORMATION_SCHEMA','PERFORMANCE_SCHEMA'))) group by `information_schema`.`STATISTICS`.`TABLE_SCHEMA`,`information_schema`.`STATISTICS`.`TABLE_NAME`,`information_schema`.`STATISTICS`.`INDEX_NAME` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_index_statistics`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_index_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_index_statistics` AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `table_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `table_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` AS `index_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_FETCH` AS `rows_selected`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_FETCH` AS `select_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_INSERT` AS `rows_inserted`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_INSERT` AS `insert_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_UPDATE` AS `rows_updated`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_UPDATE` AS `update_latency`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_DELETE` AS `rows_deleted`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_INSERT` AS `delete_latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where (`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME` is not null) order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_table_lock_waits`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_table_lock_waits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_table_lock_waits` AS select `g`.`OBJECT_SCHEMA` AS `object_schema`,`g`.`OBJECT_NAME` AS `object_name`,`pt`.`THREAD_ID` AS `waiting_thread_id`,`pt`.`PROCESSLIST_ID` AS `waiting_pid`,`sys`.`ps_thread_account`(`p`.`OWNER_THREAD_ID`) AS `waiting_account`,`p`.`LOCK_TYPE` AS `waiting_lock_type`,`p`.`LOCK_DURATION` AS `waiting_lock_duration`,`pt`.`PROCESSLIST_INFO` AS `waiting_query`,`pt`.`PROCESSLIST_TIME` AS `waiting_query_secs`,`ps`.`ROWS_AFFECTED` AS `waiting_query_rows_affected`,`ps`.`ROWS_EXAMINED` AS `waiting_query_rows_examined`,`gt`.`THREAD_ID` AS `blocking_thread_id`,`gt`.`PROCESSLIST_ID` AS `blocking_pid`,`sys`.`ps_thread_account`(`g`.`OWNER_THREAD_ID`) AS `blocking_account`,`g`.`LOCK_TYPE` AS `blocking_lock_type`,`g`.`LOCK_DURATION` AS `blocking_lock_duration`,concat('KILL QUERY ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_query`,concat('KILL ',`gt`.`PROCESSLIST_ID`) AS `sql_kill_blocking_connection` from (((((`performance_schema`.`metadata_locks` `g` join `performance_schema`.`metadata_locks` `p` on(((`g`.`OBJECT_TYPE` = `p`.`OBJECT_TYPE`) and (`g`.`OBJECT_SCHEMA` = `p`.`OBJECT_SCHEMA`) and (`g`.`OBJECT_NAME` = `p`.`OBJECT_NAME`) and (`g`.`LOCK_STATUS` = 'GRANTED') and (`p`.`LOCK_STATUS` = 'PENDING')))) join `performance_schema`.`threads` `gt` on((`g`.`OWNER_THREAD_ID` = `gt`.`THREAD_ID`))) join `performance_schema`.`threads` `pt` on((`p`.`OWNER_THREAD_ID` = `pt`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `gs` on((`g`.`OWNER_THREAD_ID` = `gs`.`THREAD_ID`))) left join `performance_schema`.`events_statements_current` `ps` on((`p`.`OWNER_THREAD_ID` = `ps`.`THREAD_ID`))) where (`g`.`OBJECT_TYPE` = 'TABLE') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_table_statistics`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_table_statistics` AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,`pst`.`SUM_TIMER_WAIT` AS `total_latency`,`pst`.`COUNT_FETCH` AS `rows_fetched`,`pst`.`SUM_TIMER_FETCH` AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,`pst`.`SUM_TIMER_INSERT` AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,`pst`.`SUM_TIMER_UPDATE` AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,`pst`.`SUM_TIMER_DELETE` AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,`fsbi`.`sum_number_of_bytes_read` AS `io_read`,`fsbi`.`sum_timer_read` AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,`fsbi`.`sum_number_of_bytes_write` AS `io_write`,`fsbi`.`sum_timer_write` AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,`fsbi`.`sum_timer_misc` AS `io_misc_latency` from (`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `sys`.`x$ps_schema_table_statistics_io` `fsbi` on(((`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema`) and (`pst`.`OBJECT_NAME` = `fsbi`.`table_name`)))) order by `pst`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_table_statistics_with_buffer`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_table_statistics_with_buffer`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_table_statistics_with_buffer` AS select `pst`.`OBJECT_SCHEMA` AS `table_schema`,`pst`.`OBJECT_NAME` AS `table_name`,`pst`.`COUNT_FETCH` AS `rows_fetched`,`pst`.`SUM_TIMER_FETCH` AS `fetch_latency`,`pst`.`COUNT_INSERT` AS `rows_inserted`,`pst`.`SUM_TIMER_INSERT` AS `insert_latency`,`pst`.`COUNT_UPDATE` AS `rows_updated`,`pst`.`SUM_TIMER_UPDATE` AS `update_latency`,`pst`.`COUNT_DELETE` AS `rows_deleted`,`pst`.`SUM_TIMER_DELETE` AS `delete_latency`,`fsbi`.`count_read` AS `io_read_requests`,`fsbi`.`sum_number_of_bytes_read` AS `io_read`,`fsbi`.`sum_timer_read` AS `io_read_latency`,`fsbi`.`count_write` AS `io_write_requests`,`fsbi`.`sum_number_of_bytes_write` AS `io_write`,`fsbi`.`sum_timer_write` AS `io_write_latency`,`fsbi`.`count_misc` AS `io_misc_requests`,`fsbi`.`sum_timer_misc` AS `io_misc_latency`,`ibp`.`allocated` AS `innodb_buffer_allocated`,`ibp`.`data` AS `innodb_buffer_data`,(`ibp`.`allocated` - `ibp`.`data`) AS `innodb_buffer_free`,`ibp`.`pages` AS `innodb_buffer_pages`,`ibp`.`pages_hashed` AS `innodb_buffer_pages_hashed`,`ibp`.`pages_old` AS `innodb_buffer_pages_old`,`ibp`.`rows_cached` AS `innodb_buffer_rows_cached` from ((`performance_schema`.`table_io_waits_summary_by_table` `pst` left join `sys`.`x$ps_schema_table_statistics_io` `fsbi` on(((`pst`.`OBJECT_SCHEMA` = `fsbi`.`table_schema`) and (`pst`.`OBJECT_NAME` = `fsbi`.`table_name`)))) left join `sys`.`x$innodb_buffer_stats_by_table` `ibp` on(((`pst`.`OBJECT_SCHEMA` = `ibp`.`object_schema`) and (`pst`.`OBJECT_NAME` = `ibp`.`object_name`)))) order by `pst`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$schema_tables_with_full_table_scans`
--

/*!50001 DROP VIEW IF EXISTS `x$schema_tables_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$schema_tables_with_full_table_scans` AS select `performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_SCHEMA` AS `object_schema`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`OBJECT_NAME` AS `object_name`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` AS `rows_full_scanned`,`performance_schema`.`table_io_waits_summary_by_index_usage`.`SUM_TIMER_WAIT` AS `latency` from `performance_schema`.`table_io_waits_summary_by_index_usage` where (isnull(`performance_schema`.`table_io_waits_summary_by_index_usage`.`INDEX_NAME`) and (`performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` > 0)) order by `performance_schema`.`table_io_waits_summary_by_index_usage`.`COUNT_READ` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$session`
--

/*!50001 DROP VIEW IF EXISTS `x$session`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$session` AS select `x$processlist`.`thd_id` AS `thd_id`,`x$processlist`.`conn_id` AS `conn_id`,`x$processlist`.`user` AS `user`,`x$processlist`.`db` AS `db`,`x$processlist`.`command` AS `command`,`x$processlist`.`state` AS `state`,`x$processlist`.`time` AS `time`,`x$processlist`.`current_statement` AS `current_statement`,`x$processlist`.`statement_latency` AS `statement_latency`,`x$processlist`.`progress` AS `progress`,`x$processlist`.`lock_latency` AS `lock_latency`,`x$processlist`.`rows_examined` AS `rows_examined`,`x$processlist`.`rows_sent` AS `rows_sent`,`x$processlist`.`rows_affected` AS `rows_affected`,`x$processlist`.`tmp_tables` AS `tmp_tables`,`x$processlist`.`tmp_disk_tables` AS `tmp_disk_tables`,`x$processlist`.`full_scan` AS `full_scan`,`x$processlist`.`last_statement` AS `last_statement`,`x$processlist`.`last_statement_latency` AS `last_statement_latency`,`x$processlist`.`current_memory` AS `current_memory`,`x$processlist`.`last_wait` AS `last_wait`,`x$processlist`.`last_wait_latency` AS `last_wait_latency`,`x$processlist`.`source` AS `source`,`x$processlist`.`trx_latency` AS `trx_latency`,`x$processlist`.`trx_state` AS `trx_state`,`x$processlist`.`trx_autocommit` AS `trx_autocommit`,`x$processlist`.`pid` AS `pid`,`x$processlist`.`program_name` AS `program_name` from `sys`.`x$processlist` where ((`x$processlist`.`conn_id` is not null) and (`x$processlist`.`command` <> 'Daemon')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statement_analysis`
--

/*!50001 DROP VIEW IF EXISTS `x$statement_analysis`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statement_analysis` AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,if(((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0)),'*','') AS `full_scan`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `err_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warn_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`events_statements_summary_by_digest`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_LOCK_TIME` AS `lock_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_sent_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` AS `rows_affected`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_AFFECTED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `rows_affected_avg`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `tmp_disk_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen` from `performance_schema`.`events_statements_summary_by_digest` order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_errors_or_warnings`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_errors_or_warnings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_errors_or_warnings` AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` AS `errors`,(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100) AS `error_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` AS `warnings`,(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100) AS `warning_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where ((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` > 0)) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_ERRORS` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_WARNINGS` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_full_table_scans`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_full_table_scans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_full_table_scans` AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` AS `no_index_used_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` AS `no_good_index_used_count`,round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100),0) AS `no_index_used_pct`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_SENT` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`),0) AS `rows_sent_avg`,round((`performance_schema`.`events_statements_summary_by_digest`.`SUM_ROWS_EXAMINED` / `performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`),0) AS `rows_examined_avg`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` > 0) or (`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_GOOD_INDEX_USED` > 0)) and (not((`performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` like 'SHOW%')))) order by round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_NO_INDEX_USED` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0) * 100),0) desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_runtimes_in_95th_percentile`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_runtimes_in_95th_percentile`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_runtimes_in_95th_percentile` AS select `stmts`.`DIGEST_TEXT` AS `query`,`stmts`.`SCHEMA_NAME` AS `db`,if(((`stmts`.`SUM_NO_GOOD_INDEX_USED` > 0) or (`stmts`.`SUM_NO_INDEX_USED` > 0)),'*','') AS `full_scan`,`stmts`.`COUNT_STAR` AS `exec_count`,`stmts`.`SUM_ERRORS` AS `err_count`,`stmts`.`SUM_WARNINGS` AS `warn_count`,`stmts`.`SUM_TIMER_WAIT` AS `total_latency`,`stmts`.`MAX_TIMER_WAIT` AS `max_latency`,`stmts`.`AVG_TIMER_WAIT` AS `avg_latency`,`stmts`.`SUM_ROWS_SENT` AS `rows_sent`,round(ifnull((`stmts`.`SUM_ROWS_SENT` / nullif(`stmts`.`COUNT_STAR`,0)),0),0) AS `rows_sent_avg`,`stmts`.`SUM_ROWS_EXAMINED` AS `rows_examined`,round(ifnull((`stmts`.`SUM_ROWS_EXAMINED` / nullif(`stmts`.`COUNT_STAR`,0)),0),0) AS `rows_examined_avg`,`stmts`.`FIRST_SEEN` AS `first_seen`,`stmts`.`LAST_SEEN` AS `last_seen`,`stmts`.`DIGEST` AS `digest` from (`performance_schema`.`events_statements_summary_by_digest` `stmts` join `sys`.`x$ps_digest_95th_percentile_by_avg_us` `top_percentile` on((round((`stmts`.`AVG_TIMER_WAIT` / 1000000),0) >= `top_percentile`.`avg_us`))) order by `stmts`.`AVG_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_sorting`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_sorting`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_sorting` AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` AS `sort_merge_passes`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_MERGE_PASSES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_sort_merges`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_SCAN` AS `sorts_using_scans`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_RANGE` AS `sort_using_range`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` AS `rows_sorted`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_rows_sorted`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (`performance_schema`.`events_statements_summary_by_digest`.`SUM_SORT_ROWS` > 0) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$statements_with_temp_tables`
--

/*!50001 DROP VIEW IF EXISTS `x$statements_with_temp_tables`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$statements_with_temp_tables` AS select `performance_schema`.`events_statements_summary_by_digest`.`DIGEST_TEXT` AS `query`,`performance_schema`.`events_statements_summary_by_digest`.`SCHEMA_NAME` AS `db`,`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR` AS `exec_count`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` AS `memory_tmp_tables`,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` AS `disk_tmp_tables`,round(ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`COUNT_STAR`,0)),0),0) AS `avg_tmp_tables_per_query`,round((ifnull((`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` / nullif(`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES`,0)),0) * 100),0) AS `tmp_tables_to_disk_pct`,`performance_schema`.`events_statements_summary_by_digest`.`FIRST_SEEN` AS `first_seen`,`performance_schema`.`events_statements_summary_by_digest`.`LAST_SEEN` AS `last_seen`,`performance_schema`.`events_statements_summary_by_digest`.`DIGEST` AS `digest` from `performance_schema`.`events_statements_summary_by_digest` where (`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` > 0) order by `performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_DISK_TABLES` desc,`performance_schema`.`events_statements_summary_by_digest`.`SUM_CREATED_TMP_TABLES` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary` AS select if(isnull(`performance_schema`.`accounts`.`USER`),'background',`performance_schema`.`accounts`.`USER`) AS `user`,sum(`stmt`.`total`) AS `statements`,sum(`stmt`.`total_latency`) AS `statement_latency`,ifnull((sum(`stmt`.`total_latency`) / nullif(sum(`stmt`.`total`),0)),0) AS `statement_avg_latency`,sum(`stmt`.`full_scans`) AS `table_scans`,sum(`io`.`ios`) AS `file_ios`,sum(`io`.`io_latency`) AS `file_io_latency`,sum(`performance_schema`.`accounts`.`CURRENT_CONNECTIONS`) AS `current_connections`,sum(`performance_schema`.`accounts`.`TOTAL_CONNECTIONS`) AS `total_connections`,count(distinct `performance_schema`.`accounts`.`HOST`) AS `unique_hosts`,sum(`mem`.`current_allocated`) AS `current_memory`,sum(`mem`.`total_allocated`) AS `total_memory_allocated` from (((`performance_schema`.`accounts` left join `sys`.`x$user_summary_by_statement_latency` `stmt` on((if(isnull(`performance_schema`.`accounts`.`USER`),'background',`performance_schema`.`accounts`.`USER`) = `stmt`.`user`))) left join `sys`.`x$user_summary_by_file_io` `io` on((if(isnull(`performance_schema`.`accounts`.`USER`),'background',`performance_schema`.`accounts`.`USER`) = `io`.`user`))) left join `sys`.`x$memory_by_user_by_current_bytes` `mem` on((if(isnull(`performance_schema`.`accounts`.`USER`),'background',`performance_schema`.`accounts`.`USER`) = `mem`.`user`))) group by if(isnull(`performance_schema`.`accounts`.`USER`),'background',`performance_schema`.`accounts`.`USER`) order by sum(`stmt`.`total_latency`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_file_io`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_file_io` AS select if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR`) AS `ios`,sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `io_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file/%') group by if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_file_io_type`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_file_io_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_file_io_type` AS select if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `latency`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where ((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` like 'wait/io/file%') and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` > 0)) order by if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_stages`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_stages`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_stages` AS select if(isnull(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`EVENT_NAME` AS `event_name`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_stages_summary_by_user_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency` from `performance_schema`.`events_stages_summary_by_user_by_event_name` where (`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if(isnull(`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_stages_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_stages_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_statement_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_statement_latency` AS select if(isnull(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME`) AS `lock_latency`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT`) AS `rows_sent`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED`) AS `rows_examined`,sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED`) AS `rows_affected`,(sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED`) + sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED`)) AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` group by if(isnull(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) order by sum(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$user_summary_by_statement_type`
--

/*!50001 DROP VIEW IF EXISTS `x$user_summary_by_statement_type`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$user_summary_by_statement_type` AS select if(isnull(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`) AS `user`,substring_index(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`EVENT_NAME`,'/',-(1)) AS `statement`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_LOCK_TIME` AS `lock_latency`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_SENT` AS `rows_sent`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_EXAMINED` AS `rows_examined`,`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_ROWS_AFFECTED` AS `rows_affected`,(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_INDEX_USED` + `performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_NO_GOOD_INDEX_USED`) AS `full_scans` from `performance_schema`.`events_statements_summary_by_user_by_event_name` where (`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` <> 0) order by if(isnull(`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_statements_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_statements_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$wait_classes_global_by_avg_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_avg_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$wait_classes_global_by_avg_latency` AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0) AS `avg_latency`,max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0) and (`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle')) group by `event_class` order by ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$wait_classes_global_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$wait_classes_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=TEMPTABLE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$wait_classes_global_by_latency` AS select substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) AS `event_class`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`) AS `total`,sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) AS `total_latency`,min(`performance_schema`.`events_waits_summary_global_by_event_name`.`MIN_TIMER_WAIT`) AS `min_latency`,ifnull((sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) / nullif(sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR`),0)),0) AS `avg_latency`,max(`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT`) AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0) and (`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle')) group by substring_index(`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME`,'/',3) order by sum(`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$waits_by_host_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$waits_by_host_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$waits_by_host_by_latency` AS select if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`) AS `host`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_waits_summary_by_host_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_host_by_event_name` where ((`performance_schema`.`events_waits_summary_by_host_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by if(isnull(`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),'background',`performance_schema`.`events_waits_summary_by_host_by_event_name`.`HOST`),`performance_schema`.`events_waits_summary_by_host_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$waits_by_user_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$waits_by_user_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$waits_by_user_by_latency` AS select if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`) AS `user`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` AS `event`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_waits_summary_by_user_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_by_user_by_event_name` where ((`performance_schema`.`events_waits_summary_by_user_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER` is not null) and (`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by if(isnull(`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),'background',`performance_schema`.`events_waits_summary_by_user_by_event_name`.`USER`),`performance_schema`.`events_waits_summary_by_user_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `x$waits_global_by_latency`
--

/*!50001 DROP VIEW IF EXISTS `x$waits_global_by_latency`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=MERGE */
/*!50013 DEFINER=`mysql.sys`@`localhost` SQL SECURITY INVOKER */
/*!50001 VIEW `x$waits_global_by_latency` AS select `performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` AS `events`,`performance_schema`.`events_waits_summary_global_by_event_name`.`COUNT_STAR` AS `total`,`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` AS `total_latency`,`performance_schema`.`events_waits_summary_global_by_event_name`.`AVG_TIMER_WAIT` AS `avg_latency`,`performance_schema`.`events_waits_summary_global_by_event_name`.`MAX_TIMER_WAIT` AS `max_latency` from `performance_schema`.`events_waits_summary_global_by_event_name` where ((`performance_schema`.`events_waits_summary_global_by_event_name`.`EVENT_NAME` <> 'idle') and (`performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` > 0)) order by `performance_schema`.`events_waits_summary_global_by_event_name`.`SUM_TIMER_WAIT` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-14 20:05:28
-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: gestion
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
-- Table structure for table `Grupos`
--

DROP TABLE IF EXISTS `Grupos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Grupos` (
  `idGrupos` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `formu1` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idGrupos`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Grupos`
--

LOCK TABLES `Grupos` WRITE;
/*!40000 ALTER TABLE `Grupos` DISABLE KEYS */;
INSERT INTO `Grupos` VALUES (1,'GRUPO I. OPERACIONES CONTROLADAS POR INDICADORES','a'),(2,'GRUPO II. OPERACIONES CONTROLADAS POR MEDICIONES DE UNIDADES DE OBRA.','c'),(3,'GRUPO III. OPERACIONES EXTRAORDINARIAS.','d'),(4,'MATERIALES GRUPO I','b');
/*!40000 ALTER TABLE `Grupos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Unidades`
--

DROP TABLE IF EXISTS `Unidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Unidades` (
  `idUnidades` int(11) NOT NULL AUTO_INCREMENT,
  `concepto` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idUnidades`),
  UNIQUE KEY `tipo_UNIQUE` (`concepto`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Unidades`
--

LOCK TABLES `Unidades` WRITE;
/*!40000 ALTER TABLE `Unidades` DISABLE KEYS */;
INSERT INTO `Unidades` VALUES (1,' '),(12,'H'),(14,'HA'),(5,'KG'),(13,'KM'),(9,'L'),(7,'M'),(6,'M2'),(3,'M3'),(10,'MÂ²'),(11,'MÂ²XCM'),(4,'T'),(2,'UD'),(8,'UD.');
/*!40000 ALTER TABLE `Unidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actuaciones`
--

DROP TABLE IF EXISTS `actuaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actuaciones` (
  `idactuaciones` int(11) NOT NULL AUTO_INCREMENT,
  `concepto` varchar(45) DEFAULT NULL,
  `id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idactuaciones`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actuaciones`
--

LOCK TABLES `actuaciones` WRITE;
/*!40000 ALTER TABLE `actuaciones` DISABLE KEYS */;
INSERT INTO `actuaciones` VALUES (1,'actuaciondd','2323'),(2,'concepto2','55555'),(3,'dddgggggg','222');
/*!40000 ALTER TABLE `actuaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carreteras`
--

DROP TABLE IF EXISTS `carreteras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carreteras` (
  `idcarreteras` int(11) NOT NULL AUTO_INCREMENT,
  `Concepto` varchar(45) NOT NULL,
  PRIMARY KEY (`idcarreteras`,`Concepto`),
  UNIQUE KEY `Concepto_UNIQUE` (`Concepto`)
) ENGINE=InnoDB AUTO_INCREMENT=742 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carreteras`
--

LOCK TABLES `carreteras` WRITE;
/*!40000 ALTER TABLE `carreteras` DISABLE KEYS */;
INSERT INTO `carreteras` VALUES (522,''),(740,'CL-505'),(16,'M-104'),(20,'M-505'),(109,'M-512'),(23,'M-521'),(739,'M-532'),(107,'M-533'),(17,'M-535'),(25,'M-537'),(741,'M-538'),(738,'M-539'),(1,'M-601'),(5,'M-603'),(7,'M-604'),(6,'M-605'),(3,'M-607'),(2,'M-608'),(15,'M-609'),(24,'M-612'),(18,'M-614'),(21,'M-615'),(9,'M-616'),(26,'M-617'),(14,'M-618'),(10,'M-619'),(4,'M-620'),(19,'M-621'),(13,'M-622'),(12,'M-623'),(22,'M-625'),(87,'M-862'),(737,'M-863'),(11,'M-966'),(8,'SG-615'),(524,'Zona');
/*!40000 ALTER TABLE `carreteras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companys`
--

DROP TABLE IF EXISTS `companys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `localidad` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companys`
--

LOCK TABLES `companys` WRITE;
/*!40000 ALTER TABLE `companys` DISABLE KEYS */;
/*!40000 ALTER TABLE `companys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conceptos`
--

DROP TABLE IF EXISTS `conceptos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conceptos` (
  `idconceptos` int(11) NOT NULL AUTO_INCREMENT,
  `codigo_n` int(11) DEFAULT NULL,
  `codigo_cm` varchar(45) DEFAULT NULL,
  `unidades_id` int(11) NOT NULL,
  `concepto` varchar(400) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT '0.00',
  `subgrupo_id` int(11) NOT NULL,
  `grupo_id` int(11) NOT NULL,
  `formu1` varchar(45) DEFAULT NULL,
  `formu4` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idconceptos`)
) ENGINE=InnoDB AUTO_INCREMENT=1228 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conceptos`
--

LOCK TABLES `conceptos` WRITE;
/*!40000 ALTER TABLE `conceptos` DISABLE KEYS */;
INSERT INTO `conceptos` VALUES (1,10000,'',2,'Mes de abono Ã­ntegro para la ejecuciÃ³n de las operaciones del Grupo I reguladas por indicadores.',120722.18,1,1,'a1',''),(2,10001,'',2,'PenalizaciÃ³n a deducir por indicadores',-1.00,1,1,'a2',''),(3,10002,'',2,'Modificado nÂº1',1.00,1,1,'a3',''),(4,10003,'',2,'Modificado nÂº2',1.00,1,1,'a4',''),(5,10010,'',2,'RevisiÃ³n de precios',1.00,1,1,'a5',''),(6,1,'',7,'Limpieza manual de mÃ¡rgenes',0.00,2,1,'','50'),(7,2,'',7,'Limpieza mecÃ¡nica de calzada y arcenes',0.00,2,1,'','50'),(8,3,'',2,'Limpieza papeleras',0.00,2,1,'','50'),(9,4,'',2,'Retirada residuos procedentes limpieza',0.00,2,1,'','50'),(10,21,'',2,'ReparaciÃ³n del firme con M.B. en frÃ­o',0.00,3,1,'','50'),(11,41,'',2,'Limpieza manual de O.F.',0.00,4,1,'','50'),(12,42,'',2,'Limpieza manual de pasatubos, sumideros, arquetasâ€¦',0.00,4,1,'','50'),(13,43,'',2,'Limpieza con medios mecÃ¡nicos de boca de entrada/salida de O.F. y pasatubos',0.00,4,1,'','50'),(14,44,'',7,'Limpieza manual de drenaje longitudinal',0.00,4,1,'','50'),(15,45,'',7,'Limpieza con medios mecÃ¡nicos de drenaje longitudinal',0.00,4,1,'','50'),(16,46,'',7,'Desatranco de colector con lanza hidrÃ¡ulica',0.00,4,1,'','50'),(17,61,'',2,'Poda y resubida de Ã¡rboles',0.00,5,1,'','50'),(18,62,'',6,'Siega',0.00,5,1,'','50'),(19,63,'',6,'ApliaciÃ³n de herbicidas en mÃ¡rgenes',0.00,5,1,'','50'),(20,64,'',2,'Tala Ã¡rbol',0.00,5,1,'','50'),(21,65,'',2,'Retirada/triturado restos vegetales',0.00,5,1,'','50'),(22,81,'',6,'Limpieza de graffitis en seÃ±ales',0.00,6,1,'','50'),(23,82,'',2,'Retirada de seÃ±al vertical',0.00,6,1,'','50'),(24,83,'',6,'Retirada de publicidad, cartel S < 8 m2',0.00,6,1,'','50'),(25,84,'',6,'Retirada de publicidad, cartel S < 25 m2',0.00,6,1,'','50'),(26,85,'',6,'Retirada de publicidad, cartel S > 25 m2',0.00,6,1,'','50'),(27,86,'',2,'SeÃ±alizar obra/incidencia',0.00,6,1,'','50'),(28,87,'',2,'Retirada de seÃ±alizaciÃ³n obra/incidencia',0.00,6,1,'','50'),(29,88,'',2,'Retirada de elemento de balizamiento',0.00,7,1,'','50'),(30,100,'',7,'RecolocaciÃ³n barrera metÃ¡lica simple.',0.00,8,1,'','50'),(31,101,'',7,'RecolocaciÃ³n barrera metÃ¡lica superpuesta.',0.00,8,1,'','50'),(32,102,'',7,'RecolocaciÃ³n barrera mixta.',0.00,8,1,'','50'),(33,105,'',7,'RecolocaciÃ³n barrera New Jersey.',0.00,8,1,'','50'),(34,106,'',7,'RecolocaciÃ³n barrera motorista',0.00,8,1,'','50'),(35,201,'',2,'Vigilancia de la red',0.00,9,1,'',''),(36,202,'',2,'Vigilancia de las instalaciones de alumbrado y semÃ¡foros',0.00,9,1,'',''),(37,203,'',2,'RealizaciÃ³n de labores de inventario, por brigada de dos operarios y furgoneta',0.00,9,1,'',''),(38,204,'',2,'Vigilancia de estructuras y pasarelas',0.00,9,1,'',''),(39,301,'',12,'Trabajo camiÃ³n quitanieves 4x4 en crtas, accesos y aparcamientos CM',0.00,10,1,'','30'),(40,302,'',12,'Trabajo camiÃ³n quitanieves 4x4 en otros',0.00,10,1,'','30'),(41,303,'',12,'Trabajo camiÃ³n quitanieves 6x6 en crtas, accesos y aparcamientos CM',0.00,10,1,'','30'),(42,304,'',12,'Trabajo camiÃ³n quitanieves 6x6 en otros',0.00,10,1,'','30'),(43,305,'',12,'Trabajo turbo fresa en crtas, accesos y aparcamientos CM',0.00,10,1,'','30'),(44,306,'',12,'Trabajo turbo fresa en otros',0.00,10,1,'','30'),(45,307,'',12,'Trabajo mÃ¡quina mixta en labores de v.invernal',0.00,10,1,'','30'),(46,308,'',12,'Trabajo mÃ¡quina miniexcavadora en labores de v.invernal',0.00,10,1,'','30'),(47,401,'',2,'Retirada de luminaria',0.00,11,1,'','40'),(48,402,'',2,'ActuaciÃ³n Centro Mando alumbrado',0.00,11,1,'','40'),(49,403,'',2,'ActuaciÃ³n Centro Mando semÃ¡foro',0.00,11,1,'','40'),(50,404,'',2,'ActuaciÃ³n Centro Mando SeÃ±alizaciÃ³n Variable',0.00,11,1,'','40'),(51,405,'',2,'ActuaciÃ³n en luminaria',0.00,11,1,'','40'),(52,406,'',2,'Retirada de semÃ¡foro',0.00,11,1,'','40'),(53,407,'',2,'ActuaciÃ³n en est. MeteorolÃ³gica/CAM',0.00,11,1,'','40'),(54,901,'',2,'AtenciÃ³n a accidente de trÃ¡fico (h.laboral)',0.00,12,1,'','50'),(55,902,'',2,'AtenciÃ³n a accidente de trÃ¡fico (h.NO laboral)',0.00,12,1,'','50'),(56,903,'',2,'SeÃ±alizaciÃ³n de vehÃ­culo averiado / incidencia (h.laboral)',0.00,12,1,'','50'),(57,904,'',2,'SeÃ±alizaciÃ³n de vehÃ­culo averiado / incidencia  (h. NO laboral)',0.00,12,1,'','50'),(58,905,'',2,'Retirada de animal domÃ©stico (h.laboral)',0.00,12,1,'','50'),(59,906,'',2,'Retirada de animal domÃ©stico (h. NO laboral)',0.00,12,1,'','50'),(60,907,'',2,'Retirada de animal salvaje (h.laboral)',0.00,12,1,'','50'),(61,908,'',2,'Retirada de animal salvaje (h. NO laboral)',0.00,12,1,'','50'),(62,909,'',2,'Retirada de objetos en calzada (h. laboral)',0.00,12,1,'','50'),(63,910,'',2,'Retirada de objetos en calzada (h. NO laboral)',0.00,12,1,'','50'),(64,911,'',2,'Limpieza de vertidos accidentales (h.laboral)',0.00,12,1,'','50'),(65,912,'',2,'Limpieza de vertidos accidentales (h. NO laboral)',0.00,12,1,'','50'),(66,1001,'MG001',3,'Zahorra natural',10.34,14,1,'b1','50'),(67,1002,'MG002',3,'Zahorra artificial ',11.93,14,1,'b1','50'),(68,1003,'MG003',3,'Grava y gravilla',16.82,14,1,'b1','50'),(69,1004,'MG004',3,'Arena de machaqueo ',16.36,14,1,'b1','50'),(70,1005,'MG005',3,'Arena natural seleccionada',16.36,14,1,'b1','50'),(71,1050,'MP001',4,'EmulsiÃ³n asfÃ¡ltica tipo ECR-0 ',319.20,15,1,'b2','50'),(72,1051,'MP002',4,'EmulsiÃ³n EAR-1 en riego de adherencia o curado/C60B4 ADH o C60B4 CUR. ',336.00,15,1,'b2','50'),(73,1052,'MP003',4,'EmulsiÃ³n EAR-1-M en riego de adherencia o C60BP4 ADH .',383.20,15,1,'b2','50'),(74,1053,'MP004',4,'EmulsiÃ³n asfÃ¡ltica tipo ECR-2 ',332.00,15,1,'b2','50'),(75,1054,'MP005',4,'EmulsiÃ³n asfÃ¡ltica tipo C50BF5 IMP ',344.00,15,1,'b2','50'),(76,1055,'MP006',4,'Mezcla bituminosa en frÃ­o en obra ',34.40,15,1,'b2','50'),(77,1056,'MP007',4,'MBC AC16 surf D ( D-12) y Ã¡rido calizo, filler y betÃºn, en obra ',37.80,15,1,'b2','50'),(78,1057,'MP008',4,'MBC AC22 surf D (D-20) y Ã¡rido silÃ­ceo, filler y betÃºn, en obra ',36.90,15,1,'b2','50'),(79,1058,'MP009',4,'MBC AC22 surf D (D-20) y Ã¡rido calizo filler y betÃºn, en obra ',36.90,15,1,'b2','50'),(80,1059,'MP010',4,'MBC AC16 surf S (S-12) y Ã¡rido silÃ­ceo, filler y betÃºn, en obra ',38.25,15,1,'b2','50'),(81,1060,'MP011',4,'MBC AC16 surf S ( S-12) y Ã¡rido calizo, filler y betÃºn, en obra ',37.35,15,1,'b2','50'),(82,1061,'MP012',4,'MBC AC22 bin S (S-20) y Ã¡rido silÃ­ceo, filler y betÃºn, en obra',38.25,15,1,'b2','50'),(83,1062,'MP013',4,'MBC AC22 bin S (S-20) y Ã¡rido calizo filler y betÃºn, en obra ',37.35,15,1,'b2','50'),(84,1063,'MP014',4,'MBC AC32 bin S (S-25) filler y betÃºn, en obra ',38.16,15,1,'b2','50'),(85,1064,'MP015',4,'MBC AC22 base G (G-20),filler y betÃºn, en obra ',36.45,15,1,'b2','50'),(86,1065,'MP016',4,'MBC AC32 base G (G-25), filler y betÃºn, en obra',36.45,15,1,'b2','50'),(87,1066,'MP017',4,'MB drenante, filler y betÃºn, en obra',40.95,15,1,'b2','50'),(88,1100,'MD001',5,'Cemento Portland I-O/35 ',0.10,4,1,'b3','50'),(89,1101,'MD002',5,'Cemento Portland I-O/45 ',0.12,4,1,'b3','50'),(90,1102,'MD003',5,'Acero corrugado en redondos para armaduras de hormigÃ³n, tipo B- 400 SD.',1.04,4,1,'b3','50'),(91,1103,'MD004',5,'Acero corrugado en redondos para armaduras de hormigÃ³n, tipo B-500 SD.',1.24,4,1,'b3','50'),(92,1104,'MD005',6,'Tablero de madera de pino ',2.86,4,1,'b3','50'),(93,1105,'MD006',7,'TablÃ³n de madera de pino ',0.23,4,1,'b3','50'),(94,1106,'MD007',3,'Tabla de madera de pino',163.04,4,1,'b3','50'),(95,1107,'MD008',2,'Puntal metÃ¡lico telescÃ³pico de 3/4 m',0.13,4,1,'b3','50'),(96,1108,'MD009',9,'Desencofrante ',1.48,4,1,'b3','50'),(97,1109,'MD010',5,' Clavos/puntas ',0.86,4,1,'b3','50'),(98,1110,'MD011',5,' Alambre ',0.66,4,1,'b3','50'),(99,1111,'MD012',7,'Junta de mortero bituminoso tipo \"chicle\"',236.34,4,1,'b3','50'),(100,1112,'MD013',3,'HormigÃ³n de limpieza HL-15',63.18,4,1,'b3','50'),(101,1113,'MD014',3,'HormigÃ³n HM-20 de cualquier consistencia, tamaÃ±o mÃ¡ximo o ambiente',69.19,4,1,'b3','50'),(102,1114,'MD015',3,'HormigÃ³n HA-25 de cualquier consistencia, tamaÃ±o mÃ¡ximo o ambiente',73.58,4,1,'b3','50'),(103,1115,'MD016',3,'HormigÃ³n HA-30 de cualquier consistencia, tamaÃ±o mÃ¡ximo o ambiente',78.53,4,1,'b3','50'),(104,1116,'MD017',3,'HormigÃ³n HA-35 de cualquier consistencia, tamaÃ±o mÃ¡ximo o ambiente',87.26,4,1,'b3','50'),(105,1117,'MD018',3,'HormigÃ³n HA-40 de cualquier consistencia, tamaÃ±o mÃ¡ximo o ambiente',99.99,4,1,'b3','50'),(106,1118,'MD019',7,'Bordillo de piedra granÃ­tica 15 x 25 cm. ',19.51,4,1,'b3','50'),(107,1119,'MD020',7,'Bordillo de piedra granÃ­tica 20 x 25 cm. ',21.80,4,1,'b3','50'),(108,1120,'MD021',7,'Bordillo de hormigÃ³n prefabricado 8 x 20 cm.',2.77,4,1,'b3','50'),(109,1121,'MD022',7,'Bordillo de hormigÃ³n prefabricado 12 x 20 cm. ',3.76,4,1,'b3','50'),(110,1122,'MD023',7,'Bordillo de hormigÃ³n prefabricado 15 x 25 cm. ',5.86,4,1,'b3','50'),(111,1123,'MD024',7,'Bordillo de hormigÃ³n prefabricado 17 x 28 cm ',6.21,4,1,'b3','50'),(112,1124,'MD025',2,'Pieza mortero blanco para rigola 20x20x4 cm',0.44,4,1,'b3','50'),(113,1125,'MD026',2,'Pieza mortero blanco para rigola 20x20x8 cm',0.84,4,1,'b3','50'),(114,1126,'MD027',7,'Canaleta prefabricada para bajantes',23.42,4,1,'b3','50'),(115,1127,'MD028',7,'Bordillo hormigÃ³n H-25 prefabricado de 30x15 cm. ',6.14,4,1,'b3','50'),(116,1128,'MD029',2,'Arqueta sumidero de calzada. ',206.86,4,1,'b3','50'),(117,1129,'MD030',2,'Pozillo de cuneta con rejilla. ',277.13,4,1,'b3','50'),(118,1130,'MD031',2,'Arqueta de desagÃ¼e de dren. ',110.57,4,1,'b3','50'),(119,1131,'MD032',7,'Tubo PVC ranurado diÃ¡metro 15 cm ',5.03,4,1,'b3','50'),(120,1132,'MD033',7,'TuberÃ­a PVC corrugada de 315 mm ',30.97,4,1,'b3','50'),(121,1133,'MD034',7,'TuberÃ­a PVC corrugada de 400 mm ',50.65,4,1,'b3','50'),(122,1134,'MD035',7,'TuberÃ­a PVC corrugada de 500 mm ',88.61,4,1,'b3','50'),(123,1135,'MD036',7,'TuberÃ­a PVC corrugada de 630 mm ',99.85,4,1,'b3','50'),(124,1136,'MD037',7,'TuberÃ­a PVC corrugada de 800 mm',160.50,4,1,'b3','50'),(125,1137,'MD038',7,' Tubo colector hormigÃ³n en masa prefabricado diÃ¡metro 30 cm',6.78,4,1,'b3','50'),(126,1138,'MD039',7,'Tubo colector hormigÃ³n en masa prefabricado diÃ¡metro 40 cm',9.86,4,1,'b3','50'),(127,1139,'MD040',7,' Tubo colector hormigÃ³n en masa prefabricado diÃ¡metro 50 cm',11.97,4,1,'b3','50'),(128,1140,'MD041',7,' Tubo colector hormigÃ³n en masa prefabricado diÃ¡metro 60 cm',18.69,4,1,'b3','50'),(129,1141,'MD042',7,'Tubo colector hormigÃ³n armado prefabricado diÃ¡metro 60 cm ',50.67,4,1,'b3','50'),(130,1142,'MD043',7,'Tubo colector hormigÃ³n en masa prefabricado diÃ¡metro 80 cm ',32.85,4,1,'b3','50'),(131,1143,'MD044',7,'Tubo colector hormigÃ³n armado prefabricado diÃ¡metro 80 cm ',89.76,4,1,'b3','50'),(132,1144,'MD045',7,'Tubo colector hormigÃ³n en masa prefabricado diÃ¡metro 100 cm ',50.74,4,1,'b3','50'),(133,1145,'MD046',7,'Tubo colector hormigÃ³n armado prefabricado diÃ¡metro 100 cm ',132.33,4,1,'b3','50'),(134,1146,'MD047',7,'Tubo colector hormigÃ³n armado prefabricado diÃ¡metro 120 cm',171.70,4,1,'b3','50'),(135,1147,'MD048',7,'Tubo colector hormigÃ³n armado prefabricado diÃ¡metro 150 cm ',240.54,4,1,'b3','50'),(136,1200,'MS001',2,'SeÃ±al circular de diÃ¡metro 60 cm, reflexiva nivel I ',48.20,6,1,'b4','10'),(137,1201,'MS002',2,'SeÃ±al circular de diÃ¡metro 90 cm, reflexiva nivel I ',88.33,6,1,'b4','10'),(138,1202,'MS003',2,'SeÃ±al circular de diÃ¡metro 90 cm, reflexiva nivel II ',109.73,6,1,'b4','10'),(139,1203,'MS004',2,'SeÃ±al circular de diÃ¡metro 120 cm, reflexiva nivel II',162.91,6,1,'b4','10'),(140,1204,'MS005',2,'SeÃ±al circular de diÃ¡metro 120 cm, reflexiva nivel III ',195.49,6,1,'b4','10'),(141,1205,'MS006',2,'SeÃ±al triangular de lado 70 cm, reflexiva nivel I ',37.99,6,1,'b4','10'),(142,1206,'MS007',2,'SeÃ±al triangular de lado 90 cm, reflexiva nivel I ',52.58,6,1,'b4','10'),(143,1207,'MS008',2,'SeÃ±al triangular de lado 135 cm, reflexiva nivel I',103.27,6,1,'b4','10'),(144,1208,'MS009',2,'SeÃ±al triangular de lado 135 cm, reflexiva nivel II ',123.95,6,1,'b4','10'),(145,1209,'MS010',2,'SeÃ±al triangular de lado 175 cm, reflexiva nivel II',201.36,6,1,'b4','10'),(146,1210,'MS011',2,'SeÃ±al triangular de lado 175 cm, reflexiva nivel III',241.63,6,1,'b4','10'),(147,1211,'MS012',2,'SeÃ±al octogonal de doble apotema 60 cm, reflexiva nivel I ',60.17,6,1,'b4','10'),(148,1212,'MS013',2,'SeÃ±al octogonal de doble apotema 90 cm, reflexiva nivel I ',101.39,6,1,'b4','10'),(149,1213,'MS014',2,'SeÃ±al octogonal de doble apotema 90 cm, reflexiva nivel II',110.54,6,1,'b4','10'),(150,1214,'MS015',2,'SeÃ±al octogonal de doble apotema 120 cm, reflexiva nivel II',201.64,6,1,'b4','10'),(151,1215,'MS016',2,'SeÃ±al octogonal de doble apotema 120 cm, reflexiva nivel III ',241.97,6,1,'b4','10'),(152,1216,'MS017',2,'SeÃ±al cuadrada de lado 60 cm, reflexiva nivel I ',79.78,6,1,'b4','10'),(153,1217,'MS018',2,'SeÃ±al cuadrada de lado 90 cm, reflexiva nivel I ',109.27,6,1,'b4','10'),(154,1218,'MS019',2,'SeÃ±al cuadrada de lado 90 cm, reflexiva nivel II',128.13,6,1,'b4','10'),(155,1219,'MS020',2,'SeÃ±al cuadrada de lado 120 cm, reflexiva nivel II ',233.33,6,1,'b4','10'),(156,1220,'MS021',2,'SeÃ±al cuadrada de lado 120 cm, reflexiva nivel III ',279.99,6,1,'b4','10'),(157,1221,'MS022',2,'SeÃ±al rectangular de 60 x 90 cm, reflexiva nivel I ',111.62,6,1,'b4','10'),(158,1222,'MS023',2,'SeÃ±al rectangular de 90 x 135 cm, reflexiva nivel I',189.28,6,1,'b4','10'),(159,1223,'MS024',2,'SeÃ±al rectangular de 120x180 cm, reflexiva nivel II ',335.37,6,1,'b4','10'),(160,1224,'MS025',2,'SeÃ±al rectangular de 60 x 90 cm, reflexiva nivel II ',106.79,6,1,'b4','10'),(161,1225,'MS026',2,'SeÃ±al rectangular de 90 x 135 cm, reflexiva nivel II',276.00,6,1,'b4','10'),(162,1226,'MS027',2,'SeÃ±al rectangular de 120x180 cm, reflexiva nivel III ',331.20,6,1,'b4','10'),(163,1227,'MS028',2,'Panel direccional de 80 x 40 cm, reflexivo nivel I',47.31,6,1,'b4','10'),(164,1228,'MS029',2,'Panel direccional 160 x 40 cm, reflexivo nivel I',96.43,6,1,'b4','10'),(165,1229,'MS030',2,'Panel direccional de 80 x 40 cm, reflexivo nivel II ',72.01,6,1,'b4','10'),(166,1230,'MS031',2,'Panel direccional 160 x 40 cm, reflexivo nivel II ',113.00,6,1,'b4','10'),(167,1231,'MS032',2,'Panel direccional de 80 x 40cm, reflexivo nivel III ',135.60,6,1,'b4','10'),(168,1232,'MS033',2,'Panel direccional 160 x 40 cm, reflexivo nivel III ',119.11,6,1,'b4','10'),(169,1233,'MS034',2,'Panel direccional de 160x45 cm, con elementos de iluminaciÃ³n tipo LEDS',1451.15,6,1,'b4','10'),(170,1234,'MS035',2,'SeÃ±al de trÃ¡fico de 90 cm con elementos de iluminaciÃ³n tipo LEDS. ',926.29,6,1,'b4','10'),(171,1235,'MS036',7,'Poste de 80x40x2 mm para seÃ±ales de trÃ¡fico. ',13.58,6,1,'b4','10'),(172,1236,'MS037',7,'Poste de 100x50x3 mm para seÃ±ales de trÃ¡fico. ',19.62,6,1,'b4','10'),(173,1237,'MS038',2,'Base de hormigÃ³n prefabricada (50x50x50 cm)',5.07,6,1,'b4','10'),(174,1238,'MS039',6,'Cartel tipo flecha reflexivo nivel II, incluso piezas especiales y anclajes ',126.61,6,1,'b4','10'),(175,1239,'MS040',6,'Cartel de lamas de chapa galvanizada en caliente, reflexivo nivel II ',205.43,6,1,'b4','10'),(176,1240,'MS041',6,'Cartel de lamas en aluminio reflectante extrusionado nivel II',259.07,6,1,'b4','10'),(177,1241,'MS042',6,'Cartel de lamas de chapa galvanizada en caliente, reflexivo nivel III ',254.52,6,1,'b4','10'),(178,1242,'MS043',6,'Cartel de lamas en aluminio reflectante extrusionado nivel III',329.06,6,1,'b4','10'),(179,1243,'MS044',6,'Cartel tipo flecha reflexivo nivel I, incluso piezas especiales y anclajes ',102.45,6,1,'b4','10'),(180,1244,'MS045',2,'PÃ³rtico aluminio incluida cimentaciÃ³n ',10180.80,6,1,'b4','10'),(181,1245,'MS046',2,'Banderola incluida cimentaciÃ³n',5635.80,6,1,'b4','10'),(182,1260,'MV001',5,'Pintura blanca de 2 componentes para marcas viales ',1.98,16,1,'b5','50'),(183,1261,'MV002',5,'Pintura blanca alcÃ­dica para marcas viales ',1.19,16,1,'b5','50'),(184,1262,'MV003',5,'Pintura blanca termoplÃ¡stica para marcas viales ',2.11,16,1,'b5','50'),(185,1270,'ML001',2,'Hito de arista de PVC de155 cm, incluso cimentaciÃ³n con base de hormigÃ³n prefabricado',15.20,7,1,'b6','10'),(186,1271,'ML002',2,'Captafaros reflexivo 1 cara ',3.14,7,1,'b6','10'),(187,1272,'ML003',2,'Captafaros reflexivo 2 caras ',3.14,7,1,'b6','10'),(188,1273,'ML004',2,'JalÃ³n de balizamiento de puertos de montaÃ±a de 3,00 m de altura. ',22.20,7,1,'b6','10'),(189,1274,'ML005',2,'Soporte metÃ¡lico para jalÃ³n de balizamiento de puertos de montaÃ±a. ',4.61,7,1,'b6','10'),(190,1275,'ML006',2,'Hito arista para barrera, H.I., i/ enganche ',7.56,7,1,'b6','10'),(191,1276,'ML007',2,'Hito cilÃ­ndrico H-75 ',35.60,7,1,'b6','10'),(192,1277,'ML008',5,'Adhesivo para captafaros ',2.95,7,1,'b6','10'),(193,1278,'ML009',2,'Hito kilomÃ©trico de 80 x 40 cm reflexivo, incluso poste y cimentaciÃ³n ',99.28,7,1,'b6','10'),(194,1279,'ML010',2,'Hito miriamÃ©trico con todos sus elementos ',270.06,7,1,'b6','10'),(195,1280,'ML011',2,'Baliza divergente N-120 cm ',194.10,7,1,'b6','10'),(196,1281,'ML012',2,'Baliza divergente N-180 cm ',463.00,7,1,'b6','10'),(197,1282,'ML013',2,'Hito kilomÃ©trico 60 x 40 cm reflexivo, incluso poste y cimentaciÃ³n ',45.70,7,1,'b6','10'),(198,1283,'ML014',2,'Base prefabricada de hormigÃ³n para hito de arista ',1.69,7,1,'b6','10'),(199,1284,'ML015',2,'Ojo de Gato 1 cara',4.50,7,1,'b6','10'),(200,1285,'ML016',2,'Ojo de Gato 2 caras',4.50,7,1,'b6','10'),(201,1286,'ML017',6,'Adhesivo reflexivo nivel I ',66.97,7,1,'b6','10'),(202,1287,'ML018',6,'Adhesivo reflexivo nivel II ',76.99,7,1,'b6','10'),(203,1288,'ML019',6,'Adhesivo reflexivo nivel III ',90.05,7,1,'b6','10'),(204,1289,'ML020',2,'Hito tipo I disuasorio de fauna',22.40,7,1,'b6','10'),(205,1300,'MB001',7,'Barrera seguridad doble onda',14.25,8,1,'b7','20'),(206,1301,'MB002',2,'Amortiguador separador para barrera de seguridad ',4.15,8,1,'b7','20'),(207,1302,'MB003',2,'Soporte C-100 para barrera de seguridad de 2 m ',11.00,8,1,'b7','20'),(208,1303,'MB004',2,'Juego tornillerÃ­a galvanizado para barrera de seguridad ',3.88,8,1,'b7','20'),(209,1304,'MB005',2,'Terminal de cola de pez en zonas especiales de barrera de seguridad ',16.55,8,1,'b7','20'),(210,1305,'MB006',2,'Conector C-132 para poste de barrera tubular 120x53x3 mm incluso tornillerÃ­a ',2.39,8,1,'b7','20'),(211,1306,'MB007',7,'Barrera seguridad tipo New Jersey',54.63,8,1,'b7','20'),(212,1307,'MB008',2,'Soporte C-120 para barrera de seguridad de 2 m ',14.90,8,1,'b7','20'),(213,1308,'MB009',7,'Protector de PVC en bordes ',1.10,8,1,'b7','20'),(214,1309,'MB010',2,'Protector de postes de barrera de PVC, acero galvanizado, aluminio, caucho reciclado relleno de material granular o espuma de polietileno o EPS ',12.74,8,1,'b7','20'),(215,1310,'MB011',2,'Poste tubular cerrado 120x53x3 mm de 2 m de longitud ',17.77,8,1,'b7','20'),(216,1311,'MB012',2,'Pieza especial para abatimiento corto de barrera ',177.66,8,1,'b7','20'),(217,1312,'MB013',7,'Barrera bionda especial en curva',32.72,8,1,'b7','20'),(218,1313,'MB014',2,'Terminal de seguridad de 4m',139.00,8,1,'b7','20'),(219,1314,'MB015',2,'Terminal de seguridad de 8m',247.00,8,1,'b7','20'),(220,1315,'MB016',2,'Terminal de seguridad de 12m',354.00,8,1,'b7','20'),(221,1316,'MB017',7,'Barandilla metÃ¡lica peatonal',43.52,8,1,'b7','20'),(222,1401,'MF001',4,'Sal de mina en Big-Bags para tratamientos antihielo ',58.95,17,1,'b8','30'),(223,1402,'MF002',4,'Sal de mina en sacos de 25 o 40 kg para tratamientos antihielo ',68.08,17,1,'b8','30'),(224,1403,'MF003',4,'Sal de mina a granel, para tratamientos antihielo. ',48.10,17,1,'b8','30'),(225,1404,'MF004',4,'Cloruro sÃ³dico 98% (sal marina) en Big-Bags para tratamientos antihielo. ',67.17,17,1,'b8','30'),(226,1405,'MF005',4,'Cloruro sÃ³dico 98% (sal marina) a granel para tratamientos antihielo. ',58.34,17,1,'b8','30'),(227,1406,'MF006',4,'Cloruro cÃ¡lcico para tratamientos anti-hielo a temp. inferiores a -15ÂºC.',459.45,17,1,'b8','30'),(228,1407,'MF007',4,'Sal de mina en Cisterna ',59.00,17,1,'b8','30'),(229,1500,'MI001',2,'Reactancia con arrancador de 150/250 W',49.88,11,1,'b9','40'),(230,1501,'MI002',2,'Reactancia con arrancador de 400 W',61.59,11,1,'b9','40'),(231,1502,'MI003',2,'Tubo fluorescente de 65 W',1.91,11,1,'b9','40'),(232,1503,'MI004',2,'Tubo fluorescente de 45 W',1.06,11,1,'b9','40'),(233,1504,'MI005',2,'Tubo fluorescente de 36 W',0.94,11,1,'b9','40'),(234,1505,'MI006',2,'Cebadores s-10 universales',0.32,11,1,'b9','40'),(235,1506,'MI007',2,'LÃ¡mpara v.s.b.p. de 90 W',41.37,11,1,'b9','40'),(236,1507,'MI008',2,'LÃ¡mpara v.s.b.p. de 35 W',41.17,11,1,'b9','40'),(237,1508,'MI009',2,'LÃ¡mpara v.s.a.p. de 400 W',31.04,11,1,'b9','40'),(238,1509,'MI010',2,'LÃ¡mpara v.s.a.p. de 250 W',15.19,11,1,'b9','40'),(239,1510,'MI011',2,'LÃ¡mpara v.s.a.p. de 150 W',10.35,11,1,'b9','40'),(240,1511,'MI012',2,'LÃ¡mpara v.s.a.p. de 1.000 W',80.36,11,1,'b9','40'),(241,1512,'MI013',2,'Reactancia con arrancador de 1.000 W ',30.11,11,1,'b9','40'),(242,1513,'MI014',2,'Reactancia con arrancador hal (halogenuro metÃ¡lico) de 400 W',83.37,11,1,'b9','40'),(243,1514,'MI015',2,'Reactancia con arrancador hal (halogenuro metÃ¡lico) de 1.000 W',313.02,11,1,'b9','40'),(244,1515,'MI016',2,'Reactancia con arrancador automÃ¡tico Vsap 1.000 W torres ',228.07,11,1,'b9','40'),(245,1516,'MI017',2,'LÃ¡mpara v.m. de 250 W ',21.48,11,1,'b9','40'),(246,1517,'MI018',2,'LÃ¡mpara hal (halogenuro metÃ¡lico) de 400 W ',64.03,11,1,'b9','40'),(247,1518,'MI019',2,'LÃ¡mpara hal (halogenuro metÃ¡lico) de 1.000 W ',210.08,11,1,'b9','40'),(248,1519,'MI020',2,'LÃ¡mpara v.m. de 50 W ',6.03,11,1,'b9','40'),(249,1520,'MI021',2,'LÃ¡mpara Incandescente halÃ³gena 300 W/220 V ',45.89,11,1,'b9','40'),(250,1521,'MI022',2,'LÃ¡mpara Incandescente halÃ³gena 300 W/12 V ',38.90,11,1,'b9','40'),(251,1522,'MI023',2,'LÃ¡mpara para semÃ¡foro 48,35',48.35,11,1,'b9','40'),(252,1523,'MI024',2,'BÃ¡culo troncocÃ³nico galvanizado de hasta 10 m y brazo de 2 m',433.31,11,1,'b9','40'),(253,1524,'MI025',2,'LÃ¡mpara v.s.a.p. de 90 W',41.38,11,1,'b9','40'),(254,1525,'MI026',2,'LÃ¡mpara v.s.a.p. de 35 W',30.52,11,1,'b9','40'),(255,1526,'MI027',2,'BÃ¡culo troncocÃ³nico galvanizado de hasta 12 m y brazo de 2 m',463.63,11,1,'b9','40'),(256,1527,'MI028',7,'Cable cu RV-0,6/1 kV de 1x6 mm2 ',0.50,11,1,'b9','40'),(257,1528,'MI029',7,'Cable cu RV-0,6/1 kV de 1x25 mm2 ',2.07,11,1,'b9','40'),(258,1529,'MI030',7,'Cable cu RV-0,6/1 kV de 1x35 mm2 ',2.77,11,1,'b9','40'),(259,1530,'MI031',7,'Cable DN-0,6/1 kV de 1x10 mm2 ',1.32,11,1,'b9','40'),(260,1531,'MI032',7,'Cable DN-0,6/1 kV de 1x16 mm2 ',1.86,11,1,'b9','40'),(261,1532,'MI033',7,'Cable DN-0,6/1 kV de 1x25 mm2 ',2.97,11,1,'b9','40'),(262,1533,'MI034',7,'Cable DN-0,6/1 kV de 1x35 mm2 ',4.02,11,1,'b9','40'),(263,1534,'MI035',7,'Cable DN-0,6/1 kV de 1x4 mm2 ',0.40,11,1,'b9','40'),(264,1535,'MI036',7,'Cable DN-0,6/1 kV de 1x50 mm2 ',5.53,11,1,'b9','40'),(265,1536,'MI037',7,'Cable DN-0,6/1 kV de 1x6 mm2 ',0.80,11,1,'b9','40'),(266,1537,'MI038',7,'Cable DN-0,6/1 kV de 2x2,5 mm2 ',0.74,11,1,'b9','40'),(267,1538,'MI039',7,'Cable DN-0,6/1 kV de 3x2,5 mm2 ',1.46,11,1,'b9','40'),(268,1539,'MI040',7,'Cable barriflex DN-0,6/1 kV de 4x16 mm2',8.32,11,1,'b9','40'),(269,1540,'MI041',7,'Cable barriflex ruk DN-0,6/1 kV de 3x35 mm2',18.06,11,1,'b9','40'),(270,1541,'MI042',2,'Pica de acero cobrizado de 14x2.000 mm con grapas ',16.62,11,1,'b9','40'),(271,1542,'MI043',2,'Pica ac/cu de 500x500x2 mm para toma de tierra ',30.21,11,1,'b9','40'),(272,1543,'MI044',2,'Columna metÃ¡lica galvanizada de 12 m de altura ',431.82,11,1,'b9','40'),(273,1544,'MI045',2,'Columna metÃ¡lica galvanizada de 4 m de altura ',153.68,11,1,'b9','40'),(274,1545,'MI046',2,'Columna metÃ¡lica galvanizada de 7 m de altura ',292.75,11,1,'b9','40'),(275,1546,'MI047',2,'Columna de iluminaciÃ³n con semiespejo ',463.50,11,1,'b9','40'),(276,1547,'MI048',2,'Unidad de control de columna',412.00,11,1,'b9','40'),(277,1548,'MI049',2,'LÃ¡mpara v.s.b.p. de 18 W',29.12,11,1,'b9','40'),(278,1549,'MI050',2,'Luminaria ip-43 ',112.49,11,1,'b9','40'),(279,1550,'MI051',2,'Luminaria ip 65 v.s.a.p. 250 W',432.58,11,1,'b9','40'),(280,1551,'MI052',2,'Luminaria ip 65 v.s.a.p. 400 W',452.27,11,1,'b9','40'),(281,1552,'MI053',2,'Luminaria ip 67 v.s.a.p. 2x36 W',184.26,11,1,'b9','40'),(282,1553,'MI054',2,'Cuadro de distribuciÃ³n',688.07,11,1,'b9','40'),(283,1554,'MI055',2,'Luminaria ip 65 v.s.a.p 250 W ',470.41,11,1,'b9','40'),(284,1555,'MI056',2,'Luminaria ip 67 v.s.a.p. 1x18 W ',151.04,11,1,'b9','40'),(285,1556,'MI057',2,'Luminaria globo v.m. 125 W ',129.94,11,1,'b9','40'),(286,1557,'MI058',2,'LÃ¡mpara v.m. 125 W para luminaria globo',7.33,11,1,'b9','40'),(287,1558,'MI059',2,'Luminaria de alumbrado de proyecciÃ³n v.s.a.p. de 150 W',348.35,11,1,'b9','40'),(288,1559,'MI060',2,'Luminaria de alumbrado de proyecciÃ³n v.s.a.p. de 250 W',407.35,11,1,'b9','40'),(289,1560,'MI061',2,'Luminaria de alumbrado de proyecciÃ³n v.s.a.p. de 400 W',510.24,11,1,'b9','40'),(290,1561,'MI062',2,'Tapa de fundiciÃ³n de 40x40 cm',30.20,11,1,'b9','40'),(291,1562,'MI063',2,'Tapa de fundiciÃ³n de 60x60 cm',50.80,11,1,'b9','40'),(292,1563,'MI064',2,'Fusible de 6 A',0.80,11,1,'b9','40'),(293,1564,'MI065',2,'Fusible de 16 A',1.10,11,1,'b9','40'),(294,1565,'MI066',2,'Fusible de 32 A',1.27,11,1,'b9','40'),(295,1566,'MI067',2,'Fusible de 40 A',1.30,11,1,'b9','40'),(296,1567,'MI068',2,'Fusible de 50 A',1.35,11,1,'b9','40'),(297,1568,'MI069',2,'Fusible de 100 A',5.70,11,1,'b9','40'),(298,1569,'MI070',2,'Portafusible ',9.00,11,1,'b9','40'),(299,1570,'MI071',2,'Regleta de conexionado ',1.04,11,1,'b9','40'),(300,1571,'MI072',2,'Temporizador digital 230 v ',290.08,11,1,'b9','40'),(301,1572,'MI073',2,'Cuadro de protecciÃ³n torretas gewis ',62.70,11,1,'b9','40'),(302,1573,'MI074',2,'Bote de dielÃ©ctrico para limpieza cuadro ',32.07,11,1,'b9','40'),(303,1574,'MI075',2,'Caja estanca para arquetas de alumbrado ',3.19,11,1,'b9','40'),(304,1575,'MI076',2,'Empalmador d95 ',4.40,11,1,'b9','40'),(305,1576,'MI077',2,'Conmutador de corte en carga para regulador de flujo ',296.85,11,1,'b9','40'),(306,1577,'MI078',2,'Interruptor de corte en carga para reguladores de flujo ',116.60,11,1,'b9','40'),(307,1578,'MI079',2,'Placa de control de luces para regulador de flujo ',734.80,11,1,'b9','40'),(308,1579,'MI080',2,'Caja de derivaciÃ³n 120x120x65 mm ',8.37,11,1,'b9','40'),(309,1580,'MI081',2,'Sensor fotoelÃ©ctrico 4-100 cux o similar ',1079.59,11,1,'b9','40'),(310,1581,'MI082',2,'Juego lÃ¡mparas de seÃ±alizaciÃ³n ',56.86,11,1,'b9','40'),(311,1582,'MI083',2,'Interruptor automÃ¡tico tripolar hasta 100 A y capacidad de corte 35 kA',343.13,11,1,'b9','40'),(312,1583,'MI084',2,'Contactor-guarda motor ',318.38,11,1,'b9','40'),(313,1584,'MI085',2,'Diferencial de suministro elÃ©ctrico ',170.56,11,1,'b9','40'),(314,1585,'MI086',2,'Seccionador en vacÃ­o ',720.99,11,1,'b9','40'),(315,1586,'MI087',2,'Disyuntor de sf-6, hasta 24 kV 400 A, mando motorizado ',5034.60,11,1,'b9','40'),(316,1587,'MI088',2,'Acometida dotada de temporizador unipolar de 20 kV serv intem ',1998.69,11,1,'b9','40'),(317,1588,'MI089',2,'Equipo de medida dotado de contador trifÃ¡sico activa/reactiva, reloj',2860.52,11,1,'b9','40'),(318,1589,'MI090',2,'Disyuntor de sf-6 hasta 24 kV 400 A, mando manual ',4195.50,11,1,'b9','40'),(319,1590,'MI091',2,'Red general de tierras ',1228.06,11,1,'b9','40'),(320,1591,'MI092',2,'Cortacircuito fusible hasta 24 kV, 200 A con ACR ',303.40,11,1,'b9','40'),(321,1592,'MI093',2,'Juego de correas de acoplamiento',78.96,11,1,'b9','40'),(322,1593,'MI094',2,'Juego de filtros de aceite y aire',39.48,11,1,'b9','40'),(323,1594,'MI095',2,'Juntas de estanqueidad del circuito de refrigeraciÃ³n',67.69,11,1,'b9','40'),(324,1595,'MI096',2,'Suministro juego de bornes y prensaestopas',39.48,11,1,'b9','40'),(325,1596,'MI097',2,'Tarjeta micro del controlador de seÃ±ales ',796.92,11,1,'b9','40'),(326,1597,'MI098',2,'Tarjeta micro de la adquisiciÃ³n de datos ',476.41,11,1,'b9','40'),(327,1598,'MI099',2,'Tarjeta de salidas a remota ',434.34,11,1,'b9','40'),(328,1599,'MI100',2,'Tarjeta de entradas de seÃ±ales de control y adquisiciÃ³n de datos',439.98,11,1,'b9','40'),(329,1600,'MI101',2,'C.p.u. para estaciÃ³n remota ',2030.66,11,1,'b9','40'),(330,1601,'MI102',2,'Tarjeta de comunicaciones para estaciÃ³n remota ',1613.25,11,1,'b9','40'),(331,1602,'MI103',2,'Fuente de alimentaciÃ³n para estaciÃ³n remota ',214.35,11,1,'b9','40'),(332,1603,'MI104',2,'Tarjeta de entradas digitales ',834.83,11,1,'b9','40'),(333,1604,'MI105',2,'Tarjeta de salidas digitales ',823.54,11,1,'b9','40'),(334,1605,'MI106',2,'Tarjeta de entradas analÃ³gicas ',710.73,11,1,'b9','40'),(335,1606,'MI107',2,'SemÃ¡foro halÃ³geno de tres focos de 200 mm RAV con soporte ',332.51,11,1,'b9','40'),(336,1607,'MI108',2,'SemÃ¡foro halÃ³geno de tres focos de 200 mm RAV con panel ',374.46,11,1,'b9','40'),(337,1608,'MI109',2,'SemÃ¡foro incandescente de tres focos de 200 mm RAV ',278.95,11,1,'b9','40'),(338,1609,'MI110',2,'SemÃ¡foro incandescente de dos focos de 200 mm RAV ',220.93,11,1,'b9','40'),(339,1610,'MI111',2,'BÃ¡culo semafÃ³rico galvanizado de 6 m, con alargadera ',330.29,11,1,'b9','40'),(340,1611,'MI112',2,'Columna metÃ¡lica galvanizada de 2,4 m de longitud ',82.56,11,1,'b9','40'),(341,1612,'MI113',2,'LÃ¡mpara halÃ³gena de 10 V-50 W con reflector',25.74,11,1,'b9','40'),(342,1613,'MI114',2,'LÃ¡mpara halÃ³gena 12 V ',3.24,11,1,'b9','40'),(343,1614,'MI115',2,'LÃ¡mpara incandescente de 70 W ',2.93,11,1,'b9','40'),(344,1615,'MI116',7,'Cable de 0,9 mm de dos pares ',1.12,11,1,'b9','40'),(345,1616,'MI117',7,'Cable de 0,9 mm de tres pares ',1.32,11,1,'b9','40'),(346,1617,'MI118',7,'Cable de 0,9 mm de cuatro pares ',1.44,11,1,'b9','40'),(347,1618,'MI119',7,'Cable de 2x1,5 mm2 ',0.57,11,1,'b9','40'),(348,1619,'MI120',7,'Cable de 3x1,5 mm2 ',0.69,11,1,'b9','40'),(349,1620,'MI121',7,'Cable de 4x1,5 mm2 ',0.86,11,1,'b9','40'),(350,1621,'MI122',7,'Cable de 3x2,5 mm2 ',0.95,11,1,'b9','40'),(351,1622,'MI123',7,'Cable de tierra de 6 mm2 ',0.49,11,1,'b9','40'),(352,1623,'MI124',7,'Cable de tierra de 16 mm2 ',1.24,11,1,'b9','40'),(353,1624,'MI125',7,'Cable de tierra de 35 mm2 ',2.63,11,1,'b9','40'),(354,1625,'MI126',7,'Cable de 2x6 mm2 ',1.38,11,1,'b9','40'),(355,1626,'MI127',7,'Cable manguera de 32x1 mm2 ',7.82,11,1,'b9','40'),(356,1627,'MI128',7,'Cable pirolit para reconstrucciÃ³n de bucles de detecciÃ³n ',0.82,11,1,'b9','40'),(357,1628,'MI129',2,'Cristal semafÃ³rico de 200 mm de diÃ¡metro en cualquier color',10.17,11,1,'b9','40'),(358,1629,'MI130',7,'Cable monofibra multimodo 3,26',3.26,11,1,'b9','40'),(359,1630,'MI131',2,'Tareta de control del panel ',1307.67,11,1,'b9','40'),(360,1632,'MI133',2,'Fuente de alimentaciÃ³n del panel sinÃ³ptico ',216.30,11,1,'b9','40'),(361,1633,'MI134',2,'Sum del transformado del panel alfanumerico ',126.68,11,1,'b9','40'),(362,1634,'MI135',2,'Tarjetas salf o similar ',217.59,11,1,'b9','40'),(363,1635,'MI136',2,'Tarjeta de control de gÃ¡libo ',1493.49,11,1,'b9','40'),(364,1636,'MI137',2,'CÃ¡mara fija blanco y negro ',1579.40,11,1,'b9','40'),(365,1637,'MI138',2,'CÃ¡mara motorizada blanco y negro ',2409.39,11,1,'b9','40'),(366,1638,'MI139',2,'Transmisores de video por fibra Ã³ptica multimodo',384.45,11,1,'b9','40'),(367,1639,'MI140',2,'Receptores de video por fibra Ã³ptica multimodo',356.17,11,1,'b9','40'),(368,1640,'MI141',2,'Control de telemando de cÃ¡maras motorizadas ',1047.20,11,1,'b9','40'),(369,1641,'MI142',2,'Teclado de mando con joystick ',125.71,11,1,'b9','40'),(370,1642,'MI143',2,'Objetivo para cÃ¡mara fija ',115.23,11,1,'b9','40'),(371,1643,'MI144',2,'Tarjeta matriz ',1297.37,11,1,'b9','40'),(372,1644,'MI145',2,'Tarjeta ccdis o similar ',3948.50,11,1,'b9','40'),(373,1645,'MI146',2,'Tarjeta fc V.24 (RS-232c) o similar ',485.10,11,1,'b9','40'),(374,1646,'MI147',2,'Latiguillo multimando ',135.00,11,1,'b9','40'),(375,1647,'MI148',2,'Equipo pf con fuente de alimentaciÃ³n ',3384.43,11,1,'b9','40'),(376,1648,'MI149',7,'Cable de 30 fibras multimodo ',12.01,11,1,'b9','40'),(377,1649,'MI150',7,'Cable de 12 fibras multimodo ',8.15,11,1,'b9','40'),(378,1650,'MI151',2,'EstaciÃ³n de trabajo unix ',6364.99,11,1,'b9','40'),(379,1651,'MI152',2,'Monitor blanco y negro de 17\" ',476.64,11,1,'b9','40'),(380,1652,'MI153',2,'Controlador de comunicaciones de la e.t. ',3079.83,11,1,'b9','40'),(381,1653,'MI154',2,'Tarjeta de control del panel del video wall',1556.84,11,1,'b9','40'),(382,1654,'MI155',2,'Reactancia para v.s.a.p. de 150 W ',8.90,11,1,'b9','40'),(383,1655,'MI156',2,'Reactancia para v.s.a.p. de 250 W ',11.50,11,1,'b9','40'),(384,1656,'MI157',2,'Reactancia para v.s.a.p. de 400 W ',14.96,11,1,'b9','40'),(385,1657,'MI158',2,'Reactancia para v.s.a.p. de 1.000 W ',67.90,11,1,'b9','40'),(386,1658,'MI159',2,'Arrancador de v.s.a.p. desde 70 a 1.000 W ',4.98,11,1,'b9','40'),(387,1659,'MI160',2,'Contactor 4 polos de 25 A ',44.75,11,1,'b9','40'),(388,1660,'MI161',2,'Contactor 4 polos de 40 A ',10.45,11,1,'b9','40'),(389,1661,'MI162',2,'Contactor 4 polos de 63 A ',123.05,11,1,'b9','40'),(390,1662,'MI163',2,'Contactor 4 polos de 125 A ',189.73,11,1,'b9','40'),(391,1663,'MI164',2,'Interruptor automÃ¡tico magnetotÃ©rmico de 1x20 A',3.96,11,1,'b9','40'),(392,1664,'MI165',2,'Interruptor automÃ¡tico magnetotÃ©rmico de 1x32 A',4.80,11,1,'b9','40'),(393,1665,'MI166',2,'Interruptor automÃ¡tico magnetotÃ©rmico de 1x63 A',41.82,11,1,'b9','40'),(394,1666,'MI167',2,'Interruptor automÃ¡tico magnetotÃ©rmico de 2x10 A',6.96,11,1,'b9','40'),(395,1667,'MI168',2,'Interruptor automÃ¡tico magnetotÃ©rmico de 2x25 A',7.46,11,1,'b9','40'),(396,1668,'MI169',2,'Interruptor automÃ¡tico magnetotÃ©rmico de 3x40 A',32.15,11,1,'b9','40'),(397,1669,'MI170',2,'Interruptor automÃ¡tico magnetotÃ©rmico de 3x63 A',76.34,11,1,'b9','40'),(398,1670,'MI171',2,'Interruptor automÃ¡tico magnetotÃ©rmico de 4x40 A',38.72,11,1,'b9','40'),(399,1671,'MI172',2,'Interruptor automÃ¡tico magnetotÃ©rmico de 4x63 A',105.22,11,1,'b9','40'),(400,1672,'MI173',2,'Interruptor diferencial de 4x40x300 mA ',41.84,11,1,'b9','40'),(401,1673,'MI174',2,'Interruptor diferencial de 4x63x300 mA ',107.92,11,1,'b9','40'),(402,1674,'MI175',2,'Fusible de baja tensiÃ³n de 60 a 60 A ',0.68,11,1,'b9','40'),(403,1675,'MI176',2,'Fusible de baja tensiÃ³n de 60 a 100 A ',1.28,11,1,'b9','40'),(404,1676,'MI177',2,'Fusible de cuchillas hasta 125 A ',5.25,11,1,'b9','40'),(405,1677,'MI178',2,'Fusible de cuchillas hasta 500 A ',13.96,11,1,'b9','40'),(406,1678,'MI179',2,'Fusible alta tensiÃ³n hasta 32 A ',47.97,11,1,'b9','40'),(407,1679,'MI180',2,'Condensador de 10 A 35 mf ',3.15,11,1,'b9','40'),(408,1680,'MI181',2,'Condensador de 35 A 50 mf ',8.40,11,1,'b9','40'),(409,1681,'MI182',2,'Caja general de protecciÃ³n de 80 A ',55.42,11,1,'b9','40'),(410,1682,'MI183',2,'Caja general de protecciÃ³n de 150 A ',67.53,11,1,'b9','40'),(411,1683,'MI184',2,'Caja general de protecciÃ³n de 250 A ',78.74,11,1,'b9','40'),(412,1684,'MI185',2,'MÃ³dulo con visor para dos elementos ',200.00,11,1,'b9','40'),(413,1685,'MI186',2,'MÃ³dulo con visor para tres elementos ',230.00,11,1,'b9','40'),(414,1686,'MI187',2,'Terminal a.t. hasta 150 mm2 ',30.44,11,1,'b9','40'),(415,1687,'MI188',2,'Terminal empalme en arqueta o caja conexiÃ³n',2.13,11,1,'b9','40'),(416,1688,'MI189',2,'Pica de tierra de cobre desnudo de 2 m completa',4.86,11,1,'b9','40'),(417,1689,'MI190',7,'Tubo corrugado de diÃ¡metro 90 mm ',2.82,11,1,'b9','40'),(418,1690,'MI191',7,'Tubo corrugado de diÃ¡metro 110 mm ',3.42,11,1,'b9','40'),(419,1691,'MI192',2,'Reloj astronÃ³mico digital ',241.85,11,1,'b9','40'),(420,1692,'MI193',2,'Interruptor crepuscular ',42.39,11,1,'b9','40'),(421,1693,'MI194',2,'Unidad de control ucsfv o similar ',208.71,11,1,'b9','40'),(422,1694,'MI195',2,'Unidad de control ucsrv o similar ',219.98,11,1,'b9','40'),(423,1695,'MI196',2,'Tarjeta bus ',56.41,11,1,'b9','40'),(424,1696,'MI197',2,'Transformador de 220 V a 12 V ',25.52,11,1,'b9','40'),(425,1697,'MI198',2,'Visera protectora antiphantom ',3.64,11,1,'b9','40'),(426,1698,'MI199',2,'MÃ³dem de comunicaciones ',214.35,11,1,'b9','40'),(427,1699,'MI200',2,'Regletero de entradas analÃ³gicas ',208.71,11,1,'b9','40'),(428,1700,'MI201',2,'Regletero de entradas digitales ',225.63,11,1,'b9','40'),(429,1701,'MI202',2,'Regletero de salidas digitales ',219.98,11,1,'b9','40'),(430,1702,'MI203',2,'RelÃ© undecal 12 V dc ',50.77,11,1,'b9','40'),(431,1703,'MI204',2,'Filtro de red ',73.33,11,1,'b9','40'),(432,1704,'MI205',2,'Fuente de alimentaciÃ³n Ldh ',248.19,11,1,'b9','40'),(433,1705,'MI206',2,'Latiguillo multimodo ',101.54,11,1,'b9','40'),(434,1706,'MI207',2,'MÃ³dulo transformador 15+15 V a 80 V (toroidal)',110.55,11,1,'b9','40'),(435,1707,'MI208',2,'MÃ³dulo transformador 15+15 V (electrÃ³nico)',191.79,11,1,'b9','40'),(436,1708,'MI209',2,'MÃ³dulo transformador 20 V ac o similar',141.02,11,1,'b9','40'),(437,1709,'MI210',2,'RelÃ© Arteche 220 V ac o similar ',32.72,11,1,'b9','40'),(438,1710,'MI211',2,'Tarjeta de relÃ©s fax o similar ',232.39,11,1,'b9','40'),(439,1711,'MI212',2,'Tarjeta de electrÃ³nica fax o similar ',539.25,11,1,'b9','40'),(440,1712,'MI213',2,'Tarjeta modem ',661.10,11,1,'b9','40'),(441,1713,'MI214',2,'Tarjeta regletero de bobinas y relÃ©s ',539.25,11,1,'b9','40'),(442,1800,'MO001',4,'Material absorbente para eliminaciÃ³n de vertidos',86.20,18,1,'b10','50'),(443,1801,'MO002',5,'Detergente ',0.77,18,1,'b10','50'),(444,1802,'MO003 ',5,'Disolvente abrillantador de seÃ±ales ',0.64,18,1,'b10','50'),(445,1803,'MO004',3,'Agua ',1.50,18,1,'b10','50'),(446,1804,'MO005',2,'Bolsa basura ',0.10,18,1,'b10','50'),(447,1805,'MO006',6,'Geotextil de 200 g/m2 mÃ­nimo ',0.96,18,1,'b10','50'),(448,1806,'MO007',3,'Piedra para gaviÃ³n ',10.23,18,1,'b10','50'),(449,1807,'MO008',6,'Malla protecciÃ³n talud (torsiÃ³n simple) ',2.45,18,1,'b10','50'),(450,1808,'MO009',6,'Geotextil de 100 g/m2 mÃ­nimo ',0.61,18,1,'b10','50'),(451,1809,'MO010',6,'Geotextil de 300 g/m2 mÃ­nimo ',1.31,18,1,'b10','50'),(452,1810,'MO011',2,'GaviÃ³n metÃ¡lico 1x1x2 m ',15.26,18,1,'b10','50'),(453,1811,'MO012',2,'GaviÃ³n metÃ¡lico 1x1x4 m ',23.02,18,1,'b10','50'),(454,1812,'MO013',7,'Malla de cerramiento ',8.55,18,1,'b10','50'),(455,1813,'MO014',4,'Bloque de piedra de escollera ',4.34,18,1,'b10','50'),(456,1814,'MO015',5,'Resina epoxi ',17.96,18,1,'b10','50'),(457,1815,'MO016',7,'Junta neopreno armado, recorrido <70 mm. ',392.69,18,1,'b10','50'),(458,1816,'MO017',7,'Junta neopreno armado, recorrido >70 mm. ',527.22,18,1,'b10','50'),(459,1817,'MO018',5,'Acero en perfil galvanizado ',1.68,18,1,'b10','50'),(460,1818,'MO019',7,'Paletas antideslumbramientos ',7.88,18,1,'b10','50'),(461,1819,'MO020',2,'Reductor de velocidad tipo lomo de la Orden de TravesÃ­as de la Comunidad de Madrid. ',1442.76,18,1,'b10','50'),(462,1820,'MO021',2,'Reductor de velocidad tipo meseta de la Orden de TravesÃ­as de la Comunidad de madrid. ',2885.53,18,1,'b10','50'),(463,1821,'MO022',5,'Pintura para elementos metÃ¡licos ',16.54,18,1,'b10','50'),(464,2001,'UE001',3,'Levantado con compresor de firme de M.B.C. en capa de base o rodadura, incluso acopio en zona de obra, traslado a gestor autorizado y canon de gestiÃ³n.',40.58,19,2,'c1','50'),(465,2002,'UE002 ',3,'Levantado sin recortes de bordes por medios mecÃ¡nicos (retroexcavadora con martillo o similar) de firme de mezcla bituminosa en caliente en capa de base o rodadura, incluso acopio en zona de obra, traslado a gestor autorizado y canon de gestiÃ³n.',20.72,19,2,'c1','50'),(466,2003,'UE003 ',7,'Recorte de pavimento o firme a mano, con compresor o sierra en firmes de M.B.C., mezcla drenante y tratamiento superficial, incluso limpieza y barrido, traslado a gestor autorizado y canon de gestiÃ³n.',0.82,19,2,'c0','50'),(467,2004,'UE004 ',3,'DemoliciÃ³n con compresor de hormigÃ³n en masa de cualquier tipo en soleras, cimientos, muros, aletas, etc. e incluso acopio en zona de obra, traslado a gestor autorizado y canon de gestiÃ³n',61.87,19,2,'c1','50'),(468,2005,'UE005 ',3,'DemoliciÃ³n con compresor de hormigÃ³n armado de cualquier tipo en soleras, cimientos, muros, aletas, etc. e incluso acopio en zona de obra, traslado a gestor autorizado y canon de gestiÃ³n.',63.95,19,2,'c1','50'),(469,2006,'UE006 ',3,'DemoliciÃ³n con compresor de mamposterÃ­a de cualquier tipo en soleras, cimientos, muros, aletas, etc. e incluso acopio en zona de obra, traslado a gestor autorizado y canon de gestiÃ³n.',61.36,19,2,'c1','50'),(470,2007,'UE007 ',6,'DemoliciÃ³n de solado de aceras e incluso acopio en zona de obra, traslado a gestor autorizado y canon de gestiÃ³n.',13.14,19,2,'c1','50'),(471,2008,'UE008 ',7,'Levantado de bordillo con recuperaciÃ³n del mismo, incluso carga y retirada a acopio o punto de empleo.',7.60,19,2,'c1','50'),(472,2009,'UE009 ',7,'Levantado de bordillo, incluso acopio en zona de obra, traslado a gestor autorizado y canon de gestiÃ³n',4.70,19,2,'c1','50'),(473,2010,'UE010 ',3,'ExcavaciÃ³n en zanja de anchura inferior a 1 m y profundidad inferior a 2 m, e incluso acopio en zona de obra y canon correspondiente.',11.61,19,2,'c1','50'),(474,2011,'UE011 ',3,'ExcavaciÃ³n por medios mecÃ¡nicos en cualquier clase de terreno ripable incluido acopio en zona de obra y canon correspondiente',4.64,19,2,'c1','50'),(475,2012,'UE012 ',3,'ExcavaciÃ³n en roca incluido acopio en zona de obra y canon correspondiente.',14.31,19,2,'c1','50'),(476,2013,'UE013 ',10,'SujeciÃ³n de taludes con malla metÃ¡lica tipo 5x7x13 de alambre galvanizado de 2 mm sobre talud de material suelto, sujeta con piquetes de 16 mm de secciÃ³n y 1 m de longitud (1 piquete cada 4 m2), incluso materiales, anclajes, colocaciÃ³n, terminado.',5.33,19,2,'c1','50'),(477,2014,'UE014 ',10,'SujeciÃ³n de taludes con malla metÃ¡lica tipo 7x7x13 de alambre galvanizado de 2 mm sobre talud de material suelto, sujeta con piquetes de 16 mm de secciÃ³n y 1 m de longitud (1 piquete cada 4 m2), incluso materiales, anclajes, colocaciÃ³n, terminado',5.40,19,2,'c1','50'),(478,2015,'UE015 ',10,'SujeciÃ³n de taludes con malla metÃ¡lica tipo 8x10x15 de alambre galvanizado de 2,4 mm sobre talud de material suelto, sujeto con correa de anclaje de hormigÃ³n HM-15 en cabecera, incluso materiales, anclajes, colocaciÃ³n, terminado.',15.31,19,2,'c1','50'),(479,2016,'UP001 ',11,'Mezcla bituminosa en frÃ­o de cualquier tipo en saneo de blandones, reparaciÃ³n de arcenes, tapado de zanjas y reparaciÃ³n de baches, incluido ligante y parte proporcional de riegos, asÃ­ como carga, transporte y canon de traslado de los productos sobrantes a vertedero',1.61,20,2,'c2','50'),(480,2017,'UP002 ',11,'Mezcla bituminosa en frÃ­o de cualquier tipo en saneo de blandones, reparaciÃ³n de arcenes, tapado de zanjas y reparaciÃ³n de baches, incluido ligante y parte proporcional de riegos, asÃ­ como carga, transporte y canon de traslado de los productos sobrantes a vertedero en horario nocturno.',1.76,20,2,'c2','50'),(481,2018,'UP003',11,'Mezcla bituminosa en caliente de cualquier tipo en saneo de blandones, reparaciÃ³n de arcenes, tapado de zanjas y reparaciÃ³n de baches, incluido ligante y parte proporcional de riegos, asÃ­ como carga, transporte y canon de traslado de los productos sobrantes a vertedero.',2.35,20,2,'c2','50'),(482,2019,'UP004 ',11,'Mezcla bituminosa en caliente de cualquier tipo en saneo de blandones, reparaciÃ³n de arcenes, tapado de zanjas y reparaciÃ³n de baches, incluido ligante y parte proporcional de riegos, asÃ­ como carga, transporte y canon de traslado de los productos sobrantes a vertedero en horario nocturno.',2.76,20,2,'c2','50'),(483,2020,'UP005 ',7,'Sellado de fisuras, por punteado con betÃºn-caucho en caliente, incluso limpieza de la misma con chorro de aire caliente a presiÃ³n.',1.54,20,2,'c2','50'),(484,2021,'UP006 ',7,'Sellado de fisuras, por punteado con betÃºn-caucho en caliente, incluso limpieza de la misma con chorro de aire caliente a presiÃ³n en horario nocturno',1.81,20,2,'c2','50'),(485,2022,'UP007 ',10,'Microaglomerado en frio tipo MICROF5 INF con emulsiÃ³n modificada C65BP5 MIC y arido porfÃ­rico con una dotaciÃ³n media de 8kg/m2.',1.05,20,2,'c2','50'),(486,2023,'UP008 ',10,'Microaglomerado en frio tipo MICROF5 INF con emulsiÃ³n modificada C65BP5 MIC y arido porfÃ­rico con una dotaciÃ³n media de 8kg/m2 en horario nocturno.',1.34,20,2,'c2','50'),(487,2024,'UP009 ',10,'Microaglomerado en frio tipo MICROF8 SUP con emulsiÃ³n modificada C65BP5 MIC y arido porfÃ­rico con una dotaciÃ³n media de 14kg/m2',1.20,20,2,'c2','50'),(488,2025,'UP010 ',10,'Microaglomerado en frio tipo MICROF8 SUP con emulsiÃ³n modificada C65BP5 MIC y arido porfÃ­rico con una dotaciÃ³n media de 14kg/m2 en horario nocturno',1.43,20,2,'c2','50'),(489,2026,'UP011 ',10,'Microaglomerado en frio tipo MICROF11 S con emulsiÃ³n modificada C65BP5 MIC y Ã¡rido porfÃ­rico con una dotaciÃ³n media de 14kg/m2',1.20,20,2,'c2','50'),(490,2027,'UP012 ',10,'Microaglomerado en frio tipo MICROF11 S con emulsiÃ³n modificada C65BP5 MIC y Ã¡rido porfÃ­rico con una dotaciÃ³n media de 14kg/m2 en horario nocturno',1.38,20,2,'c2','50'),(491,2028,'UP013 ',4,'UP013 t M.B.C. tipo AC32 base G (G-26), excepto betÃºn, en capa de base, incluye la carga y transporte de restos y productos sobrantes a vertedero y canon',22.71,20,2,'c2','50'),(492,2029,'UP014 ',4,'UP014 t M.B.C. tipo AC32 base G (G-26), excepto betÃºn, en capa de base en horario nocturno, incluye la carga y transporte de restos y productos sobrantes a vertedero y canon.',26.53,20,2,'c2','50'),(493,2030,'UP015 ',4,'UP015 t M.B.C. tipo AC22 base G (G-20), excepto betÃºn, en capa de base, incluye la carga y transporte de restos y productos sobrantes a vertedero y canon.',23.06,20,2,'c2','50'),(494,2031,'UP016',4,'M.B.C. tipo AC22 base G (G-20), excepto betÃºn, en capa de base en horario nocturno, incluye la carga y transporte de restos y productos sobrantes a vertedero y canon.',26.98,20,2,'c2','50'),(495,2032,'UP017 ',4,'M.B.C. tipo AC22 bin S (S-20), excepto betÃºn, en capa intermedia, incluye la carga y transporte de restos y productos sobrantes a vertedero y canon.',23.55,20,2,'c2','50'),(496,2033,'UP018 ',4,'M.B.C. tipo AC22 bin S (S-20), excepto betÃºn, en capa intermedia en horario nocturno, incluye la carga y transporte de restos y productos sobrantes a vertedero y canon.',27.56,20,2,'c2','50'),(497,2034,'UP019 ',4,'M.B.C. tipo AC22 bin D (D-20), excepto betÃºn, en capa intermedia, incluye la carga y transporte de restos y productos sobrantes a vertedero y canon.',24.10,20,2,'c2','50'),(498,2035,'UP020 ',4,'M.B.C. tipo AC22 bin D (D-20), excepto betÃºn, en capa intermedia en horario nocturno, incluye la carga y transporte de restos y productos sobrantes a vertedero y canon. ',28.20,20,2,'c2','50'),(499,2036,'UP021 ',4,'M.B.C. tipo AC16 surf S (S-12), excepto betÃºn, en capa de rodadura, incluye la carga y transporte de restos y productos sobrantes a vertedero y canon.',24.93,20,2,'c2','50'),(500,2037,'UP022 ',4,'M.B.C. tipo AC16 surf S (S-12), excepto betÃºn, en capa de rodadura en horario nocturno, incluye la carga y transporte de restos y productos sobrantes a vertedero y canon. ',29.17,20,2,'c2','50'),(501,2038,'UP023 ',4,'M.B.C. tipo AC16 surf D (D-12), excepto betÃºn, en capa de rodadura. , incluye la carga y transporte de restos y productos sobrantes a vertedero y canon. ',25.25,20,2,'c2','50'),(502,2039,'UP024 ',4,'M.B.C. tipo AC16 surf D (D-12), excepto betÃºn, en capa de rodadura en horario nocturno, incluye la carga y transporte de  restos y productos sobrantes a vertedero y canon.',29.55,20,2,'c2','50'),(503,2040,'UP025',4,'M.B.C. tipo AC22 bin D (D-20), excepto betÃºn, en capa de rodadura, incluye la carga y transporte de restos y productos sobrantes a vertedero y canon.',25.45,20,2,'c2','50'),(504,2041,'UP026 ',4,'M.B.C. tipo AC22 bin D (D-20), excepto betÃºn, en capa de rodadura en horario nocturno, incluye la carga y transporte de restos y productos sobrantes a vertedero y canon.',29.78,20,2,'c2','50'),(505,2042,'UP027 ',4,'M.B.C. tipo AC16 surf S (S-12), excepto betÃºn, en capa de rodadura con aridos porfÃ­dicos o similares, incluye la carga y transporte de restos y productos sobrantes a vertedero y canon.',29.23,20,2,'c2','50'),(506,2043,'UP028 ',4,'M.B.C. tipo AC16 surf S (S-12), excepto betÃºn, en capa de rodadura con aridos porfÃ­dicos o similares en horario nocturno, incluye la carga y transporte de restos y productos sobrantes a vertedero y canon.',34.22,20,2,'c2','50'),(507,2044,'UP029 ',4,'M.B.C. tipo AC16 surf D (D-12), excepto betÃºn, en capa de rodadura con aridos porfÃ­dicos o similares, incluye la carga y transporte de restos y productos sobrantes a vertedero y canon.',29.55,20,2,'c2','50'),(508,2045,'UP030 ',4,'M.B.C. tipo AC16 surf D (D-12), excepto betÃºn, en capa de rodadura con aridos porfÃ­dicos o similares en horario nocturno, incluye la carga y transporte de restos y productos sobrantes a vertedero y canon.  ',34.58,20,2,'c2','50'),(509,2046,'UP031 ',4,'UP031 t M.B.C. tipo AC22 surf D (D-20), excepto betÃºn, en capa de rodadura con aridos porfÃ­dicos o similares, incluye la carga y transporte de restos y productos sobrantes a vertedero y canon.',29.76,20,2,'c2','50'),(510,2047,'UP032 ',4,'M.B.C. tipo AC22 surf D (D-20), excepto betÃºn, en capa de rodadura con aridos porfÃ­dicos o similares en horario nocturno, incluye la carga y transporte de restos y productos sobrantes a vertedero y canon.',34.83,20,2,'c2','50'),(511,2048,'UP033 ',10,'M.B.C. discontinua tipo BBTM 8 B (M-8) con Ã¡rido porfÃ­dico, excepto betÃºn, en capa de rodadura y 3,5 cm. de espesor mÃ­nimo, incluye la carga y transporte de restos y productos sobrantes a vertedero y canon.',4.24,20,2,'c2','50'),(512,2049,'UP034 ',10,'M.B.C. discontinua tipo BBTM 8 B (M-8) con Ã¡rido porfÃ­dico, excepto betÃºn, en capa de rodadura y 3,5 cm. de espesor mÃ­nimo en horario nocturno, incluye la carga y transporte de restos y productos sobrantes a vertedero y canon.',5.51,20,2,'c2','50'),(513,2050,'UP035 ',10,'M.B.C. discontinua tipo BBTM 8 A (F-8) con Ã¡rido porfÃ­dico, excepto betÃºn, en capa de rodadura y 3,5 cm. de espesor mÃ­nimo, incluye la carga y transporte de restos y productos sobrantes a vertedero y canon.',5.12,20,2,'c2','50'),(514,2051,'UP036 ',10,'M.B.C. discontinua tipo BBTM 8 A (F-8) con Ã¡rido porfÃ­dico, excepto betÃºn, en capa de rodadura y 3,5 cm. de espesor mÃ­nimo en horario nocturno, incluye la carga y transporte de restos y productos sobrantes a vertedero y canon.',6.66,20,2,'c2','50'),(515,2052,'UP037 ',10,'M.B.C. discontinua tipo BBTM 11 B (M-10) con Ã¡rido porfÃ­dico, excepto betÃºn, en capa de rodadura y 3,5 cm. de espesor mÃ­nimo, incluye la carga y transporte de restos y productos sobrantes a vertedero y canon.',3.98,20,2,'c2','50'),(516,2053,'UP038 ',10,'M.B.C. discontinua tipo BBTM 11 B (M-10) con Ã¡rido porfÃ­dico, excepto betÃºn, en capa de rodadura y 3,5 cm. de espesor mÃ­nimo, en horario nocturno, incluye la carga y transporte de restos y productos sobrantes a vertedero y canon.',5.17,20,2,'c2','50'),(517,2054,'UP039 ',10,'M.B.C. discontinua tipo BBTM 11 A (F-10) con Ã¡rido porfÃ­dico, excepto betÃºn, en capa de rodadura y 3,5 cm. de espesor mÃ­nimo, incluye la carga y transporte de restos y productos sobrantes a vertedero y canon.',4.81,20,2,'c2','50'),(518,2055,'UP040 ',10,'M.B.C. discontinua tipo BBTM 11 A (F-10) con Ã¡rido porfÃ­dico, excepto betÃºn, en capa de rodadura y 3,5 cm. de espesor mÃ­nimo. , en horario nocturno, incluye la carga y transporte de restos y productos sobrantes a vertedero y canon.',6.24,20,2,'c2','50'),(519,2056,'UP041',4,'BetÃºn 35/50, en M.B.C. ',440.00,20,2,'c2','50'),(520,2057,'UP042',4,'BetÃºn 35/50, en M.B.C. en horario nocturno ',480.00,20,2,'c2','50'),(521,2058,'UP043',4,'BetÃºn 50/70, en M.B.C. ',440.00,20,2,'c2','50'),(522,2059,'UP044',4,'BetÃºn 50/70, en M.B.C. en horario nocturno ',480.00,20,2,'c2','50'),(523,2060,'UP045',4,'BetÃºn tipo PMB 45/80-60 (BM-3b), en M.B.C. ',470.00,20,2,'c2','50'),(524,2061,'UP046',4,'BetÃºn tipo PMB 45/80-60 (BM-3b), en M.B.C. en horario nocturno ',510.00,20,2,'c2','50'),(525,2062,'UP047',4,'BetÃºn tipo PMB 45/80-65 (BM-3c), en M.B.C. ',470.00,20,2,'c2','50'),(526,2063,'UP048',4,'BetÃºn tipo PMB 45/80-65 (BM-3c), en M.B.C. en horario nocturno ',510.00,20,2,'c2','50'),(527,2064,'UP049',4,'BetÃºn tipo PMB 10/40-70 (BM-1), en M.B.C. de alto mÃ³dulo. ',460.00,20,2,'c2','50'),(528,2065,'UP050',4,'BetÃºn tipo PMB 10/400-70 (BM-1), en M.B.C. de alto mÃ³dulo en horario nocturno ',490.00,20,2,'c2','50'),(529,2066,'UP051',4,'Filler calizo de aportaciÃ³n, en M.B.C. ',38.79,20,2,'c2','50'),(530,2067,'UP052',4,'Filler calizo de aportaciÃ³n, en M.B.C en horario nocturno ',45.37,20,2,'c2','50'),(531,2068,'UP053',4,'Filler de cemento de aportaciÃ³n, en M.B.C. ',99.75,20,2,'c2','50'),(532,2069,'UP054',4,'Filler de cemento de aportaciÃ³n, en M.B.C en horario nocturno ',116.71,20,2,'c2','50'),(533,2070,'UP055',4,'EmulsiÃ³n EAR-1-M o C60BP4 ADH en riego de adherencia ',360.00,20,2,'c2','50'),(534,2071,'UP056 ',4,'EmulsiÃ³n EAR-1-M o C60BP4 ADH en riego de adherencia en horario nocturno',390.00,20,2,'c2','50'),(535,2072,'UP057 ',4,'EmulsiÃ³n EAI, C60BF5 IMP, EAL-1, o C60BF5 IMP en riego de imprimaciÃ³n',340.00,20,2,'c2','50'),(536,2073,'UP058 ',4,'EmulsiÃ³n EAI, C60BF5 IMP, EAL-1, o C60BF5 IMP en riego de imprimaciÃ³n en horario nocturno',380.00,20,2,'c2','50'),(537,2074,'UP059 ',10,'Riego de imprimaciÃ³n con emulsiÃ³n tipo C60BF5 IMP de dotaciÃ³n 1,25 kg/m2',0.60,20,2,'c2','50'),(538,2075,'UP060 ',10,'Riego de imprimaciÃ³n con emulsiÃ³n tipo C60BF5 IMP de dotaciÃ³n 0,7 kg/m2',0.40,20,2,'c2','50'),(539,2076,'UP061 ',10,'Riego de adherencia termoadherente C60B4 TER de dotaciÃ³n 0,7 kg/m2',0.43,20,2,'c2','50'),(540,2077,'UP062 ',10,'Revestimiento antideslizante en pasarelas peatonales realizado con resinas epoxi',9.45,20,2,'c2','50'),(541,2078,'UP063 ',10,'Revestimiento antideslizante en pasarelas peatonales realizado con resinas epoxi en horario nocturno',12.29,20,2,'c2','50'),(542,2079,'UP064 ',10,'Tratamiento de la superficie del firme mediante la proyecciÃ³n de granalla de acero, para la mejora de las caracterÃ­sticas superficiales de la capa de rodadura en mezclas bituminosas o firmes de hormigÃ³n. Incluso aspiraciÃ³n de los residuos, recogida y transporte a gestor autorizado.',2.10,20,2,'c2','50'),(543,2080,'UP065 ',10,'Tratamiento de la superficie del firme mediante agua a alta presiÃ³n, para la mejora de las caracterÃ­sticas superficiales de la capa de rodadura en mezclas bituminosas o firmes de hormigÃ³n. Incluso aspiraciÃ³n de los residuos, recogida y transporte a gestor autorizado',2.70,20,2,'c2','50'),(544,2081,'UP066 ',10,'Tratamiento de la superficie del firme mediante ranurado transversal, para la mejora de las caracterÃ­sticas superficiales de la capa de rodadura en mezclas bituminosas o firmes de hormigÃ³n. Incluso aspiraciÃ³n de los residuos, recogida transporte a gestor autorizado',9.50,20,2,'c2','50'),(545,2082,'UP067 ',11,'Fresado de firme de M.B.C., incluso barrido, retirada de los materiales sobrantes a vertedero y canon',0.64,20,2,'c2','50'),(546,2083,'UP068 ',11,'Fresado de firme de M.B.C., incluso barrido, retirada de los materiales sobrantes a vertedero y canon, en horario nocturno',0.75,20,2,'c2','50'),(547,2084,'UP069 ',3,'FormaciÃ³n de terraplÃ©n con suelos seleccionados, procedentes de prÃ©stamos, nivelado y compactado, medido sobre perfil.',7.14,20,2,'c2','50'),(548,2085,'UP070 ',3,'Relleno localizado con materiales procedentes de prÃ©stamos extendido y compactado.',7.14,20,2,'c2','50'),(549,2086,'UP071 ',10,'Suministro y colocaciÃ³n de pavimento de loseta hidrÃ¡ulica de cualquier color y tamaÃ±o, incluso mortero de asiento y enlechado de juntas, terminado.',15.43,20,2,'c2','50'),(550,2100,'UA001 ',3,'HormigÃ³n en masa HM-20, Ã¡rido mÃ¡ximo 40 mm y consistencia plÃ¡stica, fabricado con CEM II/32,5 colocado en soleras pozos, zanjas, zapatas, refuerzo de tubos, aletas, muros, incluso p.p. de enfoscados',74.01,4,2,'c3','50'),(551,2101,'UA002 ',3,'m3 HormigÃ³n HA-25, Ã¡rido mÃ¡ximo 40 mm y consistencia plÃ¡stica, fabricado con CEM II/32,5 vibrado, colocado a cualquier profundidad en cimientos, soleras, pozos, zanjas, zapatas, refuerzos de tubos, aletas, muros, incluso p.p. de enfoscados.',80.20,4,2,'c3','50'),(552,2102,'UA003 ',3,'HormigÃ³n HA-30, Ã¡rido mÃ¡ximo 40 mm y consistencia plÃ¡stica, fabricado con CEM II/32,5 vibrado, colocado a cualquier profundidad en cimientos, soleras, pozos, zanjas, zapatas, refuerzos de tubos, aletas, muros, incluso p.p. de enfoscados. ',87.08,4,2,'c3','50'),(553,2103,'UA004 ',3,'HormigÃ³n para armar HA-25, fabricado con CEMII/32,5 y consistencia plÃ¡stica, moldeado y vibrado colocado a cualquier profundidad o altura en muros, aletas, losas, rampas, etc., sin enfoscar.',80.78,4,2,'c3','50'),(554,2104,'UA005 ',3,'HormigÃ³n para armar HA-30, fabricado con CEMII/32,5 y consistencia plÃ¡stica, moldeado y vibrado colocado a cualquier profundidad o altura en muros, aletas, losas, rampas, etc., sin enfoscar.',87.64,4,2,'c3','50'),(555,2105,'UA006 ',3,'Relleno de material filtrante en trasdÃ³s de obras de fÃ¡brica y zanjas.',11.55,4,2,'c3','50'),(556,2106,'UA007 ',7,'FormaciÃ³n de cunetas incluso excavaciÃ³n, reperfilado y acopio de material sobrante, incluida la carga y el transporte a vertedero o lugar de empleo y el canon, si procede, de los materiales sobrantes.',1.97,4,2,'c3','50'),(557,2107,'UA008 ',7,'Cuneta revestida de hormigÃ³n 3H:2V, incluida la retirada de productos sobrantes a vertedero y canon de vertido.',24.35,4,2,'c3','50'),(558,2108,'UA009 ',2,'Boca de salida para pasos salvacunetas de 40 cm de diÃ¡metro, incluida la retirada de productos sobrantes a vertedero y canon de vertido.',112.86,4,2,'c3','50'),(559,2109,'UA010 ',7,'UA010 m ReposiciÃ³n de bordillo de hormigÃ³n prefabricado de 20x22 cm, incluso demoliciÃ³n y acopio en zona de obra del existente, base de hormigÃ³n, mortero y rejuntado, incluida la retirada de productos sobrantes a vertedero y canon de vertido. ',15.27,4,2,'c3','50'),(560,2110,'UA011 ',7,'ReposiciÃ³n de bordillo de hormigÃ³n prefabricado de 17x28 cm, incluso demoliciÃ³n y acopio en zona de obra del existente, base de hormigÃ³n, mortero y rejuntado, incluida la retirada de productos sobrantes a vertedero y canon de vertido.',14.09,4,2,'c3','50'),(561,2111,'UA012 ',7,'ReposiciÃ³n de bordillo de hormigÃ³n prefabricado de 14x20 cm, incluso demoliciÃ³n y acopio en zona de obra del existente, base de hormigÃ³n, mortero y rejuntado, incluida la retirada de productos sobrantes a vertedero y canon de vertido',10.33,4,2,'c3','50'),(562,2112,'UA013 ',7,'ColocaciÃ³n de bordillo de hormigÃ³n prefabricado de cualquier tipo, incluso mortero y rejuntado, sin incluir bordillo ni excavaciÃ³n, incluida la retirada de productos sobrantes a vertedero y canon de vertido.',4.70,4,2,'c3','50'),(563,2113,'UA014 ',7,'Bajante prefabricada de hormigÃ³n 30x10 cm, incluida la retirada de productos sobrantes a vertedero y canon de vertido.',32.30,4,2,'c3','50'),(564,2114,'UA015 ',7,'Suministro y colocaciÃ³n de tuberÃ­a de hormigÃ³n en masa vibroprensado con enchufe de campana para junta de goma, incluso p/p de juntas elÃ¡sticas de diÃ¡metro 30 cm, incluida la retirada de productos sobrantes a vertedero y canon de vertido.',34.03,4,2,'c3','50'),(565,2115,'UA016 ',7,'Suministro y colocaciÃ³n de tuberÃ­a de hormigÃ³n en masa vibroprensado con enchufe de campana para junta de goma, incluso p/p de juntas elÃ¡sticas de diÃ¡metro 40 cm. , incluida la retirada de productos sobrantes a vertedero y canon de vertido.',40.36,4,2,'c3','50'),(566,2116,'UA017 ',7,'Suministro y colocaciÃ³n de tuberÃ­a de hormigÃ³n en masa vibroprensado con enchufe de campana para junta de goma, incluso p/p de juntas elÃ¡sticas de diÃ¡metro 50 cm, incluida la retirada de productos sobrantes a vertedero y canon de vertido.',60.35,4,2,'c3','50'),(567,2117,'UA018 ',7,'Suministro y colocaciÃ³n de tuberÃ­a de hormigÃ³n en masa vibroprensado con enchufe de campana para junta de goma, incluso p/p de juntas elÃ¡sticas de diÃ¡metro 60 cm, incluida la retirada de productos sobrantes a vertedero y canon de vertido.',59.06,4,2,'c3','50'),(568,2118,'UA019 ',7,'Suministro y colocaciÃ³n de tuberÃ­a de hormigÃ³n armado vibroprensado con enchufe de campana para junta de goma, incluso p/p de juntas elÃ¡sticas de diÃ¡metro 80 cm, incluida la retirada de productos sobrantes a vertedero y canon de vertido.',129.01,4,2,'c3','50'),(569,2119,'UA020 ',7,'Suministro y colocaciÃ³n de tuberÃ­a de hormigÃ³n armado vibroprensado con enchufe de campana para junta de goma, incluso p/p de juntas elÃ¡sticas de diÃ¡metro 100 cm, incluida la retirada de productos sobrantes a vertedero y canon de vertido.',171.86,4,2,'c3','50'),(570,2120,'UA021 ',7,'Suministro y colocaciÃ³n de tuberÃ­a de hormigÃ³n armado vibroprensado con enchufe de campana para junta de goma, incluso p/p de juntas elÃ¡sticas de diÃ¡metro 120 cm, incluida la retirada de productos sobrantes a vertedero y canon de vertido.',225.43,4,2,'c3','50'),(571,2121,'UA022 ',7,'Suministro y colocaciÃ³n de tuberÃ­a de hormigÃ³n armado vibroprensado con enchufe de campana para junta de goma, incluso p/p de juntas elÃ¡sticas de diÃ¡metro 150 cm, incluida la retirada de productos sobrantes a vertedero y canon de vertido.',304.34,4,2,'c3','50'),(572,2122,'UA023 ',7,'Suministro y colocaciÃ³n de tuberÃ­a de PVC corrugada de 315 mm, incluida la retirada de productos sobrantes a vertedero y canon de vertido.',62.18,4,2,'c3','50'),(573,2123,'UA024 ',7,'Suministro y colocaciÃ³n de tuberÃ­a de PVC corrugada de 400 mm, incluida la retirada de productos sobrantes a vertedero y canon de vertido.',86.61,4,2,'c3','50'),(574,2124,'UA025 ',7,'Suministro y colocaciÃ³n de tuberÃ­a de PVC corrugada de 500 mm, incluida la retirada de productos sobrantes a vertedero y canon de vertido. ',130.43,4,2,'c3','50'),(575,2125,'UA026 ',7,'Suministro y colocaciÃ³n de tuberÃ­a de PVC corrugada de 630 mm, incluida la retirada de productos sobrantes a vertedero y canon de vertido.',145.92,4,2,'c3','50'),(576,2126,'UA027',7,'Suministro y colocaciÃ³n de tuberÃ­a de PVC corrugada de 800 mm, incluida la retirada de productos sobrantes a vertedero y canon de vertido.',214.58,4,2,'c3','50'),(577,2127,'UA028 ',7,'Zanja dren con tubo poroso de PVC, diÃ¡metro 125 incluso envoltura geotextil, colocado, incluida la retirada de productos sobrantes a vertedero y canon de vertido.',22.16,4,2,'c3','50'),(578,2128,'UA029 ',7,'Zanja dren con tubo poroso de PVC, diÃ¡metro 160 incluso envoltura geotextil, colocado, incluida la retirada de productos sobrantes a vertedero y canon de vertido.',25.34,4,2,'c3','50'),(579,2129,'UA030 ',2,'ReposiciÃ³n de cerco y tapa de fundiciÃ³n en pozo de acera, incluida la retirada de productos sobrantes a vertedero y canon de vertido.',116.17,4,2,'c3','50'),(580,2130,'UA031 ',2,'ReposiciÃ³n de cerco y tapa de fundiciÃ³n en pozo de calzada, incluida la retirada de productos sobrantes a vertedero y canon de vertido.',129.01,4,2,'c3','50'),(581,2131,'UA032 ',2,'ReposiciÃ³n de tragante, tapa de hierro fundido y rejilla para pozos absorbederos, incluida la retirada de productos sobrantes a vertedero y canon de vertido.',218.74,4,2,'c3','50'),(582,2132,'UA033 ',7,'Suministro e instalaciÃ³n de rejilla de hierro fundido (DN-450), tipos FGE 50.7 o FGE 60.2, para tragantes de pozos absorbederos y cubriciÃ³n de canaletas y drenajes de 35 cm. incluso cerco, incluida la retirada de productos sobrantes a vertedero y canon de vertido.',64.64,4,2,'c3','50'),(583,2133,'UA034 ',10,'Rejilla de hierro dulce, con cerco de perfil angular, anclaje, recibido, terminado, incluida la retirada de productos sobrantes a vertedero y canon de vertido.',82.84,4,2,'c3','50'),(584,2134,'UA035 ',2,'Tapa de fundiciÃ³n para calzada, sin cerco, terminada, incluida la retirada de productos sobrantes a vertedero y canon de vertido.',80.24,4,2,'c3','50'),(585,2135,'UA036 ',2,'Levantado y puesta en altura de buzÃ³n, y tapa de registro, incluso hormigÃ³n HM-15, terminado, incluida la retirada de productos sobrantes a vertedero y canon de vertido.',60.24,4,2,'c3','50'),(586,2136,'UA037 ',2,'Recrecido de tapa de registro. ',57.20,4,2,'c3','50'),(587,2137,'UA038 ',2,'ConstrucciÃ³n de pozo de registro en calzada de hasta 2,60 m de profundidad, en fÃ¡brica de ladrillo, enfoscado y enlucido incluso p/p de postes de cercos y tapas de fundiciÃ³n terminado, incluida la retirada de productos sobrantes a vertedero y canon de vertido.',427.12,4,2,'c3','50'),(588,2138,'UA039 ',2,'ConstrucciÃ³n de pozo de registro en acera de hasta 2,60 m de profundidad, en fÃ¡brica de ladrillo, enfoscado y enlucido, incluso p/p de postes de cercos y tapas de fundiciÃ³n terminado, incluida la retirada de productos sobrantes a vertedero y canon de vertido.',414.16,4,2,'c3','50'),(589,2139,'UA040 ',2,'ConstrucciÃ³n de pozo de absorbedero en fabrica de ladrillo, enfoscado y enlucido, incluso p.p de postes, cercos, rejillas, tapas de fundiciÃ³n , terminado, incluida la retirada de productos sobrantes a vertedero y canon de vertido. ',493.00,4,2,'c3','50'),(590,2140,'UA041 ',5,'Acero galvanizado en perfiles laminados tipo S275 JR en estructura soldada para estructuras y pÃ³rticos, totalmente colocado.',1.53,4,2,'c3','50'),(591,2141,'UA042 ',7,'MalecÃ³n de 0,4x0,5 m de mamposterÃ­a de piedra, recibida con mortero de cemento, incluso materiales, terminado.',178.46,4,2,'c3','50'),(592,2200,'US001 ',2,' RecolocaciÃ³n de seÃ±al vertical o panel direccional incluido un solo soporte.',8.60,6,2,'c4','10'),(593,2201,'US002 ',2,'RecolocaciÃ³n de panel direccional de dos soportes. ',14.40,6,2,'c4','10'),(594,2202,'US003 ',2,'ReposiciÃ³n de seÃ±al vertical, circular, reflexiva, de diÃ¡metro 60 cm., incluso poste galvanizado, tornillerÃ­a y colocaciÃ³n.',129.17,6,2,'c4','10'),(595,2203,'US004 ',2,'ReposiciÃ³n de seÃ±al vertical, circular, reflexiva, de diÃ¡metro 90 cm. incluso poste galvanizado, tornillerÃ­a y colocaciÃ³n.',198.86,6,2,'c4','10'),(596,2204,'US005 ',2,'ReposiciÃ³n de seÃ±al vertical, circular, reflexiva, de diÃ¡metro 120cm, incluso poste galvanizado, tornillerÃ­a y colocaciÃ³n.',292.14,6,2,'c4','10'),(597,2205,'US006 ',2,'ReposiciÃ³n de espejo de diÃ¡metro 60 cm, incluso poste galvanizado, tornillerÃ­a y colocaciÃ³n.',127.00,6,2,'c4','10'),(598,2206,'US007 ',2,'ReposiciÃ³n de espejo de diÃ¡metro 60 cm antivandÃ¡lico, incluso tornillerÃ­a.',72.00,6,2,'c4','10'),(599,2207,'US008 ',2,'ReposiciÃ³n de espejo de diÃ¡metro 60 cm antivandÃ¡lico, incluso poste galvanizado, tornillerÃ­a y colocaciÃ³n.',143.00,6,2,'c4','10'),(600,2208,'US009 ',2,'ReposiciÃ³n de espejo de diÃ¡metro 90 cm, incluso poste galvanizado, tornillerÃ­a y colocaciÃ³n',196.00,6,2,'c4','10'),(601,2209,'US010 ',2,'ReposiciÃ³n de espejo de diÃ¡metro 90 cm antivandÃ¡lico, incluso tornillerÃ­a.',138.00,6,2,'c4','10'),(602,2210,'US011 ',2,'ReposiciÃ³n de espejo de diÃ¡metro 90 cm antivandÃ¡lico, incluso poste galvanizado, tornillerÃ­a y colocaciÃ³n.',204.00,6,2,'c4','10'),(603,2211,'US012 ',2,'ReposiciÃ³n de seÃ±al triangular, reflexiva, de 90 cm de lado, incluso poste galvanizado, tornillerÃ­a y colocaciÃ³n.',142.62,6,2,'c4','10'),(604,2212,'US013 ',2,'ReposiciÃ³n de seÃ±al triangular, reflexiva, de 135 cm de lado, incluso poste galvanizado, tornillerÃ­a y colocaciÃ³n.',226.72,6,2,'c4','10'),(605,2213,'US014 ',2,'ReposiciÃ³n de seÃ±al triangular, reflexiva, de 175 cm de lado, incluso poste galvanizado, tornillerÃ­a y colocaciÃ³n.',345.39,6,2,'c4','10'),(606,2214,'US015 ',2,'ReposiciÃ³n de seÃ±al reflexiva octogonal de 60 cm de doble apotema, incluso poste galvanizado, tornillerÃ­a y colocaciÃ³n.',135.43,6,2,'c4','10'),(607,2215,'US016 ',2,'ReposiciÃ³n de seÃ±al reflexiva octogonal de 90 cm de doble apotema, incluso poste galvanizado, tornillerÃ­a y colocaciÃ³n.',219.26,6,2,'c4','10'),(608,2216,'US017 ',2,'ReposiciÃ³n de panel direccional en azul o negro, reflexivo, de 80x40 cm, incluso poste galvanizado, tornillerÃ­a y colocaciÃ³n.',128.68,6,2,'c4','10'),(609,2217,'US018 ',2,'ReposiciÃ³n de panel direccional en azul o negro, reflexivo, de 165x45 cm, incluso poste galvanizado, tornillerÃ­a y colocaciÃ³n. ',194.88,6,2,'c4','10'),(610,2218,'US019 ',2,'ReposiciÃ³n de seÃ±al informativa, reflexiva, de 40x40 cm., incluso poste galvanizado, tornillerÃ­a y colocaciÃ³n.',118.58,6,2,'c4','10'),(611,2219,'US020 ',2,'ReposiciÃ³n de seÃ±al informativa, reflexiva, de 60x60 cm. o 60x40 cm., incluso poste galvanizado, tornillerÃ­a y colocaciÃ³n.',145.13,6,2,'c4','10'),(612,2220,'US021 ',2,'ReposiciÃ³n de seÃ±al informativa, reflexiva, de 90x90 cm., incluso poste galvanizado, tornillerÃ­a y colocaciÃ³n.',231.12,6,2,'c4','10'),(613,2221,'US022 ',2,'ReposiciÃ³n de seÃ±al informativa, orientativa o de confirmaciÃ³n, reflexiva, hasta 0,30 m2 de superficie, incluso poste galvanizado, tornillerÃ­a y colocaciÃ³n.',127.39,6,2,'c4','10'),(614,2222,'US023 ',2,'ReposiciÃ³n de seÃ±al informativa, orientativa o de confirmaciÃ³n, reflexiva, hasta 0,30 a 0,50 m2 de superficie, incluso poste galvanizado, tornillerÃ­a y colocaciÃ³n.',192.15,6,2,'c4','10'),(615,2223,'US024 ',2,'ReposiciÃ³n de seÃ±al informativa, orientativa o de confirmaciÃ³n, reflexiva, hasta 0,50 a 0,75 m2 de superficie, incluso poste galvanizado, tornillerÃ­a y colocaciÃ³n.',247.23,6,2,'c4','10'),(616,2224,'US025 ',2,'ReposiciÃ³n de seÃ±al informativa, orientativa o de confirmaciÃ³n, reflexiva, hasta 0,75 a 1,00 m2 de superficie, incluso poste galvanizado, tornillerÃ­a y colocaciÃ³n. ',319.71,6,2,'c4','10'),(617,2225,'US026',2,'Poste AIMPE para 2 mÃ³dulos de 150 cm.',198.04,6,2,'c4','10'),(618,2226,'US027',2,'Poste AIMPE para 4 mÃ³dulos de 150 cm.',308.88,6,2,'c4','10'),(619,2227,'US028',10,'RecolocaciÃ³n de cartel informativo de cualquier tamaÃ±o o tipo.',17.12,6,2,'c4','10'),(620,2228,'US029 ',10,'ReposiciÃ³n de cartel informativo de aluminio extrusionado reflexivo, incluso postes galvanizados, tornillerÃ­a y colocaciÃ³n.',298.97,6,2,'c4','10'),(621,2229,'US030 ',10,'ReposiciÃ³n de cartel informativo de acero perfilado reflexivo, incluso postes galvanizados, tornillerÃ­a y colocaciÃ³n.',196.18,6,2,'c4','10'),(622,2230,'US031',7,'Poste IPN de 140 mm para carteles, cimentado, terminado.',63.86,6,2,'c4','10'),(623,2231,'US032',7,'Poste IPN de 160 mm para carteles, cimentado, terminado.',71.64,6,2,'c4','10'),(624,2232,'US033',7,'Poste IPN de 180 mm para carteles, cimentado, terminado.',79.82,6,2,'c4','10'),(625,2250,'UM001 ',7,'Banda blanca reflexiva, de pintura acrÃ­lica, de 10 cm de anchura, incluso premarcaje.',0.37,16,2,'c5','50'),(626,2251,'UM002 ',7,'Banda blanca reflexiva, de pintura acrÃ­lica, de 15 cm de anchura, incluso premarcaje.',0.46,16,2,'c5','50'),(627,2252,'UM003 ',7,'Banda blanca reflexiva, de pintura acrÃ­lica, de 20 cm de anchura, incluso premarcaje',0.53,16,2,'c5','50'),(628,2253,'UM004 ',7,'Banda blanca reflexiva, de pintura acrÃ­lica, de 30 cm de anchura, incluso premarcaje.',0.70,16,2,'c5','50'),(629,2254,'UM005 ',7,'Banda blanca reflexiva, de pintura en spray, de 10 cm de anchura, incluso premarcaje.',1.10,16,2,'c5','50'),(630,2255,'UM006 ',7,'Banda blanca reflexiva, de pintura en spray, de 15 cm de anchura, incluso premarcaje.',1.46,16,2,'c5','50'),(631,2256,'UM007 ',7,'Banda blanca reflexiva, de pintura en spray, de 20 cm de anchura, incluso premarcaje.',1.83,16,2,'c5','50'),(632,2257,'UM008 ',7,'Banda blanca reflexiva, de pintura en spray, de 30 cm de anchura, incluso premarcaje.',2.54,16,2,'c5','50'),(633,2258,'UM009 ',7,'Banda blanca reflexiva, de pintura plÃ¡stica en frÃ­o en dos componentes, de 10 cm de anchura, incluso premarcaje.',1.59,16,2,'c5','50'),(634,2259,'UM010 ',7,'Banda blanca reflexiva, de pintura plÃ¡stica en frÃ­o en dos componentes, de 15 cm de anchura, incluso premarcaje.',2.50,16,2,'c5','50'),(635,2260,'UM011 ',7,'Banda blanca reflexiva, de pintura plÃ¡stica en frÃ­o en dos componentes, de 20 cm de anchura, incluso premarcaje.',3.61,16,2,'c5','50'),(636,2261,'UM012 ',7,'Banda blanca reflexiva, de pintura plÃ¡stica en frÃ­o en dos componentes, de 30 cm de anchura, incluso premarcaje. ',5.02,16,2,'c5','50'),(637,2262,'UM013 ',7,'Banda blanca reflexiva, de pintura plÃ¡stica en frÃ­o en dos componentes, de 40 cm de anchura, incluso premarcaje.',6.37,16,2,'c5','50'),(638,2263,'UM014 ',6,'Marca vial blanca, reflexiva, con pintura acrÃ­lica, en pavimento diferenciado, pasos de cebra, sÃ­mbolos, etc.',7.06,16,2,'c5','50'),(639,2264,'UM015 ',6,'Marca vial blanca, reflexiva, con pintura en dos componentes, en pavimento diferenciado, pasos de cebra, sÃ­mbolos, etc. ',15.63,16,2,'c5','50'),(640,2265,'UM016',7,'Pintura de bordillo de isletas.',1.43,16,2,'c5','50'),(641,2266,'UM017',6,'Pintura acrÃ­lica en superficie de hormigÃ³n en isletas.',6.84,16,2,'c5','50'),(642,2267,'UM018 ',7,'Marca vial de 20 cm de anchura, con pintura termoplÃ¡stica reflexiva sonora, con bandas transversales de 50x150x3 mm. ',2.89,16,2,'c5','50'),(643,2268,'UM019 ',6,'Lechada coloreada para la restauraciÃ³n superficial de carril bici extendida a mano',6.43,16,2,'c5','50'),(644,2269,'UM020 ',6,'Lechada coloreada para la restauraciÃ³n superficial de carril bici extendida a mÃ¡quina.',5.84,16,2,'c5','50'),(645,2270,'UM021 ',6,'Borrado de marca vial para cualquier clase de pintura y en cualquier configuraciÃ³n (bandas, pavimentos diferenciados, pasos de cebra, etc.)',4.58,16,2,'c5','50'),(646,2271,'UM022',6,'Fresado de marcas viales',20.68,16,2,'c5','50'),(647,2272,'UM023 ',6,'ReposiciÃ³n de bandas sonoras de 25 a 50 cm de anchura y espesor entre 1 y 2 cm con ligante epoxi y Ã¡rido silÃ­ceo.',66.07,16,2,'c5','50'),(648,2273,'UM024 ',7,'Cinta blanca reflexiva de seÃ±alizaciÃ³n de obstÃ¡culos en mÃ¡rgenes (Ã¡rboles, etc.) de 10 cm de ancho.',3.60,16,2,'c5','50'),(649,2290,'UL001',2,'ReposiciÃ³n de hito de arista tipo I. ',26.80,7,2,'c6','10'),(650,2291,'UL002',2,'ReposiciÃ³n de hito de arista tipo II. ',28.65,7,2,'c6','10'),(651,2292,'UL003',2,'Base de hormigÃ³n prefabricada para hito de arista colocada con mortero, terminada.',3.63,7,2,'c6','10'),(652,2293,'UL004',2,'ReposiciÃ³n de placa de hito kilomÃ©trico. ',75.08,7,2,'c6','10'),(653,2294,'UL005',2,'ReposiciÃ³n de hito miriamÃ©trico. ',336.94,7,2,'c6','10'),(654,2295,'UL006 ',7,'GuÃ­a de caucho reciclado, para delimitar bifurcaciones, con anclaje para hitos de vÃ©rtice, fijada a la calzada con tornillos de expansiÃ³n, terminado.',82.72,7,2,'c6','10'),(655,2296,'UL007',2,'Hito de vÃ©rtice para guÃ­a de caucho reciclado, colocado. ',61.35,7,2,'c6','10'),(656,2297,'UL008',2,'Suministro y colocaciÃ³n de hito delineador de vÃ©rtice H-75. ',45.94,7,2,'c6','10'),(657,2298,'UL009',2,'ReposiciÃ³n de captafaros de pavimento, reflectante a dos caras, colocado.',6.04,7,2,'c6','10'),(658,2400,'UB001 ',7,'ElevaciÃ³n de barrera de seguridad, incluso desmontaje de bionda, sustituciÃ³n de poste de sustentaciÃ³n y CPN, montaje de bionda y p.p. de tornillerÃ­a y capatafaros si fueran necesarios.',18.05,8,2,'c7','20'),(659,2401,'UB002 ',7,'Barrera metÃ¡lica de seguridad, incluso postes y p.p. de tornillerÃ­a y captafaros, hincada.',33.39,8,2,'c7','20'),(660,2402,'UB003 ',7,'RecolocaciÃ³n de barrera de seguridad metÃ¡lica, incluso postes y p.p. de tornillerÃ­a y captafaros, y desmontaje y transporte de barrera retirada a acopio',36.41,8,2,'c7','20'),(661,2403,'UB004 ',7,'Barrera metÃ¡lica de seguridad, incluso postes con placa soldada y p.p. de tornillerÃ­a y captafaros',34.60,8,2,'c7','20'),(662,2404,'UB005 ',7,'Barrera metÃ¡lica de seguridad doble, incluso postes y p.p. de tornillerÃ­a y captafaros, hincada',71.31,8,2,'c7','20'),(663,2405,'UB006 ',7,'Barrera metÃ¡lica de seguridad doble, incluso postes con placa soldada y p.p. de tornillerÃ­a y captafaros ',74.22,8,2,'c7','20'),(664,2406,'UB007 ',7,'Barrera de protecciÃ³n de motoristas homologada, incluso montaje sobre barrera metÃ¡lica de seguridad existente y p.p. de tornillerÃ­a y piezas especiales si fueran necesarios. 25,68',25.68,8,2,'c7','20'),(665,2407,'UB008 ',7,'Barrera metÃ¡lica de seguridad curva, incluso postes y p.p. de tornillerÃ­a y captafaros, hincada 62,50',62.50,8,2,'c7','20'),(666,2408,'UB009 ',7,'Barrera de protecciÃ³n mixta (madera-acero), incluso postes y p.p. de tornillerÃ­a y captafaros, hincada 62,76',62.76,8,2,'c7','20'),(667,2409,'UB010',2,'Terminal o abatimiento de barrera de seguridad tipo bionda de 4,3 m, incluso postes y p.p. de captafaros, tornillerÃ­a, terminado.',274.31,8,2,'c7','20'),(668,2410,'UB011',2,'Terminal o abatimiento de barrera de seguridad tipo bionda de 8 m, incluso postes y p.p. de captafaros, tornillerÃ­a, terminado.',392.49,8,2,'c7','20'),(669,2411,'UB012',2,'Terminal o abatimiento de barrera de seguridad tipo bionda de 12 m, incluso postes y p.p. de captafaros, tornillerÃ­a, terminado.',496.61,8,2,'c7','20'),(670,2412,'UB013',2,'Captafaros para bionda, colocado en bionda, terminado. ',3.42,8,2,'c7','20'),(671,2413,'UB014',2,'Captafaros para bionda tipo catadiÃ³ptricos, totalmente colocado',5.54,8,2,'c7','20'),(672,2414,'UB015 ',2,'Suministro y colocaciÃ³n de tubo de PVC. de alta densidad de color gris, 160 mm de diÃ¡metro y 4,1 mm de espesor, para protecciÃ³n de poste de barrera bionda.',8.67,8,2,'c7','20'),(673,2415,'UB016',2,'Terminal de barrera de motorista',87.00,8,2,'c7','20'),(674,2416,'UB017 ',7,'Barrera de seguridad rÃ­gida de hormigÃ³n, tipo NEW JERSEY, totalmente colocada.',68.72,8,2,'c7','20'),(675,2505,'UI006',2,'Interruptor horario astronÃ³mico electrÃ³nico programable, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio. ',198.75,11,2,'c8','40'),(676,2506,'UI007',2,'CÃ©lula fotoelÃ©ctrica de selenio de encendido-apagado, totalmente instalada y en perfecto estado de funcionamiento, incluso prueba en servicio. ',158.90,11,2,'c8','40'),(677,2507,'UI008',2,'AutomÃ¡tico tetrapolar de corte general de caja moldeada de 4x100 A., totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',232.32,11,2,'c8','40'),(678,2508,'UI009',2,'AutomÃ¡tico general de 4x50 A., totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio. ',85.91,11,2,'c8','40'),(679,2509,'UI010',2,'Contactor de 25 A., totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',43.69,11,2,'c8','40'),(680,2510,'UI011',2,'Contactor de 40 A., totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',46.17,11,2,'c8','40'),(681,2511,'UI012 ',2,'AutomÃ¡tico unipolar de 40 A., totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',53.15,11,2,'c8','40'),(682,2512,'UI013',2,'Diferencial de 4x25 A/300 mA., totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio. ',65.27,11,2,'c8','40'),(683,2513,'UI014',2,'Diferencial de 4x25 A rearmable en centro de mando existente, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',269.51,11,2,'c8','40'),(684,2514,'UI015 ',2,'AutomÃ¡tico bipolar de 2x25 A., totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',27.23,11,2,'c8','40'),(685,2515,'UI016 ',2,'Diferencial de 2x25 A/300 mA., totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',34.68,11,2,'c8','40'),(686,2516,'UI017 ',2,'Carril DIN, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',13.09,11,2,'c8','40'),(687,2517,'UI018 ',2,'Armario PANINTER de intemperie para seccionamiento y medida, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',613.20,11,2,'c8','40'),(688,2518,'UI019',2,'Suministro y colocaciÃ³n de cerradura para centro de mando, totalmente instalada y probada.',25.13,11,2,'c8','40'),(689,2519,'UI020',2,'Suministro y colocaciÃ³n de candado para centro de mando. ',22.55,11,2,'c8','40'),(690,2520,'UI021',2,'Fusible DO3 de 80 A., totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio. ',3.74,11,2,'c8','40'),(691,2521,'UI022',2,'Fusible NH-2 de 160 A., totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio. ',10.40,11,2,'c8','40'),(692,2522,'UI023',2,'Fusible XS-16 A, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio. ',23.58,11,2,'c8','40'),(693,2523,'UI024 ',2,'Base portafusibles, totalmente instalada y en perfecto estado de funcionamiento, incluso prueba en servicio.',10.84,11,2,'c8','40'),(694,2524,'UI025 ',2,'Equipo estabilizador-reductor de potencia con regulaciÃ³n de flujo y modulo programable para telegestiÃ³n, de hasta 10 kVA en bastidor, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',2855.10,11,2,'c8','40'),(695,2525,'UI026',2,'Equipo estabilizador-reductor de potencia con regulaciÃ³n de flujo y modulo programable para telegestiÃ³n, de hasta 15 kVA, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',3841.08,11,2,'c8','40'),(696,2526,'UI027',2,'Equipo estabilizador-reductor de potencia con regulaciÃ³n de flujo y modulo programable para telegestiÃ³n, de hasta 21 kVA, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',4148.91,11,2,'c8','40'),(697,2527,'UI028',2,'Equipo estabilizador-reductor de potencia con regulaciÃ³n de flujo y modulo programable para telegestiÃ³n, de hasta 30 kVA, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',4435.68,11,2,'c8','40'),(698,2528,'UI029',2,'Equipo estabilizador-reductor de potencia con regulaciÃ³n de flujo y modulo programable para telegestiÃ³n, de hasta 45 kVA, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',4938.82,11,2,'c8','40'),(699,2529,'UI030',2,'Equipo estabilizador-reductor de potencia con regulaciÃ³n de flujo y modulo programable para telegestiÃ³n, de hasta 60 kVA, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',6507.87,11,2,'c8','40'),(700,2530,'UI031',2,'Equipo estabilizador-reductor de potencia con regulaciÃ³n de flujo y modulo programable para telegestiÃ³n, de hasta 75 kVA, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',6877.51,11,2,'c8','40'),(701,2531,'UI032',2,'Equipo estabilizador-reductor de potencia con regulaciÃ³n de flujo y modulo programable para telegestiÃ³n, de hasta 80 kVA, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',9302.41,11,2,'c8','40'),(702,2532,'UI033',2,'Suministro y montaje de mÃ³dulo de telegestiÃ³n programable, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio. ',1658.82,11,2,'c8','40'),(703,2533,'UI034',2,'Suministro y montaje de placa electrÃ³nica en regulador hasta 30 kVA, totalmente instalado y en perfecto estado de funcionamiento ,incluso prueba en servicio.',1237.78,11,2,'c8','40'),(704,2534,'UI035',2,'Suministro y montaje de placa electrÃ³nica en regulador hasta 80 kVA, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',2041.11,11,2,'c8','40'),(705,2535,'UI036',2,'Suministro y montaje de centro de transformaciÃ³n aÃ©reo hasta 50 kVA, con todos sus elementos, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio. ',11755.46,11,2,'c8','40'),(706,2537,'UI038 ',2,'Suministro, montaje y conexionado de centro de transformaciÃ³n trifÃ¡sico, refrigerado en aceite hasta 50 kVA 15/20, con todos sus elementos, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',5948.45,11,2,'c8','40'),(707,2538,'UI039',2,'Desconexionado de cables de entrada y salida en transformador existente, desmontaje del transformador y traslado del mismo al centro de reciclaje autorizado.',445.15,11,2,'c8','40'),(708,2539,'UI040 ',2,'Suministro y colocaciÃ³n de llave de enclavamiento en la celda de protecciÃ³n del transformador, totalmente instalada y en perfecto estado de funcionamiento, incluso prueba en servicio.',122.45,11,2,'c8','40'),(709,2540,'UI041 ',2,'Suministro y colocaciÃ³n de cerradura de puerta, incluso desmontaje de la existente en centro de seccionamiento, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio. ',513.38,11,2,'c8','40'),(710,2541,'UI042',2,'Suministro e instalaciÃ³n de barras para restringir el acceso a centro de transformaciÃ³n, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',692.19,11,2,'c8','40'),(711,2542,'UI043',2,'Suministro, colocaciÃ³n y conexiones de puentes de media tensiÃ³n, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',1634.75,11,2,'c8','40'),(712,2543,'UI044',2,'Juego de seccionadores 24 kV 630 A, incluso cruceta, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio. ',1614.89,11,2,'c8','40'),(713,2544,'UI045',2,'Juego de autovÃ¡lvulas 24 kV 5 kA, incluso cruceta, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio. ',1293.94,11,2,'c8','40'),(714,2545,'UI046',2,'Juego de botellas terminales de exterior, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio. ',657.12,11,2,'c8','40'),(715,2546,'UI047',2,'Juego de botellas terminales de interior, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio. ',739.20,11,2,'c8','40'),(716,2547,'UI048',2,'Cadena de amarre completa, totalmente instalada y en perfecto estado de funcionamiento, incluso prueba en servicio. ',78.99,11,2,'c8','40'),(717,2548,'UI049',2,'Cruceta plana de amarre, totalmente instalada y en perfecto estado de funcionamiento, incluso prueba en servicio. ',440.19,11,2,'c8','40'),(718,2549,'UI050',2,'Anillo equipotencial completo, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio. ',367.29,11,2,'c8','40'),(719,2550,'UI051',7,'LÃ­nea aÃ©rea de Media TensiÃ³n con conductor tipo LA-56, incluso tendido, tensado, regulado y engrapado, totalmente instalada y en perfecto estado de funcionamiento, incluso prueba en servicio.',6.24,11,2,'c8','40'),(720,2551,'UI052',7,'LÃ­nea aÃ©rea de Media TensiÃ³n con conductor 12/20 kV tipo HEPRZ-1 de 3x(1x95) mm2, totalmente instalada y en perfecto estado de funcionamiento, incluso prueba en servicio. ',24.29,11,2,'c8','40'),(721,2552,'UI053',7,'LÃ­nea aÃ©rea de Media TensiÃ³n con conductor 12/20 kV tipo HEPRZ-1 de 3x(1x150) mm2, totalmente instalada y en perfecto estado de funcionamiento, incluso prueba en servicio. ',26.36,11,2,'c8','40'),(722,2553,'UI054',7,'LÃ­nea aÃ©rea de Media TensiÃ³n con conductor 12/20 kV tipo HEPRZ-1 de 3x(1x240) mm2, totalmente instalada y en perfecto estado de funcionamiento, incluso prueba en servicio. ',50.65,11,2,'c8','40'),(723,2554,'UI055',7,'Conductor de aluminio con recubrimiento de PVC de 1x50 mm2 para tensiÃ³n nominal de 0,6/1 kV en instalaciÃ³n subterrÃ¡nea, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',2.49,11,2,'c8','40'),(724,2555,'UI056',7,'Conductor de aluminio con recubrimiento de PVC de 1x95 mm2 para tensiÃ³n nominal de 0,6/1 kV en instalaciÃ³n subterrÃ¡nea, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',3.10,11,2,'c8','40'),(725,2556,'UI057',7,'Conductor de aluminio con recubrimiento de PVC de 1x150 mm2 para tensiÃ³n nominal de 0,6/1 kV en instalaciÃ³n subterrÃ¡nea, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',3.64,11,2,'c8','40'),(726,2557,'UI058',2,'Terminal para cable de aluminio de 50 mm2, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio',4.96,11,2,'c8','40'),(727,2558,'UI059',2,'Terminal para cable de aluminio de 95 mm2, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',5.60,11,2,'c8','40'),(728,2559,'UI060',2,'Terminal para cable de aluminio de 150 mm2, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',6.75,11,2,'c8','40'),(729,2560,'UI061',2,'Cartucho fusible de 100 A, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',4.71,11,2,'c8','40'),(730,2561,'UI062',2,'Cartucho fusible de 125 A, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',5.40,11,2,'c8','40'),(731,2562,'UI063',2,'Cartucho fusible de 150 A, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',5.90,11,2,'c8','40'),(732,2563,'UI064',2,'Cartucho fusible de 160 A, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',7.05,11,2,'c8','40'),(733,2564,'UI065',2,'Cartucho fusible de 250 A, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',8.67,11,2,'c8','40'),(734,2565,'UI066',2,'Cartucho fusible tipo ZR-1, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',0.64,11,2,'c8','40'),(735,2566,'UI067',2,'Apoyo de celosÃ­a C-2000 de 12 m de altura, incluso cimentaciÃ³n de hormigÃ³n armado HA 25/P/20/I CEM II/A-P 32,5R de central y armadura B 500 S, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio. ',4200.80,11,2,'c8','40'),(736,2567,'UI068',2,'Apoyo de celosÃ­a C-2000 de 16 m. de altura, incluso cimentaciÃ³n de hormigÃ³n armado HA 25/P/20/I CEM II/A-P 32,5R de central y armadura B 500 S, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio. ',5263.47,11,2,'c8','40'),(737,2568,'UI069',2,'Apoyo de celosÃ­a C-2000 de 18 m. de altura, incluso cimentaciÃ³n de hormigÃ³n armado HA 25/P/20/I CEM II/A-P  32,5R de central y armadura B 500 S, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio. ',6270.23,11,2,'c8','40'),(738,2569,'UI070 ',2,'Jornada diaria de equipo de trabajos en tensiÃ³n, en horario normal en dÃ­a laborable. ',5320.05,11,2,'c8','40'),(739,2570,'UI071 ',7,'UI071 m Conductor de cobre con recubrimiento de PVC de 1x6 mm2, para tensiÃ³n nominal de 0,6/1 kV en instalaciÃ³n subterrÃ¡nea. Totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',0.64,11,2,'c8','40'),(740,2571,'UI072',7,'Conductor de cobre con recubrimiento de PVC de 1x10 mm2, para tensiÃ³n nominal de 0,6/1 kV en instalaciÃ³n subterrÃ¡nea. Totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',0.85,11,2,'c8','40'),(741,2572,'UI073',7,'Conductor de cobre con recubrimiento de PVC de 1x16 mm2, para tensiÃ³n nominal de 0,6/1 kV en instalaciÃ³n subterrÃ¡nea. Totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',1.16,11,2,'c8','40'),(742,2573,'UI074',7,'Conductor de cobre con recubrimiento de PVC de 1x25 mm2, para tensiÃ³n nominal de 0,6/1 kV en instalaciÃ³n subterrÃ¡nea. Totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',1.81,11,2,'c8','40'),(743,2574,'UI075',7,'Conductor de cobre con recubrimiento de PVC de 1x35 mm2, para tensiÃ³n nominal de 0,6/1 kV en instalaciÃ³n subterrÃ¡nea. Totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',2.30,11,2,'c8','40'),(744,2575,'UI076',7,'Conductor de cobre con recubrimiento de PVC de 1x50 mm2, para tensiÃ³n nominal de 0,6/1 kV en instalaciÃ³n subterrÃ¡nea. Totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',3.05,11,2,'c8','40'),(745,2576,'UI077',7,'Conductor de cobre con recubrimiento de PVC de 4x25 mm2, para tensiÃ³n nominal de 0,6/1 kV en instalaciÃ³n subterrÃ¡nea. Totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',6.95,11,2,'c8','40'),(746,2577,'UI078',7,'Conductor de cobre con recubrimiento de PVC de 3,5x35 mm2, para tensiÃ³n nominal de 0,6/1 kV en instalaciÃ³n subterrÃ¡nea. Totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',8.84,11,2,'c8','40'),(747,2578,'UI079',7,'Conductor de cobre con recubrimiento de PVC de 3,5x50 mm2, para tensiÃ³n nominal de 0,6/1 kV en instalaciÃ³n subterrÃ¡nea. Totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',11.82,11,2,'c8','40'),(748,2579,'UI080',7,'Conductor de cobre con recubrimiento de PVC de 3,5x70 mm2, para tensiÃ³n nominal de 0,6/1 kV en instalaciÃ³n subterrÃ¡nea. Totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',14.76,11,2,'c8','40'),(749,2580,'UI081',7,'Conductor termoplÃ¡stico especial de 3x2,5 mm2, cilÃ­ndrico, para instalaciÃ³n en interior de soporte, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',0.83,11,2,'c8','40'),(750,2581,'UI082',7,'Conductor de cobre de 1x16 mm2 con aislamiento de PVC de 750 V de tensiÃ³n nominal, color verde-amarillo para la red de toma de tierra, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio. ',1.17,11,2,'c8','40'),(751,2582,'UI083',7,'Conductor de cobre de 1x25 mm2 con aislamiento de PVC de 750 V de tensiÃ³n nominal, color verde-amarillo para la red de toma de tierra, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',1.82,11,2,'c8','40'),(752,2583,'UI084',7,'Conductor de cobre de 1x35 mm2 con aislamiento de PVC de 750 V de tensiÃ³n nominal, color verde-amarillo para la red de toma de tierra, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio. ',2.32,11,2,'c8','40'),(753,2584,'UI085',7,'Conductor de cobre con recubrimiento de RZ-1 libre de halÃ³genos de 1x6 mm2 para tensiÃ³n nominal de 0,6/1 kV en instalaciÃ³n subterrÃ¡nea, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio. ',0.77,11,2,'c8','40'),(754,2585,'UI086',7,'Conductor de cobre con recubrimiento de RZ-1 libre de halÃ³genos de 1x10 mm2 para tensiÃ³n nominal de 0,6/1 kV en instalaciÃ³n subterrÃ¡nea, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio. ',0.99,11,2,'c8','40'),(755,2586,'UI087',7,'Conductor de cobre con recubrimiento de RZ-1 libre de halÃ³genos de 1x16 mm2 para tensiÃ³n nominal de 0,6/1 kV en instalaciÃ³n subterrÃ¡nea, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio. ',1.45,11,2,'c8','40'),(756,2587,'UI088',7,'Conductor de cobre con recubrimiento de RZ-1 libre de halÃ³genos de 1x25 mm2 para tensiÃ³n nominal de 0,6/1 kV en instalaciÃ³n subterrÃ¡nea, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio. ',2.30,11,2,'c8','40'),(757,2588,'UI089',7,'Conductor de cobre con recubrimiento de RZ-1 libre de halÃ³genos de 1x35 mm2 para tensiÃ³n nominal de 0,6/1 kV en instalaciÃ³n subterrÃ¡nea, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio. ',3.00,11,2,'c8','40'),(758,2589,'UI090',7,'Conductor de cobre con recubrimiento de RZ-1 libre de halÃ³genos de 1x50 mm2 para tensiÃ³n nominal de 0,6/1 kV en instalaciÃ³n subterrÃ¡nea, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio. ',3.86,11,2,'c8','40'),(759,2590,'UI091',7,'Conductor de cobre de 1x16 mm2 con aislamiento de RZ-1 libre de halÃ³genos de 750 V de tensiÃ³n nominal, color verdeamarillo para la red de toma de tierra, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',1.39,11,2,'c8','40'),(760,2591,'UI092',7,'Conductor de cobre de 1x25 mm2 con aislamiento de RZ-1 libre de halÃ³genos de 750 V de tensiÃ³n nominal, color verdeamarillo para la red de toma de tierra, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',2.27,11,2,'c8','40'),(761,2592,'UI093',7,'Conductor de cobre de 1x35 mm2 con aislamiento de RZ-1 libre de halÃ³genos de 750 V de tensiÃ³n nominal, color verdeamarillo para la red de toma de tierra, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',2.97,11,2,'c8','40'),(762,2593,'UI094',2,'Kit de empalme para cable hasta 4x25 mm2, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio. ',27.68,11,2,'c8','40'),(763,2594,'UI095 ',2,'Conjunto de materiales para paso de cables subterrÃ¡neo a fachada o viceversa, comprendiendo tres metros de tubo de hierro galvanizado PG-36, con tubo de plÃ¡stico reforzado por su interior, con tornillo de toma de tierra, totalmente instalados y en perfecto estado de funcionamiento, incluso prueba en servicio. ',26.74,11,2,'c8','40'),(764,2595,'UI096',2,'Grapado de tubo de acero M-50 en fachada con p.p. de pequeÃ±o material, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',16.81,11,2,'c8','40'),(765,2596,'UI097',2,'Manguito o terminal de 6 mm totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',0.27,11,2,'c8','40'),(766,2597,'UI098',2,'Manguito o terminal de 10 mm totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio. ',0.32,11,2,'c8','40'),(767,2598,'UI099',2,'Manguito o terminal de 16 mm totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio. ',0.34,11,2,'c8','40'),(768,2599,'UI100',2,'Manguito o terminal de 25 mm totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio. ',0.41,11,2,'c8','40'),(769,2600,'UI101',2,'Manguito o terminal de 35 mm totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio. ',0.52,11,2,'c8','40'),(770,2601,'UI102',2,'Suministro de rollo de cinta plÃ¡stica. ',1.30,11,2,'c8','40'),(771,2602,'UI103',2,'Suministro de rollo de cinta vulcanizable. ',5.96,11,2,'c8','40'),(772,2603,'UI104',2,'Caja de conexiÃ³n y protecciÃ³n para bÃ¡culo y brazos murales, construida en poliÃ©ster reforzado con fibra de vidrio o policarbonato y provista de una o dos bases aptas para cartuchos de cortacircuitos de hasta 20 A. (10x38) y 4 bornas de conexiÃ³n para cable de hasta 25 mm2, incluidos dichos cartuchos, totalmente instalada y en perfecto estado de funcionamiento, incluso prueba en servicio. ',14.02,11,2,'c8','40'),(773,2605,'UI106',2,'Caja de empalme o derivaciÃ³n, de 150x150 mm. sin bornas, construida de fundiciÃ³n de aluminio, con transporte y pequeÃ±o material, totalmente instalada y en perfecto estado de funcionamiento, incluso prueba en servicio. ',16.67,11,2,'c8','40'),(774,2606,'UI107',2,'Cartucho fusible tipo ZR-0, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',0.47,11,2,'c8','40'),(775,2607,'UI108',2,'Cartucho fusible tipo ZR-1, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',0.64,11,2,'c8','40'),(776,2608,'UI109',2,'Luminaria cerrada con equipo, con carcasa de fundiciÃ³n de aluminio inyectado, superficie reflectora de una sola pieza, cierre de vidrio y filtro del sistema Ã³ptico con reactancia A.F. incorporado, para lÃ¡mpara de vapor de alta presiÃ³n de 150 W, totalmente instalada y en perfecto estado de funcionamiento, incluso prueba en servicio. ',175.08,11,2,'c8','40'),(777,2609,'UI110',2,'Luminaria cerrada con equipo, con carcasa de fundiciÃ³n de aluminio inyectado, superficie reflectora de una sola pieza, cierre de vidrio y filtro del sistema Ã³ptico con reactancia A.F. incorporado, para lÃ¡mpara de vapor de alta presiÃ³n de 250 W, totalmente instalada y en perfecto estado de funcionamiento, incluso prueba en servicio. ',190.10,11,2,'c8','40'),(778,2610,'UI111',2,'Luminaria cerrada con equipo, con carcasa de fundiciÃ³n de aluminio inyectado, superficie reflectora de una sola pieza, cierre de vidrio y filtro del sistema Ã³ptico con reactancia A.F. incorporado, para lÃ¡mpara de vapor de alta presiÃ³n de 400 W, totalmente instalada y en perfecto estado de funcionamiento, incluso prueba en servicio. ',194.59,11,2,'c8','40'),(779,2611,'UI112',2,'Luminaria cerrada con equipo, con carcasa de fundiciÃ³n de aluminio inyectado, superficie reflectora de una sola pieza, cierre de vidrio y filtro del sistema Ã³ptico con reactancia A.F. incorporado, para lÃ¡mpara de vapor de alta presiÃ³n de 750 W, totalmente instalada y en perfecto estado de funcionamiento, incluso prueba en servicio. ',374.66,11,2,'c8','40'),(780,2612,'UI113',2,'Luminaria cerrada con equipo, con carcasa de fundiciÃ³n de aluminio inyectado, superficie reflectora de una sola pieza, cierre de vidrio y filtro del sistema Ã³ptico con reactancia A.F. incorporado, para lÃ¡mpara de vapor de alta presiÃ³n de 1000 W, totalmente instalada y en perfecto estado de funcionamiento, incluso prueba en servicio. ',778.10,11,2,'c8','40'),(781,2613,'UI114',2,'Luminaria cerrada para pasos inferiores, con equipo de alto factor, para lÃ¡mpara de vapor de alta presiÃ³n de 150 W, totalmente instalada y en perfecto estado de funcionamiento, incluso prueba en servicio. ',165.25,11,2,'c8','40'),(782,2614,'UI115',2,'Luminaria cerrada para pasos inferiores, con equipo de alto factor, para lÃ¡mpara de vapor de alta presiÃ³n de 250 W, totalmente instalada y en perfecto estado de funcionamiento, incluso prueba en servicio. ',173.69,11,2,'c8','40'),(783,2615,'UI116',2,'Luminaria cerrada para pasos inferiores, con equipo de alto factor, para lÃ¡mpara de vapor de alta presiÃ³n de 400 W, totalmente instalada y en perfecto estado de funcionamiento, incluso prueba en servicio. ',182.58,11,2,'c8','40'),(784,2616,'UI117',2,'Proyector rectangular, con carcasa de fundiciÃ³n de aluminio o poliÃ©ster con fibra de vidrio, reflector de aluminio de alta pureza y protecciÃ³n anÃ³dica, de haz intensivo o extensivo, cristal de vidrio templado, lira de fijaciÃ³n y equipo para lÃ¡mpara de vapor de alta presiÃ³n de 400 W, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',199.89,11,2,'c8','40'),(785,2617,'UI118',2,'Proyector rectangular, con carcasa de fundiciÃ³n de aluminio o poliÃ©ster con fibra de vidrio, reflector de aluminio de alta pureza y protecciÃ³n anÃ³dica, de haz intensivo o extensivo cristal de vidrio templado, lira de fijaciÃ³n y equipo para lÃ¡mpara de vapor de alta presiÃ³n de 750 W, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio. ',238.36,11,2,'c8','40'),(786,2618,'UI119',2,'Proyector rectangular, con carcasa de fundiciÃ³n de aluminio o poliÃ©ster con fibra de vidrio, reflector de aluminio de alta pureza y protecciÃ³n anÃ³dica, de haz intensivo o extensivo, cristal de vidrio templado, lira de fijaciÃ³n y equipo para lÃ¡mpara de vapor de alta presiÃ³n de 1.000 W, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio. ',500.24,11,2,'c8','40'),(787,2619,'UI120 ',2,'Luminaria esfÃ©rica de metacrilato de 550 mm de diÃ¡metro, con equipo de encendido para lÃ¡mpara de vapor de sodio alta presiÃ³n de 150 W, con bloque Ã³ptico, totalmente instalada y en perfecto estado de funcionamiento, incluso prueba en servicio. ',123.89,11,2,'c8','40'),(788,2620,'UI121',2,'Equipo de alto factor para lÃ¡mpara de vapor de alta presiÃ³n de 100 W, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio. ',42.10,11,2,'c8','40'),(789,2621,'UI122',2,'Equipo de alto factor para lÃ¡mpara de vapor de alta presiÃ³n de 150 W, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio. ',46.26,11,2,'c8','40'),(790,2622,'UI123',2,'Equipo de alto factor para lÃ¡mpara de vapor de alta presiÃ³n de 250 W, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio. ',51.99,11,2,'c8','40'),(791,2623,'UI124',2,'Equipo de alto factor para lÃ¡mpara de vapor de alta presiÃ³n de 400 W, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio. ',56.37,11,2,'c8','40'),(792,2624,'UI125',2,'Equipo de alto factor para lÃ¡mpara de vapor de alta presiÃ³n de 750 W, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio. ',92.20,11,2,'c8','40'),(793,2625,'UI126',2,'Equipo de alto factor para lÃ¡mpara de vapor de alta presiÃ³n de 1.000 W, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio. ',126.02,11,2,'c8','40'),(794,2626,'UI127',2,'Reactancia adicional para reductor de consumo hasta 400 W, totalmente instalada y en perfecto estado de funcionamiento, incluso prueba en servicio. ',33.37,11,2,'c8','40'),(795,2627,'UI128',2,'LÃ¡mpara de vapor de sodio de alta presiÃ³n de 100 W, casquillo Edison, totalmente instalada y en perfecto estado de funcionamiento, incluso prueba en servicio. ',13.55,11,2,'c8','40'),(796,2628,'UI129',2,'LÃ¡mpara de vapor de sodio de alta presiÃ³n de 150 W, casquillo Edison, totalmente instalada y en perfecto estado de funcionamiento, incluso prueba en servicio. ',14.00,11,2,'c8','40'),(797,2629,'UI130',2,'LÃ¡mpara de vapor de sodio de alta presiÃ³n de 250 W, casquillo Edison, totalmente instalada y en perfecto estado de funcionamiento, incluso prueba en servicio. ',16.07,11,2,'c8','40'),(798,2630,'UI131',2,'LÃ¡mpara de vapor de sodio de alta presiÃ³n de 400 W, casquillo Edison, totalmente instalada y en perfecto estado de funcionamiento, incluso prueba en servicio. ',18.00,11,2,'c8','40'),(799,2631,'UI132',2,'LÃ¡mpara de vapor de sodio de alta presiÃ³n de 750 W, casquillo Edison, totalmente instalada y en perfecto estado de funcionamiento, incluso prueba en servicio. ',76.45,11,2,'c8','40'),(800,2632,'UI133',2,'LÃ¡mpara de vapor de sodio de alta presiÃ³n de 1.000 W, casquillo Edison, totalmente instalada y en perfecto estado de funcionamiento, incluso prueba en servicio. ',105.00,11,2,'c8','40'),(801,2633,'UI134',2,'Limpieza de luminaria ',4.49,11,2,'c8','40'),(802,2634,'UI135',2,'Pantalla para acoplamiento de tubo fluorescente, totalmente instalada y en perfecto estado de funcionamiento, incluso prueba en servicio. ',88.98,11,2,'c8','40'),(803,2635,'UI136',2,'Tubo fluorescente de luz dÃ­a 60 W, arranque rÃ¡pido, totalmente instalada y en perfecto estado de funcionamiento, incluso prueba en servicio. ',5.18,11,2,'c8','40'),(804,2636,'UI137',2,'LÃ¡mpara de 60 W, totalmente instalada y en perfecto estado de funcionamiento, incluso prueba en servicio. ',1.66,11,2,'c8','40'),(805,2637,'UI138',2,'PortalÃ¡mparas E-40, totalmente instalada y en perfecto estado de funcionamiento, incluso prueba en servicio. ',4.95,11,2,'c8','40'),(806,2638,'UI139',2,'Vidrio de cierre para luminaria V2F, totalmente instalada y en perfecto estado de funcionamiento, incluso prueba en servicio. ',59.17,11,2,'c8','40'),(807,2639,'UI140',2,'Vidrio de cierre para luminaria M-250, totalmente instalada y en perfecto estado de funcionamiento, incluso prueba en servicio. ',52.70,11,2,'c8','40'),(808,2640,'UI141',2,'Vidrio de cierre para luminaria M-400, totalmente instalada y en perfecto estado de funcionamiento, incluso prueba en servicio. ',67.41,11,2,'c8','40'),(809,2641,'UI142',2,'Vidrio de cierre para luminaria Turnpike, totalmente instalada y en perfecto estado de funcionamiento, incluso prueba en servicio. ',90.68,11,2,'c8','40'),(810,2642,'UI143',2,'Columna troncocÃ³nica de 4 m de altura en chapa de acero galvanizado en caliente y pintada al horno, con puerta con toma de tierra, con grado de protecciÃ³n IP-44, totalmente instalada y en perfecto estado de funcionamiento, incluso prueba en servicio.',138.55,11,2,'c8','40'),(811,2643,'UI144',2,'Columna troncocÃ³nica de 6 m de altura en chapa de acero galvanizado en caliente y pintada al horno, con puerta con toma de tierra, con grado de protecciÃ³n IP-44, totalmente instalada y en perfecto estado de funcionamiento, incluso prueba en servicio.',171.27,11,2,'c8','40'),(812,2644,'UI145',2,'Columna troncocÃ³nica de 10 m de altura en chapa de acero galvanizado en caliente y pintada al horno, con puerta con toma de tierra, con grado de protecciÃ³n IP-44, totalmente instalada y en perfecto estado de funcionamiento, incluso prueba en servicio.',195.98,11,2,'c8','40'),(813,2645,'UI146',2,'Columna troncocÃ³nica de 12 m de altura en chapa de acero galvanizado en caliente y pintada al horno, con puerta con toma de tierra, con grado de protecciÃ³n IP-44, totalmente instalada y en perfecto estado de funcionamiento, incluso prueba en servicio.',288.41,11,2,'c8','40'),(814,2646,'UI147',2,'Columna troncocÃ³nica de 14 m de altura en chapa de acero galvanizado en caliente y pintada al horno, con puerta con toma de tierra, con grado de protecciÃ³n IP-44, totalmente instalada y en perfecto estado de funcionamiento, incluso prueba en servicio.',375.78,11,2,'c8','40'),(815,2647,'UI148',2,'Columna poligonal de 16 m de altura con corona mÃ³vil, homologada, completa, totalmente instalada y en perfecto estado de funcionamiento, incluso prueba en servicio.',9240.82,11,2,'c8','40'),(816,2648,'UI149',2,'Columna poligonal de 20 m de altura con corona mÃ³vil, homologada, completa, totalmente instalada y en perfecto estado de funcionamiento, incluso prueba en servicio.',9425.30,11,2,'c8','40'),(817,2649,'UI150',2,'Columna poligonal de 30 m de altura con corona mÃ³vil, homologada, completa, totalmente instalada y en perfecto estado de funcionamiento, incluso prueba en servicio.',11540.71,11,2,'c8','40'),(818,2650,'UI151',2,'Columna poligonal de 45 m de altura con corona mÃ³vil, homologada, completa, totalmente instalada y en perfecto estado de funcionamiento, incluso prueba en servicio.',15128.81,11,2,'c8','40'),(819,2651,'UI152',2,'BÃ¡culo metÃ¡lico galvanizado de 9 m de altura con brazo de 1,50 m de saliente, en chapa de acero galvanizado en caliente y pintada al horno, con puerta con toma de tierra, con grado de protecciÃ³n IP-44 homologado, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio. ',170.93,11,2,'c8','40'),(820,2652,'UI153',2,'BÃ¡culo metÃ¡lico galvanizado de 10 m de altura con brazo de 1,50 m. de saliente, en chapa de acero galvanizado en caliente y pintada al horno, con puerta con toma de tierra, con grado de protecciÃ³n IP-44 homologado, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio. ',195.98,11,2,'c8','40'),(821,2653,'UI154',2,'BÃ¡culo metÃ¡lico galvanizado de 12 m de altura con brazo de 2,00 m de saliente, en chapa de acero galvanizado en caliente y pintada al horno, con puerta con toma de tierra, con grado de protecciÃ³n IP-44 homologado, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio. ',289.86,11,2,'c8','40'),(822,2654,'UI155',2,'BÃ¡culo metÃ¡lico galvanizado de 10 m de altura con dos brazos de 2,00 m de saliente, en chapa de acero galvanizado en caliente y pintada al horno, con puerta con toma de tierra, con grado de protecciÃ³n IP-44 homologado, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio. ',271.94,11,2,'c8','40'),(823,2655,'UI156',2,'Brazo mural metÃ¡lico curvo para fijaciÃ³n a bÃ¡culo o pared, en chapa de acero galvanizado en caliente y pintada al horno, incluyendo accesorios de fijaciÃ³n, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio. ',51.04,11,2,'c8','40'),(824,2656,'UI157',2,'Cruceta metÃ¡lica de 2 brazos para columna, en chapa de acero galvanizado en caliente y pintada al horno, incluyendo accesorios de fijaciÃ³n, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',61.65,11,2,'c8','40'),(825,2657,'UI158',2,'Cruceta metÃ¡lica de 3 brazos para columna, en chapa de acero galvanizado en caliente y pintada al horno, incluyendo accesorios de fijaciÃ³n, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',85.20,11,2,'c8','40'),(826,2658,'UI159',2,'Cruceta metÃ¡lica de 4 brazos para columna, en chapa de acero galvanizado en caliente y pintada al horno, incluyendo accesorios de fijaciÃ³n, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',109.13,11,2,'c8','40'),(827,2659,'UI160',2,'Candelabro de fundiciÃ³n de 3,60 m. de altura, pintado al horno, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio. ',249.79,11,2,'c8','40'),(828,2660,'UI161',2,'Puerta para bÃ¡culo o columna, totalmente instalada y en perfecto estado de funcionamiento, incluso prueba en servicio. ',30.26,11,2,'c8','40'),(829,2661,'UI162',2,'Placa de cobre de 500x500x2 mm. para toma de tierra, totalmente instalada y en perfecto estado de funcionamiento, incluso prueba en servicio. ',38.40,11,2,'c8','40'),(830,2662,'UI163',2,'Pica de acero cobrizado de 2 m. de longitud y 14 mm. De diÃ¡metro para toma de tierra, totalmente instalada y en perfecto estado de funcionamiento, incluso prueba en servicio. ',12.19,11,2,'c8','40'),(831,2663,'UI164',2,'Brida de cobre para pica de tierra, totalmente instalada y en perfecto estado de funcionamiento, incluso prueba en servicio. ',1.54,11,2,'c8','40'),(832,2664,'UI165',2,'Soldadura de alto punto de fusiÃ³n para la red de tierras, totalmente instalada y en perfecto estado de funcionamiento, incluso prueba en servicio. ',5.32,11,2,'c8','40'),(833,2665,'UI166',2,'CimentaciÃ³n para centro de mando de alumbrado exterior de 135x70x50 cm en hormigÃ³n en masa HM-20/P/40, incluso excavaciÃ³n necesaria, pernos de anclaje de 30 cm de longitud y parte proporcional de canalizaciÃ³n de acceso bajo la cimentaciÃ³n, medida la unidad ejecutada en obra. ',176.05,11,2,'c8','40'),(834,2666,'UI167',2,'CimentaciÃ³n para columna entre 8 y 12 m de altura, con dimensiones 80x80x120 cm, en hormigÃ³n HM-20/P/40, incluso  excavaciÃ³n suplementaria, pernos de anclaje de 30 cm de longitud y codo de PVC 90Â° de 100 mm de diÃ¡metro, medida la unidad ejecutada en obra. ',180.69,11,2,'c8','40'),(835,2667,'UI168',2,'CimentaciÃ³n para columna de 14 m de altura, con dimensiones 110x110x120 cm, en hormigÃ³n HM-20/P/40, incluso excavaciÃ³n suplementaria, pernos de anclaje de 30 cm de longitud y codo de PVC 90Â° de 100 mm de diÃ¡metro, medida la unidad ejecutada en obra. ',213.49,11,2,'c8','40'),(836,2668,'UI169',2,'CimentaciÃ³n para columna entre 16 y 18 m de altura, con dimensiones 250x250x300 cm, en hormigÃ³n armado HA-25/P/40, con mallazo Ã¸10 a 0,30, incluso excavaciÃ³n suplementaria, pernos de anclaje y codo de PVC 90Â° de 100 mm de diÃ¡metro, medida la unidad ejecutada en obra. ',2240.85,11,2,'c8','40'),(837,2669,'UI170',2,'DemoliciÃ³n de cimentaciÃ³n de bÃ¡culos y columnas de hasta 14 m de altura, con compresor, incluso limpieza, carga y transporte de los productos resultantes a vertedero autorizado y parte proporcional de medios auxiliares, medido el volumen ejecutado en obra. ',132.44,11,2,'c8','40'),(838,2670,'UI171',2,'Arqueta de paso, derivaciÃ³n y toma de tierra, realizada en hormigÃ³n HM 20/P/20/I CEM II/A-P 32,5R de central, de dimensiones exteriores 58x58x60 cm, con tapa de hormigÃ³n armado, incluso excavaciÃ³n suplementaria, carga y transporte a vertedero autorizado y canon de vertido. ',93.34,11,2,'c8','40'),(839,2671,'UI172',2,'Arqueta para cruce de calzada realizada en hormigÃ³n HM 20/P/20/I CEM II/A-P 32,5R de central, de dimensiones exteriores 58x58x60 cm, con tapa de fundiciÃ³n, incluso excavaciÃ³n suplementaria, carga y transporte a vertedero autorizado y canon de vertido. ',183.18,11,2,'c8','40'),(840,2672,'UI173',7,'CanalizaciÃ³n subterrÃ¡nea con dos tubos de PVC de 90 mm de diÃ¡metro exterior, color negro, en zona terriza, incluso excavaciÃ³n, cama de arena de rÃ­o, cable guÃ­a, cinta avisadora de plÃ¡stico con la inscripciÃ³n de \"Alumbrado PÃºblico\" y posterior relleno de suelo seleccionado de prÃ©stamo, completamente terminada. ',9.12,11,2,'c8','40'),(841,2673,'UI174',7,'CanalizaciÃ³n subterrÃ¡nea con dos tubos de PVC de 90 mm de diÃ¡metro exterior, color negro, en zona terriza, incluso excavaciÃ³n a mano, cama de arena de rÃ­o, cable guÃ­a, cinta avisadora de plÃ¡stico con la inscripciÃ³n de \"Alumbrado PÃºblico\" y posterior relleno con suelo seleccionado de prÃ©stamo, completamente terminada. ',26.62,11,2,'c8','40'),(842,2674,'UI175',7,'CanalizaciÃ³n subterrÃ¡nea con dos tubos de PVC de 90 mm de diÃ¡metro exterior, color negro, en acera existente a mantener de 20 cm. de espesor, incluso excavaciÃ³n, cama de arena de rÃ­o, cable guÃ­a, cinta avisadora de plÃ¡stico con la inscripciÃ³n de Alumbrado PÃºblico y posterior relleno con suelo seleccionado de prÃ©stamo, y reposiciÃ³n de acera, completamente terminada. ',30.37,11,2,'c8','40'),(843,2675,'UI176',7,'CanalizaciÃ³n subterrÃ¡nea con dos tubos de PVC de 90 mm de diÃ¡metro exterior, color negro, en acera de hormigÃ³n, incluso demoliciÃ³n del hormigÃ³n, excavaciÃ³n, cama de arena de rÃ­o, cable guÃ­a, cinta avisadora de plÃ¡stico con la inscripciÃ³n de Alumbrado PÃºblico y posterior relleno con suelo seleccionado de prÃ©stamo, y reposiciÃ³n del hormigÃ³n de acera, completamente terminada. ',27.82,11,2,'c8','40'),(844,2676,'UI177',7,'CanalizaciÃ³n subterrÃ¡nea con tres tubos de PVC de 90 mm de diÃ¡metro exterior, color negro, en calzada, incluso demoliciÃ³n de la calzada, excavaciÃ³n, dado de protecciÃ³n de hormigÃ³n H-12,5, cable guÃ­a, cinta avisadora de plÃ¡stico con la inscripciÃ³n de \"Alumbrado PÃºblico\" y posterior relleno con suelo seleccionado de prÃ©stamo, y reposiciÃ³n total de la calzada, completamente terminada. ',89.74,11,2,'c8','40'),(845,2677,'UI178',7,'Paso bajo calzada con tuberÃ­a de fundiciÃ³n de 40 cm de diÃ¡metro, para cruce de calzada, mediante hincado de tuberÃ­a, incluso tubos de PVC de 90 mm de diÃ¡metro exterior, color negro, y arquetas en ambos extremos, completamente terminada. ',198.10,11,2,'c8','40'),(846,2678,'UI179',2,'ExcavaciÃ³n a mano para instalaciÃ³n en fondo de arqueta, de placa de toma de tierra de 500x500x2 mm. incluso carga retirada a vertedero de productos sobrantes, canon de vertido y relleno. ',7.15,11,2,'c8','40'),(847,2679,'UI180',2,'Suministro de tapa de hormigÃ³n armado de 50x50 cm y 6 cm de espesor, para arqueta de alumbrado pÃºblico. ',20.90,11,2,'c8','40'),(848,2680,'UI181',2,'Suministro de tapa de fundiciÃ³n, para arqueta de alumbrado pÃºblico. ',44.69,11,2,'c8','40'),(849,2681,'UI182',2,'Tapado antivandÃ¡lico de arqueta de alumbrado pÃºblico mediante el vertido de un montÃ­culo de hormigÃ³n HM 20/P/20/I CEM II/A-P 32,5R que cubra completamente la tapa de la arqueta y se eleve sobre esta al menos 15 cm, totalmente ejecutada.',89.57,11,2,'c8','40'),(850,2682,'UI183',2,'Tapado de arqueta de alumbrado pÃºblico mediante relleno con arena de rÃ­o y 10 cm de hormigÃ³n HM 20/P/20/I CEM II/AP 32,5R fabricado en obra, totalmente ejecutada. ',45.97,11,2,'c8','40'),(851,2683,'UI184',2,'ReposiciÃ³n de perno de anclaje en cimentaciÃ³n, ampolla de inyecciÃ³n, totalmente ejecutada. ',20.83,11,2,'c8','40'),(852,2684,'UI185',2,'Montaje o desmontaje de farol tipo \"Villa\" o \"Globo\", incluso accesorios, lÃ­neas de alimentaciÃ³n, repaso de fachada, reposiciÃ³n de pavimento, etc. ',38.44,11,2,'c8','40'),(853,2685,'UI186',2,'Montaje o desmontaje de brazo mural y luminaria hasta 7,40 m de altura, incluso accesorios, lÃ­neas de alimentaciÃ³n, repaso de fachada, reposiciÃ³n de pavimento, etc. ',47.52,11,2,'c8','40'),(854,2686,'UI187',2,'Montaje o desmontaje de columna o bÃ¡culo metÃ¡lico hasta 14,50 m de altura, incluso carga o acopio en obra y excluyendo la demoliciÃ³n de la cimentaciÃ³n. ',53.81,11,2,'c8','40'),(855,2687,'UI188',2,'Montaje o desmontaje de brazo mural y luminaria hasta 14,50 m de altura, incluso carga o acopio en obra. ',44.05,11,2,'c8','40'),(856,2688,'UI189',2,'Conexionado o desconexionado de caja en interior de bÃ¡culo o columna. ',7.33,11,2,'c8','40'),(857,2689,'UI190 ',2,'Desmontaje del actual cuadro de mando, desmontaje del equipamiento interior, suministro y colocaciÃ³n de nuevo envolvente y montaje del equipamiento interior, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio. ',927.87,11,2,'c8','40'),(858,2690,'UI191',2,'Conexionado a centro de mando, totalmente instalado y en perfecto estado de funcionamiento, incluso prueba en servicio.',178.60,11,2,'c8','40'),(859,2691,'UI192',2,'Suministro e instalaciÃ³n de panel solar de 100 W, incluso prueba en servicio. ',831.93,11,2,'c8','40'),(860,2692,'UI193',2,'Suministro e instalaciÃ³n de baterÃ­a, incluso prueba en servicio. ',189.08,11,2,'c8','40'),(861,2693,'UI194',2,'Suministro e instalaciÃ³n de convertidor, incluso prueba en servicio.',158.82,11,2,'c8','40'),(862,2694,'UI195',2,'Suministro e instalaciÃ³n de columna de 12 m para soporte de cÃ¡mara, incluso prueba en servicio. ',714.72,11,2,'c8','40'),(863,2695,'UI196',2,'Suministro e instalaciÃ³n de soporte de panel solar, incluso prueba en servicio. ',340.34,11,2,'c8','40'),(864,2696,'UI197',2,'Suministro e instalaciÃ³n de armario para baterÃ­as y convertidores, incluso prueba en servicio. ',397.06,11,2,'c8','40'),(865,2697,'UI198',2,'Suministro e instalaciÃ³n de equipo para regulaciÃ³n punto a punto de 100 W v.s.a.p., incluso prueba en servicio. ',166.38,11,2,'c8','40'),(866,2698,'UI199',2,'Suministro e instalaciÃ³n de equipo para regulaciÃ³n punto a punto de 150 W v.s.a.p., incluso prueba en servicio. ',181.51,11,2,'c8','40'),(867,2699,'UI200',2,'Suministro e instalaciÃ³n de equipo para regulaciÃ³n punto a punto de 250 W v.s.a.p., incluso prueba en servicio. ',196.64,11,2,'c8','40'),(868,2700,'UI201 ',2,'LegalizaciÃ³n de red de iluminaciÃ³n, permisos, supervisiÃ³n y derechos de acometida, incluso proyectos de ingenierÃ­a propia, actos administrativos y puesta en marcha de la instalaciÃ³n, costes del aval y tasas. ',556.69,11,2,'c8','40'),(869,2701,'UI202',7,'Apertura de canalizaciÃ³n en tierra de 0,40 m de ancho y 0,60 m de profundidad, con tubo de 110 mm de diÃ¡metro y relleno de 20 cm de hormigÃ³n ',25.54,11,2,'c8','40'),(870,2702,'UI203',7,'Apertura de canalizaciÃ³n en acera de 0,40 m de ancho y 0,60m de profundidad, con tubo de 110 mm de diÃ¡metro y relleno de 20 cm de hormigÃ³n ',28.33,11,2,'c8','40'),(871,2703,'UI204',7,'Apertura de canalizaciÃ³n en calzada de 0,60 m de ancho y 0,80 m de profundidad, con 2 tubos de 110 mm de diÃ¡metro y relleno de 20 cm de hormigÃ³n ',79.40,11,2,'c8','40'),(872,2704,'UI205',7,'ReposiciÃ³n de pavimento en acera en zanja de 0,40 m de ancho con tipo de loseta hidrÃ¡ulica normalizada ',21.96,11,2,'c8','40'),(873,2705,'UI206',7,'ReposiciÃ³n de pavimento en acera en zanja de 0,40 m de ancho con tipo de loseta especial ',23.48,11,2,'c8','40'),(874,2706,'UI207',7,'Cala sobre canalizaciÃ³n en acera para reparaciÃ³n de tubular ',55.32,11,2,'c8','40'),(875,2707,'UI208',7,'Cala sobre canalizaciÃ³n en calzada para reparaciÃ³n de tubular ',113.53,11,2,'c8','40'),(876,2708,'UI209',7,'ReposiciÃ³n en pavimento en calzada asfÃ¡ltica en zanja de 0,60 m de ancho ',23.81,11,2,'c8','40'),(877,2709,'UI210',2,'Arqueta registro de 60x60 cm con cerco y tapa de fundiciÃ³n, con drenaje y enlucido',111.40,11,2,'c8','40'),(878,2710,'UI211',2,'Suministro de tapa y cerco de 60x60 cm a pie de obra',46.61,11,2,'c8','40'),(879,2711,'UI212',2,'Tapa de arqueta de 60x60 cm de fundiciÃ³n',38.57,11,2,'c8','40'),(880,2712,'UI213',2,'Tapa de arqueta de 60x60 cm de fundiciÃ³n reforzada ',71.69,11,2,'c8','40'),(881,2713,'UI214',2,'Arqueta registro de 40x40 cm con cerco y tapa de fundiciÃ³n, con drenaje y enlucido',70.37,11,2,'c8','40'),(882,2714,'UI215',2,'Suministro de tapa y cerco de 40x40 cm a pie de obra ',37.84,11,2,'c8','40'),(883,2715,'UI216',2,'Tapa de arqueta de 40x40 cm de fundiciÃ³n ',32.00,11,2,'c8','40'),(884,2716,'UI217',2,'Tapa de arqueta de 40x40 cm de fundiciÃ³n reforzada ',38.57,11,2,'c8','40'),(885,2717,'UI218',3,'HormigÃ³n en masa HM-20 incluyendo suministro y puesta en obra ',92.14,11,2,'c8','40'),(886,2718,'UI219',7,'Bordillo normalizado incluido excavaciÃ³n, colocaciÃ³n y medios auxiliares',37.08,11,2,'c8','40'),(887,2719,'UI220',7,'DemoliciÃ³n de bordillo normalizado ',22.64,11,2,'c8','40'),(888,2720,'UI221',2,'CimentaciÃ³n completa de columna CL incluyendo excavaciÃ³n, materiales, mano de obra y medios auxiliares ',59.71,11,2,'c8','40'),(889,2721,'UI222',2,'Perno de columna CL de 16x350 mm ',1.57,11,2,'c8','40'),(890,2722,'UI223',2,'CimentaciÃ³n completa de bÃ¡culo incluyendo excavaciÃ³n, materiales, mano de obra y medios auxiliares ',114.57,11,2,'c8','40'),(891,2723,'UI224',2,'Perno de bÃ¡culo de 24x750 mm ',5.39,11,2,'c8','40'),(892,2724,'UI225',2,'CimentaciÃ³n completa de reguladores incluyendo excavaciÃ³n, materiales, mano de obra y medios auxiliares ',95.95,11,2,'c8','40'),(893,2725,'UI226',2,'DemoliciÃ³n de base de regulador y reposiciÃ³n de pavimento ',61.40,11,2,'c8','40'),(894,2726,'UI227',2,'CimentaciÃ³n completa para armario de acometida elÃ©ctrica ',113.24,11,2,'c8','40'),(895,2727,'UI228',2,'DemoliciÃ³n de base de acometida y reposiciÃ³n de pavimento ',61.40,11,2,'c8','40'),(896,2728,'UI229',2,'CimentaciÃ³n completa para fuste octogonal con mÃ©nsula incluyendo excavaciÃ³n, materiales, tuberÃ­a, mano de obra y medios auxiliares ',171.85,11,2,'c8','40'),(897,2729,'UI230 ',7,'Apertura de canalizaciÃ³n subterrÃ¡nea (topo) para 2 tubos PVC de 50 mm de diÃ¡metro ',129.04,11,2,'c8','40'),(898,2730,'UI231',3,'ExcavaciÃ³n en tierra para topo ',22.43,11,2,'c8','40'),(899,2731,'UI232',2,'Pica toma de tierra de 20 mm y 1,5 m de longitud ',18.42,11,2,'c8','40'),(900,2732,'UI233',2,'Placa de hierro galvanizada para toma de tierra de 50x50 cm y 2 mm de espesor, con cable hasta la embocadura de la arqueta, incluido accesorios, totalmente instalada',28.13,11,2,'c8','40'),(901,2733,'UI234',2,'Columna portÃ¡til CL2400 para zona en obras. Suministro y puesta en obra ',79.34,11,2,'c8','40'),(902,2734,'UI235',2,'Montaje de columna portÃ¡til CL2400 ',33.21,11,2,'c8','40'),(903,2735,'UI236',2,'Desmontaje de columna portÃ¡til Cl2400 ',15.07,11,2,'c8','40'),(904,2736,'UI237',2,'Columna chapa de acero galvanizado CL TN2400 completamente pintada y colocada, incluso cimentaciÃ³n ',163.33,11,2,'c8','40'),(905,2737,'UI238',2,'Montaje columna chapa de acero galvanizado CL TN2400 ',45.64,11,2,'c8','40'),(906,2738,'UI239',2,'Desmontaje columna de chapa de acero galvanizado CLTN2400 ',17.33,11,2,'c8','40'),(907,2739,'UI240',2,'Columna de chapa de acero de 1,00 m de altura para sustentaciÃ³n de caja de detector, pintada y colocada, incluso cimentaciÃ³n ',111.48,11,2,'c8','40'),(908,2740,'UI241',2,'Montaje columna de chapa de acero de 1,00 m de altura ',33.37,11,2,'c8','40'),(909,2741,'UI242',2,'Desmontaje columna de chapa de acero de 1,00 m de altura ',15.68,11,2,'c8','40'),(910,2742,'UI243',2,'BÃ¡culo y alargadera de chapa de acero galvanizado, completamente pintado y colocado, incluida bajante de 3,5 m de saliente, incluso cimentaciÃ³n',517.56,11,2,'c8','40'),(911,2743,'UI244',2,'BÃ¡culo y alargadera de chapa de acero galvanizado, completamente pintado y colocado, incluidos bajante de 4,5 m de saliente, incluso cimentaciÃ³n',540.59,11,2,'c8','40'),(912,2744,'UI245',2,'BÃ¡culo y alargadera de chapa de acero galvanizado, completamente pintado y colocado, incluida bajante de 5,5 m de saliente, incluso cimentaciÃ³n',614.22,11,2,'c8','40'),(913,2745,'UI246',2,'BÃ¡culo y alargadera de chapa de acero galvanizado, completamente pintado y colocado, incluida bajante de 6,5 m de saliente, incluso cimentaciÃ³n',667.77,11,2,'c8','40'),(914,2746,'UI247',2,'Montaje bÃ¡culo y alargadera ',105.57,11,2,'c8','40'),(915,2747,'UI248',2,'Desmontaje bÃ¡culo y alargadera ',64.33,11,2,'c8','40'),(916,2748,'UI249',2,'Fuste octogonal con mÃ©nsula para seÃ±al luminosa indicadora de paso de peatones de 8 m de altura y 4,5 m de saliente, instalado ',1362.13,11,2,'c8','40'),(917,2749,'UI250',2,'Montaje de fuste octogonal y mÃ©nsula ',164.42,11,2,'c8','40'),(918,2750,'UI251',2,'Desmontaje de fuste octogonal y mÃ©nsula ',131.82,11,2,'c8','40'),(919,2751,'UI252',2,'Caja con pulsador de peatones para detecciÃ³n de los mismos en cruces actuados, con doble inscripciÃ³n \"peatÃ³n pulse\" y  espere verde, instalado 1',163.86,11,2,'c8','40'),(920,2752,'UI253',2,'Montaje caja con pulsador de peatones ',15.60,11,2,'c8','40'),(921,2753,'UI254',2,'Desmontaje caja con pulsador de peatones ',10.04,11,2,'c8','40'),(922,2754,'UI255',2,'Caja de chapa de acero para alojamiento de detector. Instalada ',267.63,11,2,'c8','40'),(923,2755,'UI256',2,'Montaje caja de chapa de acero para alojamiento de detector ',13.01,11,2,'c8','40'),(924,2756,'UI257',2,'Desmontaje cada de chapa de acero para alojamiento de detector ',10.25,11,2,'c8','40'),(925,2757,'UI258',2,'Brazo soporte 270 mm ',33.47,11,2,'c8','40'),(926,2758,'UI259',2,'Brazo soporte 270D de doble T para dos cabezas de semÃ¡foro ',42.55,11,2,'c8','40'),(927,2759,'UI260',2,'Armario normalizado para acometida elÃ©ctrica, incluidos accesorios',305.89,11,2,'c8','40'),(928,2760,'UI261',2,'Montaje armario normalizado para acometida elÃ©ctrica',21.16,11,2,'c8','40'),(929,2761,'UI262',2,'Desmontaje armario normalizado para acometida elÃ©ctrica ',18.45,11,2,'c8','40'),(930,2762,'UI263',2,'Armario de chapa de acero para regulador de trÃ¡fico a pie de obra ',260.45,11,2,'c8','40'),(931,2763,'UI264',2,'Soporte colgante para instalaciÃ³n de semÃ¡foro en punta de bÃ¡culo incluido accesorios',36.23,11,2,'c8','40'),(932,2764,'UI265',2,'Alargadera de bÃ¡culo de 0,30 m ',37.22,11,2,'c8','40'),(933,2765,'UI266',2,'Alargadera de bÃ¡culo de 1,00 m ',44.35,11,2,'c8','40'),(934,2766,'UI267',2,'Alargadera de bÃ¡culo de 2,00 m ',66.00,11,2,'c8','40'),(935,2767,'UI268',2,'Alargadera de bÃ¡culo de 3,00 m ',90.10,11,2,'c8','40'),(936,2768,'UI269',2,'Derechos de acometida elÃ©ctrica ',730.23,11,2,'c8','40'),(937,2769,'UI270',2,'SeÃ±al luminosa con semÃ¡foro en aluminio inyectado modelo s13/200 con lÃ¡mparas de incandescencia de 3 colores, incluidos accesorios Totalmente instalado.',183.67,11,2,'c8','40'),(938,2770,'UI271',2,'Montaje seÃ±al luminosa con semÃ¡foro modelo s13/200 ',17.04,11,2,'c8','40'),(939,2771,'UI272',2,'Desmontaje seÃ±al luminosa con semÃ¡foro modelo s13/200 ',10.29,11,2,'c8','40'),(940,2772,'UI273',2,'SeÃ±al luminosa con semÃ¡foro en aluminio inyectado modelo s12/200 con lÃ¡mparas de incandescencia de 2 colores, incluidos accesorios Totalmente instalado.',141.91,11,2,'c8','40'),(941,2773,'UI274',2,'Montaje seÃ±al luminosa con semÃ¡foro modelo s12/200 ',16.22,11,2,'c8','40'),(942,2774,'UI275',2,'Desmontaje seÃ±al luminosa con semÃ¡foro modelo s12/200',9.47,11,2,'c8','40'),(943,2775,'UI276',2,'SeÃ±al luminosa con semÃ¡foro en aluminio inyectado modelo s11/200 con lÃ¡mparas de incandescencia de 2 colores, incluidos accesorios Totalmente instalado.',77.64,11,2,'c8','40'),(944,2776,'UI277',2,'Montaje seÃ±al luminosa con semÃ¡foro modelo s11/200 ',15.40,11,2,'c8','40'),(945,2777,'UI278',2,'Desmontaje seÃ±al luminosa con semÃ¡foro modelo s11/200 ',8.65,11,2,'c8','40'),(946,2778,'UI279',2,'SeÃ±al luminosa con semÃ¡foro en aluminio inyectado, modelo s12/200P para paso de peatones de 2 focos con lÃ¡mpara de incandescencia, incluidos accesorios Totalmente instalado',161.99,11,2,'c8','40'),(947,2779,'UI280',2,'Montaje seÃ±al luminosa con semÃ¡foro modelo s12/200P ',14.41,11,2,'c8','40'),(948,2780,'UI281',2,'Desmontaje seÃ±al luminosa con semÃ¡foro modelo s12/200P ',8.66,11,2,'c8','40'),(949,2781,'UI282',2,'SeÃ±al luminosa con semÃ¡foro en aluminio inyectado modelo s12/100 de 2 colores, incluidos accesorios Totalmente instalados ',69.08,11,2,'c8','40'),(950,2782,'UI283',2,'Montaje seÃ±al luminosa con semÃ¡foro modelo s12/100 ',13.86,11,2,'c8','40'),(951,2783,'UI284',2,'Desmontaje seÃ±al luminosa con semÃ¡foro modelo s12/100 ',9.87,11,2,'c8','40'),(952,2784,'UI285',2,'SeÃ±al luminosa con semÃ¡foro en aluminio inyectado modelo s13/100 de 3 colores, incluidos accesorios. Totalmente instalado ',82.47,11,2,'c8','40'),(953,2785,'UI286',2,'Montaje seÃ±al luminosa con semÃ¡foro modelo s13/100 ',164.42,11,2,'c8','40'),(954,2786,'UI287',2,'Desmontaje seÃ±al luminosa con semÃ¡foro modelo s13/100 ',131.82,11,2,'c8','40'),(955,2787,'UI288',2,'SeÃ±al luminosa con semÃ¡foro en aluminio inyectado modelo s13/200/300 (AutovÃ­a) de 3 colores con lÃ¡mparas de incandescencia, incluidos accesorios Totalmente instalado ',344.47,11,2,'c8','40'),(956,2788,'UI289',2,'Montaje seÃ±al luminosa con semÃ¡foro modelo S13/200/300 ',19.27,11,2,'c8','40'),(957,2789,'UI290',2,'Montaje seÃ±al luminosa con semÃ¡foro modelo S13/200/300 ',10.50,11,2,'c8','40'),(958,2790,'UI291',2,'SeÃ±al luminosa con semÃ¡foro en aluminio inyectado modelo s12/300 (AutovÃ­a) de 2 colores con lÃ¡mparas de incandescencia, incluidos accesorios Totalmente instalado ',214.99,11,2,'c8','40'),(959,2791,'UI292',2,'Montaje seÃ±al luminosa con semÃ¡foro modelo S12/300 ',16.99,11,2,'c8','40'),(960,2792,'UI293',2,'Desmontaje seÃ±al luminosa con semÃ¡foro modelo S12/300 ',10.25,11,2,'c8','40'),(961,2793,'UI294',2,'Pantalla de fibra de vidrio o material plÃ¡stico de dimensiones exteriores mÃ­nimas 1.100x550 mm, con el fondo color negro  mate y un borde de color blanco mate de 30 mm de ancho. Totalmente instalada',43.04,11,2,'c8','40'),(962,2794,'UI295',2,'Montaje pantalla de fibra de vidrio o material plÃ¡stico ',18.43,11,2,'c8','40'),(963,2795,'UI296',2,'Desmontaje de pantalla de fibra de vidrio o material plÃ¡stico ',18.43,11,2,'c8','40'),(964,2796,'UI297 ',2,'SeÃ±al luminosa indicadora de paso de peatones con iluminaciÃ³n nocturna del mismo mediante proyectores halÃ³genos orientables, seÃ±alizaciÃ³n de advertencia mediante semÃ¡foros en destellos y seÃ±al preceptiva con iluminaciÃ³n de la misma. Totalmente instalada ',1636.37,11,2,'c8','40'),(965,2797,'UI298',2,'Montaje seÃ±al luminosa para paso de peatones ',455.95,11,2,'c8','40'),(966,2798,'UI299',2,'Desmontaje seÃ±al luminosa para paso de peatones ',455.95,11,2,'c8','40'),(967,2799,'UI300',2,'SeÃ±al luminosa indicadora de paso de peatones, con iluminaciÃ³n nocturna del mismo mediante proyectores halÃ³genos orientables, seÃ±alizaciÃ³n de advertencia mediante semÃ¡foros en destellos, seÃ±al preceptiva con iluminaciÃ³n de advertencia mediante semÃ¡foros en destellos y seÃ±al preceptiva con iluminaciÃ³n de la misma (bidireccional). Totalmente instalada',2523.28,11,2,'c8','40'),(968,2800,'UI301',2,'SeÃ±al triangular de 60 cm con indicaciÃ³n de semÃ¡foro para paso de peatones, incluso poste de sustentaciÃ³n en acero de 8 x 5 cm x 2 mm de espesor, incluso cimentaciÃ³n en HM-20 con excavaciÃ³n, medios auxiliares y mano de obra. ',92.25,11,2,'c8','40'),(969,2801,'UI302',2,'DemoliciÃ³n y solado de basamento de bÃ¡culo ',31.60,11,2,'c8','40'),(970,2802,'UI303',2,'DemoliciÃ³n y solado de basamento de regulador y armario acometida',63.00,11,2,'c8','40'),(971,2803,'UI304',2,'CimentaciÃ³n de bÃ¡culo de 1 m3 ',108.00,11,2,'c8','40'),(972,2804,'UI305',2,'CimentaciÃ³n de EstaciÃ³n Remota Universal ',126.00,11,2,'c8','40'),(973,2805,'UI306',2,'CimentaciÃ³n soporte panel con cimentaciÃ³n quÃ­mica ',225.00,11,2,'c8','40'),(974,2806,'UI307',2,'CimentaciÃ³n de fuste octogonal ',144.00,11,2,'c8','40'),(975,2807,'UI308 ',2,'SeÃ±al de radar DSF modelo DSF-110 con poste telescÃ³pico de 115 mm y 2,25 m de gÃ¡libo con display de LED indicadora de velocidad detectada. Instalada ',14220.00,11,2,'c8','40'),(976,2808,'UI309 ',7,'Levantamiento y colocaciÃ³n de loseta incluso instalaciÃ³n de tubo saiplen ',19.82,11,2,'c8','40'),(977,2809,'UI310',2,'Panel de diodos full-graphix de 32 x 32 cm. Instalado ',16021.80,11,2,'c8','40'),(978,2810,'UI311',2,'Soporte de panel grafico en U de 2,25 m de gÃ¡libo en chapa metÃ¡lica galvanizada. Instalado ',3150.00,11,2,'c8','40'),(979,2811,'UI312',2,'Limpieza y pintura de columna de 2,40 m de altura en verde oliva ',54.00,11,2,'c8','40'),(980,2812,'UI313',2,'Limpieza y pintura de semÃ¡foro S12/200 frente negro y trasera verde oliva',31.50,11,2,'c8','40'),(981,2813,'UI314',2,'Suministro y montaje de lente para semÃ¡foro 12/200 Ã¡mbar ',14.40,11,2,'c8','40'),(982,2814,'UI315',2,'Suministro e instalaciÃ³n de lÃ¡mpara de incandescencia de 70 W 220 V ',2.46,11,2,'c8','40'),(983,2815,'UI316',2,'SustituciÃ³n de Ã³ptica roja de incandescencia de 200 mm por Ã³ptica roja de diodos led de 200 mm ',72.00,11,2,'c8','40'),(984,2816,'UI317',2,'SustituciÃ³n de Ã³ptica Ã¡mbar de incandescencia de 200 mm por Ã³ptica Ã¡mbar de diodos led de 200 mm ',72.00,11,2,'c8','40'),(985,2817,'UI318',2,'SustituciÃ³n de Ã³ptica verde de incandescencia de 200 mm por Ã³ptica verde de diodos led de 200 mm ',126.00,11,2,'c8','40'),(986,2818,'UI319',2,'SustituciÃ³n de Ã³ptica roja de incandescencia de 300 mm por Ã³ptica roja de diodos led de 300 mm ',135.00,11,2,'c8','40'),(987,2819,'UI320',2,'SustituciÃ³n de Ã³ptica Ã¡mbar de incandescencia de 300 mm por Ã³ptica Ã¡mbar de diodos led de 300 mm ',135.00,11,2,'c8','40'),(988,2820,'UI321',2,'SustituciÃ³n de Ã³ptica verde de incandescencia de 300 mm por Ã³ptica verde de diodos led de 300 mm ',162.00,11,2,'c8','40'),(989,2821,'UI322',2,'SustituciÃ³n de Ã³ptica roja de incandescencia de 100 mm por Ã³ptica roja de diodos led de 100 mm ',58.50,11,2,'c8','40'),(990,2822,'UI323',2,'SustituciÃ³n de Ã³ptica Ã¡mbar de incandescencia de 100 mm por Ã³ptica Ã¡mbar de diodos led de 100 mm ',58.50,11,2,'c8','40'),(991,2823,'UI324',2,'SustituciÃ³n de Ã³ptica verde de incandescencia de 100 mm por Ã³ptica verde de diodos led de 100 mm ',72.00,11,2,'c8','40'),(992,2824,'UI325',2,'Suministro e instalaciÃ³n de semÃ¡foro de inyecciÃ³n de aluminio de peatones tipo S12/200P con Ã³pticas de diodos roja y verde y contador de segundos en la fase de verde ',477.00,11,2,'c8','40'),(993,2825,'UI326',2,'Suministro e instalaciÃ³n de semÃ¡foro de inyecciÃ³n de aluminio de peatones tipo S12/200P con Ã³pticas de diodos roja y verde ',288.00,11,2,'c8','40'),(994,2826,'UI327',2,'Caja para alojamiento de baterÃ­as recibida en fuste octogonal y anclaje de paneles fotovoltaicos ',283.50,11,2,'c8','40'),(995,2828,'UI329',2,'SemÃ¡foro de inyecciÃ³n de aluminio tipo S13/200 completo con Ã³pticas RAV de diodos led de alta luminosidad. Totalmente instalado',434.84,11,2,'c8','40'),(996,2829,'UI330',2,'SemÃ¡foro de inyecciÃ³n de aluminio tipo S12/200 completo con Ã³pticas de diodos led de alta luminosidad. Totalmente instalado ',289.89,11,2,'c8','40'),(997,2830,'UI331',2,'SemÃ¡foro de inyecciÃ³n de aluminio tipo S11/200 completo, de Ã³ptica de diodos led. Totalmente instalado ',144.95,11,2,'c8','40'),(998,2831,'UI332',2,'SemÃ¡foro de inyecciÃ³n de aluminio tipo S13/300/200 completo, de 1 foco de 300 mm y 2 focos de 200 mm, de Ã³pticas de diodos led de alta luminosidad. Totalmente instalado',585.52,11,2,'c8','40'),(999,2832,'UI333',2,'SemÃ¡foro de inyecciÃ³n de aluminio tipo S13/300 completo, con 3 focos de 300 mm, de Ã³pticas de diodos led de alta luminosidad. Totalmente instalado ',802.40,11,2,'c8','40'),(1000,2833,'UI334',2,'SemÃ¡foro de inyecciÃ³n de aluminio tipo S13/100 completo, con Ã³pticas de diodos led RAV. Totalmente instalado ',223.97,11,2,'c8','40'),(1001,2834,'UI335',2,'SemÃ¡foro de inyecciÃ³n de aluminio tipo S12/100 completo, con Ã³pticas de diodos led de alta luminosidad. Totalmente instalado ',157.52,11,2,'c8','40'),(1002,2835,'UI336',2,'SemÃ¡foro de inyecciÃ³n de aluminio tipo S12/200P de peatones de Ã³pticas de diodos led de alta luminosidad y doble contador de segundos ',603.56,11,2,'c8','40'),(1003,2836,'UI337',2,'AdaptaciÃ³n de repetidor acÃºstico existente a tecnologÃ­a de 42 V',56.70,11,2,'c8','40'),(1004,2837,'UI338',2,'Repetidor acÃºstico para invidentes con reloj y tecnologÃ­a de 42 V de funcionamiento. Totalmente instalado ',198.34,11,2,'c8','40'),(1005,2838,'UI339',2,'AdaptaciÃ³n de pulsador de peatones a tecnologÃ­a de diodos led ',152.74,11,2,'c8','40'),(1006,2839,'UI340',2,'Pulsador de peatones con tecnologÃ­a de diodos led y sÃ­mbolo de mano. Totalmente instalado ',170.55,11,2,'c8','40'),(1007,2840,'UI341',2,'ModificaciÃ³n de regulador microprocesado a tecnologÃ­a de 42 V ',671.14,11,2,'c8','40'),(1008,2841,'UI342',2,'Conjunto de conexiÃ³n vÃ­a GPRS en regulador de tecnologÃ­a microprocesada ',601.71,11,2,'c8','40'),(1009,2842,'UI343',2,'MÃ³dem para conexiÃ³n GPRS en regulador. Instalado ',173.57,11,2,'c8','40'),(1010,2843,'UI344',2,'Armario SAI con 3 kVA de potencia y 1,5 horas de autonomÃ­a. Totalmente instalado ',2766.83,11,2,'c8','40'),(1011,2844,'UI345',2,'Armario SAI con 3 kVA de potencia y 2,15 horas de autonomÃ­a. Totalmente instalado ',3182.14,11,2,'c8','40'),(1012,2845,'UI346',2,'Armario SAI con 2 kVA de potencia y 3 horas de autonomÃ­a. Totalmente instalado ',2688.66,11,2,'c8','40'),(1013,2846,'UI347',2,'Armario SAI de 1 kVA de potencia y mÃ¡s de 3 horas de autonomÃ­a. Totalmente instalado ',2177.49,11,2,'c8','40'),(1014,2847,'UI348',2,'SeÃ±al luminosa indicadora de preaviso de paso de peatones, seÃ±alizaciÃ³n de advertencia mediante semÃ¡foros en destellos y seÃ±al preceptiva con iluminaciÃ³n de la misma. Totalmente instalada',1591.10,11,2,'c8','40'),(1015,2848,'UI349',2,'Cartel de advertencia \"a mÃ¡s velocidad semÃ¡foro cerrado\" incluso postes de sustentaciÃ³n y cimentaciÃ³n. Totalmente instalado',657.21,11,2,'c8','40'),(1016,2849,'UI350',2,'Cartel de 300x200 cm en aluminio de 170 mm con 4 focos de diodos, con texto ATENCIÃ“N TRAVESÃA, seÃ±al circular de limitaciÃ³n de velocidad y seÃ±al triangular de peligro. Totalmente instalado',6742.46,11,2,'c8','40'),(1017,2850,'UI351',2,'Cartel de 300x200 cm en aluminio de 170 mm, reflexivo HI, con p.p. de IPN, incluso excavaciÃ³n, totalmente instalado ',1735.03,11,2,'c8','40'),(1018,2851,'UI352',2,'Placa de control y diodos para cartel de aluminio de 300x200 cm ',2312.40,11,2,'c8','40'),(1019,2852,'UI353',2,'Panel informativo de 150x120 cm en aluminio con dos textos, encendido durante 12 horas, totalmente instalado y con alimentador solar ',3286.04,11,2,'c8','40'),(1020,2853,'UI354',2,'Panel informativo de 150x120 cm en aluminio con dos textos, encendido durante 12 horas, totalmente instalado y con alimentaciÃ³n a red ',2653.17,11,2,'c8','40'),(1021,2854,'UI355',2,'VisualizaciÃ³n para paso de peatones y travesÃ­as iluminados a una cara, totalmente instalado ',2409.76,11,2,'c8','40'),(1022,2855,'UI356',2,'Panel con doble flecha, encendido de barrido de 15 focos de diodos color Ã¡mbar, totalmente instalado y con alimentador solar ',3787.43,11,2,'c8','40'),(1023,2856,'UI357',2,'Panel con doble flecha, encendido de barrido de 15 focos de diodos color Ã¡mbar, totalmente instalado y con alimentador a red ',2482.78,11,2,'c8','40'),(1024,2857,'UI358',2,'Rotonda con cuatro entradas con 8 paneles direccionales de 1650x450 mm, totalmente colocada, con alimentaciÃ³n solar ',4162.31,11,2,'c8','40'),(1025,2858,'UI359',2,'Rotonda con cuatro entradas con 8 paneles direccionales de 1650x450 mm, totalmente colocada, con alimentaciÃ³n a red ',3651.15,11,2,'c8','40'),(1026,2859,'UI360',2,'Balizamiento de curva formado por 8 paneles de 800x400 mm reflexivo EG, con traseras e implantes luminosos de diodos, totalmente colocado con alimentaciÃ³n solar ',3383.40,11,2,'c8','40'),(1027,2860,'UI361',2,'Balizamiento de curva formado por 8 paneles de 800x400 mm reflexivo EG, con traseras e implantes luminosos de diodos, totalmente colocado con alimentaciÃ³n a red ',2823.55,11,2,'c8','40'),(1028,2861,'UI362',2,'Balizamiento de curva formado por 8 paneles de 1,650x450 mm reflexivo EG, con traseras e implantes luminosos de diodos, totalmente colocado con alimentaciÃ³n solar ',4162.31,11,2,'c8','40'),(1029,2862,'UI363',2,'Balizamiento de curva formado por 8 paneles de 1,650x450 mm reflexivo EG, con traseras e implantes luminosos de diodos, totalmente colocado con alimentaciÃ³n a red ',3651.15,11,2,'c8','40'),(1030,2863,'UI364',2,'SeÃ±al cÃ³digo S-13 con dos focos destelleantes de diodos de alta eficiencia color Ã¡mbar, incluso cartucho de aluminio, totalmente instalada, de 900x900x60 mm con alimentaciÃ³n solar ',1460.47,11,2,'c8','40'),(1031,2864,'UI365',2,'SeÃ±al cÃ³digo S-13 con dos focos destelleantes de diodos de alta eficiencia color Ã¡mbar, incluso cartucho de aluminio, totalmente instalada, de 900x900x60 mm con alimentaciÃ³n a red ',1217.05,11,2,'c8','40'),(1032,2865,'UI366',2,'SeÃ±al cÃ³digo R-301 de 900 mm con implante de diodos (orla en rojo y anagrama en Ã¡mbar) en cartucho de aluminio, sobre poste de aluminio de 98 mm, de doce horas de encendido, totalmente colocada, con alimentaciÃ³n solar',1460.47,11,2,'c8','40'),(1033,2866,'UI367',2,'SeÃ±al cÃ³digo R-301 de 900 mm con implante de diodos (orla en rojo y anagrama en Ã¡mbar) en cartucho de aluminio, sobre poste de aluminio de 98 mm, de doce horas de encendido, totalmente colocada, con alimentaciÃ³n a red',1217.05,11,2,'c8','40'),(1034,2867,'UI368',2,'SeÃ±al cÃ³digo R-401 Ã³ R-402 con implante de diodos Ã¡mbar en cartucho de aluminio, sobre poste de aluminio de 98 mm, totalmente colocada con alimentaciÃ³n solar ',1460.47,11,2,'c8','40'),(1035,2868,'UI369',2,'SeÃ±al cÃ³digo R-401 Ã³ R-402 con implante de diodos Ã¡mbar en cartucho de aluminio, sobre poste de aluminio de 98 mm, totalmente colocada con alimentaciÃ³n a red ',1217.05,11,2,'c8','40'),(1036,2869,'UI370',2,'SeÃ±al de cÃ³digo triangular con tres focos de diodos de color Ã¡mbar de alta eficiencia, incluso poste de sustentaciÃ³n de 98 mm, totalmente instalada, con alimentaciÃ³n solar ',1372.83,11,2,'c8','40'),(1037,2870,'UI371',2,'SeÃ±al de cÃ³digo triangular con tres focos de diodos de color Ã¡mbar de alta eficiencia, incluso poste de sustentaciÃ³n de 98 mm totalmente instalada, con alimentaciÃ³n a red ',1207.31,11,2,'c8','40'),(1038,2871,'UI372',2,'Cartucho de aluminio de 1.100x1.100x170 mm con fondo negro e implante luminoso con diodos de alta eficiencia para anagrama de R-301 de 900 mm, incluso poste totalmente instalada con alimentaciÃ³n solar ',3704.70,11,2,'c8','40'),(1039,2872,'UI373',2,'Cartucho de aluminio de 1.100x1.100s170 mm con fondo negro e implante luminoso con diodos de alta eficiencia para anagrama de R-301 de 900 mm, incluso poste, totalmente instalada, con alimentaciÃ³n a red ',2585.01,11,2,'c8','40'),(1040,2873,'UI374',2,'Detector radar con columna y equipo solar como complemento al precio anterior, trasmisor de radio y columna de 4 m, totalmente colocado y alimentaciÃ³n solar ',2677.51,11,2,'c8','40'),(1041,2874,'UI375',2,'Detector radar con columna y equipo solar como complemento al precio anterior, trasmisor de radio y columna de 4 m, totalmente colocado y alimentaciÃ³n a red ',1976.49,11,2,'c8','40'),(1042,2875,'UI376',2,'Panel informativo de 2x2,5 m en cartucho de aluminio con diodos leds de alta eficiencia, con encendido alternativo de dos seÃ±ales de cÃ³digo 1.200 mm Ã³ 1.750 mm de lado, con cuatro focos de diodos Ã¡mbar para funcionamiento diario de 12 horas, totalmente instalado',5985.64,11,2,'c8','40'),(1043,2876,'UI377',2,'Panel informativo de 2x2,5 m en cartucho de aluminio con diodos leds de alta eficiencia, con encendido alternativo de dos seÃ±ales de cÃ³digo 1.200 mm Ã³ 1.750 mm de lado, con cuatro focos de diodos Ã¡mbar para funcionamiento diario de 12 horas, totalmente instalado',5330.66,11,2,'c8','40'),(1044,2877,'UI378',2,'Cartel croquis de 1.800x2.800 mm en lamas de chapa de acero reflex HI con 2 IPN 120 de 5,5 m, con dos focos xenon flash de 10 mm, para conectar a red, totalmente instalado ',2701.85,11,2,'c8','40'),(1045,2878,'UI379',2,'Cartel croquis de 1.800x2.800 mm en lamas de chapa de acero reflex HI con 2 IPN 120 de 5,5 m, con dos focos xenon flash de 10 mm, para conectar a red, totalmente instalado',3432.29,11,2,'c8','40'),(1046,2879,'UI380',2,'Cartel croquis de 1.800x2.800 mm en lamas de chapa de acero reflex HI con 2 IPN 120 de 5,5 m, con dos focos xenon flash de 10 mm, para conectar a placa solar, totalmente instalado',3918.91,11,2,'c8','40'),(1047,2880,'UI381',2,'Cartel croquis de 1.800x2.800 mm en lamas de chapa de acero reflex HI con 2 IPN 120 de 5,5 m, con 4 focos xenon flash de 10 mm, para conectar a red, totalmente instalado ',3091.31,11,2,'c8','40'),(1048,2881,'UI382',2,'Cartel croquis de 1.800x2.800 mm en lamas de chapa de acero reflex HI con 2 IPN 120 de 5,5 m, con 4 focos xenon flash de 10 mm, para conectar a red de alumbrado, con acumulador, totalmente instalado',3918.91,11,2,'c8','40'),(1049,2882,'UI383',2,'Cartel croquis de 1.800x2.800 mm en lamas de chapa de acero reflex HI con 2 IPN 120 de 5,5 m, con 4 focos xenon flash de 10 mm, para conectar a placa solar, totalmente instalado ',5379.35,11,2,'c8','40'),(1050,2883,'UI384',2,'Cartel croquis de 1.800x2.800 mm en lamas de chapa de acero reflex HI con 2 IPN 120 de 5,5 m, con 4 focos xenon flash de 10 mm, para conectar a red, totalmente instalado ',1582.16,11,2,'c8','40'),(1051,2884,'UI385',2,'Cartel croquis de 1.800x.2800 mm en lamas de chapa de acero reflex HI con 2 IPN 120 de 5,5 m, con 4 focos xenon flash de 10 mm, para conectar a red de alumbrado, con acumulador, totalmente instalado',2312.40,11,2,'c8','40'),(1052,2885,'UI386',2,'SeÃ±al triangular de 90 cm reflexiva HI tipo cajÃ³n, en aluminio de 53 mm de fondo con poste de 3m y tres focos xenon flash de 180 mm, para conectar a placa solar, totalmente instalado ',2677.51,11,2,'c8','40'),(1053,2886,'UI387',2,'Regulador de carga para alimentaciÃ³n solar de 12 V 10 A ',121.71,11,2,'c8','40'),(1054,2887,'UI388',2,'Panel solar de 10 W ',124.19,11,2,'c8','40'),(1055,2888,'UI389',2,'Panel solar de 20 W ',246.78,11,2,'c8','40'),(1056,2889,'UI390',2,'Panel solar de 50 W ',337.53,11,2,'c8','40'),(1057,2890,'UI391',2,'Panel solar de 75 W ',461.72,11,2,'c8','40'),(1058,2891,'UI392',2,'Panel solar de 120 W ',732.38,11,2,'c8','40'),(1059,2892,'UI393',2,'BaterÃ­a 12 V 7A ',73.03,11,2,'c8','40'),(1060,2893,'UI394',2,'BaterÃ­a 12 V 15 A ',97.36,11,2,'c8','40'),(1061,2894,'UI395',2,'BaterÃ­a 12 V 40 A ',160.65,11,2,'c8','40'),(1062,2895,'UI396',2,'BaterÃ­a 12 V 60 A ',219.02,11,2,'c8','40'),(1063,2896,'UI397',2,'Fuente de alimentaciÃ³n a red',131.44,11,2,'c8','40'),(1064,2897,'UI398',2,'Placa de control de diodos ',249.40,11,2,'c8','40'),(1065,2898,'UI399',2,'Conjunto de soportes ',160.65,11,2,'c8','40'),(1066,2899,'UI400',2,'Armario contenedor ',126.57,11,2,'c8','40'),(1067,2900,'UI401',2,'Columna de 4 m de altura ',180.12,11,2,'c8','40'),(1068,2901,'UI402',2,'Radar ',949.29,11,2,'c8','40'),(1069,2902,'UI403',2,'Trasmisor de radio ',316.43,11,2,'c8','40'),(1070,2903,'UI404',2,'Reloj astronÃ³mico ',190.15,11,2,'c8','40'),(1071,2904,'UI405',2,'Regulador electrÃ³nico dotado con microprocesador, 42 V, reloj digital y equipado para funcionar autÃ³nomo o formando parte de un sistema coordinado o telemandado de 4 grupos, instalado',2690.05,11,2,'c8','40'),(1072,2905,'UI406',2,'Regulador electrÃ³nico dotado con microprocesador, 42 V, reloj digital y equipado para funcionar autÃ³nomo o formando parte de un sistema coordinado o telemandado de 6 grupos, instalado',0.00,11,2,'c8','40'),(1073,2906,'UI407',2,'Regulador electrÃ³nico dotado con microprocesador, 42 V, reloj digital y equipado para funcionar autÃ³nomo o formando parte de un sistema coordinado o telemandado de 8 grupos, instalado',3286.69,11,2,'c8','40'),(1074,2907,'UI408',2,'Regulador electrÃ³nico dotado con microprocesador, 42 V, reloj digital y equipado para funcionar autÃ³nomo o formando parte de un sistema coordinado o telemandado de 10 grupos, instalado ',3585.02,11,2,'c8','40'),(1075,2908,'UI409',2,'Regulador electrÃ³nico dotado con microprocesador, 42 V, reloj digital y equipado para funcionar autÃ³nomo o formando parte de un sistema coordinado o telemandado de 12 grupos, instalado ',3883.34,11,2,'c8','40'),(1076,2909,'UI410',2,'Regulador electrÃ³nico dotado con microprocesador, 42 V, reloj digital y equipado para funcionar autÃ³nomo o formando parte de un sistema coordinado o telemandado de 14 grupos, instalado',4181.66,11,2,'c8','40'),(1077,2910,'UI411',2,'Regulador electrÃ³nico dotado con microprocesador, 42 V, reloj digital y equipado para funcionar autÃ³nomo o formando parte de un sistema coordinado o telemandado de 16 grupos, instalado ',4479.98,11,2,'c8','40'),(1078,2911,'UI412',2,'Regulador electrÃ³nico dotado con microprocesador, 42 V, reloj digital y equipado para funcionar autÃ³nomo o formando parte de un sistema coordinado o telemandado de 18 grupos, de un sistema coordinado o telemandado de 18 grupos, instalado',4778.31,11,2,'c8','40'),(1079,2912,'UI413',2,'Regulador electrÃ³nico dotado con microprocesador, 42 V, reloj digital y equipado para funcionar autÃ³nomo o formando parte de un sistema coordinado o telemandado de 20 grupos, instalado ',5076.63,11,2,'c8','40'),(1080,2913,'UI414',2,'Regulador electrÃ³nico dotado con microprocesador, 42 V, reloj digital y equipado para funcionar autÃ³nomo o formando parte de un sistema coordinado o telemandado de 22 grupos, instalado ',5374.95,11,2,'c8','40'),(1081,2914,'UI415',2,'Regulador electrÃ³nico dotado con microprocesador, 42 V, reloj digital y equipado para funcionar autÃ³nomo o formando parte de un sistema coordinado o telemandado de 24 grupos, instalado ',5673.28,11,2,'c8','40'),(1082,2915,'UI416',2,'Regulador electrÃ³nico CVT para control de velocidad de travesÃ­as, instalado ',2391.72,11,2,'c8','40'),(1083,2916,'UI417',2,'Incremento de un grupo en regulador electrÃ³nico de un cruce, incluyendo modificaciones de bandejas de relÃ©s, o placas de contactores, cableados y todos los accesorios, terminado y funcionando ',123.82,11,2,'c8','40'),(1084,2917,'UI418',2,'Montaje de cualquier regulador electrÃ³nico',461.55,11,2,'c8','40'),(1085,2918,'UI419',2,'Desmontaje de cualquier regulador electrÃ³nico ',219.56,11,2,'c8','40'),(1086,2919,'UI420',2,'Detector de vehÃ­culos tipo lazo inductivo para 2 lazos. Instalado',213.23,11,2,'c8','40'),(1087,2920,'UI421',2,'Montaje detector de vehÃ­culos ',31.23,11,2,'c8','40'),(1088,2921,'UI422',2,'Desmontaje detector de vehÃ­culos ',7.71,11,2,'c8','40'),(1089,2922,'UI423',2,'Avisador acÃºstico para invidentes con intensidad regulable. Instalado',158.29,11,2,'c8','40'),(1090,2923,'UI424',2,'Montaje avisador para invidentes ',17.55,11,2,'c8','40'),(1091,2924,'UI425',2,'Desmontaje avisador para invidentes ',11.96,11,2,'c8','40'),(1092,2925,'UI426',2,'Interruptor diferencial de 0,3 A. Instalado ',73.03,11,2,'c8','40'),(1093,2926,'UI427',2,'Montaje de interruptor deferencial de 0,3 A',8.38,11,2,'c8','40'),(1094,2927,'UI428',2,'Desmontaje de interruptor diferencial de 0,3 A ',6.89,11,2,'c8','40'),(1095,2928,'UI429',2,'Interruptor automÃ¡tico magnetotÃ©rmico bipolar de 10 A. Instalado',46.25,11,2,'c8','40'),(1096,2929,'UI430',2,'Montaje de interruptor automÃ¡tico magnetotÃ©rmico bipolar de 10 A',8.38,11,2,'c8','40'),(1097,2930,'UI431',2,'Desmontaje de interruptor automÃ¡tico magnetotÃ©rmico bipolar de 10 A',6.89,11,2,'c8','40'),(1098,2931,'UI432',2,'Reloj con reserva horaria para avisador acÃºstico de invidentes',56.55,11,2,'c8','40'),(1099,2932,'UI433',2,'Destellador doble basculante. Instalado ',60.71,11,2,'c8','40'),(1100,2933,'UI434',7,'Cable tipo manguera de 1 kV 1x6 mm2. Instalado ',1.04,11,2,'c8','40'),(1101,2934,'UI435',7,'Cable tipo manguera de 1 kV 1x16 mm2. Instalado ',1.80,11,2,'c8','40'),(1102,2935,'UI436',7,'Cable tipo manguera de 1 kV 1x3,5 mm2. Instalado ',2.98,11,2,'c8','40'),(1103,2936,'UI437',7,'Cable tipo manguera de 1 kV 2x2,5 mm2. Instalado ',1.20,11,2,'c8','40'),(1104,2937,'UI438',7,'Cable tipo manguera de 1 kV 2x10 mm2. Instalado ',6.70,11,2,'c8','40'),(1105,2938,'UI439',7,'Cable tipo manguera de 1 kV 2x16 mm2. Instalado ',3.78,11,2,'c8','40'),(1106,2939,'UI440',7,'Cable tipo manguera de 1 kV 3x2,5 mm2. Instalado ',1.30,11,2,'c8','40'),(1107,2940,'UI441',7,'Cable tipo manguera de 1 kV 4x2,5 mm2. Instalado ',1.39,11,2,'c8','40'),(1108,2941,'UI442',7,'Montaje de cualquier cable tipo manguera de 1 kV en instalaciones subterrÃ¡neas',0.61,11,2,'c8','40'),(1109,2942,'UI443',7,'Desmontaje de cualquier cable tipo manguera de 1 kV en instalaciones subterrÃ¡neas',0.50,11,2,'c8','40'),(1110,2943,'UI444',7,'Cable telefÃ³nico armado y apantallado de dos pares, de 0,9 mm2 de secciÃ³n ',1.42,11,2,'c8','40'),(1111,2944,'UI445',7,'Cable telefÃ³nico armado y apantallado de cuatro pares, de 0,9 mm2 de secciÃ³n ',1.66,11,2,'c8','40'),(1112,2945,'UI446',7,'Cable telefÃ³nico armado y apantallado de ocho pares, de 0,9 mm2 de secciÃ³n ',2.66,11,2,'c8','40'),(1113,2946,'UI447 ',2,'EstaciÃ³n Remota Universal (ERU) para control de panel de mensajes variables y detector, instalada ',17884.86,11,2,'c8','40'),(1114,2947,'UI448',7,'Cable de 2 x 10 mm2 en tendido aÃ©reo grapado a cable de acero existente',7.26,11,2,'c8','40'),(1115,2948,'UI449',7,'Cable de 3 cuadretes de 0,9 mm de diÃ¡metro. Instalado ',4.42,11,2,'c8','40'),(1116,2949,'UI450',2,'AnemÃ³metro instalado en panel de mensajes variables ',1184.73,11,2,'c8','40'),(1117,2950,'UI451',2,'Equipo de alimentaciÃ³n ininterrumpida, incluso armario, para regulador electrÃ³nico de trÃ¡fico 24 V, totalmente instalado y conectado al correspondiente regulador',2871.55,11,2,'c8','40'),(1118,2951,'UI452',7,'Montaje de cualquier cable telefÃ³nico armado y apantallado ',0.68,11,2,'c8','40'),(1119,2952,'UI453',7,'Desmontaje de cualquier cable telefÃ³nico armado y apantallado ',0.50,11,2,'c8','40'),(1120,2953,'UI454',7,'Cable de aluminio 0,6-1 kV 1x150 mm2 (AL) ',3.78,11,2,'c8','40'),(1121,2954,'UI455',7,'Tubo de acero de 29 mm para conducciÃ³n de cable. Instalado ',7.31,11,2,'c8','40'),(1122,2955,'UI456',7,'Montaje de tubo de acero de 29 mm ',4.13,11,2,'c8','40'),(1123,2956,'UI457',7,'Desmontaje de tubo de acero de 29 mm ',1.84,11,2,'c8','40'),(1124,2957,'UI458',7,'Regata para un detector en punto de medida, incluyendo espira y sellado de la misma mediante producto asfÃ¡ltico y resina especial',20.28,11,2,'c8','40'),(1125,2958,'UI459',2,'Empalme para cables de pares ',98.53,11,2,'c8','40'),(1126,2959,'UI468',2,'Empalme para cables de tensiÃ³n ',29.45,11,2,'c8','40'),(1127,2980,'UO001 ',10,'Limpieza y pintura de barandillas con imprimaciÃ³n y una mano de pintura alcÃ­dica. ',4.84,21,2,'c9','50'),(1128,2981,'UO002 ',7,'ReposiciÃ³n de barandilla de protecciÃ³n de peatones de hasta 1 m de altura, incluso anclaje, pintura y retirada y transporte de la existente a acopio. ',48.25,21,2,'c9','50'),(1129,2982,'UO003',2,'Reductor de velocidad tipo lomo de la Orden de TravesÃ­as de la Comunidad de Madrid. ',1872.20,21,2,'c9','50'),(1130,2983,'UO004',2,'Reductor de velocidad tipo meseta de la Orden de TravesÃ­as de la Comunidad de Madrid. ',3568.12,21,2,'c9','50'),(1131,2984,'UO005',7,'ReposiciÃ³n o instalaciÃ³n de cerramiento de tela metÃ¡lica galvanizada de doble torsiÃ³n de hasta 1,5 m de altura, incluso postes, tensores y p.p de cimentaciÃ³n, terminado. ',5.62,21,2,'c9','50'),(1132,2985,'UO006',7,'ReposiciÃ³n o instalaciÃ³n de cerramiento de tela metÃ¡lica galvanizada de doble torsiÃ³n de hasta 2 m de altura, incluso postes, tensores y p.p de cimentaciÃ³n, terminado. ',8.21,21,2,'c9','50'),(1133,2986,'UO007',7,'ReposiciÃ³n o instalaciÃ³n de cerramiento de tela metÃ¡lica tipo ganadera, galvanizada, de hasta 1,5 m de altura, incluso postes, tensores y p.p de cimentaciÃ³n, terminado. ',7.07,21,2,'c9','50'),(1134,2987,'UO008',7,'ReposiciÃ³n o instalaciÃ³n de cerramiento de tela metÃ¡lica tipo ganadera, galvanizada, de hasta 2 m de altura, incluso postes, tensores y p.p de cimentaciÃ³n, terminado. ',15.82,21,2,'c9','50'),(1135,2988,'UO009',7,'Junta de dilataciÃ³n elÃ¡stica de 50x10 cm, a base de betÃºn caucho y Ã¡rido ofÃ­tico, y placa de acero, incluso desmontaje de la existente. ',214.03,21,2,'c9','50'),(1136,2989,'UO010',7,'Junta de dilataciÃ³n tipo TRANSFLEX o similar para 76 mm de recorrido incluso mortero de uniÃ³n y levantado de la existente. ',444.19,21,2,'c9','50'),(1137,2990,'UO011',2,'Suministro de Spartium Junceum o de escobÃ³n blanco',1.14,21,2,'c9','50'),(1138,2991,'UO012',2,'Suministro Adelfa ',1.20,21,2,'c9','50'),(1139,2992,'UO013',2,'Suministro Teucrum Fruticans (olivilla) ',1.53,21,2,'c9','50'),(1140,3001,'EM001',12,'Encargado en horario laboral ',15.80,22,3,'d1','60'),(1141,3002,'EM002',12,'Encargado en horario nocturno o festivo ',16.77,22,3,'d1','60'),(1142,3003,'EM003',12,'Capataz en horario laboral ',14.48,22,3,'d1','60'),(1143,3004,'EM004',12,'Capataz en horario nocturno o festivo ',15.94,22,3,'d1','60'),(1144,3005,'EM005',12,'Oficial 1Âª en horario laboral ',14.31,22,3,'d1','60'),(1145,3006,'EM006',12,'Oficial 1Âª electricista',14.31,22,3,'d1','60'),(1146,3007,'EM007',12,'Oficial 1Âª en horario nocturno o festivo ',15.74,22,3,'d1','60'),(1147,3008,'EM008',12,'Oficial 2Âª en horario laboral ',13.28,22,3,'d1','60'),(1148,3009,'EM009',12,'Oficial 2Âª en horario nocturno o festivo ',14.60,22,3,'d1','60'),(1149,3010,'EM010',12,'PeÃ³n en horario laboral ',12.83,22,3,'d1','60'),(1150,3011,'EM011',12,'PeÃ³n en horario nocturno o festivo ',14.09,22,3,'d1','60'),(1151,3012,'EM011',12,'Auxiliar tÃ©cnico, auxiliar centro de gestiÃ³n 14,50',14.50,22,3,'d1','60'),(1152,3013,'EM012',12,'Auxiliar tÃ©cnico, auxiliar centro de gestiÃ³n, en horario nocturno o festivo',16.50,22,3,'d1','60'),(1153,3100,'EQ001',12,'CamiÃ³n de 5 t',25.63,23,3,'d2','60'),(1154,3101,'EQ002',12,'CamiÃ³n de 12 t',31.14,23,3,'d2','60'),(1155,3102,'EQ003',12,'CamiÃ³n de 20 t',36.33,23,3,'d2','60'),(1156,3103,'EQ004',12,'CamiÃ³n basculante',37.51,23,3,'d2','60'),(1157,3104,'EQ005',12,'CamiÃ³n de 20 t con cuÃ±a quitanieves y esparcidor de fundente',51.89,23,3,'d2','60'),(1158,3105,'EQ006',12,'Trabajo de camiÃ³n para limpieza de obras de fÃ¡brica, con lanza hidrÃ¡ulica y bomba aspiradora, incluso desplazamiento. ',87.80,23,3,'d2','60'),(1159,3106,'EQ007',12,'Trabajo de camiÃ³n 4x4 de mÃ¡s de 300 CV provisto de lÃ¡mina o cuÃ±a quitanieves y esparcidor de fundentes. ',56.32,23,3,'d2','60'),(1160,3107,'EQ008',12,'Trabajo de camiÃ³n quitanieves de 3 ejes, 6x6, motor de potencia mÃ­nima de 350 CV, con esparcidor de sal de mÃ¡s de 7,5 m3, con depÃ³sito de salmuera de 3,0 m3 y lÃ¡mina quitanieves de 3,60 m de ancho. ',67.56,23,3,'d2','60'),(1161,3108,'EQ009',12,'Trabajo de Turbo Fresa de potencia superior a 500 CV anchura de fresado superior a 2.500 mm. ',76.90,23,3,'d2','60'),(1162,3109,'EQ010',12,'CamiÃ³n grÃºa ',50.19,23,3,'d2','60'),(1163,3110,'EQ011',12,'CamiÃ³n grÃºa autocargable hasta 25 t ',65.34,23,3,'d2','60'),(1164,3111,'EQ012',12,'CamiÃ³n grÃºa autocargable hasta 30 t ',78.75,23,3,'d2','60'),(1165,3112,'EQ013',12,'CamiÃ³n grÃºa autocargable hasta 40 t ',86.58,23,3,'d2','60'),(1166,3113,'EQ014',12,'CamiÃ³n cisterna 6 m3 ',31.53,23,3,'d2','60'),(1167,3114,'EQ015',12,'CamiÃ³n cisterna 8 m3 ',37.22,23,3,'d2','60'),(1168,3115,'EQ016',12,'CamiÃ³n cisterna 10 m3 ',41.66,23,3,'d2','60'),(1169,3116,'EQ017',12,'CamiÃ³n plataforma o camiÃ³n jirafa altura < 10 m ',43.37,23,3,'d2','60'),(1170,3117,'EQ018',12,'CamiÃ³n cisterna riego asfÃ¡ltico ',34.85,23,3,'d2','60'),(1171,3118,'EQ019',12,'GrÃºa autopropulsada 12 t ',40.78,23,3,'d2','60'),(1172,3119,'EQ020',12,'GrÃºa autopropulsada 20 t ',94.05,23,3,'d2','60'),(1173,3120,'EQ021',12,'CamiÃ³n mixto > 200 t con complementos ',38.55,23,3,'d2','60'),(1174,3121,'EQ022',12,'Pala cargadora s/neumÃ¡ticos 10 t ',25.96,23,3,'d2','60'),(1175,3122,'EQ023',12,'Pala cargadora s/neumÃ¡ticos 25 t ',61.04,23,3,'d2','60'),(1176,3123,'EQ024',12,'Pala cargadora s/orugas 17 t ',51.90,23,3,'d2','60'),(1177,3124,'EQ025',12,'Pala Excavadora-Cargadora ',34.11,23,3,'d2','60'),(1178,3125,'EQ026',12,'Retroexcavadora 12 t ',31.51,23,3,'d2','60'),(1179,3126,'EQ027',12,'Retroexcavadora 20 t ',45.23,23,3,'d2','60'),(1180,3127,'EQ028',12,'Retroexcavadora 27 t ',35.81,23,3,'d2','60'),(1181,3128,'EQ029',12,'Retroexcavadora con martillo rompedor ',42.36,23,3,'d2','60'),(1182,3129,'EQ030',12,'Retroexcavadora mixta con cazo, pala y martillo picador ',28.84,23,3,'d2','60'),(1183,3130,'EQ031',12,'Motoniveladora (potencia > 125 CV) ',56.41,23,3,'d2','60'),(1184,3131,'EQ032',12,'Cilindro vibratorio portÃ¡til ',23.21,23,3,'d2','60'),(1185,3132,'EQ033',12,'Rodillo vibratorio autopropulsado 8-10 t ',33.37,23,3,'d2','60'),(1186,3133,'EQ034',12,'Rodillo vibratorio autopropulsado 10-12 t ',37.49,23,3,'d2','60'),(1187,3134,'EQ035',12,'Rodillo vibratorio autopropulsado 12-14 t ',38.89,23,3,'d2','60'),(1188,3135,'EQ036',12,'Compactador de neumÃ¡ticos autopropulsado ',43.91,23,3,'d2','60'),(1189,3136,'EQ037',12,'Fresadora de anchura >= 1,3 m ',111.21,23,3,'d2','60'),(1190,3137,'EQ038',12,'Extendedora de Ã¡ridos ',31.88,23,3,'d2','60'),(1191,3138,'EQ039',12,'Extendedora para aglomerado asfÃ¡ltico ',48.20,23,3,'d2','60'),(1192,3139,'EQ040',12,'Extendedora para firme de hormigÃ³n ',55.61,23,3,'d2','60'),(1193,3140,'EQ041',12,'Equipo extendido lechada ',51.90,23,3,'d2','60'),(1194,3141,'EQ042',12,'Barredora autopropulsada ',61.78,23,3,'d2','60'),(1195,3142,'EQ043',12,'Barredora-aspiradora mezclas drenantes ',31.05,23,3,'d2','60'),(1196,3143,'EQ044',12,'MÃ¡quina con cepillo limpiador ',33.35,23,3,'d2','60'),(1197,3144,'EQ045',12,'Segadora-desbrozadora autopropulsada de hasta 1 m de frente de ataque',22.25,23,3,'d2','60'),(1198,3145,'EQ046',12,'CamiÃ³n con cesta ',48.19,23,3,'d2','60'),(1199,3146,'EQ047',12,'Hidrosembradora montada sobre camiÃ³n ',29.66,23,3,'d2','60'),(1200,3147,'EQ048',12,'MÃ¡quina de pintar marcas viales autopropulsada ',32.90,23,3,'d2','60'),(1201,3148,'EQ049',12,'MÃ¡quina de pintar marcas viales manual ',24.67,23,3,'d2','60'),(1202,3149,'EQ050',12,'MÃ¡quina para construcciÃ³n de barrera rÃ­gida tipo New Jersey ',111.21,23,3,'d2','60'),(1203,3200,'EU001',12,'Furgoneta ',4.99,24,3,'d3','60'),(1204,3201,'EU002',12,'Todo terreno ',8.83,24,3,'d3','60'),(1205,3202,'EU003',12,'FurgÃ³n',7.13,24,3,'d3','60'),(1206,3203,'EU004',12,'Compresor con 2 martillos neumÃ¡ticos',9.02,24,3,'d3','60'),(1207,3204,'EU005',12,'Compresor con 3 martillos neumÃ¡ticos',14.48,24,3,'d3','60'),(1208,3205,'EU006',12,'Compresor con 4 martillos neumÃ¡ticos',16.25,24,3,'d3','60'),(1209,3206,'EU007',12,'Grupo electrÃ³geno 20/30 kVA ',5.30,24,3,'d3','60'),(1210,3207,'EU008',12,'Placa vibrante ',8.12,24,3,'d3','60'),(1211,3208,'EU009',12,'Vibrador ',3.89,24,3,'d3','60'),(1212,3209,'EU010',12,'Equipo corte oxiacetilÃ©nico',6.00,24,3,'d3','60'),(1213,3210,'EU011',12,'Equipo soldadura elÃ©ctrica ',1.92,24,3,'d3','60'),(1214,3211,'EU012',12,'Motosierra ',0.36,24,3,'d3','60'),(1215,3212,'EU013',12,'Segadora manual ',0.36,24,3,'d3','60'),(1216,3213,'EU014',12,'Martillo picador elÃ©ctrico ',2.12,24,3,'d3','60'),(1217,3214,'EU015',5,'Hormigonera pequeÃ±a ',2.12,24,3,'d3','60'),(1218,3215,'EU016',12,'Carro mÃ³vil ',2.41,24,3,'d3','60'),(1219,3216,'EU017',12,'Sierra circular ',6.71,24,3,'d3','60'),(1220,3300,'EV001 ',13,'Vuelo fotogramÃ©trico escala mÃ­n. 1:5.000 y franja mÃ­nima 300 m',40.49,25,3,'d4','60'),(1221,3301,'EV002 ',14,'RestituciÃ³n vuelo fotogramÃ©trico 1:1.000 con chequeo campo',8.24,25,3,'d4','60'),(1222,3302,'EV003 ',13,'Apoyo de campo con establecimiento de poligonal y nivelaciÃ³n de precisiÃ³n',231.75,25,3,'d4','60'),(1223,30000,'gfsdgs',14,'sssssss',11.00,13,1,'f1',''),(1224,30001,'awfaf',9,'sssss1',12.00,13,1,'f1',''),(1225,30002,'12',3,'sssss2',13.00,13,1,'f2',''),(1227,30003,'13',11,'sssss33',14.00,11,1,'','');
/*!40000 ALTER TABLE `conceptos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `municipio_km`
--

DROP TABLE IF EXISTS `municipio_km`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `municipio_km` (
  `idmunicipio_km` int(11) NOT NULL AUTO_INCREMENT,
  `id_carretera` int(11) DEFAULT NULL,
  `id_municipio` int(11) DEFAULT NULL,
  `kh` decimal(10,2) DEFAULT NULL,
  `kd` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`idmunicipio_km`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `municipio_km`
--

LOCK TABLES `municipio_km` WRITE;
/*!40000 ALTER TABLE `municipio_km` DISABLE KEYS */;
INSERT INTO `municipio_km` VALUES (3,11,1,7.14,5.25),(6,1,1,34.00,6.00),(9,3,4,34.00,5.00),(12,11,1,5.00,4.00),(13,3,1,37.00,34.10),(14,109,3,100.00,1.00);
/*!40000 ALTER TABLE `municipio_km` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `municipios`
--

DROP TABLE IF EXISTS `municipios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `municipios` (
  `idmunicipios` int(11) NOT NULL AUTO_INCREMENT,
  `concepto` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idmunicipios`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `municipios`
--

LOCK TABLES `municipios` WRITE;
/*!40000 ALTER TABLE `municipios` DISABLE KEYS */;
INSERT INTO `municipios` VALUES (1,'Las Rozas '),(3,'las matas'),(4,'torrelodones');
/*!40000 ALTER TABLE `municipios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partes`
--

DROP TABLE IF EXISTS `partes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partes` (
  `idpartes` int(11) NOT NULL AUTO_INCREMENT,
  `id_carretera` int(11) DEFAULT NULL,
  `kd` decimal(10,3) DEFAULT NULL,
  `kh` decimal(10,3) DEFAULT NULL,
  `sentido` varchar(45) DEFAULT NULL,
  `margen` varchar(45) DEFAULT NULL,
  `id_tipovia` int(11) DEFAULT NULL,
  `fecha` varchar(45) DEFAULT NULL,
  `id_concepto` int(11) DEFAULT NULL,
  `id_concepto_inicial` int(11) DEFAULT NULL,
  `id_unidades` int(11) DEFAULT NULL,
  `medicion` decimal(10,3) DEFAULT NULL,
  `medicion_inicial` decimal(10,3) DEFAULT NULL,
  `observaciones` varchar(450) DEFAULT NULL,
  `id_actuaciones` varchar(45) DEFAULT NULL,
  `numero_certificacion` varchar(45) DEFAULT NULL,
  `amarillo` int(11) DEFAULT '0',
  PRIMARY KEY (`idpartes`)
) ENGINE=InnoDB AUTO_INCREMENT=24111 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partes`
--

LOCK TABLES `partes` WRITE;
/*!40000 ALTER TABLE `partes` DISABLE KEYS */;
INSERT INTO `partes` VALUES (23825,5,3.900,3.900,'-','Derecho',5,'2018-04-10',909,NULL,2,1.000,NULL,'',NULL,'41',0),(23826,26,2.000,2.000,'-','',0,'2018-04-10',909,NULL,2,1.000,NULL,'',NULL,'41',0),(23827,5,1.300,1.300,'+','Derecho',5,'2018-04-10',2106,NULL,7,9.000,NULL,'',NULL,'41',0),(23828,5,3.950,3.950,'-','Derecho',5,'2018-04-10',2106,NULL,7,10.000,NULL,'',NULL,'41',0),(23829,26,2.900,2.900,'-','Derecho',0,'2018-04-10',2220,NULL,2,1.000,NULL,'',NULL,'41',0),(23830,26,0.800,0.800,'-','izquierdo',0,'2018-04-10',2221,NULL,2,1.000,NULL,'',NULL,'41',0),(23831,5,0.500,4.800,'+ -','Derecho',0,'2018-04-11',1,NULL,7,275.000,NULL,'',NULL,'41',0),(23832,3,14.000,36.000,'+ -','Derecho',0,'2018-04-11',1,NULL,7,450.000,NULL,'',NULL,'41',0),(23833,9,3.500,3.500,'+ -','Derecho',0,'2018-04-11',1,NULL,7,350.000,NULL,'',NULL,'41',0),(23834,3,13.500,35.500,'-','Ambos',0,'2018-04-11',2,NULL,7,44000.000,NULL,'',NULL,'41',0),(23835,5,0.500,4.800,'+ -','Derecho',0,'2018-04-11',3,NULL,2,1.000,NULL,'',NULL,'41',0),(23836,9,3.500,3.500,'+ -','Derecho',0,'2018-04-11',3,NULL,2,1.000,NULL,'',NULL,'41',0),(23837,5,0.000,0.000,'+','izquierdo',0,'2018-04-11',21,NULL,2,1.000,NULL,'',NULL,'41',0),(23838,5,0.000,0.000,'+','izquierdo',0,'2018-04-11',21,NULL,2,1.000,NULL,'',NULL,'41',0),(23839,14,19.000,17.000,'+ -','',0,'2018-04-11',21,NULL,2,1.000,NULL,'',NULL,'41',0),(23840,14,19.000,17.000,'+ -','',0,'2018-04-11',21,NULL,2,1.000,NULL,'',NULL,'41',0),(23841,14,21.700,21.700,'+','',0,'2018-04-11',21,NULL,2,1.000,NULL,'',NULL,'41',0),(23842,14,21.700,21.700,'+','',0,'2018-04-11',21,NULL,2,1.000,NULL,'',NULL,'41',0),(23843,14,23.900,23.900,'-','',0,'2018-04-11',21,NULL,2,1.000,NULL,'',NULL,'41',0),(23844,14,23.900,23.900,'-','',0,'2018-04-11',21,NULL,2,1.000,NULL,'',NULL,'41',0),(23845,3,14.900,14.900,'-','Derecho',4,'2018-04-11',82,NULL,2,1.000,NULL,'',NULL,'41',0),(23846,3,16.000,16.000,'-','Derecho',4,'2018-04-11',903,NULL,2,1.000,NULL,'pasarela',NULL,'41',0),(23847,8,5.000,5.000,'+','',0,'2018-04-11',904,NULL,2,1.000,NULL,'',NULL,'41',0),(23848,14,21.500,21.500,'-','',0,'2018-04-11',909,NULL,2,1.000,NULL,'',NULL,'41',0),(23849,3,18.100,18.100,'','',0,'2018-04-11',911,NULL,2,1.000,NULL,'',NULL,'41',0),(23850,3,18.100,18.100,'+','Derecho',0,'2018-04-11',1800,NULL,4,0.100,NULL,'',NULL,'41',0),(23851,5,0.000,0.000,'+','izquierdo',0,'2018-04-11',2016,NULL,11,62.500,NULL,'',NULL,'41',0),(23852,5,0.000,0.000,'+','izquierdo',0,'2018-04-11',2016,NULL,11,97.300,NULL,'',NULL,'41',0),(23853,14,19.000,17.000,'+ -','',0,'2018-04-11',2016,NULL,11,230.500,NULL,'',NULL,'41',0),(23854,14,19.000,17.000,'+ -','',0,'2018-04-11',2016,NULL,11,581.600,NULL,'',NULL,'41',0),(23855,14,21.700,21.700,'+','',0,'2018-04-11',2016,NULL,11,104.200,NULL,'',NULL,'41',0),(23856,14,21.700,21.700,'+','',0,'2018-04-11',2016,NULL,11,104.600,NULL,'',NULL,'41',0),(23857,14,23.900,23.900,'-','',0,'2018-04-11',2016,NULL,11,104.500,NULL,'',NULL,'41',0),(23858,14,23.900,23.900,'-','',0,'2018-04-11',2016,NULL,11,150.400,NULL,'',NULL,'41',0),(23859,14,23.600,23.600,'+','Derecho',5,'2018-04-11',2203,NULL,2,1.000,NULL,'',NULL,'41',0),(23860,14,18.900,18.900,'+','Derecho',0,'2018-04-11',2212,NULL,2,1.000,NULL,'',NULL,'41',0),(23861,3,14.900,14.900,'-','Derecho',4,'2018-04-11',2215,NULL,2,1.000,NULL,'',NULL,'41',0),(23862,14,18.900,18.900,'+','Derecho',0,'2018-04-11',2220,NULL,2,1.000,NULL,'',NULL,'41',0),(23863,18,11.500,11.500,'+ -','',0,'2018-04-11',2290,NULL,2,50.000,NULL,'',NULL,'41',0),(23864,14,19.000,17.000,'+ -','',0,'2018-04-11',2290,NULL,2,7.000,NULL,'',NULL,'41',0),(23865,14,21.600,21.400,'+ -','',0,'2018-04-11',2290,NULL,2,17.000,NULL,'',NULL,'41',0),(23866,14,21.700,21.700,'+ -','',0,'2018-04-11',2290,NULL,2,3.000,NULL,'',NULL,'41',0),(23867,14,21.700,21.700,'+ -','',0,'2018-04-11',2290,NULL,2,5.000,NULL,'h.arista barrera',NULL,'41',0),(23868,12,11.500,11.500,'+ -','',0,'2018-04-11',2290,NULL,2,48.000,NULL,'',NULL,'41',0),(23869,18,11.500,11.500,'+ -','',0,'2018-04-11',2292,NULL,2,34.000,NULL,'',NULL,'41',0),(23870,14,19.000,17.000,'+ -','',0,'2018-04-11',2292,NULL,2,4.000,NULL,'',NULL,'41',0),(23871,14,21.600,21.400,'+ -','',0,'2018-04-11',2292,NULL,2,11.000,NULL,'',NULL,'41',0),(23872,14,21.700,21.700,'+ -','',0,'2018-04-11',2292,NULL,2,3.000,NULL,'',NULL,'41',0),(23873,12,11.500,11.500,'+ -','',0,'2018-04-11',2292,NULL,2,36.000,NULL,'',NULL,'41',0),(23874,15,0.500,5.000,'+ -','Derecho',0,'2018-04-12',1,NULL,7,425.000,NULL,'',NULL,'41',0),(23875,3,13.500,35.500,'','',4,'2018-04-12',2,NULL,7,38000.000,NULL,'',NULL,'41',0),(23876,15,0.500,5.000,'+ -','Derecho',0,'2018-04-12',3,NULL,2,1.000,NULL,'',NULL,'41',0),(23877,9,2.600,2.600,'-','',6,'2018-04-12',61,NULL,2,1.000,NULL,'carril bici',NULL,'41',0),(23878,15,2.100,2.100,'-','Derecho',0,'2018-04-12',905,NULL,2,1.000,NULL,'',NULL,'41',0),(23879,3,28.800,28.800,'-','Derecho',0,'2018-04-12',911,NULL,2,1.000,NULL,'',NULL,'41',0),(23880,3,35.100,35.150,'+','Derecho',0,'2018-04-12',911,NULL,2,1.000,NULL,'',NULL,'41',0),(23881,3,28.800,28.800,'-','Derecho',0,'2018-04-12',1280,NULL,2,1.000,NULL,'',NULL,'41',0),(23882,3,16.000,16.000,'-','',6,'2018-04-12',2133,NULL,10,14.200,NULL,'',NULL,'41',0),(23883,9,2.000,2.000,'-','izquierdo',0,'2018-04-12',2203,NULL,2,1.000,NULL,'',NULL,'41',0),(23884,9,3.700,3.700,'+','izquierdo',0,'2018-04-12',2203,NULL,2,1.000,NULL,'',NULL,'41',0),(23885,9,2.000,2.000,'+','izquierdo',0,'2018-04-12',2212,NULL,2,1.000,NULL,'',NULL,'41',0),(23886,9,3.700,3.700,'-','izquierdo',0,'2018-04-12',2212,NULL,2,1.000,NULL,'',NULL,'41',0),(23887,9,2.000,2.000,'+','izquierdo',0,'2018-04-12',2224,NULL,2,1.000,NULL,'',NULL,'41',0),(23888,8,5.000,5.000,'-','',0,'2018-04-12',2416,NULL,7,41.200,NULL,'',NULL,'41',0),(23889,3,16.000,16.000,'-','',6,'2018-04-12',3002,NULL,12,6.000,NULL,'',NULL,'41',0),(23890,3,16.000,16.000,'-','',6,'2018-04-12',3007,NULL,12,12.000,NULL,'',NULL,'41',0),(23891,3,16.000,16.000,'-','',6,'2018-04-12',3013,NULL,12,6.000,NULL,'',NULL,'41',0),(23892,3,16.000,16.000,'-','',6,'2018-04-12',3112,NULL,12,6.000,NULL,'',NULL,'41',0),(23893,3,16.000,16.000,'-','',6,'2018-04-12',3201,NULL,12,12.000,NULL,'',NULL,'41',0),(23894,3,16.000,16.000,'-','',6,'2018-04-12',3210,NULL,12,6.000,NULL,'',NULL,'41',0),(23895,1,0.500,0.500,'-','Derecho',5,'2018-04-13',21,NULL,2,1.000,NULL,'',NULL,'41',0),(23896,1,0.500,0.500,'-','Derecho',5,'2018-04-13',21,NULL,2,1.000,NULL,'',NULL,'41',0),(23897,18,5.400,4.000,'-','',0,'2018-04-13',21,NULL,2,1.000,NULL,'',NULL,'41',0),(23898,18,5.400,4.000,'-','',0,'2018-04-13',21,NULL,2,1.000,NULL,'',NULL,'41',0),(23899,18,10.000,11.500,'-','',0,'2018-04-13',21,NULL,2,1.000,NULL,'',NULL,'41',0),(23900,18,10.000,11.500,'-','',0,'2018-04-13',21,NULL,2,1.000,NULL,'',NULL,'41',0),(23901,3,27.700,27.700,'+','Derecho',6,'2018-04-13',42,NULL,2,1.000,NULL,'carril bici',NULL,'41',0),(23902,3,28.300,28.300,'+','Derecho',6,'2018-04-13',42,NULL,2,1.000,NULL,'carril bici',NULL,'41',0),(23903,9,3.800,3.800,'+','Derecho',5,'2018-04-13',901,NULL,2,1.000,NULL,'',NULL,'41',0),(23904,3,26.000,26.000,'+','Derecho',0,'2018-04-13',903,NULL,2,1.000,NULL,'',NULL,'41',0),(23905,3,19.600,19.600,'+','izquierdo',0,'2018-04-13',907,NULL,2,1.000,NULL,'',NULL,'41',0),(23906,3,29.500,29.600,'+','Derecho',0,'2018-04-13',911,NULL,2,1.000,NULL,'',NULL,'41',0),(23907,1,0.500,0.500,'-','Derecho',5,'2018-04-13',2016,NULL,11,12.500,NULL,'',NULL,'41',0),(23908,1,0.500,0.500,'-','Derecho',5,'2018-04-13',2016,NULL,11,70.500,NULL,'',NULL,'41',0),(23909,18,5.400,4.000,'-','',0,'2018-04-13',2016,NULL,11,140.500,NULL,'',NULL,'41',0),(23910,18,5.400,4.000,'-','',0,'2018-04-13',2016,NULL,11,427.500,NULL,'',NULL,'41',0),(23911,18,10.000,11.500,'-','',0,'2018-04-13',2016,NULL,11,180.500,NULL,'',NULL,'41',0),(23912,18,10.000,11.500,'-','',0,'2018-04-13',2016,NULL,11,360.400,NULL,'',NULL,'41',0),(23913,3,20.600,20.600,'-','Derecho',0,'2018-04-15',902,NULL,2,1.000,NULL,'',NULL,'41',0),(23914,1,10.050,10.050,'+','',0,'2018-04-15',908,NULL,2,1.000,NULL,'',NULL,'41',0),(23915,5,0.500,4.800,'+ -','Derecho',0,'2018-04-16',1,NULL,7,360.000,NULL,'',NULL,'41',0),(23916,3,48.850,49.000,'+','',0,'2018-04-16',1,NULL,7,150.000,NULL,'',NULL,'41',0),(23917,15,0.500,5.000,'+ -','Derecho',0,'2018-04-16',1,NULL,7,930.000,NULL,'',NULL,'41',0),(23918,15,3.300,3.300,'+ -','Derecho',0,'2018-04-16',1,NULL,7,75.000,NULL,'',NULL,'41',0),(23919,19,3.000,4.500,'+ -','',0,'2018-04-16',2,NULL,7,3000.000,NULL,'',NULL,'41',0),(23920,5,0.500,4.800,'+ -','Derecho',0,'2018-04-16',3,NULL,2,1.000,NULL,'',NULL,'41',0),(23921,3,48.850,49.000,'+','',0,'2018-04-16',3,NULL,2,1.000,NULL,'',NULL,'41',0),(23922,15,3.300,3.300,'+ -','Derecho',0,'2018-04-16',3,NULL,2,1.000,NULL,'',NULL,'41',0),(23923,3,14.100,14.100,'-','Derecho',4,'2018-04-16',21,NULL,2,1.000,NULL,'',NULL,'41',0),(23924,3,14.100,14.100,'-','Derecho',4,'2018-04-16',21,NULL,2,1.000,NULL,'',NULL,'41',0),(23925,10,6.000,6.000,'+ -','',0,'2018-04-16',201,NULL,2,1.000,NULL,'',NULL,'41',0),(23926,22,12.000,7.000,'+ -','',0,'2018-04-16',201,NULL,2,1.000,NULL,'',NULL,'41',0),(23927,3,35.100,35.100,'+','Derecho',0,'2018-04-16',903,NULL,2,1.000,NULL,'',NULL,'41',0),(23928,3,28.100,28.100,'-','Derecho',0,'2018-04-16',909,NULL,2,1.000,NULL,'',NULL,'41',0),(23929,3,13.700,13.700,'+','Derecho',0,'2018-04-16',1280,NULL,2,1.000,NULL,'',NULL,'41',0),(23930,3,15.600,15.600,'+','Derecho',0,'2018-04-16',1280,NULL,2,1.000,NULL,'',NULL,'41',0),(23931,3,14.100,14.100,'-','Derecho',4,'2018-04-16',2016,NULL,11,10.600,NULL,'',NULL,'41',0),(23932,3,14.100,14.100,'-','Derecho',4,'2018-04-16',2016,NULL,11,84.500,NULL,'',NULL,'41',0),(23933,3,23.100,23.100,'+','izquierdo',5,'2018-04-16',2201,NULL,2,1.000,NULL,'salida a Tres Cantos',NULL,'41',0),(23934,3,17.000,17.000,'-','izquierdo',4,'2018-04-16',2203,NULL,2,1.000,NULL,'salida a M-616',NULL,'41',0),(23935,3,18.300,18.300,'-','Derecho',0,'2018-04-16',2204,NULL,2,1.000,NULL,'',NULL,'41',0),(23936,3,17.000,17.000,'-','izquierdo',4,'2018-04-16',2212,NULL,2,1.000,NULL,'',NULL,'41',0),(23937,3,28.400,28.400,'-','Derecho',0,'2018-04-16',2212,NULL,2,1.000,NULL,'',NULL,'41',0),(23938,3,20.600,20.600,'-','Derecho',0,'2018-04-16',2224,NULL,2,1.000,NULL,'',NULL,'41',0),(23939,7,31.000,33.000,'+ -','',0,'2018-04-16',2290,NULL,2,16.000,NULL,'h.arista antifauna',NULL,'41',0),(23940,3,17.600,17.600,'-','Derecho',0,'2018-04-16',2416,NULL,7,24.800,NULL,'',NULL,'41',0),(23941,3,20.700,20.700,'-','Derecho',4,'2018-04-16',2416,NULL,7,37.200,NULL,'',NULL,'41',0),(23942,3,17.600,17.600,'-','Derecho',0,'2018-04-16',3005,NULL,12,3.000,NULL,'',NULL,'41',0),(23943,3,20.700,20.700,'-','Derecho',4,'2018-04-16',3005,NULL,12,3.000,NULL,'',NULL,'41',0),(23944,3,17.600,17.600,'-','Derecho',0,'2018-04-16',3109,NULL,12,1.000,NULL,'',NULL,'41',0),(23945,3,20.700,20.700,'-','Derecho',4,'2018-04-16',3109,NULL,12,1.000,NULL,'',NULL,'41',0),(23946,3,17.600,17.600,'-','Derecho',0,'2018-04-16',3202,NULL,12,1.000,NULL,'',NULL,'41',0),(23947,3,20.700,20.700,'-','Derecho',4,'2018-04-16',3202,NULL,12,1.000,NULL,'',NULL,'41',0),(23948,3,35.500,58.400,'+ -','',0,'2018-04-17',2,NULL,7,46000.000,NULL,'',NULL,'41',0),(23949,1,20.000,20.000,'-','',0,'2018-04-17',100,NULL,7,4.000,NULL,'',NULL,'41',0),(23950,3,56.900,56.900,'+','Derecho',5,'2018-04-17',100,NULL,7,4.000,NULL,'',NULL,'41',0),(23951,8,5.400,5.400,'+','Derecho',0,'2018-04-17',100,NULL,7,8.000,NULL,'',NULL,'41',0),(23952,3,14.000,14.000,'-','Derecho',6,'2018-04-17',903,NULL,2,1.000,NULL,'pasarela',NULL,'41',0),(23953,3,14.300,14.300,'+','Derecho',6,'2018-04-17',903,NULL,2,1.000,NULL,'pasarela',NULL,'41',0),(23954,2,38.000,38.000,'-','',0,'2018-04-17',906,NULL,2,1.000,NULL,'',NULL,'41',0),(23955,3,56.900,56.950,'+','Derecho',5,'2018-04-17',909,NULL,2,1.000,NULL,'',NULL,'41',0),(23956,3,20.700,20.700,'-','Derecho',0,'2018-04-17',1280,NULL,2,1.000,NULL,'',NULL,'41',0),(23957,3,23.900,23.900,'-','Derecho',0,'2018-04-17',1280,NULL,2,1.000,NULL,'',NULL,'41',0),(23958,16,14.300,14.300,'-','Derecho',5,'2018-04-17',2212,NULL,2,1.000,NULL,'',NULL,'41',0),(23959,15,5.200,5.200,'+','Derecho',5,'2018-04-17',2223,NULL,2,1.000,NULL,'',NULL,'41',0),(23960,3,26.300,26.300,'+','Derecho',0,'2018-04-17',2224,NULL,2,1.000,NULL,'',NULL,'41',0),(23961,1,20.000,20.000,'-','',0,'2018-04-17',2402,NULL,7,12.000,NULL,'',NULL,'41',0),(23962,3,56.900,56.900,'+','Derecho',5,'2018-04-17',2402,NULL,7,24.000,NULL,'',NULL,'41',0),(23963,8,5.400,5.400,'+','Derecho',0,'2018-04-17',2402,NULL,7,48.000,NULL,'',NULL,'41',0),(23964,2,13.800,41.400,'+ -','',0,'2018-04-18',2,NULL,7,30200.000,NULL,'',NULL,'41',0),(23965,3,32.600,32.600,'+','Ambos',0,'2018-04-18',21,NULL,2,1.000,NULL,'',NULL,'41',0),(23966,3,32.600,32.600,'+','Ambos',0,'2018-04-18',21,NULL,2,1.000,NULL,'',NULL,'41',0),(23967,3,43.900,43.900,'+','Derecho',0,'2018-04-18',21,NULL,2,1.000,NULL,'',NULL,'41',0),(23968,3,43.900,43.900,'+','Derecho',0,'2018-04-18',21,NULL,2,1.000,NULL,'',NULL,'41',0),(23969,3,20.500,20.500,'+','izquierdo',0,'2018-04-18',100,NULL,7,8.000,NULL,'',NULL,'41',0),(23970,3,20.700,20.700,'+','izquierdo',0,'2018-04-18',100,NULL,7,8.000,NULL,'',NULL,'41',0),(23971,3,32.600,32.600,'+','Ambos',0,'2018-04-18',2016,NULL,11,60.500,NULL,'',NULL,'41',0),(23972,3,43.900,43.900,'+','Derecho',0,'2018-04-18',2016,NULL,11,18.400,NULL,'',NULL,'41',0),(23973,3,43.900,43.900,'+','Derecho',0,'2018-04-18',2016,NULL,11,94.500,NULL,'',NULL,'41',0),(23974,5,1.300,1.300,'-','Derecho',0,'2018-04-18',2203,NULL,2,1.000,NULL,'',NULL,'41',0),(23975,5,2.700,2.700,'-','Derecho',0,'2018-04-18',2203,NULL,2,1.000,NULL,'',NULL,'41',0),(23976,5,2.750,2.750,'-','Derecho',0,'2018-04-18',2212,NULL,2,1.000,NULL,'',NULL,'41',0),(23977,3,48.700,48.700,'+','izquierdo',0,'2018-04-18',2224,NULL,2,1.000,NULL,'',NULL,'41',0),(23978,3,54.100,54.100,'-','izquierdo',0,'2018-04-18',2224,NULL,2,1.000,NULL,'',NULL,'41',0),(23979,3,20.500,20.500,'+','izquierdo',0,'2018-04-18',2402,NULL,7,48.000,NULL,'',NULL,'41',0),(23980,3,20.700,20.700,'+','izquierdo',0,'2018-04-18',2402,NULL,7,36.000,NULL,'',NULL,'41',0),(23981,15,5.200,5.200,'+ -','Ambos',4,'2018-04-19',2,NULL,7,8300.000,NULL,'',NULL,'41',0),(23982,87,1.400,1.400,'+ -','',0,'2018-04-19',2,NULL,7,3000.000,NULL,'',NULL,'41',0),(23983,13,8.500,8.500,'+ -','',0,'2018-04-19',21,NULL,2,1.000,NULL,'',NULL,'41',0),(23984,11,1.700,1.700,'+ -','',0,'2018-04-19',21,NULL,2,1.000,NULL,'',NULL,'41',0),(23985,3,21.000,21.000,'+','izquierdo',0,'2018-04-19',100,NULL,7,4.000,NULL,'',NULL,'41',0),(23986,3,21.300,21.300,'+','izquierdo',0,'2018-04-19',100,NULL,7,4.000,NULL,'',NULL,'41',0),(23987,9,2.950,2.950,'+','Derecho',4,'2018-04-19',100,NULL,7,4.000,NULL,'',NULL,'41',0),(23988,3,19.500,19.500,'+','izquierdo',0,'2018-04-19',903,NULL,2,1.000,NULL,'',NULL,'41',0),(23989,3,19.000,19.000,'+','Derecho',0,'2018-04-19',904,NULL,2,1.000,NULL,'',NULL,'41',0),(23990,3,14.500,14.500,'-','Derecho',4,'2018-04-19',909,NULL,2,1.000,NULL,'',NULL,'41',0),(23991,3,14.000,14.000,'','',6,'2018-04-19',2086,NULL,10,4.000,NULL,'',NULL,'41',0),(23992,3,14.500,14.500,'','',6,'2018-04-19',2086,NULL,10,4.000,NULL,'',NULL,'41',0),(23993,3,14.000,14.000,'','',6,'2018-04-19',2100,NULL,3,1.000,NULL,'',NULL,'41',0),(23994,3,14.500,14.500,'','',6,'2018-04-19',2100,NULL,3,1.000,NULL,'',NULL,'41',0),(23995,1,20.180,20.180,'-','Derecho',0,'2018-04-19',2200,NULL,2,1.000,NULL,'',NULL,'41',0),(23996,3,21.000,21.000,'+','izquierdo',0,'2018-04-19',2402,NULL,7,24.000,NULL,'',NULL,'41',0),(23997,3,21.300,21.300,'+','izquierdo',0,'2018-04-19',2402,NULL,7,24.000,NULL,'',NULL,'41',0),(23998,9,2.950,2.950,'+','Derecho',4,'2018-04-19',2402,NULL,7,12.000,NULL,'',NULL,'41',0),(23999,3,21.000,21.000,'+','izquierdo',0,'2018-04-19',2406,NULL,7,24.000,NULL,'',NULL,'41',0),(24000,3,21.300,21.300,'+','izquierdo',0,'2018-04-19',2406,NULL,7,16.000,NULL,'',NULL,'41',0),(24001,9,1.800,1.800,'-','Derecho',0,'2018-04-19',2416,NULL,7,4.000,NULL,'',NULL,'41',0),(24002,5,0.500,4.000,'+ -','Derecho',0,'2018-04-20',1,NULL,7,350.000,NULL,'',NULL,'41',0),(24003,3,14.000,16.000,'-','Derecho',5,'2018-04-20',1,NULL,7,180.000,NULL,'',NULL,'41',0),(24004,3,14.000,23.000,'+ -','',0,'2018-04-20',1,NULL,7,330.000,NULL,'',NULL,'41',0),(24005,9,3.800,3.800,'+ -','Derecho',0,'2018-04-20',1,NULL,7,280.000,NULL,'',NULL,'41',0),(24006,5,0.500,4.000,'+ -','Derecho',0,'2018-04-20',3,NULL,2,1.000,NULL,'',NULL,'41',0),(24007,3,14.000,23.000,'+ -','Derecho',0,'2018-04-20',3,NULL,2,1.000,NULL,'',NULL,'41',0),(24008,3,14.000,16.000,'-','Derecho',5,'2018-04-20',3,NULL,2,1.000,NULL,'',NULL,'41',0),(24009,9,3.800,3.800,'+ -','Derecho',0,'2018-04-20',3,NULL,2,1.000,NULL,'',NULL,'41',0),(24010,18,10.200,10.200,'+','',0,'2018-04-20',21,NULL,2,1.000,NULL,'',NULL,'41',0),(24011,10,4.800,4.800,'-','',0,'2018-04-20',21,NULL,2,1.000,NULL,'',NULL,'41',0),(24012,10,4.900,4.900,'-','',0,'2018-04-20',21,NULL,2,1.000,NULL,'',NULL,'41',0),(24013,4,0.700,0.700,'-','',0,'2018-04-20',21,NULL,2,1.000,NULL,'',NULL,'41',0),(24014,3,16.000,16.000,'-','Derecho',0,'2018-04-20',87,NULL,2,1.000,NULL,'',NULL,'41',0),(24015,1,15.500,15.500,'+','',0,'2018-04-20',100,NULL,7,4.000,NULL,'',NULL,'41',0),(24016,3,20.000,20.000,'+','Derecho',0,'2018-04-20',910,NULL,2,1.000,NULL,'',NULL,'41',0),(24017,15,3.200,3.200,'+','Derecho',5,'2018-04-20',911,NULL,2,1.000,NULL,'',NULL,'41',0),(24018,3,16.000,16.000,'-','Derecho',0,'2018-04-20',912,NULL,2,1.000,NULL,'',NULL,'41',0),(24019,15,3.200,3.200,'+','Derecho',5,'2018-04-20',1800,NULL,4,0.100,NULL,'',NULL,'41',0),(24020,1,15.500,15.500,'+','',0,'2018-04-20',2402,NULL,7,16.000,NULL,'',NULL,'41',0),(24021,24,1.600,7.500,'+ -','',0,'2018-04-25',2,NULL,7,12000.000,NULL,'',NULL,'42',0),(24022,18,11.700,11.700,'+ -','',0,'2018-05-07',2,NULL,7,23000.000,NULL,'',NULL,'42',0),(24023,21,3.250,3.250,'+ -','',0,'2018-05-07',2,NULL,7,7000.000,NULL,'',NULL,'42',0),(24024,26,7.600,7.600,'+ -','',0,'2018-05-07',2,NULL,7,15000.000,NULL,'',NULL,'42',0),(24025,9,3.800,3.800,'+ -','Ambos',4,'2018-05-08',2,NULL,7,16000.000,NULL,'',NULL,'42',0),(24026,14,4.700,24.000,'+ -','',0,'2018-05-08',2,NULL,7,38000.000,NULL,'',NULL,'42',0),(24027,10,5.700,5.700,'+ -','',0,'2018-05-09',2,NULL,7,11000.000,NULL,'',NULL,'42',0),(24028,4,1.750,1.750,'+ -','',0,'2018-05-09',2,NULL,7,3500.000,NULL,'',NULL,'42',0),(24029,19,3.500,3.500,'+ -','',0,'2018-05-09',2,NULL,7,7000.000,NULL,'',NULL,'42',0),(24030,13,12.000,12.000,'+ -','',0,'2018-05-10',2,NULL,7,24000.000,NULL,'',NULL,'42',0),(24031,11,2.910,2.910,'+ -','',0,'2018-05-10',2,NULL,7,6000.000,NULL,'',NULL,'42',0),(24032,12,12.150,12.150,'+ -','',0,'2018-05-17',2,NULL,7,24000.000,NULL,'',NULL,'42',0),(24033,22,16.700,16.700,'+ -','',0,'2018-05-21',2,NULL,7,32000.000,NULL,'',NULL,'43',0),(24034,16,14.000,14.000,'+ -','',0,'2018-05-22',2,NULL,7,28000.000,NULL,'',NULL,'43',0),(24035,1,0.500,20.000,'+ -','',0,'2018-05-23',2,NULL,7,39000.000,NULL,'',NULL,'43',0),(24036,7,25.700,42.000,'+ -','',0,'2018-05-24',2,NULL,7,33000.000,NULL,'',NULL,'43',0),(24037,8,6.700,6.700,'+ -','',0,'2018-05-24',2,NULL,7,13000.000,NULL,'',NULL,'43',0),(24038,5,4.900,4.900,'+ -','Ambos',0,'2018-05-28',2,NULL,7,20000.000,NULL,'',NULL,'43',0),(24039,6,0.900,5.500,'+ -','',0,'2018-05-28',2,NULL,7,9000.000,NULL,'',NULL,'43',0),(24040,3,13.500,35.500,'+','Ambos',0,'2018-05-29',2,NULL,7,44000.000,NULL,'',NULL,'43',0),(24041,3,13.500,35.500,'-','Ambos',0,'2018-05-30',2,NULL,7,44000.000,NULL,'',NULL,'43',0),(24042,3,13.500,35.500,'','',4,'2018-05-31',2,NULL,7,38000.000,NULL,'',NULL,'43',0),(24043,3,35.500,58.400,'+ -','',0,'2018-06-04',2,NULL,7,46000.000,NULL,'',NULL,'43',0),(24044,2,13.800,41.400,'+ -','',0,'2018-06-05',2,NULL,7,30200.000,NULL,'',NULL,'43',0),(24045,15,5.200,5.200,'+ -','Ambos',4,'2018-06-06',2,NULL,7,8300.000,NULL,'',NULL,'43',0),(24046,87,1.400,1.400,'+ -','',0,'2018-06-06',2,NULL,7,3000.000,NULL,'',NULL,'43',0),(24047,24,1.600,7.500,'+ -','',0,'2018-06-07',2,NULL,7,12000.000,NULL,'',NULL,'43',0),(24048,18,11.700,11.700,'+ -','',0,'2018-06-11',2,NULL,7,23000.000,NULL,'',NULL,'43',0),(24049,21,3.250,3.250,'+ -','',0,'2018-06-11',2,NULL,7,7000.000,NULL,'',NULL,'43',0),(24050,26,7.600,7.600,'+ -','',0,'2018-06-11',2,NULL,7,15000.000,NULL,'',NULL,'43',0),(24051,9,3.800,3.800,'+ -','Ambos',4,'2018-06-12',2,NULL,7,16000.000,NULL,'',NULL,'43',0),(24052,14,4.700,24.000,'+ -','',0,'2018-06-13',2,NULL,7,38000.000,NULL,'',NULL,'43',0),(24053,10,5.700,5.700,'+ -','',0,'2018-06-14',2,NULL,7,11000.000,NULL,'',NULL,'43',0),(24054,4,1.750,1.750,'+ -','',0,'2018-06-14',2,NULL,7,3500.000,NULL,'',NULL,'43',0),(24055,19,3.500,3.500,'+ -','',0,'2018-06-14',2,NULL,7,7000.000,NULL,'',NULL,'43',0),(24056,13,12.000,12.000,'+ -','',0,'2018-06-18',2,NULL,7,24000.000,NULL,'',NULL,'43',0),(24057,11,2.910,2.910,'+ -','',0,'2018-06-18',2,NULL,7,6000.000,NULL,'',NULL,'43',0),(24058,12,12.150,12.150,'+ -','',0,'2018-06-19',2,NULL,7,24000.000,NULL,'',NULL,'43',0),(24059,22,16.700,16.700,'+ -','',0,'2018-06-20',2,NULL,7,32000.000,NULL,'',NULL,'44',0),(24060,16,14.000,14.000,'+ -','',0,'2018-06-21',2,NULL,7,28000.000,NULL,'',NULL,'44',0),(24061,1,0.500,20.000,'+ -','',0,'2018-06-22',2,NULL,7,39000.000,NULL,'',NULL,'44',0),(24062,5,4.900,4.900,'+ -','Ambos',0,'2018-06-25',2,NULL,7,20000.000,NULL,'',NULL,'44',0),(24063,7,25.700,42.000,'+ -','',0,'2018-06-25',2,NULL,7,33000.000,NULL,'',NULL,'44',0),(24064,8,6.700,6.700,'+ -','',0,'2018-06-25',2,NULL,7,13000.000,NULL,'',NULL,'44',0),(24065,6,0.900,5.500,'+ -','',0,'2018-06-26',2,NULL,7,9000.000,NULL,'',NULL,'44',0),(24066,3,13.500,35.500,'+','Ambos',0,'2018-06-27',2,NULL,7,44000.000,NULL,'',NULL,'44',0),(24067,3,13.500,35.500,'-','Ambos',0,'2018-07-02',2,NULL,7,44000.000,NULL,'',NULL,'44',0),(24068,3,13.500,35.500,'','',4,'2018-07-03',2,NULL,7,38000.000,NULL,'',NULL,'44',0),(24069,3,35.500,58.400,'+ -','',0,'2018-07-04',2,NULL,7,46000.000,NULL,'',NULL,'44',0),(24070,2,13.800,41.400,'+ -','',0,'2018-07-05',2,NULL,7,30200.000,NULL,'',NULL,'44',0),(24071,15,5.200,5.200,'+ -','Ambos',4,'2018-07-06',2,NULL,7,8300.000,NULL,'',NULL,'44',0),(24072,87,1.400,1.400,'+ -','',0,'2018-07-06',2,NULL,7,3000.000,NULL,'',NULL,'44',0),(24073,24,1.600,7.500,'+ -','',0,'2018-07-09',2,NULL,7,12000.000,NULL,'',NULL,'44',0),(24074,18,11.700,11.700,'+ -','',0,'2018-07-10',2,NULL,7,23000.000,NULL,'',NULL,'44',0),(24075,21,3.250,3.250,'+ -','',0,'2018-07-10',2,NULL,7,7000.000,NULL,'',NULL,'44',0),(24076,26,7.600,7.600,'+ -','',0,'2018-07-10',2,NULL,7,15000.000,NULL,'',NULL,'44',0),(24077,9,3.800,3.800,'+ -','Ambos',4,'2018-07-12',2,NULL,7,16000.000,NULL,'',NULL,'44',0),(24078,14,4.700,24.000,'+ -','',0,'2018-07-12',2,NULL,7,38000.000,NULL,'',NULL,'44',0),(24079,10,5.700,5.700,'+ -','',0,'2018-07-16',2,NULL,7,11000.000,NULL,'',NULL,'44',0),(24080,4,1.750,1.750,'+ -','',0,'2018-07-16',2,NULL,7,3500.000,NULL,'',NULL,'44',0),(24081,19,3.500,3.500,'+ -','',0,'2018-07-16',2,NULL,7,7000.000,NULL,'',NULL,'44',0),(24082,13,12.000,12.000,'+ -','',0,'2018-07-17',2,NULL,7,24000.000,NULL,'',NULL,'44',0),(24083,11,2.910,2.910,'+ -','',0,'2018-07-17',2,NULL,7,6000.000,NULL,'',NULL,'44',0),(24084,12,12.150,12.150,'+ -','',0,'2018-07-18',2,NULL,7,24000.000,NULL,'',NULL,'44',0),(24085,22,16.700,16.700,'+ -','',0,'2018-07-19',2,NULL,7,32000.000,NULL,'',NULL,'44',0),(24086,16,14.000,14.000,'+ -','',0,'2018-07-23',2,NULL,7,28000.000,NULL,'',NULL,'45',0),(24087,1,0.500,20.000,'+ -','',0,'2018-07-24',2,NULL,7,39000.000,NULL,'',NULL,'45',0),(24088,7,25.700,42.000,'+ -','',0,'2018-07-25',2,NULL,7,33000.000,NULL,'',NULL,'45',0),(24089,8,6.700,6.700,'+ -','',0,'2018-07-25',2,NULL,7,13000.000,NULL,'',NULL,'45',0),(24090,5,4.900,4.900,'+ -','Ambos',0,'2018-07-26',2,NULL,7,20000.000,NULL,'',NULL,'45',0),(24091,6,0.900,5.500,'+ -','',0,'2018-07-30',2,NULL,7,9000.000,NULL,'',NULL,'45',0),(24092,3,13.500,35.500,'+','Ambos',0,'2018-07-31',2,NULL,7,44000.000,NULL,'',NULL,'45',0),(24093,3,13.500,35.500,'-','Ambos',0,'2018-08-01',2,NULL,7,44000.000,NULL,'',NULL,'45',0),(24094,3,13.500,35.500,'','',4,'2018-08-02',2,NULL,7,38000.000,NULL,'',NULL,'45',0),(24095,3,35.500,58.400,'+ -','',0,'2018-08-06',2,NULL,7,46000.000,NULL,'',NULL,'45',0),(24096,2,13.800,41.400,'+ -','',0,'2018-08-07',2,NULL,7,30200.000,NULL,'',NULL,'45',0),(24097,15,5.200,5.200,'+ -','Ambos',4,'2018-08-08',2,NULL,7,8300.000,NULL,'',NULL,'45',0),(24098,87,1.400,1.400,'+ -','',0,'2018-08-08',2,NULL,7,3000.000,NULL,'',NULL,'45',0),(24099,24,1.600,7.500,'+ -','',0,'2018-08-20',2,NULL,7,12000.000,NULL,'',NULL,'45',0),(24100,18,11.700,11.700,'+ -','',0,'2018-08-21',2,NULL,7,23000.000,NULL,'',NULL,'45',0),(24101,21,3.250,3.250,'+ -','',0,'2018-08-21',2,NULL,7,7000.000,NULL,'',NULL,'45',0),(24102,26,7.600,7.600,'+ -','',0,'2018-08-21',2,NULL,7,15000.000,NULL,'',NULL,'45',0),(24103,9,3.800,3.800,'+ -','Ambos',4,'2018-08-22',2,NULL,7,16000.000,NULL,'',NULL,'45',0),(24104,14,4.700,24.000,'+ -','',0,'2018-08-22',2,NULL,7,38000.000,NULL,'',NULL,'45',0),(24105,10,5.700,5.700,'+ -','',0,'2018-08-23',2,NULL,7,11000.000,NULL,'',NULL,'45',0),(24106,4,1.750,1.750,'+ -','',0,'2018-08-23',2,NULL,7,3500.000,NULL,'',NULL,'45',0),(24107,19,3.500,3.500,'+ -','',0,'2018-08-23',2,NULL,7,7000.000,NULL,'',NULL,'45',0),(24108,13,12.000,12.000,'+ -','',0,'2018-08-27',2,NULL,7,24000.000,NULL,'',NULL,'45',0),(24109,11,2.910,2.910,'+ -','',0,'2018-08-27',2,NULL,7,6000.000,NULL,'',NULL,'45',0),(24110,12,12.150,12.150,'+ -','',0,'2018-08-28',2,NULL,7,24000.000,NULL,'',NULL,'45',0);
/*!40000 ALTER TABLE `partes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subgrupos`
--

DROP TABLE IF EXISTS `subgrupos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subgrupos` (
  `idsubgrupo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idsubgrupo`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subgrupos`
--

LOCK TABLES `subgrupos` WRITE;
/*!40000 ALTER TABLE `subgrupos` DISABLE KEYS */;
INSERT INTO `subgrupos` VALUES (11,'Alumbrado exterior, SeÃ±ales semafÃ³ricas y luminosas'),(12,'AtenciÃ³n accidentes e incidencias'),(7,'Balizamiento'),(8,'Barreras'),(19,'Demoliciones y excavaciones'),(20,'Firmes'),(3,'Firmes y pavimentos'),(17,'Fundentes'),(2,'Limpieza'),(22,'Mano de obra'),(23,'Maquinaria'),(16,'Marcas Viales'),(14,'Materiales Granulares'),(13,'MATERIALES GRUPO I'),(5,'MÃ¡rgenes'),(4,'Obras de FÃ¡brica y Drenaje'),(18,'Otros'),(1,'Partida alzada'),(15,'Pavimentos y Aglomerados'),(6,'SeÃ±alizaciÃ³n Vertical'),(21,'Varios'),(24,'VehÃ­culos y utillaje sin conductor'),(10,'Vialidad invernal'),(9,'Vigilancia'),(25,'Vuelos');
/*!40000 ALTER TABLE `subgrupos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_via`
--

DROP TABLE IF EXISTS `tipo_via`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_via` (
  `idtipo_via` int(11) NOT NULL AUTO_INCREMENT,
  `concepto` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtipo_via`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_via`
--

LOCK TABLES `tipo_via` WRITE;
/*!40000 ALTER TABLE `tipo_via` DISABLE KEYS */;
INSERT INTO `tipo_via` VALUES (1,'carretera'),(2,'autopista'),(3,'rural'),(4,'viadeservicio'),(5,'en/gi'),(6,'cb/pas'),(7,' ');
/*!40000 ALTER TABLE `tipo_via` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zona`
--

DROP TABLE IF EXISTS `zona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zona` (
  `idzona` int(11) NOT NULL AUTO_INCREMENT,
  `concepto` varchar(85) DEFAULT NULL,
  `red` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idzona`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zona`
--

LOCK TABLES `zona` WRITE;
/*!40000 ALTER TABLE `zona` DISABLE KEYS */;
/*!40000 ALTER TABLE `zona` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-14 20:05:28