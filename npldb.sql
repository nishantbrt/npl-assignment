-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 28, 2020 at 12:20 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `npldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `matches`
--

CREATE TABLE `matches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_team_id` int(11) NOT NULL,
  `second_team_id` int(11) NOT NULL,
  `win_team_id` int(11) NOT NULL,
  `date` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stadium_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `matches`
--

INSERT INTO `matches` (`id`, `first_team_id`, `second_team_id`, `win_team_id`, `date`, `time`, `stadium_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 0, '2020-07-27', '', 'Mumbai', 0, '2020-07-27 15:07:04', '2020-07-27 15:07:04'),
(2, 2, 6, 0, '2020-07-28', '', 'Chennai', 0, '2020-07-27 15:07:04', '2020-07-27 15:07:04'),
(3, 3, 7, 0, '2020-07-29', '', 'Bangalore', 0, '2020-07-27 15:07:04', '2020-07-27 15:07:04'),
(4, 4, 8, 0, '2020-07-30', '', 'Delhi', 0, '2020-07-27 15:07:04', '2020-07-27 15:07:04'),
(5, 1, 2, 0, '2020-07-31', '', 'Mumbai', 0, '2020-07-27 15:07:04', '2020-07-27 15:07:04'),
(6, 3, 5, 0, '2020-08-01', '', 'Bangalore', 0, '2020-07-27 15:07:04', '2020-07-27 15:07:04'),
(7, 4, 6, 0, '2020-08-01', '', 'Delhi', 0, '2020-07-27 15:07:04', '2020-07-27 15:07:04'),
(8, 8, 7, 0, '2020-08-02', '', 'Hyderabad', 0, '2020-07-27 15:07:05', '2020-07-27 15:07:05'),
(9, 1, 3, 0, '2020-08-02', '', 'Mumbai', 0, '2020-07-27 15:07:05', '2020-07-27 15:07:05'),
(10, 4, 2, 0, '2020-08-03', '', 'Delhi', 0, '2020-07-27 15:07:06', '2020-07-27 15:07:06'),
(11, 8, 5, 0, '2020-08-04', '', 'Hyderabad', 0, '2020-07-27 15:07:06', '2020-07-27 15:07:06'),
(12, 7, 6, 0, '2020-08-05', '', 'Rajasthan', 0, '2020-07-27 15:07:06', '2020-07-27 15:07:06'),
(13, 1, 4, 0, '2020-08-06', '', 'Mumbai', 0, '2020-07-27 15:07:06', '2020-07-27 15:07:06'),
(14, 8, 3, 0, '2020-08-07', '', 'Hyderabad', 0, '2020-07-27 15:07:06', '2020-07-27 15:07:06'),
(15, 7, 2, 0, '2020-08-08', '', 'Rajasthan', 0, '2020-07-27 15:07:06', '2020-07-27 15:07:06'),
(16, 6, 5, 0, '2020-08-08', '', 'Kolkata', 0, '2020-07-27 15:07:06', '2020-07-27 15:07:06'),
(17, 1, 8, 0, '2020-08-09', '', 'Mumbai', 0, '2020-07-27 15:07:06', '2020-07-27 15:07:06'),
(18, 7, 4, 0, '2020-08-09', '', 'Rajasthan', 0, '2020-07-27 15:07:06', '2020-07-27 15:07:06'),
(19, 6, 3, 0, '2020-08-10', '', 'Kolkata', 0, '2020-07-27 15:07:06', '2020-07-27 15:07:06'),
(20, 5, 2, 0, '2020-08-11', '', 'Punjab', 0, '2020-07-27 15:07:06', '2020-07-27 15:07:06'),
(21, 1, 7, 0, '2020-08-12', '', 'Mumbai', 0, '2020-07-27 15:07:06', '2020-07-27 15:07:06'),
(22, 6, 8, 0, '2020-08-13', '', 'Kolkata', 0, '2020-07-27 15:07:06', '2020-07-27 15:07:06'),
(23, 5, 4, 0, '2020-08-14', '', 'Punjab', 0, '2020-07-27 15:07:06', '2020-07-27 15:07:06'),
(24, 2, 3, 0, '2020-08-15', '', 'Chennai', 0, '2020-07-27 15:07:06', '2020-07-27 15:07:06'),
(25, 1, 6, 0, '2020-08-15', '', 'Mumbai', 0, '2020-07-27 15:07:06', '2020-07-27 15:07:06'),
(26, 5, 7, 0, '2020-08-16', '', 'Punjab', 0, '2020-07-27 15:07:06', '2020-07-27 15:07:06'),
(27, 2, 8, 0, '2020-08-16', '', 'Chennai', 0, '2020-07-27 15:07:06', '2020-07-27 15:07:06'),
(28, 3, 4, 0, '2020-08-17', '', 'Bangalore', 0, '2020-07-27 15:07:06', '2020-07-27 15:07:06'),
(29, 1, 5, 0, '2020-08-18', '', 'Punjab', 0, '2020-07-27 15:07:07', '2020-07-27 15:07:07'),
(30, 2, 6, 0, '2020-08-19', '', 'Kolkata', 0, '2020-07-27 15:07:07', '2020-07-27 15:07:07'),
(31, 3, 7, 0, '2020-08-20', '', 'Rajasthan', 0, '2020-07-27 15:07:07', '2020-07-27 15:07:07'),
(32, 4, 8, 0, '2020-08-21', '', 'Hyderabad', 0, '2020-07-27 15:07:07', '2020-07-27 15:07:07'),
(33, 1, 2, 0, '2020-08-22', '', 'Chennai', 0, '2020-07-27 15:07:07', '2020-07-27 15:07:07'),
(34, 3, 5, 0, '2020-08-22', '', 'Punjab', 0, '2020-07-27 15:07:07', '2020-07-27 15:07:07'),
(35, 4, 6, 0, '2020-08-23', '', 'Kolkata', 0, '2020-07-27 15:07:07', '2020-07-27 15:07:07'),
(36, 8, 7, 0, '2020-08-23', '', 'Rajasthan', 0, '2020-07-27 15:07:08', '2020-07-27 15:07:08'),
(37, 1, 3, 0, '2020-08-24', '', 'Bangalore', 0, '2020-07-27 15:07:08', '2020-07-27 15:07:08'),
(38, 4, 2, 0, '2020-08-25', '', 'Chennai', 0, '2020-07-27 15:07:08', '2020-07-27 15:07:08'),
(39, 8, 5, 0, '2020-08-26', '', 'Punjab', 0, '2020-07-27 15:07:08', '2020-07-27 15:07:08'),
(40, 7, 6, 0, '2020-08-27', '', 'Kolkata', 0, '2020-07-27 15:07:08', '2020-07-27 15:07:08'),
(41, 1, 4, 0, '2020-08-28', '', 'Delhi', 0, '2020-07-27 15:07:08', '2020-07-27 15:07:08'),
(42, 8, 3, 0, '2020-08-29', '', 'Bangalore', 0, '2020-07-27 15:07:08', '2020-07-27 15:07:08'),
(43, 7, 2, 0, '2020-08-29', '', 'Chennai', 0, '2020-07-27 15:07:08', '2020-07-27 15:07:08'),
(44, 6, 5, 0, '2020-08-30', '', 'Punjab', 0, '2020-07-27 15:07:08', '2020-07-27 15:07:08'),
(45, 1, 8, 0, '2020-08-30', '', 'Hyderabad', 0, '2020-07-27 15:07:08', '2020-07-27 15:07:08'),
(46, 7, 4, 0, '2020-08-31', '', 'Delhi', 0, '2020-07-27 15:07:08', '2020-07-27 15:07:08'),
(47, 6, 3, 0, '2020-09-01', '', 'Bangalore', 0, '2020-07-27 15:07:08', '2020-07-27 15:07:08'),
(48, 5, 2, 0, '2020-09-02', '', 'Chennai', 0, '2020-07-27 15:07:08', '2020-07-27 15:07:08'),
(49, 1, 7, 0, '2020-09-03', '', 'Rajasthan', 0, '2020-07-27 15:07:08', '2020-07-27 15:07:08'),
(50, 6, 8, 0, '2020-09-04', '', 'Hyderabad', 0, '2020-07-27 15:07:08', '2020-07-27 15:07:08'),
(51, 5, 4, 0, '2020-09-05', '', 'Delhi', 0, '2020-07-27 15:07:08', '2020-07-27 15:07:08'),
(52, 2, 3, 0, '2020-09-05', '', 'Bangalore', 0, '2020-07-27 15:07:08', '2020-07-27 15:07:08'),
(53, 1, 6, 0, '2020-09-06', '', 'Kolkata', 0, '2020-07-27 15:07:09', '2020-07-27 15:07:09'),
(54, 5, 7, 0, '2020-09-06', '', 'Rajasthan', 0, '2020-07-27 15:07:09', '2020-07-27 15:07:09'),
(55, 2, 8, 0, '2020-09-07', '', 'Hyderabad', 0, '2020-07-27 15:07:09', '2020-07-27 15:07:09'),
(56, 3, 4, 0, '2020-09-08', '', 'Delhi', 0, '2020-07-27 15:07:09', '2020-07-27 15:07:09');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(25, '2020_07_26_085707_create_teams_table', 2),
(26, '2020_07_26_085729_create_players_table', 2),
(27, '2020_07_26_085806_create_player_histories_table', 2),
(28, '2020_07_26_085833_create_matches_table', 2),
(29, '2020_07_26_085852_create_stadiums_table', 2),
(30, '2020_07_26_085923_create_points_table', 2),
(31, '2020_07_26_085947_create_countries_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageuri` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jerseyno` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `team_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `first_name`, `last_name`, `imageuri`, `jerseyno`, `country`, `team_id`, `created_at`, `updated_at`) VALUES
(1, 'Virat', 'Kohli', 'images/players/1595882452png', '10', 'India', 1, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(2, 'AB de', 'Villiers', 'images/players/1595882452png', '10', 'India', 1, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(3, 'Devdutt', 'Padikkal', 'images/players/1595882452png', '10', 'India', 1, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(4, 'Gurkeerat', 'Singh', 'images/players/1595882452png', '10', 'India', 1, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(5, 'Aaron', 'Finch', 'images/players/1595882452png', '10', 'India', 1, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(6, 'Shahbaz', 'Ahamad', 'images/players/1595882452png', '10', 'India', 1, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(7, 'Joshua', 'Philippe', 'images/players/1595882452png', '10', 'India', 1, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(8, 'Pathiv', 'Patel', 'images/players/1595882452png', '10', 'India', 1, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(9, 'Pawan', 'Negi', 'images/players/1595882452png', '10', 'India', 1, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(10, 'Shivam', 'Dube', 'images/players/1595882452png', '10', 'India', 1, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(11, 'Moeen', 'Ali', 'images/players/1595882452png', '10', 'India', 1, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(12, 'Isuru', 'Udana', 'images/players/1595882452png', '10', 'India', 1, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(13, 'Pavan', 'Deshpande', 'images/players/1595882452png', '10', 'India', 1, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(14, 'Christopher', 'Morris', 'images/players/1595882452png', '10', 'India', 1, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(15, 'Kane', 'Richardson', 'images/players/1595882452png', '10', 'India', 1, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(16, 'Dale', 'Steyn', 'images/players/1595882452png', '10', 'India', 1, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(17, 'Mohammaed', 'Siraj', 'images/players/1595882452png', '10', 'India', 1, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(18, 'Navdeep', 'Saini', 'images/players/1595882452png', '10', 'India', 1, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(19, 'Umesh', 'Yadav', 'images/players/1595882452png', '10', 'India', 1, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(20, 'Washington', 'Sundar', 'images/players/1595882452png', '10', 'India', 1, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(21, 'Yuzvendra', 'Chahal', 'images/players/1595882452png', '10', 'India', 2, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(22, 'Rohit', 'Sharma', 'images/players/1595882452png', '10', 'India', 2, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(23, 'Anmolpreet', 'Singh', 'images/players/1595882452png', '10', 'India', 2, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(24, 'Ankul', 'Roy', 'images/players/1595882452png', '10', 'India', 2, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(25, 'Sherfane', 'Rutherford', 'images/players/1595882452png', '10', 'India', 2, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(26, 'Suryakumar', 'Yadav', 'images/players/1595882452png', '10', 'India', 2, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(27, 'Chris', 'Lynn', 'images/players/1595882452png', '10', 'India', 2, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(28, 'Saurabh', 'Tiwary', 'images/players/1595882452png', '10', 'India', 2, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(29, 'Aditya', 'Tare', 'images/players/1595882452png', '10', 'India', 2, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(30, 'Ishan', 'Kishan', 'images/players/1595882452png', '10', 'India', 2, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(31, 'Quinton de', 'Kock', 'images/players/1595882452png', '10', 'India', 2, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(32, 'Hardik', 'Pandya', 'images/players/1595882452png', '10', 'India', 2, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(33, 'Kieron', 'Pollard', 'images/players/1595882452png', '10', 'India', 2, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(34, 'Krunal', 'Pandya', 'images/players/1595882452png', '10', 'India', 2, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(35, 'Rahul', 'Chahar', 'images/players/1595882452png', '10', 'India', 2, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(36, 'Digvijay', 'Deshmukh', 'images/players/1595882452png', '10', 'India', 2, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(37, 'Prince Balwant Rai', 'Singh', 'images/players/1595882452png', '10', 'India', 2, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(38, 'Dhawal', 'Kulkarni', 'images/players/1595882452png', '10', 'India', 2, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(39, 'Jasprit', 'Bumrah', 'images/players/1595882452png', '10', 'India', 2, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(40, 'Jayant', 'Yadav', 'images/players/1595882452png', '10', 'India', 2, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(41, 'Lasith', 'Malinga', 'images/players/1595882452png', '10', 'India', 3, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(42, 'Mitchell', 'McClenaghan', 'images/players/1595882452png', '10', 'India', 3, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(43, 'Trent', 'Boult', 'images/players/1595882452png', '10', 'India', 3, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(44, 'Nathan', 'Coulter-Nile', 'images/players/1595882452png', '10', 'India', 3, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(45, 'Mohsin', 'Khan', 'images/players/1595882452png', '10', 'India', 3, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(46, 'Ambati', 'Rayadu', 'images/players/1595882452png', '10', 'India', 3, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(47, 'Monu', 'Singh', 'images/players/1595882452png', '10', 'India', 3, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(48, 'Murali', 'Vijay', 'images/players/1595882452png', '10', 'India', 3, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(49, 'Ruturaj', 'Gaikwad', 'images/players/1595882452png', '10', 'India', 3, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(50, 'Suresh', 'Raina', 'images/players/1595882452png', '10', 'India', 3, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(51, 'MS', 'Dhoni', 'images/players/1595882452png', '10', 'India', 3, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(52, 'Jagadeesan', 'Narayan', 'images/players/1595882452png', '10', 'India', 3, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(53, 'Asif', 'K M', 'images/players/1595882452png', '10', 'India', 3, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(54, 'Dwayne', 'Bravo', 'images/players/1595882452png', '10', 'India', 3, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(55, 'Faf du', 'Plessis', 'images/players/1595882452png', '10', 'India', 3, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(56, 'Karn', 'Sharma', 'images/players/1595882452png', '10', 'India', 3, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(57, 'Kedar', 'Jadhav', 'images/players/1595882452png', '10', 'India', 3, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(58, 'Ravindra', 'jadeja', 'images/players/1595882452png', '10', 'India', 3, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(59, 'Shane', 'Watson', 'images/players/1595882452png', '10', 'India', 3, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(60, 'Sam', 'Curran', 'images/players/1595882452png', '10', 'India', 3, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(61, 'Deepak', 'Chahar', 'images/players/1595882452png', '10', 'India', 4, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(62, 'Harbhajan', 'Singh', 'images/players/1595882452png', '10', 'India', 4, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(63, 'Imran', 'Tahir', 'images/players/1595882452png', '10', 'India', 4, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(64, 'Lungisani', 'Ngidi', 'images/players/1595882452png', '10', 'India', 4, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(65, 'Mitchell', 'Santner', 'images/players/1595882452png', '10', 'India', 4, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(66, 'Shardul', 'Thakur', 'images/players/1595882452png', '10', 'India', 4, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(67, 'Piyush', 'Chawla', 'images/players/1595882452png', '10', 'India', 4, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(68, 'Josh', 'Hazlewood', 'images/players/1595882452png', '10', 'India', 4, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(69, 'R. Sai', 'Kishore', 'images/players/1595882452png', '10', 'India', 4, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(70, 'Shreyas', 'Iyer', 'images/players/1595882452png', '10', 'India', 4, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(71, 'Ajinkya', 'Rahane', 'images/players/1595882452png', '10', 'India', 4, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(72, 'Keemo', 'Paul', 'images/players/1595882452png', '10', 'India', 4, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(73, 'Prithvi', 'Shaw', 'images/players/1595882452png', '10', 'India', 4, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(74, 'Shikhar', 'Dhawan', 'images/players/1595882452png', '10', 'India', 4, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(75, 'Shimron', 'Heymyer', 'images/players/1595882452png', '10', 'India', 4, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(76, 'Jason', 'Roy', 'images/players/1595882452png', '10', 'India', 4, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(77, 'Rishabh', 'Pant', 'images/players/1595882452png', '10', 'India', 4, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(78, 'Alex', 'Carey', 'images/players/1595882452png', '10', 'India', 4, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(79, 'Marcus', 'Stoinis', 'images/players/1595882452png', '10', 'India', 4, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(80, 'Lalit', 'Yadav', 'images/players/1595882452png', '10', 'India', 4, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(81, 'Chris', 'Woakes', 'images/players/1595882452png', '10', 'India', 5, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(82, 'Avesh', 'Khan', 'images/players/1595882452png', '10', 'India', 5, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(83, 'Ravichandran', 'Ashwin', 'images/players/1595882452png', '10', 'India', 5, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(84, 'Sandeep', 'Lamichhane', 'images/players/1595882452png', '10', 'India', 5, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(85, 'Axax', 'Patel', 'images/players/1595882452png', '10', 'India', 5, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(86, 'Harshal', 'Patel', 'images/players/1595882452png', '10', 'India', 5, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(87, 'Ishant', 'Sharma', 'images/players/1595882452png', '10', 'India', 5, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(88, 'Kagiso', 'Rabada', 'images/players/1595882452png', '10', 'India', 5, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(89, 'Mohit', 'Sharma', 'images/players/1595882452png', '10', 'India', 5, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(90, 'Tushar', 'Deshpande', 'images/players/1595882452png', '10', 'India', 5, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(91, 'Amit', 'Mishra', 'images/players/1595882452png', '10', 'India', 5, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(92, 'Karun', 'Nair', 'images/players/1595882452png', '10', 'India', 5, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(93, 'Arshdeep', 'Singh', 'images/players/1595882452png', '10', 'India', 5, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(94, 'Chris', 'Gayle', 'images/players/1595882452png', '10', 'India', 5, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(95, 'Darshan', 'Nalkande', 'images/players/1595882452png', '10', 'India', 5, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(96, 'Gowtham', 'Krishnappa', 'images/players/1595882452png', '10', 'India', 5, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(97, 'Hardus', 'Viljoen', 'images/players/1595882452png', '10', 'India', 5, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(98, 'Harpreet', 'Brar', 'images/players/1595882452png', '10', 'India', 5, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(99, 'Mayank', 'Agarwal', 'images/players/1595882452png', '10', 'India', 5, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(100, 'Nicholas', 'Pooran', 'images/players/1595882452png', '10', 'India', 5, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(101, 'Sarfaraz', 'Khan', 'images/players/1595882452png', '10', 'India', 6, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(102, 'Prabhsimran', 'Singh', 'images/players/1595882452png', '10', 'India', 6, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(103, 'KL', 'Rahul', 'images/players/1595882452png', '10', 'India', 6, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(104, 'Mandeep', 'Singh', 'images/players/1595882452png', '10', 'India', 6, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(105, 'Glenn', 'Maxwell', 'images/players/1595882452png', '10', 'India', 6, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(106, 'Chris', 'Jordan', 'images/players/1595882452png', '10', 'India', 6, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(107, 'Deepak', 'Hooda', 'images/players/1595882452png', '10', 'India', 6, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(108, 'James', 'Neesham', 'images/players/1595882452png', '10', 'India', 6, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(109, 'Tajinder', 'Dhillon', 'images/players/1595882452png', '10', 'India', 6, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(110, 'Ishan', 'Porel', 'images/players/1595882452png', '10', 'India', 6, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(111, 'Jagadeesha', 'Suchith', 'images/players/1595882452png', '10', 'India', 6, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(112, 'Mohammad', 'Shami', 'images/players/1595882452png', '10', 'India', 6, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(113, 'Ravi', 'Bishnoi', 'images/players/1595882452png', '10', 'India', 6, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(114, 'Sheldon', 'Cottrell', 'images/players/1595882452png', '10', 'India', 6, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(115, 'Murugan', 'Ashwin', 'images/players/1595882452png', '10', 'India', 6, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(116, 'Andre', 'Russell', 'images/players/1595882452png', '10', 'India', 6, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(117, 'Harry', 'Gurney', 'images/players/1595882452png', '10', 'India', 6, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(118, 'Kamlesh', 'Nagarkoti', 'images/players/1595882452png', '10', 'India', 6, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(119, 'Lockie', 'Ferguson', 'images/players/1595882452png', '10', 'India', 6, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(120, 'Nitish', 'Rana', 'images/players/1595882452png', '10', 'India', 6, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(121, 'Prasidh', 'Krishna', 'images/players/1595882452png', '10', 'India', 7, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(122, 'Rinku', 'Singh', 'images/players/1595882452png', '10', 'India', 7, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(123, 'Shubham', 'Gill', 'images/players/1595882452png', '10', 'India', 7, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(124, 'Siddhesh', 'Lad', 'images/players/1595882452png', '10', 'India', 7, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(125, 'Eoin', 'Morgan', 'images/players/1595882452png', '10', 'India', 7, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(126, 'Tom', 'Banton', 'images/players/1595882452png', '10', 'India', 7, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(127, 'Rahul', 'Tripathi', 'images/players/1595882452png', '10', 'India', 7, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(128, 'Dinesh', 'Karthik', 'images/players/1595882452png', '10', 'India', 7, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(129, 'Nikhil', 'Shankar Naik', 'images/players/1595882452png', '10', 'India', 7, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(130, 'Sunil', 'Narine', 'images/players/1595882452png', '10', 'India', 7, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(131, 'Pat', 'Cummins', 'images/players/1595882452png', '10', 'India', 7, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(132, 'Shivam', 'Mavi', 'images/players/1595882452png', '10', 'India', 7, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(133, 'Varun', 'Chakaravarthy', 'images/players/1595882452png', '10', 'India', 7, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(134, 'Chris', 'Green', 'images/players/1595882452png', '10', 'India', 7, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(135, 'Kuldeep', 'Yadav', 'images/players/1595882452png', '10', 'India', 7, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(136, 'Sandeep', 'Warrier', 'images/players/1595882452png', '10', 'India', 7, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(137, 'Pravin', 'Tambe', 'images/players/1595882452png', '10', 'India', 7, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(138, 'M', 'Siddharth', 'images/players/1595882452png', '10', 'India', 7, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(139, 'Riyan', 'Parag', 'images/players/1595882452png', '10', 'India', 7, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(140, 'Shashank', 'Singh', 'images/players/1595882452png', '10', 'India', 7, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(141, 'Steve', 'Smith', 'images/players/1595882452png', '10', 'India', 8, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(142, 'Robin', 'Uthappa', 'images/players/1595882452png', '10', 'India', 8, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(143, 'David', 'Miller', 'images/players/1595882452png', '10', 'India', 8, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(144, 'Manan', 'Vohra', 'images/players/1595882452png', '10', 'India', 8, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(145, 'Jos', 'Butler', 'images/players/1595882452png', '10', 'India', 8, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(146, 'Sanju', 'Samson', 'images/players/1595882452png', '10', 'India', 8, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(147, 'Anuj', 'Rawat', 'images/players/1595882452png', '10', 'India', 8, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(148, 'Ben', 'Stokes', 'images/players/1595882452png', '10', 'India', 8, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(149, 'Mahipal', 'Lomror', 'images/players/1595882452png', '10', 'India', 8, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(150, 'Shreyas', 'Gopal', 'images/players/1595882452png', '10', 'India', 8, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(151, 'Yashasvi', 'Jaiswal', 'images/players/1595882452png', '10', 'India', 8, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(152, 'Tom', 'Curran', 'images/players/1595882452png', '10', 'India', 8, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(153, 'Ankit', 'Rajpoot', 'images/players/1595882452png', '10', 'India', 8, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(154, 'Jofra', 'Archer', 'images/players/1595882452png', '10', 'India', 8, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(155, 'Mayank', 'Markande', 'images/players/1595882452png', '10', 'India', 8, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(156, 'Rahul', 'Tewatia', 'images/players/1595882452png', '10', 'India', 8, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(157, 'Varun', 'Aaron', 'images/players/1595882452png', '10', 'India', 8, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(158, 'Jaydev', 'Unadkat', 'images/players/1595882452png', '10', 'India', 8, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(159, 'Kartik', 'Tyagi', 'images/players/1595882452png', '10', 'India', 8, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(160, 'Andrew', 'Tye', 'images/players/1595882452png', '10', 'India', 8, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(161, 'Oshane', 'Thomas', 'images/players/1595882452png', '10', 'India', 1, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(162, 'Anirudha Ashok', 'Joshi', 'images/players/1595882452png', '10', 'India', 1, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(163, 'Akash', 'Singh', 'images/players/1595882452png', '10', 'India', 1, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(164, 'Kane', 'Williamson', 'images/players/1595882452png', '10', 'India', 1, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(165, 'Abhishek', 'Sharma', 'images/players/1595882452png', '10', 'India', 1, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(166, 'David', 'Warner', 'images/players/1595882452png', '10', 'India', 1, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(167, 'Manish', 'Pandey', 'images/players/1595882452png', '10', 'India', 1, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(168, 'Priyam', 'Garg', 'images/players/1595882452png', '10', 'India', 1, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(169, 'Virat', 'Singh', 'images/players/1595882452png', '10', 'India', 1, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(170, 'Jonny', 'Bairstow', 'images/players/1595882452png', '10', 'India', 1, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(171, 'Shreevats', 'Goswami', 'images/players/1595882452png', '10', 'India', 1, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(172, 'Wridhhiman', 'Saha', 'images/players/1595882452png', '10', 'India', 1, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(173, 'Vijay', 'Shankar', 'images/players/1595882452png', '10', 'India', 1, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(174, 'Mitchell', 'Marsh', 'images/players/1595882452png', '10', 'India', 1, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(175, 'Mohammad', 'Nabi', 'images/players/1595882452png', '10', 'India', 1, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(176, 'Fabian', 'Allen', 'images/players/1595882452png', '10', 'India', 1, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(177, 'Sandeep', 'Bavanaka', 'images/players/1595882452png', '10', 'India', 1, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(178, 'Sanjay', 'Yadav', 'images/players/1595882452png', '10', 'India', 1, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(179, 'Abdul', 'Samad', 'images/players/1595882452png', '10', 'India', 1, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(180, 'Basil', 'Thampi', 'images/players/1595882452png', '10', 'India', 1, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(181, 'Bhuvneshwar', 'Kumar', 'images/players/1595882452png', '10', 'India', 1, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(182, 'Billy', 'Stanlake', 'images/players/1595882452png', '10', 'India', 1, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(183, 'Rashid', 'Khan', 'images/players/1595882452png', '10', 'India', 1, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(184, 'Sandeep', 'Sharma', 'images/players/1595882452png', '10', 'India', 1, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(185, 'Shahbaz', 'Nadeem', 'images/players/1595882452png', '10', 'India', 1, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(186, 'Siddarth', 'Kaul', 'images/players/1595882452png', '10', 'India', 1, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(187, 'Syed Khaleel', 'Ahmed', 'images/players/1595882452png', '10', 'India', 1, '2020-07-27 09:40:52', '2020-07-27 09:40:52'),
(188, 'T', 'Natarajan', 'images/players/1595882452png', '10', 'India', 1, '2020-07-27 09:40:52', '2020-07-27 09:40:52');

-- --------------------------------------------------------

--
-- Table structure for table `player_histories`
--

CREATE TABLE `player_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `player_id` int(11) NOT NULL,
  `maches` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `runs` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `highest_score` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fifties` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hundreds` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `points`
--

CREATE TABLE `points` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` int(11) NOT NULL,
  `no_of_matches` int(11) NOT NULL,
  `win` int(11) NOT NULL,
  `loss` int(11) NOT NULL,
  `other` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `avg` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `points`
--

INSERT INTO `points` (`id`, `team_id`, `no_of_matches`, `win`, `loss`, `other`, `points`, `avg`, `created_at`, `updated_at`) VALUES
(1, 1, 14, 0, 0, 0, 0, 0, '2020-07-27 15:07:10', '2020-07-27 15:07:10'),
(2, 2, 14, 0, 0, 0, 0, 0, '2020-07-27 15:07:10', '2020-07-27 15:07:10'),
(3, 3, 14, 0, 0, 0, 0, 0, '2020-07-27 15:07:10', '2020-07-27 15:07:10'),
(4, 4, 14, 0, 0, 0, 0, 0, '2020-07-27 15:07:10', '2020-07-27 15:07:10'),
(5, 5, 14, 0, 0, 0, 0, 0, '2020-07-27 15:07:10', '2020-07-27 15:07:10'),
(6, 6, 14, 0, 0, 0, 0, 0, '2020-07-27 15:07:10', '2020-07-27 15:07:10'),
(7, 7, 14, 0, 0, 0, 0, 0, '2020-07-27 15:07:10', '2020-07-27 15:07:10'),
(8, 8, 14, 0, 0, 0, 0, 0, '2020-07-27 15:07:10', '2020-07-27 15:07:10');

-- --------------------------------------------------------

--
-- Table structure for table `stadiums`
--

CREATE TABLE `stadiums` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `std_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cpacity` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `team_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `team_logo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `clube_state` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `team_captain` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `team_name`, `team_code`, `team_logo`, `clube_state`, `team_captain`, `created_at`, `updated_at`) VALUES
(1, 'Mumbai Indians', 'MI', 'images/Mumbai Indians_logo.jpeg', 'Mumbai', '', '2020-07-27 05:26:49', '2020-07-27 05:26:49'),
(2, 'Chennai Super Kings', 'CSK', 'images/Chennai Super Kings_logo.jpeg', 'Chennai', '', '2020-07-27 05:27:21', '2020-07-27 05:27:21'),
(3, 'Royal Challengers Bangalore', 'RCB', 'images/Royal Challengers Bangalore_logo.jpeg', 'Bangalore', '', '2020-07-27 05:27:52', '2020-07-27 05:27:52'),
(4, 'Delhi Capitals', 'DC', 'images/Delhi Capitals_logo.jpeg', 'Delhi', '', '2020-07-27 05:30:19', '2020-07-27 05:30:19'),
(5, 'Kings XI Punjab', 'KXIP', 'images/Kings XI Punjab_logo.jpeg', 'Punjab', '', '2020-07-27 05:31:33', '2020-07-27 05:31:33'),
(6, 'Kolkata Knight Riders', 'KKR', 'images/Kolkata Knight Riders_logo.jpeg', 'Kolkata', '', '2020-07-27 05:32:46', '2020-07-27 05:32:46'),
(7, 'Rajasthan Royals', 'RR', 'images/Rajasthan Royals_logo.jpeg', 'Rajasthan', '', '2020-07-27 05:34:10', '2020-07-27 05:34:10'),
(8, 'Sunrisers Hyderabad', 'SRH', 'images/Sunrisers Hyderabad_logo.jpeg', 'Hyderabad', '', '2020-07-27 05:34:58', '2020-07-27 05:34:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'npladmin', 'npladmin@test.com', NULL, '$2y$10$VwtX8ys78oobVJsKlz9cYOy/gi5pDKzV4y2LroEHcof.7mqHY5mCq', NULL, '2020-07-26 03:04:56', '2020-07-26 03:04:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `player_histories`
--
ALTER TABLE `player_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `points`
--
ALTER TABLE `points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stadiums`
--
ALTER TABLE `stadiums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `matches`
--
ALTER TABLE `matches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT for table `player_histories`
--
ALTER TABLE `player_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `points`
--
ALTER TABLE `points`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `stadiums`
--
ALTER TABLE `stadiums`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
