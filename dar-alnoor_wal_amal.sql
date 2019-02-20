-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 20, 2019 at 03:46 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dar-alnoor_wal_amal`
--

-- --------------------------------------------------------

--
-- Table structure for table `internal_people`
--

DROP TABLE IF EXISTS `internal_people`;
CREATE TABLE IF NOT EXISTS `internal_people` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nat_Id` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `Profile_Img` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `Education` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `Birth_Cert` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `Age` int(11) NOT NULL,
  `Telephone_Id` int(11) NOT NULL,
  `Address_Id` int(11) NOT NULL,
  `Check_In_Date` date NOT NULL,
  `Check_In_Reason` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `Check_Out_Date` date NOT NULL,
  `Check_Out_Reason` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `Medical_Report` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Telephone_Id` (`Telephone_Id`),
  KEY `Address_Id` (`Address_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
CREATE TABLE IF NOT EXISTS `order_details` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Order_Id` int(11) NOT NULL,
  `Product_ID` int(11) NOT NULL,
  `Amount` int(11) NOT NULL,
  `Total_Price_Per_Item` float NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Product_ID` (`Product_ID`),
  KEY `Order_Id` (`Order_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_reason`
--

DROP TABLE IF EXISTS `order_reason`;
CREATE TABLE IF NOT EXISTS `order_reason` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Reason` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_table`
--

DROP TABLE IF EXISTS `order_table`;
CREATE TABLE IF NOT EXISTS `order_table` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Reason_Id` int(11) NOT NULL,
  `Time` datetime NOT NULL,
  `Total_Price` float NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Order_Reason_Id` (`Reason_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`PageId`, `PhysicalAdrs`, `FriendlyName`) VALUES
(1, '/Model/PageModel.php', 'AddPage'),
(2, '/View/dcsdfs.php', 'dhsdfs');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `Price` float NOT NULL,
  `Amount` int(11) NOT NULL,
  `Category_Id` int(11) NOT NULL,
  `Exp_Date` date NOT NULL,
  `Buying_Date` date NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Category` (`Category_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ID`, `Name`, `Price`, `Amount`, `Category_Id`, `Exp_Date`, `Buying_Date`) VALUES
(1, 'ارز ضحي', 20, 250, 2, '2019-12-25', '2019-02-19'),
(2, 'لبن جهينة', 14, 100, 6, '2019-12-18', '2019-02-11');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
CREATE TABLE IF NOT EXISTS `product_category` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`ID`, `Name`) VALUES
(2, 'حبوب'),
(3, 'لحوم'),
(4, 'خضروات'),
(5, 'اسماك'),
(6, 'البان');

-- --------------------------------------------------------

--
-- Table structure for table `telephone`
--

DROP TABLE IF EXISTS `telephone`;
CREATE TABLE IF NOT EXISTS `telephone` (
  `Tel_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Resident_Id` int(11) NOT NULL,
  `Tel_No` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Tel_Id`),
  KEY `Resident_Id` (`Resident_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `telephone`
--

INSERT INTO `telephone` (`Tel_Id`, `Resident_Id`, `Tel_No`) VALUES
(3, 1, '0111'),
(4, 1, '012222');

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
  PRIMARY KEY (`Id`),
  KEY `UserTypeId` (`UserTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(8, 'Ali', '3elwa4321', 1);

-- --------------------------------------------------------

--
-- Table structure for table `userpages`
--

DROP TABLE IF EXISTS `userpages`;
CREATE TABLE IF NOT EXISTS `userpages` (
  `UserTypeId` int(11) NOT NULL,
  `PageId` int(11) NOT NULL,
  KEY `PageId` (`PageId`),
  KEY `UserTypeId` (`UserTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usertype`
--

DROP TABLE IF EXISTS `usertype`;
CREATE TABLE IF NOT EXISTS `usertype` (
  `UserTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `UserType` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`UserTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `usertype`
--

INSERT INTO `usertype` (`UserTypeId`, `UserType`) VALUES
(1, 'Admin'),
(2, 'Student'),
(3, 'Teacher');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `internal_people`
--
ALTER TABLE `internal_people`
  ADD CONSTRAINT `internal_people_ibfk_1` FOREIGN KEY (`Telephone_Id`) REFERENCES `telephone` (`Tel_Id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`ID`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`Order_Id`) REFERENCES `order_table` (`ID`);

--
-- Constraints for table `order_table`
--
ALTER TABLE `order_table`
  ADD CONSTRAINT `order_table_ibfk_1` FOREIGN KEY (`Reason_Id`) REFERENCES `order_reason` (`ID`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`Category_Id`) REFERENCES `product_category` (`ID`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`UserTypeId`) REFERENCES `usertype` (`UserTypeId`);

--
-- Constraints for table `userpages`
--
ALTER TABLE `userpages`
  ADD CONSTRAINT `userpages_ibfk_1` FOREIGN KEY (`UserTypeId`) REFERENCES `usertype` (`UserTypeId`),
  ADD CONSTRAINT `userpages_ibfk_2` FOREIGN KEY (`PageId`) REFERENCES `pages` (`PageId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
