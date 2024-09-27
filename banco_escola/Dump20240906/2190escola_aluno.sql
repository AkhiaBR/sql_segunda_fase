-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: 2190escola
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
-- Table structure for table `aluno`
--

DROP TABLE IF EXISTS `aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluno` (
  `matricula` int(6) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `endereco` varchar(40) NOT NULL,
  `telefone` int(14) NOT NULL,
  `codigo_cidade` int(6) NOT NULL,
  `codigo_curso` int(6) NOT NULL,
  `datanasc` date DEFAULT NULL,
  `bairro` varchar(20) DEFAULT NULL,
  `rg` int(12) DEFAULT NULL,
  `nomepai` varchar(20) DEFAULT NULL,
  `nomemae` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `cpf` int(12) DEFAULT NULL,
  PRIMARY KEY (`matricula`),
  KEY `codigo_cidade` (`codigo_cidade`),
  KEY `codigo_curso` (`codigo_curso`),
  CONSTRAINT `aluno_ibfk_1` FOREIGN KEY (`codigo_cidade`) REFERENCES `cidade` (`codigo_cidade`),
  CONSTRAINT `aluno_ibfk_2` FOREIGN KEY (`codigo_curso`) REFERENCES `curso` (`codigo_curso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno`
--

LOCK TABLES `aluno` WRITE;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
INSERT INTO `aluno` VALUES (1,'Fernando Gonçalves','Rua Pedro Loos',2231458,1,1,'2007-06-20','Centro',123456789,'João Carlos','Maria Luiza','aluno1@example.com',123456),(2,'Henrique Mendonça','Rua Pedro Loos',666666666,2,3,'1990-03-28','Jardim das Flores',987654321,'Pedro Henrique','Ana Paula','aluno2@example.com',987654),(3,'Lucas Oliveira','Avenida Brasil',219876543,1,2,'1997-05-12','Vila Nova',456789012,'Luiz Fernando','Sandra Regina','aluno2@example.com',456789);
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-06 16:41:21