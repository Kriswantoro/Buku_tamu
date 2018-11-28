-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2018 at 06:32 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coba_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_user` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_user`, `password`) VALUES
('admin', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `buku_tamu`
--

CREATE TABLE `buku_tamu` (
  `id_bktamu` int(10) NOT NULL,
  `status_bktamu` varchar(30) NOT NULL,
  `nm_bktamu` varchar(30) NOT NULL,
  `email_bktamu` varchar(30) NOT NULL,
  `alamat_bktamu` varchar(150) NOT NULL,
  `tgl_bktamu` varchar(30) NOT NULL,
  `komentar` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku_tamu`
--

INSERT INTO `buku_tamu` (`id_bktamu`, `status_bktamu`, `nm_bktamu`, `email_bktamu`, `alamat_bktamu`, `tgl_bktamu`, `komentar`) VALUES
(1, '', 'Kriswantoro', 'kris@yahoo.com', 'kris.com', '1543425843', '<p>Hay<strong> Hay&nbsp;</strong></p>');

-- --------------------------------------------------------

--
-- Table structure for table `galery`
--

CREATE TABLE `galery` (
  `id_galery` int(5) NOT NULL,
  `nm_galery` varchar(50) NOT NULL,
  `ket` text NOT NULL,
  `tgl_galery` varchar(30) NOT NULL,
  `gambar` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galery`
--

INSERT INTO `galery` (`id_galery`, `nm_galery`, `ket`, `tgl_galery`, `gambar`) VALUES
(5, 'Foto Kriswantoro', 'Sama Metri', '20 11 2018', '1463100147598.jpg'),
(6, 'Foto Kriswantoro', 'Sama Ilham', '20 11 2018', '1463100213573.jpg'),
(7, 'Foto Kriswantoro', 'Sama Meri', '20 11 2018', '1463104145909.jpg'),
(8, 'Foto Kriswantoro', 'Sama Reza', '21 11 2018', '1473480174896.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `buku_tamu`
--
ALTER TABLE `buku_tamu`
  ADD PRIMARY KEY (`id_bktamu`);

--
-- Indexes for table `galery`
--
ALTER TABLE `galery`
  ADD PRIMARY KEY (`id_galery`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku_tamu`
--
ALTER TABLE `buku_tamu`
  MODIFY `id_bktamu` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `galery`
--
ALTER TABLE `galery`
  MODIFY `id_galery` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
