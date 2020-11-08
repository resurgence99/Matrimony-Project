-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2019 at 05:11 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `matrimony`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `email` varchar(30) NOT NULL,
  `description` varchar(250) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `hobbies` varchar(100) NOT NULL,
  `height` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`email`, `description`, `fname`, `lname`, `hobbies`, `height`) VALUES
('ganesh@gmail.com', 'i am me inside the me of me', 'Ganesh ', 'G', 'me being with me', 0),
('hello@hello.com', 'hello', 'hello', 'hi', 'hi', 6),
('me@me.com', 'ME is Always me inside me', 'Me', 'InME', 'Playing cards', 6),
('me@me.com', 'ME is Always me inside me', 'Me', 'InME', 'Playing cards', 6),
('me@me.com', 'ME is Always me inside me', 'Me', 'InME', 'Playing cards', 6),
('me@me.com', 'ME is Always me inside me', 'Me', 'InME', 'Playing cards', 6),
('aps@aps.com', 'oiwheroiewr', 'Acharya', 'P', 'asflhfealf', 6),
('harsh@harsh.com', 'i am harshavardhan', 'Harshavardan', 'k', 'i only stay at home', 6);

--
-- Triggers `about`
--
DELIMITER $$
CREATE TRIGGER `height` AFTER UPDATE ON `about` FOR EACH ROW UPDATE about
SET height=4
WHERE height<4
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `email` varchar(30) NOT NULL,
  `education_field` varchar(30) NOT NULL,
  `education_level` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`email`, `education_field`, `education_level`) VALUES
('ganesh@gmail.com', 'Science', '10th'),
('hello@hello.com', 'Science', 'UG'),
('me@me.com', 'Science', '10th'),
('me@me.com', 'Science', '10th'),
('me@me.com', 'Science', '10th'),
('me@me.com', 'Science', '10th'),
('aps@aps.com', 'Science', 'PG'),
('harsh@harsh.com', 'Commmerce', '10th');

-- --------------------------------------------------------

--
-- Table structure for table `general_details`
--

CREATE TABLE `general_details` (
  `email` varchar(30) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `phone` varchar(14) NOT NULL,
  `createdby` varchar(10) NOT NULL,
  `religion` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `general_details`
--

INSERT INTO `general_details` (`email`, `gender`, `phone`, `createdby`, `religion`) VALUES
('ganesh@gmail.com', 'male', '88888888', 'Myself', 'Hindu'),
('hello@hello.com', 'male', '54684354', 'Son', 'Hindu'),
('me@me.com', 'male', '88855223', 'Myself', 'Hindu'),
('me@me.com', 'male', '88855223', 'Myself', 'Hindu'),
('me@me.com', 'male', '88855223', 'Myself', 'Hindu'),
('me@me.com', 'male', '88855223', 'Myself', 'Hindu'),
('aps@aps.com', 'female', '1123365', 'Myself', 'Sikh'),
('harsh@harsh.com', 'male', '123456', 'Myself', 'Inter-Religion');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`email`, `password`) VALUES
('aps@aps.com', 'aps'),
('ganesh@gmail.com', '123456'),
('harsh@harsh.com', 'harsh'),
('hello@hello.com', 'hello'),
('me@me.com', 'me');

-- --------------------------------------------------------

--
-- Table structure for table `work`
--

CREATE TABLE `work` (
  `email` varchar(30) NOT NULL,
  `companyname` varchar(40) NOT NULL,
  `salary` int(10) NOT NULL,
  `position` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `work`
--

INSERT INTO `work` (`email`, `companyname`, `salary`, `position`) VALUES
('ganesh@gmail.com', 'Ganesh And Co', 2811000, 'CEO'),
('hello@hello.com', 'hello', 4350000, 'Accountant'),
('me@me.com', 'Me Station', 4658000, 'CEO'),
('me@me.com', 'Me Station', 4658000, 'CEO'),
('me@me.com', 'Me Station', 4658000, 'CEO'),
('me@me.com', 'Me Station', 4658000, 'CEO'),
('aps@aps.com', 'APS', 4394500, 'HR'),
('harsh@harsh.com', 'Home', 4815500, 'HR');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD KEY `email` (`email`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD KEY `email` (`email`);

--
-- Indexes for table `general_details`
--
ALTER TABLE `general_details`
  ADD KEY `email` (`email`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `work`
--
ALTER TABLE `work`
  ADD KEY `email` (`email`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `about`
--
ALTER TABLE `about`
  ADD CONSTRAINT `about_ibfk_1` FOREIGN KEY (`email`) REFERENCES `login` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `education`
--
ALTER TABLE `education`
  ADD CONSTRAINT `education_ibfk_1` FOREIGN KEY (`email`) REFERENCES `login` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `general_details`
--
ALTER TABLE `general_details`
  ADD CONSTRAINT `general_details_ibfk_1` FOREIGN KEY (`email`) REFERENCES `login` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `work`
--
ALTER TABLE `work`
  ADD CONSTRAINT `work_ibfk_1` FOREIGN KEY (`email`) REFERENCES `login` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
