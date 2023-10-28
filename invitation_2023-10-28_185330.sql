-- MySQL dump 10.13  Distrib 8.1.0, for macos12.6 (x86_64)

--

-- Host: 127.0.0.1    Database: invitation

-- ------------------------------------------------------

-- Server version	8.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */

;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */

;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */

;

/*!50503 SET NAMES utf8mb4 */

;

/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */

;

/*!40103 SET TIME_ZONE='+00:00' */

;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */

;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */

;

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */

;

/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */

;

--

-- Table structure for table `attendances`

--

DROP TABLE IF EXISTS `attendances`;

/*!40101 SET @saved_cs_client     = @@character_set_client */

;

/*!50503 SET character_set_client = utf8mb4 */

;

CREATE TABLE
    `attendances` (
        `id` int NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
        `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Create Time',
        `name` varchar(255) DEFAULT NULL,
        `dropdown` varchar(255) DEFAULT NULL,
        `dropdown_1` varchar(255) DEFAULT NULL,
        PRIMARY KEY (`id`)
    ) ENGINE = InnoDB AUTO_INCREMENT = 23 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

/*!40101 SET character_set_client = @saved_cs_client */

;

--

-- Dumping data for table `attendances`

--

/*!40000 ALTER TABLE `attendances` DISABLE KEYS */

;

INSERT INTO `attendances`
VALUES (
        1,
        '2023-10-28 18:16:00',
        'dfdf',
        'Yes, I will attend',
        'Yes, I will attend'
    ), (
        2,
        '2023-10-28 18:16:44',
        '',
        'Yes, I will attend',
        'Yes, I will attend'
    ), (
        3,
        '2023-10-28 18:17:12',
        '',
        'Yes, I will attend',
        'Yes, I will attend'
    ), (
        4,
        '2023-10-28 18:17:32',
        '',
        'Yes, I will attend',
        'Yes, I will attend'
    ), (
        5,
        '2023-10-28 18:17:43',
        '',
        'Yes, I will attend',
        'Yes, I will attend'
    ), (
        6,
        '2023-10-28 18:18:00',
        'sdsd',
        'Yes, I will attend',
        'Yes, I will attend'
    ), (
        7,
        '2023-10-28 18:20:54',
        'sdsd',
        'Yes, I will attend',
        'Yes, I will attend'
    ), (
        8,
        '2023-10-28 18:21:47',
        'sdsd',
        'Yes, I will attend',
        'Yes, I will attend'
    ), (
        9,
        '2023-10-28 18:31:28',
        'sdfds',
        'No, I am unable to attend',
        'No, I am unable to attend'
    ), (
        10,
        '2023-10-28 18:32:22',
        'sdfdscx',
        'No, I am unable to attend',
        'No, I am unable to attend'
    ), (
        11,
        '2023-10-28 18:33:08',
        'sdfdscx',
        'No, I am unable to attend',
        'No, I am unable to attend'
    ), (
        12,
        '2023-10-28 18:33:33',
        'sdfdscx',
        'No, I am unable to attend',
        'No, I am unable to attend'
    ), (
        13,
        '2023-10-28 18:34:30',
        'sdsd',
        'No, I am unable to attend',
        '1'
    ), (
        14,
        '2023-10-28 18:35:44',
        'sdfds',
        'No, I am unable to attend',
        '1'
    ), (
        15,
        '2023-10-28 18:36:16',
        'sdfds',
        'No, I am unable to attend',
        '1'
    ), (
        16,
        '2023-10-28 18:36:47',
        'sdsd',
        'Yes, I will attend',
        '1'
    ), (
        17,
        '2023-10-28 18:39:40',
        'sdsd',
        'Yes, I will attend',
        '1'
    ), (
        18,
        '2023-10-28 18:41:42',
        'sdsd',
        'Yes, I will attend',
        '1'
    ), (
        19,
        '2023-10-28 18:42:21',
        'sdsd',
        'Yes, I will attend',
        '2 Persons'
    ), (
        20,
        '2023-10-28 18:42:37',
        'sdsd',
        'Yes, I will attend',
        '1 Person'
    ), (
        21,
        '2023-10-28 18:42:49',
        'sdfds',
        'No, I am unable to attend',
        'none'
    ), (
        22,
        '2023-10-28 18:43:12',
        'sdsd',
        'Yes, I will attend',
        '2 Persons'
    );

/*!40000 ALTER TABLE `attendances` ENABLE KEYS */

;

--

-- Table structure for table `comments`

--

DROP TABLE IF EXISTS `comments`;

/*!40101 SET @saved_cs_client     = @@character_set_client */

;

/*!50503 SET character_set_client = utf8mb4 */

;

CREATE TABLE
    `comments` (
        `id` int NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
        `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Create Time',
        `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
        `comment` varchar(255) DEFAULT NULL,
        PRIMARY KEY (`id`)
    ) ENGINE = InnoDB AUTO_INCREMENT = 82387837 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;

/*!40101 SET character_set_client = @saved_cs_client */

;

--

-- Dumping data for table `comments`

--

/*!40000 ALTER TABLE `comments` DISABLE KEYS */

;

INSERT INTO `comments`
VALUES (
        1,
        '2023-10-28 16:56:06',
        'sdsd',
        'sdsd'
    ), (
        2,
        '2023-10-28 16:59:02',
        'sdsd',
        'sds'
    ), (
        3,
        '2023-10-28 17:05:29',
        '',
        ''
    ), (
        4,
        '2023-10-28 17:05:40',
        '',
        ''
    ), (
        5,
        '2023-10-28 17:06:07',
        'sdfd',
        'sdfds'
    ), (
        6,
        '2023-10-28 17:07:14',
        'sdfd',
        'sd'
    ), (
        7,
        '2023-10-28 17:07:51',
        'sdfdsf',
        'sdfdsf'
    ), (
        8,
        '2023-10-28 17:08:53',
        'sdfdf',
        'sdfdsf'
    ), (
        9,
        '2023-10-28 17:10:23',
        'sdsfsdf',
        'sdfdsf'
    ), (
        10,
        '2023-10-28 17:11:13',
        'sdf',
        'sdfd'
    ), (
        11,
        '2023-10-28 17:11:16',
        'sdfsdfdsf',
        'sdfdsf'
    ), (
        12,
        '2023-10-28 17:16:56',
        'sdfdsfs',
        'dfdsf'
    ), (
        13,
        '2023-10-28 17:19:58',
        'zaini',
        'dfdf'
    ), (
        19240744,
        '2023-10-28 18:21:58',
        'sdsd',
        'sdsd'
    ), (
        31975186,
        '2023-10-28 17:29:26',
        'sds',
        'sdsd'
    ), (
        52305939,
        '2023-10-28 17:26:24',
        'test',
        'testtttttttt'
    ), (
        80622929,
        '2023-10-28 17:29:31',
        'sds323232',
        '323'
    ), (
        82387836,
        '2023-10-28 17:25:49',
        'sdsd',
        'sdsd'
    );

/*!40000 ALTER TABLE `comments` ENABLE KEYS */

;

--

-- Dumping routines for database 'invitation'

--

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */

;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */

;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */

;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */

;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */

;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */

;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */

;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */

;

-- Dump completed on 2023-10-28 18:53:34