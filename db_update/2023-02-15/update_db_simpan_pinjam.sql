-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Feb 2023 pada 07.38
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.1.32

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
-- Struktur dari tabel `pinjaman`
--

CREATE TABLE `pinjaman` (
  `id_pinjaman` int(10) NOT NULL,
  `id_anggota` int(10) NOT NULL,
  `id_user` int(10) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `tanggal_awal_kontrak` date NOT NULL,
  `tanggal_akhir_kontrak` date DEFAULT NULL,
  `tanggal_realisasi_pelunasan` date DEFAULT NULL,
  `durasi_kontrak_bulan` int(10) DEFAULT NULL,
  `bunga_tahunan` decimal(10,2) NOT NULL DEFAULT 0.00,
  `jumlah_pinjaman` decimal(17,2) NOT NULL DEFAULT 0.00,
  `saldo_terakhir` decimal(17,2) NOT NULL DEFAULT 0.00,
  `dibuat_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `diubah_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `status_pinjaman` enum('AKTIF','SUSPENDED','LUNAS','') NOT NULL DEFAULT 'AKTIF'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pinjaman_mutasi`
--

CREATE TABLE `pinjaman_mutasi` (
  `id_pinjaman_mutasi` int(10) NOT NULL,
  `id_pinjaman` int(10) NOT NULL,
  `urut` int(5) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `jenis_transaksi` varchar(100) NOT NULL,
  `cicilan_pokok` decimal(17,2) NOT NULL,
  `bunga_persentase` decimal(17,2) NOT NULL,
  `bunga_nominal` decimal(17,2) NOT NULL,
  `saldo` decimal(17,2) NOT NULL DEFAULT 0.00,
  `keterangan` text NOT NULL,
  `id_user` int(11) NOT NULL,
  `dibuat_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `diubah_pada` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `simpanan`
--

CREATE TABLE `simpanan` (
  `id_simpanan` int(10) NOT NULL,
  `id_anggota` int(10) NOT NULL,
  `id_user` int(10) NOT NULL,
  `id_simpanan_jenis` int(10) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `tanggal_awal_kontrak` date NOT NULL,
  `tanggal_akhir_kontrak` date DEFAULT NULL,
  `tanggal_realisasi_penarikan` date DEFAULT NULL,
  `durasi_kontrak_bulan` int(10) DEFAULT NULL,
  `bunga_tahunan` decimal(10,2) NOT NULL DEFAULT 0.00,
  `jumlah_simpanan` decimal(17,2) NOT NULL DEFAULT 0.00,
  `saldo_terakhir` decimal(17,2) NOT NULL DEFAULT 0.00,
  `dibuat_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `diubah_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `status_simpanan` enum('AKTIF','SUSPENDED','SELESAI','') NOT NULL DEFAULT 'AKTIF'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `simpanan_detail`
--

CREATE TABLE `simpanan_detail` (
  `id_simpanan_detail` int(10) NOT NULL,
  `id_simpanan` int(10) NOT NULL,
  `urut` int(10) NOT NULL,
  `tanggal_jatuh_tempo` date NOT NULL,
  `tanggal_realisasi_bayar` date DEFAULT NULL,
  `anggaran_pembayaran` int(17) NOT NULL,
  `realisasi_pembayaran` int(17) DEFAULT 0,
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
-- Struktur dari tabel `simpanan_jenis`
--

CREATE TABLE `simpanan_jenis` (
  `id_simpanan_jenis` int(10) NOT NULL,
  `kode` varchar(20) NOT NULL,
  `jenis_simpanan` varchar(100) NOT NULL,
  `tempo_pembayaran` varchar(50) NOT NULL,
  `keterangan` varchar(200) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `simpanan_mutasi`
--

CREATE TABLE `simpanan_mutasi` (
  `id_simpanan_mutasi` int(10) NOT NULL,
  `id_simpanan` int(10) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `jenis_transaksi` enum('Setoran','Tarikan','Bunga','Biaya') NOT NULL,
  `jumlah` decimal(17,2) NOT NULL,
  `saldo` decimal(17,2) NOT NULL DEFAULT 0.00,
  `keterangan` text NOT NULL,
  `id_user` int(11) NOT NULL,
  `dibuat_pada` datetime NOT NULL DEFAULT current_timestamp(),
  `diubah_pada` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pinjaman`
--
ALTER TABLE `pinjaman`
  ADD PRIMARY KEY (`id_pinjaman`);

--
-- Indeks untuk tabel `pinjaman_mutasi`
--
ALTER TABLE `pinjaman_mutasi`
  ADD PRIMARY KEY (`id_pinjaman_mutasi`);

--
-- Indeks untuk tabel `simpanan`
--
ALTER TABLE `simpanan`
  ADD PRIMARY KEY (`id_simpanan`);

--
-- Indeks untuk tabel `simpanan_detail`
--
ALTER TABLE `simpanan_detail`
  ADD PRIMARY KEY (`id_simpanan_detail`);

--
-- Indeks untuk tabel `simpanan_jenis`
--
ALTER TABLE `simpanan_jenis`
  ADD PRIMARY KEY (`id_simpanan_jenis`);

--
-- Indeks untuk tabel `simpanan_mutasi`
--
ALTER TABLE `simpanan_mutasi`
  ADD PRIMARY KEY (`id_simpanan_mutasi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pinjaman`
--
ALTER TABLE `pinjaman`
  MODIFY `id_pinjaman` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pinjaman_mutasi`
--
ALTER TABLE `pinjaman_mutasi`
  MODIFY `id_pinjaman_mutasi` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `simpanan`
--
ALTER TABLE `simpanan`
  MODIFY `id_simpanan` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `simpanan_detail`
--
ALTER TABLE `simpanan_detail`
  MODIFY `id_simpanan_detail` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `simpanan_jenis`
--
ALTER TABLE `simpanan_jenis`
  MODIFY `id_simpanan_jenis` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `simpanan_mutasi`
--
ALTER TABLE `simpanan_mutasi`
  MODIFY `id_simpanan_mutasi` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
