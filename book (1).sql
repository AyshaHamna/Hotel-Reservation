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
-- Database: `reserve_ms`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
CREATE TABLE IF NOT EXISTS `book` (
  `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  `book_reference_id` varchar(500) NOT NULL,
  `first_name` varchar(500) NOT NULL,
  `last_name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `phone_number` varchar(500) NOT NULL,
  `room_type` varchar(500) NOT NULL,
  `from_date` varchar(500) NOT NULL,
  `to_date` varchar(500) NOT NULL,
  `amount` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `book_reference_id`, `first_name`, `last_name`, `email`, `phone_number`, `room_type`, `from_date`, `to_date`, `amount`) VALUES
(10, '17f77', 'Tom', 'Zen', 'Tom@gmai', '07777', 'double', '20-05-2020', '23-05-2020', 4000),
(11, 'b6ff8', 'Ann', 'Jenny', 'ann@gmail', '078887', 'single', '15-05-2020', '17-05-2020', 2000),
(12, '27b4e', 'saduni', 'gayara', 'saduni@gmail', '0773433434', 'double', '2020-05-01', '2020-05-04', 6000),
(14, '7b7b3', 'Mary ', 'Anny', 'mary@gmail.com', '0773433434', 'single', '2020-05-04', '2020-05-06', 2000),
(16, 'ab1f5', 'hansika', 'tharumini', 'hansi@gmail.com', '0732388578', 'double', '2020-05-04', '2020-05-06', 4000),
(17, 'b840d', 'hansika', 'tharumini', 'hansi@gmail.com', '0732388578', 'double', '2020-05-04', '2020-05-06', 4000),
(18, '7b4c5', 'Aysha', 'Hamna', 'hamna@gmail.com', '0773873434', 'double', '2020-07-14', '2020-07-16', 4000),
(19, '27e43', 'Aysha', 'Hamna', 'hamna@gmail.com', '0777733434', 'double', '2020-07-14', '2020-07-16', 4000),
(26, '83db9', 'Aysha', 'Hamna', 'hamii@gmail.com', '0773433434', 'single', '2020-07-13', '2020-07-15', 2000);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
