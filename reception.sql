-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 18, 2020 at 07:43 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reception_ms`
--

-- --------------------------------------------------------

--
-- Table structure for table `reception`
--

DROP TABLE IF EXISTS `reception`;
CREATE TABLE IF NOT EXISTS `reception` (
  `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  `reception_reference_id` varchar(500) NOT NULL,
  `nic` varchar(500) NOT NULL,
  `first_name` varchar(500) NOT NULL,
  `last_name` varchar(500) NOT NULL,
  `address` varchar(500) NOT NULL,
  `username` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reception`
--

INSERT INTO `reception` (`id`, `reception_reference_id`, `nic`, `first_name`, `last_name`, `address`, `username`, `password`) VALUES
(10, '1a4f4', '67676v', 'saduni', 'gayara', 'hambantota', 'saduni', '123'),
(11, '04372', '33898v', 'hansi', 'tharumini', 'matara', 'hansi', 'hansi123'),
(12, '4abd6', '11212v', 'tharaka', 'nadeeshani', 'tangalle', 'tharu', 'tharu456'),
(14, '95dbc', '34343434', 'lihini', 'weerawardana', 'deniyaya', 'lihini', 'lihini123'),
(15, '775d8', '7676777', 'saduni', 'gayara', 'tangalle', 'saduni1', 'saduni123');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
