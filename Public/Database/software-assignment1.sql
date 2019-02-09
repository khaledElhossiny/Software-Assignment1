-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 08, 2019 at 09:13 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `software-assignment1`
--

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `PageId` int(11) NOT NULL AUTO_INCREMENT,
  `PhysicalAdrs` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `FriendlyName` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`PageId`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`PageId`, `PhysicalAdrs`, `FriendlyName`) VALUES
(1, '/Model/PageModel.php', 'AddPage'),
(2, '/View/dcsdfs.php', 'dhsdfs');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `UserTypeId` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Id`, `Name`, `Password`, `UserTypeId`) VALUES
(1, 'khaled', '1234', 1),
(2, 'Mina', '5678', 2),
(3, 'Daniel', '007123', 3),
(4, 'Mohamed', 'tito', 2),
(5, 'Ahmed', 'modi123', 3),
(6, 'Sara', 'sara@1998', 2),
(7, 'Rodina', 'rodi007', 2),
(8, 'Ali', '3elwa4321', 1),
(9, 'Karim', 'kimo13432', 2);

-- --------------------------------------------------------

--
-- Table structure for table `userpages`
--

DROP TABLE IF EXISTS `userpages`;
CREATE TABLE IF NOT EXISTS `userpages` (
  `UserTypeId` int(11) NOT NULL,
  `PageId` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usertype`
--

DROP TABLE IF EXISTS `usertype`;
CREATE TABLE IF NOT EXISTS `usertype` (
  `UserTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `UserType` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`UserTypeId`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `usertype`
--

INSERT INTO `usertype` (`UserTypeId`, `UserType`) VALUES
(1, 'Admin'),
(2, 'Student'),
(3, 'Teacher');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
