-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2019 at 10:58 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asian_games`
--

-- --------------------------------------------------------

--
-- Table structure for table `atlet`
--

CREATE TABLE `atlet` (
  `id_atlet` varchar(10) NOT NULL,
  `nama_negara` varchar(50) NOT NULL,
  `code_cabor` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `tanggal_lahir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cabor`
--

CREATE TABLE `cabor` (
  `code_cabor` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cabor`
--

INSERT INTO `cabor` (`code_cabor`, `nama`, `jenis`) VALUES
('asd', 'asd', 'asd'),
('BASKET234', 'Basket Ball', 'Group'),
('BASKET444', 'Basket Ball', 'Group'),
('SWN212', 'Renang', 'Single');

-- --------------------------------------------------------

--
-- Table structure for table `mengikuti`
--

CREATE TABLE `mengikuti` (
  `id_atlet` varchar(10) NOT NULL,
  `id_pertandingan` varchar(10) NOT NULL,
  `kejadian` varchar(100) NOT NULL,
  `waktu` time NOT NULL,
  `ronde` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `negara`
--

CREATE TABLE `negara` (
  `nama_negara` varchar(50) NOT NULL,
  `emas` int(11) NOT NULL,
  `perunggu` int(11) NOT NULL,
  `perak` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `negara`
--

INSERT INTO `negara` (`nama_negara`, `emas`, `perunggu`, `perak`, `total`) VALUES
('Indonesia', 15, 5, 10, 30),
('Nigeria', 5, 5, 5, 30);

-- --------------------------------------------------------

--
-- Table structure for table `no_hp_atlet`
--

CREATE TABLE `no_hp_atlet` (
  `id_atlet` varchar(10) NOT NULL,
  `no_hp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `official`
--

CREATE TABLE `official` (
  `id_official` varchar(10) NOT NULL,
  `id_atlet` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `tanggal_lahir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pertandingan`
--

CREATE TABLE `pertandingan` (
  `id_pertandingan` varchar(10) NOT NULL,
  `jadwal` date NOT NULL,
  `fase` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pertandingan`
--

INSERT INTO `pertandingan` (`id_pertandingan`, `jadwal`, `fase`) VALUES
('1239485', '2018-01-01', 'kaskadskj'),
('SOC2222', '2018-08-10', 'Penyisihan');

-- --------------------------------------------------------

--
-- Table structure for table `tempat`
--

CREATE TABLE `tempat` (
  `nama_tempat` varchar(50) NOT NULL,
  `code_cabor` varchar(10) NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `id_card_number` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `birth_day` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `id_card_number`, `address`, `gender`, `birth_day`) VALUES
('asdasd', 'asdasd', 'asdasdasd', 'asdasd', 'asd', '1999-07-01'),
('aaaaaaa', 'aaaaaaa', 'asdsadsa', 'asdsadasd', 'asdsada', '1998-02-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `atlet`
--
ALTER TABLE `atlet`
  ADD PRIMARY KEY (`id_atlet`),
  ADD KEY `fk atlet1` (`nama_negara`),
  ADD KEY `fk atlet2` (`code_cabor`);

--
-- Indexes for table `cabor`
--
ALTER TABLE `cabor`
  ADD PRIMARY KEY (`code_cabor`);

--
-- Indexes for table `mengikuti`
--
ALTER TABLE `mengikuti`
  ADD PRIMARY KEY (`id_atlet`,`id_pertandingan`),
  ADD KEY `fk mengikuti2` (`id_pertandingan`);

--
-- Indexes for table `negara`
--
ALTER TABLE `negara`
  ADD PRIMARY KEY (`nama_negara`);

--
-- Indexes for table `no_hp_atlet`
--
ALTER TABLE `no_hp_atlet`
  ADD PRIMARY KEY (`id_atlet`);

--
-- Indexes for table `official`
--
ALTER TABLE `official`
  ADD PRIMARY KEY (`id_official`),
  ADD KEY `fk official` (`id_atlet`);

--
-- Indexes for table `pertandingan`
--
ALTER TABLE `pertandingan`
  ADD PRIMARY KEY (`id_pertandingan`);

--
-- Indexes for table `tempat`
--
ALTER TABLE `tempat`
  ADD PRIMARY KEY (`nama_tempat`),
  ADD KEY `fk tempat` (`code_cabor`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `atlet`
--
ALTER TABLE `atlet`
  ADD CONSTRAINT `fk atlet1` FOREIGN KEY (`nama_negara`) REFERENCES `negara` (`nama_negara`),
  ADD CONSTRAINT `fk atlet2` FOREIGN KEY (`code_cabor`) REFERENCES `cabor` (`code_cabor`);

--
-- Constraints for table `mengikuti`
--
ALTER TABLE `mengikuti`
  ADD CONSTRAINT `fk megikuti1` FOREIGN KEY (`id_atlet`) REFERENCES `atlet` (`id_atlet`),
  ADD CONSTRAINT `fk mengikuti2` FOREIGN KEY (`id_pertandingan`) REFERENCES `pertandingan` (`id_pertandingan`);

--
-- Constraints for table `no_hp_atlet`
--
ALTER TABLE `no_hp_atlet`
  ADD CONSTRAINT `fk no_hp_atlet` FOREIGN KEY (`id_atlet`) REFERENCES `atlet` (`id_atlet`);

--
-- Constraints for table `official`
--
ALTER TABLE `official`
  ADD CONSTRAINT `fk official` FOREIGN KEY (`id_atlet`) REFERENCES `atlet` (`id_atlet`);

--
-- Constraints for table `tempat`
--
ALTER TABLE `tempat`
  ADD CONSTRAINT `fk tempat` FOREIGN KEY (`code_cabor`) REFERENCES `cabor` (`code_cabor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
