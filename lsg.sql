-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2022 at 05:24 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lsg`
--

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `name` varchar(255) NOT NULL,
  `amount` int(50) NOT NULL,
  `description` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `experience`
--

CREATE TABLE `experience` (
  `location` text NOT NULL,
  `hotel` int(50) NOT NULL,
  `fuel` int(15) NOT NULL,
  `misc` int(15) NOT NULL,
  `spent` int(11) NOT NULL,
  `went` int(11) NOT NULL,
  `yourexp` varchar(500) NOT NULL,
  `image` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `experience`
--

INSERT INTO `experience` (`location`, `hotel`, `fuel`, `misc`, `spent`, `went`, `yourexp`, `image`) VALUES
('delhi', 3000, 2000, 500, 5, 6, 'very cool', 0x75706c6f61642f74672e6a7067),
('manali', 4568, 2000, 457, 3, 13, 'beatfl', 0x75706c6f61642f73696b6b696d2e706e67),
('delhi', 5000, 500, 500, 3, 6, 'beatfl', 0x75706c6f61642f71757475622e706e67);

-- --------------------------------------------------------

--
-- Table structure for table `tourguide`
--

CREATE TABLE `tourguide` (
  `number` int(5) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(25) NOT NULL,
  `location` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tourguide`
--

INSERT INTO `tourguide` (`number`, `name`, `email`, `password`, `location`, `image`) VALUES
(1, 'joba', 'job3@gmail.com', 'c4ca4238a0b923820dcc509a6', 'delhi', ''),
(2, 'A', 'a@a.com', 'c4ca4238a0b923820dcc509a6', 'agra', ''),
(3, 'tg', 'tg1@tg.com', 'c4ca4238a0b923820dcc509a6', 'delhi', ''),
(4, 'tg', 'tg2@tg.com', 'c4ca4238a0b923820dcc509a6', 'delhi', ''),
(5, 'job1', 'ks@ks.com', 'c4ca4238a0b923820dcc509a6', 'delhi', ''),
(6, 'aa', 'aa@aa', '1', 'delhi', ''),
(7, 'k', 'k@k.com', '2', 'delhi', ''),
(8, 'tg', 'tg3@tg.com', '1', 'delhi', ''),
(9, 'ak', 'ak@gmail.com', '1', 'delhi', ''),
(10, 'kshitij', 'kshitijohri0101@gmail.com', 'Sahil@0101', 'Noida', ''),
(11, 'tg', 'e@e.com', 'Asdf123@', 'delhi', '');

-- --------------------------------------------------------

--
-- Table structure for table `tourist`
--

CREATE TABLE `tourist` (
  `number` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tourist`
--

INSERT INTO `tourist` (`number`, `name`, `email`, `password`) VALUES
(1, 'job1', 'job1@gmail.com', '202cb962ac59075b964b07152d234b70'),
(11, 'hello', 'h@h.com', '62555a8749bfa2d2e6430e5437ea22dd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tourguide`
--
ALTER TABLE `tourguide`
  ADD PRIMARY KEY (`number`);

--
-- Indexes for table `tourist`
--
ALTER TABLE `tourist`
  ADD PRIMARY KEY (`number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tourguide`
--
ALTER TABLE `tourguide`
  MODIFY `number` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tourist`
--
ALTER TABLE `tourist`
  MODIFY `number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
