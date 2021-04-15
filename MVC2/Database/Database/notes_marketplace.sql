-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2021 at 09:30 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `notes_marketplace`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `countryid` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `countrycode` varchar(100) NOT NULL,
  `createddate` datetime DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  `isactive` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`countryid`, `name`, `countrycode`, `createddate`, `createdby`, `modifieddate`, `modifiedby`, `isactive`) VALUES
(1, 'Afghanistan', '+93', '2021-02-28 09:33:19', NULL, NULL, NULL, b'1'),
(2, 'India', '+91', '2021-02-28 09:33:19', NULL, NULL, NULL, b'1'),
(3, 'Bangladesh', '+880', '2021-02-28 09:33:19', NULL, NULL, NULL, b'1'),
(4, 'China', '+86', '2021-02-28 09:33:19', NULL, NULL, NULL, b'1'),
(5, 'Japan', '+81', '2021-02-28 09:33:19', NULL, NULL, NULL, b'1'),
(6, 'United States', '+1', '2021-02-28 09:33:19', NULL, NULL, NULL, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `downloads`
--

CREATE TABLE `downloads` (
  `downloadid` int(10) UNSIGNED NOT NULL,
  `noteid` int(10) UNSIGNED NOT NULL,
  `seller` int(10) UNSIGNED NOT NULL,
  `downloader` int(10) UNSIGNED NOT NULL,
  `sellerhasalloweddownload` bit(1) NOT NULL,
  `attactmentpath` varchar(255) DEFAULT NULL,
  `isattachmentdownloaded` bit(1) NOT NULL,
  `attactmentdownloadeddate` datetime DEFAULT NULL,
  `ispaid` int(11) UNSIGNED NOT NULL,
  `purchasedprice` decimal(10,2) DEFAULT NULL,
  `notetitle` varchar(100) NOT NULL,
  `notecategory` varchar(100) NOT NULL,
  `createddate` datetime DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `notecategories`
--

CREATE TABLE `notecategories` (
  `categoryid` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `createddate` datetime DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  `isactive` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notecategories`
--

INSERT INTO `notecategories` (`categoryid`, `name`, `description`, `createddate`, `createdby`, `modifieddate`, `modifiedby`, `isactive`) VALUES
(1, 'MBA', 'Commerce Stream subject', '2021-02-28 09:43:58', NULL, NULL, NULL, b'1'),
(2, 'IT', 'Engineering stream subject', '2021-02-28 09:43:58', NULL, NULL, NULL, b'1'),
(3, 'CA', 'Commerce Stream subject', '2021-02-28 09:43:58', NULL, NULL, NULL, b'1'),
(4, 'Maths', 'Maths subject of topics of trigonometry', '2021-02-28 09:43:58', NULL, NULL, NULL, b'1'),
(5, 'Chemistry', 'Science Stream subject', '2021-02-28 09:43:58', NULL, NULL, NULL, b'1'),
(6, 'Hitroy', 'Brief  history of india', '2021-02-28 09:43:58', NULL, NULL, NULL, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `notetypes`
--

CREATE TABLE `notetypes` (
  `typeid` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `createddate` datetime DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  `isactive` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notetypes`
--

INSERT INTO `notetypes` (`typeid`, `name`, `description`, `createddate`, `createdby`, `modifieddate`, `modifiedby`, `isactive`) VALUES
(1, 'Handwritten notes', 'Notes which are hand written', '2021-02-28 09:44:58', NULL, NULL, NULL, b'1'),
(2, 'University notes', 'Notes which are provided by the different universities', '2021-02-28 11:15:54', NULL, NULL, NULL, b'1'),
(3, 'Notebook', 'A reference book for specific knowledge', '2021-02-28 11:15:59', NULL, NULL, NULL, b'1'),
(4, 'Novel', 'A book that tells a story about people and events that are not real', '2021-02-28 13:51:17', NULL, NULL, NULL, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `referencedata`
--

CREATE TABLE `referencedata` (
  `refdataid` int(10) UNSIGNED NOT NULL,
  `value` varchar(100) NOT NULL,
  `datavalue` varchar(100) NOT NULL,
  `refcategory` varchar(100) NOT NULL,
  `createddate` datetime DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  `isactive` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `referencedata`
--

INSERT INTO `referencedata` (`refdataid`, `value`, `datavalue`, `refcategory`, `createddate`, `createdby`, `modifieddate`, `modifiedby`, `isactive`) VALUES
(1, 'Paid', 'P', 'Selling Mode', '2021-02-28 17:03:53', 3, NULL, NULL, b'1'),
(2, 'Free', 'F', 'Selling Mode', '2021-02-28 10:03:53', 3, NULL, NULL, b'1'),
(3, 'Draft', 'Draft', 'Notes Status', '2021-03-02 15:48:49', 3, NULL, NULL, b'1'),
(4, 'Submitted For Review', 'Submitted For Review', 'Notes Status', '2021-02-03 05:52:39', 3, NULL, NULL, b'1'),
(5, 'In Review ', 'In Review ', 'Notes Status', '2021-02-28 01:52:26', 3, NULL, NULL, b'1'),
(6, 'Published ', 'Approved', 'Notes Status', '2021-02-28 06:24:31', 3, NULL, NULL, b'1'),
(7, 'Rejected', 'Rejected', 'Notes Status', '2021-03-08 08:23:22', 3, NULL, NULL, b'1'),
(8, 'Removed', 'Removed', 'Notes Status', '2021-03-04 13:13:25', 3, NULL, NULL, b'1'),
(9, 'Male', 'M', 'Gender', '2021-02-28 04:54:36', 3, NULL, NULL, b'1'),
(10, 'Female', 'F', 'Gender', '2021-03-05 11:19:26', 3, NULL, NULL, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `sellernotes`
--

CREATE TABLE `sellernotes` (
  `noteid` int(10) UNSIGNED NOT NULL,
  `sellerid` int(10) UNSIGNED NOT NULL,
  `status` int(11) UNSIGNED NOT NULL,
  `actionedby` int(11) UNSIGNED DEFAULT NULL,
  `admin_remarks` varchar(255) DEFAULT NULL,
  `publisheddate` datetime DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `category` int(100) UNSIGNED NOT NULL,
  `displaypic` varchar(255) DEFAULT NULL,
  `notetype` int(11) UNSIGNED DEFAULT NULL,
  `page_no` int(11) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `university_name` varchar(200) DEFAULT NULL,
  `country` int(11) UNSIGNED DEFAULT NULL,
  `course` varchar(100) DEFAULT NULL,
  `course_code` varchar(100) DEFAULT NULL,
  `proffesor` varchar(100) DEFAULT NULL,
  `ispaid` int(11) UNSIGNED NOT NULL,
  `selling_price` decimal(10,2) DEFAULT NULL,
  `notespreview` varchar(255) DEFAULT NULL,
  `createddate` datetime DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  `isactive` bit(1) NOT NULL,
  `uploadnotes` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sellernotesattachements`
--

CREATE TABLE `sellernotesattachements` (
  `note_attach_id` int(10) UNSIGNED NOT NULL,
  `noteid` int(10) UNSIGNED NOT NULL,
  `filename` varchar(100) NOT NULL,
  `filepath` varchar(255) NOT NULL,
  `createddate` datetime DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  `isactive` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sellernotesreportedissues`
--

CREATE TABLE `sellernotesreportedissues` (
  `note_reportid` int(10) UNSIGNED NOT NULL,
  `noteid` int(10) UNSIGNED NOT NULL,
  `reprotedbyid` int(10) UNSIGNED NOT NULL,
  `againstdownloadid` int(10) UNSIGNED NOT NULL,
  `remarks` varchar(255) NOT NULL,
  `createddate` datetime DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sellernotesreview`
--

CREATE TABLE `sellernotesreview` (
  `note_review_id` int(10) UNSIGNED NOT NULL,
  `noteid` int(10) UNSIGNED NOT NULL,
  `reviewer_id` int(10) UNSIGNED NOT NULL,
  `againstdownloadsid` int(10) UNSIGNED NOT NULL,
  `ratings` decimal(10,0) NOT NULL,
  `comments` varchar(255) NOT NULL,
  `createddate` datetime DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  `isactive` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `systemconfiguration`
--

CREATE TABLE `systemconfiguration` (
  `configid` int(10) UNSIGNED NOT NULL,
  `key_info` varchar(100) NOT NULL,
  `value` varchar(255) NOT NULL,
  `createddate` datetime DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  `isactive` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `userprofile`
--

CREATE TABLE `userprofile` (
  `userprofileid` int(10) UNSIGNED NOT NULL,
  `userid` int(10) UNSIGNED NOT NULL,
  `dob` datetime DEFAULT NULL,
  `gender` int(11) UNSIGNED DEFAULT NULL,
  `secondemail` varchar(100) DEFAULT NULL,
  `phone_country_code` int(10) UNSIGNED NOT NULL,
  `phone_no` varchar(20) NOT NULL,
  `profile_pic` varchar(255) DEFAULT NULL,
  `address_line1` varchar(100) NOT NULL,
  `address_line2` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `zipcode` varchar(50) NOT NULL,
  `country` int(50) UNSIGNED NOT NULL,
  `university` varchar(100) DEFAULT NULL,
  `college` varchar(100) DEFAULT NULL,
  `createddate` datetime DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `userroles`
--

CREATE TABLE `userroles` (
  `roleid` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `createddate` datetime DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  `isactive` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userroles`
--

INSERT INTO `userroles` (`roleid`, `name`, `description`, `createddate`, `createdby`, `modifieddate`, `modifiedby`, `isactive`) VALUES
(1, 'user', 'User can be buyer or seller or both combined.', '2021-02-26 05:25:31', 3, '2021-02-25 13:27:30', 3, b'1'),
(2, 'admin', 'An admin who maintains the NotesmarketPlace.', '2021-02-26 17:45:43', 3, '2021-02-24 09:28:30', 3, b'1'),
(3, 'super admin', 'An admin who has created the project NotesMarketPlace.', '2021-02-26 06:16:56', 3, '2021-02-25 07:21:41', 3, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(10) UNSIGNED NOT NULL,
  `roleid` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `emailid` varchar(100) NOT NULL,
  `password` varchar(24) NOT NULL,
  `isemailverified` bit(1) NOT NULL,
  `createddate` datetime DEFAULT NULL,
  `createdby` int(11) DEFAULT NULL,
  `modifieddate` datetime DEFAULT NULL,
  `modifiedby` int(11) DEFAULT NULL,
  `isactive` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `roleid`, `firstname`, `lastname`, `emailid`, `password`, `isemailverified`, `createddate`, `createdby`, `modifieddate`, `modifiedby`, `isactive`) VALUES
(16, 1, 'nandini', 'virani', 'nandivirani2000@gmail.com', '123', b'0', '2021-03-01 20:13:44', NULL, NULL, NULL, b'1'),
(23, 1, 'Ram', 'Patel', 'rampatel@gmail.com', 'ML9Ld73E5ZAG', b'0', '2021-03-12 10:15:52', NULL, NULL, NULL, b'1'),
(24, 1, 'demo', 'demo', 'demo@gmail.com', 'Demo@123', b'0', '2021-03-14 14:25:38', NULL, NULL, NULL, b'1'),
(25, 1, 'Avnit', 'Patel', 'patelavnit@gmail.com', 'Avnit@123', b'0', '2021-03-16 11:54:34', NULL, NULL, NULL, b'1'),
(26, 1, 'Aabhi', 'Patel', 'abhipatel@gmail.com', '202cb962ac59075b964b0715', b'0', '2021-03-24 11:43:33', NULL, NULL, NULL, b'1'),
(27, 1, 'punit', 'pathak', 'punitpathak@gmail.com', '81dc9bdb52d04dc20036dbd8', b'0', '2021-03-24 11:54:33', NULL, NULL, NULL, b'1'),
(28, 1, 'hello', 'mini', 'hello@gmail.com', '1234hello', b'0', '2021-03-31 19:34:44', NULL, NULL, NULL, b'1'),
(31, 1, 'Asjs', 'B', 'caa@gmail.com', '1', b'0', '2021-03-31 19:38:42', NULL, NULL, NULL, b'1'),
(37, 1, 'Dharmil ', 'Prajapati', 'dharmilprajapati1999@gmail.com', '123456789', b'0', '2021-04-01 14:45:27', NULL, NULL, NULL, b'1'),
(42, 1, 'Aabhi', 'Patel', 'rdxrdx1199@gmail.com', '1234', b'0', '2021-04-06 12:07:04', NULL, NULL, NULL, b'1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`countryid`);

--
-- Indexes for table `downloads`
--
ALTER TABLE `downloads`
  ADD PRIMARY KEY (`downloadid`),
  ADD KEY `noteid` (`noteid`),
  ADD KEY `seller` (`seller`),
  ADD KEY `downloader` (`downloader`),
  ADD KEY `ispaid` (`ispaid`);

--
-- Indexes for table `notecategories`
--
ALTER TABLE `notecategories`
  ADD PRIMARY KEY (`categoryid`);

--
-- Indexes for table `notetypes`
--
ALTER TABLE `notetypes`
  ADD PRIMARY KEY (`typeid`);

--
-- Indexes for table `referencedata`
--
ALTER TABLE `referencedata`
  ADD PRIMARY KEY (`refdataid`);

--
-- Indexes for table `sellernotes`
--
ALTER TABLE `sellernotes`
  ADD PRIMARY KEY (`noteid`),
  ADD KEY `sellerid` (`sellerid`),
  ADD KEY `status` (`status`),
  ADD KEY `actionedby` (`actionedby`),
  ADD KEY `category` (`category`),
  ADD KEY `notetype` (`notetype`),
  ADD KEY `country` (`country`),
  ADD KEY `ispaid` (`ispaid`);

--
-- Indexes for table `sellernotesattachements`
--
ALTER TABLE `sellernotesattachements`
  ADD PRIMARY KEY (`note_attach_id`),
  ADD KEY `noteid` (`noteid`);

--
-- Indexes for table `sellernotesreportedissues`
--
ALTER TABLE `sellernotesreportedissues`
  ADD PRIMARY KEY (`note_reportid`),
  ADD KEY `noteid` (`noteid`),
  ADD KEY `reprotedbyid` (`reprotedbyid`),
  ADD KEY `againstdownloadid` (`againstdownloadid`);

--
-- Indexes for table `sellernotesreview`
--
ALTER TABLE `sellernotesreview`
  ADD PRIMARY KEY (`note_review_id`),
  ADD KEY `noteid` (`noteid`),
  ADD KEY `reviewer_id` (`reviewer_id`),
  ADD KEY `againstdownloadsid` (`againstdownloadsid`);

--
-- Indexes for table `systemconfiguration`
--
ALTER TABLE `systemconfiguration`
  ADD PRIMARY KEY (`configid`);

--
-- Indexes for table `userprofile`
--
ALTER TABLE `userprofile`
  ADD PRIMARY KEY (`userprofileid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `gender` (`gender`),
  ADD KEY `phone_country_code` (`phone_country_code`),
  ADD KEY `country` (`country`);

--
-- Indexes for table `userroles`
--
ALTER TABLE `userroles`
  ADD PRIMARY KEY (`roleid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `emailid` (`emailid`),
  ADD KEY `roleid` (`roleid`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `countryid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `downloads`
--
ALTER TABLE `downloads`
  MODIFY `downloadid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `notecategories`
--
ALTER TABLE `notecategories`
  MODIFY `categoryid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `notetypes`
--
ALTER TABLE `notetypes`
  MODIFY `typeid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `referencedata`
--
ALTER TABLE `referencedata`
  MODIFY `refdataid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sellernotes`
--
ALTER TABLE `sellernotes`
  MODIFY `noteid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `sellernotesattachements`
--
ALTER TABLE `sellernotesattachements`
  MODIFY `note_attach_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sellernotesreportedissues`
--
ALTER TABLE `sellernotesreportedissues`
  MODIFY `note_reportid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sellernotesreview`
--
ALTER TABLE `sellernotesreview`
  MODIFY `note_review_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `systemconfiguration`
--
ALTER TABLE `systemconfiguration`
  MODIFY `configid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userprofile`
--
ALTER TABLE `userprofile`
  MODIFY `userprofileid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userroles`
--
ALTER TABLE `userroles`
  MODIFY `roleid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sellernotes`
--
ALTER TABLE `sellernotes`
  ADD CONSTRAINT `sellernotes_ibfk_1` FOREIGN KEY (`sellerid`) REFERENCES `users` (`userid`),
  ADD CONSTRAINT `sellernotes_ibfk_2` FOREIGN KEY (`status`) REFERENCES `referencedata` (`refdataid`),
  ADD CONSTRAINT `sellernotes_ibfk_3` FOREIGN KEY (`actionedby`) REFERENCES `users` (`userid`),
  ADD CONSTRAINT `sellernotes_ibfk_4` FOREIGN KEY (`category`) REFERENCES `notecategories` (`categoryid`),
  ADD CONSTRAINT `sellernotes_ibfk_5` FOREIGN KEY (`notetype`) REFERENCES `notetypes` (`typeid`),
  ADD CONSTRAINT `sellernotes_ibfk_6` FOREIGN KEY (`country`) REFERENCES `countries` (`countryid`),
  ADD CONSTRAINT `sellernotes_ibfk_7` FOREIGN KEY (`ispaid`) REFERENCES `referencedata` (`refdataid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
