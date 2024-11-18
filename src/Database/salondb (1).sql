-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2024 at 11:45 AM
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
(1, 'ewe', '3', 1, 'Female');

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
(4, 'Ynnah', 'Massage Therapist'),
(5, 'Miya', 'Manicurist/Pedicurist');

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
(1, 'Hairstylist', 'Paula', 'hp', '0908080', 55, 'Male', 'Hair Services:', 'Special Haircut     ₱150.0', '0'),
(2, 'Hairstylist', 'Jessica', 'Jessa', '0910239123', 22, 'Female', 'Hair Services:', 'Special Haircut     ₱150.0', '0'),
(3, 'Manicurist/Pedicurist', 'Paula', '454', 'wrrwg', 444, 'Male', 'Body Treatment Services:', 'Classic Rebond', '200'),
(4, 'Hairstylist', 'Lea', 'sdad', '09483348324', 13, 'Male', 'Body Treatment Services:', 'Haircut', ''),
(5, 'Hairstylist', 'Miya', 'lei', '0985757576', 16, 'Female', 'Nail Services:', 'Haircut', ''),
(6, 'Hairstylist', 'Jessica', 'leis', '0912333441', 12, 'Female', 'Hair Services:', 'Scalp Treatment', '₱250'),
(7, 'Hairstylist', 'Lea', 'lei', '09132321', 12, 'Female', 'Hair Services:', 'Special Haircut', '150.0'),
(8, 'Hairstylist', 'Paula', 'jp', '0909', 88, 'Male', 'Hair Services:', 'Special Haircut', '150.0'),
(9, 'Manicurist/Pedicurist', 'Paula', 'jp', '44', 54, 'Male', 'Hair Services:', 'Special Haircut', '150.0'),
(10, 'Hairstylist', 'Lea', 'jp', '4543', 43, 'Male', 'Hair Services:', 'Special Haircut', '150.0'),
(11, 'Massage Therapist', 'Paula', 'jp', '779', 88, 'Male', 'Hair Services:', 'Special Haircut', '150.0'),
(12, 'Hairstylist', 'Paula', 'jp', '36354', 45, 'Male', 'Hair Services:', 'Special Haircut', '150.0'),
(13, 'Hairstylist', 'Paula', 'jp', '54', 4564, 'Male', 'Hair Services:', 'Special Haircut', '150.0'),
(14, 'Hairstylist', 'Paula', 'jp', '454', 45, 'Male', 'Hair Services:', 'Classic Rebond', '200.0'),
(15, 'Hairstylist', 'Jessica', 'lk', '0999', 9, 'Male', 'Hair Services:', 'Haircut', '100.0'),
(16, 'Hairstylist', 'Paula', 'slwi', '096525', 11, 'Male', 'Hair Services:', 'Special Haircut', '150.0'),
(17, 'Hairstylist', 'Jessica', 'kj', '98', 8, 'Male', 'Hair Services:', 'Special Haircut', '150.0'),
(18, 'Hairstylist', 'Jessica', 'ewe', '3', 1, 'Female', 'Hair Services:', 'Special Haircut', '150.0');

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
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employeeinfo`
--
ALTER TABLE `employeeinfo`
  MODIFY `employeeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `serviceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
