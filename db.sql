-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: notice_board
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `assignments`
--

DROP TABLE IF EXISTS `assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assignments` (
  `subject_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `sr_no` int(11) NOT NULL,
  `given_on` date NOT NULL,
  `deadline_a1` date NOT NULL,
  `deadline_a2` date NOT NULL,
  `deadline_a3` date NOT NULL,
  `deadline_a4` date NOT NULL,
  `deadline_b1` date NOT NULL,
  `deadline_b2` date NOT NULL,
  `deadline_b3` date NOT NULL,
  `deadline_b4` date NOT NULL,
  `links` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sr_no`,`subject_id`),
  KEY `fk3_idx` (`subject_id`),
  CONSTRAINT `fk3` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignments`
--

LOCK TABLES `assignments` WRITE;
/*!40000 ALTER TABLE `assignments` DISABLE KEYS */;
INSERT INTO `assignments` VALUES (1,'assignment 1',1,'2020-03-20','2020-03-27','2020-03-28','2020-03-29','2020-03-29','2020-03-27','2020-03-27','2020-03-28','2020-03-28','https://www.geeksforgeeks.org/compiler-construction-tools/'),(2,'data mining assignment',1,'2020-02-16','2020-02-23','2020-02-23','2020-02-24','2020-02-23','2020-02-24','2020-02-24','2020-02-23','2020-02-23','https://www.geeksforgeeks.org/understanding-data-attribute-types-qualitative-and-quantitative/'),(3,'assignment',1,'2020-03-12','2020-03-20','2020-03-20','2020-03-21','2020-03-21','2020-03-20','2020-03-21','2020-03-20','2020-03-21','http://tryqa.com/what-are-the-software-development-models/'),(4,'quiz1',1,'2020-02-25','2020-02-25','2020-02-25','2020-02-25','2020-02-25','2020-02-25','2020-02-25','2020-02-25','2020-02-25','https://www.geeksforgeeks.org/traditional-symmetric-ciphers/'),(5,'quiz1',1,'2020-02-04','2020-02-04','2020-02-04','2020-02-04','2020-02-04','2020-02-04','2020-02-04','2020-02-04','2020-02-04',NULL),(1,'quiz',2,'2020-03-25','2020-03-26','2020-03-26','2020-03-26','2020-03-26','2020-03-26','2020-03-26','2020-03-26','2020-03-26','https://www.sanfoundry.com/compilers-multiple-choice-questions-answers/'),(2,'datawarehousing assignment',2,'2020-02-20','2020-02-27','2020-02-27','2020-02-27','2020-02-28','2020-02-28','2020-02-28','2020-02-27','2020-02-27','https://www.geeksforgeeks.org/data-warehouse-architecture/'),(4,'assignment 2',2,'2020-03-24','2020-04-15','2020-04-15','2020-04-15','2020-04-15','2020-04-15','2020-04-15','2020-04-15','2020-04-15','https://www.geeksforgeeks.org/message-digest-in-information-security/'),(2,'data warehousing assignment 2',3,'2020-03-27','2020-04-15','2020-04-15','2020-04-15','2020-04-15','2020-04-15','2020-04-15','2020-04-15','2020-04-15','https://www.tutorialspoint.com/dwh/dwh_multidimensional_olap.htm');
/*!40000 ALTER TABLE `assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experiments`
--

DROP TABLE IF EXISTS `experiments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `experiments` (
  `subject_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `sr_no` int(11) NOT NULL,
  `given_on` date NOT NULL,
  `deadline_a1` date NOT NULL,
  `deadline_a2` date NOT NULL,
  `deadline_a3` date NOT NULL,
  `deadline_a4` date NOT NULL,
  `deadline_b1` date NOT NULL,
  `deadline_b2` date NOT NULL,
  `deadline_b3` date NOT NULL,
  `deadline_b4` date NOT NULL,
  `links` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`sr_no`,`subject_id`),
  KEY `fk2_idx` (`subject_id`),
  CONSTRAINT `fk2` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experiments`
--

LOCK TABLES `experiments` WRITE;
/*!40000 ALTER TABLE `experiments` DISABLE KEYS */;
INSERT INTO `experiments` VALUES (6,'Caesar Cipher',1,'2020-01-08','2020-01-16','2020-01-16','2020-01-17','2020-01-17','2020-01-16','2020-01-18','2020-01-16','2020-01-17','http://practicalcryptography.com/ciphers/caesar-cipher/'),(7,'Problem statement',1,'2020-01-13','2020-01-18','2020-01-18','2020-01-18','2020-01-18','2020-01-18','2020-01-18','2020-01-18','2020-01-18',NULL),(8,'Datawarehouse and data mart',1,'2020-01-13','2020-01-20','2020-01-21','2020-01-20','2020-01-21','2020-01-21','2020-01-20','2020-01-20','2020-01-20','https://panoply.io/data-warehouse-guide/data-mart-vs-data-warehouse/'),(9,'Lex and YACC',1,'2020-01-13','2020-01-20','2020-01-20','2020-01-21','2020-01-22','2020-01-20','2020-01-21','2020-01-22','2020-01-22','http://dinosaur.compilertools.net/'),(6,'Columnar Transposition Cipher',2,'2020-01-15','2020-01-22','2020-01-22','2020-01-24','2020-01-23','2020-01-22','2020-01-24','2020-01-22','2020-01-23','https://www.geeksforgeeks.org/columnar-transposition-cipher/'),(7,'Software requirement specification',2,'2020-01-20','2020-01-29','2020-01-29','2020-01-29','2020-01-29','2020-01-29','2020-01-29','2020-01-29','2020-01-29','https://www.tutorialspoint.com/software_testing_dictionary/software_requirement_specification.htm'),(8,'Data preprocessing',2,'2020-01-20','2020-01-27','2020-01-27','2020-01-28','2020-01-27','2020-01-28','2020-01-28','2020-01-28','2020-01-28','https://www.cs.waikato.ac.nz/ml/weka/'),(9,'Left Recursion',2,'2020-01-20','2020-01-27','2020-01-27','2020-01-28','2020-01-27','2020-01-29','2020-01-28','2020-01-29','2020-01-29','https://www.geeksforgeeks.org/removing-direct-and-indirect-left-recursion-in-a-grammar/'),(6,'Own Cipher',3,'2020-01-22','2020-01-29','2020-01-29','2020-01-30','2020-01-29','2020-01-30','2020-01-28','2020-01-28','2020-01-30',NULL),(7,'Project management',3,'2020-01-25','2020-02-03','2020-02-05','2020-02-05','2020-02-03','2020-02-04','2020-02-06','2020-02-05','2020-02-04','https://technologyadvice.com/project-management/'),(8,'OLAP operations',3,'2020-01-27','2020-02-03','2020-02-03','2020-02-05','2020-02-03','2020-02-05','2020-02-04','2020-02-03','2020-02-03','https://www.guru99.com/online-analytical-processing.html'),(9,'Left factoring',3,'2020-01-27','2020-01-30','2020-01-30','2020-01-30','2020-01-30','2020-01-31','2020-01-31','2020-01-31','2020-01-31','https://www.gatevidyalay.com/left-factoring-examples-compiler-design/'),(6,'RSA Algorithm',4,'2020-01-29','2020-02-05','2020-02-06','2020-02-07','2020-02-05','2020-02-05','2020-02-06','2020-02-05','2020-02-05','https://www.geeksforgeeks.org/rsa-algorithm-cryptography/'),(7,'RMMM for project',4,'2020-02-03','2020-02-10','2020-02-10','2020-02-14','2020-02-12','2020-02-11','2020-02-12','2020-02-13','2020-02-14','https://www.tutorialspoint.com/software_testing_dictionary/risk_management.htm'),(8,'Classification Algorithm',4,'2020-02-03','2020-02-10','2020-02-11','2020-02-12','2020-02-10','2020-02-10','2020-02-13','2020-02-11','2020-02-14','https://www.geeksforgeeks.org/basic-concept-classification-data-mining/'),(9,'first and follow',4,'2020-02-03','2020-02-10','2020-02-10','2020-02-11','2020-02-10','2020-02-11','2020-02-10','2020-02-11','2020-02-11','https://www.geeksforgeeks.org/why-first-and-follow-in-compiler-design/'),(6,'MD5 and SHa-1',5,'2020-02-05','2020-02-12','2020-02-13','2020-02-13','2020-02-12','2020-02-14','2020-02-13','2020-02-12','2020-02-12','https://www.howtogeek.com/67241/htg-explains-what-are-md5-sha-1-hashes-and-how-do-i-check-them/'),(7,'UML diagram',5,'2020-02-14','2020-02-24','2020-02-24','2020-02-24','2020-02-24','2020-02-25','2020-02-25','2020-02-25','2020-02-25','https://www.tutorialspoint.com/uml/uml_standard_diagrams.htm'),(8,'Linear Regression',5,'2020-02-10','2020-02-24','2020-02-25','2020-02-26','2020-02-24','2020-02-25','2020-02-24','2020-02-25','2020-02-26','https://machinelearningmastery.com/linear-regression-for-machine-learning/'),(9,'predictive parser',5,'2020-02-10','2020-02-24','2020-02-24','2020-02-24','2020-02-24','2020-02-24','2020-02-24','2020-02-24','2020-02-24','https://www.tutorialspoint.com/compiler_design/compiler_design_top_down_parser.htm'),(6,'Network Reconnaissance tools',6,'2020-02-12','2020-02-26','2020-02-26','2020-02-27','2020-02-26','2020-02-26','2020-02-26','2020-02-26','2020-02-26','https://securitytrails.com/blog/top-20-intel-tools'),(7,'DFD ',6,'2020-02-24','2020-03-03','2020-03-05','2020-03-04','2020-03-04','2020-03-05','2020-03-03','2020-03-03','2020-03-04','https://www.smartdraw.com/data-flow-diagram/'),(8,'Clustering Algorithm',6,'2020-02-24','2020-03-02','2020-03-03','2020-03-05','2020-03-05','2020-03-03','2020-03-04','2020-03-04','2020-03-02','https://www.tutorialspoint.com/data_mining/dm_cluster_analysis.htm'),(9,'Shift Reduce Parser',6,'2020-02-24','2020-03-02','2020-03-02','2020-03-03','2020-03-04','2020-03-02','2020-03-03','2020-03-24','2020-03-02','https://www.geeksforgeeks.org/shift-reduce-parser-compiler/'),(6,'Packet sniffer tools',7,'2020-02-26','2020-03-04','2020-03-04','2020-03-04','2020-03-04','2020-03-04','2020-03-04','2020-03-04','2020-03-05','https://www.dnsstuff.com/packet-sniffers'),(7,'Activity \\state transition diagram ',7,'2020-03-04','2020-03-11','2020-03-11','2020-03-12','2020-03-12','2020-03-11','2020-03-11','2020-03-11','2020-03-12','https://www.smartdraw.com/activity-diagram/'),(8,'Association Algorithm',7,'2020-03-02','2020-03-09','2020-03-09','2020-03-10','2020-03-10','2020-03-09','2020-03-10','2020-03-10','2020-03-10','https://www.geeksforgeeks.org/association-rule/'),(9,'Pass1 Assembler',7,'2020-03-09','2020-03-09','2020-03-11','2020-03-09','2020-03-09','2020-03-11','2020-03-11','2020-03-09','2020-03-11','https://www.geeksforgeeks.org/introduction-of-assembler/'),(6,'Network Intrusion detection',8,'2020-03-04','2020-03-12','2020-03-13','2020-03-12','2020-03-13','2020-03-13','2020-03-12','2020-03-12','2020-03-12','https://www.sciencedirect.com/topics/computer-science/network-based-intrusion-detection-system'),(7,'Sequence and collaboration diagram',8,'2020-03-12','2020-04-15','2020-04-15','2020-04-15','2020-04-15','2020-04-15','2020-04-15','2020-04-15','2020-04-15','https://www.tutorialspoint.com/uml/uml_interaction_diagram.htm'),(8,'Page Rank',8,'2020-03-09','2020-04-15','2020-04-15','2020-04-15','2020-04-15','2020-04-15','2020-04-15','2020-04-15','2020-04-15','https://www.geeksforgeeks.org/page-rank-algorithm-implementation/'),(9,'Single Pass Macroprocessor',8,'2020-03-10','2020-03-16','2020-03-16','2020-03-18','2020-03-19','2020-03-16','2020-03-16','2020-03-16','2020-03-16','https://www.geeksforgeeks.org/macro-processor/'),(6,'DOS Attack',9,'2020-03-13','2020-04-15','2020-04-15','2020-04-15','2020-04-15','2020-04-15','2020-04-15','2020-04-15','2020-04-15','https://www.cloudflare.com/learning/ddos/glossary/denial-of-service/'),(7,'SCM tool',9,'2020-03-12','2020-04-15','2020-04-15','2020-04-15','2020-04-15','2020-04-15','2020-04-15','2020-04-15','2020-04-15','https://www.softwaretestinghelp.com/top-5-software-configuration-management-tools/'),(8,'HITS Algorithm',9,'2020-03-09','2020-04-15','2020-04-15','2020-04-15','2020-04-15','2020-04-15','2020-04-15','2020-04-15','2020-04-15','https://www.geeksforgeeks.org/hyperlink-induced-topic-search-hits-algorithm-using-networxx-module-python/'),(9,'Absolute Loader',9,'2020-03-16','2020-03-23','2020-03-24','2020-03-23','2020-03-24','2020-03-24','2020-03-23','2020-03-23','2020-03-23','http://www.jklp.org/profession/books/mix/c07.html'),(6,'Buffer Overflow',10,'2020-03-13','2020-04-15','2020-04-15','2020-04-15','2020-04-15','2020-04-15','2020-04-15','2020-04-15','2020-04-15','https://www.imperva.com/learn/application-security/buffer-overflow/'),(7,'test cases for project',10,'2020-03-12','2020-04-15','2020-04-15','2020-04-15','2020-04-15','2020-04-15','2020-04-15','2020-04-15','2020-04-15','http://softwaretestingfundamentals.com/white-box-testing/'),(8,'CLARNS Algorithm',10,'2020-03-09','2020-04-15','2020-04-15','2020-04-15','2020-04-15','2020-04-15','2020-04-15','2020-04-15','2020-04-15','https://medium.com/analytics-vidhya/partitional-clustering-using-clarans-method-with-python-example'),(9,'LLVM Case study',10,'2020-03-23','2020-04-15','2020-04-15','2020-04-15','2020-04-15','2020-04-15','2020-04-15','2020-04-15','2020-04-15','https://llvm.org/');
/*!40000 ALTER TABLE `experiments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `branch` varchar(45) NOT NULL,
  `sem` int(11) NOT NULL,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` VALUES (1,'System Programming and compiler construction','Computer Engineering',6,'theory'),(2,'Datawarehousing and mining','Computer Engineering',6,'theory'),(3,'Software Engineering','Computer Engineering',6,'theory'),(4,'Cryptography and system security','Computer Engineering',6,'theory'),(5,'Machine Learning','Computer Engineering',6,'theory'),(6,'System Security Lab','Computer Engineering',6,'practical'),(7,'Software Engineering Lab','Computer Engineering',6,'practical'),(8,'Datawarehousing and mining lab','Computer Engineering',6,'practical'),(9,'System Software Lab','Computer Engineering',6,'practical'),(10,'Mini Project','Computer Engineering',6,'practical');
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syllabus`
--

DROP TABLE IF EXISTS `syllabus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `syllabus` (
  `subject_id` int(11) NOT NULL,
  `module` varchar(45) NOT NULL,
  `module_id` int(11) NOT NULL,
  `topic_id` varchar(45) NOT NULL,
  `topic_name` varchar(45) DEFAULT NULL,
  `taught_on_A` date DEFAULT NULL,
  `status_A` varchar(45) DEFAULT NULL,
  `taught_on_B` date DEFAULT NULL,
  `status_B` varchar(45) NOT NULL,
  `links` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`subject_id`,`topic_id`),
  KEY `fk1_idx` (`subject_id`),
  CONSTRAINT `fk1` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syllabus`
--

LOCK TABLES `syllabus` WRITE;
/*!40000 ALTER TABLE `syllabus` DISABLE KEYS */;
INSERT INTO `syllabus` VALUES (1,'Introduction to system software',1,'1.1','Concept of system sofyware','2020-01-08','completed','2020-01-07','completed','https://www.geeksforgeeks.org/system-software/'),(1,'Introduction to system software',1,'1.2','System programs','2020-01-11','completed','2020-01-09','completed','https://www.geeksforgeeks.org/system-software/'),(1,'Assemblers',2,'2.1','asembly language','2020-01-16','completed','2020-01-13','completed','https://www.geeksforgeeks.org/introduction-of-assembler/'),(1,'Assembler',2,'2.2','assemblers','2020-01-25','completed','2020-01-20','completed','https://www.geeksforgeeks.org/introduction-of-assembler/'),(1,'Macros and Macro processor',3,'3.1','macro processor','2020-01-30','completed','2020-01-29','completed','https://www.geeksforgeeks.org/macro-processor/'),(1,'Loaders and linkers',4,'4.1','Loaders and linkers',NULL,'pending',NULL,'pending','http://theteacher.info/index.php/computing-principles-01/software-development/1-2-2-applications-generation/2136-linkers-and-loaders'),(1,'compiler analysis phase',5,'5.1','Introduction','2020-02-05','completed','2020-02-04','completed','https://www.geeksforgeeks.org/introduction-of-compiler-design/'),(1,'compiler analysis phase',5,'5.2','Lexical analysis','2020-02-13','completed','2020-02-12','completed','https://www.tutorialspoint.com/compiler_design/compiler_design_lexical_analysis.htm'),(1,'compiler analysis phase',5,'5.3','syntax analysis','2020-02-24','completed','2020-02-24','completed','https://www.tutorialspoint.com/compiler_design/compiler_design_syntax_analysis.htm'),(1,'compiler analysis phase',5,'5.4','semantic analysis','2020-03-04','completed','2020-03-05','completed','https://www.tutorialspoint.com/compiler_design/compiler_design_semantic_analysis.htm'),(1,'compiler synthesis phase',6,'6.1','Intermediate code generation','2020-03-13','completed','2020-03-10','completed','https://www.tutorialspoint.com/compiler_design/compiler_design_architecture.htm'),(1,'compiler synthesis phase',6,'6.2','Code optimization',NULL,'pending',NULL,'pending','https://www.tutorialspoint.com/compiler_design/compiler_design_phases_of_compiler.htm'),(1,'compiler synthesis phase',6,'6.3','Code generation',NULL,'pending',NULL,'pending','https://www.tutorialspoint.com/compiler_design/compiler_design_phases_of_compiler.htm'),(2,'Introduction',1,'1.1','Introduction','2020-01-09','completed','2020-01-09','completed','https://www.tutorialspoint.com/dwh/dwh_data_warehousing.htm'),(2,'Introduction',1,'1.2','Dimensional modelling','2020-01-13','completed','2020-01-13','completed','https://www.tutorialspoint.com/dwh/dwh_data_warehousing.htm'),(2,'ETL and OLAP',2,'2.1','ETL process','2020-01-28','completed','2020-01-24','completed','https://www.geeksforgeeks.org/etl-process-in-data-warehouse/'),(2,'ETL and OLAP',2,'2.2','OLAP','2020-02-08','completed','2020-02-10','completed','https://www.tutorialspoint.com/dwh/dwh_olap.htm'),(2,'ETL and OLAP',2,'2.3','MOLAP','2020-03-04','completed','2020-03-04','completed','https://www.tutorialspoint.com/dwh/dwh_multidimensional_olap.htm'),(2,'Introduction to data mining',3,'3.1','Introduction','2020-01-07','completed','2020-01-06','completed','https://www.geeksforgeeks.org/data-mining/'),(2,'Introduction to data mining',3,'3.2','attribute types','2020-01-17','completed','2020-01-16','completed','https://www.geeksforgeeks.org/understanding-data-attribute-types-qualitative-and-quantitative/'),(2,'Introduction to data mining',3,'3.3','data pre processing','2020-01-24','completed','2020-01-24','completed','https://www.geeksforgeeks.org/data-preprocessing-in-data-mining/'),(2,'classification, prediction &clustering',4,'4.1','classification','2020-02-05','completed','2020-02-03','completed','https://www.tutorialspoint.com/data_mining/dm_classification_prediction.htm'),(2,'classification, prediction &clustering',4,'4.2','prediction','2020-02-28','completed','2020-02-24','completed','https://www.tutorialspoint.com/data_mining/dm_classification_prediction.htm'),(2,'classification, prediction &clustering',4,'4.3','clustering','2020-03-02','completed','2020-03-02','completed','https://www.tutorialspoint.com/data_mining/dm_cluster_analysis.htm'),(2,'Association rules',5,'5.1','frequent patterns','2020-03-11','completed','2020-03-12','completed','https://www.geeksforgeeks.org/association-rule/'),(2,'Association rules',5,'5.2','association rules',NULL,'pending',NULL,'pending','https://www.geeksforgeeks.org/association-rule/'),(2,'Spatial and web mining',6,'6.1','Spatial mining',NULL,'pending',NULL,'pending','https://www.tutorialspoint.com/data_mining/dm_mining_www.htm'),(2,'Spatial and web mining',6,'6.2','web mining',NULL,'pending',NULL,'pending','https://www.tutorialspoint.com/data_mining/dm_mining_www.htm'),(3,'Introduction to software process',1,'1.1','nature of software','2020-01-06','completed','2020-01-06','Completed','https://www.geeksforgeeks.org/software-processes-in-software-engineering/'),(3,'Introduction to software process',1,'1.2','Software development models','2020-01-13','completed','2020-01-13','completed','http://tryqa.com/what-are-the-software-development-models/'),(3,'Requirement analysis',2,'2.1','Requirement analysis','2020-01-20','completed','2020-01-20','Completed','https://www.geeksforgeeks.org/software-engineering-requirements-engineering-process/'),(3,'Requirement analysis',2,'2.2','Modelling','2020-01-27','completed','2020-01-27','completed','https://www.tutorialride.com/software-engineering/software-requirement-modeling.htm'),(3,'Project Scheduling',3,'3.1','Management spectrum','2020-02-03','completed','2020-02-03','completed','https://www.projectmanager.com/blog/what-is-project-scheduling'),(3,'Project Scheduling',3,'3.2','process and project metrics','2020-02-10','completed','2020-02-10','completed','https://www.projectmanager.com/blog/what-is-project-scheduling'),(3,'Project Scheduling',3,'3.3','software project estimation','2020-02-14','completed','2020-02-14','completed','https://www.projectmanager.com/blog/what-is-project-scheduling'),(3,'Project Scheduling',3,'3.4','project scheduling','2020-02-22','completed','2020-02-21','completed','https://www.projectmanager.com/blog/what-is-project-scheduling'),(3,'Software Design',4,'4.1','Design principles','2020-02-24','completed','2020-02-24','completed','https://www.tutorialspoint.com/software_engineering/software_design_basics.htm'),(3,'Software Design',4,'4.2','architectural design','2020-02-29','completed','2020-02-29','completed','https://www.tutorialspoint.com/software_engineering/software_design_basics.htm'),(3,'Software Design',4,'4.3','component lebel design','2020-03-05','completed','2020-03-03','completed','https://www.tutorialspoint.com/software_engineering/software_design_basics.htm'),(3,'Software Design',4,'4.4','UI design','2020-03-09','completed','2020-03-06','completed','https://www.tutorialspoint.com/software_engineering/software_design_basics.htm'),(3,'Software Risk configuration',5,'5.1','Risk Identification','2020-03-14','completed','2020-03-10','completed','https://www.geeksforgeeks.org/software-engineering-risk-management/'),(3,'Software Risk configuration',5,'5.2','SCM','2020-03-12','completed','2020-03-12','completed','https://www.geeksforgeeks.org/software-engineering-risk-management/'),(3,'Software Risk configuration',5,'5.3','Software quality assurance',NULL,'pending',NULL,'pending','https://www.geeksforgeeks.org/software-engineering-risk-management/'),(3,'Software Testing',6,'6.1','strategic approach',NULL,'pending',NULL,'pending','https://www.geeksforgeeks.org/software-testing-basics/'),(3,'Software Testing',6,'6.2','fundamentals of testing',NULL,'pending',NULL,'pending','https://www.geeksforgeeks.org/software-testing-basics/'),(3,'Software Testing',6,'6.3','software maintenance',NULL,'pending',NULL,'pending','https://www.geeksforgeeks.org/software-testing-basics/'),(4,'Introduction and number Theory',1,'1.1','Security goals and services','2020-02-09','completed','2020-02-08','completed','https://gpgtools.tenderapp.com/kb/how-to/introduction-to-cryptography'),(4,'Introduction and number theory',1,'1.2','Modular arithmetic','2020-01-20','completed','2020-01-17','completed','https://www.coursera.org/learn/number-theory-cryptography'),(4,'Symmetric and asymmetric cryptography',2,'2.1','Block cipher','2020-01-29','completed','2020-01-27','completed','https://www.educba.com/types-of-cipher/'),(4,'Symmetric and asymmetric cryptography',2,'2.2','Public key cryptography','2020-02-08','completed','2020-02-06','completed','https://www.tutorialspoint.com/cryptography/public_key_encryption.htm'),(4,'Symmetric and asymmetric cryptography',2,'2.3','key management techniques','2020-02-10','completed','2020-02-11','completed','https://searchsecurity.techtarget.com/definition/asymmetric-cryptography'),(4,'hashes and digital certificates',3,'3.1','cryptographic hash function','2020-02-24','completed','2020-02-24','completed','https://www.tutorialspoint.com/cryptography/cryptography_hash_functions.htm'),(4,'hashes and digital certificates',3,'3.2','digital certificate',NULL,'pending',NULL,'pending','https://www.sciencedirect.com/topics/computer-science/authentication-protocol'),(4,'Authentication protocol and digital signature',4,'4.1','user authentication',NULL,'pending',NULL,'pending','https://www.sciencedirect.com/topics/computer-science/authentication-protocol'),(4,'Authentication protocol and digital signature',4,'4.2','digital signatures','2020-03-06','completed','2020-03-07','completed','https://www.tutorialspoint.com/cryptography/cryptography_digital_signatures.htm'),(4,'Network security and applications',5,'5.1','Introduction','2020-03-08','completed','2020-03-11','completed','https://www.cisco.com/c/en_in/products/security/what-is-network-security.html'),(4,'Network security and applications',5,'5.2','DOS attack','2020-03-12','completed','2020-03-12','completed','https://www.cloudflare.com/learning/ddos/glossary/denial-of-service/'),(4,'Network security and applications',5,'5.3','Security protocols',NULL,'pending',NULL,'pending','https://www.cisco.com/c/en_in/products/security/firewalls/what-is-a-firewall.html'),(4,'System security',6,'6.1','Software vulnerabilities','2020-02-14','completed','2020-02-13','completed','https://www.geeksforgeeks.org/basic-network-attacks-in-computer-network/'),(5,'Introduction to machine learning',1,'1.1','Types of learning','2020-01-10','completed','2020-01-10','completed','https://www.sas.com/en_in/insights/analytics/machine-learning.html'),(5,'Introduction to machine learning',1,'1.2','applications','2020-01-19','completed','2020-01-19','completed','https://towardsdatascience.com/types-of-machine-learning-algorithms-you-should-know-953a08248861'),(5,'Neural Networks',2,'2.1','Introduction','2020-01-27','completed','2020-01-28','completed','https://towardsdatascience.com/machine-learning-for-beginners-an-introduction-to-neural-networks-d49f22d238f9'),(5,'Neural Networks',2,'2.2','ANN','2020-02-06','completed','2020-02-06','completed','https://www.geeksforgeeks.org/activation-functions-neural-networks/'),(5,'Regression and decision trees',3,'3.1','Regression','2020-02-14','completed','2020-02-13','completed','https://www.geeksforgeeks.org/ml-linear-regression/'),(5,'Regression and decision trees',3,'3.2','Decision trees','2020-02-21','completed','2020-02-21','completed','https://towardsdatascience.com/decision-tree-in-machine-learning-e380942a4c96'),(5,'Optimization techniques',4,'4.1','Derivative based',NULL,'pending',NULL,'pending','https://towardsdatascience.com/types-of-optimization-algorithms-used-in-neural-networks-and-ways-to-optimize-gradient-95ae5d39529f'),(5,'Optimization techniques',4,'4.2','derivative free',NULL,'pending',NULL,'pending','https://towardsdatascience.com/types-of-optimization-algorithms-used-in-neural-networks-and-ways-to-optimize-gradient-95ae5d39529f'),(5,'classification and clustering',5,'5.1','Rule based classification','2020-02-24','completed','2020-02-28','completed','https://www.edureka.co/blog/classification-in-machine-learning/'),(5,'classification and clustering',5,'5.2','SVM','2020-03-11','completed','2020-03-09','completed','https://towardsdatascience.com/support-vector-machine-introduction-to-machine-learning-algorithms-934a444fca47'),(5,'classification and clustering',5,'5.3','non-linear function','2020-03-12','completed','2020-03-12','completed','https://www.geeksforgeeks.org/clustering-in-machine-learning/'),(5,'Dimensionality reductuion',6,'6.1','PCA',NULL,'pending',NULL,'pending','https://www.geeksforgeeks.org/dimensionality-reduction/'),(5,'Dimensionality reductuion',6,'6.2','ICA',NULL,'pending',NULL,'pending','https://www.geeksforgeeks.org/dimensionality-reduction/');
/*!40000 ALTER TABLE `syllabus` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-01 14:50:54
