-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2025 at 04:00 AM
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
-- Database: `dbms11_2420506041`
--

-- --------------------------------------------------------

--
-- Table structure for table `gaji`
--

CREATE TABLE `gaji` (
  `golongan` int(1) NOT NULL,
  `gaji_pokok` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gaji`
--

INSERT INTO `gaji` (`golongan`, `gaji_pokok`) VALUES
(1, 1500000),
(2, 2000000),
(3, 3500000),
(4, 5000000);

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `nip` varchar(5) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `kota` varchar(15) NOT NULL,
  `tahun_masuk` year(4) DEFAULT NULL,
  `golongan` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`nip`, `nama`, `tanggal_lahir`, `kota`, `tahun_masuk`, `golongan`) VALUES
('001', 'Ahmad Burhanuddin', '1990-12-12', 'Bandung', '2010', 3),
('002', 'Amin Imsyorry', '1989-12-02', 'Ciamis', '2009', 2),
('003', 'Budhy Bungaox', '1989-01-20', 'Tasikmalaya', '2011', 4),
('004', 'Zulkarnaen', '1991-02-20', 'Bandung', '2009', 1),
('005', 'Dewi Sudewa', '1990-12-02', 'Bogor', '2009', 1),
('006', 'Ina Nurlian', '1993-08-09', 'Sumedang', '2011', 4),
('007', 'Cheppy Chardut', '1992-07-09', 'Garut', '2011', 4),
('008', 'Dodong M', '1990-07-10', 'Bandung', '2010', 3),
('009', 'Gandung P', '1990-06-25', 'Bogor', '2009', 2),
('010', 'Agung Wisman', '1993-10-17', 'Garut', '2010', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gaji`
--
ALTER TABLE `gaji`
  ADD PRIMARY KEY (`golongan`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`nip`),
  ADD KEY `golongan` (`golongan`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `pegawai_ibfk_1` FOREIGN KEY (`golongan`) REFERENCES `gaji` (`golongan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
