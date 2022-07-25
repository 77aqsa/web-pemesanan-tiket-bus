-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2022 at 06:51 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jwd`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `nama_pemesan` varchar(50) NOT NULL,
  `nomor_id` varchar(16) NOT NULL,
  `nomor_hp` varchar(12) NOT NULL,
  `kelas_penumpang` varchar(10) NOT NULL,
  `tanggal_berangkat` date NOT NULL,
  `jumlah_penumpang` int(3) NOT NULL,
  `jumlah_penumpang_lansia` int(3) NOT NULL,
  `harga_tiket` varchar(12) NOT NULL,
  `total_bayar` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `nama_pemesan`, `nomor_id`, `nomor_hp`, `kelas_penumpang`, `tanggal_berangkat`, `jumlah_penumpang`, `jumlah_penumpang_lansia`, `harga_tiket`, `total_bayar`) VALUES
(42, 'Al Aqsa Reto W', '5103050307000002', '085333843084', 'Ekonomi', '2022-07-23', 1, 2, '', ''),
(43, 'Rp. 150,000', '5103050307000002', '085333843084', 'Bisnis', '2022-07-21', 1, 2, '', ''),
(44, 'Al Aqsa Reto Wijaya', '5103050307000002', '085333843084', 'Bisnis', '2022-07-21', 2, 1, '', ''),
(45, 'Al Aqsa Reto Wijaya', '5103050307000002', '085333843084', 'Bisnis', '2022-07-31', 2, 1, 'Rp. 150,000', 'Rp. 435,000'),
(46, 'nama lengkap saya', '5103050307000002', '085333843084', 'Bisnis', '2022-07-29', 2, 3, 'Rp. 150,000', 'Rp. 705,000'),
(47, 'al aqsa', '5103050307000002', '085333843084', 'Bisnis', '2022-07-21', 1, 2, 'Rp. 150,000', 'Rp. 420,000'),
(48, 'test', '1234567890123456', '085333843084', 'Ekonomi', '2022-07-21', 1, 1, 'Rp. 100,000', 'Rp. 190,000'),
(49, 'Al Aqsa Reto Wijaya', '5103050307000002', '085333843084', 'Eksekutif', '2022-07-23', 3, 3, 'Rp. 200,000', 'Rp. 1,140,00'),
(50, 'Al Aqsa Reto Wijaya', '1111111111111111', '085333843084', 'Bisnis', '2022-07-30', 3, 3, 'Rp. 150,000', 'Rp. 855,000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
