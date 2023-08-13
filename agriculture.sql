-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 13, 2023 at 04:20 PM
-- Server version: 8.0.33
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agriculture`
--

-- --------------------------------------------------------

--
-- Table structure for table `crops`
--

DROP TABLE IF EXISTS `crops`;
CREATE TABLE IF NOT EXISTS `crops` (
  `CropId` int NOT NULL,
  `CropName` varchar(30) DEFAULT NULL,
  `Variety` varchar(30) DEFAULT NULL,
  `Season` varchar(30) DEFAULT NULL,
  `Yield` int DEFAULT NULL,
  PRIMARY KEY (`CropId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `crops`
--

INSERT INTO `crops` (`CropId`, `CropName`, `Variety`, `Season`, `Yield`) VALUES
(1, 'Rice', 'Basmati', 'Kharif', 2500),
(2, 'Wheat', 'Sharbati', 'Rabi', 1800),
(3, 'Cotton', 'Deshi', 'Kharif', 1200),
(4, 'Sugarcane', 'CoS 082', 'Rabi', 3000),
(5, 'Maize', 'Ganga-101', 'Kharif', 2200),
(6, 'Paddy', 'MTU 7029', 'Kharif', 2800),
(7, 'Barley', 'PL 849', 'Rabi', 1600),
(8, 'Potato', 'Kufri Sindhuri', 'Winter', 2400),
(9, 'Tomato', 'Arka Rakshak', 'Summer', 1800),
(10, 'Onion', 'Red Creole', 'Rainy', 2000);

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

DROP TABLE IF EXISTS `equipment`;
CREATE TABLE IF NOT EXISTS `equipment` (
  `EquipmentId` int NOT NULL,
  `EquipmentName` varchar(50) DEFAULT NULL,
  `PurchasedDate` date DEFAULT NULL,
  `Warranty` int DEFAULT NULL,
  `EquipmentStatus` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`EquipmentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`EquipmentId`, `EquipmentName`, `PurchasedDate`, `Warranty`, `EquipmentStatus`) VALUES
(1, 'Tractor', '2020-05-15', 2, 'Operational'),
(2, 'Harvester', '2019-10-22', 3, 'Under Repair'),
(3, 'Plow', '2021-03-10', 1, 'Operational'),
(4, 'Irrigation Pump', '2018-08-04', 0, 'Out of Service'),
(5, 'Seeder', '2022-01-28', 2, 'Operational'),
(6, 'Sprayer', '2017-11-19', 0, 'Out of Service'),
(7, 'Cultivator', '2019-06-02', 1, 'Operational'),
(8, 'Digger', '2020-12-15', 2, 'Operational'),
(9, 'Fertilizer Spreader', '2022-04-07', 1, 'Operational'),
(10, 'Greenhouse System', '2016-09-30', 0, 'Out of Service');

-- --------------------------------------------------------

--
-- Table structure for table `farmers`
--

DROP TABLE IF EXISTS `farmers`;
CREATE TABLE IF NOT EXISTS `farmers` (
  `FarmerId` int NOT NULL,
  `FirstName` varchar(30) DEFAULT NULL,
  `LastName` varchar(30) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Contact` bigint DEFAULT NULL,
  PRIMARY KEY (`FarmerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `farmers`
--

INSERT INTO `farmers` (`FarmerId`, `FirstName`, `LastName`, `DOB`, `Contact`) VALUES
(1, 'Ramesh', 'Kumar', '1985-07-15', 9876543210),
(2, 'Sarita', 'Verma', '1992-03-22', 8765432109),
(3, 'Amit', 'Sharma', '1980-11-10', 7654321098),
(4, 'Sneha', 'Joshi', '1998-05-04', 6543210987),
(5, 'Rajesh', 'Patel', '1976-09-28', 5432109876),
(6, 'Pooja', 'Singh', '1995-02-14', 4321098765),
(7, 'Vikram', 'Rao', '1988-12-02', 3210987654),
(8, 'Meera', 'Iyer', '1990-06-19', 2109876543),
(9, 'Gaurav', 'Gupta', '1983-08-07', 1098765432),
(10, 'Anjali', 'Choudhury', '1991-04-30', 987654321);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
CREATE TABLE IF NOT EXISTS `transactions` (
  `TransactionId` int NOT NULL,
  `TransDate` date DEFAULT NULL,
  `Amount` int DEFAULT NULL,
  `TransType` varchar(30) DEFAULT NULL,
  `RelatedParty` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`TransactionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`TransactionId`, `TransDate`, `Amount`, `TransType`, `RelatedParty`) VALUES
(1, '2023-08-01', 5000, 'Income', 'Buyer - ABC Traders'),
(2, '2023-08-02', 1500, 'Expense', 'Supplier - XYZ Agro Supplies'),
(3, '2023-08-03', 300, 'Expense', 'Labor Payment'),
(4, '2023-08-04', 7500, 'Income', 'Buyer - Fresh Mart'),
(5, '2023-08-05', 1200, 'Expense', 'Equipment Maintenance'),
(6, '2023-08-06', 4200, 'Income', 'Buyer - Green Foods'),
(7, '2023-08-07', 280, 'Expense', 'Fertilizer Purchase'),
(8, '2023-08-08', 6000, 'Income', 'Buyer - Agri Supply'),
(9, '2023-08-09', 180, 'Expense', 'Transportation'),
(10, '2023-08-10', 3600, 'Income', 'Buyer - Natures Harvest');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
