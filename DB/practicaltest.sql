-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: May 03, 2020 at 06:43 PM
-- Server version: 8.0.18
-- PHP Version: 7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `practicaltest`
--

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

DROP TABLE IF EXISTS `hospital`;
CREATE TABLE IF NOT EXISTS `hospital` (
  `hospitalID` int(200) NOT NULL AUTO_INCREMENT,
  `hospitalName` varchar(200) NOT NULL,
  `hospitalAddress` varchar(200) NOT NULL,
  `hospitalPhone` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hospitalUsername` varchar(200) NOT NULL,
  `hospitalPassword` varchar(200) NOT NULL,
  `appointmentCharge` double NOT NULL,
  PRIMARY KEY (`hospitalID`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`hospitalID`, `hospitalName`, `hospitalAddress`, `hospitalPhone`, `hospitalUsername`, `hospitalPassword`, `appointmentCharge`) VALUES
(1, 'Asiri', 'No.114', '0114665500', 'asiri123', 'asiabc1', 2500);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
