-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 05, 2023 at 09:34 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Organisation`
--

-- --------------------------------------------------------

--
-- Table structure for table `Branch`
--

CREATE TABLE `Branch` (
  `branch_id` varchar(20) DEFAULT NULL,
  `branchName` varchar(20) DEFAULT NULL,
  `mgr_id` int(20) DEFAULT NULL,
  `startDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Branch`
--

INSERT INTO `Branch` (`branch_id`, `branchName`, `mgr_id`, `startDate`) VALUES
('B1', 'Finance', 103, '2000-09-05'),
('B2', 'Admin', 101, '1990-07-06');

-- --------------------------------------------------------

--
-- Table structure for table `BranchSupplier`
--

CREATE TABLE `BranchSupplier` (
  `branch_id` int(20) DEFAULT NULL,
  `supplier_Name` varchar(20) DEFAULT NULL,
  `supply_type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Client`
--

CREATE TABLE `Client` (
  `client_id` varchar(20) DEFAULT NULL,
  `clientName` varchar(20) DEFAULT NULL,
  `branchid` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Client`
--

INSERT INTO `Client` (`client_id`, `clientName`, `branchid`) VALUES
('C1', 'Microsoft', 'B1'),
('C2', 'Google', 'B2');

-- --------------------------------------------------------

--
-- Table structure for table `Employee`
--

CREATE TABLE `Employee` (
  `emp_id` int(20) DEFAULT NULL,
  `firstname` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `bdate` date DEFAULT NULL,
  `salary` int(20) DEFAULT NULL,
  `branchid` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Employee`
--

INSERT INTO `Employee` (`emp_id`, `firstname`, `lastname`, `bdate`, `salary`, `branchid`) VALUES
(101, 'Sam', 'Newton', '1960-07-02', 50000, 'B1'),
(102, 'Elvin', 'Gomes', '2000-01-03', 60000, 'B2'),
(103, 'Jack', 'Sparrow', '1980-09-04', 75000, 'B2');

-- --------------------------------------------------------

--
-- Table structure for table `Workswith`
--

CREATE TABLE `Workswith` (
  `emp_id` int(20) DEFAULT NULL,
  `client_id` varchar(20) DEFAULT NULL,
  `totalSales` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Workswith`
--

INSERT INTO `Workswith` (`emp_id`, `client_id`, `totalSales`) VALUES
(101, 'C1', '1 Million'),
(102, 'C2', '10 Million'),
(103, 'C1', '5 Lakh');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
