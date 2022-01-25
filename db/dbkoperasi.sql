-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2022 at 02:30 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbkoperasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(10) NOT NULL,
  `no_identitas` varchar(50) NOT NULL,
  `tanggal_bergabung` date NOT NULL DEFAULT current_timestamp(),
  `nama` varchar(200) NOT NULL,
  `alamat` text NOT NULL,
  `telepon` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `saldo` decimal(17,2) NOT NULL,
  `poin` decimal(17,2) NOT NULL,
  `is_individual` int(1) NOT NULL DEFAULT 1,
  `dibuat_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `diubah_pada` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `no_identitas`, `tanggal_bergabung`, `nama`, `alamat`, `telepon`, `email`, `saldo`, `poin`, `is_individual`, `dibuat_pada`, `diubah_pada`) VALUES
(1, '-', '0000-00-00', '-- NON ANGGOTA --', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-12 15:38:00', '2021-11-12 15:38:00'),
(2, '-', '2020-01-01', 'Adi Wira Gunawan, Pt SE,', 'MAPINDO', '-', 'info@triatma-mapindo.ac.id', '1000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(3, '-', '2020-01-01', 'Agus Adi Sapta Gunawan', 'MAPINDO', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(4, '-', '2020-01-01', 'Anik Yantari,Ni Putu', 'MAPINDO', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(5, '-', '2020-01-01', 'Agus Anggayana I', 'MAPINDO', '-', 'info@triatma-mapindo.ac.id', '645000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(6, '-', '2020-01-01', 'Bagus putu Eka Dharmasusila', 'MAPINDO', '-', 'info@triatma-mapindo.ac.id', '2500.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(7, '-', '2020-01-01', 'Budiana,I Kadek', 'MAPINDO', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(8, '-', '2020-01-01', 'Christine Dwiyanti S.,Ni Made', 'MAPINDO', '-', 'info@triatma-mapindo.ac.id', '100000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(9, '-', '2020-01-01', 'Dasna, I Made', 'MAPINDO', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(10, '-', '2020-01-01', 'Dianita Safitri', 'MAPINDO', '-', 'info@triatma-mapindo.ac.id', '31000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(11, '-', '2020-01-01', 'Diana Dikarini', 'MAPINDO', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(12, '-', '2020-01-01', 'Dwiyanti Dewa Made ', 'MAPINDO', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(13, '-', '2020-01-01', 'Dr I Made Petrus M.min', 'MAPINDO', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(14, '-', '2020-01-01', 'Edy Purnayasa, I Ketut SE', 'MAPINDO', '-', 'info@triatma-mapindo.ac.id', '4000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(15, '-', '2020-01-01', 'Fenny Sengkey', 'MAPINDO', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(16, '-', '2020-01-01', 'Agustina Rizki,Gst .Ayu', 'MAPINDO', '-', 'info@triatma-mapindo.ac.id', '23000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(17, '-', '2020-01-01', 'Heriawan Sucipta, I Gede', 'MAPINDO', '-', 'info@triatma-mapindo.ac.id', '58000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(18, '-', '2020-01-01', 'Karyawan Dewa Gede', 'MAPINDO', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(19, '-', '2020-01-01', 'Mohdiana,I Putu SH', 'MAPINDO', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(20, '-', '2020-01-01', 'Gunawan Wibisono', 'MAPINDO', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(21, '-', '2020-01-01', 'Irawine Rizky Wahyu Kusuma', 'MAPINDO', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(22, '-', '2020-01-01', 'Indra Susanti Ni Luh, SE', 'MAPINDO', '-', 'info@triatma-mapindo.ac.id', '71400.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(23, '-', '2020-01-01', 'Pedriantha,Putu', 'MAPINDO', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(24, '-', '2020-01-01', 'Jerimen Telehala', 'MAPINDO', '-', 'info@triatma-mapindo.ac.id', '50000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(25, '-', '2020-01-01', 'Kornelius Rudi Cahyono', 'MAPINDO', '-', 'info@triatma-mapindo.ac.id', '106800.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(26, '-', '2020-01-01', 'Marta Made Dra', 'MAPINDO', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(27, '-', '2020-01-01', 'Sara Wangi Ni Nyoman', 'MAPINDO', '-', 'info@triatma-mapindo.ac.id', '49900.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(28, '-', '2020-01-01', 'Nirmala Tari', 'MAPINDO', '-', 'info@triatma-mapindo.ac.id', '222500.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(29, '-', '2020-01-01', 'Nuryanti Nyoman', 'MAPINDO', '-', 'info@triatma-mapindo.ac.id', '50000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(30, '-', '2020-01-01', 'Oka Ariantini,Ni Pt', 'MAPINDO', '-', 'info@triatma-mapindo.ac.id', '50000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(31, '-', '2020-01-01', 'Rosvita Flaviana Osin,SE', 'MAPINDO', '-', 'info@triatma-mapindo.ac.id', '44500.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(32, '-', '2020-01-01', 'Lindawati', 'MAPINDO', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(33, '-', '2020-01-01', 'Sugiantini ,Ni Wayan', 'MAPINDO', '-', 'info@triatma-mapindo.ac.id', '31000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(34, '-', '2020-01-01', 'Sunata, I Made Drs MM', 'MAPINDO', '-', 'info@triatma-mapindo.ac.id', '200000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(35, '-', '2020-01-01', 'Suseno', 'MAPINDO', '-', 'info@triatma-mapindo.ac.id', '41400.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(36, '-', '2020-01-01', 'Suryawati Dewa Ayu', 'MAPINDO', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(37, '-', '2020-01-01', 'Trisnawati, Ni Nyoman', 'MAPINDO', '-', 'info@triatma-mapindo.ac.id', '82000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(38, '-', '2020-01-01', 'Widya Pibriani,Ni Putu', 'MAPINDO', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(39, '-', '2020-01-01', 'Widiada Saputra I Ketut,.SH', 'MAPINDO', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(40, '-', '2020-01-01', 'Agung Rai Antara,I Made SS', 'FAK. PARIWISATA', '-', 'info@triatma-mapindo.ac.id', '43500.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(41, '-', '2020-01-01', 'Agus Prayogi  Putu SST Par', 'FAK. PARIWISATA', '-', 'info@triatma-mapindo.ac.id', '250000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(42, '-', '2020-01-01', 'Ardiana, Komang SE', 'FAK. PARIWISATA', '-', 'info@triatma-mapindo.ac.id', '100000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(43, '-', '2020-01-01', 'Arnaya Yudistira,Komang', 'FAK. PARIWISATA', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(44, '-', '2020-01-01', 'A.A. Ratih', 'FAK. PARIWISATA', '-', 'info@triatma-mapindo.ac.id', '163000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(45, '-', '2020-01-01', 'Bayu Wesnawa I Made A.Par MM', 'FAK. PARIWISATA', '-', 'info@triatma-mapindo.ac.id', '599200.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(46, '-', '2020-01-01', 'Budiasa, I Ketut SE.,MM ', 'FAK. PARIWISATA', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(47, '-', '2020-01-01', 'Catur Ayu Budi Astiti Asih', 'FAK. PARIWISATA', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(48, '-', '2020-01-01', 'Dewi Irwanti Ni Ketut', 'FAK. PARIWISATA', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(49, '-', '2020-01-01', 'Dwi Santi Sang Ayu Made', 'FAK. PARIWISATA', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(50, '-', '2020-01-01', 'Edi Moelyadi, Spd', 'FAK. PARIWISATA', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(51, '-', '2020-01-01', 'Eli Sumerta, I Ketut SE.,MM', 'FAK. PARIWISATA', '-', 'info@triatma-mapindo.ac.id', '295900.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(52, '-', '2020-01-01', 'Herindiyah Kartika Y.', 'FAK. PARIWISATA', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(53, '-', '2020-01-01', 'Isa Wahjoedi,Spd', 'FAK. PARIWISATA', '-', 'info@triatma-mapindo.ac.id', '89500.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(54, '-', '2020-01-01', 'Jimmy Harry  P Suarthana,SSt. Par', 'FAK. PARIWISATA', '-', 'info@triatma-mapindo.ac.id', '20400.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(55, '-', '2020-01-01', 'Katerina Evi Tandirerung', 'FAK. PARIWISATA', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(56, '-', '2020-01-01', 'Masning Puspitasari,Kadek', 'FAK. PARIWISATA', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(57, '-', '2020-01-01', 'Mekarini Wayan, Dra.,M.Hum', 'FAK. PARIWISATA', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(58, '-', '2020-01-01', 'Nidya Trianingrum', 'FAK. PARIWISATA', '-', 'info@triatma-mapindo.ac.id', '522000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(59, '-', '2020-01-01', 'Rai Pastini ', 'FAK. PARIWISATA', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(60, '-', '2020-01-01', 'Reynold Paparang', 'FAK. PARIWISATA', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(61, '-', '2020-01-01', 'Rini Puspaningsih, S. Pt', 'FAK. PARIWISATA', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(62, '-', '2020-01-01', 'Rusmiati, Ni Nyoman SE', 'FAK. PARIWISATA', '-', 'info@triatma-mapindo.ac.id', '33000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(63, '-', '2020-01-01', 'Sri Sutini Ni Putu', 'FAK. PARIWISATA', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(64, '-', '2020-01-01', 'Sri Widhiastuty, Dra Ni L P', 'FAK. PARIWISATA', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(65, '-', '2020-01-01', 'Suarta, I Gede', 'FAK. PARIWISATA', '-', 'info@triatma-mapindo.ac.id', '50000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(66, '-', '2020-01-01', 'Subadra,I Nengah,SS.M.PAR.PhD', 'FAK. PARIWISATA', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(67, '-', '2020-01-01', 'Sukanatra,I Wayan', 'FAK. PARIWISATA', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(68, '-', '2020-01-01', 'Sukarini ,Kadek', 'FAK. PARIWISATA', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(69, '-', '2020-01-01', 'Sudarma,I Made', 'FAK. PARIWISATA', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(70, '-', '2020-01-01', 'Sulistyoadi Joko Saharjo', 'FAK. PARIWISATA', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(71, '-', '2020-01-01', 'Sulastri,Ida Ayu', 'FAK. PARIWISATA', '-', 'info@triatma-mapindo.ac.id', '273000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(72, '-', '2020-01-01', 'Sutha Ariawan Cok Gede', 'FAK. PARIWISATA', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(73, '-', '2020-01-01', 'Suwitra Wirya I Made', 'FAK. PARIWISATA', '-', 'info@triatma-mapindo.ac.id', '30000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(74, '-', '2020-01-01', 'Wardhana, I Made, Drs', 'FAK. PARIWISATA', '-', 'info@triatma-mapindo.ac.id', '5000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(75, '-', '2020-01-01', 'Wiantara Nyoman I Gst,Drs,MM', 'FAK. PARIWISATA', '-', 'info@triatma-mapindo.ac.id', '114200.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(76, '-', '2020-01-01', 'Widiantara, I Gst A Bgs, ST', 'FAK. PARIWISATA', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(77, '-', '2020-01-01', 'Yudi Darmita, SE.,MM', 'FAK. PARIWISATA', '-', 'info@triatma-mapindo.ac.id', '173500.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(78, '-', '2020-01-01', 'Yunik Anggreni, Ni Putu SS', 'FAK. PARIWISATA', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(79, '-', '2020-01-01', 'Adityawan I Made', 'FAK. BISNIS', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(80, '-', '2020-01-01', 'Agus Suarsana Ariesta,Putu', 'FAK. BISNIS', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(81, '-', '2020-01-01', 'Agustini Ni Luh Putu, SE, MM', 'FAK. BISNIS', '-', 'info@triatma-mapindo.ac.id', '100000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(82, '-', '2020-01-01', 'Aristana,  I Nengah, SE.,MM', 'FAK. PARIWISATA', '-', 'info@triatma-mapindo.ac.id', '100000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(83, '-', '2020-01-01', 'Christin Dwitrayani Made', 'FAK. BISNIS', '-', 'info@triatma-mapindo.ac.id', '108000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(84, '-', '2020-01-01', 'Debora Mimy Susanthi', 'FAK. BISNIS', '-', 'info@triatma-mapindo.ac.id', '6500.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(85, '-', '2020-01-01', 'David Toga  Anantha, Putu', 'FAK. BISNIS', '-', 'info@triatma-mapindo.ac.id', '59500.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(86, '-', '2020-01-01', 'Dewi Wati, Dra', 'FAK. BISNIS', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(87, '-', '2020-01-01', 'Erlina Junipisa,S.Pd', 'FAK. BISNIS', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(88, '-', '2020-01-01', 'Frida Agustina Adnantara', 'FAK. BISNIS', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(89, '-', '2020-01-01', 'Hedy Wartana, I Made, SE', 'FAK. BISNIS', '-', 'info@triatma-mapindo.ac.id', '50000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(90, '-', '2020-01-01', 'Heri Sugiarta Asana,I Gd', 'FAK. BISNIS', '-', 'info@triatma-mapindo.ac.id', '27500.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(91, '-', '2020-01-01', 'Mertayasa,I Nyoman', 'FAK. BISNIS', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(92, '-', '2020-01-01', 'Mila, Putu', 'PASCA', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(93, '-', '2020-01-01', 'Julyanti Paramiyta Sari Ni LK,SS', 'FAK. BISNIS', '-', 'info@triatma-mapindo.ac.id', '20000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(94, '-', '2020-01-01', 'Krisna Lestari, I Gusti', 'FAK. BISNIS', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(95, '-', '2020-01-01', 'Kukuh Rian Setiawan,SE', 'FAK. BISNIS', '-', 'info@triatma-mapindo.ac.id', '190900.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(96, '-', '2020-01-01', 'Krishna Yogantara,Komang', 'FAK. BISNIS', '-', 'info@triatma-mapindo.ac.id', '57000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(97, '-', '2020-01-01', 'Kusumawijaya Ida Bagus, SE, MM', 'FAK. BISNIS', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(98, '-', '2020-01-01', 'Laras Oktaviani,M.Pd.H', 'FAK. BISNIS', '-', 'info@triatma-mapindo.ac.id', '10000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(99, '-', '2020-01-01', 'Rai Sudarmini, Ni Made', 'FAK. BISNIS', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(100, '-', '2020-01-01', 'Raywan Virgantara I Made', 'FAK. BISNIS', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(101, '-', '2020-01-01', 'Saortua Marbun, Pdt, Sth, MA', 'FAK. BISNIS', '-', 'info@triatma-mapindo.ac.id', '6000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(102, '-', '2020-01-01', 'Sri Asih, A.A, SE', 'FAK. BISNIS', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(103, '-', '2020-01-01', 'Sri Rahayu Trisna Dewi', 'FAK. BISNIS', '-', 'info@triatma-mapindo.ac.id', '117000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(104, '-', '2020-01-01', 'Suryani Putri Gunawati, SH', 'FAK. BISNIS', '-', 'info@triatma-mapindo.ac.id', '150000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(105, '-', '2020-01-01', 'Sutapa I Ketut SE MM', 'FAK. BISNIS', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(106, '-', '2020-01-01', 'Susi Hendrayani,Ketut SE', 'FAK. BISNIS', '-', 'info@triatma-mapindo.ac.id', '264000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(107, '-', '2020-01-01', 'Suarjaya I Nyoman,ST.,MM', 'FAK. BISNIS', '-', 'info@triatma-mapindo.ac.id', '180000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(108, '-', '2020-01-01', 'Tiara Kusuma Dewi,SE', 'FAK. BISNIS', '-', 'info@triatma-mapindo.ac.id', '114000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(109, '-', '2020-01-01', 'Tirtawati, Ni Made', 'MAPINDO', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(110, '-', '2020-01-01', 'Bagus Suthanaya Putu., SE MM', 'FAK. BISNIS', '-', 'info@triatma-mapindo.ac.id', '100000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(111, '-', '2020-01-01', 'Yudana Adi, I Ketut SE.,MM', 'FAK. BISNIS', '-', 'info@triatma-mapindo.ac.id', '50000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(112, '-', '2020-01-01', 'Ayu Oktari Anggreni', 'FAK. BISNIS', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(113, '-', '2020-01-01', 'Isar', 'FAK. BISNIS', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(114, '-', '2020-01-01', 'Abdiel Ari Setiawan,Putu', 'SMK', '-', 'info@triatma-mapindo.ac.id', '56800.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(115, '-', '2020-01-01', 'Agus Ariyanto', 'SMK', '-', 'info@triatma-mapindo.ac.id', '51000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(116, '-', '2020-01-01', 'Anton Jaya, Ketut', 'SMK', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(117, '-', '2020-01-01', 'Ari Sanjani Luh', 'SMK', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(118, '-', '2020-01-01', 'Buda Antara, I Made', 'SMK', '-', 'info@triatma-mapindo.ac.id', '22500.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(119, '-', '2020-01-01', 'Desak Ketut Toyaningsih', 'SMK', '-', 'info@triatma-mapindo.ac.id', '18800.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(120, '-', '2020-01-01', 'Prayanti Dewi,Ni Putu', 'SMK', '-', 'info@triatma-mapindo.ac.id', '122000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(121, '-', '2020-01-01', 'Dwi Aryastana I Gst Ngurah,S.Kom', 'SMK', '-', 'info@triatma-mapindo.ac.id', '50000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(122, '-', '2020-01-01', 'Dwi Umbara Yasa ', 'SMK', '-', 'info@triatma-mapindo.ac.id', '102500.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(123, '-', '2020-01-01', 'Fajar Gunawan', 'SMK', '-', 'info@triatma-mapindo.ac.id', '74000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(124, '-', '2020-01-01', 'Harlinah,STh,S.Pd', 'SMK', '-', 'info@triatma-mapindo.ac.id', '509500.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(125, '-', '2020-01-01', 'Heni Sulistyawati ', 'SMK', '-', 'info@triatma-mapindo.ac.id', '116200.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(126, '-', '2020-01-01', 'Hendry Roharyani A.Ma', 'SMK', '-', 'info@triatma-mapindo.ac.id', '150000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(127, '-', '2020-01-01', 'Helena I Gst Ayu Pt.Pusparini,SE.MM', 'SMK', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(128, '-', '2020-01-01', 'Indrayani,Dewa Ayu S.IP,S.Pd', 'SMK', '-', 'info@triatma-mapindo.ac.id', '77000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(129, '-', '2020-01-01', 'Joelie Soemarawati', 'SMK', '-', 'info@triatma-mapindo.ac.id', '50000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(130, '-', '2020-01-01', 'Karta, I Made Ssi', 'SMK', '-', 'info@triatma-mapindo.ac.id', '50000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(131, '-', '2020-01-01', 'Kertayoga,I Ketut', 'SMK', '-', 'info@triatma-mapindo.ac.id', '150000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(132, '-', '2020-01-01', 'Mahardika,Komang', 'SMK', '-', 'info@triatma-mapindo.ac.id', '100000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(133, '-', '2020-01-01', 'Meri Utama Yasa, I Gst Md', 'SMK', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(134, '-', '2020-01-01', 'Nanik Ariani,Ni Wayan', 'SMK', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(135, '-', '2020-01-01', 'Nopi Sutantri,Ni Wayan', 'SMK', '-', 'info@triatma-mapindo.ac.id', '87000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(136, '-', '2020-01-01', 'Paramarta, I Gede SE', 'SMK', '-', 'info@triatma-mapindo.ac.id', '34700.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(137, '-', '2020-01-01', 'Ria Nurlina ', 'SMK', '-', 'info@triatma-mapindo.ac.id', '12500.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(138, '-', '2020-01-01', 'Rista Sitompul, SE', 'SMK', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(139, '-', '2020-01-01', 'Sedana I Made', 'SMK', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(140, '-', '2020-01-01', 'Suardana,I Made,A.Md,S.Ag', 'SMK', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(141, '-', '2020-01-01', 'Sudarsana,I Made,S.Pd', 'SMK', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(142, '-', '2020-01-01', 'Sudirman, I Made Drs', 'SMK', '-', 'info@triatma-mapindo.ac.id', '50000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(143, '-', '2020-01-01', 'Sugiarini,Ni Luh Putu', 'SMK', '-', 'info@triatma-mapindo.ac.id', '50000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(144, '-', '2020-01-01', 'Sunerti Made', 'SMK', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(145, '-', '2020-01-01', 'Sunetri Ketut', 'SMK', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(146, '-', '2020-01-01', 'Supartini,Komang', 'SMK', '-', 'info@triatma-mapindo.ac.id', '176500.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(147, '-', '2020-01-01', 'Sutama,I Wayan Gede', 'SMK', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(148, '-', '2020-01-01', 'Suwirya,Gede', 'SMK', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(149, '-', '2020-01-01', 'Suparwati Made SE', 'SMK', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(150, '-', '2020-01-01', 'Wijaya,Made', 'SMK', '-', 'info@triatma-mapindo.ac.id', '112000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(151, '-', '2020-01-01', 'Wulan Antari,Ni Nyoman', 'SMK', '-', 'info@triatma-mapindo.ac.id', '50000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(152, '-', '2020-01-01', 'Yuli Hermayanti Putu Dra', 'SMK', '-', 'info@triatma-mapindo.ac.id', '55500.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(153, '-', '2020-01-01', 'Yuriastiti', 'SMK', '-', 'info@triatma-mapindo.ac.id', '14000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(154, '-', '2020-01-01', 'Yunita Sukma Dewi,Ni Made', 'SMK', '-', 'info@triatma-mapindo.ac.id', '50000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(155, '-', '2020-01-01', 'Candra Dewi Luh Komang, SE, MM', 'PASCA', '-', 'info@triatma-mapindo.ac.id', '100000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(156, '-', '2020-01-01', 'Hartini,Ni Made', 'PASCA', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(157, '-', '2020-01-01', 'Sili Antari ', 'PASCA', '-', 'info@triatma-mapindo.ac.id', '177000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(158, '-', '2020-01-01', 'Surya Nugraha. SE', 'PASCA', '-', 'info@triatma-mapindo.ac.id', '54000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(159, '-', '2020-01-01', 'Jhon Maharjono,SE', 'HONORER', '-', 'info@triatma-mapindo.ac.id', '100000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(160, '-', '2020-01-01', 'Ayu Suryani,SE', 'HONORER', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(161, '-', '2020-01-01', 'Adi Putriasih Gst A', 'Percetakan ', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(162, '-', '2020-01-01', 'Suarjana ,Kadek', 'Percetakan ', '-', 'info@triatma-mapindo.ac.id', '53700.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(163, '-', '2020-01-01', 'Sunarti Kadek ', 'Percetakan ', '-', 'info@triatma-mapindo.ac.id', '242000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(164, '-', '2020-01-01', 'William .F', 'Percetakan ', '-', 'info@triatma-mapindo.ac.id', '131200.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(165, '-', '2020-01-01', 'Kristono Akin', 'Koperasi', '-', 'info@triatma-mapindo.ac.id', '59500.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(166, '-', '2020-01-01', 'Sri Wahyuni,Kadek', 'Koperasi', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(167, '-', '2020-01-01', 'Arnata, I Ketut', 'Puri Saron (Gatsu)', '-', 'info@triatma-mapindo.ac.id', '246200.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(168, '-', '2020-01-01', 'Wiparsa, I Made', 'Puri Saron (Gatsu)', '-', 'info@triatma-mapindo.ac.id', '100000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(169, '-', '2020-01-01', 'Kd Wilan Yusmita Rani', 'Puri Saron (Gatsu)', '-', 'info@triatma-mapindo.ac.id', '15300.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(170, '-', '2020-01-01', 'Windradi, I Nyoman', 'Puri Saron (Gatsu)', '-', 'info@triatma-mapindo.ac.id', '33500.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(171, '-', '2020-01-01', 'Saptawati Ayu,Ni Kade', 'Puri Saron (Gianyar)', '-', 'info@triatma-mapindo.ac.id', '150000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(172, '-', '2020-01-01', 'Dita Wulandari,Ni Pt ', 'STIKES', '-', 'info@triatma-mapindo.ac.id', '646500.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(173, '-', '2020-01-01', 'Adi Arta Wiguna,Wayan', 'STIKES', '-', 'info@triatma-mapindo.ac.id', '7000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(174, '-', '2020-01-01', 'Purwaningsih,Ni Komang SS', 'STIKES', '-', 'info@triatma-mapindo.ac.id', '89000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(175, '-', '2020-01-01', 'Si Putu Agung Ayu Pertiwi Dewi', 'STIKES', '-', 'info@triatma-mapindo.ac.id', '3400.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(176, '-', '2020-01-01', 'Sariani, Nyoman', 'STIKES', '-', 'info@triatma-mapindo.ac.id', '21900.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(177, '-', '2020-01-01', 'Ni Komang Matalia Gandari ', 'STIKES', '-', 'info@triatma-mapindo.ac.id', '53300.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(178, '-', '2020-01-01', 'Yogi Triana,komang', 'STIKES', '-', 'info@triatma-mapindo.ac.id', '550000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(179, '-', '2020-01-01', 'I.G.A.A. Sherlyna Prihandhani', 'STIKES', '-', 'info@triatma-mapindo.ac.id', '220000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(180, '-', '2020-01-01', 'Pande putu Nopi Ekajayanti', 'STIKES', '-', 'info@triatma-mapindo.ac.id', '649800.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(181, '-', '2020-01-01', 'Pande Putu Indah Purnamayanti', 'STIKES', '-', 'info@triatma-mapindo.ac.id', '300000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(182, '-', '2020-01-01', 'Ni Putu Mirah Yunita Udayani', 'STIKES', '-', 'info@triatma-mapindo.ac.id', '289300.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(183, '-', '2020-01-01', 'L.Pt. Widiastini', 'STIKES', '-', 'info@triatma-mapindo.ac.id', '50000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(184, '-', '2020-01-01', 'Ni Made Ari Sukmandari', 'STIKES', '-', 'info@triatma-mapindo.ac.id', '149000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(185, '-', '2020-01-01', 'Ida Ayu Agung Laksmi', 'STIKES', '-', 'info@triatma-mapindo.ac.id', '150000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(186, '-', '2020-01-01', 'Ni Made Egar ', 'STIKES', '-', 'info@triatma-mapindo.ac.id', '100000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(187, '-', '2020-01-01', 'I Gusti Agung manik Karuniadi', 'STIKES', '-', 'info@triatma-mapindo.ac.id', '200000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(188, '-', '2020-01-01', 'Dewi Widayanti, I Gusti Agung', 'KOPERASI', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(189, '-', '2020-01-01', 'Jebol Yasa', 'TABANAN', '-', 'info@triatma-mapindo.ac.id', '50000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(190, '-', '2020-01-01', 'Natanael I Nyoman ', 'TABANAN', '-', 'info@triatma-mapindo.ac.id', '100000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(191, '-', '2020-01-01', 'Sunariani,Ni Luh', 'TABANAN', '-', 'info@triatma-mapindo.ac.id', '50000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(192, '-', '2020-01-01', 'Sukarya Wayan ', 'TABANAN', '-', 'info@triatma-mapindo.ac.id', '100000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(193, '-', '2020-01-01', 'Gustape Gumonica', 'PURI SARON (SEMINYAK)', '-', 'info@triatma-mapindo.ac.id', '429300.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(194, '-', '2020-01-01', 'Pherulian Sirait', 'STENDENT', '-', 'info@triatma-mapindo.ac.id', '100000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(195, '-', '2020-01-01', 'R.A Rani Kusumo Wardani', 'STENDENT', '-', 'info@triatma-mapindo.ac.id', '140000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(196, '-', '2020-01-01', 'Erna Zulaeni Wiles', 'STENDENT', '-', 'info@triatma-mapindo.ac.id', '50000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(197, '-', '2020-01-01', 'Erik Cahyanta', 'STENDENT', '-', 'info@triatma-mapindo.ac.id', '50000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(198, '-', '2020-01-01', 'Ayu Putu Fitri Aristiani', 'STENDENT', '-', 'info@triatma-mapindo.ac.id', '37500.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(199, '-', '2020-01-01', 'Gede Okik Yastawan', 'STENDENT', '-', 'info@triatma-mapindo.ac.id', '50000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(200, '-', '2020-01-01', 'Puriawan Kadek', 'STENDENT', '-', 'info@triatma-mapindo.ac.id', '137000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(201, '-', '2020-01-01', 'I Nyoman Selamet (Mangku)', 'GLORIA', '-', 'info@triatma-mapindo.ac.id', '100000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(202, '-', '2020-01-01', 'Yuningsih,Putu', '-', '-', 'info@triatma-mapindo.ac.id', '42500.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(203, '-', '2020-01-01', 'Ekayanti Boru Purba', '-', '-', 'info@triatma-mapindo.ac.id', '50000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(204, '-', '2020-01-01', 'Yuli Damayanti', '-', '-', 'info@triatma-mapindo.ac.id', '50000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(205, '-', '2020-01-01', 'Marsinta', '-', '-', 'info@triatma-mapindo.ac.id', '300000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(206, '-', '2020-01-01', 'Ida Bagus Kade Dwi Suta Negara', 'JEMBRANA', '-', 'info@triatma-mapindo.ac.id', '350000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(207, '-', '2020-01-01', 'Igniityas Prima Astuti Ni', 'JEMBRANA', '-', 'info@triatma-mapindo.ac.id', '90000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(208, '-', '2020-01-01', 'Luh Putu Ekarini', 'TK (NEOGENESIS)', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(209, '-', '2020-01-01', 'Ni Made Maria S', 'TK (NEOGENESIS)', '-', 'info@triatma-mapindo.ac.id', '50000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(210, '-', '2020-01-01', 'Nyoman Arini Suningsih', 'TK (NEOGENESIS)', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(211, '-', '2020-01-01', 'Hesdy Tibe', '', '-', 'info@triatma-mapindo.ac.id', '550000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(212, '-', '2020-01-01', 'Santika Dewi Ni Putu', '', '-', 'info@triatma-mapindo.ac.id', '150000.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(213, '-', '2020-01-01', 'Biro Belmana/UNTRIM', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(214, '-', '2020-01-01', 'Pasca', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(215, '-', '2020-01-01', 'Kemahasiswaan/UNTRIM', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(216, '-', '2020-01-01', 'Kitchen/AK. Mapindo', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(217, '-', '2020-01-01', 'Restaurant/AK. Mapindo', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(218, '-', '2020-01-01', 'AK.MAPINDO', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(219, '-', '2020-01-01', 'Lab Kitchen YTSJ', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(220, '-', '2020-01-01', 'Kitchen/Fak. Pariwisata', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(221, '-', '2020-01-01', 'Rest/Fak. Pariwisata', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(222, '-', '2020-01-01', 'Laundry/Fak. Pariwisata', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(223, '-', '2020-01-01', 'HK/Fak. Pariwisata', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(224, '-', '2020-01-01', 'Rumah Tangga', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(225, '-', '2020-01-01', 'Fakultas Pariwisata', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(226, '-', '2020-01-01', 'Fungsional', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(227, '-', '2020-01-01', 'Training', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(228, '-', '2020-01-01', 'Gudang', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(229, '-', '2020-01-01', 'S2', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(230, '-', '2020-01-01', 'Hildiktipari', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(231, '-', '2020-01-01', 'Keuangan', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(232, '-', '2020-01-01', 'Kursus', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(233, '-', '2020-01-01', 'Penjaminan Mutu', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(234, '-', '2020-01-01', 'Yayasan', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(235, '-', '2020-01-01', 'Yayasan/Kitchen', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(236, '-', '2020-01-01', 'Yayasan/Rapat', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(237, '-', '2020-01-01', 'Yayasan/Laundry', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(238, '-', '2020-01-01', 'LP2M Stipar', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(239, '-', '2020-01-01', 'Laundry/PPLP. Mapindo', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(240, '-', '2020-01-01', 'Kitchen/PPLP Mapindo', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(241, '-', '2020-01-01', 'Restaurant/PPLP Mapindo', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(242, '-', '2020-01-01', 'Marketing', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(243, '-', '2020-01-01', 'UNTRIM/Kemahasiswaan', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(244, '-', '2020-01-01', 'LSP /Sertifikasi', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(245, '-', '2020-01-01', 'LSU', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(246, '-', '2020-01-01', 'Engineering', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(247, '-', '2020-01-01', 'Ruangan Dosen Bahasa', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(248, '-', '2020-01-01', 'Ruang Bapak Yudi Darmita', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(249, '-', '2020-01-01', 'Pensisba', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(250, '-', '2020-01-01', 'LPM untrim', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(251, '-', '2020-01-01', 'Restaurant/Kitchen SMK Triatma Jaya', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(252, '-', '2020-01-01', 'SMK Triatma Jaya', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(253, '-', '2020-01-01', 'LP2M untrim', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(254, '-', '2020-01-01', 'Personalia', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(255, '-', '2020-01-01', 'Ruang Direktur AK. Mapindo', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(256, '-', '2020-01-01', 'Fakultas Bisnis/UNTRIM', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-09 09:01:00', '2021-11-09 09:01:00'),
(257, '-', '2020-01-01', 'SMK Triatma Jaya/ Pastry', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-09 09:01:00', '2021-11-09 09:01:00');

-- --------------------------------------------------------

--
-- Table structure for table `beli`
--

CREATE TABLE `beli` (
  `id_beli` int(10) NOT NULL,
  `id_pemasok` int(10) NOT NULL,
  `id_user` int(10) NOT NULL,
  `metode_bayar` varchar(150) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `total` decimal(17,2) NOT NULL,
  `diskon` decimal(17,2) NOT NULL DEFAULT 0.00,
  `pajak` decimal(17,2) NOT NULL DEFAULT 0.00,
  `dibuat_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `diubah_pada` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `beli`
--

INSERT INTO `beli` (`id_beli`, `id_pemasok`, `id_user`, `metode_bayar`, `tanggal_transaksi`, `total`, `diskon`, `pajak`, `dibuat_pada`, `diubah_pada`) VALUES
(1, 1, 1, 'SALDO AWAL', '2022-01-08', '35818847.50', '0.00', '0.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00');

-- --------------------------------------------------------

--
-- Table structure for table `beli_detail`
--

CREATE TABLE `beli_detail` (
  `id_beli_detail` int(10) NOT NULL,
  `id_beli` int(10) NOT NULL,
  `id_produk` int(10) NOT NULL,
  `hpp` decimal(17,2) NOT NULL,
  `harga_beli` decimal(17,2) NOT NULL,
  `jumlah` decimal(17,2) NOT NULL,
  `dibuat_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `diubah_pada` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `beli_detail`
--

INSERT INTO `beli_detail` (`id_beli_detail`, `id_beli`, `id_produk`, `hpp`, `harga_beli`, `jumlah`, `dibuat_pada`, `diubah_pada`) VALUES
(2, 1, 2, '0.00', '4750.00', '6.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(3, 1, 3, '0.00', '36100.00', '3.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(4, 1, 4, '0.00', '19000.00', '2.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(5, 1, 5, '0.00', '2375.00', '11.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(7, 1, 7, '0.00', '2850.00', '10.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(8, 1, 8, '0.00', '2850.00', '10.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(9, 1, 9, '0.00', '3325.00', '16.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(10, 1, 10, '0.00', '3325.00', '15.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(11, 1, 11, '0.00', '3325.00', '14.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(12, 1, 12, '0.00', '3325.00', '19.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(13, 1, 13, '0.00', '3325.00', '8.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(14, 1, 14, '0.00', '3325.00', '10.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(15, 1, 15, '0.00', '4275.00', '2.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(16, 1, 16, '0.00', '4275.00', '11.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(17, 1, 17, '0.00', '4275.00', '9.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(19, 1, 19, '0.00', '5700.00', '15.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(20, 1, 20, '0.00', '5700.00', '7.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(21, 1, 21, '0.00', '5700.00', '5.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(23, 1, 23, '0.00', '5700.00', '14.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(24, 1, 24, '0.00', '2375.00', '19.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(25, 1, 25, '0.00', '2375.00', '15.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(26, 1, 26, '0.00', '2375.00', '14.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(27, 1, 27, '0.00', '2375.00', '13.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(28, 1, 28, '0.00', '2375.00', '20.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(30, 1, 30, '0.00', '22325.00', '4.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(32, 1, 32, '0.00', '22325.00', '9.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(33, 1, 33, '0.00', '3800.00', '20.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(34, 1, 34, '0.00', '3800.00', '14.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(35, 1, 35, '0.00', '3800.00', '20.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(36, 1, 36, '0.00', '3800.00', '38.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(37, 1, 37, '0.00', '3800.00', '29.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(39, 1, 39, '0.00', '4275.00', '2.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(40, 1, 40, '0.00', '4275.00', '17.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(41, 1, 41, '0.00', '4275.00', '18.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(42, 1, 42, '0.00', '4275.00', '14.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(43, 1, 43, '0.00', '4275.00', '2.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(44, 1, 44, '0.00', '2375.00', '16.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(45, 1, 45, '0.00', '2375.00', '10.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(46, 1, 46, '0.00', '2375.00', '13.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(48, 1, 48, '0.00', '31825.00', '6.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(49, 1, 49, '0.00', '26600.00', '2.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(51, 1, 51, '0.00', '26600.00', '3.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(52, 1, 52, '0.00', '26600.00', '4.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(53, 1, 53, '0.00', '25650.00', '1.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(54, 1, 54, '0.00', '28500.00', '5.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(55, 1, 55, '0.00', '25650.00', '3.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(56, 1, 56, '0.00', '25650.00', '3.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(57, 1, 57, '0.00', '25650.00', '3.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(58, 1, 58, '0.00', '36100.00', '3.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(59, 1, 59, '0.00', '29450.00', '1.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(60, 1, 60, '0.00', '19000.00', '3.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(61, 1, 61, '0.00', '21375.00', '9.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(62, 1, 62, '0.00', '21375.00', '2.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(63, 1, 63, '0.00', '21375.00', '4.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(64, 1, 64, '0.00', '29450.00', '3.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(67, 1, 67, '0.00', '29450.00', '5.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(68, 1, 68, '0.00', '29450.00', '2.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(69, 1, 69, '0.00', '27075.00', '6.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(71, 1, 71, '0.00', '54150.00', '4.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(73, 1, 73, '0.00', '28500.00', '2.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(74, 1, 74, '0.00', '26600.00', '5.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(75, 1, 75, '0.00', '56050.00', '4.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(76, 1, 76, '0.00', '21850.00', '2.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(77, 1, 77, '0.00', '21850.00', '13.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(78, 1, 78, '0.00', '28500.00', '5.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(79, 1, 79, '0.00', '28500.00', '3.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(80, 1, 80, '0.00', '28500.00', '4.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(81, 1, 81, '0.00', '23750.00', '5.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(82, 1, 82, '0.00', '23750.00', '4.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(83, 1, 83, '0.00', '23750.00', '5.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(84, 1, 84, '0.00', '23750.00', '9.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(87, 1, 87, '0.00', '23750.00', '4.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(89, 1, 89, '0.00', '23750.00', '2.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(91, 1, 91, '0.00', '23750.00', '3.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(92, 1, 92, '0.00', '23750.00', '3.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(93, 1, 93, '0.00', '22800.00', '4.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(94, 1, 94, '0.00', '22325.00', '1.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(96, 1, 96, '0.00', '22800.00', '3.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(97, 1, 97, '0.00', '21850.00', '2.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(100, 1, 100, '0.00', '14250.00', '1.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(101, 1, 101, '0.00', '9500.00', '5.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(102, 1, 102, '0.00', '14250.00', '2.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(103, 1, 103, '0.00', '21850.00', '3.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(104, 1, 104, '0.00', '21850.00', '5.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(105, 1, 105, '0.00', '24700.00', '5.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(106, 1, 106, '0.00', '36100.00', '7.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(107, 1, 107, '0.00', '26600.00', '2.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(108, 1, 108, '0.00', '27550.00', '4.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(109, 1, 109, '0.00', '24700.00', '1.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(111, 1, 111, '0.00', '15675.00', '5.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(112, 1, 112, '0.00', '13300.00', '1.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(113, 1, 113, '0.00', '14250.00', '4.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(114, 1, 114, '0.00', '13300.00', '2.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(115, 1, 115, '0.00', '14250.00', '5.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(116, 1, 116, '0.00', '14725.00', '4.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(117, 1, 117, '0.00', '10925.00', '2.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(118, 1, 118, '0.00', '14725.00', '3.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(119, 1, 119, '0.00', '8075.00', '5.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(120, 1, 120, '0.00', '6650.00', '7.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(121, 1, 121, '0.00', '8075.00', '3.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(122, 1, 122, '0.00', '7600.00', '4.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(123, 1, 123, '0.00', '6650.00', '4.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(124, 1, 124, '0.00', '6175.00', '9.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(125, 1, 125, '0.00', '7125.00', '4.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(126, 1, 126, '0.00', '14725.00', '2.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(127, 1, 127, '0.00', '12825.00', '5.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(128, 1, 128, '0.00', '13300.00', '4.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(129, 1, 129, '0.00', '13300.00', '11.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(130, 1, 130, '0.00', '13300.00', '13.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(131, 1, 131, '0.00', '23275.00', '4.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(132, 1, 132, '0.00', '14725.00', '3.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(133, 1, 133, '0.00', '14725.00', '3.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(135, 1, 135, '0.00', '18050.00', '5.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(136, 1, 136, '0.00', '18050.00', '3.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(137, 1, 137, '0.00', '18050.00', '1.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(138, 1, 138, '0.00', '30875.00', '1.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(141, 1, 141, '0.00', '33250.00', '2.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(142, 1, 142, '0.00', '33250.00', '5.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(143, 1, 143, '0.00', '24700.00', '7.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(144, 1, 144, '0.00', '24700.00', '6.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(145, 1, 145, '0.00', '5225.00', '8.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(146, 1, 146, '0.00', '6175.00', '2.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(147, 1, 147, '0.00', '5225.00', '14.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(150, 1, 150, '0.00', '14725.00', '2.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(151, 1, 151, '0.00', '6650.00', '3.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(152, 1, 152, '0.00', '15485.00', '3.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(155, 1, 155, '0.00', '25650.00', '3.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(156, 1, 156, '0.00', '17575.00', '2.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(157, 1, 157, '0.00', '17575.00', '2.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(158, 1, 158, '0.00', '17575.00', '2.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(159, 1, 159, '0.00', '15200.00', '1.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(162, 1, 162, '0.00', '6650.00', '10.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(163, 1, 163, '0.00', '6650.00', '3.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(164, 1, 164, '0.00', '16150.00', '1.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(166, 1, 166, '0.00', '16625.00', '3.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(167, 1, 167, '0.00', '16625.00', '4.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(168, 1, 168, '0.00', '16625.00', '4.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(169, 1, 169, '0.00', '16625.00', '3.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(171, 1, 171, '0.00', '22800.00', '10.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(172, 1, 172, '0.00', '19950.00', '13.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(174, 1, 174, '0.00', '20425.00', '8.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(177, 1, 177, '0.00', '17575.00', '10.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(178, 1, 178, '0.00', '22800.00', '7.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(179, 1, 179, '0.00', '23750.00', '3.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(180, 1, 180, '0.00', '13300.00', '9.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(184, 1, 184, '0.00', '16150.00', '5.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(185, 1, 185, '0.00', '24700.00', '3.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(187, 1, 187, '0.00', '18050.00', '7.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(188, 1, 188, '0.00', '18050.00', '4.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(189, 1, 189, '0.00', '18050.00', '3.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(190, 1, 190, '0.00', '18050.00', '8.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(191, 1, 191, '0.00', '18050.00', '7.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(192, 1, 192, '0.00', '28025.00', '1.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(194, 1, 194, '0.00', '28500.00', '4.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(197, 1, 197, '0.00', '21375.00', '2.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(199, 1, 199, '0.00', '33250.00', '5.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(200, 1, 200, '0.00', '26600.00', '5.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(201, 1, 201, '0.00', '26600.00', '5.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(203, 1, 203, '0.00', '38475.00', '3.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(204, 1, 204, '0.00', '25175.00', '10.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(205, 1, 205, '0.00', '34960.00', '2.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(206, 1, 206, '0.00', '25175.00', '1.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(207, 1, 207, '0.00', '21375.00', '4.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(208, 1, 208, '0.00', '30400.00', '1.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(209, 1, 209, '0.00', '30400.00', '1.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(210, 1, 210, '0.00', '30400.00', '1.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(211, 1, 211, '0.00', '30400.00', '1.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(219, 1, 219, '0.00', '15390.00', '5.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(221, 1, 221, '0.00', '11400.00', '3.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(222, 1, 222, '0.00', '11400.00', '2.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(223, 1, 223, '0.00', '11400.00', '1.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(224, 1, 224, '0.00', '11400.00', '3.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(225, 1, 225, '0.00', '11400.00', '2.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(226, 1, 226, '0.00', '11400.00', '1.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(227, 1, 227, '0.00', '9500.00', '5.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(228, 1, 228, '0.00', '9500.00', '3.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(229, 1, 229, '0.00', '9500.00', '3.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(230, 1, 230, '0.00', '9500.00', '2.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(231, 1, 231, '0.00', '30875.00', '7.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(232, 1, 232, '0.00', '29925.00', '14.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(233, 1, 233, '0.00', '32775.00', '6.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(234, 1, 234, '0.00', '32775.00', '3.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(235, 1, 235, '0.00', '72200.00', '5.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(236, 1, 236, '0.00', '22325.00', '11.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(237, 1, 237, '0.00', '26600.00', '9.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(238, 1, 238, '0.00', '26600.00', '8.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(239, 1, 239, '0.00', '52725.00', '5.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(240, 1, 240, '0.00', '26600.00', '3.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(242, 1, 242, '0.00', '17100.00', '2.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(243, 1, 243, '0.00', '17100.00', '4.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(245, 1, 245, '0.00', '17100.00', '2.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(246, 1, 246, '0.00', '13300.00', '3.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(247, 1, 247, '0.00', '13300.00', '2.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(248, 1, 248, '0.00', '13300.00', '1.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(249, 1, 249, '0.00', '13300.00', '6.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(250, 1, 250, '0.00', '13300.00', '6.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(251, 1, 251, '0.00', '13300.00', '5.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(252, 1, 252, '0.00', '13300.00', '3.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(254, 1, 254, '0.00', '6175.00', '5.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(255, 1, 255, '0.00', '6175.00', '1.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(256, 1, 256, '0.00', '29925.00', '4.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(258, 1, 258, '0.00', '32300.00', '5.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(259, 1, 259, '0.00', '32300.00', '5.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(260, 1, 260, '0.00', '24225.00', '2.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(261, 1, 261, '0.00', '12350.00', '15.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(262, 1, 262, '0.00', '16150.00', '9.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(263, 1, 263, '0.00', '18050.00', '21.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(264, 1, 264, '0.00', '11875.00', '17.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(265, 1, 265, '0.00', '17100.00', '15.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(266, 1, 266, '0.00', '12825.00', '17.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(267, 1, 267, '0.00', '9975.00', '17.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(268, 1, 268, '0.00', '16150.00', '4.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(269, 1, 269, '0.00', '5700.00', '8.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(270, 1, 270, '0.00', '4275.00', '13.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(271, 1, 271, '0.00', '4275.00', '8.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(272, 1, 272, '0.00', '25650.00', '5.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(273, 1, 273, '0.00', '24510.00', '2.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(274, 1, 274, '0.00', '21280.00', '4.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(275, 1, 275, '0.00', '21375.00', '1.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(276, 1, 276, '0.00', '21375.00', '5.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(277, 1, 277, '0.00', '8550.00', '5.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(278, 1, 278, '0.00', '8550.00', '3.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(279, 1, 279, '0.00', '21375.00', '5.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(281, 1, 281, '0.00', '23750.00', '1.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(282, 1, 282, '0.00', '13300.00', '14.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(283, 1, 283, '0.00', '13965.00', '31.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(287, 1, 287, '0.00', '6175.00', '8.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(297, 1, 297, '0.00', '7600.00', '1.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(302, 1, 302, '0.00', '2850.00', '43.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(303, 1, 303, '0.00', '2850.00', '21.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(304, 1, 304, '0.00', '2850.00', '16.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(305, 1, 305, '0.00', '2850.00', '42.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(307, 1, 307, '0.00', '57000.00', '1.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(311, 1, 311, '0.00', '117800.00', '2.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(312, 1, 312, '0.00', '38000.00', '2.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(313, 1, 313, '0.00', '45125.00', '4.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(314, 1, 314, '0.00', '82175.00', '4.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(315, 1, 315, '0.00', '29925.00', '3.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(318, 1, 318, '0.00', '17100.00', '1.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(329, 1, 329, '0.00', '13300.00', '6.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(331, 1, 331, '0.00', '13300.00', '9.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(332, 1, 332, '0.00', '13300.00', '1.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(333, 1, 333, '0.00', '15200.00', '12.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(334, 1, 334, '0.00', '199500.00', '12.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(337, 1, 337, '0.00', '66975.00', '1.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(338, 1, 338, '0.00', '89300.00', '2.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(339, 1, 339, '0.00', '47500.00', '1.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(342, 1, 342, '0.00', '8075.00', '14.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(343, 1, 343, '0.00', '9500.00', '16.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(344, 1, 344, '0.00', '19000.00', '1.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(345, 1, 345, '0.00', '9500.00', '8.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(346, 1, 346, '0.00', '9500.00', '7.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(347, 1, 347, '0.00', '8075.00', '4.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(348, 1, 348, '0.00', '31350.00', '1.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(349, 1, 349, '0.00', '23750.00', '4.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(350, 1, 350, '0.00', '30400.00', '1.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(352, 1, 352, '0.00', '33250.00', '2.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(353, 1, 353, '0.00', '38475.00', '1.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(355, 1, 355, '0.00', '38475.00', '1.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(356, 1, 356, '0.00', '38475.00', '2.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(357, 1, 357, '0.00', '14725.00', '1.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(359, 1, 359, '0.00', '42275.00', '1.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(361, 1, 361, '0.00', '16150.00', '8.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(365, 1, 365, '0.00', '950.00', '4.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(366, 1, 366, '0.00', '142500.00', '1.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(367, 1, 367, '0.00', '69350.00', '11.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(371, 1, 371, '0.00', '13300.00', '14.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(372, 1, 372, '0.00', '95000.00', '5.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(373, 1, 373, '0.00', '19000.00', '11.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(374, 1, 374, '0.00', '5700.00', '7.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(375, 1, 375, '0.00', '4750.00', '9.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(376, 1, 376, '0.00', '4750.00', '3.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(377, 1, 377, '0.00', '5225.00', '5.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(378, 1, 378, '0.00', '5225.00', '1.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(379, 1, 379, '0.00', '5700.00', '10.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(380, 1, 380, '0.00', '23750.00', '13.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(383, 1, 383, '0.00', '10450.00', '153.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(384, 1, 384, '0.00', '14725.00', '12.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(385, 1, 385, '0.00', '17575.00', '12.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(386, 1, 386, '0.00', '2375.00', '7.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(387, 1, 387, '0.00', '18525.00', '12.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(388, 1, 388, '0.00', '11400.00', '13.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(389, 1, 389, '0.00', '2375.00', '9.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(390, 1, 390, '0.00', '4750.00', '17.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(391, 1, 391, '0.00', '3800.00', '11.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(393, 1, 393, '0.00', '18050.00', '1.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(394, 1, 394, '0.00', '18525.00', '1.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(395, 1, 395, '0.00', '18050.00', '1.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(396, 1, 396, '0.00', '19475.00', '3.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(397, 1, 397, '0.00', '18050.00', '3.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(398, 1, 398, '0.00', '18050.00', '2.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(399, 1, 399, '0.00', '19475.00', '3.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(400, 1, 400, '0.00', '18050.00', '3.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(401, 1, 401, '0.00', '19475.00', '3.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(402, 1, 402, '0.00', '19475.00', '1.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(403, 1, 403, '0.00', '19475.00', '1.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(405, 1, 405, '0.00', '19475.00', '5.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(409, 1, 409, '0.00', '23750.00', '4.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(410, 1, 410, '0.00', '23750.00', '4.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(413, 1, 413, '0.00', '4750.00', '23.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(414, 1, 414, '0.00', '8550.00', '25.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(415, 1, 415, '0.00', '7125.00', '12.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(421, 1, 421, '0.00', '9975.00', '7.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(423, 1, 423, '0.00', '14725.00', '13.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(424, 1, 424, '0.00', '6650.00', '6.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(425, 1, 425, '0.00', '14725.00', '11.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(426, 1, 426, '0.00', '6650.00', '3.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(427, 1, 427, '0.00', '14725.00', '2.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(428, 1, 428, '0.00', '33250.00', '7.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(429, 1, 429, '0.00', '30400.00', '3.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(430, 1, 430, '0.00', '13870.00', '6.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(431, 1, 431, '0.00', '7125.00', '5.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(432, 1, 432, '0.00', '5225.00', '11.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(433, 1, 433, '0.00', '19950.00', '6.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(434, 1, 434, '0.00', '8550.00', '13.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(435, 1, 435, '0.00', '8550.00', '11.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(437, 1, 437, '0.00', '23750.00', '8.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(440, 1, 440, '0.00', '34912.50', '1.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(442, 1, 442, '0.00', '18525.00', '11.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(443, 1, 443, '0.00', '11970.00', '3.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(444, 1, 444, '0.00', '9500.00', '1.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(445, 1, 445, '0.00', '9500.00', '3.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(446, 1, 446, '0.00', '9500.00', '1.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(449, 1, 449, '0.00', '15390.00', '5.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(450, 1, 450, '0.00', '20045.00', '2.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(451, 1, 451, '0.00', '70870.00', '2.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(454, 1, 454, '0.00', '54910.00', '2.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(460, 1, 460, '0.00', '26600.00', '2.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(461, 1, 461, '0.00', '41325.00', '1.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(462, 1, 462, '0.00', '30875.00', '4.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(463, 1, 463, '0.00', '35910.00', '1.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(466, 1, 466, '0.00', '37050.00', '5.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(470, 1, 470, '0.00', '27550.00', '3.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(472, 1, 472, '0.00', '30875.00', '1.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(476, 1, 476, '0.00', '15675.00', '3.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(480, 1, 480, '0.00', '61750.00', '4.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(481, 1, 481, '0.00', '29450.00', '3.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(482, 1, 482, '0.00', '15200.00', '12.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(483, 1, 483, '0.00', '7125.00', '18.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(484, 1, 484, '0.00', '8550.00', '5.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(485, 1, 485, '0.00', '8550.00', '4.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(486, 1, 486, '0.00', '5700.00', '20.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(488, 1, 488, '0.00', '3800.00', '10.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(490, 1, 490, '0.00', '4750.00', '11.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(492, 1, 492, '0.00', '4750.00', '7.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(493, 1, 493, '0.00', '8075.00', '9.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(494, 1, 494, '0.00', '6650.00', '17.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(496, 1, 496, '0.00', '18525.00', '12.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(497, 1, 497, '0.00', '7125.00', '16.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(498, 1, 498, '0.00', '3800.00', '5.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(499, 1, 499, '0.00', '3990.00', '11.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(502, 1, 502, '0.00', '9025.00', '10.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(503, 1, 503, '0.00', '6650.00', '7.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(505, 1, 505, '0.00', '10450.00', '13.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(506, 1, 506, '0.00', '7125.00', '8.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(507, 1, 507, '0.00', '5700.00', '4.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(508, 1, 508, '0.00', '19950.00', '2.00', '2022-01-19 11:51:00', '2022-01-19 11:51:00');

-- --------------------------------------------------------

--
-- Table structure for table `jual`
--

CREATE TABLE `jual` (
  `id_jual` int(10) NOT NULL,
  `id_anggota` int(10) NOT NULL,
  `id_user` int(10) NOT NULL,
  `metode_bayar` varchar(150) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `total` decimal(17,2) NOT NULL,
  `diskon` decimal(17,2) NOT NULL DEFAULT 0.00,
  `pajak` decimal(17,2) NOT NULL DEFAULT 0.00,
  `dibuat_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `diubah_pada` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jual_cicil`
--

CREATE TABLE `jual_cicil` (
  `id_jual_cicil` int(10) NOT NULL,
  `id_jual` int(10) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `tanggal_jatuh_tempo` date NOT NULL,
  `jumlah_tagihan` decimal(17,0) NOT NULL,
  `is_terbayar` int(1) NOT NULL DEFAULT 0,
  `dibuat_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `diubah_pada` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jual_detail`
--

CREATE TABLE `jual_detail` (
  `id_jual_detail` int(10) NOT NULL,
  `id_jual` int(10) NOT NULL,
  `id_produk` int(10) NOT NULL,
  `hpp` decimal(17,2) NOT NULL,
  `harga_jual` decimal(17,2) NOT NULL,
  `jumlah` decimal(17,2) NOT NULL,
  `dibuat_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `diubah_pada` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id_keranjang` int(10) NOT NULL,
  `id_user` int(10) NOT NULL,
  `id_produk` int(10) NOT NULL,
  `hpp` decimal(17,2) NOT NULL,
  `harga` decimal(17,2) NOT NULL,
  `jumlah` decimal(17,0) NOT NULL,
  `dibuat_pada` datetime DEFAULT current_timestamp(),
  `diubah_pada` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `keranjang_beli`
--

CREATE TABLE `keranjang_beli` (
  `id_keranjang_beli` int(10) NOT NULL,
  `id_user` int(10) NOT NULL,
  `id_produk` int(10) NOT NULL,
  `hpp` decimal(17,2) NOT NULL,
  `harga` decimal(17,2) NOT NULL,
  `jumlah` decimal(17,0) NOT NULL,
  `dibuat_pada` datetime DEFAULT current_timestamp(),
  `diubah_pada` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `keranjang_beli`
--

INSERT INTO `keranjang_beli` (`id_keranjang_beli`, `id_user`, `id_produk`, `hpp`, `harga`, `jumlah`, `dibuat_pada`, `diubah_pada`) VALUES
(1, 1, 457, '26600.00', '1.00', '1', '2022-01-08 11:46:18', '2022-01-08 11:46:18');

-- --------------------------------------------------------

--
-- Table structure for table `pemasok`
--

CREATE TABLE `pemasok` (
  `id_pemasok` int(10) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `alamat` text NOT NULL,
  `telepon` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `dibuat_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `diubah_pada` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pemasok`
--

INSERT INTO `pemasok` (`id_pemasok`, `nama`, `alamat`, `telepon`, `email`, `dibuat_pada`, `diubah_pada`) VALUES
(1, 'SALDO AWAL BARANG', 'Dalung', '-', '-', '2021-11-23 23:32:00', '2021-11-23 23:32:00'),
(2, 'TIARA GATSU', 'Dalung', '-', '-', '2021-11-23 23:32:00', '2021-11-23 23:32:00'),
(3, 'DELTA SATRIA DEWATA', '-', '-', '-', '2021-11-23 23:32:00', '2021-11-23 23:32:00'),
(4, 'KRISTONO', '-', '-', '-', '2021-11-23 23:32:00', '2021-11-23 23:32:00'),
(5, 'ERNILA', '-', '-', '-', '2021-11-23 23:32:00', '2021-11-23 23:32:00'),
(6, 'HENDRY', '-', '-', '-', '2021-11-23 23:32:00', '2021-11-23 23:32:00'),
(7, 'PUTU PRIA DARMA', '-', '-', '-', '2021-11-23 23:32:00', '2021-11-23 23:32:00'),
(8, 'REJEKI JAYA', '-', '-', '-', '2021-11-23 23:32:00', '2021-11-23 23:32:00'),
(9, 'EKO', '-', '-', '-', '2021-11-23 23:32:00', '2021-11-23 23:32:00'),
(10, 'VISTA', '-', '-', '-', '2021-11-23 23:32:00', '2021-11-23 23:32:00'),
(11, 'SISWA SMK', '-', '-', '-', '2021-11-23 23:32:00', '2021-11-23 23:32:00'),
(12, 'EDY MOELJADI', '-', '-', '-', '2021-11-23 23:32:00', '2021-11-23 23:32:00'),
(13, 'RIA NURLINA', '-', '-', '-', '2021-11-23 23:32:00', '2021-11-23 23:32:00'),
(14, 'BU DAYU', '-', '-', '-', '2021-11-23 23:32:00', '2021-11-23 23:32:00'),
(15, 'PAK LAMBON', '-', '-', '-', '2021-11-23 23:32:00', '2021-11-23 23:32:00'),
(16, 'PAK EKO', '-', '-', '-', '2021-11-23 23:32:00', '2021-11-23 23:32:00'),
(17, 'BU CHRISTINE DWIYANTI', '-', '-', '-', '2021-11-23 23:32:00', '2021-11-23 23:32:00'),
(18, 'RETNI', '-', '-', '-', '2021-11-23 23:32:00', '2021-11-23 23:32:00'),
(19, 'PURWANINGSIH', '-', '-', '-', '2021-11-23 23:32:00', '2021-11-23 23:32:00'),
(20, 'BALI OFISINDO', '-', '-', '-', '2021-11-23 23:32:00', '2021-11-23 23:32:00'),
(21, 'BUMI HIJAU', '-', '-', '-', '2021-11-23 23:32:00', '2021-11-23 23:32:00'),
(22, 'KANTOR POS', '-', '-', '-', '2021-11-23 23:32:00', '2021-11-23 23:32:00'),
(23, 'ONLINE', '-', '-', '-', '2021-11-23 23:32:00', '2021-11-23 23:32:00'),
(24, 'PAK TIMOTIUS', '-', '-', '-', '2021-11-23 23:32:00', '2021-11-23 23:32:00'),
(25, 'BU HERINDIYAH', '-', '-', '-', '2021-11-23 23:32:00', '2021-11-23 23:32:00'),
(26, 'BU FENNY', '-', '-', '-', '2021-11-23 23:32:00', '2021-11-23 23:32:00'),
(27, 'PAK KRISTONO', '-', '-', '-', '2021-11-23 23:32:00', '2021-11-23 23:32:00');

-- --------------------------------------------------------

--
-- Table structure for table `periode_pembukuan`
--

CREATE TABLE `periode_pembukuan` (
  `id_periode` int(10) NOT NULL,
  `kode` varchar(7) NOT NULL,
  `tahun` int(4) NOT NULL,
  `bulan` varchar(20) NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_selesai` date NOT NULL,
  `is_locked` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `periode_pembukuan`
--

INSERT INTO `periode_pembukuan` (`id_periode`, `kode`, `tahun`, `bulan`, `tanggal_mulai`, `tanggal_selesai`, `is_locked`) VALUES
(13, '2022.01', 2022, 'Januari', '2021-12-21', '2022-01-20', 0),
(14, '2022.02', 2022, 'Februari', '2022-02-21', '2022-03-20', 0),
(15, '2022.03', 2022, 'Maret', '2022-03-01', '2022-03-30', 0),
(16, '2022.04', 2022, 'April', '2022-04-01', '2022-04-30', 0),
(17, '2022.05', 2022, 'Mei', '2022-05-01', '2022-05-31', 0),
(18, '2022.06', 2022, 'Juni', '2022-06-01', '2022-06-30', 0),
(19, '2022.07', 2022, 'Juli', '2022-07-01', '2022-07-31', 0),
(20, '2022.08', 2022, 'Agustus', '2022-08-01', '2022-08-31', 0),
(21, '2022.09', 2022, 'September', '2022-09-01', '2022-09-30', 0),
(22, '2022.10', 2022, 'Oktober', '2022-10-01', '2022-10-31', 0),
(23, '2022.11', 2022, 'November', '2022-11-01', '2022-11-30', 0),
(24, '2022.12', 2022, 'Desember', '2022-12-01', '2022-12-31', 0);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(20) NOT NULL,
  `barcode` varchar(20) COLLATE latin1_general_ci DEFAULT NULL,
  `id_produk_kategori` int(10) DEFAULT NULL,
  `nama` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `satuan` varchar(100) COLLATE latin1_general_ci NOT NULL DEFAULT 'PCS',
  `keterangan` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `hpp` decimal(17,2) DEFAULT 0.00,
  `hpp_awal` decimal(17,2) DEFAULT 0.00,
  `qty` decimal(10,0) DEFAULT 0,
  `qty_awal` decimal(10,0) DEFAULT 0,
  `harga_jual` decimal(17,2) NOT NULL,
  `stok_min` decimal(10,2) DEFAULT 0.00,
  `servis` int(1) NOT NULL,
  `dibuat_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `diubah_pada` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `barcode`, `id_produk_kategori`, `nama`, `satuan`, `keterangan`, `gambar`, `hpp`, `hpp_awal`, `qty`, `qty_awal`, `harga_jual`, `stok_min`, `servis`, `dibuat_pada`, `diubah_pada`) VALUES
(1, '', 1, 'CUSSONS BABY  SOAP MILD 100 GRAM', 'PCS', '-', '', '4750.00', '0.00', '0', '0', '5000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(2, '', 1, 'CUSSONS BABY SOAP SOFT & SMOOTH 100 GRAM', 'PCS', '-', '', '4750.00', '0.00', '6', '0', '5000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(3, '', 1, 'CUSSONS BABY HAIR LOTION 200 ML', 'PCS', '-', '', '36100.00', '0.00', '3', '0', '38000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(4, '', 1, 'CUSSON BABY OIL 100 ML', 'PCS', '-', '', '19000.00', '0.00', '2', '0', '20000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(5, '', 1, 'CITRA ALOE VERA 70 GRAM', 'PCS', '-', '', '2375.00', '0.00', '11', '0', '2500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(6, '', 1, 'CITRA FRESH WHITE 70 GRAM', 'PCS', '-', '', '2850.00', '0.00', '0', '0', '3000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(7, '', 1, 'CITRA PEARL 70 GRAM', 'PCS', '-', '', '2850.00', '0.00', '10', '0', '3000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(8, '', 1, 'CITRA NATURAL 70 GRAM', 'PCS', '-', '', '2850.00', '0.00', '10', '0', '3000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(9, '', 1, 'LIFEBUOY COOL FRESH 75 GRAM', 'PCS', '-', '', '3325.00', '0.00', '16', '0', '3500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(10, '', 1, 'LIFEBUOY TOTAL 10 (MERAH) 75 GRAM', 'PCS', '-', '', '3325.00', '0.00', '15', '0', '3500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(11, '', 1, 'LIFEBUOY MILD CARE 75 GRAM', 'PCS', '-', '', '3325.00', '0.00', '14', '0', '3500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(12, '', 1, 'LIFEBUOY MATCHA 75 GRAM', 'PCS', '-', '', '3325.00', '0.00', '19', '0', '3500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(13, '', 1, 'LIFEBUOY KASTURI MUSK 75 GRAM', 'PCS', '-', '', '3325.00', '0.00', '8', '0', '3500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(14, '', 1, 'LIFEBUOY LEMON FRESH 75 GRAM', 'PCS', '-', '', '3325.00', '0.00', '10', '0', '3500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(15, '', 1, 'LIFEBUOY TOTAL 10 (MERAH) 110 GRAM', 'PCS', '-', '', '4275.00', '0.00', '2', '0', '4500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(16, '', 1, 'LIFEBUOY LEMON FRESH 110 GRAM', 'PCS', '-', '', '4275.00', '0.00', '11', '0', '4500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(17, '', 1, 'LIFEBUOY MATCHA 110 GRAM', 'PCS', '-', '', '4275.00', '0.00', '9', '0', '4500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(18, '', 1, 'LIFEBUOY KASTURI MUSK 110 GRAM', 'PCS', '-', '', '4275.00', '0.00', '0', '0', '4500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(19, '', 1, 'DETTOL RE-ENERGIZE 100 GRAM', 'PCS', '-', '', '5700.00', '0.00', '15', '0', '6000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(20, '', 1, 'DETTOL ORIGINAL 100 GRAM', 'PCS', '-', '', '5700.00', '0.00', '7', '0', '6000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(21, '', 1, 'DETTOL LASTING FRESH 100 GRAM', 'PCS', '-', '', '5700.00', '0.00', '5', '0', '6000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(22, '', 1, 'DETTOL COOL 100 GRAM', 'PCS', '-', '', '5700.00', '0.00', '0', '0', '6000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(23, '', 1, 'DETTOL SKINCARE 100 GRAM', 'PCS', '-', '', '5700.00', '0.00', '14', '0', '6000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(24, '', 1, 'NUVO NATURE PROTECT (HIJAU) 76 GRAM', 'PCS', '-', '', '2375.00', '0.00', '19', '0', '2500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(25, '', 1, 'NUVO MILD PROTECT (PUTIH) 76 GRAM', 'PCS', '-', '', '2375.00', '0.00', '15', '0', '2500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(26, '', 1, 'NUVO FRESH PROTECT(KUNING) 76 GRAM', 'PCS', '-', '', '2375.00', '0.00', '14', '0', '2500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(27, '', 1, 'NUVO TOTAL PROTECT (MERAH) 76 GRAM', 'PCS', '-', '', '2375.00', '0.00', '13', '0', '2500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(28, '', 1, 'NUVO CARE PROTECT 76 GRAM', 'PCS', '-', '', '2375.00', '0.00', '20', '0', '2500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(29, '', 1, 'NUVO FAMILY CARE REFILL 450 GRAM', 'PCS', '-', '', '22325.00', '0.00', '0', '0', '23500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(30, '', 1, 'NUVO CARE PROTECT REFILL 450 GRAM', 'PCS', '-', '', '22325.00', '0.00', '4', '0', '23500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(31, '', 1, 'NUVO CLASSIC REFILL  450 GRAM', 'PCS', '-', '', '22325.00', '0.00', '0', '0', '23500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(32, '', 1, 'NUVO TOTAL 10 LIQ REFILL 450 GRAM', 'PCS', '-', '', '22325.00', '0.00', '9', '0', '23500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(33, '', 1, 'LUX MAGICAL ORCHID 75 GRAM', 'PCS', '-', '', '3800.00', '0.00', '20', '0', '4000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(34, '', 1, 'LUX SOFT ROSE 75 GRAM', 'PCS', '-', '', '3800.00', '0.00', '14', '0', '4000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(35, '', 1, 'LUX LILY FRESH 75 GRAM', 'PCS', '-', '', '3800.00', '0.00', '20', '0', '4000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(36, '', 1, 'LUX BLUE PEONY 75 GRAM', 'PCS', '-', '', '3800.00', '0.00', '38', '0', '4000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(37, '', 1, 'LUX VELVET JASMINE 75 GRAM', 'PCS', '-', '', '3800.00', '0.00', '29', '0', '4000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(38, '', 1, 'LUX AQUA THE LIGHT 75 GRAM', 'PCS', '-', '', '3800.00', '0.00', '0', '0', '4000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(39, '', 1, 'SHINZU\'I KENSHO 85 GRAM', 'PCS', '-', '', '4275.00', '0.00', '2', '0', '4500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(40, '', 1, 'SHINZU\'I KIREI SKIN 85 GRAM', 'PCS', '-', '', '4275.00', '0.00', '17', '0', '4500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(41, '', 1, 'SHINZU\'I MATSU SKIN 85 GRAM', 'PCS', '-', '', '4275.00', '0.00', '18', '0', '4500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(42, '', 1, 'SHINZU\'I MYORI 85 GRAM', 'PCS', '-', '', '4275.00', '0.00', '14', '0', '4500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(43, '', 1, 'SHINZU\'I SAKURA 85 GRAM', 'PCS', '-', '', '4275.00', '0.00', '2', '0', '4500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(44, '', 1, 'GIV DAMASK ROSE & CHERRY BLOSSOM (PINK) 76 GRAM', 'PCS', '-', '', '2375.00', '0.00', '16', '0', '2500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(45, '', 1, 'GIV PASSION FLOWERS & SWEET BERRY (UNGU) 76 GRAM', 'PCS', '-', '', '2375.00', '0.00', '10', '0', '2500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(46, '', 1, 'GIV GREEN TEA & ALMOND OIL (HIJAU) 76 GRAM', 'PCS', '-', '', '2375.00', '0.00', '13', '0', '2500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(47, '', 1, 'GIV SPARKLING FRES 76 GRAM', 'PCS', '-', '', '2375.00', '0.00', '0', '0', '2500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(48, '', 1, 'DETTOL REFILL ORIGINAL 410 GRAM', 'PCS', '-', '', '31825.00', '0.00', '6', '0', '33500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(49, '', 1, 'LIFEBUOY REFILL COOL FRESH 450 GRAM', 'PCS', '-', '', '26600.00', '0.00', '2', '0', '28000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(50, '', 1, 'LIFEBUOY REFILL LEMON FRESH 450 GRAM', 'PCS', '-', '', '26600.00', '0.00', '0', '0', '28000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(51, '', 1, 'LIFEBUOY REFILL MILD CARE 450 GRAM', 'PCS', '-', '', '26600.00', '0.00', '3', '0', '28000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(52, '', 1, 'LIFEBUOY REFILL TOTAL 10 (MERAH) 450 GRAM', 'PCS', '-', '', '26600.00', '0.00', '4', '0', '28000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(53, '', 1, 'LUX REFILL VELVET JASMINE 450 ML', 'PCS', '-', '', '25650.00', '0.00', '1', '0', '27000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(54, '', 1, 'LUX REFILL MAGICAL ORCHID 450 ML', 'PCS', '-', '', '28500.00', '0.00', '5', '0', '30000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(55, '', 1, 'LUX REFILL BLUE PEONY 450 ML', 'PCS', '-', '', '25650.00', '0.00', '3', '0', '27000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(56, '', 1, 'LUX REFILL SOFT ROSE 450 ML', 'PCS', '-', '', '25650.00', '0.00', '3', '0', '27000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(57, '', 1, 'LUX REFILL LILY FRESH 450 ML', 'PCS', '-', '', '25650.00', '0.00', '3', '0', '27000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(58, '', 1, 'ZWITSAL BABY BATH MILK & HONEY 450 ML', 'PCS', '-', '', '36100.00', '0.00', '3', '0', '38000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(59, '', 1, 'SLEEK BOTLE REFILL 450 ML', 'PCS', '-', '', '29450.00', '0.00', '1', '0', '31000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(60, '', 2, 'CUSSON BABY CANDLE NUT & CELERY 200 ML', 'PCS', '-', '', '19000.00', '0.00', '3', '0', '20000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(61, '', 2, 'LIFEBUOY ANTI KETOMBE  170 ML', 'PCS', '-', '', '21375.00', '0.00', '9', '0', '22500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(62, '', 2, 'LIFEBUOY PERAWATAN RAMBUT RONTOK 170 ML', 'PCS', '-', '', '21375.00', '0.00', '2', '0', '22500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(63, '', 2, 'LIFEBUOY KUAT & BERKILAU 170 ML', 'PCS', '-', '', '21375.00', '0.00', '4', '0', '22500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(64, '', 2, 'CLEAR APPLE FREASH 160 ML', 'PCS', '-', '', '29450.00', '0.00', '3', '0', '31000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(65, '', 2, 'CLEAR ICE COOL MENTHOL 160 ML', 'PCS', '-', '', '29450.00', '0.00', '0', '0', '31000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(66, '', 2, 'CLEAR ICE COOL MENTHOL 125 ML', 'PCS', '-', '', '29450.00', '0.00', '0', '0', '31000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(67, '', 2, 'CLEAR COMPLETE SOFT CARE 160 ML', 'PCS', '-', '', '29450.00', '0.00', '5', '0', '31000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(68, '', 2, 'CLEAR LEMON FRESH 160 ML', 'PCS', '-', '', '29450.00', '0.00', '2', '0', '31000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(69, '', 2, 'DOVE TOTAL DAMAGE TREATMENT 160 ML', 'PCS', '-', '', '27075.00', '0.00', '6', '0', '28500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(70, '', 2, 'DOVE CONDITIONER HAIR GROWTH RITUAL 160 ML', 'PCS', '-', '', '26505.00', '0.00', '0', '0', '27900.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(71, '', 2, 'TRESEMME HAIR FALL CONTROL 340 ML', 'PCS', '-', '', '54150.00', '0.00', '4', '0', '57000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(72, '', 2, 'TRESEMME KERATIN SMOOTH 340 ML', 'PCS', '-', '', '54150.00', '0.00', '0', '0', '57000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(73, '', 2, 'TRESEMME KERATIN SMOOTH 170 ML', 'PCS', '-', '', '28500.00', '0.00', '2', '0', '30000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(74, '', 2, 'TRESEMME HAIR FALL CONTROL 170 ML', 'PCS', '-', '', '26600.00', '0.00', '5', '0', '28000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(75, '', 2, 'TRESEMME CONDITONER KERATIN SMOOTH 340 ML', 'PCS', '-', '', '56050.00', '0.00', '4', '0', '59000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(76, '', 2, 'REJOICE RICH SOFT SMOOTH 160 ML', 'PCS', '-', '', '21850.00', '0.00', '2', '0', '23000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(77, '', 2, 'REJOICE ANTI DANDRUFF 3-IN-1 (HIJAB) 160 ML', 'PCS', '-', '', '21850.00', '0.00', '13', '0', '23000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(78, '', 2, 'HEAD & SHOULDERS SMOOTH & SILKY 160 ML', 'PCS', '-', '', '28500.00', '0.00', '5', '0', '30000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(79, '', 2, 'HEAD & SHOULDERS CLEAN & BALANCED 160 ML', 'PCS', '-', '', '28500.00', '0.00', '3', '0', '30000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(80, '', 2, 'HEAD & SHOULDERS LEMON FRESH 160 ML', 'PCS', '-', '', '28500.00', '0.00', '4', '0', '30000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(81, '', 2, 'PANTENE RAMBUT RONTOK 130 ML', 'PCS', '-', '', '23750.00', '0.00', '5', '0', '25000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(82, '', 2, 'PANTENE HALUS & LEMBUT 130 ML', 'PCS', '-', '', '23750.00', '0.00', '4', '0', '25000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(83, '', 2, 'PANTENE ANTI KETOMBE 130 ML', 'PCS', '-', '', '23750.00', '0.00', '5', '0', '25000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(84, '', 2, 'PANTENE RAMBUT RUSAK 130 ML', 'PCS', '-', '', '23750.00', '0.00', '9', '0', '25000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(85, '', 2, 'PANTENE TOTAL DAMAGE CARE 135 ML', 'PCS', '-', '', '23750.00', '0.00', '0', '0', '25000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(86, '', 2, 'PANTENE HAIR FALL 130 ML', 'PCS', '-', '', '23750.00', '0.00', '0', '0', '25000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(87, '', 2, 'PANTENE CONDITIONER HALUS & LEMBUT 130 ML', 'PCS', '-', '', '23750.00', '0.00', '4', '0', '25000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(88, '', 2, 'PANTENE CONDITIONER RAMBUT RONTOK 130 ML', 'PCS', '-', '', '23750.00', '0.00', '0', '0', '25000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(89, '', 2, 'PANTENE CONDITIONER NATURE CARE 135 ML', 'PCS', '-', '', '23750.00', '0.00', '2', '0', '25000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(90, '', 2, 'PANTENE CONDITIONER RAMBUT RUSAK 135 ML', 'PCS', '-', '', '23750.00', '0.00', '0', '0', '25000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(91, '', 2, 'PANTENE CONDITIONER  HAIR FALL 130 ML', 'PCS', '-', '', '23750.00', '0.00', '3', '0', '25000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(92, '', 2, 'PANTENE CONDITIONER TOTAL DAMAGE 130 ML', 'PCS', '-', '', '23750.00', '0.00', '3', '0', '25000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(93, '', 2, 'SUNSILK BLACK SHINE 170 ML', 'PCS', '-', '', '22800.00', '0.00', '4', '0', '24000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(94, '', 2, 'NATURE GINSENG 140 ML', 'PCS', '-', '', '22325.00', '0.00', '1', '0', '23500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(95, '', 2, 'NATURE GINSENG 270 ML', 'PCS', '-', '', '32775.00', '0.00', '0', '0', '34500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(96, '', 2, 'SUNSILK SOFT AND SMOOTH (KUNING) 170 ML', 'PCS', '-', '', '22800.00', '0.00', '3', '0', '24000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(97, '', 2, 'SERASOFT H.FALL TREAT 170 ML', 'PCS', '-', '', '21850.00', '0.00', '2', '0', '23000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(98, '', 3, 'MARINA UV WHITE BRIGHT & FRESH 185 ML', 'PCS', '-', '', '9500.00', '0.00', '0', '0', '10000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(99, '', 3, 'MARINA UV WHITE EXTRA SPF 30 185 ML', 'PCS', '-', '', '14250.00', '0.00', '0', '0', '15000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(100, '', 3, 'MARINA BODY LTN COLL ASTA 185 ML', 'PCS', '-', '', '14250.00', '0.00', '1', '0', '15000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(101, '', 3, 'MARINA  UV WHITE HEALTHY & GLOW 185 ML', 'PCS', '-', '', '9500.00', '0.00', '5', '0', '10000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(102, '', 3, 'MARINA UV HYDROCOOL GEL  185 ML', 'PCS', '-', '', '14250.00', '0.00', '2', '0', '15000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(103, '', 3, 'CITRA PEARLY WHITE UV 230 ML', 'PCS', '-', '', '21850.00', '0.00', '3', '0', '23000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(104, '', 3, 'CITRA NATURAL GLOWING WHITE UV 230 ML', 'PCS', '-', '', '21850.00', '0.00', '5', '0', '23000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(105, '', 3, 'CITRA FRESH WHITE UV GEL ALOE VERA 230 ML', 'PCS', '-', '', '24700.00', '0.00', '5', '0', '26000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(106, '', 3, 'VASELINE HEALTY WHITE NIGHT REPAIR 200 ML', 'PCS', '-', '', '36100.00', '0.00', '7', '0', '38000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(107, '', 3, 'VASELINE INTENSIVE CARE ALOE SOOTHE 200 ML', 'PCS', '-', '', '26600.00', '0.00', '2', '0', '28000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(108, '', 3, 'VASELINE HEALTY WHITE FRESH & FAIR 200 ML', 'PCS', '-', '', '27550.00', '0.00', '4', '0', '29000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(109, '', 3, 'VASELINE INTENSIVE CARE DEEP RESTORE 200 ML', 'PCS', '-', '', '24700.00', '0.00', '1', '0', '26000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(110, '', 3, 'HERBORIST ALOEVERA GEL 250 GRAM', 'PCS', '-', '', '75050.00', '0.00', '0', '0', '79000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(111, '', 4, 'SARI AYU CLEANSING MILK MAWAR 150 ML', 'PCS', '-', '', '15675.00', '0.00', '5', '0', '16500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(112, '', 4, 'SARI AYU REFRESHING TONER MAWAR 100 ML', 'PCS', '-', '', '13300.00', '0.00', '1', '0', '14000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(113, '', 4, 'SARI AYU CLEANSING MILK KENANGA 150 ML', 'PCS', '-', '', '14250.00', '0.00', '4', '0', '15000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(114, '', 4, 'SARI AYU REFRESHING TONER KENANGA 150 ML', 'PCS', '-', '', '13300.00', '0.00', '2', '0', '14000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(115, '', 4, 'SARI AYU CLEANSING MILK JERUK 150 ML', 'PCS', '-', '', '14250.00', '0.00', '5', '0', '15000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(116, '', 4, 'SARI AYU REFRESHING TONER JERUK 150 ML', 'PCS', '-', '', '14725.00', '0.00', '4', '0', '15500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(117, '', 4, 'SARI AYU REFRESHING TONER JERUK 100 ML', 'PCS', '-', '', '10925.00', '0.00', '2', '0', '11500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(118, '', 4, 'SARI AYU REFRESHING TONER MAWAR 150 ML', 'PCS', '-', '', '14725.00', '0.00', '3', '0', '15500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(119, '', 4, 'VIVA MILK CLEANSER LEMON 100 ML', 'PCS', '-', '', '8075.00', '0.00', '5', '0', '8500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(120, '', 4, 'VIVA FACE TONIC LEMON 100 ML', 'PCS', '-', '', '6650.00', '0.00', '7', '0', '7000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(121, '', 4, 'VIVA MILK CLEANSER BENGKOANG 100 ML', 'PCS', '-', '', '8075.00', '0.00', '3', '0', '8500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(122, '', 4, 'VIVA FACE TONIC BENGKOANG 100 ML', 'PCS', '-', '', '7600.00', '0.00', '4', '0', '8000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(123, '', 4, 'VIVA ASTRINGENT CUCUCMBER 100 ML', 'PCS', '-', '', '6650.00', '0.00', '4', '0', '7000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(124, '', 4, 'VIVA AIR MAWAR 100 ML', 'PCS', '-', '', '6175.00', '0.00', '9', '0', '6500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(125, '', 4, 'VIVA MILK CLEANSER CUCUMBER 100 ML', 'PCS', '-', '', '7125.00', '0.00', '4', '0', '7500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(126, '', 26, 'GATSBY WATER GLOSS SOFT 150 GRAM', 'PCS', '-', '', '14725.00', '0.00', '2', '0', '15500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(127, '', 26, 'CLEAR HAIR STYLING ANTY DANDRUFF 100 GRAM', 'PCS', '-', '', '12825.00', '0.00', '5', '0', '13500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(128, '', 26, 'ELLIPS HAIR VITAMIN SMOOTH & SILKY -', 'PCS', '-', '', '13300.00', '0.00', '4', '0', '14000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(129, '', 26, 'ELLIPS HAIR VITAMIN NUTRI COLOR -', 'PCS', '-', '', '13300.00', '0.00', '11', '0', '14000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(130, '', 26, 'ELLIPS HAIR VITAMIN HAIR TREATMENT -', 'PCS', '-', '', '13300.00', '0.00', '13', '0', '14000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(131, '', 5, 'ESKULLIN CHEERFUL SWING 110 ML', 'PCS', '-', '', '23275.00', '0.00', '4', '0', '24500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(132, '', 5, 'CASABLANCA SPORTY 100 ML', 'PCS', '-', '', '14725.00', '0.00', '3', '0', '15500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(133, '', 5, 'CASABLANCA AQUA 100 ML', 'PCS', '-', '', '14725.00', '0.00', '3', '0', '15500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(134, '', 5, 'CASABLANCA ROMANTIC 100 ML', 'PCS', '-', '', '14725.00', '0.00', '0', '0', '15500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(135, '', 5, 'GATSBY URBAN COLOGNE INFINITY 125 ML', 'PCS', '-', '', '18050.00', '0.00', '5', '0', '19000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(136, '', 5, 'GATSBY URBAN COLOGNE ENERGY 125 ML', 'PCS', '-', '', '18050.00', '0.00', '3', '0', '19000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(137, '', 5, 'GATSBY URBAN COLOGNE CONFIDANCE 125 ML', 'PCS', '-', '', '18050.00', '0.00', '1', '0', '19000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(138, '', 5, 'SARIAYU BODY SPLASH COLOGNE TANJUNG 150 ML', 'PCS', '-', '', '30875.00', '0.00', '1', '0', '32500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(139, '', 6, 'MOLTO SOFTENER SPRING BLUE 820 ML', 'PCS', '-', '', '15200.00', '0.00', '0', '0', '16000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(140, '', 6, 'MOLTO SOFTENER BLOSSOM PINK 820 ML', 'PCS', '-', '', '15200.00', '0.00', '0', '0', '16000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(141, '', 6, 'MOLTO ALL IN PINK 720 ML', 'PCS', '-', '', '33250.00', '0.00', '2', '0', '35000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(142, '', 6, 'MOLTO ALL IN BLUE 720 ML', 'PCS', '-', '', '33250.00', '0.00', '5', '0', '35000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(143, '', 6, 'DOWNY SWEETHEART 720 ML', 'PCS', '-', '', '24700.00', '0.00', '7', '0', '26000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(144, '', 6, 'DOWNY MYSTIQUE 680 ML', 'PCS', '-', '', '24700.00', '0.00', '6', '0', '26000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(145, '', 6, 'KISPRAY BLUIS 300 ML', 'PCS', '-', '', '5225.00', '0.00', '8', '0', '5500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(146, '', 6, 'KISPRAY GOLD 300 ML', 'PCS', '-', '', '6175.00', '0.00', '2', '0', '6500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(147, '', 6, 'KISPRAY AMORIS 300 ML', 'PCS', '-', '', '5225.00', '0.00', '14', '0', '5500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(148, '', 6, 'KISPRAY SEGERIS 300 ML', 'PCS', '-', '', '5225.00', '0.00', '0', '0', '5500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(149, '', 6, 'PARFUME LAUNDRY 3 IN 1 AKASIA 800 ML', 'PCS', '-', '', '23750.00', '0.00', '0', '0', '25000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(150, '', 6, 'BAYCLIN 1000 ML', 'PCS', '-', '', '14725.00', '0.00', '2', '0', '15500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(151, '', 6, 'PROKLIN KECIL 125 ML', 'PCS', '-', '', '6650.00', '0.00', '3', '0', '7000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(152, '', 6, 'PROKLIN BOTOL 1000 ML', 'PCS', '-', '', '15485.00', '0.00', '3', '0', '16300.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(153, '', 7, 'HARPIC LIME 700 ML', 'PCS', '-', '', '25650.00', '0.00', '0', '0', '27000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(154, '', 7, 'HARPIC LIME REFILL 450 ML', 'PCS', '-', '', '16150.00', '0.00', '0', '0', '17000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(155, '', 7, 'HARPIC LIME REFILL 700 ML', 'PCS', '-', '', '25650.00', '0.00', '3', '0', '27000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(156, '', 7, 'BEBEK BIRU 450 ML', 'PCS', '-', '', '17575.00', '0.00', '2', '0', '18500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(157, '', 7, 'BEBEK LEMON 450 ML', 'PCS', '-', '', '17575.00', '0.00', '2', '0', '18500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(158, '', 7, 'BEBEK PINUS 450 ML', 'PCS', '-', '', '17575.00', '0.00', '2', '0', '18500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(159, '', 7, 'MR MUSCLE BOTOL (KAMAR MANDI ) 500 ML', 'PCS', '-', '', '15200.00', '0.00', '1', '0', '16000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(160, '', 7, 'MR MUSCLE BOTOL ( KACA) 500 ML', 'PCS', '-', '', '15200.00', '0.00', '0', '0', '16000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(161, '', 7, 'MR MUSCLE BOTOL (DAPUR)  500 ML', 'PCS', '-', '', '15200.00', '0.00', '0', '0', '16000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(162, '', 7, 'MR MUSCLE REFILL (KACA)  440 ML', 'PCS', '-', '', '6650.00', '0.00', '10', '0', '7000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(163, '', 7, 'MR MUSCLE REFILL (DAPUR) 400 ML', 'PCS', '-', '', '6650.00', '0.00', '3', '0', '7000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(164, '', 7, 'MR MUSCLE REFILL (LANTAI) 800 ML', 'PCS', '-', '', '16150.00', '0.00', '1', '0', '17000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(165, '', 7, 'MR MUSCLE REFILL (KAMAR MANDI) 500 ML', 'PCS', '-', '', '15200.00', '0.00', '0', '0', '16000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(166, '', 7, 'SUPER PELL LEMON GINGER 770 ML', 'PCS', '-', '', '16625.00', '0.00', '3', '0', '17500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(167, '', 7, 'SUPER PELL GOLD 770 ML', 'PCS', '-', '', '16625.00', '0.00', '4', '0', '17500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(168, '', 7, 'SUPER PELL FRESH APPLE  770 ML', 'PCS', '-', '', '16625.00', '0.00', '4', '0', '17500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(169, '', 7, 'SUPER PELL CHERRY ROSE 770 ML', 'PCS', '-', '', '16625.00', '0.00', '3', '0', '17500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(170, '', 7, 'VIXAL 470 ML', 'PCS', '-', '', '20425.00', '0.00', '0', '0', '21500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(171, '', 7, 'VIXAL 780 ML', 'PCS', '-', '', '22800.00', '0.00', '10', '0', '24000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(172, '', 7, 'PORSTEX BIRU 1000 ML', 'PCS', '-', '', '19950.00', '0.00', '13', '0', '21000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(173, '', 7, 'PORSTEX UNGU 1000 ML', 'PCS', '-', '', '19950.00', '0.00', '0', '0', '21000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(174, '', 7, 'WIPOL CARBOL CEMARA 780 ML', 'PCS', '-', '', '20425.00', '0.00', '8', '0', '21500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(175, '', 7, 'WIPOL CARBOL CEMARA 240 ML', 'PCS', '-', '', '5225.00', '0.00', '0', '0', '5500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(176, '', 7, 'WIPOL CARBOL LEMON 240 ML', 'PCS', '-', '', '5225.00', '0.00', '0', '0', '5500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(177, '', 7, 'SWALLOW NAPTHALENE BALL 5 PCS', 'PCS', '-', '', '17575.00', '0.00', '10', '0', '18500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(178, '', 7, 'SWALLOW TOILET COLOUR BALL PCS', 'PCS', '-', '', '22800.00', '0.00', '7', '0', '24000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(179, '', 7, 'SWALLOW NAPTHALENE BALL JUMBO ', 'PCS', '-', '', '23750.00', '0.00', '3', '0', '25000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(180, '', 7, 'SWALLOW NAPTALINE  150 GRAM', 'PCS', '-', '', '13300.00', '0.00', '9', '0', '14000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(181, '', 8, 'ATTACK EASY PURPLE BLOSSOM 1,2 KG', 'PCS', '-', '', '24700.00', '0.00', '0', '0', '26000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(182, '', 8, 'ATTACK EASY ROMANTIC FLOWERS 1,2 KG', 'PCS', '-', '', '24700.00', '0.00', '0', '0', '26000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(183, '', 8, 'ATTACK EASY ROMANTIC FLOWERS 700 GRAM', 'PCS', '-', '', '16150.00', '0.00', '0', '0', '17000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(184, '', 8, 'ATTACK EASY SPARKLING BLOOMING 700 GRAM', 'PCS', '-', '', '16150.00', '0.00', '5', '0', '17000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(185, '', 8, 'ATTACK EASY SPARKLING BLOOMING 1,2 KG', 'PCS', '-', '', '24700.00', '0.00', '3', '0', '26000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(186, '', 8, 'ATTACK EASY SWEET GLAMOUR 1.2 KG', 'PCS', '-', '', '24700.00', '0.00', '0', '0', '26000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(187, '', 8, 'DAIA SOFTENER PINK 850 GRAM', 'PCS', '-', '', '18050.00', '0.00', '7', '0', '19000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(188, '', 8, 'DAIA SOFTENER VIOLET 850 GRAM', 'PCS', '-', '', '18050.00', '0.00', '4', '0', '19000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(189, '', 8, 'DAIA SOFTENER BUNGA (ORANGE) 850 GRAM', 'PCS', '-', '', '18050.00', '0.00', '3', '0', '19000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(190, '', 8, 'DAIA SOFTENER LEMON 850 GRAM', 'PCS', '-', '', '18050.00', '0.00', '8', '0', '19000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(191, '', 8, 'DAIA PUTIH 850 GRAM', 'PCS', '-', '', '18050.00', '0.00', '7', '0', '19000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(192, '', 8, 'RINSO ANTI NODA MOLTO ROSE FRESH POWDER 770 GRAM', 'PCS', '-', '', '28025.00', '0.00', '1', '0', '29500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(193, '', 8, 'RINSO ANTI NODA  MOLTO CLASSIC POWDER 770 GRAM', 'PCS', '-', '', '28025.00', '0.00', '0', '0', '29500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(194, '', 8, 'ATTACK PLUS SOFTENER 1,2 KG', 'PCS', '-', '', '28500.00', '0.00', '4', '0', '30000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(195, '', 8, 'ATTACK PLUS SOFTENER 800 GRAM', 'PCS', '-', '', '19950.00', '0.00', '0', '0', '21000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(196, '', 8, 'SO KLIN PURPLE LAVENDER 770 GRAM', 'PCS', '-', '', '21375.00', '0.00', '0', '0', '22500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(197, '', 8, 'SO KLIN PURPLE LAVENDER  847 GRAM', 'PCS', '-', '', '21375.00', '0.00', '2', '0', '22500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(198, '', 8, 'SO KLIN LIQUID  750 ML', 'PCS', '-', '', '22325.00', '0.00', '0', '0', '23500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(199, '', 8, 'RINSO MATIC BUKAAN ATAS LIQUID 800 ML', 'PCS', '-', '', '33250.00', '0.00', '5', '0', '35000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(200, '', 8, 'RINSO CLASIC FRESH  LIQUID 750 ML', 'PCS', '-', '', '26600.00', '0.00', '5', '0', '28000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(201, '', 8, 'RINSO ROSE FRESH  LIQUID 750 ML', 'PCS', '-', '', '26600.00', '0.00', '5', '0', '28000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(202, '', 8, 'RINSO MATIC POWDER BUKAAN ATAS 1 KG', 'PCS', '-', '', '25175.00', '0.00', '0', '0', '26500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(203, '', 8, 'RINSO MATIC POWDER BUKAAN DEPAN 1 KG', 'PCS', '-', '', '38475.00', '0.00', '3', '0', '40500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(204, '', 8, 'RINSO MATIC POWDER BUKAAN ATAS 800 GRAM', 'PCS', '-', '', '25175.00', '0.00', '10', '0', '26500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(205, '', 9, 'GLADE SCENTED GEL APPLE 180 GRAM', 'PCS', '-', '', '34960.00', '0.00', '2', '0', '36800.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(206, '', 9, 'DESINFEKTAN SPRAY SECRET 200 ML', 'PCS', '-', '', '25175.00', '0.00', '1', '0', '26500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(207, '', 9, 'TOILET SPRAY 100 ML', 'PCS', '-', '', '21375.00', '0.00', '4', '0', '22500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(208, '', 9, 'GLADE AUTOMATIC REFILL LAVENDER & VANILLA  225 ML', 'PCS', '-', '', '30400.00', '0.00', '1', '0', '32000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(209, '', 9, 'GLADE AUTOMATIC REFILL WILD BERRIES 225 ML', 'PCS', '-', '', '30400.00', '0.00', '1', '0', '32000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(210, '', 9, 'GLADE AUTOMATIC REFILL OCEAN ESCAPE 225 ML', 'PCS', '-', '', '30400.00', '0.00', '1', '0', '32000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(211, '', 9, 'GLADE AUTOMATIC REFILL LEMON 225 ML', 'PCS', '-', '', '30400.00', '0.00', '1', '0', '32000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(212, '', 9, 'GLADE AUTOMATIC REFILL CLEAN LINEN 225 ML', 'PCS', '-', '', '30400.00', '0.00', '0', '0', '32000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(213, '', 9, 'GLADE AUTOMATIC REFILL  PEONY & BERRY BLISS 225 ML', 'PCS', '-', '', '30400.00', '0.00', '0', '0', '32000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(214, '', 9, 'GLADE SPRAY ORANGE 250 ML', 'PCS', '-', '', '15390.00', '0.00', '0', '0', '16200.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(215, '', 9, 'GLADE SPRAY SPRINGE JASMINE 250 ML', 'PCS', '-', '', '15390.00', '0.00', '0', '0', '16200.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(216, '', 9, 'GLADE SPRAY PEONNY & BERRY BLISS 250 ML', 'PCS', '-', '', '15390.00', '0.00', '0', '0', '16200.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(217, '', 9, 'GLADE SPRAY OCEAN ESCAPE 250 ML', 'PCS', '-', '', '15390.00', '0.00', '0', '0', '16200.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(218, '', 9, 'GLADE SPRAY WILD BERRIES 250 ML', 'PCS', '-', '', '15390.00', '0.00', '0', '0', '16200.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(219, '', 9, 'GLADE SPRAY WILD LAVENDER 250 ML', 'PCS', '-', '', '15390.00', '0.00', '5', '0', '16200.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(220, '', 9, 'GLADE SPRAY ELEGANT VANILLA & OUD WOOD  250 ML', 'PCS', '-', '', '15390.00', '0.00', '0', '0', '16200.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(221, '', 9, 'BAY FRESH FROZEN LIME PCS', 'PCS', '-', '', '11400.00', '0.00', '3', '0', '12000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(222, '', 9, 'BAY FRESH SAKURA BLOOM PCS', 'PCS', '-', '', '11400.00', '0.00', '2', '0', '12000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(223, '', 9, 'BAY FRESH COTTON CANDY POPCORN PCS', 'PCS', '-', '', '11400.00', '0.00', '1', '0', '12000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(224, '', 9, 'BAY FRESH STRAWBERRY BUBBLEGUM PCS', 'PCS', '-', '', '11400.00', '0.00', '3', '0', '12000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(225, '', 9, 'BAY FRESH CARAMEL VANILLA COFFEE PCS', 'PCS', '-', '', '11400.00', '0.00', '2', '0', '12000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(226, '', 9, 'BAY FRESH DARK ICE PCS', 'PCS', '-', '', '11400.00', '0.00', '1', '0', '12000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(227, '', 9, 'GLADE BATHROOM FRESH MOUNTAIN PINE (GANTUNG) PCS', 'PCS', '-', '', '9500.00', '0.00', '5', '0', '10000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(228, '', 9, 'GLADE BATHROOM FRESH AIR (GATUNG) PCS', 'PCS', '-', '', '9500.00', '0.00', '3', '0', '10000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(229, '', 9, 'GLADE BATHROOM LVENDER MIST (GANTUNG) PCS', 'PCS', '-', '', '9500.00', '0.00', '3', '0', '10000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(230, '', 9, 'GLADE BATHROOM LEMON ZEST (GANTUNG) PCS', 'PCS', '-', '', '9500.00', '0.00', '2', '0', '10000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(231, '', 10, 'PONDS WHITE BEUTY 100 GRAM', 'PCS', '-', '', '30875.00', '0.00', '7', '0', '32500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(232, '', 10, 'PONDS OIL CONTROL 100 GRAM', 'PCS', '-', '', '29925.00', '0.00', '14', '0', '31500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(233, '', 10, 'PONDS CLEAR SOLUTION 100 GRAM', 'PCS', '-', '', '32775.00', '0.00', '6', '0', '34500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(234, '', 10, 'PONDS PURE BRIGHT 100 GRAM', 'PCS', '-', '', '32775.00', '0.00', '3', '0', '34500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(235, '', 11, 'MINYAK KAYU PUTIH CAPLANG 210 ML', 'PCS', '-', '', '72200.00', '0.00', '5', '0', '76000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(236, '', 11, 'MINYAK KAYU PUTIH CAPLANG 60 ML', 'PCS', '-', '', '22325.00', '0.00', '11', '0', '23500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(237, '', 11, 'KONICARE MINYAK TELON (KUNING) 60 ML', 'PCS', '-', '', '26600.00', '0.00', '9', '0', '28000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(238, '', 11, 'KONICARE MINYAK TELON PLUS (UNGU) 60 ML', 'PCS', '-', '', '26600.00', '0.00', '8', '0', '28000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(239, '', 11, 'KONICARE MINYAK TELON PLUS (UNGU) 125 ML', 'PCS', '-', '', '52725.00', '0.00', '5', '0', '55500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(240, '', 11, 'KONICARE MINYAK TELON LEMON GRASS 60 ML', 'PCS', '-', '', '26600.00', '0.00', '3', '0', '28000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(241, '', 11, 'MINYAK KUTUS-KUTUS 100 ML', 'PCS', '-', '', '218500.00', '0.00', '0', '0', '230000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(242, '', 11, 'SAFE CARE ROLL ON 10 ML', 'PCS', '-', '', '17100.00', '0.00', '2', '0', '18000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(243, '', 11, 'SAFE CARE STRONG 10 ML', 'PCS', '-', '', '17100.00', '0.00', '4', '0', '18000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(244, '', 11, 'SAFE CARE TELON OIL 10 ML', 'PCS', '-', '', '17100.00', '0.00', '0', '0', '18000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(245, '', 11, 'SAFE CARE MINYAK ANGIN 10 ML', 'PCS', '-', '', '17100.00', '0.00', '2', '0', '18000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(246, '', 11, 'FRESH CARE CITRUS 10 ML', 'PCS', '-', '', '13300.00', '0.00', '3', '0', '14000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(247, '', 11, 'FRESH CARE STRONG 10 ML', 'PCS', '-', '', '13300.00', '0.00', '2', '0', '14000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(248, '', 11, 'FRESH CARE FRUITY SPLASH 10 ML', 'PCS', '-', '', '13300.00', '0.00', '1', '0', '14000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(249, '', 11, 'FRESH CARE SANDAL WOOD 10 ML', 'PCS', '-', '', '13300.00', '0.00', '6', '0', '14000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(250, '', 11, 'FRESH CARE GREEN TEA 10 ML', 'PCS', '-', '', '13300.00', '0.00', '6', '0', '14000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(251, '', 11, 'FRESH CARE KAYU PUTIH 10 ML', 'PCS', '-', '', '13300.00', '0.00', '5', '0', '14000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(252, '', 11, 'FRESH CARE LAVENDER 10 ML', 'PCS', '-', '', '13300.00', '0.00', '3', '0', '14000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(253, '', 11, 'FRESH CARE MINYAK ANGIN 10 ML', 'PCS', '-', '', '13300.00', '0.00', '0', '0', '14000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(254, '', 12, 'PEPSODENT KIDS AWESOME ORANGE 50 GRAM', 'PCS', '-', '', '6175.00', '0.00', '5', '0', '6500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(255, '', 12, 'PEPSODENT KIDS SWEET STRAWBERRY 50 GRAM', 'PCS', '-', '', '6175.00', '0.00', '1', '0', '6500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(256, '', 12, 'SENSODYNE ORIGINAL FLAVOUR 100 GRAM', 'PCS', '-', '', '29925.00', '0.00', '4', '0', '31500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(257, '', 12, 'SENSODYNE COOL GEL 100 GRAM', 'PCS', '-', '', '23750.00', '0.00', '0', '0', '25000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(258, '', 12, 'SENSODYNE GENTLE WHITENING 100 GRAM', 'PCS', '-', '', '32300.00', '0.00', '5', '0', '34000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(259, '', 12, 'SENSODYNE MULTI ACTION 100 GRAM', 'PCS', '-', '', '32300.00', '0.00', '5', '0', '34000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(260, '', 12, 'SENSODYNE FRESH MINT 100 GRAM', 'PCS', '-', '', '24225.00', '0.00', '2', '0', '25500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(261, '', 12, 'CLOSE UP 110 GRAM', 'PCS', '-', '', '12350.00', '0.00', '15', '0', '13000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(262, '', 12, 'CLOSE UP 160 GRAM', 'PCS', '-', '', '16150.00', '0.00', '9', '0', '17000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(263, '', 12, 'PEPSODENT ACTION HERBAL 190 GRAM', 'PCS', '-', '', '18050.00', '0.00', '21', '0', '19000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(264, '', 12, 'PEPSODENT ACTION HERBAL 120 GRAM', 'PCS', '-', '', '11875.00', '0.00', '17', '0', '12500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(265, '', 12, 'PEPSODENT ACTION COMPLETE 190 GRAM', 'PCS', '-', '', '17100.00', '0.00', '15', '0', '18000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(266, '', 12, 'PEPSODENT WHITE 190 GRAM', 'PCS', '-', '', '12825.00', '0.00', '17', '0', '13500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(267, '', 12, 'PEPSODENT WHITE 120 GRAM', 'PCS', '-', '', '9975.00', '0.00', '17', '0', '10500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(268, '', 12, 'ORAL-B ISI 3 3 PCS', 'PCS', '-', '', '16150.00', '0.00', '4', '0', '17000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(269, '', 12, 'SIKAT GIGI ORAL-B 1 PCS', 'PCS', '-', '', '5700.00', '0.00', '8', '0', '6000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(270, '', 12, 'SIKAT GIGI FORMULA 1 PCS', 'PCS', '-', '', '4275.00', '0.00', '13', '0', '4500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(271, '', 12, 'SIKAT GIGI PEPSODENT 1 PCS', 'PCS', '-', '', '4275.00', '0.00', '8', '0', '4500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(272, '', 12, 'LISTERINE MULTI PROTECT ZERO 250 ML', 'PCS', '-', '', '25650.00', '0.00', '5', '0', '27000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(273, '', 12, 'LISTERINE TARTAR CONTROL 250 ML', 'PCS', '-', '', '24510.00', '0.00', '2', '0', '25800.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(274, '', 12, 'LISTERINE ORIGINAL 250 ML', 'PCS', '-', '', '21280.00', '0.00', '4', '0', '22400.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(275, '', 12, 'LISTERINE COOL MINT 250 ML', 'PCS', '-', '', '21375.00', '0.00', '1', '0', '22500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(276, '', 12, 'LISTERINE ZERO 250 ML', 'PCS', '-', '', '21375.00', '0.00', '5', '0', '22500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(277, '', 12, 'LISTERINE COOL MINT 100 ML', 'PCS', '-', '', '8550.00', '0.00', '5', '0', '9000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(278, '', 12, 'LISTERINE FRESHBURST 100 ML', 'PCS', '-', '', '8550.00', '0.00', '3', '0', '9000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(279, '', 13, 'BIMOLI 1 LITER', 'PCS', '-', '', '21375.00', '0.00', '5', '0', '22500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(280, '', 13, 'BIMOLI 2 LITER', 'PCS', '-', '', '41325.00', '0.00', '0', '0', '43500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(281, '', 13, 'KOPI SULTAN 200 GRAM', 'PCS', '-', '', '23750.00', '0.00', '1', '0', '25000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(282, '', 13, 'KOPI ASLI 200 GRAM', 'PCS', '-', '', '13300.00', '0.00', '14', '0', '14000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(283, '', 13, 'GULA PASIR 1 KG', 'PCS', '-', '', '13965.00', '0.00', '31', '0', '14700.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(284, '', 13, 'SUSU KENTAL MANIS FRISIAN FLEG 200 GRAM', 'PCS', '-', '', '9500.00', '0.00', '0', '0', '10000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(285, '', 13, 'SUSU KENTAL MANIS COKLAT FRISIAN FLEG 200 GRAM', 'PCS', '-', '', '9500.00', '0.00', '0', '0', '10000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(286, '', 13, 'FRISIAN FLEG FULL CREAM GOLD 200 GRAM', 'PCS', '-', '', '9500.00', '0.00', '0', '0', '10000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(287, '', 13, 'SARI WANGI TEH CELUP 1 KOTAK', 'PCS', '-', '', '6175.00', '0.00', '8', '0', '6500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(288, '', 13, 'MANNAKU BUMBU PECEL 250 GRAM', 'PCS', '-', '', '21850.00', '0.00', '0', '0', '23000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(289, '', 13, 'INDOFOOD SAMBAL BANGKOK 135 ML', 'PCS', '-', '', '7125.00', '0.00', '0', '0', '7500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(290, '', 13, 'INDOFOOD SAUS TOMAT 135 ML', 'PCS', '-', '', '5700.00', '0.00', '0', '0', '6000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(291, '', 13, 'SASA SAUS TOMAT 135 ML', 'PCS', '-', '', '4750.00', '0.00', '0', '0', '5000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(292, '', 13, 'BANGO KECAP MANIS 135 ML', 'PCS', '-', '', '9975.00', '0.00', '0', '0', '10500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(293, '', 13, 'DELMONTE CHILI EXTRA HOT 135 ML', 'PCS', '-', '', '7125.00', '0.00', '0', '0', '7500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(294, '', 13, 'DELMONTE TOMATO 135 ML', 'PCS', '-', '', '6175.00', '0.00', '0', '0', '6500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(295, '', 13, 'SAOS RAJA RASA 135 ML', 'PCS', '-', '', '7600.00', '0.00', '0', '0', '8000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(296, '', 13, 'KECAP MANIS INDOFOOD 135 ML', 'PCS', '-', '', '6650.00', '0.00', '0', '0', '7000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(297, '', 13, 'ABC KECAP PEDAS 135 ML', 'PCS', '-', '', '7600.00', '0.00', '1', '0', '8000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(298, '', 13, 'SEDAP KECAP MANIS 135 ML', 'PCS', '-', '', '8075.00', '0.00', '0', '0', '8500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(299, '', 13, 'SAORI SAUS TIRAM 133 ML', 'PCS', '-', '', '10925.00', '0.00', '0', '0', '11500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(300, '', 13, 'INDOFOOD SAUS PEDAS MANIS 135 ML', 'PCS', '-', '', '8075.00', '0.00', '0', '0', '8500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(301, '', 13, 'KUE NAGOL 1 BNGKS', 'PCS', '-', '', '11400.00', '0.00', '0', '0', '12000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(302, '', 13, 'INDOMI GORENG 85 GRAM', 'PCS', '-', '', '2850.00', '0.00', '43', '0', '3000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(303, '', 13, 'INDOMI RASA KARI AYAM 72 GRAM', 'PCS', '-', '', '2850.00', '0.00', '21', '0', '3000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(304, '', 13, 'MIE SEDAP RASA SOTO 75 GRAM', 'PCS', '-', '', '2850.00', '0.00', '16', '0', '3000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(305, '', 13, 'MIE SEDAP GORENG 90 GRAM', 'PCS', '-', '', '2850.00', '0.00', '42', '0', '3000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(306, '', 13, 'SARIMI RASA AYAM 75 GRAM', 'PCS', '-', '', '2850.00', '0.00', '0', '0', '3000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(307, '', 13, 'BERAS C4 5 KG', 'PCS', '-', '', '57000.00', '0.00', '1', '0', '60000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(308, '', 13, 'BERAS TINTA 5 KG', 'PCS', '-', '', '53200.00', '0.00', '0', '0', '56000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(309, '', 13, 'BERAS HITAM 1 KG', 'PCS', '-', '', '23750.00', '0.00', '0', '0', '25000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(310, '', 13, 'BERAS MERAH 1 KG', 'PCS', '-', '', '27550.00', '0.00', '0', '0', '29000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00');
INSERT INTO `produk` (`id_produk`, `barcode`, `id_produk_kategori`, `nama`, `satuan`, `keterangan`, `gambar`, `hpp`, `hpp_awal`, `qty`, `qty_awal`, `harga_jual`, `stok_min`, `servis`, `dibuat_pada`, `diubah_pada`) VALUES
(311, '', 13, 'ANLENE GOLDEN PLUS 900 GRAM', 'PCS', '-', '', '117800.00', '0.00', '2', '0', '124000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(312, '', 13, 'HILO ACTIVE VANILA 200 GRAM', 'PCS', '-', '', '38000.00', '0.00', '2', '0', '40000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(313, '', 13, 'ZEE COKLAT 350 GRAM', 'PCS', '-', '', '45125.00', '0.00', '4', '0', '47500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(314, '', 13, 'DANCOW FULL CREAM 800 GRAM', 'PCS', '-', '', '82175.00', '0.00', '4', '0', '86500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(315, '', 13, 'MILO 300 GRAM', 'PCS', '-', '', '29925.00', '0.00', '3', '0', '31500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(316, '', 13, 'GOOD DAY MOCACINNO RTG', 'PCS', '-', '', '13300.00', '0.00', '0', '0', '14000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(317, '', 13, 'ENERGENT VANILLA RTG', 'PCS', '-', '', '16150.00', '0.00', '0', '0', '17000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(318, '', 13, 'ENERGENT KURMA RTG', 'PCS', '-', '', '17100.00', '0.00', '1', '0', '18000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(319, '', 13, 'ENERGENT COKLAT RTG', 'PCS', '-', '', '16150.00', '0.00', '0', '0', '17000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(320, '', 13, 'ENERGENT KACANG HIJAU RTG', 'PCS', '-', '', '16150.00', '0.00', '0', '0', '17000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(321, '', 13, 'ENERGENT JAGUNG RTG', 'PCS', '-', '', '15200.00', '0.00', '0', '0', '16000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(322, '', 13, 'ENERGEN JAHE RTG', 'PCS', '-', '', '15200.00', '0.00', '0', '0', '16000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(323, '', 13, 'NESCAFE ORIGINAL  RTG', 'PCS', '-', '', '13300.00', '0.00', '0', '0', '14000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(324, '', 13, 'KOPI SETIA BALI 200 GRAM', 'PCS', '-', '', '14060.00', '0.00', '0', '0', '14800.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(325, '', 13, 'KOPI ABC SUSU RTG', 'PCS', '-', '', '12350.00', '0.00', '0', '0', '13000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(326, '', 13, 'KERIPIK AYAM PCS', 'PCS', '-', '', '11400.00', '0.00', '0', '0', '12000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(327, '', 13, 'SANIA  1 LTR', 'PCS', '-', '', '15200.00', '0.00', '0', '0', '16000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(328, '', 13, 'SANIA  2 LTR', 'PCS', '-', '', '27075.00', '0.00', '0', '0', '28500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(329, '', 13, 'INDOCAFE COFFEMIX RTG', 'PCS', '-', '', '13300.00', '0.00', '6', '0', '14000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(330, '', 13, 'BERAS C4 25 KG', 'PCS', '-', '', '266000.00', '0.00', '0', '0', '280000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(331, '', 13, 'TOTOLE G. MUSHROOM 80 GRAM', 'PCS', '-', '', '13300.00', '0.00', '9', '0', '14000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(332, '', 13, 'TOTOLE KALDU AYAM  100 GRAM', 'PCS', '-', '', '13300.00', '0.00', '1', '0', '14000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(333, '', 13, 'SNACK KRISPI PUFF PCS', 'PCS', '-', '', '15200.00', '0.00', '12', '0', '16000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(334, '', 13, 'MADU BOTOL', 'PCS', '-', '', '199500.00', '0.00', '12', '0', '210000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(335, '', 13, 'SKYGOAT BOX', 'PCS', '-', '', '35150.00', '0.00', '0', '0', '37000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(336, '', 13, 'BROWNIES PCS', 'PCS', '-', '', '7600.00', '0.00', '0', '0', '8000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(337, '', 13, 'ENTRASOL GOLD VANILLA 350 GRAM', 'PCS', '-', '', '66975.00', '0.00', '1', '0', '70500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(338, '', 13, 'MILO 1 KG', 'PCS', '-', '', '89300.00', '0.00', '2', '0', '94000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(339, '', 13, 'DIABETASOL CAPPUCINO 180 GRAM', 'PCS', '-', '', '47500.00', '0.00', '1', '0', '50000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(340, '', 13, 'ANLENE VANILA 250 GRAM', 'PCS', '-', '', '27550.00', '0.00', '0', '0', '29000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(341, '', 13, 'HILO ACTIVE COKLAT 250 GRAM', 'PCS', '-', '', '38000.00', '0.00', '0', '0', '40000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(342, '', 14, 'GILLETTE KUNING PCS', 'PCS', '-', '', '8075.00', '0.00', '14', '0', '8500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(343, '', 14, 'GILLETTE BIRU PCS', 'PCS', '-', '', '9500.00', '0.00', '16', '0', '10000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(344, '', 14, 'GILLETTE FOR WOMEN 2 PCS', 'PCS', '-', '', '19000.00', '0.00', '1', '0', '20000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(345, '', 14, 'COTTON BUDS PIGEON BESAR 100 PCS', 'PCS', '-', '', '9500.00', '0.00', '8', '0', '10000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(346, '', 14, 'COTTON BUDS BEAUTY 100 PCS', 'PCS', '-', '', '9500.00', '0.00', '7', '0', '10000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(347, '', 14, 'COTTON BUDS PIGEON SMALL 100 PCS', 'PCS', '-', '', '8075.00', '0.00', '4', '0', '8500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(348, '', 14, 'KIT MOTOR MULTIGUNA 100 ML', 'PCS', '-', '', '31350.00', '0.00', '1', '0', '33000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(349, '', 14, 'KIT MOTOR MULTIGUNA REFILL 100 ML', 'PCS', '-', '', '23750.00', '0.00', '4', '0', '25000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(350, '', 14, 'KIT WASH GLOW CAR SHAMPOO 800 ML', 'PCS', '-', '', '30400.00', '0.00', '1', '0', '32000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(351, '', 14, 'KIT WASH GLOW CAR SHAMPOO 400 ML', 'PCS', '-', '', '18050.00', '0.00', '0', '0', '19000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(352, '', 14, 'HIT GREEN FOREST 675 ML', 'PCS', '-', '', '33250.00', '0.00', '2', '0', '35000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(353, '', 14, 'HIT LILY BLOSSOM 675 ML ', 'PCS', '-', '', '38475.00', '0.00', '1', '0', '40500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(354, '', 14, 'HIT LILY BLOSSOM 450 ML', 'PCS', '-', '', '26125.00', '0.00', '0', '0', '27500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(355, '', 14, 'HIT EXPERT CITRUS 675 ML', 'PCS', '-', '', '38475.00', '0.00', '1', '0', '40500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(356, '', 14, 'HIT EXPERT SWEET FLOWER 675 ML', 'PCS', '-', '', '38475.00', '0.00', '2', '0', '40500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(357, '', 14, 'HIT AEROSOL LILY BLOSSOM 200 ML', 'PCS', '-', '', '14725.00', '0.00', '1', '0', '15500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(358, '', 14, 'BAYGON FLOWER GARDEN 450 ML', 'PCS', '-', '', '28500.00', '0.00', '0', '0', '30000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(359, '', 14, 'BAYGON CITRUS FRESH 750 ML', 'PCS', '-', '', '42275.00', '0.00', '1', '0', '44500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(360, '', 14, 'BAYGON WATERLILY & ROSE 600 ML', 'PCS', '-', '', '38000.00', '0.00', '0', '0', '40000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(361, '', 14, 'LEM TIKUS PCS', 'PCS', '-', '', '16150.00', '0.00', '8', '0', '17000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(362, '', 14, 'KIWI POLISH 45 ML', 'PCS', '-', '', '13775.00', '0.00', '0', '0', '14500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(363, '', 14, 'KIWI SHINE & PROTECT BLACK 30 ML', 'PCS', '-', '', '25650.00', '0.00', '0', '0', '27000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(364, '', 14, 'BIGEN HAIR COLOUR 65 GRAM', 'PCS', '-', '', '19950.00', '0.00', '0', '0', '21000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(365, '', 14, 'HANSAPLAST PCS', 'PCS', '-', '', '950.00', '0.00', '4', '0', '1000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(366, '', 14, 'MANTEL CELANA PCS', 'PCS', '-', '', '142500.00', '0.00', '1', '0', '150000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(367, '', 14, 'MANTEL PCS', 'PCS', '-', '', '69350.00', '0.00', '11', '0', '73000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(368, '', 14, 'MASKER BIASA KOTAK', 'PCS', '-', '', '19000.00', '0.00', '0', '0', '20000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(369, '', 14, 'MASKER KF 94 PLASTIK', 'PCS', '-', '', '19950.00', '0.00', '0', '0', '21000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(370, '', 14, 'MASKER DUCK BILL KOTAK', 'PCS', '-', '', '33250.00', '0.00', '0', '0', '35000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(371, '', 14, 'TALI MASKER PCS', 'PCS', '-', '', '13300.00', '0.00', '14', '0', '14000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(372, '', 14, 'DOMPET PCS', 'PCS', '-', '', '95000.00', '0.00', '5', '0', '100000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(373, '', 14, 'DUPA MAHADEWA FULL CELUP BESAR PACK', 'PCS', '-', '', '19000.00', '0.00', '11', '0', '20000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(374, '', 14, 'DUPA PEPEL PANJANG BKS', 'PCS', '-', '', '5700.00', '0.00', '7', '0', '6000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(375, '', 14, 'DUPA PEPEL KECIL BKS', 'PCS', '-', '', '4750.00', '0.00', '9', '0', '5000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(376, '', 14, 'DUPA RENTENG MAHADEWA BKS', 'PCS', '-', '', '4750.00', '0.00', '3', '0', '5000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(377, '', 14, 'DUPA HOKI BKS', 'PCS', '-', '', '5225.00', '0.00', '5', '0', '5500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(378, '', 14, 'DUPA MAHADEWA STICK 35 ', 'PCS', '-', '', '5225.00', '0.00', '1', '0', '5500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(379, '', 14, 'DUPA JUMBO BKS', 'PCS', '-', '', '5700.00', '0.00', '10', '0', '6000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(380, '', 14, 'BATRAI ALKALINE A3 (KECIL) PAKET', 'PCS', '-', '', '23750.00', '0.00', '13', '0', '25000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(381, '', 14, 'BATRAI ALKALINE A2 (BESAR) PAKET', 'PCS', '-', '', '25650.00', '0.00', '0', '0', '27000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(382, '', 14, 'LAP KANEBO ', 'PCS', '-', '', '99750.00', '0.00', '0', '0', '105000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(383, '', 14, 'MATERAI ', 'PCS', '-', '', '10450.00', '0.00', '153', '0', '11000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(384, '', 14, 'LAP KOTAK', 'PCS', '-', '', '14725.00', '0.00', '12', '0', '15500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(385, '', 14, 'GAYUNG AIR', 'PCS', '-', '', '17575.00', '0.00', '12', '0', '18500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(386, '', 14, 'TAS KAIN', 'PCS', '-', '', '2375.00', '0.00', '7', '0', '2500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(387, '', 15, 'SUNLIGHT REFILL 755 ML', 'PCS', '-', '', '18525.00', '0.00', '12', '0', '19500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(388, '', 15, 'SUNLIGHT REFILL 435 ML', 'PCS', '-', '', '11400.00', '0.00', '13', '0', '12000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(389, '', 15, 'SUNLIGHT KRIM  110 GRAM', 'PCS', '-', '', '2375.00', '0.00', '9', '0', '2500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(390, '', 15, 'WINGS SABUN KRIM 900 GR', 'PCS', '-', '', '4750.00', '0.00', '17', '0', '5000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(391, '', 15, 'POLYTEX SPONS / UNIK SPONS HIJAU PCS', 'PCS', '-', '', '3800.00', '0.00', '11', '0', '4000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(392, '', 15, 'KAWAT POLYTEX PCS', 'PCS', '-', '', '2850.00', '0.00', '0', '0', '3000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(393, '', 16, 'REXONA WOMEN INVISIBLE  45 ML', 'PCS', '-', '', '18050.00', '0.00', '1', '0', '19000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(394, '', 16, 'REXONA MEN INVISIBLE DRY BLACK+WHITE 45 ML', 'PCS', '-', '', '18525.00', '0.00', '1', '0', '19500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(395, '', 16, 'REXONA MEN ACTIVE BRIGHT 45 ML', 'PCS', '-', '', '18050.00', '0.00', '1', '0', '19000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(396, '', 16, 'REXONA MEN INVISIBLE ABAC 45 ML', 'PCS', '-', '', '19475.00', '0.00', '3', '0', '20500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(397, '', 16, 'REXONA MEN INVISIBLE 45 ML', 'PCS', '-', '', '18050.00', '0.00', '3', '0', '19000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(398, '', 16, 'REXONA MEN ADVENTURE 45 ML', 'PCS', '-', '', '18050.00', '0.00', '2', '0', '19000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(399, '', 16, 'REXONA MEN ACTIVE WHITE 45 ML', 'PCS', '-', '', '19475.00', '0.00', '3', '0', '20500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(400, '', 16, 'REXONA MEN QUANTUM 45 ML', 'PCS', '-', '', '18050.00', '0.00', '3', '0', '19000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(401, '', 16, 'NIVEA BLACK AND WHITE INVISIBLE FRESH 50 ML', 'PCS', '-', '', '19475.00', '0.00', '3', '0', '20500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(402, '', 16, 'NIVEA BLACK AND WHITE INVISIBLE CLEAR 50 ML', 'PCS', '-', '', '19475.00', '0.00', '1', '0', '20500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(403, '', 16, 'NIVEA DEO WHITE ANTI BAKTERI 50 ML', 'PCS', '-', '', '19475.00', '0.00', '1', '0', '20500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(404, '', 16, 'DOVE DEODORAN CUCUMBAR & GREEN TEA SCENT 40 ML', 'PCS', '-', '', '18525.00', '0.00', '0', '0', '19500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(405, '', 16, 'DOVE RO GO FRESH CUCUMBER 40 ML', 'PCS', '-', '', '19475.00', '0.00', '5', '0', '20500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(406, '', 17, 'YURI HAND SOAP APPLE 410 ML', 'PCS', '-', '', '26125.00', '0.00', '0', '0', '27500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(407, '', 17, 'HAND SOAP MELON 500 ML', 'PCS', '-', '', '16150.00', '0.00', '0', '0', '17000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(408, '', 17, 'HAND SOAP STAWBERRY 500 ML', 'PCS', '-', '', '16150.00', '0.00', '0', '0', '17000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(409, '', 17, 'HAND SOAP MELON 1000 ML', 'PCS', '-', '', '23750.00', '0.00', '4', '0', '25000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(410, '', 17, 'HAND SOAP STAWBERRY 1000 ML', 'PCS', '-', '', '23750.00', '0.00', '4', '0', '25000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(411, '', 18, 'TESSA FACIAL TISSUE  260 SHEETS', 'PCS', '-', '', '17100.00', '0.00', '0', '0', '18000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(412, '', 18, 'TISU TESSA LOONEY TUNES 50 SHEETS', 'PCS', '-', '', '5700.00', '0.00', '0', '0', '6000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(413, '', 18, 'TISU MAKAN TOPLY 50 SHEETS', 'PCS', '-', '', '4750.00', '0.00', '23', '0', '5000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(414, '', 18, 'TISU JOLLY 250 SHEET', 'PCS', '-', '', '8550.00', '0.00', '25', '0', '9000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(415, '', 18, 'TESSA BATHROOM TISSUE ROLL', 'PCS', '-', '', '7125.00', '0.00', '12', '0', '7500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(416, '', 18, 'PASEO BATHROOM ROLL', 'PCS', '-', '', '10450.00', '0.00', '0', '0', '11000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(417, '', 18, 'PASEO FACIAL TISSUE 120 SHEETS', 'PCS', '-', '', '10450.00', '0.00', '0', '0', '11000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(418, '', 18, 'NICE TISSSUE 250 SHEET', 'PCS', '-', '', '10450.00', '0.00', '0', '0', '11000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(419, '', 18, 'NICE TISSSUE 180 SHEET', 'PCS', '-', '', '6650.00', '0.00', '0', '0', '7000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(420, '', 18, 'TESSA TISSUE 250 SHEET', 'PCS', '-', '', '10450.00', '0.00', '0', '0', '11000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(421, '', 18, 'SELECTION FACIAL COTTON PCS', 'PCS', '-', '', '9975.00', '0.00', '7', '0', '10500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(422, '', 18, 'SELECTION KECIL 50 GRAM', 'PCS', '-', '', '7125.00', '0.00', '0', '0', '7500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(423, '', 18, 'MITU BABY BLOOMING CHERRY 50 SHEETS', 'PCS', '-', '', '14725.00', '0.00', '13', '0', '15500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(424, '', 18, 'MITU BABY BLOOMING CHERRY 24 SHEETS', 'PCS', '-', '', '6650.00', '0.00', '6', '0', '7000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(425, '', 18, 'MITU BABY BLOSSOM BERRY 50 SHEETS', 'PCS', '-', '', '14725.00', '0.00', '11', '0', '15500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(426, '', 18, 'MITU BABY BLOSSOM BERRY 24 SHEETS', 'PCS', '-', '', '6650.00', '0.00', '3', '0', '7000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(427, '', 18, 'MITU BABY BLOSSOM BERRY REFILL 60 SHEETS', 'PCS', '-', '', '14725.00', '0.00', '2', '0', '15500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(428, '', 19, 'AVAIL FEMINIM COMFORT BLUE 10 SHEETS', 'PCS', '-', '', '33250.00', '0.00', '7', '0', '35000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(429, '', 19, 'AVAIL FEMINIM COMFORT GREEN 20 SHEETS', 'PCS', '-', '', '30400.00', '0.00', '3', '0', '32000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(430, '', 19, 'KOTEX LINERS DAUN SIRIH 40 SHEETS', 'PCS', '-', '', '13870.00', '0.00', '6', '0', '14600.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(431, '', 19, 'KOTEX BIRU ', 'PCS', '-', '', '7125.00', '0.00', '5', '0', '7500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(432, '', 19, 'CHARM BODY FIT  10 PADS', 'PCS', '-', '', '5225.00', '0.00', '11', '0', '5500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(433, '', 19, 'CHARM SAFE NIGHT 12 PADS', 'PCS', '-', '', '19950.00', '0.00', '6', '0', '21000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(434, '', 19, 'CHARM SAFE NIGHT 6 PADS', 'PCS', '-', '', '8550.00', '0.00', '13', '0', '9000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(435, '', 19, 'CHARM BODY FIT EXTRA MAXIWING 10 PADS', 'PCS', '-', '', '8550.00', '0.00', '11', '0', '9000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(436, '', 19, 'LAURIER SLIMGUARD 10 PADS', 'PCS', '-', '', '12825.00', '0.00', '0', '0', '13500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(437, '', 19, 'LAURIER SLIMGUARD 20 PADS', 'PCS', '-', '', '23750.00', '0.00', '8', '0', '25000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(438, '', 20, 'AIKEN HAND SANITISER 200 ML', 'PCS', '-', '', '35150.00', '0.00', '0', '0', '37000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(439, '', 20, 'AIKEN HAND SANITISER 50 ML', 'PCS', '-', '', '11400.00', '0.00', '0', '0', '12000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(440, '', 20, 'MOTTO HAND SANITISER 60 ML', 'PCS', '-', '', '34912.50', '0.00', '1', '0', '36750.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(441, '', 20, 'HAND SANITIZER CAIR 100 ML', 'PCS', '-', '', '17575.00', '0.00', '0', '0', '18500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(442, '', 20, 'HAND SANITIZER GEL 100 ML', 'PCS', '-', '', '18525.00', '0.00', '11', '0', '19500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(443, '', 20, 'HAND SANITIZER SECRET BTL', 'PCS', '-', '', '11970.00', '0.00', '3', '0', '12600.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(444, '', 21, 'SEKAR JAGAT LULUR TRADISIONAL AVOCADO 100 GRAM', 'PCS', '-', '', '9500.00', '0.00', '1', '0', '10000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(445, '', 21, 'SEKAR JAGAT LULUR TRADISIONAL GREEN TEA 100 GRAM', 'PCS', '-', '', '9500.00', '0.00', '3', '0', '10000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(446, '', 21, 'SEKAR JAGAT LULUR TRADISIONAL CENDANA 100 GRAM', 'PCS', '-', '', '9500.00', '0.00', '1', '0', '10000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(447, '', 21, 'SEKAR JAGAT LULUR TRADISIONAL BENGKUANG 100 GRAM', 'PCS', '-', '', '9500.00', '0.00', '0', '0', '10000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(448, '', 21, 'SEKAR JAGAT LULUR TRADISIONAL MILK 100 GRAM', 'PCS', '-', '', '9500.00', '0.00', '0', '0', '10000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(449, '', 23, 'MINI PAO (AYAM, COKLAT) 30 BIJI', 'PCS', '-', '', '15390.00', '0.00', '5', '0', '16200.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(450, '', 23, 'SIOMAY AYAM & AYAM SAYUR 260 GR', 'PCS', '-', '', '20045.00', '0.00', '2', '0', '21100.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(451, '', 23, 'SOSIS SAPI/AYAM BREAKFAST BERNARDI 1 KG', 'PCS', '-', '', '70870.00', '0.00', '2', '0', '74600.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(452, '', 23, 'SOSIS AYAM BERNARDI 500 GR', 'PCS', '-', '', '66690.00', '0.00', '0', '0', '70200.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(453, '', 23, 'BASO AYAM BERNARDI 360 GR ISI 50 BIJI', 'PCS', '-', '', '46170.00', '0.00', '0', '0', '48600.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(454, '', 23, 'BASO SAPI BERNARDI 340 GR ISI 10 BIJI BESAR', 'PCS', '-', '', '54910.00', '0.00', '2', '0', '57800.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(455, '', 23, 'NUGGET BERNARDI 250 GR', 'PCS', '-', '', '16435.00', '0.00', '0', '0', '17300.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(456, '', 23, 'NUGGET BERNARDI 500 GR', 'PCS', '-', '', '32870.00', '0.00', '0', '0', '34600.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(457, '', 23, 'BURGER PAKET BERNARDI 6 BIJI', 'PCS', '-', '', '25650.00', '0.00', '0', '0', '27000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(458, '', 23, 'SPICY CHIKEN WING BERNARDI 380 GR', 'PCS', '-', '', '35910.00', '0.00', '0', '0', '37800.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(459, '', 23, 'SCALLOP BERNARDI 500 GR', 'PCS', '-', '', '23750.00', '0.00', '0', '0', '25000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(460, '', 23, 'ABBY SOSIS BAKAR JUMBO (AYAM) BERNARDI 500 GR', 'PCS', '-', '', '26600.00', '0.00', '2', '0', '28000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(461, '', 23, 'SMOKED BEEF BERNARDI -', 'PCS', '-', '', '41325.00', '0.00', '1', '0', '43500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(462, '', 23, 'SOSIS BAKAR RASA KEJU /JOFRAN 500 GR', 'PCS', '-', '', '30875.00', '0.00', '4', '0', '32500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(463, '', 23, 'BASO JOFRAN SAPI 500 GR', 'PCS', '-', '', '35910.00', '0.00', '1', '0', '37800.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(464, '', 23, 'NUGGET CHAMP 250 GR', 'PCS', '-', '', '19000.00', '0.00', '0', '0', '20000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(465, '', 23, 'NUGGET ORI DINO CIKIWI 250 GR', 'PCS', '-', '', '17100.00', '0.00', '0', '0', '18000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(466, '', 23, 'NUGGET CHAMP 500 GR', 'PCS', '-', '', '37050.00', '0.00', '5', '0', '39000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(467, '', 23, 'BASO AYAM CHAMP 200 GR ISI 20 BIJI', 'PCS', '-', '', '13300.00', '0.00', '0', '0', '14000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(468, '', 23, 'SOSIS CHAMP 150 GR ISI 6 BIJI', 'PCS', '-', '', '8265.00', '0.00', '0', '0', '8700.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(469, '', 23, 'SOSIS CHAMP 375 GR ISI 15 BIJI', 'PCS', '-', '', '16435.00', '0.00', '0', '0', '17300.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(470, '', 23, 'SOSIS CHAMP 500 GR', 'PCS', '-', '', '27550.00', '0.00', '3', '0', '29000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(471, '', 23, 'NUGGET AKUMO CHAMP 250 GR', 'PCS', '-', '', '13775.00', '0.00', '0', '0', '14500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(472, '', 23, 'BASO IKAN CIDEA 500 GR', 'PCS', '-', '', '30875.00', '0.00', '1', '0', '32500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(473, '', 23, 'BASO IKAN CIDEA 200 GR', 'PCS', '-', '', '10450.00', '0.00', '0', '0', '11000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(474, '', 23, 'FISH DUMPLING CHIKEN CIDEA 200 GR', 'PCS', '-', '', '15675.00', '0.00', '0', '0', '16500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(475, '', 23, 'CRAB FLAVEOURED NUGGET CIDEA 200 GR', 'PCS', '-', '', '15675.00', '0.00', '0', '0', '16500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(476, '', 23, 'FISH ROLL CIDEA -', 'PCS', '-', '', '15675.00', '0.00', '3', '0', '16500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(477, '', 23, 'STEAMBOAT CIDEA 500 GR', 'PCS', '-', '', '47500.00', '0.00', '0', '0', '50000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(478, '', 23, 'BASO SAPI AROMA 1 KG ISI 100 PCS', 'PCS', '-', '', '59565.00', '0.00', '0', '0', '62700.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(479, '', 23, 'BACON AROMA 1 KG', 'PCS', '-', '', '89300.00', '0.00', '0', '0', '94000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(480, '', 23, 'SOSIS CHIKEN BREAKFAST AROMA 1 KG', 'PCS', '-', '', '61750.00', '0.00', '4', '0', '65000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(481, '', 23, 'KENTANG GORENG 1 KG', 'PCS', '-', '', '29450.00', '0.00', '3', '0', '31000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(482, '', 23, 'KRISPI PUFF BNGKS', 'PCS', '-', '', '15200.00', '0.00', '12', '0', '16000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(483, '', 23, 'BAMBU BUMBU BNGKS', 'PCS', '-', '', '7125.00', '0.00', '18', '0', '7500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(484, '', 23, 'BAMBU TOMYAM BNGKS', 'PCS', '-', '', '8550.00', '0.00', '5', '0', '9000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(485, '', 23, 'BRONIS LUMER KOTAK', 'PCS', '-', '', '8550.00', '0.00', '4', '0', '9000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(486, '', 24, 'ES KRIM MAX SWICH PCS', 'PCS', '-', '', '5700.00', '0.00', '20', '0', '6000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(487, '', 24, 'ES KRIM CHOCKS ROCK CONE (VANILA, COKLAT) PCS', 'PCS', '-', '', '8075.00', '0.00', '0', '0', '8500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(488, '', 24, 'ES KRIM LOLY POP (LECY STROBERY, GRAPE) PCS', 'PCS', '-', '', '3800.00', '0.00', '10', '0', '4000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(489, '', 24, 'ES POTONG PCS', 'PCS', '-', '', '4750.00', '0.00', '0', '0', '5000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(490, '', 24, 'ES KIRM CHOCK ROCK BAR (VANILA, COKLAT) PCS', 'PCS', '-', '', '4750.00', '0.00', '11', '0', '5000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(491, '', 24, 'ES KRIM CHOCKS ROCK TWIST (VANILA, COKLAT) PCS', 'PCS', '-', '', '8550.00', '0.00', '0', '0', '9000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(492, '', 24, 'ES KRIM TAM TAM DUO CHOCO STROBERY PCS', 'PCS', '-', '', '4750.00', '0.00', '7', '0', '5000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(493, '', 25, 'ORANGE WATER (YOU.C1000) 500 ML', 'PCS', '-', '', '8075.00', '0.00', '9', '0', '8500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(494, '', 25, 'TEH FRESTEA 500 ML', 'PCS', '-', '', '6650.00', '0.00', '17', '0', '7000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(495, '', 25, 'FRESH YOGURT K -', 'PCS', '-', '', '8075.00', '0.00', '0', '0', '8500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(496, '', 25, 'SUSU ULTRA  1 LTR', 'PCS', '-', '', '18525.00', '0.00', '12', '0', '19500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(497, '', 25, 'SUSU CIMORY UHT 250 ML', 'PCS', '-', '', '7125.00', '0.00', '16', '0', '7500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(498, '', 25, 'AIR AQUA 600 ML', 'PCS', '-', '', '3800.00', '0.00', '5', '0', '4000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(499, '', 25, 'TEH KOTAK 100 ML', 'PCS', '-', '', '3990.00', '0.00', '11', '0', '4200.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(500, '', 25, 'SUSU BEAR BRAND -', 'PCS', '-', '', '9500.00', '0.00', '0', '0', '10000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(501, '', 25, 'KOPI NESCAFE -', 'PCS', '-', '', '9500.00', '0.00', '0', '0', '10000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(502, '', 25, 'CIMORY YOGURT 250 ML', 'PCS', '-', '', '9025.00', '0.00', '10', '0', '9500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(503, '', 25, 'LARUTAN CAP KAKI TIGA 320 ML', 'PCS', '-', '', '6650.00', '0.00', '7', '0', '7000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(504, '', 25, 'YAKULT 5 BIJI', 'PCS', '-', '', '10925.00', '0.00', '0', '0', '11500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(505, '', 25, 'CIMORY SQUEEZE 120 GR', 'PCS', '-', '', '10450.00', '0.00', '13', '0', '11000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(506, '', 25, 'ULTRA KECIL ', 'PCS', '-', '', '7125.00', '0.00', '8', '0', '7500.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(507, '', 25, 'MIZONE ', 'PCS', '-', '', '5700.00', '0.00', '4', '0', '6000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(508, '', 25, 'GREENFIELDS 1 LITER', 'PCS', '-', '', '19950.00', '0.00', '2', '0', '21000.00', '1.00', 0, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(509, '', 27, 'SIMPATI 100.000 (YS100)', 'PCS', '-', '', '98250.00', '0.00', '0', '0', '102000.00', '1.00', 1, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(510, '', 27, 'SIMPATI 50.000 (YS50)', 'PCS', '-', '', '49950.00', '0.00', '0', '0', '53000.00', '1.00', 1, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(511, '', 27, 'SIMPATI 25.000 (YS25)', 'PCS', '-', '', '25750.00', '0.00', '0', '0', '27000.00', '1.00', 1, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(512, '', 27, 'SIMPATI 20.000 (YS20)', 'PCS', '-', '', '20350.00', '0.00', '0', '0', '23000.00', '1.00', 1, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(513, '', 27, 'SIMPATI 10.000 (S10)', 'PCS', '-', '', '11000.00', '0.00', '0', '0', '13000.00', '1.00', 1, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(514, '', 27, 'SIMPATI 5.000 (S5)', 'PCS', '-', '', '6100.00', '0.00', '0', '0', '7000.00', '1.00', 1, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(515, '', 27, 'XL 100.000 (YX100)', 'PCS', '-', '', '99800.00', '0.00', '0', '0', '102000.00', '1.00', 1, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(516, '', 27, 'XL 50.000 (YX50)', 'PCS', '-', '', '50350.00', '0.00', '0', '0', '53000.00', '1.00', 1, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(517, '', 27, 'XL 30.000 (YX30)', 'PCS', '-', '', '30000.00', '0.00', '0', '0', '33000.00', '1.00', 1, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(518, '', 27, 'XL 25.000 (YX25)', 'PCS', '-', '', '25550.00', '0.00', '0', '0', '27000.00', '1.00', 1, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(519, '', 27, 'XL 10.000 (XX10)', 'PCS', '-', '', '10975.00', '0.00', '0', '0', '13000.00', '1.00', 1, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(520, '', 27, 'XL 5.000 (XX5)', 'PCS', '-', '', '5975.00', '0.00', '0', '0', '7000.00', '1.00', 1, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(521, '', 27, 'M3 100.000 (YI100)', 'PCS', '-', '', '99250.00', '0.00', '0', '0', '102000.00', '1.00', 1, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(522, '', 27, 'M3 50.000 (YI50)', 'PCS', '-', '', '50500.00', '0.00', '0', '0', '53000.00', '1.00', 1, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(523, '', 27, 'M3 25.000 (YI25.000)', 'PCS', '-', '', '25250.00', '0.00', '0', '0', '27000.00', '1.00', 1, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(524, '', 27, 'M3 10.000 (I10)', 'PCS', '-', '', '10500.00', '0.00', '0', '0', '13000.00', '1.00', 1, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(525, '', 27, 'M3 5.000 (I5)', 'PCS', '-', '', '5500.00', '0.00', '0', '0', '7000.00', '1.00', 1, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(526, '', 27, 'THREE 100.000 (TH100)', 'PCS', '-', '', '99750.00', '0.00', '0', '0', '102000.00', '1.00', 1, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(527, '', 27, 'THREE 50.000 (TH50)', 'PCS', '-', '', '50000.00', '0.00', '0', '0', '53000.00', '1.00', 1, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(528, '', 27, 'THREE 30.000 (TH30)', 'PCS', '-', '', '29950.00', '0.00', '0', '0', '33000.00', '1.00', 1, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(529, '', 27, 'THREE 20.000 (TH20)', 'PCS', '-', '', '20350.00', '0.00', '0', '0', '23000.00', '1.00', 1, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(530, '', 27, 'THREE 10.000 (TH 10)', 'PCS', '-', '', '10500.00', '0.00', '0', '0', '13000.00', '1.00', 1, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(531, '', 27, 'THREE 5.000 (TH 5)', 'PCS', '-', '', '5500.00', '0.00', '0', '0', '7000.00', '1.00', 1, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(532, '', 27, 'SMARTFREN 100.000 (SM100)', 'PCS', '-', '', '99250.00', '0.00', '0', '0', '102000.00', '1.00', 1, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(533, '', 27, 'SMARTFREN 50.000 (SM50)', 'PCS', '-', '', '50500.00', '0.00', '0', '0', '53000.00', '1.00', 1, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(534, '', 27, 'SMARTFREN 25.000 (SM 25)', 'PCS', '-', '', '25250.00', '0.00', '0', '0', '27000.00', '1.00', 1, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(535, '', 27, 'SMARTFREN 20.000 (SM 20)', 'PCS', '-', '', '20500.00', '0.00', '0', '0', '23000.00', '1.00', 1, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(536, '', 27, 'SMARTFREN 10.000 (SM 10)', 'PCS', '-', '', '10500.00', '0.00', '0', '0', '13000.00', '1.00', 1, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(537, '', 27, 'SMARTFREN 5.000 (SM 5)', 'PCS', '-', '', '5500.00', '0.00', '0', '0', '7000.00', '1.00', 1, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(538, '', 27, 'LISTRIK 200.000 (YPLN200)', 'PCS', '-', '', '201000.00', '0.00', '0', '0', '203000.00', '1.00', 1, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(539, '', 27, 'LISTRIK 100.000 (YPLN100)', 'PCS', '-', '', '101000.00', '0.00', '0', '0', '103000.00', '1.00', 1, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(540, '', 27, 'LISTRIK 50.000 (YPLN50)', 'PCS', '-', '', '51000.00', '0.00', '0', '0', '53000.00', '1.00', 1, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(541, '', 27, 'LISTRIK 20.000 (YPLN20)', 'PCS', '-', '', '21000.00', '0.00', '0', '0', '23000.00', '1.00', 1, '2022-01-19 11:51:00', '2022-01-19 11:51:00'),
(542, '-', 28, 'FOTOKOPI', 'PCS', '-', '', '0.00', '0.00', '0', '0', '250.00', '1.00', 1, '2022-01-19 11:51:00', '2022-01-19 11:51:00');

-- --------------------------------------------------------

--
-- Table structure for table `produk_kategori`
--

CREATE TABLE `produk_kategori` (
  `id_produk_kategori` int(10) NOT NULL,
  `produk_kategori` varchar(200) NOT NULL,
  `dibuat_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `diubah_pada` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk_kategori`
--

INSERT INTO `produk_kategori` (`id_produk_kategori`, `produk_kategori`, `dibuat_pada`, `diubah_pada`) VALUES
(1, 'Body Wash', '2021-11-08 22:06:00', '2021-11-08 22:06:00'),
(2, 'Shampoo & Conditioner', '2021-11-08 22:06:00', '2021-11-08 22:06:00'),
(3, 'Lotion/Hand and Body', '2021-11-08 22:06:00', '2021-11-08 22:06:00'),
(4, 'Cleansing Milk & Toner', '2021-11-08 22:25:00', '2021-11-08 22:25:00'),
(5, 'Parfume For Body', '2021-11-10 22:25:00', '2021-11-10 22:25:00'),
(6, 'Pelembut Pakaian/ Pengharum Pakaian', '2021-11-11 22:25:00', '2021-11-11 22:25:00'),
(7, 'Pembersih Lantai, Kamar Mandi, Dapur', '2021-11-12 22:25:00', '2021-11-12 22:25:00'),
(8, 'Deterjen Bubuk & Cair', '2021-11-13 22:25:00', '2021-11-13 22:25:00'),
(9, 'Pengharum Mobil, Ruangan & Kamar Mandi', '2021-11-14 22:25:00', '2021-11-14 22:25:00'),
(10, 'Facial Wash', '2021-11-15 22:25:00', '2021-11-15 22:25:00'),
(11, 'Aroma Terapi & Minyak Gosok', '2021-11-16 22:25:00', '2021-11-16 22:25:00'),
(12, 'Sikat Gigi, Pasta Gigi & Mouth Wash', '2021-11-17 22:25:00', '2021-11-17 22:25:00'),
(13, 'Sembako', '2021-11-18 22:25:00', '2021-11-18 22:25:00'),
(14, 'Barang Lain-Lain', '2021-11-19 22:25:00', '2021-11-19 22:25:00'),
(15, 'Sabun Cuci Piring', '2021-11-20 22:25:00', '2021-11-20 22:25:00'),
(16, 'Deodoran', '2021-11-21 22:25:00', '2021-11-21 22:25:00'),
(17, 'Hand Soap', '2021-11-22 22:25:00', '2021-11-22 22:25:00'),
(18, 'Tissue & Cotton', '2021-11-23 22:25:00', '2021-11-23 22:25:00'),
(19, 'Pembalut', '2021-11-24 22:25:00', '2021-11-24 22:25:00'),
(20, 'Hand Sanitiser', '2021-11-25 22:25:00', '2021-11-25 22:25:00'),
(21, 'Lulur', '2021-11-26 22:25:00', '2021-11-26 22:25:00'),
(22, 'Wardah Cosmetic', '2021-11-27 22:25:00', '2021-11-27 22:25:00'),
(23, 'Frozen Food', '2021-11-28 22:25:00', '2021-11-28 22:25:00'),
(24, 'Ice Cream', '2021-11-29 22:25:00', '2021-11-29 22:25:00'),
(25, 'Minuman', '2021-11-30 22:25:00', '2021-11-30 22:25:00'),
(26, 'Hair Styling & Hair Vitamin', '2021-11-09 22:25:00', '2021-11-09 22:25:00'),
(27, 'Pulsa', '2022-01-20 20:36:39', '2022-01-20 20:36:39'),
(28, 'Fotokopi', '2022-01-20 20:46:26', '2022-01-20 20:46:26');

-- --------------------------------------------------------

--
-- Table structure for table `simpanan`
--

CREATE TABLE `simpanan` (
  `id_simpanan` int(10) NOT NULL,
  `id_anggota` int(10) NOT NULL,
  `id_user` int(10) NOT NULL,
  `jenis_simpanan` varchar(150) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `tanggal_awal_kontrak` date NOT NULL,
  `tanggal_akhir_kontrak` date NOT NULL,
  `tanggal_realisasi_penarikan` date DEFAULT NULL,
  `durasi_kontrak_bulan` int(10) NOT NULL,
  `bunga_tahunan` decimal(10,2) NOT NULL,
  `jumlah_simpanan` decimal(17,2) NOT NULL,
  `dibuat_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `diubah_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `status_simpanan` enum('AKTIF','SUSPENDED','SELESAI','') NOT NULL DEFAULT 'AKTIF'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `simpanan_detail`
--

CREATE TABLE `simpanan_detail` (
  `id_simpanan_detail` int(10) NOT NULL,
  `id_simpanan` int(10) NOT NULL,
  `urut` int(10) NOT NULL,
  `tanggal_jatuh_tempo` date NOT NULL,
  `tanggal_realisasi_bayar` date DEFAULT NULL,
  `anggaran_pembayaran` int(17) NOT NULL,
  `realisasi_pembayaran` int(17) DEFAULT NULL,
  `bunga_persentase` decimal(3,2) NOT NULL,
  `bunga_nominal` decimal(17,2) NOT NULL,
  `anggaran_saldo_akhir` decimal(17,2) NOT NULL,
  `realisasi_saldo_akhir` decimal(17,2) DEFAULT NULL,
  `dibuat_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `diubah_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `diterima_oleh` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(10) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `dibuat_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `diubah_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `terakhir_login` datetime NOT NULL DEFAULT current_timestamp(),
  `akses` enum('Administrator','Toko','Simpan Pinjam','') NOT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'OFFLINE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `password`, `dibuat_pada`, `diubah_pada`, `terakhir_login`, `akses`, `status`) VALUES
(1, 'I KETUT ELI SUMERTA', 'admin', 'admin', '2021-11-11 07:49:25', '2021-11-11 07:49:25', '2022-01-20 20:33:06', 'Administrator', 'ONLINE'),
(2, 'NI KETUT CATUR BUDIASIH', 'catur', 'catur', '2021-11-11 08:04:45', '2021-11-11 08:13:04', '2022-01-06 16:18:14', 'Simpan Pinjam', 'OFFLINE'),
(4, 'NI LUH GITA MAHARANI', 'gita', 'gita', '2021-11-11 08:17:19', '2021-11-11 08:17:19', '2021-12-27 00:08:04', 'Toko', 'OFFLINE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `beli`
--
ALTER TABLE `beli`
  ADD PRIMARY KEY (`id_beli`);

--
-- Indexes for table `beli_detail`
--
ALTER TABLE `beli_detail`
  ADD PRIMARY KEY (`id_beli_detail`);

--
-- Indexes for table `jual`
--
ALTER TABLE `jual`
  ADD PRIMARY KEY (`id_jual`);

--
-- Indexes for table `jual_cicil`
--
ALTER TABLE `jual_cicil`
  ADD PRIMARY KEY (`id_jual_cicil`);

--
-- Indexes for table `jual_detail`
--
ALTER TABLE `jual_detail`
  ADD PRIMARY KEY (`id_jual_detail`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id_keranjang`);

--
-- Indexes for table `keranjang_beli`
--
ALTER TABLE `keranjang_beli`
  ADD PRIMARY KEY (`id_keranjang_beli`);

--
-- Indexes for table `pemasok`
--
ALTER TABLE `pemasok`
  ADD PRIMARY KEY (`id_pemasok`);

--
-- Indexes for table `periode_pembukuan`
--
ALTER TABLE `periode_pembukuan`
  ADD PRIMARY KEY (`id_periode`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `produk_kategori`
--
ALTER TABLE `produk_kategori`
  ADD PRIMARY KEY (`id_produk_kategori`);

--
-- Indexes for table `simpanan`
--
ALTER TABLE `simpanan`
  ADD PRIMARY KEY (`id_simpanan`);

--
-- Indexes for table `simpanan_detail`
--
ALTER TABLE `simpanan_detail`
  ADD PRIMARY KEY (`id_simpanan_detail`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id_anggota` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;

--
-- AUTO_INCREMENT for table `beli`
--
ALTER TABLE `beli`
  MODIFY `id_beli` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `beli_detail`
--
ALTER TABLE `beli_detail`
  MODIFY `id_beli_detail` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=509;

--
-- AUTO_INCREMENT for table `jual`
--
ALTER TABLE `jual`
  MODIFY `id_jual` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jual_cicil`
--
ALTER TABLE `jual_cicil`
  MODIFY `id_jual_cicil` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jual_detail`
--
ALTER TABLE `jual_detail`
  MODIFY `id_jual_detail` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id_keranjang` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keranjang_beli`
--
ALTER TABLE `keranjang_beli`
  MODIFY `id_keranjang_beli` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pemasok`
--
ALTER TABLE `pemasok`
  MODIFY `id_pemasok` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `periode_pembukuan`
--
ALTER TABLE `periode_pembukuan`
  MODIFY `id_periode` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=543;

--
-- AUTO_INCREMENT for table `produk_kategori`
--
ALTER TABLE `produk_kategori`
  MODIFY `id_produk_kategori` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `simpanan`
--
ALTER TABLE `simpanan`
  MODIFY `id_simpanan` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `simpanan_detail`
--
ALTER TABLE `simpanan_detail`
  MODIFY `id_simpanan_detail` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
