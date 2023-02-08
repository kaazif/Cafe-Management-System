-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20230116.e2bda4fb48
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2023 at 12:00 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `mobileNumber` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `total` varchar(200) DEFAULT NULL,
  `createdBy` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`id`, `name`, `mobileNumber`, `email`, `date`, `total`, `createdBy`) VALUES
(1, 'Kaazif', '1234567890', 'kaazif@gmail.com', '08-02-2023', '5200', 'admin@gmail.com'),
(2, 'kaazif', '1234567890', 'kaazif@gmail.com', '08-02-2023', '200', 'null'),
(3, 'kaazif', '1234567890', 'kaazif@gmail.com', '08-02-2023', '1200', 'admin@gmail.com'),
(4, 'kaazif', '1233333333', 'kaazif@gmail.com', '08-02-2023', '2400', 'admin@gmail.com'),
(5, 'kaazif', '1111111111', 'kaazif@gmail.com', '08-02-2023', '1800', 'admin@gmail.com'),
(6, 'kaazif', '1111111111', 'kaazif@gmail.com', '08-02-2023', '1800', 'null'),
(7, 'kaazif', '1222222221', 'kaazif@gmail.com', '08-02-2023', '1400', 'kaazif@gmail.com'),
(8, 'kaazif', '1111111111', 'kaazif@gmail.com', '09-02-2023', '1000', 'admin@gmail.com'),
(9, 'kaazif', '1111111111', 'kaazif@gmail.com', '09-02-2023', '100', 'admin@gmail.com'),
(10, 'kaazif', '1111111111', 'kaazif@gmail.com', '09-02-2023', '300', 'null'),
(11, 'kaazif', '1111111111', 'kaazif@gmail.com1', '09-02-2023', '200', 'kaazif@gmail.com'),
(12, 'qwewqwqwq', '1111111111', 'kaazif@gmail.com', '09-02-2023', '200', 'null'),
(13, '1233321', '1111111111', 'admin@gmail.com', '09-02-2023', '100', 'admin@gmail.com'),
(14, 'kaazif', '1111111111', 'kaazif@gmail.com', '09-02-2023', '10000', 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(4, 'tea'),
(5, 'Soup'),
(6, 'cake');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `category` varchar(200) DEFAULT NULL,
  `price` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `category`, `price`) VALUES
(1, 'Bean', 'Soup', '200'),
(4, 'Black', 'tea', '100'),
(5, 'Chocolate', 'cake', '2000');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `mobileNumber` varchar(10) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `securityQuestion` varchar(200) DEFAULT NULL,
  `answer` varchar(200) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `mobileNumber`, `Address`, `password`, `securityQuestion`, `answer`, `status`) VALUES
(1, 'kaazif', 'kaazif@gmail.com', '0778551281', 'america', '123', 'what', 'tom', 'true'),
(2, 'Admin', 'admin@gmail.com', '1234567890', 'Srilanka', 'admin', 'what Primary School did you attend?', 'tom', 'true'),
(3, 'testcafe', 'cafemanagement@gmail.com', '1234567890', 'america', '123', 'what is ur name?', 'testcafe', 'true'),
(4, 'Test', 'testcafe@gmail.com', '1234567890', 'Sri lanka', 'test', 'cafetest', 'cafetest', 'false');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
