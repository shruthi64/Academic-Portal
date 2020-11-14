-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` varchar(56) NOT NULL,
  `Name` varchar(32) NOT NULL,
  `Relationship Type` varchar(21) NOT NULL,
  `Account Number` bigint(20) NOT NULL,
  `IFSC Code` varchar(31) NOT NULL,
  `Bank Details` varchar(34) NOT NULL,
  `Bank Passbook/Statement` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `Name`, `Relationship Type`, `Account Number`, `IFSC Code`, `Bank Details`, `Bank Passbook/Statement`) VALUES
('18731', 'Jayakumar', 'Faculty', 123456789012, 'ISL12345678', 'Canara Bank', 'Canara Bank details with Account Number  and IFSC code'),
('18031', 'Navaneethan', 'Faculty', 908765789065, 'HYJ12789065432', 'State Bank of India', 'State bank  details with Account Number and IFSC code'),
('17031', 'Divya', 'Faculty', 905543123451, 'IOU23344778', 'Bank of Baroda', 'Bank of Baroda details with Account Number and IFSC code'),
('17042', 'Raja', 'Faculty', 2344569806, 'HFU908876543', 'State Bank of India', 'State Bank of India details with Account Number and IFSC cod'),
('16101', 'Saravana', 'Faculty', 2290876513, 'IOU776543120', 'Bank of Baroda ', 'Bank of Baroda details with Account Number and IFSC code'),
('15731', 'Jose', 'Faculty', 976577865, 'JYU908765431', 'Union Bank of India', 'Union Bank of India details with Account Number and IFSC cod'),
('17001', 'Reenu', 'Faculty', 9000655543, 'UFI12290876', 'Corporation Bank of India', 'Corporation Bank of India details with Account Number and IF'),
('16631', 'Ravi', 'Faculty', 1233451234, 'UF1234564567', 'Indian Bank', 'Indian Bank details with Account Number and IFSC code '),
('19731', 'Harshita', 'Faculty', 8988765456, 'FTI0987654678', 'State Bank of India', ' State Bank of India details with Account Number and IFSC co'),
('17048', 'Navamani', 'Faculty', 9987654321, 'IOU098765', 'Bank of Baroda ', 'BankofBaroda details with Account Number and IFSC code'),
('18BIT411', 'Harida ', 'Student', 1234657895, 'HYJ88913425678', 'State Bank of India', 'State Bank of India  Details with Account Number and IFSC co'),
('18BIT0359', 'Shruthi', 'Student', 1237890876, 'ISL12376890654', 'Canara Bank ', 'Canara Bank Details with Account Number and IFSC Code detail'),
('18BIT379', 'Siddharth', 'Student', 9088765412, 'IOU12345678908', 'Bank of Baroda', 'Bank of Baroda details with Account Number and IFSC Code det'),
('18BIT0405', 'Shruti', 'Student', 9876543210, 'JYU90765890876', 'Union Bank of India', 'Union Bank of India details with Account Number and IFSC Cod'),
('17BME0912', 'Ashok', 'Student', 1289076543, 'UFI12567876549', 'Indian Bank', 'Indian Bank details with Account Number and IFSC Code detail'),
('19BEE0456', 'Rahul', 'Student', 9006543123, 'UFI12890765565', 'Corporation Bank of India', 'Corporation Bank of India details with Account Number and IF'),
('17BCE01111', 'Samyukta', 'Student', 9807653213, 'HYJ17890987654', 'State Bank of India', 'State Bank of India  Details with Account Number and IFSC co'),
('18BIS0731', 'Vinod', 'Student', 1222256789, 'ISL12890765432', 'Canara Bank ', 'Canara Bank Details with Account Number and IFSC Code detail');

-- --------------------------------------------------------

--
-- Table structure for table `achievements`
--

CREATE TABLE `achievements` (
  `SNo` int(4) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `RegistrationNumber` varchar(34) NOT NULL,
  `Achievement` text NOT NULL,
  `Position` varchar(67) NOT NULL,
  `Category` varchar(67) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `achievements`
--

INSERT INTO `achievements` (`SNo`, `Name`, `RegistrationNumber`, `Achievement`, `Position`, `Category`, `Date`) VALUES
(1, 'Harida', '18BIT0411', 'Over All Scholarship', 'SDE', 'Computer Science', '2016-06-29'),
(2, 'Shruthi', '18BIT0359', 'Honor Role (High Grades)', 'Senior Manager', 'Mechanical', '2020-09-15'),
(3, 'Siddharth', '18BIT0379', '2nd position in Code2Create', 'Project Manager ', 'Spcl in Information Security', '2020-02-25'),
(4, 'Shruti', '18BIT0405', '1st prize in Google Pixel 2', 'Assistant Manager', 'ECE', '2018-08-24'),
(5, 'Ashok Raj', '17BME0912', 'Certification in DevOps', 'Team Leader', 'IT', '2019-06-14'),
(6, 'Rahul Raj', '17BCE01111', 'RHCA certification', 'SE', 'Computer Science', '2020-09-17'),
(7, 'Vinod Kumar', '18BIS0731', 'Ranked 86th worldwide in CodeChef \'15 Long Challenge\'', 'App Developer', 'Computer Science', '2014-01-23'),
(8, 'Samyukta', '17BCE01111', 'Co-authored paper \'ML in everyday life\' with impact factor or 25.45', 'Software Engineer', 'Information Security', '2015-05-22'),
(9, 'Vinod Kumar', '18BIS0731', 'Finalist in Nationwide Hackathon', 'Full Stack Engineer', 'Information Systems', '2017-09-29'),
(10, 'Harida', '18BIT0411', 'Co-authored \'Bio-waste\' paper with impact factor 26.167', 'Customers Manager', 'Waste Manegement', '2019-08-22');

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `Name` varchar(56) NOT NULL,
  `id` varchar(56) NOT NULL,
  `Street Name` varchar(30) NOT NULL,
  `Area Name` text NOT NULL,
  `City` text NOT NULL,
  `State` text NOT NULL,
  `Country` text NOT NULL,
  `Pincode` bigint(18) NOT NULL,
  `Phone` bigint(12) NOT NULL,
  `Email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`Name`, `id`, `Street Name`, `Area Name`, `City`, `State`, `Country`, `Pincode`, `Phone`, `Email`) VALUES
('Jayakumar', '18731', 'Deena Street', 'Rajiv Nagar', 'Erode', 'Tamil Nadu', 'India', 637211, 7339654878, 'jayakumar@vit.ac.in'),
('Navaneethan', '18031', 'Daksha street', 'Indu', 'Kochin', 'Kerala', 'India', 654321, 9876543212, 'navaneethan@vit.ac.in'),
('Raja', '17042', 'Lalbhahath street', 'Gandhi', 'Cuttack', 'Orissa', 'India', 654321, 9090876543, 'raja@vit.ac.in'),
('Saravana', '16101', 'Pangal street', 'EVR', 'Tanjore', 'Tamil Nadu', 'India', 675432, 9764136805, 'saravana.kumar@vit.ac.in'),
('Jose', '15731', 'Kumaresapuram street', 'Kuhu', 'Hyderabad', 'Andhra Pradesh', 'India', 689054, 8908654321, 'jose@vit.ac.in'),
('Reenu', '17001', 'Anantha Bhavan', 'Manipur Nagar', 'E-City', 'Karnataka', 'India', 611908, 8899054876, 'reenu@vit.ac.in'),
('Ravi', '16631', 'Prashantha Street', 'Joseph', 'Trivandrum', 'Kerala', 'India', 674321, 9090432123, 'ravi.shastri@vit.ac.in'),
('Harshita', '19731', 'Tanmaya street', 'Kshtriya Nagar', 'Bihar', 'Assam', 'India', 643201, 8877665544, 'harshita.patel@vit.ac.in'),
('Divya', '17031', 'Liliput street', 'ER Rode', 'E-City', 'Karnataka', 'India', 698789, 9000876890, 'divya.udayan@vit.ac.in'),
('Navamani', '17048', 'Janaki street', 'Ramlala Nagar', 'Chennai', 'Tamil Nadu', 'India', 609125, 8007965547, 'navamani@vit.ac.in'),
('Harida', '18BIT411', 'Rajat Street', 'Kumaresapuram', 'Salem', 'Tamil Nadu', 'India', 647201, 9088765431, 'harida@gmail.com'),
('Shruthi', '18BIT0359', 'Brahma Lane', 'Jalandhar Nagar', 'Kochi', 'Kerala', 'India', 647106, 7889065431, 'shruthi@gmail.com'),
('Siddharth', '18BIT379', 'Vinaya Street', 'Tumkur Nagar', 'Nasik', 'Maharashtra', 'India', 637093, 9066543123, 'siddharth@gmail.com'),
('Shruti', '18BIT0405', '1414 Argonne Street', 'Philip Lane', 'New Castle', 'Florida', 'USA', 178905, 98787654, 'shruti@gmail.com'),
('Ashok', '17BME0912', 'lalbhag street', 'M.G.R Nagar', 'Erode', 'Tamil Nadu', 'India', 650121, 7339805412, 'ashokraj@gmail.com'),
('Rahul', '19BEE0456', '56,Juhu Street', 'Oracle ProZone Area', 'Bhiwandi', 'Mumbai', 'India', 609677, 9112667834, 'rahulraj@gmail.com'),
('Samyukta', '17BCE01111', '12-firstCross street', 'Fruits Market Area', 'Hyderabad', 'Andra Pradesh', 'India', 607111, 8220678941, 'samyukta@gmail.com'),
('Vinod', '18BIS0731', '27,Umaang street', 'Shilangur Area', 'Chennai', 'Tamil Nadu', 'India', 601234, 6789065431, 'vinodkumar@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `alumni`
--

CREATE TABLE `alumni` (
  `S.No` int(3) NOT NULL,
  `RegistrationNumber` varchar(14) NOT NULL,
  `Name` varchar(34) NOT NULL,
  `Program` varchar(13) NOT NULL,
  `YearofGraduation` year(4) NOT NULL,
  `Course` varchar(34) NOT NULL,
  `Branch` varchar(34) NOT NULL,
  `Company` varchar(45) NOT NULL,
  `Designation` varchar(45) NOT NULL,
  `MobileNumber` bigint(10) NOT NULL,
  `Email` varchar(23) NOT NULL,
  `CurrentAddress` varchar(45) NOT NULL,
  `Country` varchar(45) NOT NULL,
  `City` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alumni`
--

INSERT INTO `alumni` (`S.No`, `RegistrationNumber`, `Name`, `Program`, `YearofGraduation`, `Course`, `Branch`, `Company`, `Designation`, `MobileNumber`, `Email`, `CurrentAddress`, `Country`, `City`) VALUES
(1, '18BIT0411', 'Harida', 'B.Tech', 2020, 'Information Security', 'Computer Science', 'Amazon', 'SDE', 9000987678, 'harida@gmail.com', 'Bangalore, India', 'India', 'Bangalore'),
(2, '18BIT0359', 'Shruthi', 'B.Tech', 2022, 'Database Management', 'Information Technology', 'Bosch', 'Senior Manager', 8909876789, 'shruthi@gmail.com', 'Hosur,Tamil Nadu', 'India', 'Hosur'),
(3, '1BIT0379', 'Siddharth', 'B.Tech', 2021, 'Information Security', 'Spcl in Information Security', 'HP', 'Project manager', 9087654321, 'siddharth@gmail.com', 'Australia', 'Australia', 'Sydney'),
(4, '18BIT0405', 'Shruti', 'B.Tech', 2020, 'Electronics', 'ECE', 'Schneiders', 'Assistant manager', 9000766675, 'shruti@gmail.com', 'Erode,Tamil Nadu', 'India', 'Erode'),
(5, '17BME0912', 'Ashok Raj', 'B.Tech', 2019, 'Information systems', 'IT', 'Google', 'Team Leader', 7788996578, 'ashok@gmail.com', 'Sydney,Australia', 'Australia', 'Sydney'),
(6, '19BEE0456', 'Rahul Raj', 'B.Tech', 2022, 'Network Security', 'Computer Science', 'Adobe', 'SE', 9900876543, 'rahul@gmail.com', 'Chennai,Tamil Nadu', 'India', 'Chennai'),
(7, '17BCE01111', 'Samyukta', 'B.Tech', 2014, 'Web Development', 'Computer Science', 'Freelancer', 'App developer', 9009876675, 'samyukta@gmail.com', 'Bihar,India', 'India', 'Bihar'),
(8, '18BIS0731', 'Vinod Kumar', 'B.Tech', 2016, 'Information Security', 'B.Tech', 'Cisco', 'Software Engineer', 9900987678, 'vinod@gmail.com', 'Bangalore,India', 'India', 'Bangalore');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `SNo` int(3) NOT NULL,
  `id` varchar(56) NOT NULL,
  `CourseCode` varchar(9) NOT NULL,
  `Course` varchar(100) NOT NULL,
  `CourseType` varchar(80) NOT NULL,
  `RegistrationNumber` varchar(20) NOT NULL,
  `Name` text NOT NULL,
  `Faculty` varchar(56) NOT NULL,
  `AttendancePercentage` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`SNo`, `id`, `CourseCode`, `Course`, `CourseType`, `RegistrationNumber`, `Name`, `Faculty`, `AttendancePercentage`) VALUES
(1, '18731', 'ITE1008', 'Open Source Programming', 'Embedded Theory+Project', '18BIT0411', 'Harida', 'Jayakumar', 89),
(2, '17042', 'ITE4001', 'Network And Information Security', 'Embedded Theory+Project', '18BIT0411', 'Harida', 'Raja', 65),
(3, '15731', 'ITE2001', 'Web Technology', 'Embedded Theory+Project+Lab', '18BIT0411', 'Harida', 'Jose', 100),
(4, '17048', 'EEE1001', 'Basics of Electronics', 'Embedded Theory+Lab', '18BIT0411', 'Harida', 'Navamani', 90),
(5, '17001', 'CSE4003', 'Cyber Security', 'Embedded Theory+Project', '18BIT0411', 'Harida', 'Reenu', 100),
(6, '18731', 'CSE1007', 'Java Programming', 'Embedded Theory+Lab', '18BIT0359', 'Shruthi', 'Jayakumar', 89),
(7, '17042', 'CHY1701', 'Engineering Chemistry', 'Embedded Theory+Lab', '18BIT0359', 'Shruthi', 'Raja', 67),
(8, '15731', 'CSE3013', 'Artificial Intelligence', 'Embedded Theory+Project', '18BIT0359', 'Shruthi', 'Jose', 99),
(9, '17001', 'BCI2001', 'Data Privacy', 'Embedded Theory+Project', '18BIT0359', 'Shruthi', 'Reenu', 45),
(10, '18031', 'ITE1008', 'Open Source Programming', 'Embedded Theory+Project', '18BIT0359', 'Shruthi', 'Navaneethan', 100),
(11, '18731', 'EEE1001', 'Basics of Electronics', 'Embedded Theory+Lab', '18BIT0379', 'Siddharth', 'Jayakumar', 70),
(12, '17042', 'BCI2001', 'Data Privacy', 'Embedded Theory+Project', '18BIT0379', 'Siddharth', 'Raja', 86),
(13, '15731', 'CSE4003', 'Cyber Security', 'Embedded Theory+Project', '18BIT0379', 'Siddharth', 'Jose', 59),
(14, '17048', 'ITE2001', 'Web Technology', 'Embedded Theory+Project+Lab', '18BIT0379', 'Siddharth', 'Navamani', 96),
(15, '18031', 'ITE1008', 'Open Source Programming', 'Embedded Theory+Project', '18BIT0379', 'Siddharth', 'Navaneethan', 92),
(16, '18731', 'ITE1008', 'Open Source Programming', 'Embedded Theory+Project', '18BIT0405', 'Shruti', 'Jayakumar', 78),
(17, '17042', 'ITE1003', 'Database Management Systems', 'Embedded Theory+Lab+Project', '18BIT0405', 'Shruti', 'Raja', 98),
(18, '15731', 'ITE4001', 'Network and Information Security', 'Embedded Theory+Project', '18BIT0405', 'Shruti', 'Jose', 48),
(19, '17048', 'BCI2001', 'Data Privacy', 'Embedded Theory+Project', '18BIT0405', 'Shruti', 'Navamani', 76),
(20, '17031', 'CHY1701', 'Engineering Chemistry', 'Embedded theory+Lab', '18BIT0405', 'Shruti', 'Divya', 98),
(21, '18731', 'BCI2001', 'Data Privacy', 'Embedded Theory+Project', '17BME0912', 'Ashok Raj', 'Jayakumar', 80),
(22, '17042', 'CSE1007', 'Java Programming', 'Embedded Theory+Lab', '17BME0912', 'Ashok Raj', 'Raja', 81),
(23, '15731', 'ITE1008', 'Open Source Programming', 'Embedded Thoery+Project', '17BME0912', 'Ashok Raj', 'Jose', 97),
(24, '17048', 'ITE2001', 'Web Technology', 'Embedded Theory+Lab+Project', '17BME0912', 'Ashok Raj', 'Navamani', 60),
(25, '18731', 'CHY1701', 'Engineering Chemistry', 'Embedded theory+Lab', '17BME0912', 'Ashok Raj', 'Jayakumar', 95),
(26, '17042', 'ITE2001', 'Web Technology', 'Embedded Theory+Lab+Project', '19BEE0456', 'Rahul Raj', 'Raja', 81),
(27, '15731', 'ITE1008', 'Open Source Programming', 'Embedded Thoery+Project', '19BEE0456', 'Rahul Raj', 'Jose', 61),
(28, '17048', 'BCI2001', 'Data Privacy', 'Embedded Theory+Project', '19BEE0456', 'Rahul Raj', 'Navamani', 80),
(29, '17031', 'CSE4003', 'Cyber Security', 'Embedded Theory+Project', '19BEE0456', 'Rahul Raj', 'Divya', 74),
(30, '16101', 'ITE4001', 'Network and Information Security', 'Embedded Theory+Project', '19BEE0456', 'Rahul Raj', 'Saravana', 90),
(31, '18731', 'EEE1001', 'Basics of Electronics', 'Embedded Theory+Lab', '17BCE01111', 'Samyukta', 'Jayakumar', 90),
(32, '17042', 'BCI2001', 'Data Privacy', 'Embedded Theory+Project', '17BCE01111', 'Samyukta', 'Raja', 50),
(33, '15731', 'ITE1008', 'Open Source Programming', 'Embedded Thoery+Project', '17BCE01111', 'Samyukta', 'Jose', 90),
(34, '17048', 'CHY1701', 'Engineering Chemistry', 'Embedded Theory+Lab', '17BCE01111', 'Samyukta', 'Navamani', 96),
(35, '16101', 'CSE3013', 'Artificial Intelligence', 'Embedded Theory+Project', '17BCE01111', 'Samyukta', 'Saravana', 100),
(36, '18731', 'ITE4001', 'Network And Information Security', 'Embedded Theory+Project', '18BIS0731', 'Vinod Kumar', 'Jayakumar', 87),
(37, '17042', 'ITE2001', 'Web Technology', 'Embedded Theory+Project+Lab', '18BIS0731', 'Vinod Kumar', 'Raja', 93),
(38, '15731', 'EEE1001', 'Basics of Electronics', 'Embedded Theory+Lab', '18BIS0731', 'Vinod Kumar', 'Jose', 90),
(39, '17048', 'CHY1701', 'Engineering Chemistry', 'Embedded Theory+Lab', '18BIS0731', 'Vinod Kumar', 'Navamani', 76),
(40, '16101', 'CSE3013', 'Artificial Intelligence', 'Embedded Theory+Project', '18BIS0731', 'Vinod Kumar', 'Saravana', 63);

-- --------------------------------------------------------

--
-- Table structure for table `club`
--

CREATE TABLE `club` (
  `SNo` int(3) NOT NULL,
  `Club` varchar(56) NOT NULL,
  `Post` varchar(56) NOT NULL,
  `FromDate` date NOT NULL,
  `ToDate` date NOT NULL,
  `Guide` varchar(54) NOT NULL,
  `RegistrationNumber` varchar(56) NOT NULL,
  `Name` varchar(34) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `club`
--

INSERT INTO `club` (`SNo`, `Club`, `Post`, `FromDate`, `ToDate`, `Guide`, `RegistrationNumber`, `Name`) VALUES
(1, 'LEO Club', 'Member', '2018-12-12', '2020-07-06', 'Mr.Jagadeesh', '17BME0912', 'Ashok Raj'),
(2, 'ASME chapter', 'Member', '2019-03-05', '2020-02-25', 'Mr.Raju', '18BIT0411', 'Harida'),
(3, 'ADG club', 'Secretary', '2019-01-08', '2021-04-06', 'Mrs.Jasmine', '18BIT0359', 'Shruthi'),
(4, 'Anokha Chapter', 'Member', '2019-07-08', '2021-08-19', 'Mr.RamKumar', '18BIT0379', 'Siddharth'),
(5, 'IEEE club', 'Events Manager', '2019-09-10', '2021-11-14', 'Mr.Rajavel', '18BIT0405', 'Shruti'),
(6, '--No Records--', 'Nil', '2020-07-26', '2020-07-26', 'Nil', '19BEE0456', 'Rahul Raj'),
(7, 'Chapters', 'Member', '2020-07-02', '2021-07-24', 'Mr.Sooraj', '18BIS0731', 'Vinod Kumar'),
(8, 'Tamil Literature Club', 'Chief Head', '2019-05-13', '2020-04-06', 'Ms.Nirmala', '17BCE01111', 'Samyukta');

-- --------------------------------------------------------

--
-- Table structure for table `club_fac`
--

CREATE TABLE `club_fac` (
  `S.No` int(3) NOT NULL,
  `id` varchar(56) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Club Name` varchar(45) NOT NULL,
  `Position` varchar(56) NOT NULL,
  `No of students` int(3) NOT NULL,
  `Date of Joining` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `club_fac`
--

INSERT INTO `club_fac` (`S.No`, `id`, `Name`, `Club Name`, `Position`, `No of students`, `Date of Joining`) VALUES
(1, '18731', 'Jayakumar ', 'DSC-VIT', 'Technical Coordinator', 90, '2017-08-15'),
(2, '18031', 'Navaneethan', 'LEO club', 'Students Coordinator', 85, '2018-05-20'),
(3, '17031', 'Divya Udayan', 'Apple Developers Group', 'Events Head', 95, '2019-09-12'),
(4, '17042', 'Raja', 'Google Developers Group', 'Students Coordinator', 45, '2019-09-16'),
(5, '17048', 'Navamani', 'ASME', 'Students Coordinator', 67, '2020-09-18'),
(6, '16631', 'Ravi Shastri', 'Code Chef', 'Technical Coordinator', 61, '2016-04-14'),
(7, '15731', 'Jose', 'Innovators Quest', 'Events Head', 50, '2013-09-10'),
(8, '16101', 'Saravana Kumar', 'Anokha', 'Students Coordinator', 78, '2010-04-16'),
(9, '17001', 'Reenu', 'VIt Fifth Pillar', 'Outreach Head', 78, '2016-09-13'),
(10, '19731', 'Harshita Patel', 'Dance Club VIT', 'Events Head', 43, '2019-08-14');

-- --------------------------------------------------------

--
-- Table structure for table `coursedetails`
--

CREATE TABLE `coursedetails` (
  `SNo` int(3) NOT NULL,
  `Name` varchar(34) NOT NULL,
  `Semester` text NOT NULL,
  `CourseCode` varchar(23) NOT NULL,
  `Course` text NOT NULL,
  `CourseType` varchar(78) NOT NULL,
  `Category` text NOT NULL,
  `Credits` int(11) NOT NULL,
  `Grade` varchar(2) NOT NULL,
  `Faculty` varchar(56) NOT NULL,
  `RegistrationNumber` varchar(31) NOT NULL,
  `id` varchar(56) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coursedetails`
--

INSERT INTO `coursedetails` (`SNo`, `Name`, `Semester`, `CourseCode`, `Course`, `CourseType`, `Category`, `Credits`, `Grade`, `Faculty`, `RegistrationNumber`, `id`) VALUES
(1, 'Harida', 'Fall Semester 2020', 'ITE1008', 'Open Source Programming', 'Embedded Theory+Project', 'Programme Elective', 4, 'A', 'Jayakumar S-SITE', '18BIT0411', '18731'),
(2, 'Harida', 'Winter Semester 2019', 'ITE4001', 'Network And Information Security', 'Embedded Theory+Project', 'Programme Elective', 4, 'A', 'Navaneethan-SITE', '18BIT0411', '18031'),
(3, 'Harida', 'Winter Semester 2019', 'ITE2001', 'Web Technology', 'Embedded Theory+Project+Lab', 'Programme Elective', 3, 'D', 'Divya Udayan-SITE', '18BIT0411', '17031'),
(4, 'Harida', 'Fall Semester 2018', 'EEE1001', 'Basics of Electronics', 'Embedded Theory+Lab', 'Programme Core', 3, 'C', 'Raja-SENSE', '18BIT0411', '17042'),
(5, 'Harida', 'Fall Semester 2019', 'CSE4003', 'Cyber Security', 'Embedded Theory+Project', 'University Elective', 4, 'S', 'Navamani-SCOPE', '18BIT0411', '17048'),
(6, 'Shruthi', 'Fall Semester 2019', 'CSE1007', 'Java Programming', 'Embedded Theory+Lab', 'Program Elective', 4, 'A', 'RaviShastri-SCOPE', '18BIT0359', '16631'),
(7, 'Shruthi', 'Fall Semester 2018', 'CHY1701', 'Engineering Chemistry', 'Embedded Theory+Lab', 'University Core', 4, 'S', 'Jose-SAS', '18BIT0359', '15731'),
(8, 'Shruthi', 'Fall Semester 2020', 'CSE3013', 'Artificial Intelligence', 'Embedded Theory+Project', 'Programme  Elective', 4, 'B', 'Harshita Patel-SITE', '18BIT0359', '19731'),
(9, 'Shruthi', 'Winter Semester 2021', 'BCI2001', 'Data Privacy', 'Embedded Theory+Project', 'University Elective', 4, 'A', 'Reenu-SBST', '18BIT0359', '17001'),
(10, 'Shruthi', 'Winter Semester 2020', 'ITE1008', 'Open Source Programming', 'Embedded Theory+Project', 'Programme Elective', 4, 'A', 'Jayakumar S-SITE', '18BIT0359', '18731'),
(11, 'Siddharth', 'Fall Semester 2018', 'EEE1001', 'Basics of Electronics', 'Embedded Theory+Lab', 'Programme Core', 3, 'B', 'Raja-SENSE', '18BIT0379', '17042'),
(12, 'Siddharth', 'Fall Semester 2020', 'BCI2001', 'Data Privacy', 'Embedded Theory+Project', 'University elective', 0, 'A', 'Reenu-SBST', '18BIT0379', '17001'),
(13, 'Siddharth', 'Winter Semester 2021', 'CSE4003', 'Cyber Security', 'Embedded Theory+Project', 'University Elective', 4, 'A', 'Navamani-SCOPE', '18BIT0379', '17048'),
(14, 'Siddharth', 'Fall Semester 2020', 'ITE2001', 'Web Technology', 'Embedded Theory+Project+Lab', 'Programme Elective', 3, 'D', 'Divya Udayan-SITE', '18BIT0379', '17031'),
(15, 'Siddharth', 'Fall Semester 2019', 'ITE1008', 'Open Source Programming', 'Embedded Theory+Project', 'Programme Elective', 4, 'A', 'Jayakumar S-SITE', '18BIT0379', '18731'),
(16, 'Shruti', 'Fall Semester 2020', 'ITE1008', 'Open Source Programming', 'Embedded Theory+Project', 'Programme Elective', 4, 'C', 'Jayakumar S-SITE', '18BIT0405', '18731'),
(17, 'Shruti', 'Fall Semester 2018', 'ITE1003', 'Database Management Systems', 'Embedded Theory+Lab+Project', 'Programme Core', 4, 'A', 'Saravana Kumar-SITE', '18BIT0405', '16101'),
(18, 'Shruti', 'Winter Semester 2020', 'ITE4001', 'Network and Information Security', 'Embedded Theory+Project', 'Programme Elective', 4, 'C', 'Navaneethan-SITE', '18BIT0405', '18031'),
(19, 'Shruti', 'Winter Semester 2021', 'BCI2001', 'Data Privacy', 'Embedded Theory+Project', 'University Elective', 4, 'A', 'Reenu-SBST', '18BIT0405', '17001'),
(20, 'Shruti', 'Winter Semester 2018', 'CHY1701', 'Engineering Chemistry', 'Embedded theory+Lab', 'University Core', 4, 'A', 'Jose-SAS', '18BIT0405', '15731'),
(21, 'Ashok Raj', 'Fall Semester 2019', 'BCI2001', 'Data Privacy', 'Embedded Theory+Project', 'University Elective', 4, 'C', 'Reenu-SBST', '17BME0912', '17001'),
(22, 'Ashok Raj', 'Winter Semester 2017', 'CSE1007', 'Java Programming', 'Embedded Theory+Lab', 'Program Elective', 4, 'N', 'RaviShastri-SCOPE', '17BME0912', '16631'),
(23, 'Ashok Raj', 'Fall Semester 2021', 'ITE1008', 'Open Source Programming', 'Embedded Thoery+Project', 'Programme Elective', 4, 'S', 'Jayakumar S-SITE', '17BME0912', '18731'),
(24, 'Ashok Raj', 'Fall Semester 2020', 'ITE4001', 'Web Technology', 'Embedded Theory+Lab+Project', 'Program Elective', 3, 'A', 'Divya Udayan-SITE', '17BME0912', '17031'),
(25, 'Ashok Raj', 'Winter Semester 2017', 'CHY1701', 'Engineering Chemistry', 'Embedded theory+Lab', 'University Core', 4, 'C', 'Jose-SAS', '17BME0912', '15731'),
(26, 'Rahul Raj', 'Winter Semester 2021', 'ITE4001', 'Web Technology', 'Embedded Theory+Lab+Project', 'Program Elective', 3, 'A', 'Divya Udayan-SITE', '19BEE0456', '17031'),
(27, 'Rahul Raj', 'Fall Semester 2019', 'ITE1008', 'Open Source Programming', 'Embedded Thoery+Project', 'Programme Elective', 4, 'F', 'Jayakumar S-SITE', '19BEE0456', '18731'),
(28, 'Rahul Raj', 'Winter Semester 2020', 'BCI2001', 'Data Privacy', 'Embedded Theory+Project', 'University Elective', 4, 'C', 'Reenu-SBST', '19BEE0456', '17001'),
(29, 'Rahul Raj', 'Fall Semester 2019', 'CSE4003', 'Cyber Security', 'Embedded Theory+Project', 'University Elective', 4, 'S', 'Navamani-SCOPE', '19BEE0456', '17048'),
(30, 'Rahul Raj', 'Winter Semester 2019', 'ITE4001', 'Network and Information Security', 'Embedded Theory+Project', 'Programme Elective', 4, 'A', 'Navaneethan-SITE', '19BEE0456', '18031'),
(31, 'Samyukta', 'Winter Semester 2018', 'EEE1001', 'Basics of Electronics', 'Embedded Theory+Lab', 'Programme Core', 3, 'B', 'Raja-SENSE', '17BCE01111', '17042'),
(32, 'Samyukta', 'Fall Semester 2020', 'BCI2001', 'Data Privacy', 'Embedded Theory+Project', 'University elective', 0, 'A', 'Reenu-SBST', '17BCE01111', '17001'),
(33, 'Samyukta', 'Fall Semester 2018', 'ITE1008', 'Open Source Programming', 'Embedded Thoery+Project', 'Programme Elective', 4, 'S', 'Jayakumar S-SITE', '17BCE01111', '18731'),
(34, 'Samyukta', 'Winter Semester 2019', 'CHY1701', 'Engineering Chemistry', 'Embedded Theory+Lab', 'University Core', 4, 'A', 'Jose-SAS', '17BCE01111', '15731'),
(35, 'Samyukta', 'Fall Semester 2021', 'CSE3013', 'Artificial Intelligence', 'Embedded Theory+Project', 'Programme  Elective', 4, 'S', 'Harshita Patel-SITE', '17BCE01111', '19731'),
(36, 'Vinod Kumar', 'Winter Semester 2021', 'ITE4001', 'Network And Information Security', 'Embedded Theory+Project', 'Programme Elective', 4, 'B', 'Navaneethan-SITE', '18BIS0731', '18031'),
(37, 'Vinod Kumar', 'Fall Semester 2021', 'ITE2001', 'Web Technology', 'Embedded Theory+Project+Lab', 'Programme Elective', 3, 'C', 'Divya Udayan-SITE', '18BIS0731', '17031'),
(38, 'Vinod Kumar', 'Winter Semester 2018', 'EEE1001', 'Basics of Electronics', 'Embedded Theory+Lab', 'Programme Core', 3, 'S', 'Raja-SENSE', '18BIS0731', '17042'),
(39, 'Vinod Kumar', 'Winter Semester 2019', 'CHY1701', 'Engineering Chemistry', 'Embedded Theory+Lab', 'University Core', 4, 'C', 'Jose-SAS', '18BIS0731', '15731'),
(40, 'Vinod Kumar', 'Fall Semester 2019', 'CSE3013', 'Artificial Intelligence', 'Embedded Theory+Project', 'Programme  Elective', 4, 'B', 'Harshita Patel-SITE', '18BIS0731', '19731');

-- --------------------------------------------------------

--
-- Table structure for table `edu_details`
--

CREATE TABLE `edu_details` (
  `id` varchar(56) NOT NULL,
  `Name` varchar(56) NOT NULL,
  `Educational Qualifications` varchar(56) NOT NULL,
  `Branch/Group studied` varchar(78) NOT NULL,
  `School Name` varchar(89) NOT NULL,
  `College Name` varchar(78) NOT NULL,
  `Medium of study` varchar(78) NOT NULL,
  `Board/University` varchar(67) NOT NULL,
  `Class Obtained` varchar(45) NOT NULL,
  `Year of Graduation` varchar(78) NOT NULL,
  `Month of Graduation` varchar(34) NOT NULL,
  `Work Experience` varchar(45) NOT NULL,
  `Reference` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `edu_details`
--

INSERT INTO `edu_details` (`id`, `Name`, `Educational Qualifications`, `Branch/Group studied`, `School Name`, `College Name`, `Medium of study`, `Board/University`, `Class Obtained`, `Year of Graduation`, `Month of Graduation`, `Work Experience`, `Reference`) VALUES
('18731', 'Jayakumar', 'B.E Ph.D', 'Computer Science', 'Sri Chaitanya Techno School', 'Anna University,Chennai', 'English', 'CBSE', 'First', '2010', 'May', '10 Years ', 'Prof.Uday,8987654321,uday12@gmail.com'),
('18031', 'Navaneethan', 'B.Tech MS', 'Mechanical Engineering', 'Kalam Higher Secondary School', 'Vellore Institute of Technology,Vellore', 'Tamil', 'State Board of TamilNadu', 'Second', '2008', 'August', '6 year', 'Prof.Nagaraj,6789765432,nagaraj89@gmail.com'),
('17042', 'Raja', 'B.Tech', 'Information Technology', 'Chinamya Vidhyalaya,Chennai', 'NIT-Trichy', 'English', 'CBSE', 'First', '2003', 'March', '12 years', 'Dr.Seetharaman,6000989898,seetha@gmail.com'),
('16101', 'Saravana', 'B.Tech Ph.D', 'Computer Science with Specialization in Information Security', 'DPS Delhi', 'IIT-Bombay', 'English', 'ICSE', 'First', '2000', 'March', '20 Years', 'Dr.Jose Ram,8977678908,jose.ram@gmail.com'),
('15731', 'Jose', 'B.Tech', 'Information Security', 'Sunrise International,Abu Dhabi', 'BITS-Pilani', 'English', 'CBSE', 'First', '2004', 'February', '6 years', 'Dr.Siddharth Kumar,9900909090,siddharth.Kumar@gmail.com'),
('17001', 'Reenu', 'B.Tech MS', 'Information Security', 'Gangadhar CBSE School,Orissa', 'IIT-Delhi', 'English', 'CBSE', 'First', '2010', 'March', '3 years', 'Prof.Vijaya,9777878654,vijaya@gmail.com'),
('16631', 'Ravi', 'B.Tech', 'Computer Science Engineering', 'DPS Bhopal', 'Sri Krishna,Coimbatore', 'English', 'ICSE', 'First', '2006', 'March', '10Years', 'Prof.Vikram Singh,7765434567,vikram.singh@gmail.com'),
('17048', 'Navamani', 'B.Tech Ph.D', 'Computer Science Engineering', 'DPS Delhi', 'IIT-Bombay', 'English', 'ICSE', 'First', '2000', 'March', '20 Years', 'Prof.Ramya,8988765431,ramya@gmail.com'),
('17031', 'Divya', 'B.Tech MS', 'Computer Science with Specialization in Information Security', 'Indian Public School', 'IIT-Bombay', 'English', 'ICSE', 'First', '2000', 'March', '20 Years', 'Prof.Sunitha,8888765432,sunitha@gmail.com'),
('19731', 'Harshita', 'B.Tech', 'Electrical Engineering', 'CS Academy', 'Anna University,Chennai', 'English', 'CBSE', 'Second', '2008', 'March', '9 Years', 'Dr.BalaKrishnan,9099878787,bala.krishnana@gmail.com'),
('18BIT0411', 'Harida ', 'B.Tech', 'Information Technology', 'Chaitanya Techno School', 'Vellore Institute of Technology, Vellore', 'English', 'CBSE', 'First', '2022', 'June', '3 Years', 'Prof.Navaneethan,9000987654,navaneethan@gmail.com'),
('18BIT0359', 'Shruthi', 'B.Tech', 'Information Technology', 'Chinmaya Vidhyalaya', 'Vellore Institute of Technology, Vellore', 'English', 'CBSE', 'First', '2022', 'June', '2 Years', 'Prof.Jeeva,8890987654,jeeva@gmail.com'),
('18BIT0379', 'Siddharth', 'B.Tech', 'Information Technology', 'JP Public School', 'Vellore Institute of Technology, Vellore', 'English', 'CBSE', 'First', '2022', 'June', '1 Year', 'Prof.Deepa,9908781212,deepa@gmail.com'),
('18BIT0405', 'Shruti', 'B.Tech', 'Information Technology', 'CS Academy', 'Vellore Institute of Technology, Vellore', 'English', 'CBSE', 'First', '2022', 'June', '3 years', 'Prof.Kalaivani,8900987654,kalaivani@gmail.com'),
('17BME0912', 'Ashok Raj', 'B.Tech', 'Mechanical Engineering', 'R.K.V Higher Secondary School', 'Vellore Institute of Technology, Vellore', 'Tamil', 'StateBoard', 'First', '2021', 'June', '5 year', 'Prof.Navamani,7888906543,navamani@gmail.com'),
('19BEE0456', 'Rahul  Raj', 'B.Tech', 'Electrical and Electronics Engineering', 'Akshara Central School', 'Vellore Institute of Technology, Vellore', 'English', 'ICSE', 'First', '2023', 'June', 'None', 'Prof.Saravana Kumar,9007654123,saravana.kumar@gmail.com'),
('17BCE01111', 'Samyukta', 'B.Tech', 'Computer Science and Engineering', 'Delhi Public School,Bhopal', 'Vellore Institute of Technology, Vellore', 'English', 'ICSE', 'First', '2021', 'June', '2 year', 'Prof.Reenu, 6777689098,reenu@gmail.com'),
('18BIS0731', 'Vinod Kumar', 'B.Tech', 'Specialization in Information Security', 'Visweswara Vidhyaashram', 'Vellore Institute of Technology, Vellore', 'English', 'CBSE', 'Second', '2022', 'June', 'None', 'Prof.Jayakumar, 8899087654,jayakumar@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `permanent_address`
--

CREATE TABLE `permanent_address` (
  `Name` varchar(56) NOT NULL,
  `id` varchar(56) NOT NULL,
  `Street Name` varchar(38) NOT NULL,
  `Area Name` varchar(56) NOT NULL,
  `City` text NOT NULL,
  `State` text NOT NULL,
  `Country` text NOT NULL,
  `Pincode` bigint(6) NOT NULL,
  `Phone` bigint(10) NOT NULL,
  `Email` varchar(78) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permanent_address`
--

INSERT INTO `permanent_address` (`Name`, `id`, `Street Name`, `Area Name`, `City`, `State`, `Country`, `Pincode`, `Phone`, `Email`) VALUES
('Jayakumar S', '18731', 'Deena Street', 'Rajiv Nagar', 'Erode', 'Tamil Nadu', 'India', 637211, 8890876543, 'jayakumar@vit.ac.in'),
('Navaneethan ', '18031', 'Daksha street', 'Indu', 'Kochin', 'Kerala', 'India', 654321, 9876543212, 'navaneethan@vit.ac.in'),
('Raja', '17042', 'Lalbhahath street', 'Gandhi', 'Cuttack', 'Orissa', 'India', 654321, 9090876543, 'raja@vit.ac.in'),
('Saravana Kumar', '16101', 'Pangal street', 'EVR', 'Tanjore', 'Tamil Nadu', 'India', 675432, 9764136805, 'saravana.kumar@vit.ac.in'),
('Jose', '15731', 'Kumaresapuram street', 'Kuhu', 'Hyderabad', 'Andhra Pradesh', 'India', 689054, 8908654321, 'jose@vit.ac.in'),
('Reenu', '17001', 'Anantha Bhavan', 'Manipur Nagar', 'E-City', 'Karnataka', 'India', 611908, 8899054876, 'reenu@vit.ac.in'),
('Ravi Shastri', '16631', 'Prashantha Street', 'Joseph', 'Trivandrum', 'Kerala', 'India', 674321, 9090432123, 'ravi.shastri@vit.ac.in'),
('Harshita Patel', '19731', 'Tanmaya street', 'Kshtriya Nagar', 'Bihar', 'Assam', 'India', 643201, 8877665544, 'harshita.patel@vit.ac.in'),
('Divya Udayan', '17031', 'Liliput street', 'ER Rode', 'E-City', 'Karnataka', 'India', 698789, 9000876890, 'divya.udayan@vit.ac.in'),
('Navamani', '17048', 'Janaki street', 'Ramlala Nagar', 'Chennai', 'Tamil Nadu', 'India', 609125, 8007965547, 'navamani@vit.ac.in'),
('Harida', '18BIT0411', 'Rajat Street', 'Kumaresapuram', 'Salem', 'Tamil Nadu', 'India', 647201, 9088765431, 'harida@gmail.com'),
('Shruthi', '18BIT0359', 'Seven cross Street', 'David  Nagar', 'Mumbai', 'Maharashtra', 'India', 647106, 7889065431, 'shruthi@gmail.com'),
('Siddharth', '18BIT379', 'PinkDen Street', 'Lotus Nagar', 'Jalandhar', 'Punjab', 'India', 637093, 9066543123, 'siddharth@gmail.com'),
('Shruti', '18BIT0405', '1414 Argonne Street', 'Philip Lane', 'New Castle', 'Florida', 'USA', 178905, 98787654, 'shruti@gmail.com'),
('Ashok Raj', '17BME0912', 'lalbhag street', 'M.G.R Nagar', 'Erode', 'Tamil Nadu', 'India', 650121, 7339805412, 'ashokraj@gmail.com'),
('Rahul Raj', '19BEE0456', 'R.K.Puram', 'Chaitanya P College Road', 'Electronic City', 'Karnataka', 'India', 609677, 9112667834, 'rahulraj@gmail.com'),
('Samyukta', '17BCE01111', '12-firstCross street', 'Fruits Market Area', 'Hyderabad', 'Andra Pradesh', 'India', 607111, 8220678941, 'samyukta@gmail.com'),
('Vinod Kumar', '18BIS0731', 'Vishaka street', 'Ramapuram Area', 'Hyderabad', 'Andra Pradesh', 'India', 601234, 6789065431, 'vinodkumar@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `personal_information`
--

CREATE TABLE `personal_information` (
  `id` varchar(56) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `DOB` date NOT NULL,
  `Gender` text NOT NULL,
  `Native Language` text NOT NULL,
  `Designation` text NOT NULL,
  `Blood Group` varchar(10) NOT NULL,
  `Physically Challenged` text NOT NULL,
  `Community` varchar(30) NOT NULL,
  `Religion` text NOT NULL,
  `Caste` varchar(40) NOT NULL,
  `Native State` text NOT NULL,
  `Nationality` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `personal_information`
--

INSERT INTO `personal_information` (`id`, `Name`, `DOB`, `Gender`, `Native Language`, `Designation`, `Blood Group`, `Physically Challenged`, `Community`, `Religion`, `Caste`, `Native State`, `Nationality`) VALUES
('18731', 'Jayakumar S-SITE', '1985-08-14', 'Male', 'Tamil', 'Senior Professor', 'A1+ve', 'No', 'General', 'Hindu', 'General', 'Tamil Nadu', 'Indian'),
('18031', 'Navaneethan-SITE', '1980-09-24', 'Male', 'Telugu', 'Senior Professor', 'B+ve', 'No', 'General', 'Hindu', 'General', 'Andra Pradesh', 'Indian'),
('17031', 'Divya Udayan-SITE', '1986-03-22', 'Female', 'Odia', 'Associate Professor', 'O+ve', 'No', 'General', 'Hindu', 'General', 'Orissa', 'Indian'),
('17042', 'Raja-SENSE', '1987-07-09', 'Male', 'Tamil', 'Associate Professor', 'B+ve', 'No', 'General', 'Hindu', 'Brahmins', 'Tamil Nadu', 'Indian'),
('16101', 'Saravana Kumar-SITE', '1980-05-12', 'Male', 'Kannada', 'Associate Professor', 'A+ve', 'No', 'General', 'Hindu', 'General', 'Karnataka', 'Indian'),
('15731', 'Jose-SAS', '1989-08-13', 'Female', 'Telugu', 'Senior Professor', 'O+ve', 'No', 'OBC', 'Hindu', 'OBC', 'Andhra Pradesh', 'Indian'),
('17001', 'Reenu-SBST', '1986-04-02', 'Female', 'Malayalam', 'Associate Professor', 'B+ve', 'No', 'General', 'Muslim', 'General ', 'Kerala', 'Indian'),
('16631', 'Ravi Shastri-SCOPE', '1978-05-07', 'Male', 'Kannada', 'Senior Professor', 'A+ve', 'No', 'General', 'Christian', 'General', 'Karnataka', 'Indian'),
('19731', 'Harshita Patel-SITE', '1982-05-01', 'Female', 'Hindi', 'Senior Professor', 'B+ve', 'No', 'General', 'Hindu', 'OBC', 'Maharashtra', 'Indian'),
('17048', 'Navamani-SCOPE', '1980-05-07', 'Female', 'Hindi', 'Associate Professor', 'A+ve', 'No', 'General', 'Hindu', 'General', 'Bihar', 'Indian'),
('18BIT411', 'Harida ', '2000-09-18', 'Female', 'Tamil', 'SDE ', 'A+ve', 'No', 'General', 'Hindu', 'General', 'Tamil Nadu', 'Indian'),
('18BIT0359', 'Shruthi', '2000-01-11', 'Female', 'Hindi', 'Test Analyst', 'O+ve', 'No', 'General', 'Hindu', 'General', 'Maharshtra', 'Indian'),
('18BIT379', 'Siddharth', '2000-10-27', 'Male', 'Hindi', 'Full stack Developer', 'B+ve', 'No', 'OBC', 'Hindu', 'OBC', 'Punjab', 'Indian'),
('18BIT0405', 'Shruti', '2000-12-12', 'Female', 'Malayalam', 'Product Engineer', 'A+ve', 'No', 'General', 'Hindu', 'General', 'Kerala', 'Indian'),
('17BME0912', 'Ashok Raj', '1998-06-21', 'Male', 'Tamil', 'Test Analyst', 'A+1ve', 'No', 'General', 'Hindu', 'General', 'Tamil Nadu', 'Indian'),
('19BEE0456', 'Rahul Raj', '2001-11-21', 'Male', 'Kannada', 'Front-End-Developer', 'O+ve', 'No', 'General', 'Hindu', 'General', 'Karnataka', 'Indian'),
('17BCE01111', 'Samyukta', '1999-03-09', 'Female', 'Hindi', 'Test Analyst', 'B+ve', 'No', 'General', 'Hindu', 'General', 'Assam', 'Indian'),
('18BIS0731', 'Vinod Kumar', '2000-09-27', 'Male', 'Telugu', 'SDE', 'O+ve', 'No', 'General', 'Hindu', 'General', 'Andra Pradesh', 'Indian');

-- --------------------------------------------------------

--
-- Table structure for table `proctee`
--

CREATE TABLE `proctee` (
  `id` varchar(56) NOT NULL,
  `SNo` int(4) NOT NULL,
  `Name` varchar(56) NOT NULL,
  `RegistrationNumber` varchar(34) NOT NULL,
  `YOJ` year(4) NOT NULL,
  `Email` varchar(56) NOT NULL,
  `Phone` bigint(10) NOT NULL,
  `School` varchar(56) NOT NULL,
  `Proctor` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `proctee`
--

INSERT INTO `proctee` (`id`, `SNo`, `Name`, `RegistrationNumber`, `YOJ`, `Email`, `Phone`, `School`, `Proctor`) VALUES
('18731', 1, 'Harida', '18BIT0411', 2019, 'harida@gmail.com', 7339654878, 'School of Information Technology and Engineering', 'Jayakumar S-SITE'),
('17031', 2, 'Shruthi', '18BIT0359', 2017, 'shruthi@gmail.com', 9876543212, 'School of Information Technology and Engineering', 'Divya Udayan-SITE'),
('18031', 3, 'Siddharth', '18BIT0379', 2018, 'siddharth@gmail.com', 9090876543, 'School of Information Technology and Engineering', 'Navaneethan-SITE'),
('16101', 4, 'Shruti', '18BIT0405', 2020, 'shruti@gmail.com', 9876543789, 'School of Information Technology and Engineering', 'Saravana Kumar-SITE'),
('16631', 6, 'Rahul Raj', '19BEE0456', 2020, 'rahul@gmail.com', 9987654543, 'School of Electrical and Electronics Engineering', 'Ravi Shastri-SCOPE'),
('17048', 7, 'Samyukta', '17BCE01111', 2019, 'Samyukta@gmail.com', 9088765432, 'School of Computer Science and Engineering', 'Navamani-SCOPE'),
('17001', 8, 'Vinod Kumar', '18BIS0731', 2018, 'vinodkumar@gmail.com', 9076543218, 'School of Computer Science and Engineering with speciali', 'Reenu-SBST'),
('15731', 5, 'Ashok Raj', '17BME0912', 2018, 'ashok@gmail.com', 9088769301, 'School of Mechanical Engineering', 'Jose-SAS');

-- --------------------------------------------------------

--
-- Table structure for table `project_details`
--

CREATE TABLE `project_details` (
  `SNo` int(3) NOT NULL,
  `id` varchar(56) NOT NULL,
  `Name` varchar(56) NOT NULL,
  `RegistrationNumber` varchar(32) NOT NULL,
  `Semester` varchar(45) NOT NULL,
  `CourseType` varchar(34) NOT NULL,
  `CourseCode` varchar(12) NOT NULL,
  `Course` text NOT NULL,
  `ProjectTitle` varchar(31) NOT NULL,
  `Guide` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project_details`
--

INSERT INTO `project_details` (`SNo`, `id`, `Name`, `RegistrationNumber`, `Semester`, `CourseType`, `CourseCode`, `Course`, `ProjectTitle`, `Guide`) VALUES
(1, '18731', 'Harida', '18BIT0411', 'Fall Semester 2020', 'Embedded Theory+Project', 'ITE1008', 'Open Source Programming', 'E-Commerce Website', 'Jayakumar'),
(2, '18031', 'Harida', '18BIT0411', 'Winter Semester 2019', 'Embedded Theory+Project', 'ITE4001', 'Network And Information Security', 'AES encryption Control', 'Navaneethan'),
(3, '17031', 'Harida', '18BIT0411', 'Winter Semester 2018', 'Embedded Theory+Project+Lab', 'ITE2001', 'Web Technology', 'Eco system Website', 'Divya'),
(4, '17048', 'Harida', '18BIT0411', 'Fall Semester 2019', 'Embedded Theory+Project', 'CSE4003', 'Cyber Security', 'Image Enrcyption and protection', 'Navamani'),
(5, '19731', 'Shruthi', '18BIT0359', 'Fall Semester 2020', 'Embedded Theory+Project', 'CSE3013', 'Artificial Intelligence', 'Healthcare Chatbot', 'Harshita'),
(6, '17001', 'Shruthi', '18BIT0359', 'Winter Semester 2021', 'Embedded Theory+Project', 'BCI2001', 'Data Privacy', 'Web security key Enrcyption', 'Reenu'),
(7, '18731', 'Shruthi', '18BIT0359', 'Winter Semester 2020', 'Embedded Theory+Project', 'ITE1008', 'Open Source Programming', 'Vit Alumni Webiste', 'Jayakumar'),
(8, '17001', 'Siddharth ', '18BIT0379', 'Fall Semester 2020', 'Embedded Theory+Project', 'BCI2001', 'Data Privacy', 'Online brokarage system Managem', 'Reenu'),
(9, '17048', 'Siddharth ', '18BIT0379', 'Winter Semester 2021', 'Embedded Theory+Project', 'CSE4003', 'Cyber Security', 'Prevention from cyber attacks', 'Navamani'),
(10, '17031', 'Siddharth ', '18BIT0379', 'Fall Semester 2020', 'Embedded Theory+Project+Lab', 'ITE2001', 'Web Technology', 'Two-way autenticated website', 'Divya'),
(11, '18731', 'Siddharth ', '18BIT0379', 'Fall Semester 2019', 'Embedded Theory+Project', 'ITE1008', 'Open Source Programming', 'E-commerce System', 'Jayakumar'),
(12, '15731', 'Shruti', '18BIT0405', 'Fall Semester 2020', 'Embedded Theory+Project', 'ITE1008', 'Open Source Programming', 'Market production Management', 'Jose'),
(13, '16101', 'Shruti', '18BIT0405', 'Fall Semester 2018', 'Embedded Theory+Lab+Project', 'ITE1003', 'Database Management Systems', 'cloud security Pretection ', 'Saravana'),
(14, '18031', 'Shruti', '18BIT0405', 'Winter Semester 2020', 'Embedded Theory+Project', 'ITE4001', 'Network and Information Security', 'DES Applicatory systems', 'Navaneethan'),
(15, '17001', 'Shruti', '18BIT0405', 'WinterSemester 2021', 'Embedded Theory+Project', 'BCI2001', 'Data Privacy', 'Bank password Enrcyption', 'Reenu'),
(16, '17001', 'Ashok Raj', '17BME0912', 'Fall Semester 2019', 'Embedded Theory+Project', 'BCI2001', 'Data Privacy', 'Webcam Security Checker', 'Reenu'),
(17, '18731', 'Ashok Raj', '17BME0912', 'Fall Semester 2021', 'Embedded Thoery+Project', 'ITE1008', 'Open Source Programming', 'Hotel Management System', 'Jayakumar'),
(18, '17031', 'Ashok Raj', '17BME0912', 'Fall Semester 2020', 'Embedded Theory+Lab+Project', 'ITE4001', 'Web Technology', 'Finance Auditing Website', 'Divya'),
(19, '17031', 'Rahul Raj', '19BEE0456', 'Winter Semester 2021', 'Embedded Theory+Lab+Project', 'ITE4001', 'Web Technology', 'Online Charity Management Syste', 'Divya'),
(20, '18731', 'Rahul Raj', '19BEE0456', 'Fall Semester 2019', 'Embedded Thoery+Project', 'ITE1008', 'Open Source Programming', 'Web Based chat Application', 'Jayakumar'),
(21, '17001', 'Rahul Raj', '19BEE0456', 'Winter Semester 2020', 'Embedded Theory+Project', 'BCI2001', 'Data Privacy', 'Library Security Systems', 'Reenu'),
(22, '17048', 'Rahul Raj', '19BEE0456', 'Fall Semester 2018', 'Embedded Theory+Project', 'CSE4003', 'Cyber Security', 'Prevention from Adversarial att', 'Navamani'),
(23, '15731', 'Rahul Raj', '19BEE0456', 'Winter Semester 2019', 'Embedded Theory+Project', 'ITE4001', 'Network and Information Security', 'End-to-End Enrytption Chat App', 'Jose'),
(24, '17001', 'Samyukta', '17BCE01111', 'Fall Semester 2020', 'Embedded Theory+Project', 'BCI2001', 'Data Privacy', 'Image Permutation using DeepNet', 'Reenu'),
(25, '18731', 'Samyukta', '17BCE01111', 'Fall Semester 2018', 'Embedded Thoery+Project', 'ITE1008', 'Open Source Programming', 'Voice based Intelligent Virtual', 'Jayakumar'),
(26, '19731', 'Samyukta', '17BCE01111', 'Fall Semester 2021', 'Embedded Thoery+Project', 'CSE3013', 'Artificial Intelligence', 'Traffic management system using', 'Harshita'),
(27, '18031', 'Vinod Kumar', '18BIS0731', 'Winter Semester 2021', 'Embedded Thoery+Project', 'ITE4001', 'Network And Information Security', 'Demonstration of all Public key', 'Navaneethan'),
(28, '17031', 'Vinod Kumar', '18BIS0731', 'Fall Semester 2021', 'Embedded Theory+Project+Lab', 'ITE2001', 'Web Technology', 'Behavorial analysis using Gamif', 'Divya'),
(29, '19731', 'Vinod Kumar', '18BIS0731', 'Fall Semester 2019', 'Embedded Thoery+Project', 'CSE3013', 'Artificial Intelligence', 'Biometrics system using AI', 'Harshita');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `id` varchar(56) NOT NULL,
  `SNo` int(3) NOT NULL,
  `CourseCode` varchar(10) NOT NULL,
  `Course` text NOT NULL,
  `CourseType` varchar(50) NOT NULL,
  `Name` text NOT NULL,
  `Category` varchar(30) NOT NULL,
  `Credits` int(3) NOT NULL,
  `Grade` text NOT NULL,
  `Faculty` varchar(50) NOT NULL,
  `RegistrationNumber` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`id`, `SNo`, `CourseCode`, `Course`, `CourseType`, `Name`, `Category`, `Credits`, `Grade`, `Faculty`, `RegistrationNumber`) VALUES
('18731', 1, 'ITE1008', 'Open Source Programming', 'Embedded Theory+Project', 'Harida', 'Programme Elective', 4, 'A', 'Jayakumar', '18BIT0411'),
('18031', 2, 'ITE4001', 'Network And Information Security', 'Embedded Theory+Project', 'Harida', 'Programme Elective', 4, 'A', 'Navaneethan', '18BIT0411'),
('17031', 3, 'ITE2001', 'Web Technology', 'Embedded Theory+Project+Lab', 'Harida', 'Programme Elective', 3, 'D', 'Divya', '18BIT0411'),
('17042', 4, 'EEE1001', 'Basics of Electronics', 'Embedded Theory+Lab', 'Harida', 'Programme Core', 3, 'C', 'Raja', '18BIT0411'),
('17048', 5, 'CSE4003', 'Cyber Security', 'Embedded Theory+Project', 'Harida', 'University Elective', 4, 'S', 'Navamani', '18BIT0411'),
('16631', 6, 'CSE1007', 'Java Programming', 'Embedded Theory+Lab', 'Shruthi', 'Program Elective', 4, 'A', 'RaviShastri', '18BIT0359'),
('15731', 7, 'CHY1701', 'Engineering Chemistry', 'Embedded Theory+Lab', 'Shruthi', 'University Core', 4, 'S', 'Jose', '18BIT0359'),
('19731', 8, 'CSE3013', 'Artificial Intelligence', 'Embedded Theory+Project', 'Shruthi', 'Programme  Elective', 4, 'B', 'Harshita', '18BIT0359'),
('17001', 9, 'BCI2001', 'Data Privacy', 'Embedded Theory+Project', 'Shruthi', 'University Elective', 4, 'A', 'Reenu', '18BIT0359'),
('18731', 10, 'ITE1008', 'Open Source Programming', 'Embedded Theory+Project', 'Shruthi', 'Programme Elective', 4, 'A', 'Jayakumar', '18BIT0359'),
('17042', 11, 'EEE1001', 'Basics of Electronics', 'Embedded Theory+Lab', 'Siddharth ', 'Programme Core', 3, 'B', 'Raja', '18BIT0379'),
('17001', 12, 'BCI2001', 'Data Privacy', 'Embedded Theory+Project', 'Siddharth ', 'University elective', 0, 'A', 'Reenu', '18BIT0379'),
('17048', 13, 'CSE4003', 'Cyber Security', 'Embedded Theory+Project', 'Siddharth ', 'University Elective', 4, 'A', 'Navamani', '18BIT0379'),
('17031', 14, 'ITE2001', 'Web Technology', 'Embedded Theory+Project+Lab', 'Siddharth ', 'Programme Elective', 3, 'D', 'Divya', '18BIT0379'),
('18731', 15, 'ITE1008', 'Open Source Programming', 'Embedded Theory+Project', 'Siddharth ', 'Programme Elective', 4, 'A', 'Jayakumar', '18BIT0379'),
('18731', 16, 'ITE1008', 'Open Source Programming', 'Embedded Theory+Project', 'Shruti', 'Programme Elective', 4, 'C', 'Jayakumar', '18BIT0405'),
('16101', 17, 'ITE1003', 'Database Management Systems', 'Embedded Theory+Lab+Project', 'Shruti', 'Programme Core', 4, 'A', 'Saravana', '18BIT0405'),
('18031', 18, 'ITE4001', 'Network and Information Security', 'Embedded Theory+Project', 'Shruti', 'Programme Elective', 4, 'C', 'Navaneethan', '18BIT0405'),
('17001', 19, 'BCI2001', 'Data Privacy', 'Embedded Theory+Project', 'Shruti', 'University Elective', 4, 'A', 'Reenu', '18BIT0405'),
('15731', 20, 'CHY1701', 'Engineering Chemistry', 'Embedded theory+Lab', 'Shruti', 'University Core', 4, 'A', 'Jose', '18BIT0405'),
('17001', 21, 'BCI2001', 'Data Privacy', 'Embedded Theory+Project', 'Ashok Raj', 'University Elective', 4, 'C', 'Reenu', '17BME0912'),
('16631', 22, 'CSE1007', 'Java Programming', 'Embedded Theory+Lab', 'Ashok Raj', 'Program Elective', 4, 'N', 'RaviShastri', '17BME0912'),
('18731', 23, 'ITE1008', 'Open Source Programming', 'Embedded Thoery+Project', 'Ashok Raj', 'Programme Elective', 4, 'S', 'Jayakumar', '17BME0912'),
('17031', 24, 'ITE4001', 'Web Technology', 'Embedded Theory+Lab+Project', 'Ashok Raj', 'Program Elective', 3, 'A', 'Divya', '17BME0912'),
('15731', 25, 'CHY1701', 'Engineering Chemistry', 'Embedded theory+Lab', 'Ashok Raj', 'University Core', 4, 'C', 'Jose', '17BME0912'),
('17031', 26, 'ITE4001', 'Web Technology', 'Embedded Theory+Lab+Project', 'Rahul Raj', 'Program Elective', 3, 'A', 'Divya', '19BEE0456'),
('18731', 27, 'ITE1008', 'Open Source Programming', 'Embedded Thoery+Project', 'Rahul Raj', 'Programme Elective', 4, 'F', 'Jayakumar', '19BEE0456'),
('17001', 28, 'BCI2001', 'Data Privacy', 'Embedded Theory+Project', 'Rahul Raj', 'University Elective', 4, 'C', 'Reenu', '19BEE0456'),
('17048', 29, 'CSE4003', 'Cyber Security', 'Embedded Theory+Project', 'Rahul Raj', 'University Elective', 4, 'S', 'Navamani', '19BEE0456'),
('18031', 30, 'ITE4001', 'Network and Information Security', 'Embedded Theory+Project', 'Rahul Raj', 'Programme Elective', 4, 'A', 'Navaneethan', '19BEE0456'),
('17042', 31, 'EEE1001', 'Basics of Electronics', 'Embedded Theory+Lab', 'Samyukta', 'Programme Core', 3, 'B', 'Raja', '17BCE01111'),
('17001', 32, 'BCI2001', 'Data Privacy', 'Embedded Theory+Project', 'Samyukta', 'University elective', 0, 'A', 'Reenu', '17BCE01111'),
('18731', 33, 'ITE1008', 'Open Source Programming', 'Embedded Thoery+Project', 'Samyukta', 'Programme Elective', 4, 'S', 'Jayakumar', '17BCE01111'),
('15731', 34, 'CHY1701', 'Engineering Chemistry', 'Embedded Theory+Lab', 'Samyukta', 'University Core', 4, 'A', 'Jose', '17BCE01111'),
('19731', 35, 'CSE3013', 'Artificial Intelligence', 'Embedded Theory+Project', 'Samyukta', 'Programme  Elective', 4, 'S', 'Harshita', '17BCE01111'),
('18031', 36, 'ITE4001', 'Network And Information Security', 'Embedded Theory+Project', 'Vinod Kumar', 'Programme Elective', 4, 'B', 'Navaneethan', '18BIS0731'),
('17031', 37, 'ITE2001', 'Web Technology', 'Embedded Theory+Project+Lab', 'Vinod Kumar', 'Programme Elective', 3, 'C', 'Divya', '18BIS0731'),
('17042', 38, 'EEE1001', 'Basics of Electronics', 'Embedded Theory+Lab', 'Vinod Kumar', 'Programme Core', 3, 'S', 'Raja', '18BIS0731'),
('15731', 39, 'CHY1701', 'Engineering Chemistry', 'Embedded Theory+Lab', 'Vinod Kumar', 'University Core', 4, 'C', 'Jose', '18BIS0731'),
('19731', 40, 'CSE3013', 'Artificial Intelligence', 'Embedded Theory+Project', 'Vinod Kumar', 'Programme  Elective', 4, 'B', 'Harshita', '18BIS0731');

-- --------------------------------------------------------

--
-- Table structure for table `research`
--

CREATE TABLE `research` (
  `SNo` int(4) NOT NULL,
  `id` varchar(56) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `RegistrationNumber` varchar(14) NOT NULL,
  `ProjectTitle` text NOT NULL,
  `YearPublished` int(6) NOT NULL,
  `CoAuthors` text NOT NULL,
  `Guide` text NOT NULL,
  `Grade` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `research`
--

INSERT INTO `research` (`SNo`, `id`, `Name`, `RegistrationNumber`, `ProjectTitle`, `YearPublished`, `CoAuthors`, `Guide`, `Grade`) VALUES
(1, '19731', 'Harida', '18BIT0411', 'Methods of ML', 2019, 'Vidhi Singh', 'Harshita', 'A'),
(2, '17042', 'Shruthi', '18BIT0359', 'Mechanics of Motors', 2020, 'Thanesh Raj', 'Raja', 'B'),
(3, '18031', 'Siddharth ', '18BIT0379', 'Automatic Fall Detection', 2020, 'Pranjal Preeth, Sighavi Manish', 'Navaneethan', 'A'),
(4, '15731', 'Shruti', '18BIT0405', 'Wireless Charging Station', 2019, 'Aayush Bhatia', 'Jose', 'A'),
(5, '18731', 'Ashok Raj', '17BME0912', 'AI in Medicine', 2019, 'Aishwarya Rathore', 'Jayakumar', 'S'),
(6, '17048', 'Rahul Raj', '19BEE0456', 'Securing Data in Cloud', 2021, 'Zeyna D\'Souza', 'Navamani', 'A'),
(7, '17001', 'Samyukta', '17BCE01111', 'Various Methods of Building Webpages', 2013, 'Hemanth Chawla', 'Reenu', 'S'),
(8, '17031', 'Vinod Kumar', '18BIS0731', 'Pen-testing and Vulnerability Testing of Web Applications', 2016, 'Fathima Aala', 'Divya', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `school_info`
--

CREATE TABLE `school_info` (
  `id` varchar(56) NOT NULL,
  `School` text NOT NULL,
  `Registration Number` varchar(14) NOT NULL,
  `Name` varchar(34) NOT NULL,
  `Room` varchar(12) NOT NULL,
  `Student` varchar(34) NOT NULL,
  `Department` text NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Intercom` bigint(30) NOT NULL,
  `Phone` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `school_info`
--

INSERT INTO `school_info` (`id`, `School`, `Registration Number`, `Name`, `Room`, `Student`, `Department`, `Email`, `Intercom`, `Phone`) VALUES
('18731', 'SITE', '18BIT0411', 'Jayakumar S-SITE', 'SJT211A', 'Harida', 'Senior Professor in Information Technology', 'Jayakumar.s@vit.ac.i', 123456, 9877898987),
('18031', 'SITE', '18BIT0411', 'Navaneethan-SITE', 'TT-233', 'Shruthi', 'Assistant Professor in Information Security', 'navaneethan@vit.ac.i', 7778908, 7665909876),
('17031', 'SITE', '18BIT0411', 'Divya Udayan-SITE', 'PLB-341', 'Shruti', 'Assistant Professor in Information Technology', 'divya.udayan@vit.ac.', 567890, 9900998765),
('17042', 'SENSE', '18BIT0411', 'Raja-SENSE', 'MB-123', 'Siddharth', 'Assistant Professor in Electrical Department', 'raja@vit.ac.in', 677789, 8900987654),
('17048', 'SCOPE', '18BIT0411', 'Navamani-SCOPE', 'SJT-355', 'Vinod', 'Assistant Professor in Networking Department', 'navamani@vit.ac.in', 567890, 9907654321),
('16631', 'SCOPE', '18BIT0359', 'Ravi Shastri-SCOPE', 'TT-230', 'Samyukta', 'Assistant Professor in Computer Science Department', 'ravi.shastri@vit.ac.', 453217, 9088765432),
('15731', 'SENSE', '18BIT0359', 'Jose-SAS', 'SJT-678', 'Rahul', 'Assistant Professor in Electrical ', 'jose@vit.ac.in', 909875, 7665467890),
('19731', 'SITE', '18BIT0359', 'Harshita Patel-SITE', 'SJT-600', 'Ashok', 'Assistant Professor in Information Technology Department', 'harshita.patel@vit.a', 789087, 9009876543),
('17001', 'SBST', '18BIT0359', 'Reenu-SBST', 'SJT-234', 'Kavya', 'Assistant Professor in Biotechnology Department', 'reenu@vit.ac.in', 789032, 8900987654),
('16101', 'SITE', '18BIT0405', 'Saravana Kumar-SITE', 'TT-123', 'Vinod', 'Assistant Professor in Computer Science Department', 'saravana.kumar@gmail', 908765, 9908766789),
('18BIT0411', 'SITE', '18BIT0411', 'Harida', 'F-405', '', 'Information Technology', 'harida@gmail.com', 125678, 9099876543),
('18BIT0359', 'SITE', '18BIT0359', 'Shruthi', 'F-702', '', 'Information Technology', 'shruthi@gmail.com', 134567, 9088712345),
('18BIT0379', 'SITE', '18BIT0379', 'Siddharth', 'J-203', '', 'Information Technology', 'siddharth@gmail.com', 901234, 9055678945),
('18BIT0405', 'SITE', '18BIT0405', 'Shruti ', 'D-302', '', 'Information Technology', 'shruti@gmail.com', 126789, 8990876543),
('17BME0912', 'SMEC', '17BME0912', 'Ashok Raj', 'M-404', '', 'Mechanical Engineering', 'ashokraj@gmail.com', 127890, 8876547890),
('19BEE0456', 'SENSE', '19BEE0456', 'Rahul Raj', 'N-304', '', 'Electrical and Electronics Engineering', 'rahulraj@gmail.com', 126789, 7889076541),
('17BCE01111', 'SCOPE', '17BCE01111', 'Samyukta', 'C-709', '', 'Computer Science and Engineering', 'samyukta@gmail.com', 128956, 8977654312),
('18BIS0731', 'SCOPE', '18BIS0731', 'Vinod Kumar', 'N-304', '', 'Specialization in Information Security', 'vinodkumar@gmail.com', 129087, 7654565789);

-- --------------------------------------------------------

--
-- Table structure for table `social_details`
--

CREATE TABLE `social_details` (
  `id` varchar(56) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Github` varchar(56) NOT NULL,
  `LinkedIn` varchar(56) NOT NULL,
  `Twitter` varchar(56) NOT NULL,
  `Instagram` varchar(34) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `social_details`
--

INSERT INTO `social_details` (`id`, `Name`, `Github`, `LinkedIn`, `Twitter`, `Instagram`) VALUES
('18731', 'Jayakumar S-SITE', '---', 'www.linkedin.com', '---', '---'),
('18031', 'Navaneethan-SITE', '---', 'www.linkedIn.com', '---', '---'),
('17042', 'Raja-SENSE', 'www.github.com', '---', '---', '---'),
('16101', 'Saravana Kumar-SITE', '---', 'www.linkedin.com', '---', '---'),
('15731', 'Jose-SAS', 'www.github.com', 'www.linkedin.com', '---', '---'),
('17001', 'Reenu-SBST', '---', 'www.linkedin.com', '---', '---'),
('16631', 'Ravi Shastri-SCOPE', 'www.github.com', '---', '---', '---'),
('17048', 'Navamani-SCOPE', '---', 'www.linkedin.com', '---', '---'),
('17031', 'Divya Udayan-SITE', '---', 'www.linkedin.com', '---', '---'),
('19731', 'Harshita Patel-SITE', '---', 'www.linkedin.com', '---', '---');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `SNo` int(4) NOT NULL,
  `RegistrationNumber` varchar(34) NOT NULL,
  `CourseCode` varchar(34) NOT NULL,
  `Name` varchar(56) NOT NULL,
  `Marks` int(3) NOT NULL,
  `Grade` varchar(3) NOT NULL,
  `Slot` varchar(8) NOT NULL,
  `Faculty` varchar(43) NOT NULL,
  `test_date` date NOT NULL,
  `test_time` time NOT NULL,
  `id` varchar(56) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`SNo`, `RegistrationNumber`, `CourseCode`, `Name`, `Marks`, `Grade`, `Slot`, `Faculty`, `test_date`, `test_time`, `id`) VALUES
(2, '18BIT0411', 'ITE4001', 'Harida', 91, 'A', 'A1+TA1', 'Raja', '2020-10-30', '16:15:00', '17042'),
(3, '18BIT0411', 'ITE2001', 'Harida', 47, 'D', 'D1+TD1', 'Jayakumar', '2019-08-08', '13:23:10', '18731'),
(4, '18BIT0411', 'EEE1001', 'Harida', 61, 'C', 'G1+TG1', 'Reenu', '2018-10-16', '09:09:09', '17001'),
(5, '18BIT0411', 'CSE4003', 'Harida', 97, 'S', 'E2+TE2', 'Divya', '2019-12-26', '21:40:11', '17031'),
(7, '18BIT0359', 'CHY1701', 'Shruthi', 90, 'S', 'F1+TF1', 'Raja', '2020-10-04', '08:59:48', '17042'),
(8, '18BIT0359', 'CSE3013', 'Shruthi', 56, 'B', 'G1+TG1', 'Jayakumar', '2019-10-27', '11:45:02', '18731'),
(9, '18BIT0359', 'BCI2001', 'Shruthi', 90, 'A', 'C1+TC1', 'Reenu', '2018-04-18', '20:32:32', '17001'),
(10, '18BIT0359', 'ITE1008', 'Shruthi', 78, 'A', 'D1+TD1', 'Divya', '2019-06-01', '07:35:10', '17031'),
(11, '18BIT0379', 'EEE1001', 'Siddharth', 80, 'B', 'B2+TB2', 'Jose', '2020-10-15', '17:45:02', '15731'),
(12, '18BIT0379', 'BCI2001', 'Siddharth', 91, 'A', 'F1+TF1', 'Raja', '2019-05-29', '23:15:08', '17042'),
(13, '18BIT0379', 'CSE4003', 'Siddharth', 68, 'A', 'G1+TG1', 'Jayakumar', '2020-12-31', '12:35:18', '18731'),
(14, '18BIT0379', 'ITE2001', 'Siddharth', 76, 'D', 'C1+TC1', 'Reenu', '2020-12-31', '05:41:02', '17001'),
(15, '18BIT0379', 'ITE1008', 'Siddharth', 93, 'A', 'D2+TD2', 'Divya', '2020-11-01', '17:45:02', '17031'),
(16, '18BIT0405', 'ITE1008', 'Shruti', 78, 'C', 'B1+TB1', 'Jose', '2019-04-01', '10:26:12', '15731'),
(17, '18BIT0405', 'ITE1003', 'Shruti', 90, 'A', 'F1+TF1', 'Raja', '2020-05-19', '17:45:02', '17042'),
(18, '18BIT0405', 'ITE4001', 'Shruti', 87, 'C', 'G1+TG1', 'Jayakumar', '2019-10-23', '17:45:02', '18731'),
(19, '18BIT0405', 'BCI2001', 'Shruti', 65, 'A', 'C1+TC1', 'Reenu', '2019-10-11', '15:34:32', '17001'),
(20, '18BIT0405', 'CHY1701', 'Shruti', 97, 'A', 'D1+TD1', 'Divya', '2020-10-23', '17:45:02', '17031'),
(21, '17BME0912', 'BCI2001', 'Ashok Raj', 89, 'C', 'B1+TB1', 'Jose', '2019-06-11', '17:45:02', '15731'),
(22, '17BME0912', 'CSE1007', 'Ashok Raj', 90, 'N', 'F1+TF1', 'Raja', '2019-04-07', '19:25:01', '17042'),
(23, '17BME0912', 'ITE1008', 'Ashok Raj', 76, 'S', 'G1+TG1', 'Jayakumar', '2019-05-16', '19:12:14', '18731'),
(24, '17BME0912', 'ITE4001', 'Ashok Raj', 95, 'A', 'C1+TC1', 'Reenu', '2019-07-12', '24:27:04', '17001'),
(25, '17BME0912', 'CHY1701', 'Ashok Raj', 79, 'C', 'D1+TD1', 'Divya', '2019-09-15', '17:45:02', '17031'),
(26, '19BEE0456', 'ITE4001', 'Rahul Raj', 75, 'A', 'E1+TE1', 'Jose', '2019-10-22', '02:36:25', '15731'),
(27, '19BEE0456', 'ITE1008', 'Rahul Raj', 67, 'F', 'F1+F1', 'Raja', '2020-01-12', '21:25:01', '17042'),
(28, '19BEE0456', 'BCI2001', 'Rahul Raj', 89, 'C', 'G2+TG2', 'Jayakumar', '2020-06-11', '16:15:02', '18731'),
(29, '19BEE0456', 'CSE4003', 'Rahul Raj', 90, 'S', 'C1+TC1', 'Reenu', '2021-07-21', '13:45:27', '17001'),
(30, '19BEE0456', 'ITE4001', 'Rahul Raj', 60, 'A', 'A2+TA2', 'Divya', '2019-03-05', '17:45:35', '17031'),
(31, '17BCE01111', 'EEE1001', 'Samyukta', 67, 'B', 'B1+TB1', 'Jose', '2020-10-04', '10:05:12', '15731'),
(32, '17BCE01111', 'BCI2001', 'Samyukta', 90, 'A', 'F1+TF1', 'Raja', '2020-12-23', '07:45:02', '17042'),
(33, '17BCE01111', 'ITE1008', 'Samyukta', 85, 'S', 'G1+TG1', 'Jayakumar', '2020-09-14', '17:45:02', '18731'),
(34, '17BCE01111', 'CHY1701', 'Samyukta', 90, 'A', 'C2+TC2', 'Reenu', '2020-04-23', '20:05:34', '17001'),
(35, '17BCE01111', 'CSE3013', 'Samyukta', 89, 'S', 'D1+TD1', 'Divya', '2020-03-11', '18:12:02', '17031'),
(36, '18BIS0731', 'ITE4001', 'Vinod Kumar', 78, 'B', 'B1+TB1', 'Jose', '2020-03-21', '17:15:02', '15731'),
(37, '18BIS0731', 'ITE2001', 'Vinod Kumar', 23, 'C', 'F2+TF2', 'Raja', '2020-01-30', '17:41:02', '17042'),
(38, '18BIS0731', 'EEE1001', 'Vinod Kumar', 92, 'S', 'A2+TA2', 'Jayakumar', '2020-04-11', '13:59:02', '18731'),
(39, '18BIS0731', 'CHY1701', 'Vinod Kumar', 69, 'C', 'C1+TC1', 'Reenu', '2020-11-06', '17:30:02', '17001'),
(40, '18BIS0731', 'CSE3013', 'Vinod Kumar', 81, 'B', 'G2+TG2', 'Divya', '2020-10-05', '12:00:00', '17031');

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

CREATE TABLE `time_table` (
  `SNo` int(20) NOT NULL,
  `id` varchar(56) NOT NULL,
  `Name` varchar(56) NOT NULL,
  `RegistrationNumber` varchar(56) NOT NULL,
  `CourseCode` varchar(9) NOT NULL,
  `Course` varchar(67) NOT NULL,
  `CourseType` varchar(48) NOT NULL,
  `Role` varchar(45) NOT NULL,
  `Category` varchar(43) NOT NULL,
  `Slot` varchar(20) NOT NULL,
  `Venue` varchar(17) NOT NULL,
  `Faculty` varchar(43) NOT NULL,
  `Semester` varchar(56) NOT NULL,
  `Credits` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `time_table`
--

INSERT INTO `time_table` (`SNo`, `id`, `Name`, `RegistrationNumber`, `CourseCode`, `Course`, `CourseType`, `Role`, `Category`, `Slot`, `Venue`, `Faculty`, `Semester`, `Credits`) VALUES
(1, '18BIT0411', 'Harida ', '18BIT0411', 'ITE1008', 'Open Source Programming', 'Embedded Theory+Project', 'Student', 'Programme Elective', 'B1+TB1', 'SJT341', 'Jayakumar S', 'Fall Semester 2020', 4),
(2, '18BIT0411', 'Harida', '18BIT0411', 'ITE4001', 'Network and Information Security', 'Embedded Theory+Project', 'Student', 'Programme elective', 'A1+TA1', 'SJT127', 'Navaneethan-SITE', 'Winter Semester 2019', 4),
(3, '18BIT0411', 'Harida', '18BIT0411', 'ITE2001', 'Web Technology', 'Embedded Theory+Project+Lab', 'Student', 'Programme Elective', 'D1+TD1', 'TT389', 'Divya Udayan-SITE', 'Winter Semester 2019', 3),
(4, '18BIT0411', 'Harida', '18BIT0411', 'EEE1001', 'Basics of Electronics', 'Embedded Theory+Lab', 'Student', 'Programme Core', 'G1+TG1', 'TT405', 'Raja-SENSE', 'Fall Semester 2018', 3),
(5, '18BIT0411', 'Harida', '18BIT0411', 'CSE4003', 'Cyber Security', 'Embedded Theory+Project', 'Student', 'University Elective', 'E2+TE2', 'SJT234', 'Navamani-SCOPE', 'Fall Semester 2019', 4),
(6, '18BIT0359', 'Shruthi', '18BIT0359', 'CSE1007', 'Java Programming', 'Embedded Theory+Lab', 'Student', 'Program Elective', 'B1+TB1', 'SJT712', 'RaviShastri-SCOPE', 'Fall Semester 2019', 4),
(7, '18BIT0359', 'Shruthi', '18BIT0359', 'CHY1701', 'Engineering Chemistry', 'Embedded Theory+Lab', 'Student', 'University Core', 'F1+TF1', 'PLB002', 'Jose-SAS', 'Fall Semester 2018', 3),
(8, '18BIT0359', 'Shruthi', '18BIT0359', 'CSE3013', 'Artificial Intelligence', 'Embedded Theory+Project', 'Student', 'Programme  Elective', 'G1+TG1', 'SJT512', 'Harshita Patel-SITE', 'Fall Semester 2020', 4),
(9, '18BIT0359', 'Shruthi', '18BIT0359', 'BCI2001', 'Data Privacy', 'Embedded Theory+Project', '', 'University Elective', 'C1+TC1', 'SJT121', 'Reenu-SBST', 'Winter Semester 2020', 4),
(10, '18BIT0359', 'Shruthi', '18BIT0359', 'ITE1008', 'Open Source Programming', 'Embedded Theory+Project', 'Student', 'Programme Elective', 'D1+TD1', 'SJTG02', 'Jayakumar S-SITE', 'Winter Semester 2021', 4),
(11, '18BIT0379', 'Siddharth ', '18BIT0379', 'EEE1001', 'Basics of Electronics', 'Embedded Theory+Lab', 'Student', 'Programme Core', 'B2+TB2', 'TT111', 'Raja-SENSE', 'Fall Semester 2018', 3),
(12, '18BIT0379', 'Siddharth ', '18BIT0379', 'BCI2001', 'Data Privacy', 'Embedded Theory+Project', 'Student', 'University elective', 'F1+TF1', 'MB122', 'Reenu-SBST', 'Fall Semester 2020', 4),
(13, '18BIT0379', 'Siddharth ', '18BIT0379', 'CSE4003', 'Cyber Security', 'Embedded Theory+Project', 'Student', 'University Elective', 'G1+TG1', 'SJTG08', 'Navamani-SCOPE', 'Winter Semester 2021', 4),
(14, '18BIT0379', 'Siddharth ', '18BIT0379', 'ITE2001', 'Web Technology', 'Embedded Theory+Project+Lab', 'Student', 'Programme Elective', 'C1+TC1', 'SJT345', 'Divya Udayan-SITE', 'Fall Semester 2020', 3),
(15, '18BIT0379', 'Siddharth ', '18BIT0379', 'ITE1008', 'Open Source Programming', 'Embedded Theory+Project', 'Student', 'Programme Elective', 'D2+TD2', 'SJT200', 'Jayakumar S-SITE', 'Fall Semester 2019', 4),
(16, '18BIT0405', 'Shruti', '18BIT0405', 'ITE1008', 'Open Source Programming', 'Embedded Theory+Project', 'Student', 'Programme Elective', 'B1+TB1', 'SJT341', 'Jayakumar S-SITE', 'Fall Semester 2020', 4),
(17, '18BIT0405', 'Shruti', '18BIT0405', 'ITE1003', 'Database Management Systems', 'Embedded Theory+Lab+Project', 'Student', 'Programme Core', 'F1+TF1', 'SJTG20', 'Saravana Kumar-SITE', 'Fall Semester 2018', 4),
(18, '18BIT0405', 'Shruti', '18BIT0405', 'ITE4001', 'Network and Information Security', 'Embedded Theory+Project', 'Student', 'Programme Elective', 'G1+TG1', 'SJT456', 'Navaneethan-SITE', 'Winter Semester 2020', 4),
(19, '18BIT0405', 'Shruti', '18BIT0405', 'BCI2001', 'Data Privacy', 'Embedded Theory+Project', 'Student', 'University Elective', 'C1+TC1', 'SJT121', 'Reenu-SBST', 'Winter Semester 2021', 4),
(20, '18BIT0405', 'Shruti', '18BIT0405', 'CHY1701', 'Engineering Chemistry', 'Embedded theory+Lab', 'Student', 'University Core', 'D1+TD1', 'SJT245', 'Jose-SAS', 'Winter Semester 2018', 3),
(21, '17BME0912', 'Ashok Raj', '17BME0912', 'BCI2001', 'Data Privacy', 'Embedded Theory+Project', 'Student', 'University Elective', 'B1+TB1', 'TT345', 'Reenu-SBST', 'Fall Semester 2019', 4),
(22, '17BME0912', 'Ashok Raj', '17BME0912', 'CSE1007', 'Java Programming', 'Embedded Theory+Lab', 'Student', 'Program Elective', 'F1+TF1', 'SJT111', 'RaviShastri-SCOPE', 'Winter Semester 2017', 4),
(23, '17BME0912', 'Ashok Raj', '17BME0912', 'ITE1008', 'Open Source Programming', 'Embedded Thoery+Project', 'Student', 'Programme Elective', 'G1+TG1', 'SJT810', 'Jayakumar S-SITE', 'Fall Semester 2021', 4),
(24, '17BME0912', 'Ashok Raj', '17BME0912', 'ITE4001', 'Web Technology', 'Embedded Theory+Lab+Project', 'Student', 'Program Elective', 'C1+TC1', 'SJT345', 'Divya Udayan-SITE', 'Fall Semester 2020', 3),
(25, '17BME0912', 'Ashok Raj', '17BME0912', 'CHY1701', 'Engineering Chemistry', 'Embedded theory+Lab', 'Student', 'University Core', 'D1+TD1', 'SJT245', 'Jose-SAS', 'Winter Semester 2017', 3),
(26, '19BEE0456', 'Rahul Raj', '19BEE0456', 'ITE4001', 'Web Technology', 'Embedded Theory+Lab+Project', 'Student', 'Program Elective', 'E1+TE1', 'SJT234', 'Divya Udayan-SITE', 'Winter Semester 2021', 3),
(27, '19BEE0456', 'Rahul Raj', '19BEE0456', 'ITE1008', 'Open Source Programming', 'Embedded Thoery+Project', 'Student', 'Programme Elective', 'F1+TF1', 'SJT341', 'Jayakumar S-SITE', 'Fall Semester 2019', 4),
(28, '19BEE0456', 'Rahul Raj', '19BEE0456', 'BCI2001', 'Data Privacy', 'Embedded Theory+Project', 'Student', 'University Elective', 'G2+TG2', 'TT451', 'Reenu-SBST', 'Winter Semester 2020', 4),
(29, '19BEE0456', 'Rahul Raj', '19BEE0456', 'CSE4003', 'Cyber Security', 'Embedded Theory+Project', 'Student', 'University Elective', 'C1+TC1', 'SJTG12', 'Navamani-SCOPE', 'Fall Semester 2019', 4),
(30, '19BEE0456', 'Rahul Raj', '19BEE0456', 'ITE4001', 'Network and Information Security', 'Embedded Theory+Project', 'Student', 'Programme Elective', 'A2+TA2', 'SJT341', 'Navaneethan-SITE', 'Winter Semester 2019', 4),
(31, '17BCE01111', 'Samyukta', '17BCE01111', 'EEE1001', 'Basics of Electronics', 'Embedded Theory+Lab', 'Student', 'Programme Core', 'B1+TB1', 'TT123', 'Raja-SENSE', 'Winter Semester 2018', 3),
(32, '17BCE01111', 'Samyukta', '17BCE01111', 'BCI2001', 'Data Privacy', 'Embedded Theory+Project', 'Student', 'University elective', 'F1+TF1', 'SJT512', 'Reenu-SBST', 'Fall Semester 2020', 4),
(33, '17BCE01111', 'Samyukta', '17BCE01111', 'ITE1008', 'Open Source Programming', 'Embedded Thoery+Project', 'Student', 'Programme Elective', 'G1+TG1', 'SJT412', 'Jayakumar S-SITE', 'Fall Semester 2018', 4),
(34, '17BCE01111', 'Samyukta', '17BCE01111', 'CHY1701', 'Engineering Chemistry', 'Embedded Theory+Lab', 'Student', 'University Core', 'C2+TC2', 'TT123', 'Jose-SAS', 'Winter Semester 2019', 3),
(35, '17BCE01111', 'Samyukta', '17BCE01111', 'CSE3013', 'Artificial Intelligence', 'Embedded Theory+Project', 'Student', 'Programme  Elective', 'D1+TD1', 'SJT245', 'Harshita Patel-SITE', 'Fall Semester 2021', 4),
(36, '18BIS0731', 'Vinod Kumar', '18BIS0731', 'ITE4001', 'Network And Information Security', 'Embedded Theory+Project', 'Student', 'Programme Elective', 'B1+TB1', 'SJT456', 'Navaneethan-SITE', 'Winter Semester 2021', 4),
(37, '18BIS0731', 'Vinod Kumar', '18BIS0731', 'ITE2001', 'Web Technology', 'Embedded Theory+Project+Lab', 'Student', 'Programme Elective', 'F2+TF2', 'SJT890', 'Divya Udayan-SITE', 'Fall Semester 2021', 3),
(38, '18BIS0731', 'Vinod Kumar', '18BIS0731', 'EEE1001', 'Basics of Electronics', 'Embedded Theory+Lab', 'Student', 'Programme Core', 'A2+TA2', 'SJT213', 'Raja-SENSE', 'Winter Semester 2018', 3),
(39, '18BIS0731', 'Vinod Kumar', '18BIS0731', 'CHY1701', 'Engineering Chemistry', 'Embedded Theory+Lab', 'Student', 'University Core', 'C1+TC1', 'SJTG06', 'Jose-SAS', 'Winter Semester 2019', 3),
(40, '18BIS0731', 'Vinod Kumar', '18BIS0731', 'CSE3013', 'Artificial Intelligence', 'Embedded Theory+Project', 'Student', 'Programme  Elective', 'G2+TG2', 'SJT325', 'Harshita Patel-SITE', 'Fall Semester 2019', 4),
(41, '18731', 'Jayakumar', '18731', 'ITE1008', 'Open Source Programming', 'Embedded Theory+Project', 'Faculty', 'Programme Elective', 'B1+TB1', 'SJT341', 'Jayakumar', 'Fall Semester 2020', 4),
(42, '18731', 'Jayakumar', '18731', 'ITE1008', 'Open Source Programming', 'Embedded Theory+Project', 'Faculty', 'Programme Elective', 'D1+TD1', 'SJTG02', 'Jayakumar', 'Winter Semester 2020', 4),
(43, '18731', 'Jayakumar', '18731', 'ITE1008', 'Open Source Programming', 'Embedded Theory+Project', 'Faculty', 'Programme Elective', 'D2+TD2', 'SJT200', 'Jayakumar', 'Fall Semester 2019', 4),
(44, '18731', 'Jayakumar', '18731', 'ITE1008', 'Open Source Programming', 'Embedded Theory+Project', 'Faculty', 'Programme Elective', 'G1+TG1', 'SJT810', 'Jayakumar', 'Fall Semester 2021', 4),
(45, '18731', 'Jayakumar', '18731', 'ITE1008', 'Open Source Programming', 'Embedded Theory+Project', 'Faculty', 'Programme Elective', 'F1+TF1', 'SJT341', 'Jayakumar', 'Fall Semester 2019', 4),
(46, '18731', 'Jayakumar', '18731', 'ITE1008', 'Open Source Programming', 'Embedded Theory+Project', 'Faculty', 'Programme Elective', 'G1+TG1', 'SJT412', 'Jayakumar', 'Fall Semester 2018', 4),
(47, '18031', 'Navaneethan', '18031', 'ITE4001', 'Network and Information Security', 'Embedded Theory+Project', 'Faculty', 'Programme Elective', 'A1+TA1', 'SJT127', 'Navaneethan', 'Winter Semester 2019', 4),
(48, '18031', 'Navaneethan', '18031', 'ITE4001', 'Network and Information Security', 'Embedded Theory+Project', 'FacultyFaculty', 'Programme Elective', 'G1+TG1', 'SJT456', 'Navaneethan', 'Winter Semester 2020', 4),
(49, '18031', 'Navaneethan', '18031', 'ITE4001', 'Network and Information Security', 'Embedded Theory+Project', 'Faculty', 'Programme Elective', 'A2+TA2', 'SJT341', 'Navaneethan', 'Winter Semester 2019', 4),
(50, '18031', 'Navaneethan', '18031', 'ITE4001', 'Network and Information Security', 'Embedded Theory+Project', 'Faculty', 'Programme Elective', 'B1+TB1', 'SJT456', 'Navaneethan', 'Winter Semester 2021', 4),
(51, '17031', 'Divya', '17031', 'ITE2001', 'Web Technology', 'Embedded Theory+Project+Lab', 'Faculty', 'Programme Elective', 'D1+TD1', 'TT839', 'Divya', 'Winter Semester 2019', 4),
(52, '17031', 'Divya', '17031', 'ITE2001', 'Web Technology', 'Embedded Theory+Project+Lab', 'Faculty', 'Programme Elective', 'C1+TC1', 'SJT345', 'Divya', 'Fall Semester 2020', 4),
(53, '17031', 'Divya', '17031', 'ITE2001', 'Web Technology', 'Embedded Theory+Project+Lab', 'Faculty', 'Programme Elective', 'E1+TE1', 'SJT234', 'Divya', 'Fall Semester 2020', 4),
(54, '17031', 'Divya', '17031', 'ITE2001', 'Web Technology', 'Embedded Theory+Project+Lab', 'Faculty', 'Programme Elective', 'F2+TF2', 'SJT890', 'Divya', 'Fall Semester 2021', 4),
(55, '17042', 'Raja', '17042', 'EEE1001', 'Basics of Electronics', 'Embedded Theory+Lab', 'FacultyFaculty', 'Programme Core', 'G1+TG1', 'TT405', 'Raja', 'Winter Semester 2021', 3),
(56, '17042', 'Raja', '17042', 'EEE1001', 'Basics of Electronics', 'Embedded Theory+Lab', 'Faculty', 'Programme Core', 'B2+TB2', 'TT111', 'Raja', 'Winter Semester 2021', 3),
(57, '17042', 'Raja', '17042', 'EEE1001', 'Basics of Electronics', 'Embedded Theory+Lab', 'Faculty', 'Programme Core', 'B1+TB1', 'TT123', 'Raja', 'Winter Semester 2021', 3),
(58, '17042', 'Raja', '17042', 'EEE1001', 'Basics of Electronics', 'Embedded Theory+Lab', 'Faculty', 'Programme Core', 'A2+TA2', 'SJT213', 'Raja', 'Winter Semester 2021', 3),
(59, '17048', 'Navamani', '17048', 'CSE4003', 'Cyber Security', 'Embedded Theory+Project', 'Faculty', 'University Elective', 'E2+TE2', 'SJT234', 'Navamani', 'Winter Semester 2019', 4),
(60, '17048', 'Navamani', '17048', 'CSE4003', 'Cyber Security', 'Embedded Theory+Project', 'Faculty', 'University Elective', 'G1+TG1', 'SJTG08', 'Navamani', 'Winter Semester 2019', 4),
(61, '17048', 'Navamani', '17048', 'CSE4003', 'Cyber Security', 'Embedded Theory+Project', 'Faculty', 'University Elective', 'C1+TC1', 'SJTG12', 'Navamani', 'Winter Semester 2019', 4),
(62, '16631', 'RaviShastri', '16631', 'CSE1007', 'Java Programming', 'Embedded Theory+Lab', 'FacultyFaculty', 'Programme Elective', 'B1+TB1', 'SJT712', 'RaviShastri', 'Fall Semester 2019', 4),
(63, '16631', 'RaviShastri', '16631', 'CSE1007', 'Java Programming', 'Embedded Theory+Lab', 'Faculty', 'Programme Elective', 'F1+TF1', 'SJT111', 'RaviShastri', 'Winter Semester 2017', 4),
(64, '15731', 'Jose', '15731', 'CHY1701', 'Engineering Chemistry', 'Embedded Theory+Lab', 'Faculty', 'University Core', 'F1+TF1', 'PLB002', 'Jose', 'Fall Semester 2018', 3),
(65, '15731', 'Jose', '15731', 'CHY1701', 'Engineering Chemistry', 'Embedded Theory+Lab', 'Faculty', 'University Core', 'D1+TD1', 'SJT245', 'Jose', 'Winter Semester 2018', 3),
(66, '15731', 'Jose', '15731', 'CHY1701', 'Engineering Chemistry', 'Embedded Theory+Lab', 'Faculty', 'University Core', 'D1+TD1', 'SJT245', 'Jose', 'Winter Semester 2017', 3),
(67, '15731', 'Jose', '15731', 'CHY1701', 'Engineering Chemistry', 'Embedded Theory+Lab', 'Faculty', 'University Core', 'C2+TC2', 'TT123', 'Jose', 'Winter Semester 2019', 3),
(68, '15731', 'Jose', '15731', 'CHY1701', 'Engineering Chemistry', 'Embedded Theory+Lab', 'Faculty', 'University Core', 'C1+TC1', 'SJTG06', 'Jose', 'Winter Semester 2019', 3),
(69, '19731', 'Harshita Patel', '19731', 'CSE3013', 'Artificial Intelligence', 'Embedded Theory+Project', 'Faculty', 'Programme Elective', 'G1+TG1', 'SJT512', 'Harshita Patel', 'Fall Semester 2020', 4),
(70, '19731', 'Harshita Patel', '19731', 'CSE3013', 'Artificial Intelligence', 'Embedded Theory+Project', 'Faculty', 'Programme Elective', 'D1+TD1', 'SJT245', 'Harshita Patel', 'Fall Semester 2020', 4),
(71, '19731', 'Harshita Patel', '19731', 'CSE3013', 'Artificial Intelligence', 'Embedded Theory+Project', 'Faculty', 'Programme Elective', 'G2+TG2', 'SJT325', 'Harshita Patel', 'Fall Semester 2019', 4),
(72, '17001', 'Reenu', '17001', 'BCI2001', 'Data Privacy', 'Embedded Theory+Project', 'Faculty', 'University Elective', 'C1+TC1', 'SJT121', 'Reenu', 'Winter Semester 2021', 4),
(73, '17001', 'Reenu', '17001', 'BCI2001', 'Data Privacy', 'Embedded Theory+Project', 'Faculty', 'University Elective', 'F1+TF1', 'MB121', 'Reenu', 'Fall Semester 2020', 4),
(74, '17001', 'Reenu', '17001', 'BCI2001', 'Data Privacy', 'Embedded Theory+Project', 'Faculty', 'University Elective', 'B1+TB1', 'TT345', 'Reenu', 'Fall Semester 2019', 4),
(75, '17001', 'Reenu', '17001', 'BCI2001', 'Data Privacy', 'Embedded Theory+Project', 'Faculty', 'University Elective', 'G2+TG2', 'TT451', 'Reenu', 'Winter Semester 2020', 4),
(76, '17001', 'Reenu', '17001', 'BCI2001', 'Data Privacy', 'Embedded Theory+Project', 'Faculty', 'University Elective', 'F1+TF1', 'SJT512', 'Reenu', 'Winter Semester 2020', 4),
(77, '16101', 'Saravana Kumar', '16101', 'ITE1003', 'Database Management Systems', 'Embedded Theory+Project+Lab', 'Faculty', 'Programme Core', 'F1+TF1', 'SJTG20', 'Saravana Kumar', 'Fall Semester 2018', 4);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `role`) VALUES
('18731', 'Jayakumar', 'SITE', 'user'),
('18031', 'Navaneethan', 'SITE', 'user'),
('17031', 'Divya', 'SITE', 'user'),
('17042', 'Raja', 'SENSE', 'user'),
('16101', 'Saravana', 'SITE', 'user'),
('15731', 'Jose', 'SAS', 'user'),
('17001', 'Reenu', 'SBST', 'user'),
('16631', 'Ravi', 'SCOPE', 'user'),
('19731', 'Harshita', 'SITE', 'user'),
('17048', 'Navamani', 'SCOPE', 'user'),
('18BIT0359', 'Shruthi', 'shruthi', 'student'),
('18BIT411', 'Harida', 'harida', 'student'),
('18BIT0405', 'Shruti', 'shruti', 'student'),
('18BIT379', 'Siddharth', 'siddharth', 'student'),
('18BIS0731', 'Vinod', 'vinod', 'student'),
('17BCE01111', 'Samyukta', 'samyukta', 'student'),
('19BEE0456', 'Rahul', 'rahul', 'student'),
('17BME0912', 'Ashok', 'ashok', 'student');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
