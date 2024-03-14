-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: tester
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `bestellungen_oktober`
--

DROP TABLE IF EXISTS `bestellungen_oktober`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bestellungen_oktober` (
  `KndNr` int NOT NULL,
  `BestellungsNr` int NOT NULL AUTO_INCREMENT,
  `Datum` date NOT NULL,
  PRIMARY KEY (`BestellungsNr`),
  KEY `KndNr` (`KndNr`),
  KEY `Datum` (`Datum`)
) ENGINE=InnoDB AUTO_INCREMENT=987657 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bestellungen_oktober`
--

LOCK TABLES `bestellungen_oktober` WRITE;
/*!40000 ALTER TABLE `bestellungen_oktober` DISABLE KEYS */;
INSERT INTO `bestellungen_oktober` VALUES (123456,987654,'2014-10-15'),(123456,987655,'2014-10-16'),(123457,987656,'2014-10-16');
/*!40000 ALTER TABLE `bestellungen_oktober` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kreditkarten`
--

DROP TABLE IF EXISTS `kreditkarten`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kreditkarten` (
  `KartenNr` bigint NOT NULL AUTO_INCREMENT,
  `Firma` tinytext NOT NULL,
  `KndNr` bigint NOT NULL,
  `Ablaufdatum` date NOT NULL,
  PRIMARY KEY (`KartenNr`)
) ENGINE=InnoDB AUTO_INCREMENT=12351 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kreditkarten`
--

LOCK TABLES `kreditkarten` WRITE;
/*!40000 ALTER TABLE `kreditkarten` DISABLE KEYS */;
INSERT INTO `kreditkarten` VALUES (12345,'VISA',123457,'2019-05-01'),(12346,'Mastercard',123459,'2020-01-01'),(12348,'American Express',123459,'2019-05-01'),(12349,'Diners Club',123458,'2022-02-01'),(12350,'VISA',123458,'2017-03-01');
/*!40000 ALTER TABLE `kreditkarten` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kunden`
--

DROP TABLE IF EXISTS `kunden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kunden` (
  `KndNr` bigint NOT NULL,
  `Nachname` tinytext NOT NULL,
  `Vorname` tinytext NOT NULL,
  `Strasse` tinytext NOT NULL,
  `PLZ` text NOT NULL,
  `Ort` tinytext NOT NULL,
  PRIMARY KEY (`KndNr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kunden`
--

LOCK TABLES `kunden` WRITE;
/*!40000 ALTER TABLE `kunden` DISABLE KEYS */;
INSERT INTO `kunden` VALUES (123456,'Mustermann','Max','Musterweg 1','12345','Musterstadt'),(123457,'Musterfrau','Katrin','Musterstraße 7','12345','Musterstadt'),(123458,'Müller','Lieschen','Beispielweg 3','23987','Irgendwo'),(123459,'Schmidt','Hans','Hauptstraße 2','98765','Anderswo'),(123460,'Becker','Heinz','Mustergasse 4','12543','Musterdorf');
/*!40000 ALTER TABLE `kunden` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positionen`
--

DROP TABLE IF EXISTS `positionen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `positionen` (
  `PositionsNr` bigint NOT NULL AUTO_INCREMENT,
  `BestellungsNr` bigint NOT NULL,
  `Artikel` tinytext NOT NULL,
  `Anzahl` int NOT NULL,
  `Preis` decimal(10,2) NOT NULL,
  PRIMARY KEY (`PositionsNr`)
) ENGINE=InnoDB AUTO_INCREMENT=10248 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positionen`
--

LOCK TABLES `positionen` WRITE;
/*!40000 ALTER TABLE `positionen` DISABLE KEYS */;
INSERT INTO `positionen` VALUES (10241,987654,'CD-Player',2,49.95),(10242,987654,'DVD-Player',3,59.95),(10243,987654,'CD xyz',10,15.95),(10244,987654,'DVD abc',5,9.95),(10245,987655,'CD-Player',1,51.20),(10246,987655,'CD xyz extra   ',20,16.25),(10247,987656,'DVD-Player',1,64.95);
/*!40000 ALTER TABLE `positionen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams` (
  `T_ID` int NOT NULL AUTO_INCREMENT,
  `Team` tinytext NOT NULL,
  PRIMARY KEY (`T_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'Hamburg'),(2,'München'),(3,'Berlin'),(4,'Köln');
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vorteilsclub`
--

DROP TABLE IF EXISTS `vorteilsclub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vorteilsclub` (
  `KndNr` bigint NOT NULL,
  `ClubNr` bigint NOT NULL AUTO_INCREMENT,
  `Kategorie` tinyint NOT NULL,
  PRIMARY KEY (`ClubNr`)
) ENGINE=InnoDB AUTO_INCREMENT=1417 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vorteilsclub`
--

LOCK TABLES `vorteilsclub` WRITE;
/*!40000 ALTER TABLE `vorteilsclub` DISABLE KEYS */;
INSERT INTO `vorteilsclub` VALUES (123458,1414,3),(123456,1415,1),(123460,1416,1);
/*!40000 ALTER TABLE `vorteilsclub` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-14  1:51:20
