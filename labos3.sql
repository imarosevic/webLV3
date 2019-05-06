-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 06, 2019 at 02:28 PM
-- Server version: 8.0.15
-- PHP Version: 7.1.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `labos3`
--

-- --------------------------------------------------------

--
-- Table structure for table `administration`
--

CREATE TABLE `administration` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `administration`
--

INSERT INTO `administration` (`id`, `user_id`, `project_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, NULL, NULL),
(2, NULL, 1, NULL, NULL),
(3, NULL, 1, NULL, NULL),
(4, NULL, 1, NULL, NULL),
(5, '1', 2, NULL, NULL),
(6, '1', 2, NULL, NULL);

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
(1, '2019_04_23_120125_create_users_table', 1),
(2, '2019_04_23_211120_create_projects_table', 1),
(3, '2019_04_30_075830_create_administration_table', 1),
(4, '2019_05_06_142049_create_projects_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `naziv_projekta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `opis_projekta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cijena_projekta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `obavljeni_poslovi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datum_pocetka` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `datum_zavrsetka` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `voditelj_projekta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `naziv_projekta`, `opis_projekta`, `cijena_projekta`, `obavljeni_poslovi`, `datum_pocetka`, `datum_zavrsetka`, `voditelj_projekta`, `created_at`, `updated_at`) VALUES
(1, 'obilacni', 'ifsjdfi', '23920 kn', 'sdjaisjod', '03.05.2019.', '05.07.2019.', 'ivan@gamil.com', NULL, NULL),
(2, 'Uvoz svinja za Kaufland, Konzum, Lidl i Plodine', 'od Pave Petričevića', '250 mlrd. kn', 'Šrot', '02.09.1995.', 'do kraja', 'hrvoje@gamil.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ivan', 'ivan@gamil.com', '$2y$10$tetRr6KYZxz7ByAzYAIiy.sz07OAI9y8dxIP.2sqFbLoogds/fIbK', NULL, '2019-05-06 12:10:11', '2019-05-06 12:10:11'),
(2, 'Hrvoje', 'hrvoje@gamil.com', '$2y$10$yNqgzqvDFOJgIfvGoortB.kJseYJGPAFuSXMK0b/sDS.RPIopn3n.', NULL, '2019-05-06 12:24:53', '2019-05-06 12:24:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administration`
--
ALTER TABLE `administration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administration`
--
ALTER TABLE `administration`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
