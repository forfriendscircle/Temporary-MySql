-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: cliqdb
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.19.04.1

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
-- Table structure for table `thoughts`
--

DROP TABLE IF EXISTS `thoughts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thoughts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` text,
  `thought` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thoughts`
--

LOCK TABLES `thoughts` WRITE;
/*!40000 ALTER TABLE `thoughts` DISABLE KEYS */;
INSERT INTO `thoughts` VALUES (1,'May 10, 2019','But you have to do what you dream of doing even while you\'re afraid.'),(2,'May 11, 2019','My view is there\'s no bad time to innovate.'),(3,'May 12, 2019','The only thing worse than starting something and failing... is not starting something.'),(4,'May 13, 2019','Diligence is the mother of good luck.'),(5,'May 14, 2019','Don\'t become a wandering generality. Be a meaningful specific.'),(6,'May 15, 2019','Discipline is the bridge between goals and accomplishment.'),(7,'May 16, 2019','Think big, think fast, think ahead. Ideas are no one\'s monopoly.'),(8,'May 17, 2019','Big doors swing on little hinges.'),(9,'May 18, 2019','There is little success where there is little laughter.'),(10,'May 19, 2019','A wise man can learn more from a foolish question than a fool can learn from a wise answer.'),(11,'May 20, 2019','Giving opens the way for receiving.'),(12,'May 21, 2019','Positive anything is better than negative nothing.'),(13,'May 22, 2019','Success usually comes to those who are too busy to be looking for it.'),(14,'May 23, 2019','The only limit to our realization of tomorrow will be our doubts of today.Franklin D.'),(15,'May 24, 2019','Try not to become a man of success. Rather become a man of value.'),(16,'May 26, 2019','Companies thrive on the basis of the stories they tell.'),(17,'May 27, 2019','There is no security on the earth, there is only opportunity.'),(18,'May 28, 2019','The absolute fundamental aim is to make money out of satisfying customers.'),(19,'May 29, 2019','The only place success comes before work is in the dictionary.'),(20,'May 30, 2019','Without a sense of urgency, desire loses its value.'),(21,'May 31, 2019','Always give without remembering and always receive without forgetting.'),(22,'June 01, 2019','A true luxury is a reward for investing in and developing a real asset.'),(23,'June 02, 2019','Obsess about customers, not competitors.'),(24,'June 03, 2019','Great things are done by a series of small things brought together.'),(25,'June 04, 2019','Do something wonderful, people may imitate it.'),(26,'June 05, 2019','Don\'t try to be different. Just be good. To be good is different enough.'),(27,'June 06, 2019','The most common way people give up their power is by thinking they don\'t have any.'),(28,'June 07, 2019','When it all comes down to it, nothing trumps execution.'),(29,'June 08, 2019','Long-range planning works best in the short term.'),(30,'June 09, 2019','Success is on the far side of failure.'),(31,'June 10, 2019','Innovation comes from saying NO to a thousand things.'),(32,'June 11, 2019','Replace either/or thinking with plus thinking.'),(33,'June 12, 2019','I have lived a long life and had many troubles, most of which never happened.'),(34,'June 13, 2019','Fail, fail again, fail better.'),(35,'June 14, 2019','We need to wake up from a thought that lasts too long.'),(36,'June 15, 2019','Nothing in life is to be feared, it is only to be understood. Now is the time to understand more, so that we may fear less.'),(37,'June 16, 2019','Success is actually a short race—a sprint fueled by discipline just long enough for habit to kick in and take over.'),(38,'June 17, 2019','A successful career will no longer be about promotion. It will be about mastery.'),(39,'June 18, 2019','If you chase two rabbits, both will escape.'),(40,'June 19, 2019','Whether you think you can or think you can\'t, you are right.'),(41,'June 22, 2019','Management is, above all, a practice where art, science, and craft meet.'),(42,'June 23, 2019','In the last analysis, what we are communicates far more eloquently than anything we say or do.'),(43,'June 26, 2019','The grass is greener where you water it.'),(44,'June 30, 2019','Luck is what happens when preparation meets opportunity.'),(45,'July 01, 2019','There is no personal charm so great as the charm of a cheerful temperament.'),(46,'July 02, 2019','What we see depends mainly on what we look for.'),(47,'July 03, 2019','Always do right. This will gratify some people and astonish the rest.'),(48,'July 04, 2019','Power is actualized only when word and deed have not parted company.');
/*!40000 ALTER TABLE `thoughts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-04 23:07:23
