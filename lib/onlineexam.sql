-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2022 at 06:56 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlineexam`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `adminid` varchar(100) NOT NULL,
  `aname` varchar(40) NOT NULL,
  `contno` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(60) NOT NULL,
  `password` varchar(30) NOT NULL,
  `atype` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`adminid`, `aname`, `contno`, `email`, `address`, `password`, `atype`) VALUES
('AER0001', 'Ayan Mukherjee', '9732589197', 'chatfun.ayan@gmail.com', 'Basirhat', '12345678', 'Admin'),
('AER0002', 'xyz', '999999999999', 'xyz', 'xyz', '1234', 'Admin'),
('AER0003', 'Suvrodip chakroborty', '89348958', 'dipchakroborty565@gmail.com', 'rfgdfgdfgdfgdf', '12345678', 'Admin'),
('AER0004', 'Deep Chakroborty', '556677156', 'gshghsg@ghgg.com', 'basirhat sainpala station para', '1234', 'Organizer');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `cid` int(11) NOT NULL,
  `cname` varchar(30) NOT NULL,
  `qno` int(2) NOT NULL,
  `duration` int(3) NOT NULL,
  `valid` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`cid`, `cname`, `qno`, `duration`, `valid`) VALUES
(6, 'C', 2, 2, 'Enabled'),
(7, 'Biology', 8, 2, 'Disabled'),
(8, 'java', 2, 1, 'Enabled'),
(9, 'english', 3, 2, 'Enabled'),
(10, 'math', 5, 1, 'Enabled');

-- --------------------------------------------------------

--
-- Table structure for table `examquestion`
--

CREATE TABLE `examquestion` (
  `qid` int(11) NOT NULL,
  `topic` varchar(50) NOT NULL,
  `question` varchar(200) NOT NULL,
  `op1` varchar(200) NOT NULL,
  `op2` varchar(200) NOT NULL,
  `op3` varchar(200) NOT NULL,
  `op4` varchar(200) NOT NULL,
  `correct` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `examquestion`
--

INSERT INTO `examquestion` (`qid`, `topic`, `question`, `op1`, `op2`, `op3`, `op4`, `correct`) VALUES
(9, 'C', 'C is a___________', 'programming script', 'programming language', 'compiler', 'operation math', 'programming language'),
(10, 'C', 'int x=0; x=5;x=7;x=10; printf(\"%d\",x);', '1', '0', '7', '10', '10'),
(11, 'Biology', 'All stages in the life cycle of malarial parasite are haploid except', 'Sporont', 'Schizont', 'Gamout', 'Ookinete', 'Ookinete'),
(12, 'Biology', 'The infective stage of Entamoeba histolytica is', 'Trophic form', 'Mature cyst', 'Sporozoite', 'Minuta form', 'Mature cyst'),
(13, 'Biology', 'If an Amoeba is placed in salt water, its contractile vacuole will', 'Burst', 'Multiple', 'Enlarge', 'Disappear', 'Disappear'),
(14, 'Biology', 'Which of the following is not a true amphibian animal?  ', 'Tortoise', 'Frog', 'Toad', 'Salamander', 'Tortoise'),
(15, 'Biology', 'The shape of Amoeba is  ', 'Irregular', 'Rectangular', 'Conical', 'None of these', 'Irregular'),
(16, 'Biology', 'Sporogony of malaria parasite occurs in', 'Salivary glands of mosquito', 'Stomach wall of mosquito', 'Liver of man', 'RBC of man', 'Stomach wall of mosquito'),
(17, 'Biology', 'The trophozoite of Plasmodium lives in', 'Blood plasma', 'Stomach of mosquito', 'Liver cells', 'Erythrocytes of man', 'Erythrocytes of man'),
(18, 'Biology', 'Which one of the following regulates respiration in man?', 'Medulla oblongata', 'Mid brain', 'Spinal cord', 'Fore brain', 'Medulla oblongata'),
(19, 'java', 'class X{     which is valid?', 'x()', 'X()', 'int X', 'none of this', 'X()'),
(20, 'java', 'which is not the proparty of OOP', 'inheritance', 'polymorphism', 'object', 'string', 'string'),
(21, 'english', 'what is our national animal?', 'lion', 'tiger', 'cat', 'dog', 'tiger'),
(22, 'english', '3+2', '1', '5', '3', '2', '5'),
(23, 'english', '1+2', '1', '2', '3', '4', '3'),
(24, 'math', '1+1', '5', '6', '7', '2', '2');

-- --------------------------------------------------------

--
-- Table structure for table `resultstu_`
--

CREATE TABLE `resultstu_` (
  `resid` int(11) NOT NULL,
  `stu_id` varchar(15) NOT NULL,
  `stu_name` varchar(30) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `time` varchar(10) NOT NULL,
  `qno` varchar(3) NOT NULL,
  `full` varchar(3) NOT NULL,
  `marks` varchar(3) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `resultstu_`
--

INSERT INTO `resultstu_` (`resid`, `stu_id`, `stu_name`, `subject`, `time`, `qno`, `full`, `marks`, `date`) VALUES
(1, 'SRE0001', 'Deep Chakroborty', 'C', '2', '2', '2', '2', '2021-09-28 13:28:07'),
(2, 'SRE0001', 'Deep Chakroborty', 'Biology', '2', '8', '8', '8', '2021-09-28 13:53:30'),
(3, 'SRE0001', 'Deep Chakroborty', 'java', '1', '2', '2', '1', '2021-10-01 18:07:57'),
(4, 'SRE0001', 'Deep Chakroborty', 'english', '2', '3', '3', '2', '2021-10-02 11:59:57'),
(5, 'SRE0001', 'Deep Chakroborty', 'english', '2', '3', '3', '1', '2021-12-07 00:13:00'),
(6, 'SRE0001', 'Deep Chakroborty', 'math', '1', '5', '5', '0', '2021-12-07 00:22:59'),
(7, 'SRE0001', 'Deep Chakroborty', 'english', '2', '3', '3', '2', '2021-12-10 19:41:51'),
(8, 'SRE0001', 'Deep Chakroborty', 'java', '1', '2', '2', '1', '2022-06-13 10:10:44');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stu_id` varchar(50) NOT NULL,
  `stu_name` varchar(50) NOT NULL,
  `stu_father` varchar(50) NOT NULL,
  `age` varchar(3) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `class` varchar(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(70) NOT NULL,
  `password` varchar(50) NOT NULL,
  `allow` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stu_id`, `stu_name`, `stu_father`, `age`, `mobile`, `class`, `gender`, `email`, `address`, `password`, `allow`) VALUES
('SRE0001', 'Deep Chakroborty', 'hsjjsdhsh', '20', '823283928', 'Diploma', 'Male', 'bdsb@gfsfshg.com', 'jjkjsjdjsdj	1', '123456', 'Enabled'),
('SRE0002', 'Ritwika Chatterjee', 'jgflkdjfkjkdjf', '20', '99999999', 'BCA', 'Female', 'njkfjkrfjhrjfhjrehfhejfhrhjh', 'jwioeffhrhfrhhrhj', '123456', 'Disabled'),
('SRE0004', 'ererewr', 'rewre', '12', '2222222', 'MCA', 'Male', 'ayan@gmail.com', 'jgjflkgjdfkgjkdfjd', '1234567', 'Enabled'),
('SRE0005', 'Sipra Mukherjee', 'Nilmoni Banerjee', '58', '8637300537', 'B.Tech', 'Female', 'sipra@gmail.com', 'Basirhat Sainpala Mandirpara PIN-743411', '12345678', 'Disabled'),
('SRE0006', 'hhdhdhdhh', 'hdhdhhdhd', '12', '11123444', 'bca', 'Female', 'abc@abc.com', 'jdjjdjdjdjjd', '12345678', 'Enabled');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`cid`),
  ADD UNIQUE KEY `cname` (`cname`);

--
-- Indexes for table `examquestion`
--
ALTER TABLE `examquestion`
  ADD PRIMARY KEY (`qid`),
  ADD KEY `topic` (`topic`);

--
-- Indexes for table `resultstu_`
--
ALTER TABLE `resultstu_`
  ADD PRIMARY KEY (`resid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stu_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `mobile` (`mobile`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `examquestion`
--
ALTER TABLE `examquestion`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `resultstu_`
--
ALTER TABLE `resultstu_`
  MODIFY `resid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `examquestion`
--
ALTER TABLE `examquestion`
  ADD CONSTRAINT `examquestion_ibfk_1` FOREIGN KEY (`topic`) REFERENCES `course` (`cname`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
