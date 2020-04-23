-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 23, 2020 at 08:14 AM
-- Server version: 10.3.22-MariaDB-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anomozco_wp585`
--

-- --------------------------------------------------------

--
-- Table structure for table `ro_clientKeys`
--

CREATE TABLE `ro_clientKeys` (
  `id` int(32) NOT NULL,
  `userId` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clientId` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ro_clientKeys`
--

INSERT INTO `ro_clientKeys` (`id`, `userId`, `clientId`) VALUES
(1, 'ahsan123', 'a1b2c3clientkey');

-- --------------------------------------------------------

--
-- Table structure for table `ro_clients`
--

CREATE TABLE `ro_clients` (
  `clientId` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ro_customers`
--

CREATE TABLE `ro_customers` (
  `custId` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clientId` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ro_customers`
--

INSERT INTO `ro_customers` (`custId`, `name`, `email`, `password`, `clientId`, `id`) VALUES
('', '', '', '', '', 1),
('', '', '', '', '', 2),
('', '', '', '', '', 3),
('c1', 'c1 name', '', '', 'a1b2c3clientkey', 4);

-- --------------------------------------------------------

--
-- Table structure for table `ro_resturants`
--

CREATE TABLE `ro_resturants` (
  `id` int(32) NOT NULL,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resturantId` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clientId` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ro_resturants`
--

INSERT INTO `ro_resturants` (`id`, `name`, `email`, `password`, `resturantId`, `clientId`) VALUES
(1, '', '', '', '', ''),
(2, '', '', '', '', ''),
(3, '', '', '', '', ''),
(4, '', '', '', '', ''),
(5, 'r1 name', '', '', 'r1', 'a1b2c3clientkey'),
(6, 'r2 name', '', '', 'r2', 'a1b2c3clientkey'),
(7, '', '', '', '', 'a1b2c3clientkey');

-- --------------------------------------------------------

--
-- Table structure for table `ro_serverKeys`
--

CREATE TABLE `ro_serverKeys` (
  `id` int(32) NOT NULL,
  `userId` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serverKey` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ro_wallet`
--

CREATE TABLE `ro_wallet` (
  `id` int(32) NOT NULL,
  `userId` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `resturantId` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `points` int(128) NOT NULL,
  `clientId` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId_resId` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ro_wallet`
--

INSERT INTO `ro_wallet` (`id`, `userId`, `resturantId`, `points`, `clientId`, `userId_resId`) VALUES
(1, 'c1', 'r1', 59, 'a1b2c3clientkey', '12sd'),
(2, '12', 'r1', 19, 'qweqew', 'a8f5f167f44f4964e6c998dee827110c-a8f5f167f44f4964e6c998dee827110c-a8f5f167f44f4964e6c998dee827110c\r\n'),
(3, 'c132', 'r1', 19, 'qweqew', 'klansd'),
(0, 'c1', 'r2', 0, 'a1b2c3clientkey', 'lknasd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ro_clientKeys`
--
ALTER TABLE `ro_clientKeys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ro_customers`
--
ALTER TABLE `ro_customers`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `ro_resturants`
--
ALTER TABLE `ro_resturants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ro_serverKeys`
--
ALTER TABLE `ro_serverKeys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ro_wallet`
--
ALTER TABLE `ro_wallet`
  ADD PRIMARY KEY (`userId_resId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ro_clientKeys`
--
ALTER TABLE `ro_clientKeys`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ro_customers`
--
ALTER TABLE `ro_customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ro_resturants`
--
ALTER TABLE `ro_resturants`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ro_serverKeys`
--
ALTER TABLE `ro_serverKeys`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
