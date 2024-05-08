-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2024 at 08:49 AM
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
-- Database: `sipegpdam`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensis`
--

CREATE TABLE `absensis` (
  `id_absensi` int(10) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `waktu_masuk` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `waktu_keluar` timestamp NULL DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `keterangan` enum('Masuk','Izin','Sakit','Cuti') NOT NULL,
  `id_pegawai` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `absensis`
--

INSERT INTO `absensis` (`id_absensi`, `tanggal`, `waktu_masuk`, `waktu_keluar`, `status`, `keterangan`, `id_pegawai`, `created_at`, `updated_at`) VALUES
(2, '2024-04-03', '2024-04-24 01:42:25', NULL, 'Online', 'Cuti', 1, '2024-04-23 18:40:43', '2024-04-23 18:40:43'),
(3, '2024-04-25', '2024-04-25 02:31:00', NULL, 'Offline', 'Masuk', 1, '2024-04-24 19:33:25', '2024-04-24 19:33:25');

-- --------------------------------------------------------

--
-- Table structure for table `cabangs`
--

CREATE TABLE `cabangs` (
  `id_cabang` int(10) UNSIGNED NOT NULL,
  `nama_cabang` varchar(50) NOT NULL,
  `latitude_cabang` double NOT NULL,
  `longitude_cabang` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cabangs`
--

INSERT INTO `cabangs` (`id_cabang`, `nama_cabang`, `latitude_cabang`, `longitude_cabang`, `created_at`, `updated_at`) VALUES
(1, 'Pulau Tengah', 0.9146, 100.4662, '2024-03-26 09:00:00', '2024-03-26 09:00:00'),
(2, 'Jujun', 0.9146, 100.4662, '2024-03-26 09:42:53', '2024-03-26 09:42:53'),
(3, 'Hiang', 0.9146, 100.4662, '2024-03-26 09:43:12', '2024-03-26 09:43:12');

-- --------------------------------------------------------

--
-- Table structure for table `cutis`
--

CREATE TABLE `cutis` (
  `id_cuti` int(10) UNSIGNED NOT NULL,
  `id_pegawai` int(10) UNSIGNED NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_selesai` date NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cutis`
--

INSERT INTO `cutis` (`id_cuti`, `id_pegawai`, `tanggal_mulai`, `tanggal_selesai`, `keterangan`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-04-27', '2024-04-30', 'Keluarga Meninggal', 'Menunggu', '2024-04-24 19:36:05', '2024-04-24 19:36:05');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gajis`
--

CREATE TABLE `gajis` (
  `id_gaji` int(10) UNSIGNED NOT NULL,
  `id_pegawai` int(10) UNSIGNED NOT NULL,
  `gaji_pokok` decimal(10,2) NOT NULL,
  `tunjangan_jabatan` decimal(10,2) NOT NULL,
  `tunjangan_anak` decimal(10,2) NOT NULL,
  `tunjangan_nikah` decimal(10,2) NOT NULL,
  `potongan` decimal(10,2) NOT NULL,
  `pajak` decimal(10,2) NOT NULL,
  `total_gaji` decimal(10,2) NOT NULL,
  `tanggal` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gajis`
--

INSERT INTO `gajis` (`id_gaji`, `id_pegawai`, `gaji_pokok`, `tunjangan_jabatan`, `tunjangan_anak`, `tunjangan_nikah`, `potongan`, `pajak`, `total_gaji`, `tanggal`, `created_at`, `updated_at`) VALUES
(5, 3, 46546.00, 1000000.00, 300000.00, 200000.00, 0.00, 185585.52, 1360960.48, '2024-03-28', '2024-03-27 19:55:19', '2024-03-27 19:55:19'),
(6, 3, 46546.00, 1000000.00, 300000.00, 200000.00, 0.00, 185585.52, 1360960.48, '2024-04-03', '2024-04-02 23:56:43', '2024-04-02 23:56:43'),
(7, 1, 1550000.00, 1000000.00, 300000.00, 200000.00, 100000.00, 354000.00, 2596000.00, '2024-04-03', '2024-04-02 23:58:29', '2024-04-02 23:58:29'),
(8, 1, 2030000.00, 2.00, 200000.00, 100000.00, 100000.00, 230000.00, 3000000.00, '2024-04-01', '2024-04-24 19:22:48', '2024-04-24 19:22:48');

-- --------------------------------------------------------

--
-- Table structure for table `jabatans`
--

CREATE TABLE `jabatans` (
  `id_jabatan` int(10) UNSIGNED NOT NULL,
  `nama_jabatan` varchar(30) NOT NULL,
  `tunjangan_jabatan` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jabatans`
--

INSERT INTO `jabatans` (`id_jabatan`, `nama_jabatan`, `tunjangan_jabatan`, `created_at`, `updated_at`) VALUES
(1, 'Staff', 1000000.00, '2024-03-26 08:59:51', '2024-03-26 08:59:51'),
(2, 'Kepala Cabang', 3000000.00, '2024-03-26 09:42:17', '2024-03-26 09:42:17'),
(3, 'Bendahara', 2500000.00, '2024-03-26 09:42:26', '2024-03-26 09:42:26'),
(4, 'Staff Lapangan', 1000000.00, '2024-03-26 09:42:35', '2024-03-26 09:42:35'),
(5, 'Satpam', 500000.00, '2024-03-26 09:42:42', '2024-03-26 09:42:42');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_03_23_163443_create_sessions_table', 1),
(6, '2024_03_05_122738_create_jabatans_table', 1),
(7, '2024_03_05_122739_create_cabangs_table', 1),
(8, '2024_03_05_122739_create_gajis_table', 1),
(9, '2024_03_05_122740_create_pegawais_table', 1),
(10, '2024_03_05_122808_create_absensis_table', 1),
(11, '2024_03_05_122831_create_pelanggans_table', 1),
(12, '2024_03_05_122836_create_cutis_table', 1),
(13, '2024_03_05_122841_create_pencatatans_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pegawais`
--

CREATE TABLE `pegawais` (
  `id_pegawai` int(10) UNSIGNED NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `jenis_kelamin` char(1) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `status_nikah` varchar(20) NOT NULL,
  `jumlah_anak` int(11) NOT NULL,
  `kantor_cabang` int(10) UNSIGNED NOT NULL,
  `jabatan` int(10) UNSIGNED NOT NULL,
  `gaji_pokok` double(10,2) NOT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pegawais`
--

INSERT INTO `pegawais` (`id_pegawai`, `nama_lengkap`, `jenis_kelamin`, `tgl_lahir`, `telepon`, `alamat`, `status_nikah`, `jumlah_anak`, `kantor_cabang`, `jabatan`, `gaji_pokok`, `foto`, `id_user`, `created_at`, `updated_at`) VALUES
(1, 'Fauzi Isyrin Apridal', 'L', '2024-03-26', '085840917368', 'Sijunjung', 'Menikah', 3, 1, 1, 1550000.00, 'F:\\Aplikasi\\xampp\\tmp\\php6962.tmp', 2, '2024-03-26 09:00:27', '2024-03-26 09:32:37'),
(4, 'Fauzi', 'L', '2003-07-21', '085266483527', 'Padang', 'Menikah', 2, 1, 1, 2030000.00, 'sakdahsf.png', 2, '2024-04-24 19:51:34', '2024-04-24 19:55:16');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggans`
--

CREATE TABLE `pelanggans` (
  `id_pelanggan` int(10) UNSIGNED NOT NULL,
  `nomor_pelanggan` varchar(16) NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `lingkup_cabang` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pelanggans`
--

INSERT INTO `pelanggans` (`id_pelanggan`, `nomor_pelanggan`, `nama_pelanggan`, `alamat`, `latitude`, `longitude`, `lingkup_cabang`, `created_at`, `updated_at`) VALUES
(1, '1501082107030001', 'Avenda', 'Pulau Tengah', -0.914562, 100.466188, 1, '2024-04-24 19:39:43', '2024-04-24 19:39:43');

-- --------------------------------------------------------

--
-- Table structure for table `pencatatans`
--

CREATE TABLE `pencatatans` (
  `id_pencatatan` int(10) UNSIGNED NOT NULL,
  `id_pelanggan` int(10) UNSIGNED NOT NULL,
  `meteran_lama` int(10) UNSIGNED NOT NULL,
  `meteran_baru` int(10) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `foto_meteran` varchar(50) NOT NULL,
  `id_pegawai` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pencatatans`
--

INSERT INTO `pencatatans` (`id_pencatatan`, `id_pelanggan`, `meteran_lama`, `meteran_baru`, `tanggal`, `foto_meteran`, `id_pegawai`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 231, '2024-05-01', 'poto.png', 1, '2024-04-24 19:50:36', '2024-04-24 19:50:36');

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
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('c6SUTXyyGLxvr39qFzy1tF1r3xnGsxuNelT0TPMt', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVVdOQXYxeVRURjNRSWhQUzI3OVBKeGRVRDR4ZXk3bk5CbzlvbFVkMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1715135982);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `hak_akses` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `hak_akses`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', '2024-03-26 08:58:50', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'super admin', 'KdFoXnFpg7BT7XQ62ae1oR99mbGOsForC9lOR8b0qD9a5fypGYyAPqS7MRv0', '2024-03-26 08:58:50', '2024-03-26 08:58:50'),
(2, 'fauziisyrin2320@gmail.com', NULL, '$2y$12$tEfK/0uuoQyVPd2dUkRmFuUPR2wFVyeAs26SdC.aTZiZUmZYfrokK', NULL, NULL, NULL, 'pegawai', NULL, '2024-03-26 08:59:38', '2024-03-26 08:59:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensis`
--
ALTER TABLE `absensis`
  ADD PRIMARY KEY (`id_absensi`);

--
-- Indexes for table `cabangs`
--
ALTER TABLE `cabangs`
  ADD PRIMARY KEY (`id_cabang`);

--
-- Indexes for table `cutis`
--
ALTER TABLE `cutis`
  ADD PRIMARY KEY (`id_cuti`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gajis`
--
ALTER TABLE `gajis`
  ADD PRIMARY KEY (`id_gaji`);

--
-- Indexes for table `jabatans`
--
ALTER TABLE `jabatans`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pegawais`
--
ALTER TABLE `pegawais`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `pelanggans`
--
ALTER TABLE `pelanggans`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `pencatatans`
--
ALTER TABLE `pencatatans`
  ADD PRIMARY KEY (`id_pencatatan`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `absensis`
--
ALTER TABLE `absensis`
  MODIFY `id_absensi` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cabangs`
--
ALTER TABLE `cabangs`
  MODIFY `id_cabang` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cutis`
--
ALTER TABLE `cutis`
  MODIFY `id_cuti` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gajis`
--
ALTER TABLE `gajis`
  MODIFY `id_gaji` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `jabatans`
--
ALTER TABLE `jabatans`
  MODIFY `id_jabatan` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pegawais`
--
ALTER TABLE `pegawais`
  MODIFY `id_pegawai` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pelanggans`
--
ALTER TABLE `pelanggans`
  MODIFY `id_pelanggan` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pencatatans`
--
ALTER TABLE `pencatatans`
  MODIFY `id_pencatatan` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
