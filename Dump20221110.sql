-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 192.168.27.54    Database: activos
-- ------------------------------------------------------
-- Server version	8.0.29-0ubuntu0.22.04.2

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
-- Temporary view structure for view `consulta_equipos`
--

DROP TABLE IF EXISTS `consulta_equipos`;
/*!50001 DROP VIEW IF EXISTS `consulta_equipos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `consulta_equipos` AS SELECT 
 1 AS `id`,
 1 AS `equipo`,
 1 AS `modelo`,
 1 AS `serial_number`,
 1 AS `ip_addr`,
 1 AS `ubicacion`,
 1 AS `version`,
 1 AS `connected_to`,
 1 AS `activation_date`,
 1 AS `expire_date`,
 1 AS `license`,
 1 AS `provider`,
 1 AS `state`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `firewall`
--

DROP TABLE IF EXISTS `firewall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `firewall` (
  `id` int NOT NULL AUTO_INCREMENT,
  `equipo` varchar(200) DEFAULT NULL,
  `model` int DEFAULT NULL,
  `serial_number` varchar(45) DEFAULT NULL,
  `ip_addr` varchar(200) DEFAULT NULL,
  `ubicacion` varchar(200) DEFAULT NULL,
  `version` varchar(200) DEFAULT NULL,
  `connected_to` varchar(200) DEFAULT NULL,
  `activation_date` varchar(50) DEFAULT NULL,
  `expire_date` varchar(50) DEFAULT NULL,
  `license_type` int NOT NULL,
  `provider` int DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_const01_idx` (`license_type`),
  KEY `fk_const02_idx` (`model`),
  KEY `fk_const03_idx` (`provider`),
  CONSTRAINT `fk_const02` FOREIGN KEY (`model`) REFERENCES `modelo_firewall` (`id`),
  CONSTRAINT `fk_const03` FOREIGN KEY (`provider`) REFERENCES `providers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10017 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `firewall`
--

LOCK TABLES `firewall` WRITE;
/*!40000 ALTER TABLE `firewall` DISABLE KEYS */;
INSERT INTO `firewall` VALUES (1,'HA Backup Santiago Z_2BA',1,'FG100FTK20010277','','','','172.29.29.2','2022-03-03','2023-03-03',2,1,'Contrato Activo'),(2,'HA Backup Iquique Core Z1',1,'FG100FTK20010192','','','','','2022-03-03','2023-03-03',2,1,'Contrato Activo'),(3,'HA Backup Puerto Montt Core 3',1,'FG100FTK20010025','','','','','2022-03-03','2023-03-03',2,1,'Contrato Activo'),(4,'HA Backup Santiago CDOLOG',1,'FG100FTK20009350','','','','','2022-03-03','2023-03-03',0,1,'Contrato Activo'),(5,'Z1',1,'FG100FTK20008600','10.101.0.3','','','10.103.0.2','2022-03-03','2023-03-03',2,1,'Contrato Activo'),(6,'CORE3',1,'FG100FTK20008597','10.103.0.2','','','172.29.81.6','2022-03-03','2022-11-25',2,1,'próximo a vencer'),(7,'HA Backup Santiago 2BA',1,'FG100FTK20008552','','','','','2022-03-03','2023-03-03',2,1,'Contrato Activo'),(8,'Z2',1,'FG100FTK20008124','172.29.81.6','','','','2022-03-03','2023-03-03',2,1,'Contrato Activo'),(9,'Z4',1,'FG100FTK20007830','10.104.0.3','','','','2022-03-03','2023-03-03',2,1,'Contrato Activo'),(10,'COREL',1,'FG100FTK20007446','172.29.28.2','','','172.29.81.2','2022-03-03','2023-03-03',2,1,'Contrato Activo'),(11,'CORE2',1,'FG100FTK20007162','172.29.81.2','','','','2022-03-03','2023-03-03',2,1,'Contrato Activo'),(12,'HA Backup Puerto Montt Z3',1,'FG100FTK20006932','','','','','2022-03-03','2023-03-03',2,1,'Contrato Activo'),(13,'Z5',1,'FG100FTK20006911','10.105.0.3','','','10.105.0.1','2022-03-03','2023-03-03',2,1,'Contrato Activo'),(14,'HA Backup Antofagasta Core Z5',1,'FG100FTK20006598','10.105.0.1','','','192.168.38.215','2022-03-03','2023-03-03',2,1,'Contrato Activo'),(15,'Z3',1,'FG100FTK20006284','10.103.0.6','','','','2022-03-03','2023-03-03',2,1,'Contrato Activo'),(16,'HA Backup Punta Arenas Z4',1,'FG100FTK20006173','','','','','2022-03-03','2023-03-03',2,1,'Contrato Activo'),(17,'',1,'FG100FTK20008979','','','','','2021-01-08','2023-01-29',1,1,'Contrato Activo'),(18,'',1,'FG100FTK20008611','','','','','2021-01-08','2023-01-29',1,1,'Contrato Activo'),(19,'Punta Arenas HA Backup Core 4',2,'FG201ETK19909141','','','','','2021-01-08','2023-01-08',1,1,'Contrato Activo'),(20,'CORE4',2,'FG201ETK19908884','10.104.0.2','','','','2021-01-08','2023-01-08',1,1,'Contrato Activo'),(21,'ZEN_P9',3,'FGR30DTF19002097','10.1.31.4','','','','2021-02-04','2023-02-04',3,1,'Contrato Activo'),(22,'FW_PICA',3,'FGR30DTF19002044','172.29.201.10','','','','2021-02-02','2023-02-04',3,1,'Contrato Activo'),(23,'EMCO_DAG',3,'FGR30DTF19000661','10.1.31.2','','','','2021-02-04','2023-02-04',3,1,'Contrato Activo'),(24,'ZEN_P8',3,'FGR30DTF19000610','10.1.31.3','','','','2021-02-04','2023-02-04',3,1,'Contrato Activo'),(25,'BODEGA',3,'FGR30DTF19000609','','','','','2021-02-04','2023-02-04',3,1,'Contrato Activo'),(26,'FW_CASINO_COLON_IVBA',13,'FGT30E5620009357','172.29.204.18','','','','2021-02-02','2023-02-02',3,1,'Contrato Activo'),(27,'H_FFAA_IVBA',13,'FGT30E5620009332','10.58.40.20','','','','2021-02-02','2023-02-02',3,1,'Contrato Activo'),(28,'FW_ARICA',13,'FGT30E5620009331','172.29.201.42','','','','2021-05-04','2023-05-04',3,1,'Contrato Activo'),(29,'FW_CASINO_CAVANCHA',13,'FGT30E5620009205','172.29.201.26','','','','2021-01-29','2023-01-29',3,1,'Contrato Activo'),(30,'BALMACEDA',13,'FGT30E5620009169','172.29.203.66','','','','2021-02-01','2023-02-01',3,1,'Contrato Activo'),(31,'FW_CATALINA',13,'FGT30E5620009147','172.29.204.10','','','','2021-02-02','2023-02-02',3,1,'Contrato Activo'),(32,'CHINQUIHUE',13,'FGT30E5620009139','172.29.203.26','','','','2021-02-01','2023-02-01',3,1,'Contrato Activo'),(33,'FW_TIUQUE',13,'FGT30E5620009124','10.174.6.19','','','','2021-02-02','2023-02-02',3,1,'Contrato Activo'),(34,'FW_CAVANCHA',13,'FGT30E5620009010','172.29.201.18','','','','2021-01-29','2023-01-29',3,1,'Contrato Activo'),(35,'BADILLA',13,'FGT30E5620003381','172.29.203.18','','','','2021-02-01','2023-02-01',3,1,'Contrato Activo'),(36,'FW_POLICLINICO_IVBA',13,'FGT30E5620003171','172.29.204.34','','','','2021-02-02','2023-02-02',3,1,'Contrato Activo'),(37,'FW_GAVILAN',13,'FGT30E5620002958','10.174.6.20','','','','2021-02-02','2023-02-02',3,1,'Contrato Activo'),(38,'',13,'FGT30E5620009333','','','','','2021-09-22','2023-01-29',3,1,'Contrato Activo'),(39,'',13,'FGT30E5620009123','','','','','2021-09-22','2023-01-29',3,1,'Contrato Activo'),(40,'',13,'FGT30E5620009143','','','','','2021-09-22','2023-01-29',3,1,'Contrato Activo'),(41,'',13,'FGT30E5620009341','','','','','2021-09-22','2023-01-29',3,1,'Contrato Activo'),(42,'',13,'FGT30E5620009103','','','','','2021-09-22','2023-01-29',3,1,'Contrato Activo'),(43,'',13,'FGT30E5620009329','','','','','2021-09-22','2023-01-29',3,1,'Contrato Activo'),(44,'',13,'FGT30E5620009089','','','','','2021-09-22','2023-01-29',3,1,'Contrato Activo'),(45,'',13,'FGT30E5620003043','','','','','2021-09-22','2023-01-29',3,1,'Contrato Activo'),(46,'COREDB',5,'FG4H0E5819902001','192.168.224.2','','','','2021-06-01','2023-06-01',2,1,'Contrato Activo'),(47,'Core INT Backup',5,'FG4H0E5819901952','','','','','2021-06-01','2023-06-01',2,1,'Contrato Activo'),(48,'COREAMB',5,'FG4H0E5819901870','172.29.146.6','','','','2021-06-01','2023-01-08',3,1,'Contrato Activo'),(49,'Core DB Cerrillos Backup',5,'FG4H0E5819901704','','','','','2021-06-01','2023-06-01',2,1,'Contrato Activo'),(50,'GTE',5,'FG4H0E5819901636','','','','','2021-01-08','2023-01-08',1,1,'Contrato Activo'),(51,'',5,'FG4H0E5819901606','','','','','2021-06-01','2023-01-08',3,1,'Contrato Activo'),(52,'COREINT',5,'FG4H0E5819901585','172.29.146.10','','','','2021-06-01','2023-06-01',2,1,'Contrato Activo'),(53,'COREF',5,'FG4H0E5819901579','172.29.24.2','','','','2021-01-08','2023-01-08',1,1,'Contrato Activo'),(54,'',5,'FG4H0E5819901567','','','','','2021-01-08','2023-01-08',1,1,'Contrato Activo'),(55,'',5,'FG4H0E5819901880','','','','','2021-01-08','2023-01-08',1,1,'Contrato Activo'),(56,'',5,'FG4H0E5819901698','','','','','2021-01-08','2023-01-08',1,1,'Contrato Activo'),(57,'',6,'FG6H0ETB19903886','','','','','2021-02-05','2023-02-05',2,1,'Contrato Activo'),(58,'\nBrasil',7,'FGT60FTK20045431','','','','','2022-03-08','2023-03-08',2,1,'Contrato Activo'),(59,'Israel',7,'FGT60FTK20045191','','','','','2022-03-08','2023-03-08',2,1,'Contrato Activo'),(60,'Italia',7,'FGT60FTK20044503','','','','','2022-03-08','2023-03-08',2,1,'Contrato Activo'),(61,'Australia',7,'FGT60FTK20044167','','','','','2022-03-08','2023-03-08',2,1,'Contrato Activo'),(62,'Argentina',7,'FGT60FTK20043609','','','','','2022-03-08','2023-03-08',2,1,'Contrato Activo'),(63,'España',7,'FGT60FTK20040264','','','','','2022-06-23','2023-02-04',3,1,'Contrato Activo'),(64,'Colombia',7,'FGT60FTK20039009','','','','','2022-03-08','2023-03-08',2,1,'Contrato Activo'),(65,'Peru',7,'FGT60FTK20037070','','','','','2022-03-08','2023-03-08',2,1,'Contrato Activo'),(66,'Inglaterra',7,'FGT60FTK20036832','','','','','2022-06-23','2023-02-04',2,1,'Contrato Activo'),(67,'Francia',7,'FGT60FTK20035971','','','','','2022-03-08','2023-03-08',2,1,'Contrato Activo'),(68,'China',7,'FGT60FTK20035237','','','','','2022-03-08','2023-03-08',2,1,'Contrato Activo'),(69,'FortiManager',8,'FMG1KFTA20900085','','','','','2021-02-08','2023-02-08',3,1,'Contrato Activo'),(70,'FW_ENAER_RT_FACH',7,'FGT60FTK19027475','172.29.11.2','','','','2021-08-12','2024-05-31',1,3,'Contrato Activo'),(71,'AGA',7,'FGT60FTK19027442','172.29.200.154','','','','2021-07-02','2024-05-31',1,3,'Contrato Activo'),(72,'',7,'FGT60FTK19027387','','','','','2021-08-12','2024-05-31',1,3,'Contrato Activo'),(73,'',7,'FGT60FTK19027321','','','','','2021-08-12','2024-05-31',1,3,'Contrato Activo'),(74,'EE',7,'FGT60FTK19026997','172.29.3.2','','','','2021-07-02','2024-05-31',1,3,'Contrato Activo'),(75,'POLICLINICO_IIIBA',7,'FGT60FTK19026928','172.29.203.34','','','','2021-08-12','2024-05-31',1,3,'Contrato Activo'),(76,'',7,'FGT60FTK19026706','','','','','2021-08-12','2024-05-31',1,3,'Contrato Activo'),(77,'ALAMEDA1146',7,'FGT60FTK19026397','172.29.200.138','','','','2021-07-02','2023-05-31',3,3,'Contrato Activo'),(78,'CANCHONES',7,'FGT60FTK19026272','172.29.201.58','','','','2021-08-12','2024-05-31',1,3,'Contrato Activo'),(79,'FW_ZAPIGA',7,'FGT60FTK19026184','172.29.201.66','','','','2021-08-07','2023-05-31',3,3,'Contrato Activo'),(80,'FW_CCN',7,'FGT60FTK19026171','172.29.201.82','','','','2021-08-07','2023-05-31',3,3,'Contrato Activo'),(81,'',7,'FGT60FTK19026071','','','','','2021-08-07','2023-05-31',3,3,'Contrato Activo'),(82,'AOVALLE_1144',7,'FGT60FTK19025911','172.29.200.10','','','','2021-07-02','2023-05-31',3,3,'Contrato Activo'),(83,'',7,'FGT60FTK19025846','','','','','2021-08-07','2023-05-31',3,3,'Contrato Activo'),(84,'',7,'FGT60FTK19025811','','','','','2021-08-07','2023-05-31',3,3,'Contrato Activo'),(85,'',7,'FGT60FTK19025762','','','','','2021-08-07','2023-05-31',3,3,'Contrato Activo'),(86,'',7,'FGT60FTK19025700','','','','','2021-08-07','2023-05-31',3,3,'Contrato Activo'),(87,'EA',7,'FGT60FTK19025662','172.29.22.2','','','','2021-07-02','2024-05-31',1,3,'Contrato Activo'),(88,'',7,'FGT60FTK19025587','','','','','2021-08-07','2023-05-31',3,3,'Contrato Activo'),(89,'DGAC_SAN_PABLO',7,'FGT60FTK19025491','172.29.5.2','','','','2021-07-02','2023-05-31',3,3,'Contrato Activo'),(90,'CALICHE',7,'FGT60FTK19025460','192.168.38.202','','','','2021-07-02','2023-05-31',3,3,'Contrato Activo'),(91,'',7,'FGT60FTK19025412','','','','','2021-08-07','2023-05-31',3,3,'Contrato Activo'),(92,'CEAFOSS_BULNES',7,'FGT60FTK19025392','172.29.200.58','','','','2021-07-02','2023-05-31',3,3,'Contrato Activo'),(93,'C_TANTAUCO',7,'FGT60FTK19025232','172.29.200.2','','','','2021-07-02','2023-05-31',3,3,'Contrato Activo'),(94,'JAR',7,'FGT60FTK19025105','172.29.200.26','','','','2021-07-02','2024-05-31',1,3,'Contrato Activo'),(95,'CLUB_FACH',7,'FGT60FTK19024924','172.29.200.90','','','','2021-12-03','2024-05-31',1,3,'Contrato Activo'),(96,'ENLACE_SATELITAL',7,'FGT60FTK19025735','172.29.61.2','','','','2021-11-03','2023-05-31',3,3,'Contrato Activo'),(97,'',7,'FGT60FTK19024892','','','','','2021-11-03','2023-05-31',3,3,'Contrato Activo'),(98,'FW_ENAER_IIBA',7,'FGT60FTK19025441','10.81.11.100','','','','2021-10-22','2023-05-31',3,3,'Contrato Activo'),(99,'',7,'FGT60FTK19025494','','','','','2021-11-03','2023-05-31',3,3,'Contrato Activo'),(100,'EMCO',1,'FG100FTK19019241','172.29.4.2','','','','2021-06-03','2022-11-20',1,3,'próximo a vencer'),(101,'',1,'FG100FTK19019233','','','','','2021-08-12','2022-11-30',1,3,'próximo a vencer'),(102,'GTE',1,'FG100FTK19018900','172.29.37.18','','','','2021-06-02','2022-11-30',1,3,'próximo a vencer'),(103,'',1,'FG100FTK19018863','','','','','2021-08-12','2022-11-30',1,3,'próximo a vencer'),(104,'',1,'FG100FTK19018540','','','','','2021-08-12','2022-11-30',1,3,'próximo a vencer'),(105,'',1,'FG100FTK19016927','','','','','2021-05-14','2022-11-30',1,3,'próximo a vencer'),(106,'',1,'FG100FTK19016647','','','','','2021-05-14','2022-11-30',1,3,'próximo a vencer'),(107,'',1,'FG100FTK19016565','','','','','2021-05-14','2022-11-30',1,3,'próximo a vencer'),(108,'COLINA',1,'FG100FTK19016557','172.29.200.178','','','','2021-05-14','2022-11-30',1,3,'próximo a vencer'),(109,'SAF',1,'FG100FTK19016469','172.29.31.2','','','','2021-05-14','2022-11-30',1,3,'próximo a vencer'),(110,'',1,'FG100FTK19016446','','','','','2021-05-14','2022-11-30',1,3,'próximo a vencer'),(111,'HANGAR_PINTURA_F-16',1,'FG100FTK19016071','10.81.208.1','','','','2021-05-14','2022-11-30',1,3,'próximo a vencer'),(112,'MAQUEHUE',1,'FG100FTK19014129','172.29.203.2','','','','2021-08-12','2022-11-30',1,3,'próximo a vencer'),(113,'FW_MAW',1,'FG100FTK19010117','10.7.9.1','','','','2020-05-14','2022-11-30',1,3,'próximo a vencer'),(114,'',1,'FG100FTK19010064','','','','','2021-07-01','2022-11-30',4,3,'próximo a vencer'),(115,'BAEB',1,'FG100FTK19010054','172.29.156.2','','','','2021-07-01','2022-11-30',4,3,'próximo a vencer'),(116,'CORE',9,'FG10E0TB19901087','172.29.146.2','','','','2020-06-11','2023-06-11',1,3,'Contrato Activo'),(117,'',2,'FG201ETK19906652','','','','','2021-08-26','2022-11-30',4,3,'próximo a vencer'),(118,'CORE5_BKP',4,'FG3H0E5819906112','10.105.0.2','','','','2021-08-12','2022-11-30',1,3,'próximo a vencer'),(119,'',4,'FG3H0E5819905969','','','','','2021-05-27','2022-11-30',1,3,'próximo a vencer'),(120,'CORE5',4,'FG3H0E5819905949','10.105.0.2','','','','2021-05-27','2022-11-30',1,3,'próximo a vencer'),(121,'CORE1',4,'FG3H0E5819905948','10.101.0.2','','','','2021-06-02','2022-11-30',1,3,'próximo a vencer'),(122,'FILTRO',4,'FG3H0E5819905857','192.168.38.215','','','172.29.29.2','2020-12-13','2022-11-30',1,3,'próximo a vencer'),(123,'',4,'FG3H0E5819905703','','','','','2021-08-12','2022-11-30',1,3,'próximo a vencer'),(124,'COREP',4,'FG3H0E5819905649','172.29.29.2','','','10.101.0.3','2021-05-27','2022-11-30',1,3,'próximo a vencer'),(125,'COREHF ',4,'FG3H0E5819905554','172.29.69.2','','','','2020-05-28','2022-11-30',1,3,'próximo a vencer'),(126,'COREVPN',14,'FG3H0E5819905226','10.41.1.2','','','','2021-06-04','2022-11-30',1,3,'próximo a vencer'),(128,'QUINCHAMALI',13,'FGT30E5619082511','172.29.200.162','','','','2021-07-02','2024-05-31',3,3,'Contrato Activo'),(129,'',13,'FGT30E5619082422','','','','','2021-08-07','2024-05-31',3,3,'Contrato Activo'),(130,'VICARIA',13,'FGT30E5619082354','172.29.200.50','','','','2021-07-02','2024-05-31',3,3,'Contrato Activo'),(131,'CEEA',13,'FGT30E5619082271','172.29.200.42','','','','2021-07-02','2024-05-31',3,3,'Contrato Activo'),(132,'MONEDA',13,'FGT30E5619082224','172.29.200.194','','','','2021-07-02','2024-05-31',3,3,'Contrato Activo'),(133,'COPIHUAL',13,'FGT30E5619082067','172.29.200.114','','','','2021-07-02','2024-05-31',3,3,'Contrato Activo'),(134,'',13,'FGT30E5619079082','','','','','2021-08-07','2024-05-31',3,3,'Contrato Activo'),(135,'CJ-SSFFAA',13,'FGT30E5619079070','172.29.200.218','','','','2021-07-02','2024-05-31',3,3,'Contrato Activo'),(136,'AEDRONOMO_VITACURA',13,'FGT30E5619079061','172.29.200.170','','','','2021-07-02','2024-05-31',3,3,'Contrato Activo'),(137,'JURIDICA',13,'FGT30E5619079049','172.29.200.66','','','','2021-07-02','2024-05-31',3,3,'Contrato Activo'),(138,'C_JUANITA_AGUIRRE',13,'FGT30E5619078977','172.29.200.146','','','','2021-07-02','2024-05-31',3,3,'Contrato Activo'),(139,'',13,'FGT30E5619078907','','','','','2021-08-07','2024-05-31',3,3,'Contrato Activo'),(140,'CASA_CJ',13,'FGT30E5619078802','172.29.200.234','','','','2021-07-02','2024-05-31',3,3,'Contrato Activo'),(141,'',13,'FGT30E5619078782','','','','','2021-08-07','2024-05-31',3,3,'Contrato Activo'),(142,'CASA_CENTRO',13,'FGT30E5619078643','172.29.200.82','','','','2021-08-07','2024-05-31',3,3,'Contrato Activo'),(143,'FW_BRAC',13,'FGT30E5619078629','172.29.205.26','','','','2021-08-07','2024-05-31',3,3,'Contrato Activo'),(144,'',13,'FGT30E5619077386','','','','','2021-08-07','2024-05-31',3,3,'Contrato Activo'),(145,'FW_VBA_F-16',13,'FGT30E5619077260','10.175.201.100','','','','2021-11-03','2024-05-31',3,3,'Contrato Activo'),(146,'',13,'FGT30E5619082085','','','','','2021-11-03','2024-05-31',3,3,'Contrato Activo'),(147,'',13,'FGT30E5619082076','','','','','2021-11-04','2024-05-31',3,3,'Contrato Activo'),(148,'',13,'FGT30E5619078915','','','','','2021-11-03','2024-05-31',3,3,'Contrato Activo'),(149,'',12,'FGR90DT619000161','','','','','2021-08-26','2022-11-30',3,3,'próximo a vencer'),(150,'',10,'FE400FT919000435','','','','','2021-08-12','2022-11-30',0,3,'próximo a vencer'),(151,'FORTIANALIZER',11,'FL-3KFT318000067','192.168.36.8','','','','2021-12-28','2022-11-30',3,3,'próximo a vencer'),(10014,'prueba',1,'prueba','10.99.200.311','prueba','','192.168.38.215','2023-03-03','2023-03-03',1,1,'prueba'),(10015,'undefined',1,'prueba','prueba','prueba','prueba','prueba','10-11-2022','10-11-2022',1,1,'prueba'),(10016,'prueba2',1,'prueba','prueba','prueba','prueba','prueba','10-11-2022','10-11-2022',1,1,'prueba');
/*!40000 ALTER TABLE `firewall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `licenses`
--

DROP TABLE IF EXISTS `licenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `licenses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `license` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `licenses`
--

LOCK TABLES `licenses` WRITE;
/*!40000 ALTER TABLE `licenses` DISABLE KEYS */;
INSERT INTO `licenses` VALUES (1,'ENTERPRISE'),(2,'IPS'),(3,'BASE'),(4,'UTM'),(9,'PRUEBA');
/*!40000 ALTER TABLE `licenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modelo_firewall`
--

DROP TABLE IF EXISTS `modelo_firewall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modelo_firewall` (
  `id` int NOT NULL AUTO_INCREMENT,
  `modelo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modelo_firewall`
--

LOCK TABLES `modelo_firewall` WRITE;
/*!40000 ALTER TABLE `modelo_firewall` DISABLE KEYS */;
INSERT INTO `modelo_firewall` VALUES (1,'100F'),(2,'201E'),(3,'30DR'),(4,'300E'),(5,'400E'),(6,'600E'),(7,'60F'),(8,'1000F'),(9,'1100E'),(10,'400F'),(11,'3000F'),(12,'90D'),(13,'30E'),(14,'30D'),(15,'PRUEBA2');
/*!40000 ALTER TABLE `modelo_firewall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pendrives`
--

DROP TABLE IF EXISTS `pendrives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pendrives` (
  `id` int NOT NULL AUTO_INCREMENT,
  `restriccion` varchar(45) DEFAULT NULL,
  `grado` varchar(45) DEFAULT NULL,
  `nombre` varchar(200) DEFAULT NULL,
  `apellidos` varchar(200) DEFAULT NULL,
  `numero_dispositivo` varchar(200) DEFAULT NULL,
  `fecha_entrega` varchar(200) DEFAULT NULL,
  `correo` varchar(200) DEFAULT NULL,
  `pendrivescol` varchar(45) DEFAULT NULL,
  `device_type` varchar(200) DEFAULT NULL,
  `hardware_id` varchar(200) DEFAULT NULL,
  `serial` varchar(200) DEFAULT NULL,
  `version` varchar(200) DEFAULT NULL,
  `estado` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pendrives`
--

LOCK TABLES `pendrives` WRITE;
/*!40000 ALTER TABLE `pendrives` DISABLE KEYS */;
INSERT INTO `pendrives` VALUES (1,'n4_solo red interna','CB1','MARIA','RODRIGUEZ SALAS','3201931','24-01-2022','sincorreo@fach.mil.cl','SafeStick Managed','230A1514','001E0BA1F053B281E00079C2','4.8.49.0','ESTADO MAYOR','EN USO'),(2,'n4_solo red interna','CDA(BA)','ENZO','GONZÁLEZ VASSALLO','3201946','24-01-2022','egonzalez@fach.mil.cl','SafeStick Managed','230A1514','001E0BB995EDB281E0007C40','4.8.49.0','ESTADO MAYOR','EN USO'),(3,'n1_sin restricciones','CDA(DA)','RENATO','OVIEDO SANCHEZ','3201933','24-01-2022','roviedo@fach.mil.cl','SafeStick Managed','230A1514','001E0BB995EDB281E0007C3C','4.8.49.0','ESTADO MAYOR','EN USO'),(4,'n4_solo red interna','CDB(AD)','JAVIER','DIAZ BERRIOS','3201951','24-01-2022','sincorreo@fach.mil.cl','SafeStick Managed','230A1514','000FFEC697CDB281E0007FF7','4.8.49.0','ESTADO MAYOR','EN USO'),(5,'n4_solo red interna','SG1','RODRIGO','GALLEGUILLOS RIVEROS','3201945','24-01-2022','rodrigo.galleguillosriveros@fach.mil.cl','SafeStick Managed','230A1514','000FFEC697CDB281E0007FF4','4.8.49.0','ESTADO MAYOR','EN USO'),(6,'n4_solo red interna','SOF','VÍCTOR','ARCE ORREGO','3201950','24-01-2022','v.arce@fach.mil.cl','SafeStick Managed','230A1514','001E0BB89D96B281E0007E36','4.8.49.0','ESTADO MAYOR','EN USO'),(7,'n4_solo red interna','SOM','GERMAN','LEIVA INOSTROZA','3201939','24-01-2022','sincorreo@fach.mil.cl','SafeStick Managed','230A1514','001E0BB995EDB281E0007C39','4.8.49.0','ESTADO MAYOR','EN USO'),(8,'n2_red interna & externa','SOM','JAIME','MELLA GAYOSO','3201949','24-01-2022','sincorreo@fach.mil.cl','SafeStick Managed','230A1514','000FFEC697CDB281E0007FFB','4.8.49.0','ESTADO MAYOR','EN USO'),(9,'n1_sin restricciones','GBA(TI)','HUGO','SALINAS VALDERRAMA','3202106','10-07-2019','hsalinas@fach.mil.cl','SafeStick Managed','230A1514','001E0BA1F053B2C0E000994A','4.8.49.0','ESTADO MAYOR','EN USO'),(10,'n1_sin restricciones','disponible 4','','','2129165 ','','disponible4@fach.mil.cl','Sentry ONE Managed','230A1550','80000BAC6CA9B5C0E0004788','6.6.0.0','ESTADO MAYOR','DISPONIBLE'),(11,'n1_sin restricciones','disponible1','',' ','2129163','','disponible1@fach.mil.cl','Sentry ONE Managed','230A1550','C4D9879662ECB5C0E000C4AD','6.6.0.0','ESTADO MAYOR','DISPONIBLE'),(12,'n1_sin restricciones','disponible10','',' ','2129143','','disponible10@fach.mil.cl','Sentry ONE Managed','230A1550','C4D9879662ECB5C0E000C4A2','6.6.0.0','ESTADO MAYOR','DISPONIBLE'),(13,'n1_sin restricciones','disponible12','',' ','2129145','','disponible12@fach.mil.cl','Sentry ONE Managed','230A1550','C4D9879662ECB5C0E000C4B0','6.6.0.0','ESTADO MAYOR','DISPONIBLE'),(14,'n1_sin restricciones','disponible13','',' ','2129146','','disponible13@fach.mil.cl','Sentry ONE Managed','230A1550','80000BAC6CA9B5C0E0004785','6.6.0.0','ESTADO MAYOR','DISPONIBLE'),(15,'n1_sin restricciones','disponible14','',' ','2129147','','disponible14@fach.mil.cl','Sentry ONE Managed','230A1550','80000BAC6CA9B5C0E000477A','6.6.0.0','ESTADO MAYOR','DISPONIBLE'),(16,'n1_sin restricciones','disponible15','',' ','2129148','','disponible15@fach.mil.cl','Sentry ONE Managed','230A1550','C4D9879662ECB5C0E000C4A6','6.6.0.0','ESTADO MAYOR','DISPONIBLE'),(17,'n1_sin restricciones','disponible16','',' ','2129149','','disponible16@fach.mil.cl','Sentry ONE Managed','230A1550','80000BAC6CA9B5C0E000477C','6.6.0.0','ESTADO MAYOR','DISPONIBLE'),(18,'n1_sin restricciones','disponible17','',' ','2129150','','disponible17@fach.mil.cl','Sentry ONE Managed','230A1550','C4D9879662ECB5C0E000C4AC','6.6.0.0','ESTADO MAYOR','DISPONIBLE'),(19,'n1_sin restricciones','disponible18','',' ','2129152','','disponible18@fach.mil.cl','Sentry ONE Managed','230A1550','80000BAC6CA9B5C0E000478A','6.6.0.0','ESTADO MAYOR','DISPONIBLE'),(20,'n1_sin restricciones','disponible19','',' ','2129153','','disponible19@fach.mil.cl','Sentry ONE Managed','230A1550','80000BAC6CA9B5C0E000478E','6.6.0.0','ESTADO MAYOR','DISPONIBLE'),(21,'n1_sin restricciones','disponible20','',' ','2129154','','disponible20@fach.mil.cl','Sentry ONE Managed','230A1550','80000BAC6CA9B5C0E0004786','6.6.0.0','ESTADO MAYOR','DISPONIBLE'),(22,'n1_sin restricciones','disponible21','',' ','2129156','','disponible21@fach.mil.cl','Sentry ONE Managed','230A1550','C4D987657DC6B5C0E0002537','6.6.0.0','ESTADO MAYOR','DISPONIBLE'),(23,'n1_sin restricciones','disponible22','',' ','2129157','','disponible22@fach.mil.cl','Sentry ONE Managed','230A1550','80000BAC6CA9B5C0E0004780','6.6.0.0','ESTADO MAYOR','DISPONIBLE'),(24,'n1_sin restricciones','disponible23','',' ','2129158','','disponible23@fach.mil.cl','Sentry ONE Managed','230A1550','C4D987657DC6B5C0E0002534','6.6.0.0','ESTADO MAYOR','DISPONIBLE'),(25,'n1_sin restricciones','disponible24','',' ','2129159','','disponible24@fach.mil.cl','Sentry ONE Managed','230A1550','80000BAC6CA9B5C0E0004782','6.6.0.0','ESTADO MAYOR','DISPONIBLE'),(26,'n1_sin restricciones','disponible25','',' ','2129160','','disponible25@fach.mil.cl','Sentry ONE Managed','230A1550','80000BAC6CA9B5C0E0004797','6.6.0.0','ESTADO MAYOR','DISPONIBLE'),(27,'n1_sin restricciones','disponible26','',' ','2129161','','disponible26@fach.mil.cl','Sentry ONE Managed','230A1550','C4D987657DC6B5C0E0002535','6.6.0.0','ESTADO MAYOR','DISPONIBLE'),(28,'n1_sin restricciones','disponible27','',' ','2129162','','disponible27@fach.mil.cl','Sentry ONE Managed','230A1550','C4D9879662ECB5C0E000C4A9','6.6.0.0','ESTADO MAYOR','DISPONIBLE'),(29,'n1_sin restricciones','disponible3','',' ','2129164','','disponible3@fach.mil.cl','Sentry ONE Managed','230A1550','C4D987657DC6B5C0E000254D','6.6.0.0','ESTADO MAYOR','DISPONIBLE'),(30,'n1_sin restricciones','disponible5','',' ','2127401','','disponible5@fach.mil.cl','Sentry ONE Managed','230A1550','C4D987657DC6B5A070000D52','6.6.0.0','ESTADO MAYOR','DISPONIBLE'),(31,'n1_sin restricciones','disponible6','',' ','2127402','','disponible6@fach.mil.cl','Sentry ONE Managed','230A1550','C4D9879662ECB5A07000ABBC','6.6.0.0','ESTADO MAYOR','DISPONIBLE'),(32,'n1_sin restricciones','disponible7','',' ','2127412','','disponible7@fach.mil.cl','Sentry ONE Managed','230A1550','C4D987657DC6B5A070000D3D','6.6.0.0','ESTADO MAYOR','DISPONIBLE'),(33,'n1_sin restricciones','disponible8','',' ','2129141','','disponible8@fach.mil.cl','Sentry ONE Managed','230A1550','80000BAC6CA9B5C0E0004777','6.6.0.0','ESTADO MAYOR','DISPONIBLE'),(34,'n1_sin restricciones','disponible9','',' ','2129142','','disponible9@fach.mil.cl','Sentry ONE Managed','230A1550','C4D987657DC6B5C0E0002532','6.6.0.0','ESTADO MAYOR','DISPONIBLE'),(35,'n1_sin restricciones','disponible2','',' ','3202276','','disponible2@fach.mil.cl','SafeStick Managed','230A1514','001E0BB995EDB330B000B604','4.8.49.0','ESTADO MAYOR','DISPONIBLE'),(36,'n2_red interna & externa','CDG(TI)','MANUEL','ARRIAGADA LÓPEZ','3202286','12-05-2022','marriagada@fach.mil.cl','Sentry ONE Managed','230A1550','C4D9879662ECB5C0F000C5DB','6.6.0.0','COMANDO DE COMBATE','EN USO'),(37,'n1_sin restricciones','GAV(A)','LEONARDO','ROMANINI GUTIERREZ','3202295','21-09-2021','disponible@fach.mil.cl','SafeStick Managed','230A1514','78E7D1C280DDB330B000A8A3','4.8.49.0','COMANDO DE COMBATE','EN USO'),(38,'n1_sin restricciones','GAV(A)','LEONARDO','ROMANINI GUTIERRREZ','3202290','25-05-2022','lromanini@fach.mil.cl','SafeStick Managed','230A1514','78E7D1C280DDB330B000A8A4','4.8.49.0','COMANDO DE COMBATE','EN USO'),(39,'n1_sin restricciones','CDA(TI)','CARLOS','MEIER HOYUELA','3202093','10-05-2022','cmeier@fach.mil.cl','SafeStick Managed','230A1514','001E0BB89D96B2C0E0009B59','4.8.49.0','COMANDO DE COMBATE','EN USO'),(40,'n2_red interna & externa','SG1','RONALD','SILVA ZAMORA','3202084','10-05-2022','dfeliu@fach.mil.cl','SafeStick Managed','230A1514','001E0BB89D96B2C0E0009B5D','4.8.49.0','COMANDO DE COMBATE','EN USO'),(41,'n1_sin restricciones','disponible8','','','2129155','','disponible8@fach.mil.cl','Sentry ONE Managed','230A1550','C4D987657DC6B5C0E0002536','6.6.0.0','1','DISPONIBLE'),(42,'n1_sin restricciones','disponible1','','','3202174','','disponible1@fach.mil.cl','SafeStick Managed','230A1514','2C27D7349F00B330B000A3FB','4.8.49.0','COMANDO DE COMBATE','DISPONIBLE'),(43,'n1_sin restricciones','disponible10','','','3202235','','disponible10@fach.mil.cl','SafeStick Managed','230A1514','000FFEC697CDB330B000BA80','4.8.49.0','COMANDO DE COMBATE','DISPONIBLE'),(44,'n1_sin restricciones','disponible11','','','3202236','','disponible11@fach.mil.cl','SafeStick Managed','230A1514','001E0BA1F053B330B000B071','4.8.49.0','COMANDO DE COMBATE','DISPONIBLE'),(45,'n1_sin restricciones','disponible2','','','3202227','','disponible2@fach.mil.cl','SafeStick Managed','230A1514','001E0BB89D74B330B000AA66','4.8.49.0','COMANDO DE COMBATE','DISPONIBLE'),(46,'n1_sin restricciones','disponible3','','','3202228','','disponible3@fach.mil.cl','SafeStick Managed','230A1514','78E7D1C280DDB330B000A89C','4.8.49.0','COMANDO DE COMBATE','DISPONIBLE'),(47,'n1_sin restricciones','disponible4','','','3202229','','disponible4@fach.mil.cl','SafeStick Managed','230A1514','001E0BB995EDB330B000B607','4.8.49.0','COMANDO DE COMBATE','DISPONIBLE'),(48,'n1_sin restricciones','disponible5','','','3202230','','disponible5@fach.mil.cl','SafeStick Managed','230A1514','000FFEC697CDB330B000BA81','4.8.49.0','COMANDO DE COMBATE','DISPONIBLE'),(49,'n1_sin restricciones','disponible6','','','3202231','','disponible6@fach.mil.cl','SafeStick Managed','230A1514','78E7D1C280DDB330B000A899','4.8.49.0','COMANDO DE COMBATE','DISPONIBLE'),(50,'n1_sin restricciones','disponible7','','','3202232','','disponible7@fach.mil.cl','SafeStick Managed','230A1514','001E0BB995EDB330B000B5FE','4.8.49.0','COMANDO DE COMBATE','DISPONIBLE'),(51,'n1_sin restricciones','disponible9','','','3202234','','disponible9@fach.mil.cl','SafeStick Managed','230A1514','2C27D7349F14B330B000C5DA','4.8.49.0','COMANDO DE COMBATE','DISPONIBLE'),(52,'n1_sin restricciones','CDA','BORIS','LEON LEON','3202083','13-06-2022','disponible@fach.mil.cl','SafeStick Managed','230A1514','001E0BB995EDB2C0E0009C39','4.8.49.0','COMANDO LOGISTICO','EN USO'),(53,'n2_red interna & externa','CDA','JOSÉ','VILLEGAS 3202202','22-01-2021','','test17@fach.mil.cl','SafeStick Managed','230A1514','001E0BA1F053B330B000B075','4.8.49.0','COMANDO LOGISTICO','EN USO'),(54,'n2_red interna & externa','CDA(A)','MARCELO','SALINAS CARDENAS','3201961','12-05-2022','msalinas@fach.mil.cl','SafeStick Managed','230A1514','001E0BB89D96B281E0007E32','4.8.49.0','COMANDO LOGISTICO','EN USO'),(55,'n1_sin restricciones','CDA(I)','ARMANDO','OSORIO VALENZUELA','3202116','12-05-2022','aosorio@fach.mil.cl','SafeStick Managed','230A1514','001E0BA1F053B2C0E0009946','4.8.49.0','COMANDO LOGISTICO','EN USO'),(56,'n1_sin restricciones','CDB','FELIPE MONTENEGRO','BARRIENTOS','3200981','','fmontenegro@fach.mil.cl','SafeStick Managed','230A1514','78E7D1C280DDB25160005045','4.8.49.0','COMANDO LOGISTICO','EN USO'),(57,'n1_sin restricciones','CDB(BA)','CRISTIAN','ERIZ AGUILERA','3202094','07-06-2022','cristianeriz@hotmail.com','SafeStick Managed','230A1514','001E0BA1F053B2C0E0009944','4.8.49.0','COMANDO LOGISTICO','EN USO'),(58,'n4_solo red interna','CDB(I)','JONATHAN','BRAVO PAREJA','3202192','12-05-2022','j.bravo@fach.mil.cl','SafeStick Managed','230A1514','001E0BB89D74B330B000AA67','4.8.49.0','COMANDO LOGISTICO','EN USO'),(59,'n1_sin restricciones','CDE(I)','GONZALO','MONTT ULLOA','3201941','29-06-2021','gmontt@fach.mil.cl','SafeStick Managed','230A1514','001E0BA1F053B281E00079C7','4.8.49.0','COMANDO LOGISTICO','EN USO'),(60,'n2_red interna & externa','CDE(J)','ALFREDO','FERRÁN SEPULVEDA','3201927','11-05-2022','aferran@fach.mil.cl','SafeStick Managed','230A1514','000FFEC697CDB281E0007FEF','4.8.49.0','COMANDO LOGISTICO','EN USO'),(61,'n1_sin restricciones','GAV(A)','JEAN','DESGROUX YCAZA','3202099','00-00-19','jpdesgroux@fach.mil.cl','SafeStick Managed','230A1514','000FFEC697CDB2C0E000A17F','4.8.49.0','COMANDO LOGISTICO','EN USO'),(62,'n1_sin restricciones','GBA(I)','JOAQUÍN','URZÚA RENTERÍA','3202221','10-10-2019','jurzua@fach.mil.cl','SafeStick Managed','230A1514','000FFEC697CDB330B000BA93','4.8.49.0','COMANDO LOGISTICO','EN USO'),(63,'n2_red interna & externa','PAC','XIMENA','BALDÚ ARAUCO','3202128','06-08-2021','xbaldu@fach.mil.cl','SafeStick Managed','230A1514','001E0BA1F053B2C0E000994B','4.8.49.0','COMANDO LOGISTICO','EN USO'),(64,'n1_sin restricciones','GBA(A)','FRANCISCO','PIZARRO ASTE','3202146','21-09-2021','fpizarro@fach.mil.cl','SafeStick Managed','230A1514','001E0BA1F053B2C0E000993F','4.8.49.0','COMANDO LOGISTICO','EN USO'),(65,'n1_sin restricciones','CDA(A)','FRANCISCO','RAMIREZ GOÑI','3202299','05-05-2022','ceo@fidae.cl','SafeStick Managed','230A1514','78E7D1C280DDB330B000A8A6','4.8.49.0','COMANDO LOGISTICO','EN USO'),(66,'n1_sin restricciones','CDG(DA)','ARIEL','GONZALEZ VENT','3202296','03-02-2022','securitymanager@fidae.cl','SafeStick Managed','230A1514','001E0BB89D74B330B000AA70','4.8.49.0','COMANDO LOGISTICO','EN USO'),(67,'n2_red interna & externa','CDG(AD)','MARCELO','GARCÍA CORREA','3201958','28-04-2021','disponible@fach.mil.cl','SafeStick Managed','230A1514','001E0BA1F053B281E00079C6','4.8.49.0','COMANDO LOGISTICO','EN USO'),(68,'n4_solo red interna','CDG','RAINER','RAPP ORTEGA','3202224','23-01-2020','rrapp@fach.mil.cl','SafeStick Managed','230A1514','001E0BA1F053B330B000B06E','4.8.34.0','COMANDO LOGISTICO','EN USO'),(69,'n2_red interna & externa','CDB(SG)','JEANNETTE','MOLLER MORRIS','3202189','01-10-2020','disponible@fach.mil.cl','SafeStick Managed','230A1514','001E0BA1F053B330B000B074','4.8.34.0','COMANDO LOGISTICO','EN USO'),(70,'n1_sin restricciones','disponible1','',' ','3202187','','disponible1@fach.mil.cl','SafeStick Managed','230A1514','001E0BB995EDB330B000B60A','4.8.49.0','COMANDO LOGISTICO','DISPONIBLE'),(71,'n1_sin restricciones','disponible10','',' ','3200999','','disponible10@fach.mil.cl','SafeStick Managed','230A1514','000FFEC697CDB25160005930','4.8.49.0','COMANDO LOGISTICO','DISPONIBLE'),(72,'n1_sin restricciones','disponible2','',' ','3202078','','disponible2@fach.mil.cl','SafeStick Managed','230A1514','001E0BB995EDB2C0E0009C32','4.8.49.0','COMANDO LOGISTICO','DISPONIBLE'),(73,'n1_sin restricciones','disponible3','',' ','3202182','','disponible3@fach.mil.cl','SafeStick Managed','230A1514','001E0BB89D96B330B000B5F9','4.8.49.0','COMANDO LOGISTICO','DISPONIBLE'),(74,'n1_sin restricciones','disponible4','',' ','3200761','','disponible4@fach.mil.cl','SafeStick Managed','230A1514','78E7D1C280DDB23090002EED','4.8.49.0','COMANDO LOGISTICO','DISPONIBLE'),(75,'n1_sin restricciones','disponible6','',' ','3200982','','disponible6@fach.mil.cl','SafeStick Managed','230A1514','000FFEF335F0B251600037A9','4.8.49.0','COMANDO LOGISTICO','DISPONIBLE'),(76,'n1_sin restricciones','disponible7','',' ','3200988','','disponible7@fach.mil.cl','SafeStick Managed','230A1514','000FFEC697CDB2516000592E','4.8.49.0','COMANDO LOGISTICO','DISPONIBLE'),(77,'n1_sin restricciones','disponible8','',' ','32','','disponible8@fach.mil.cl','SafeStick Managed','230A1514','001E0BA1F053B251600054F1','4.8.49.0','COMANDO LOGISTICO','DISPONIBLE'),(78,'n1_sin restricciones','disponible9','',' ','3200990','','disponible9@fach.mil.cl','SafeStick Managed','230A1514','78E7D1C280DDB25160005047','4.8.49.0','COMANDO LOGISTICO','DISPONIBLE'),(79,'n1_sin restricciones','GAV(A)','HUGO','RODRÍGUEZ GONZÁLEZ','3202107','11-03-2022','ricardo.valdivia@fach.mil.cl','SafeStick Managed','230A1514','001E0BB89D96B2C0E0009B5F','4.8.49.0','COMANDO DE PERSONAL','EN USO'),(80,'n2_red interna & externa','CDA(DA)','ANSELMO','SALAS BARRIE','3201952','20-05-2019','asalasb@fach.mil.cl','SafeStick Managed','230A1514','000FFEC697CDB281E0007FF0','4.8.49.0','COMANDO DE PERSONAL','EN USO'),(81,'n1_sin restricciones','GBA(A)','JUAN','ILHARREGUY NIKLITSC','3202139','25-05-2022','dsiponible@fach.mil.cl','SafeStick Managed','230A1514','001E0BA1F053B2C0E0009942','4.8.49.0','COMANDO DE PERSONAL','EN USO'),(82,'n2_red interna & externa','CMD(AD)','RODRIGO','PALMA VIOLIC','3202210','14-06-2022','test@fach.mil.cl','SafeStick Managed','230A1514','000FFEC697CDB330B000BA95','4.8.49.0','COMANDO DE PERSONAL','EN USO'),(83,'n1_sin restricciones','SG2','RAMON','VENEGAS MONARDES','3202177','17-05-2022','disponible3@fach.mil.cl','SafeStick Managed','230A1514','000FFEC697CDB330B000BA8B','4.8.49.0','COMANDO DE PERSONAL','EN USO'),(84,'n1_sin restricciones','CDG(SD)','CRISTIAN','NAVARRETE CONTR','3202149','09-06-2022','cnavarrete@fach.mil.cl','SafeStick Managed','230A1514','001E0BB995EDB2C0E0009C2B','4.8.49.0','COMANDO DE PERSONAL','EN USO'),(85,'n1_sin restricciones','GBA(AD-R)','RODRIGO','ALARCÓN NOVAS','3202293','09-06-2022','ralarconn@fach.mil.cl','SafeStick Managed','230A1514','000FFEC697CDB330B000BA86','4.8.49.0','COMANDO DE PERSONAL','EN USO'),(86,'n1_sin restricciones','GBA(S)','CARLOS','POLANCO LAZO','3202077','09-06-2022','disponible@fach.mil.cl','SafeStick Managed','230A1514','001E0BB89D96B2C0E0009B51','4.8.49.0','COMANDO DE PERSONAL','EN USO'),(87,'n1_sin restricciones','disponible1','',' ','3202184','','disponible1@fach.mil.cl','SafeStick Managed','230A1514','001E0BB995EDB330B000B608','4.8.49.0','COMANDO DE PERSONAL','DISPONIBLE'),(88,'n1_sin restricciones','disponible10','',' ','3202217','','disponible10@fach.mil.cl','SafeStick Managed','230A1514','001E0BB89D96B330B000B5FE','4.8.49.0','COMANDO DE PERSONAL','DISPONIBLE'),(89,'n1_sin restricciones','disponible11','',' ','3200984','','disponible11@fach.mil.cl','SafeStick Managed','230A1514','001E0BB89D96B251600057EF','4.8.49.0','COMANDO DE PERSONAL','DISPONIBLE'),(90,'n1_sin restricciones','disponible12','',' ','3202143','','disponible12@fach.mil.cl','SafeStick Managed','230A1514','001E0BB995EDB2C0E0009C3A','4.8.49.0','COMANDO DE PERSONAL','DISPONIBLE'),(91,'n1_sin restricciones','disponible13','',' ','3202127','','disponible13@fach.mil.cl','SafeStick Managed','230A1514','001E0BB89D96B2C0E0009B5E','4.8.49.0','COMANDO DE PERSONAL','DISPONIBLE'),(92,'n1_sin restricciones','disponible14','',' ','3202298','','disponible14@fach.mil.cl','SafeStick Managed','230A1514','001E0BA1F053B330B000B070','4.8.49.0','COMANDO DE PERSONAL','DISPONIBLE'),(93,'n1_sin restricciones','disponible15','',' ','3200998','','disponible15@fach.mil.cl','SafeStick Managed','230A1514','000FFEF335F0B251600037A7','4.8.49.0','COMANDO DE PERSONAL','DISPONIBLE'),(94,'n1_sin restricciones','disponible16','',' ','3202082','','disponible16@fach.mil.cl','SafeStick Managed','230A1514','001E0BA1F053B2C0E0009943','4.8.49.0','COMANDO DE PERSONAL','DISPONIBLE'),(95,'n1_sin restricciones','disponible17','',' ','3202096','','disponible17@fach.mil.cl','SafeStick Managed','230A1514','001E0BB995EDB2C0E0009C35','4.8.49.0','COMANDO DE PERSONAL','DISPONIBLE'),(96,'n1_sin restricciones','disponible18','',' ','3201973','','disponible18@fach.mil.cl','SafeStick Managed','230A1514','001E0BB89D96B281E0007E3E','4.8.49.0','COMANDO DE PERSONAL','DISPONIBLE'),(97,'n1_sin restricciones','disponible19','',' ','3201936','','disponible19@fach.mil.cl','SafeStick Managed','230A1514','001E0BB995EDB281E0007C3E','4.8.49.0','COMANDO DE PERSONAL','DISPONIBLE'),(98,'n1_sin restricciones','disponible2','',' ','3202254','','disponible2@fach.mil.cl','SafeStick Managed','230A1514','001E0BB995EDB330B000B60F','4.8.49.0','COMANDO DE PERSONAL','DISPONIBLE'),(99,'n1_sin restricciones','disponible20','',' ','3202267','','disponible20@fach.mil.cl','SafeStick Managed','230A1514','001E0BB89D96B330B000B5FC','4.8.49.0','COMANDO DE PERSONAL','DISPONIBLE'),(100,'n1_sin restricciones','disponible21','',' ','3202252','','disponible21@fach.mil.cl','SafeStick Managed','230A1514','001E0BA1F053B330B000B06D','4.8.49.0','COMANDO DE PERSONAL','DISPONIBLE'),(101,'n1_sin restricciones','disponible22','',' ','3202253','','disponible22@fach.mil.cl','SafeStick Managed','230A1514','78E7D1C280DDB330B000A898','4.8.49.0','COMANDO DE PERSONAL','DISPONIBLE'),(102,'n1_sin restricciones','disponible23','',' ','3202129','','disponible23@fach.mil.cl','SafeStick Managed','230A1514','000FFEC697CDB2C0E000A17E','4.8.49.0','COMANDO DE PERSONAL','DISPONIBLE'),(103,'n1_sin restricciones','disponible24','',' ','3202130','','disponible24@fach.mil.cl','SafeStick Managed','230A1514','001E0BA1F053B2C0E0009947','4.8.49.0','COMANDO DE PERSONAL','DISPONIBLE'),(104,'n1_sin restricciones','disponible25','',' ','3202131','','disponible25@fach.mil.cl','SafeStick Managed','230A1514','001E0BB995EDB2C0E0009C37','4.8.49.0','COMANDO DE PERSONAL','DISPONIBLE'),(105,'n1_sin restricciones','disponible26','',' ','3202132','','disponible26@fach.mil.cl','SafeStick Managed','230A1514','000FFEC697CDB2C0E000A171','4.8.49.0','COMANDO DE PERSONAL','DISPONIBLE'),(106,'n1_sin restricciones','disponible27','',' ','3202134','','disponible27@fach.mil.cl','SafeStick Managed','230A1514','001E0BA1F053B2C0E000994D','4.8.49.0','COMANDO DE PERSONAL','DISPONIBLE'),(107,'n1_sin restricciones','disponible28','',' ','3202135','','disponible28@fach.mil.cl','SafeStick Managed','230A1514','001E0BB995EDB2C0E0009C33','4.8.49.0','COMANDO DE PERSONAL','DISPONIBLE'),(108,'n1_sin restricciones','disponible29','',' ','3202136','','disponible29@fach.mil.cl','SafeStick Managed','230A1514','000FFEC697CDB2C0E000A16E','4.8.49.0','COMANDO DE PERSONAL','DISPONIBLE'),(109,'n1_sin restricciones','disponible3','',' ','3202273','','disponible3@fach.mil.cl','SafeStick Managed','230A1514','001E0BA1F053B330B000B06F','4.8.49.0','COMANDO DE PERSONAL','DISPONIBLE'),(110,'n1_sin restricciones','disponible30','',' ','3202137','','disponible30@fach.mil.cl','SafeStick Managed','230A1514','001E0BB995EDB2C0E0009C2E','4.8.49.0','COMANDO DE PERSONAL','DISPONIBLE'),(111,'n1_sin restricciones','disponible31','',' ','3202144','','disponible31@fach.mil.cl','SafeStick Managed','230A1514','001E0BA1F053B2C0E0009940','4.8.49.0','COMANDO DE PERSONAL','DISPONIBLE'),(112,'n1_sin restricciones','disponible32','',' ','3201972','','disponible32@fach.mil.cl','SafeStick Managed','230A1514','001E0BB89D96B281E0007E37','4.8.49.0','COMANDO DE PERSONAL','DISPONIBLE'),(113,'n1_sin restricciones','disponible34','',' ','3202258','','disponible34@fach.mil.cl','SafeStick Managed','230A1514','001E0BB89D74B330B000AA68','4.8.49.0','COMANDO DE PERSONAL','DISPONIBLE'),(114,'n1_sin restricciones','disponible35','',' ','3202259','','disponible35@fach.mil.cl','SafeStick Managed','230A1514','001E0BB995EDB330B000B60E','4.8.49.0','COMANDO DE PERSONAL','DISPONIBLE'),(115,'n1_sin restricciones','disponible36','',' ','3202262','','disponible36@fach.mil.cl','SafeStick Managed','230A1514','000FFEC697CDB330B000BA94','4.8.49.0','COMANDO DE PERSONAL','DISPONIBLE'),(116,'n1_sin restricciones','disponible37','',' ','3202263','','disponible37@fach.mil.cl','SafeStick Managed','230A1514','000FFEC697CDB330B000BA91','4.8.49.0','COMANDO DE PERSONAL','DISPONIBLE'),(117,'n1_sin restricciones','disponible38','',' ','3202264','','disponible38@fach.mil.cl','SafeStick Managed','230A1514','2C27D7349F14B330B000C5D2','4.8.49.0','COMANDO DE PERSONAL','DISPONIBLE'),(118,'n1_sin restricciones','disponible39','',' ','3202265','','disponible39@fach.mil.cl','SafeStick Managed','230A1514','2C27D7349F00B330B000A3FD','4.8.49.0','COMANDO DE PERSONAL','DISPONIBLE'),(119,'n1_sin restricciones','disponible4','',' ','3200996','','disponible4@fach.mil.cl','SafeStick Managed','230A1514','2C27D71DDB62B251600036F5','4.8.49.0','COMANDO DE PERSONAL','DISPONIBLE'),(120,'n1_sin restricciones','disponible40','',' ','3202266','','disponible40@fach.mil.cl','SafeStick Managed','230A1514','001E0BB89D96B330B000B5FF','4.8.49.0','COMANDO DE PERSONAL','DISPONIBLE'),(121,'n1_sin restricciones','disponible5','',' ','3202089','','disponible5@fach.mil.cl','SafeStick Managed','230A1514','000FFEC697CDB2C0E000A179','4.8.49.0','COMANDO DE PERSONAL','DISPONIBLE'),(122,'n1_sin restricciones','disponible6','',' ','3202215','','disponible6@fach.mil.cl','SafeStick Managed','230A1514','001E0BB89D74B330B000AA6B','4.8.49.0','COMANDO DE PERSONAL','DISPONIBLE'),(123,'n1_sin restricciones','disponible7','',' ','3200979','','disponible7@fach.mil.cl','SafeStick Managed','230A1514','78ACC094B09FB25160003404','4.8.49.0','COMANDO DE PERSONAL','DISPONIBLE'),(124,'n1_sin restricciones','disponible8','',' ','3202141','','disponible8@fach.mil.cl','SafeStick Managed','230A1514','001E0BA1F053B2C0E0009941','4.8.49.0','COMANDO DE PERSONAL','DISPONIBLE'),(125,'n1_sin restricciones','disponible9','',' ','3200986','','disponible9@fach.mil.cl','SafeStick Managed','230A1514','001E0BB89D96B251600057F0','4.8.49.0','COMANDO DE PERSONAL','DISPONIBLE'),(126,'n1_sin restricciones','disponible33','',' ','3202257','','disponible33@fach.mil.cl','SafeStick Managed','230A1514','001E0BA1F053B330B000B077','4.8.34.0','COMANDO DE PERSONAL','DISPONIBLE'),(127,'n1_sin restricciones','GBA(S)','XABIER','DEARETXABA','3202133','08-07-2021','xdearetxabala@fach.mil.cl','SafeStick Managed','230A1514','000FFEC697CDB2C0E000A172','4.8.49.0','COMANDO DE PERSONAL','EN USO'),(128,'n2_red interna & externa','CB2','CARLOS','BASTÍAS GONZÁLEZ','3202219','23-06-2022','c.e.bastias@gmail.com','SafeStick Managed','230A1514','2C27D7349F14B330B000C5D3','4.8.49.0','PRIMERA BRIGADA','EN USO'),(129,'n1_sin restricciones','CDA(A)','EDUARDO','CUADRA WELLS','3202195','13-07-2020','ecuadra@fach.mil.cl','SafeStick Managed','230A1514','000FFEC697CDB330B000BA87','4.8.49.0','PRIMERA BRIGADA','EN USO'),(130,'n2_red interna & externa','CDE(J)','CRISTINA','FABRY M','3202214','13-07-2020','aaaaa@fach.mil.cl','SafeStick Managed','230A1514','001E0BB89D96B330B000B5FD','4.8.49.0','PRIMERA BRIGADA','EN USO'),(131,'n4_solo red interna','CDG(A)','ALAN','CARCAMO','3202162','13-07-2020','darbunic@fach.mil.cl','SafeStick Managed','230A1514','000FFEC697CDB330B000BA8F','4.8.49.0','PRIMERA BRIGADA','EN USO'),(132,'n1_sin restricciones','CDG(A)','RODRIGO','CIFUENTES H','3202166','03-07-2020','iba@fach.mil.cl','SafeStick Managed','230A1514','2C27D7349F00B330B000A3FA','4.8.49.0','PRIMERA BRIGADA','EN USO'),(133,'n1_sin restricciones','GBA(A)','JAVIER','DUBLÉ SEARLE','','','jduble@fach.mil.cl','SafeStick Managed','230A1514','001E0BB89D96B330B000B5F2','4.8.49.0','PRIMERA BRIGADA','EN USO'),(134,'n1_sin restricciones','SOF','CARLOS','ALIAGA M','3202200','13-07-2020','iba@fach.mil.cl','SafeStick Managed','230A1514','001E0BB89D74B330B000AA74','4.8.49.0','PRIMERA BRIGADA','EN USO'),(135,'n1_sin restricciones','TTE(DA)','FELIPE','PERALTA RUMIE','3202171','23-06-2022','disponible@fach.mil.cl','SafeStick Managed','230A1514','001E0BB89D96B330B000B5F6','4.8.49.0','PRIMERA BRIGADA','EN USO'),(136,'n4_solo red interna','TTE(I)','MAXIMILIANO','OSORIO L','3202161','13-07-2020','jorge.palma@fach.mil.cl','SafeStick Managed','230A1514','001E0BB995EDB330B000B609','4.8.34.0','PRIMERA BRIGADA','EN USO'),(137,'n4_solo red interna','TTE(TI)','ALONSO','CARCAMO CONTRERAS','3202175','13-07-2020','acarcamo@fach.mil.cl','SafeStick Managed','230A1514','001E0BB89D96B330C000B615','4.8.34.0','PRIMERA BRIGADA','EN USO'),(138,'n4_solo red interna','CB1','JAIME','CALDERON C','3202168','13-07-2020','disponible@fach.mil.cl','SafeStick Managed','230A1514','001E0BB89D96B330B000B5F8','4.8.34.0','PRIMERA BRIGADA','EN USO'),(139,'n4_solo red interna','CDE(DA)','RODRIGO','VERGARA L','3202204','13-07-2020','disponible@fach.mil.cl','SafeStick Managed','230A1514','001E0BA1F053B330B000B072','4.8.34.0','PRIMERA BRIGADA','EN USO'),(140,'n4_solo red interna','CDG(A)','CLAUDIO','IBARA RAVINET','3202166','13-07-2020','cibara@fach.mil.cl','SafeStick Managed','230A1514','001E0BB89D74B330B000AA6E','4.8.34.0','PRIMERA BRIGADA','EN USO'),(141,'n4_solo red interna','CDG(TI)','RODRIGO','ESTAY G','3202158','13-07-2020','eantiguay@fach.mil.cl','SafeStick Managed','230A1514','001E0BB89D74B330B000AA71','4.8.34.0','PRIMERA BRIGADA','EN USO'),(142,'n4_solo red interna','SG1','JOSÉ','VALLE B','3202198','13-07-2020','disponible@fach.mil.cl','SafeStick Managed','230A1514','2C27D7349F00B330B000A400','4.8.34.0','PRIMERA BRIGADA','EN USO'),(143,'n4_solo red interna','SG2','JORGE','PALMA ALVARADO','3202154','13-07-2020','rsalas@fach.mil.cl','SafeStick Managed','230A1514','78E7D1C280DDB330B000A8A0','4.8.34.0','PRIMERA BRIGADA','EN USO'),(144,'n4_solo red interna','SOF','ESTEBAN','QUINTANA M','3202220','13-07-2020','equintana@fach.mil.cl','SafeStick Managed','230A1514','78E7D1C280DDB330B000A8A9','4.8.34.0','PRIMERA BRIGADA','EN USO'),(145,'n1_sin restricciones','CDB','FELIPE','MEDRANO DIAZ','3202301','05-01-2022','jose.lopezr@fach.mil.cl','SafeStick Managed','230A1514','2C27D7349F14B330B000C5D5','4.8.49.0','SEGUNDA BRIGADA','EN USO'),(146,'n1_sin restricciones','CDB(DA)','SEBASTIÁN','PEREZDECASTRO ZENTENO','3201959','16-05-2022','disponible@fach.mil.cl','SafeStick Managed','230A1514','001E0BB89D96B281E0007E3B','4.8.49.0','SEGUNDA BRIGADA','EN USO'),(147,'n2_red interna & externa','CDB(DA)','SEBASTIÁN','PEREZDECASTRO ZENTENO','3202087','16-05-2022','disp@fach.mil.cl','SafeStick Managed','230A1514','001E0BB89D96B2C0E0009B52','4.8.49.0','SEGUNDA BRIGADA','EN USO'),(148,'n4_solo red interna','CDG(A)','RODRIGO','GEISSBUHLER GALINDO','3202101','16-05-2022','disponible@fach.mil.cl','SafeStick Managed','230A1514','000FFEC697CDB2C0E000A177','4.8.49.0','SEGUNDA BRIGADA','EN USO'),(149,'n1_sin restricciones','DGAC','RAÚL JORQUERA','CONRADS','3202190','','rjorquera@fach.mil.cl','SafeStick Managed','230A1514','78E7D1C280DDB330B000A89B','4.8.49.0','SEGUNDA BRIGADA','EN USO'),(150,'n1_sin restricciones','GBA(A)','ANDRÉS','LEIVA DIVASTO','3202278','25-05-2022','disponible@fach.mil.cl','SafeStick Managed','230A1514','001E0BA1F053B330B000B06C','4.8.49.0','SEGUNDA BRIGADA','EN USO'),(151,'n4_solo red interna','CDA(A)','VICENTE','DONOSO HERMAN','3202079','16-05-2022','iiba@fach.mil.cl','SafeStick Managed','230A1514','001E0BB89D96B2C0E0009B55','4.8.47.0','SEGUNDA BRIGADA','EN USO'),(152,'n4_solo red interna','CDB(DA)','SEBASTIÁN','PÉREZDECASTRO ZENTENO','3201962','16-05-2022','amoreira@fach.mil.cl','SafeStick Managed','230A1514','000FFEC697CDB281E0007FF1','4.8.34.0','SEGUNDA BRIGADA','EN USO'),(153,'n4_solo red interna','CDG(A)','RODRIGO','GRUNERT MARDONEZ','3202207','16-05-2022','disponible175@fach.mil.cl','SafeStick Managed','230A1514','78E7D1C280DDB330B000A8A1','4.8.34.0','SEGUNDA BRIGADA','EN USO'),(154,'n1_sin restricciones','disponible1','',' ','3202140','','disponible1@fach.mil.cl','SafeStick Managed','230A1514','001E0BA1F053B2C0E0009948','4.8.49.0','TERCERA BRIGADA','DISPONIBLE'),(155,'n1_sin restricciones','disponible2','',' ','3202300','','disponible2@fach.mi.cl','SafeStick Managed','230A1514','78E7D1C280DDB330B000A89D','4.8.49.0','TERCERA BRIGADA','DISPONIBLE'),(156,'n1_sin restricciones','disponible3','',' ','3202284','','disponible3@fach.mil.cl','SafeStick Managed','230A1514','2C27D7349F14B330B000C5D8','4.8.49.0','TERCERA BRIGADA','DISPONIBLE'),(157,'n1_sin restricciones','disponible4','',' ','3202288','','disponible4@fach.mil.cl','SafeStick Managed','230A1514','001E0BB89D96B330B000B5EC','4.8.49.0','TERCERA BRIGADA','DISPONIBLE'),(158,'n1_sin restricciones','disponible5','',' ','3202291','','disponible5@fach.mil.cl','SafeStick Managed','230A1514','001E0BB995EDB330B000B602','4.8.49.0','TERCERA BRIGADA','DISPONIBLE'),(159,'n1_sin restricciones','disponible6','',' ','3201928','','disponible6@fach.mil.cl','SafeStick Managed','230A1514','000FFEC697CDB281E0007FF9','4.8.49.0','TERCERA BRIGADA','DISPONIBLE'),(160,'n1_sin restricciones','GBA(A)','SERGIO','ROJAS SCHWEMMER','3202277','25-05-2022','disponible@fach.mil.cl','SafeStick Managed','230A1514','78E7D1C280DDB330B000A897','4.8.49.0','TERCERA BRIGADA','EN USO'),(161,'n4_solo red interna','CB1','RODRIGO','TAPIA CORTÉS','3202225','12-04-2022','4ba@ach.mil.cl','SafeStick Managed','230A1514','001E0BB995EDB330B000B606','4.8.49.0','CUARTA BRIGADA','EN USO'),(162,'n2_red interna & externa','CB1','RUBÉN','CARRERA DÍAZ','3202163','12-04-2022','4ba@fach.mil.cl','SafeStick Managed','230A1514','001E0BB89D96B330B000B5FA','4.8.49.0','CUARTA BRIGADA','EN USO'),(163,'n1_sin restricciones','GBA','MIGUEL STANGE','MUÑOZ','3202197','','disponible@fach.mil.cl','SafeStick Managed','230A1514','2C27D7349F14B330B000C5DB','4.8.49.0','CUARTA BRIGADA','EN USO'),(164,'n4_solo red interna','SG1','PAULO','GALDAMES CANDIA','3202181','12-04-2022','ivba@fach.mil.cl','SafeStick Managed','230A1514','001E0BB89D96B330C000B616','4.8.49.0','CUARTA BRIGADA','EN USO'),(165,'n4_solo red interna','SG1','PAULO','GALDAMES CANDIA','3202194','12-04-2022','disponible@fach.mil.cl','SafeStick Managed','230A1514','78E7D1C280DDB330B000A8A7','4.8.49.0','CUARTA BRIGADA','EN USO'),(166,'n1_sin restricciones','SG2','ALEX','SOTO MARTÍNEZ','3202164','12-04-2022','mhernandeza@fach.mil.cl','SafeStick Managed','230A1514','000FFEC697CDB330B000BA8E','4.8.49.0','CUARTA BRIGADA','EN USO'),(167,'n4_solo red interna','SG2','CRISTIAN','REYES BUSTOS','3202159','12-04-2022','4ba@fach.mil.cl','SafeStick Managed','230A1514','001E0BB89D74B330B000AA64','4.8.49.0','CUARTA BRIGADA','EN USO'),(168,'n2_red interna & externa','SG2','MIGUEL','HERNÁNDEZ ARRIAGADA','3202160','12-04-2022','disponible@fach.mil.cl','SafeStick Managed','230A1514','2C27D7349F00B330B000A404','4.8.49.0','CUARTA BRIGADA','EN USO'),(169,'n1_sin restricciones','SG2','MIGUEL','HERNÁNDEZ ARRIAGADA','3202199','12-04-2022','4ba@fach.mil.cl','SafeStick Managed','230A1514','2C27D7349F00B330B000A3FE','4.8.49.0','CUARTA BRIGADA','EN USO'),(170,'n4_solo red interna','SOF','JORGE','ALARCÓN LIZAMA','3202196','12-04-2022','ivba@fach.mil.cl','SafeStick Managed','230A1514','2C27D7349F00B330B000A3FF','4.8.49.0','CUARTA BRIGADA','EN USO'),(171,'n2_red interna & externa','TTE(DA)','NICOLE','GALVEZ DIGENOVA','3202156','12-04-2022','dispo@fach.mil.cl','SafeStick Managed','230A1514','000FFEC697CDB330B000BA88','4.8.49.0','CUARTA BRIGADA','EN USO'),(172,'n4_solo red interna','CB2','LORETO','ARRATIA PUENTES','3202167','12-04-2022','ivba@fach.mil.cl','SafeStick Managed','230A1514','000FFEC697CDB330B000BA8C','4.8.34.0','CUARTA BRIGADA','EN USO'),(173,'n4_solo red interna','CDB','FABIAN MELLA','OLIVOS','3202218','','dispo@fach.mil.cl','SafeStick Managed','230A1514','001E0BB89D96B330B000B5ED','4.8.34.0','CUARTA BRIGADA','EN USO'),(174,'n4_solo red interna','CDB(BA)','ALFREDO','GAETE ROSAS','3202208','12-04-2022','ivba@fach.mil.cl','SafeStick Managed','230A1514','001E0BB89D74B330B000AA72','4.8.34.0','CUARTA BRIGADA','EN USO'),(175,'n4_solo red interna','CDE','NICOLÁS SEPULVEDA','MONTAÑA','3202203','','4ba@fach.mil.cl','SafeStick Managed','230A1514','2C27D7349F00B330B000A401','4.8.34.0','CUARTA BRIGADA','EN USO'),(176,'n2_red interna & externa','SG1','CARLOS','PINO PINO','3202213','12-04-2022','hcortes@fach.mil.cl','SafeStick Managed','230A1514','000FFEC697CDB330B000BA89','4.8.34.0','CUARTA BRIGADA','EN USO'),(177,'n1_sin restricciones','SG2','EDINSON','GONZÁLEZ INZUNZA','3202090','12-04-2022','gguzman@fach.mil.cl','SafeStick Managed','230A1514','001E0BB995EDB2C0E0009C31','4.8.34.0','CUARTA BRIGADA','EN USO'),(178,'n4_solo red interna','SG2','EDUARDO','SEGUEL CATENACCI','3202152','12-04-2022','disponible@fach.mil.cl','SafeStick Managed','230A1514','001E0BB89D74B330B000AA69','4.8.34.0','CUARTA BRIGADA','EN USO'),(179,'n4_solo red interna','SG2','EDUARDO','SEGUEL CATENACCI','3202169','12-04-2022','ivba@fach.mil.cl','SafeStick Managed','230A1514','001E0BB995EDB330B000B60B','4.8.34.0','CUARTA BRIGADA','EN USO'),(180,'n4_solo red interna','SOF','JORGE','RIVERA GUSMÁN','3202157','12-04-2022','4ba@fach.mil.cl','SafeStick Managed','230A1514','2C27D7349F00B330B000A405','4.8.34.0','CUARTA BRIGADA','EN USO'),(181,'n4_solo red interna','SOF','RICHARD','ORELLANA CÁCERES','3202205','12-04-2022','disponible@fach.mil.cl','SafeStick Managed','230A1514','001E0BB89D96B330B000B5FB','4.8.34.0','CUARTA BRIGADA','EN USO'),(182,'n4_solo red interna','TTE(A)','KARL','FAHRENKROG MULLER','3202176','12-04-2022','4ba@fach.mil.cl','SafeStick Managed','230A1514','001E0BB89D74B330B000AA6A','4.8.34.0','CUARTA BRIGADA','EN USO'),(183,'n4_solo red interna','CDG(I)','JAIME','CEPEDA DIAZ','3200989','18-05-2022','jcepeda@fach.mil.cl','SafeStick Managed','230A1514','000FFEC697CDB2516000592F','4.8.49.0','QUINTA BRIGADA','EN USO'),(184,'n1_sin restricciones','GBA(A)','PEDRO','NADEAU PAVEZ','3202151','20-07-2021','pnadeau@fach.mil.cl','SafeStick Managed','230A1514','001E0BB995EDB2C0E0009C2D','4.8.49.0','QUINTA BRIGADA','EN USO'),(185,'n1_sin restricciones','SG1','BORIS','MORAGA RUIZ','3200991','18-05-2022','bmoragaruiz@gmail.com','SafeStick Managed','230A1514','001E0BB89D96B251600057EC','4.8.49.0','QUINTA BRIGADA','EN USO'),(186,'n4_solo red interna','SG1','DANIEL','VERGARA ALDAY','3200977','18-05-2022','disponible@fach.mil.cl','SafeStick Managed','230A1514','001E0BB89D96B251600057F1','4.8.49.0','QUINTA BRIGADA','EN USO'),(187,'n4_solo red interna','SG1','DANIEL','VERGARA ALDAY','3200993','18-05-2022','contradata@protonmail.com','SafeStick Managed','230A1514','2C27D71DDB62B251600036F7','4.8.49.0','QUINTA BRIGADA','EN USO'),(188,'n2_red interna & externa','SG1','DANIEL','VERGARA ALDAY','3200995','18-05-2022','contradata@protonmail.com','SafeStick Managed','230A1514','2C27D71DDB62B251600036F6','4.8.49.0','QUINTA BRIGADA','EN USO'),(189,'n4_solo red interna','SG1','DANIEL','VERGARA ALDAY','3200997','18-05-2022','disponible@fach.mil.cl','SafeStick Managed','230A1514','78E7D1C280DDB25160005048','4.8.49.0','QUINTA BRIGADA','EN USO'),(190,'n1_sin restricciones','SG1','HERNÁN','CARTAGENA SÁNCHEZ','3201001','18-05-2022','hernan.cartagena@fach.mil.cl','SafeStick Managed','230A1514','78ACC094B09FB25160003403','4.8.49.0','QUINTA BRIGADA','EN USO'),(191,'n2_red interna & externa','SOF','CLAUDIO','SILVA MEDINA','3200980','18-05-2022','csilvam@fach.mil.cl','SafeStick Managed','230A1514','2C27D7349BA7B2516000372C','4.8.49.0','QUINTA BRIGADA','EN USO'),(192,'n2_red interna & externa','SOF','CRISTIAN','DUEÑAS GÁLVEZ','3200978','18-05-2022','cristian.73_@hotmail.com','SafeStick Managed','230A1514','2C27D7349BA7B25160003729','4.8.49.0','QUINTA BRIGADA','EN USO'),(193,'n4_solo red interna','CDG(A)','GONZALO','MARTINEZ BARRIOS','3200992','18-05-2022','gmartinez@fach.mil.cl','SafeStick Managed','230A1514','2C27D71DDB62B251600036F4','4.8.34.0','QUINTA BRIGADA','EN USO'),(194,'n4_solo red interna','SG1','FRANCISCO','VEGA MUÑOZ','3200987','18-05-2022','vegator@gmail.com','SafeStick Managed','230A1514','000FFEF335F0B251600037A8','4.8.34.0','QUINTA BRIGADA','EN USO'),(195,'n4_solo red interna','SG2','MARCELO','ROJAS REBOLLEDO','3200985','18-05-2022','marcelorojas539@gmail.com','SafeStick Managed','230A1514','78ACC094B09FB25160003405','4.8.34.0','QUINTA BRIGADA','EN USO'),(196,'n1_sin restricciones','GBA(DA)','GONZALO','OPAZO DROUILLAS','3202125','20-01-2021','opazo@fach.mil.cl','SafeStick Managed','230A1514','001E0BB995EDB2C0E0009C3B','4.8.49.0','EMCO','EN USO'),(197,'n1_sin restricciones','GDA(A)','JOSÉ','NOGUEIRA LEON','3202153','10-10-2019','jnogueira@fach.mil.cl','SafeStick Managed','230A1514','000FFEC697CDB330B000BA8D','4.8.49.0','EMCO','EN USO'),(198,'n1_sin restricciones','SALITRE','TEMPORAL','2022 ','','','salitretemporal@fach.mil.cl','SafeStick Managed','230A1514','000FFEC697CDB281E0007FED','4.8.49.0','OTROS','EN USO'),(199,'n1_sin restricciones','USUARIO','TEMPORAL','SALITRE 2022','','','usuariotemporal@fach.mil.cl','SafeStick Managed','230A1514','001E0BB89D96B330B000B5F1','4.8.49.0','OTROS','EN USO'),(200,'n1_sin restricciones','USUARIO','TEMPORAL','SALITRE 2022','','','usuariosalitre@fach.mil.cl','SafeStick Managed','230A1514','000FFEC697CDB330B000BA82','4.8.49.0','OTROS','EN USO'),(201,'n1_sin restricciones','USUARIO','TEMPORAL','SALITRE 2022','','','usuariotemporal@fach.mil.cl','SafeStick Managed','230A1514','2C27D7349F14B330B000C5D0','4.8.49.0','OTROS','EN USO'),(202,'n1_sin restricciones','RETORNADO','',' ','','12-08-2022','cmeier@fach.mil.cl','SafeStick Managed','230A1514','000FFEC697CDB2C0E000A17B','4.8.49.0','OTROS','EN USO'),(207,'test','test','test','test','test','22test','test','test','test','test','test','test','test'),(208,'test','test','test','test','22test','test','test','test','test','test','test','test','test'),(209,'aaaaa','test','test','test','22test0000','test','test','test','test','test','test','test','test');
/*!40000 ALTER TABLE `pendrives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `providers`
--

DROP TABLE IF EXISTS `providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `providers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `provider` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `providers`
--

LOCK TABLES `providers` WRITE;
/*!40000 ALTER TABLE `providers` DISABLE KEYS */;
INSERT INTO `providers` VALUES (1,'TICHILE'),(2,'TECNOVAN'),(3,'INTERNO'),(5,' teste2222r');
/*!40000 ALTER TABLE `providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int unsigned NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `support`
--

DROP TABLE IF EXISTS `support`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `support` (
  `id` int NOT NULL AUTO_INCREMENT,
  `support_type` varchar(100) DEFAULT NULL,
  `support_level` varchar(100) DEFAULT NULL,
  `license` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_sup_lic_idx` (`license`),
  CONSTRAINT `fk_sup_lic` FOREIGN KEY (`license`) REFERENCES `licenses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `support`
--

LOCK TABLES `support` WRITE;
/*!40000 ALTER TABLE `support` DISABLE KEYS */;
INSERT INTO `support` VALUES (1,'HARDWARE','ADVANCED HW',1),(2,'FIRMWARE & GENERAL UPDATES','WEB/ONLINE',1),(3,'ENHANCED SUPPORT','PREMIUM',1),(4,'TELEPHONE SUPPORT','PREMIUM',1),(5,'ADVANCED MALWARE PROTECTION','WEB/ONLINE',1),(6,'NGFW','WEB/ONLINE',1),(7,'WEB & VIDEO FILTERING','WEB/ONLINE',1),(8,'ANTISPAM','WEB/ONLINE',1),(9,'INDUSTRIAL SECURITY SERVICE','WEB/ONLINE',1),(10,'FORTICONVERTER SERVICE','8X5',1),(11,'SECURITY RATING UPDATE','WEB/ONLINE',1),(12,'IOT DETECTION','WEB/ONLINE',1),(13,'HARDWARE','ADVANCED HW',3),(14,'FIRMWARE & GENERAL UPDATED','WEB/ONLINE',3),(15,'ENHANCED SUPPORT','PREMIUM',3),(16,'TELEPHONE SUPPORT','PREMIUM',3),(17,'HARDWARE','ADVANCED HW',2),(18,'FIRMWARE & GENERAL UPDATED','WEB/ONLINE',2),(19,'ENHANCED SUPPORT','PREMIUM',2),(20,'TELEPHONE SUPPORT','PREMIUM',2),(21,'NGFW','WEB/ONLINE',2),(22,'Prueba2','prueba2',1);
/*!40000 ALTER TABLE `support` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `rol` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2,'Felipesss','Munoz','felipe@gmail.com','admin','$2a$08$VYS4Rss3clRSz18CD30jfuMCCCL3mjBI7vKxZZyg6n8NnVK0xsIBW'),(4,'Cristian','Virago','cristian@gmail.com','admin','$2a$08$yyfqyMndIFEhkt1txmwfJe3O4.8gmMxgf2/L5KwdV5p1Z8vYZcpF2'),(25,'prueba','prueba','prueba@gmail.com','admin','$2a$08$iIbsh3eZw38fjfpXBWQxcOlW8B2iMcnD2uYpr/5R7rmOFM07wU8.C'),(29,'prueba','prueba','prueba@gmail.com','admin','$2a$08$iIbsh3eZw38fjfpXBWQxcOlW8B2iMcnD2uYpr/5R7rmOFM07wU8.C');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vista_grafica_links`
--

DROP TABLE IF EXISTS `vista_grafica_links`;
/*!50001 DROP VIEW IF EXISTS `vista_grafica_links`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_grafica_links` AS SELECT 
 1 AS `id`,
 1 AS `source`,
 1 AS `target`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_grafica_nodes`
--

DROP TABLE IF EXISTS `vista_grafica_nodes`;
/*!50001 DROP VIEW IF EXISTS `vista_grafica_nodes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_grafica_nodes` AS SELECT 
 1 AS `from`,
 1 AS `to`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vista_grafica_prueba`
--

DROP TABLE IF EXISTS `vista_grafica_prueba`;
/*!50001 DROP VIEW IF EXISTS `vista_grafica_prueba`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vista_grafica_prueba` AS SELECT 
 1 AS `id`,
 1 AS `label`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `consulta_equipos`
--

/*!50001 DROP VIEW IF EXISTS `consulta_equipos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`activos`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `consulta_equipos` AS select `f`.`id` AS `id`,`f`.`equipo` AS `equipo`,`m`.`modelo` AS `modelo`,`f`.`serial_number` AS `serial_number`,`f`.`ip_addr` AS `ip_addr`,`f`.`ubicacion` AS `ubicacion`,`f`.`version` AS `version`,`f`.`connected_to` AS `connected_to`,`f`.`activation_date` AS `activation_date`,`f`.`expire_date` AS `expire_date`,`l`.`license` AS `license`,`p`.`provider` AS `provider`,`f`.`state` AS `state` from (((`firewall` `f` join `modelo_firewall` `m` on((`f`.`model` = `m`.`id`))) join `licenses` `l` on((`f`.`license_type` = `l`.`id`))) join `providers` `p` on((`f`.`provider` = `p`.`id`))) order by `p`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_grafica_links`
--

/*!50001 DROP VIEW IF EXISTS `vista_grafica_links`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_grafica_links` AS select `f`.`id` AS `id`,`f`.`ip_addr` AS `source`,`f`.`connected_to` AS `target` from `firewall` `f` where ((`f`.`ip_addr` <> '') and (`f`.`connected_to` <> '')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_grafica_nodes`
--

/*!50001 DROP VIEW IF EXISTS `vista_grafica_nodes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_grafica_nodes` AS select `f`.`ip_addr` AS `from`,`f`.`connected_to` AS `to` from `firewall` `f` where ((`f`.`ip_addr` <> '') and (`f`.`connected_to` <> '')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_grafica_prueba`
--

/*!50001 DROP VIEW IF EXISTS `vista_grafica_prueba`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_grafica_prueba` AS select `f`.`ip_addr` AS `id`,`f`.`ip_addr` AS `label` from `firewall` `f` where ((`f`.`equipo` = 'Z1') or (`f`.`equipo` = 'core3')) */;
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

-- Dump completed on 2022-11-10 19:57:52
