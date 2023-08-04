-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2023 at 04:04 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jasamarga`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(11, '2023_08_03_142403_create_ruas_table', 3),
(12, '2023_08_03_142510_create_ruas_coordinates_table', 3),
(15, '2014_10_12_000000_create_users_table', 4);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(7, 'App\\Models\\User', 1, 'user login', '1c9203cf5084810bc3f16e2949620e97c6805d10553fd3eda9c977ef40867234', '[\"*\"]', '2023-08-04 06:40:40', '2023-08-04 06:37:37', '2023-08-04 06:40:40');

-- --------------------------------------------------------

--
-- Table structure for table `ruas`
--

CREATE TABLE `ruas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ruas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `km_awal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `km_akhir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ruas`
--

INSERT INTO `ruas` (`id`, `ruas`, `km_awal`, `km_akhir`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, '400', '200', '200', NULL, NULL, NULL, '2023-08-03 17:01:51', NULL),
(3, '500', '200+50', '100+100', NULL, NULL, NULL, NULL, NULL),
(4, '800', '300+75', '250+200', NULL, NULL, NULL, NULL, NULL),
(5, '1000', '500+65', '350+200', NULL, NULL, NULL, NULL, NULL),
(6, '900', '500+99', '400+230', NULL, NULL, NULL, NULL, NULL),
(7, '500', '500+500', '400+400', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ruas_coordinates`
--

CREATE TABLE `ruas_coordinates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ruas_id` bigint(20) UNSIGNED NOT NULL,
  `coordinates` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ruas_coordinates`
--

INSERT INTO `ruas_coordinates` (`id`, `ruas_id`, `coordinates`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, 4, 'SE 6778 9', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `username`, `password`, `last_login`, `created_by`, `updated_by`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'dedik setiawan', 'dedik@gmail.com', 'dedik', '$2y$10$miIH1ZUQydd3N5RFvN1WAuw8icBSfXgD/OAHN1JCkOjAaivWiPdKi', '2023-08-04 09:41:26', NULL, NULL, NULL, NULL, '2023-08-04 09:41:26', NULL),
(2, 'dodi handoko', 'dodi@gmail.com', 'dodi', '$2y$10$VRQmhBV41rRplcpujHyiJ.pqGJUIesMwEbMpY/5m7DtYFlJq626xK', NULL, NULL, NULL, NULL, NULL, '2023-08-04 03:30:12', '2023-08-04 03:30:12'),
(3, 'roky gerung', 'roky@gmail.com', 'roky', '$2y$10$tafF6MCXrvDyd4n4N/qcWepkJva1yXpwX.aA3FLAO7OE2t6Ew5Xmi', NULL, NULL, NULL, NULL, NULL, '2023-08-04 03:42:58', '2023-08-04 03:42:58'),
(4, 'pramono anum', 'pramono@gmail.com', 'pramono', '$2y$10$zEQKKqOga0EYWtoyzAbJp.i9MAn38bKokCL0vofo5Ov7tfg3gxl4a', NULL, NULL, NULL, NULL, NULL, '2023-08-04 03:43:38', '2023-08-04 03:43:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `ruas`
--
ALTER TABLE `ruas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ruas_coordinates`
--
ALTER TABLE `ruas_coordinates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ruas_coordinates_ruas_id_foreign` (`ruas_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ruas`
--
ALTER TABLE `ruas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ruas_coordinates`
--
ALTER TABLE `ruas_coordinates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ruas_coordinates`
--
ALTER TABLE `ruas_coordinates`
  ADD CONSTRAINT `ruas_coordinates_ruas_id_foreign` FOREIGN KEY (`ruas_id`) REFERENCES `ruas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
