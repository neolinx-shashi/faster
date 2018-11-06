-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2018 at 06:18 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uksh`
--

-- --------------------------------------------------------

--
-- Table structure for table `dummy`
--

CREATE TABLE `dummy` (
  `id` int(11) NOT NULL,
  `val` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dummy`
--

INSERT INTO `dummy` (`id`, `val`, `created_at`, `updated_at`) VALUES
(1, '96', '2018-04-19 00:58:06', '2018-04-19 00:58:06'),
(2, 'Prüfung des Bewusstseins', '2018-04-19 00:58:06', '2018-04-19 00:58:06'),
(3, 'Orientierung', '2018-04-19 00:58:06', '2018-04-19 00:58:06'),
(4, 'Kooperation', '2018-04-19 00:58:06', '2018-04-19 00:58:06'),
(5, 'Horizontale Blickbewegungen', '2018-04-19 00:58:06', '2018-04-19 00:58:06'),
(6, 'Mimik', '2018-04-19 00:58:06', '2018-04-19 00:58:06'),
(7, 'Armmotorik', '2018-04-19 00:58:06', '2018-04-19 00:58:06'),
(8, 'Armmotorik', '2018-04-19 00:58:06', '2018-04-19 00:58:06'),
(9, 'Beinmotorik', '2018-04-19 00:58:06', '2018-04-19 00:58:06'),
(10, 'Beinmotorik', '2018-04-19 00:58:06', '2018-04-19 00:58:06'),
(11, 'Sprache', '2018-04-19 00:58:06', '2018-04-19 00:58:06'),
(12, 'Dysarthrie', '2018-04-19 00:58:06', '2018-04-19 00:58:06'),
(13, '97', '2018-04-19 01:02:49', '2018-04-19 01:02:49'),
(14, 'Prüfung des Bewusstseins', '2018-04-19 01:02:49', '2018-04-19 01:02:49'),
(15, 'Orientierung', '2018-04-19 01:02:49', '2018-04-19 01:02:49'),
(16, 'Kooperation', '2018-04-19 01:02:49', '2018-04-19 01:02:49'),
(17, 'Horizontale Blickbewegungen', '2018-04-19 01:02:49', '2018-04-19 01:02:49'),
(18, 'Mimik', '2018-04-19 01:02:49', '2018-04-19 01:02:49'),
(19, 'Armmotorik', '2018-04-19 01:02:49', '2018-04-19 01:02:49'),
(20, 'Armmotorik', '2018-04-19 01:02:49', '2018-04-19 01:02:49'),
(21, 'Beinmotorik', '2018-04-19 01:02:49', '2018-04-19 01:02:49'),
(22, 'Beinmotorik', '2018-04-19 01:02:49', '2018-04-19 01:02:49'),
(23, 'Sprache', '2018-04-19 01:02:49', '2018-04-19 01:02:49'),
(24, 'Dysarthrie', '2018-04-19 01:02:49', '2018-04-19 01:02:49'),
(25, '98', '2018-04-19 01:05:37', '2018-04-19 01:05:37'),
(26, 'Prüfung des Bewusstseins', '2018-04-19 01:05:37', '2018-04-19 01:05:37'),
(27, 'Orientierung', '2018-04-19 01:05:37', '2018-04-19 01:05:37'),
(28, 'Kooperation', '2018-04-19 01:05:37', '2018-04-19 01:05:37'),
(29, 'Horizontale Blickbewegungen', '2018-04-19 01:05:37', '2018-04-19 01:05:37'),
(30, 'Mimik', '2018-04-19 01:05:37', '2018-04-19 01:05:37'),
(31, 'Armmotorik', '2018-04-19 01:05:37', '2018-04-19 01:05:37'),
(32, 'Armmotorik', '2018-04-19 01:05:37', '2018-04-19 01:05:37'),
(33, 'Beinmotorik', '2018-04-19 01:05:37', '2018-04-19 01:05:37'),
(34, 'Beinmotorik', '2018-04-19 01:05:37', '2018-04-19 01:05:37'),
(35, 'Sprache', '2018-04-19 01:05:37', '2018-04-19 01:05:37'),
(36, 'Dysarthrie', '2018-04-19 01:05:37', '2018-04-19 01:05:37'),
(37, '99', '2018-04-19 01:06:21', '2018-04-19 01:06:21'),
(38, 'Prüfung des Bewusstseins', '2018-04-19 01:06:21', '2018-04-19 01:06:21'),
(39, 'Orientierung', '2018-04-19 01:06:21', '2018-04-19 01:06:21'),
(40, 'Kooperation', '2018-04-19 01:06:21', '2018-04-19 01:06:21'),
(41, 'Horizontale Blickbewegungen', '2018-04-19 01:06:21', '2018-04-19 01:06:21'),
(42, 'Mimik', '2018-04-19 01:06:21', '2018-04-19 01:06:21'),
(43, 'Armmotorik', '2018-04-19 01:06:21', '2018-04-19 01:06:21'),
(44, 'Armmotorik', '2018-04-19 01:06:21', '2018-04-19 01:06:21'),
(45, 'Beinmotorik', '2018-04-19 01:06:21', '2018-04-19 01:06:21'),
(46, 'Beinmotorik', '2018-04-19 01:06:22', '2018-04-19 01:06:22'),
(47, 'Sprache', '2018-04-19 01:06:22', '2018-04-19 01:06:22'),
(48, 'Dysarthrie', '2018-04-19 01:06:22', '2018-04-19 01:06:22'),
(49, '100', '2018-04-19 01:07:18', '2018-04-19 01:07:18'),
(50, '101', '2018-04-19 01:07:23', '2018-04-19 01:07:23'),
(51, '102', '2018-04-19 01:07:26', '2018-04-19 01:07:26'),
(52, '103', '2018-04-19 01:07:26', '2018-04-19 01:07:26'),
(53, '104', '2018-04-19 01:07:27', '2018-04-19 01:07:27'),
(54, '105', '2018-04-19 01:07:27', '2018-04-19 01:07:27'),
(55, '106', '2018-04-19 01:07:30', '2018-04-19 01:07:30'),
(56, '107', '2018-04-19 01:07:43', '2018-04-19 01:07:43'),
(57, 'Prüfung des Bewusstseins', '2018-04-19 01:07:43', '2018-04-19 01:07:43'),
(58, 'Orientierung', '2018-04-19 01:07:43', '2018-04-19 01:07:43'),
(59, 'Kooperation', '2018-04-19 01:07:43', '2018-04-19 01:07:43'),
(60, 'Horizontale Blickbewegungen', '2018-04-19 01:07:43', '2018-04-19 01:07:43'),
(61, 'Mimik', '2018-04-19 01:07:43', '2018-04-19 01:07:43'),
(62, 'Armmotorik', '2018-04-19 01:07:43', '2018-04-19 01:07:43'),
(63, 'Armmotorik', '2018-04-19 01:07:43', '2018-04-19 01:07:43'),
(64, 'Beinmotorik', '2018-04-19 01:07:43', '2018-04-19 01:07:43'),
(65, 'Beinmotorik', '2018-04-19 01:07:43', '2018-04-19 01:07:43'),
(66, 'Sprache', '2018-04-19 01:07:43', '2018-04-19 01:07:43'),
(67, 'Dysarthrie', '2018-04-19 01:07:43', '2018-04-19 01:07:43'),
(68, '108', '2018-04-19 01:09:39', '2018-04-19 01:09:39'),
(69, 'Prüfung des Bewusstseins', '2018-04-19 01:09:39', '2018-04-19 01:09:39'),
(70, 'Orientierung', '2018-04-19 01:09:39', '2018-04-19 01:09:39'),
(71, 'Kooperation', '2018-04-19 01:09:39', '2018-04-19 01:09:39'),
(72, 'Horizontale Blickbewegungen', '2018-04-19 01:09:39', '2018-04-19 01:09:39'),
(73, 'Mimik', '2018-04-19 01:09:39', '2018-04-19 01:09:39'),
(74, 'Armmotorik', '2018-04-19 01:09:39', '2018-04-19 01:09:39'),
(75, 'Armmotorik', '2018-04-19 01:09:39', '2018-04-19 01:09:39'),
(76, 'Beinmotorik', '2018-04-19 01:09:39', '2018-04-19 01:09:39'),
(77, 'Beinmotorik', '2018-04-19 01:09:39', '2018-04-19 01:09:39'),
(78, 'Sprache', '2018-04-19 01:09:39', '2018-04-19 01:09:39'),
(79, 'Dysarthrie', '2018-04-19 01:09:39', '2018-04-19 01:09:39'),
(80, '109', '2018-04-19 01:11:41', '2018-04-19 01:11:41'),
(81, 'Prüfung des Bewusstseins', '2018-04-19 01:11:41', '2018-04-19 01:11:41'),
(82, 'Orientierung', '2018-04-19 01:11:41', '2018-04-19 01:11:41'),
(83, 'Kooperation', '2018-04-19 01:11:41', '2018-04-19 01:11:41'),
(84, 'Horizontale Blickbewegungen', '2018-04-19 01:11:41', '2018-04-19 01:11:41'),
(85, 'Mimik', '2018-04-19 01:11:41', '2018-04-19 01:11:41'),
(86, 'Armmotorik', '2018-04-19 01:11:41', '2018-04-19 01:11:41'),
(87, 'Armmotorik', '2018-04-19 01:11:41', '2018-04-19 01:11:41'),
(88, 'Beinmotorik', '2018-04-19 01:11:41', '2018-04-19 01:11:41'),
(89, 'Beinmotorik', '2018-04-19 01:11:41', '2018-04-19 01:11:41'),
(90, 'Sprache', '2018-04-19 01:11:41', '2018-04-19 01:11:41'),
(91, 'Dysarthrie', '2018-04-19 01:11:41', '2018-04-19 01:11:41'),
(92, '110', '2018-04-19 01:14:49', '2018-04-19 01:14:49'),
(93, 'Prüfung des Bewusstseins', '2018-04-19 01:14:49', '2018-04-19 01:14:49'),
(94, 'Orientierung', '2018-04-19 01:14:49', '2018-04-19 01:14:49'),
(95, 'Kooperation', '2018-04-19 01:14:49', '2018-04-19 01:14:49'),
(96, 'Horizontale Blickbewegungen', '2018-04-19 01:14:49', '2018-04-19 01:14:49'),
(97, 'Mimik', '2018-04-19 01:14:49', '2018-04-19 01:14:49'),
(98, 'Armmotorik', '2018-04-19 01:14:49', '2018-04-19 01:14:49'),
(99, 'Armmotorik', '2018-04-19 01:14:49', '2018-04-19 01:14:49'),
(100, 'Beinmotorik', '2018-04-19 01:14:49', '2018-04-19 01:14:49'),
(101, 'Beinmotorik', '2018-04-19 01:14:49', '2018-04-19 01:14:49'),
(102, 'Sprache', '2018-04-19 01:14:49', '2018-04-19 01:14:49'),
(103, 'Dysarthrie', '2018-04-19 01:14:49', '2018-04-19 01:14:49'),
(104, '111', '2018-04-19 01:17:31', '2018-04-19 01:17:31'),
(105, '112', '2018-04-19 01:17:32', '2018-04-19 01:17:32'),
(106, '113', '2018-04-19 01:17:33', '2018-04-19 01:17:33'),
(107, '114', '2018-04-19 01:18:21', '2018-04-19 01:18:21'),
(108, '115', '2018-04-19 01:18:35', '2018-04-19 01:18:35'),
(109, 'Prüfung des Bewusstseins', '2018-04-19 01:18:35', '2018-04-19 01:18:35'),
(110, 'Orientierung', '2018-04-19 01:18:35', '2018-04-19 01:18:35'),
(111, 'Kooperation', '2018-04-19 01:18:35', '2018-04-19 01:18:35'),
(112, 'Horizontale Blickbewegungen', '2018-04-19 01:18:35', '2018-04-19 01:18:35'),
(113, 'Mimik', '2018-04-19 01:18:35', '2018-04-19 01:18:35'),
(114, 'Armmotorik', '2018-04-19 01:18:35', '2018-04-19 01:18:35'),
(115, 'Armmotorik', '2018-04-19 01:18:35', '2018-04-19 01:18:35'),
(116, 'Beinmotorik', '2018-04-19 01:18:35', '2018-04-19 01:18:35'),
(117, 'Beinmotorik', '2018-04-19 01:18:35', '2018-04-19 01:18:35'),
(118, 'Sprache', '2018-04-19 01:18:35', '2018-04-19 01:18:35'),
(119, 'Dysarthrie', '2018-04-19 01:18:35', '2018-04-19 01:18:35'),
(120, '116', '2018-04-19 01:18:57', '2018-04-19 01:18:57'),
(121, '117', '2018-04-19 01:18:59', '2018-04-19 01:18:59'),
(122, '118', '2018-04-19 01:18:59', '2018-04-19 01:18:59'),
(123, '119', '2018-04-19 01:18:59', '2018-04-19 01:18:59'),
(124, '120', '2018-04-19 01:18:59', '2018-04-19 01:18:59'),
(125, '121', '2018-04-19 01:19:00', '2018-04-19 01:19:00'),
(126, '122', '2018-04-19 01:19:16', '2018-04-19 01:19:16'),
(127, 'Prüfung des Bewusstseins', '2018-04-19 01:19:16', '2018-04-19 01:19:16'),
(128, 'Orientierung', '2018-04-19 01:19:16', '2018-04-19 01:19:16'),
(129, 'Kooperation', '2018-04-19 01:19:16', '2018-04-19 01:19:16'),
(130, 'Horizontale Blickbewegungen', '2018-04-19 01:19:16', '2018-04-19 01:19:16'),
(131, 'Mimik', '2018-04-19 01:19:16', '2018-04-19 01:19:16'),
(132, 'Armmotorik', '2018-04-19 01:19:16', '2018-04-19 01:19:16'),
(133, 'Armmotorik', '2018-04-19 01:19:16', '2018-04-19 01:19:16'),
(134, 'Beinmotorik', '2018-04-19 01:19:16', '2018-04-19 01:19:16'),
(135, 'Beinmotorik', '2018-04-19 01:19:16', '2018-04-19 01:19:16'),
(136, 'Sprache', '2018-04-19 01:19:16', '2018-04-19 01:19:16'),
(137, 'Dysarthrie', '2018-04-19 01:19:16', '2018-04-19 01:19:16');

-- --------------------------------------------------------

--
-- Table structure for table `examination`
--

CREATE TABLE `examination` (
  `examination_id` int(11) NOT NULL,
  `examination_exam` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `examination_response` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `examination_score` int(11) NOT NULL DEFAULT '0',
  `patient_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `examination`
--

INSERT INTO `examination` (`examination_id`, `examination_exam`, `examination_response`, `examination_score`, `patient_id`, `created_at`, `updated_at`) VALUES
(1, 'Prüfung des Bewusstseins', 'Somnolenter Patient', 1, 9, '2018-04-19 04:59:01', '2018-04-19 04:59:01'),
(2, 'Orientierung', 'Keine korrekte Antwort', 2, 9, '2018-04-19 04:59:01', '2018-04-19 04:59:01'),
(3, 'Kooperation', 'Keine Aufforderung korrekt befolgt', 2, 9, '2018-04-19 04:59:01', '2018-04-19 04:59:01'),
(4, 'Horizontale Blickbewegungen', 'Normalbefund', 0, 9, '2018-04-19 04:59:01', '2018-04-19 04:59:01'),
(5, 'Mimik', 'Deutliche Asymmetrie', 2, 9, '2018-04-19 04:59:01', '2018-04-19 04:59:01'),
(6, 'Armmotorik', 'Absinken rechts', 1, 9, '2018-04-19 04:59:01', '2018-04-19 04:59:01'),
(7, 'Armmotorik', 'Absinken links', 1, 9, '2018-04-19 04:59:01', '2018-04-19 04:59:01'),
(8, 'Beinmotorik', 'Absinken rechts', 1, 9, '2018-04-19 04:59:01', '2018-04-19 04:59:01'),
(9, 'Beinmotorik', 'Absinken links', 1, 9, '2018-04-19 04:59:01', '2018-04-19 04:59:01'),
(10, 'Sprache', 'Kommunikation eingeschränkt', 1, 9, '2018-04-19 04:59:01', '2018-04-19 04:59:01'),
(11, 'Dysarthrie', 'Verwaschene Sprache', 1, 9, '2018-04-19 04:59:01', '2018-04-19 04:59:01'),
(12, 'Prüfung des Bewusstseins', 'Somnolenter Patient', 1, 10, '2018-04-19 07:34:16', '2018-04-19 07:34:16'),
(13, 'Orientierung', '1 korrekte Antwort', 1, 10, '2018-04-19 07:34:16', '2018-04-19 07:34:16'),
(14, 'Kooperation', '1 Aufforderung korrekt befolgt', 1, 10, '2018-04-19 07:34:16', '2018-04-19 07:34:16'),
(15, 'Horizontale Blickbewegungen', 'Normalbefund', 0, 10, '2018-04-19 07:34:16', '2018-04-19 07:34:16'),
(16, 'Mimik', 'Deutliche Asymmetrie', 2, 10, '2018-04-19 07:34:16', '2018-04-19 07:34:16'),
(17, 'Armmotorik', 'Absinken rechts', 1, 10, '2018-04-19 07:34:16', '2018-04-19 07:34:16'),
(18, 'Armmotorik', 'Absinken links', 1, 10, '2018-04-19 07:34:16', '2018-04-19 07:34:16'),
(19, 'Beinmotorik', 'Absinken rechts', 1, 10, '2018-04-19 07:34:16', '2018-04-19 07:34:16'),
(20, 'Beinmotorik', 'Absinken links', 1, 10, '2018-04-19 07:34:16', '2018-04-19 07:34:16'),
(21, 'Sprache', 'Kommunikation eingeschränkt', 1, 10, '2018-04-19 07:34:16', '2018-04-19 07:34:16'),
(22, 'Dysarthrie', 'Verwaschene Sprache', 1, 10, '2018-04-19 07:34:16', '2018-04-19 07:34:16'),
(23, 'Prüfung des Bewusstseins', 'Normalbefund', 0, 11, '2018-04-19 23:16:04', '2018-04-19 23:16:04'),
(24, 'Orientierung', 'Keine korrekte Antwort', 2, 11, '2018-04-19 23:16:04', '2018-04-19 23:16:04'),
(25, 'Kooperation', 'Keine Aufforderung korrekt befolgt', 2, 11, '2018-04-19 23:16:04', '2018-04-19 23:16:04'),
(26, 'Horizontale Blickbewegungen', 'Blickwendung', 2, 11, '2018-04-19 23:16:04', '2018-04-19 23:16:04'),
(27, 'Mimik', 'Deutliche Asymmetrie', 2, 11, '2018-04-19 23:16:04', '2018-04-19 23:16:04'),
(28, 'Armmotorik', 'Absinken rechts', 1, 11, '2018-04-19 23:16:04', '2018-04-19 23:16:04'),
(29, 'Armmotorik', 'Absinken links', 1, 11, '2018-04-19 23:16:04', '2018-04-19 23:16:04'),
(30, 'Beinmotorik', 'Absinken rechts', 1, 11, '2018-04-19 23:16:04', '2018-04-19 23:16:04'),
(31, 'Beinmotorik', 'Absinken links', 1, 11, '2018-04-19 23:16:04', '2018-04-19 23:16:04'),
(32, 'Sprache', 'Kommunikation eingeschränkt', 1, 11, '2018-04-19 23:16:04', '2018-04-19 23:16:04'),
(33, 'Dysarthrie', 'Verwaschene Sprache', 1, 11, '2018-04-19 23:16:04', '2018-04-19 23:16:04'),
(34, 'Prüfung des Bewusstseins', 'Somnolenter Patient', 1, 13, '2018-04-20 00:19:54', '2018-04-20 00:19:54'),
(35, 'Orientierung', '1 korrekte Antwort', 1, 13, '2018-04-20 00:19:54', '2018-04-20 00:19:54'),
(36, 'Kooperation', '1 Aufforderung korrekt befolgt', 1, 13, '2018-04-20 00:19:54', '2018-04-20 00:19:54'),
(37, 'Horizontale Blickbewegungen', 'Normalbefund', 0, 13, '2018-04-20 00:19:54', '2018-04-20 00:19:54'),
(38, 'Mimik', 'Leichte Asymmetrie', 1, 13, '2018-04-20 00:19:54', '2018-04-20 00:19:54'),
(39, 'Armmotorik', 'Absinken rechts', 1, 13, '2018-04-20 00:19:54', '2018-04-20 00:19:54'),
(40, 'Armmotorik', 'Absinken links', 1, 13, '2018-04-20 00:19:54', '2018-04-20 00:19:54'),
(41, 'Beinmotorik', 'Absinken rechts', 1, 13, '2018-04-20 00:19:54', '2018-04-20 00:19:54'),
(42, 'Beinmotorik', 'Kein Anheben links', 2, 13, '2018-04-20 00:19:54', '2018-04-20 00:19:54'),
(43, 'Sprache', 'Kommunikation eingeschränkt', 1, 13, '2018-04-20 00:19:54', '2018-04-20 00:19:54'),
(44, 'Dysarthrie', 'Verwaschene Sprache', 1, 13, '2018-04-20 00:19:54', '2018-04-20 00:19:54'),
(45, 'Prüfung des Bewusstseins', 'Somnolenter Patient', 1, 14, '2018-04-20 00:21:02', '2018-04-20 00:21:02'),
(46, 'Orientierung', '1 korrekte Antwort', 1, 14, '2018-04-20 00:21:02', '2018-04-20 00:21:02'),
(47, 'Kooperation', '1 Aufforderung korrekt befolgt', 1, 14, '2018-04-20 00:21:02', '2018-04-20 00:21:02'),
(48, 'Horizontale Blickbewegungen', 'Blickwendung', 2, 14, '2018-04-20 00:21:02', '2018-04-20 00:21:02'),
(49, 'Mimik', 'Leichte Asymmetrie', 1, 14, '2018-04-20 00:21:02', '2018-04-20 00:21:02'),
(50, 'Armmotorik', 'Absinken rechts', 1, 14, '2018-04-20 00:21:02', '2018-04-20 00:21:02'),
(51, 'Armmotorik', 'Kein Anheben links', 2, 14, '2018-04-20 00:21:02', '2018-04-20 00:21:02'),
(52, 'Beinmotorik', 'Absinken rechts', 1, 14, '2018-04-20 00:21:02', '2018-04-20 00:21:02'),
(53, 'Beinmotorik', 'Absinken links', 1, 14, '2018-04-20 00:21:02', '2018-04-20 00:21:02'),
(54, 'Sprache', 'Kommunikation eingeschränkt', 1, 14, '2018-04-20 00:21:02', '2018-04-20 00:21:02'),
(55, 'Dysarthrie', 'Verwaschene Sprache', 1, 14, '2018-04-20 00:21:02', '2018-04-20 00:21:02'),
(56, 'Prüfung des Bewusstseins', 'Normalbefund', 0, 15, '2018-04-20 00:24:46', '2018-04-20 00:24:46'),
(57, 'Orientierung', '1 korrekte Antwort', 1, 15, '2018-04-20 00:24:46', '2018-04-20 00:24:46'),
(58, 'Kooperation', 'Normalbefund', 0, 15, '2018-04-20 00:24:46', '2018-04-20 00:24:46'),
(59, 'Horizontale Blickbewegungen', 'Blickwendung', 2, 15, '2018-04-20 00:24:46', '2018-04-20 00:24:46'),
(60, 'Mimik', 'Leichte Asymmetrie', 1, 15, '2018-04-20 00:24:46', '2018-04-20 00:24:46'),
(61, 'Armmotorik', 'Absinken rechts', 1, 15, '2018-04-20 00:24:46', '2018-04-20 00:24:46'),
(62, 'Armmotorik', 'Absinken links', 1, 15, '2018-04-20 00:24:46', '2018-04-20 00:24:46'),
(63, 'Beinmotorik', 'Absinken rechts', 1, 15, '2018-04-20 00:24:46', '2018-04-20 00:24:46'),
(64, 'Beinmotorik', 'Absinken links', 1, 15, '2018-04-20 00:24:46', '2018-04-20 00:24:46'),
(65, 'Sprache', 'Kommunikation eingeschränkt', 1, 15, '2018-04-20 00:24:46', '2018-04-20 00:24:46'),
(66, 'Dysarthrie', 'Verwaschene Sprache', 1, 15, '2018-04-20 00:24:46', '2018-04-20 00:24:46'),
(67, 'Prüfung des Bewusstseins', 'Normalbefund', 0, 16, '2018-04-20 00:26:27', '2018-04-20 00:26:27'),
(68, 'Orientierung', '1 korrekte Antwort', 1, 16, '2018-04-20 00:26:27', '2018-04-20 00:26:27'),
(69, 'Kooperation', 'Normalbefund', 0, 16, '2018-04-20 00:26:27', '2018-04-20 00:26:27'),
(70, 'Horizontale Blickbewegungen', 'Blickwendung', 2, 16, '2018-04-20 00:26:27', '2018-04-20 00:26:27'),
(71, 'Mimik', 'Normalbefund', 0, 16, '2018-04-20 00:26:27', '2018-04-20 00:26:27'),
(72, 'Armmotorik', 'Normal rechts', 0, 16, '2018-04-20 00:26:27', '2018-04-20 00:26:27'),
(73, 'Armmotorik', 'Normal links', 0, 16, '2018-04-20 00:26:27', '2018-04-20 00:26:27'),
(74, 'Beinmotorik', 'Absinken rechts', 1, 16, '2018-04-20 00:26:27', '2018-04-20 00:26:27'),
(75, 'Beinmotorik', 'Absinken links', 1, 16, '2018-04-20 00:26:27', '2018-04-20 00:26:27'),
(76, 'Sprache', 'Kommunikation eingeschränkt', 1, 16, '2018-04-20 00:26:27', '2018-04-20 00:26:27'),
(77, 'Dysarthrie', 'Verwaschene Sprache', 1, 16, '2018-04-20 00:26:27', '2018-04-20 00:26:27'),
(78, 'Prüfung des Bewusstseins', 'Somnolenter Patient', 1, 17, '2018-04-20 00:26:28', '2018-04-20 00:26:28'),
(79, 'Orientierung', 'Keine korrekte Antwort', 2, 17, '2018-04-20 00:26:28', '2018-04-20 00:26:28'),
(80, 'Kooperation', '1 Aufforderung korrekt befolgt', 1, 17, '2018-04-20 00:26:28', '2018-04-20 00:26:28'),
(81, 'Horizontale Blickbewegungen', 'Blickwendung', 2, 17, '2018-04-20 00:26:28', '2018-04-20 00:26:28'),
(82, 'Mimik', 'Leichte Asymmetrie', 1, 17, '2018-04-20 00:26:28', '2018-04-20 00:26:28'),
(83, 'Armmotorik', 'Kein Anheben rechts', 2, 17, '2018-04-20 00:26:28', '2018-04-20 00:26:28'),
(84, 'Armmotorik', 'Kein Anheben links', 2, 17, '2018-04-20 00:26:28', '2018-04-20 00:26:28'),
(85, 'Beinmotorik', 'Kein Anheben rechts', 2, 17, '2018-04-20 00:26:28', '2018-04-20 00:26:28'),
(86, 'Beinmotorik', 'Kein Anheben links', 2, 17, '2018-04-20 00:26:28', '2018-04-20 00:26:28'),
(87, 'Sprache', 'Kommunikation eingeschränkt', 1, 17, '2018-04-20 00:26:28', '2018-04-20 00:26:28'),
(88, 'Dysarthrie', 'Verwaschene Sprache', 1, 17, '2018-04-20 00:26:28', '2018-04-20 00:26:28'),
(89, 'Prüfung des Bewusstseins', 'Normalbefund', 0, 26, '2018-04-20 00:29:14', '2018-04-20 00:29:14'),
(90, 'Orientierung', '1 korrekte Antwort', 1, 26, '2018-04-20 00:29:14', '2018-04-20 00:29:14'),
(91, 'Kooperation', '1 Aufforderung korrekt befolgt', 1, 26, '2018-04-20 00:29:14', '2018-04-20 00:29:14'),
(92, 'Horizontale Blickbewegungen', 'Blickwendung', 2, 26, '2018-04-20 00:29:14', '2018-04-20 00:29:14'),
(93, 'Mimik', 'Leichte Asymmetrie', 1, 26, '2018-04-20 00:29:14', '2018-04-20 00:29:14'),
(94, 'Armmotorik', 'Kein Anheben rechts', 2, 26, '2018-04-20 00:29:14', '2018-04-20 00:29:14'),
(95, 'Armmotorik', 'Normal links', 0, 26, '2018-04-20 00:29:14', '2018-04-20 00:29:14'),
(96, 'Beinmotorik', 'Kein Anheben rechts', 2, 26, '2018-04-20 00:29:14', '2018-04-20 00:29:14'),
(97, 'Beinmotorik', 'Absinken links', 1, 26, '2018-04-20 00:29:14', '2018-04-20 00:29:14'),
(98, 'Sprache', 'Normalbefund', 0, 26, '2018-04-20 00:29:14', '2018-04-20 00:29:14'),
(99, 'Dysarthrie', 'Verwaschene Sprache', 1, 26, '2018-04-20 00:29:14', '2018-04-20 00:29:14'),
(100, 'Prüfung des Bewusstseins', 'Normalbefund', 0, 30, '2018-04-20 00:30:55', '2018-04-20 00:30:55'),
(101, 'Orientierung', 'Normalbefund', 0, 30, '2018-04-20 00:30:55', '2018-04-20 00:30:55'),
(102, 'Kooperation', 'Normalbefund', 0, 30, '2018-04-20 00:30:55', '2018-04-20 00:30:55'),
(103, 'Horizontale Blickbewegungen', 'Normalbefund', 0, 30, '2018-04-20 00:30:55', '2018-04-20 00:30:55'),
(104, 'Mimik', 'Leichte Asymmetrie', 1, 30, '2018-04-20 00:30:55', '2018-04-20 00:30:55'),
(105, 'Armmotorik', 'Absinken rechts', 1, 30, '2018-04-20 00:30:55', '2018-04-20 00:30:55'),
(106, 'Armmotorik', 'Absinken links', 1, 30, '2018-04-20 00:30:55', '2018-04-20 00:30:55'),
(107, 'Beinmotorik', 'Kein Anheben rechts', 2, 30, '2018-04-20 00:30:55', '2018-04-20 00:30:55'),
(108, 'Beinmotorik', 'Absinken links', 1, 30, '2018-04-20 00:30:55', '2018-04-20 00:30:55'),
(109, 'Sprache', 'Kommunikation eingeschränkt', 1, 30, '2018-04-20 00:30:55', '2018-04-20 00:30:55'),
(110, 'Dysarthrie', 'Verwaschene Sprache', 1, 30, '2018-04-20 00:30:55', '2018-04-20 00:30:55'),
(111, 'Prüfung des Bewusstseins', 'Keine Reaktion', 2, 31, '2018-04-20 00:31:40', '2018-04-20 00:31:40'),
(112, 'Orientierung', '1 korrekte Antwort', 1, 31, '2018-04-20 00:31:40', '2018-04-20 00:31:40'),
(113, 'Kooperation', '1 Aufforderung korrekt befolgt', 1, 31, '2018-04-20 00:31:40', '2018-04-20 00:31:40'),
(114, 'Horizontale Blickbewegungen', 'Blickwendung', 2, 31, '2018-04-20 00:31:40', '2018-04-20 00:31:40'),
(115, 'Mimik', 'Leichte Asymmetrie', 1, 31, '2018-04-20 00:31:40', '2018-04-20 00:31:40'),
(116, 'Armmotorik', 'Absinken rechts', 1, 31, '2018-04-20 00:31:40', '2018-04-20 00:31:40'),
(117, 'Armmotorik', 'Kein Anheben links', 2, 31, '2018-04-20 00:31:40', '2018-04-20 00:31:40'),
(118, 'Beinmotorik', 'Kein Anheben rechts', 2, 31, '2018-04-20 00:31:40', '2018-04-20 00:31:40'),
(119, 'Beinmotorik', 'Kein Anheben links', 2, 31, '2018-04-20 00:31:40', '2018-04-20 00:31:40'),
(120, 'Sprache', 'Keine Kommunikation möglich', 2, 31, '2018-04-20 00:31:40', '2018-04-20 00:31:40'),
(121, 'Dysarthrie', 'Verwaschene Sprache', 1, 31, '2018-04-20 00:31:40', '2018-04-20 00:31:40'),
(122, 'Prüfung des Bewusstseins', 'Somnolenter Patient', 1, 35, '2018-04-20 00:32:44', '2018-04-20 00:32:44'),
(123, 'Orientierung', '1 korrekte Antwort', 1, 35, '2018-04-20 00:32:44', '2018-04-20 00:32:44'),
(124, 'Kooperation', 'Keine Aufforderung korrekt befolgt', 2, 35, '2018-04-20 00:32:44', '2018-04-20 00:32:44'),
(125, 'Horizontale Blickbewegungen', 'Blickwendung', 2, 35, '2018-04-20 00:32:44', '2018-04-20 00:32:44'),
(126, 'Mimik', 'Deutliche Asymmetrie', 2, 35, '2018-04-20 00:32:44', '2018-04-20 00:32:44'),
(127, 'Armmotorik', 'Kein Anheben rechts', 2, 35, '2018-04-20 00:32:44', '2018-04-20 00:32:44'),
(128, 'Armmotorik', 'Kein Anheben links', 2, 35, '2018-04-20 00:32:44', '2018-04-20 00:32:44'),
(129, 'Beinmotorik', 'Absinken rechts', 1, 35, '2018-04-20 00:32:44', '2018-04-20 00:32:44'),
(130, 'Beinmotorik', 'Kein Anheben links', 2, 35, '2018-04-20 00:32:44', '2018-04-20 00:32:44'),
(131, 'Sprache', 'Kommunikation eingeschränkt', 1, 35, '2018-04-20 00:32:44', '2018-04-20 00:32:44'),
(132, 'Dysarthrie', 'Unverständlich oder stumm', 2, 35, '2018-04-20 00:32:44', '2018-04-20 00:32:44'),
(133, 'Prüfung des Bewusstseins', 'Somnolenter Patient', 1, 36, '2018-04-20 00:33:33', '2018-04-20 00:33:33'),
(134, 'Orientierung', '1 korrekte Antwort', 1, 36, '2018-04-20 00:33:33', '2018-04-20 00:33:33'),
(135, 'Kooperation', '1 Aufforderung korrekt befolgt', 1, 36, '2018-04-20 00:33:33', '2018-04-20 00:33:33'),
(136, 'Horizontale Blickbewegungen', 'Blickwendung', 2, 36, '2018-04-20 00:33:33', '2018-04-20 00:33:33'),
(137, 'Mimik', 'Leichte Asymmetrie', 1, 36, '2018-04-20 00:33:33', '2018-04-20 00:33:33'),
(138, 'Armmotorik', 'Absinken rechts', 1, 36, '2018-04-20 00:33:33', '2018-04-20 00:33:33'),
(139, 'Armmotorik', 'Absinken links', 1, 36, '2018-04-20 00:33:33', '2018-04-20 00:33:33'),
(140, 'Beinmotorik', 'Absinken rechts', 1, 36, '2018-04-20 00:33:33', '2018-04-20 00:33:33'),
(141, 'Beinmotorik', 'Absinken links', 1, 36, '2018-04-20 00:33:33', '2018-04-20 00:33:33'),
(142, 'Sprache', 'Kommunikation eingeschränkt', 1, 36, '2018-04-20 00:33:33', '2018-04-20 00:33:33'),
(143, 'Dysarthrie', 'Verwaschene Sprache', 1, 36, '2018-04-20 00:33:33', '2018-04-20 00:33:33'),
(144, 'Prüfung des Bewusstseins', 'Normalbefund', 0, 39, '2018-04-20 00:39:07', '2018-04-20 00:39:07'),
(145, 'Orientierung', 'Normalbefund', 0, 39, '2018-04-20 00:39:07', '2018-04-20 00:39:07'),
(146, 'Kooperation', 'Normalbefund', 0, 39, '2018-04-20 00:39:07', '2018-04-20 00:39:07'),
(147, 'Horizontale Blickbewegungen', 'Normalbefund', 0, 39, '2018-04-20 00:39:07', '2018-04-20 00:39:07'),
(148, 'Mimik', 'Leichte Asymmetrie', 1, 39, '2018-04-20 00:39:07', '2018-04-20 00:39:07'),
(149, 'Armmotorik', 'Kein Anheben rechts', 2, 39, '2018-04-20 00:39:07', '2018-04-20 00:39:07'),
(150, 'Armmotorik', 'Kein Anheben links', 2, 39, '2018-04-20 00:39:07', '2018-04-20 00:39:07'),
(151, 'Beinmotorik', 'Kein Anheben rechts', 2, 39, '2018-04-20 00:39:07', '2018-04-20 00:39:07'),
(152, 'Beinmotorik', 'Kein Anheben links', 2, 39, '2018-04-20 00:39:07', '2018-04-20 00:39:07'),
(153, 'Sprache', 'Keine Kommunikation möglich', 2, 39, '2018-04-20 00:39:07', '2018-04-20 00:39:07'),
(154, 'Dysarthrie', 'Verwaschene Sprache', 1, 39, '2018-04-20 00:39:07', '2018-04-20 00:39:07'),
(155, 'Prüfung des Bewusstseins', 'Somnolenter Patient', 1, 40, '2018-04-20 00:39:46', '2018-04-20 00:39:46'),
(156, 'Orientierung', '1 korrekte Antwort', 1, 40, '2018-04-20 00:39:46', '2018-04-20 00:39:46'),
(157, 'Kooperation', '1 Aufforderung korrekt befolgt', 1, 40, '2018-04-20 00:39:46', '2018-04-20 00:39:46'),
(158, 'Horizontale Blickbewegungen', 'Blickwendung', 2, 40, '2018-04-20 00:39:46', '2018-04-20 00:39:46'),
(159, 'Mimik', 'Leichte Asymmetrie', 1, 40, '2018-04-20 00:39:46', '2018-04-20 00:39:46'),
(160, 'Armmotorik', 'Absinken rechts', 1, 40, '2018-04-20 00:39:46', '2018-04-20 00:39:46'),
(161, 'Armmotorik', 'Absinken links', 1, 40, '2018-04-20 00:39:46', '2018-04-20 00:39:46'),
(162, 'Beinmotorik', 'Absinken rechts', 1, 40, '2018-04-20 00:39:46', '2018-04-20 00:39:46'),
(163, 'Beinmotorik', 'Absinken links', 1, 40, '2018-04-20 00:39:46', '2018-04-20 00:39:46'),
(164, 'Sprache', 'Kommunikation eingeschränkt', 1, 40, '2018-04-20 00:39:46', '2018-04-20 00:39:46'),
(165, 'Dysarthrie', 'Normalbefund', 0, 40, '2018-04-20 00:39:46', '2018-04-20 00:39:46'),
(166, 'Prüfung des Bewusstseins', 'Somnolenter Patient', 1, 41, '2018-04-20 00:42:38', '2018-04-20 00:42:38'),
(167, 'Orientierung', '1 korrekte Antwort', 1, 41, '2018-04-20 00:42:38', '2018-04-20 00:42:38'),
(168, 'Kooperation', '1 Aufforderung korrekt befolgt', 1, 41, '2018-04-20 00:42:38', '2018-04-20 00:42:38'),
(169, 'Horizontale Blickbewegungen', 'Normalbefund', 0, 41, '2018-04-20 00:42:38', '2018-04-20 00:42:38'),
(170, 'Mimik', 'Leichte Asymmetrie', 1, 41, '2018-04-20 00:42:38', '2018-04-20 00:42:38'),
(171, 'Armmotorik', 'Kein Anheben rechts', 2, 41, '2018-04-20 00:42:38', '2018-04-20 00:42:38'),
(172, 'Armmotorik', 'Absinken links', 1, 41, '2018-04-20 00:42:38', '2018-04-20 00:42:38'),
(173, 'Beinmotorik', 'Absinken rechts', 1, 41, '2018-04-20 00:42:38', '2018-04-20 00:42:38'),
(174, 'Beinmotorik', 'Absinken links', 1, 41, '2018-04-20 00:42:38', '2018-04-20 00:42:38'),
(175, 'Sprache', 'Kommunikation eingeschränkt', 1, 41, '2018-04-20 00:42:38', '2018-04-20 00:42:38'),
(176, 'Dysarthrie', 'Verwaschene Sprache', 1, 41, '2018-04-20 00:42:38', '2018-04-20 00:42:38'),
(177, 'Prüfung des Bewusstseins', 'Somnolenter Patient', 1, 42, '2018-04-20 00:43:20', '2018-04-20 00:43:20'),
(178, 'Orientierung', '1 korrekte Antwort', 1, 42, '2018-04-20 00:43:20', '2018-04-20 00:43:20'),
(179, 'Kooperation', '1 Aufforderung korrekt befolgt', 1, 42, '2018-04-20 00:43:20', '2018-04-20 00:43:20'),
(180, 'Horizontale Blickbewegungen', 'Blickwendung', 2, 42, '2018-04-20 00:43:20', '2018-04-20 00:43:20'),
(181, 'Mimik', 'Leichte Asymmetrie', 1, 42, '2018-04-20 00:43:20', '2018-04-20 00:43:20'),
(182, 'Armmotorik', 'Absinken rechts', 1, 42, '2018-04-20 00:43:20', '2018-04-20 00:43:20'),
(183, 'Armmotorik', 'Absinken links', 1, 42, '2018-04-20 00:43:20', '2018-04-20 00:43:20'),
(184, 'Beinmotorik', 'Absinken rechts', 1, 42, '2018-04-20 00:43:20', '2018-04-20 00:43:20'),
(185, 'Beinmotorik', 'Absinken links', 1, 42, '2018-04-20 00:43:20', '2018-04-20 00:43:20'),
(186, 'Sprache', 'Kommunikation eingeschränkt', 1, 42, '2018-04-20 00:43:20', '2018-04-20 00:43:20'),
(187, 'Dysarthrie', 'Verwaschene Sprache', 1, 42, '2018-04-20 00:43:20', '2018-04-20 00:43:20'),
(188, 'Prüfung des Bewusstseins', 'Normalbefund', 0, 43, '2018-04-20 00:46:34', '2018-04-20 00:46:34'),
(189, 'Orientierung', '1 korrekte Antwort', 1, 43, '2018-04-20 00:46:34', '2018-04-20 00:46:34'),
(190, 'Kooperation', '1 Aufforderung korrekt befolgt', 1, 43, '2018-04-20 00:46:34', '2018-04-20 00:46:34'),
(191, 'Horizontale Blickbewegungen', 'Blickwendung', 2, 43, '2018-04-20 00:46:34', '2018-04-20 00:46:34'),
(192, 'Mimik', 'Leichte Asymmetrie', 1, 43, '2018-04-20 00:46:34', '2018-04-20 00:46:34'),
(193, 'Armmotorik', 'Absinken rechts', 1, 43, '2018-04-20 00:46:34', '2018-04-20 00:46:34'),
(194, 'Armmotorik', 'Absinken links', 1, 43, '2018-04-20 00:46:34', '2018-04-20 00:46:34'),
(195, 'Beinmotorik', 'Absinken rechts', 1, 43, '2018-04-20 00:46:34', '2018-04-20 00:46:34'),
(196, 'Beinmotorik', 'Absinken links', 1, 43, '2018-04-20 00:46:34', '2018-04-20 00:46:34'),
(197, 'Sprache', 'Kommunikation eingeschränkt', 1, 43, '2018-04-20 00:46:34', '2018-04-20 00:46:34'),
(198, 'Dysarthrie', 'Normalbefund', 0, 43, '2018-04-20 00:46:34', '2018-04-20 00:46:34'),
(199, 'Prüfung des Bewusstseins', 'Somnolenter Patient', 1, 45, '2018-04-20 00:48:47', '2018-04-20 00:48:47'),
(200, 'Orientierung', '1 korrekte Antwort', 1, 45, '2018-04-20 00:48:47', '2018-04-20 00:48:47'),
(201, 'Kooperation', 'Keine Aufforderung korrekt befolgt', 2, 45, '2018-04-20 00:48:47', '2018-04-20 00:48:47'),
(202, 'Horizontale Blickbewegungen', 'Blickwendung', 2, 45, '2018-04-20 00:48:47', '2018-04-20 00:48:47'),
(203, 'Mimik', 'Leichte Asymmetrie', 1, 45, '2018-04-20 00:48:47', '2018-04-20 00:48:47'),
(204, 'Armmotorik', 'Absinken rechts', 1, 45, '2018-04-20 00:48:47', '2018-04-20 00:48:47'),
(205, 'Armmotorik', 'Absinken links', 1, 45, '2018-04-20 00:48:47', '2018-04-20 00:48:47'),
(206, 'Beinmotorik', 'Absinken rechts', 1, 45, '2018-04-20 00:48:47', '2018-04-20 00:48:47'),
(207, 'Beinmotorik', 'Absinken links', 1, 45, '2018-04-20 00:48:47', '2018-04-20 00:48:47'),
(208, 'Sprache', 'Kommunikation eingeschränkt', 1, 45, '2018-04-20 00:48:47', '2018-04-20 00:48:47'),
(209, 'Dysarthrie', 'Verwaschene Sprache', 1, 45, '2018-04-20 00:48:47', '2018-04-20 00:48:47'),
(210, 'Prüfung des Bewusstseins', 'Somnolenter Patient', 1, 46, '2018-04-20 00:49:22', '2018-04-20 00:49:22'),
(211, 'Orientierung', '1 korrekte Antwort', 1, 46, '2018-04-20 00:49:22', '2018-04-20 00:49:22'),
(212, 'Kooperation', '1 Aufforderung korrekt befolgt', 1, 46, '2018-04-20 00:49:22', '2018-04-20 00:49:22'),
(213, 'Horizontale Blickbewegungen', 'Blickwendung', 2, 46, '2018-04-20 00:49:22', '2018-04-20 00:49:22'),
(214, 'Mimik', 'Leichte Asymmetrie', 1, 46, '2018-04-20 00:49:22', '2018-04-20 00:49:22'),
(215, 'Armmotorik', 'Absinken rechts', 1, 46, '2018-04-20 00:49:22', '2018-04-20 00:49:22'),
(216, 'Armmotorik', 'Absinken links', 1, 46, '2018-04-20 00:49:22', '2018-04-20 00:49:22'),
(217, 'Beinmotorik', 'Absinken rechts', 1, 46, '2018-04-20 00:49:22', '2018-04-20 00:49:22'),
(218, 'Beinmotorik', 'Absinken links', 1, 46, '2018-04-20 00:49:22', '2018-04-20 00:49:22'),
(219, 'Sprache', 'Kommunikation eingeschränkt', 1, 46, '2018-04-20 00:49:22', '2018-04-20 00:49:22'),
(220, 'Dysarthrie', 'Verwaschene Sprache', 1, 46, '2018-04-20 00:49:22', '2018-04-20 00:49:22'),
(221, 'Prüfung des Bewusstseins', 'Normalbefund', 0, 47, '2018-04-20 00:49:57', '2018-04-20 00:49:57'),
(222, 'Orientierung', '1 korrekte Antwort', 1, 47, '2018-04-20 00:49:57', '2018-04-20 00:49:57'),
(223, 'Kooperation', '1 Aufforderung korrekt befolgt', 1, 47, '2018-04-20 00:49:57', '2018-04-20 00:49:57'),
(224, 'Horizontale Blickbewegungen', 'Blickwendung', 2, 47, '2018-04-20 00:49:57', '2018-04-20 00:49:57'),
(225, 'Mimik', 'Leichte Asymmetrie', 1, 47, '2018-04-20 00:49:57', '2018-04-20 00:49:57'),
(226, 'Armmotorik', 'Absinken rechts', 1, 47, '2018-04-20 00:49:57', '2018-04-20 00:49:57'),
(227, 'Armmotorik', 'Absinken links', 1, 47, '2018-04-20 00:49:57', '2018-04-20 00:49:57'),
(228, 'Beinmotorik', 'Absinken rechts', 1, 47, '2018-04-20 00:49:57', '2018-04-20 00:49:57'),
(229, 'Beinmotorik', 'Absinken links', 1, 47, '2018-04-20 00:49:57', '2018-04-20 00:49:57'),
(230, 'Sprache', 'Kommunikation eingeschränkt', 1, 47, '2018-04-20 00:49:57', '2018-04-20 00:49:57'),
(231, 'Dysarthrie', 'Verwaschene Sprache', 1, 47, '2018-04-20 00:49:57', '2018-04-20 00:49:57'),
(232, 'Prüfung des Bewusstseins', 'Somnolenter Patient', 1, 48, '2018-04-20 00:50:33', '2018-04-20 00:50:33'),
(233, 'Orientierung', 'Keine korrekte Antwort', 2, 48, '2018-04-20 00:50:33', '2018-04-20 00:50:33'),
(234, 'Kooperation', 'Keine Aufforderung korrekt befolgt', 2, 48, '2018-04-20 00:50:33', '2018-04-20 00:50:33'),
(235, 'Horizontale Blickbewegungen', 'Blickwendung', 2, 48, '2018-04-20 00:50:33', '2018-04-20 00:50:33'),
(236, 'Mimik', 'Deutliche Asymmetrie', 2, 48, '2018-04-20 00:50:33', '2018-04-20 00:50:33'),
(237, 'Armmotorik', 'Kein Anheben rechts', 2, 48, '2018-04-20 00:50:33', '2018-04-20 00:50:33'),
(238, 'Armmotorik', 'Kein Anheben links', 2, 48, '2018-04-20 00:50:33', '2018-04-20 00:50:33'),
(239, 'Beinmotorik', 'Kein Anheben rechts', 2, 48, '2018-04-20 00:50:33', '2018-04-20 00:50:33'),
(240, 'Beinmotorik', 'Kein Anheben links', 2, 48, '2018-04-20 00:50:33', '2018-04-20 00:50:33'),
(241, 'Sprache', 'Keine Kommunikation möglich', 2, 48, '2018-04-20 00:50:33', '2018-04-20 00:50:33'),
(242, 'Dysarthrie', 'Unverständlich oder stumm', 2, 48, '2018-04-20 00:50:33', '2018-04-20 00:50:33'),
(243, 'Prüfung des Bewusstseins', 'Somnolenter Patient', 1, 49, '2018-04-20 01:06:40', '2018-04-20 01:06:40'),
(244, 'Orientierung', '1 korrekte Antwort', 1, 49, '2018-04-20 01:06:40', '2018-04-20 01:06:40'),
(245, 'Kooperation', '1 Aufforderung korrekt befolgt', 1, 49, '2018-04-20 01:06:40', '2018-04-20 01:06:40'),
(246, 'Horizontale Blickbewegungen', 'Normalbefund', 0, 49, '2018-04-20 01:06:40', '2018-04-20 01:06:40'),
(247, 'Mimik', 'Deutliche Asymmetrie', 2, 49, '2018-04-20 01:06:40', '2018-04-20 01:06:40'),
(248, 'Armmotorik', 'Absinken rechts', 1, 49, '2018-04-20 01:06:40', '2018-04-20 01:06:40'),
(249, 'Armmotorik', 'Absinken links', 1, 49, '2018-04-20 01:06:40', '2018-04-20 01:06:40'),
(250, 'Beinmotorik', 'Absinken rechts', 1, 49, '2018-04-20 01:06:40', '2018-04-20 01:06:40'),
(251, 'Beinmotorik', 'Kein Anheben links', 2, 49, '2018-04-20 01:06:40', '2018-04-20 01:06:40'),
(252, 'Sprache', 'Kommunikation eingeschränkt', 1, 49, '2018-04-20 01:06:40', '2018-04-20 01:06:40'),
(253, 'Dysarthrie', 'Verwaschene Sprache', 1, 49, '2018-04-20 01:06:40', '2018-04-20 01:06:40'),
(254, 'Prüfung des Bewusstseins', 'Somnolenter Patient', 1, 52, '2018-04-20 04:02:05', '2018-04-20 04:02:05'),
(255, 'Orientierung', 'Keine korrekte Antwort', 2, 52, '2018-04-20 04:02:05', '2018-04-20 04:02:05'),
(256, 'Kooperation', '1 Aufforderung korrekt befolgt', 1, 52, '2018-04-20 04:02:05', '2018-04-20 04:02:05'),
(257, 'Horizontale Blickbewegungen', 'Normalbefund', 0, 52, '2018-04-20 04:02:05', '2018-04-20 04:02:05'),
(258, 'Mimik', 'Leichte Asymmetrie', 1, 52, '2018-04-20 04:02:05', '2018-04-20 04:02:05'),
(259, 'Armmotorik', 'Absinken rechts', 1, 52, '2018-04-20 04:02:05', '2018-04-20 04:02:05'),
(260, 'Armmotorik', 'Absinken links', 1, 52, '2018-04-20 04:02:05', '2018-04-20 04:02:05'),
(261, 'Beinmotorik', 'Absinken rechts', 1, 52, '2018-04-20 04:02:05', '2018-04-20 04:02:05'),
(262, 'Beinmotorik', 'Absinken links', 1, 52, '2018-04-20 04:02:05', '2018-04-20 04:02:05'),
(263, 'Sprache', 'Kommunikation eingeschränkt', 1, 52, '2018-04-20 04:02:05', '2018-04-20 04:02:05'),
(264, 'Dysarthrie', 'Verwaschene Sprache', 1, 52, '2018-04-20 04:02:05', '2018-04-20 04:02:05'),
(265, 'Prüfung des Bewusstseins', 'Normalbefund', 0, 53, '2018-04-20 04:08:14', '2018-04-20 04:08:14'),
(266, 'Orientierung', '1 korrekte Antwort', 1, 53, '2018-04-20 04:08:14', '2018-04-20 04:08:14'),
(267, 'Kooperation', 'Keine Aufforderung korrekt befolgt', 2, 53, '2018-04-20 04:08:14', '2018-04-20 04:08:14'),
(268, 'Horizontale Blickbewegungen', 'Blickwendung', 2, 53, '2018-04-20 04:08:14', '2018-04-20 04:08:14'),
(269, 'Mimik', 'Deutliche Asymmetrie', 2, 53, '2018-04-20 04:08:14', '2018-04-20 04:08:14'),
(270, 'Armmotorik', 'Absinken rechts', 1, 53, '2018-04-20 04:08:14', '2018-04-20 04:08:14'),
(271, 'Armmotorik', 'Absinken links', 1, 53, '2018-04-20 04:08:14', '2018-04-20 04:08:14'),
(272, 'Beinmotorik', 'Nicht beurteilbar rechts', 0, 53, '2018-04-20 04:08:14', '2018-04-20 04:08:14'),
(273, 'Beinmotorik', 'Kein Anheben links', 2, 53, '2018-04-20 04:08:14', '2018-04-20 04:08:14'),
(274, 'Sprache', 'Keine Kommunikation möglich', 2, 53, '2018-04-20 04:08:14', '2018-04-20 04:08:14'),
(275, 'Dysarthrie', 'Verwaschene Sprache', 1, 53, '2018-04-20 04:08:14', '2018-04-20 04:08:14'),
(276, 'Prüfung des Bewusstseins', 'Normalbefund', 0, 54, '2018-04-20 04:11:20', '2018-04-20 04:11:20'),
(277, 'Orientierung', '1 korrekte Antwort', 1, 54, '2018-04-20 04:11:20', '2018-04-20 04:11:20'),
(278, 'Kooperation', '1 Aufforderung korrekt befolgt', 1, 54, '2018-04-20 04:11:20', '2018-04-20 04:11:20'),
(279, 'Horizontale Blickbewegungen', 'Normalbefund', 0, 54, '2018-04-20 04:11:20', '2018-04-20 04:11:20'),
(280, 'Mimik', 'Leichte Asymmetrie', 1, 54, '2018-04-20 04:11:20', '2018-04-20 04:11:20'),
(281, 'Armmotorik', 'Absinken rechts', 1, 54, '2018-04-20 04:11:20', '2018-04-20 04:11:20'),
(282, 'Armmotorik', 'Absinken links', 1, 54, '2018-04-20 04:11:20', '2018-04-20 04:11:20'),
(283, 'Beinmotorik', 'Absinken rechts', 1, 54, '2018-04-20 04:11:20', '2018-04-20 04:11:20'),
(284, 'Beinmotorik', 'Absinken links', 1, 54, '2018-04-20 04:11:20', '2018-04-20 04:11:20'),
(285, 'Sprache', 'Kommunikation eingeschränkt', 1, 54, '2018-04-20 04:11:20', '2018-04-20 04:11:20'),
(286, 'Dysarthrie', 'Verwaschene Sprache', 1, 54, '2018-04-20 04:11:20', '2018-04-20 04:11:20'),
(287, 'Prüfung des Bewusstseins', 'Somnolenter Patient', 1, 55, '2018-04-20 20:34:22', '2018-04-20 20:34:22'),
(288, 'Orientierung', 'Keine korrekte Antwort', 2, 55, '2018-04-20 20:34:22', '2018-04-20 20:34:22'),
(289, 'Kooperation', '1 Aufforderung korrekt befolgt', 1, 55, '2018-04-20 20:34:22', '2018-04-20 20:34:22'),
(290, 'Horizontale Blickbewegungen', 'Normalbefund', 0, 55, '2018-04-20 20:34:22', '2018-04-20 20:34:22'),
(291, 'Mimik', 'Leichte Asymmetrie', 1, 55, '2018-04-20 20:34:22', '2018-04-20 20:34:22'),
(292, 'Armmotorik', 'Absinken rechts', 1, 55, '2018-04-20 20:34:22', '2018-04-20 20:34:22'),
(293, 'Armmotorik', 'Absinken links', 1, 55, '2018-04-20 20:34:22', '2018-04-20 20:34:22'),
(294, 'Beinmotorik', 'Absinken rechts', 1, 55, '2018-04-20 20:34:22', '2018-04-20 20:34:22'),
(295, 'Beinmotorik', 'Kein Anheben links', 2, 55, '2018-04-20 20:34:22', '2018-04-20 20:34:22'),
(296, 'Sprache', 'Kommunikation eingeschränkt', 1, 55, '2018-04-20 20:34:22', '2018-04-20 20:34:22'),
(297, 'Dysarthrie', 'Verwaschene Sprache', 1, 55, '2018-04-20 20:34:22', '2018-04-20 20:34:22'),
(298, 'Prüfung des Bewusstseins', 'Somnolenter Patient', 1, 56, '2018-04-23 01:27:02', '2018-04-23 01:27:02'),
(299, 'Orientierung', '1 korrekte Antwort', 1, 56, '2018-04-23 01:27:02', '2018-04-23 01:27:02'),
(300, 'Kooperation', '1 Aufforderung korrekt befolgt', 1, 56, '2018-04-23 01:27:02', '2018-04-23 01:27:02'),
(301, 'Horizontale Blickbewegungen', 'Normalbefund', 0, 56, '2018-04-23 01:27:02', '2018-04-23 01:27:02'),
(302, 'Mimik', 'Leichte Asymmetrie', 1, 56, '2018-04-23 01:27:02', '2018-04-23 01:27:02'),
(303, 'Armmotorik', 'Absinken rechts', 1, 56, '2018-04-23 01:27:02', '2018-04-23 01:27:02'),
(304, 'Armmotorik', 'Absinken links', 1, 56, '2018-04-23 01:27:02', '2018-04-23 01:27:02'),
(305, 'Beinmotorik', 'Absinken rechts', 1, 56, '2018-04-23 01:27:02', '2018-04-23 01:27:02'),
(306, 'Beinmotorik', 'Absinken links', 1, 56, '2018-04-23 01:27:02', '2018-04-23 01:27:02'),
(307, 'Sprache', 'Kommunikation eingeschränkt', 1, 56, '2018-04-23 01:27:02', '2018-04-23 01:27:02'),
(308, 'Dysarthrie', 'Verwaschene Sprache', 1, 56, '2018-04-23 01:27:02', '2018-04-23 01:27:02'),
(309, 'Prüfung des Bewusstseins', 'Somnolenter Patient', 1, 57, '2018-04-23 01:28:24', '2018-04-23 01:28:24'),
(310, 'Orientierung', '1 korrekte Antwort', 1, 57, '2018-04-23 01:28:24', '2018-04-23 01:28:24'),
(311, 'Kooperation', 'Normalbefund', 0, 57, '2018-04-23 01:28:24', '2018-04-23 01:28:24'),
(312, 'Horizontale Blickbewegungen', 'Normalbefund', 0, 57, '2018-04-23 01:28:24', '2018-04-23 01:28:24'),
(313, 'Mimik', 'Normalbefund', 0, 57, '2018-04-23 01:28:24', '2018-04-23 01:28:24'),
(314, 'Armmotorik', 'Normal rechts', 0, 57, '2018-04-23 01:28:24', '2018-04-23 01:28:24'),
(315, 'Armmotorik', 'Normal links', 0, 57, '2018-04-23 01:28:24', '2018-04-23 01:28:24'),
(316, 'Beinmotorik', 'Normal rechts', 0, 57, '2018-04-23 01:28:24', '2018-04-23 01:28:24'),
(317, 'Beinmotorik', 'Normal links', 0, 57, '2018-04-23 01:28:24', '2018-04-23 01:28:24'),
(318, 'Sprache', 'Normalbefund', 0, 57, '2018-04-23 01:28:24', '2018-04-23 01:28:24'),
(319, 'Dysarthrie', 'Normalbefund', 0, 57, '2018-04-23 01:28:24', '2018-04-23 01:28:24'),
(320, 'Prüfung des Bewusstseins', 'Somnolenter Patient', 1, 58, '2018-04-23 01:56:29', '2018-04-23 01:56:29'),
(321, 'Orientierung', 'Keine korrekte Antwort', 2, 58, '2018-04-23 01:56:29', '2018-04-23 01:56:29'),
(322, 'Kooperation', 'Keine Aufforderung korrekt befolgt', 2, 58, '2018-04-23 01:56:29', '2018-04-23 01:56:29'),
(323, 'Horizontale Blickbewegungen', 'Blickwendung', 2, 58, '2018-04-23 01:56:29', '2018-04-23 01:56:29'),
(324, 'Mimik', 'Deutliche Asymmetrie', 2, 58, '2018-04-23 01:56:29', '2018-04-23 01:56:29'),
(325, 'Armmotorik', 'Kein Anheben rechts', 2, 58, '2018-04-23 01:56:29', '2018-04-23 01:56:29'),
(326, 'Armmotorik', 'Absinken links', 1, 58, '2018-04-23 01:56:29', '2018-04-23 01:56:29'),
(327, 'Beinmotorik', 'Absinken rechts', 1, 58, '2018-04-23 01:56:29', '2018-04-23 01:56:29'),
(328, 'Beinmotorik', 'Absinken links', 1, 58, '2018-04-23 01:56:29', '2018-04-23 01:56:29'),
(329, 'Sprache', 'Kommunikation eingeschränkt', 1, 58, '2018-04-23 01:56:29', '2018-04-23 01:56:29'),
(330, 'Dysarthrie', 'Verwaschene Sprache', 1, 58, '2018-04-23 01:56:29', '2018-04-23 01:56:29'),
(331, 'Prüfung des Bewusstseins', 'Somnolenter Patient', 1, 59, '2018-04-23 03:46:58', '2018-04-23 03:46:58'),
(332, 'Orientierung', 'Keine korrekte Antwort', 2, 59, '2018-04-23 03:46:58', '2018-04-23 03:46:58'),
(333, 'Kooperation', '1 Aufforderung korrekt befolgt', 1, 59, '2018-04-23 03:46:58', '2018-04-23 03:46:58'),
(334, 'Horizontale Blickbewegungen', 'Normalbefund', 0, 59, '2018-04-23 03:46:58', '2018-04-23 03:46:58'),
(335, 'Mimik', 'Deutliche Asymmetrie', 2, 59, '2018-04-23 03:46:58', '2018-04-23 03:46:58'),
(336, 'Armmotorik', 'Absinken rechts', 1, 59, '2018-04-23 03:46:58', '2018-04-23 03:46:58'),
(337, 'Armmotorik', 'Absinken links', 1, 59, '2018-04-23 03:46:58', '2018-04-23 03:46:58'),
(338, 'Beinmotorik', 'Absinken rechts', 1, 59, '2018-04-23 03:46:58', '2018-04-23 03:46:58'),
(339, 'Beinmotorik', 'Absinken links', 1, 59, '2018-04-23 03:46:58', '2018-04-23 03:46:58'),
(340, 'Sprache', 'Kommunikation eingeschränkt', 1, 59, '2018-04-23 03:46:58', '2018-04-23 03:46:58'),
(341, 'Dysarthrie', 'Verwaschene Sprache', 1, 59, '2018-04-23 03:46:58', '2018-04-23 03:46:58'),
(342, 'Prüfung des Bewusstseins', 'Somnolenter Patient', 1, 60, '2018-04-23 04:11:08', '2018-04-23 04:11:08'),
(343, 'Orientierung', '1 korrekte Antwort', 1, 60, '2018-04-23 04:11:08', '2018-04-23 04:11:08'),
(344, 'Kooperation', '1 Aufforderung korrekt befolgt', 1, 60, '2018-04-23 04:11:08', '2018-04-23 04:11:08'),
(345, 'Horizontale Blickbewegungen', 'Normalbefund', 0, 60, '2018-04-23 04:11:08', '2018-04-23 04:11:08'),
(346, 'Mimik', 'Leichte Asymmetrie', 1, 60, '2018-04-23 04:11:08', '2018-04-23 04:11:08'),
(347, 'Armmotorik', 'Absinken rechts', 1, 60, '2018-04-23 04:11:08', '2018-04-23 04:11:08'),
(348, 'Armmotorik', 'Absinken links', 1, 60, '2018-04-23 04:11:08', '2018-04-23 04:11:08'),
(349, 'Beinmotorik', 'Kein Anheben rechts', 2, 60, '2018-04-23 04:11:08', '2018-04-23 04:11:08'),
(350, 'Beinmotorik', 'Normal links', 0, 60, '2018-04-23 04:11:08', '2018-04-23 04:11:08'),
(351, 'Sprache', 'Kommunikation eingeschränkt', 1, 60, '2018-04-23 04:11:08', '2018-04-23 04:11:08'),
(352, 'Dysarthrie', 'Verwaschene Sprache', 1, 60, '2018-04-23 04:11:08', '2018-04-23 04:11:08'),
(353, 'Prüfung des Bewusstseins', 'Somnolenter Patient', 1, 62, '2018-04-23 04:17:58', '2018-04-23 04:17:58'),
(354, 'Orientierung', '1 korrekte Antwort', 1, 62, '2018-04-23 04:17:58', '2018-04-23 04:17:58'),
(355, 'Kooperation', 'Keine Aufforderung korrekt befolgt', 2, 62, '2018-04-23 04:17:58', '2018-04-23 04:17:58'),
(356, 'Horizontale Blickbewegungen', 'Normalbefund', 0, 62, '2018-04-23 04:17:58', '2018-04-23 04:17:58'),
(357, 'Mimik', 'Deutliche Asymmetrie', 2, 62, '2018-04-23 04:17:58', '2018-04-23 04:17:58'),
(358, 'Armmotorik', 'Absinken rechts', 1, 62, '2018-04-23 04:17:58', '2018-04-23 04:17:58'),
(359, 'Armmotorik', 'Absinken links', 1, 62, '2018-04-23 04:17:58', '2018-04-23 04:17:58'),
(360, 'Beinmotorik', 'Absinken rechts', 1, 62, '2018-04-23 04:17:58', '2018-04-23 04:17:58'),
(361, 'Beinmotorik', 'Kein Anheben links', 2, 62, '2018-04-23 04:17:58', '2018-04-23 04:17:58'),
(362, 'Sprache', 'Kommunikation eingeschränkt', 1, 62, '2018-04-23 04:17:58', '2018-04-23 04:17:58'),
(363, 'Dysarthrie', 'Verwaschene Sprache', 1, 62, '2018-04-23 04:17:58', '2018-04-23 04:17:58'),
(364, 'Prüfung des Bewusstseins', 'Normalbefund', 0, 63, '2018-04-24 03:16:32', '2018-04-24 03:16:32'),
(365, 'Orientierung', 'Keine korrekte Antwort', 2, 63, '2018-04-24 03:16:32', '2018-04-24 03:16:32'),
(366, 'Kooperation', '1 Aufforderung korrekt befolgt', 1, 63, '2018-04-24 03:16:32', '2018-04-24 03:16:32'),
(367, 'Horizontale Blickbewegungen', 'Normalbefund', 0, 63, '2018-04-24 03:16:32', '2018-04-24 03:16:32'),
(368, 'Mimik', 'Leichte Asymmetrie', 1, 63, '2018-04-24 03:16:32', '2018-04-24 03:16:32'),
(369, 'Armmotorik', 'Absinken rechts', 1, 63, '2018-04-24 03:16:32', '2018-04-24 03:16:32'),
(370, 'Armmotorik', 'Absinken links', 1, 63, '2018-04-24 03:16:32', '2018-04-24 03:16:32'),
(371, 'Beinmotorik', 'Absinken rechts', 1, 63, '2018-04-24 03:16:32', '2018-04-24 03:16:32'),
(372, 'Beinmotorik', 'Absinken links', 1, 63, '2018-04-24 03:16:32', '2018-04-24 03:16:32'),
(373, 'Sprache', 'Kommunikation eingeschränkt', 1, 63, '2018-04-24 03:16:32', '2018-04-24 03:16:32'),
(374, 'Dysarthrie', 'Verwaschene Sprache', 1, 63, '2018-04-24 03:16:32', '2018-04-24 03:16:32'),
(375, 'Prüfung des Bewusstseins', 'Somnolenter Patient', 1, 64, '2018-04-24 03:19:01', '2018-04-24 03:19:01'),
(376, 'Orientierung', 'Keine korrekte Antwort', 2, 64, '2018-04-24 03:19:01', '2018-04-24 03:19:01'),
(377, 'Kooperation', 'Keine Aufforderung korrekt befolgt', 2, 64, '2018-04-24 03:19:01', '2018-04-24 03:19:01'),
(378, 'Horizontale Blickbewegungen', 'Blickwendung', 2, 64, '2018-04-24 03:19:01', '2018-04-24 03:19:01'),
(379, 'Mimik', 'Deutliche Asymmetrie', 2, 64, '2018-04-24 03:19:01', '2018-04-24 03:19:01'),
(380, 'Armmotorik', 'Kein Anheben rechts', 2, 64, '2018-04-24 03:19:01', '2018-04-24 03:19:01'),
(381, 'Armmotorik', 'Kein Anheben links', 2, 64, '2018-04-24 03:19:01', '2018-04-24 03:19:01'),
(382, 'Beinmotorik', 'Kein Anheben rechts', 2, 64, '2018-04-24 03:19:01', '2018-04-24 03:19:01'),
(383, 'Beinmotorik', 'Kein Anheben links', 2, 64, '2018-04-24 03:19:02', '2018-04-24 03:19:02'),
(384, 'Sprache', 'Kommunikation eingeschränkt', 1, 64, '2018-04-24 03:19:02', '2018-04-24 03:19:02'),
(385, 'Dysarthrie', 'Verwaschene Sprache', 1, 64, '2018-04-24 03:19:02', '2018-04-24 03:19:02'),
(386, 'Prüfung des Bewusstseins', 'Normalbefund', 0, 65, '2018-04-24 03:20:01', '2018-04-24 03:20:01'),
(387, 'Orientierung', 'Keine korrekte Antwort', 2, 65, '2018-04-24 03:20:01', '2018-04-24 03:20:01'),
(388, 'Kooperation', 'Keine Aufforderung korrekt befolgt', 2, 65, '2018-04-24 03:20:01', '2018-04-24 03:20:01'),
(389, 'Horizontale Blickbewegungen', 'Blickwendung', 2, 65, '2018-04-24 03:20:01', '2018-04-24 03:20:01'),
(390, 'Mimik', 'Deutliche Asymmetrie', 2, 65, '2018-04-24 03:20:01', '2018-04-24 03:20:01'),
(391, 'Armmotorik', 'Absinken rechts', 1, 65, '2018-04-24 03:20:01', '2018-04-24 03:20:01'),
(392, 'Armmotorik', 'Absinken links', 1, 65, '2018-04-24 03:20:01', '2018-04-24 03:20:01'),
(393, 'Beinmotorik', 'Absinken rechts', 1, 65, '2018-04-24 03:20:01', '2018-04-24 03:20:01'),
(394, 'Beinmotorik', 'Absinken links', 1, 65, '2018-04-24 03:20:01', '2018-04-24 03:20:01'),
(395, 'Sprache', 'Kommunikation eingeschränkt', 1, 65, '2018-04-24 03:20:01', '2018-04-24 03:20:01'),
(396, 'Dysarthrie', 'Verwaschene Sprache', 1, 65, '2018-04-24 03:20:01', '2018-04-24 03:20:01'),
(397, 'Prüfung des Bewusstseins', 'Normalbefund', 0, 66, '2018-04-24 03:22:37', '2018-04-24 03:22:37'),
(398, 'Orientierung', '1 korrekte Antwort', 1, 66, '2018-04-24 03:22:37', '2018-04-24 03:22:37'),
(399, 'Kooperation', '1 Aufforderung korrekt befolgt', 1, 66, '2018-04-24 03:22:37', '2018-04-24 03:22:37'),
(400, 'Horizontale Blickbewegungen', 'Blickwendung', 2, 66, '2018-04-24 03:22:37', '2018-04-24 03:22:37'),
(401, 'Mimik', 'Leichte Asymmetrie', 1, 66, '2018-04-24 03:22:37', '2018-04-24 03:22:37'),
(402, 'Armmotorik', 'Absinken rechts', 1, 66, '2018-04-24 03:22:37', '2018-04-24 03:22:37'),
(403, 'Armmotorik', 'Absinken links', 1, 66, '2018-04-24 03:22:37', '2018-04-24 03:22:37'),
(404, 'Beinmotorik', 'Absinken rechts', 1, 66, '2018-04-24 03:22:37', '2018-04-24 03:22:37'),
(405, 'Beinmotorik', 'Absinken links', 1, 66, '2018-04-24 03:22:37', '2018-04-24 03:22:37'),
(406, 'Sprache', 'Kommunikation eingeschränkt', 1, 66, '2018-04-24 03:22:37', '2018-04-24 03:22:37'),
(407, 'Dysarthrie', 'Verwaschene Sprache', 1, 66, '2018-04-24 03:22:37', '2018-04-24 03:22:37'),
(408, 'Prüfung des Bewusstseins', 'Somnolenter Patient', 1, 67, '2018-04-24 05:05:35', '2018-04-24 05:05:35'),
(409, 'Orientierung', 'Keine korrekte Antwort', 2, 67, '2018-04-24 05:05:35', '2018-04-24 05:05:35'),
(410, 'Kooperation', '1 Aufforderung korrekt befolgt', 1, 67, '2018-04-24 05:05:35', '2018-04-24 05:05:35'),
(411, 'Horizontale Blickbewegungen', 'Normalbefund', 0, 67, '2018-04-24 05:05:35', '2018-04-24 05:05:35'),
(412, 'Mimik', 'Leichte Asymmetrie', 1, 67, '2018-04-24 05:05:35', '2018-04-24 05:05:35'),
(413, 'Armmotorik', 'Kein Anheben rechts', 2, 67, '2018-04-24 05:05:35', '2018-04-24 05:05:35'),
(414, 'Armmotorik', 'Nicht beurteilbar links', 0, 67, '2018-04-24 05:05:35', '2018-04-24 05:05:35'),
(415, 'Beinmotorik', 'Nicht beurteilbar rechts', 0, 67, '2018-04-24 05:05:35', '2018-04-24 05:05:35'),
(416, 'Beinmotorik', 'Nicht beurteilbar links', 0, 67, '2018-04-24 05:05:35', '2018-04-24 05:05:35'),
(417, 'Sprache', 'Kommunikation eingeschränkt', 1, 67, '2018-04-24 05:05:35', '2018-04-24 05:05:35'),
(418, 'Dysarthrie', 'Normalbefund', 0, 67, '2018-04-24 05:05:35', '2018-04-24 05:05:35'),
(419, 'Prüfung des Bewusstseins', 'Somnolenter Patient', 1, 68, '2018-04-24 05:26:26', '2018-04-24 05:26:26'),
(420, 'Orientierung', '1 korrekte Antwort', 1, 68, '2018-04-24 05:26:26', '2018-04-24 05:26:26'),
(421, 'Kooperation', '1 Aufforderung korrekt befolgt', 1, 68, '2018-04-24 05:26:26', '2018-04-24 05:26:26'),
(422, 'Horizontale Blickbewegungen', 'Normalbefund', 0, 68, '2018-04-24 05:26:26', '2018-04-24 05:26:26'),
(423, 'Mimik', 'Leichte Asymmetrie', 1, 68, '2018-04-24 05:26:26', '2018-04-24 05:26:26'),
(424, 'Armmotorik Rechts', 'Absinken rechts', 1, 68, '2018-04-24 05:26:26', '2018-07-01 06:38:57'),
(425, 'Armmotorik Links', 'Kein Anheben links', 2, 68, '2018-04-24 05:26:26', '2018-07-01 06:38:49'),
(426, 'Beinmotorik Rechts', 'Kein Anheben rechts', 2, 68, '2018-04-24 05:26:26', '2018-07-01 06:38:35'),
(427, 'Beinmotorik Links', 'Nicht beurteilbar links', 0, 68, '2018-04-24 05:26:26', '2018-07-01 06:38:40'),
(428, 'Sprache', 'Kommunikation eingeschränkt', 1, 68, '2018-04-24 05:26:26', '2018-04-24 05:26:26'),
(429, 'Dysarthrie', 'Verwaschene Sprache', 1, 68, '2018-04-24 05:26:26', '2018-04-24 05:26:26');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `hospital_id` int(11) NOT NULL,
  `hospital_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `hospital_address` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `hospital_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `hospital_status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`hospital_id`, `hospital_name`, `hospital_address`, `hospital_email`, `hospital_status`, `created_at`, `updated_at`) VALUES
(1, 'Teaching Hospital', 'Maharajgunj', 'contact@teaching.com', '1', '2018-04-02 22:30:12', '2018-04-02 23:41:51'),
(2, 'Grandee International Hospital', 'Dhapasi', 'contact@grandee.com', '1', '2018-04-02 22:41:45', '2018-04-02 22:41:45'),
(3, 'Norvic Hospital', 'Thapathali', 'info@norvic.com', '1', '2018-04-02 22:42:10', '2018-04-02 22:42:10'),
(5, 'Gangalal Hospital', 'Bansbari', 'info@gangalal.com', '1', '2018-04-02 23:51:15', '2018-04-02 23:53:41'),
(6, 'Bir Hospital', 'Ratnapark', 'contact@birhospital.com', '0', '2018-04-02 23:54:39', '2018-04-24 01:04:11'),
(7, 'Chettrapati Clinic', 'Chhetrapati', 'info@ch.com', '1', '2018-04-03 00:59:21', '2018-04-03 00:59:21'),
(8, 'Civil Hospital', 'Baneshwor', 'civil@hms.com', '1', '2018-04-06 03:09:47', '2018-04-06 03:09:47'),
(9, 'UKSH Kiel', 'dfs', 'email@uksh.com', '1', '2018-04-26 03:27:11', '2018-04-26 03:27:11'),
(10, 'UKSH Lübeck', 'dfdsf', 'contact@uksh.com', '1', '2018-04-26 03:27:29', '2018-04-26 03:27:29'),
(11, 'UKSH Lübeck', 'Lubeck', 'contact@lubeck.com', '1', '2018-04-27 00:40:13', '2018-04-27 00:40:13');

-- --------------------------------------------------------

--
-- Table structure for table `hospital_numbers`
--

CREATE TABLE `hospital_numbers` (
  `h_id` int(11) NOT NULL,
  `hospital_id` int(11) NOT NULL,
  `department` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `number` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loginstatus`
--

CREATE TABLE `loginstatus` (
  `id` int(11) NOT NULL,
  `device_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loginstatus`
--

INSERT INTO `loginstatus` (`id`, `device_id`, `status`, `email`, `created_at`, `updated_at`) VALUES
(1, '123456', '1', 'shashi@gmail.com', '2018-04-08 04:44:01', '2018-04-08 04:44:01'),
(2, '847e3a8361835224', '1', 'shashi@gmail.com', '2018-04-08 04:44:29', '2018-04-08 04:44:29'),
(3, 'D7CF549A-4FC7-4C69-BF7B-5D798AC9B2EA', '1', 'dikita@gmail.com', '2018-04-08 04:48:03', '2018-04-08 04:48:03'),
(4, '70b23dd3b286ca57', '1', 'dikita@gmail.com', '2018-04-08 04:49:44', '2018-04-08 03:06:33'),
(5, '19d758671a296b6c', '1', 'test@uksh.com', '2018-04-18 01:23:17', '2018-04-17 23:24:36'),
(6, '7d460b2bbb706bb6', '1', 'shristi@uksh.com', '2018-04-19 03:17:17', '2018-04-19 03:17:17'),
(7, '2bbe895d24b351e3', '1', 'rojina@uksh.com', '2018-04-19 03:18:10', '2018-04-19 03:18:10'),
(8, '0aacbb93b4e442a8', '1', 'lokesh@uksh.com', '2018-04-20 02:19:02', '2018-04-20 02:19:02'),
(9, '903e19a27720471a', '1', 'lokesh@uksh.com', '2018-04-24 06:46:54', '2018-04-24 06:46:54');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `paramedic`
--

CREATE TABLE `paramedic` (
  `paramedic_id` int(11) NOT NULL,
  `paramedic_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `paramedic_mobile` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `paramedic_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `paramedic_password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `paramedic_status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `paramedic`
--

INSERT INTO `paramedic` (`paramedic_id`, `paramedic_name`, `paramedic_mobile`, `paramedic_email`, `paramedic_password`, `paramedic_status`, `created_at`, `updated_at`) VALUES
(1, 'Basanta Chaudhary', '9845124598', 'basanta@abc.com', '$2y$10$266pirpYiXYMo.ODncr1t.r2.jA70fcXJdkZWWVvUi8qj4Ipnmb86', '1', '2018-04-03 19:44:05', '2018-04-03 20:28:29'),
(2, 'Dikita', '9847541257', 'dikita@gmail.com', '$2y$10$/lHCMuAxP7rtE2jdmtjgx.WqxTKpbsxUEbUhpXAgto0uyf5zhty/6', '1', '2018-04-06 03:59:45', '2018-04-06 03:59:45'),
(3, 'Shashi', '982514568', 'shashi@gmail.com', '$2y$10$JgRfLgBcd9aIcSVAOmwMEe9ERrwav/t9TsUbKFpvb.CMpSfOy9OSu', '1', '2018-04-06 04:00:04', '2018-04-06 05:26:54'),
(4, 'Test', '3214569874', 'test@uksh.com', '$2y$10$iBjRX53/EZyQEk6MD4zRVOI9Eivp7E.qk0TXW48.bWU0NWYQ57qMe', '1', '2018-04-17 23:22:33', '2018-04-17 23:22:33'),
(5, 'Shristi', '98445757', 'shristi@uksh.com', '$2y$10$AfJBpfXzr.Y0b13zqJrzduxoBjLD3Dr45VdCHPZGdfYPGXsUZ9Psy', '1', '2018-04-19 01:15:37', '2018-04-19 01:15:37'),
(6, 'Rojina', '5446546465', 'rojina@uksh.com', '$2y$10$NzHEA175mDTK5/1ckP4nxOPqTGoY65baAlren8a91iydsFwr2Arei', '1', '2018-04-19 01:17:50', '2018-04-19 01:17:50'),
(7, 'Lokesh Shrestha', '9841585478', 'lokesh@uksh.com', '$2y$10$qnkbnzy9tdiCgHg/iQ9jjup9n6qnfKyxA9GBbf6qoUnod4Ed5or.i', '1', '2018-04-19 04:29:30', '2018-04-19 04:29:30');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patient_id` int(11) NOT NULL,
  `patient_age` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `patient_gender` enum('M','F','O') COLLATE utf8_unicode_ci NOT NULL,
  `hospital` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `arrival_time` int(11) NOT NULL,
  `paramedic_id` int(11) NOT NULL,
  `archived` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `viewed` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `edited` enum('0','1') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patient_id`, `patient_age`, `patient_gender`, `hospital`, `arrival_time`, `paramedic_id`, `archived`, `viewed`, `edited`, `created_at`, `updated_at`) VALUES
(9, '65', 'M', 'UKSH Lübeck', 0, 13, '0', '0', '0', '2018-04-19 04:59:01', '2018-04-19 04:59:01'),
(10, '33', 'M', 'UKSH Lübeck', 0, 3, '0', '0', '0', '2018-04-19 07:34:16', '2018-04-19 07:34:16'),
(11, '0', 'M', 'UKSH Kiel', 0, 2, '0', '0', '0', '2018-04-19 23:16:04', '2018-04-19 23:16:04'),
(12, '0', 'M', 'UKSH Lübeck', 0, 3, '0', '0', '0', '2018-04-20 00:14:06', '2018-04-20 00:14:06'),
(13, '0', 'M', 'UKSH Lübeck', 0, 7, '0', '0', '0', '2018-04-20 00:19:54', '2018-04-20 00:19:54'),
(14, '98', 'M', 'UKSH Kiel', 0, 3, '0', '0', '0', '2018-04-20 00:21:02', '2018-04-20 00:21:02'),
(15, '0', 'M', 'UKSH Kiel', 0, 2, '0', '0', '0', '2018-04-20 00:24:46', '2018-04-20 00:24:46'),
(16, '66', 'M', 'UKSH Kiel', 0, 2, '0', '0', '0', '2018-04-20 00:26:27', '2018-04-20 00:26:27'),
(17, '0', 'M', 'UKSH Kiel', 0, 7, '0', '0', '0', '2018-04-20 00:26:28', '2018-04-20 00:26:28'),
(18, '45', 'F', 'UKSH Kiel', 0, 2, '0', '0', '0', '2018-04-20 00:27:27', '2018-04-20 00:27:27'),
(19, '45', 'F', 'UKSH Kiel', 0, 2, '0', '0', '0', '2018-04-20 00:27:30', '2018-04-20 00:27:30'),
(20, '45', 'F', 'UKSH Kiel', 0, 2, '0', '0', '0', '2018-04-20 00:27:31', '2018-04-20 00:27:31'),
(21, '45', 'F', 'UKSH Kiel', 0, 2, '0', '0', '0', '2018-04-20 00:27:39', '2018-04-20 00:27:39'),
(22, '45', 'F', 'UKSH Kiel', 0, 2, '0', '0', '0', '2018-04-20 00:27:40', '2018-04-20 00:27:40'),
(23, '45', 'F', 'UKSH Kiel', 0, 2, '0', '0', '0', '2018-04-20 00:27:48', '2018-04-20 00:27:48'),
(24, '45', 'F', 'UKSH Kiel', 0, 2, '0', '0', '0', '2018-04-20 00:27:56', '2018-04-20 00:27:56'),
(25, '45', 'F', 'UKSH Kiel', 0, 2, '0', '0', '0', '2018-04-20 00:27:57', '2018-04-20 00:27:57'),
(26, '56', 'F', 'UKSH Lübeck', 0, 2, '0', '0', '0', '2018-04-20 00:29:14', '2018-04-20 00:29:14'),
(27, '5', 'M', 'UKSH Lübeck', 0, 2, '0', '0', '0', '2018-04-20 00:30:05', '2018-04-20 00:30:05'),
(28, '5', 'M', 'UKSH Lübeck', 0, 2, '0', '0', '0', '2018-04-20 00:30:08', '2018-04-20 00:30:08'),
(29, '5', 'M', 'UKSH Lübeck', 0, 2, '0', '0', '0', '2018-04-20 00:30:21', '2018-04-20 00:30:21'),
(30, '5', 'M', 'UKSH Lübeck', 0, 2, '0', '0', '0', '2018-04-20 00:30:55', '2018-04-20 00:30:55'),
(31, '0', 'M', 'UKSH Lübeck', 0, 2, '0', '0', '0', '2018-04-20 00:31:40', '2018-04-20 00:31:40'),
(32, '0', 'M', 'UKSH Lübeck', 0, 2, '0', '0', '0', '2018-04-20 00:32:21', '2018-04-20 00:32:21'),
(33, '0', 'M', 'UKSH Lübeck', 0, 2, '0', '0', '0', '2018-04-20 00:32:26', '2018-04-20 00:32:26'),
(34, '0', 'M', 'UKSH Lübeck', 0, 2, '0', '0', '0', '2018-04-20 00:32:27', '2018-04-20 00:32:27'),
(35, '0', 'M', 'UKSH Lübeck', 0, 2, '0', '0', '0', '2018-04-20 00:32:44', '2018-04-20 00:32:44'),
(36, '0', 'M', 'UKSH Lübeck', 0, 2, '0', '0', '0', '2018-04-20 00:33:33', '2018-04-20 00:33:33'),
(37, '0', 'M', 'UKSH Lübeck', 0, 2, '0', '0', '0', '2018-04-20 00:34:07', '2018-04-20 00:34:07'),
(38, '0', 'F', 'UKSH Lübeck', 0, 2, '0', '0', '0', '2018-04-20 00:37:37', '2018-04-20 00:37:37'),
(39, '0', 'M', 'UKSH Lübeck', 0, 2, '0', '0', '0', '2018-04-20 00:39:07', '2018-04-20 00:39:07'),
(40, '0', 'F', 'UKSH Lübeck', 0, 2, '0', '0', '0', '2018-04-20 00:39:46', '2018-04-20 00:39:46'),
(41, '0', 'F', 'UKSH Lübeck', 0, 7, '0', '0', '0', '2018-04-20 00:42:38', '2018-04-20 00:42:38'),
(42, '0', 'M', 'UKSH Lübeck', 0, 2, '0', '0', '0', '2018-04-20 00:43:20', '2018-04-20 00:43:20'),
(43, '0', 'M', 'UKSH Lübeck', 0, 2, '0', '0', '0', '2018-04-20 00:46:34', '2018-04-20 00:46:34'),
(44, '0', 'F', 'UKSH Lübeck', 0, 2, '0', '0', '0', '2018-04-20 00:47:13', '2018-04-20 00:47:13'),
(45, '0', 'M', 'UKSH Lübeck', 0, 2, '0', '0', '0', '2018-04-20 00:48:47', '2018-04-20 00:48:47'),
(46, '0', 'F', 'UKSH Lübeck', 0, 2, '0', '0', '0', '2018-04-20 00:49:22', '2018-04-20 00:49:22'),
(47, '0', 'F', 'UKSH Lübeck', 0, 2, '0', '1', '0', '2018-04-20 00:49:57', '2018-07-02 02:12:19'),
(48, '0', 'F', 'UKSH Lübeck', 0, 7, '0', '0', '0', '2018-04-20 00:50:33', '2018-04-20 00:50:33'),
(49, '66', 'M', 'UKSH Kiel', 0, 3, '0', '0', '0', '2018-04-20 01:06:40', '2018-04-20 01:06:40'),
(50, '0', 'M', 'UKSH Kiel', 0, 2, '0', '1', '0', '2018-04-20 03:43:40', '2018-07-26 06:17:37'),
(51, '32', 'F', 'UKSH Kiel', 0, 3, '0', '0', '0', '2018-04-20 03:46:56', '2018-04-20 03:46:56'),
(52, '11', 'M', 'UKSH Kiel', 0, 3, '0', '1', '0', '2018-04-20 04:02:05', '2018-07-26 05:52:25'),
(53, '0', 'M', 'UKSH Lübeck', 0, 2, '0', '0', '0', '2018-04-20 04:08:14', '2018-04-20 04:08:14'),
(54, '0', 'M', 'UKSH Kiel', 0, 2, '0', '0', '0', '2018-04-20 04:11:20', '2018-04-20 04:11:20'),
(55, '55', 'M', 'UKSH Kiel', 0, 3, '0', '0', '0', '2018-04-20 20:34:22', '2018-04-20 20:34:22'),
(56, '0', 'M', 'UKSH Lübeck', 0, 7, '0', '0', '0', '2018-04-23 01:27:02', '2018-04-23 01:27:02'),
(57, '0', 'F', 'UKSH Kiel', 0, 7, '0', '1', '0', '2018-04-23 01:28:24', '2018-07-26 07:25:37'),
(58, '0', 'F', 'UKSH Lübeck', 0, 2, '0', '0', '0', '2018-04-23 01:56:29', '2018-04-23 01:56:29'),
(59, '0', 'M', 'UKSH Lübeck', 0, 3, '0', '0', '0', '2018-04-23 03:46:58', '2018-04-23 03:46:58'),
(61, '0', 'M', 'UKSH Kiel', 0, 3, '0', '0', '0', '2018-04-23 04:15:10', '2018-04-23 04:15:10'),
(62, '0', 'M', 'UKSH Lübeck', 0, 3, '0', '1', '0', '2018-04-23 04:17:58', '2018-07-02 02:13:48'),
(63, '0', 'M', 'UKSH Lübeck', 0, 2, '0', '0', '0', '2018-04-24 03:16:32', '2018-04-24 03:16:32'),
(64, '0', 'F', 'UKSH Lübeck', 0, 2, '0', '0', '0', '2018-04-24 03:19:01', '2018-04-24 03:19:01'),
(65, '0', 'M', 'UKSH Lübeck', 0, 2, '0', '0', '0', '2018-05-18 03:20:01', '2018-05-18 03:20:01'),
(66, '0', 'M', 'UKSH Kiel', 0, 6, '0', '0', '0', '2018-04-24 03:22:37', '2018-04-24 03:22:37'),
(67, '55', 'M', 'UKSH Kiel', 0, 7, '0', '1', '0', '2018-05-27 05:05:35', '2018-07-26 05:50:12'),
(68, '23', 'M', 'UKSH Kiel', 0, 7, '1', '1', '0', '2018-07-26 05:26:26', '2018-07-26 06:17:18');

-- --------------------------------------------------------

--
-- Table structure for table `symptom`
--

CREATE TABLE `symptom` (
  `symptom_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `symptom_detail` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `symptom`
--

INSERT INTO `symptom` (`symptom_id`, `patient_id`, `symptom_detail`, `created_at`, `updated_at`) VALUES
(1, 9, 'YToxNDp7czo1OiJzdGF0ZSI7czoxNToiU2VsYnN0dmVyc29yZ2VyIjtzOjg6Im9ic2VydmVkIjtzOjI6IkphIjtzOjg6InRpbWVfeWVzIjtzOjc6IjQ6MjggUE0iO3M6OToibGFzdF9maW5lIjtOO3M6NzoidGltZV9ubyI7TjtzOjg6ImFudGljb2FnIjtzOjI6IkphIjtzOjEzOiJhbnRpY29hZ19uYW1lIjtzOjY6ImRnYXNkZyI7czoxOToibWVkaWNhdGlvbl9kZXRlY3RlZCI7czoyOiJKYSI7czoxMToicmVsYXRpdmVfbm8iO3M6MjoiSmEiO3M6MTM6ImRvY3Rvcl9yZWNvcmQiO3M6MjoiSmEiO3M6MTE6ImhhZW1vcnJoYWdlIjtzOjI6IkphIjtzOjE3OiJibGVlZGluZ19kaXNvcmRlciI7czoyOiJKYSI7czoxMzoidGFyZ2V0X2NsaW5pYyI7czoxMjoiVUtTSCBMw7xiZWNrIjtzOjE2OiJ0aW1lX3RvX2hvc3BpdGFsIjtzOjI6IjMwIjt9', '2018-04-19 06:59:01', '2018-04-19 06:59:01'),
(2, 10, 'YToxMzp7czo1OiJzdGF0ZSI7czoyNToiVGVpbHdlaXNlIGhpbGZzYmVkw7xyZnRpZyI7czo4OiJvYnNlcnZlZCI7czo0OiJOZWluIjtzOjg6InRpbWVfeWVzIjtOO3M6NzoidGltZV9ubyI7czo5OiJVbmJla2FubnQiO3M6ODoiYW50aWNvYWciO3M6OToiVW5iZWthbm50IjtzOjEzOiJhbnRpY29hZ19uYW1lIjtzOjg6Ik1hcmN1bWFyIjtzOjE5OiJtZWRpY2F0aW9uX2RldGVjdGVkIjtzOjI6IkphIjtzOjExOiJyZWxhdGl2ZV9ubyI7czoyOiJKYSI7czoxMzoiZG9jdG9yX3JlY29yZCI7czoyOiJKYSI7czoxMToiaGFlbW9ycmhhZ2UiO3M6NDoiTmVpbiI7czoxNzoiYmxlZWRpbmdfZGlzb3JkZXIiO3M6NDoiTmVpbiI7czoxMzoidGFyZ2V0X2NsaW5pYyI7czoxMjoiVUtTSCBMw7xiZWNrIjtzOjE2OiJ0aW1lX3RvX2hvc3BpdGFsIjtzOjI6IjExIjt9', '2018-04-19 09:34:16', '2018-04-19 09:34:16'),
(3, 11, 'YToxMjp7czo1OiJzdGF0ZSI7czoxNToiU2VsYnN0dmVyc29yZ2VyIjtzOjg6InRpbWVfeWVzIjtOO3M6ODoiYW50aWNvYWciO3M6MjoiSmEiO3M6MTM6ImFudGljb2FnX25hbWUiO3M6NzoiTGl4aWFuYSI7czoxOToibWVkaWNhdGlvbl9kZXRlY3RlZCI7czoyOiJKYSI7czoxMToicmVsYXRpdmVfbm8iO3M6NDoiTmVpbiI7czoxMzoiZG9jdG9yX3JlY29yZCI7czo0OiJOZWluIjtzOjEzOiJpbXBhY3RfdHJhdW1hIjtzOjI6IkphIjtzOjExOiJoYWVtb3JyaGFnZSI7czo0OiJOZWluIjtzOjE3OiJibGVlZGluZ19kaXNvcmRlciI7czo0OiJOZWluIjtzOjEzOiJ0YXJnZXRfY2xpbmljIjtzOjk6IlVLU0ggS2llbCI7czoxNjoidGltZV90b19ob3NwaXRhbCI7czoyOiIyMCI7fQ==', '2018-04-20 01:16:04', '2018-04-20 01:16:04'),
(4, 13, 'YToxNDp7czo1OiJzdGF0ZSI7czoxNToiU2VsYnN0dmVyc29yZ2VyIjtzOjg6Im9ic2VydmVkIjtzOjQ6Ik5laW4iO3M6ODoidGltZV95ZXMiO047czo3OiJ0aW1lX25vIjtzOjk6IlVuYmVrYW5udCI7czo4OiJhbnRpY29hZyI7czo5OiJVbmJla2FubnQiO3M6MTM6ImFudGljb2FnX25hbWUiO3M6ODoiTWFyY3VtYXIiO3M6MTk6Im1lZGljYXRpb25fZGV0ZWN0ZWQiO3M6MjoiSmEiO3M6MTE6InJlbGF0aXZlX25vIjtzOjk6IlVuYmVrYW5udCI7czoxMzoiZG9jdG9yX3JlY29yZCI7czo0OiJOZWluIjtzOjEzOiJpbXBhY3RfdHJhdW1hIjtzOjQ6Ik5laW4iO3M6MTE6ImhhZW1vcnJoYWdlIjtzOjk6IlVuYmVrYW5udCI7czoxNzoiYmxlZWRpbmdfZGlzb3JkZXIiO3M6OToiVW5iZWthbm50IjtzOjEzOiJ0YXJnZXRfY2xpbmljIjtzOjEyOiJVS1NIIEzDvGJlY2siO3M6MTY6InRpbWVfdG9faG9zcGl0YWwiO3M6MjoiMTIiO30=', '2018-04-20 02:19:54', '2018-04-20 02:19:54'),
(5, 14, 'YToxMzp7czo1OiJzdGF0ZSI7czoxNToiU2VsYnN0dmVyc29yZ2VyIjtzOjg6InRpbWVfeWVzIjtOO3M6OToibGFzdF9maW5lIjtOO3M6ODoiYW50aWNvYWciO3M6NDoiTmVpbiI7czoxMzoiYW50aWNvYWdfbmFtZSI7czo4OiJNYXJjdW1hciI7czoxOToibWVkaWNhdGlvbl9kZXRlY3RlZCI7czoxOToiS2VpbmUgVm9ybWVkaWthdGlvbiI7czoxMToicmVsYXRpdmVfbm8iO3M6NDoiTmVpbiI7czoxMzoiZG9jdG9yX3JlY29yZCI7czo0OiJOZWluIjtzOjEzOiJpbXBhY3RfdHJhdW1hIjtzOjI6IkphIjtzOjExOiJoYWVtb3JyaGFnZSI7czo5OiJVbmJla2FubnQiO3M6MTc6ImJsZWVkaW5nX2Rpc29yZGVyIjtzOjI6IkphIjtzOjEzOiJ0YXJnZXRfY2xpbmljIjtzOjk6IlVLU0ggS2llbCI7czoxNjoidGltZV90b19ob3NwaXRhbCI7czoyOiIyMiI7fQ==', '2018-04-20 02:21:02', '2018-04-20 02:21:02'),
(6, 15, 'YToxNTp7czo1OiJzdGF0ZSI7czoxNToiU2VsYnN0dmVyc29yZ2VyIjtzOjg6Im9ic2VydmVkIjtzOjI6IkphIjtzOjg6InRpbWVfeWVzIjtOO3M6OToibGFzdF9maW5lIjtOO3M6NzoidGltZV9ubyI7TjtzOjg6ImFudGljb2FnIjtzOjQ6Ik5laW4iO3M6MTM6ImFudGljb2FnX25hbWUiO3M6ODoiTWFyY3VtYXIiO3M6MTk6Im1lZGljYXRpb25fZGV0ZWN0ZWQiO3M6MTk6IktlaW5lIFZvcm1lZGlrYXRpb24iO3M6MTE6InJlbGF0aXZlX25vIjtzOjQ6Ik5laW4iO3M6MTM6ImRvY3Rvcl9yZWNvcmQiO3M6MjoiSmEiO3M6MTM6ImltcGFjdF90cmF1bWEiO3M6NDoiTmVpbiI7czoxMToiaGFlbW9ycmhhZ2UiO3M6NDoiTmVpbiI7czoxNzoiYmxlZWRpbmdfZGlzb3JkZXIiO3M6MjoiSmEiO3M6MTM6InRhcmdldF9jbGluaWMiO3M6OToiVUtTSCBLaWVsIjtzOjE2OiJ0aW1lX3RvX2hvc3BpdGFsIjtzOjE6IjUiO30=', '2018-04-20 02:24:46', '2018-04-20 02:24:46'),
(7, 16, 'YToxNTp7czo1OiJzdGF0ZSI7czoxNToiU2VsYnN0dmVyc29yZ2VyIjtzOjg6Im9ic2VydmVkIjtzOjQ6Ik5laW4iO3M6ODoidGltZV95ZXMiO047czo5OiJsYXN0X2ZpbmUiO3M6NzoiNzoyMCBBTSI7czo3OiJ0aW1lX25vIjtzOjI6Im9uIjtzOjg6ImFudGljb2FnIjtzOjI6IkphIjtzOjEzOiJhbnRpY29hZ19uYW1lIjtzOjc6IkJkaG5kamQiO3M6MTk6Im1lZGljYXRpb25fZGV0ZWN0ZWQiO3M6MjoiSmEiO3M6MTE6InJlbGF0aXZlX25vIjtzOjQ6Ik5laW4iO3M6MTM6ImRvY3Rvcl9yZWNvcmQiO3M6MjoiSmEiO3M6MTM6ImltcGFjdF90cmF1bWEiO3M6MjoiSmEiO3M6MTE6ImhhZW1vcnJoYWdlIjtzOjQ6Ik5laW4iO3M6MTc6ImJsZWVkaW5nX2Rpc29yZGVyIjtzOjQ6Ik5laW4iO3M6MTM6InRhcmdldF9jbGluaWMiO3M6OToiVUtTSCBLaWVsIjtzOjE2OiJ0aW1lX3RvX2hvc3BpdGFsIjtzOjI6IjYwIjt9', '2018-04-20 02:26:27', '2018-04-20 02:26:27'),
(8, 17, 'YToxNDp7czo1OiJzdGF0ZSI7czo5OiJVbmJla2FubnQiO3M6ODoib2JzZXJ2ZWQiO3M6MjoiSmEiO3M6OToibGFzdF9maW5lIjtOO3M6NzoidGltZV9ubyI7TjtzOjg6ImFudGljb2FnIjtzOjI6IkphIjtzOjEzOiJhbnRpY29hZ19uYW1lIjtzOjU6IktramhmIjtzOjE5OiJtZWRpY2F0aW9uX2RldGVjdGVkIjtzOjI6IkphIjtzOjExOiJyZWxhdGl2ZV9ubyI7czo5OiJVbmJla2FubnQiO3M6MTM6ImRvY3Rvcl9yZWNvcmQiO3M6NDoiTmVpbiI7czoxMzoiaW1wYWN0X3RyYXVtYSI7czo5OiJVbmJla2FubnQiO3M6MTE6ImhhZW1vcnJoYWdlIjtzOjk6IlVuYmVrYW5udCI7czoxNzoiYmxlZWRpbmdfZGlzb3JkZXIiO3M6OToiVW5iZWthbm50IjtzOjEzOiJ0YXJnZXRfY2xpbmljIjtzOjk6IlVLU0ggS2llbCI7czoxNjoidGltZV90b19ob3NwaXRhbCI7czoyOiIyMyI7fQ==', '2018-04-20 02:26:28', '2018-04-20 02:26:28'),
(9, 26, 'YToxNTp7czo1OiJzdGF0ZSI7czoyNToiVGVpbHdlaXNlIGhpbGZzYmVkw7xyZnRpZyI7czo4OiJvYnNlcnZlZCI7czo0OiJOZWluIjtzOjg6InRpbWVfeWVzIjtOO3M6OToibGFzdF9maW5lIjtOO3M6NzoidGltZV9ubyI7czo5OiJVbmJla2FubnQiO3M6ODoiYW50aWNvYWciO3M6OToiVW5iZWthbm50IjtzOjEzOiJhbnRpY29hZ19uYW1lIjtzOjg6Ik1hcmN1bWFyIjtzOjE5OiJtZWRpY2F0aW9uX2RldGVjdGVkIjtzOjE5OiJLZWluZSBWb3JtZWRpa2F0aW9uIjtzOjExOiJyZWxhdGl2ZV9ubyI7czo5OiJVbmJla2FubnQiO3M6MTM6ImRvY3Rvcl9yZWNvcmQiO3M6MjoiSmEiO3M6MTM6ImltcGFjdF90cmF1bWEiO3M6NDoiTmVpbiI7czoxMToiaGFlbW9ycmhhZ2UiO3M6NDoiTmVpbiI7czoxNzoiYmxlZWRpbmdfZGlzb3JkZXIiO3M6NDoiTmVpbiI7czoxMzoidGFyZ2V0X2NsaW5pYyI7czoxMjoiVUtTSCBMw7xiZWNrIjtzOjE2OiJ0aW1lX3RvX2hvc3BpdGFsIjtzOjE6IjgiO30=', '2018-04-20 02:29:14', '2018-04-20 02:29:14'),
(10, 30, 'YToxNTp7czo1OiJzdGF0ZSI7czoyNToiVGVpbHdlaXNlIGhpbGZzYmVkw7xyZnRpZyI7czo4OiJvYnNlcnZlZCI7czo0OiJOZWluIjtzOjg6InRpbWVfeWVzIjtOO3M6OToibGFzdF9maW5lIjtOO3M6NzoidGltZV9ubyI7czo5OiJVbmJla2FubnQiO3M6ODoiYW50aWNvYWciO3M6OToiVW5iZWthbm50IjtzOjEzOiJhbnRpY29hZ19uYW1lIjtzOjg6Ik1hcmN1bWFyIjtzOjE5OiJtZWRpY2F0aW9uX2RldGVjdGVkIjtzOjI6IkphIjtzOjExOiJyZWxhdGl2ZV9ubyI7czo5OiJVbmJla2FubnQiO3M6MTM6ImRvY3Rvcl9yZWNvcmQiO3M6OToiVW5iZWthbm50IjtzOjEzOiJpbXBhY3RfdHJhdW1hIjtzOjk6IlVuYmVrYW5udCI7czoxMToiaGFlbW9ycmhhZ2UiO3M6NDoiTmVpbiI7czoxNzoiYmxlZWRpbmdfZGlzb3JkZXIiO3M6NDoiTmVpbiI7czoxMzoidGFyZ2V0X2NsaW5pYyI7czoxMjoiVUtTSCBMw7xiZWNrIjtzOjE2OiJ0aW1lX3RvX2hvc3BpdGFsIjtzOjE6IjciO30=', '2018-04-20 02:30:55', '2018-04-20 02:30:55'),
(11, 31, 'YToxNTp7czo1OiJzdGF0ZSI7czoxNToiU2VsYnN0dmVyc29yZ2VyIjtzOjg6Im9ic2VydmVkIjtzOjQ6Ik5laW4iO3M6ODoidGltZV95ZXMiO047czo5OiJsYXN0X2ZpbmUiO047czo3OiJ0aW1lX25vIjtzOjk6IlVuYmVrYW5udCI7czo4OiJhbnRpY29hZyI7czo5OiJVbmJla2FubnQiO3M6MTM6ImFudGljb2FnX25hbWUiO3M6ODoiTWFyY3VtYXIiO3M6MTk6Im1lZGljYXRpb25fZGV0ZWN0ZWQiO3M6OToiVW5iZWthbm50IjtzOjExOiJyZWxhdGl2ZV9ubyI7czo5OiJVbmJla2FubnQiO3M6MTM6ImRvY3Rvcl9yZWNvcmQiO3M6OToiVW5iZWthbm50IjtzOjEzOiJpbXBhY3RfdHJhdW1hIjtzOjk6IlVuYmVrYW5udCI7czoxMToiaGFlbW9ycmhhZ2UiO3M6OToiVW5iZWthbm50IjtzOjE3OiJibGVlZGluZ19kaXNvcmRlciI7czo5OiJVbmJla2FubnQiO3M6MTM6InRhcmdldF9jbGluaWMiO3M6MTI6IlVLU0ggTMO8YmVjayI7czoxNjoidGltZV90b19ob3NwaXRhbCI7czoxOiI1Ijt9', '2018-04-20 02:31:40', '2018-04-20 02:31:40'),
(12, 35, 'YToxNTp7czo1OiJzdGF0ZSI7czoxNToiU2VsYnN0dmVyc29yZ2VyIjtzOjg6Im9ic2VydmVkIjtzOjI6IkphIjtzOjg6InRpbWVfeWVzIjtOO3M6OToibGFzdF9maW5lIjtOO3M6NzoidGltZV9ubyI7TjtzOjg6ImFudGljb2FnIjtzOjk6IlVuYmVrYW5udCI7czoxMzoiYW50aWNvYWdfbmFtZSI7czo4OiJNYXJjdW1hciI7czoxOToibWVkaWNhdGlvbl9kZXRlY3RlZCI7czoyOiJKYSI7czoxMToicmVsYXRpdmVfbm8iO3M6OToiVW5iZWthbm50IjtzOjEzOiJkb2N0b3JfcmVjb3JkIjtzOjQ6Ik5laW4iO3M6MTM6ImltcGFjdF90cmF1bWEiO3M6NDoiTmVpbiI7czoxMToiaGFlbW9ycmhhZ2UiO3M6NDoiTmVpbiI7czoxNzoiYmxlZWRpbmdfZGlzb3JkZXIiO3M6NDoiTmVpbiI7czoxMzoidGFyZ2V0X2NsaW5pYyI7czoxMjoiVUtTSCBMw7xiZWNrIjtzOjE2OiJ0aW1lX3RvX2hvc3BpdGFsIjtzOjE6IjYiO30=', '2018-04-20 02:32:44', '2018-04-20 02:32:44'),
(13, 36, 'YToxMzp7czo1OiJzdGF0ZSI7czoyNToiVGVpbHdlaXNlIGhpbGZzYmVkw7xyZnRpZyI7czo4OiJ0aW1lX3llcyI7TjtzOjk6Imxhc3RfZmluZSI7TjtzOjg6ImFudGljb2FnIjtzOjk6IlVuYmVrYW5udCI7czoxMzoiYW50aWNvYWdfbmFtZSI7czo4OiJNYXJjdW1hciI7czoxOToibWVkaWNhdGlvbl9kZXRlY3RlZCI7czoxOToiS2VpbmUgVm9ybWVkaWthdGlvbiI7czoxMToicmVsYXRpdmVfbm8iO3M6OToiVW5iZWthbm50IjtzOjEzOiJkb2N0b3JfcmVjb3JkIjtzOjQ6Ik5laW4iO3M6MTM6ImltcGFjdF90cmF1bWEiO3M6NDoiTmVpbiI7czoxMToiaGFlbW9ycmhhZ2UiO3M6NDoiTmVpbiI7czoxNzoiYmxlZWRpbmdfZGlzb3JkZXIiO3M6NDoiTmVpbiI7czoxMzoidGFyZ2V0X2NsaW5pYyI7czoxMjoiVUtTSCBMw7xiZWNrIjtzOjE2OiJ0aW1lX3RvX2hvc3BpdGFsIjtzOjE6IjQiO30=', '2018-04-20 02:33:33', '2018-04-20 02:33:33'),
(14, 39, 'YToxNTp7czo1OiJzdGF0ZSI7czoxNToiU2VsYnN0dmVyc29yZ2VyIjtzOjg6Im9ic2VydmVkIjtzOjQ6Ik5laW4iO3M6ODoidGltZV95ZXMiO047czo5OiJsYXN0X2ZpbmUiO047czo3OiJ0aW1lX25vIjtzOjk6IlVuYmVrYW5udCI7czo4OiJhbnRpY29hZyI7czo5OiJVbmJla2FubnQiO3M6MTM6ImFudGljb2FnX25hbWUiO3M6ODoiTWFyY3VtYXIiO3M6MTk6Im1lZGljYXRpb25fZGV0ZWN0ZWQiO3M6MjoiSmEiO3M6MTE6InJlbGF0aXZlX25vIjtzOjQ6Ik5laW4iO3M6MTM6ImRvY3Rvcl9yZWNvcmQiO3M6MjoiSmEiO3M6MTM6ImltcGFjdF90cmF1bWEiO3M6OToiVW5iZWthbm50IjtzOjExOiJoYWVtb3JyaGFnZSI7czo5OiJVbmJla2FubnQiO3M6MTc6ImJsZWVkaW5nX2Rpc29yZGVyIjtzOjk6IlVuYmVrYW5udCI7czoxMzoidGFyZ2V0X2NsaW5pYyI7czoxMjoiVUtTSCBMw7xiZWNrIjtzOjE2OiJ0aW1lX3RvX2hvc3BpdGFsIjtzOjE6IjYiO30=', '2018-04-20 02:39:07', '2018-04-20 02:39:07'),
(15, 40, 'YToxNTp7czo1OiJzdGF0ZSI7czoxNToiU2VsYnN0dmVyc29yZ2VyIjtzOjg6Im9ic2VydmVkIjtzOjQ6Ik5laW4iO3M6ODoidGltZV95ZXMiO047czo5OiJsYXN0X2ZpbmUiO047czo3OiJ0aW1lX25vIjtzOjk6IlVuYmVrYW5udCI7czo4OiJhbnRpY29hZyI7czo5OiJVbmJla2FubnQiO3M6MTM6ImFudGljb2FnX25hbWUiO3M6ODoiTWFyY3VtYXIiO3M6MTk6Im1lZGljYXRpb25fZGV0ZWN0ZWQiO3M6MTk6IktlaW5lIFZvcm1lZGlrYXRpb24iO3M6MTE6InJlbGF0aXZlX25vIjtzOjQ6Ik5laW4iO3M6MTM6ImRvY3Rvcl9yZWNvcmQiO3M6MjoiSmEiO3M6MTM6ImltcGFjdF90cmF1bWEiO3M6OToiVW5iZWthbm50IjtzOjExOiJoYWVtb3JyaGFnZSI7czo5OiJVbmJla2FubnQiO3M6MTc6ImJsZWVkaW5nX2Rpc29yZGVyIjtzOjQ6Ik5laW4iO3M6MTM6InRhcmdldF9jbGluaWMiO3M6MTI6IlVLU0ggTMO8YmVjayI7czoxNjoidGltZV90b19ob3NwaXRhbCI7Tjt9', '2018-04-20 02:39:46', '2018-04-20 02:39:46'),
(16, 41, 'YToxNDp7czo1OiJzdGF0ZSI7czoyNToiVGVpbHdlaXNlIGhpbGZzYmVkw7xyZnRpZyI7czo4OiJvYnNlcnZlZCI7czo0OiJOZWluIjtzOjg6InRpbWVfeWVzIjtOO3M6NzoidGltZV9ubyI7czo5OiJVbmJla2FubnQiO3M6ODoiYW50aWNvYWciO3M6OToiVW5iZWthbm50IjtzOjEzOiJhbnRpY29hZ19uYW1lIjtzOjg6Ik1hcmN1bWFyIjtzOjE5OiJtZWRpY2F0aW9uX2RldGVjdGVkIjtzOjE5OiJLZWluZSBWb3JtZWRpa2F0aW9uIjtzOjExOiJyZWxhdGl2ZV9ubyI7czo5OiJVbmJla2FubnQiO3M6MTM6ImRvY3Rvcl9yZWNvcmQiO3M6OToiVW5iZWthbm50IjtzOjEzOiJpbXBhY3RfdHJhdW1hIjtzOjk6IlVuYmVrYW5udCI7czoxMToiaGFlbW9ycmhhZ2UiO3M6OToiVW5iZWthbm50IjtzOjE3OiJibGVlZGluZ19kaXNvcmRlciI7czo5OiJVbmJla2FubnQiO3M6MTM6InRhcmdldF9jbGluaWMiO3M6MTI6IlVLU0ggTMO8YmVjayI7czoxNjoidGltZV90b19ob3NwaXRhbCI7czoyOiIyMyI7fQ==', '2018-04-20 02:42:38', '2018-04-20 02:42:38'),
(17, 42, 'YToxNTp7czo1OiJzdGF0ZSI7czoxNToiU2VsYnN0dmVyc29yZ2VyIjtzOjg6Im9ic2VydmVkIjtzOjQ6Ik5laW4iO3M6ODoidGltZV95ZXMiO047czo5OiJsYXN0X2ZpbmUiO047czo3OiJ0aW1lX25vIjtzOjk6IlVuYmVrYW5udCI7czo4OiJhbnRpY29hZyI7czo5OiJVbmJla2FubnQiO3M6MTM6ImFudGljb2FnX25hbWUiO3M6ODoiTWFyY3VtYXIiO3M6MTk6Im1lZGljYXRpb25fZGV0ZWN0ZWQiO3M6MjoiSmEiO3M6MTE6InJlbGF0aXZlX25vIjtzOjk6IlVuYmVrYW5udCI7czoxMzoiZG9jdG9yX3JlY29yZCI7czo5OiJVbmJla2FubnQiO3M6MTM6ImltcGFjdF90cmF1bWEiO3M6OToiVW5iZWthbm50IjtzOjExOiJoYWVtb3JyaGFnZSI7czo0OiJOZWluIjtzOjE3OiJibGVlZGluZ19kaXNvcmRlciI7czo5OiJVbmJla2FubnQiO3M6MTM6InRhcmdldF9jbGluaWMiO3M6MTI6IlVLU0ggTMO8YmVjayI7czoxNjoidGltZV90b19ob3NwaXRhbCI7czoxOiI1Ijt9', '2018-04-20 02:43:20', '2018-04-20 02:43:20'),
(18, 43, 'YToxNTp7czo1OiJzdGF0ZSI7czoyNToiVGVpbHdlaXNlIGhpbGZzYmVkw7xyZnRpZyI7czo4OiJvYnNlcnZlZCI7czo0OiJOZWluIjtzOjg6InRpbWVfeWVzIjtOO3M6OToibGFzdF9maW5lIjtOO3M6NzoidGltZV9ubyI7czo5OiJVbmJla2FubnQiO3M6ODoiYW50aWNvYWciO3M6OToiVW5iZWthbm50IjtzOjEzOiJhbnRpY29hZ19uYW1lIjtzOjg6Ik1hcmN1bWFyIjtzOjE5OiJtZWRpY2F0aW9uX2RldGVjdGVkIjtzOjE5OiJLZWluZSBWb3JtZWRpa2F0aW9uIjtzOjExOiJyZWxhdGl2ZV9ubyI7czo0OiJOZWluIjtzOjEzOiJkb2N0b3JfcmVjb3JkIjtzOjQ6Ik5laW4iO3M6MTM6ImltcGFjdF90cmF1bWEiO3M6MjoiSmEiO3M6MTE6ImhhZW1vcnJoYWdlIjtzOjQ6Ik5laW4iO3M6MTc6ImJsZWVkaW5nX2Rpc29yZGVyIjtzOjI6IkphIjtzOjEzOiJ0YXJnZXRfY2xpbmljIjtzOjEyOiJVS1NIIEzDvGJlY2siO3M6MTY6InRpbWVfdG9faG9zcGl0YWwiO3M6MToiNiI7fQ==', '2018-04-20 02:46:34', '2018-04-20 02:46:34'),
(19, 45, 'YToxMzp7czo1OiJzdGF0ZSI7czoyNToiVGVpbHdlaXNlIGhpbGZzYmVkw7xyZnRpZyI7czo4OiJ0aW1lX3llcyI7TjtzOjk6Imxhc3RfZmluZSI7TjtzOjg6ImFudGljb2FnIjtzOjk6IlVuYmVrYW5udCI7czoxMzoiYW50aWNvYWdfbmFtZSI7czo4OiJNYXJjdW1hciI7czoxOToibWVkaWNhdGlvbl9kZXRlY3RlZCI7czoyOiJKYSI7czoxMToicmVsYXRpdmVfbm8iO3M6OToiVW5iZWthbm50IjtzOjEzOiJkb2N0b3JfcmVjb3JkIjtzOjk6IlVuYmVrYW5udCI7czoxMzoiaW1wYWN0X3RyYXVtYSI7czo5OiJVbmJla2FubnQiO3M6MTE6ImhhZW1vcnJoYWdlIjtzOjk6IlVuYmVrYW5udCI7czoxNzoiYmxlZWRpbmdfZGlzb3JkZXIiO3M6OToiVW5iZWthbm50IjtzOjEzOiJ0YXJnZXRfY2xpbmljIjtzOjEyOiJVS1NIIEzDvGJlY2siO3M6MTY6InRpbWVfdG9faG9zcGl0YWwiO3M6MToiNyI7fQ==', '2018-04-20 02:48:47', '2018-04-20 02:48:47'),
(20, 46, 'YToxNDp7czo1OiJzdGF0ZSI7czoyNToiVGVpbHdlaXNlIGhpbGZzYmVkw7xyZnRpZyI7czo4OiJvYnNlcnZlZCI7czo0OiJOZWluIjtzOjg6InRpbWVfeWVzIjtOO3M6OToibGFzdF9maW5lIjtOO3M6NzoidGltZV9ubyI7czo5OiJVbmJla2FubnQiO3M6ODoiYW50aWNvYWciO3M6OToiVW5iZWthbm50IjtzOjEzOiJhbnRpY29hZ19uYW1lIjtzOjg6Ik1hcmN1bWFyIjtzOjE5OiJtZWRpY2F0aW9uX2RldGVjdGVkIjtzOjE5OiJLZWluZSBWb3JtZWRpa2F0aW9uIjtzOjExOiJyZWxhdGl2ZV9ubyI7czo5OiJVbmJla2FubnQiO3M6MTM6ImRvY3Rvcl9yZWNvcmQiO3M6OToiVW5iZWthbm50IjtzOjExOiJoYWVtb3JyaGFnZSI7czoyOiJKYSI7czoxNzoiYmxlZWRpbmdfZGlzb3JkZXIiO3M6MjoiSmEiO3M6MTM6InRhcmdldF9jbGluaWMiO3M6MTI6IlVLU0ggTMO8YmVjayI7czoxNjoidGltZV90b19ob3NwaXRhbCI7Tjt9', '2018-04-20 02:49:22', '2018-04-20 02:49:22'),
(21, 47, 'YToxNTp7czo1OiJzdGF0ZSI7czoxNToiU2VsYnN0dmVyc29yZ2VyIjtzOjg6Im9ic2VydmVkIjtzOjQ6Ik5laW4iO3M6ODoidGltZV95ZXMiO047czo5OiJsYXN0X2ZpbmUiO047czo3OiJ0aW1lX25vIjtzOjk6IlVuYmVrYW5udCI7czo4OiJhbnRpY29hZyI7czo5OiJVbmJla2FubnQiO3M6MTM6ImFudGljb2FnX25hbWUiO3M6ODoiTWFyY3VtYXIiO3M6MTk6Im1lZGljYXRpb25fZGV0ZWN0ZWQiO3M6MjoiSmEiO3M6MTE6InJlbGF0aXZlX25vIjtzOjk6IlVuYmVrYW5udCI7czoxMzoiZG9jdG9yX3JlY29yZCI7czo5OiJVbmJla2FubnQiO3M6MTM6ImltcGFjdF90cmF1bWEiO3M6OToiVW5iZWthbm50IjtzOjExOiJoYWVtb3JyaGFnZSI7czo5OiJVbmJla2FubnQiO3M6MTc6ImJsZWVkaW5nX2Rpc29yZGVyIjtzOjI6IkphIjtzOjEzOiJ0YXJnZXRfY2xpbmljIjtzOjEyOiJVS1NIIEzDvGJlY2siO3M6MTY6InRpbWVfdG9faG9zcGl0YWwiO3M6MToiNyI7fQ==', '2018-04-20 02:49:57', '2018-04-20 02:49:57'),
(22, 48, 'YToxNDp7czo1OiJzdGF0ZSI7czoyNToiVGVpbHdlaXNlIGhpbGZzYmVkw7xyZnRpZyI7czo4OiJvYnNlcnZlZCI7czo0OiJOZWluIjtzOjg6InRpbWVfeWVzIjtOO3M6NzoidGltZV9ubyI7czo5OiJVbmJla2FubnQiO3M6ODoiYW50aWNvYWciO3M6OToiVW5iZWthbm50IjtzOjEzOiJhbnRpY29hZ19uYW1lIjtzOjg6Ik1hcmN1bWFyIjtzOjE5OiJtZWRpY2F0aW9uX2RldGVjdGVkIjtzOjE5OiJLZWluZSBWb3JtZWRpa2F0aW9uIjtzOjExOiJyZWxhdGl2ZV9ubyI7czo5OiJVbmJla2FubnQiO3M6MTM6ImRvY3Rvcl9yZWNvcmQiO3M6OToiVW5iZWthbm50IjtzOjEzOiJpbXBhY3RfdHJhdW1hIjtzOjk6IlVuYmVrYW5udCI7czoxMToiaGFlbW9ycmhhZ2UiO3M6OToiVW5iZWthbm50IjtzOjE3OiJibGVlZGluZ19kaXNvcmRlciI7czo5OiJVbmJla2FubnQiO3M6MTM6InRhcmdldF9jbGluaWMiO3M6MTI6IlVLU0ggTMO8YmVjayI7czoxNjoidGltZV90b19ob3NwaXRhbCI7czoyOiIyMyI7fQ==', '2018-04-20 02:50:33', '2018-04-20 02:50:33'),
(23, 49, 'YToxMzp7czo1OiJzdGF0ZSI7czo5OiJVbmJla2FubnQiO3M6ODoidGltZV95ZXMiO047czo5OiJsYXN0X2ZpbmUiO047czo4OiJhbnRpY29hZyI7czoyOiJKYSI7czoxMzoiYW50aWNvYWdfbmFtZSI7czo2OiJCbGFibGEiO3M6MTk6Im1lZGljYXRpb25fZGV0ZWN0ZWQiO3M6MjoiSmEiO3M6MTE6InJlbGF0aXZlX25vIjtzOjk6IlVuYmVrYW5udCI7czoxMzoiZG9jdG9yX3JlY29yZCI7czo5OiJVbmJla2FubnQiO3M6MTM6ImltcGFjdF90cmF1bWEiO3M6MjoiSmEiO3M6MTE6ImhhZW1vcnJoYWdlIjtzOjI6IkphIjtzOjE3OiJibGVlZGluZ19kaXNvcmRlciI7czo5OiJVbmJla2FubnQiO3M6MTM6InRhcmdldF9jbGluaWMiO3M6OToiVUtTSCBLaWVsIjtzOjE2OiJ0aW1lX3RvX2hvc3BpdGFsIjtzOjE6IjEiO30=', '2018-04-20 03:06:40', '2018-04-20 03:06:40'),
(24, 52, 'YToxNTp7czo1OiJzdGF0ZSI7czoxNToiU2VsYnN0dmVyc29yZ2VyIjtzOjg6Im9ic2VydmVkIjtzOjQ6Ik5laW4iO3M6ODoidGltZV95ZXMiO047czo5OiJsYXN0X2ZpbmUiO3M6NzoiMzozMSBQTSI7czo3OiJ0aW1lX25vIjtzOjI6Im9uIjtzOjg6ImFudGljb2FnIjtzOjI6IkphIjtzOjEzOiJhbnRpY29hZ19uYW1lIjtzOjc6IkxpeGlhbmEiO3M6MTk6Im1lZGljYXRpb25fZGV0ZWN0ZWQiO3M6MjoiSmEiO3M6MTE6InJlbGF0aXZlX25vIjtzOjI6IkphIjtzOjEzOiJkb2N0b3JfcmVjb3JkIjtzOjI6IkphIjtzOjEzOiJpbXBhY3RfdHJhdW1hIjtzOjI6IkphIjtzOjExOiJoYWVtb3JyaGFnZSI7czo5OiJVbmJla2FubnQiO3M6MTc6ImJsZWVkaW5nX2Rpc29yZGVyIjtzOjk6IlVuYmVrYW5udCI7czoxMzoidGFyZ2V0X2NsaW5pYyI7czo5OiJVS1NIIEtpZWwiO3M6MTY6InRpbWVfdG9faG9zcGl0YWwiO3M6MjoiMzIiO30=', '2018-04-20 06:02:05', '2018-04-20 06:02:05'),
(25, 53, 'YToxMjp7czo1OiJzdGF0ZSI7czoyNToiVGVpbHdlaXNlIGhpbGZzYmVkw7xyZnRpZyI7czo4OiJ0aW1lX3llcyI7TjtzOjk6Imxhc3RfZmluZSI7TjtzOjEzOiJhbnRpY29hZ19uYW1lIjtzOjU6IkdzbmpkIjtzOjE5OiJtZWRpY2F0aW9uX2RldGVjdGVkIjtzOjE5OiJLZWluZSBWb3JtZWRpa2F0aW9uIjtzOjExOiJyZWxhdGl2ZV9ubyI7czo0OiJOZWluIjtzOjEzOiJkb2N0b3JfcmVjb3JkIjtzOjQ6Ik5laW4iO3M6MTM6ImltcGFjdF90cmF1bWEiO3M6MjoiSmEiO3M6MTE6ImhhZW1vcnJoYWdlIjtzOjQ6Ik5laW4iO3M6MTc6ImJsZWVkaW5nX2Rpc29yZGVyIjtzOjI6IkphIjtzOjEzOiJ0YXJnZXRfY2xpbmljIjtzOjEyOiJVS1NIIEzDvGJlY2siO3M6MTY6InRpbWVfdG9faG9zcGl0YWwiO3M6MToiNSI7fQ==', '2018-04-20 06:08:14', '2018-04-20 06:08:14'),
(26, 54, 'YToxNTp7czo1OiJzdGF0ZSI7czoyNToiVGVpbHdlaXNlIGhpbGZzYmVkw7xyZnRpZyI7czo4OiJvYnNlcnZlZCI7czoyOiJKYSI7czo4OiJ0aW1lX3llcyI7TjtzOjk6Imxhc3RfZmluZSI7TjtzOjc6InRpbWVfbm8iO047czo4OiJhbnRpY29hZyI7czoyOiJKYSI7czoxMzoiYW50aWNvYWdfbmFtZSI7czo3OiJFbGlxdWlzIjtzOjE5OiJtZWRpY2F0aW9uX2RldGVjdGVkIjtzOjI6IkphIjtzOjExOiJyZWxhdGl2ZV9ubyI7czo0OiJOZWluIjtzOjEzOiJkb2N0b3JfcmVjb3JkIjtzOjQ6Ik5laW4iO3M6MTM6ImltcGFjdF90cmF1bWEiO3M6MjoiSmEiO3M6MTE6ImhhZW1vcnJoYWdlIjtzOjQ6Ik5laW4iO3M6MTc6ImJsZWVkaW5nX2Rpc29yZGVyIjtzOjQ6Ik5laW4iO3M6MTM6InRhcmdldF9jbGluaWMiO3M6OToiVUtTSCBLaWVsIjtzOjE2OiJ0aW1lX3RvX2hvc3BpdGFsIjtzOjE6IjUiO30=', '2018-04-20 06:11:20', '2018-04-20 06:11:20'),
(27, 55, 'YToxNDp7czo1OiJzdGF0ZSI7czoyNToiVGVpbHdlaXNlIGhpbGZzYmVkw7xyZnRpZyI7czo4OiJvYnNlcnZlZCI7czo0OiJOZWluIjtzOjg6InRpbWVfeWVzIjtOO3M6OToibGFzdF9maW5lIjtzOjc6Ijg6MDMgQU0iO3M6NzoidGltZV9ubyI7czoyOiJvbiI7czo4OiJhbnRpY29hZyI7czoyOiJKYSI7czoxMzoiYW50aWNvYWdfbmFtZSI7czo3OiJFbGlxdWlzIjtzOjE5OiJtZWRpY2F0aW9uX2RldGVjdGVkIjtzOjI6IkphIjtzOjExOiJyZWxhdGl2ZV9ubyI7czo5OiJVbmJla2FubnQiO3M6MTM6ImRvY3Rvcl9yZWNvcmQiO3M6NDoiTmVpbiI7czoxMToiaGFlbW9ycmhhZ2UiO3M6MjoiSmEiO3M6MTc6ImJsZWVkaW5nX2Rpc29yZGVyIjtzOjk6IlVuYmVrYW5udCI7czoxMzoidGFyZ2V0X2NsaW5pYyI7czo5OiJVS1NIIEtpZWwiO3M6MTY6InRpbWVfdG9faG9zcGl0YWwiO3M6MToiMSI7fQ==', '2018-04-20 22:34:22', '2018-04-20 22:34:22'),
(28, 56, 'YToxNDp7czo1OiJzdGF0ZSI7czoxNToiU2VsYnN0dmVyc29yZ2VyIjtzOjg6Im9ic2VydmVkIjtzOjI6IkphIjtzOjk6Imxhc3RfZmluZSI7TjtzOjc6InRpbWVfbm8iO047czo4OiJhbnRpY29hZyI7czo5OiJVbmJla2FubnQiO3M6MTM6ImFudGljb2FnX25hbWUiO3M6ODoiTWFyY3VtYXIiO3M6MTk6Im1lZGljYXRpb25fZGV0ZWN0ZWQiO3M6MTk6IktlaW5lIFZvcm1lZGlrYXRpb24iO3M6MTE6InJlbGF0aXZlX25vIjtzOjk6IlVuYmVrYW5udCI7czoxMzoiZG9jdG9yX3JlY29yZCI7czo5OiJVbmJla2FubnQiO3M6MTM6ImltcGFjdF90cmF1bWEiO3M6OToiVW5iZWthbm50IjtzOjExOiJoYWVtb3JyaGFnZSI7czo5OiJVbmJla2FubnQiO3M6MTc6ImJsZWVkaW5nX2Rpc29yZGVyIjtzOjk6IlVuYmVrYW5udCI7czoxMzoidGFyZ2V0X2NsaW5pYyI7czoxMjoiVUtTSCBMw7xiZWNrIjtzOjE2OiJ0aW1lX3RvX2hvc3BpdGFsIjtzOjI6IjIzIjt9', '2018-04-23 03:27:02', '2018-04-23 03:27:02'),
(29, 57, 'YToxNDp7czo1OiJzdGF0ZSI7czoyNToiVGVpbHdlaXNlIGhpbGZzYmVkw7xyZnRpZyI7czo4OiJvYnNlcnZlZCI7czo0OiJOZWluIjtzOjg6InRpbWVfeWVzIjtOO3M6NzoidGltZV9ubyI7czo5OiJVbmJla2FubnQiO3M6ODoiYW50aWNvYWciO3M6OToiVW5iZWthbm50IjtzOjEzOiJhbnRpY29hZ19uYW1lIjtzOjg6Ik1hcmN1bWFyIjtzOjE5OiJtZWRpY2F0aW9uX2RldGVjdGVkIjtzOjE5OiJLZWluZSBWb3JtZWRpa2F0aW9uIjtzOjExOiJyZWxhdGl2ZV9ubyI7czo5OiJVbmJla2FubnQiO3M6MTM6ImRvY3Rvcl9yZWNvcmQiO3M6OToiVW5iZWthbm50IjtzOjEzOiJpbXBhY3RfdHJhdW1hIjtzOjk6IlVuYmVrYW5udCI7czoxMToiaGFlbW9ycmhhZ2UiO3M6OToiVW5iZWthbm50IjtzOjE3OiJibGVlZGluZ19kaXNvcmRlciI7czo5OiJVbmJla2FubnQiO3M6MTM6InRhcmdldF9jbGluaWMiO3M6OToiVUtTSCBLaWVsIjtzOjE2OiJ0aW1lX3RvX2hvc3BpdGFsIjtzOjI6IjI0Ijt9', '2018-04-23 03:28:24', '2018-04-23 03:28:24'),
(30, 58, 'YToxMjp7czo1OiJzdGF0ZSI7czoyNToiVGVpbHdlaXNlIGhpbGZzYmVkw7xyZnRpZyI7czo4OiJ0aW1lX3llcyI7TjtzOjk6Imxhc3RfZmluZSI7TjtzOjg6ImFudGljb2FnIjtzOjQ6Ik5laW4iO3M6MTM6ImFudGljb2FnX25hbWUiO3M6ODoiTWFyY3VtYXIiO3M6MTk6Im1lZGljYXRpb25fZGV0ZWN0ZWQiO3M6OToiVW5iZWthbm50IjtzOjExOiJyZWxhdGl2ZV9ubyI7czo5OiJVbmJla2FubnQiO3M6MTM6ImRvY3Rvcl9yZWNvcmQiO3M6OToiVW5iZWthbm50IjtzOjExOiJoYWVtb3JyaGFnZSI7czo0OiJOZWluIjtzOjE3OiJibGVlZGluZ19kaXNvcmRlciI7czo0OiJOZWluIjtzOjEzOiJ0YXJnZXRfY2xpbmljIjtzOjEyOiJVS1NIIEzDvGJlY2siO3M6MTY6InRpbWVfdG9faG9zcGl0YWwiO3M6MToiNSI7fQ==', '2018-04-23 03:56:29', '2018-04-23 03:56:29'),
(31, 59, 'YToxNDp7czo1OiJzdGF0ZSI7czoxNToiU2VsYnN0dmVyc29yZ2VyIjtzOjg6Im9ic2VydmVkIjtzOjQ6Ik5laW4iO3M6ODoidGltZV95ZXMiO047czo5OiJsYXN0X2ZpbmUiO047czo3OiJ0aW1lX25vIjtzOjk6IlVuYmVrYW5udCI7czoxMzoiYW50aWNvYWdfbmFtZSI7czoyOiJIZyI7czoxOToibWVkaWNhdGlvbl9kZXRlY3RlZCI7czoyOiJKYSI7czoxMToicmVsYXRpdmVfbm8iO3M6NDoiTmVpbiI7czoxMzoiZG9jdG9yX3JlY29yZCI7czo5OiJVbmJla2FubnQiO3M6MTM6ImltcGFjdF90cmF1bWEiO3M6NDoiTmVpbiI7czoxMToiaGFlbW9ycmhhZ2UiO3M6NDoiTmVpbiI7czoxNzoiYmxlZWRpbmdfZGlzb3JkZXIiO3M6NDoiTmVpbiI7czoxMzoidGFyZ2V0X2NsaW5pYyI7czoxMjoiVUtTSCBMw7xiZWNrIjtzOjE2OiJ0aW1lX3RvX2hvc3BpdGFsIjtzOjI6IjMzIjt9', '2018-04-23 05:46:58', '2018-04-23 05:46:58'),
(32, 60, 'YToxNTp7czo1OiJzdGF0ZSI7czoyNToiVGVpbHdlaXNlIGhpbGZzYmVkw7xyZnRpZyI7czo4OiJvYnNlcnZlZCI7czo0OiJOZWluIjtzOjg6InRpbWVfeWVzIjtOO3M6OToibGFzdF9maW5lIjtOO3M6NzoidGltZV9ubyI7czo5OiJVbmJla2FubnQiO3M6ODoiYW50aWNvYWciO3M6OToiVW5iZWthbm50IjtzOjEzOiJhbnRpY29hZ19uYW1lIjtzOjg6Ik1hcmN1bWFyIjtzOjE5OiJtZWRpY2F0aW9uX2RldGVjdGVkIjtzOjI6IkphIjtzOjExOiJyZWxhdGl2ZV9ubyI7czo0OiJOZWluIjtzOjEzOiJkb2N0b3JfcmVjb3JkIjtzOjI6IkphIjtzOjEzOiJpbXBhY3RfdHJhdW1hIjtzOjI6IkphIjtzOjExOiJoYWVtb3JyaGFnZSI7czo0OiJOZWluIjtzOjE3OiJibGVlZGluZ19kaXNvcmRlciI7czo0OiJOZWluIjtzOjEzOiJ0YXJnZXRfY2xpbmljIjtzOjk6IlVLU0ggS2llbCI7czoxNjoidGltZV90b19ob3NwaXRhbCI7czoyOiIzMiI7fQ==', '2018-04-23 06:11:08', '2018-04-23 06:11:08'),
(33, 62, 'YToxNTp7czo1OiJzdGF0ZSI7czoyNToiVGVpbHdlaXNlIGhpbGZzYmVkw7xyZnRpZyI7czo4OiJvYnNlcnZlZCI7czo0OiJOZWluIjtzOjg6InRpbWVfeWVzIjtOO3M6OToibGFzdF9maW5lIjtOO3M6NzoidGltZV9ubyI7czo5OiJVbmJla2FubnQiO3M6ODoiYW50aWNvYWciO3M6MjoiSmEiO3M6MTM6ImFudGljb2FnX25hbWUiO3M6NzoiTGl4aWFuYSI7czoxOToibWVkaWNhdGlvbl9kZXRlY3RlZCI7czoxOToiS2VpbmUgVm9ybWVkaWthdGlvbiI7czoxMToicmVsYXRpdmVfbm8iO3M6OToiVW5iZWthbm50IjtzOjEzOiJkb2N0b3JfcmVjb3JkIjtzOjQ6Ik5laW4iO3M6MTM6ImltcGFjdF90cmF1bWEiO3M6MjoiSmEiO3M6MTE6ImhhZW1vcnJoYWdlIjtzOjk6IlVuYmVrYW5udCI7czoxNzoiYmxlZWRpbmdfZGlzb3JkZXIiO3M6MjoiSmEiO3M6MTM6InRhcmdldF9jbGluaWMiO3M6MTI6IlVLU0ggTMO8YmVjayI7czoxNjoidGltZV90b19ob3NwaXRhbCI7czoyOiIxMiI7fQ==', '2018-04-23 06:17:58', '2018-04-23 06:17:58'),
(34, 63, 'YToxMjp7czo1OiJzdGF0ZSI7czoyNToiVGVpbHdlaXNlIGhpbGZzYmVkw7xyZnRpZyI7czo4OiJ0aW1lX3llcyI7TjtzOjk6Imxhc3RfZmluZSI7TjtzOjEzOiJhbnRpY29hZ19uYW1lIjtzOjc6IkVsaXF1aXMiO3M6MTk6Im1lZGljYXRpb25fZGV0ZWN0ZWQiO3M6MTk6IktlaW5lIFZvcm1lZGlrYXRpb24iO3M6MTE6InJlbGF0aXZlX25vIjtzOjQ6Ik5laW4iO3M6MTM6ImRvY3Rvcl9yZWNvcmQiO3M6NDoiTmVpbiI7czoxMzoiaW1wYWN0X3RyYXVtYSI7czoyOiJKYSI7czoxMToiaGFlbW9ycmhhZ2UiO3M6NDoiTmVpbiI7czoxNzoiYmxlZWRpbmdfZGlzb3JkZXIiO3M6NDoiTmVpbiI7czoxMzoidGFyZ2V0X2NsaW5pYyI7czoxMjoiVUtTSCBMw7xiZWNrIjtzOjE2OiJ0aW1lX3RvX2hvc3BpdGFsIjtzOjE6IjUiO30=', '2018-04-24 05:16:32', '2018-04-24 05:16:32'),
(35, 64, 'YToxNTp7czo1OiJzdGF0ZSI7czoyNToiVGVpbHdlaXNlIGhpbGZzYmVkw7xyZnRpZyI7czo4OiJvYnNlcnZlZCI7czo0OiJOZWluIjtzOjg6InRpbWVfeWVzIjtOO3M6OToibGFzdF9maW5lIjtOO3M6NzoidGltZV9ubyI7czo5OiJVbmJla2FubnQiO3M6ODoiYW50aWNvYWciO3M6OToiVW5iZWthbm50IjtzOjEzOiJhbnRpY29hZ19uYW1lIjtzOjg6Ik1hcmN1bWFyIjtzOjE5OiJtZWRpY2F0aW9uX2RldGVjdGVkIjtzOjk6IlVuYmVrYW5udCI7czoxMToicmVsYXRpdmVfbm8iO3M6OToiVW5iZWthbm50IjtzOjEzOiJkb2N0b3JfcmVjb3JkIjtzOjI6IkphIjtzOjEzOiJpbXBhY3RfdHJhdW1hIjtzOjk6IlVuYmVrYW5udCI7czoxMToiaGFlbW9ycmhhZ2UiO3M6OToiVW5iZWthbm50IjtzOjE3OiJibGVlZGluZ19kaXNvcmRlciI7czo5OiJVbmJla2FubnQiO3M6MTM6InRhcmdldF9jbGluaWMiO3M6MTI6IlVLU0ggTMO8YmVjayI7czoxNjoidGltZV90b19ob3NwaXRhbCI7czoxOiI1Ijt9', '2018-04-24 05:19:02', '2018-04-24 05:19:02'),
(36, 65, 'YToxNTp7czo1OiJzdGF0ZSI7czoyNToiU3TDpG5kaWcgcGZsZWdlYmVkw7xyZnRpZyI7czo4OiJvYnNlcnZlZCI7czo0OiJOZWluIjtzOjg6InRpbWVfeWVzIjtOO3M6OToibGFzdF9maW5lIjtOO3M6NzoidGltZV9ubyI7czo5OiJVbmJla2FubnQiO3M6ODoiYW50aWNvYWciO3M6OToiVW5iZWthbm50IjtzOjEzOiJhbnRpY29hZ19uYW1lIjtzOjg6Ik1hcmN1bWFyIjtzOjE5OiJtZWRpY2F0aW9uX2RldGVjdGVkIjtzOjE5OiJLZWluZSBWb3JtZWRpa2F0aW9uIjtzOjExOiJyZWxhdGl2ZV9ubyI7czo0OiJOZWluIjtzOjEzOiJkb2N0b3JfcmVjb3JkIjtzOjk6IlVuYmVrYW5udCI7czoxMzoiaW1wYWN0X3RyYXVtYSI7czo5OiJVbmJla2FubnQiO3M6MTE6ImhhZW1vcnJoYWdlIjtzOjk6IlVuYmVrYW5udCI7czoxNzoiYmxlZWRpbmdfZGlzb3JkZXIiO3M6NDoiTmVpbiI7czoxMzoidGFyZ2V0X2NsaW5pYyI7czoxMjoiVUtTSCBMw7xiZWNrIjtzOjE2OiJ0aW1lX3RvX2hvc3BpdGFsIjtzOjE6IjUiO30=', '2018-04-24 05:20:01', '2018-04-24 05:20:01'),
(37, 66, 'YToxNTp7czo1OiJzdGF0ZSI7czoyNToiVGVpbHdlaXNlIGhpbGZzYmVkw7xyZnRpZyI7czo4OiJvYnNlcnZlZCI7czo0OiJOZWluIjtzOjg6InRpbWVfeWVzIjtOO3M6OToibGFzdF9maW5lIjtOO3M6NzoidGltZV9ubyI7czo5OiJVbmJla2FubnQiO3M6ODoiYW50aWNvYWciO3M6OToiVW5iZWthbm50IjtzOjEzOiJhbnRpY29hZ19uYW1lIjtzOjg6Ik1hcmN1bWFyIjtzOjE5OiJtZWRpY2F0aW9uX2RldGVjdGVkIjtzOjI6IkphIjtzOjExOiJyZWxhdGl2ZV9ubyI7czoyOiJKYSI7czoxMzoiZG9jdG9yX3JlY29yZCI7czo5OiJVbmJla2FubnQiO3M6MTM6ImltcGFjdF90cmF1bWEiO3M6MjoiSmEiO3M6MTE6ImhhZW1vcnJoYWdlIjtzOjQ6Ik5laW4iO3M6MTc6ImJsZWVkaW5nX2Rpc29yZGVyIjtzOjI6IkphIjtzOjEzOiJ0YXJnZXRfY2xpbmljIjtzOjk6IlVLU0ggS2llbCI7czoxNjoidGltZV90b19ob3NwaXRhbCI7czoyOiIyMiI7fQ==', '2018-04-24 05:22:37', '2018-04-24 05:22:37'),
(38, 67, 'YToxNTp7czo1OiJzdGF0ZSI7czoyNToiU3TDpG5kaWcgcGZsZWdlYmVkw7xyZnRpZyI7czo4OiJvYnNlcnZlZCI7czoyOiJKYSI7czo4OiJ0aW1lX3llcyI7czo3OiI2OjMxIFBNIjtzOjk6Imxhc3RfZmluZSI7TjtzOjc6InRpbWVfbm8iO047czo4OiJhbnRpY29hZyI7czoyOiJKYSI7czoxMzoiYW50aWNvYWdfbmFtZSI7czo3OiJMaXhpYW5hIjtzOjE5OiJtZWRpY2F0aW9uX2RldGVjdGVkIjtzOjk6IlVuYmVrYW5udCI7czoxMToicmVsYXRpdmVfbm8iO3M6MjoiSmEiO3M6MTM6ImRvY3Rvcl9yZWNvcmQiO3M6NDoiTmVpbiI7czoxMzoiaW1wYWN0X3RyYXVtYSI7czo0OiJOZWluIjtzOjExOiJoYWVtb3JyaGFnZSI7czo0OiJOZWluIjtzOjE3OiJibGVlZGluZ19kaXNvcmRlciI7czo5OiJVbmJla2FubnQiO3M6MTM6InRhcmdldF9jbGluaWMiO3M6OToiVUtTSCBLaWVsIjtzOjE2OiJ0aW1lX3RvX2hvc3BpdGFsIjtzOjU6Ijg1LjU1Ijt9', '2018-04-24 07:05:35', '2018-04-24 07:05:35'),
(39, 68, 'YToxNDp7czo1OiJzdGF0ZSI7czoyNToiVGVpbHdlaXNlIGhpbGZzYmVkw7xyZnRpZyI7czo4OiJvYnNlcnZlZCI7czoyOiJKYSI7czo5OiJsYXN0X2ZpbmUiO047czo3OiJ0aW1lX25vIjtOO3M6ODoiYW50aWNvYWciO3M6MjoiSmEiO3M6MTM6ImFudGljb2FnX25hbWUiO3M6NzoiRWxpcXVpcyI7czoxOToibWVkaWNhdGlvbl9kZXRlY3RlZCI7czoyOiJKYSI7czoxMToicmVsYXRpdmVfbm8iO3M6NDoiTmVpbiI7czoxMzoiZG9jdG9yX3JlY29yZCI7czo0OiJOZWluIjtzOjEzOiJpbXBhY3RfdHJhdW1hIjtzOjI6IkphIjtzOjExOiJoYWVtb3JyaGFnZSI7czo0OiJOZWluIjtzOjE3OiJibGVlZGluZ19kaXNvcmRlciI7czo0OiJOZWluIjtzOjEzOiJ0YXJnZXRfY2xpbmljIjtzOjk6IlVLU0ggS2llbCI7czoxNjoidGltZV90b19ob3NwaXRhbCI7czoyOiIyMyI7fQ==', '2018-04-24 07:26:26', '2018-04-24 07:26:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hospital_id` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `type`, `hospital_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Superadmin', 'admin@admin.com', '$2y$10$P99Mc9gQ53DOBU8So8jwvOmP4nEOcP4OSW8aZ80.VKerzGwGjTCJG', 'superadmin', 0, '8OlVHfobzo78Y7u7PTgxAtG0JZcrCWYgne23PhxUkl4EcYTFswcS1nOD3mS7', '2018-04-16 05:33:50', '2018-04-02 20:08:36'),
(2, 'Herman', 'herman@admin.com', '$2y$10$LoiaQE/5hzLbJrkdxNKhB.M2S09DvyiyvbVxPTNLXRlyk55MmN7ty', 'Admin', 9, 'haRbCnWb84nvGtoTI1huLD5owdHXWcEztcPkFBuRveYj68tQwB0jZFoA5nOb', '2018-04-16 03:55:23', '2018-04-26 03:27:38'),
(3, 'Marcel Dittrich', 'dittrich@appropo.net', '$2y$10$qxGA0QdHUUS2W93iOBu2PegRqi2HRAMbSNim.X34WI.wcPpEPviby', 'Admin', 10, NULL, '2018-04-23 07:11:32', '2018-04-26 03:27:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dummy`
--
ALTER TABLE `dummy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `examination`
--
ALTER TABLE `examination`
  ADD PRIMARY KEY (`examination_id`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`hospital_id`);

--
-- Indexes for table `hospital_numbers`
--
ALTER TABLE `hospital_numbers`
  ADD PRIMARY KEY (`h_id`);

--
-- Indexes for table `loginstatus`
--
ALTER TABLE `loginstatus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paramedic`
--
ALTER TABLE `paramedic`
  ADD PRIMARY KEY (`paramedic_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `symptom`
--
ALTER TABLE `symptom`
  ADD PRIMARY KEY (`symptom_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dummy`
--
ALTER TABLE `dummy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;
--
-- AUTO_INCREMENT for table `examination`
--
ALTER TABLE `examination`
  MODIFY `examination_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=430;
--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `hospital_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `hospital_numbers`
--
ALTER TABLE `hospital_numbers`
  MODIFY `h_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `loginstatus`
--
ALTER TABLE `loginstatus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `paramedic`
--
ALTER TABLE `paramedic`
  MODIFY `paramedic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `patient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `symptom`
--
ALTER TABLE `symptom`
  MODIFY `symptom_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
