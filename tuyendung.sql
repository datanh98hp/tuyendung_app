-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 05, 2024 at 03:07 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tuyendung`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `location_headquarters` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hotline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hr_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zalo_profile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_profile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_tag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `experience`
--

CREATE TABLE `experience` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `experience`
--

INSERT INTO `experience` (`id`, `title`, `created_at`, `updated_at`) VALUES
(8, 'Chưa có kinh nghiệm', NULL, NULL),
(9, 'Dưới 1 năm', NULL, NULL),
(10, '1 năm', NULL, NULL),
(11, '2 năm', NULL, NULL),
(12, '3 năm', NULL, NULL),
(13, '4 năm', NULL, NULL),
(14, 'trên 5 năm', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_id` bigint UNSIGNED NOT NULL,
  `authorId` bigint UNSIGNED NOT NULL,
  `location_id` bigint UNSIGNED NOT NULL,
  `id_salary_range` bigint UNSIGNED NOT NULL,
  `experience_id` bigint UNSIGNED NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prioritized` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id` bigint UNSIGNED NOT NULL,
  `level_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id`, `level_name`, `created_at`, `updated_at`) VALUES
(1, 'Phổ thông', NULL, NULL),
(2, 'Cao đẳng', NULL, NULL),
(3, 'Đại học', NULL, NULL),
(4, 'Phổ thông', NULL, NULL),
(5, 'Cao đẳng', NULL, NULL),
(6, 'Đại học', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` bigint UNSIGNED NOT NULL,
  `tilte` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `tilte`, `code`) VALUES
(190, 'Thành phố Cần Thơ', '92'),
(191, 'Thành phố Đà Nẵng', '48'),
(192, 'Thành phố Hà Nội', '01'),
(193, 'Thành phố Hải Phòng', '31'),
(194, 'Thành phố Hồ Chí Minh', '79'),
(195, 'Tỉnh An Giang', '89'),
(196, 'Tỉnh Bà Rịa - Vũng Tàu', '77'),
(197, 'Tỉnh Bạc Liêu', '95'),
(198, 'Tỉnh Bắc Giang', '24'),
(199, 'Tỉnh Bắc Kạn', '06'),
(200, 'Tỉnh Bắc Ninh', '27'),
(201, 'Tỉnh Bến Tre', '83'),
(202, 'Tỉnh Bình Dương', '74'),
(203, 'Tỉnh Bình Định', '52'),
(204, 'Tỉnh Bình Phước', '70'),
(205, 'Tỉnh Bình Thuận', '60'),
(206, 'Tỉnh Cà Mau', '96'),
(207, 'Tỉnh Cao Bằng', '04'),
(208, 'Tỉnh Đắk Lắk', '66'),
(209, 'Tỉnh Đắk Nông', '67'),
(210, 'Tỉnh Điện Biên', '11'),
(211, 'Tỉnh Đồng Nai', '75'),
(212, 'Tỉnh Đồng Tháp', '87'),
(213, 'Tỉnh Gia Lai', '64'),
(214, 'Tỉnh Hà Giang', '02'),
(215, 'Tỉnh Hà Nam', '35'),
(216, 'Tỉnh Hà Tĩnh', '42'),
(217, 'Tỉnh Hải Dương', '30'),
(218, 'Tỉnh Hậu Giang', '93'),
(219, 'Tỉnh Hoà Bình', '17'),
(220, 'Tỉnh Hưng Yên', '33'),
(221, 'Tỉnh Khánh Hòa', '56'),
(222, 'Tỉnh Kiên Giang', '91'),
(223, 'Tỉnh Kon Tum', '62'),
(224, 'Tỉnh Lai Châu', '12'),
(225, 'Tỉnh Lạng Sơn', '20'),
(226, 'Tỉnh Lào Cai', '10'),
(227, 'Tỉnh Lâm Đồng', '68'),
(228, 'Tỉnh Long An', '80'),
(229, 'Tỉnh Nam Định', '36'),
(230, 'Tỉnh Nghệ An', '40'),
(231, 'Tỉnh Ninh Bình', '37'),
(232, 'Tỉnh Ninh Thuận', '58'),
(233, 'Tỉnh Phú Thọ', '25'),
(234, 'Tỉnh Phú Yên', '54'),
(235, 'Tỉnh Quảng Bình', '44'),
(236, 'Tỉnh Quảng Nam', '49'),
(237, 'Tỉnh Quảng Ngãi', '51'),
(238, 'Tỉnh Quảng Ninh', '22'),
(239, 'Tỉnh Quảng Trị', '45'),
(240, 'Tỉnh Sóc Trăng', '94'),
(241, 'Tỉnh Sơn La', '14'),
(242, 'Tỉnh Tây Ninh', '72'),
(243, 'Tỉnh Thái Bình', '34'),
(244, 'Tỉnh Thái Nguyên', '19'),
(245, 'Tỉnh Thanh Hóa', '38'),
(246, 'Tỉnh Thừa Thiên Huế', '46'),
(247, 'Tỉnh Tiền Giang', '82'),
(248, 'Tỉnh Trà Vinh', '84'),
(249, 'Tỉnh Tuyên Quang', '08'),
(250, 'Tỉnh Vĩnh Long', '86'),
(251, 'Tỉnh Vĩnh Phúc', '26'),
(252, 'Tỉnh Yên Bái', '15');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(13, '2014_10_12_000000_create_users_table', 1),
(14, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(15, '2019_08_19_000000_create_failed_jobs_table', 1),
(16, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(17, '2024_03_29_141334_create_tag_table', 1),
(18, '2024_03_29_141734_create_level_table', 1),
(19, '2024_03_29_141806_create_about_table', 1),
(20, '2024_04_02_161606_create_range_salary_table', 1),
(21, '2024_04_02_161729_create_location_table', 1),
(22, '2024_04_02_161929_create_experience_table', 1),
(23, '2024_04_02_161931_create_job_table', 1),
(24, '2024_04_02_161932_create_tag_in_job_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `range_salary`
--

CREATE TABLE `range_salary` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `range_salary`
--

INSERT INTO `range_salary` (`id`, `title`) VALUES
(1, 'Dưới 10 triệu'),
(2, '5 - 10 triệu'),
(3, '10 - 15 triệu'),
(4, '15 - 20 triệu'),
(5, '20 - 25 triệu'),
(6, '25 - 30 triệu'),
(7, 'Trên 30 triệu'),
(8, 'Dưới 10 triệu'),
(9, '5 - 10 triệu'),
(10, '10 - 15 triệu'),
(11, '15 - 20 triệu'),
(12, '20 - 25 triệu'),
(13, '25 - 30 triệu'),
(14, 'Trên 30 triệu');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tag_in_job`
--

CREATE TABLE `tag_in_job` (
  `job_id` bigint UNSIGNED NOT NULL,
  `tag_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_level_id_foreign` (`level_id`),
  ADD KEY `job_authorid_foreign` (`authorId`),
  ADD KEY `job_location_id_foreign` (`location_id`),
  ADD KEY `job_id_salary_range_foreign` (`id_salary_range`),
  ADD KEY `job_experience_id_foreign` (`experience_id`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `range_salary`
--
ALTER TABLE `range_salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag_in_job`
--
ALTER TABLE `tag_in_job`
  ADD KEY `tag_in_job_job_id_foreign` (`job_id`),
  ADD KEY `tag_in_job_tag_id_foreign` (`tag_id`);

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
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `experience`
--
ALTER TABLE `experience`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `range_salary`
--
ALTER TABLE `range_salary`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `job`
--
ALTER TABLE `job`
  ADD CONSTRAINT `job_authorid_foreign` FOREIGN KEY (`authorId`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `job_experience_id_foreign` FOREIGN KEY (`experience_id`) REFERENCES `experience` (`id`),
  ADD CONSTRAINT `job_id_salary_range_foreign` FOREIGN KEY (`id_salary_range`) REFERENCES `range_salary` (`id`),
  ADD CONSTRAINT `job_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `level` (`id`),
  ADD CONSTRAINT `job_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`);

--
-- Constraints for table `tag_in_job`
--
ALTER TABLE `tag_in_job`
  ADD CONSTRAINT `tag_in_job_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`),
  ADD CONSTRAINT `tag_in_job_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
