-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2024 at 11:33 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `salondb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `customerinfo`
--

CREATE TABLE `customerinfo` (
  `CustomerID` int(11) NOT NULL,
  `CustomerName` varchar(50) NOT NULL,
  `ContactNumber` varchar(50) NOT NULL,
  `Age` int(11) NOT NULL,
  `Gender` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customerinfo`
--

INSERT INTO `customerinfo` (`CustomerID`, `CustomerName`, `ContactNumber`, `Age`, `Gender`) VALUES
(1, 'ewe', '3', 1, 'Female'),
(2, '3333', '3', 7, 'Male'),
(3, 'kier', '09484455', 44, 'Male'),
(4, 'jupeng', '89897777', 887, 'Female'),
(5, 'jp', '55577', 457, 'Male'),
(6, 'Jessen', '0951231312', 24, 'Male'),
(7, 'fdss', '32424323', 34, 'Male'),
(8, 'fdss', '32424323', 34, 'Male'),
(9, 'hkkuk', '768686868', 77, 'Male'),
(10, 'Jessen', '234234', 43242, 'Male'),
(11, '434554', '4534', 4, 'Male'),
(12, 'JPPPP', '4655', 45, 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `employeeinfo`
--

CREATE TABLE `employeeinfo` (
  `employeeID` int(11) NOT NULL,
  `employeeName` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employeeinfo`
--

INSERT INTO `employeeinfo` (`employeeID`, `employeeName`, `role`) VALUES
(1, 'Jessica', 'Hairstylist'),
(2, 'Paula', 'Hairstylist'),
(3, 'Lea', 'Massage Therapist'),
(4, 'Yannah', 'Massage Therapist'),
(5, 'Miya', 'Manicurist/Pedicurist'),
(6, 'Divina', 'Manicurist/Pedicurist');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedbackID` int(11) NOT NULL,
  `customerName` varchar(50) NOT NULL,
  `rate` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedbackID`, `customerName`, `rate`, `comment`) VALUES
(1, 'jp', 2, 'hdh');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `serviceID` int(11) NOT NULL,
  `Role` varchar(50) NOT NULL,
  `EmployeeName` varchar(50) NOT NULL,
  `CustomerName` varchar(50) NOT NULL,
  `ContactNumber` varchar(50) NOT NULL,
  `Age` int(11) NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `Services` varchar(50) NOT NULL,
  `Category` varchar(50) NOT NULL,
  `Price` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`serviceID`, `Role`, `EmployeeName`, `CustomerName`, `ContactNumber`, `Age`, `Gender`, `Services`, `Category`, `Price`) VALUES
(26, 'Hairstylist', 'Lea', 'hkkuk', '768686868', 77, 'Male', 'Body Treatment Services', 'Basic Manicure', '150.0'),
(27, 'Massage Therapist', 'Jessica', 'Jessen', '234234', 43242, 'Male', 'Body Treatment Services', 'Basic Manicure', '150.0'),
(28, 'Massage Therapist', 'Jessica', '434554', '4534', 4, 'Male', 'Body Treatment Services', 'Basic Manicure', '150.0'),
(29, 'Hairstylist', 'JESSICA', 'JPPPP', '4655', 45, 'Male', 'Hair Services', 'Basic Manicure', '150.0'),
(30, 'Manicurist/Pedicurist', 'MIYA', '4635', '636', 5, 'Female', 'Nail Services', 'Basic Pedicure', '200.0'),
(31, 'Massage Therapist', 'LEA', '5', '5', 5, 'Male', 'Body Treatment Services', 'Basic Manicure', '250.0'),
(32, 'Massage Therapist', 'LEA', '4', '4', 4, 'Male', 'Body Treatment Services', 'Basic Manicure', '200.0'),
(33, 'Manicurist/Pedicurist', 'MIYA', '4', '4', 4, 'Male', 'Nail Services', 'Basic Pedicure', '200.0'),
(34, 'Manicurist/Pedicurist', 'MIYA', '5', '5', 5, 'Male', 'Nail Services', 'Gel Pedicure', '250.0'),
(35, 'Manicurist/Pedicurist', 'MIYA', '6', '6', 6, 'Male', 'Nail Services', 'Basic Pedicure', '200.0'),
(36, 'Manicurist/Pedicurist', 'MIYA', '7', '7', 7, 'Male', 'Nail Services', 'Gel Manicure', '150.0'),
(37, 'Massage Therapist', 'LEA', '8', '8', 8, 'Male', 'Body Treatment Services', 'Basic Manicure', '200.0'),
(38, 'Massage Therapist', 'LEA', '8', '8', 8, 'Male', 'Body Treatment Services', 'Basic Manicure', '200.0'),
(39, 'Manicurist/Pedicurist', 'MIYA', '5', '5', 5, 'Male', 'Nail Services', 'Nail Extension', '300.0'),
(40, 'Manicurist/Pedicurist', 'MIYA', '2', '2', 2, 'Male', 'Nail Services', 'Basic Pedicure', '200.0'),
(41, 'Massage Therapist', 'LEA', '7', '77', 7, 'Male', 'Body Treatment Services', 'Basic Manicure', '200.0'),
(42, 'Manicurist/Pedicurist', 'MIYA', '8', '8', 8, 'Male', 'Nail Services', 'Basic Pedicure', '200.0'),
(43, 'Massage Therapist', 'LEA', '6', '6', 6, 'Male', 'Body Treatment Services', 'Basic Manicure', '200.0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customerinfo`
--
ALTER TABLE `customerinfo`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `employeeinfo`
--
ALTER TABLE `employeeinfo`
  ADD PRIMARY KEY (`employeeID`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedbackID`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`serviceID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customerinfo`
--
ALTER TABLE `customerinfo`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `employeeinfo`
--
ALTER TABLE `employeeinfo`
  MODIFY `employeeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedbackID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `serviceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
