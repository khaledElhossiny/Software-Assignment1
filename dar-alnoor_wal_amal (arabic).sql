-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 20, 2019 at 07:00 PM
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
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
CREATE TABLE IF NOT EXISTS `cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gov_id` int(11) NOT NULL,
  `city_name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=251 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `gov_id`, `city_name`) VALUES
(1, 1, 'القاهره'),
(2, 2, 'الجيزة'),
(3, 2, 'السادس من أكتوبر'),
(4, 2, 'الشيخ زايد\r\n'),
(5, 2, 'الحوامدية'),
(6, 2, 'البدرشين'),
(7, 2, 'الصف'),
(8, 2, 'أطفيح'),
(9, 2, 'العياط'),
(10, 2, 'الباويطي'),
(11, 2, 'منشأة القناطر'),
(12, 2, 'أوسيم'),
(13, 2, 'كرداسة'),
(14, 2, 'أبو النمرس'),
(15, 2, 'كفر غطاطي'),
(16, 2, 'منشأة البكاري'),
(17, 3, 'الأسكندرية'),
(18, 3, 'برج العرب'),
(19, 3, 'برج العرب الجديدة'),
(20, 12, 'بنها'),
(21, 12, 'قليوب'),
(22, 12, 'شبرا الخيمة'),
(23, 12, 'القناطر الخيرية'),
(24, 12, 'الخانكة'),
(25, 12, 'كفر شكر'),
(26, 12, 'طوخ'),
(27, 12, 'قها'),
(28, 12, 'العبور'),
(29, 12, 'الخصوص'),
(30, 12, 'شبين القناطر'),
(31, 6, 'دمنهور'),
(32, 6, 'كفر الدوار'),
(33, 6, 'رشيد'),
(34, 6, 'إدكو'),
(35, 6, 'أبو المطامير'),
(36, 6, 'أبو حمص'),
(37, 6, 'الدلنجات'),
(38, 6, 'المحمودية'),
(39, 6, 'الرحمانية'),
(40, 6, 'إيتاي البارود'),
(41, 6, 'حوش عيسى'),
(42, 6, 'شبراخيت'),
(43, 6, 'كوم حمادة'),
(44, 6, 'بدر'),
(45, 6, 'وادي النطرون'),
(46, 6, 'النوبارية الجديدة'),
(47, 23, 'مرسى مطروح'),
(48, 23, 'الحمام'),
(49, 23, 'العلمين'),
(50, 23, 'الضبعة'),
(51, 23, 'النجيلة'),
(52, 23, 'سيدي براني'),
(53, 23, 'السلوم'),
(54, 23, 'سيوة'),
(55, 19, 'دمياط'),
(56, 19, 'دمياط الجديدة'),
(57, 19, 'رأس البر'),
(58, 19, 'فارسكور'),
(59, 19, 'الزرقا'),
(60, 19, 'السرو'),
(61, 19, 'الروضة'),
(62, 19, 'كفر البطيخ'),
(63, 19, 'عزبة البرج'),
(64, 19, 'ميت أبو غالب'),
(65, 19, 'كفر سعد'),
(66, 4, 'المنصورة'),
(67, 4, 'طلخا'),
(68, 4, 'ميت غمر'),
(69, 4, 'دكرنس'),
(70, 4, 'أجا'),
(71, 4, 'منية النصر'),
(72, 4, 'السنبلاوين'),
(73, 4, 'الكردي'),
(74, 4, 'بني عبيد'),
(75, 4, 'المنزلة'),
(76, 4, 'تمي الأمديد'),
(77, 4, 'الجمالية'),
(78, 4, 'شربين'),
(79, 4, 'المطرية'),
(80, 4, 'بلقاس'),
(81, 4, 'ميت سلسيل'),
(82, 4, 'جمصة'),
(83, 4, 'محلة دمنة'),
(84, 4, 'نبروه'),
(85, 22, 'كفر الشيخ'),
(86, 22, 'دسوق'),
(87, 22, 'فوه'),
(88, 22, 'مطوبس'),
(89, 22, 'برج البرلس'),
(90, 22, 'بلطيم'),
(91, 22, 'مصيف بلطيم'),
(92, 22, 'الحامول'),
(93, 22, 'بيلا'),
(94, 22, 'الرياض'),
(95, 22, 'سيدي سالم'),
(96, 22, 'قلين'),
(97, 22, 'سيدي غازي'),
(98, 8, 'طنطا'),
(99, 8, 'المحلة الكبرى'),
(100, 8, 'كفر الزيات'),
(101, 8, 'زفتى'),
(102, 8, 'السنطة'),
(103, 8, 'قطور'),
(104, 8, 'بسيون'),
(105, 8, 'سمنود'),
(106, 10, 'شبين الكوم'),
(107, 10, 'مدينة السادات'),
(108, 10, 'منوف'),
(109, 10, 'سرس الليان'),
(110, 10, 'أشمون'),
(111, 10, 'الباجور'),
(112, 10, 'قويسنا'),
(113, 10, 'بركة السبع'),
(114, 10, 'تلا'),
(115, 10, 'الشهداء'),
(116, 20, 'الزقازيق'),
(117, 20, 'العاشر من رمضان'),
(118, 20, 'منيا القمح'),
(119, 20, 'بلبيس'),
(120, 20, 'مشتول السوق'),
(121, 20, 'القنايات'),
(122, 20, 'أبو حماد'),
(123, 20, 'القرين'),
(124, 20, 'ههيا'),
(125, 20, 'أبو كبير'),
(126, 20, 'فاقوس'),
(127, 20, 'الصالحية الجديدة'),
(128, 20, 'الإبراهيمية'),
(129, 20, 'ديرب نجم'),
(130, 20, 'كفر صقر'),
(131, 20, 'أولاد صقر'),
(132, 20, 'الحسينية'),
(133, 20, 'صان الحجر القبلية'),
(134, 20, 'منشأة أبو عمر'),
(135, 18, 'بورسعيد'),
(136, 18, 'بورفؤاد'),
(137, 9, 'الإسماعيلية'),
(138, 9, 'فايد'),
(139, 9, 'القنطرة شرق'),
(140, 9, 'القنطرة غرب'),
(141, 9, 'التل الكبير'),
(142, 9, 'أبو صوير'),
(143, 9, 'القصاصين الجديدة'),
(144, 14, 'السويس'),
(145, 26, 'العريش'),
(146, 26, 'الشيخ زويد'),
(147, 26, 'نخل'),
(148, 26, 'رفح'),
(149, 26, 'بئر العبد'),
(150, 26, 'الحسنة'),
(151, 21, 'الطور'),
(152, 21, 'شرم الشيخ'),
(153, 21, 'دهب'),
(154, 21, 'نويبع'),
(155, 21, 'طابا'),
(156, 21, 'سانت كاترين'),
(157, 21, 'أبو رديس'),
(158, 21, 'أبو زنيمة'),
(159, 21, 'رأس سدر'),
(160, 17, 'بني سويف'),
(161, 17, 'بني سويف الجديدة'),
(162, 17, 'الواسطى'),
(163, 17, 'ناصر'),
(164, 17, 'إهناسيا'),
(165, 17, 'ببا'),
(166, 17, 'الفشن'),
(167, 17, 'سمسطا'),
(168, 7, 'الفيوم'),
(169, 7, 'الفيوم الجديدة'),
(170, 7, 'طامية'),
(171, 7, 'سنورس'),
(172, 7, 'إطسا'),
(173, 7, 'إبشواي'),
(174, 7, 'يوسف الصديق'),
(175, 11, 'المنيا'),
(176, 11, 'المنيا الجديدة'),
(177, 11, 'العدوة'),
(178, 11, 'مغاغة'),
(179, 11, 'بني مزار'),
(180, 11, 'مطاي'),
(181, 11, 'سمالوط'),
(182, 11, 'المدينة الفكرية'),
(183, 11, 'ملوي'),
(184, 11, 'دير مواس'),
(185, 16, 'أسيوط'),
(186, 16, 'أسيوط الجديدة'),
(187, 16, 'ديروط'),
(188, 16, 'منفلوط'),
(189, 16, 'القوصية'),
(190, 16, 'أبنوب'),
(191, 16, 'أبو تيج'),
(192, 16, 'الغنايم'),
(193, 16, 'ساحل سليم'),
(194, 16, 'البداري'),
(195, 16, 'صدفا'),
(196, 13, 'الخارجة'),
(197, 13, 'باريس'),
(198, 13, 'موط'),
(199, 13, 'الفرافرة'),
(200, 13, 'بلاط'),
(201, 5, 'الغردقة'),
(202, 5, 'رأس غارب'),
(203, 5, 'سفاجا'),
(204, 5, 'القصير'),
(205, 5, 'مرسى علم'),
(206, 5, 'الشلاتين'),
(207, 5, 'حلايب'),
(208, 27, 'سوهاج'),
(209, 27, 'سوهاج الجديدة'),
(210, 27, 'أخميم'),
(211, 27, 'أخميم الجديدة'),
(212, 27, 'البلينا'),
(213, 27, 'المراغة'),
(214, 27, 'المنشأة'),
(215, 27, 'دار السلام'),
(216, 27, 'جرجا'),
(217, 27, 'جهينة الغربية'),
(218, 27, 'ساقلته'),
(219, 27, 'طما'),
(220, 27, 'طهطا'),
(221, 25, 'قنا'),
(222, 25, 'قنا الجديدة'),
(223, 25, 'أبو تشت'),
(224, 25, 'نجع حمادي'),
(225, 25, 'دشنا'),
(226, 25, 'الوقف'),
(227, 25, 'قفط'),
(228, 25, 'نقادة'),
(229, 25, 'فرشوط'),
(230, 25, 'قوص'),
(231, 24, 'الأقصر'),
(232, 24, 'الأقصر الجديدة'),
(233, 24, 'إسنا'),
(234, 24, 'طيبة الجديدة'),
(235, 24, 'الزينية'),
(236, 24, 'البياضية'),
(237, 24, 'القرنة'),
(238, 24, 'أرمنت'),
(239, 24, 'الطود'),
(240, 15, 'أسوان'),
(241, 15, 'أسوان الجديدة'),
(242, 15, 'دراو'),
(243, 15, 'كوم أمبو'),
(244, 15, 'نصر النوبة'),
(245, 15, 'كلابشة'),
(246, 15, 'إدفو'),
(247, 15, 'الرديسية'),
(248, 15, 'البصيلية'),
(249, 15, 'السباعية'),
(250, 15, 'ابوسمبل السياحية');

-- --------------------------------------------------------

--
-- Table structure for table `governorates`
--

DROP TABLE IF EXISTS `governorates`;
CREATE TABLE IF NOT EXISTS `governorates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `governorate_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `governorates`
--

INSERT INTO `governorates` (`id`, `governorate_name`) VALUES
(1, 'القاهرة'),
(2, 'الجيزة'),
(3, 'الأسكندرية'),
(4, 'الدقهلية'),
(5, 'البحر الأحمر'),
(6, 'البحيرة'),
(7, 'الفيوم'),
(8, 'الغربية'),
(9, 'الإسماعلية'),
(10, 'المنوفية'),
(11, 'المنيا'),
(12, 'القليوبية'),
(13, 'الوادي الجديد'),
(14, 'السويس'),
(15, 'اسوان'),
(16, 'اسيوط'),
(17, 'بني سويف'),
(18, 'بورسعيد'),
(19, 'دمياط'),
(20, 'الشرقية'),
(21, 'جنوب سيناء'),
(22, 'كفر الشيخ'),
(23, 'مطروح'),
(24, 'الأقصر'),
(25, 'قنا'),
(26, 'شمال سيناء'),
(27, 'سوهاج');

-- --------------------------------------------------------

--
-- Table structure for table `internal_people`
--

DROP TABLE IF EXISTS `internal_people`;
CREATE TABLE IF NOT EXISTS `internal_people` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nat_Id` varchar(14) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Profile_Img` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Education` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Birth_Cert` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Age` int(11) NOT NULL,
  `Telephone_Id` int(11) NOT NULL,
  `Address_Id` int(11) NOT NULL,
  `Check_In_Date` date NOT NULL,
  `Check_In_Reason` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Check_Out_Date` date NOT NULL,
  `Check_Out_Reason` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Medical_Report` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `Telephone_Id` (`Telephone_Id`),
  KEY `Address_Id` (`Address_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `order_reason`
--

DROP TABLE IF EXISTS `order_reason`;
CREATE TABLE IF NOT EXISTS `order_reason` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Reason` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `PageId` int(11) NOT NULL AUTO_INCREMENT,
  `PhysicalAdrs` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `FriendlyName` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`PageId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

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
  `Name` varchar(256) NOT NULL,
  `Price` float NOT NULL,
  `Amount` int(11) NOT NULL,
  `Category_Id` int(11) NOT NULL,
  `Exp_Date` date NOT NULL,
  `Buying_Date` date NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Category` (`Category_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ID`, `Name`, `Price`, `Amount`, `Category_Id`, `Exp_Date`, `Buying_Date`) VALUES
(1, 'ارز ضحي', 20, 250, 2, '2019-12-25', '2019-02-19'),
(4, 'بتلو', 120, 10, 3, '2019-02-28', '2019-02-17');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
CREATE TABLE IF NOT EXISTS `product_category` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

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
  `Tel_No` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Tel_Id`),
  KEY `Resident_Id` (`Resident_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

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
  `Name` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `UserTypeId` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `UserTypeId` (`UserTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `usertype`
--

DROP TABLE IF EXISTS `usertype`;
CREATE TABLE IF NOT EXISTS `usertype` (
  `UserTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `UserType` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`UserTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

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
