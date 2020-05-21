-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2020 at 06:45 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `akses`
--

CREATE TABLE `akses` (
  `id_akses` varchar(4) NOT NULL,
  `keterangan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `akses`
--

INSERT INTO `akses` (`id_akses`, `keterangan`) VALUES
('1', 'admin'),
('2', 'siswa');

-- --------------------------------------------------------

--
-- Table structure for table `daftar_buku`
--

CREATE TABLE `daftar_buku` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode_buku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul_buku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar_buku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '.jpg',
  `file_buku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '.pdf',
  `kategori_buku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '1:IPA, 2:IPS, 3:BAHASA, 4:BUKU UJIAN, 5:LAINNYA',
  `pengarang_buku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penerbit_buku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_halaman` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `daftar_buku`
--

INSERT INTO `daftar_buku` (`id`, `kode_buku`, `judul_buku`, `gambar_buku`, `file_buku`, `kategori_buku`, `pengarang_buku`, `penerbit_buku`, `jumlah_halaman`) VALUES
(1, '1', 'tereliye', '.jpg', '.pdf', 'IPA', 'tereliye', 'bintang masa', 1302),
(2, 'BK-HUJANHTK6', 'Hujan', '.jpg', '.pdf', 'IPS', 'Tereliye', 'Tereliye', 1250);

-- --------------------------------------------------------

--
-- Table structure for table `daftar_user`
--

CREATE TABLE `daftar_user` (
  `user_id` int(10) NOT NULL,
  `id_akses` varchar(10) NOT NULL COMMENT '1:admin, 2:siswa',
  `Nama_lengkap` varchar(30) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `daftar_user`
--

INSERT INTO `daftar_user` (`user_id`, `id_akses`, `Nama_lengkap`, `Username`, `Password`) VALUES
(1, '1', 'nizelia', 'seliak', '123'),
(6, '1', 'nizelia', 'seliakuloo', '12345'),
(8, '2', 'viqih zamzami', 'ih', '123');

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
(1, '2018_01_01_035648_create_buku_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `peminjam`
--

CREATE TABLE `peminjam` (
  `nomor_kartu` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dari_tanggal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sampai_tanggal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_pengembalian` int(11) NOT NULL,
  `id` int(9) NOT NULL,
  `kode_buku` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `peminjam`
--

INSERT INTO `peminjam` (`nomor_kartu`, `dari_tanggal`, `sampai_tanggal`, `status_pengembalian`, `id`, `kode_buku`) VALUES
('test22', '05-01-2018', '15-01-2018', 1, 1, 'test1'),
('dfsdf', '05-01-2018', '19-01-2018', 1, 2, '324'),
('12', '06-01-2018', '18-01-2018', 1, 3, '12'),
('sadsa', '07-01-2018', '16-01-2018', 0, 4, 'sadsad');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akses`
--
ALTER TABLE `akses`
  ADD PRIMARY KEY (`id_akses`);

--
-- Indexes for table `daftar_buku`
--
ALTER TABLE `daftar_buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daftar_user`
--
ALTER TABLE `daftar_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peminjam`
--
ALTER TABLE `peminjam`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `daftar_buku`
--
ALTER TABLE `daftar_buku`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `daftar_user`
--
ALTER TABLE `daftar_user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `peminjam`
--
ALTER TABLE `peminjam`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
