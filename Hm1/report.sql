-- MySQL dump 10.13  Distrib 8.0.19, for osx10.15 (x86_64)
--
-- Host: localhost    Database: mysql
-- ------------------------------------------------------
-- Server version	8.0.19
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `help_keyword`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_keyword` (
  `help_keyword_id` int unsigned NOT NULL,
  `name` char(64) NOT NULL,
  PRIMARY KEY (`help_keyword_id`),
  UNIQUE KEY `name` (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 ROW_FORMAT=DYNAMIC COMMENT='help keywords';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_keyword`
--
-- WHERE:  1 limit 100

INSERT INTO `help_keyword` VALUES (225,'(JSON');
INSERT INTO `help_keyword` VALUES (226,'->');
INSERT INTO `help_keyword` VALUES (228,'->>');
INSERT INTO `help_keyword` VALUES (46,'<>');
INSERT INTO `help_keyword` VALUES (628,'ACCOUNT');
INSERT INTO `help_keyword` VALUES (422,'ACTION');
INSERT INTO `help_keyword` VALUES (40,'ADD');
INSERT INTO `help_keyword` VALUES (653,'ADMIN');
INSERT INTO `help_keyword` VALUES (108,'AES_DECRYPT');
INSERT INTO `help_keyword` VALUES (109,'AES_ENCRYPT');
INSERT INTO `help_keyword` VALUES (341,'AFTER');
INSERT INTO `help_keyword` VALUES (95,'AGAINST');
INSERT INTO `help_keyword` VALUES (675,'AGGREGATE');
INSERT INTO `help_keyword` VALUES (342,'ALGORITHM');
INSERT INTO `help_keyword` VALUES (488,'ALL');
INSERT INTO `help_keyword` VALUES (41,'ALTER');
INSERT INTO `help_keyword` VALUES (343,'ANALYZE');
INSERT INTO `help_keyword` VALUES (47,'AND');
INSERT INTO `help_keyword` VALUES (311,'ANY_VALUE');
INSERT INTO `help_keyword` VALUES (423,'ARCHIVE');
INSERT INTO `help_keyword` VALUES (102,'ARRAY');
INSERT INTO `help_keyword` VALUES (489,'AS');
INSERT INTO `help_keyword` VALUES (259,'ASC');
INSERT INTO `help_keyword` VALUES (404,'AT');
INSERT INTO `help_keyword` VALUES (513,'AUTOCOMMIT');
INSERT INTO `help_keyword` VALUES (447,'AUTOEXTEND_SIZE');
INSERT INTO `help_keyword` VALUES (344,'AUTO_INCREMENT');
INSERT INTO `help_keyword` VALUES (345,'AVG_ROW_LENGTH');
INSERT INTO `help_keyword` VALUES (527,'BACKUP');
INSERT INTO `help_keyword` VALUES (541,'BEFORE');
INSERT INTO `help_keyword` VALUES (514,'BEGIN');
INSERT INTO `help_keyword` VALUES (48,'BETWEEN');
INSERT INTO `help_keyword` VALUES (72,'BIGINT');
INSERT INTO `help_keyword` VALUES (104,'BINARY');
INSERT INTO `help_keyword` VALUES (704,'BINLOG');
INSERT INTO `help_keyword` VALUES (312,'BIN_TO_UUID');
INSERT INTO `help_keyword` VALUES (8,'BOOL');
INSERT INTO `help_keyword` VALUES (9,'BOOLEAN');
INSERT INTO `help_keyword` VALUES (62,'BOTH');
INSERT INTO `help_keyword` VALUES (408,'BTREE');
INSERT INTO `help_keyword` VALUES (260,'BY');
INSERT INTO `help_keyword` VALUES (33,'BYTE');
INSERT INTO `help_keyword` VALUES (712,'CACHE');
INSERT INTO `help_keyword` VALUES (455,'CALL');
INSERT INTO `help_keyword` VALUES (283,'CAN_ACCESS_COLUMN');
INSERT INTO `help_keyword` VALUES (284,'CAN_ACCESS_DATABASE');
INSERT INTO `help_keyword` VALUES (285,'CAN_ACCESS_TABLE');
INSERT INTO `help_keyword` VALUES (286,'CAN_ACCESS_VIEW');
INSERT INTO `help_keyword` VALUES (424,'CASCADE');
INSERT INTO `help_keyword` VALUES (53,'CASE');
INSERT INTO `help_keyword` VALUES (608,'CATALOG_NAME');
INSERT INTO `help_keyword` VALUES (75,'CEIL');
INSERT INTO `help_keyword` VALUES (76,'CEILING');
INSERT INTO `help_keyword` VALUES (515,'CHAIN');
INSERT INTO `help_keyword` VALUES (346,'CHANGE');
INSERT INTO `help_keyword` VALUES (547,'CHANNEL');
INSERT INTO `help_keyword` VALUES (34,'CHAR');
INSERT INTO `help_keyword` VALUES (30,'CHARACTER');
INSERT INTO `help_keyword` VALUES (687,'CHARSET');
INSERT INTO `help_keyword` VALUES (347,'CHECK');
INSERT INTO `help_keyword` VALUES (348,'CHECKSUM');
INSERT INTO `help_keyword` VALUES (629,'CIPHER');
INSERT INTO `help_keyword` VALUES (609,'CLASS_ORIGIN');
INSERT INTO `help_keyword` VALUES (654,'CLIENT');
INSERT INTO `help_keyword` VALUES (683,'CLONE');
INSERT INTO `help_keyword` VALUES (461,'CLOSE');
INSERT INTO `help_keyword` VALUES (349,'COALESCE');
INSERT INTO `help_keyword` VALUES (707,'CODE');
INSERT INTO `help_keyword` VALUES (316,'COLLATE');
INSERT INTO `help_keyword` VALUES (689,'COLLATION');
INSERT INTO `help_keyword` VALUES (350,'COLUMN');
INSERT INTO `help_keyword` VALUES (351,'COLUMNS');
INSERT INTO `help_keyword` VALUES (610,'COLUMN_NAME');
INSERT INTO `help_keyword` VALUES (321,'COMMENT');
INSERT INTO `help_keyword` VALUES (516,'COMMIT');
INSERT INTO `help_keyword` VALUES (530,'COMMITTED');
INSERT INTO `help_keyword` VALUES (425,'COMPACT');
INSERT INTO `help_keyword` VALUES (322,'COMPLETION');
INSERT INTO `help_keyword` VALUES (679,'COMPONENT');
INSERT INTO `help_keyword` VALUES (426,'COMPRESSED');
INSERT INTO `help_keyword` VALUES (352,'COMPRESSION');
INSERT INTO `help_keyword` VALUES (475,'CONCURRENT');
INSERT INTO `help_keyword` VALUES (605,'CONDITION');
INSERT INTO `help_keyword` VALUES (353,'CONNECTION');
INSERT INTO `help_keyword` VALUES (517,'CONSISTENT');
INSERT INTO `help_keyword` VALUES (354,'CONSTRAINT');
INSERT INTO `help_keyword` VALUES (611,'CONSTRAINT_CATALOG');
INSERT INTO `help_keyword` VALUES (612,'CONSTRAINT_NAME');
INSERT INTO `help_keyword` VALUES (613,'CONSTRAINT_SCHEMA');
INSERT INTO `help_keyword` VALUES (606,'CONTINUE');
INSERT INTO `help_keyword` VALUES (103,'CONVERT');
INSERT INTO `help_keyword` VALUES (258,'COUNT');
INSERT INTO `help_keyword` VALUES (42,'CREATE');
INSERT INTO `help_keyword` VALUES (256,'CREATE_DH_PARAMETERS');
INSERT INTO `help_keyword` VALUES (506,'CROSS');
INSERT INTO `help_keyword` VALUES (427,'CSV');
INSERT INTO `help_keyword` VALUES (268,'CUME_DIST');
INSERT INTO `help_keyword` VALUES (630,'CURRENT');
INSERT INTO `help_keyword` VALUES (116,'CURRENT_ROLE');
INSERT INTO `help_keyword` VALUES (323,'CURRENT_USER');
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-05  0:16:44
