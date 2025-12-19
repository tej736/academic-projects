-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: hpms
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `appointments`
--

DROP TABLE IF EXISTS `appointments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointments` (
  `Appointment_ID` int NOT NULL AUTO_INCREMENT,
  `Patient_ID` int DEFAULT NULL,
  `Doctor_ID` int DEFAULT NULL,
  `Appointment_Date` datetime DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Appointment_ID`),
  KEY `Patient_ID` (`Patient_ID`),
  KEY `Doctor_ID` (`Doctor_ID`),
  CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`Patient_ID`) REFERENCES `patients` (`Patient_ID`),
  CONSTRAINT `appointments_ibfk_2` FOREIGN KEY (`Doctor_ID`) REFERENCES `doctors` (`Doctor_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointments`
--

LOCK TABLES `appointments` WRITE;
/*!40000 ALTER TABLE `appointments` DISABLE KEYS */;
INSERT INTO `appointments` VALUES (1,70,1,'2025-05-15 15:12:35','Scheduled'),(2,69,6,'2025-05-17 15:12:35','Cancelled'),(3,43,11,'2025-04-27 15:12:35','Cancelled'),(4,41,7,'2025-05-01 15:12:35','Completed'),(5,98,18,'2025-03-28 15:12:35','Cancelled'),(6,67,10,'2025-05-15 15:12:35','Scheduled'),(7,98,25,'2025-04-29 15:12:35','Scheduled'),(8,19,28,'2025-05-14 15:12:35','Completed'),(9,44,18,'2025-04-21 15:12:35','Cancelled'),(10,2,31,'2025-04-12 15:12:35','Scheduled'),(11,33,6,'2025-05-19 15:12:35','Scheduled'),(12,56,10,'2025-05-11 15:12:35','Scheduled'),(13,93,10,'2025-05-07 15:12:35','Cancelled'),(14,44,30,'2025-05-06 15:12:35','Completed'),(15,54,11,'2025-05-13 15:12:35','Scheduled'),(16,5,17,'2025-05-09 15:12:35','Completed'),(17,25,15,'2025-04-24 15:12:35','Cancelled'),(18,3,22,'2025-05-14 15:12:35','Cancelled'),(19,28,30,'2025-04-16 15:12:35','Cancelled'),(20,84,2,'2025-04-13 15:12:35','Scheduled'),(21,57,19,'2025-05-12 15:12:35','Scheduled'),(22,84,23,'2025-05-19 15:12:35','Scheduled'),(23,35,9,'2025-05-18 15:12:35','Scheduled'),(24,95,13,'2025-04-18 15:12:35','Cancelled'),(25,78,30,'2025-03-25 15:12:35','Completed'),(26,96,10,'2025-05-16 15:12:35','Cancelled'),(27,9,33,'2025-04-01 15:12:35','Scheduled'),(28,19,28,'2025-04-09 15:12:35','Completed'),(29,79,8,'2025-05-04 15:12:35','Completed'),(30,58,14,'2025-04-24 15:12:35','Completed'),(31,45,10,'2025-04-20 15:12:35','Scheduled'),(32,59,13,'2025-04-11 15:12:35','Completed'),(33,100,2,'2025-03-28 15:12:35','Scheduled'),(34,97,2,'2025-05-10 15:12:35','Completed'),(35,45,24,'2025-03-26 15:12:35','Scheduled'),(36,97,24,'2025-04-23 15:12:35','Completed'),(37,8,2,'2025-04-02 15:12:35','Completed'),(38,88,30,'2025-05-06 15:12:35','Scheduled'),(39,77,31,'2025-04-19 15:12:35','Cancelled'),(40,73,13,'2025-05-17 15:12:35','Scheduled'),(41,94,21,'2025-05-23 15:12:35','Cancelled'),(42,29,4,'2025-04-03 15:12:35','Cancelled'),(43,69,6,'2025-05-04 15:12:35','Scheduled'),(44,66,26,'2025-04-22 15:12:35','Scheduled'),(45,98,5,'2025-04-05 15:12:35','Scheduled'),(46,24,25,'2025-04-28 15:12:35','Completed'),(47,83,2,'2025-04-05 15:12:35','Completed'),(48,92,7,'2025-04-12 15:12:35','Scheduled'),(49,85,25,'2025-04-24 15:12:35','Completed'),(50,99,33,'2025-03-26 15:12:35','Completed');
/*!40000 ALTER TABLE `appointments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billing`
--

DROP TABLE IF EXISTS `billing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `billing` (
  `Billing_ID` int NOT NULL AUTO_INCREMENT,
  `Visit_ID` int DEFAULT NULL,
  `Total_Amount` decimal(10,2) DEFAULT NULL,
  `Paid_Status` varchar(50) DEFAULT NULL,
  `Payment_Method` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Billing_ID`),
  KEY `Visit_ID` (`Visit_ID`),
  CONSTRAINT `billing_ibfk_1` FOREIGN KEY (`Visit_ID`) REFERENCES `visits` (`Visit_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billing`
--

LOCK TABLES `billing` WRITE;
/*!40000 ALTER TABLE `billing` DISABLE KEYS */;
INSERT INTO `billing` VALUES (1,1,3490.91,'Paid','Insurance'),(2,2,1337.67,'Paid','Online Payment'),(3,3,2934.19,'Pending','Credit Card'),(4,4,1834.64,'Pending','Insurance'),(5,5,9427.35,'Pending','Credit Card'),(6,6,1044.40,'Pending','Insurance'),(7,7,4988.86,'Unpaid','Insurance'),(8,8,9797.42,'Paid','Credit Card'),(9,9,9649.31,'Pending','Insurance'),(10,10,2775.75,'Pending','Credit Card'),(11,11,8871.86,'Unpaid','Insurance'),(12,12,4547.52,'Pending','Online Payment'),(13,13,2320.59,'Pending','Online Payment'),(14,14,706.31,'Unpaid','Insurance'),(15,15,9303.18,'Unpaid','Online Payment'),(16,16,8389.87,'Pending','Online Payment'),(17,17,3991.71,'Unpaid','Insurance'),(18,18,1974.86,'Unpaid','Online Payment'),(19,19,847.62,'Paid','Credit Card'),(20,20,9002.24,'Paid','Credit Card'),(21,21,5331.73,'Paid','Online Payment'),(22,22,8105.47,'Unpaid','Insurance'),(23,23,9578.40,'Unpaid','Credit Card'),(24,24,8805.95,'Paid','Cash'),(25,25,9410.21,'Pending','Insurance'),(26,26,4223.59,'Unpaid','Online Payment'),(27,27,2291.25,'Unpaid','Cash'),(28,28,2862.50,'Paid','Insurance'),(29,29,9411.63,'Unpaid','Insurance'),(30,30,8605.96,'Paid','Insurance'),(31,31,8309.54,'Pending','Cash'),(32,32,5463.84,'Pending','Credit Card'),(33,33,6373.92,'Paid','Cash'),(34,34,4648.49,'Pending','Credit Card'),(35,35,2996.28,'Paid','Insurance'),(36,36,8162.91,'Pending','Online Payment'),(37,37,4383.89,'Unpaid','Cash'),(38,38,4243.89,'Pending','Online Payment'),(39,39,6883.77,'Unpaid','Insurance'),(40,40,6218.31,'Paid','Insurance'),(41,41,153.26,'Unpaid','Insurance'),(42,42,5364.45,'Unpaid','Insurance'),(43,43,288.27,'Unpaid','Insurance'),(44,44,4039.08,'Paid','Cash'),(45,45,6408.02,'Unpaid','Credit Card'),(46,46,675.85,'Pending','Cash'),(47,47,2837.84,'Paid','Online Payment'),(48,48,2938.18,'Pending','Online Payment'),(49,49,7697.90,'Paid','Cash'),(50,50,9862.62,'Pending','Credit Card'),(51,51,1711.93,'Unpaid','Online Payment'),(52,52,2157.56,'Unpaid','Cash'),(53,53,2352.16,'Unpaid','Insurance'),(54,54,2024.77,'Unpaid','Insurance'),(55,55,6589.31,'Paid','Insurance'),(56,56,864.34,'Paid','Credit Card'),(57,57,9056.34,'Paid','Insurance'),(58,58,5400.95,'Unpaid','Insurance'),(59,59,9224.23,'Unpaid','Insurance'),(60,60,3484.32,'Pending','Online Payment'),(61,61,9425.87,'Unpaid','Cash'),(62,62,7315.36,'Unpaid','Cash'),(63,63,2828.11,'Pending','Cash'),(64,64,580.58,'Paid','Insurance'),(65,65,6554.29,'Pending','Insurance'),(66,66,6723.64,'Pending','Credit Card'),(67,67,5817.71,'Unpaid','Credit Card'),(68,68,9487.93,'Unpaid','Cash'),(69,69,542.59,'Unpaid','Cash'),(70,70,7317.05,'Paid','Insurance'),(71,71,2053.21,'Pending','Cash'),(72,72,3810.25,'Paid','Cash'),(73,73,1745.71,'Paid','Credit Card'),(74,74,5639.78,'Paid','Online Payment'),(75,75,7955.89,'Pending','Insurance'),(76,76,2633.63,'Paid','Cash'),(77,77,8742.63,'Pending','Credit Card'),(78,78,2877.95,'Pending','Online Payment'),(79,79,413.82,'Unpaid','Insurance'),(80,80,9339.97,'Unpaid','Credit Card'),(81,81,1238.17,'Paid','Cash'),(82,82,832.48,'Pending','Credit Card'),(83,83,8393.20,'Pending','Credit Card'),(84,84,7413.89,'Paid','Cash'),(85,85,1021.17,'Pending','Cash'),(86,86,2311.61,'Paid','Credit Card'),(87,87,5405.12,'Paid','Insurance'),(88,88,2041.82,'Pending','Insurance'),(89,89,6637.88,'Paid','Credit Card'),(90,90,1915.65,'Pending','Cash'),(91,91,1010.13,'Unpaid','Cash'),(92,92,5719.41,'Unpaid','Credit Card'),(93,93,9403.09,'Pending','Online Payment'),(94,94,955.42,'Unpaid','Insurance'),(95,95,3801.90,'Paid','Cash'),(96,96,9641.94,'Paid','Online Payment'),(97,97,1396.94,'Unpaid','Credit Card'),(98,98,6268.08,'Pending','Credit Card'),(99,99,2369.50,'Unpaid','Cash'),(100,100,9005.13,'Paid','Credit Card');
/*!40000 ALTER TABLE `billing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctors` (
  `Doctor_ID` int NOT NULL AUTO_INCREMENT,
  `Doctor_Name` varchar(100) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`Doctor_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES (1,'Dr. Daniel Anderson','daniel.anderson33@medcenter.org','818-601-8353'),(2,'Dr. Priya Rodriguez','priya.rodriguez48@hospitalnetwork.com','818-152-4784'),(3,'Dr. Emily Walker','emily.walker4@hospitalnetwork.com','213-415-2612'),(4,'Dr. Angela Johnson','angela.johnson57@healthcare.org','617-638-7781'),(5,'Dr. Priya Singh','priya.singh32@clinicmail.com','415-374-7622'),(6,'Dr. Ravi Lopez','ravi.lopez90@healthcare.org','312-826-9589'),(7,'Dr. Nancy Martinez','nancy.martinez32@hospitalnetwork.com','404-918-5928'),(8,'Dr. David Garcia','david.garcia71@medcenter.org','818-127-3969'),(9,'Dr. Linda Rodriguez','linda.rodriguez91@hospitalnetwork.com','404-876-3110'),(10,'Dr. Daniel Garcia','daniel.garcia96@hospitalnetwork.com','818-892-5905'),(11,'Dr. John Davis','john.davis26@healthcare.org','646-271-7242'),(12,'Dr. Jose Walker','jose.walker28@clinicmail.com','818-638-9080'),(13,'Dr. Priya Johnson','priya.johnson12@healthcare.org','213-110-4981'),(14,'Dr. Steven Davis','steven.davis87@medcenter.org','646-453-7492'),(15,'Dr. William Lee','william.lee98@hospitalnetwork.com','954-348-4438'),(16,'Dr. Sarah Patel','sarah.patel66@healthcare.org','718-354-8382'),(17,'Dr. David Lewis','david.lewis81@medcenter.org','212-712-3420'),(18,'Dr. Nancy Thomas','nancy.thomas47@medcenter.org','818-757-5153'),(19,'Dr. David Smith','david.smith62@hospitalnetwork.com','954-506-6560'),(20,'Dr. Emily Nguyen','emily.nguyen57@hospitalnetwork.com','718-938-5848'),(21,'Dr. Carlos Thomas','carlos.thomas82@clinicmail.com','646-692-7574'),(22,'Dr. Jose Nguyen','jose.nguyen87@hospitalnetwork.com','404-541-4545'),(23,'Dr. William Singh','william.singh22@hospitalnetwork.com','954-629-9711'),(24,'Dr. Jose Lopez','jose.lopez44@medcenter.org','646-408-8474'),(25,'Dr. Jose Patel','jose.patel94@hospitalnetwork.com','415-569-2126'),(26,'Dr. John Martinez','john.martinez77@healthcare.org','415-912-1017'),(27,'Dr. Mohamed Garcia','mohamed.garcia80@hospitalnetwork.com','617-724-5385'),(28,'Dr. John Smith','john.smith3@hospitalnetwork.com','415-941-4868'),(29,'Dr. Steven Lopez','steven.lopez95@medcenter.org','617-189-8076'),(30,'Dr. Priya Smith','priya.smith99@hospitalnetwork.com','212-708-9711'),(31,'Dr. William Thomas','william.thomas95@hospitalnetwork.com','646-301-6230'),(32,'Dr. Angela Garcia','angela.garcia64@hospitalnetwork.com','954-705-9284'),(33,'Dr. Ravi Clark','ravi.clark81@hospitalnetwork.com','212-155-8145'),(34,'Dr. Fatima Patel','fatima.patel83@hospitalnetwork.com','818-187-7870'),(35,'Dr. Ayesha Robinson','ayesha.robinson82@hospitalnetwork.com','212-447-3263');
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctors_specialization`
--

DROP TABLE IF EXISTS `doctors_specialization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctors_specialization` (
  `Doctor_ID` int NOT NULL,
  `Specialization_ID` int NOT NULL,
  PRIMARY KEY (`Doctor_ID`,`Specialization_ID`),
  KEY `Specialization_ID` (`Specialization_ID`),
  CONSTRAINT `doctors_specialization_ibfk_1` FOREIGN KEY (`Doctor_ID`) REFERENCES `doctors` (`Doctor_ID`),
  CONSTRAINT `doctors_specialization_ibfk_2` FOREIGN KEY (`Specialization_ID`) REFERENCES `specialization` (`Specialization_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors_specialization`
--

LOCK TABLES `doctors_specialization` WRITE;
/*!40000 ALTER TABLE `doctors_specialization` DISABLE KEYS */;
INSERT INTO `doctors_specialization` VALUES (6,1),(12,1),(26,1),(6,2),(12,2),(27,2),(31,2),(2,3),(22,3),(23,3),(30,3),(31,3),(2,4),(9,4),(32,4),(3,5),(18,5),(29,5),(32,5),(7,6),(8,6),(16,6),(17,6),(28,6),(14,7),(17,7),(26,7),(10,8),(17,8),(4,9),(9,9),(11,9),(15,9),(30,9),(13,10),(15,10),(23,10),(32,10),(3,11),(20,11),(21,11),(26,11),(25,12),(11,13),(13,13),(18,13),(21,13),(34,13),(34,14),(1,15),(8,15),(15,15),(22,15),(28,15),(34,15),(18,16),(21,16),(22,17),(27,17),(30,17),(31,17),(10,18),(28,18),(1,19),(4,19),(8,19),(11,19),(16,19),(19,19),(33,19),(35,19),(1,20),(5,20),(20,20),(23,20),(24,20);
/*!40000 ALTER TABLE `doctors_specialization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital_staff`
--

DROP TABLE IF EXISTS `hospital_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospital_staff` (
  `Staff_ID` int NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(50) DEFAULT NULL,
  `Last_Name` varchar(50) DEFAULT NULL,
  `Role` varchar(50) DEFAULT NULL,
  `Username` varchar(50) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Staff_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital_staff`
--

LOCK TABLES `hospital_staff` WRITE;
/*!40000 ALTER TABLE `hospital_staff` DISABLE KEYS */;
INSERT INTO `hospital_staff` VALUES (1,'Ashley','Scott','Technician','ashleyscott','hashed_pass_1','ashleyscott@hospital.org'),(2,'Brian','Morgan','Clerk','brianmorgan','hashed_pass_2','brianmorgan@healthnet.com'),(3,'Clara','Lopez','Admin','claralopez','hashed_pass_3','claralopez@healthnet.com'),(4,'Derek','Bailey','Nurse','derekbailey','hashed_pass_4','derekbailey@hospital.org'),(5,'Elena','Turner','Receptionist','elenaturner','hashed_pass_5','elenaturner@hospital.org'),(6,'Frank','Grant','Clerk','frankgrant','hashed_pass_6','frankgrant@clinicmail.org'),(7,'Grace','Young','Technician','graceyoung','hashed_pass_7','graceyoung@clinicmail.org'),(8,'Hannah','Reed','Receptionist','hannahreed','hashed_pass_8','hannahreed@hospital.org'),(9,'Ian','Bennett','Nurse','ianbennett','hashed_pass_9','ianbennett@hospital.org'),(10,'Julia','Hayes','Clerk','juliahayes','hashed_pass_10','juliahayes@hospital.org');
/*!40000 ALTER TABLE `hospital_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medications`
--

DROP TABLE IF EXISTS `medications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medications` (
  `Medication_ID` int NOT NULL AUTO_INCREMENT,
  `Medication_Name` varchar(100) DEFAULT NULL,
  `Dosage_Info` varchar(100) DEFAULT NULL,
  `Purpose` text,
  PRIMARY KEY (`Medication_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medications`
--

LOCK TABLES `medications` WRITE;
/*!40000 ALTER TABLE `medications` DISABLE KEYS */;
INSERT INTO `medications` VALUES (1,'Amoxicillin','500mg 3x daily','Antibiotic for bacterial infections'),(2,'Ibuprofen','400mg every 6 hours','Pain relief and anti-inflammatory'),(3,'Metformin','500mg twice daily','Controls blood sugar levels in type 2 diabetes'),(4,'Lisinopril','10mg once daily','Treats high blood pressure'),(5,'Atorvastatin','20mg once daily','Lowers cholesterol levels'),(6,'Omeprazole','20mg once daily','Treats acid reflux and ulcers'),(7,'Amlodipine','5mg once daily','Treats high blood pressure and angina'),(8,'Azithromycin','500mg first day, then 250mg for 4 days','Antibiotic for infections'),(9,'Prednisone','10mg once daily','Treats inflammation and immune conditions'),(10,'Levothyroxine','50mcg once daily','Thyroid hormone replacement'),(11,'Paracetamol','500mg every 4–6 hours','Pain and fever relief'),(12,'Albuterol','2 puffs every 4–6 hours','Asthma and respiratory relief'),(13,'Losartan','50mg once daily','Treats high blood pressure'),(14,'Hydrochlorothiazide','25mg once daily','Diuretic for hypertension'),(15,'Simvastatin','10mg once daily','Lowers cholesterol'),(16,'Ciprofloxacin','500mg twice daily','Antibiotic for urinary and other infections'),(17,'Insulin Glargine','10 units at bedtime','Long-acting insulin for diabetes'),(18,'Clopidogrel','75mg once daily','Prevents blood clots after a stroke or heart attack'),(19,'Furosemide','40mg once daily','Diuretic for fluid retention'),(20,'Doxycycline','100mg twice daily','Antibiotic for infections'),(21,'Cetirizine','10mg once daily','Allergy relief'),(22,'Fluoxetine','20mg once daily','Antidepressant for mental health'),(23,'Ranitidine','150mg twice daily','Reduces stomach acid'),(24,'Warfarin','5mg once daily','Prevents blood clots'),(25,'Zolpidem','10mg before bedtime','Short-term treatment of insomnia'),(26,'Glipizide','5mg before breakfast','Diabetes medication'),(27,'Tamsulosin','0.4mg once daily','Treats enlarged prostate'),(28,'Montelukast','10mg in the evening','Asthma and allergy treatment'),(29,'Sertraline','50mg once daily','Treats depression and anxiety'),(30,'Propranolol','40mg twice daily','Treats hypertension and migraines');
/*!40000 ALTER TABLE `medications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `Patient_ID` int NOT NULL AUTO_INCREMENT,
  `Patient_FName` varchar(50) DEFAULT NULL,
  `Patient_LName` varchar(50) DEFAULT NULL,
  `Date_Of_Birth` date DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Street` varchar(100) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `State` varchar(50) DEFAULT NULL,
  `ZIP` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Patient_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (1,'Sophia','Patel','1993-07-11','Male','415-318-1234','sophia.patel87@gmail.com','8756 Sunset Blvd','Dallas','Texas','75201'),(2,'James','Johnson','1991-04-28','Male','305-386-3985','james.johnson61@gmail.com','6599 Main St','Springfield','Illinois','62701'),(3,'Emily','Brown','1966-03-21','Female','407-936-6686','emily.brown20@gmail.com','4661 Main St','Chicago','Illinois','60607'),(4,'Michael','Thompson','1985-06-12','Male','217-969-1688','michael.thompson92@outlook.com','7614 Pine Rd','Miami','Florida','33139'),(5,'Jacob','Perez','1974-10-10','Male','415-241-3474','jacob.perez43@hotmail.com','5629 Oak St','New York City','New York','10011'),(6,'Sophia','Garcia','1967-03-05','Male','217-396-6913','sophia.garcia71@outlook.com','2224 Oak St','San Francisco','California','94102'),(7,'James','Taylor','1969-03-28','Male','407-846-2161','james.taylor52@hotmail.com','5482 Oak St','San Francisco','California','94102'),(8,'Alexander','Nguyen','1980-08-11','Male','213-227-8849','alexander.nguyen90@gmail.com','8254 Pine Rd','Orlando','Florida','32801'),(9,'Michael','Davis','1960-11-19','Female','214-925-2424','michael.davis11@gmail.com','3344 Maple Ave','San Antonio','Texas','78209'),(10,'Michael','Wilson','1975-09-17','Male','305-559-9005','michael.wilson55@yahoo.com','1470 Oak St','Chicago','Illinois','60607'),(11,'Noah','Brown','1962-06-04','Male','312-941-1452','noah.brown97@outlook.com','3404 Main St','Dallas','Texas','75201'),(12,'Daniel','Wilson','1991-01-26','Female','646-738-3397','daniel.wilson26@gmail.com','7610 Pine Rd','New York City','New York','10011'),(13,'Jacob','Perez','1988-08-05','Male','217-515-7934','jacob.perez87@outlook.com','5383 Pine Rd','Chicago','Illinois','60607'),(14,'Daniel','Johnson','1971-12-24','Male','213-937-6272','daniel.johnson68@gmail.com','2530 Oak St','San Francisco','California','94102'),(15,'David','Patel','1968-12-23','Female','716-167-2386','david.patel9@gmail.com','3787 Maple Ave','Springfield','Illinois','62701'),(16,'Michael','Davis','1971-03-26','Male','210-989-8548','michael.davis65@hotmail.com','6362 Sunset Blvd','Buffalo','New York','14201'),(17,'Amelia','Thompson','1998-10-03','Male','214-872-4376','amelia.thompson69@hotmail.com','9907 Pine Rd','Orlando','Florida','32801'),(18,'Daniel','Wilson','1992-01-24','Male','210-409-9304','daniel.wilson43@hotmail.com','1175 Pine Rd','San Francisco','California','94102'),(19,'Isabella','Davis','1974-01-06','Female','210-344-5703','isabella.davis8@hotmail.com','688 Pine Rd','Dallas','Texas','75201'),(20,'Alexander','Patel','1995-02-22','Female','210-929-6779','alexander.patel5@outlook.com','7739 Pine Rd','Springfield','Illinois','62701'),(21,'Charlotte','Thompson','1999-03-01','Male','415-712-3174','charlotte.thompson14@hotmail.com','9097 Oak St','Buffalo','New York','14201'),(22,'Olivia','Wilson','1953-10-23','Female','716-729-6535','olivia.wilson88@gmail.com','4955 Maple Ave','Chicago','Illinois','60607'),(23,'Mia','Davis','2000-04-02','Male','214-555-7087','mia.davis59@yahoo.com','5941 Main St','Orlando','Florida','32801'),(24,'Michael','Thompson','1951-09-22','Female','217-685-4538','michael.thompson12@yahoo.com','8331 Sunset Blvd','Miami','Florida','33139'),(25,'Alexander','Lee','1959-07-19','Female','214-186-2716','alexander.lee9@outlook.com','1725 Pine Rd','Chicago','Illinois','60607'),(26,'Ava','Henderson','1993-07-01','Female','716-984-6316','ava.henderson11@hotmail.com','5875 Main St','Dallas','Texas','75201'),(27,'James','Miller','1972-03-01','Male','646-938-6993','james.miller77@gmail.com','2447 Maple Ave','Los Angeles','California','90001'),(28,'Emily','Johnson','1968-06-23','Male','415-719-4815','emily.johnson24@yahoo.com','7539 Main St','San Francisco','California','94102'),(29,'Daniel','Miller','1951-04-12','Female','213-584-5794','daniel.miller71@hotmail.com','5457 Maple Ave','San Antonio','Texas','78209'),(30,'Harper','Martinez','1987-05-06','Male','214-250-3051','harper.martinez41@yahoo.com','8428 Maple Ave','Orlando','Florida','32801'),(31,'Noah','Smith','1976-11-02','Female','210-715-1336','noah.smith10@outlook.com','1299 Maple Ave','Los Angeles','California','90001'),(32,'Alexander','Davis','1987-07-10','Female','213-186-5064','alexander.davis81@outlook.com','6149 Sunset Blvd','San Antonio','Texas','78209'),(33,'Michael','Wilson','1976-12-11','Female','716-308-7088','michael.wilson61@hotmail.com','1591 Maple Ave','San Francisco','California','94102'),(34,'James','Brown','1988-12-05','Male','716-508-4037','james.brown56@outlook.com','2962 Maple Ave','Orlando','Florida','32801'),(35,'Charlotte','Garcia','1979-11-21','Male','312-594-4336','charlotte.garcia1@hotmail.com','7457 Sunset Blvd','Los Angeles','California','90001'),(36,'Charlotte','Henderson','1957-11-10','Male','407-723-3559','charlotte.henderson91@outlook.com','7823 Main St','Miami','Florida','33139'),(37,'Daniel','Williams','1990-01-04','Female','305-784-1664','daniel.williams33@gmail.com','6627 Sunset Blvd','Miami','Florida','33139'),(38,'Harper','Wilson','1997-05-12','Female','305-992-4211','harper.wilson5@gmail.com','1254 Oak St','Chicago','Illinois','60607'),(39,'Ethan','Perez','1983-04-25','Female','210-169-7796','ethan.perez37@hotmail.com','8616 Maple Ave','Chicago','Illinois','60607'),(40,'Harper','Lee','1956-07-21','Male','407-513-5564','harper.lee57@hotmail.com','6191 Sunset Blvd','Orlando','Florida','32801'),(41,'Ava','Smith','1974-07-19','Male','716-242-5898','ava.smith81@hotmail.com','7844 Pine Rd','Chicago','Illinois','60607'),(42,'Olivia','Taylor','1970-08-21','Female','415-554-5918','olivia.taylor96@yahoo.com','8218 Main St','Orlando','Florida','32801'),(43,'David','Johnson','1980-07-01','Male','407-168-2333','david.johnson1@outlook.com','6019 Main St','Los Angeles','California','90001'),(44,'James','Lewis','1990-12-10','Male','646-244-5717','james.lewis14@yahoo.com','7210 Pine Rd','Miami','Florida','33139'),(45,'Emma','Wilson','1976-11-22','Male','214-251-8328','emma.wilson68@yahoo.com','5278 Maple Ave','Los Angeles','California','90001'),(46,'Olivia','Smith','2000-07-14','Female','716-498-4607','olivia.smith57@yahoo.com','3446 Sunset Blvd','Los Angeles','California','90001'),(47,'Michael','Wilson','1990-02-28','Male','210-472-1933','michael.wilson30@yahoo.com','4974 Sunset Blvd','New York City','New York','10011'),(48,'Sophia','Lee','1976-08-02','Female','407-781-9965','sophia.lee75@outlook.com','7548 Pine Rd','Los Angeles','California','90001'),(49,'Isabella','Taylor','1967-01-02','Male','415-266-6731','isabella.taylor38@gmail.com','216 Maple Ave','Los Angeles','California','90001'),(50,'Sophia','Anderson','1975-09-08','Male','716-297-6562','sophia.anderson78@gmail.com','1502 Oak St','Springfield','Illinois','62701'),(51,'Emma','Perez','1966-01-17','Female','415-294-7040','emma.perez27@gmail.com','8693 Oak St','Los Angeles','California','90001'),(52,'Olivia','Johnson','1969-09-28','Female','214-360-8898','olivia.johnson92@hotmail.com','4031 Main St','Miami','Florida','33139'),(53,'Ethan','Perez','1979-08-24','Male','716-148-7752','ethan.perez59@outlook.com','7310 Main St','San Francisco','California','94102'),(54,'Sophia','Martinez','1998-03-14','Male','646-551-2263','sophia.martinez72@outlook.com','6563 Main St','Chicago','Illinois','60607'),(55,'Liam','Williams','1958-05-12','Female','213-545-2757','liam.williams79@hotmail.com','8964 Maple Ave','New York City','New York','10011'),(56,'Ethan','Thomas','1990-05-09','Female','646-116-2945','ethan.thomas23@gmail.com','6893 Maple Ave','Orlando','Florida','32801'),(57,'Olivia','Davis','1982-07-28','Male','415-224-7302','olivia.davis16@hotmail.com','9351 Oak St','Orlando','Florida','32801'),(58,'Noah','Perez','1997-04-03','Female','407-414-6362','noah.perez48@yahoo.com','7968 Oak St','New York City','New York','10011'),(59,'Harper','Smith','1985-09-11','Male','213-699-1414','harper.smith51@yahoo.com','2643 Maple Ave','San Francisco','California','94102'),(60,'Amelia','Martinez','2000-08-19','Male','646-340-3164','amelia.martinez98@yahoo.com','6401 Oak St','New York City','New York','10011'),(61,'David','Clark','1956-10-27','Male','415-639-6875','david.clark59@outlook.com','5157 Main St','Buffalo','New York','14201'),(62,'Noah','Perez','1997-08-18','Male','213-821-2290','noah.perez18@hotmail.com','6683 Maple Ave','Buffalo','New York','14201'),(63,'Emma','Davis','1963-01-11','Female','646-451-8228','emma.davis34@yahoo.com','5738 Maple Ave','San Francisco','California','94102'),(64,'Ethan','Henderson','1984-01-24','Female','210-461-1360','ethan.henderson81@outlook.com','1104 Main St','Springfield','Illinois','62701'),(65,'Noah','Thompson','1991-06-03','Male','415-453-7924','noah.thompson28@yahoo.com','7455 Pine Rd','New York City','New York','10011'),(66,'Ava','Miller','1991-06-24','Female','214-491-1157','ava.miller34@outlook.com','8844 Sunset Blvd','San Antonio','Texas','78209'),(67,'Charlotte','Thompson','1974-03-01','Male','407-241-9420','charlotte.thompson11@yahoo.com','5507 Maple Ave','Dallas','Texas','75201'),(68,'Liam','Williams','1997-11-18','Male','210-835-2285','liam.williams77@outlook.com','1798 Sunset Blvd','San Antonio','Texas','78209'),(69,'Charlotte','Patel','1971-12-24','Male','214-127-1595','charlotte.patel12@outlook.com','5971 Oak St','Miami','Florida','33139'),(70,'Ava','Thomas','1972-03-24','Male','214-445-5421','ava.thomas51@outlook.com','342 Oak St','Orlando','Florida','32801'),(71,'Amelia','Davis','1999-09-19','Female','407-368-1627','amelia.davis51@outlook.com','2066 Pine Rd','San Francisco','California','94102'),(72,'Jacob','Taylor','1967-12-02','Male','305-797-5747','jacob.taylor98@yahoo.com','8771 Sunset Blvd','San Francisco','California','94102'),(73,'Emma','Wilson','1957-10-11','Female','646-700-9729','emma.wilson21@hotmail.com','2607 Oak St','New York City','New York','10011'),(74,'Emily','Clark','1959-06-12','Male','305-740-5807','emily.clark64@hotmail.com','6713 Sunset Blvd','Springfield','Illinois','62701'),(75,'Alexander','Smith','1986-01-15','Male','210-449-1152','alexander.smith86@outlook.com','4320 Sunset Blvd','San Antonio','Texas','78209'),(76,'Olivia','Martinez','1961-09-06','Female','312-774-3578','olivia.martinez65@gmail.com','9003 Sunset Blvd','Miami','Florida','33139'),(77,'Mia','Anderson','1968-01-14','Female','305-364-9812','mia.anderson44@hotmail.com','3212 Pine Rd','Miami','Florida','33139'),(78,'Ava','Henderson','1974-06-15','Male','415-675-7744','ava.henderson3@yahoo.com','6034 Sunset Blvd','Springfield','Illinois','62701'),(79,'Liam','Johnson','1951-12-24','Female','646-685-4966','liam.johnson24@hotmail.com','6980 Main St','Buffalo','New York','14201'),(80,'Harper','Thomas','1982-12-04','Male','646-268-8217','harper.thomas55@gmail.com','6567 Oak St','Buffalo','New York','14201'),(81,'Isabella','Anderson','1970-02-10','Female','415-604-1179','isabella.anderson26@hotmail.com','6619 Pine Rd','Springfield','Illinois','62701'),(82,'Alexander','Wilson','1979-06-27','Male','217-229-5560','alexander.wilson4@hotmail.com','6622 Pine Rd','Springfield','Illinois','62701'),(83,'Amelia','Patel','1986-06-12','Male','415-171-4125','amelia.patel86@gmail.com','8957 Pine Rd','Chicago','Illinois','60607'),(84,'Michael','Garcia','1975-03-25','Male','305-516-3328','michael.garcia52@yahoo.com','5115 Sunset Blvd','Los Angeles','California','90001'),(85,'Michael','Smith','1980-12-21','Male','415-847-9513','michael.smith72@gmail.com','6444 Maple Ave','San Antonio','Texas','78209'),(86,'Jacob','Clark','1985-03-27','Male','305-306-5275','jacob.clark90@hotmail.com','4259 Oak St','Chicago','Illinois','60607'),(87,'Amelia','Thomas','1985-03-02','Male','217-281-9392','amelia.thomas97@gmail.com','5278 Main St','Buffalo','New York','14201'),(88,'Olivia','Thomas','1983-03-23','Male','213-770-3209','olivia.thomas99@outlook.com','9208 Main St','Buffalo','New York','14201'),(89,'Matthew','Martinez','1999-02-04','Female','214-722-6772','matthew.martinez43@outlook.com','6294 Sunset Blvd','San Francisco','California','94102'),(90,'Jacob','Nguyen','1951-03-24','Male','210-119-6535','jacob.nguyen6@yahoo.com','6880 Main St','Los Angeles','California','90001'),(91,'Ethan','Wilson','1999-12-06','Male','213-955-2268','ethan.wilson7@outlook.com','7320 Oak St','Springfield','Illinois','62701'),(92,'David','Lewis','1986-08-14','Female','210-131-8433','david.lewis25@hotmail.com','6451 Main St','Miami','Florida','33139'),(93,'Jacob','Nguyen','1972-01-06','Male','214-730-1223','jacob.nguyen59@hotmail.com','9177 Pine Rd','San Francisco','California','94102'),(94,'Daniel','Martinez','1975-05-01','Male','407-198-2312','daniel.martinez46@hotmail.com','1713 Pine Rd','Orlando','Florida','32801'),(95,'Michael','Patel','1950-07-11','Female','210-661-3406','michael.patel23@yahoo.com','2704 Maple Ave','San Francisco','California','94102'),(96,'David','Garcia','1990-11-13','Male','415-331-4936','david.garcia43@hotmail.com','2885 Maple Ave','Buffalo','New York','14201'),(97,'Jacob','Williams','1979-06-19','Male','210-495-1220','jacob.williams75@yahoo.com','192 Pine Rd','Dallas','Texas','75201'),(98,'Liam','Patel','1970-09-01','Male','415-148-2833','liam.patel20@yahoo.com','6323 Main St','San Francisco','California','94102'),(99,'Alexander','Anderson','1958-06-17','Female','646-646-7559','alexander.anderson17@gmail.com','6780 Sunset Blvd','New York City','New York','10011'),(100,'Jacob','Nguyen','1965-08-13','Female','646-504-4933','jacob.nguyen51@outlook.com','9625 Main St','Dallas','Texas','75201');
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `Room_ID` int NOT NULL AUTO_INCREMENT,
  `Room_Type` varchar(50) DEFAULT NULL,
  `Floor_Number` int DEFAULT NULL,
  `Assigned_Doctor_ID` int DEFAULT NULL,
  PRIMARY KEY (`Room_ID`),
  KEY `Assigned_Doctor_ID` (`Assigned_Doctor_ID`),
  CONSTRAINT `rooms_ibfk_1` FOREIGN KEY (`Assigned_Doctor_ID`) REFERENCES `doctors` (`Doctor_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (1,'Maternity',2,5),(2,'General',2,10),(3,'General',4,12),(4,'ICU',4,12),(5,'General',4,7),(6,'Recovery',4,4),(7,'Maternity',3,7),(8,'Surgery',2,21),(9,'Recovery',5,14),(10,'General',2,31),(11,'Private',2,22),(12,'Private',4,34),(13,'Emergency',2,24),(14,'Private',1,34),(15,'Maternity',5,21);
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specialization`
--

DROP TABLE IF EXISTS `specialization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specialization` (
  `Specialization_ID` int NOT NULL AUTO_INCREMENT,
  `Specialization_Type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Specialization_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specialization`
--

LOCK TABLES `specialization` WRITE;
/*!40000 ALTER TABLE `specialization` DISABLE KEYS */;
INSERT INTO `specialization` VALUES (1,'Cardiology'),(2,'Neurology'),(3,'Pediatrics'),(4,'Oncology'),(5,'Orthopedics'),(6,'Dermatology'),(7,'Psychiatry'),(8,'Radiology'),(9,'Emergency Medicine'),(10,'Gastroenterology'),(11,'Endocrinology'),(12,'Pulmonology'),(13,'Urology'),(14,'Nephrology'),(15,'General Surgery'),(16,'Internal Medicine'),(17,'Ophthalmology'),(18,'ENT (Otolaryngology)'),(19,'Rheumatology'),(20,'Infectious Disease');
/*!40000 ALTER TABLE `specialization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treatment`
--

DROP TABLE IF EXISTS `treatment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `treatment` (
  `Treatment_ID` int NOT NULL AUTO_INCREMENT,
  `Treatment_Type` varchar(100) DEFAULT NULL,
  `Cost` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`Treatment_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treatment`
--

LOCK TABLES `treatment` WRITE;
/*!40000 ALTER TABLE `treatment` DISABLE KEYS */;
INSERT INTO `treatment` VALUES (1,'ECG',150.00),(2,'MRI Scan',1200.00),(3,'Blood Test',75.00),(4,'Chemotherapy',3500.00),(5,'X-Ray',200.00),(6,'Knee Replacement',8500.00),(7,'Dialysis',600.00),(8,'Skin Biopsy',500.00),(9,'Physical Therapy',100.00),(10,'Cataract Surgery',3000.00),(11,'Endoscopy',1400.00),(12,'Colonoscopy',1600.00),(13,'CT Scan',1000.00),(14,'Vaccination',50.00),(15,'Wound Dressing',100.00),(16,'Fracture Fixation',2200.00),(17,'Liver Function Test',90.00),(18,'Kidney Function Test',100.00),(19,'Angioplasty',10000.00),(20,'Heart Bypass Surgery',25000.00),(21,'Thyroid Test',80.00),(22,'Allergy Test',200.00),(23,'Cesarean Section',7000.00),(24,'Normal Delivery',4000.00),(25,'Pap Smear',150.00),(26,'Prostate Exam',120.00),(27,'Hernia Repair',3200.00),(28,'Gallbladder Removal',5000.00),(29,'Ear Wax Removal',60.00),(30,'Nasal Endoscopy',1300.00);
/*!40000 ALTER TABLE `treatment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treatment_medication`
--

DROP TABLE IF EXISTS `treatment_medication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `treatment_medication` (
  `Treatment_ID` int NOT NULL,
  `Medication_ID` int NOT NULL,
  PRIMARY KEY (`Treatment_ID`,`Medication_ID`),
  KEY `Medication_ID` (`Medication_ID`),
  CONSTRAINT `treatment_medication_ibfk_1` FOREIGN KEY (`Treatment_ID`) REFERENCES `treatment` (`Treatment_ID`),
  CONSTRAINT `treatment_medication_ibfk_2` FOREIGN KEY (`Medication_ID`) REFERENCES `medications` (`Medication_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treatment_medication`
--

LOCK TABLES `treatment_medication` WRITE;
/*!40000 ALTER TABLE `treatment_medication` DISABLE KEYS */;
INSERT INTO `treatment_medication` VALUES (12,1),(17,3),(22,3),(26,3),(15,4),(22,4),(14,5),(5,6),(19,6),(24,6),(26,6),(13,7),(13,8),(15,9),(17,9),(8,10),(24,10),(4,11),(29,11),(4,13),(6,14),(30,14),(7,15),(21,15),(23,15),(11,16),(18,16),(13,17),(19,17),(15,18),(20,18),(2,19),(8,19),(27,19),(17,21),(20,21),(25,21),(6,22),(26,22),(2,23),(4,23),(29,23),(10,24),(16,24),(19,24),(28,24),(3,25),(14,25),(18,26),(29,26),(6,27),(7,28),(27,28),(9,29),(14,29),(20,29),(27,29),(1,30);
/*!40000 ALTER TABLE `treatment_medication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visits`
--

DROP TABLE IF EXISTS `visits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visits` (
  `Visit_ID` int NOT NULL AUTO_INCREMENT,
  `Visit_Date` date DEFAULT NULL,
  `Doctor_ID` int DEFAULT NULL,
  `Room_ID` int DEFAULT NULL,
  `Created_By_Staff_ID` int DEFAULT NULL,
  PRIMARY KEY (`Visit_ID`),
  KEY `Doctor_ID` (`Doctor_ID`),
  KEY `Room_ID` (`Room_ID`),
  KEY `Created_By_Staff_ID` (`Created_By_Staff_ID`),
  CONSTRAINT `visits_ibfk_1` FOREIGN KEY (`Doctor_ID`) REFERENCES `doctors` (`Doctor_ID`),
  CONSTRAINT `visits_ibfk_2` FOREIGN KEY (`Room_ID`) REFERENCES `rooms` (`Room_ID`),
  CONSTRAINT `visits_ibfk_3` FOREIGN KEY (`Created_By_Staff_ID`) REFERENCES `hospital_staff` (`Staff_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visits`
--

LOCK TABLES `visits` WRITE;
/*!40000 ALTER TABLE `visits` DISABLE KEYS */;
INSERT INTO `visits` VALUES (1,'2025-04-09',25,7,8),(2,'2025-03-12',33,11,6),(3,'2025-04-19',27,13,6),(4,'2025-04-02',2,13,7),(5,'2025-03-29',9,9,9),(6,'2025-04-15',5,12,2),(7,'2025-02-01',7,5,3),(8,'2025-02-25',19,7,6),(9,'2025-04-13',18,7,1),(10,'2025-02-24',30,5,1),(11,'2025-04-24',25,5,1),(12,'2025-02-12',21,8,2),(13,'2025-03-23',1,3,9),(14,'2025-02-09',7,14,10),(15,'2025-03-17',29,2,7),(16,'2025-03-23',1,11,1),(17,'2025-04-23',3,14,4),(18,'2025-02-16',31,1,1),(19,'2025-02-23',20,4,7),(20,'2025-02-03',22,14,8),(21,'2025-03-25',2,7,6),(22,'2025-03-20',11,9,4),(23,'2025-01-25',7,13,3),(24,'2025-03-29',25,9,10),(25,'2025-04-08',14,10,8),(26,'2025-03-09',14,8,6),(27,'2025-04-22',17,7,9),(28,'2025-02-18',14,10,4),(29,'2025-04-17',22,1,10),(30,'2025-04-02',17,5,7),(31,'2025-04-05',14,14,3),(32,'2025-02-11',29,7,7),(33,'2025-01-30',35,14,5),(34,'2025-04-13',35,8,3),(35,'2025-02-14',30,13,4),(36,'2025-04-24',33,6,10),(37,'2025-04-19',3,11,10),(38,'2025-01-25',27,5,8),(39,'2025-02-18',28,12,9),(40,'2025-01-31',12,12,6),(41,'2025-03-18',7,15,8),(42,'2025-04-24',23,13,8),(43,'2025-04-17',28,6,10),(44,'2025-02-13',7,14,9),(45,'2025-04-03',24,1,1),(46,'2025-01-28',4,1,7),(47,'2025-04-08',4,4,5),(48,'2025-04-09',8,13,7),(49,'2025-02-06',18,6,10),(50,'2025-02-03',18,12,7),(51,'2025-04-03',16,9,6),(52,'2025-02-15',26,13,6),(53,'2025-02-17',9,3,10),(54,'2025-04-18',35,12,10),(55,'2025-03-28',3,6,6),(56,'2025-01-25',25,15,1),(57,'2025-03-13',12,8,3),(58,'2025-03-16',8,5,2),(59,'2025-04-19',19,1,9),(60,'2025-02-07',1,1,1),(61,'2025-02-23',6,4,4),(62,'2025-04-09',29,3,8),(63,'2025-04-18',25,4,6),(64,'2025-02-12',13,7,10),(65,'2025-03-06',34,4,3),(66,'2025-01-29',4,1,4),(67,'2025-04-06',21,13,4),(68,'2025-04-23',28,6,7),(69,'2025-02-13',8,10,7),(70,'2025-04-05',4,3,10),(71,'2025-02-02',9,10,2),(72,'2025-03-24',21,15,6),(73,'2025-04-07',29,12,6),(74,'2025-04-20',28,7,6),(75,'2025-04-22',10,1,3),(76,'2025-01-25',16,7,2),(77,'2025-01-27',11,7,8),(78,'2025-02-19',25,4,6),(79,'2025-02-17',17,15,3),(80,'2025-02-12',3,1,3),(81,'2025-02-11',1,2,4),(82,'2025-03-15',17,10,2),(83,'2025-02-05',26,10,10),(84,'2025-02-08',21,11,10),(85,'2025-02-19',28,15,1),(86,'2025-01-31',16,3,4),(87,'2025-04-16',14,4,5),(88,'2025-03-26',2,1,4),(89,'2025-03-31',12,9,9),(90,'2025-02-11',22,5,5),(91,'2025-02-10',15,5,1),(92,'2025-02-05',19,8,5),(93,'2025-02-20',17,15,6),(94,'2025-04-16',22,14,4),(95,'2025-02-24',26,5,6),(96,'2025-04-17',2,8,10),(97,'2025-04-12',9,9,4),(98,'2025-04-23',15,9,1),(99,'2025-01-27',2,4,5),(100,'2025-02-12',30,4,8);
/*!40000 ALTER TABLE `visits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visits_patients`
--

DROP TABLE IF EXISTS `visits_patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `visits_patients` (
  `Visit_ID` int NOT NULL,
  `Patient_ID` int NOT NULL,
  `Treatment_ID` int NOT NULL,
  `Notes` text,
  PRIMARY KEY (`Visit_ID`,`Patient_ID`,`Treatment_ID`),
  KEY `Patient_ID` (`Patient_ID`),
  KEY `Treatment_ID` (`Treatment_ID`),
  CONSTRAINT `visits_patients_ibfk_1` FOREIGN KEY (`Visit_ID`) REFERENCES `visits` (`Visit_ID`),
  CONSTRAINT `visits_patients_ibfk_2` FOREIGN KEY (`Patient_ID`) REFERENCES `patients` (`Patient_ID`),
  CONSTRAINT `visits_patients_ibfk_3` FOREIGN KEY (`Treatment_ID`) REFERENCES `treatment` (`Treatment_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visits_patients`
--

LOCK TABLES `visits_patients` WRITE;
/*!40000 ALTER TABLE `visits_patients` DISABLE KEYS */;
INSERT INTO `visits_patients` VALUES (1,8,10,'Needs specialist referral.'),(1,49,1,'Needs specialist referral.'),(1,95,16,'Prescribed medication.'),(2,4,15,'Responded well to treatment.'),(2,28,4,'Prescribed medication.'),(2,32,14,'Follow-up required in 2 weeks.'),(2,37,20,'Needs specialist referral.'),(2,41,29,'Initial diagnosis confirmed.'),(2,58,6,'Follow-up required in 2 weeks.'),(2,65,12,'Follow-up required in 2 weeks.'),(2,70,22,'Patient in recovery phase.'),(5,24,19,'Needs specialist referral.'),(5,91,25,'Routine check-up.'),(6,72,19,'Patient in recovery phase.'),(7,50,23,'Scheduled for lab tests.'),(9,29,9,'Follow-up required in 2 weeks.'),(9,37,14,'Follow-up required in 2 weeks.'),(10,2,1,'Follow-up required in 2 weeks.'),(11,31,8,'Prescribed medication.'),(11,37,28,'Scheduled for lab tests.'),(12,6,4,'Initial diagnosis confirmed.'),(13,9,15,'Routine check-up.'),(13,38,19,'Responded well to treatment.'),(13,84,18,'Routine check-up.'),(14,23,30,'Needs specialist referral.'),(14,55,30,'Responded well to treatment.'),(15,5,3,'Needs specialist referral.'),(15,40,20,'Scheduled for lab tests.'),(15,55,14,'Scheduled for lab tests.'),(17,29,4,'Routine check-up.'),(17,87,24,'Responded well to treatment.'),(20,41,10,'Initial diagnosis confirmed.'),(20,66,29,'Needs specialist referral.'),(21,5,14,'Prescribed medication.'),(21,53,28,'Follow-up required in 2 weeks.'),(21,68,24,'Needs specialist referral.'),(21,73,2,'Initial diagnosis confirmed.'),(23,25,7,'Prescribed medication.'),(23,42,24,'Initial diagnosis confirmed.'),(23,62,21,'Patient in recovery phase.'),(23,64,28,'Initial diagnosis confirmed.'),(24,53,14,'Responded well to treatment.'),(24,67,10,'Scheduled for lab tests.'),(25,60,30,'Initial diagnosis confirmed.'),(25,93,28,'Needs specialist referral.'),(27,1,20,'Follow-up required in 2 weeks.'),(27,9,24,'Prescribed medication.'),(27,84,9,'Scheduled for lab tests.'),(28,5,13,'Follow-up required in 2 weeks.'),(28,68,20,'Prescribed medication.'),(29,43,6,'Initial diagnosis confirmed.'),(30,16,23,'Follow-up required in 2 weeks.'),(30,53,11,'Needs specialist referral.'),(32,21,30,'Routine check-up.'),(32,53,28,'Prescribed medication.'),(33,3,6,'Initial diagnosis confirmed.'),(33,31,2,'Needs specialist referral.'),(33,59,30,'Responded well to treatment.'),(34,31,11,'Responded well to treatment.'),(34,97,30,'Follow-up required in 2 weeks.'),(36,66,15,'Needs specialist referral.'),(37,71,3,'Routine check-up.'),(37,81,26,'Responded well to treatment.'),(38,28,23,'Patient in recovery phase.'),(39,18,2,'Routine check-up.'),(39,63,2,'Responded well to treatment.'),(39,91,10,'Responded well to treatment.'),(40,14,26,'Patient in recovery phase.'),(40,23,5,'Follow-up required in 2 weeks.'),(41,12,19,'Responded well to treatment.'),(41,94,27,'Initial diagnosis confirmed.'),(42,20,26,'Initial diagnosis confirmed.'),(42,22,26,'Routine check-up.'),(43,9,5,'Scheduled for lab tests.'),(43,40,3,'Scheduled for lab tests.'),(43,53,3,'Prescribed medication.'),(43,84,8,'Follow-up required in 2 weeks.'),(44,12,22,'Follow-up required in 2 weeks.'),(45,94,9,'Scheduled for lab tests.'),(47,48,4,'Scheduled for lab tests.'),(47,65,17,'Patient in recovery phase.'),(48,13,12,'Initial diagnosis confirmed.'),(48,19,5,'Initial diagnosis confirmed.'),(48,21,22,'Responded well to treatment.'),(49,40,6,'Follow-up required in 2 weeks.'),(49,99,7,'Scheduled for lab tests.'),(50,36,17,'Patient in recovery phase.'),(51,13,1,'Responded well to treatment.'),(51,66,17,'Routine check-up.'),(52,31,16,'Responded well to treatment.'),(52,44,3,'Initial diagnosis confirmed.'),(52,98,26,'Routine check-up.'),(53,20,28,'Scheduled for lab tests.'),(53,50,20,'Scheduled for lab tests.'),(53,67,5,'Scheduled for lab tests.'),(54,62,26,'Responded well to treatment.'),(54,100,23,'Scheduled for lab tests.'),(56,68,9,'Initial diagnosis confirmed.'),(56,74,17,'Prescribed medication.'),(56,84,19,'Initial diagnosis confirmed.'),(57,14,13,'Scheduled for lab tests.'),(57,30,17,'Routine check-up.'),(57,92,30,'Scheduled for lab tests.'),(57,98,7,'Scheduled for lab tests.'),(58,57,13,'Patient in recovery phase.'),(58,83,8,'Initial diagnosis confirmed.'),(60,82,13,'Follow-up required in 2 weeks.'),(61,43,8,'Follow-up required in 2 weeks.'),(61,69,28,'Needs specialist referral.'),(62,34,12,'Patient in recovery phase.'),(63,100,3,'Follow-up required in 2 weeks.'),(64,100,28,'Prescribed medication.'),(65,56,27,'Responded well to treatment.'),(66,17,13,'Responded well to treatment.'),(66,59,10,'Needs specialist referral.'),(66,72,19,'Routine check-up.'),(67,2,29,'Initial diagnosis confirmed.'),(68,37,10,'Needs specialist referral.'),(69,22,20,'Initial diagnosis confirmed.'),(69,95,26,'Prescribed medication.'),(70,24,10,'Scheduled for lab tests.'),(70,44,19,'Needs specialist referral.'),(70,77,8,'Responded well to treatment.'),(70,80,25,'Routine check-up.'),(70,98,24,'Scheduled for lab tests.'),(71,10,9,'Routine check-up.'),(71,77,6,'Scheduled for lab tests.'),(71,86,20,'Needs specialist referral.'),(72,35,24,'Initial diagnosis confirmed.'),(73,42,8,'Follow-up required in 2 weeks.'),(75,17,12,'Follow-up required in 2 weeks.'),(75,30,3,'Scheduled for lab tests.'),(75,99,29,'Needs specialist referral.'),(76,66,27,'Routine check-up.'),(78,6,23,'Routine check-up.'),(78,55,28,'Responded well to treatment.'),(79,21,14,'Responded well to treatment.'),(79,89,22,'Needs specialist referral.'),(81,24,20,'Responded well to treatment.'),(81,45,21,'Scheduled for lab tests.'),(82,6,3,'Routine check-up.'),(82,30,21,'Scheduled for lab tests.'),(83,41,13,'Patient in recovery phase.'),(83,61,3,'Prescribed medication.'),(84,30,12,'Needs specialist referral.'),(84,75,6,'Scheduled for lab tests.'),(84,92,13,'Patient in recovery phase.'),(85,13,22,'Routine check-up.'),(85,19,13,'Patient in recovery phase.'),(85,19,21,'Prescribed medication.'),(85,35,8,'Prescribed medication.'),(86,51,30,'Routine check-up.'),(86,67,1,'Needs specialist referral.'),(86,78,30,'Patient in recovery phase.'),(86,87,18,'Initial diagnosis confirmed.'),(88,34,20,'Prescribed medication.'),(88,58,29,'Prescribed medication.'),(91,1,30,'Follow-up required in 2 weeks.'),(92,26,2,'Routine check-up.'),(92,47,30,'Initial diagnosis confirmed.'),(92,52,21,'Prescribed medication.'),(92,69,4,'Needs specialist referral.'),(93,79,27,'Responded well to treatment.'),(93,83,2,'Responded well to treatment.'),(93,90,3,'Prescribed medication.'),(95,97,24,'Needs specialist referral.'),(97,28,22,'Routine check-up.'),(97,47,15,'Responded well to treatment.'),(98,54,27,'Needs specialist referral.'),(98,84,3,'Scheduled for lab tests.'),(99,26,15,'Needs specialist referral.'),(99,32,24,'Patient in recovery phase.'),(99,84,29,'Routine check-up.'),(100,31,24,'Needs specialist referral.'),(100,69,22,'Follow-up required in 2 weeks.');
/*!40000 ALTER TABLE `visits_patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'hpms'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-24 11:20:24
