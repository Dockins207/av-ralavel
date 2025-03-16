-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 18, 2023 at 02:23 PM
-- Server version: 10.3.39-MariaDB-cll-lve
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


-- --------------------------------------------------------

--
-- Table structure for table `bankdetails`
--

CREATE TABLE `bankdetails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_holder_name` varchar(255) NOT NULL,
  `mobile_no` varchar(255) NOT NULL,
  `upi_id` varchar(255) NOT NULL,
  `account_no` varchar(255) NOT NULL,
  `ifsc_code` varchar(255) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `barcode` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bankdetails`
--


-- --------------------------------------------------------

--
-- Table structure for table `bank_details`
--

CREATE TABLE `bank_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` varchar(255) NOT NULL,
  `bankname` varchar(255) DEFAULT NULL,
  `accountno` varchar(255) DEFAULT NULL,
  `ifsccode` varchar(255) DEFAULT NULL,
  `branchname` varchar(255) DEFAULT NULL,
  `upi_id` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bank_details`
--

-- --------------------------------------------------------

--
-- Table structure for table `gameresults`
--

CREATE TABLE `gameresults` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `result` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gameresults`
--



-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(22, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(23, '2022_11_30_150150_create_users_table', 1),
(24, '2022_11_30_165337_create_wallets_table', 1),
(25, '2022_11_30_185349_create_bank_details_table', 1),
(27, '2022_12_01_081706_create_withdarwals_table', 1),
(28, '2022_12_02_182742_create_settings_table', 1),
(29, '2022_12_05_153154_create_gameresults_table', 1),
(30, '2022_12_05_161546_create_userbits_table', 1),
(31, '2022_11_30_190556_create_transactions_table', 2),
(32, '2022_12_10_151942_create_bankdetails_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `category`, `value`, `status`, `created_at`, `updated_at`) VALUES
(1, 'game_status', '0', '1', NULL, '2023-08-18 08:53:27'),
(2, 'min_bet_amount', '10', '1', NULL, '2023-08-17 09:21:26'),
(3, 'max_bet_amount', '5000', '1', NULL, '2023-07-25 13:25:01'),
(4, 'initial_bonus', '50', '1', NULL, '2023-07-24 12:47:23'),
(5, 'min_withdrawal', '2000', '1', NULL, NULL),
(6, 'min_recharge', '100', '1', '2022-12-10 12:56:27', '2022-12-29 10:32:23'),
(7, 'start_range_game_timer', '10', '1', '2022-12-10 12:56:27', '2023-07-24 12:42:14'),
(8, 'end_range_game_timer', '32', '1', '2022-12-10 12:56:27', '2023-01-03 13:18:43'),
(9, 'level1commission', '1', '1', '2022-12-10 12:56:27', '2022-12-10 12:56:27'),
(10, 'level2commission', '1', '1', '2022-12-10 12:56:27', '2022-12-10 12:56:27'),
(11, 'level3commission', '1', '1', '2022-12-10 12:56:27', '2023-08-17 09:47:40'),
(12, 'game_start_time', '2023-07-26 04:28:33', '1', '2023-01-11 20:09:57', '2023-07-26 10:58:33'),
(13, 'game_between_time', '5000', '1', '2023-01-11 20:09:57', '2023-07-26 10:58:33'),
(14, 'Crashed_Time', '1.44', '1', '2023-01-11 20:09:57', '2023-08-18 08:09:15');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` varchar(255) NOT NULL,
  `platform` varchar(255) DEFAULT NULL,
  `transactionno` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `amount` varchar(255) NOT NULL,
  `amount_1` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--


-- --------------------------------------------------------

--
-- Table structure for table `userbits`
--

CREATE TABLE `userbits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `gameid` varchar(255) NOT NULL,
  `section_no` varchar(255) NOT NULL,
  `cashout_multiplier` varchar(20) DEFAULT '0',
  `status` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `userbits`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `promocode` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `isadmin` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `image`, `mobile`, `email`, `promocode`, `country`, `gender`, `currency`, `isadmin`, `password`, `status`, `created_at`, `updated_at`) VALUES
(50030, 'Admin -Panel', NULL, '9876543210', 'deysuresh@gmail.com', '112233', 'IN', 'male', '₹', '1', '$2y$10$tSWfhaj3AULynlUngdTry.qW9xXDZYQYrGvTc5p.WWGvsal0rfUDW', '1', '2023-06-08 19:05:23', '2023-07-15 13:22:17'),
(50031, 'Admin -Panel', NULL, '9981861595', 'admin@example.com', 'AA121212', 'IN', 'male', '₹', NULL, '$2y$10$tSWfhaj3AULynlUngdTry.qW9xXDZYQYrGvTc5p.WWGvsal0rfUDW', '1', '2023-06-08 19:07:29', '2023-06-08 19:07:29'),
(50032, 'divyani', NULL, '8765432177', 'kalyani@gmail.com', '50031', 'IN', 'female', '₹', NULL, '$2y$10$dvYH1loDOThFq6p4NdRbHeYlmJPWMzxUc/WXPWB7K6ejjGTKA7wMm', '1', '2023-07-16 07:16:35', '2023-07-16 07:16:35'),
(50033, 'neha', NULL, '6543216789', 'divyanidhakate123@gmail.com', NULL, 'IN', 'female', '₹', NULL, '$2y$10$wTtGuINMpFjz8FDNoFZjFOE1h1JtzzW3pG6XOtxD7v9rx.qw8BFvK', '1', '2023-07-17 06:41:14', '2023-07-17 06:41:14'),
(50034, 'kukki', NULL, '765432188', 'kukki123@gmail.com', NULL, 'IN', 'female', '₹', NULL, '$2y$10$JU9ktp/91QwDH/5TflMKBOhu.81gEW6eTOMdf8Gflap8UC9TX19jO', '1', '2023-07-17 09:39:15', '2023-07-17 09:39:15'),
(50035, 'Harshit Trivedi', NULL, '8604753802', 'bozerapp@gmail.com', NULL, 'IN', 'male', '₹', NULL, '$2y$10$BArQ9qrqcB2IApZSb.MThOSRNHmngdIbLi7s2ZpM3AgrSpJMnYcAe', '1', '2023-07-17 12:09:07', '2023-07-17 12:09:07'),
(50036, 'kanhiya kuamr', '/images/avtar/av-35.png', '7796375607', 'ashutosh@gmail.com', '50031', 'IN', 'male', '₹', NULL, '$2y$10$YPPpH0ygejSED/Er12XPWOb4B5yTrlRlpjYD1nYO8Q35XnpDihPdS', '1', '2023-07-25 13:40:28', '2023-07-25 13:40:28'),
(50037, 'huhukheckhec', NULL, '0123456789', 'fingerbaby2010@gmail.com', NULL, 'IN', 'male', '₹', NULL, '$2y$10$iGpXtVeKH0lAyJGxd9grbuIX0g8sH10BOap2lAupWFQPwb0T/VFlm', '1', '2023-07-28 03:47:27', '2023-07-28 03:47:27'),
(50038, 'ayush', NULL, '8528528520', 'demo@gmail.com', NULL, 'IN', 'male', '₹', NULL, '$2y$10$kkCtau4ig.LYrPmRzxFOm.a4KDgiqSsyYgNgX3RMl25b6UULElaEC', '1', '2023-07-31 17:57:48', '2023-07-31 17:57:48'),
(50039, 'Sahil Khan', NULL, '06006421841', 'farooqkhan72445@gmail.com', NULL, 'IN', 'male', '₹', NULL, '$2y$10$ampQpgaPxGAFNOp8Xe4abuJc65zT6KPl1g8n9dvphlpxXxpIxrJMC', '1', '2023-08-16 10:17:46', '2023-08-16 10:17:46');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallets`
--

-- --------------------------------------------------------

--
-- Table structure for table `withdarwals`
--

CREATE TABLE `withdarwals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_no` varchar(255) NOT NULL,
  `account_holder_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ifsc_code` varchar(255) NOT NULL,
  `upi_id` varchar(255) NOT NULL,
  `mobile_no` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bankdetails`
--
ALTER TABLE `bankdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_details`
--
ALTER TABLE `bank_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gameresults`
--
ALTER TABLE `gameresults`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userbits`
--
ALTER TABLE `userbits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdarwals`
--
ALTER TABLE `withdarwals`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bankdetails`
--
ALTER TABLE `bankdetails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bank_details`
--
ALTER TABLE `bank_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gameresults`
--
ALTER TABLE `gameresults`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=452;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `userbits`
--
ALTER TABLE `userbits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=321;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50040;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `withdarwals`
--
ALTER TABLE `withdarwals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
