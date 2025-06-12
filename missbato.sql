-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2025 at 09:09 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `missbato`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `number` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `active_portion` varchar(255) DEFAULT NULL,
  `called_at` timestamp NULL DEFAULT NULL,
  `pinged_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `number`, `name`, `avatar`, `username`, `password`, `active_portion`, `called_at`, `pinged_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'DEVELOPMENT', 'no-avatar.jpg', 'admin', 'admin', NULL, NULL, NULL, '2023-02-19 07:36:32', '2025-06-12 15:35:45');

-- --------------------------------------------------------

--
-- Table structure for table `arrangements`
--

CREATE TABLE `arrangements` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `team_id` tinyint(3) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `competition_id` tinyint(3) UNSIGNED NOT NULL,
  `slug` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `competition_id`, `slug`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 'prejudging', 'Prejudging', '2025-06-12 16:09:46', '2025-06-12 16:09:46'),
(2, 1, 'pageant-night', 'Pageant Night', '2025-06-12 16:09:59', '2025-06-12 16:09:59');

-- --------------------------------------------------------

--
-- Table structure for table `competitions`
--

CREATE TABLE `competitions` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `slug` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `competitions`
--

INSERT INTO `competitions` (`id`, `slug`, `title`, `created_at`, `updated_at`) VALUES
(1, 'missbato-2025', 'Miss Bato 2025', '2025-06-12 16:09:35', '2025-06-12 16:09:35');

-- --------------------------------------------------------

--
-- Table structure for table `criteria`
--

CREATE TABLE `criteria` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `percentage` float UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `criteria`
--

INSERT INTO `criteria` (`id`, `event_id`, `title`, `percentage`, `created_at`, `updated_at`) VALUES
(1, 1, 'Intelligence', 40, '2025-06-12 16:18:34', '2025-06-12 16:18:34'),
(2, 1, 'Beauty', 30, '2025-06-12 16:18:43', '2025-06-12 16:18:43'),
(3, 1, 'Body Proportion', 30, '2025-06-12 16:19:00', '2025-06-12 16:19:00'),
(4, 2, 'Creativity & Originality', 30, '2025-06-12 16:19:18', '2025-06-12 16:19:18'),
(5, 2, 'Thematic Relevance', 25, '2025-06-12 16:20:02', '2025-06-12 16:20:02'),
(6, 2, 'Craftmanship & Detailing', 25, '2025-06-12 16:20:17', '2025-06-12 16:20:17'),
(7, 2, 'Visual Impact', 20, '2025-06-12 16:20:27', '2025-06-12 16:20:27'),
(8, 3, 'Body Proportion', 40, '2025-06-12 16:21:04', '2025-06-12 16:21:04'),
(9, 3, 'Beauty', 30, '2025-06-12 16:21:19', '2025-06-12 16:21:19'),
(10, 3, 'Over-all Impact', 30, '2025-06-12 16:21:27', '2025-06-12 16:21:27'),
(11, 4, 'Carriage', 40, '2025-06-12 16:21:47', '2025-06-12 16:21:47'),
(12, 4, 'Beauty', 30, '2025-06-12 16:21:53', '2025-06-12 16:21:53'),
(13, 4, 'Over-all Impact', 30, '2025-06-12 16:22:01', '2025-06-12 16:22:01'),
(14, 5, 'Beauty', 50, '2025-06-12 16:22:27', '2025-06-12 16:22:27'),
(15, 5, 'Intelligence', 50, '2025-06-12 16:22:36', '2025-06-12 16:22:36');

-- --------------------------------------------------------

--
-- Table structure for table `deductions`
--

CREATE TABLE `deductions` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `technical_id` tinyint(3) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `team_id` tinyint(3) UNSIGNED NOT NULL,
  `value` float UNSIGNED NOT NULL DEFAULT 0,
  `is_locked` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eliminations`
--

CREATE TABLE `eliminations` (
  `id` mediumint(9) NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `team_id` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `eliminations`
--

INSERT INTO `eliminations` (`id`, `event_id`, `team_id`, `created_at`, `updated_at`) VALUES
(1, 5, 1, '2025-06-12 19:08:22', '2025-06-12 19:08:22'),
(2, 5, 2, '2025-06-12 19:08:23', '2025-06-12 19:08:23'),
(3, 5, 3, '2025-06-12 19:08:25', '2025-06-12 19:08:25'),
(4, 5, 4, '2025-06-12 19:08:26', '2025-06-12 19:08:26'),
(5, 5, 5, '2025-06-12 19:08:27', '2025-06-12 19:08:27'),
(6, 5, 6, '2025-06-12 19:08:28', '2025-06-12 19:08:28'),
(7, 5, 7, '2025-06-12 19:08:30', '2025-06-12 19:08:30'),
(8, 5, 8, '2025-06-12 19:08:31', '2025-06-12 19:08:31'),
(9, 5, 9, '2025-06-12 19:08:32', '2025-06-12 19:08:32'),
(10, 5, 10, '2025-06-12 19:08:33', '2025-06-12 19:08:33'),
(11, 5, 11, '2025-06-12 19:08:34', '2025-06-12 19:08:34'),
(12, 5, 12, '2025-06-12 19:08:35', '2025-06-12 19:08:35'),
(13, 5, 13, '2025-06-12 19:08:37', '2025-06-12 19:08:37'),
(14, 5, 14, '2025-06-12 19:08:38', '2025-06-12 19:08:38'),
(15, 5, 15, '2025-06-12 19:08:39', '2025-06-12 19:08:39'),
(16, 5, 16, '2025-06-12 19:08:40', '2025-06-12 19:08:40'),
(17, 5, 17, '2025-06-12 19:08:41', '2025-06-12 19:08:41'),
(18, 5, 18, '2025-06-12 19:08:42', '2025-06-12 19:08:42'),
(19, 5, 19, '2025-06-12 19:08:43', '2025-06-12 19:08:43'),
(20, 5, 20, '2025-06-12 19:08:47', '2025-06-12 19:08:47');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `category_id` tinyint(3) UNSIGNED NOT NULL,
  `slug` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `category_id`, `slug`, `title`, `created_at`, `updated_at`) VALUES
(1, 1, 'closed-door-interview', 'Closed-door Interview', '2025-06-12 16:10:45', '2025-06-12 16:11:31'),
(2, 1, 'best-designer', 'Best Designer', '2025-06-12 16:15:30', '2025-06-12 18:45:12'),
(3, 2, 'swimsuit', 'Swimsuit', '2025-06-12 16:11:59', '2025-06-12 16:14:57'),
(4, 2, 'evening-gown', 'Evening Gown', '2025-06-12 16:12:20', '2025-06-12 16:14:55'),
(5, 2, 'final-qa', 'Final Q&A', '2025-06-12 16:13:00', '2025-06-12 16:14:52');

-- --------------------------------------------------------

--
-- Table structure for table `judges`
--

CREATE TABLE `judges` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `number` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `active_portion` varchar(255) DEFAULT NULL,
  `called_at` timestamp NULL DEFAULT NULL,
  `pinged_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `judges`
--

INSERT INTO `judges` (`id`, `number`, `name`, `avatar`, `username`, `password`, `active_portion`, `called_at`, `pinged_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Judge 01', 'no-avatar.jpg', 'judge01', 'judge01', NULL, NULL, NULL, '2025-06-12 15:39:04', '2025-06-12 15:39:16'),
(2, 2, 'Judge 02', 'no-avatar.jpg', 'judge02', 'judge02', NULL, NULL, NULL, '2025-06-12 15:39:04', '2025-06-12 15:39:19'),
(3, 3, 'Judge 03', 'no-avatar.jpg', 'judge03', 'judge03', NULL, NULL, NULL, '2025-06-12 15:39:04', '2025-06-12 15:39:22'),
(4, 4, 'Judge 04', 'no-avatar.jpg', 'judge04', 'judge04', NULL, NULL, NULL, '2025-06-12 15:39:04', '2025-06-12 15:39:24'),
(5, 5, 'Judge 05', 'no-avatar.jpg', 'judge05', 'judge05', NULL, NULL, NULL, '2025-06-12 15:39:04', '2025-06-12 15:39:26');

-- --------------------------------------------------------

--
-- Table structure for table `judge_event`
--

CREATE TABLE `judge_event` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `judge_id` tinyint(3) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `is_chairman` tinyint(1) NOT NULL DEFAULT 0,
  `active_team_id` tinyint(4) UNSIGNED NOT NULL,
  `has_active_team` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `judge_event`
--

INSERT INTO `judge_event` (`id`, `judge_id`, `event_id`, `is_chairman`, `active_team_id`, `has_active_team`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, 1, 0, '2025-06-12 16:24:37', '2025-06-12 16:24:37'),
(2, 1, 2, 0, 1, 0, '2025-06-12 16:24:40', '2025-06-12 16:24:40'),
(3, 1, 3, 0, 1, 0, '2025-06-12 16:24:42', '2025-06-12 16:24:42'),
(4, 1, 4, 0, 1, 0, '2025-06-12 16:24:45', '2025-06-12 16:24:45'),
(5, 1, 5, 0, 1, 0, '2025-06-12 16:24:47', '2025-06-12 16:24:47'),
(6, 2, 1, 0, 1, 0, '2025-06-12 16:24:51', '2025-06-12 16:24:51'),
(7, 2, 2, 0, 1, 0, '2025-06-12 16:24:53', '2025-06-12 16:24:53'),
(8, 2, 3, 0, 1, 0, '2025-06-12 16:24:56', '2025-06-12 16:24:56'),
(9, 2, 4, 0, 1, 0, '2025-06-12 16:24:59', '2025-06-12 16:24:59'),
(10, 2, 5, 0, 1, 0, '2025-06-12 16:25:01', '2025-06-12 16:25:01'),
(11, 3, 1, 0, 1, 0, '2025-06-12 16:25:05', '2025-06-12 16:25:05'),
(12, 3, 2, 0, 1, 0, '2025-06-12 16:25:08', '2025-06-12 16:25:08'),
(13, 3, 3, 0, 1, 0, '2025-06-12 16:25:10', '2025-06-12 16:25:10'),
(14, 3, 4, 0, 1, 0, '2025-06-12 16:25:12', '2025-06-12 16:25:12'),
(15, 3, 5, 0, 1, 0, '2025-06-12 16:25:14', '2025-06-12 16:25:14'),
(16, 4, 1, 0, 1, 0, '2025-06-12 16:25:18', '2025-06-12 16:25:18'),
(17, 4, 2, 0, 1, 0, '2025-06-12 16:25:20', '2025-06-12 16:25:20'),
(18, 4, 3, 0, 1, 0, '2025-06-12 16:25:22', '2025-06-12 16:25:22'),
(19, 4, 4, 0, 1, 0, '2025-06-12 16:25:25', '2025-06-12 16:25:25'),
(20, 4, 5, 0, 1, 0, '2025-06-12 16:25:27', '2025-06-12 16:25:27'),
(21, 5, 1, 0, 1, 0, '2025-06-12 16:25:31', '2025-06-12 16:25:31'),
(22, 5, 2, 0, 1, 0, '2025-06-12 16:25:33', '2025-06-12 16:25:33'),
(23, 5, 3, 0, 1, 0, '2025-06-12 16:25:35', '2025-06-12 16:25:35'),
(24, 5, 4, 0, 1, 0, '2025-06-12 16:25:37', '2025-06-12 16:25:37'),
(25, 5, 5, 0, 1, 0, '2025-06-12 16:25:39', '2025-06-12 16:25:39');

-- --------------------------------------------------------

--
-- Table structure for table `noshows`
--

CREATE TABLE `noshows` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `team_id` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

CREATE TABLE `participants` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `team_id` tinyint(3) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `number` smallint(5) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `points`
--

CREATE TABLE `points` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `rank` tinyint(3) UNSIGNED NOT NULL,
  `value` float UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `judge_id` tinyint(3) UNSIGNED NOT NULL,
  `criteria_id` smallint(5) UNSIGNED NOT NULL,
  `team_id` tinyint(3) UNSIGNED NOT NULL,
  `value` float UNSIGNED NOT NULL DEFAULT 0,
  `is_locked` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `number` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `location` varchar(64) NOT NULL,
  `age` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `height` varchar(16) NOT NULL DEFAULT '',
  `vital_stats` varchar(32) NOT NULL DEFAULT '',
  `is_native` tinyint(1) NOT NULL DEFAULT 1,
  `avatar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `number`, `name`, `location`, `age`, `height`, `vital_stats`, `is_native`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 1, 'GRECHELLE YVONE MURILLO', 'Bato, Cam. Sur', 17, '', '', 1, '01.jpg', '2025-06-12 16:04:33', '2025-06-12 16:04:33'),
(2, 2, 'CRIS ADELY LABALAN', 'Bato, Cam. Sur', 20, '', '', 1, '02.jpg', '2025-06-12 16:04:33', '2025-06-12 16:04:33'),
(3, 3, 'MIKYLA ASHELY BRUTAS', 'Lagonoy, Cam. Sur', 20, '', '', 0, '03.jpg', '2025-06-12 16:04:33', '2025-06-12 16:04:33'),
(4, 4, 'LISA MAE GENERAL', 'Pili, Cam. Sur', 25, '', '', 0, '04.jpg', '2025-06-12 16:04:33', '2025-06-12 16:04:33'),
(5, 5, 'AALIYAH KRYSTELA DAVID', 'Bato, Cam. Sur', 18, '', '', 1, '05.jpg', '2025-06-12 16:04:33', '2025-06-12 16:04:33'),
(6, 6, 'CYRISH HUGO', 'Bato, Cam. Sur', 19, '', '', 1, '06.jpg', '2025-06-12 16:04:33', '2025-06-12 16:04:33'),
(7, 7, 'AGATHA KAYE OLAYON', 'Iriga City', 23, '', '', 0, '07.jpg', '2025-06-12 16:04:33', '2025-06-12 16:04:33'),
(8, 8, 'MARIEL CHAVEZ', 'Nabua, Cam. Sur', 21, '', '', 0, '08.jpg', '2025-06-12 16:04:33', '2025-06-12 16:04:33'),
(9, 9, 'HANNA GRACE CLAVILLAS', 'Buhi, Cam. Sur', 20, '', '', 0, '09.jpg', '2025-06-12 16:04:33', '2025-06-12 16:04:33'),
(10, 10, 'MARIFRANZ RICO', 'Goa, Cam. Sur', 21, '', '', 0, '10.jpg', '2025-06-12 16:04:33', '2025-06-12 16:04:33'),
(11, 11, 'KAZZANDRA SETON', 'Siruma, Cam. Sur', 23, '', '', 0, '11.jpg', '2025-06-12 16:04:33', '2025-06-12 16:04:33'),
(12, 12, 'PRINCESS MALAPAD', 'Camarines Norte', 19, '', '', 0, '12.jpg', '2025-06-12 16:04:33', '2025-06-12 16:04:33'),
(13, 13, 'BARBIE ANNE FLORIANO', 'Iriga City', 21, '', '', 0, '13.jpg', '2025-06-12 16:04:33', '2025-06-12 16:04:33'),
(14, 14, 'RICA JANE PEÑALBA', 'Buhi, Cam. Sur', 22, '', '', 0, '14.jpg', '2025-06-12 16:04:33', '2025-06-12 16:04:33'),
(15, 15, 'MIEN MIE EGIPTO', 'Polangui, Albay', 21, '', '', 0, '15.jpg', '2025-06-12 16:04:33', '2025-06-12 16:04:33'),
(16, 16, 'NEOLI KRYSS ABARIENTOS', 'Nabua, Cam. Sur', 20, '', '', 0, '16.jpg', '2025-06-12 16:04:33', '2025-06-12 16:04:33'),
(17, 17, 'AILA MAE ROSALDO', 'Bato, Cam. Sur', 16, '', '', 1, '17.jpg', '2025-06-12 16:04:33', '2025-06-12 16:04:33'),
(18, 18, 'ALEXANDRA KRISHNA ORIÑO', 'Naga City', 21, '', '', 0, '18.jpg', '2025-06-12 16:04:33', '2025-06-12 16:04:33'),
(19, 19, 'RICA STEPHANIE UBALDO', 'Cabusao, Cam. Sur', 18, '', '', 0, '19.jpg', '2025-06-12 16:04:33', '2025-06-12 16:04:33'),
(20, 20, 'AUDREY ALEXANDRA VILLA', 'Baao, Cam. Sur', 21, '', '', 0, '20.jpg', '2025-06-12 16:04:33', '2025-06-12 16:04:33');

-- --------------------------------------------------------

--
-- Table structure for table `technicals`
--

CREATE TABLE `technicals` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `number` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `active_portion` varchar(255) DEFAULT NULL,
  `called_at` timestamp NULL DEFAULT NULL,
  `pinged_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `technicals`
--

INSERT INTO `technicals` (`id`, `number`, `name`, `avatar`, `username`, `password`, `active_portion`, `called_at`, `pinged_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Technical 01', 'no-avatar.jpg', 'technical01', 'technical01', 'screening', NULL, '2025-06-09 23:46:23', '2023-02-19 08:58:58', '2025-06-09 23:46:23');

-- --------------------------------------------------------

--
-- Table structure for table `technical_event`
--

CREATE TABLE `technical_event` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `technical_id` tinyint(3) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `active_team_id` tinyint(3) UNSIGNED NOT NULL,
  `has_active_team` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `titles`
--

CREATE TABLE `titles` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `rank` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `titles`
--

INSERT INTO `titles` (`id`, `event_id`, `rank`, `title`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'Best Gown Designer', '2025-06-12 16:26:18', '2025-06-12 16:30:35'),
(2, 3, 1, 'Best in Swimsuit', '2025-06-12 16:26:18', '2025-06-12 16:33:13'),
(3, 4, 1, 'Best in Evening Gown', '2025-06-12 16:26:18', '2025-06-12 16:33:07'),
(4, 5, 1, 'MISS BATO 2025', '2025-06-12 16:26:18', '2025-06-12 16:33:23'),
(5, 5, 2, 'MISS BATO Karanowan 2025', '2025-06-12 16:26:18', '2025-06-12 16:33:25'),
(6, 5, 3, 'MISS BATO Tourism 2025', '2025-06-12 16:26:18', '2025-06-12 16:33:27'),
(7, 5, 4, '1st RUNNER UP', '2025-06-12 16:26:18', '2025-06-12 16:33:30'),
(8, 5, 5, '2nd RUNNER UP', '2025-06-12 16:26:18', '2025-06-12 16:33:33'),
(9, 1, 1, '', '2025-06-12 19:04:52', '2025-06-12 19:04:52'),
(10, 1, 2, '', '2025-06-12 19:04:52', '2025-06-12 19:04:52'),
(11, 1, 3, '', '2025-06-12 19:04:52', '2025-06-12 19:04:52'),
(12, 1, 4, '', '2025-06-12 19:04:52', '2025-06-12 19:04:52'),
(13, 1, 5, '', '2025-06-12 19:04:52', '2025-06-12 19:04:52'),
(14, 1, 6, '', '2025-06-12 19:04:52', '2025-06-12 19:04:52'),
(15, 1, 7, '', '2025-06-12 19:04:52', '2025-06-12 19:04:52'),
(16, 1, 8, '', '2025-06-12 19:04:52', '2025-06-12 19:04:52'),
(17, 1, 9, '', '2025-06-12 19:04:52', '2025-06-12 19:04:52'),
(18, 1, 10, '', '2025-06-12 19:04:52', '2025-06-12 19:04:52'),
(19, 1, 11, '', '2025-06-12 19:04:52', '2025-06-12 19:04:52'),
(20, 1, 12, '', '2025-06-12 19:04:52', '2025-06-12 19:04:52'),
(21, 1, 13, '', '2025-06-12 19:04:52', '2025-06-12 19:04:52'),
(22, 1, 14, '', '2025-06-12 19:04:52', '2025-06-12 19:04:52'),
(23, 1, 15, '', '2025-06-12 19:04:52', '2025-06-12 19:04:52'),
(24, 1, 16, '', '2025-06-12 19:04:52', '2025-06-12 19:04:52'),
(25, 1, 17, '', '2025-06-12 19:04:52', '2025-06-12 19:04:52'),
(26, 1, 18, '', '2025-06-12 19:04:52', '2025-06-12 19:04:52'),
(27, 1, 19, '', '2025-06-12 19:04:52', '2025-06-12 19:04:52'),
(28, 1, 20, '', '2025-06-12 19:04:52', '2025-06-12 19:04:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `arrangements`
--
ALTER TABLE `arrangements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `competition_id` (`competition_id`);

--
-- Indexes for table `competitions`
--
ALTER TABLE `competitions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `criteria`
--
ALTER TABLE `criteria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `deductions`
--
ALTER TABLE `deductions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `judge_id` (`technical_id`),
  ADD KEY `team_id` (`team_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `eliminations`
--
ALTER TABLE `eliminations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `area_id` (`category_id`);

--
-- Indexes for table `judges`
--
ALTER TABLE `judges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `judge_event`
--
ALTER TABLE `judge_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `judge_id` (`judge_id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `active_team_id` (`active_team_id`);

--
-- Indexes for table `noshows`
--
ALTER TABLE `noshows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indexes for table `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_id` (`team_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `points`
--
ALTER TABLE `points`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `judge_id` (`judge_id`),
  ADD KEY `team_id` (`team_id`),
  ADD KEY `criteria_id` (`criteria_id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `technicals`
--
ALTER TABLE `technicals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `technical_event`
--
ALTER TABLE `technical_event`
  ADD PRIMARY KEY (`id`),
  ADD KEY `judge_id` (`technical_id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `active_team_id` (`active_team_id`);

--
-- Indexes for table `titles`
--
ALTER TABLE `titles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `arrangements`
--
ALTER TABLE `arrangements`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `competitions`
--
ALTER TABLE `competitions`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `criteria`
--
ALTER TABLE `criteria`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `deductions`
--
ALTER TABLE `deductions`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eliminations`
--
ALTER TABLE `eliminations`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `judges`
--
ALTER TABLE `judges`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `judge_event`
--
ALTER TABLE `judge_event`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `noshows`
--
ALTER TABLE `noshows`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `participants`
--
ALTER TABLE `participants`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `points`
--
ALTER TABLE `points`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `technicals`
--
ALTER TABLE `technicals`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `technical_event`
--
ALTER TABLE `technical_event`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `titles`
--
ALTER TABLE `titles`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `arrangements`
--
ALTER TABLE `arrangements`
  ADD CONSTRAINT `arrangements_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `arrangements_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`competition_id`) REFERENCES `competitions` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `criteria`
--
ALTER TABLE `criteria`
  ADD CONSTRAINT `criteria_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `deductions`
--
ALTER TABLE `deductions`
  ADD CONSTRAINT `deductions_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `deductions_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `deductions_ibfk_3` FOREIGN KEY (`technical_id`) REFERENCES `technicals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eliminations`
--
ALTER TABLE `eliminations`
  ADD CONSTRAINT `eliminations_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `eliminations_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `judge_event`
--
ALTER TABLE `judge_event`
  ADD CONSTRAINT `judge_event_ibfk_1` FOREIGN KEY (`judge_id`) REFERENCES `judges` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `judge_event_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `judge_event_ibfk_3` FOREIGN KEY (`active_team_id`) REFERENCES `teams` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `noshows`
--
ALTER TABLE `noshows`
  ADD CONSTRAINT `noshows_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noshows_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `participants`
--
ALTER TABLE `participants`
  ADD CONSTRAINT `participants_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `participants_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `points`
--
ALTER TABLE `points`
  ADD CONSTRAINT `points_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`criteria_id`) REFERENCES `criteria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ratings_ibfk_3` FOREIGN KEY (`judge_id`) REFERENCES `judges` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `technical_event`
--
ALTER TABLE `technical_event`
  ADD CONSTRAINT `technical_event_ibfk_2` FOREIGN KEY (`technical_id`) REFERENCES `technicals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `technical_event_ibfk_3` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `technical_event_ibfk_4` FOREIGN KEY (`active_team_id`) REFERENCES `teams` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `titles`
--
ALTER TABLE `titles`
  ADD CONSTRAINT `titles_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
