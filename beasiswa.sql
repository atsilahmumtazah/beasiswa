-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2022 at 06:20 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beasiswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `beasiswa_internasional`
--

CREATE TABLE `beasiswa_internasional` (
  `id` int(11) NOT NULL,
  `nik` int(11) NOT NULL,
  `beasiswa` varchar(11) NOT NULL,
  `nama` varchar(11) NOT NULL,
  `jenis_kelamin` varchar(11) NOT NULL,
  `kota` varchar(12) NOT NULL,
  `date_modified` int(11) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `beasiswa_internasional`
--

INSERT INTO `beasiswa_internasional` (`id`, `nik`, `beasiswa`, `nama`, `jenis_kelamin`, `kota`, `date_modified`, `date_created`) VALUES
(9, 223, 'LPDP', 'Olivia Agus', 'Perempuan', 'Madura', 1668184657, 1668184657),
(10, 4322, 'IISMA Vokas', 'Izza M Hafi', 'Laki laki', 'Jakarta', 1668184657, 1668184657),
(11, 3202, '2+i Interen', 'Atsilah Mum', 'Perempuan', 'Solo', 1668184657, 1668184657);

-- --------------------------------------------------------

--
-- Table structure for table `beasiswa_nasional`
--

CREATE TABLE `beasiswa_nasional` (
  `id` int(11) NOT NULL,
  `nik` int(11) NOT NULL,
  `beasiswa` varchar(110) NOT NULL,
  `nama` varchar(21) NOT NULL,
  `jenis_kelamin` varchar(11) NOT NULL,
  `kota` varchar(12) NOT NULL,
  `date_created` int(11) NOT NULL,
  `date_modified` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `beasiswa_nasional`
--

INSERT INTO `beasiswa_nasional` (`id`, `nik`, `beasiswa`, `nama`, `jenis_kelamin`, `kota`, `date_created`, `date_modified`) VALUES
(69, 12345, 'PPA', 'Olivia Agustiani', 'Perempuan', 'Madura', 1668174293, 1668174293),
(70, 123456, 'BSI Inspirasi', 'Izza M Hafiz', 'Laki laki', 'Jakarta', 1668174293, 1668174293),
(71, 1234567, 'BSI Prestasi', 'Atsilah Mumtazah N.', 'Perempuan', 'Solo', 1668174293, 1668174293),
(72, 12345678, 'Aktivisi Salman', 'Fatin', 'Perempuan', 'Bogor', 1668174293, 1668174293);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nama`) VALUES
(12312449, 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(12312450, 'y@gmail.com', '415290769594460e2e485922904f345d', 'y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beasiswa_internasional`
--
ALTER TABLE `beasiswa_internasional`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beasiswa_nasional`
--
ALTER TABLE `beasiswa_nasional`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `beasiswa_internasional`
--
ALTER TABLE `beasiswa_internasional`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `beasiswa_nasional`
--
ALTER TABLE `beasiswa_nasional`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12312451;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
