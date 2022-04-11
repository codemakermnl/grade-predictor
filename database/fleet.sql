-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2021 at 07:04 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fleet`
--
CREATE DATABASE IF NOT EXISTS `fleet` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `fleet`;

-- --------------------------------------------------------

--
-- Table structure for table `consumption`
--

CREATE TABLE `consumption` (
  `consumption_id` int(10) NOT NULL,
  `date` date NOT NULL,
  `driver_name` varchar(1000) NOT NULL,
  `vehicle_model_plate` varchar(255) NOT NULL,
  `consumption` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `consumption`
--

INSERT INTO `consumption` (`consumption_id`, `date`, `driver_name`, `vehicle_model_plate`, `consumption`) VALUES
(1, '2021-08-23', 'driver name Consumption ', 'Consumption 123', 200.69),
(2, '2021-08-15', 'sdfasdf', 'asdfasdf', 1231231),
(3, '2021-08-16', 'asdfasdfasdf', 'asdfasfasdf', 1200);

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `driver_id` int(10) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `address` longtext NOT NULL,
  `birth_date` date NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `license_no` varchar(255) NOT NULL,
  `license_expiration` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`driver_id`, `name`, `address`, `birth_date`, `contact_number`, `license_no`, `license_expiration`) VALUES
(1, 'sdfasdfas', 'asdfasdfasdf', '2021-10-28', '123123123', 'asdfasdfas1234', '2021-10-26');

-- --------------------------------------------------------

--
-- Table structure for table `maintenance`
--

CREATE TABLE `maintenance` (
  `maintenance_id` int(10) NOT NULL,
  `date` date NOT NULL,
  `driver_name` varchar(1000) NOT NULL,
  `vehicle_model_plate` varchar(255) NOT NULL,
  `finished_maintenance` varchar(1000) NOT NULL,
  `maintenance_cost` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `maintenance`
--

INSERT INTO `maintenance` (`maintenance_id`, `date`, `driver_name`, `vehicle_model_plate`, `finished_maintenance`, `maintenance_cost`) VALUES
(1, '2021-08-15', 'driver name Maintenance', 'Maintenance 123123', 'sadfasdfasdfasdf', 20000),
(2, '2021-08-23', 'asdfasdf', 'asdfasd', 'fasdfasdf', 12313);

-- --------------------------------------------------------

--
-- Table structure for table `mileage`
--

CREATE TABLE `mileage` (
  `mileage_id` int(10) NOT NULL,
  `date` date NOT NULL,
  `driver_name` varchar(1000) NOT NULL,
  `vehicle_model_plate` varchar(255) NOT NULL,
  `mileage` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mileage`
--

INSERT INTO `mileage` (`mileage_id`, `date`, `driver_name`, `vehicle_model_plate`, `mileage`) VALUES
(1, '2021-08-15', 'driver name mileage', 'AHSD123', 123.123);

-- --------------------------------------------------------

--
-- Table structure for table `renewal`
--

CREATE TABLE `renewal` (
  `renewal_id` int(10) NOT NULL,
  `date` date NOT NULL,
  `driver_name` varchar(1000) NOT NULL,
  `vehicle_model_plate` varchar(255) NOT NULL,
  `expiration` date NOT NULL,
  `request_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `renewal`
--

INSERT INTO `renewal` (`renewal_id`, `date`, `driver_name`, `vehicle_model_plate`, `expiration`, `request_date`) VALUES
(1, '2021-08-22', 'driver name Renewal', 'Renewal 123', '2021-08-31', '2021-09-02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(10) NOT NULL,
  `username` varchar(1000) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `position_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `position_id`) VALUES
(1, 'admin', '8308651804facb7b9af8ffc53a33a22d6a1c8ac2', 1),
(2, 'driver', '8308651804facb7b9af8ffc53a33a22d6a1c8ac2', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_position`
--

CREATE TABLE `user_position` (
  `position_id` int(10) NOT NULL,
  `position_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_position`
--

INSERT INTO `user_position` (`position_id`, `position_name`) VALUES
(1, 'Admin'),
(2, 'Driver');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `vehicle_id` int(11) NOT NULL,
  `date_purchased` date NOT NULL,
  `vehicle_model_plate` varchar(255) NOT NULL,
  `year_model` int(11) NOT NULL,
  `vehicle_or` varchar(255) NOT NULL,
  `amount` double NOT NULL,
  `donated_by` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`vehicle_id`, `date_purchased`, `vehicle_model_plate`, `year_model`, `vehicle_or`, `amount`, `donated_by`) VALUES
(1, '2021-10-29', 'sdfasd', 2021, 'sdfs123', 2000, 'test'),
(2, '2021-10-20', 'sdf', 2016, 'asdasdf', 222222, 'sdfasdfsadf');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_issue`
--

CREATE TABLE `vehicle_issue` (
  `issue_id` int(10) NOT NULL,
  `date` date NOT NULL,
  `driver_name` varchar(1000) NOT NULL,
  `vehicle_model_plate` varchar(255) NOT NULL,
  `vehicle_issue` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_issue`
--

INSERT INTO `vehicle_issue` (`issue_id`, `date`, `driver_name`, `vehicle_model_plate`, `vehicle_issue`) VALUES
(1, '2021-08-16', 'driver name Vehicle Issue', 'Vehicle Issue123123', 'sira usjkmfnaksdhfnk');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `consumption`
--
ALTER TABLE `consumption`
  ADD PRIMARY KEY (`consumption_id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`driver_id`);

--
-- Indexes for table `maintenance`
--
ALTER TABLE `maintenance`
  ADD PRIMARY KEY (`maintenance_id`);

--
-- Indexes for table `mileage`
--
ALTER TABLE `mileage`
  ADD PRIMARY KEY (`mileage_id`);

--
-- Indexes for table `renewal`
--
ALTER TABLE `renewal`
  ADD PRIMARY KEY (`renewal_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `position_id` (`position_id`);

--
-- Indexes for table `user_position`
--
ALTER TABLE `user_position`
  ADD PRIMARY KEY (`position_id`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`vehicle_id`);

--
-- Indexes for table `vehicle_issue`
--
ALTER TABLE `vehicle_issue`
  ADD PRIMARY KEY (`issue_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `consumption`
--
ALTER TABLE `consumption`
  MODIFY `consumption_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `driver_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `maintenance`
--
ALTER TABLE `maintenance`
  MODIFY `maintenance_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mileage`
--
ALTER TABLE `mileage`
  MODIFY `mileage_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `renewal`
--
ALTER TABLE `renewal`
  MODIFY `renewal_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_position`
--
ALTER TABLE `user_position`
  MODIFY `position_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `vehicle_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vehicle_issue`
--
ALTER TABLE `vehicle_issue`
  MODIFY `issue_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
