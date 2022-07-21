-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2022 at 03:32 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `responsi-2`
--

-- --------------------------------------------------------

--
-- Table structure for table `tiket_pengiriman`
--

CREATE TABLE `tiket_pengiriman` (
  `Nama` varchar(50) NOT NULL,
  `Nik` varchar(50) NOT NULL,
  `Jarak(Km)` int(4) NOT NULL,
  `Tujuan` varchar(50) NOT NULL,
  `Total` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tiket_pengiriman`
--

INSERT INTO `tiket_pengiriman` (`Nama`, `Nik`, `Jarak(Km)`, `Tujuan`, `Total`) VALUES
('Binti Sholikhah', '3467689500038', 4, 'Tarungan, Panjangrejo Pundong Bantul', 20000),
('Shodiq Ansori', '349028736370002', 3, 'Banguntapan, Kota Gede, Yogyakarta', 15000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tiket_pengiriman`
--
ALTER TABLE `tiket_pengiriman`
  ADD UNIQUE KEY `Nama` (`Nama`,`Nik`,`Jarak(Km)`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
