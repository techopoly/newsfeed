-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: newsfeed
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `post_content` longtext NOT NULL,
  `username` varchar(250) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `vote` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (20,'uuuuuuuuuuuuuuuuuuuuuuuuuuu','ishmam1234','images/c637d12e-bf78-49bc-8d54-87c01c9e55af-167214233_3745782468876669_468163420025202383_n.jpg',0),(23,'test content','ishmam1234','images/f668fcf1-51ee-4b6e-8311-c34dff9fabeb-187442488_10158402333077371_4541413389068029225_n.jpg',0),(24,'testing','ishmam1234','images/b194523d-fe35-41b7-b334-fa8dd566d485-183684093_296318008812674_1224654850867870067_n.jpg',0),(25,'test is real','null','images/6b7a664d-8d4c-4c05-b9f2-f624065011ab-186486300_2266951840102789_1000762138660344453_n.jpg',0),(26,'tesitntnt','test','images/b682bcab-756a-40e0-991b-52265c4ebc2c-88180788_825632541248950_9085883442150768640_n.jpg',0),(27,'thi si sreall','test2','images/8e11a68b-4213-4216-94cd-ff1bc551afe9-186510309_2266950550102918_5869238581163799784_n.jpg',0),(30,'new content','new','images/e56c62b0-bc3e-4340-bccb-889e281c7ce3-186510066_2266958856768754_5855735089451322459_n.jpg',0);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `userId` int NOT NULL AUTO_INCREMENT,
  `username` varchar(250) NOT NULL,
  `email` varchar(250) DEFAULT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `userId_UNIQUE` (`userId`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'ishmammama','test@tast.com','$2a$12$chFYHdiFebbgnrseGVFSW.KlEHyuvIacjYyJJ6wHW0E/F9BhbGsq2'),(2,'Ishmam Tasin','ishmamtasin04@gmail.com','$2a$12$L4AnxXujWitzKwVn9OxBP.Og1MlueMH.sZGvqaJEj7k99gqcqZ/1a'),(4,'test','test@test.com','$2a$12$ur.9qCmb0DMWVbJoUnJdmOcHGLkMJN5uDAZQ5vUlkiysuLyLz4D/q'),(5,'Hamza','test1@test.com','$2a$12$zN.vuL7RAOoaqaRsTztozeR/.xeNElVXKBR8Q4nI1ov.7eXvnIj7S'),(6,'test2','test2@test.com','$2a$12$eoUhxLXqoHWTxBDJ/v1Y4ONv3QQVKKevBNzbAAAtheWXxSjnjY9k.'),(7,'test4','test4@test.com','$2a$12$1ojX/zRjtFSrNpgCu5gRUOzyPkR/CTOMYSUYaLcQS43RPBJbQN65u'),(8,'test4','test4@test4.com','$2a$12$yt156oW/J3NfgFlW1zunFujyR61CB0ZqZTheJiqvmUIpYxsxSYZ/2'),(9,'new','new@new.com','$2a$12$nwr0QDcNTVqxPvnDh3GUpulZb156iA8Q.AtOwWtVKWJWTVqXEhzGa');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-04 23:55:46
