-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2020 at 04:19 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sppk_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `alternatif`
--

CREATE TABLE `alternatif` (
  `id` int(11) NOT NULL,
  `no_pendaftaran` bigint(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `usia` int(25) NOT NULL,
  `kategori_usia` varchar(255) NOT NULL,
  `pendidikan` varchar(50) NOT NULL,
  `dokumen` int(50) NOT NULL,
  `wawancara` varchar(255) NOT NULL,
  `pengalaman` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alternatif`
--

INSERT INTO `alternatif` (`id`, `no_pendaftaran`, `nama`, `no_telp`, `usia`, `kategori_usia`, `pendidikan`, `dokumen`, `wawancara`, `pengalaman`, `created_at`, `updated_at`) VALUES
(3, 2, 'Moh. Alfian Ferdiansyah', '083654321123', 20, '(Kategori Usia 1)', 'S1', 6, 'Cukup', 'Tidak Pernah', '2020-06-20 18:26:15', '2020-06-20 18:26:15'),
(4, 3, 'Ghana Muhammad Wahyu A.', '085465951357', 27, '(Kategori Usia 2)', 'D3', 5, 'Baik', '2 Kali', '2020-06-20 18:58:25', '2020-06-20 18:58:25');

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
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id` int(11) NOT NULL,
  `no_pendaftaran` bigint(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `usia` int(11) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id`, `no_pendaftaran`, `nama`, `alamat`, `gender`, `usia`, `no_telp`, `created_at`, `updated_at`) VALUES
(4, 2, 'Moh. Alfian Ferdiansyah', 'Jember', 'Laki-Laki', 20, '083654321123', '2020-06-20 02:32:42', '2020-06-20 02:32:42'),
(5, 3, 'Ghana Muhammad Wahyu A.', 'Madura', 'Laki-Laki', 27, '085465951357', '2020-06-20 18:57:50', '2020-06-20 18:57:50');

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE `kriteria` (
  `id` int(11) NOT NULL,
  `kode` varchar(25) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `atribut` varchar(200) NOT NULL,
  `bobot` int(25) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`id`, `kode`, `keterangan`, `atribut`, `bobot`, `created_at`, `updated_at`) VALUES
(1, 'k1', 'Tingkat Pendidikan', 'Benefit', 20, '2020-06-20 03:50:01', '2020-06-20 03:50:01'),
(2, 'k2', 'Usia', 'Cost', 10, '2020-06-20 03:50:30', '2020-06-20 03:50:30'),
(3, 'k3', 'Pengalaman', 'Benefit', 15, '2020-06-20 03:50:59', '2020-06-20 03:50:59'),
(4, 'k4', 'Kelengkapan Dokumen', 'Benefit', 25, '2020-06-20 03:51:24', '2020-06-20 03:51:24'),
(5, 'k5', 'Hasil Wawancara', 'Benefit', 30, '2020-06-20 03:51:49', '2020-06-20 03:51:49');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

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
-- Table structure for table `sub_kriteria`
--

CREATE TABLE `sub_kriteria` (
  `id` int(11) NOT NULL,
  `kode` varchar(25) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `atribut` varchar(200) NOT NULL,
  `nilai_min` int(11) DEFAULT NULL,
  `nilai_max` int(11) DEFAULT NULL,
  `kategori` varchar(255) DEFAULT NULL,
  `crips` varchar(255) NOT NULL DEFAULT '-',
  `bobot` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_kriteria`
--

INSERT INTO `sub_kriteria` (`id`, `kode`, `keterangan`, `atribut`, `nilai_min`, `nilai_max`, `kategori`, `crips`, `bobot`, `created_at`, `updated_at`) VALUES
(2, 'k1', 'Tingkat Pendidikan', 'Benefit', NULL, NULL, NULL, 'SMA', 25, '2020-06-20 06:35:20', '2020-06-20 06:35:20'),
(3, 'k1', 'Tingkat Pendidikan', 'Benefit', NULL, NULL, NULL, 'D2', 50, '2020-06-20 06:35:43', '2020-06-20 06:35:43'),
(4, 'k1', 'Tingkat Pendidikan', 'Benefit', NULL, NULL, NULL, 'D3', 75, '2020-06-20 06:36:01', '2020-06-20 06:36:01'),
(5, 'k1', 'Tingkat Pendidikan', 'Benefit', NULL, NULL, NULL, 'S1', 100, '2020-06-20 06:36:17', '2020-06-20 06:36:17'),
(8, 'k2', 'Usia', 'Cost', 17, 25, '(Kategori Usia 1)', '-', 20, '2020-06-20 06:40:42', '2020-06-20 06:40:42'),
(9, 'k2', 'Usia', 'Cost', 26, 30, '(Kategori Usia 2)', '-', 40, '2020-06-20 06:41:15', '2020-06-20 06:41:15'),
(10, 'k2', 'Usia', 'Cost', 31, 40, '(Kategori Usia 3)', '-', 60, '2020-06-20 06:41:39', '2020-06-20 06:41:39'),
(11, 'k2', 'Usia', 'Cost', 41, 50, '(Kategori Usia 4)', '-', 80, '2020-06-20 06:42:08', '2020-06-20 06:42:08'),
(12, 'k2', 'Usia', 'Cost', 51, 55, '(Kategori Usia 5)', '-', 100, '2020-06-20 06:42:40', '2020-06-20 06:42:40'),
(13, 'k3', 'Pengalaman', 'Benefit', NULL, NULL, NULL, 'Tidak Pernah', 20, '2020-06-20 06:43:14', '2020-06-20 06:43:14'),
(14, 'k3', 'Pengalaman', 'Benefit', NULL, NULL, NULL, '1 Kali', 40, '2020-06-20 06:43:41', '2020-06-20 06:43:41'),
(15, 'k3', 'Pengalaman', 'Benefit', NULL, NULL, NULL, '2 Kali', 60, '2020-06-20 06:44:07', '2020-06-20 06:44:07'),
(16, 'k3', 'Pengalaman', 'Benefit', NULL, NULL, NULL, '3 Kali', 80, '2020-06-20 06:44:27', '2020-06-20 06:44:27'),
(17, 'k3', 'Pengalaman', 'Benefit', NULL, NULL, NULL, '>3 kali', 100, '2020-06-20 06:44:44', '2020-06-20 06:44:44'),
(18, 'k4', 'Kelengkapan Dokumen', 'Benefit', NULL, NULL, NULL, '<4', 20, '2020-06-20 06:45:06', '2020-06-20 06:45:06'),
(19, 'k4', 'Kelengkapan Dokumen', 'Benefit', NULL, NULL, NULL, '4', 40, '2020-06-20 06:45:30', '2020-06-20 06:45:30'),
(20, 'k4', 'Kelengkapan Dokumen', 'Benefit', NULL, NULL, NULL, '5', 60, '2020-06-20 06:45:45', '2020-06-20 06:45:45'),
(21, 'k4', 'Kelengkapan Dokumen', 'Benefit', NULL, NULL, NULL, '6', 80, '2020-06-20 06:45:59', '2020-06-20 06:45:59'),
(22, 'k4', 'Kelengkapan Dokumen', 'Benefit', NULL, NULL, NULL, '7', 100, '2020-06-20 06:46:14', '2020-06-20 06:46:14'),
(23, 'k5', 'Hasil Wawancara', 'Benefit', NULL, NULL, NULL, 'Kurang', 25, '2020-06-20 06:46:38', '2020-06-20 06:46:38'),
(24, 'k5', 'Hasil Wawancara', 'Benefit', NULL, NULL, NULL, 'Cukup', 50, '2020-06-20 06:47:08', '2020-06-20 06:47:08'),
(25, 'k5', 'Hasil Wawancara', 'Benefit', NULL, NULL, NULL, 'Baik', 75, '2020-06-20 06:47:30', '2020-06-20 06:47:30'),
(26, 'k5', 'Hasil Wawancara', 'Benefit', NULL, NULL, NULL, 'Sangat Baik', 100, '2020-06-20 06:47:48', '2020-06-20 06:47:48');

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
(1, 'Nur Fadhilah', 'admin@gmail.com', NULL, '$2y$10$/sX7osVQcIRXzAQ/p.dTKeozA7D3Vkj0WGKogB7hQfTgHwRGVNZb6', NULL, '2020-06-20 01:36:23', '2020-06-20 01:36:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
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
-- Indexes for table `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
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
-- AUTO_INCREMENT for table `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
