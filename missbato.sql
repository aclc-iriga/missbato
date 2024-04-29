-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2024 at 10:31 AM
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
(1, 1, 'DEVELOPMENT', 'no-avatar.jpg', 'admin', 'admin', NULL, NULL, NULL, '2023-02-19 07:36:32', '2023-05-27 10:02:26');

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
(1, 1, 'pageant-night', 'Pageant Night', '2023-05-27 08:33:52', '2023-05-27 09:13:30'),
(2, 1, 'event-proxies', 'Event Proxies', '2023-05-27 08:54:30', '2023-05-27 09:13:33');

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
(1, 'missbato-2023', 'Miss Bato 2023', '2023-04-06 13:24:04', '2023-04-06 13:24:04');

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
(1, 1, 'Beauty of Face & Figure', 25, '2023-05-27 08:38:17', '2023-05-27 08:39:30'),
(2, 1, 'Poise and Carriage', 25, '2023-05-27 08:38:30', '2023-05-27 08:39:47'),
(3, 1, 'Execution, Mastery & Performance', 40, '2023-05-27 08:38:38', '2023-05-27 08:40:18'),
(4, 2, 'Beauty of Face & Figure', 50, '2023-05-27 08:39:02', '2023-05-27 08:45:44'),
(5, 2, 'Poise and Carriage', 40, '2023-05-27 08:39:11', '2023-05-27 08:39:11'),
(6, 2, 'Over-all Impact', 10, '2023-05-27 08:39:20', '2023-05-27 08:39:20'),
(7, 1, 'Over-all Impact', 10, '2023-05-27 08:40:27', '2023-05-27 08:40:27'),
(8, 3, 'Beauty of Face & Figure', 50, '2023-05-27 08:41:06', '2023-05-27 08:41:06'),
(9, 3, 'Poise and Carriage', 40, '2023-05-27 08:41:16', '2023-05-27 08:41:16'),
(10, 3, 'Over-all Impact', 10, '2023-05-27 08:41:29', '2023-05-27 08:41:29'),
(11, 4, 'Beauty of Face & Figure, Poise and Carriage', 30, '2023-05-27 08:42:17', '2023-05-27 08:42:17'),
(12, 4, 'Intelligence and Wit', 30, '2023-05-27 08:42:39', '2023-05-27 08:42:39'),
(13, 5, 'Beauty of Face & Figure', 30, '2023-05-27 08:43:06', '2023-05-27 08:43:06'),
(14, 5, 'Poise and Carriage', 30, '2023-05-27 08:43:15', '2023-05-27 08:43:15'),
(15, 5, 'Elegance and Style with Copper or Bronze Brown', 30, '2023-05-27 08:43:26', '2023-06-01 03:25:21'),
(16, 5, 'Over-all Impact', 10, '2023-05-27 08:43:34', '2023-05-27 08:43:34'),
(17, 6, 'Beauty of Face & Figure, Poise and Carriage', 60, '2023-05-27 08:48:32', '2023-05-27 08:48:32'),
(18, 6, 'Intelligence and Wit', 40, '2023-05-27 08:48:42', '2023-05-27 08:48:42');

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
-- Table structure for table `duos`
--

CREATE TABLE `duos` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `slug` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `event_id_1` smallint(5) UNSIGNED NOT NULL,
  `event_id_2` smallint(5) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `duos`
--

INSERT INTO `duos` (`id`, `slug`, `title`, `event_id_1`, `event_id_2`, `created_at`, `updated_at`) VALUES
(1, 'production', 'Production', 1, 2, '2023-05-27 08:51:44', '2023-05-27 08:51:44'),
(2, 'swimsuit', 'Swimsuit', 3, 7, '2023-05-27 08:59:12', '2023-05-27 08:59:12'),
(3, 'preliminary-qa', 'Preliminary Q&A', 4, 7, '2023-05-27 08:59:34', '2023-05-27 08:59:34'),
(4, 'evening-gown', 'Evening Gown', 5, 7, '2023-05-27 09:00:11', '2023-05-27 09:00:11'),
(5, 'final-qa', 'Final Q&A', 6, 7, '2023-05-27 09:00:34', '2023-05-27 09:00:34');

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
(1, 7, 1, '2023-05-27 09:50:08', '2023-05-27 09:50:08'),
(2, 7, 2, '2023-05-27 09:50:08', '2023-05-27 09:50:08'),
(3, 7, 3, '2023-05-27 09:50:09', '2023-05-27 09:50:09'),
(4, 7, 4, '2023-05-27 09:50:10', '2023-05-27 09:50:10'),
(5, 7, 5, '2023-05-27 09:50:10', '2023-05-27 09:50:10'),
(6, 7, 6, '2023-05-27 09:50:11', '2023-05-27 09:50:11'),
(7, 7, 7, '2023-05-27 09:50:11', '2023-05-27 09:50:11'),
(8, 7, 8, '2023-05-27 09:50:12', '2023-05-27 09:50:12'),
(9, 7, 9, '2023-05-27 09:50:13', '2023-05-27 09:50:13'),
(10, 7, 10, '2023-05-27 09:50:13', '2023-05-27 09:50:13'),
(11, 7, 11, '2023-05-27 09:50:14', '2023-05-27 09:50:14'),
(12, 7, 12, '2023-05-27 09:50:15', '2023-05-27 09:50:15'),
(13, 7, 13, '2023-05-27 09:50:16', '2023-05-27 09:50:16'),
(14, 7, 14, '2023-05-27 09:50:16', '2023-05-27 09:50:16'),
(15, 6, 1, '2023-05-27 09:50:32', '2023-05-27 09:50:32'),
(16, 6, 2, '2023-05-27 09:50:32', '2023-05-27 09:50:32'),
(17, 6, 3, '2023-05-27 09:50:33', '2023-05-27 09:50:33'),
(18, 6, 4, '2023-05-27 09:50:33', '2023-05-27 09:50:33'),
(19, 6, 5, '2023-05-27 09:50:33', '2023-05-27 09:50:33'),
(20, 6, 6, '2023-05-27 09:50:34', '2023-05-27 09:50:34'),
(21, 6, 7, '2023-05-27 09:50:34', '2023-05-27 09:50:34'),
(22, 6, 8, '2023-05-27 09:50:35', '2023-05-27 09:50:35'),
(23, 6, 9, '2023-05-27 09:50:36', '2023-05-27 09:50:36'),
(24, 6, 10, '2023-05-27 09:50:36', '2023-05-27 09:50:36'),
(25, 6, 11, '2023-05-27 09:50:36', '2023-05-27 09:50:36'),
(26, 6, 12, '2023-05-27 09:50:37', '2023-05-27 09:50:37'),
(27, 6, 13, '2023-05-27 09:50:37', '2023-05-27 09:50:37'),
(28, 6, 14, '2023-05-27 09:50:38', '2023-05-27 09:50:38');

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
(1, 1, 'production-number', 'Production Number', '2023-05-27 08:35:58', '2023-05-27 08:35:58'),
(2, 1, 'production-attire', 'Production Attire', '2023-05-27 08:36:14', '2023-05-27 08:36:14'),
(3, 1, 'swimsuit', 'Swimsuit', '2023-05-27 08:36:35', '2023-05-27 08:36:35'),
(4, 1, 'preliminary-qa', 'Preliminary Q&A', '2023-05-27 08:36:50', '2023-05-27 08:36:54'),
(5, 1, 'evening-gown', 'Evening Gown', '2023-05-27 08:37:05', '2023-05-27 08:37:05'),
(6, 1, 'final-qa', 'Final Q&A', '2023-05-27 08:37:48', '2023-05-27 08:37:48'),
(7, 2, '', 'Event Proxy 1', '2023-05-27 08:55:38', '2023-05-27 09:13:06');

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
(1, 1, 'Judge 01', 'no-avatar.jpg', 'judge01', 'judge01', NULL, NULL, NULL, '2023-04-06 13:58:11', '2023-05-27 10:02:34'),
(2, 2, 'Judge 02', 'no-avatar.jpg', 'judge02', 'judge02', NULL, NULL, NULL, '2023-04-06 13:58:28', '2023-04-06 13:58:28'),
(3, 3, 'Judge 03', 'no-avatar.jpg', 'judge03', 'judge03', NULL, NULL, NULL, '2023-04-06 13:58:42', '2023-04-06 13:58:42'),
(4, 4, 'Judge 04', 'no-avatar.jpg', 'judge04', 'judge04', NULL, NULL, NULL, '2023-04-06 13:59:26', '2023-04-06 13:59:26'),
(5, 5, 'Judge 05', 'no-avatar.jpg', 'judge05', 'judge05', NULL, NULL, NULL, '2023-04-06 14:00:00', '2023-04-06 14:00:00'),
(6, 6, 'Judge 06', 'no-avatar.jpg', 'judge06', 'judge06', NULL, NULL, NULL, '2023-05-27 07:58:41', '2023-05-27 07:58:41'),
(7, 7, 'Judge 07', 'no-avatar.jpg', 'judge07', 'judge07', NULL, NULL, NULL, '2023-05-27 07:59:01', '2023-05-27 07:59:01');

-- --------------------------------------------------------

--
-- Table structure for table `judge_event`
--

CREATE TABLE `judge_event` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `judge_id` tinyint(3) UNSIGNED NOT NULL,
  `event_id` smallint(5) UNSIGNED NOT NULL,
  `is_chairman` tinyint(1) NOT NULL DEFAULT 0,
  `active_team_id` tinyint(3) UNSIGNED NOT NULL,
  `has_active_team` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `judge_event`
--

INSERT INTO `judge_event` (`id`, `judge_id`, `event_id`, `is_chairman`, `active_team_id`, `has_active_team`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, 1, 0, '2023-05-27 09:24:44', '2024-04-29 08:31:13'),
(2, 1, 2, 0, 1, 0, '2023-05-27 09:24:46', '2024-04-29 08:31:13'),
(3, 1, 3, 0, 1, 0, '2023-05-27 09:25:02', '2024-04-29 08:31:13'),
(4, 1, 4, 0, 1, 0, '2023-05-27 09:44:42', '2024-04-29 08:31:13'),
(5, 1, 5, 0, 1, 0, '2023-05-27 09:44:45', '2024-04-29 08:31:13'),
(6, 1, 6, 0, 1, 0, '2023-05-27 09:44:47', '2024-04-29 08:31:13'),
(7, 2, 1, 0, 1, 0, '2023-05-27 09:46:32', '2024-04-29 08:31:13'),
(8, 2, 2, 0, 1, 0, '2023-05-27 09:46:34', '2024-04-29 08:31:13'),
(9, 2, 3, 0, 1, 0, '2023-05-27 09:46:38', '2024-04-29 08:31:13'),
(10, 2, 4, 0, 1, 0, '2023-05-27 09:46:40', '2024-04-29 08:31:13'),
(11, 2, 5, 0, 1, 0, '2023-05-27 09:46:43', '2024-04-29 08:31:13'),
(12, 2, 6, 0, 1, 0, '2023-05-27 09:46:45', '2024-04-29 08:31:13'),
(13, 3, 1, 0, 1, 0, '2023-05-27 09:46:52', '2024-04-29 08:31:13'),
(14, 3, 2, 0, 1, 0, '2023-05-27 09:46:54', '2024-04-29 08:31:13'),
(15, 3, 3, 0, 1, 0, '2023-05-27 09:46:56', '2024-04-29 08:31:13'),
(16, 3, 4, 0, 1, 0, '2023-05-27 09:46:58', '2024-04-29 08:31:13'),
(17, 3, 5, 0, 1, 0, '2023-05-27 09:47:01', '2024-04-29 08:31:13'),
(18, 3, 6, 0, 1, 0, '2023-05-27 09:47:03', '2024-04-29 08:31:13'),
(19, 4, 1, 0, 1, 0, '2023-05-27 09:47:07', '2024-04-29 08:31:13'),
(20, 4, 2, 0, 1, 0, '2023-05-27 09:47:09', '2024-04-29 08:31:13'),
(21, 4, 3, 0, 1, 0, '2023-05-27 09:47:11', '2024-04-29 08:31:13'),
(22, 4, 4, 0, 1, 0, '2023-05-27 09:47:13', '2024-04-29 08:31:13'),
(23, 4, 5, 0, 1, 0, '2023-05-27 09:47:16', '2024-04-29 08:31:13'),
(24, 4, 6, 0, 1, 0, '2023-05-27 09:47:19', '2024-04-29 08:31:13'),
(25, 5, 1, 0, 1, 0, '2023-05-27 09:47:23', '2024-04-29 08:31:13'),
(26, 5, 2, 0, 1, 0, '2023-05-27 09:47:26', '2024-04-29 08:31:13'),
(27, 5, 3, 0, 1, 0, '2023-05-27 09:47:28', '2024-04-29 08:31:13'),
(28, 5, 4, 0, 1, 0, '2023-05-27 09:47:30', '2024-04-29 08:31:13'),
(29, 5, 5, 0, 1, 0, '2023-05-27 09:47:32', '2024-04-29 08:31:13'),
(30, 5, 6, 0, 1, 0, '2023-05-27 09:47:34', '2024-04-29 08:31:13'),
(31, 6, 1, 0, 1, 0, '2023-05-27 09:47:40', '2024-04-29 08:31:13'),
(32, 6, 2, 0, 1, 0, '2023-05-27 09:47:43', '2024-04-29 08:31:13'),
(33, 6, 3, 0, 1, 0, '2023-05-27 09:47:46', '2024-04-29 08:31:13'),
(34, 6, 4, 0, 1, 0, '2023-05-27 09:47:48', '2024-04-29 08:31:13'),
(35, 6, 5, 0, 1, 0, '2023-05-27 09:47:51', '2024-04-29 08:31:13'),
(36, 6, 6, 0, 1, 0, '2023-05-27 09:47:53', '2024-04-29 08:31:13'),
(37, 7, 1, 0, 1, 0, '2023-05-27 09:48:00', '2024-04-29 08:31:13'),
(38, 7, 2, 0, 1, 0, '2023-05-27 09:48:02', '2024-04-29 08:31:13'),
(39, 7, 3, 0, 1, 0, '2023-05-27 09:48:05', '2024-04-29 08:31:13'),
(40, 7, 4, 0, 1, 0, '2023-05-27 09:48:08', '2024-04-29 08:31:13'),
(41, 7, 5, 0, 1, 0, '2023-05-27 09:48:10', '2024-04-29 08:31:13'),
(42, 7, 6, 0, 1, 0, '2023-05-27 09:48:12', '2024-04-29 08:31:13');

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
  `location` varchar(32) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `number`, `name`, `location`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 1, 'MONICA MONDARES', 'PAGATPATAN', '01-monica-mondares.jpg', '2023-05-27 08:23:44', '2023-05-27 08:23:44'),
(2, 2, 'EDDIELYN MAYOR', 'DIVINA PASTORA', '02-eddielyn-mayor.jpg', '2023-05-27 08:23:44', '2023-05-27 08:23:44'),
(3, 3, 'CYRISH HUGO', 'STA. CRUZ', '03-cyrish-hugo.jpg', '2023-05-27 08:23:44', '2023-05-27 08:23:44'),
(4, 4, 'KITH HANNA LANDONG', 'SALVACION', '04-kith-hanna-landong.jpg', '2023-05-27 08:23:44', '2023-05-27 08:23:44'),
(5, 5, 'SHERRIE MAE ROMARAOG', 'SANTIAGO', '05-sherrie-mae-romaraog.jpg', '2023-05-27 08:23:44', '2023-05-27 08:23:44'),
(6, 6, 'AIRA MAE SUÑAZ', 'SAN ROQUE', '06-aira-mae-suñaz.jpg', '2023-05-27 08:23:44', '2023-05-27 08:23:44'),
(7, 7, 'JANDEL CLORADO', 'BACOLOD', '07-jandel-clorado.jpg', '2023-05-27 08:23:44', '2023-05-27 08:23:44'),
(8, 8, 'ABEGAIL TAMPOCO', 'PAGATPATAN', '08-abegail-tampoco.jpg', '2023-05-27 08:23:44', '2023-05-27 08:23:44'),
(9, 9, 'HANNA MIKAELA BUENA', 'SAN VICENTE', '09-hanna-mikaela-buena.jpg', '2023-05-27 08:23:44', '2023-05-27 08:23:44'),
(10, 10, 'TRICIA MAE TIMBANG', 'SANTIAGO', '10-tricia-mae-timbang.jpg', '2023-05-27 08:23:44', '2023-05-27 08:23:44'),
(11, 11, 'AALIYAH KRYSTELA DAVID', 'SAN RAFAEL', '11-aaliyah-krystela-david.jpg', '2023-05-27 08:23:44', '2023-05-27 08:23:44'),
(12, 12, 'EURICKA LYN MORAÑA', 'CRISTO REY', '12-euricka-lyn-moraña.jpg', '2023-05-27 08:23:44', '2023-05-27 08:23:44'),
(13, 13, 'CRIS ADELY LABALAN', 'TRES REYES', '13-cris-adely-labalan.jpg', '2023-05-27 08:23:44', '2023-05-27 08:23:44'),
(14, 14, 'FIONA PATULOT', 'SAN VICENTE', '14-fiona-patulot.jpg', '2023-05-27 08:23:44', '2023-05-27 08:23:44');

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
(1, 1, 'Technical 01', 'no-avatar.jpg', 'technical01', 'technical01', NULL, NULL, NULL, '2023-02-19 08:58:58', '2023-04-06 14:00:12');

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
(1, 1, 1, 'Best in Production Number', '2023-05-27 09:56:48', '2023-05-27 09:56:48'),
(2, 2, 1, 'Best in Production Attire', '2023-05-27 09:57:07', '2023-05-27 09:57:07'),
(3, 3, 1, 'Best in Swimsuit', '2023-05-27 09:57:26', '2023-05-27 09:57:26'),
(4, 5, 1, 'Best in Evening Gown', '2023-05-27 09:57:45', '2023-05-27 09:57:45'),
(5, 6, 1, 'MISS BATO 2023', '2023-05-27 10:01:19', '2023-05-27 10:01:19'),
(6, 6, 2, 'MISS BATO KARANOWAN 2023', '2023-05-27 10:01:19', '2023-05-27 10:01:19'),
(7, 6, 3, 'MISS BATO TOURISM 2023', '2023-05-27 10:01:19', '2023-05-27 10:01:19'),
(8, 6, 4, 'MISS BATO 1ST RUNNER UP', '2023-05-27 10:01:19', '2023-05-27 10:01:19'),
(9, 6, 5, 'MISS BATO 2ND RUNNER UP', '2023-05-27 10:01:19', '2023-05-27 10:01:19');

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
-- Indexes for table `duos`
--
ALTER TABLE `duos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event1` (`event_id_1`),
  ADD KEY `event2` (`event_id_2`);

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
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `deductions`
--
ALTER TABLE `deductions`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `duos`
--
ALTER TABLE `duos`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `eliminations`
--
ALTER TABLE `eliminations`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `judges`
--
ALTER TABLE `judges`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `judge_event`
--
ALTER TABLE `judge_event`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

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
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
-- Constraints for table `duos`
--
ALTER TABLE `duos`
  ADD CONSTRAINT `duos_ibfk_1` FOREIGN KEY (`event_id_1`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `duos_ibfk_2` FOREIGN KEY (`event_id_2`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
