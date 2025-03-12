-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2025 at 06:01 AM
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
-- Database: `mahasiswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `nilai_mahasiswa`
--

CREATE TABLE `nilai_mahasiswa` (
  `id_mahasiswa` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` enum('l','p') NOT NULL,
  `jurusan` varchar(100) NOT NULL,
  `mata_kuliah` varchar(100) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nilai_mahasiswa`
--

INSERT INTO `nilai_mahasiswa` (`id_mahasiswa`, `nama`, `jenis_kelamin`, `jurusan`, `mata_kuliah`, `nilai`) VALUES
(1, 'Hanif', 'l', 'T. Informasi', 'Kalkulus', 100),
(2, 'Hanif', 'l', 'T. Informasi', 'Fisika', 97.6),
(3, 'Clorinde', 'p', 'T. Informasi', 'Kalkulus', 84.5),
(4, 'Clorinde', 'p', 'T. Informasi', 'Fisika', 90),
(5, 'Furina', 'p', 'T. Mesin', 'Gambar Teknik', 78.8),
(6, 'Furina', 'p', 'T. Mesin', 'Praktikum Mesin', 85.6),
(7, 'Zhongli', 'l', 'T. Mesin', 'Gambar Teknik', 80.5),
(8, 'Zhongli', 'l', 'T. Mesin', 'Praktikum Mesin', 82.6),
(9, 'Kinich', 'l', 'T. Elektro', 'Algoritma Pemrograman', 100),
(10, 'Kinich', 'l', 'T. Elektro', 'Fisika Lanjut', 92.3),
(11, 'Mavuika', 'p', 'T. Elektro', 'Algoritma Pemrograman', 79),
(12, 'Mavuika', 'p', 'T. Elektro', 'Fisika Lanjut', 94.4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nilai_mahasiswa`
--
ALTER TABLE `nilai_mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nilai_mahasiswa`
--
ALTER TABLE `nilai_mahasiswa`
  MODIFY `id_mahasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
