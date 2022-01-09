-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2022 at 04:07 AM
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
(0, '-', '0000-00-00', '-- NON ANGGOTA --', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-12 15:38:00', '2021-11-12 15:38:00'),
(2, '-', '2020-01-01', 'AGUS ADI SAPTA GUNAWAN', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-09 09:01:00', '2021-11-09 09:05:00'),
(3, '-', '2020-01-01', 'ANIK YANTARI,NI PUTU', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-10 09:01:00', '2021-11-10 09:05:00'),
(4, '-', '2020-01-01', 'AGUS ANGGAYANA I', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-11 09:01:00', '2021-11-11 09:05:00'),
(5, '-', '2020-01-01', 'BAGUS PUTU EKA DHARMASUSILA', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-12 09:01:00', '2021-11-12 09:05:00'),
(6, '-', '2020-01-01', 'BUDIANA,I KADEK', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-13 09:01:00', '2021-11-13 09:05:00'),
(7, '-', '2020-01-01', 'CHRISTINE DWIYANTI S.,NI MADE', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-14 09:01:00', '2021-11-14 09:05:00'),
(8, '-', '2020-01-01', 'DASNA, I MADE', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-15 09:01:00', '2021-11-15 09:05:00'),
(9, '-', '2020-01-01', 'DIANITA SAFITRI', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-16 09:01:00', '2021-11-16 09:05:00'),
(10, '-', '2020-01-01', 'DIANA DIKARINI', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-17 09:01:00', '2021-11-17 09:05:00'),
(11, '-', '2020-01-01', 'DWIYANTI DEWA MADE', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-18 09:01:00', '2021-11-18 09:05:00'),
(12, '-', '2020-01-01', 'DR I MADE PETRUS M.MIN', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-19 09:01:00', '2021-11-19 09:05:00'),
(13, '-', '2020-01-01', 'EDY PURNAYASA, I KETUT SE', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-20 09:01:00', '2021-11-20 09:05:00'),
(14, '-', '2020-01-01', 'ELDA DWI PURWATI,NI LUH', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-21 09:01:00', '2021-11-21 09:05:00'),
(15, '-', '2020-01-01', 'FENNY SENGKEY', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-22 09:01:00', '2021-11-22 09:05:00'),
(16, '-', '2020-01-01', 'AGUSTINA RIZKI,GST .AYU', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-23 09:01:00', '2021-11-23 09:05:00'),
(17, '-', '2020-01-01', 'HERIAWAN SUCIPTA, I GEDE', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-24 09:01:00', '2021-11-24 09:05:00'),
(18, '-', '2020-01-01', 'KARYAWAN DEWA GEDE', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-25 09:01:00', '2021-11-25 09:05:00'),
(19, '-', '2020-01-01', 'MOHDIANA,I PUTU SH', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-26 09:01:00', '2021-11-26 09:05:00'),
(20, '-', '2020-01-01', 'GUNAWAN WIBISONO', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-27 09:01:00', '2021-11-27 09:05:00'),
(21, '-', '2020-01-01', 'IRAWINE RIZKY WAHYU KUSUMA', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-28 09:01:00', '2021-11-28 09:05:00'),
(22, '-', '2020-01-01', 'INDRA SUSANTI NI LUH, SE', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-29 09:01:00', '2021-11-29 09:05:00'),
(23, '-', '2020-01-01', 'PEDRIANTHA,PUTU', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-11-30 09:01:00', '2021-11-30 09:05:00'),
(24, '-', '2020-01-01', 'JERIMEN TELEHALA', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-12-01 09:01:00', '2021-12-01 09:05:00'),
(25, '-', '2020-01-01', 'KORNELIUS RUDI CAHYONO', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-12-02 09:01:00', '2021-12-02 09:05:00'),
(26, '-', '2020-01-01', 'MARTA MADE DRA', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-12-03 09:01:00', '2021-12-03 09:05:00'),
(27, '-', '2020-01-01', 'SARA WANGI NI NYOMAN', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-12-04 09:01:00', '2021-12-04 09:05:00'),
(28, '-', '2020-01-01', 'NIRMALA TARI', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-12-05 09:01:00', '2021-12-05 09:05:00'),
(29, '-', '2020-01-01', 'NURYANTI NYOMAN', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-12-06 09:01:00', '2021-12-06 09:05:00'),
(30, '-', '2020-01-01', 'OKA ARIANTINI,NI PT', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-12-07 09:01:00', '2021-12-07 09:05:00'),
(31, '-', '2020-01-01', 'ROSVITA FLAVIANA OSIN,SE', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-12-08 09:01:00', '2021-12-08 09:05:00'),
(32, '-', '2020-01-01', 'LINDAWATI', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-12-09 09:01:00', '2021-12-09 09:05:00'),
(33, '-', '2020-01-01', 'SUGIANTINI ,NI WAYAN', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-12-10 09:01:00', '2021-12-10 09:05:00'),
(34, '-', '2020-01-01', 'SUMANTRI, I WAYAN SE', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-12-11 09:01:00', '2021-12-11 09:05:00'),
(35, '-', '2020-01-01', 'SUNATA, I MADE DRS MM', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-12-12 09:01:00', '2021-12-12 09:05:00'),
(36, '-', '2020-01-01', 'SUSENO', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-12-13 09:01:00', '2021-12-13 09:05:00'),
(37, '-', '2020-01-01', 'TIRTAWATI, NI MADE', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-12-14 09:01:00', '2021-12-14 09:05:00'),
(38, '-', '2020-01-01', 'TRISNAWATI, NI NYOMAN', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-12-15 09:01:00', '2021-12-15 09:05:00'),
(39, '-', '2020-01-01', 'WIDYA PIBRIANI,NI PUTU', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-12-16 09:01:00', '2021-12-16 09:05:00'),
(40, '-', '2020-01-01', 'WIDIADA SAPUTRA I KETUT,.SH', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-12-17 09:01:00', '2021-12-17 09:05:00'),
(41, '-', '2020-01-01', 'AGUNG RAI ANTARA,I MADE SS', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-12-18 09:01:00', '2021-12-18 09:05:00'),
(42, '-', '2020-01-01', 'AGUS PRAYOGI  PUTU SST PAR', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-12-19 09:01:00', '2021-12-19 09:05:00'),
(43, '-', '2020-01-01', 'ARDIANA, KOMANG SE', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-12-20 09:01:00', '2021-12-20 09:05:00'),
(44, '-', '2020-01-01', 'ARISTANA,  I NENGAH, SE.,MM', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-12-21 09:01:00', '2021-12-21 09:05:00'),
(45, '-', '2020-01-01', 'ARNAYA YUDISTIRA,KOMANG', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-12-22 09:01:00', '2021-12-22 09:05:00'),
(46, '-', '2020-01-01', 'A.A. RATIH', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-12-23 09:01:00', '2021-12-23 09:05:00'),
(47, '-', '2020-01-01', 'BAYU WESNAWA I MADE A.PAR MM', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-12-24 09:01:00', '2021-12-24 09:05:00'),
(48, '-', '2020-01-01', 'BUDIASA, I KETUT SE.,MM', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-12-25 09:01:00', '2021-12-25 09:05:00'),
(49, '-', '2020-01-01', 'CATUR AYU BUDI ASTITI ASIH', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-12-26 09:01:00', '2021-12-26 09:05:00'),
(50, '-', '2020-01-01', 'DEWI IRWANTI NI KETUT', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-12-27 09:01:00', '2021-12-27 09:05:00'),
(51, '-', '2020-01-01', 'DWI SANTI SANG AYU MADE', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-12-28 09:01:00', '2021-12-28 09:05:00'),
(52, '-', '2020-01-01', 'EDI MOELYADI, SPD', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-12-29 09:01:00', '2021-12-29 09:05:00'),
(53, '-', '2020-01-01', 'ELI SUMERTA, I KETUT SE.,MM', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-12-30 09:01:00', '2021-12-30 09:05:00'),
(54, '-', '2020-01-01', 'HERINDIYAH KARTIKA Y.', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2021-12-31 09:01:00', '2021-12-31 09:05:00'),
(55, '-', '2020-01-01', 'ISA WAHJOEDI,SPD', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-01-01 09:01:00', '2022-01-01 09:05:00'),
(56, '-', '2020-01-01', 'JIMMY HARRY  P SUARTHANA,SST. PAR', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-01-02 09:01:00', '2022-01-02 09:05:00'),
(57, '-', '2020-01-01', 'KATERINA EVI TANDIRERUNG', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-01-03 09:01:00', '2022-01-03 09:05:00'),
(58, '-', '2020-01-01', 'MARIA IMELDA AMBONG', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-01-04 09:01:00', '2022-01-04 09:05:00'),
(59, '-', '2020-01-01', 'MASNING PUSPITASARI,KADEK', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-01-05 09:01:00', '2022-01-05 09:05:00'),
(60, '-', '2020-01-01', 'MEKARINI WAYAN, DRA.,M.HUM', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-01-06 09:01:00', '2022-01-06 09:05:00'),
(61, '-', '2020-01-01', 'NIDYA TRIANINGRUM', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-01-07 09:01:00', '2022-01-07 09:05:00'),
(62, '-', '2020-01-01', 'RAI PASTINI', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-01-08 09:01:00', '2022-01-08 09:05:00'),
(63, '-', '2020-01-01', 'REYNOLD PAPARANG', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-01-09 09:01:00', '2022-01-09 09:05:00'),
(64, '-', '2020-01-01', 'RINI PUSPANINGSIH, S. PT', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-01-10 09:01:00', '2022-01-10 09:05:00'),
(65, '-', '2020-01-01', 'RUSMIATI, NI NYOMAN SE', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-01-11 09:01:00', '2022-01-11 09:05:00'),
(66, '-', '2020-01-01', 'SRI SUTINI NI PUTU', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-01-12 09:01:00', '2022-01-12 09:05:00'),
(67, '-', '2020-01-01', 'SRI WIDHIASTUTY, DRA NI L P', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-01-13 09:01:00', '2022-01-13 09:05:00'),
(68, '-', '2020-01-01', 'SUARTA, I GEDE', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-01-14 09:01:00', '2022-01-14 09:05:00'),
(69, '-', '2020-01-01', 'SUASTIKA, I MADE IR', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-01-15 09:01:00', '2022-01-15 09:05:00'),
(70, '-', '2020-01-01', 'SUBADRA,I NENGAH,SS.M.PAR.PHD', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-01-16 09:01:00', '2022-01-16 09:05:00'),
(71, '-', '2020-01-01', 'SUKANATRA,I WAYAN', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-01-17 09:01:00', '2022-01-17 09:05:00'),
(72, '-', '2020-01-01', 'SUKARINI ,KADEK', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-01-18 09:01:00', '2022-01-18 09:05:00'),
(73, '-', '2020-01-01', 'SUDARMA,I MADE', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-01-19 09:01:00', '2022-01-19 09:05:00'),
(74, '-', '2020-01-01', 'SULISTYOADI JOKO SAHARJO', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-01-20 09:01:00', '2022-01-20 09:05:00'),
(75, '-', '2020-01-01', 'SULASTRI,IDA AYU', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-01-21 09:01:00', '2022-01-21 09:05:00'),
(76, '-', '2020-01-01', 'SUTHA ARIAWAN COK GEDE', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-01-22 09:01:00', '2022-01-22 09:05:00'),
(77, '-', '2020-01-01', 'SUWITRA WIRYA I MADE', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-01-23 09:01:00', '2022-01-23 09:05:00'),
(78, '-', '2020-01-01', 'UMBARA DHARMA PUTRA,GST.BAGUS', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-01-24 09:01:00', '2022-01-24 09:05:00'),
(79, '-', '2020-01-01', 'WARDHANA, I MADE, DRS', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-01-25 09:01:00', '2022-01-25 09:05:00'),
(80, '-', '2020-01-01', 'WIANTARA NYOMAN I GST,DRS,MM', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-01-26 09:01:00', '2022-01-26 09:05:00'),
(81, '-', '2020-01-01', 'WIDIANTARA, I GST A BGS, ST', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-01-27 09:01:00', '2022-01-27 09:05:00'),
(82, '-', '2020-01-01', 'YOS HENDRA I KETUT SS', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-01-28 09:01:00', '2022-01-28 09:05:00'),
(83, '-', '2020-01-01', 'YUDI DARMITA, SE.,MM', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-01-29 09:01:00', '2022-01-29 09:05:00'),
(84, '-', '2020-01-01', 'YUNIK ANGGRENI, NI PUTU SS', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-01-30 09:01:00', '2022-01-30 09:05:00'),
(85, '-', '2020-01-01', 'ADITYAWAN I MADE', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-01-31 09:01:00', '2022-01-31 09:05:00'),
(86, '-', '2020-01-01', 'AGUS SUARSANA ARIESTA,PUTU', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-02-01 09:01:00', '2022-02-01 09:05:00'),
(87, '-', '2020-01-01', 'CANDRA DEWI LUH KOMANG, SE, MM', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-02-02 09:01:00', '2022-02-02 09:05:00'),
(88, '-', '2020-01-01', 'CHRISTIN DWITRAYANI MADE', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-02-03 09:01:00', '2022-02-03 09:05:00'),
(89, '-', '2020-01-01', 'DEBORA MIMY SUSANTHI', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-02-04 09:01:00', '2022-02-04 09:05:00'),
(90, '-', '2020-01-01', 'DAVID TOGA  ANANTHA, PUTU', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-02-05 09:01:00', '2022-02-05 09:05:00'),
(91, '-', '2020-01-01', 'DEWI WATI, DRA', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-02-06 09:01:00', '2022-02-06 09:05:00'),
(92, '-', '2020-01-01', 'ERLINA JUNIPISA,S.PD', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-02-07 09:01:00', '2022-02-07 09:05:00'),
(93, '-', '2020-01-01', 'FRIDA AGUSTINA ADNANTARA', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-02-08 09:01:00', '2022-02-08 09:05:00'),
(94, '-', '2020-01-01', 'HEDY WARTANA, I MADE, SE', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-02-09 09:01:00', '2022-02-09 09:05:00'),
(95, '-', '2020-01-01', 'HERI SUGIARTA ASANA,I GD', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-02-10 09:01:00', '2022-02-10 09:05:00'),
(96, '-', '2020-01-01', 'MERTAYASA,I NYOMAN', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-02-11 09:01:00', '2022-02-11 09:05:00'),
(97, '-', '2020-01-01', 'JAMES ADOLF PAPARANG', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-02-12 09:01:00', '2022-02-12 09:05:00'),
(98, '-', '2020-01-01', 'JULYANTI PARAMIYTA SARI NI LK,SS', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-02-13 09:01:00', '2022-02-13 09:05:00'),
(99, '-', '2020-01-01', 'KRISNA LESTARI, I GUSTI', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-02-14 09:01:00', '2022-02-14 09:05:00'),
(100, '-', '2020-01-01', 'KUKUH RIAN SETIAWAN,SE', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-02-15 09:01:00', '2022-02-15 09:05:00'),
(101, '-', '2020-01-01', 'KRISHNA YOGANTARA,KOMANG', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-02-16 09:01:00', '2022-02-16 09:05:00'),
(102, '-', '2020-01-01', 'KUSUMAWIJAYA IDA BAGUS, SE, MM', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-02-17 09:01:00', '2022-02-17 09:05:00'),
(103, '-', '2020-01-01', 'LANA SANCANG', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-02-18 09:01:00', '2022-02-18 09:05:00'),
(104, '-', '2020-01-01', 'LARAS OKTAVIANI,M.PD.H', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-02-19 09:01:00', '2022-02-19 09:05:00'),
(105, '-', '2020-01-01', 'RAI SUDARMINI, NI MADE', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-02-20 09:01:00', '2022-02-20 09:05:00'),
(106, '-', '2020-01-01', 'RAYWAN VIRGANTARA I MADE', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-02-21 09:01:00', '2022-02-21 09:05:00'),
(107, '-', '2020-01-01', 'SAORTUA MARBUN, PDT, STH, MA', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-02-22 09:01:00', '2022-02-22 09:05:00'),
(108, '-', '2020-01-01', 'SRI ASIH, A.A, SE', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-02-23 09:01:00', '2022-02-23 09:05:00'),
(109, '-', '2020-01-01', 'SRI RAHAYU TRISNA DEWI', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-02-24 09:01:00', '2022-02-24 09:05:00'),
(110, '-', '2020-01-01', 'SURYANI PUTRI GUNAWATI, SH', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-02-25 09:01:00', '2022-02-25 09:05:00'),
(111, '-', '2020-01-01', 'SUTAPA I KETUT SE MM', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-02-26 09:01:00', '2022-02-26 09:05:00'),
(112, '-', '2020-01-01', 'SUSI HENDRAYANI,KETUT SE', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-02-27 09:01:00', '2022-02-27 09:05:00'),
(113, '-', '2020-01-01', 'TRESNA SANTI DEWI DEWA AYU', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-02-28 09:01:00', '2022-02-28 09:05:00'),
(114, '-', '2020-01-01', 'TIARA KUSUMA DEWI,SE', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-03-01 09:01:00', '2022-03-01 09:05:00'),
(115, '-', '2020-01-01', 'BAGUS SUTHANAYA PUTU., SE MM', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-03-02 09:01:00', '2022-03-02 09:05:00'),
(116, '-', '2020-01-01', 'YUDANA ADI, I KETUT SE.,MM', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-03-03 09:01:00', '2022-03-03 09:05:00'),
(117, '-', '2020-01-01', 'ABDIEL ARI SETIAWAN,PUTU', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-03-04 09:01:00', '2022-03-04 09:05:00'),
(118, '-', '2020-01-01', 'ADITYA PALGUNADI I MADE', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-03-05 09:01:00', '2022-03-05 09:05:00'),
(119, '-', '2020-01-01', 'AGUS ARIYANTO', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-03-06 09:01:00', '2021-11-16 09:27:45'),
(120, '-', '2020-01-01', 'ANTON JAYA, KETUT', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-03-07 09:01:00', '2022-03-07 09:05:00'),
(121, '-', '2020-01-01', 'ARI SANJANI LUH', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-03-08 09:01:00', '2022-03-08 09:05:00'),
(122, '-', '2020-01-01', 'BUDA ANTARA, I MADE', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-03-09 09:01:00', '2022-03-09 09:05:00'),
(123, '-', '2020-01-01', 'DESAK KETUT TOYANINGSIH', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-03-10 09:01:00', '2022-03-10 09:05:00'),
(124, '-', '2020-01-01', 'PRAYANTI DEWI,NI PUTU', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-03-11 09:01:00', '2022-03-11 09:05:00'),
(125, '-', '2020-01-01', 'DWI ARYASTANA I GST NGURAH,S.KOM', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-03-12 09:01:00', '2022-03-12 09:05:00'),
(126, '-', '2020-01-01', 'DWI UMBARA YASA', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-03-13 09:01:00', '2022-03-13 09:05:00'),
(127, '-', '2020-01-01', 'FAJAR GUNAWAN', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-03-14 09:01:00', '2022-03-14 09:05:00'),
(128, '-', '2020-01-01', 'HARLINAH,STH,S.PD', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-03-15 09:01:00', '2022-03-15 09:05:00'),
(129, '-', '2020-01-01', 'HENI SULISTYAWATI', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-03-16 09:01:00', '2022-03-16 09:05:00'),
(130, '-', '2020-01-01', 'HENDRY ROHARYANI A.MA', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-03-17 09:01:00', '2022-03-17 09:05:00'),
(131, '-', '2020-01-01', 'HELENA I GST AYU PT.PUSPARINI,SE.MM', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-03-18 09:01:00', '2022-03-18 09:05:00'),
(132, '-', '2020-01-01', 'INDRAYANI,DEWA AYU S.IP,S.PD', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-03-19 09:01:00', '2022-03-19 09:05:00'),
(133, '-', '2020-01-01', 'IGNIITYAS PRIMA ASTUTI NI', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-03-20 09:01:00', '2022-03-20 09:05:00'),
(134, '-', '2020-01-01', 'JOELIE SOEMARAWATI', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-03-21 09:01:00', '2022-03-21 09:05:00'),
(135, '-', '2020-01-01', 'JUNI ASTUTI,. NI MADE', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-03-22 09:01:00', '2022-03-22 09:05:00'),
(136, '-', '2020-01-01', 'KARTA, I MADE SSI', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-03-23 09:01:00', '2022-03-23 09:05:00'),
(137, '-', '2020-01-01', 'KERTAYOGA,I KETUT', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-03-24 09:01:00', '2022-03-24 09:05:00'),
(138, '-', '2020-01-01', 'MAHARDIKA,KOMANG', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-03-25 09:01:00', '2022-03-25 09:05:00'),
(139, '-', '2020-01-01', 'MERI UTAMA YASA, I GST MD', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-03-26 09:01:00', '2022-03-26 09:05:00'),
(140, '-', '2020-01-01', 'NANIK ARIANI,NI WAYAN', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-03-27 09:01:00', '2022-03-27 09:05:00'),
(141, '-', '2020-01-01', 'NOPI SUTANTRI,NI WAYAN', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-03-28 09:01:00', '2022-03-28 09:05:00'),
(142, '-', '2020-01-01', 'PARAMARTA, I GEDE SE', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-03-29 09:01:00', '2022-03-29 09:05:00'),
(143, '-', '2020-01-01', 'RIA NURLINA', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-03-30 09:01:00', '2022-03-30 09:05:00'),
(144, '-', '2020-01-01', 'RISTA SITOMPUL, SE', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-03-31 09:01:00', '2022-03-31 09:05:00'),
(145, '-', '2020-01-01', 'SEDANA I MADE', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-04-01 09:01:00', '2022-04-01 09:05:00'),
(146, '-', '2020-01-01', 'SUARDANA,I MADE,A.MD,S.AG', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-04-02 09:01:00', '2022-04-02 09:05:00'),
(147, '-', '2020-01-01', 'SUARMA,I WAYAN S.PD', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-04-03 09:01:00', '2022-04-03 09:05:00'),
(148, '-', '2020-01-01', 'SUDARSANA,I MADE,S.PD', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-04-04 09:01:00', '2022-04-04 09:05:00'),
(149, '-', '2020-01-01', 'SUDIRMAN, I MADE DRS', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-04-05 09:01:00', '2022-04-05 09:05:00'),
(150, '-', '2020-01-01', 'SUGIARINI,NI LUH PUTU', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-04-06 09:01:00', '2022-04-06 09:05:00'),
(151, '-', '2020-01-01', 'SUNERTI MADE', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-04-07 09:01:00', '2022-04-07 09:05:00'),
(152, '-', '2020-01-01', 'SUNETRI KETUT', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-04-08 09:01:00', '2022-04-08 09:05:00'),
(153, '-', '2020-01-01', 'SUPARTINI,KOMANG', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-04-09 09:01:00', '2022-04-09 09:05:00'),
(154, '-', '2020-01-01', 'SUTAMA,I WAYAN GEDE', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-04-10 09:01:00', '2022-04-10 09:05:00'),
(155, '-', '2020-01-01', 'SUWIRYA,GEDE', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-04-11 09:01:00', '2022-04-11 09:05:00'),
(156, '-', '2020-01-01', 'SUPARWATI MADE SE', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-04-12 09:01:00', '2022-04-12 09:05:00'),
(157, '-', '2020-01-01', 'WIJAYA,MADE', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-04-13 09:01:00', '2022-04-13 09:05:00'),
(158, '-', '2020-01-01', 'WULAN ANTARI,NI NYOMAN', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-04-14 09:01:00', '2022-04-14 09:05:00'),
(159, '-', '2020-01-01', 'YULI HERMAYANTI PUTU DRA', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-04-15 09:01:00', '2022-04-15 09:05:00'),
(160, '-', '2020-01-01', 'YURIASTITI', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-04-16 09:01:00', '2022-04-16 09:05:00'),
(161, '-', '2020-01-01', 'YUNITA SUKMA DEWI,NI MADE', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-04-17 09:01:00', '2022-04-17 09:05:00'),
(162, '-', '2020-01-01', 'AGUSTINI NI LUH PUTU, SE, MM', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-04-18 09:01:00', '2022-04-18 09:05:00'),
(163, '-', '2020-01-01', 'HARTINI,NI MADE', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-04-19 09:01:00', '2022-04-19 09:05:00'),
(164, '-', '2020-01-01', 'SILI ANTARI', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-04-20 09:01:00', '2022-04-20 09:05:00'),
(165, '-', '2020-01-01', 'SURYA NUGRAHA. SE', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-04-21 09:01:00', '2022-04-21 09:05:00'),
(166, '-', '2020-01-01', 'MILA, PUTU', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-04-22 09:01:00', '2022-04-22 09:05:00'),
(167, '-', '2020-01-01', 'JHON MAHARJONO,SE', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-04-23 09:01:00', '2022-04-23 09:05:00'),
(168, '-', '2020-01-01', 'AYU SURYANI,SE', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-04-24 09:01:00', '2022-04-24 09:05:00'),
(169, '-', '2020-01-01', 'ADI PUTRIASIH GST A', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-04-25 09:01:00', '2022-04-25 09:05:00'),
(170, '-', '2020-01-01', 'SUARJANA ,KADEK', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-04-26 09:01:00', '2022-04-26 09:05:00'),
(171, '-', '2020-01-01', 'SUNARTI KADEK', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-04-27 09:01:00', '2022-04-27 09:05:00'),
(172, '-', '2020-01-01', 'WILLIAM .F', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-04-28 09:01:00', '2022-04-28 09:05:00'),
(173, '-', '2020-01-01', 'KRISTONO AKIN', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-04-29 09:01:00', '2022-04-29 09:05:00'),
(174, '-', '2020-01-01', 'SRI WAHYUNI,KADEK', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-04-30 09:01:00', '2022-04-30 09:05:00'),
(175, '-', '2020-01-01', 'ARNAWA KOMANG', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-05-01 09:01:00', '2022-05-01 09:05:00'),
(176, '-', '2020-01-01', 'SUPIANI,NI NYOMAN', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-05-02 09:01:00', '2022-05-02 09:05:00'),
(177, '-', '2020-01-01', 'ARNATA, I KETUT', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-05-03 09:01:00', '2022-05-03 09:05:00'),
(178, '-', '2020-01-01', 'LUH MADE MAS MANIK MEIRINI', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-05-04 09:01:00', '2022-05-04 09:05:00'),
(179, '-', '2020-01-01', 'PUTU AYU MONIKA PARAMITA YANTI', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-05-05 09:01:00', '2022-05-05 09:05:00'),
(180, '-', '2020-01-01', 'WIPARSA, I MADE', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-05-06 09:01:00', '2022-05-06 09:05:00'),
(181, '-', '2020-01-01', 'KD WILAN YUSMITA RANI', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-05-07 09:01:00', '2022-05-07 09:05:00'),
(182, '-', '2020-01-01', 'WINDRADI, I NYOMAN', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-05-08 09:01:00', '2022-05-08 09:05:00'),
(183, '-', '2020-01-01', 'ARTIKA,I WAYAN', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-05-09 09:01:00', '2022-05-09 09:05:00'),
(184, '-', '2020-01-01', 'SAPTAWATI AYU,NI KADE', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-05-10 09:01:00', '2022-05-10 09:05:00'),
(185, '-', '2020-01-01', 'DITA WULANDARI,NI PT', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-05-11 09:01:00', '2022-05-11 09:05:00'),
(186, '-', '2020-01-01', 'ADI ARTA WIGUNA,WAYAN', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-05-12 09:01:00', '2022-05-12 09:05:00'),
(187, '-', '2020-01-01', 'PURWANINGSIH,NI KOMANG SS', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-05-13 09:01:00', '2022-05-13 09:05:00'),
(188, '-', '2020-01-01', 'SI PUTU AGUNG AYU PERTIWI DEWI', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-05-14 09:01:00', '2022-05-14 09:05:00'),
(189, '-', '2020-01-01', 'SARIANI, NYOMAN', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-05-15 09:01:00', '2022-05-15 09:05:00'),
(190, '-', '2020-01-01', 'NI KOMANG MATALIA GANDARI', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-05-16 09:01:00', '2022-05-16 09:05:00'),
(191, '-', '2020-01-01', 'YOGI TRIANA,KOMANG', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-05-17 09:01:00', '2022-05-17 09:05:00'),
(192, '-', '2020-01-01', 'I.G.A.A. SHERLYNA PRIHANDHANI', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-05-18 09:01:00', '2022-05-18 09:05:00'),
(193, '-', '2020-01-01', 'PANDE PUTU NOPI EKAJAYANTI', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-05-19 09:01:00', '2022-05-19 09:05:00'),
(194, '-', '2020-01-01', 'PANDE PUTU INDAH PURNAMAYANTI', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-05-20 09:01:00', '2022-05-20 09:05:00'),
(195, '-', '2020-01-01', 'NI PUTU MIRAH YUNITA UDAYANI', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-05-21 09:01:00', '2022-05-21 09:05:00'),
(196, '-', '2020-01-01', 'L.PT. WIDIASTINI', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-05-22 09:01:00', '2022-05-22 09:05:00'),
(197, '-', '2020-01-01', 'NI MADE ARI SUKMANDARI', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-05-23 09:01:00', '2022-05-23 09:05:00'),
(198, '-', '2020-01-01', 'IDA AYU AGUNG LAKSMI', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-05-24 09:01:00', '2022-05-24 09:05:00'),
(199, '-', '2020-01-01', 'NI MADE EGAR', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-05-25 09:01:00', '2022-05-25 09:05:00'),
(200, '-', '2020-01-01', 'SURYAWATI DEWA AYU', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-05-26 09:01:00', '2022-05-26 09:05:00'),
(201, '-', '2020-01-01', 'SRIASIH, NI NYOMAN', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-05-27 09:01:00', '2022-05-27 09:05:00'),
(202, '-', '2020-01-01', 'DEWI WIDAYANTI, I GUSTI AGUNG', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-05-28 09:01:00', '2022-05-28 09:05:00'),
(203, '-', '2020-01-01', 'JEBOL YASA', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-05-29 09:01:00', '2022-05-29 09:05:00'),
(204, '-', '2020-01-01', 'NATANAEL I NYOMAN', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-05-30 09:01:00', '2022-05-30 09:05:00'),
(205, '-', '2020-01-01', 'SUNARIANI,NI LUH', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-05-31 09:01:00', '2022-05-31 09:05:00'),
(206, '-', '2020-01-01', 'SUKARYA WAYAN', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-06-01 09:01:00', '2022-06-01 09:05:00'),
(207, '-', '2020-01-01', 'GUSTAPE GUMONICA', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-06-02 09:01:00', '2022-06-02 09:05:00'),
(208, '-', '2020-01-01', 'PHERULIAN SIRAIT', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-06-03 09:01:00', '2022-06-03 09:05:00'),
(209, '-', '2020-01-01', 'R.A RANI KUSUMO WARDANI', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-06-04 09:01:00', '2022-06-04 09:05:00'),
(210, '-', '2020-01-01', 'ERNA ZULAENI WILES', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-06-05 09:01:00', '2022-06-05 09:05:00'),
(211, '-', '2020-01-01', 'ERIK CAHYANTA', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-06-06 09:01:00', '2022-06-06 09:05:00'),
(212, '-', '2020-01-01', 'AYU PUTU FITRI ARISTIANI', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-06-07 09:01:00', '2022-06-07 09:05:00'),
(213, '-', '2020-01-01', 'SUDIRA,I KETUT', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-06-08 09:01:00', '2022-06-08 09:05:00'),
(214, '-', '2020-01-01', 'I NYOMAN SELAMET (MANGKU)', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-06-09 09:01:00', '2022-06-09 09:05:00'),
(215, '-', '2020-01-01', 'RODIYAH', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-06-10 09:01:00', '2022-06-10 09:05:00'),
(216, '-', '2020-01-01', 'FARHAN', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-06-11 09:01:00', '2022-06-11 09:05:00'),
(217, '-', '2020-01-01', 'YUNINGSIH,PUTU', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-06-12 09:01:00', '2022-06-12 09:05:00'),
(218, '-', '2020-01-01', 'EKAYANTI BORU PURBA', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-06-13 09:01:00', '2022-06-13 09:05:00'),
(219, '-', '2020-01-01', 'YULI DAMAYANTI', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-06-14 09:01:00', '2022-06-14 09:05:00'),
(220, '-', '2020-01-01', 'MARSINTA', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-06-15 09:01:00', '2022-06-15 09:05:00'),
(221, '-', '2020-01-01', 'NOPI WIDAYANTI', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-06-16 09:01:00', '2022-06-16 09:05:00'),
(222, '-', '2020-01-01', 'IDA BAGUS KADE DWI SUTA NEGARA', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-06-17 09:01:00', '2022-06-17 09:05:00'),
(223, '-', '2020-01-01', 'LUH PUTU EKARINI', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-06-18 09:01:00', '2022-06-18 09:05:00'),
(224, '-', '2020-01-01', 'NI MADE MARIA S', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-06-19 09:01:00', '2022-06-19 09:05:00'),
(225, '-', '2020-01-01', 'NYOMAN ARINI SUNINGSIH', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-06-20 09:01:00', '2022-06-20 09:05:00'),
(226, '-', '2020-01-01', 'DIDI', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-06-21 09:01:00', '2022-06-21 09:05:00'),
(227, '-', '2020-01-01', 'NOPRI', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-06-22 09:01:00', '2022-06-22 09:05:00'),
(228, '-', '2020-01-01', 'HESDY TIBE', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-06-23 09:01:00', '2022-06-23 09:05:00'),
(229, '-', '2020-01-01', 'SANTIKA DEWI NI PUTU', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 1, '2022-06-24 09:01:00', '2022-06-24 09:05:00'),
(230, '-', '2020-01-01', 'Biro Belmana/UNTRIM', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-09 09:01:00', '2021-11-09 09:05:00'),
(231, '-', '2020-01-01', 'Pasca', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-10 09:01:00', '2021-11-10 09:05:00'),
(232, '-', '2020-01-01', 'Kemahasiswaan/UNTRIM', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-11 09:01:00', '2021-11-11 09:05:00'),
(233, '-', '2020-01-01', 'Kitchen/AK. Mapindo', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-12 09:01:00', '2021-11-12 09:05:00'),
(234, '-', '2020-01-01', 'Restaurant/AK. Mapindo', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-13 09:01:00', '2021-11-13 09:05:00'),
(235, '-', '2020-01-01', 'AK.MAPINDO', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-14 09:01:00', '2021-11-14 09:05:00'),
(236, '-', '2020-01-01', 'Lab Kitchen YTSJ', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-15 09:01:00', '2021-11-15 09:05:00'),
(237, '-', '2020-01-01', 'Kitchen/Fak. Pariwisata', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-16 09:01:00', '2021-11-16 09:05:00'),
(238, '-', '2020-01-01', 'Rest/Fak. Pariwisata', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-17 09:01:00', '2021-11-17 09:05:00'),
(239, '-', '2020-01-01', 'Laundry/Fak. Pariwisata', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-18 09:01:00', '2021-11-18 09:05:00'),
(240, '-', '2020-01-01', 'HK/Fak. Pariwisata', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-19 09:01:00', '2021-11-19 09:05:00'),
(241, '-', '2020-01-01', 'Rumah Tangga', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-20 09:01:00', '2021-11-20 09:05:00'),
(242, '-', '2020-01-01', 'Fakultas Pariwisata', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-21 09:01:00', '2021-11-21 09:05:00'),
(243, '-', '2020-01-01', 'Fungsional', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-22 09:01:00', '2021-11-22 09:05:00'),
(244, '-', '2020-01-01', 'Training', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-23 09:01:00', '2021-11-23 09:05:00'),
(245, '-', '2020-01-01', 'Gudang', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-24 09:01:00', '2021-11-24 09:05:00'),
(246, '-', '2020-01-01', 'S2', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-25 09:01:00', '2021-11-25 09:05:00'),
(247, '-', '2020-01-01', 'Hildiktipari', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-26 09:01:00', '2021-11-26 09:05:00'),
(248, '-', '2020-01-01', 'Keuangan', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-27 09:01:00', '2021-11-27 09:05:00'),
(249, '-', '2020-01-01', 'Kursus', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-28 09:01:00', '2021-11-28 09:05:00'),
(250, '-', '2020-01-01', 'Penjaminan Mutu', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-29 09:01:00', '2021-11-29 09:05:00'),
(251, '-', '2020-01-01', 'Yayasan', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-11-30 09:01:00', '2021-11-30 09:05:00'),
(252, '-', '2020-01-01', 'Yayasan/Kitchen', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-12-01 09:01:00', '2021-12-01 09:05:00'),
(253, '-', '2020-01-01', 'Yayasan/Rapat', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-12-02 09:01:00', '2021-12-02 09:05:00'),
(254, '-', '2020-01-01', 'Yayasan/Laundry', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-12-03 09:01:00', '2021-12-03 09:05:00'),
(255, '-', '2020-01-01', 'LP2M Stipar', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-12-04 09:01:00', '2021-12-04 09:05:00'),
(256, '-', '2020-01-01', 'Laundry/PPLP. Mapindo', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-12-05 09:01:00', '2021-12-05 09:05:00'),
(257, '-', '2020-01-01', 'Kitchen/PPLP Mapindo', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-12-06 09:01:00', '2021-12-06 09:05:00'),
(258, '-', '2020-01-01', 'Restaurant/PPLP Mapindo', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-12-07 09:01:00', '2021-12-07 09:05:00'),
(259, '-', '2020-01-01', 'Marketing', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-12-08 09:01:00', '2021-12-08 09:05:00'),
(260, '-', '2020-01-01', 'UNTRIM/Kemahasiswaan', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-12-09 09:01:00', '2021-12-09 09:05:00'),
(261, '-', '2020-01-01', 'LSP /Sertifikasi', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-12-10 09:01:00', '2021-12-10 09:05:00'),
(262, '-', '2020-01-01', 'LSU', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-12-11 09:01:00', '2021-12-11 09:05:00'),
(263, '-', '2020-01-01', 'Engineering', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-12-12 09:01:00', '2021-12-12 09:05:00'),
(264, '-', '2020-01-01', 'Ruangan Dosen Bahasa', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-12-13 09:01:00', '2021-12-13 09:05:00'),
(265, '-', '2020-01-01', 'Ruang Bapak Yudi Darmita', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-12-14 09:01:00', '2021-12-14 09:05:00'),
(266, '-', '2020-01-01', 'Pensisba', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-12-15 09:01:00', '2021-12-15 09:05:00'),
(267, '-', '2020-01-01', 'LPM untrim', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-12-16 09:01:00', '2021-12-16 09:05:00'),
(268, '-', '2020-01-01', 'Restaurant/Kitchen SMK Triatma Jaya', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-12-17 09:01:00', '2021-12-17 09:05:00'),
(269, '-', '2020-01-01', 'SMK Triatma Jaya', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-12-18 09:01:00', '2021-12-18 09:05:00'),
(270, '-', '2020-01-01', 'LP2M untrim', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-12-19 09:01:00', '2021-12-19 09:05:00'),
(271, '-', '2020-01-01', 'Personalia', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-12-20 09:01:00', '2021-12-20 09:05:00'),
(272, '-', '2020-01-01', 'Ruang Direktur AK. Mapindo', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-12-21 09:01:00', '2021-12-21 09:05:00'),
(273, '-', '2020-01-01', 'Fakultas Bisnis/UNTRIM', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-12-22 09:01:00', '2021-12-22 09:05:00'),
(274, '-', '2020-01-01', 'SMK Triatma Jaya/ Pastry', 'Badung', '-', 'info@triatma-mapindo.ac.id', '0.00', '0.00', 0, '2021-12-23 09:01:00', '2021-12-23 09:05:00');

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
(1, 1, 1, 'KAS', '2021-11-25', '890000.00', '0.00', '0.00', '2021-11-25 09:57:07', '2021-11-25 09:57:07'),
(2, 3, 1, 'KAS', '2021-11-25', '200000.00', '0.00', '0.00', '2021-11-25 09:58:58', '2021-11-25 09:58:58'),
(3, 3, 1, 'KAS', '2021-11-26', '100000.00', '0.00', '0.00', '2021-11-26 14:35:46', '2021-11-26 14:35:46'),
(4, 1, 1, 'UTANG', '2021-11-26', '105000.00', '0.00', '0.00', '2021-11-26 14:37:32', '2021-11-26 14:37:32'),
(5, 1, 1, 'KAS', '2021-11-28', '400000.00', '0.00', '0.00', '2021-11-28 09:58:18', '2021-11-28 09:58:18'),
(6, 1, 1, 'KAS', '2021-11-01', '200000.00', '0.00', '0.00', '2021-12-03 22:43:47', '2021-12-03 22:43:47');

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
(1, 1, 433, '0.00', '25000.00', '20.00', '2021-11-25 09:57:07', '2021-11-25 09:57:07'),
(2, 1, 282, '0.00', '6000.00', '10.00', '2021-11-25 09:57:07', '2021-11-25 09:57:07'),
(3, 1, 405, '0.00', '33000.00', '10.00', '2021-11-25 09:57:07', '2021-11-25 09:57:07'),
(4, 2, 433, '25000.00', '20000.00', '10.00', '2021-11-25 09:58:58', '2021-11-25 09:58:58'),
(5, 3, 406, '0.00', '10000.00', '10.00', '2021-11-26 14:35:46', '2021-11-26 14:35:46'),
(6, 4, 406, '10000.00', '10500.00', '10.00', '2021-11-26 14:37:32', '2021-11-26 14:37:32'),
(7, 5, 433, '23275.86', '20000.00', '20.00', '2021-11-28 09:58:18', '2021-11-28 09:58:18'),
(8, 6, 293, '0.00', '20000.00', '10.00', '2021-12-03 22:43:47', '2021-12-03 22:43:47');

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

--
-- Dumping data for table `jual`
--

INSERT INTO `jual` (`id_jual`, `id_anggota`, `id_user`, `metode_bayar`, `tanggal_transaksi`, `total`, `diskon`, `pajak`, `dibuat_pada`, `diubah_pada`) VALUES
(1, 119, 1, 'POTONG SALDO ANGGOTA', '2021-11-25', '28000.00', '0.00', '0.00', '2021-11-25 09:57:49', '2021-11-25 09:57:49'),
(2, 117, 1, 'POTONG SALDO ANGGOTA', '2021-11-27', '93000.00', '0.00', '0.00', '2021-11-27 17:51:21', '2021-11-27 17:51:21'),
(3, 46, 1, 'KAS', '2021-11-27', '36000.00', '0.00', '0.00', '2021-11-27 17:52:00', '2021-11-27 17:52:00'),
(4, 268, 1, 'POTONG SALDO ANGGOTA', '2021-11-28', '12500.00', '0.00', '0.00', '2021-11-28 09:57:41', '2021-11-28 09:57:41'),
(5, 0, 1, 'KAS', '2021-11-28', '36000.00', '0.00', '0.00', '2021-11-28 09:58:43', '2021-11-28 09:58:43'),
(6, 119, 1, 'POTONG SALDO ANGGOTA', '2021-11-17', '36000.00', '0.00', '0.00', '2021-12-03 18:58:21', '2021-12-03 18:58:21'),
(7, 41, 1, 'POTONG SALDO ANGGOTA', '2021-11-19', '64000.00', '0.00', '0.00', '2021-12-03 22:09:32', '2021-12-03 22:09:32'),
(8, 89, 1, 'POTONG SALDO ANGGOTA', '2021-11-29', '50000.00', '0.00', '0.00', '2021-12-03 22:44:24', '2021-12-03 22:44:24'),
(9, 0, 1, 'KAS', '2021-12-05', '8000.00', '0.00', '0.00', '2021-12-05 12:41:34', '2021-12-05 12:41:34'),
(10, 119, 1, 'POTONG SALDO ANGGOTA', '2021-12-05', '36000.00', '0.00', '0.00', '2021-12-05 12:48:51', '2021-12-05 12:48:51'),
(11, 0, 1, 'KAS', '2021-12-23', '28000.00', '0.00', '0.00', '2021-12-23 10:09:02', '2021-12-23 10:09:02'),
(12, 46, 1, 'POTONG SALDO ANGGOTA', '2021-12-23', '40000.00', '0.00', '0.00', '2021-12-23 10:09:22', '2021-12-23 10:09:22'),
(13, 119, 1, 'CICIL BAYAR', '2021-12-23', '28000.00', '0.00', '0.00', '2021-12-23 10:11:00', '2021-12-23 10:11:00'),
(14, 46, 2, 'CICIL BAYAR', '2021-12-23', '28000.00', '0.00', '0.00', '2021-12-23 11:24:59', '2021-12-23 11:24:59'),
(15, 169, 2, 'CICIL BAYAR', '2022-01-01', '28000.00', '0.00', '0.00', '2021-12-23 11:26:19', '2021-12-23 11:26:19'),
(16, 118, 2, 'CICIL BAYAR', '2021-12-23', '28000.00', '0.00', '0.00', '2021-12-23 11:29:18', '2021-12-23 11:29:18'),
(17, 119, 2, 'POTONG SALDO ANGGOTA', '2021-12-23', '26000.00', '0.00', '0.00', '2021-12-23 11:31:13', '2021-12-23 11:31:13'),
(18, 118, 2, 'CICIL BAYAR', '2021-12-25', '28000.00', '0.00', '0.00', '2021-12-25 10:41:37', '2021-12-25 10:41:37'),
(19, 186, 2, 'POTONG SALDO ANGGOTA', '2021-12-25', '140000.00', '0.00', '0.00', '2021-12-25 11:19:38', '2021-12-25 11:19:38');

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

--
-- Dumping data for table `jual_cicil`
--

INSERT INTO `jual_cicil` (`id_jual_cicil`, `id_jual`, `keterangan`, `tanggal_jatuh_tempo`, `jumlah_tagihan`, `is_terbayar`, `dibuat_pada`, `diubah_pada`) VALUES
(1, 14, '1', '2021-12-23', '0', 0, '2021-12-23 11:25:00', '2021-12-23 11:25:00'),
(2, 14, '2', '2022-01-23', '0', 0, '2021-12-23 11:25:00', '2021-12-23 11:25:00'),
(3, 14, '3', '2022-02-23', '0', 0, '2021-12-23 11:25:01', '2021-12-23 11:25:01'),
(4, 14, '4', '2022-03-23', '0', 0, '2021-12-23 11:25:01', '2021-12-23 11:25:01'),
(5, 15, 'PEMBAYARAN KE (1)', '2022-01-01', '0', 0, '2021-12-23 11:26:19', '2021-12-23 11:26:19'),
(6, 15, 'PEMBAYARAN KE (2)', '2022-02-01', '0', 0, '2021-12-23 11:26:19', '2021-12-23 11:26:19'),
(7, 15, 'PEMBAYARAN KE (3)', '2022-03-01', '0', 0, '2021-12-23 11:26:19', '2021-12-23 11:26:19'),
(8, 15, 'PEMBAYARAN KE (4)', '2022-04-01', '0', 0, '2021-12-23 11:26:19', '2021-12-23 11:26:19'),
(9, 16, 'Pembayaran ke -1', '2021-12-23', '6200', 0, '2021-12-23 11:29:18', '2021-12-23 11:29:18'),
(10, 16, 'Pembayaran ke -2', '2022-01-23', '5600', 0, '2021-12-23 11:29:18', '2021-12-23 11:29:18'),
(11, 16, 'Pembayaran ke -3', '2022-02-23', '5600', 0, '2021-12-23 11:29:18', '2021-12-23 11:29:18'),
(12, 16, 'Pembayaran ke -4', '2022-03-23', '5600', 0, '2021-12-23 11:29:18', '2021-12-23 11:29:18'),
(13, 16, 'Pembayaran ke -5', '2022-04-23', '5000', 0, '2021-12-23 11:29:18', '2021-12-23 11:29:18'),
(14, 18, 'Pembayaran ke -1', '2021-12-25', '7000', 0, '2021-12-25 10:41:37', '2021-12-25 10:41:37'),
(15, 18, 'Pembayaran ke -2', '2022-01-25', '7000', 0, '2021-12-25 10:41:37', '2021-12-25 10:41:37'),
(16, 18, 'Pembayaran ke -3', '2022-02-25', '7000', 0, '2021-12-25 10:41:37', '2021-12-25 10:41:37'),
(17, 18, 'Pembayaran ke -4', '2022-03-25', '7000', 0, '2021-12-25 10:41:37', '2021-12-25 10:41:37');

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

--
-- Dumping data for table `jual_detail`
--

INSERT INTO `jual_detail` (`id_jual_detail`, `id_jual`, `id_produk`, `hpp`, `harga_jual`, `jumlah`, `dibuat_pada`, `diubah_pada`) VALUES
(1, 1, 433, '25000.00', '28000.00', '1.00', '2021-11-25 09:57:50', '2021-11-25 09:57:50'),
(2, 2, 433, '23275.86', '28000.00', '2.00', '2021-11-27 17:51:21', '2021-11-27 17:51:21'),
(3, 2, 405, '33000.00', '37000.00', '1.00', '2021-11-27 17:51:22', '2021-11-27 17:51:22'),
(4, 3, 433, '23275.86', '28000.00', '1.00', '2021-11-27 17:52:00', '2021-11-27 17:52:00'),
(5, 3, 282, '6000.00', '8000.00', '1.00', '2021-11-27 17:52:01', '2021-11-27 17:52:01'),
(6, 4, 481, '0.00', '250.00', '50.00', '2021-11-28 09:57:41', '2021-11-28 09:57:41'),
(7, 5, 282, '6000.00', '8000.00', '1.00', '2021-11-28 09:58:43', '2021-11-28 09:58:43'),
(8, 5, 433, '21851.57', '28000.00', '1.00', '2021-11-28 09:58:43', '2021-11-28 09:58:43'),
(9, 6, 433, '21851.57', '28000.00', '1.00', '2021-12-03 18:58:21', '2021-12-03 18:58:21'),
(10, 6, 282, '6000.00', '8000.00', '1.00', '2021-12-03 18:58:21', '2021-12-03 18:58:21'),
(11, 7, 433, '21851.57', '28000.00', '2.00', '2021-12-03 22:09:32', '2021-12-03 22:09:32'),
(12, 7, 282, '6000.00', '8000.00', '1.00', '2021-12-03 22:09:32', '2021-12-03 22:09:32'),
(13, 8, 293, '20000.00', '25000.00', '2.00', '2021-12-03 22:44:24', '2021-12-03 22:44:24'),
(14, 9, 282, '6000.00', '8000.00', '1.00', '2021-12-05 12:41:34', '2021-12-05 12:41:34'),
(15, 10, 433, '21851.57', '28000.00', '1.00', '2021-12-05 12:48:51', '2021-12-05 12:48:51'),
(16, 10, 282, '6000.00', '8000.00', '1.00', '2021-12-05 12:48:51', '2021-12-05 12:48:51'),
(17, 11, 433, '21851.57', '28000.00', '1.00', '2021-12-23 10:09:02', '2021-12-23 10:09:02'),
(18, 12, 433, '21851.57', '28000.00', '1.00', '2021-12-23 10:09:22', '2021-12-23 10:09:22'),
(19, 12, 406, '10250.00', '12000.00', '1.00', '2021-12-23 10:09:22', '2021-12-23 10:09:22'),
(20, 13, 433, '21851.57', '28000.00', '1.00', '2021-12-23 10:11:00', '2021-12-23 10:11:00'),
(21, 14, 433, '21851.57', '28000.00', '1.00', '2021-12-23 11:24:59', '2021-12-23 11:24:59'),
(22, 15, 433, '21851.57', '28000.00', '1.00', '2021-12-23 11:26:19', '2021-12-23 11:26:19'),
(23, 16, 433, '21851.57', '28000.00', '1.00', '2021-12-23 11:29:18', '2021-12-23 11:29:18'),
(24, 17, 172, '0.00', '26000.00', '1.00', '2021-12-23 11:31:13', '2021-12-23 11:31:13'),
(25, 18, 433, '21851.57', '28000.00', '1.00', '2021-12-25 10:41:37', '2021-12-25 10:41:37'),
(26, 19, 433, '21851.57', '28000.00', '5.00', '2021-12-25 11:19:38', '2021-12-25 11:19:38');

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

--
-- Dumping data for table `keranjang`
--

INSERT INTO `keranjang` (`id_keranjang`, `id_user`, `id_produk`, `hpp`, `harga`, `jumlah`, `dibuat_pada`, `diubah_pada`) VALUES
(73, 4, 433, '0.00', '28000.00', '1', '2021-11-24 00:16:06', '2021-11-24 00:16:06'),
(74, 4, 405, '0.00', '37000.00', '1', '2021-11-24 00:17:34', '2021-11-24 00:17:34'),
(75, 4, 176, '0.00', '26000.00', '1', '2021-11-24 00:17:41', '2021-11-24 00:17:41');

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
(1, 4, 433, '0.00', '28000.00', '4', '2021-11-24 00:22:14', '2021-11-24 00:24:27'),
(3, 4, 471, '0.00', '4000.00', '2', '2021-11-24 00:24:34', '2021-11-24 00:24:37');

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
(1, 'PT. INDO MARCOX', 'Denpasar', '087860265451', 'agus.arianto21@gmail.com', '2021-11-23 23:32:54', '2021-11-28 10:07:51'),
(3, 'PT. LOTTE MART', 'Denpasar', '-', '', '2021-11-24 08:22:39', '2021-11-28 10:08:11'),
(4, 'PT. Maju Muncur ', 'Denpasar', '-', '', '2021-11-24 08:22:55', '2021-11-28 10:08:19');

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
(1, '2021.01', 2021, 'Januari', '2022-01-01', '2022-01-31', 0),
(2, '2021.02', 2021, 'Februari', '2021-02-01', '2021-02-28', 0),
(3, '2021.03', 2021, 'Maret', '2021-03-01', '2021-03-30', 0),
(4, '2021.04', 2021, 'April', '2021-04-01', '2021-04-30', 0),
(5, '2021.05', 2021, 'Mei', '2021-05-01', '2021-05-31', 0),
(6, '2021.06', 2021, 'Juni', '2021-06-01', '2021-06-30', 0),
(7, '2021.07', 2021, 'Juli', '2021-07-01', '2021-07-31', 0),
(8, '2021.08', 2021, 'Agustus', '2021-08-01', '2021-08-31', 0),
(9, '2021.09', 2021, 'September', '2021-09-01', '2021-09-30', 0),
(10, '2021.10', 2021, 'Oktober', '2021-10-01', '2021-10-31', 0),
(11, '2021.11', 2021, 'November', '2021-11-01', '2021-11-30', 0),
(12, '2021.12', 2021, 'Desember', '2021-12-01', '2021-12-31', 0);

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
(1, '', 1, 'CUSSONS BABY SOAP 100 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '5000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(2, '', 1, 'CUSSONS BABY SOAP SOFT & SMOOTH 100 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '5000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(3, '', 1, 'CUSSON BABY OIL 100 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '20000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(4, '', 1, 'CITRA ALOE VERA 70 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '2500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(5, '', 1, 'CITRA BENGKOANG 70 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '2500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(6, '', 1, 'CITRA PEARL 70 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '2500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(7, '', 1, 'LIFEBUOY COOL FRESH 75 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '3500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(8, '', 1, 'LIFEBUOY TOTAL 10 (MERAH) 75 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '3500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(9, '', 1, 'LIFEBUOY MILD CARE 75 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '3500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(10, '', 1, 'LIFEBUOY MATCHA 75 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '3500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(11, '', 1, 'LIFEBUOY KASTURI MUSK 75 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '3500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(12, '', 1, 'LIFEBUOY LEMON FRESH 75 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '3500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(13, '', 1, 'LIFEBUOY TOTAL 10 (MERAH) 110 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '4500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(14, '', 1, 'LIFEBUOY LEMON FRESH 110 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '4500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(15, '', 1, 'LIFEBUOY MATCHA 110 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '4500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(16, '', 1, 'LIFEBUOY KASTURI MUSK 110 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '4500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(17, '', 1, 'DETTOL RE-ENERGIZE 100 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '6000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(18, '', 1, 'DETTOL ORIGINAL 100 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '6000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(19, '', 1, 'DETTOL LASTING FRESH 100 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '6000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(20, '', 1, 'DETTOL COOL 100 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '6000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(21, '', 1, 'DETTOL SKINCARE 100 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '6000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(22, '', 1, 'NUVO NATURE PROTECT (HIJAU) 76 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '2500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(23, '', 1, 'NUVO MILD PROTECT 76 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '2500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(24, '', 1, 'NUVO FRESH PROTECT(KUNING) 76 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '2500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(25, '', 1, 'NUVO TOTAL PROTECT (MERAH) 76 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '2500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(26, '', 1, 'NUVO CARE PROTECT 76 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '2500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(27, '', 1, 'NUVO FAMILY CARE REFILL 450 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '21500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(28, '', 1, 'NUVO CARE PROTECT REFILL 450 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '21500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(29, '', 1, 'NUVO ENERGIZING LIQ REFILL 450 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '21500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(30, '', 1, 'LUX MAGICAL ORCHID 75 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '3500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(31, '', 1, 'LUX SOFT ROSE 75 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '3500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(32, '', 1, 'LUX LILY FRESH 75 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '3500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(33, '', 1, 'LUX BLUE PEONY 75 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '3500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(34, '', 1, 'LUX VELVET JASMINE 75 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '3500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(35, '', 1, 'LUX AQUA THE LIGHT 75 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '3500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(36, '', 1, 'SHINZU\'I KENSHO 87 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '4500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(37, '', 1, 'SHINZU\'I KIREI SKIN 87 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '4500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(38, '', 1, 'SHINZU\'I MATSU SKIN 87 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '4500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(39, '', 1, 'SHINZU\'I MYORI 87 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '4500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(40, '', 1, 'SHINZU\'I SAKURA 87 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '4500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(41, '', 1, 'GIV DAMASK ROSE & CHERRY BLOSSOM (PINK) 76 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '2500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(42, '', 1, 'GIV PASSION FLOWERS & SWEET BERRY (UNGU) 76 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '2500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(43, '', 1, 'GIV GREEN TEA & ALMOND OIL (HIJAU) 76 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '2500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(44, '', 1, 'GIV SPARKLING FRES 76 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '2500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(45, '', 1, 'DETTOL REFILL ORIGINAL 410 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '33500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(46, '', 1, 'LIFEBUOY REFILL COOL FRESH 450 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '27000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(47, '', 1, 'LIFEBUOY REFILL LEMON FRESH 450 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '27000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(48, '', 1, 'LIFEBUOY REFILL MILD CARE 450 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '27000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(49, '', 1, 'LIFEBUOY REFILL TOTAL 10 (MERAH) 450 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '27000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(50, '', 1, 'LUX REFILL VELVET JASMINE 450 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '27000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(51, '', 1, 'LUX REFILL MAGICAL ORCHID 450 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '27000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(52, '', 1, 'LUX REFILL BLUE PEONY 450 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '27000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(53, '', 1, 'LUX REFILL SOFT ROSE 450 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '27000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(54, '', 1, 'LUX REFILL LILY FRESH 450 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '27000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(55, '', 2, 'CUSSON BABY CANDLE NUT & CELERY 200 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '20000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(56, '', 2, 'LIFEBUOY ANTI KETOMBE 170 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '19000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(57, '', 2, 'LIFEBUOY PERAWATAN RAMBUT RONTOK 170 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '19000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(58, '', 2, 'LIFEBUOY KUAT & BERKILAU 170 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '19000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(59, '', 2, 'CLEAR APPLE FREASH 160 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '29000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(60, '', 2, 'CLEAR ICE COOL MENTHOL 160 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '29000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(61, '', 2, 'CLEAR ICE COOL MENTHOL 125 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '23000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(62, '', 2, 'CLEAR COMPLETE SOFT CARE 160 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '29000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(63, '', 2, 'CLEAR LEMON FRESH 160 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '29000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(64, '', 2, 'DOVE TOTAL DAMAGE TREATMENT 160 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '28500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(65, '', 2, 'DOVE CONDITIONER HAIR GROWTH RITUAL 160 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '27900.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(66, '', 2, 'TRESEMME HAIR FALL CONTROL 340 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '57000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(67, '', 2, 'TRESEMME KERATIN SMOOTH 340 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '57000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(68, '', 2, 'TRESEMME KERATIN SMOOTH 170 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '30000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(69, '', 2, 'TRESEMME HAIR FALL CONTROL 170 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '28000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(70, '', 2, 'TRESEMME CONDITONER KERATIN SMOOTH 340 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '52500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(71, '', 2, 'REJOICE RICH SOFT SMOOTH 160 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '20000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(72, '', 2, 'REJOICE ANTI DANDRUFF 3-IN-1 (HIJAB) 160 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '20000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(73, '', 2, 'HEAD & SHOULDERS SMOOTH & SILKY 160 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '30000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(74, '', 2, 'HEAD & SHOULDERS CLEAN & BALANCED 160 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '30000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(75, '', 2, 'HEAD & SHOULDERS LEMON FRESH 160 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '30000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(76, '', 2, 'PANTENE RAMBUT RONTOK 135 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '25000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(77, '', 2, 'PANTENE HALUS & LEMBUT 135 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '25000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(78, '', 2, 'PANTENE ANTI KETOMBE 135 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '25000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(79, '', 2, 'PANTENE RAMBUT RUSAK 135 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '25000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(80, '', 2, 'PANTENE TOTAL DAMAGE CARE 135 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '25000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(81, '', 2, 'PANTENE CONDITIONER HALUS & LEMBUT 135 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '25000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(82, '', 2, 'PANTENE CONDITIONER RAMBUT RONTOK 135 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '25000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(83, '', 2, 'PANTENE CONDITIONER NATURE CARE 135 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '25000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(84, '', 2, 'PANTENE CONDITIONER RAMBUT RUSAK 135 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '25000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(85, '', 2, 'SUNSILK BLACK SHINE 170 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '24000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(86, '', 2, 'SUNSILK SOFT AND SMOOTH (KUNING) 170 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '24000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(87, '', 3, 'MARINA UV WHITE BRIGHT & FRESH 185 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '10000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(88, '', 3, 'MARINA UV WHITE EXTRA SPF 30 185 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '15000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(89, '', 3, 'MARINA BODY LTN COLL ASTA 185 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '15000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(90, '', 3, 'MARINA UV WHITE HEALTHY & GLOW 185 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '10000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(91, '', 3, 'MARINA UV HYDROCOOL GEL 185 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '15000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(92, '', 3, 'CITRA PEARLY WHITE UV 230 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '23000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(93, '', 3, 'CITRA NATURAL GLOWING WHITE UV 230 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '23000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(94, '', 3, 'CITRA FRESH WHITE UV GEL ALOE VERA 230 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '26000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(95, '', 3, 'VASELINE HEALTY WHITE NIGHT REPAIR 200 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '38000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(96, '', 3, 'VASELINE INTENSIVE CARE ALOE SOOTHE 200 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '28000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(97, '', 3, 'VASELINE HEALTY WHITE FRESH & BRIGHT 200 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '28000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(98, '', 3, 'VASELINE INTENSIVE CARE DEEP RESTORE 200 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '26000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(99, '', 3, 'HERBORIST ALOEVERA GEL 250 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '79000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(100, '', 4, 'SARI AYU CLEANSING MILK MAWAR 150 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '15000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(101, '', 4, 'SARI AYU REFRESHING TONER MAWAR 150 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '14000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(102, '', 4, 'SARI AYU CLEANSING MILK KENANGA 150 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '15000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(103, '', 4, 'SARI AYU REFRESHING TONER KENANGA 150 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '14000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(104, '', 4, 'SARI AYU CLEANSING MILK JERUK 150 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '15000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(105, '', 4, 'SARI AYU REFRESHING TONER JERUK 150 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '14000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(106, '', 4, 'SARI AYU REFRESHING TONER JERUK 100 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '11500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(107, '', 4, 'SARI AYU REFRESHING TONER MAWAR 100 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '11500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(108, '', 4, 'VIVA MILK CLEANSER LEMON 100 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '8500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(109, '', 4, 'VIVA FACE TONIC LEMON 100 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '7000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(110, '', 4, 'VIVA MILK CLEANSER BENGKOANG 100 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '8500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(111, '', 4, 'VIVA FACE TONIC BENGKOANG 100 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '8000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(112, '', 4, 'VIVA ASTRINGENT CUCUCMBER 100 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '7000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(113, '', 4, 'VIVA AIR MAWAR 100 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '6500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(114, '', 4, 'VIVA MILK CLEANSER CUCUMBER 100 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '7500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(115, '', 26, 'GATSBY WATER GLOSS SOFT 150 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '15500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(116, '', 26, 'CLEAR HAIR STYLING ANTY DANDRUFF 100 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '13500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(117, '', 26, 'ELLIPS HAIR VITAMIN SMOOTH & SILKY ', 'PCS', '-', '', '0.00', '0.00', '0', '0', '14000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(118, '', 26, 'ELLIPS HAIR VITAMIN NUTRI COLOR ', 'PCS', '-', '', '0.00', '0.00', '0', '0', '14000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(119, '', 26, 'ELLIPS HAIR VITAMIN HAIR TREATMENT ', 'PCS', '-', '', '0.00', '0.00', '0', '0', '14000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(120, '', 5, 'ESKULLIN CHEERFUL SWING 110 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '24000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(121, '', 5, 'CASABLANCA SPORTY 100 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '15500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(122, '', 5, 'CASABLANCA AQUA 100 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '15500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(123, '', 5, 'CASABLANCA ROMANTIC 100 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '15500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(124, '', 5, 'GATSBY URBAN COLOGNE INFINITY 125 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '19000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(125, '', 5, 'GATSBY URBAN COLOGNE ENERGY 125 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '19000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(126, '', 5, 'GATSBY URBAN COLOGNE CONFIDANCE 125 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '19000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(127, '', 5, 'SARIAYU BODY SPLASH COLOGNE TANJUNG 150 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '32500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(128, '', 5, 'PARFUME BODY (KECIL) ', 'PCS', '-', '', '0.00', '0.00', '0', '0', '15000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(129, '', 5, 'PARFUME BODY (BESAR) ', 'PCS', '-', '', '0.00', '0.00', '0', '0', '20000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(130, '', 5, 'PARFUM THAILAND PCS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '15000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(131, '', 6, 'MOLTO SOFTENER SPRING BLUE 820 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '16000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(132, '', 6, 'MOLTO SOFTENER BLOSSOM PINK 820 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '16000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(133, '', 6, 'MOLTO ALL IN PINK 720 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '35000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(134, '', 6, 'MOLTO ALL IN BLUE 720 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '35000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(135, '', 6, 'DOWNY SWEETHEART 720 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '29000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(136, '', 6, 'DOWNY MYSTIQUE 720 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '38000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(137, '', 6, 'KISPRAY BLUIS 300 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '5500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(138, '', 6, 'KISPRAY GOLD 300 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '6500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(139, '', 6, 'KISPRAY AMORIS 300 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '5500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(140, '', 6, 'KISPRAY SEGERIS 300 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '5500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(141, '', 6, 'PARFUME LAUNDRY 3 IN 1 AKASIA 800 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '25000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(142, '', 6, 'BAYCLIN 1000 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '15500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(143, '', 6, 'PROKLIN KECIL 125 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '7000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(144, '', 6, 'PROKLIN BOTOL 1000 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '16300.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(145, '', 7, 'HARPIC LIME 700 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '27000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(146, '', 7, 'HARPIC LIME REFILL 450 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '17000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(147, '', 7, 'HARPIC LIME REFILL 700 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '27000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(148, '', 7, 'BEBEK BIRU 450 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '17000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(149, '', 7, 'BEBEK LEMON 450 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '18500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(150, '', 7, 'BEBEK PINUS 450 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '18500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(151, '', 7, 'MR MUSCLE BOTOL (KAMAR MANDI ) 500 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '16000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(152, '', 7, 'MR MUSCLE BOTOL ( KACA) 500 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '16000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(153, '', 7, 'MR MUSCLE BOTOL (DAPUR) 500 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '16000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(154, '', 7, 'MR MUSCLE REFILL (KACA) 440 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '7000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(155, '', 7, 'MR MUSCLE REFILL (DAPUR) 400 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '7000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(156, '', 7, 'MR MUSCLE REFILL (LANTAI) 800 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '17000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(157, '', 7, 'MR MUSCLE REFILL (KAMAR MANDI) 500 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '16000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(158, '', 7, 'SUPER PELL LEMON GINGER 770 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '16500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(159, '', 7, 'SUPER PELL GOLD 770 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '16500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(160, '', 7, 'SUPER PELL FRESH APPLE 770 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '16500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(161, '', 7, 'SUPER PELL CHERRY ROSE 770 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '16500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(162, '', 7, 'VIXAL 470 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '21500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(163, '', 7, 'VIXAL 780 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '21500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(164, '', 7, 'PORSTEX BIRU 1000 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '21000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(165, '', 7, 'PORSTEX UNGU 1000 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '21000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(166, '', 7, 'WIPOL CARBOL CEMARA 780 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '21500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(167, '', 7, 'WIPOL CARBOL CEMARA 240 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '5500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(168, '', 7, 'WIPOL CARBOL LEMON 240 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '5500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(169, '', 7, 'SWALLOW NAPTHALENE BALL 150 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '16700.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(170, '', 7, 'SWALLOW TOILET COLOUR BALL 5 PCS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '23500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(171, '', 7, 'SWALLOW NAPTHALENE BALL JUMBO 1', 'PCS', '-', '', '0.00', '0.00', '0', '0', '23000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(172, '', 8, 'ATTACK EASY PURPLE BLOSSOM 1,2 KG', 'PCS', '-', '', '0.00', '0.00', '-1', '0', '26000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(173, '', 8, 'ATTACK EASY ROMANTIC FLOWERS 1,2 KG', 'PCS', '-', '', '0.00', '0.00', '0', '0', '26000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(174, '', 8, 'ATTACK EASY ROMANTIC FLOWERS 700 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '17000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(175, '', 8, 'ATTACK EASY SPARKLING BLOOMING 700 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '17000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(176, '', 8, 'ATTACK EASY SPARKLING BLOOMING 1,2 KG', 'PCS', '-', '', '0.00', '0.00', '0', '0', '26000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(177, '', 8, 'ATTACK EASY SWEET GLAMOUR 1.2 KG', 'PCS', '-', '', '0.00', '0.00', '0', '0', '26000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(178, '', 8, 'DAIA SOFTENER PINK 850 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '17500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(179, '', 8, 'DAIA SOFTENER VIOLET 850 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '17500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(180, '', 8, 'DAIA SOFTENER BUNGA (ORANGE) 850 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '17500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(181, '', 8, 'DAIA SOFTENER LEMON 850 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '17500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(182, '', 8, 'DAIA PUTIH 850 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '17500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(183, '', 8, 'RINSO ANTI NODA MOLTO ROSE FRESH POWDER 770 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '23000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(184, '', 8, 'RINSO ANTI NODA MOLTO CLASSIC POWDER 770 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '23000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(185, '', 8, 'ATTACK PLUS SOFTENER 1,2 KG', 'PCS', '-', '', '0.00', '0.00', '0', '0', '29500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(186, '', 8, 'ATTACK PLUS SOFTENER 800 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '21000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(187, '', 8, 'SO KLIN SOFTERGENT 770 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '21000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(188, '', 8, 'RINSO MATIC BUKAAN ATAS LIQUID 800 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '26500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(189, '', 8, 'RINSO CLASIC FRESH LIQUID 750 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '25000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(190, '', 8, 'RINSO ROSE FRESH LIQUID 750 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '25000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(191, '', 8, 'RINSO MATIC POWDER BUKAAN ATAS 1 KG', 'PCS', '-', '', '0.00', '0.00', '0', '0', '26500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(192, '', 8, 'RINSO MATIC POWDER BUKAAN DEPAN 1 KG', 'PCS', '-', '', '0.00', '0.00', '0', '0', '33200.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(193, '', 8, 'RINSO MATIC POWDER BUKAAN ATAS 800 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '24000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(194, '', 9, 'GLADE SCENTED GEL APPLE 180 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '36750.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(195, '', 9, 'DESINFEKTAN SPRAY SECRET 200 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '26500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(196, '', 9, 'TOILET SPRAY ', 'PCS', '-', '', '0.00', '0.00', '0', '0', '22500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(197, '', 9, 'GLADE AUTOMATIC REFILL LAVENDER & VANILLA 225 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '31500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(198, '', 9, 'GLADE AUTOMATIC REFILL WILD BERRIES 225 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '31500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(199, '', 9, 'GLADE AUTOMATIC REFILL OCEAN ESCAPE 225 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '31500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(200, '', 9, 'GLADE AUTOMATIC REFILL LEMON 225 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '31500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(201, '', 9, 'GLADE AUTOMATIC REFILL CLEAN LINEN 225 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '31500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(202, '', 9, 'GLADE AUTOMATIC REFILL W LILAC-PEONY 225 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '31500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(203, '', 9, 'GLADE SPRAY ORANGE 250 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '16200.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(204, '', 9, 'GLADE SPRAY SPRINGE JASMINE 250 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '16200.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(205, '', 9, 'GLADE SPRAY PEONNY & BERRY BLISS 250 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '16200.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(206, '', 9, 'GLADE SPRAY OCEAN ESCAPE 250 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '16200.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(207, '', 9, 'GLADE SPRAY WILD BERRIES 250 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '16200.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(208, '', 9, 'GLADE SPRAY WILD LAVENDER 250 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '16200.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(209, '', 9, 'GLADE SPRAY ELEGANT VANILLA & OUD WOOD 250 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '16200.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(210, '', 9, 'BAY FRESH FROZEN LIME PCS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '11000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(211, '', 9, 'BAY FRESH ORANGE PULPY PCS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '11000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(212, '', 9, 'BAY FRESH COTTON CANDY POPCORN PCS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '11000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(213, '', 9, 'BAY FRESH STRAWBERRY BUBBLEGUM PCS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '11000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(214, '', 9, 'BAY FRESH CARAMEL VANILLA COFFEE PCS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '11000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(215, '', 9, 'BAY FRESH DARK ICE PCS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '11000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(216, '', 9, 'GLADE BATHROOM FRESH MOUNTAIN PINE (GANTUNG) PCS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '10000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(217, '', 9, 'GLADE BATHROOM FRESH AIR (GATUNG) PCS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '10000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(218, '', 9, 'GLADE BATHROOM LVENDER MIST (GANTUNG) PCS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '10000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(219, '', 9, 'GLADE BATHROOM LEMON ZEST (GANTUNG) PCS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '10000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(220, '', 10, 'PONDS WHITE BEUTY 100 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '31000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(221, '', 10, 'PONDS OIL CONTROL 100 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '31500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(222, '', 10, 'PONDS CLEAR SOLUTION 100 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '31500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(223, '', 10, 'PONDS PURE WHITE 100 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '32500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(224, '', 11, 'MINYAK KAYU PUTIH CAPLANG 210 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '75800.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(225, '', 11, 'MINYAK KAYU PUTIH CAPLANG 60 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '23500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(226, '', 11, 'KONICARE MINYAK TELON (KUNING) 60 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '28000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(227, '', 11, 'KONICARE MINYAK TELON PLUS (UNGU) 60 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '28000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(228, '', 11, 'KONICARE MINYAK TELON PLUS (UNGU) 125 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '55500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(229, '', 11, 'MINYAK KUTUS-KUTUS 100 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '230000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(230, '', 11, 'SAFE CARE ROLL ON 10 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '18000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(231, '', 11, 'SAFE CARE STRONG 10 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '18000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(232, '', 11, 'SAFE CARE TELON OIL 10 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '18000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(233, '', 11, 'SAFE CARE MINYAK ANGIN 10 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '18000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(234, '', 11, 'FRESH CARE CITRUS 10 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '14000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(235, '', 11, 'FRESH CARE STRONG 10 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '14000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(236, '', 11, 'FRESH CARE FRUITY SPLASH 10 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '14000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(237, '', 11, 'FRESH CARE SANDAL WOOD 10 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '14000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(238, '', 11, 'FRESH CARE GREEN TEA 10 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '14000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(239, '', 11, 'FRESH CARE KAYU PUTIH 10 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '14000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(240, '', 11, 'FRESH CARE LAVENDER 10 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '14000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(241, '', 11, 'FRESH CARE MINYAK ANGIN 10 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '14000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(242, '', 12, 'PEPSODENT KIDS AWESOME ORANGE 50 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '6500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(243, '', 12, 'PEPSODENT KIDS SWEET STRAWBERRY 50 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '6500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(244, '', 12, 'SENSODYNE ORIGINAL FLAVOUR 100 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '31500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(245, '', 12, 'SENSODYNE COOL GEL 100 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '25000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(246, '', 12, 'SENSODYNE GENTLE WHITENING 100 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '34000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(247, '', 12, 'SENSODYNE MULTI ACTION 100 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '32500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(248, '', 12, 'SENSODYNE FRESH MINT 100 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '25500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(249, '', 12, 'CLOSE UP 110 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '13000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(250, '', 12, 'CLOSE UP 160 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '17000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(251, '', 12, 'PEPSODENT ACTION HERBAL 190 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '19000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(252, '', 12, 'PEPSODENT ACTION HERBAL 120 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '12500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(253, '', 12, 'PEPSODENT ACTION COMPLETE 190 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '17500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(254, '', 12, 'PEPSODENT WHITE 190 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '12500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(255, '', 12, 'PEPSODENT WHITE 120 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '10500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(256, '', 12, 'ORAL-B ISI 3 3 PCS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '26500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(257, '', 12, 'SIKAT GIGI ORAL-B 1 PCS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '11000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(258, '', 12, 'SIKAT GIGI FORMULA 1 PCS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '4500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(259, '', 12, 'SIKAT GIGI PEPSODENT 1 PCS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '12000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(260, '', 12, 'LISTERINE MULTI PROTECT ZERO 250 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '27000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(261, '', 12, 'LISTERINE TARTAR CONTROL 250 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '25800.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(262, '', 12, 'LISTERINE ORIGINAL 250 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '22400.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(263, '', 12, 'LISTERINE COOL MINT 250 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '22500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(264, '', 12, 'LISTERINE ZERO 250 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '22500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(265, '', 12, 'LISTERINE COOL MINT 100 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '9000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(266, '', 12, 'LISTERINE FRESHBURST 100 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '9000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(267, '', 13, 'BIMOLI 1 LITER', 'PCS', '-', '', '0.00', '0.00', '0', '0', '18000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(268, '', 13, 'BIMOLI 2 LITER', 'PCS', '-', '', '0.00', '0.00', '0', '0', '33500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(269, '', 13, 'KOPI SULTAN 200 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '25000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(270, '', 13, 'KOPI ASLI 200 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '14000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(271, '', 13, 'GULA PASIR 1 KG', 'PCS', '-', '', '0.00', '0.00', '0', '0', '14700.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(272, '', 13, 'SUSU KENTAL MANIS FRISIAN FLEG 200 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '10000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(273, '', 13, 'SUSU KENTAL MANIS COKLAT FRISIAN FLEG 200 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '10000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(274, '', 13, 'FRISIAN FLEG FULL CREAM GOLD 200 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '10000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(275, '', 13, 'SARI WANGI TEH CELUP 1 KOTAK', 'PCS', '-', '', '0.00', '0.00', '0', '0', '6500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(276, '', 13, 'MANNAKU BUMBU PECEL 250 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '23000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(277, '', 13, 'INDOFOOD SAMBAL PEDAS 135 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '6000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(278, '', 13, 'INDOFOOD SAUS TOMAT 135 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '6000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(279, '', 13, 'SASA SAUS TOMAT 135 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '5000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(280, '', 13, 'BANGO KECAP MANIS 135 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '10500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(281, '', 13, 'KECAP MANIS INDOFOOD 135 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '7000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(282, '', 13, 'ABC KECAP PEDAS 135 ML', 'PCS', '-', '', '6000.00', '6000.00', '4', '0', '8000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(283, '', 13, 'SEDAP KECAP MANIS 135 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '8500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(284, '', 13, 'SAORI SAUS TIRAM 133 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '11500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(285, '', 13, 'INDOFOOD SAUS PEDAS MANIS 135 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '8500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(286, '', 13, 'KUE NAGOL 1 BNGKS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '12000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(287, '', 13, 'INDOMI GORENG 85 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '3000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(288, '', 13, 'INDOMI RASA KARI AYAM 72 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '3000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(289, '', 13, 'MIE SEDAP RASA SOTO 75 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '3000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(290, '', 13, 'MIE SEDAP GORENG 90 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '3000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(291, '', 13, 'SARIMI RASA AYAM 75 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '2500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(292, '', 13, 'BERAS C4 5 KG', 'PCS', '-', '', '0.00', '0.00', '0', '0', '60000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(293, '', 13, 'BERAS HITAM 1 KG', 'PCS', '-', '', '20000.00', '20000.00', '8', '0', '25000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(294, '', 13, 'BERAS MERAH 1 KG', 'PCS', '-', '', '0.00', '0.00', '0', '0', '29000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(295, '', 13, 'ANLENE GOLDEN PLUS 650 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '96500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(296, '', 13, 'HILO ACTIVE VANILA 200 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '40000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(297, '', 13, 'ZEE COKLAT 350 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '47500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(298, '', 13, 'DANCOW FULL CREAM 800 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '86500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(299, '', 13, 'MILO 300 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '34000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(300, '', 13, 'GOOD DAY MOCACINNO RTG', 'PCS', '-', '', '0.00', '0.00', '0', '0', '14000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(301, '', 13, 'ENERGENT VANILLA RTG', 'PCS', '-', '', '0.00', '0.00', '0', '0', '16000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(302, '', 13, 'ENERGENT KURMA RTG', 'PCS', '-', '', '0.00', '0.00', '0', '0', '18000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(303, '', 13, 'ENERGENT COKLAT RTG', 'PCS', '-', '', '0.00', '0.00', '0', '0', '16000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(304, '', 13, 'ENERGENT KACANG HIJAU RTG', 'PCS', '-', '', '0.00', '0.00', '0', '0', '17000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(305, '', 13, 'ENERGENT JAGUNG RTG', 'PCS', '-', '', '0.00', '0.00', '0', '0', '16000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(306, '', 13, 'ENERGEN JAHE RTG', 'PCS', '-', '', '0.00', '0.00', '0', '0', '16000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(307, '', 13, 'NESCAFE ORIGINAL RTG', 'PCS', '-', '', '0.00', '0.00', '0', '0', '14000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(308, '', 13, 'KOPI SETIA BALI 200 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '14800.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(309, '', 13, 'KERIPIK AYAM PCS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '12000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(310, '', 13, 'SANIA 1 LTR', 'PCS', '-', '', '0.00', '0.00', '0', '0', '16000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(311, '', 13, 'SANIA 2 LTR', 'PCS', '-', '', '0.00', '0.00', '0', '0', '28500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(312, '', 13, 'INDOCAFE COFFEMIX RTG', 'PCS', '-', '', '0.00', '0.00', '0', '0', '14000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(313, '', 13, 'BERAS C4 25 KG', 'PCS', '-', '', '0.00', '0.00', '0', '0', '280000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-09 07:56:00'),
(314, '', 13, 'TOTOLE G. MUSHROOM 80 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '14000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(315, '', 13, 'TOTOLE KALDU AYAM 100 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '14000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(316, '', 13, 'SNACK KRISPI PUFF PCS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '16000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(317, '', 13, 'MADU BOTOL', 'PCS', '-', '', '0.00', '0.00', '0', '0', '210000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(318, '', 13, 'SKYGOAT BOX', 'PCS', '-', '', '0.00', '0.00', '0', '0', '37000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(319, '', 13, 'BROWNIES PCS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '8000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00');
INSERT INTO `produk` (`id_produk`, `barcode`, `id_produk_kategori`, `nama`, `satuan`, `keterangan`, `gambar`, `hpp`, `hpp_awal`, `qty`, `qty_awal`, `harga_jual`, `stok_min`, `servis`, `dibuat_pada`, `diubah_pada`) VALUES
(320, '', 13, 'ENTRASOL GOLD VANILLA 350 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '70500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(321, '', 13, 'MILO 1 KG', 'PCS', '-', '', '0.00', '0.00', '0', '0', '87500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(322, '', 13, 'HILO ACTIVE COKLAT 250 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '40000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(323, '', 14, 'GILLETTE KUNING PCS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '7500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(324, '', 14, 'GILLETTE BIRU PCS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '10000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(325, '', 14, 'GILLETTE FOR WOMEN 2 PCS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '20000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(326, '', 14, 'COTTON BUDS PIGEON 100 PCS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '9000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(327, '', 14, 'COTTON BUDS BEAUTY 100 PCS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '10000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(328, '', 14, 'COTTON BUDS BEAUTY KECIL 100 PCS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '5000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(329, '', 14, 'KIT MOTOR MULTIGUNA 100 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '33000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(330, '', 14, 'KIT MOTOR MULTIGUNA REFILL 100 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '25000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(331, '', 14, 'KIT WASH GLOW CAR SHAMPOO 800 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '32000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(332, '', 14, 'KIT WASH GLOW CAR SHAMPOO 400 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '19000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(333, '', 14, 'HIT GREEN FOREST 675 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '40500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(334, '', 14, 'HIT LILY BLOSSOM 675 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '40500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(335, '', 14, 'HIT LILY BLOSSOM 450 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '27500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(336, '', 14, 'HIT EXPERT CITRUS 675 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '40500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(337, '', 14, 'HIT EXPERT SWEET FLOWER 675 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '40500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(338, '', 14, 'HIT AEROSOL LILY BLOSSOM 200 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '15000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(339, '', 14, 'BAYGON FLOWER GARDEN 450 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '28000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(340, '', 14, 'BAYGON CITRUS FRESH 750 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '44500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(341, '', 14, 'BAYGON WATERLILY & ROSE 600 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '39000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(342, '', 14, 'LEM TIKUS PCS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '17000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(343, '', 14, 'KIWI POLISH 45 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '14500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(344, '', 14, 'KIWI SHINE & PROTECT BLACK 30 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '27000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(345, '', 14, 'BIGEN HAIR COLOUR 65 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '16500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(346, '', 14, 'HANSAPLAST PCS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '1000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(347, '', 14, 'MANTEL PCS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '63000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(348, '', 14, 'MASKER BIASA KOTAK', 'PCS', '-', '', '0.00', '0.00', '0', '0', '20000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(349, '', 14, 'MASKER KF 94 PLASTIK', 'PCS', '-', '', '0.00', '0.00', '0', '0', '21000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(350, '', 14, 'MASKER DUCK BILL KOTAK', 'PCS', '-', '', '0.00', '0.00', '0', '0', '35000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(351, '', 14, 'DUPA MAHADEWA FULL CELUP BESAR PACK', 'PCS', '-', '', '0.00', '0.00', '0', '0', '20000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(352, '', 14, 'DUPA PEPEL PANJANG BKS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '6000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(353, '', 14, 'DUPA HOKI BKS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '5000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(354, '', 14, 'DUPA JUMBO BKS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '6000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(355, '', 15, 'SUNLIGHT REFILL 755 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '19500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(356, '', 15, 'SUNLIGHT REFILL 400 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '12000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(357, '', 15, 'SUNLIGHT KRIM 110 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '2500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(358, '', 15, 'WINGS SABUN KRIM 174 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '3000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(359, '', 15, 'POLYTEX SPONS / UNIK SPONS HIJAU PCS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '4000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(360, '', 15, 'KAWAT POLYTEX PCS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '3000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(361, '', 16, 'REXONA WOMEN INVISIBLE DRY BLACK+WHITE 45 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '19000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(362, '', 16, 'REXONA MEN INVISIBLE DRY BLACK+WHITE 45 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '19500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(363, '', 16, 'REXONA MEN ACTIVE WHITE 45 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '19000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(364, '', 16, 'REXONA MEN INVISIBLE + ANTIBAKTERIAL 45 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '19000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(365, '', 16, 'REXONA MEN INVISIBLE CLEAR 45 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '19000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(366, '', 16, 'REXONA MEN ADVENTURE 45 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '19000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(367, '', 16, 'REXONA MEN INVISIBLE 45 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '19000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(368, '', 16, 'REXONA MEN QUANTUM 45 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '19000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(369, '', 16, 'NIVEA BLACK & WHITE INVISIBLE CLEAR 50 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '20500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(370, '', 16, 'NIVEA WOMEN ANTIBACTERIAL 50 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '20500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(371, '', 16, 'NIVEA BLACK & WHITE INVISIBLE FRESH 50 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '20500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(372, '', 16, 'DOVE DEODORAN CUCUMBAR & GREEN TEA SCENT 40 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '19500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(373, '', 16, 'DOVE RO GO FRESH CUCUMBER 40 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '19000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(374, '', 17, 'YURI HAND SOAP APPLE 410 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '27500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(375, '', 17, 'HAND SOAP MELON 500 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '17000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(376, '', 17, 'HAND SOAP STAWBERRY 500 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '17000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(377, '', 17, 'HAND SOAP MELON 1000 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '25000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(378, '', 17, 'HAND SOAP STAWBERRY 1000 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '25000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(379, '', 18, 'TESSA FACIAL TISSUE 260 SHEETS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '18000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(380, '', 18, 'TISU TESSA LOONEY TUNES 50 SHEETS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '6000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(381, '', 18, 'TISU MAKAN TOPLY 50 SHEETS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '5000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(382, '', 18, 'TISU JOLLY 250 SHEET', 'PCS', '-', '', '0.00', '0.00', '0', '0', '9000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(383, '', 18, 'TESSA BATHROOM TISSUE ROLL', 'PCS', '-', '', '0.00', '0.00', '0', '0', '6600.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(384, '', 18, 'PASEO BATHROOM ROLL', 'PCS', '-', '', '0.00', '0.00', '0', '0', '11000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(385, '', 18, 'PASEO FACIAL TISSUE 120 SHEETS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '11000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(386, '', 18, 'NICE TISSSUE 250 SHEET', 'PCS', '-', '', '0.00', '0.00', '0', '0', '11000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(387, '', 18, 'NICE TISSSUE 180 SHEET', 'PCS', '-', '', '0.00', '0.00', '0', '0', '7000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(388, '', 18, 'TESSA TISSUE 250 SHEET', 'PCS', '-', '', '0.00', '0.00', '0', '0', '11000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(389, '', 18, 'SELECTION FACIAL COTTON PCS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '10500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(390, '', 18, 'SELECTION KECIL PCS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '7500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(391, '', 18, 'MITU BABY BLOOMING CHERRY 50 SHEETS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '15500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(392, '', 18, 'MITU BABY BLOOMING CHERRY 24 SHEETS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '7000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(393, '', 18, 'MITU BABY BLOSSOM BERRY 50 SHEETS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '15500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(394, '', 18, 'MITU BABY BLOSSOM BERRY 24 SHEETS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '7000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(395, '', 18, 'MITU BABY BLOSSOM BERRY 60 SHEETS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '15500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(396, '', 19, 'AVAIL FEMINIM COMFORT BLUE 10 SHEETS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '35000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(397, '', 19, 'AVAIL FEMINIM COMFORT GREEN 20 SHEETS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '32000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(398, '', 19, 'KOTEX LINERS DAUN SIRIH 40 SHEETS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '14600.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(399, '', 19, 'KOTEX BIRU ', 'PCS', '-', '', '0.00', '0.00', '0', '0', '7500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(400, '', 19, 'CHARM BODY FIT 10 PADS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '5500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(401, '', 19, 'CHARM SAFE NIGHT 12 PADS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '21000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(402, '', 19, 'CHARM SAFE NIGHT 6 PADS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '9000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(403, '', 19, 'CHARM BODY FIT EXTRA MAXIWING 10 PADS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '9000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(404, '', 19, 'LAURIER SLIMGUARD 20 PADS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '15500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(405, '', 20, 'AIKEN HAND SANITISER 200 ML', 'PCS', '-', '', '33000.00', '33000.00', '9', '0', '37000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(406, '', 20, 'AIKEN HAND SANITISER 50 ML', 'PCS', '-', '', '10250.00', '10500.00', '19', '0', '12000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(407, '', 20, 'MOTTO HAND SANITISER 60 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '36750.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(408, '', 20, 'HAND SANITIZER CAIR 100 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '18500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(409, '', 20, 'HAND SANITIZER GEL 100 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '19500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(410, '', 20, 'HAND SANITIZER SECRET BTL', 'PCS', '-', '', '0.00', '0.00', '0', '0', '12600.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(411, '', 21, 'SEKAR JAGAT LULUR TRADISIONAL AVOCADO 100 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '10000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(412, '', 21, 'SEKAR JAGAT LULUR TRADISIONAL GREEN TEA 100 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '10000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(413, '', 21, 'SEKAR JAGAT LULUR TRADISIONAL CENDANA 100 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '10000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(414, '', 21, 'SEKAR JAGAT LULUR TRADISIONAL BENGKUANG 100 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '10000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(415, '', 21, 'SEKAR JAGAT LULUR TRADISIONAL MILK 100 GRAM', 'PCS', '-', '', '0.00', '0.00', '0', '0', '10000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(416, '', 22, 'BEDAK WARDAH REFILL ', 'PCS', '-', '', '0.00', '0.00', '0', '0', '37000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(417, '', 22, 'WHIP FACIAL FOAM ', 'PCS', '-', '', '0.00', '0.00', '0', '0', '27000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(418, '', 22, 'LIPSTICK ', 'PCS', '-', '', '0.00', '0.00', '0', '0', '57000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(419, '', 22, 'SCARLET ', 'PCS', '-', '', '0.00', '0.00', '0', '0', '70000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(420, '', 22, 'EYESHEDOW ', 'PCS', '-', '', '0.00', '0.00', '0', '0', '47000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(421, '', 22, 'SHAMPOO WARDAH ', 'PCS', '-', '', '0.00', '0.00', '0', '0', '26500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(422, '', 23, 'MINI PAO (AYAM, COKLAT) 30 BIJI', 'PCS', '-', '', '0.00', '0.00', '0', '0', '16200.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(423, '', 23, 'SIOMAY AYAM & AYAM SAYUR 260 GR', 'PCS', '-', '', '0.00', '0.00', '0', '0', '21100.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(424, '', 23, 'SOSIS SAPI/AYAM BREAKFAST BERNARDI 1 KG', 'PCS', '-', '', '0.00', '0.00', '0', '0', '74600.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(425, '', 23, 'SOSIS AYAM BERNARDI 500 GR', 'PCS', '-', '', '0.00', '0.00', '0', '0', '70200.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(426, '', 23, 'BASO AYAM BERNARDI 360 GR ISI 50 BIJI', 'PCS', '-', '', '0.00', '0.00', '0', '0', '48600.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(427, '', 23, 'BASO SAPI BERNARDI 340 GR ISI 10 BIJI BESAR', 'PCS', '-', '', '0.00', '0.00', '0', '0', '57800.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(428, '', 23, 'NUGGET BERNARDI 250 GR', 'PCS', '-', '', '0.00', '0.00', '0', '0', '17300.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(429, '', 23, 'NUGGET BERNARDI 500 GR', 'PCS', '-', '', '0.00', '0.00', '0', '0', '34600.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(430, '', 23, 'BURGER PAKET BERNARDI 6 BIJI', 'PCS', '-', '', '0.00', '0.00', '0', '0', '27000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(431, '', 23, 'SPICY CHIKEN WING BERNARDI 380 GR', 'PCS', '-', '', '0.00', '0.00', '0', '0', '37800.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(432, '', 23, 'SCALLOP BERNARDI 500 GR', 'PCS', '-', '', '0.00', '0.00', '0', '0', '25000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(433, '', 23, 'ABBY SOSIS BAKAR JUMBO (AYAM) BERNARDI 500 GR', 'PCS', '-', '', '21851.57', '20000.00', '29', '0', '28000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(434, '', 23, 'SMOKED BEEF BERNARDI -', 'PCS', '-', '', '0.00', '0.00', '0', '0', '43500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(435, '', 23, 'SOSIS BAKAR RASA KEJU /JOFRAN 500 GR', 'PCS', '-', '', '0.00', '0.00', '0', '0', '32500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(436, '', 23, 'BASO JOFRAN SAPI 500 GR', 'PCS', '-', '', '0.00', '0.00', '0', '0', '37800.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(437, '', 23, 'NUGGET CHAMP 250 GR', 'PCS', '-', '', '0.00', '0.00', '0', '0', '20000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(438, '', 23, 'NUGGET ORI DINO CIKIWI 250 GR', 'PCS', '-', '', '0.00', '0.00', '0', '0', '18000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(439, '', 23, 'NUGGET CHAMP 500 GR', 'PCS', '-', '', '0.00', '0.00', '0', '0', '37000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(440, '', 23, 'BASO AYAM CHAMP 200 GR ISI 20 BIJI', 'PCS', '-', '', '0.00', '0.00', '0', '0', '14000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(441, '', 23, 'SOSIS CHAMP 150 GR ISI 6 BIJI', 'PCS', '-', '', '0.00', '0.00', '0', '0', '8700.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(442, '', 23, 'SOSIS CHAMP 375 GR ISI 15 BIJI', 'PCS', '-', '', '0.00', '0.00', '0', '0', '17300.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(443, '', 23, 'SOSIS CHAMP 500 GR', 'PCS', '-', '', '0.00', '0.00', '0', '0', '27000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(444, '', 23, 'NUGGET AKUMO CHAMP 250 GR', 'PCS', '-', '', '0.00', '0.00', '0', '0', '14500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(445, '', 23, 'BASO IKAN CIDEA 500 GR', 'PCS', '-', '', '0.00', '0.00', '0', '0', '32500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(446, '', 23, 'BASO IKAN CIDEA 200 GR', 'PCS', '-', '', '0.00', '0.00', '0', '0', '11000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(447, '', 23, 'FISH DUMPLING CHIKEN CIDEA 200 GR', 'PCS', '-', '', '0.00', '0.00', '0', '0', '16500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(448, '', 23, 'CRAB FLAVEOURED NUGGET CIDEA 200 GR', 'PCS', '-', '', '0.00', '0.00', '0', '0', '16500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(449, '', 23, 'FISH ROLL CIDEA -', 'PCS', '-', '', '0.00', '0.00', '0', '0', '16500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(450, '', 23, 'STEAMBOAT CIDEA 500 GR', 'PCS', '-', '', '0.00', '0.00', '0', '0', '50000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(451, '', 23, 'BASO SAPI AROMA 1 KG ISI 100 PCS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '62700.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(452, '', 23, 'BACON AROMA 1 KG', 'PCS', '-', '', '0.00', '0.00', '0', '0', '94000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(453, '', 23, 'SOSIS CHIKEN BREAKFAST AROMA 1 KG', 'PCS', '-', '', '0.00', '0.00', '0', '0', '65000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(454, '', 23, 'KENTANG GORENG 1 KG', 'PCS', '-', '', '0.00', '0.00', '0', '0', '31000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(455, '', 23, 'KRISPI PUFF BNGKS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '16000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(456, '', 23, 'BAMBU BUMBU BNGKS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '7500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(457, '', 23, 'BAMBU TOMYAM BNGKS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '9000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(458, '', 23, 'BRONIS LUMER KOTAK', 'PCS', '-', '', '0.00', '0.00', '0', '0', '9000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(459, '', 24, 'ES KRIM MAX SWICH PCS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '6000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(460, '', 24, 'ES KRIM CHOCKS ROCK CONE (VANILA, COKLAT) PCS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '8500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(461, '', 24, 'ES KRIM LOLY POP (LECY STROBERY, GRAPE) PCS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '4000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(462, '', 24, 'ES POTONG PCS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '5000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(463, '', 24, 'ES KIRM CHOCK ROCK BAR (VANILA, COKLAT) PCS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '5000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(464, '', 24, 'ES KRIM CHOCKS ROCK TWIST (VANILA, COKLAT) PCS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '9000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(465, '', 24, 'ES KRIM TAM TAM DUO CHOCO STROBERY PCS', 'PCS', '-', '', '0.00', '0.00', '0', '0', '5000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(466, '', 25, 'ORANGE WATER (YOU.C1000) 500 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '8500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(467, '', 25, 'TEH FRESTEA 500 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '7000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(468, '', 25, 'FRESH YOGURT K ', 'PCS', '-', '', '0.00', '0.00', '0', '0', '8500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(469, '', 25, 'SUSU ULTRA 1 LTR', 'PCS', '-', '', '0.00', '0.00', '0', '0', '19500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(470, '', 25, 'SUSU CIMORY UHT 250 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '7500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(471, '', 25, 'AIR AQUA 600 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '4000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(472, '', 25, 'TEH KOTAK 100 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '4200.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(473, '', 25, 'SUSU BEAR BRAND ', 'PCS', '-', '', '0.00', '0.00', '0', '0', '10000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(474, '', 25, 'KOPI NESCAFE ', 'PCS', '-', '', '0.00', '0.00', '0', '0', '10000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(475, '', 25, 'CIMORY YOGURT 250 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '9500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(476, '', 25, 'LARUTAN CAP KAKI TIGA 320 ML', 'PCS', '-', '', '0.00', '0.00', '0', '0', '7000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(477, '', 25, 'YAKULT 5 BIJI', 'PCS', '-', '', '0.00', '0.00', '0', '0', '11500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(478, '', 25, 'CIMORY SQUEEZE 120 GR', 'PCS', '-', '', '0.00', '0.00', '0', '0', '11000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(479, '', 25, 'ULTRA KECIL ', 'PCS', '-', '', '0.00', '0.00', '0', '0', '7500.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(480, '', 25, 'MIZONE ', 'PCS', '-', '', '0.00', '0.00', '0', '0', '6000.00', '1.00', 0, '2021-11-08 16:32:00', '2021-11-08 16:32:00'),
(481, '-', 14, 'JASA FOTOCOPY', 'PCS', '-', '', '0.00', '0.00', '0', '0', '250.00', '0.00', 1, '2021-11-23 23:17:07', '2021-11-23 23:17:07');

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
(26, 'Hair Styling & Hair Vitamin', '2021-11-09 22:25:00', '2021-11-09 22:25:00');

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

--
-- Dumping data for table `simpanan`
--

INSERT INTO `simpanan` (`id_simpanan`, `id_anggota`, `id_user`, `jenis_simpanan`, `tanggal_transaksi`, `tanggal_awal_kontrak`, `tanggal_akhir_kontrak`, `tanggal_realisasi_penarikan`, `durasi_kontrak_bulan`, `bunga_tahunan`, `jumlah_simpanan`, `dibuat_pada`, `diubah_pada`, `status_simpanan`) VALUES
(1, 4, 1, 'TAHARA (Tabungan Hari Raya)', '2021-12-30', '2021-12-30', '2021-12-30', NULL, 12, '12.00', '100000.00', '2021-12-30 15:22:24', '2021-12-30 15:22:24', 'AKTIF'),
(2, 4, 1, 'TAHARA (Tabungan Hari Raya)', '2021-12-30', '2021-12-30', '2021-12-30', NULL, 12, '12.00', '100000.00', '2021-12-30 15:22:58', '2021-12-30 15:22:58', 'AKTIF'),
(3, 4, 1, 'SIDIDIK', '2021-12-15', '2021-12-15', '2021-12-15', NULL, 36, '12.00', '500000.00', '2021-12-30 15:35:40', '2021-12-30 15:35:40', 'AKTIF'),
(4, 168, 1, 'SIDIDIK', '2022-01-05', '2022-01-05', '2022-01-05', NULL, 36, '12.00', '500000.00', '2022-01-05 15:07:22', '2022-01-05 15:07:22', 'AKTIF'),
(5, 117, 1, 'TAHARA (Tabungan Hari Raya)', '2022-01-05', '2022-01-05', '2022-01-05', NULL, 12, '6.00', '500000.00', '2022-01-05 15:53:22', '2022-01-05 15:53:22', 'AKTIF');

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

--
-- Dumping data for table `simpanan_detail`
--

INSERT INTO `simpanan_detail` (`id_simpanan_detail`, `id_simpanan`, `urut`, `tanggal_jatuh_tempo`, `tanggal_realisasi_bayar`, `anggaran_pembayaran`, `realisasi_pembayaran`, `bunga_persentase`, `bunga_nominal`, `anggaran_saldo_akhir`, `realisasi_saldo_akhir`, `dibuat_pada`, `diubah_pada`, `diterima_oleh`) VALUES
(1, 5, 1, '2022-01-05', NULL, 500000, NULL, '0.50', '0.00', '500000.00', NULL, '2022-01-05 15:53:23', '2022-01-05 15:53:23', NULL),
(2, 5, 2, '2022-02-05', NULL, 500000, NULL, '0.50', '2500.00', '1002500.00', NULL, '2022-01-05 15:53:23', '2022-01-05 15:53:23', NULL),
(3, 5, 3, '2022-03-05', NULL, 500000, NULL, '0.50', '5012.50', '1507512.50', NULL, '2022-01-05 15:53:23', '2022-01-05 15:53:23', NULL),
(4, 5, 4, '2022-04-05', NULL, 500000, NULL, '0.50', '7537.56', '2015050.06', NULL, '2022-01-05 15:53:23', '2022-01-05 15:53:23', NULL),
(5, 5, 5, '2022-05-05', NULL, 500000, NULL, '0.50', '10075.25', '2525125.31', NULL, '2022-01-05 15:53:23', '2022-01-05 15:53:23', NULL),
(6, 5, 6, '2022-06-05', NULL, 500000, NULL, '0.50', '12625.63', '3037750.94', NULL, '2022-01-05 15:53:23', '2022-01-05 15:53:23', NULL),
(7, 5, 7, '2022-07-05', NULL, 500000, NULL, '0.50', '15188.75', '3552939.69', NULL, '2022-01-05 15:53:23', '2022-01-05 15:53:23', NULL),
(8, 5, 8, '2022-08-05', NULL, 500000, NULL, '0.50', '17764.70', '4070704.39', NULL, '2022-01-05 15:53:23', '2022-01-05 15:53:23', NULL),
(9, 5, 9, '2022-09-05', NULL, 500000, NULL, '0.50', '20353.52', '4591057.91', NULL, '2022-01-05 15:53:23', '2022-01-05 15:53:23', NULL),
(10, 5, 10, '2022-10-05', NULL, 500000, NULL, '0.50', '22955.29', '5114013.20', NULL, '2022-01-05 15:53:23', '2022-01-05 15:53:23', NULL),
(11, 5, 11, '2022-11-05', NULL, 500000, NULL, '0.50', '25570.07', '5639583.27', NULL, '2022-01-05 15:53:23', '2022-01-05 15:53:23', NULL),
(12, 5, 12, '2022-12-05', NULL, 500000, NULL, '0.50', '28197.92', '6167781.19', NULL, '2022-01-05 15:53:23', '2022-01-05 15:53:23', NULL);

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
(1, 'I KETUT ELI SUMERTA', 'admin', 'admin', '2021-11-11 07:49:25', '2021-11-11 07:49:25', '2022-01-06 10:09:59', 'Administrator', 'OFFLINE'),
(2, 'NI KETUT CATUR BUDIASIH', 'catur', 'catur', '2021-11-11 08:04:45', '2021-11-11 08:13:04', '2021-12-25 10:41:08', 'Simpan Pinjam', 'ONLINE'),
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
  MODIFY `id_anggota` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=275;

--
-- AUTO_INCREMENT for table `beli`
--
ALTER TABLE `beli`
  MODIFY `id_beli` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `beli_detail`
--
ALTER TABLE `beli_detail`
  MODIFY `id_beli_detail` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `jual`
--
ALTER TABLE `jual`
  MODIFY `id_jual` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `jual_cicil`
--
ALTER TABLE `jual_cicil`
  MODIFY `id_jual_cicil` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `jual_detail`
--
ALTER TABLE `jual_detail`
  MODIFY `id_jual_detail` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id_keranjang` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `keranjang_beli`
--
ALTER TABLE `keranjang_beli`
  MODIFY `id_keranjang_beli` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `pemasok`
--
ALTER TABLE `pemasok`
  MODIFY `id_pemasok` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `periode_pembukuan`
--
ALTER TABLE `periode_pembukuan`
  MODIFY `id_periode` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=482;

--
-- AUTO_INCREMENT for table `produk_kategori`
--
ALTER TABLE `produk_kategori`
  MODIFY `id_produk_kategori` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `simpanan`
--
ALTER TABLE `simpanan`
  MODIFY `id_simpanan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `simpanan_detail`
--
ALTER TABLE `simpanan_detail`
  MODIFY `id_simpanan_detail` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
