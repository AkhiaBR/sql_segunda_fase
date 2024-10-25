-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: revenda2190
-- ------------------------------------------------------
-- Server version	5.5.20-log

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
-- Table structure for table `veiculo`
--

DROP TABLE IF EXISTS `veiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `veiculo` (
  `codigo_veiculo` int(6) NOT NULL,
  `placa` varchar(45) NOT NULL,
  `descricao` varchar(45) NOT NULL,
  `ano` int(6) NOT NULL,
  `cor` varchar(45) NOT NULL,
  `combustivel` varchar(45) NOT NULL,
  `acessorios` varchar(45) NOT NULL,
  `codigo_marca` int(6) NOT NULL,
  `codigo_categoria` int(6) NOT NULL,
  `cpf_cliente` int(11) NOT NULL,
  `codigo_modelo` int(6) NOT NULL,
  `valor` decimal(10,0) NOT NULL,
  PRIMARY KEY (`codigo_veiculo`),
  KEY `codigo_marca` (`codigo_marca`),
  KEY `codigo_categoria` (`codigo_categoria`),
  KEY `cpf_cliente` (`cpf_cliente`),
  KEY `codigo_modelo` (`codigo_modelo`),
  CONSTRAINT `veiculo_ibfk_1` FOREIGN KEY (`codigo_marca`) REFERENCES `marca` (`codigo_marca`),
  CONSTRAINT `veiculo_ibfk_2` FOREIGN KEY (`codigo_categoria`) REFERENCES `categoria` (`codigo_categoria`),
  CONSTRAINT `veiculo_ibfk_3` FOREIGN KEY (`cpf_cliente`) REFERENCES `cliente` (`cpf_cliente`),
  CONSTRAINT `veiculo_ibfk_4` FOREIGN KEY (`codigo_modelo`) REFERENCES `modelo` (`codigo_modelo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veiculo`
--

LOCK TABLES `veiculo` WRITE;
/*!40000 ALTER TABLE `veiculo` DISABLE KEYS */;
INSERT INTO `veiculo` VALUES (1,'QWE23UT','Carro',2005,'Vermelho','Gasolina','Aerofólio',1,1,1,1,876294),(2,'SLVF7HJ','Caminhão',2001,'Branco','Diesel','Escapamento',2,2,2,2,40294),(3,'HJJ56UT','Carro',2013,'Amarelo','Gasolina','Aerofólio',3,3,3,3,20394),(4,'NGF24FT','Moto',2012,'Preto','Etanol','Faról',4,4,4,4,3294),(5,'MWETRUT','Carro',2015,'Verde','Gasolina','Aerofólio',5,5,5,5,8294);
/*!40000 ALTER TABLE `veiculo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-18 15:38:12
