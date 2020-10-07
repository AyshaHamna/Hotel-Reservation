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
-- Database: `contact_ms`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  `contact_reference_id` varchar(500) NOT NULL,
  `name` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `message` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `contact_reference_id`, `name`, `email`, `subject`, `message`) VALUES
(100, 'c100', 'hamna', 'hamna@gmail', 'test1', 'new insert added.'),
(101, 'baf95', 'hansi', 'hansi@gmail', 'test2', 'check post method.'),
(102, '27c16', 'hamii', 'hamii@gmail', '3rd Test', 'insert via jsp'),
(103, '6cc21', 'hamii', 'hamii@gmail', '2nd Try', 'insert via jsp'),
(104, 'b4a40', 'hamna', 'hamna@gmail.com', '6th Test', 'insert via jsp'),
(105, '1aff8', 'hamna111', 'ddd@sss', 'ddd', 'sss'),
(106, 'e5e27', '', '', '', ''),
(107, '27306', 'ssss', '', 'dfdfd', 'dfdfdf'),
(108, 'eb542', 'Ann', 'ann@gmail', 'Testing', 'Trying out break points'),
(109, '90aee', 'hamii', 'hamii@gmail', 'April Test', 'Testing'),
(110, 'afd77', 'John', 'john@gmail.com', 'Experience', 'The experience was really good');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
