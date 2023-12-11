-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 01, 2023 at 09:14 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `university`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
CREATE TABLE IF NOT EXISTS `course` (
  `course_id` int NOT NULL,
  `title` varchar(25) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `department_name` varchar(25) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `credits` int DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `title`, `department_name`, `credits`) VALUES
(101, 'dbms', 'comp', 4),
(102, 'os', 'comp', 4),
(201, 'mechanics', 'civil', 3),
(202, 'foundation Engineering', 'civil', 4),
(301, 'signals and system', 'electronics', 4);

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

DROP TABLE IF EXISTS `instructor`;
CREATE TABLE IF NOT EXISTS `instructor` (
  `instructor_id` int NOT NULL,
  `instructor_name` varchar(25) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `department_name` varchar(25) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `salary` mediumtext COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`instructor_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`instructor_id`, `instructor_name`, `department_name`, `salary`) VALUES
(5001, 'aaa', 'comp', '100000'),
(5002, 'bbb', 'comp', '50000'),
(5003, 'ccc', 'civil', '150000'),
(5004, 'ddd', 'electronics', '75000');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `student_id` int NOT NULL,
  `student_name` varchar(25) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `department_name` varchar(25) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `total_credits` int DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `student_name`, `department_name`, `total_credits`, `birthdate`) VALUES
(2001, 'sam', 'comp', 8, NULL),
(2002, 'mary', 'civil', 7, NULL),
(2003, 'judit', 'electronics', 4, NULL),
(2004, 'Elis', 'comp', 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `takes`
--

DROP TABLE IF EXISTS `takes`;
CREATE TABLE IF NOT EXISTS `takes` (
  `student_id` int NOT NULL,
  `course_id` int NOT NULL,
  `date_registered` date DEFAULT NULL,
  `date_completed` date DEFAULT NULL,
  PRIMARY KEY (`student_id`,`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `takes`
--

INSERT INTO `takes` (`student_id`, `course_id`, `date_registered`, `date_completed`) VALUES
(2001, 101, '2023-01-01', '2023-06-14'),
(2001, 102, '2023-01-02', '2023-06-14'),
(2002, 201, '2023-01-12', '2023-06-14'),
(2002, 202, '2023-01-20', '2023-06-14'),
(2003, 301, '2023-01-07', '2023-06-14'),
(2004, 101, '2023-01-04', '2023-06-14'),
(2004, 102, '2023-01-01', '2023-06-14');

-- --------------------------------------------------------

--
-- Table structure for table `teaches`
--

DROP TABLE IF EXISTS `teaches`;
CREATE TABLE IF NOT EXISTS `teaches` (
  `instructor_id` int NOT NULL,
  `course_id` int NOT NULL,
  PRIMARY KEY (`instructor_id`,`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teaches`
--

INSERT INTO `teaches` (`instructor_id`, `course_id`) VALUES
(5001, 101),
(5001, 102),
(5002, 101),
(5002, 102),
(5003, 201),
(5003, 202),
(5004, 301);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
