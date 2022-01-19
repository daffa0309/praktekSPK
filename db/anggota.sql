-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2022 at 08:31 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anggota`
--

-- --------------------------------------------------------

--
-- Table structure for table `analisa_alternatif`
--

CREATE TABLE `analisa_alternatif` (
  `alternatif_pertama` varchar(4) NOT NULL,
  `nilai_analisa_alternatif` double NOT NULL,
  `hasil_analisa_alternatif` double NOT NULL,
  `alternatif_kedua` varchar(4) NOT NULL,
  `id_kriteria` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `analisa_alternatif`
--

INSERT INTO `analisa_alternatif` (`alternatif_pertama`, `nilai_analisa_alternatif`, `hasil_analisa_alternatif`, `alternatif_kedua`, `id_kriteria`) VALUES
('A001', 1, 0.75, 'A001', 'C1'),
('A001', 1, 0.81818181818182, 'A001', 'C2'),
('A001', 1, 0.81818181818182, 'A001', 'C3'),
('A001', 1, 0.81818181818182, 'A001', 'C4'),
('A001', 1, 0.81818181818182, 'A001', 'C5'),
('A001', 1, 0.81818181818182, 'A001', 'C6'),
('A001', 9, 0.8804347826087, 'A002', 'C1'),
('A001', 9, 0.89010989010989, 'A002', 'C2'),
('A001', 9, 0.89010989010989, 'A002', 'C3'),
('A001', 9, 0.89010989010989, 'A002', 'C4'),
('A001', 9, 0.89010989010989, 'A002', 'C5'),
('A001', 9, 0.89010989010989, 'A002', 'C6'),
('A001', 9, 0.47093023255814, 'A003', 'C1'),
('A001', 9, 0.47368421052632, 'A003', 'C2'),
('A001', 9, 0.47368421052632, 'A003', 'C3'),
('A001', 9, 0.47368421052632, 'A003', 'C4'),
('A001', 9, 0.47368421052632, 'A003', 'C5'),
('A001', 9, 0.47368421052632, 'A003', 'C6'),
('A001', 9, 0.32142857142857, 'A004', 'C1'),
('A002', 0.11111111111111, 0.083333333333333, 'A001', 'C1'),
('A002', 0.11111111111111, 0.09090909090909, 'A001', 'C2'),
('A002', 0.11111111111111, 0.09090909090909, 'A001', 'C3'),
('A002', 0.11111111111111, 0.09090909090909, 'A001', 'C4'),
('A002', 0.11111111111111, 0.09090909090909, 'A001', 'C5'),
('A002', 0.11111111111111, 0.09090909090909, 'A001', 'C6'),
('A002', 1, 0.097826086956522, 'A002', 'C1'),
('A002', 1, 0.098901098901099, 'A002', 'C2'),
('A002', 1, 0.098901098901099, 'A002', 'C3'),
('A002', 1, 0.098901098901099, 'A002', 'C4'),
('A002', 1, 0.098901098901099, 'A002', 'C5'),
('A002', 1, 0.098901098901099, 'A002', 'C6'),
('A002', 9, 0.47093023255814, 'A003', 'C1'),
('A002', 9, 0.47368421052632, 'A003', 'C2'),
('A002', 9, 0.47368421052632, 'A003', 'C3'),
('A002', 9, 0.47368421052632, 'A003', 'C4'),
('A002', 9, 0.47368421052632, 'A003', 'C5'),
('A002', 9, 0.47368421052632, 'A003', 'C6'),
('A002', 9, 0.32142857142857, 'A004', 'C1'),
('A003', 0.11111111111111, 0.083333333333333, 'A001', 'C1'),
('A003', 0.11111111111111, 0.09090909090909, 'A001', 'C2'),
('A003', 0.11111111111111, 0.09090909090909, 'A001', 'C3'),
('A003', 0.11111111111111, 0.09090909090909, 'A001', 'C4'),
('A003', 0.11111111111111, 0.09090909090909, 'A001', 'C5'),
('A003', 0.11111111111111, 0.09090909090909, 'A001', 'C6'),
('A003', 0.11111111111111, 0.010869565217391, 'A002', 'C1'),
('A003', 0.11111111111111, 0.010989010989011, 'A002', 'C2'),
('A003', 0.11111111111111, 0.010989010989011, 'A002', 'C3'),
('A003', 0.11111111111111, 0.010989010989011, 'A002', 'C4'),
('A003', 0.11111111111111, 0.010989010989011, 'A002', 'C5'),
('A003', 0.11111111111111, 0.010989010989011, 'A002', 'C6'),
('A003', 1, 0.052325581395349, 'A003', 'C1'),
('A003', 1, 0.052631578947368, 'A003', 'C2'),
('A003', 1, 0.052631578947368, 'A003', 'C3'),
('A003', 1, 0.052631578947368, 'A003', 'C4'),
('A003', 1, 0.052631578947368, 'A003', 'C5'),
('A003', 1, 0.052631578947368, 'A003', 'C6'),
('A003', 9, 0.32142857142857, 'A004', 'C1'),
('A004', 0.11111111111111, 0.083333333333333, 'A001', 'C1'),
('A004', 0.11111111111111, 0.010869565217391, 'A002', 'C1'),
('A004', 0.11111111111111, 0.005813953488372, 'A003', 'C1'),
('A004', 1, 0.035714285714286, 'A004', 'C1');

-- --------------------------------------------------------

--
-- Table structure for table `analisa_kriteria`
--

CREATE TABLE `analisa_kriteria` (
  `kriteria_pertama` varchar(2) NOT NULL,
  `nilai_analisa_kriteria` double NOT NULL,
  `hasil_analisa_kriteria` double NOT NULL,
  `kriteria_kedua` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `analisa_kriteria`
--

INSERT INTO `analisa_kriteria` (`kriteria_pertama`, `nilai_analisa_kriteria`, `hasil_analisa_kriteria`, `kriteria_kedua`) VALUES
('C1', 1, 0.64285714285715, 'C1'),
('C1', 9, 0.86170212765957, 'C2'),
('C1', 9, 0.46551724137931, 'C3'),
('C1', 9, 0.31889763779528, 'C4'),
('C1', 9, 0.24251497005988, 'C5'),
('C1', 9, 0.19565217391304, 'C6'),
('C2', 0.11111111111111, 0.071428571428571, 'C1'),
('C2', 1, 0.095744680851064, 'C2'),
('C2', 9, 0.46551724137931, 'C3'),
('C2', 9, 0.31889763779528, 'C4'),
('C2', 9, 0.24251497005988, 'C5'),
('C2', 9, 0.19565217391304, 'C6'),
('C3', 0.11111111111111, 0.071428571428571, 'C1'),
('C3', 0.11111111111111, 0.01063829787234, 'C2'),
('C3', 1, 0.051724137931034, 'C3'),
('C3', 9, 0.31889763779528, 'C4'),
('C3', 9, 0.24251497005988, 'C5'),
('C3', 9, 0.19565217391304, 'C6'),
('C4', 0.11111111111111, 0.071428571428571, 'C1'),
('C4', 0.11111111111111, 0.01063829787234, 'C2'),
('C4', 0.11111111111111, 0.0057471264367816, 'C3'),
('C4', 1, 0.035433070866142, 'C4'),
('C4', 9, 0.24251497005988, 'C5'),
('C4', 9, 0.19565217391304, 'C6'),
('C5', 0.11111111111111, 0.071428571428571, 'C1'),
('C5', 0.11111111111111, 0.01063829787234, 'C2'),
('C5', 0.11111111111111, 0.0057471264367816, 'C3'),
('C5', 0.11111111111111, 0.0039370078740157, 'C4'),
('C5', 1, 0.026946107784431, 'C5'),
('C5', 9, 0.19565217391304, 'C6'),
('C6', 0.11111111111111, 0.071428571428571, 'C1'),
('C6', 0.11111111111111, 0.01063829787234, 'C2'),
('C6', 0.11111111111111, 0.0057471264367816, 'C3'),
('C6', 0.11111111111111, 0.0039370078740157, 'C4'),
('C6', 0.11111111111111, 0.0029940119760479, 'C5'),
('C6', 1, 0.021739130434783, 'C6');

-- --------------------------------------------------------

--
-- Table structure for table `data_alternatif`
--

CREATE TABLE `data_alternatif` (
  `id_alternatif` varchar(4) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `kelamin` enum('pria','wanita') NOT NULL,
  `hasil_akhir` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_alternatif`
--

INSERT INTO `data_alternatif` (`id_alternatif`, `nama`, `tanggal_lahir`, `kelamin`, `hasil_akhir`) VALUES
('A001', 'Agus', '2000-01-19', 'pria', 0.6098698100922659),
('A002', 'Bagus', '2000-02-19', 'pria', 0.2534163816294093),
('A003', 'Cagus', '2000-03-19', 'pria', 0.1334668083607454),
('A004', 'Daffa Ahmad Rivaldi', '2000-01-01', 'pria', 0.01542324960847);

-- --------------------------------------------------------

--
-- Table structure for table `data_kriteria`
--

CREATE TABLE `data_kriteria` (
  `id_kriteria` varchar(2) NOT NULL,
  `nama_kriteria` varchar(45) NOT NULL,
  `jumlah_kriteria` double NOT NULL,
  `bobot_kriteria` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_kriteria`
--

INSERT INTO `data_kriteria` (`id_kriteria`, `nama_kriteria`, `jumlah_kriteria`, `bobot_kriteria`) VALUES
('C1', 'Cakap dalam mengolah strategi', 1.5555555555555503, 0.4545235489440383),
('C2', 'Dapat Membangun mental para anggotanya', 10.444444444444443, 0.2316258792378575),
('C3', 'dapat menjadi penyemangat kepada anggota team', 19.333333333333332, 0.1484759648333575),
('C4', 'pintar dalam membaca strategi lawan', 28.22222222222222, 0.09356903509612575),
('C5', 'memiliki jiwa kepemimpinan', 37.11111111111111, 0.05239154755152988),
('C6', 'Mampu bermain dibawah tekanan team', 46, 0.019414024337089865);

-- --------------------------------------------------------

--
-- Table structure for table `jum_alt_kri`
--

CREATE TABLE `jum_alt_kri` (
  `id_alternatif` varchar(4) NOT NULL,
  `id_kriteria` varchar(2) NOT NULL,
  `jumlah_alt_kri` double NOT NULL,
  `skor_alt_kri` double NOT NULL,
  `hasil_alt_kri` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jum_alt_kri`
--

INSERT INTO `jum_alt_kri` (`id_alternatif`, `id_kriteria`, `jumlah_alt_kri`, `skor_alt_kri`, `hasil_alt_kri`) VALUES
('A001', 'C1', 1.3333333333333302, 0.7017196410887138, 0.31894810163138),
('A001', 'C2', 1.22222222222222, 0.46466399097977906, 0.10762820546086),
('A001', 'C3', 1.22222222222222, 0.5303293198030034, 0.078741157437169),
('A001', 'C4', 1.22222222222222, 0.5959946486262279, 0.055766644194411),
('A001', 'C5', 1.22222222222222, 0.6616599774494523, 0.034665390171487),
('A001', 'C6', 1.22222222222222, 0.7273253062726768, 0.014120311196959),
('A002', 'C1', 10.222222222222221, 0.22584159083995314, 0.10265032136774),
('A002', 'C2', 10.11111111111111, 0.2959438222596099, 0.068548248035894),
('A002', 'C3', 10.11111111111111, 0.27724906672274985, 0.041164822680808),
('A002', 'C4', 10.11111111111111, 0.2585543111858898, 0.024192677417607),
('A002', 'C5', 10.11111111111111, 0.2398595556490297, 0.012566613315475),
('A002', 'C6', 10.11111111111111, 0.22116480011216966, 0.0042936988118853),
('A003', 'C1', 19.11111111111111, 0.065295023979052, 0.029678126027345),
('A003', 'C2', 19, 0.23939218676060545, 0.055449425741099),
('A003', 'C3', 19, 0.19242161347424316, 0.02856998471538),
('A003', 'C4', 19, 0.14545104018788085, 0.013609713484108),
('A003', 'C5', 19, 0.09848046690151857, 0.0051595440645678),
('A003', 'C6', 19, 0.05150989361515632, 0.0010000143282456),
('A004', 'C1', 28, 0.0339327844383455, 0.01542324960847);

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL,
  `jum_nilai` double NOT NULL,
  `ket_nilai` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `jum_nilai`, `ket_nilai`) VALUES
(2, 9, 'Mutlak sangat penting dari'),
(3, 8, 'Mendekati mutlak dari'),
(8, 7, 'Sangat penting dari'),
(9, 6, 'Mendekati sangat penting dari'),
(10, 5, 'Lebih penting dari'),
(11, 4, 'Mendekati lebih penting dari'),
(12, 3, 'Sedikit lebih penting dari'),
(13, 2, 'Mendekati sedikit lebih penting dari'),
(14, 1, 'Sama penting dengan'),
(15, 0.5, '1 bagi mendekati sedikit lebih penting dari'),
(16, 0.333, '1 bagi sedikit lebih penting dari'),
(17, 0.25, '1 bagi mendekati lebih penting dari'),
(18, 0.2, '1 bagi lebih penting dari'),
(19, 0.167, '1 bagi mendekati sangat penting dari'),
(20, 0.143, '1 bagi sangat penting dari'),
(21, 0.125, '1 bagi mendekati mutlak dari'),
(22, 0.1, '1 bagi mutlak sangat penting dari');

-- --------------------------------------------------------

--
-- Table structure for table `nilai_awal`
--

CREATE TABLE `nilai_awal` (
  `id_nilai_awal` int(11) NOT NULL,
  `id_alternatif` varchar(4) NOT NULL,
  `nilai` varchar(5) NOT NULL,
  `keterangan` enum('B','C','K') NOT NULL,
  `periode` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai_awal`
--

INSERT INTO `nilai_awal` (`id_nilai_awal`, `id_alternatif`, `nilai`, `keterangan`, `periode`) VALUES
(31, 'A001', '80.83', 'B', '2022'),
(32, 'A002', '80', 'B', '2022'),
(33, 'A003', '84.16', 'B', '2022'),
(34, 'A004', '80', 'B', '2022');

-- --------------------------------------------------------

--
-- Table structure for table `nilai_awal_detail`
--

CREATE TABLE `nilai_awal_detail` (
  `id_nilai_awal_detail` int(11) NOT NULL,
  `id_nilai_awal` int(11) NOT NULL,
  `id_kriteria` varchar(2) NOT NULL,
  `nilai` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai_awal_detail`
--

INSERT INTO `nilai_awal_detail` (`id_nilai_awal_detail`, `id_nilai_awal`, `id_kriteria`, `nilai`) VALUES
(162, 31, 'C1', 90),
(163, 31, 'C2', 80),
(164, 31, 'C3', 80),
(165, 31, 'C4', 85),
(166, 31, 'C5', 70),
(167, 31, 'C6', 80),
(168, 32, 'C1', 90),
(169, 32, 'C2', 70),
(170, 32, 'C3', 70),
(171, 32, 'C4', 90),
(172, 32, 'C5', 80),
(173, 32, 'C6', 80),
(174, 33, 'C1', 90),
(175, 33, 'C2', 70),
(176, 33, 'C3', 70),
(177, 33, 'C4', 90),
(178, 33, 'C5', 95),
(179, 33, 'C6', 90),
(180, 34, 'C1', 90),
(181, 34, 'C2', 90),
(182, 34, 'C3', 90),
(183, 34, 'C4', 70),
(184, 34, 'C5', 70),
(185, 34, 'C6', 70);

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `role` enum('admin','user') NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `nama_lengkap`, `role`, `username`, `password`) VALUES
(7, 'Daffa Ahmad', 'admin', 'daffa', '135a4e22cda0e0a68499e6d6e2a861aa'),
(8, 'farid ', 'user', 'farid', 'a1d12da42d4302e53d510954344ad164');

-- --------------------------------------------------------

--
-- Table structure for table `ranking`
--

CREATE TABLE `ranking` (
  `kriteria` varchar(2) NOT NULL,
  `skor_bobot` double NOT NULL,
  `alternatif` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `analisa_alternatif`
--
ALTER TABLE `analisa_alternatif`
  ADD PRIMARY KEY (`alternatif_pertama`,`alternatif_kedua`,`id_kriteria`),
  ADD KEY `alternatif_kedua` (`alternatif_kedua`),
  ADD KEY `id_kriteria` (`id_kriteria`);

--
-- Indexes for table `analisa_kriteria`
--
ALTER TABLE `analisa_kriteria`
  ADD PRIMARY KEY (`kriteria_pertama`,`kriteria_kedua`),
  ADD KEY `kriteria_kedua` (`kriteria_kedua`);

--
-- Indexes for table `data_alternatif`
--
ALTER TABLE `data_alternatif`
  ADD PRIMARY KEY (`id_alternatif`);

--
-- Indexes for table `data_kriteria`
--
ALTER TABLE `data_kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `jum_alt_kri`
--
ALTER TABLE `jum_alt_kri`
  ADD PRIMARY KEY (`id_alternatif`,`id_kriteria`),
  ADD KEY `id_kriteria` (`id_kriteria`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indexes for table `nilai_awal`
--
ALTER TABLE `nilai_awal`
  ADD PRIMARY KEY (`id_nilai_awal`,`id_alternatif`),
  ADD KEY `alternatif` (`id_alternatif`);

--
-- Indexes for table `nilai_awal_detail`
--
ALTER TABLE `nilai_awal_detail`
  ADD PRIMARY KEY (`id_nilai_awal_detail`,`id_nilai_awal`),
  ADD KEY `alternatif` (`id_nilai_awal`),
  ADD KEY `id_kriteria` (`id_kriteria`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indexes for table `ranking`
--
ALTER TABLE `ranking`
  ADD PRIMARY KEY (`kriteria`,`alternatif`),
  ADD KEY `alternatif` (`alternatif`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `nilai_awal`
--
ALTER TABLE `nilai_awal`
  MODIFY `id_nilai_awal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `nilai_awal_detail`
--
ALTER TABLE `nilai_awal_detail`
  MODIFY `id_nilai_awal_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `analisa_alternatif`
--
ALTER TABLE `analisa_alternatif`
  ADD CONSTRAINT `analisa_alternatif_ibfk_1` FOREIGN KEY (`id_kriteria`) REFERENCES `data_kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `analisa_alternatif_ibfk_2` FOREIGN KEY (`alternatif_pertama`) REFERENCES `data_alternatif` (`id_alternatif`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `analisa_alternatif_ibfk_3` FOREIGN KEY (`alternatif_kedua`) REFERENCES `data_alternatif` (`id_alternatif`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `analisa_kriteria`
--
ALTER TABLE `analisa_kriteria`
  ADD CONSTRAINT `analisa_kriteria_ibfk_1` FOREIGN KEY (`kriteria_pertama`) REFERENCES `data_kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `analisa_kriteria_ibfk_2` FOREIGN KEY (`kriteria_kedua`) REFERENCES `data_kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jum_alt_kri`
--
ALTER TABLE `jum_alt_kri`
  ADD CONSTRAINT `jum_alt_kri_ibfk_1` FOREIGN KEY (`id_kriteria`) REFERENCES `data_kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jum_alt_kri_ibfk_2` FOREIGN KEY (`id_alternatif`) REFERENCES `data_alternatif` (`id_alternatif`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nilai_awal`
--
ALTER TABLE `nilai_awal`
  ADD CONSTRAINT `nilai_awal_ibfk_1` FOREIGN KEY (`id_alternatif`) REFERENCES `data_alternatif` (`id_alternatif`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nilai_awal_detail`
--
ALTER TABLE `nilai_awal_detail`
  ADD CONSTRAINT `nilai_awal_detail_ibfk_1` FOREIGN KEY (`id_kriteria`) REFERENCES `data_kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_awal_detail_ibfk_2` FOREIGN KEY (`id_nilai_awal`) REFERENCES `nilai_awal` (`id_nilai_awal`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ranking`
--
ALTER TABLE `ranking`
  ADD CONSTRAINT `ranking_ibfk_1` FOREIGN KEY (`kriteria`) REFERENCES `data_kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ranking_ibfk_2` FOREIGN KEY (`alternatif`) REFERENCES `data_alternatif` (`id_alternatif`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
