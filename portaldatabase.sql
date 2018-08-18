/*
SQLyog Enterprise - MySQL GUI v8.02 RC
MySQL - 5.5.24-log : Database - ucoeportal
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`ucoeportal` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ucoeportal`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `username` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`username`,`email`,`password`) values ('jassim','jassim@gmail.com','ucoeportal');

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `categoryname` varchar(20) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`categoryname`),
  KEY `NewIndex1` (`categoryname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `category` */

insert  into `category`(`categoryname`,`description`) values ('book','sale and purchase books'),('drafter','sale and purchase drafters'),('labcoats','sale and purchase labcoats'),('others','any other thing'),('workshopuniform','sale and puchase workshop dress');

/*Table structure for table `item` */

DROP TABLE IF EXISTS `item`;

CREATE TABLE `item` (
  `itemid` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) DEFAULT NULL,
  `quantity` int(5) DEFAULT NULL,
  `category` varchar(20) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `mrp` int(5) DEFAULT NULL,
  `Contact` decimal(11,0) DEFAULT NULL,
  `itemstatus` varchar(20) DEFAULT NULL,
  `discountedprice` int(10) NOT NULL,
  PRIMARY KEY (`itemid`),
  KEY `NewIndex1` (`Contact`),
  KEY `FK_item` (`category`),
  CONSTRAINT `FK_item_11` FOREIGN KEY (`category`) REFERENCES `category` (`categoryname`),
  CONSTRAINT `FK_item_3` FOREIGN KEY (`Contact`) REFERENCES `student` (`mobileno`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `item` */

insert  into `item`(`itemid`,`title`,`quantity`,`category`,`description`,`mrp`,`Contact`,`itemstatus`,`discountedprice`) values (1,'operating system boo',0,'book','an operating system book of semester 4 is for sale',370,'9780017707','used',150),(2,'computer architectur',1,'book','acomputer architecture book of semester third is for sale',265,'9781831216','',120),(3,'drafter',2,'drafter','two drafter in good condtion are available for sale',150,'9780440718',NULL,50),(4,'labcoats',0,'labcoats','labcoats for chemistry lab are avaailable for sale',450,'9781831216',NULL,230),(5,'workshopuniform',1,'workshopuniform','Workshop uniform of size 34 is available here for sale',570,'9780017707','used',340),(6,'Drafter',1,'drafter','Drafter in excelent condition used for only 3 months is on sale.',270,'9781831216','new',150),(7,'drafter',1,'drafter','engineering drawing drafter',150,'9417630724','used',80),(8,'sheetholder',1,'others','a sheetholder',30,'9781831216','used',20),(9,'SRK Iynger',1,'book','A book of Maths used in semester 1 ',570,'9781831216','used',360),(10,'White coat',1,'labcoats','White color lab coat in exellent condition is available for sale',320,'9780017707','new',150),(14,'TOC',2,'book','book for semester 5',530,'9781831216','used',230),(15,'book',1,'book','book for sem 5',560,'9781831216','good',200);

/*Table structure for table `notes` */

DROP TABLE IF EXISTS `notes`;

CREATE TABLE `notes` (
  `notesid` int(10) NOT NULL,
  `recomendedsubject` varchar(20) DEFAULT NULL,
  `recomendedsemester` varchar(5) DEFAULT NULL,
  `posterid` int(10) DEFAULT NULL,
  `postertype` varchar(10) DEFAULT NULL,
  `topic` varchar(10) DEFAULT NULL,
  `description` varchar(30) DEFAULT NULL,
  `pdf` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`notesid`),
  KEY `NewIndex1` (`posterid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `notes` */

insert  into `notes`(`notesid`,`recomendedsubject`,`recomendedsemester`,`posterid`,`postertype`,`topic`,`description`,`pdf`) values (1,'mpob','4',1,'student','management','notes of managent',NULL),(2,'sad','4',2,'teacher','gannt char','topic of sad ',NULL),(3,'vb','3',3,'student','dbms',NULL,NULL);

/*Table structure for table `notice` */

DROP TABLE IF EXISTS `notice`;

CREATE TABLE `notice` (
  `noticeid` int(10) NOT NULL AUTO_INCREMENT,
  `noticetitle` varchar(50) DEFAULT NULL,
  `posterid` int(10) NOT NULL,
  `description` varchar(600) DEFAULT NULL,
  `dateofnotice` varchar(30) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `postertype` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`noticeid`),
  KEY `NewIndex1` (`posterid`),
  KEY `NewIndex2` (`posterid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `notice` */

insert  into `notice`(`noticeid`,`noticetitle`,`posterid`,`description`,`dateofnotice`,`active`,`postertype`) values (1,'college reopens',1,'college starts from 1 august 2017','2017-07-20',1,'teacher'),(2,'last date for fee submission',2,'this is to inform that last date for fee submission is 15-07-2017','2017-07-10',0,'teacher'),(3,'result',6,'result of cse department sem 4 has been declared students can check it on pup official site','2017-07-21',0,'student'),(4,'Counselling schedule for Admission',3,'Counselling will be start from 1st August and ends on 3rd August.All the students are requested to bring their required certificates or documents for verification.','2017-07-22',1,'student'),(5,'Fee Slip Submission',3,'Students have to submit their fee slip before opening of college','2017-07-23',0,'student'),(7,'Assignment Submission',1,'Students have to submit Assignment of CN  before 12 november 2017','2017-09-24',1,'teacher'),(8,'Sports Event',5,'Sports Even Houga Aajeyo','2017-07-24',1,'student'),(9,'Display of detainedlist',0,'Teacher have to submit the detain list before 13 August 2017','2017-07-24',1,'admin'),(10,'eveent organised',7,'ha hha haha h ha laughing competition','2017-07-25',1,'student'),(20,'art and craft',1,'Our computer science department is organising an art and craft compition which include painting competion also','2017-10-21',1,'student');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `studentid` int(10) NOT NULL AUTO_INCREMENT,
  `studentname` varchar(30) NOT NULL,
  `rollno` decimal(10,0) NOT NULL,
  `password` varchar(10) NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `mobileno` decimal(11,0) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`studentid`,`password`),
  KEY `NewIndex1` (`mobileno`),
  KEY `FK_student11` (`rollno`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

/*Data for the table `student` */

insert  into `student`(`studentid`,`studentname`,`rollno`,`password`,`gender`,`mobileno`,`email`,`city`,`state`,`active`) values (1,'Jaspreet','11501121','3636','female','9780017707','jaskaur@gmail.com','patiala','punjab',1),(2,'prince','11501094','4646','male','9878564645','pri@sharma.com','patiala','punjab',1),(3,'Simran','11501134','5656','female','9781831216','simkaur@gmail.com','patiala','punjab',1),(4,'puneet','11501096','6666','male','9780440718','pun@kumar.com','patiala','punjab',1),(7,'Gurpreet Singh','11501114','123','male','9417630724','ests.khanna@gmail.com','patiala','punjab',1),(21,'Akshay','12345','SD416735','Male','978675275','Akshay@gmail.com','Luthiana','Punjab',0);

/*Table structure for table `studentrecord` */

DROP TABLE IF EXISTS `studentrecord`;

CREATE TABLE `studentrecord` (
  `Student_Rollno` decimal(10,0) NOT NULL,
  `Student_name` varchar(25) NOT NULL,
  `Group` varchar(10) DEFAULT NULL,
  `SGPA1` varchar(10) DEFAULT NULL,
  `Fee_receipt1` decimal(10,0) DEFAULT NULL,
  `SGPA2` varchar(10) DEFAULT NULL,
  `Fee_receipt2` decimal(10,0) DEFAULT NULL,
  `SGPA3` varchar(10) DEFAULT NULL,
  `Fee_receipt3` decimal(10,0) DEFAULT NULL,
  `SGPA4` varchar(10) DEFAULT NULL,
  `Fee_receipt4` decimal(10,0) DEFAULT NULL,
  `Day_scholar/hostler` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Student_Rollno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `studentrecord` */

insert  into `studentrecord`(`Student_Rollno`,`Student_name`,`Group`,`SGPA1`,`Fee_receipt1`,`SGPA2`,`Fee_receipt2`,`SGPA3`,`Fee_receipt3`,`SGPA4`,`Fee_receipt4`,`Day_scholar/hostler`) values ('11501094','Prince','3ce','7.8','51657','7.9','54657','7.4','46577','7.8','74522','hostler'),('11501096','Puneet','3ce','6.9','63412','7.3','63362','7.5','63413','7.8','51224','day scholar'),('11501101','Ansh','3ce','7.3','32414','7.1','54637','6.9','75643','7.2','67435','hostler'),('11501102','Vivek Mishra','3ce','8.1','45463','8.4','53255','8.5','67846','8.2','35463','hostler'),('11501103','Abhimanyu','3ce','reappear','35546','6.3','75463','6.5','24355','6.1','75422','day scholar'),('11501104','Aditi','3ce','7.9','54757','8.0','56879','8.1','87954','8.8','96775','Day scholar '),('11501105','Ajay','3ce','6.6','79908','7.1','46576','reappear','46576','6.9','68799','Hostler'),('11501114','Gurpreet Singh','3ce','7.9','56848','8.1','97867','8.5','76658','8.0','86998','Day scholar'),('11501121','Jaspreet','3ce','7.5','46357','7.7','55748','8.3','76476','8.4','74686','Day scholar'),('11501134','Simran','3ce','7.7','65768','8.5','54657','8.1','76899','7.8','65758','Day scholar'),('11503098','Ankush','3me','6.14','57446','6.7','65748','6.9','55763','7.31','68579','Hostler');

/*Table structure for table `teacher` */

DROP TABLE IF EXISTS `teacher`;

CREATE TABLE `teacher` (
  `teacherid` int(10) NOT NULL AUTO_INCREMENT,
  `teachername` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  `subject` varchar(30) DEFAULT NULL,
  `mobileno` decimal(10,0) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`teacherid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `teacher` */

insert  into `teacher`(`teacherid`,`teachername`,`password`,`subject`,`mobileno`,`email`,`active`) values (1,'Mr.Madan','11','operating system','2147483647','madan@gmail.com',1),(2,'jagroop kaur','12','computer architecture','2147483647','jagroop@kaur.com',1),(4,'Gaurav Gupta','TR383193','Data Structures','979877686','Gorav@gmail.com',1),(5,'Sim','121212','math','245326527','simran@gmail.com',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
