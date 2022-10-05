-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2021 at 12:53 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tiket_bus`
--

-- --------------------------------------------------------

--
-- Table structure for table `daftar_akun`
--

CREATE TABLE `daftar_akun` (
  `id` int(150) NOT NULL,
  `nama_lengkap` varchar(200) NOT NULL,
  `TTL` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `No_HP` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `daftar_akun`
--

INSERT INTO `daftar_akun` (`id`, `nama_lengkap`, `TTL`, `jenis_kelamin`, `alamat`, `No_HP`, `email`, `password`) VALUES
(1, 'Amid Rakhman', 'Kebumen, 1 Januari 1999', 'Laki-laki', 'Karawang', '081288889999', 'amid@gmail.com', '123456'),
(9, 'Muhammad Eko Romadhon', 'Gunungkidul, 23 Maret 2001', 'Laki - laki', 'Karawang', '081888999222', 'eko@gmail.com', '54321'),
(17, 'Satriyo', 'Magelang', 'Laki - laki', 'Karawang', '909900', 'satriyo@gmail.com', '0987'),
(18, '3', '5', 'y', 'd', 'y', 't', 'ff'),
(19, '4', '4', '2', '1', '7', '9', '0'),
(20, 'sdfghj', '5', 's', '6', 's', 'dfghjk', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `data_jadwal_bus`
--

CREATE TABLE `data_jadwal_bus` (
  `id` int(150) NOT NULL,
  `tipe_bus` varchar(100) NOT NULL,
  `kode_bus` varchar(100) NOT NULL,
  `nomor_kursi` varchar(50) NOT NULL,
  `hari` varchar(50) NOT NULL,
  `tanggal` varchar(100) NOT NULL,
  `jam_berangkat` varchar(50) NOT NULL,
  `asal` varchar(100) NOT NULL,
  `tujuan` varchar(100) NOT NULL,
  `harga` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_jadwal_bus`
--

INSERT INTO `data_jadwal_bus` (`id`, `tipe_bus`, `kode_bus`, `nomor_kursi`, `hari`, `tanggal`, `jam_berangkat`, `asal`, `tujuan`, `harga`) VALUES
(1, 'Patas', 'PTS001', '01', 'Senin', '01-06-2021', '08.00 WIB', 'Karawang', 'Magelang', '150000'),
(2, 'ghjkii', 'ghjk', '', '', '', '', '', '\r\n		', ''),
(3, 'ghjkii', 'kodeee', 'er', 'wsd', 'ty', 'vg', 'df', 'yu\r\n		', 'as'),
(4, 'ghjkii', 'kod', 'er', 'wsd', 'ty', 'vg', 'df', 'yu\r\n		', 'as'),
(5, 'ghjkii', 'ekom', 'er', 'wsd', 'ty', 'vg', 'df', 'yu\r\n		', 'as'),
(7, 'v', 'ihh', 'm', 'n', 'w', 't', 'y', 'u\r\n		', 'j'),
(8, '34', 'sdfgh', 'fg', 'vb', 'cf', 'rt', 'yu', 'jk\r\n		', 'hj'),
(9, 'n', 'aaaaa', 'u', 'j', 'c', 'j', 't', 'e\r\n		', 'd'),
(10, 'q', 'iyaaa', 'e', 'r', 'u', 'y', 'j', 'k\r\n		', 'k');

-- --------------------------------------------------------

--
-- Table structure for table `laporan_transaksi_tiket`
--

CREATE TABLE `laporan_transaksi_tiket` (
  `id` int(150) NOT NULL,
  `nama_lengkap` varchar(200) NOT NULL,
  `tipe_bus` varchar(100) NOT NULL,
  `kode_bus` varchar(100) NOT NULL,
  `nomor_kursi` varchar(50) NOT NULL,
  `hari` varchar(50) NOT NULL,
  `tanggal` varchar(100) NOT NULL,
  `jam_berangkat` varchar(100) NOT NULL,
  `asal` varchar(100) NOT NULL,
  `tujuan` varchar(100) NOT NULL,
  `harga` varchar(100) NOT NULL,
  `tanggal_transaksi` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pesan_tiket`
--

CREATE TABLE `pesan_tiket` (
  `id` int(150) NOT NULL,
  `nama_lengkap` varchar(150) NOT NULL,
  `tipe_bus` varchar(100) NOT NULL,
  `kode_bus` varchar(100) NOT NULL,
  `nomor_kursi` varchar(50) NOT NULL,
  `hari` varchar(50) NOT NULL,
  `tanggal` varchar(100) NOT NULL,
  `jam_berangkat` varchar(50) NOT NULL,
  `asal` varchar(100) NOT NULL,
  `tujuan` varchar(100) NOT NULL,
  `harga` varchar(100) NOT NULL,
  `tanggal_pesan` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pesan_tiket`
--

INSERT INTO `pesan_tiket` (`id`, `nama_lengkap`, `tipe_bus`, `kode_bus`, `nomor_kursi`, `hari`, `tanggal`, `jam_berangkat`, `asal`, `tujuan`, `harga`, `tanggal_pesan`) VALUES
(1, 'Amid', '', '', '', '', '', '', '', '', '', '2021-06-07 07:37:02'),
(2, 'Eko', '', '', '', '', '', '', '', '', '', '2021-06-07 07:37:50'),
(3, 'Ekoo', 'ghjkii', 'kodeee', 'er', 'wsd', 'ty', 'vg', 'df', 'yu\r\n		', 'as', '2021-06-07 07:57:19'),
(4, 'Ekoo', 'ghjkii', 'kodeee', 'er', 'wsd', 'ty', 'vg', 'df', 'yu\r\n		', 'as', '2021-06-07 07:57:20'),
(5, 'amid', 'ghjkii', 'kodeee', 'er', 'wsd', 'ty', 'vg', 'df', 'yu\r\n		', 'as', '2021-06-07 08:00:25'),
(6, 'rrrr', 'ghjkii', 'ekom', 'er', 'wsd', 'ty', 'vg', 'df', 'yu\r\n		', 'as', '2021-06-07 08:02:33'),
(7, '4567', 'Patas', 'PTS001', '01', 'Senin', '01-06-2021', '08.00 WIB', 'Karawang', 'Magelang', '150000', '2021-06-07 08:05:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daftar_akun`
--
ALTER TABLE `daftar_akun`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_jadwal_bus`
--
ALTER TABLE `data_jadwal_bus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laporan_transaksi_tiket`
--
ALTER TABLE `laporan_transaksi_tiket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesan_tiket`
--
ALTER TABLE `pesan_tiket`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `daftar_akun`
--
ALTER TABLE `daftar_akun`
  MODIFY `id` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `data_jadwal_bus`
--
ALTER TABLE `data_jadwal_bus`
  MODIFY `id` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `laporan_transaksi_tiket`
--
ALTER TABLE `laporan_transaksi_tiket`
  MODIFY `id` int(150) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pesan_tiket`
--
ALTER TABLE `pesan_tiket`
  MODIFY `id` int(150) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
