-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2020 at 08:17 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hrm`
--

-- --------------------------------------------------------

--
-- Table structure for table `wphrm_attendance`
--

CREATE TABLE `wphrm_attendance` (
  `id` int(10) UNSIGNED NOT NULL,
  `employeeID` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `toDate` date DEFAULT '0000-00-00',
  `status` enum('absent','present') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `leaveType` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `halfDayType` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `reason` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `adminComments` varchar(250) NOT NULL,
  `applicationStatus` enum('approved','rejected','pending') CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `appliedOn` date DEFAULT NULL,
  `updatedBy` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updatedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wphrm_attendance`
--

INSERT INTO `wphrm_attendance` (`id`, `employeeID`, `date`, `toDate`, `status`, `leaveType`, `halfDayType`, `reason`, `adminComments`, `applicationStatus`, `appliedOn`, `updatedBy`, `createdAt`, `updatedAt`) VALUES
(3, 3, '2020-05-11', '0000-00-00', 'present', NULL, NULL, '', '', NULL, '2020-05-11', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 3, '2020-05-12', '0000-00-00', 'present', NULL, NULL, '', '', NULL, '2020-05-12', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 3, '2020-05-13', '0000-00-00', 'present', NULL, NULL, '', '', NULL, '2020-05-13', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 3, '2020-05-14', '0000-00-00', 'present', NULL, NULL, '', '', NULL, '2020-05-14', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 3, '2020-05-15', '0000-00-00', 'present', NULL, NULL, '', '', NULL, '2020-05-15', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 3, '2020-05-20', '2020-05-20', 'absent', 'Paid Leaves', '', 'test', 'Good job', 'approved', '2020-05-10', NULL, '2020-05-09 19:10:12', '2020-05-09 19:10:12'),
(9, 3, '2020-05-10', '0000-00-00', '', 'Paid Leaves', 'halfday', 'School work', '', 'approved', NULL, 'administrator', '2020-05-09 19:55:51', '2020-05-09 19:55:51');

-- --------------------------------------------------------

--
-- Table structure for table `wphrm_currency`
--

CREATE TABLE `wphrm_currency` (
  `id` int(11) NOT NULL,
  `currencyName` varchar(200) NOT NULL,
  `currencySign` varchar(200) NOT NULL,
  `currencyDesc` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wphrm_currency`
--

INSERT INTO `wphrm_currency` (`id`, `currencyName`, `currencySign`, `currencyDesc`) VALUES
(1, 'USD', '&#36', 'USD Currency'),
(2, 'INR', '&#8377', 'INR Currency'),
(3, 'GBP', '&#163', 'GBP Currency'),
(4, 'JPY', '&#165', 'JPY Currency'),
(5, 'YEN', '&#165', 'YEN Currency'),
(6, 'EUR', '&#8364', 'EUR Currency'),
(7, 'WON', '&#8361', 'WON Currency'),
(8, 'TRY', '&#8356', 'TRY Currency'),
(9, 'RUB', '&#1088', 'RUB Currency'),
(10, 'RMB', '&#165', 'RMB Currency'),
(11, 'KRW', '&#8361', 'KRW Currency'),
(12, 'BTC', '&#8361', 'BTC Currency'),
(13, 'THB', '&#3647', 'THB Currency'),
(14, 'BDT', '&#2547', 'BDT Currency'),
(15, 'CRC', '&#8353', 'CRC Currency'),
(16, 'GEL', '&#4314', 'GEL Currency'),
(17, 'PHP', '&#8369;', 'Pesos');

-- --------------------------------------------------------

--
-- Table structure for table `wphrm_department`
--

CREATE TABLE `wphrm_department` (
  `departmentID` bigint(20) NOT NULL,
  `departmentName` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wphrm_department`
--

INSERT INTO `wphrm_department` (`departmentID`, `departmentName`) VALUES
(1, 'YToxOntzOjE0OiJkZXBhcnRtZW50TmFtZSI7czoxNToiSHVtYW4gUmVzb3VyY2VzIjt9');

-- --------------------------------------------------------

--
-- Table structure for table `wphrm_designation`
--

CREATE TABLE `wphrm_designation` (
  `designationID` bigint(20) NOT NULL,
  `departmentID` bigint(20) NOT NULL,
  `designationName` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wphrm_designation`
--

INSERT INTO `wphrm_designation` (`designationID`, `departmentID`, `designationName`) VALUES
(1, 1, 'YToxOntzOjE1OiJkZXNpZ25hdGlvbk5hbWUiO3M6MTk6IkhSIEFzc2lzdGFudC9JbnRlcm4iO30='),
(2, 1, 'YToxOntzOjE1OiJkZXNpZ25hdGlvbk5hbWUiO3M6Mzg6IkhSIFNwZWNpYWxpc3QvR2VuZXJhbGlzdC9BZG1pbmlzdHJhdG9yIjt9'),
(3, 1, 'YToxOntzOjE1OiJkZXNpZ25hdGlvbk5hbWUiO3M6MTA6IkhSIE1hbmFnZXIiO30='),
(4, 1, 'YToxOntzOjE1OiJkZXNpZ25hdGlvbk5hbWUiO3M6MTE6IkhSIERpcmVjdG9yIjt9'),
(5, 1, 'YToxOntzOjE1OiJkZXNpZ25hdGlvbk5hbWUiO3M6ODoiVlAgb2YgSFIiO30='),
(6, 1, 'YToxOntzOjE1OiJkZXNpZ25hdGlvbk5hbWUiO3M6MTY6IkNoaWVmIEhSIE9mZmljZXIiO30=');

-- --------------------------------------------------------

--
-- Table structure for table `wphrm_financials`
--

CREATE TABLE `wphrm_financials` (
  `id` int(11) NOT NULL,
  `wphrmItem` varchar(100) NOT NULL,
  `wphrmAmounts` varchar(100) NOT NULL,
  `wphrmStatus` varchar(100) NOT NULL,
  `wphrmDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wphrm_financials`
--

INSERT INTO `wphrm_financials` (`id`, `wphrmItem`, `wphrmAmounts`, `wphrmStatus`, `wphrmDate`) VALUES
(1, 'test', '100', 'Loss', '2020-05-10');

-- --------------------------------------------------------

--
-- Table structure for table `wphrm_holidays`
--

CREATE TABLE `wphrm_holidays` (
  `id` int(10) UNSIGNED NOT NULL,
  `wphrmDate` date NOT NULL,
  `wphrmOccassion` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updatedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wphrm_holidays`
--

INSERT INTO `wphrm_holidays` (`id`, `wphrmDate`, `wphrmOccassion`, `createdAt`, `updatedAt`) VALUES
(1, '2020-05-11', 'Anniversary', '2020-05-09 18:50:38', '2020-05-09 18:50:38'),
(2, '2020-01-04', 'Saturday', '2020-05-09 18:50:59', '2020-05-09 18:50:59'),
(3, '2020-01-11', 'Saturday', '2020-05-09 18:50:59', '2020-05-09 18:50:59'),
(4, '2020-01-18', 'Saturday', '2020-05-09 18:50:59', '2020-05-09 18:50:59'),
(5, '2020-01-25', 'Saturday', '2020-05-09 18:50:59', '2020-05-09 18:50:59'),
(6, '2020-02-01', 'Saturday', '2020-05-09 18:50:59', '2020-05-09 18:50:59'),
(7, '2020-02-08', 'Saturday', '2020-05-09 18:50:59', '2020-05-09 18:50:59'),
(8, '2020-02-15', 'Saturday', '2020-05-09 18:50:59', '2020-05-09 18:50:59'),
(9, '2020-02-22', 'Saturday', '2020-05-09 18:50:59', '2020-05-09 18:50:59'),
(10, '2020-02-29', 'Saturday', '2020-05-09 18:50:59', '2020-05-09 18:50:59'),
(11, '2020-03-07', 'Saturday', '2020-05-09 18:50:59', '2020-05-09 18:50:59'),
(12, '2020-03-14', 'Saturday', '2020-05-09 18:50:59', '2020-05-09 18:50:59'),
(13, '2020-03-21', 'Saturday', '2020-05-09 18:50:59', '2020-05-09 18:50:59'),
(14, '2020-03-28', 'Saturday', '2020-05-09 18:50:59', '2020-05-09 18:50:59'),
(15, '2020-04-04', 'Saturday', '2020-05-09 18:50:59', '2020-05-09 18:50:59'),
(16, '2020-04-11', 'Saturday', '2020-05-09 18:50:59', '2020-05-09 18:50:59'),
(17, '2020-04-18', 'Saturday', '2020-05-09 18:50:59', '2020-05-09 18:50:59'),
(18, '2020-04-25', 'Saturday', '2020-05-09 18:50:59', '2020-05-09 18:50:59'),
(19, '2020-05-02', 'Saturday', '2020-05-09 18:50:59', '2020-05-09 18:50:59'),
(20, '2020-05-09', 'Saturday', '2020-05-09 18:50:59', '2020-05-09 18:50:59'),
(21, '2020-05-16', 'Saturday', '2020-05-09 18:50:59', '2020-05-09 18:50:59'),
(22, '2020-05-23', 'Saturday', '2020-05-09 18:50:59', '2020-05-09 18:50:59'),
(23, '2020-05-30', 'Saturday', '2020-05-09 18:50:59', '2020-05-09 18:50:59'),
(24, '2020-06-06', 'Saturday', '2020-05-09 18:50:59', '2020-05-09 18:50:59'),
(25, '2020-06-13', 'Saturday', '2020-05-09 18:50:59', '2020-05-09 18:50:59'),
(26, '2020-06-20', 'Saturday', '2020-05-09 18:50:59', '2020-05-09 18:50:59'),
(27, '2020-06-27', 'Saturday', '2020-05-09 18:50:59', '2020-05-09 18:50:59'),
(28, '2020-07-04', 'Saturday', '2020-05-09 18:50:59', '2020-05-09 18:50:59'),
(29, '2020-07-11', 'Saturday', '2020-05-09 18:50:59', '2020-05-09 18:50:59'),
(30, '2020-07-18', 'Saturday', '2020-05-09 18:50:59', '2020-05-09 18:50:59'),
(31, '2020-07-25', 'Saturday', '2020-05-09 18:50:59', '2020-05-09 18:50:59'),
(32, '2020-08-01', 'Saturday', '2020-05-09 18:50:59', '2020-05-09 18:50:59'),
(33, '2020-08-08', 'Saturday', '2020-05-09 18:50:59', '2020-05-09 18:50:59'),
(34, '2020-08-15', 'Saturday', '2020-05-09 18:50:59', '2020-05-09 18:50:59'),
(35, '2020-08-22', 'Saturday', '2020-05-09 18:50:59', '2020-05-09 18:50:59'),
(36, '2020-08-29', 'Saturday', '2020-05-09 18:50:59', '2020-05-09 18:50:59'),
(37, '2020-09-05', 'Saturday', '2020-05-09 18:50:59', '2020-05-09 18:50:59'),
(38, '2020-09-12', 'Saturday', '2020-05-09 18:50:59', '2020-05-09 18:50:59'),
(39, '2020-09-19', 'Saturday', '2020-05-09 18:50:59', '2020-05-09 18:50:59'),
(40, '2020-09-26', 'Saturday', '2020-05-09 18:50:59', '2020-05-09 18:50:59'),
(41, '2020-10-03', 'Saturday', '2020-05-09 18:50:59', '2020-05-09 18:50:59'),
(42, '2020-10-10', 'Saturday', '2020-05-09 18:50:59', '2020-05-09 18:50:59'),
(43, '2020-10-17', 'Saturday', '2020-05-09 18:50:59', '2020-05-09 18:50:59'),
(44, '2020-10-24', 'Saturday', '2020-05-09 18:50:59', '2020-05-09 18:50:59'),
(45, '2020-10-31', 'Saturday', '2020-05-09 18:50:59', '2020-05-09 18:50:59'),
(46, '2020-11-07', 'Saturday', '2020-05-09 18:50:59', '2020-05-09 18:50:59'),
(47, '2020-11-14', 'Saturday', '2020-05-09 18:50:59', '2020-05-09 18:50:59'),
(48, '2020-11-21', 'Saturday', '2020-05-09 18:50:59', '2020-05-09 18:50:59'),
(49, '2020-11-28', 'Saturday', '2020-05-09 18:50:59', '2020-05-09 18:50:59'),
(50, '2020-12-05', 'Saturday', '2020-05-09 18:50:59', '2020-05-09 18:50:59'),
(51, '2020-12-12', 'Saturday', '2020-05-09 18:50:59', '2020-05-09 18:50:59'),
(52, '2020-12-19', 'Saturday', '2020-05-09 18:50:59', '2020-05-09 18:50:59'),
(53, '2020-12-26', 'Saturday', '2020-05-09 18:50:59', '2020-05-09 18:50:59'),
(54, '2020-01-05', 'Sunday', '2020-05-09 18:51:21', '2020-05-09 18:51:21'),
(55, '2020-01-12', 'Sunday', '2020-05-09 18:51:21', '2020-05-09 18:51:21'),
(56, '2020-01-19', 'Sunday', '2020-05-09 18:51:21', '2020-05-09 18:51:21'),
(57, '2020-01-26', 'Sunday', '2020-05-09 18:51:21', '2020-05-09 18:51:21'),
(58, '2020-02-02', 'Sunday', '2020-05-09 18:51:21', '2020-05-09 18:51:21'),
(59, '2020-02-09', 'Sunday', '2020-05-09 18:51:21', '2020-05-09 18:51:21'),
(60, '2020-02-16', 'Sunday', '2020-05-09 18:51:21', '2020-05-09 18:51:21'),
(61, '2020-02-23', 'Sunday', '2020-05-09 18:51:21', '2020-05-09 18:51:21'),
(62, '2020-03-01', 'Sunday', '2020-05-09 18:51:21', '2020-05-09 18:51:21'),
(63, '2020-03-08', 'Sunday', '2020-05-09 18:51:21', '2020-05-09 18:51:21'),
(64, '2020-03-15', 'Sunday', '2020-05-09 18:51:21', '2020-05-09 18:51:21'),
(65, '2020-03-22', 'Sunday', '2020-05-09 18:51:21', '2020-05-09 18:51:21'),
(66, '2020-03-29', 'Sunday', '2020-05-09 18:51:21', '2020-05-09 18:51:21'),
(67, '2020-04-05', 'Sunday', '2020-05-09 18:51:21', '2020-05-09 18:51:21'),
(68, '2020-04-12', 'Sunday', '2020-05-09 18:51:21', '2020-05-09 18:51:21'),
(69, '2020-04-19', 'Sunday', '2020-05-09 18:51:21', '2020-05-09 18:51:21'),
(70, '2020-04-26', 'Sunday', '2020-05-09 18:51:21', '2020-05-09 18:51:21'),
(71, '2020-05-03', 'Sunday', '2020-05-09 18:51:21', '2020-05-09 18:51:21'),
(72, '2020-05-10', 'Sunday', '2020-05-09 18:51:21', '2020-05-09 18:51:21'),
(73, '2020-05-17', 'Sunday', '2020-05-09 18:51:21', '2020-05-09 18:51:21'),
(74, '2020-05-24', 'Sunday', '2020-05-09 18:51:21', '2020-05-09 18:51:21'),
(75, '2020-05-31', 'Sunday', '2020-05-09 18:51:21', '2020-05-09 18:51:21'),
(76, '2020-06-07', 'Sunday', '2020-05-09 18:51:21', '2020-05-09 18:51:21'),
(77, '2020-06-14', 'Sunday', '2020-05-09 18:51:21', '2020-05-09 18:51:21'),
(78, '2020-06-21', 'Sunday', '2020-05-09 18:51:21', '2020-05-09 18:51:21'),
(79, '2020-06-28', 'Sunday', '2020-05-09 18:51:21', '2020-05-09 18:51:21'),
(80, '2020-07-05', 'Sunday', '2020-05-09 18:51:21', '2020-05-09 18:51:21'),
(81, '2020-07-12', 'Sunday', '2020-05-09 18:51:21', '2020-05-09 18:51:21'),
(82, '2020-07-19', 'Sunday', '2020-05-09 18:51:21', '2020-05-09 18:51:21'),
(83, '2020-07-26', 'Sunday', '2020-05-09 18:51:21', '2020-05-09 18:51:21'),
(84, '2020-08-02', 'Sunday', '2020-05-09 18:51:21', '2020-05-09 18:51:21'),
(85, '2020-08-09', 'Sunday', '2020-05-09 18:51:21', '2020-05-09 18:51:21'),
(86, '2020-08-16', 'Sunday', '2020-05-09 18:51:21', '2020-05-09 18:51:21'),
(87, '2020-08-23', 'Sunday', '2020-05-09 18:51:21', '2020-05-09 18:51:21'),
(88, '2020-08-30', 'Sunday', '2020-05-09 18:51:21', '2020-05-09 18:51:21'),
(89, '2020-09-06', 'Sunday', '2020-05-09 18:51:21', '2020-05-09 18:51:21'),
(90, '2020-09-13', 'Sunday', '2020-05-09 18:51:21', '2020-05-09 18:51:21'),
(91, '2020-09-20', 'Sunday', '2020-05-09 18:51:21', '2020-05-09 18:51:21'),
(92, '2020-09-27', 'Sunday', '2020-05-09 18:51:21', '2020-05-09 18:51:21'),
(93, '2020-10-04', 'Sunday', '2020-05-09 18:51:21', '2020-05-09 18:51:21'),
(94, '2020-10-11', 'Sunday', '2020-05-09 18:51:21', '2020-05-09 18:51:21'),
(95, '2020-10-18', 'Sunday', '2020-05-09 18:51:21', '2020-05-09 18:51:21'),
(96, '2020-10-25', 'Sunday', '2020-05-09 18:51:21', '2020-05-09 18:51:21'),
(97, '2020-11-01', 'Sunday', '2020-05-09 18:51:21', '2020-05-09 18:51:21'),
(98, '2020-11-08', 'Sunday', '2020-05-09 18:51:21', '2020-05-09 18:51:21'),
(99, '2020-11-15', 'Sunday', '2020-05-09 18:51:21', '2020-05-09 18:51:21'),
(100, '2020-11-22', 'Sunday', '2020-05-09 18:51:21', '2020-05-09 18:51:21'),
(101, '2020-11-29', 'Sunday', '2020-05-09 18:51:21', '2020-05-09 18:51:21'),
(102, '2020-12-06', 'Sunday', '2020-05-09 18:51:21', '2020-05-09 18:51:21'),
(103, '2020-12-13', 'Sunday', '2020-05-09 18:51:21', '2020-05-09 18:51:21'),
(104, '2020-12-20', 'Sunday', '2020-05-09 18:51:21', '2020-05-09 18:51:21'),
(105, '2020-12-27', 'Sunday', '2020-05-09 18:51:21', '2020-05-09 18:51:21');

-- --------------------------------------------------------

--
-- Table structure for table `wphrm_leavetypes`
--

CREATE TABLE `wphrm_leavetypes` (
  `id` int(10) UNSIGNED NOT NULL,
  `leaveType` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `period` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `numberOfLeave` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wphrm_leavetypes`
--

INSERT INTO `wphrm_leavetypes` (`id`, `leaveType`, `period`, `numberOfLeave`) VALUES
(1, 'Paid Leaves', 'Monthly', 1),
(2, 'Sick Leaves', 'Yearly', 6),
(3, 'Casual Leaves', 'Monthly', 6);

-- --------------------------------------------------------

--
-- Table structure for table `wphrm_messages`
--

CREATE TABLE `wphrm_messages` (
  `id` int(11) NOT NULL,
  `messagesTitle` varchar(50) NOT NULL,
  `messagesDesc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wphrm_messages`
--

INSERT INTO `wphrm_messages` (`id`, `messagesTitle`, `messagesDesc`) VALUES
(1, 'Add Employee', 'Employee has been successfully added.'),
(2, 'Update Employee', 'Employee has been successfully updated.'),
(3, 'Update Personal Details', 'Personal Details have been successfully updated.'),
(4, 'Update Bank  Details', 'Bank Details have been successfully updated.'),
(5, 'Update Documents', 'Documents have been successfully updated.'),
(6, 'Update Other Details', 'Other Details have been successfully updated.'),
(7, 'Update Salary Details', 'Salary Details have been successfully updated.'),
(8, 'Add Department', 'Department has been successfully added.'),
(9, 'Update Department', 'Department has been successfully updated.'),
(10, 'Add Designation', 'Designation has been successfully added.'),
(11, 'Update Designation', 'Designation has been successfully updated.'),
(12, 'Delete Designation', 'Designation has been successfully deleted.'),
(13, 'Delete Department', 'Department has been successfully deleted.'),
(14, 'Add Holiday', 'Holiday has been successfully added.'),
(15, 'Delete Holiday', 'Holiday has been successfully deleted. '),
(16, 'Mark Attendance', 'Attendance has been successfully marked.'),
(17, 'Delete Leave Application', 'Leave Application has been successfully deleted.'),
(18, 'Update Leave Type', 'Leave Type  has been successfully updated.'),
(19, 'Add Leave Type', 'Leave Type  has been successfully added.'),
(20, 'Delete Leave Type', 'Leave Type has been successfully deleted.'),
(21, 'Create Salary slip', 'Salary Slip Details have been successfully created.'),
(22, 'Update Salary Slip', 'Salary Slip has been successfully updated.'),
(23, 'Delete Salary slip', 'Salary Slip has been successfully deleted.'),
(24, 'Sent Salary slip Request', 'Salary Slip Request has been successfully sent.'),
(25, 'Sent Salary slip', 'Salary Slip has been successfully sent.'),
(26, 'Update Notices', 'Notice has been successfully updated.'),
(27, 'Update General Settings', 'General Settings have been successfully updated.'),
(28, 'Update Notifications Settings', 'Notifications Settings  have been successfully updated.'),
(29, 'Update Change Password', 'Password has been successfully updated.'),
(30, 'Update Salary Slip Settings', 'Salary Slip Settings has been successfully updated.'),
(31, 'Update Users Permission Settings', 'Users Permission has been successfully updated.'),
(32, 'Update Leave Application', 'Leave Application has been successfully updated.'),
(33, 'Sent Leave Appliction', 'Leave appliction has been successfully sent.'),
(34, 'Update Messges Settings', 'Messge has been successfully updated.'),
(35, 'Expense Amount Update', 'Expense amount has been successfully updated.'),
(36, 'Add Financials', 'Financial has been successfully added.'),
(37, 'Update Financials', 'Financial has been successfully updated.'),
(38, 'Duplicate Salary Slip', 'Salary Slip has been successfully duplicated.'),
(39, 'Update Settings', 'Settings field has been successfully updated.'),
(40, 'Add Deduction label', 'Deduction label has been successfully added.'),
(41, 'Update Deduction label', 'Deduction label has been successfully updated.'),
(42, 'Delete Settings Field label', 'Settings Field label has been successfully deleted.');

-- --------------------------------------------------------

--
-- Table structure for table `wphrm_notice`
--

CREATE TABLE `wphrm_notice` (
  `id` int(11) NOT NULL,
  `wphrmtitle` varchar(250) NOT NULL,
  `wphrmdesc` longtext NOT NULL,
  `wphrmcreatedDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wphrm_notifications`
--

CREATE TABLE `wphrm_notifications` (
  `id` int(11) NOT NULL,
  `wphrmUserID` int(11) NOT NULL,
  `wphrmFromId` int(11) NOT NULL,
  `wphrmDesc` varchar(255) NOT NULL,
  `notificationType` varchar(200) NOT NULL,
  `wphrmStatus` enum('unseen','seen') NOT NULL,
  `wphrmDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wphrm_notifications`
--

INSERT INTO `wphrm_notifications` (`id`, `wphrmUserID`, `wphrmFromId`, `wphrmDesc`, `notificationType`, `wphrmStatus`, `wphrmDate`) VALUES
(1, 3, 0, 'Your salary has been generated for May 2020.', 'Salary Generated', 'unseen', '2020-05-10'),
(2, 1, 0, 'Justin Del Rosario has requested a leave for May 20, 2020.', 'Leave Request', 'unseen', '2020-05-10'),
(3, 3, 0, 'Your leave application has been approved', 'Leave approved', 'unseen', '0000-00-00'),
(4, 1, 0, 'A new item has been added to the notice board.', 'Notice Board', 'unseen', '2020-05-10'),
(5, 2, 0, 'A new item has been added to the notice board.', 'Notice Board', 'unseen', '2020-05-10'),
(6, 3, 0, 'A new item has been added to the notice board.', 'Notice Board', 'unseen', '2020-05-10'),
(7, 3, 0, 'Your salary has been generated for May 2020.', 'Salary Generated', 'unseen', '2020-05-10');

-- --------------------------------------------------------

--
-- Table structure for table `wphrm_policies`
--

CREATE TABLE `wphrm_policies` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `downloadLink` longtext NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wphrm_policies`
--

INSERT INTO `wphrm_policies` (`id`, `name`, `desc`, `downloadLink`, `date`) VALUES
(2, 'Labor management relations', 'Compensation and Benefits are also known as Remuneration Specialists. They are generally responsible for overseeing employee compensation and benefits, compensation databases, job descriptions, benchmark compensation as well as annual performance reviews.', '', '2020-05-10'),
(3, 'Labor management relations', 'Refers to interactions between employees, as represented by labor unions, and their employers.', '', '2020-05-10'),
(4, 'Employment practices and placement', 'An employment practice is a term referring to the patterns that may be observed in a company’s hiring and workplace conditions.', '', '2020-05-10'),
(5, 'Workplace diversity', 'In a workplace, diversity means employing people who may be different from each other and who do not all come from the same background.', '', '2020-05-10'),
(6, 'Health, safety and security', 'The health, safety and security of your workplace often contributes to the overall success of the business.', '', '2020-05-10');

-- --------------------------------------------------------

--
-- Table structure for table `wphrm_projects_log`
--

CREATE TABLE `wphrm_projects_log` (
  `id` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `startTime` time NOT NULL,
  `endTime` time NOT NULL,
  `workedHour` time NOT NULL,
  `updateDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wphrm_salary`
--

CREATE TABLE `wphrm_salary` (
  `id` bigint(20) NOT NULL,
  `employeeID` bigint(50) NOT NULL,
  `employeeKey` varchar(255) NOT NULL,
  `employeeValue` longtext NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wphrm_salary`
--

INSERT INTO `wphrm_salary` (`id`, `employeeID`, `employeeKey`, `employeeValue`, `date`) VALUES
(5, 3, 'wphrmEarningfiledskey', 'YToyOntzOjE3OiJ3cGhybUVhcm5pbmdMZWJhbCI7YToxOntpOjA7czozOiJQYXkiO31zOjE3OiJ3cGhybUVhcm5pbmdWYWx1ZSI7YToxOntpOjA7czo4OiIyMDAwMC4wMCI7fX0=', '2020-05-01'),
(6, 3, 'wphrmDeductionfiledskey', 'YToyOntzOjE5OiJ3cGhybURlZHVjdGlvbkxlYmFsIjthOjA6e31zOjE5OiJ3cGhybURlZHVjdGlvblZhbHVlIjthOjA6e319', '2020-05-01'),
(7, 3, 'employeeSalaryGenerated', 'generated', '2020-05-01'),
(8, 3, 'employeeSalaryNote', 'YTo2OntzOjE3OiJ3cGhybV9pbmZvcm1hdGlvbiI7czo4OiJxd2VxZXFlcSI7czoxODoid3Bocm1fZGF5b2Z3b3JraW5nIjtzOjI6IjIwIjtzOjE1OiJ3cGhybV93b3JrbGVhdmUiO3M6NjoiUGFpZDowIjtzOjE3OiJ3cGhybV9kYXlvZndvcmtlZCI7czoxNjoiUDogNSAsIFRvdGFsID0gNSI7czoxMToid3Bocm1fSG91cnMiO3M6MDoiIjtzOjE2OiJ3cGhybV9hY2NvdW50X25vIjtzOjk6IjEyMzQ1Njc4OSI7fQ==', '2020-05-01');

-- --------------------------------------------------------

--
-- Table structure for table `wphrm_settings`
--

CREATE TABLE `wphrm_settings` (
  `id` int(11) NOT NULL,
  `authorID` varchar(200) NOT NULL,
  `settingKey` varchar(200) NOT NULL,
  `settingValue` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wphrm_settings`
--

INSERT INTO `wphrm_settings` (`id`, `authorID`, `settingKey`, `settingValue`) VALUES
(1, '0', 'wphrmMonths', 'YToxMjp7czoyOiIwMSI7czo3OiJKYW51YXJ5IjtzOjI6IjAyIjtzOjg6IkZlYnJ1YXJ5IjtzOjI6IjAzIjtzOjU6Ik1hcmNoIjtzOjI6IjA0IjtzOjU6IkFwcmlsIjtzOjI6IjA1IjtzOjM6Ik1heSI7czoyOiIwNiI7czo0OiJKdW5lIjtzOjI6IjA3IjtzOjQ6Ikp1bHkiO3M6MjoiMDgiO3M6NjoiQXVndXN0IjtzOjI6IjA5IjtzOjk6IlNlcHRlbWJlciI7aToxMDtzOjc6Ik9jdG9iZXIiO2k6MTE7czo4OiJOb3ZlbWJlciI7aToxMjtzOjg6IkRlY2VtYmVyIjt9'),
(3, '0', 'wphrmGeneralSettingsInfo', 'YTo2OntzOjE4OiJ3cGhybV9jb21wYW55X2xvZ28iO3M6NzY6Imh0dHA6Ly9sb2NhbGhvc3QvaHJtL3dwLWNvbnRlbnQvdXBsb2Fkcy8yMDIwLzA1L0RIUk0tbG9nby1jb2xvci1jaXJjbGUtMS5wbmciO3M6MjM6IndwaHJtX2NvbXBhbnlfZnVsbF9uYW1lIjtzOjE2OiJEb3VibGUgRCBDb21wYW55IjtzOjE5OiJ3cGhybV9jb21wYW55X2VtYWlsIjtzOjE4OiJkb3VibGVkY0BnbWFpbC5jb20iO3M6MTk6IndwaHJtX2NvbXBhbnlfcGhvbmUiO3M6MTE6IjA5MTAxMjI0OTA0IjtzOjIxOiJ3cGhybV9jb21wYW55X2FkZHJlc3MiO3M6NTA6IiM1MSBQdXJvayA2IEJhZ29uZyBTaWxhbmcgU3QuIFR1a3R1a2FuIFRhZ3VpZyBDaXR5IjtzOjE0OiJ3cGhybV9jdXJyZW5jeSI7czo3OiLigrEtUEhQIjt9'),
(7, '0', 'wphrmNotificationsSettingsInfo', 'YTo0OntzOjI5OiJ3cGhybV9hdHRlbmRhbmNlX25vdGlmaWNhdGlvbiI7TjtzOjI1OiJ3cGhybV9ub3RpY2Vfbm90aWZpY2F0aW9uIjtzOjE6IjEiO3M6MjQ6IndwaHJtX2xlYXZlX25vdGlmaWNhdGlvbiI7czoxOiIxIjtzOjE4OiJ3cGhybV9lbXBsb3llZV9hZGQiO047fQ=='),
(8, '0', 'wphrmSalarySlipInfo', 'YTo2OntzOjE2OiJ3cGhybV9sb2dvX2FsaWduIjtzOjQ6ImxlZnQiO3M6MTg6IndwaHJtX3NsaXBfY29udGVudCI7czo1OiJXUEhSTSI7czoyNjoid3Bocm1fZm9vdGVyX2NvbnRlbnRfYWxpZ24iO3M6NToicmlnaHQiO3M6MTg6IndwaHJtX2JvcmRlcl9jb2xvciI7czoxOiIjIjtzOjIyOiJ3cGhybV9iYWNrZ3JvdW5kX2NvbG9yIjtzOjc6IiNFQ0VGRjEiO3M6MTY6IndwaHJtX2ZvbnRfY29sb3IiO3M6NzoiIzU0NkU3QSI7fQ=='),
(9, '0', 'wphrmUserPermissionInfo', 'YToxOntzOjIxOiJ3cGhybV91c2VyX3Blcm1pc3Npb24iO3M6MTA6InN1YnNjcmliZXIiO30='),
(10, '0', 'wphrmExpenseReportInfo', 'YToxOntzOjIwOiJ3cGhybV9leHBlbnNlX2Ftb3VudCI7czo1OiIyMDAwMCI7fQ=='),
(11, '0', 'Bankfieldskey', 'YToxOntzOjE1OiJCYW5rZmllbGRzbGViYWwiO2E6Mjp7aTowO3M6MTE6IkJyYW5jaCBOYW1lIjtpOjE7czo5OiJJRlNDIENvZGUiO319'),
(12, '0', 'Otherfieldskey', 'YToxOntzOjE2OiJPdGhlcmZpZWxkc2xlYmFsIjthOjI6e2k6MDtzOjEzOiJHbWFpbCBBY2NvdW50IjtpOjE7czoxMzoiU2t5cGUgQWNjb3VudCI7fX0='),
(13, '0', 'salarydetailfieldskey', 'YToxOntzOjIyOiJzYWxhcnlkZXRhaWxmaWVsZGxhYmVsIjthOjI6e2k6MDtzOjE0OiJKb2luaW5nIFNhbGFyeSI7aToxO3M6MTI6IkJhc2ljIFNhbGFyeSI7fX0='),
(14, '0', 'wphrmEarningInfo', 'YTozOntzOjEyOiJlYXJuaW5nTGViYWwiO2E6Mzp7aTowO3M6MzoiUGF5IjtpOjE7czo0OiJ0ZXN0IjtpOjI7czo0OiJzc3NzIjt9czoxMToiZWFybmluZ3R5cGUiO2E6Mzp7aTowO3M6NzoicGFtb3VudCI7aToxO3M6NzoicGFtb3VudCI7aToyO3M6NzoicGFtb3VudCI7fXM6MTM6ImVhcm5pbmdhbW91bnQiO2E6Mzp7aTowO3M6MzoiMTAwIjtpOjE7czo2OiIxMjMxMjMiO2k6MjtzOjQ6IjIzMjIiO319'),
(15, '0', 'wphrmDeductionInfo', 'YTozOntzOjE0OiJkZWR1Y3Rpb25sZWJhbCI7YToyOntpOjA7czozOiJUYXgiO2k6MTtzOjU6ImFzZHNhIjt9czoxMzoiZGVkdWN0aW9udHlwZSI7YToyOntpOjA7czo3OiJwYW1vdW50IjtpOjE7czo3OiJwYW1vdW50Ijt9czoxNToiZGVkdWN0aW9uYW1vdW50IjthOjI6e2k6MDtzOjE6IjIiO2k6MTtzOjU6IjM0NDY0Ijt9fQ=='),
(16, '', 'wphrsalaryDayOrHourlyInfo', 'YToxOntzOjE1OiJ3cGhybS1hY2NvcmRpbmciO3M6MzoiRGF5Ijt9'),
(17, '', 'wphrmFrontEndInfo', 'YTozOntzOjEwOiJ3cGhybV9sb2dvIjtzOjc0OiJodHRwOi8vbG9jYWxob3N0L2hybS93cC1jb250ZW50L3VwbG9hZHMvMjAyMC8wNS9ESFJNLWxvZ28tY29sb3ItY2lyY2xlLnBuZyI7czoyMjoid3Bocm1fYmFja2dyb3VuZF9pbWFnZSI7czo1NToiaHR0cDovL2xvY2FsaG9zdC9ocm0vd3AtY29udGVudC91cGxvYWRzLzIwMjAvMDUvMi0yLmpwZyI7czoxMzoid3Bocm1fbWVudV9pZCI7YToxMjp7aTowO3M6OToiZGFzaGJvYXJkIjtpOjE7czoxMDoiZGVwYXJ0bWVudCI7aToyO3M6OToiZW1wbG95ZWVzIjtpOjM7czoxMToiYXR0ZW5kYW5jZXMiO2k6NDtzOjg6ImhvbGlkYXlzIjtpOjU7czo2OiJzYWxhcnkiO2k6NjtzOjU6ImxlYXZlIjtpOjc7czoxMDoiZmluYW5jaWFscyI7aTo4O3M6Nzoibm90aWNlcyI7aTo5O3M6MTI6Im5vdGlmaWNhdGlvbiI7aToxMDtzOjg6InBvbGljaWVzIjtpOjExO3M6ODoic2V0dGluZ3MiO319'),
(18, '', 'wphrmSalaryGenerationSettings', 'YTozOntzOjk6Im1vbnRoZGF0ZSI7czoxOiIxIjtzOjE1OiJpbmZvcm1hdGlvbnRleHQiO3M6MDoiIjtzOjE4OiJhdXRvbWF0aWMtZ2VuZXJhdGUiO3M6Mjoib24iO30='),
(19, '', 'wphrmAutomaticAttendance', 'YTo0OntzOjIwOiJhdXRvbWF0aWMtYXR0ZW5kYW5jZSI7czozOiJvZmYiO3M6MzM6ImF1dG9tYXRpYy1hdHRlbmRhbmNlLWxvZ2luLWxvZ291dCI7czozOiJvZmYiO3M6MTc6InRvdGFsX29mZmljZV90aW1lIjtzOjE6IjgiO3M6MjI6ImhhbGZfZGF5X3dvcmtpbmdfaG91cnMiO3M6MToiMyI7fQ=='),
(20, '', 'WPHRMHideShowEmployeeSectionInfo', 'YTo0OntzOjIwOiJiYW5rLWFjY291bnQtZGV0YWlscyI7czoxOiIxIjtzOjE0OiJzYWxhcnktZGV0YWlscyI7czoxOiIxIjtzOjE3OiJkb2N1bWVudHMtZGV0YWlscyI7czoxOiIxIjtzOjEzOiJvdGhlci1kZXRhaWxzIjtzOjE6IjEiO30=');

-- --------------------------------------------------------

--
-- Table structure for table `wphrm_weekly_salary`
--

CREATE TABLE `wphrm_weekly_salary` (
  `id` bigint(20) NOT NULL,
  `employeeID` bigint(50) NOT NULL,
  `weekOn` varchar(255) NOT NULL,
  `employeeKey` varchar(255) NOT NULL,
  `employeeValue` longtext NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-05-10 01:07:40', '2020-05-10 01:07:40', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/hrm', 'yes'),
(2, 'home', 'http://localhost/hrm', 'yes'),
(3, 'blogname', '', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'delrosariojohnhenry@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:258:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:12:\"^dashboard/?\";s:29:\"index.php?dashboard=dashboard\";s:14:\"^wphrm-login/?\";s:33:\"index.php?wphrm-login=wphrm-login\";s:13:\"^leave-type/?\";s:31:\"index.php?leave-type=leave-type\";s:15:\"^total-salary/?\";s:35:\"index.php?total-salary=total-salary\";s:13:\"^department/?\";s:31:\"index.php?department=department\";s:14:\"^designation/?\";s:33:\"index.php?designation=designation\";s:11:\"^policies/?\";s:27:\"index.php?policies=policies\";s:11:\"^settings/?\";s:27:\"index.php?settings=settings\";s:20:\"^financials-report/?\";s:45:\"index.php?financials-report=financials-report\";s:10:\"^account/?\";s:25:\"index.php?account=account\";s:16:\"^employee-list/?\";s:37:\"index.php?employee-list=employee-list\";s:16:\"^employee-view/?\";s:37:\"index.php?employee-view=employee-view\";s:11:\"^holidays/?\";s:27:\"index.php?holidays=holidays\";s:19:\"^notices-add-edit/?\";s:43:\"index.php?notices-add-edit=notices-add-edit\";s:10:\"^notices/?\";s:25:\"index.php?notices=notices\";s:14:\"^attendances/?\";s:33:\"index.php?attendances=attendances\";s:8:\"^leave/?\";s:21:\"index.php?leave=leave\";s:14:\"^salary-list/?\";s:33:\"index.php?salary-list=salary-list\";s:14:\"^salary-week/?\";s:33:\"index.php?salary-week=salary-week\";s:15:\"^salary-month/?\";s:35:\"index.php?salary-month=salary-month\";s:15:\"^notification/?\";s:35:\"index.php?notification=notification\";s:14:\"^view-notice/?\";s:33:\"index.php?view-notice=view-notice\";s:18:\"^mark-attendance/?\";s:41:\"index.php?mark-attendance=mark-attendance\";s:18:\"^view-attendance/?\";s:41:\"index.php?view-attendance=view-attendance\";s:27:\"^salary-slip-details-week/?\";s:59:\"index.php?salary-slip-details-week=salary-slip-details-week\";s:22:\"^salary-slip-details/?\";s:49:\"index.php?salary-slip-details=salary-slip-details\";s:9:\"^absent/?\";s:23:\"index.php?absent=absent\";s:12:\"^emp-dates/?\";s:29:\"index.php?emp-dates=emp-dates\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=6&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/dashboard(/(.*))?/?$\";s:102:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&dashboard=$matches[6]\";s:67:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wphrm-login(/(.*))?/?$\";s:104:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wphrm-login=$matches[6]\";s:66:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/leave-type(/(.*))?/?$\";s:103:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&leave-type=$matches[6]\";s:68:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/total-salary(/(.*))?/?$\";s:105:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&total-salary=$matches[6]\";s:66:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/department(/(.*))?/?$\";s:103:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&department=$matches[6]\";s:67:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/designation(/(.*))?/?$\";s:104:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&designation=$matches[6]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/policies(/(.*))?/?$\";s:101:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&policies=$matches[6]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/settings(/(.*))?/?$\";s:101:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&settings=$matches[6]\";s:73:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/financials-report(/(.*))?/?$\";s:110:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&financials-report=$matches[6]\";s:63:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/account(/(.*))?/?$\";s:100:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&account=$matches[6]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/employee-list(/(.*))?/?$\";s:106:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&employee-list=$matches[6]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/employee-view(/(.*))?/?$\";s:106:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&employee-view=$matches[6]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/holidays(/(.*))?/?$\";s:101:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&holidays=$matches[6]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/notices-add-edit(/(.*))?/?$\";s:109:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&notices-add-edit=$matches[6]\";s:63:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/notices(/(.*))?/?$\";s:100:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&notices=$matches[6]\";s:67:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/attendances(/(.*))?/?$\";s:104:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&attendances=$matches[6]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/leave(/(.*))?/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&leave=$matches[6]\";s:67:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/salary-list(/(.*))?/?$\";s:104:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&salary-list=$matches[6]\";s:67:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/salary-week(/(.*))?/?$\";s:104:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&salary-week=$matches[6]\";s:68:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/salary-month(/(.*))?/?$\";s:105:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&salary-month=$matches[6]\";s:68:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/notification(/(.*))?/?$\";s:105:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&notification=$matches[6]\";s:67:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/view-notice(/(.*))?/?$\";s:104:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&view-notice=$matches[6]\";s:71:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/mark-attendance(/(.*))?/?$\";s:108:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&mark-attendance=$matches[6]\";s:71:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/view-attendance(/(.*))?/?$\";s:108:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&view-attendance=$matches[6]\";s:80:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/salary-slip-details-week(/(.*))?/?$\";s:117:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&salary-slip-details-week=$matches[6]\";s:75:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/salary-slip-details(/(.*))?/?$\";s:112:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&salary-slip-details=$matches[6]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/absent(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&absent=$matches[6]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/emp-dates(/(.*))?/?$\";s:102:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&emp-dates=$matches[6]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/dashboard(/(.*))?/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&dashboard=$matches[5]\";s:59:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wphrm-login(/(.*))?/?$\";s:87:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wphrm-login=$matches[5]\";s:58:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/leave-type(/(.*))?/?$\";s:86:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&leave-type=$matches[5]\";s:60:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/total-salary(/(.*))?/?$\";s:88:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&total-salary=$matches[5]\";s:58:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/department(/(.*))?/?$\";s:86:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&department=$matches[5]\";s:59:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/designation(/(.*))?/?$\";s:87:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&designation=$matches[5]\";s:56:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/policies(/(.*))?/?$\";s:84:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&policies=$matches[5]\";s:56:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/settings(/(.*))?/?$\";s:84:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&settings=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/financials-report(/(.*))?/?$\";s:93:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&financials-report=$matches[5]\";s:55:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/account(/(.*))?/?$\";s:83:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&account=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/employee-list(/(.*))?/?$\";s:89:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&employee-list=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/employee-view(/(.*))?/?$\";s:89:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&employee-view=$matches[5]\";s:56:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/holidays(/(.*))?/?$\";s:84:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&holidays=$matches[5]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/notices-add-edit(/(.*))?/?$\";s:92:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&notices-add-edit=$matches[5]\";s:55:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/notices(/(.*))?/?$\";s:83:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&notices=$matches[5]\";s:59:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/attendances(/(.*))?/?$\";s:87:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&attendances=$matches[5]\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/leave(/(.*))?/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&leave=$matches[5]\";s:59:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/salary-list(/(.*))?/?$\";s:87:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&salary-list=$matches[5]\";s:59:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/salary-week(/(.*))?/?$\";s:87:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&salary-week=$matches[5]\";s:60:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/salary-month(/(.*))?/?$\";s:88:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&salary-month=$matches[5]\";s:60:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/notification(/(.*))?/?$\";s:88:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&notification=$matches[5]\";s:59:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/view-notice(/(.*))?/?$\";s:87:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&view-notice=$matches[5]\";s:63:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/mark-attendance(/(.*))?/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&mark-attendance=$matches[5]\";s:63:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/view-attendance(/(.*))?/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&view-attendance=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/salary-slip-details-week(/(.*))?/?$\";s:100:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&salary-slip-details-week=$matches[5]\";s:67:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/salary-slip-details(/(.*))?/?$\";s:95:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&salary-slip-details=$matches[5]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/absent(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&absent=$matches[5]\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/emp-dates(/(.*))?/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&emp-dates=$matches[5]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:44:\"([0-9]{4})/([0-9]{1,2})/dashboard(/(.*))?/?$\";s:69:\"index.php?year=$matches[1]&monthnum=$matches[2]&dashboard=$matches[4]\";s:46:\"([0-9]{4})/([0-9]{1,2})/wphrm-login(/(.*))?/?$\";s:71:\"index.php?year=$matches[1]&monthnum=$matches[2]&wphrm-login=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/leave-type(/(.*))?/?$\";s:70:\"index.php?year=$matches[1]&monthnum=$matches[2]&leave-type=$matches[4]\";s:47:\"([0-9]{4})/([0-9]{1,2})/total-salary(/(.*))?/?$\";s:72:\"index.php?year=$matches[1]&monthnum=$matches[2]&total-salary=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/department(/(.*))?/?$\";s:70:\"index.php?year=$matches[1]&monthnum=$matches[2]&department=$matches[4]\";s:46:\"([0-9]{4})/([0-9]{1,2})/designation(/(.*))?/?$\";s:71:\"index.php?year=$matches[1]&monthnum=$matches[2]&designation=$matches[4]\";s:43:\"([0-9]{4})/([0-9]{1,2})/policies(/(.*))?/?$\";s:68:\"index.php?year=$matches[1]&monthnum=$matches[2]&policies=$matches[4]\";s:43:\"([0-9]{4})/([0-9]{1,2})/settings(/(.*))?/?$\";s:68:\"index.php?year=$matches[1]&monthnum=$matches[2]&settings=$matches[4]\";s:52:\"([0-9]{4})/([0-9]{1,2})/financials-report(/(.*))?/?$\";s:77:\"index.php?year=$matches[1]&monthnum=$matches[2]&financials-report=$matches[4]\";s:42:\"([0-9]{4})/([0-9]{1,2})/account(/(.*))?/?$\";s:67:\"index.php?year=$matches[1]&monthnum=$matches[2]&account=$matches[4]\";s:48:\"([0-9]{4})/([0-9]{1,2})/employee-list(/(.*))?/?$\";s:73:\"index.php?year=$matches[1]&monthnum=$matches[2]&employee-list=$matches[4]\";s:48:\"([0-9]{4})/([0-9]{1,2})/employee-view(/(.*))?/?$\";s:73:\"index.php?year=$matches[1]&monthnum=$matches[2]&employee-view=$matches[4]\";s:43:\"([0-9]{4})/([0-9]{1,2})/holidays(/(.*))?/?$\";s:68:\"index.php?year=$matches[1]&monthnum=$matches[2]&holidays=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/notices-add-edit(/(.*))?/?$\";s:76:\"index.php?year=$matches[1]&monthnum=$matches[2]&notices-add-edit=$matches[4]\";s:42:\"([0-9]{4})/([0-9]{1,2})/notices(/(.*))?/?$\";s:67:\"index.php?year=$matches[1]&monthnum=$matches[2]&notices=$matches[4]\";s:46:\"([0-9]{4})/([0-9]{1,2})/attendances(/(.*))?/?$\";s:71:\"index.php?year=$matches[1]&monthnum=$matches[2]&attendances=$matches[4]\";s:40:\"([0-9]{4})/([0-9]{1,2})/leave(/(.*))?/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&leave=$matches[4]\";s:46:\"([0-9]{4})/([0-9]{1,2})/salary-list(/(.*))?/?$\";s:71:\"index.php?year=$matches[1]&monthnum=$matches[2]&salary-list=$matches[4]\";s:46:\"([0-9]{4})/([0-9]{1,2})/salary-week(/(.*))?/?$\";s:71:\"index.php?year=$matches[1]&monthnum=$matches[2]&salary-week=$matches[4]\";s:47:\"([0-9]{4})/([0-9]{1,2})/salary-month(/(.*))?/?$\";s:72:\"index.php?year=$matches[1]&monthnum=$matches[2]&salary-month=$matches[4]\";s:47:\"([0-9]{4})/([0-9]{1,2})/notification(/(.*))?/?$\";s:72:\"index.php?year=$matches[1]&monthnum=$matches[2]&notification=$matches[4]\";s:46:\"([0-9]{4})/([0-9]{1,2})/view-notice(/(.*))?/?$\";s:71:\"index.php?year=$matches[1]&monthnum=$matches[2]&view-notice=$matches[4]\";s:50:\"([0-9]{4})/([0-9]{1,2})/mark-attendance(/(.*))?/?$\";s:75:\"index.php?year=$matches[1]&monthnum=$matches[2]&mark-attendance=$matches[4]\";s:50:\"([0-9]{4})/([0-9]{1,2})/view-attendance(/(.*))?/?$\";s:75:\"index.php?year=$matches[1]&monthnum=$matches[2]&view-attendance=$matches[4]\";s:59:\"([0-9]{4})/([0-9]{1,2})/salary-slip-details-week(/(.*))?/?$\";s:84:\"index.php?year=$matches[1]&monthnum=$matches[2]&salary-slip-details-week=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/salary-slip-details(/(.*))?/?$\";s:79:\"index.php?year=$matches[1]&monthnum=$matches[2]&salary-slip-details=$matches[4]\";s:41:\"([0-9]{4})/([0-9]{1,2})/absent(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&absent=$matches[4]\";s:44:\"([0-9]{4})/([0-9]{1,2})/emp-dates(/(.*))?/?$\";s:69:\"index.php?year=$matches[1]&monthnum=$matches[2]&emp-dates=$matches[4]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:31:\"([0-9]{4})/dashboard(/(.*))?/?$\";s:48:\"index.php?year=$matches[1]&dashboard=$matches[3]\";s:33:\"([0-9]{4})/wphrm-login(/(.*))?/?$\";s:50:\"index.php?year=$matches[1]&wphrm-login=$matches[3]\";s:32:\"([0-9]{4})/leave-type(/(.*))?/?$\";s:49:\"index.php?year=$matches[1]&leave-type=$matches[3]\";s:34:\"([0-9]{4})/total-salary(/(.*))?/?$\";s:51:\"index.php?year=$matches[1]&total-salary=$matches[3]\";s:32:\"([0-9]{4})/department(/(.*))?/?$\";s:49:\"index.php?year=$matches[1]&department=$matches[3]\";s:33:\"([0-9]{4})/designation(/(.*))?/?$\";s:50:\"index.php?year=$matches[1]&designation=$matches[3]\";s:30:\"([0-9]{4})/policies(/(.*))?/?$\";s:47:\"index.php?year=$matches[1]&policies=$matches[3]\";s:30:\"([0-9]{4})/settings(/(.*))?/?$\";s:47:\"index.php?year=$matches[1]&settings=$matches[3]\";s:39:\"([0-9]{4})/financials-report(/(.*))?/?$\";s:56:\"index.php?year=$matches[1]&financials-report=$matches[3]\";s:29:\"([0-9]{4})/account(/(.*))?/?$\";s:46:\"index.php?year=$matches[1]&account=$matches[3]\";s:35:\"([0-9]{4})/employee-list(/(.*))?/?$\";s:52:\"index.php?year=$matches[1]&employee-list=$matches[3]\";s:35:\"([0-9]{4})/employee-view(/(.*))?/?$\";s:52:\"index.php?year=$matches[1]&employee-view=$matches[3]\";s:30:\"([0-9]{4})/holidays(/(.*))?/?$\";s:47:\"index.php?year=$matches[1]&holidays=$matches[3]\";s:38:\"([0-9]{4})/notices-add-edit(/(.*))?/?$\";s:55:\"index.php?year=$matches[1]&notices-add-edit=$matches[3]\";s:29:\"([0-9]{4})/notices(/(.*))?/?$\";s:46:\"index.php?year=$matches[1]&notices=$matches[3]\";s:33:\"([0-9]{4})/attendances(/(.*))?/?$\";s:50:\"index.php?year=$matches[1]&attendances=$matches[3]\";s:27:\"([0-9]{4})/leave(/(.*))?/?$\";s:44:\"index.php?year=$matches[1]&leave=$matches[3]\";s:33:\"([0-9]{4})/salary-list(/(.*))?/?$\";s:50:\"index.php?year=$matches[1]&salary-list=$matches[3]\";s:33:\"([0-9]{4})/salary-week(/(.*))?/?$\";s:50:\"index.php?year=$matches[1]&salary-week=$matches[3]\";s:34:\"([0-9]{4})/salary-month(/(.*))?/?$\";s:51:\"index.php?year=$matches[1]&salary-month=$matches[3]\";s:34:\"([0-9]{4})/notification(/(.*))?/?$\";s:51:\"index.php?year=$matches[1]&notification=$matches[3]\";s:33:\"([0-9]{4})/view-notice(/(.*))?/?$\";s:50:\"index.php?year=$matches[1]&view-notice=$matches[3]\";s:37:\"([0-9]{4})/mark-attendance(/(.*))?/?$\";s:54:\"index.php?year=$matches[1]&mark-attendance=$matches[3]\";s:37:\"([0-9]{4})/view-attendance(/(.*))?/?$\";s:54:\"index.php?year=$matches[1]&view-attendance=$matches[3]\";s:46:\"([0-9]{4})/salary-slip-details-week(/(.*))?/?$\";s:63:\"index.php?year=$matches[1]&salary-slip-details-week=$matches[3]\";s:41:\"([0-9]{4})/salary-slip-details(/(.*))?/?$\";s:58:\"index.php?year=$matches[1]&salary-slip-details=$matches[3]\";s:28:\"([0-9]{4})/absent(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&absent=$matches[3]\";s:31:\"([0-9]{4})/emp-dates(/(.*))?/?$\";s:48:\"index.php?year=$matches[1]&emp-dates=$matches[3]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:28:\"(.?.+?)/dashboard(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&dashboard=$matches[3]\";s:30:\"(.?.+?)/wphrm-login(/(.*))?/?$\";s:54:\"index.php?pagename=$matches[1]&wphrm-login=$matches[3]\";s:29:\"(.?.+?)/leave-type(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&leave-type=$matches[3]\";s:31:\"(.?.+?)/total-salary(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&total-salary=$matches[3]\";s:29:\"(.?.+?)/department(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&department=$matches[3]\";s:30:\"(.?.+?)/designation(/(.*))?/?$\";s:54:\"index.php?pagename=$matches[1]&designation=$matches[3]\";s:27:\"(.?.+?)/policies(/(.*))?/?$\";s:51:\"index.php?pagename=$matches[1]&policies=$matches[3]\";s:27:\"(.?.+?)/settings(/(.*))?/?$\";s:51:\"index.php?pagename=$matches[1]&settings=$matches[3]\";s:36:\"(.?.+?)/financials-report(/(.*))?/?$\";s:60:\"index.php?pagename=$matches[1]&financials-report=$matches[3]\";s:26:\"(.?.+?)/account(/(.*))?/?$\";s:50:\"index.php?pagename=$matches[1]&account=$matches[3]\";s:32:\"(.?.+?)/employee-list(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&employee-list=$matches[3]\";s:32:\"(.?.+?)/employee-view(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&employee-view=$matches[3]\";s:27:\"(.?.+?)/holidays(/(.*))?/?$\";s:51:\"index.php?pagename=$matches[1]&holidays=$matches[3]\";s:35:\"(.?.+?)/notices-add-edit(/(.*))?/?$\";s:59:\"index.php?pagename=$matches[1]&notices-add-edit=$matches[3]\";s:26:\"(.?.+?)/notices(/(.*))?/?$\";s:50:\"index.php?pagename=$matches[1]&notices=$matches[3]\";s:30:\"(.?.+?)/attendances(/(.*))?/?$\";s:54:\"index.php?pagename=$matches[1]&attendances=$matches[3]\";s:24:\"(.?.+?)/leave(/(.*))?/?$\";s:48:\"index.php?pagename=$matches[1]&leave=$matches[3]\";s:30:\"(.?.+?)/salary-list(/(.*))?/?$\";s:54:\"index.php?pagename=$matches[1]&salary-list=$matches[3]\";s:30:\"(.?.+?)/salary-week(/(.*))?/?$\";s:54:\"index.php?pagename=$matches[1]&salary-week=$matches[3]\";s:31:\"(.?.+?)/salary-month(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&salary-month=$matches[3]\";s:31:\"(.?.+?)/notification(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&notification=$matches[3]\";s:30:\"(.?.+?)/view-notice(/(.*))?/?$\";s:54:\"index.php?pagename=$matches[1]&view-notice=$matches[3]\";s:34:\"(.?.+?)/mark-attendance(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&mark-attendance=$matches[3]\";s:34:\"(.?.+?)/view-attendance(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&view-attendance=$matches[3]\";s:43:\"(.?.+?)/salary-slip-details-week(/(.*))?/?$\";s:67:\"index.php?pagename=$matches[1]&salary-slip-details-week=$matches[3]\";s:38:\"(.?.+?)/salary-slip-details(/(.*))?/?$\";s:62:\"index.php?pagename=$matches[1]&salary-slip-details=$matches[3]\";s:25:\"(.?.+?)/absent(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&absent=$matches[3]\";s:28:\"(.?.+?)/emp-dates(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&emp-dates=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:19:\"members/members.php\";i:1;s:33:\"wphrm-frontend/wphrm-frontend.php\";i:2;s:15:\"wphrm/wphrm.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:55:\"C:\\xampp1\\htdocs\\hrm/wp-content/plugins/wphrm/wphrm.php\";i:1;s:73:\"C:\\xampp1\\htdocs\\hrm/wp-content/plugins/wphrm-frontend/wphrm-frontend.php\";i:2;s:57:\"C:\\xampp1\\htdocs\\hrm/wp-content/plugins/akismet/index.php\";i:3;s:59:\"C:\\xampp1\\htdocs\\hrm/wp-content/plugins/akismet/akismet.php\";i:4;s:0:\"\";}', 'no'),
(40, 'template', 'impressive-business', 'yes'),
(41, 'stylesheet', 'impressive-business', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '47018', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '6', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1604624851', 'yes'),
(94, 'initial_db_version', '47018', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:80:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:21:\"manageOptionsEmployee\";b:1;s:23:\"manageOptionsDepartment\";b:1;s:21:\"manageOptionsHolidays\";b:1;s:24:\"manageOptionsAttendances\";b:1;s:30:\"manageOptionsLeaveApplications\";b:1;s:19:\"manageOptionsSalary\";b:1;s:22:\"manageOptionsDashboard\";b:1;s:19:\"manageOptionsNotice\";b:1;s:21:\"manageOptionsSettings\";b:1;s:24:\"manageOptionsSlipDetails\";b:1;s:23:\"manageOptionsFinancials\";b:1;s:19:\"manageOptionsAbsent\";b:1;s:20:\"manageOptionsFbGroup\";b:1;s:26:\"manageOptionsNotifications\";b:1;s:16:\"restrict_content\";b:1;s:10:\"list_roles\";b:1;s:12:\"create_roles\";b:1;s:12:\"delete_roles\";b:1;s:10:\"edit_roles\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:42:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:25:\"manageOptionsEmployeeView\";b:1;s:24:\"manageOptionsHolidayView\";b:1;s:28:\"manageOptionsAttendancesView\";b:1;s:23:\"manageOptionsSalaryView\";b:1;s:26:\"manageOptionsDashboardView\";b:1;s:26:\"manageOptionsNotifications\";b:1;s:34:\"manageOptionsLeaveApplicationsView\";b:1;s:23:\"manageOptionsNoticeView\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:18:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:25:\"manageOptionsEmployeeView\";b:1;s:24:\"manageOptionsHolidayView\";b:1;s:28:\"manageOptionsAttendancesView\";b:1;s:23:\"manageOptionsSalaryView\";b:1;s:26:\"manageOptionsDashboardView\";b:1;s:26:\"manageOptionsNotifications\";b:1;s:34:\"manageOptionsLeaveApplicationsView\";b:1;s:23:\"manageOptionsNoticeView\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:13:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:25:\"manageOptionsEmployeeView\";b:1;s:24:\"manageOptionsHolidayView\";b:1;s:28:\"manageOptionsAttendancesView\";b:1;s:23:\"manageOptionsSalaryView\";b:1;s:26:\"manageOptionsDashboardView\";b:1;s:26:\"manageOptionsNotifications\";b:1;s:34:\"manageOptionsLeaveApplicationsView\";b:1;s:23:\"manageOptionsNoticeView\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:10:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;s:25:\"manageOptionsEmployeeView\";b:1;s:24:\"manageOptionsHolidayView\";b:1;s:28:\"manageOptionsAttendancesView\";b:1;s:23:\"manageOptionsSalaryView\";b:1;s:26:\"manageOptionsDashboardView\";b:1;s:26:\"manageOptionsNotifications\";b:1;s:34:\"manageOptionsLeaveApplicationsView\";b:1;s:23:\"manageOptionsNoticeView\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:8:{i:1589306864;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1589332062;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1589332064;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1589332085;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1589332093;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1589332175;a:1:{s:27:\"WPHRMUpdateCheckEventAction\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"everyMinutes\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1589764062;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:0:{}', 'yes'),
(116, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1589075085;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(124, '_site_transient_timeout_browser_31f552011cd49d12bc3cd930bb193459', '1589677689', 'no'),
(125, '_site_transient_browser_31f552011cd49d12bc3cd930bb193459', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"81.0.4044.138\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(126, '_site_transient_timeout_php_check_97f83d63b8a66f6e8c057d89a83d8845', '1589677691', 'no'),
(127, '_site_transient_php_check_97f83d63b8a66f6e8c057d89a83d8845', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(128, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.1\";s:7:\"version\";s:5:\"5.4.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1589306571;s:15:\"version_checked\";s:5:\"5.4.1\";s:12:\"translations\";a:0:{}}', 'no'),
(129, 'can_compress_scripts', '1', 'no'),
(132, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:29:\"delrosariojohnhenry@gmail.com\";s:7:\"version\";s:5:\"5.4.1\";s:9:\"timestamp\";i:1589072897;}', 'no'),
(144, 'recently_activated', 'a:0:{}', 'yes'),
(157, 'theme_mods_impressive-business', 'a:1:{s:18:\"custom_css_post_id\";i:16;}', 'yes'),
(158, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1589306584;s:7:\"checked\";a:4:{s:19:\"impressive-business\";s:6:\"1.0.13\";s:14:\"twentynineteen\";s:3:\"1.5\";s:15:\"twentyseventeen\";s:3:\"2.3\";s:12:\"twentytwenty\";s:3:\"1.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(159, 'current_theme', 'Impressive Business', 'yes'),
(160, 'theme_switched', '', 'yes'),
(161, 'theme_switched_via_customizer', '', 'yes'),
(162, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(172, 'members_addons_migrated', '1', 'yes'),
(173, 'widget_members-widget-login', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(174, 'widget_members-widget-users', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(183, '_transient_health-check-site-status-result', '{\"good\":10,\"recommended\":7,\"critical\":0}', 'yes'),
(188, '_site_transient_timeout_theme_roots', '1589308380', 'no'),
(189, '_site_transient_theme_roots', 'a:4:{s:19:\"impressive-business\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(190, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1589306587;s:7:\"checked\";a:5:{s:19:\"akismet/akismet.php\";s:5:\"4.1.4\";s:9:\"hello.php\";s:5:\"1.7.2\";s:19:\"members/members.php\";s:5:\"3.0.8\";s:15:\"wphrm/wphrm.php\";s:5:\"4.0.5\";s:33:\"wphrm-frontend/wphrm-frontend.php\";s:5:\"1.1.7\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.5\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"members/members.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/members\";s:4:\"slug\";s:7:\"members\";s:6:\"plugin\";s:19:\"members/members.php\";s:11:\"new_version\";s:5:\"3.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/members/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/members.3.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/members/assets/icon-256x256.png?rev=2126126\";s:2:\"1x\";s:60:\"https://ps.w.org/members/assets/icon-128x128.png?rev=2126126\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/members/assets/banner-1544x500.png?rev=2126126\";s:2:\"1x\";s:62:\"https://ps.w.org/members/assets/banner-772x250.png?rev=2126126\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(5, 2, '_edit_lock', '1589073918:1'),
(6, 1, '_wp_trash_meta_status', 'publish'),
(7, 1, '_wp_trash_meta_time', '1589074183'),
(8, 1, '_wp_desired_post_slug', 'hello-world'),
(9, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(10, 8, '_wp_trash_meta_status', 'publish'),
(11, 8, '_wp_trash_meta_time', '1589074250'),
(12, 9, '_wp_trash_meta_status', 'publish'),
(13, 9, '_wp_trash_meta_time', '1589075085'),
(14, 2, '_wp_trash_meta_status', 'publish'),
(15, 2, '_wp_trash_meta_time', '1589075375'),
(16, 2, '_wp_desired_post_slug', 'sample-page'),
(17, 3, '_wp_trash_meta_status', 'draft'),
(18, 3, '_wp_trash_meta_time', '1589075379'),
(19, 3, '_wp_desired_post_slug', 'privacy-policy'),
(20, 6, '_edit_lock', '1589084947:1'),
(21, 6, '_edit_last', '1'),
(22, 6, '_wp_page_template', 'default'),
(23, 14, '_wp_trash_meta_status', 'publish'),
(24, 14, '_wp_trash_meta_time', '1589075616'),
(25, 15, '_wp_trash_meta_status', 'publish'),
(26, 15, '_wp_trash_meta_time', '1589075903'),
(27, 18, '_wp_trash_meta_status', 'publish'),
(28, 18, '_wp_trash_meta_time', '1589076117'),
(29, 20, '_wp_trash_meta_status', 'publish'),
(30, 20, '_wp_trash_meta_time', '1589084913'),
(31, 22, '_wp_trash_meta_status', 'publish'),
(32, 22, '_wp_trash_meta_time', '1589085085');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-05-10 01:07:40', '2020-05-10 01:07:40', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2020-05-10 01:29:43', '2020-05-10 01:29:43', '', 0, 'http://localhost/hrm/?p=1', 0, 'post', '', 1),
(2, 1, '2020-05-10 01:07:40', '2020-05-10 01:07:40', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/hrm/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2020-05-10 01:49:35', '2020-05-10 01:49:35', '', 0, 'http://localhost/hrm/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-05-10 01:07:40', '2020-05-10 01:07:40', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/hrm.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2020-05-10 01:49:39', '2020-05-10 01:49:39', '', 0, 'http://localhost/hrm/?page_id=3', 0, 'page', '', 0),
(4, 1, '2020-05-10 01:08:12', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-05-10 01:08:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/hrm/?p=4', 0, 'post', '', 0),
(6, 2, '2020-05-10 01:10:46', '2020-05-10 01:10:46', '[wphrm-login]', 'Human Resources Management', '', 'publish', 'closed', 'closed', '', 'loginhrm', '', '', '2020-05-10 04:29:07', '2020-05-10 04:29:07', '', 0, 'http://localhost/hrm/wphrm/', 0, 'page', '', 0),
(7, 1, '2020-05-10 01:29:43', '2020-05-10 01:29:43', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-05-10 01:29:43', '2020-05-10 01:29:43', '', 1, 'http://localhost/hrm/2020/05/10/1-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2020-05-10 01:30:50', '2020-05-10 01:30:50', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-10 01:30:50\"\n    },\n    \"page_on_front\": {\n        \"value\": \"6\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-10 01:30:50\"\n    },\n    \"page_for_posts\": {\n        \"value\": \"2\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-10 01:30:50\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4c364bfb-f14e-4197-893f-580f5650860c', '', '', '2020-05-10 01:30:50', '2020-05-10 01:30:50', '', 0, 'http://localhost/hrm/2020/05/10/4c364bfb-f14e-4197-893f-580f5650860c/', 0, 'customize_changeset', '', 0),
(9, 1, '2020-05-10 01:44:45', '2020-05-10 01:44:45', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [],\n            \"sidebar-1\": [],\n            \"sidebar-2\": [\n                \"archives-2\",\n                \"categories-2\",\n                \"meta-2\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-10 01:44:45\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '45c0a0ad-f5d1-426d-90b7-92b45ee3a424', '', '', '2020-05-10 01:44:45', '2020-05-10 01:44:45', '', 0, 'http://localhost/hrm/2020/05/10/45c0a0ad-f5d1-426d-90b7-92b45ee3a424/', 0, 'customize_changeset', '', 0),
(10, 1, '2020-05-10 01:49:35', '2020-05-10 01:49:35', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/hrm/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-05-10 01:49:35', '2020-05-10 01:49:35', '', 2, 'http://localhost/hrm/2020/05/10/2-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2020-05-10 01:49:39', '2020-05-10 01:49:39', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/hrm.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2020-05-10 01:49:39', '2020-05-10 01:49:39', '', 3, 'http://localhost/hrm/2020/05/10/3-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2020-05-10 01:50:40', '2020-05-10 01:50:40', '[wphrm-login]', 'WPHRM Login', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-05-10 01:50:40', '2020-05-10 01:50:40', '', 6, 'http://localhost/hrm/2020/05/10/6-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2020-05-10 01:52:03', '2020-05-10 01:52:03', '[wphrm-login]', 'Login', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-05-10 01:52:03', '2020-05-10 01:52:03', '', 6, 'http://localhost/hrm/2020/05/10/6-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2020-05-10 01:53:36', '2020-05-10 01:53:36', '{\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-10 01:53:36\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4f000afe-7480-44df-9679-aed0e605659c', '', '', '2020-05-10 01:53:36', '2020-05-10 01:53:36', '', 0, 'http://localhost/hrm/2020/05/10/4f000afe-7480-44df-9679-aed0e605659c/', 0, 'customize_changeset', '', 0),
(15, 1, '2020-05-10 01:58:23', '2020-05-10 01:58:23', '{\n    \"custom_css[impressive-business]\": {\n        \"value\": \".row{\\n\\twidth 100%!important;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-10 01:58:23\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ed15e1ba-f6cb-4f22-867d-942ce432b177', '', '', '2020-05-10 01:58:23', '2020-05-10 01:58:23', '', 0, 'http://localhost/hrm/2020/05/10/ed15e1ba-f6cb-4f22-867d-942ce432b177/', 0, 'customize_changeset', '', 0),
(16, 1, '2020-05-10 01:58:23', '2020-05-10 01:58:23', '.navbar-nav{\n	visibility:hidden;\n}', 'impressive-business', '', 'publish', 'closed', 'closed', '', 'impressive-business', '', '', '2020-05-10 04:31:24', '2020-05-10 04:31:24', '', 0, 'http://localhost/hrm/2020/05/10/impressive-business/', 0, 'custom_css', '', 0),
(17, 1, '2020-05-10 01:58:23', '2020-05-10 01:58:23', '.row{\n	width 100%!important;\n}', 'impressive-business', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2020-05-10 01:58:23', '2020-05-10 01:58:23', '', 16, 'http://localhost/hrm/2020/05/10/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2020-05-10 02:01:57', '2020-05-10 02:01:57', '{\n    \"custom_css[impressive-business]\": {\n        \"value\": \"\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-10 02:01:57\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b5df1506-016a-4d18-94bc-41c66b6b94c6', '', '', '2020-05-10 02:01:57', '2020-05-10 02:01:57', '', 0, 'http://localhost/hrm/2020/05/10/b5df1506-016a-4d18-94bc-41c66b6b94c6/', 0, 'customize_changeset', '', 0),
(19, 1, '2020-05-10 02:01:57', '2020-05-10 02:01:57', '', 'impressive-business', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2020-05-10 02:01:57', '2020-05-10 02:01:57', '', 16, 'http://localhost/hrm/2020/05/10/16-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2020-05-10 04:28:33', '2020-05-10 04:28:33', '{\n    \"blogname\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-10 04:28:33\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c9b3179d-1829-477f-bc60-2b2c6f9d8968', '', '', '2020-05-10 04:28:33', '2020-05-10 04:28:33', '', 0, 'http://localhost/hrm/2020/05/10/c9b3179d-1829-477f-bc60-2b2c6f9d8968/', 0, 'customize_changeset', '', 0),
(21, 1, '2020-05-10 04:29:07', '2020-05-10 04:29:07', '[wphrm-login]', 'Human Resources Management', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-05-10 04:29:07', '2020-05-10 04:29:07', '', 6, 'http://localhost/hrm/2020/05/10/6-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2020-05-10 04:31:24', '2020-05-10 04:31:24', '{\n    \"custom_css[impressive-business]\": {\n        \"value\": \".navbar-nav{\\n\\tvisibility:hidden;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-10 04:31:24\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c4397f48-70dd-4c51-aad7-f4d9fb39e94f', '', '', '2020-05-10 04:31:24', '2020-05-10 04:31:24', '', 0, 'http://localhost/hrm/2020/05/10/c4397f48-70dd-4c51-aad7-f4d9fb39e94f/', 0, 'customize_changeset', '', 0),
(23, 1, '2020-05-10 04:31:24', '2020-05-10 04:31:24', '.navbar-nav{\n	visibility:hidden;\n}', 'impressive-business', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2020-05-10 04:31:24', '2020-05-10 04:31:24', '', 16, 'http://localhost/hrm/2020/05/10/16-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'plugin_editor_notice,members_30'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(22, 2, 'nickname', 'henseah17'),
(23, 2, 'first_name', 'John Henry'),
(24, 2, 'last_name', 'Del rosario'),
(25, 2, 'description', ''),
(26, 2, 'rich_editing', 'true'),
(27, 2, 'syntax_highlighting', 'true'),
(28, 2, 'comment_shortcuts', 'false'),
(29, 2, 'admin_color', 'fresh'),
(30, 2, 'use_ssl', '0'),
(31, 2, 'show_admin_bar_front', 'true'),
(32, 2, 'locale', ''),
(33, 2, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(34, 2, 'wp_user_level', '10'),
(35, 2, 'dismissed_wp_pointers', 'members_30'),
(38, 2, 'session_tokens', 'a:1:{s:64:\"c3dd414929b79c04e079797a66f6a68803aeeb74dc757b0804e8c850a5d67d29\";a:4:{s:10:\"expiration\";i:1589248158;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36\";s:5:\"login\";i:1589075358;}}'),
(39, 1, 'wp_user-settings', 'libraryContent=browse'),
(40, 1, 'wp_user-settings-time', '1589085255'),
(41, 3, 'nickname', 'justin'),
(42, 3, 'first_name', 'Justin'),
(43, 3, 'last_name', 'Del Rosario'),
(44, 3, 'description', ''),
(45, 3, 'rich_editing', 'true'),
(46, 3, 'syntax_highlighting', 'true'),
(47, 3, 'comment_shortcuts', 'false'),
(48, 3, 'admin_color', 'fresh'),
(49, 3, 'use_ssl', '0'),
(50, 3, 'show_admin_bar_front', 'true'),
(51, 3, 'locale', ''),
(52, 3, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(53, 3, 'wp_user_level', '0'),
(54, 3, 'dismissed_wp_pointers', ''),
(55, 3, 'wphrmEmployeeInfo', 'YToyMDp7czoxNjoiZW1wbG95ZWVfcHJvZmlsZSI7czo1NToiaHR0cDovL2xvY2FsaG9zdC9ocm0vd3AtY29udGVudC91cGxvYWRzLzIwMjAvMDUvcGF0LnBuZyI7czoyMDoid3Bocm1fZW1wbG95ZWVfZm5hbWUiO3M6NjoiSnVzdGluIjtzOjIwOiJ3cGhybV9lbXBsb3llZV9sbmFtZSI7czoxMToiRGVsIFJvc2FyaW8iO3M6MjU6IndwaHJtX2VtcGxveWVlX2ZhdGhlcm5hbWUiO3M6MTc6IkhlbnJ5IERlbCBSb3NhcmlvIjtzOjIwOiJ3cGhybV9lbXBsb3llZV9lbWFpbCI7czoyNDoianVzdGluYXVkaXRvcmVAZ21haWwuY29tIjtzOjIzOiJ3cGhybV9lbXBsb3llZV91bmlxdWVpZCI7czoxOiIxIjtzOjIxOiJ3cGhybV9lbXBsb3llZV91c2VyaWQiO3M6NjoianVzdGluIjtzOjIzOiJ3cGhybV9lbXBsb3llZV9wYXNzd29yZCI7czowOiIiO3M6MjU6IndwaHJtX2VtcGxveWVlX2RlcGFydG1lbnQiO3M6MToiMSI7czoyNjoid3Bocm1fZW1wbG95ZWVfZGVzaWduYXRpb24iO3M6MToiMyI7czoyNzoid3Bocm1fZW1wbG95ZWVfam9pbmluZ19kYXRlIjtzOjEwOiIxMC0wNS0yMDIwIjtzOjIxOiJ3cGhybV9lbXBsb3llZV9nZW5kZXIiO3M6NDoiTWFsZSI7czoxOToid3Bocm1fZW1wbG95ZWVfcm9sZSI7czoxMDoic3Vic2NyaWJlciI7czoyMToid3Bocm1fZW1wbG95ZWVfc3RhdHVzIjtzOjY6IkFjdGl2ZSI7czoyMDoid3Bocm1fZW1wbG95ZWVfcGhvbmUiO3M6MTE6IjA5MTIzNjE0OTE2IjtzOjE4OiJ3cGhybV9lbXBsb3llZV9ib2QiO3M6MTA6IjEwLTA1LTIwMDAiO3M6Mjg6IndwaHJtX2VtcGxveWVlX2xvY2FsX2FkZHJlc3MiO3M6MTA6ImFzZHNtYWRvc2EiO3M6MzI6IndwaHJtX2VtcGxveWVlX3Blcm1hbmFudF9hZGRyZXNzIjtzOjEwOiJhc2RzbWFkb3NhIjtzOjI0OiJ3cGhybXBlcnNvbmFsZmllbGRzbGViYWwiO2E6MDp7fXM6MjQ6IndwaHJtcGVyc29uYWxmaWVsZHN2YWx1ZSI7YTowOnt9fQ=='),
(61, 3, 'wphrmEmployeeSalaryInfo', 'YTozOntzOjE0OiJjdXJyZW50LXNhbGFyeSI7czo1OiIyMDAwMCI7czoxNzoiU2FsYXJ5RmllbGRzTGViYWwiO2E6Mjp7aTowO3M6MTQ6IkpvaW5pbmcgU2FsYXJ5IjtpOjE7czoxMjoiQmFzaWMgU2FsYXJ5Ijt9czoxNzoiU2FsYXJ5RmllbGRzdmFsdWUiO2E6Mjp7aTowO3M6NToiMjAwMDAiO2k6MTtzOjU6IjIwMDAwIjt9fQ=='),
(63, 3, 'wphrmEmployeeBankInfo', 'YTo0OntzOjIwOiJ3cGhybWJhbmtmaWVsZHNsZWJhbCI7YToyOntpOjA7czoxMToiQnJhbmNoIE5hbWUiO2k6MTtzOjk6IklGU0MgQ29kZSI7fXM6MjA6IndwaHJtYmFua2ZpZWxkc3ZhbHVlIjthOjI6e2k6MDtzOjY6ImFzZGdhcyI7aToxO3M6MTE6ImFzZGRncjU1MTIzIjt9czozMjoid3Bocm1fZW1wbG95ZWVfYmFua19hY2NvdW50X25hbWUiO3M6NToiYXNkc2EiO3M6MzA6IndwaHJtX2VtcGxveWVlX2JhbmtfYWNjb3VudF9ubyI7czo5OiIxMjM0NTY3ODkiO30='),
(65, 3, 'session_tokens', 'a:1:{s:64:\"ee4986d0179cebc258789b7bee10623bc21dd8831458a2b6dac4e5838134667f\";a:4:{s:10:\"expiration\";i:1589479500;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36\";s:5:\"login\";i:1589306700;}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bmzat6uKQRJEBFy2QqfCuX9tXpTdDA0', 'admin', 'delrosariojohnhenry@gmail.com', 'http://localhost/hrm', '2020-05-10 01:07:38', '', 0, 'admin'),
(2, 'henseah17', '$P$Bsu5UirezP9Lt85q5eKzASp.HHJ7Fj.', 'henseah17', 'henseah017@gmail.com', '', '2020-05-10 01:46:30', '1589075192:$P$BBY7qro3PJn3vy9TzHluFEis4jTIFl0', 0, 'John Henry Del rosario'),
(3, 'justin', '$P$BIPeOhHlVZQd27eonGgE5Weql/JhyS.', 'justin', 'justinauditore@gmail.com', '', '2020-05-10 02:38:09', '', 0, 'justin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wphrm_attendance`
--
ALTER TABLE `wphrm_attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendance_employeeid_index` (`employeeID`),
  ADD KEY `attendance_leavetype_index` (`leaveType`),
  ADD KEY `attendance_updated_by_index` (`updatedBy`),
  ADD KEY `attendance_halfdaytype_index` (`halfDayType`);

--
-- Indexes for table `wphrm_currency`
--
ALTER TABLE `wphrm_currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wphrm_department`
--
ALTER TABLE `wphrm_department`
  ADD PRIMARY KEY (`departmentID`);

--
-- Indexes for table `wphrm_designation`
--
ALTER TABLE `wphrm_designation`
  ADD PRIMARY KEY (`designationID`);

--
-- Indexes for table `wphrm_financials`
--
ALTER TABLE `wphrm_financials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wphrm_holidays`
--
ALTER TABLE `wphrm_holidays`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `holidays_date_unique` (`wphrmDate`);

--
-- Indexes for table `wphrm_leavetypes`
--
ALTER TABLE `wphrm_leavetypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leavetypes_leavetype_index` (`leaveType`);

--
-- Indexes for table `wphrm_messages`
--
ALTER TABLE `wphrm_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wphrm_notice`
--
ALTER TABLE `wphrm_notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wphrm_notifications`
--
ALTER TABLE `wphrm_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wphrm_policies`
--
ALTER TABLE `wphrm_policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wphrm_projects_log`
--
ALTER TABLE `wphrm_projects_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wphrm_salary`
--
ALTER TABLE `wphrm_salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wphrm_settings`
--
ALTER TABLE `wphrm_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wphrm_weekly_salary`
--
ALTER TABLE `wphrm_weekly_salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wphrm_attendance`
--
ALTER TABLE `wphrm_attendance`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wphrm_currency`
--
ALTER TABLE `wphrm_currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `wphrm_department`
--
ALTER TABLE `wphrm_department`
  MODIFY `departmentID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wphrm_designation`
--
ALTER TABLE `wphrm_designation`
  MODIFY `designationID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wphrm_financials`
--
ALTER TABLE `wphrm_financials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wphrm_holidays`
--
ALTER TABLE `wphrm_holidays`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `wphrm_leavetypes`
--
ALTER TABLE `wphrm_leavetypes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wphrm_messages`
--
ALTER TABLE `wphrm_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `wphrm_notice`
--
ALTER TABLE `wphrm_notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wphrm_notifications`
--
ALTER TABLE `wphrm_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wphrm_policies`
--
ALTER TABLE `wphrm_policies`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wphrm_projects_log`
--
ALTER TABLE `wphrm_projects_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wphrm_salary`
--
ALTER TABLE `wphrm_salary`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wphrm_settings`
--
ALTER TABLE `wphrm_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `wphrm_weekly_salary`
--
ALTER TABLE `wphrm_weekly_salary`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
