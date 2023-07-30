-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Jul 2023 pada 00.07
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `again4`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` varchar(255) NOT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `nama_lengkap` varchar(255) DEFAULT NULL,
  `nip` varchar(255) DEFAULT NULL,
  `no_hp` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `created_at`, `created_by`, `email`, `image`, `nama_lengkap`, `nip`, `no_hp`, `role`, `updated_at`, `updated_by`) VALUES
('1234342', '2023-06-26', 'Jane Smith', 'admin@example.com', 'link_gambar', 'John Doe', '1234567890', '081234567890', 'admin', '2023-06-26', 'John Doe'),
('tes', '2023-06-26', 'Jane Smith', 'admin@example.com', 'link_gambar', 'John Doe', '1234567890', '081234567890', 'admin', '2023-06-26', 'John Doe');

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota_ormawa`
--

CREATE TABLE `anggota_ormawa` (
  `id_ormawa` int(11) NOT NULL,
  `list_anggota` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `anggota_ormawa`
--

INSERT INTO `anggota_ormawa` (`id_ormawa`, `list_anggota`) VALUES
(123, 'wfqfeq'),
(123, '1314321'),
(123, '12343r1r2'),
(27, 'wfqfeq'),
(27, '1314321'),
(27, '12343r1r2'),
(767443, '2222'),
(767443, '3333'),
(767443, '4444'),
(7674243, '2222'),
(7674243, '3333'),
(7674243, '4444'),
(1234567890, '2222'),
(1234567890, '3333'),
(1234567890, '4444'),
(234451, '12345'),
(234451, '67890'),
(234451, '23435'),
(234451, '78980'),
(234451, '34525'),
(234451, 'sadfasd'),
(234451, 'asdfasdf'),
(234451, 'twgw'),
(234451, '5433'),
(234451, 'asfdfas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id_berita` bigint(20) NOT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `penulis` varchar(255) DEFAULT NULL,
  `teks` varchar(255) DEFAULT NULL,
  `tgl_terbit` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`id_berita`, `created_at`, `created_by`, `gambar`, `judul`, `penulis`, `teks`, `tgl_terbit`, `updated_at`, `updated_by`) VALUES
(123, '2023-06-26', 'Jane Smith', 'https://example.com/gambar.jpg', 'Judul Berita', 'John Doe', 'Isi berita...', '2023-06-26', '2023-06-26', 'John Doe');

-- --------------------------------------------------------

--
-- Struktur dari tabel `biaya_kegiatan`
--

CREATE TABLE `biaya_kegiatan` (
  `id_biaya_kegiatan` bigint(20) NOT NULL,
  `harga_satuan` int(11) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `kuantiti` int(11) DEFAULT NULL,
  `nama_biaya_kegiatan` varchar(255) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `usulan_id` bigint(20) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `biaya_kegiatan`
--

INSERT INTO `biaya_kegiatan` (`id_biaya_kegiatan`, `harga_satuan`, `keterangan`, `kuantiti`, `nama_biaya_kegiatan`, `total`, `usulan_id`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(2, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(3, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(4, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(5, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(6, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(7, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(8, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(9, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(10, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(11, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(12, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(13, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(14, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(15, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(16, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(17, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(18, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(19, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(20, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(21, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(22, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(23, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(24, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(25, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(26, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(27, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(28, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(29, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(30, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(31, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(32, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(33, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(34, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(35, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(36, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(37, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(38, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(39, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(40, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(41, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(42, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(43, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(44, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(45, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(46, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(47, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(48, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(49, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(50, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(51, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(52, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(53, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(54, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(55, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(56, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(57, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(58, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(59, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(60, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(63, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(64, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(71, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(72, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(73, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(74, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(77, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(78, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(79, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(80, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(81, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(82, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(85, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(86, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(89, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(90, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(91, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(92, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(133, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(134, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(139, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(140, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(141, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(142, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(143, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(144, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(145, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(146, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(149, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(150, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(161, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(162, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(163, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, 27672, NULL, NULL, NULL, NULL),
(164, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, 27672, NULL, NULL, NULL, NULL),
(167, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(168, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(169, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, 272, NULL, NULL, NULL, NULL),
(170, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, 272, NULL, NULL, NULL, NULL),
(171, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(172, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(175, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(176, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(189, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(190, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(195, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, 27322, NULL, NULL, NULL, NULL),
(196, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, 27322, NULL, NULL, NULL, NULL),
(197, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(198, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(199, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(200, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(201, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(202, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(203, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(204, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(205, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(206, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(211, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(212, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(213, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(214, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(215, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(216, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(217, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, 2323221, NULL, NULL, NULL, NULL),
(218, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, 2323221, NULL, NULL, NULL, NULL),
(219, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(220, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, NULL, NULL, NULL, NULL, NULL),
(221, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, 232321, NULL, NULL, NULL, NULL),
(222, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, 232321, NULL, NULL, NULL, NULL),
(223, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, 221, NULL, NULL, NULL, NULL),
(224, 5000, 'Biaya konsumsi untuk peserta selama kegiatan', 100, 'Konsumsi', 500000, 221, NULL, NULL, NULL, NULL),
(225, 2323, 'afseefss', 23, 'faeefs', 53429, NULL, '27-07-2023', 'danielsidauruk11@gmail.com', '27-07-2023', 'danielsidauruk11@gmail.com'),
(226, 223, 'fseasfefesa', 90, 'bhjkhgj', 20070, NULL, '27-07-2023', 'danielsidauruk11@gmail.com', '27-07-2023', 'danielsidauruk11@gmail.com'),
(227, 2323, 'afseefss', 23, 'faeefs', 53429, NULL, '27-07-2023', 'danielsidauruk11@gmail.com', '27-07-2023', 'danielsidauruk11@gmail.com'),
(228, 223, 'fseasfefesa', 90, 'bhjkhgj', 20070, NULL, '27-07-2023', 'danielsidauruk11@gmail.com', '27-07-2023', 'danielsidauruk11@gmail.com'),
(229, 2323, 'afseefss', 23, 'faeefs', 53429, 1690391378381763, '27-07-2023', 'danielsidauruk11@gmail.com', '27-07-2023', 'danielsidauruk11@gmail.com'),
(230, 223, 'fseasfefesa', 90, 'bhjkhgj', 20070, 1690391378381763, '27-07-2023', 'danielsidauruk11@gmail.com', '27-07-2023', 'danielsidauruk11@gmail.com'),
(231, 2323, 'afseefss', 23, 'faeefs', 53429, NULL, '27-07-2023', 'danielsidauruk11@gmail.com', '27-07-2023', 'danielsidauruk11@gmail.com'),
(232, 223, 'fseasfefesa', 90, 'bhjkhgj', 20070, NULL, '27-07-2023', 'danielsidauruk11@gmail.com', '27-07-2023', 'danielsidauruk11@gmail.com'),
(233, 2323, 'afseefss', 23, 'faeefs', 53429, 1343, '27-07-2023', 'danielsidauruk11@gmail.com', '27-07-2023', 'danielsidauruk11@gmail.com'),
(234, 223, 'fseasfefesa', 90, 'bhjkhgj', 20070, 1343, '27-07-2023', 'danielsidauruk11@gmail.com', '27-07-2023', 'danielsidauruk11@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `category`
--

CREATE TABLE `category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_kegiatan_mpt`
--

CREATE TABLE `jenis_kegiatan_mpt` (
  `id_jenis_kegiatan_mpt` bigint(20) NOT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `nama_jenis_kegiatan_mpt` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jenis_kegiatan_mpt`
--

INSERT INTO `jenis_kegiatan_mpt` (`id_jenis_kegiatan_mpt`, `created_at`, `created_by`, `nama_jenis_kegiatan_mpt`, `updated_at`, `updated_by`) VALUES
(342421, '2023-06-26', 'Jane Smith', 'Pelayanan Masyarakat', '2023-06-26', 'John Doe');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kegiatan_mpt`
--

CREATE TABLE `kegiatan_mpt` (
  `id_kegiatan_mpt` bigint(20) NOT NULL,
  `jenis_kegiatan_mpt` varchar(255) DEFAULT NULL,
  `nama_kegiatan_mpt` varchar(255) DEFAULT NULL,
  `point_mpt_diperoleh` int(11) DEFAULT NULL,
  `tanggal_mulai_kegiatan_mpt` varchar(255) DEFAULT NULL,
  `tanggal_selesai_kegiatan_mpt` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `id_jenis_kegiatan_mpt` bigint(20) DEFAULT NULL,
  `id_periode_mpt` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kegiatan_per_periode_mpt`
--

CREATE TABLE `kegiatan_per_periode_mpt` (
  `id_kegiatan_per_periode_mpt` bigint(20) NOT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `point_mpt_diperoleh` int(11) DEFAULT NULL,
  `tanggal_mulai_kegiatan_per_periode_mpt` varchar(255) DEFAULT NULL,
  `tanggal_selesai_kegiatan_per_periode_mpt` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `id_nama_kegiatan_mpt` bigint(20) DEFAULT NULL,
  `id_periode_mpt` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kegiatan_per_periode_mpt`
--

INSERT INTO `kegiatan_per_periode_mpt` (`id_kegiatan_per_periode_mpt`, `created_at`, `created_by`, `point_mpt_diperoleh`, `tanggal_mulai_kegiatan_per_periode_mpt`, `tanggal_selesai_kegiatan_per_periode_mpt`, `updated_at`, `updated_by`, `id_nama_kegiatan_mpt`, `id_periode_mpt`) VALUES
(25, '26-1-2023', 'John Doe', 5, '26-1-2023', '26-1-2023', '26-1-2023', 'Jane Smith', NULL, NULL),
(342421, '2023-06-26', 'John Doe', 5, '2023-06-26', '2023-06-27', '2023-06-26', 'Jane Smith', 984, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan`
--

CREATE TABLE `laporan` (
  `id_laporan` bigint(20) NOT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `file_laporan_kegiatan` varchar(255) DEFAULT NULL,
  `foto_dokumentasi_kegiatan` varchar(255) DEFAULT NULL,
  `foto_faktur_pembayaran` varchar(255) DEFAULT NULL,
  `foto_postingan_kegiatan` varchar(255) DEFAULT NULL,
  `foto_tabulasi_hasil` varchar(255) DEFAULT NULL,
  `hasil_kegiatan` varchar(255) DEFAULT NULL,
  `latar_belakang` varchar(255) DEFAULT NULL,
  `pencapaian` varchar(255) DEFAULT NULL,
  `penutup` varchar(255) DEFAULT NULL,
  `status_laporan` varchar(255) DEFAULT NULL,
  `total_realisasi` bigint(20) DEFAULT NULL,
  `total_selisih` bigint(20) DEFAULT NULL,
  `total_usulan` bigint(20) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `id_ormawa` int(11) DEFAULT NULL,
  `id_user` varchar(255) DEFAULT NULL,
  `id_usulan` bigint(20) DEFAULT NULL,
  `id_revisi_laporan` bigint(20) DEFAULT NULL,
  `usulan` bigint(20) DEFAULT NULL,
  `validasi_pembina` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `laporan`
--

INSERT INTO `laporan` (`id_laporan`, `created_at`, `created_by`, `file_laporan_kegiatan`, `foto_dokumentasi_kegiatan`, `foto_faktur_pembayaran`, `foto_postingan_kegiatan`, `foto_tabulasi_hasil`, `hasil_kegiatan`, `latar_belakang`, `pencapaian`, `penutup`, `status_laporan`, `total_realisasi`, `total_selisih`, `total_usulan`, `updated_at`, `updated_by`, `id_ormawa`, `id_user`, `id_usulan`, `id_revisi_laporan`, `usulan`, `validasi_pembina`) VALUES
(3, '2023-06-26', 'John Doe', 'http://example.com/file-laporan.pdf', 'http://example.com/foto1.jpg', 'http://example.com/foto-faktur.jpg', 'http://example.com/foto-postingan.jpg', 'http://example.com/foto-tabulasi.jpg', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'Diterima', 1400000, 100000, 1500000, '2023-06-26', 'Jane Smith', NULL, NULL, NULL, NULL, NULL, NULL),
(89, '26-6-2023', 'Admin001', NULL, 'http://example.com/foto1.jpg', NULL, 'https://firebasestorage.googleapis.com/v0/b/mipoka.appspot.com/o/vlcsnap-2023-02-04-20h08m24s955.png?alt=media&token=87e7d7f0-5d9e-464f-b938-f5b8880c7d78', NULL, NULL, 'Minat seni rupa di kalangan mahasiswa meningkat', NULL, 'Terima kasih atas perhatian dan dukungannya', NULL, NULL, NULL, NULL, '26-6-2023', 'Admin002', 123, '19111', 28, NULL, NULL, 'true'),
(214, '2023-06-26', 'John Doe', 'http://example.com/file-laporan.pdf', 'http://example.com/foto1.jpg', 'http://example.com/foto-faktur.jpg', 'http://example.com/foto-postingan.jpg', 'http://example.com/foto-tabulasi.jpg', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'Diterima', 1400000, 100000, 1500000, '2023-06-26', 'Jane Smith', 123, '19111', 28, NULL, NULL, NULL),
(892, '20-6-2026', 'John Doe', 'http://example.com/file-laporan.pdf', NULL, 'http://example.com/foto-faktur.jpg', 'http://example.com/foto-postingan.jpg', 'http://example.com/foto-tabulasi.jpg', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', NULL, 'Lorem ipsum dolor sit amet', 'Ditolak', 1400000, 100000, 1500000, '20-6-2026', 'Jane Smith', NULL, NULL, NULL, NULL, NULL, 'true'),
(8922, '20-6-2026', 'John Doe', 'http://example.com/file-laporan.pdf', NULL, 'http://example.com/foto-faktur.jpg', 'http://example.com/foto-postingan.jpg', 'http://example.com/foto-tabulasi.jpg', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'berhasil', 'Lorem ipsum dolor sit amet', 'Ditolak', 1400000, 100000, 1500000, '20-6-2026', 'Jane Smith', NULL, NULL, NULL, NULL, NULL, 'true'),
(21762, '2023-06-26', 'John Doe', 'http://example.com/file-laporan.pdf', 'http://example.com/foto1.jpg', 'http://example.com/foto-faktur.jpg', 'http://example.com/foto-postingan.jpg', 'http://example.com/foto-tabulasi.jpg', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'Diterima', 1400000, 100000, 1500000, '2023-06-26', 'Jane Smith', 123, '19111', NULL, 54353, 232321, NULL),
(217622, '2023-06-26', 'John Doe', 'http://example.com/file-laporan.pdf', 'http://example.com/foto1.jpg', 'http://example.com/foto-faktur.jpg', 'http://example.com/foto-postingan.jpg', 'http://example.com/foto-tabulasi.jpg', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'Diterima', 1400000, 100000, 1500000, '2023-06-26', 'Jane Smith', NULL, NULL, NULL, 54353, NULL, 'true');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mhs_per_periode_mpt`
--

CREATE TABLE `mhs_per_periode_mpt` (
  `id_mhs_per_periode_mpt` bigint(20) NOT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `id_kegiatan_per_periode_mpt` bigint(20) DEFAULT NULL,
  `id_periode_mpt` bigint(20) DEFAULT NULL,
  `id_user` varchar(255) DEFAULT NULL,
  `id_nama_kegiatan_mpt` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mhs_per_periode_mpt`
--

INSERT INTO `mhs_per_periode_mpt` (`id_mhs_per_periode_mpt`, `created_at`, `created_by`, `updated_at`, `updated_by`, `id_kegiatan_per_periode_mpt`, `id_periode_mpt`, `id_user`, `id_nama_kegiatan_mpt`) VALUES
(1234, '2023-06-26', 'John Doe', '2023-06-26', 'Jane Smith', NULL, 1, '1129122', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nama_kegiatan_mpt`
--

CREATE TABLE `nama_kegiatan_mpt` (
  `id_nama_kegiatan_mpt` bigint(20) NOT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `nama_kegiatan` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `id_jenis_kegiatan_mpt` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `nama_kegiatan_mpt`
--

INSERT INTO `nama_kegiatan_mpt` (`id_nama_kegiatan_mpt`, `created_at`, `created_by`, `nama_kegiatan`, `updated_at`, `updated_by`, `id_jenis_kegiatan_mpt`) VALUES
(984, '2023-06-26', 'John Doe', 'bercocok tanam', '2023-06-26', 'Jane Smith', 342421),
(1234, '2023-06-26', 'John Doe', 'bercocok tanam', '2023-06-26', 'Jane Smith', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `notifikasi`
--

CREATE TABLE `notifikasi` (
  `id_notifikasi` bigint(20) NOT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `teks_notifikasi` varchar(255) DEFAULT NULL,
  `tgl_notifikasi` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ormawa`
--

CREATE TABLE `ormawa` (
  `id_ormawa` int(50) NOT NULL,
  `bendahara` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `foto_bendahara` varchar(255) DEFAULT NULL,
  `foto_ketua` varchar(255) DEFAULT NULL,
  `foto_pembina` varchar(255) DEFAULT NULL,
  `foto_sekretaris` varchar(255) DEFAULT NULL,
  `foto_wakil` varchar(255) DEFAULT NULL,
  `jumlah_anggota` int(11) DEFAULT NULL,
  `ketua` varchar(255) DEFAULT NULL,
  `logo_ormawa` varchar(255) DEFAULT NULL,
  `nama_ormawa` varchar(255) DEFAULT NULL,
  `nama_singkatan_ormawa` varchar(255) DEFAULT NULL,
  `pembina` varchar(255) DEFAULT NULL,
  `sekretaris` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `wakil` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ormawa`
--

INSERT INTO `ormawa` (`id_ormawa`, `bendahara`, `created_at`, `created_by`, `foto_bendahara`, `foto_ketua`, `foto_pembina`, `foto_sekretaris`, `foto_wakil`, `jumlah_anggota`, `ketua`, `logo_ormawa`, `nama_ormawa`, `nama_singkatan_ormawa`, `pembina`, `sekretaris`, `updated_at`, `updated_by`, `wakil`) VALUES
(27, 'Bendahara Ormawa', '2023-06-26', 'John Doe', 'link_foto_bendahara', 'link_foto_ketua', 'link_foto_pembina', 'link_foto_sekretaris', 'link_foto_wakil', 50, 'Ketua Ormawa', 'link_photosa', 'hallo', 'tess', 'Pembina Ormawa', 'Sekretaris Ormawa', '2023-06-26', 'Jane Smith', 'Wakil Ketua Ormawa'),
(123, 'Bendahara Ormawa', '2023-06-26', 'John Doe', 'link_foto_bendahara', 'link_foto_ketua', 'link_foto_pembina', 'link_foto_sekretaris', 'link_foto_wakil', 50, 'Ketua Ormawa', 'link_photo', 'Nama Osarmawa', 'ME', 'Pembina Ormawa', 'Sekretaris Ormawa', '2023-06-26', 'Jane Smith', 'Wakil Ketua Ormawa'),
(234451, 'Bendahara Ormawa', '26-6-2023', 'John Doe', 'link_foto_bendahara', 'https://firebasestorage.googleapis.com/v0/b/mipoka.appspot.com/o/1690259786545078202010081659547750d095c402ef5caa2f6f7e37273280.jpeg?alt=media&token=b65f8582-9d05-4ddf-a018-48b2772449c0', 'https://firebasestorage.googleapis.com/v0/b/mipoka.appspot.com/o/1690259450406231202010081659547750d095c402ef5caa2f6f7e37273280.jpeg?alt=media&token=713e27fc-9e00-49b0-8ad4-03463988b30b', 'link_foto_sekretaris', 'https://firebasestorage.googleapis.com/v0/b/mipoka.appspot.com/o/1690259789483429202010081659547750d095c402ef5caa2f6f7e37273280.jpeg?alt=media&token=d798cf9b-5a8e-425b-9673-c0771c92f1a5', 10, 'Ketua Ormawa', 'https://firebasestorage.googleapis.com/v0/b/mipoka.appspot.com/o/1690260231992911202010081659547750d095c402ef5caa2f6f7e37273280.jpeg?alt=media&token=2a50d93d-c41c-46ce-9746-5154dab7b12f', 'Mikroskil Esport', 'ME', 'Pembina Ormawa', 'Sekretaris Ormawa', 'danielsidauruk11@gmail.com', '25-07-2023', 'Wakil Ketua Ormawa'),
(767443, 'Bendahara Ormawa', '26-6-2023', 'John Doe', 'link_foto_bendahara', 'link_foto_ketua', 'link_foto_pembina', 'link_foto_sekretaris', 'link_foto_wakil', 50, 'Ketua Ormawa', 'link_photo', 'Mikroskil Esport', 'ME', 'Pembina Ormawa', 'Sekretaris Ormawa', '26-6-2023', 'Jane Smith', 'Wakil Ketua Ormawa'),
(7674243, 'Bendahara Ormawa', '26-6-2023', 'John Doe', 'link_foto_bendahara', 'link_foto_ketua', 'link_foto_pembina', 'link_foto_sekretaris', 'link_foto_wakil', 50, 'Ketua Ormawa', 'link_photo', 'Mikroskil Esport', 'ME', 'Pembina Ormawa', 'Sekretaris Ormawa', '26-6-2023', 'Jane Smith', 'Wakil Ketua Ormawa'),
(1234567890, 'Bendahara Ormawa', '26-6-2023', 'John Doe', 'link_foto_bendahara', 'link_foto_ketua', 'link_foto_pembina', 'link_foto_sekretaris', 'link_foto_wakil', 50, 'Ketua Ormawa', 'link_photo', 'Mikroskil Esport', 'ME', 'Pembina Ormawa', 'Sekretaris Ormawa', '26-6-2023', 'Jane Smith', 'Wakil Ketua Ormawa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `partisipan`
--

CREATE TABLE `partisipan` (
  `id_partisipan` bigint(20) NOT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `dasar_pengiriman` varchar(1000) DEFAULT NULL,
  `nama_partisipan` varchar(255) DEFAULT NULL,
  `nik` varchar(255) DEFAULT NULL,
  `no_induk` varchar(255) DEFAULT NULL,
  `peran_partisipan` varchar(255) DEFAULT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tgl_lahir` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `usulan_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `partisipan`
--

INSERT INTO `partisipan` (`id_partisipan`, `created_at`, `created_by`, `dasar_pengiriman`, `nama_partisipan`, `nik`, `no_induk`, `peran_partisipan`, `tempat_lahir`, `tgl_lahir`, `updated_at`, `updated_by`, `usulan_id`) VALUES
(1, NULL, NULL, 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', NULL, NULL, NULL),
(2, NULL, NULL, 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', NULL, NULL, NULL),
(3, NULL, NULL, 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', NULL, NULL, NULL),
(4, NULL, NULL, 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', NULL, NULL, NULL),
(5, NULL, NULL, 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', NULL, NULL, NULL),
(6, NULL, NULL, 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', NULL, NULL, NULL),
(7, NULL, NULL, 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', NULL, NULL, NULL),
(8, NULL, NULL, 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', NULL, NULL, NULL),
(9, NULL, NULL, 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', NULL, NULL, NULL),
(10, NULL, NULL, 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', NULL, NULL, NULL),
(11, NULL, NULL, 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', NULL, NULL, NULL),
(12, NULL, NULL, 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', NULL, NULL, NULL),
(13, NULL, NULL, 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', NULL, NULL, NULL),
(14, NULL, NULL, 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', NULL, NULL, NULL),
(15, NULL, NULL, 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', NULL, NULL, NULL),
(16, NULL, NULL, 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', NULL, NULL, NULL),
(17, NULL, NULL, 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', NULL, NULL, NULL),
(18, NULL, NULL, 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', NULL, NULL, NULL),
(19, NULL, NULL, 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', NULL, NULL, NULL),
(20, NULL, NULL, 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakartaa', '1990-01-01', NULL, NULL, NULL),
(21, NULL, NULL, 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakartaa', '1990-01-01', NULL, NULL, NULL),
(22, NULL, NULL, 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakartaa', '1990-01-01', NULL, NULL, NULL),
(23, NULL, NULL, 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '1', 'Peserta', 'Jakartaa', '1990-01-01', NULL, NULL, NULL),
(24, NULL, NULL, 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakartaa', '1990-01-01', NULL, NULL, NULL),
(25, NULL, NULL, 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', NULL, NULL, NULL),
(26, NULL, NULL, 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakartaa', '1990-01-01', NULL, NULL, NULL),
(27, NULL, NULL, 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', NULL, NULL, NULL),
(28, NULL, NULL, 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakartaa', '1990-01-01', NULL, NULL, NULL),
(29, NULL, NULL, 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', NULL, NULL, NULL),
(30, NULL, NULL, 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakartaa', '1990-01-01', NULL, NULL, NULL),
(31, NULL, NULL, 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', NULL, NULL, NULL),
(32, NULL, NULL, 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakartaa', '1990-01-01', NULL, NULL, NULL),
(33, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(34, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakartaa', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(35, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(36, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakartaa', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(37, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(38, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakartaa', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(39, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(40, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakartaa', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(41, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(42, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakartaa', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(43, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(44, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakartaa', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(45, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(46, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakartaa', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(47, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(48, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakartaa', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(49, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(50, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakartaa', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(51, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(52, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'hafizs', '1234567890', '12345678', 'Peserta', 'Jakartaa', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(53, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(54, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'hafizs', '1234567890', '12345678', 'Peserta', 'Jakartaa', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(55, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(56, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'hafizs', '1234567890', '12345678', 'Peserta', 'Jakartaa', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(57, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(58, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'hafizs', '1234567890', '12345678', 'Peserta', 'Jakartaa', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(59, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(60, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'hafizs', '1234567890', '12345678', 'Peserta', 'Jakartaa', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(63, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(64, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakartaa', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(71, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(72, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakartaa', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(73, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(74, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakartaa', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(77, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(78, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakartaa', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(79, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(80, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakartaa', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(81, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(82, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakartaa', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(85, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(86, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakartaa', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(89, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(90, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakartaa', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(91, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(92, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakartaa', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(141, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(142, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakartaa', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(143, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(144, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakartaa', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(145, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(146, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakartaa', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(147, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(148, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakartaa', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(151, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(152, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakartaa', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(163, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(164, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakartaa', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(165, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(166, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakartaa', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(169, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(170, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakartaa', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(171, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', '2023-06-26', 'John Doe', 272),
(172, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakartaa', '1990-01-01', '2023-06-26', 'John Doe', 272),
(173, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(174, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakartaa', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(177, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(178, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakartaa', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(191, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(192, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakartaa', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(197, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', '2023-06-26', 'John Doe', 27322),
(198, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakartaa', '1990-01-01', '2023-06-26', 'John Doe', 27322),
(199, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(200, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakartaa', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(201, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(202, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakartaa', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(203, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(204, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakartaa', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(205, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(206, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakartaa', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(207, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(208, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakartaa', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(332, '27-07-2023', 'danielsidauruk11@gmail.com', 'asefsesefa', 'saeefs', '', '2342423', 'eafssfaefse', '', '', '27-07-2023', 'danielsidauruk11@gmail.com', 1343),
(333, '27-07-2023', 'danielsidauruk11@gmail.com', 'gesaseggase', 'asffseas', '', '332234', 'asggas', '', '', '27-07-2023', 'danielsidauruk11@gmail.com', 1343),
(1322, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakartaa', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(13322, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakartaa', '1990-01-01', '2023-06-26', 'John Doe', 221),
(132442, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', '2023-06-26', 'John Doe', NULL),
(1332442, '2023-06-26', 'Jane Smith', 'Dalam rangka pengembangan keterampilan', 'John Doe', '1234567890', '12345678', 'Peserta', 'Jakarta', '1990-01-01', '2023-06-26', 'John Doe', 221);

-- --------------------------------------------------------

--
-- Struktur dari tabel `periode_mpt`
--

CREATE TABLE `periode_mpt` (
  `id_periode_mpt` bigint(20) NOT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `periode_mengulang_mpt` bit(1) DEFAULT NULL,
  `tahun_periode_mpt` varchar(255) DEFAULT NULL,
  `tanggal_berakhir_periode_mpt` varchar(255) DEFAULT NULL,
  `tanggal_mulai_periode_mpt` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `periode_mpt`
--

INSERT INTO `periode_mpt` (`id_periode_mpt`, `created_at`, `created_by`, `periode_mengulang_mpt`, `tahun_periode_mpt`, `tanggal_berakhir_periode_mpt`, `tanggal_mulai_periode_mpt`, `updated_at`, `updated_by`) VALUES
(1, '2023-06-26', 'John Doe', b'0', '2323', 'minggu', 'selasa', '2023-06-26', 'Jane Smith');

-- --------------------------------------------------------

--
-- Struktur dari tabel `person`
--

CREATE TABLE `person` (
  `id` bigint(20) NOT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `gambar1` longblob DEFAULT NULL,
  `gambar2` longblob DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `field_with_max_length4096` varchar(4096) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `peserta_kegiatan_laporan`
--

CREATE TABLE `peserta_kegiatan_laporan` (
  `id_peserta_kegiatan_laporan` bigint(20) NOT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `laporan` varchar(255) DEFAULT NULL,
  `nama_lengkap` varchar(255) DEFAULT NULL,
  `nim` varchar(255) DEFAULT NULL,
  `peran` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `id_laporan` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `peserta_kegiatan_laporan`
--

INSERT INTO `peserta_kegiatan_laporan` (`id_peserta_kegiatan_laporan`, `created_at`, `created_by`, `laporan`, `nama_lengkap`, `nim`, `peran`, `updated_at`, `updated_by`, `id_laporan`) VALUES
(5, '2023-06-26', 'Jane Smith', 'Isi laporan kegiatan', 'John Doe', '1234567890', 'Peserta', '2023-06-26', 'John Doe', NULL),
(6, '2023-06-26', 'Jane Smith', 'Isi laporan kegiatan 2', 'John Doe', '1234567890', 'Peserta', '2023-06-26', 'John Doe', NULL),
(7, '20-6-2026', 'Jane Smith', 'Isi laporan kegiatan', 'John Doe', '1234567890', 'Peserta', '20-6-2026', 'John Doe', 8922),
(8, '20-6-2026', 'Jane Smith', 'Isi laporan kegiatan 2', 'John Doe', '1234567890', 'Peserta', '20-6-2026', 'John Doe', 8922),
(11, '2023-06-26', 'Jane Smith', 'Isi laporan kegiatan', 'John Doe', '1234567890', 'Peserta', '2023-06-26', 'John Doe', NULL),
(12, '2023-06-26', 'Jane Smith', 'Isi laporan kegiatan 2', 'John Doe', '1234567890', 'Peserta', '2023-06-26', 'John Doe', NULL),
(33, '2023-06-26', 'Jane Smith', 'Isi laporan kegiatan', 'John Doe', '1234567890', 'Peserta', '2023-06-26', 'John Doe', NULL),
(34, '2023-06-26', 'Jane Smith', 'Isi laporan kegiatan 2', 'John Doe', '1234567890', 'Peserta', '2023-06-26', 'John Doe', NULL),
(35, '2023-06-26', 'Jane Smith', 'Isi laporan kegiatan', 'John Doe', '1234567890', 'Peserta', '2023-06-26', 'John Doe', 21762),
(36, '2023-06-26', 'Jane Smith', 'Isi laporan kegiatan 2', 'John Doe', '1234567890', 'Peserta', '2023-06-26', 'John Doe', 21762),
(37, '2023-06-26', 'Jane Smith', 'Isi laporan kegiatan', 'John Doe', '1234567890', 'Peserta', '2023-06-26', 'John Doe', NULL),
(38, '2023-06-26', 'Jane Smith', 'Isi laporan kegiatan 2', 'John Doe', '1234567890', 'Peserta', '2023-06-26', 'John Doe', NULL),
(39, '2023-06-26', 'Jane Smith', 'Isi laporan kegiatan', 'John Doe', '1234567890', 'Peserta', '2023-06-26', 'John Doe', 217622),
(40, '2023-06-26', 'Jane Smith', 'Isi laporan kegiatan 2', 'John Doe', '1234567890', 'Peserta', '2023-06-26', 'John Doe', 217622);

-- --------------------------------------------------------

--
-- Struktur dari tabel `prestasi`
--

CREATE TABLE `prestasi` (
  `id_prestasi` bigint(20) NOT NULL,
  `kegiatan` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `nim` varchar(255) DEFAULT NULL,
  `prestasi_dicapai` varchar(255) DEFAULT NULL,
  `tingkat` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `id_user` varchar(255) DEFAULT NULL,
  `nama_kegiatan` varchar(255) DEFAULT NULL,
  `unggah_sertifikat` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `waktu_penyelenggaraan` varchar(255) DEFAULT NULL,
  `id_ormawa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `prestasi`
--

INSERT INTO `prestasi` (`id_prestasi`, `kegiatan`, `nama`, `nim`, `prestasi_dicapai`, `tingkat`, `created_at`, `created_by`, `id_user`, `nama_kegiatan`, `unggah_sertifikat`, `updated_at`, `updated_by`, `waktu_penyelenggaraan`, `id_ormawa`) VALUES
(28, NULL, NULL, NULL, 'Juara 1', 'Nasional', '2023-06-26', 'Jane Smith', '19111', 'Prestasi ABC', 'link_sertifikat', '2023-06-26', 'John Doe', '2023-06-26', 123),
(78, NULL, NULL, NULL, 'Juara 1', 'Nasional', '2023-06-26', 'Jane Smith', '19111', 'Prestasi ABC', 'link_sertifikat', '2023-06-26', 'John Doe', '2023-06-26', 123),
(123432, NULL, NULL, NULL, 'Juara 1', 'Nasional', '2023-06-26', 'Jane Smith', '19111', 'Prestasi ABC', 'link_sertifikat', '2023-06-26', 'John Doe', '2023-06-26', 123);

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `id` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `category_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `revisi_id_biaya_kegiatan`
--

CREATE TABLE `revisi_id_biaya_kegiatan` (
  `revisi_laporan_id` bigint(20) NOT NULL,
  `id_biaya_kegiatan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `revisi_id_biaya_kegiatan`
--

INSERT INTO `revisi_id_biaya_kegiatan` (`revisi_laporan_id`, `id_biaya_kegiatan`) VALUES
(54353, '789'),
(54353, '012');

-- --------------------------------------------------------

--
-- Struktur dari tabel `revisi_id_peserta_kegiatan_laporan`
--

CREATE TABLE `revisi_id_peserta_kegiatan_laporan` (
  `revisi_laporan_id` bigint(20) NOT NULL,
  `id_peserta_kegiatan_laporan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `revisi_id_peserta_kegiatan_laporan`
--

INSERT INTO `revisi_id_peserta_kegiatan_laporan` (`revisi_laporan_id`, `id_peserta_kegiatan_laporan`) VALUES
(54353, '123'),
(54353, '456');

-- --------------------------------------------------------

--
-- Struktur dari tabel `revisi_laporan`
--

CREATE TABLE `revisi_laporan` (
  `id_revisi_laporan` bigint(20) NOT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `revisi_foto_dokumentasi_kegiatan` varchar(255) DEFAULT NULL,
  `revisi_foto_faktur_pembayaran` varchar(255) DEFAULT NULL,
  `revisi_foto_postingan_kegiatan` varchar(255) DEFAULT NULL,
  `revisi_foto_tabulasi_hasil` varchar(255) DEFAULT NULL,
  `revisi_hasil_kegiatan` varchar(4096) DEFAULT NULL,
  `revisi_latar_belakang` varchar(4096) DEFAULT NULL,
  `revisi_pencapaian` varchar(255) DEFAULT NULL,
  `revisi_penutup` varchar(4096) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `revisi_biaya_kegiatan` varchar(255) DEFAULT NULL,
  `revisi_peserta_kegiatan_laporan` varchar(255) DEFAULT NULL,
  `id_user` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `revisi_laporan`
--

INSERT INTO `revisi_laporan` (`id_revisi_laporan`, `created_at`, `created_by`, `revisi_foto_dokumentasi_kegiatan`, `revisi_foto_faktur_pembayaran`, `revisi_foto_postingan_kegiatan`, `revisi_foto_tabulasi_hasil`, `revisi_hasil_kegiatan`, `revisi_latar_belakang`, `revisi_pencapaian`, `revisi_penutup`, `updated_at`, `updated_by`, `revisi_biaya_kegiatan`, `revisi_peserta_kegiatan_laporan`, `id_user`) VALUES
(54353, '2023-06-26', 'John Doe', 'http://example.com/foto-dokumentasi.jpg', 'http://example.com/foto-faktur.jpg', 'http://example.com/foto-postingan.jpg', 'http://example.com/foto-tabulasi.jpg', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', '2023-06-26', 'Jane Smith', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `revisi_usulan`
--

CREATE TABLE `revisi_usulan` (
  `id_revisi_usulan` bigint(20) NOT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `revisi_bentuk_kegiatan` varchar(255) DEFAULT NULL,
  `revisi_bentuk_pelaksanaan_kegiatan` varchar(255) DEFAULT NULL,
  `revisi_deskripsi_kegiatan` varchar(255) DEFAULT NULL,
  `revisi_foto_linimasa_kegiatan` varchar(255) DEFAULT NULL,
  `revisi_foto_postingan_kegiatan` varchar(255) DEFAULT NULL,
  `revisi_foto_surat_undangan_kegiatan` varchar(255) DEFAULT NULL,
  `revisi_jumlah_partisipan` varchar(255) DEFAULT NULL,
  `revisi_kategori_bentuk_kegiatan` varchar(255) DEFAULT NULL,
  `revisi_kategori_jumlah_partisipan` varchar(255) DEFAULT NULL,
  `revisi_kategori_total_pendanaan` varchar(255) DEFAULT NULL,
  `revisi_keterangan` varchar(255) DEFAULT NULL,
  `revisi_latar_belakang` varchar(255) DEFAULT NULL,
  `revisi_manfaat_kegiatan` varchar(255) DEFAULT NULL,
  `revisi_nama_kegiatan` varchar(255) DEFAULT NULL,
  `revisi_pembiayaan` varchar(255) DEFAULT NULL,
  `revisi_penutup` varchar(255) DEFAULT NULL,
  `revisi_perlengkapan_dan_peralatan` varchar(255) DEFAULT NULL,
  `revisi_rencana_anggaran_kegiatan` varchar(255) DEFAULT NULL,
  `revisi_tanda_tangan_ormawa` varchar(255) DEFAULT NULL,
  `revisi_tanggal_keberangkatan` varchar(255) DEFAULT NULL,
  `revisi_tanggal_kepulangan` varchar(255) DEFAULT NULL,
  `revisi_tanggal_mulai_kegiatan` varchar(255) DEFAULT NULL,
  `revisi_tanggal_selesai_kegiatan` varchar(255) DEFAULT NULL,
  `revisi_target_kegiatan` varchar(255) DEFAULT NULL,
  `revisi_target_pencapaian_kegiatan` varchar(255) DEFAULT NULL,
  `revisi_tempat_kegiatan` varchar(255) DEFAULT NULL,
  `revisi_tertib_acara` varchar(255) DEFAULT NULL,
  `revisi_total_pendanaan` varchar(255) DEFAULT NULL,
  `revisi_tujuan_kegiatan` varchar(255) DEFAULT NULL,
  `revisi_waktu_dan_tempat_pelaksanaan` varchar(255) DEFAULT NULL,
  `revisi_waktu_mulai_kegiatan` varchar(255) DEFAULT NULL,
  `revisi_waktu_selesai_kegiatan` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `revisi_foto_tempat_kegiatan` varchar(255) DEFAULT NULL,
  `revisi_partisipan` varchar(255) DEFAULT NULL,
  `revisi_rincian_biaya_kegiatan` varchar(255) DEFAULT NULL,
  `id_user` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `revisi_usulan`
--

INSERT INTO `revisi_usulan` (`id_revisi_usulan`, `created_at`, `created_by`, `revisi_bentuk_kegiatan`, `revisi_bentuk_pelaksanaan_kegiatan`, `revisi_deskripsi_kegiatan`, `revisi_foto_linimasa_kegiatan`, `revisi_foto_postingan_kegiatan`, `revisi_foto_surat_undangan_kegiatan`, `revisi_jumlah_partisipan`, `revisi_kategori_bentuk_kegiatan`, `revisi_kategori_jumlah_partisipan`, `revisi_kategori_total_pendanaan`, `revisi_keterangan`, `revisi_latar_belakang`, `revisi_manfaat_kegiatan`, `revisi_nama_kegiatan`, `revisi_pembiayaan`, `revisi_penutup`, `revisi_perlengkapan_dan_peralatan`, `revisi_rencana_anggaran_kegiatan`, `revisi_tanda_tangan_ormawa`, `revisi_tanggal_keberangkatan`, `revisi_tanggal_kepulangan`, `revisi_tanggal_mulai_kegiatan`, `revisi_tanggal_selesai_kegiatan`, `revisi_target_kegiatan`, `revisi_target_pencapaian_kegiatan`, `revisi_tempat_kegiatan`, `revisi_tertib_acara`, `revisi_total_pendanaan`, `revisi_tujuan_kegiatan`, `revisi_waktu_dan_tempat_pelaksanaan`, `revisi_waktu_mulai_kegiatan`, `revisi_waktu_selesai_kegiatan`, `updated_at`, `updated_by`, `revisi_foto_tempat_kegiatan`, `revisi_partisipan`, `revisi_rincian_biaya_kegiatan`, `id_user`) VALUES
(1, '2023-06-26', 'John Doe', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'http://example.com/foto-linimasa.jpg', 'http://example.com/foto-postingan.jpg', 'http://example.com/foto-undangan.jpg', 'safhkasfda', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'http://example.com/tanda-tangan.jpg', '2023-06-28', '2023-07-02', '2023-06-26', '2023-06-30', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'tempat_kegiatan', '234', 'sadhfjaks', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', '09:00', '17:00', '2023-06-26', 'Jane Smith', 'sdsadas', 'dsada', 'dsadasda', '1129122'),
(322, '2023-06-26', 'John Doe', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'http://example.com/foto-linimasa.jpg', 'http://example.com/foto-postingan.jpg', 'http://example.com/foto-undangan.jpg', 'safhkasfda', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'http://example.com/tanda-tangan.jpg', '2023-06-28', '2023-07-02', '2023-06-26', '2023-06-30', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'tempat_kegiatan', '234', 'sadhfjaks', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', '09:00', '17:00', '2023-06-26', 'Jane Smith', 'http://example.com/foto1.jpg', 'asfjklsadf', 'asdjghaksjghkas', '1129122'),
(3223, '2023-06-26', 'John Doe', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'http://example.com/foto-linimasa.jpg', 'http://example.com/foto-postingan.jpg', 'http://example.com/foto-undangan.jpg', 'safhkasfda', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit ametsas', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'http://example.com/tanda-tangan.jpg', '2023-06-28', '2023-07-02', '2023-06-26', '2023-06-30', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'tempat_kegiatan', '234', 'sadhfjaks', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', '09:00', '17:00', '2023-06-26', 'Jane Smith', 'http://example.com/foto1.jpg', 'asfjklsadf', 'asdjghaksjghkas', '1129122'),
(322323, '2023-06-26', 'John Doe', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'http://example.com/foto-linimasa.jpg', 'http://example.com/foto-postingan.jpg', 'http://example.com/foto-undangan.jpg', 'safhkasfda', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit ametsas', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'http://example.com/tanda-tangan.jpg', '2023-06-28', '2023-07-02', '2022333-06-26', '2023-06-30', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', 'tempat_kegiatan', '234', 'sadhfjaks', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet', '09:00', '17:00', '2023-06-26', 'Jane Smith', 'http://example.com/foto1.jpg', 'asfjklsadf', 'asdjghaksjghkas', '1129122');

-- --------------------------------------------------------

--
-- Struktur dari tabel `revisi_usulan_revisi_foto_tempat_kegiatan`
--

CREATE TABLE `revisi_usulan_revisi_foto_tempat_kegiatan` (
  `revisi_usulan_id_revisi_usulan` bigint(20) NOT NULL,
  `revisi_foto_tempat_kegiatan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `revisi_usulan_revisi_foto_tempat_kegiatan`
--

INSERT INTO `revisi_usulan_revisi_foto_tempat_kegiatan` (`revisi_usulan_id_revisi_usulan`, `revisi_foto_tempat_kegiatan`) VALUES
(1, 'http://example.com/foto1.jpg'),
(1, 'http://example.com/foto2.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `revisi_usulan_revisi_id_partisipan`
--

CREATE TABLE `revisi_usulan_revisi_id_partisipan` (
  `revisi_usulan_id_revisi_usulan` bigint(20) NOT NULL,
  `revisi_id_partisipan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `revisi_usulan_revisi_id_partisipan`
--

INSERT INTO `revisi_usulan_revisi_id_partisipan` (`revisi_usulan_id_revisi_usulan`, `revisi_id_partisipan`) VALUES
(1, '123'),
(1, '456');

-- --------------------------------------------------------

--
-- Struktur dari tabel `revisi_usulan_revisi_id_rincian_biaya_kegiatan`
--

CREATE TABLE `revisi_usulan_revisi_id_rincian_biaya_kegiatan` (
  `revisi_usulan_id_revisi_usulan` bigint(20) NOT NULL,
  `revisi_id_rincian_biaya_kegiatan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `revisi_usulan_revisi_id_rincian_biaya_kegiatan`
--

INSERT INTO `revisi_usulan_revisi_id_rincian_biaya_kegiatan` (`revisi_usulan_id_revisi_usulan`, `revisi_id_rincian_biaya_kegiatan`) VALUES
(1, '789'),
(1, '012');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rincian_biaya_kegiatan`
--

CREATE TABLE `rincian_biaya_kegiatan` (
  `id_rincian_biaya_kegiatan` bigint(20) NOT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `harga_satuan` int(11) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `kuantitas` int(11) DEFAULT NULL,
  `laporan` varchar(255) DEFAULT NULL,
  `nama_biaya` varchar(255) DEFAULT NULL,
  `realisasi_anggaran` bigint(20) DEFAULT NULL,
  `selisih` bigint(20) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `usulan_anggaran` bigint(20) DEFAULT NULL,
  `id_laporan` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `rincian_biaya_kegiatan`
--

INSERT INTO `rincian_biaya_kegiatan` (`id_rincian_biaya_kegiatan`, `created_at`, `created_by`, `harga_satuan`, `keterangan`, `kuantitas`, `laporan`, `nama_biaya`, `realisasi_anggaran`, `selisih`, `updated_at`, `updated_by`, `usulan_anggaran`, `id_laporan`) VALUES
(2, '2023-06-26', 'Jane Smith', 50000, 'Biaya transportasi peserta', 10, 'Isi laporan rincian biaya kegiatan', 'Transportasi', 450000, 50000, '2023-06-26', 'John Doe', 500000, 217622),
(3, '2023-06-26', 'Jane Smith', 50000, 'Biaya transportasi peserta', 10, 'Isi laporan rincian biaya kegiatan', 'Transportasi', 450000, 50000, '2023-06-26', 'John Doe', 500000, NULL),
(4, '20-6-2026', 'Jane Smith', 50000, 'Biaya transportasi peserta', 10, 'Isi laporan rincian biaya kegiatan', 'Transportasi', 450000, 50000, '20-6-2026', 'John Doe', 500000, 8922);

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat_mpt`
--

CREATE TABLE `riwayat_mpt` (
  `id_riwayat_mpt` bigint(20) NOT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `file_sertifikat_mpt` varchar(255) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `keterangan_mhs` varchar(255) DEFAULT NULL,
  `keterangan_sa` varchar(255) DEFAULT NULL,
  `status_mpt` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `id_kegiatan_per_periode_mpt` bigint(20) DEFAULT NULL,
  `id_user` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `riwayat_mpt`
--

INSERT INTO `riwayat_mpt` (`id_riwayat_mpt`, `created_at`, `created_by`, `file_sertifikat_mpt`, `hash`, `keterangan_mhs`, `keterangan_sa`, `status_mpt`, `updated_at`, `updated_by`, `id_kegiatan_per_periode_mpt`, `id_user`) VALUES
(24, '2023-06-26', 'John Doe', 'sertifikat_mpt.pdf', 'eef85b6a47c314d7b50c3a518f9d3e08', 'Peserta aktif', 'Terverifikasi', 'Selesai', '2023-06-26', 'Jane Smith', 342421, '1129122'),
(24322, '2023-06-26', 'John Doe', 'sertifikat_mpt.pdf', 'eef85b6a47c314d7b50c3a518f9d3e08', 'Peserta aktif', 'Terverifikasi', 'Selesai', '2023-06-26', 'Jane Smith', NULL, '19111');

-- --------------------------------------------------------

--
-- Struktur dari tabel `session`
--

CREATE TABLE `session` (
  `id_session` bigint(20) NOT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `gedung` varchar(255) DEFAULT NULL,
  `kegiatan` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `kursi` int(11) NOT NULL,
  `lain_lain` varchar(255) DEFAULT NULL,
  `laptop` int(11) NOT NULL,
  `meja` int(11) NOT NULL,
  `mikrofon` int(11) NOT NULL,
  `papan_tulis` int(11) DEFAULT NULL,
  `proyektor` int(11) NOT NULL,
  `ruangan` varchar(255) DEFAULT NULL,
  `speaker` int(11) NOT NULL,
  `spidol` int(11) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `tanggal_mulai` varchar(255) DEFAULT NULL,
  `tanggal_selesai` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `waktu_mulai_penggunaan` varchar(255) DEFAULT NULL,
  `waktu_selesai_penggunaan` varchar(255) DEFAULT NULL,
  `id_ormawa` int(11) DEFAULT NULL,
  `id_user` varchar(255) DEFAULT NULL,
  `file_session` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `session`
--

INSERT INTO `session` (`id_session`, `created_at`, `created_by`, `gedung`, `kegiatan`, `keterangan`, `kursi`, `lain_lain`, `laptop`, `meja`, `mikrofon`, `papan_tulis`, `proyektor`, `ruangan`, `speaker`, `spidol`, `status`, `tanggal_mulai`, `tanggal_selesai`, `updated_at`, `updated_by`, `waktu_mulai_penggunaan`, `waktu_selesai_penggunaan`, `id_ormawa`, `id_user`, `file_session`) VALUES
(1, '2023-06-25T12:00:00', 'Admin002', 'Gedung A', 'Rapat Koordinasi', 'Usulan kegiatan rapat koordinasi antar ormawa', 20, 'Whiteboard markers, remote presenter', 2, 10, 3, 2, 0, 'A101', 30, 1, 'Pending', '2023-07-10', '2023-07-12', '2023-06-26T10:30:00', 'Admin002', '09:00', '16:00', 123, '19111', NULL),
(123, '2023-06-25T12:00:00', 'Admin002', 'Gedung A', 'Rapat Koordinasi', 'Usulan kegiatan rapat koordinasi antar ormawa', 20, 'Whiteboard markers, remote presenter', 2, 10, 3, 2, 0, 'A101', 30, 1, 'Pending', '2023-07-10', '2023-07-12', '2023-06-26T10:30:00', 'Admin002', '09:00', '16:00', NULL, NULL, 'link_file');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tertib_acara`
--

CREATE TABLE `tertib_acara` (
  `id_tertib_acara` bigint(20) NOT NULL,
  `aktivitas` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `keterangan` varchar(1000) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `waktu_mulai` varchar(255) DEFAULT NULL,
  `waktu_selesai` varchar(255) DEFAULT NULL,
  `usulan_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tertib_acara`
--

INSERT INTO `tertib_acara` (`id_tertib_acara`, `aktivitas`, `created_at`, `created_by`, `keterangan`, `updated_at`, `updated_by`, `waktu_mulai`, `waktu_selesai`, `usulan_id`) VALUES
(1, 'Sesi Pembukaan', NULL, NULL, 'Acara pembukaan kegiatan dengan sambutan dan pengenalan peserta', NULL, NULL, '09:00', '16:00', NULL),
(2, 'Sesi Pembukaan', NULL, NULL, 'Acara pembukaan kegiatan dengan sambutan dan pengenalan peserta', NULL, NULL, '09:00', '16:00', NULL),
(3, 'Sesi Pembukaan', NULL, NULL, 'Acara pembukaan kegiatan dengan sambutan dan pengenalan peserta', NULL, NULL, '09:00', '16:00', NULL),
(4, 'Sesi Pembukaan', NULL, NULL, 'Acara pembukaan kegiatan dengan sambutan dan pengenalan peserta', NULL, NULL, '09:00', '16:00', NULL),
(5, 'Sesi Pembukaan', NULL, NULL, 'Acara pembukaan kegiatan dengan sambutan dan pengenalan peserta', NULL, NULL, '09:00', '16:00', NULL),
(6, 'Sesi Pembukaan', NULL, NULL, 'Acara pembukaan kegiatan dengan sambutan dan pengenalan peserta', NULL, NULL, '09:00', '16:00', NULL),
(7, 'Sesi Pembukaan', NULL, NULL, 'Acara pembukaan kegiatan dengan sambutan dan pengenalan peserta', NULL, NULL, '09:00', '16:00', NULL),
(8, 'Sesi Pembukaan', NULL, NULL, 'Acara pembukaan kegiatan dengan sambutan dan pengenalan peserta', NULL, NULL, '09:00', '16:00', NULL),
(9, 'Sesi Pembukaan', NULL, NULL, 'Acara pembukaan kegiatan dengan sambutan dan pengenalan peserta', NULL, NULL, '09:00', '16:00', NULL),
(10, 'Sesi Pembukaan', NULL, NULL, 'Acara pembukaan kegiatan dengan sambutan dan pengenalan peserta', NULL, NULL, '09:00', '16:00', NULL),
(11, 'Sesi Pembukaan', NULL, NULL, 'Acara pembukaan kegiatan dengan sambutan dan pengenalan peserta', NULL, NULL, '09:00', '16:00', NULL),
(12, 'Sesi Pembukaan', NULL, NULL, 'Acara pembukaan kegiatan dengan sambutan dan pengenalan peserta', NULL, NULL, '09:00', '16:00', NULL),
(13, 'Sesi Pembukaan', NULL, NULL, 'Acara pembukaan kegiatan dengan sambutan dan pengenalan peserta', NULL, NULL, '09:00', '16:00', NULL),
(14, 'Sesi Pembukaan', NULL, NULL, 'Acara pembukaan kegiatan dengan sambutan dan pengenalan peserta', NULL, NULL, '09:00', '16:00', NULL),
(15, 'Sesi Pembukaan', NULL, NULL, 'Acara pembukaan kegiatan dengan sambutan dan pengenalan peserta', NULL, NULL, '09:00', '16:00', NULL),
(16, 'Sesi Pembukaan', NULL, NULL, 'Acara pembukaan kegiatan dengan sambutan dan pengenalan peserta', NULL, NULL, '09:00', '16:00', NULL),
(17, 'Sesi Pembukaan', NULL, NULL, 'Acara pembukaan kegiatan dengan sambutan dan pengenalan peserta', NULL, NULL, '09:00', '16:00', NULL),
(18, 'Sesi Pembukaan', NULL, NULL, 'Acara pembukaan kegiatan dengan sambutan dan pengenalan peserta', NULL, NULL, '09:00', '16:00', NULL),
(19, 'Sesi Pembukaan', NULL, NULL, 'Acara pembukaan kegiatan dengan sambutan dan pengenalan peserta', NULL, NULL, '09:00', '16:00', NULL),
(20, 'Sesi Pembukaan', NULL, NULL, 'Acara pembukaan kegiatan dengan sambutan dan pengenalan peserta', NULL, NULL, '09:00', '16:00', NULL),
(21, 'Sesi Pembukaan', NULL, NULL, 'Acara pembukaan kegiatan dengan sambutan dan pengenalan peserta', NULL, NULL, '09:00', '16:00', NULL),
(22, 'Sesi Pembukaan', NULL, NULL, 'Acara pembukaan kegiatan dengan sambutan dan pengenalan peserta', NULL, NULL, '09:00', '16:00', NULL),
(23, 'Sesi Pembukaan', NULL, NULL, 'Acara pembukaan kegiatan dengan sambutan dan pengenalan peserta', NULL, NULL, '09:00', '16:00', NULL),
(24, 'Sesi Pembukaan', NULL, NULL, 'Acara pembukaan kegiatan dengan sambutan dan pengenalan peserta', NULL, NULL, '09:00', '16:00', NULL),
(25, 'Sesi Pembukaan', NULL, NULL, 'Acara pembukaan kegiatan dengan sambutan dan pengenalan peserta', NULL, NULL, '09:00', '16:00', NULL),
(26, 'Sesi Pembukaan', NULL, NULL, 'Acara pembukaan kegiatan dengan sambutan dan pengenalan peserta', NULL, NULL, '09:00', '16:00', NULL),
(27, 'Sesi Pembukaan', NULL, NULL, 'Acara pembukaan kegiatan dengan sambutan dan pengenalan peserta', NULL, NULL, '09:00', '16:00', NULL),
(28, 'Sesi Pembukaan', NULL, NULL, 'Acara pembukaan kegiatan dengan sambutan dan pengenalan peserta', NULL, NULL, '09:00', '16:00', NULL),
(29, 'Sesi Pembukaan', NULL, NULL, 'Acara pembukaan kegiatan dengan sambutan dan pengenalan peserta', NULL, NULL, '09:00', '16:00', NULL),
(30, 'Sesi Pembukaan', NULL, NULL, 'Acara pembukaan kegiatan dengan sambutan dan pengenalan peserta', NULL, NULL, '09:00', '16:00', NULL),
(123, 'Sesi Pembukaan', NULL, NULL, 'Acara pembukaan kegiatan dengan sambutan dan pengenalan peserta', NULL, NULL, '09:00', '16:00', NULL),
(432, 'Sesi Pembukaan', NULL, NULL, 'Acara pembukaan kegiatan dengan sambutan dan pengenalan peserta', NULL, NULL, '09:00', '16:00', NULL),
(4333, 'Sesi Pembukaan', NULL, NULL, 'Acara pembukaan kegiatan dengan sambutan dan pengenalan peserta', NULL, NULL, '09:00', '16:00', 27322),
(4334, 'Sesi Pembukaan', NULL, NULL, 'Acara pembukaan kegiatan dengan sambutan dan pengenalan peserta', NULL, NULL, '09:00', '16:00', 27322),
(4335, 'afessfefes', '27-07-2023', 'danielsidauruk11@gmail.com', 'asfeasefafse', '27-07-2023', 'danielsidauruk11@gmail.com', '00:11', '00:11', NULL),
(4336, 'gaes', '27-07-2023', 'danielsidauruk11@gmail.com', 'gaesasg', '27-07-2023', 'danielsidauruk11@gmail.com', '00:11', '03:11', NULL),
(4337, 'afessfefes', '27-07-2023', 'danielsidauruk11@gmail.com', 'asfeasefafse', '27-07-2023', 'danielsidauruk11@gmail.com', '00:11', '00:11', NULL),
(4338, 'gaes', '27-07-2023', 'danielsidauruk11@gmail.com', 'gaesasg', '27-07-2023', 'danielsidauruk11@gmail.com', '00:11', '03:11', NULL),
(4339, 'afessfefes', '27-07-2023', 'danielsidauruk11@gmail.com', 'asfeasefafse', '27-07-2023', 'danielsidauruk11@gmail.com', '00:11', '00:11', 1690391378381763),
(4340, 'gaes', '27-07-2023', 'danielsidauruk11@gmail.com', 'gaesasg', '27-07-2023', 'danielsidauruk11@gmail.com', '00:11', '03:11', 1690391378381763),
(4341, 'afessfefes', '27-07-2023', 'danielsidauruk11@gmail.com', 'asfeasefafse', '27-07-2023', 'danielsidauruk11@gmail.com', '00:11', '00:11', NULL),
(4342, 'gaes', '27-07-2023', 'danielsidauruk11@gmail.com', 'gaesasg', '27-07-2023', 'danielsidauruk11@gmail.com', '00:11', '03:11', NULL),
(4343, 'afessfefes', '27-07-2023', 'danielsidauruk11@gmail.com', 'asfeasefafse', '27-07-2023', 'danielsidauruk11@gmail.com', '00:11', '00:11', 1343),
(4344, 'gaes', '27-07-2023', 'danielsidauruk11@gmail.com', 'gaesasg', '27-07-2023', 'danielsidauruk11@gmail.com', '00:11', '03:11', 1343);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` varchar(255) NOT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `kelas` varchar(255) DEFAULT NULL,
  `nama_lengkap` varchar(255) DEFAULT NULL,
  `nim` varchar(255) DEFAULT NULL,
  `no_hp` varchar(255) DEFAULT NULL,
  `periode_mpt` varchar(255) DEFAULT NULL,
  `point_mpt` int(11) DEFAULT NULL,
  `prodi` varchar(255) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `status_mpt` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `created_at`, `created_by`, `email`, `image`, `kelas`, `nama_lengkap`, `nim`, `no_hp`, `periode_mpt`, `point_mpt`, `prodi`, `semester`, `status_mpt`, `updated_at`, `updated_by`, `role`) VALUES
('1129122', '2023-06-25T12:00:00', 'Admin001', 'asdfadfs@gmail.com', '', 'mwaf', 'daniel', '1231241', '12412', 'asa', 5, 'Teknik Informatika', 124142, 'a', '22-07-2023', 'asdfadfs@gmail.com', NULL),
('112912s2', '2023-06-25T12:00:00', 'Admin001', 'hafizs', 'https://example.com/profile_image.jpg', 'A', 'hafizs', '123456789', '08123456789', '2023-2024', 100, 'Teknik Informatika', 5, 'Aktif', '2023-06-26T10:30:00', 'Admin002', NULL),
('11912232', '2023-06-25T12:00:00', 'Admin001', 'john.doe@example.com', 'https://example.com/profile_image.jpg', 'A', 'hafizs', '123456789', '08123456789', '2023-2024', 100, 'Teknik Informatika', 5, 'Aktif', '2023-06-26T10:30:00', 'Admin002', NULL),
('14342', '2023-06-25T12:00:00', 'Admin001', 'hafizs', 'https://example.com/profile_image.jpg', 'A', 'hafizs', '123456789', '08123456789', '2023-2024', 100, 'Teknik Informatika', 5, 'Aktif', '2023-06-26T10:30:00', 'Admin002', NULL),
('19111', '2023-06-25T12:00:00', 'Admin001', 'john.doe@example.com', 'https://example.com/profile_image.jpg', 'A', 'John Doe', '123456789', '08123456789', '2023-2024', 100, 'Teknik Informatika', 5, 'Aktif', '2023-06-26T10:30:00', 'Admin002', 'mahasiswa'),
('191112', '2023-06-25T12:00:00', 'Admin001', 'john.doe@example.com', 'https://example.com/profile_image.jpg', 'A', 'John Doe', '123456789', '08123456789', '2023-2024', 100, 'Teknik Informatika', 5, 'Aktif', '2023-06-26T10:30:00', 'Admin002', NULL),
('89', '22-07-2023', 'danielsidauruk11@gmail.com', 'danielsidauruk11@gmail.com', '', 'MW-B Pagi', 'Daniel Hamonangan Sidauruk', '19111', '085254065909', '', 0, 'Teknik Informatika', 7, '', '22-07-2023', 'danielsidauruk11@gmail.com', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_dokumentasi_kegiatan`
--

CREATE TABLE `user_dokumentasi_kegiatan` (
  `user_id` bigint(20) NOT NULL,
  `foto_dokumentasi_kegiatan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user_dokumentasi_kegiatan`
--

INSERT INTO `user_dokumentasi_kegiatan` (`user_id`, `foto_dokumentasi_kegiatan`) VALUES
(892, 'http://example.com/foto1.jpg'),
(8922, 'http://example.com/foto1.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_ormawa`
--

CREATE TABLE `user_ormawa` (
  `id_user` varchar(255) NOT NULL,
  `ormawa_id_ormawa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user_ormawa`
--

INSERT INTO `user_ormawa` (`id_user`, `ormawa_id_ormawa`) VALUES
('19111', 0),
('19111', 0),
('191112', 0),
('191112', 0),
('11912232', 0),
('11912232', 0),
('14342', 0),
('1129122', 27),
('89', 234451);

-- --------------------------------------------------------

--
-- Struktur dari tabel `usulan`
--

CREATE TABLE `usulan` (
  `id_usulan` bigint(20) NOT NULL,
  `bentuk_kegiatan` varchar(255) DEFAULT NULL,
  `bentuk_pelaksanaan_kegiatan` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `deskripsi_kegiatan` varchar(255) DEFAULT NULL,
  `file_usulan_kegiatan` varchar(255) DEFAULT NULL,
  `foto_linimasa_kegiatan` varchar(255) DEFAULT NULL,
  `foto_postingan_kegiatan` varchar(255) DEFAULT NULL,
  `foto_surat_undangan_kegiatan` varchar(255) DEFAULT NULL,
  `foto_tempat_kegiatan` varchar(255) DEFAULT NULL,
  `jumlah_partisipan` varchar(255) DEFAULT NULL,
  `kategori_bentuk_kegiatan` varchar(255) DEFAULT NULL,
  `kategori_jumlah_partisipan` varchar(255) DEFAULT NULL,
  `kategori_total_pendanaan` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `latar_belakang` varchar(3000) DEFAULT NULL,
  `manfaat_kegiatan` varchar(255) DEFAULT NULL,
  `nama_kegiatan` varchar(255) DEFAULT NULL,
  `pembiayaan` varchar(255) DEFAULT NULL,
  `penutup` varchar(255) DEFAULT NULL,
  `perlengkapan_dan_peralatan` varchar(255) DEFAULT NULL,
  `rencana_anggaran_kegiatan` varchar(255) DEFAULT NULL,
  `roles` varchar(255) DEFAULT NULL,
  `status_usulan` varchar(255) DEFAULT NULL,
  `tanda_tangan_ormawa` varchar(255) DEFAULT NULL,
  `tanda_tangan_pembina` varchar(255) DEFAULT NULL,
  `tanggal_keberangkatan` varchar(255) DEFAULT NULL,
  `tanggal_kepulangan` varchar(255) DEFAULT NULL,
  `tanggal_mulai_kegiatan` varchar(255) DEFAULT NULL,
  `tanggal_selesai_kegiatan` varchar(255) DEFAULT NULL,
  `target_kegiatan` varchar(255) DEFAULT NULL,
  `target_pencapaian_kegiatan` varchar(255) DEFAULT NULL,
  `tempat_kegiatan` varchar(255) DEFAULT NULL,
  `total_biaya` int(11) DEFAULT NULL,
  `total_pendanaan` varchar(255) DEFAULT NULL,
  `tujuan_kegiatan` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `validasi_pembina` varchar(255) DEFAULT NULL,
  `waktu_dan_tempat_pelaksanaan` varchar(255) DEFAULT NULL,
  `waktu_mulai_kegiatan` varchar(255) DEFAULT NULL,
  `waktu_selesai_kegiatan` varchar(255) DEFAULT NULL,
  `id_ormawa` int(11) DEFAULT NULL,
  `id_user` varchar(255) DEFAULT NULL,
  `id_revisi_usulan` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `usulan`
--

INSERT INTO `usulan` (`id_usulan`, `bentuk_kegiatan`, `bentuk_pelaksanaan_kegiatan`, `created_at`, `created_by`, `deskripsi_kegiatan`, `file_usulan_kegiatan`, `foto_linimasa_kegiatan`, `foto_postingan_kegiatan`, `foto_surat_undangan_kegiatan`, `foto_tempat_kegiatan`, `jumlah_partisipan`, `kategori_bentuk_kegiatan`, `kategori_jumlah_partisipan`, `kategori_total_pendanaan`, `keterangan`, `latar_belakang`, `manfaat_kegiatan`, `nama_kegiatan`, `pembiayaan`, `penutup`, `perlengkapan_dan_peralatan`, `rencana_anggaran_kegiatan`, `roles`, `status_usulan`, `tanda_tangan_ormawa`, `tanda_tangan_pembina`, `tanggal_keberangkatan`, `tanggal_kepulangan`, `tanggal_mulai_kegiatan`, `tanggal_selesai_kegiatan`, `target_kegiatan`, `target_pencapaian_kegiatan`, `tempat_kegiatan`, `total_biaya`, `total_pendanaan`, `tujuan_kegiatan`, `updated_at`, `updated_by`, `validasi_pembina`, `waktu_dan_tempat_pelaksanaan`, `waktu_mulai_kegiatan`, `waktu_selesai_kegiatan`, `id_ormawa`, `id_user`, `id_revisi_usulan`) VALUES
(27, 'Workshop', 'Kelas dan praktik langsung', '2023-06-25T12:00:00', 'Admin001', 'Workshop seni rupa untuk mengembangkan keterampilan seni peserta', 'https://example.com/file_usulan_kegiatan.pdf', 'https://example.com/foto_linimasa.jpg', 'https://example.com/foto_postingan.jpg', 'https://example.com/foto_surat_undangan.jpg', 'https://example.com/foto_tempat_kegiatan.jpg', '30', 'Seni', 'Sedang', 'Sedang', 'Pembiayaan tambahan akan didapatkan dari sponsor luar', 'Minat seni rupa di kalangan mahasiswa meningkat', 'Peserta dapat mengembangkan bakat seni dan menyalurkan ekspresi kreatif', 'Workshop Seni Rupa', '1000000', 'Terima kasih atas perhatian dan dukungannya', 'Kertas, cat, kuas, alat lukis', 'Penyewaan ruangan: 300000, Konsumsi: 200000, Materi pelatihan: 200000, Perlengkapan: 100000', 'Admin', 'Disetujui', 'TandaTanganORMAWA001', 'TandaTanganPembina001', '2023-07-09', '2023-07-13', '2023-07-10', '2023-07-12', 'Meningkatkan keterampilan seni peserta', 'Peserta mampu membuat karya seni yang lebih berkualitas', NULL, NULL, '800000', 'Mengembangkan kreativitas dan keterampilan seni mahasiswa', '2023-06-26T10:30:00', 'Admin002', 'true', '10-12 Juli 2023, Gedung Serba Guna', '09:00', '16:00', NULL, NULL, NULL),
(28, 'Workshop', 'Kelas dan praktik langsung', '2023-06-25T12:00:00', 'Admin001', 'Workshop seni rupa untuk mengembangkan keterampilan seni peserta', 'https://example.com/file_usulan_kegiatan.pdf', 'https://example.com/foto_linimasa.jpg', 'https://example.com/foto_postingan.jpg', 'https://example.com/foto_surat_undangan.jpg', 'https://example.com/foto_tempat_kegiatan.jpg', '30', 'Seni', 'Sedang', 'Sedang', 'Pembiayaan tambahan akan didapatkan dari sponsor luar', 'sadsd', 'Peserta dapat mengembangkan bakat seni dan menyalurkan ekspresi kreatif', 'Workshop Seni aRupa', '1000000', 'Terima kasih atas perhatian dan dukungannya', 'Kertas, cat, kuas, alat lukis', 'Penyewaan ruangan: 300000, Konsumsi: 200000, Materi pelatihan: 200000, Perlengkapan: 100000', 'Admin', 'Disetujui', 'TandaTanganORMAWA001', 'TandaTanganPembina001', '2023-07-09', '2023-07-13', '2023-07-10', '2023-07-12', 'Meningkatkan keterampilan seni peserta', 'Peserta mampu membuat karya seni yang lebih berkualitas', NULL, NULL, '800000', 'Mengembangkan kreativitas dan keterampilan seni mahasiswa', '2023-06-26T10:30:00', 'Admin002', 'true', '10-12 Juli 2023, Gedung Serba Guna', '09:00', '16:00', 123, '19111', NULL),
(123, 'Workshop', 'Kelas dan praktik langsung', '2023-06-25T12:00:00', 'Admin001', 'Workshop seni rupa untuk mengembangkan keterampilan seni peserta', 'https://example.com/file_usulan_kegiatan.pdf', 'https://example.com/foto_linimasa.jpg', 'https://example.com/foto_postingan.jpg', 'https://example.com/foto_surat_undangan.jpg', 'https://example.com/foto_tempat_kegiatan.jpg', '30', 'Seni', 'Sedang', 'Sedang', 'Pembiayaan tambahan akan didapatkan dari sponsor luar', 'Minat seni rupa di kalangan mahasiswa meningkat', 'Peserta dapat mengembangkan bakat seni dan menyalurkan ekspresi kreatif', 'Workshop Seni Rupa', '1000000', 'Terima kasih atas perhatian dan dukungannya', 'Kertas, cat, kuas, alat lukis', 'Penyewaan ruangan: 300000, Konsumsi: 200000, Materi pelatihan: 200000, Perlengkapan: 100000', 'Admin', 'Disetujui', 'TandaTanganORMAWA001', 'TandaTanganPembina001', '2023-07-09', '2023-07-13', '2023-07-10', '2023-07-12', 'Meningkatkan keterampilan seni peserta', 'Peserta mampu membuat karya seni yang lebih berkualitas', NULL, NULL, '800000', 'Mengembangkan kreativitas dan keterampilan seni mahasiswa', '2023-06-26T10:30:00', 'Admin002', 'true', '10-12 Juli 2023, Gedung Serba Guna', '09:00', '16:00', NULL, NULL, NULL),
(221, 'Workshop', 'Kelas dan praktik langsung', '2023-06-25T12:00:00', 'Admin001', 'Workshop seni rupa untuk mengembangkan keterampilan seni peserta', 'https://example.com/file_usulan_kegiatan.pdf', 'https://example.com/foto_linimasa.jpg', 'https://example.com/foto_postingan.jpg', 'https://example.com/foto_surat_undangan.jpg', 'https://example.com/foto_tempat_kegiatan.jpg', '30', 'Seni', 'Sedang', 'Sedang', 'Pembiayaan tambahan akan didapatkan dari sponsor luar', 'sadsd', 'Peserta dapat mengembangkan bakat seni dan menyalurkan ekspresi kreatif', 'Workshop Seni aRupa', '1000000', 'Terima kasih atas perhatian dan dukungannya', 'Kertas, cat, kuas, alat lukis', 'Penyewaan ruangan: 300000, Konsumsi: 200000, Materi pelatihan: 200000, Perlengkapan: 100000', 'Admin', 'Disetujui', 'TandaTanganORMAWA001', 'TandaTanganPembina001', '2023-07-09', '2023-07-13', '2023-07-10', '2023-07-12', 'Meningkatkan keterampilan seni peserta', 'Peserta mampu membuat karya seni yang lebih berkualitas', NULL, NULL, '800000', 'Mengembangkan kreativitas dan keterampilan seni mahasiswa', '2023-06-26T10:30:00', 'Admin002', 'true', '10-12 Juli 2023, Gedung Serba Guna', '09:00', '16:00', NULL, NULL, NULL),
(272, 'Workshop', NULL, NULL, NULL, 'Workshop seni rupa untuk mengembangkan keterampilan seni peserta', NULL, NULL, NULL, NULL, NULL, '30', 'Seni', 'Sedang', 'Sedang', 'Pembiayaan tambahan akan didapatkan dari sponsor luar', NULL, NULL, 'Workshop Seni aRupa', '1000000', NULL, NULL, NULL, NULL, NULL, 'TandaTanganORMAWA001', NULL, '2023-07-09', '2023-07-13', '2023-07-10', '2023-07-12', 'Meningkatkan keterampilan seni peserta', NULL, NULL, NULL, '800000', NULL, NULL, NULL, NULL, NULL, '09:00', '16:00', 123, '19111', 322),
(282, 'Workshop', 'Kelas dan praktik langsung', '2023-06-25T12:00:00', 'Admin001', 'Workshop seni rupa untuk mengembangkan keterampilan seni peserta', 'https://example.com/file_usulan_kegiatan.pdf', 'https://example.com/foto_linimasa.jpg', 'https://example.com/foto_postingan.jpg', 'https://example.com/foto_surat_undangan.jpg', 'https://example.com/foto_tempat_kegiatan.jpg', '30', 'Seni', 'Sedang', 'Sedang', 'Pembiayaan tambahan akan didapatkan dari sponsor luar', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Aliquam sem fringilla ut morbi tincidunt augue. Consectetur adipiscing elit pellentesque habitant morbi tristique. Ac tortor dignissim convallis aenean et tortor at. Posuere lorem ipsum dolor sit amet consectetur. Porta nibh venenatis cras sed felis eget velit aliquet. Ac tincidunt vitae semper quis lectus nulla at. Sociis natoque penatibus et magnis dis. Eget arcu dictum varius duis at. Sit amet nulla facilisi morbi tempus iaculis urna id volutpat. Eget mi proin sed libero enim sed faucibus turpis.Etiam tempor orci eu lobortis. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Egestas quis ipsum suspendisse ultrices. Ullamcorper sit amet risus nullam eget felis eget nunc. Sed vulputate mi sit amet mauris commodo quis imperdiet massa. Egestas pretium aenean pharetra magna ac placerat vestibulum lectus. Interdum consectetur libero id faucibus nisl. Blandit volutpat maecenas volutpat blandit aliquam. Integer eget aliquet nibh praesent tristique magna sit. Eu facilisis sed odio morbi quis commodo odio aenean. Nisi porta lorem mollis aliquam ut porttitor leo. Fringilla urna porttitor rhoncus dolor purus non. Vitae suscipit tellus mauris a diam. Interdum varius sit amet mattis vulputate enim nulla aliquet. Amet nulla facilisi morbi tempus iaculis urna id volutpat lacus. Maecenas accumsan lacus vel facilisis.Nunc faucibus a pellentesque sit amet porttitor eget dolor morbi. Egestas integer eget aliquet nibh praesent tristique magna sit. Urna nec tincidunt praesent semper feugiat nibh sed pulvinar. Quis lectus nulla at volutpat diam ut. At imperdiet dui accumsan sit. Tellus at urna condimentum mattis pellentesque id nibh tortor id. Neque vitae tempus quam pellentesque nec nam. Id cursus metus aliquam eleifend. Mauris sit amet massa vitae tortor condimentum. Vitae proin sagittis nisl rhoncus mattis rhoncus urna neque. Volutpat lacus laoreet non curabitur.Non nisi est sit amet facilisis magna etiam tempor orci. Egestas sed tempus urna et pharetra pharetra. Sagittis aliquam malesuada bibendum arcu. Ullamcorper velit sed ullamcorper morbi tincidunt ornare. Dui accumsan sit amet nulla facilisi morbi tempus. Et egestas quis ipsum suspendisse. Aliquam vestibulum morbi blandit cursus risus at. Donec enim diam vulputate ut pharetra sit. Scelerisque felis imperdiet proin fermentum leo vel orci porta. Eu turpis egestas pretium aenean pharetra magna ac. Ut faucibus pulvinar elementum integer enim neque volutpat. Dictum at tempor commodo ullamcorper a lacus. Ut faucibus pulvinar elementum integer. Odio euismod lacinia at quis risus sed vulputate odio', 'Peserta dapat mengembangkan bakat seni dan menyalurkan ekspresi kreatif', 'Workshop Seni aRupa', '1000000', 'Terima kasih atas perhatian dan dukungannya', 'Kertas, cat, kuas, alat lukis', 'Penyewaan ruangan: 300000, Konsumsi: 200000, Materi pelatihan: 200000, Perlengkapan: 100000', 'Admin', 'Disetujui', 'TandaTanganORMAWA001', 'TandaTanganPembina001', '2023-07-09', '2023-07-13', '2023-07-10', '2023-07-12', 'Meningkatkan keterampilan seni peserta', 'Peserta mampu membuat karya seni yang lebih berkualitas', NULL, NULL, '800000', 'Mengembangkan kreativitas dan keterampilan seni mahasiswa', '2023-06-26T10:30:00', 'Admin002', 'true', '10-12 Juli 2023, Gedung Serba Guna', '09:00', '16:00', 123, '19111', NULL),
(1234, 'Workshop', 'Kelas dan praktik langsung', '2023-06-25T12:00:00', 'Admin001', 'Workshop seni rupa untuk mengembangkan keterampilan seni peserta', 'https://example.com/file_usulan_kegiatan.pdf', 'https://example.com/foto_linimasa.jpg', 'https://example.com/foto_postingan.jpg', 'https://example.com/foto_surat_undangan.jpg', 'https://example.com/foto_tempat_kegiatan.jpg', '30', 'Seni', 'Sedang', 'Sedang', 'Pembiayaan tambahan akan didapatkan dari sponsor luar', 'Minat seni rupa di kalangan mahasiswa meningkat', 'Peserta dapat mengembangkan bakat seni dan menyalurkan ekspresi kreatif', 'Workshop Seni Rupa', '1000000', 'Terima kasih atas perhatian dan dukungannya', 'Kertas, cat, kuas, alat lukis', 'Penyewaan ruangan: 300000, Konsumsi: 200000, Materi pelatihan: 200000, Perlengkapan: 100000', 'Admin', 'Disetujui', 'TandaTanganORMAWA001', 'TandaTanganPembina001', '2023-07-09', '2023-07-13', '2023-07-10', '2023-07-12', 'Meningkatkan keterampilan seni peserta', 'Peserta mampu membuat karya seni yang lebih berkualitas', NULL, NULL, '800000', 'Mengembangkan kreativitas dan keterampilan seni mahasiswa', '2023-06-26T10:30:00', 'Admin002', 'true', '10-12 Juli 2023, Gedung Serba Guna', '09:00', '16:00', NULL, NULL, NULL),
(1343, 'gasegeasgse', '', '27-07-2023', 'danielsidauruk11@gmail.com', 'Daniel Sidauruk\n1. awokawok\n2. awokaowk\n3. awokawok\n4. awokawok\n5. awokawok\n6. awokawok\n7. awokawok\n8. awokawok', 'https://storage.googleapis.com/mipoka.appspot.com/Usulan Kegiatan Test Generate Webb - 27-07-2023.docx', 'https://firebasestorage.googleapis.com/v0/b/mipoka.appspot.com/o/1690391571402486main-qimg-aab1cd50d148f2ab9553b92ae3ad2ad3.webp?alt=media&token=e85b4429-658b-493f-b64e-ff9f99c8c5d2', 'https://firebasestorage.googleapis.com/v0/b/mipoka.appspot.com/o/169039156895167316901573471473711689958043842547New-2023-Bentley-Continental-GT-S-V8.jpeg?alt=media&token=fabab9b9-5c37-4202-81a2-ddf179842e9b', 'https://firebasestorage.googleapis.com/v0/b/mipoka.appspot.com/o/16903915737996981690157337822902main-qimg-f43bb2c1ee9a6e1ebeb47359ed7d4396-lq.jpeg?alt=media&token=7e3563c8-2b18-4ba4-b701-e7d37fabf768', 'https://firebasestorage.googleapis.com/v0/b/mipoka.appspot.com/o/1690391574264581main-qimg-0a409f9bdae8f5b425281ef4ff30c1af.jpeg?alt=media&token=9a2ff92a-1b1a-4c73-80fb-38c7ef6b33dc', '20', 'Luring', 'Dll', 'Dll', 'aesfasefasef', 'esgaesegs', 'agsagseagse', 'Test Generate Webb', 'Mandiri', 'agesgaesgaesesag', 'gasegesgase', 'gesaasgeages', '', 'Tertunda', 'https://firebasestorage.googleapis.com/v0/b/mipoka.appspot.com/o/signature1690391459225135.png?alt=media&token=495f9c6b-feb7-4b57-b371-3274edafb395', '', '', '', '27-07-2023', '27-07-2023', 'agsaeagseagse', '', 'gfjghfhjgjf', 73499, '20000', 'gsegsesge', '27-07-2023', 'danielsidauruk11@gmail.com', 'Tertunda', 'geasgaesgaes', '00:10', '00:10', 234451, '89', NULL),
(2823, 'Workshop', 'Kelas dan praktik langsung', '2023-06-25T12:00:00', 'Admin001', 'Workshop seni rupa untuk mengembangkan keterampilan seni peserta', 'https://example.com/file_usulan_kegiatan.pdf', 'https://example.com/foto_linimasa.jpg', 'https://example.com/foto_postingan.jpg', 'https://example.com/foto_surat_undangan.jpg', 'https://example.com/foto_tempat_kegiatan.jpg', '30', 'Seni', 'Sedang', 'Sedang', 'Pembiayaan tambahan akan didapatkan dari sponsor luar', 'sadsd', 'Peserta dapat mengembangkan bakat seni dan menyalurkan ekspresi kreatif', 'Workshop Seni aRupa', '1000000', 'Terima kasih atas perhatian dan dukungannya', 'Kertas, cat, kuas, alat lukis', 'Penyewaan ruangan: 300000, Konsumsi: 200000, Materi pelatihan: 200000, Perlengkapan: 100000', 'Admin', 'Disetujui', 'TandaTanganORMAWA001', 'TandaTanganPembina001', '2023-07-09', '2023-07-13', '2023-07-10', '2023-07-12', 'Meningkatkan keterampilan seni peserta', 'Peserta mampu membuat karya seni yang lebih berkualitas', NULL, NULL, '800000', 'Mengembangkan kreativitas dan keterampilan seni mahasiswa', '2023-06-26T10:30:00', 'Admin002', 'true', '10-12 Juli 2023, Gedung Serba Guna', '09:00', '16:00', NULL, NULL, NULL),
(27322, 'Workshop', NULL, NULL, NULL, 'Workshop seni rupa untuk mengembangkan keterampilan seni peserta', NULL, NULL, NULL, NULL, NULL, '30', 'Seni', 'Sedang', 'Sedang', 'Pembiayaan tambahan akan didapatkan dari sponsor luar', NULL, NULL, 'Workshop Seni aRupa', '1000000', NULL, NULL, NULL, NULL, NULL, 'TandaTanganORMAWA001', NULL, '2023-07-09', '2023-07-13', '2023-07-10', '2023-07-12', 'Meningkatkan keterampilan seni peserta', NULL, NULL, NULL, '800000', NULL, NULL, NULL, NULL, NULL, '09:00', '16:00', 123, '19111', 322),
(27672, 'Workshop', NULL, NULL, NULL, 'Workshop seni rupa untuk mengembangkan keterampilan seni peserta', NULL, NULL, NULL, NULL, NULL, '30', 'Seni', 'Sedang', 'Sedang', 'Pembiayaan tambahan akan didapatkan dari sponsor luar', NULL, NULL, 'Workshop Seni aRupa', '1000000', NULL, NULL, NULL, NULL, NULL, 'TandaTanganORMAWA001', NULL, '2023-07-09', '2023-07-13', '2023-07-10', '2023-07-12', 'Meningkatkan keterampilan seni peserta', NULL, NULL, NULL, '800000', NULL, NULL, NULL, NULL, NULL, '09:00', '16:00', 123, '19111', 322),
(28232, 'Workshop', 'Kelas dan praktik langsung', '2023-06-25T12:00:00', 'Admin001', 'Workshop seni rupa untuk mengembangkan keterampilan seni peserta', 'https://example.com/file_usulan_kegiatan.pdf', 'https://example.com/foto_linimasa.jpg', 'https://example.com/foto_postingan.jpg', 'https://example.com/foto_surat_undangan.jpg', 'https://example.com/foto_tempat_kegiatan.jpg', '30', 'Seni', 'Sedang', 'Sedang', 'Pembiayaan tambahan akan didapatkan dari sponsor luar', 'sadsd', 'Peserta dapat mengembangkan bakat seni dan menyalurkan ekspresi kreatif', 'Workshop Seni aRupa', '1000000', 'Terima kasih atas perhatian dan dukungannya', 'Kertas, cat, kuas, alat lukis', 'Penyewaan ruangan: 300000, Konsumsi: 200000, Materi pelatihan: 200000, Perlengkapan: 100000', 'Admin', 'Disetujui', 'TandaTanganORMAWA001', 'TandaTanganPembina001', '2023-07-09', '2023-07-13', '2023-07-10', '2023-07-12', 'Meningkatkan keterampilan seni peserta', 'Peserta mampu membuat karya seni yang lebih berkualitas', NULL, NULL, '800000', 'Mengembangkan kreativitas dan keterampilan seni mahasiswa', '2023-06-26T10:30:00', 'Admin002', 'true', '10-12 Juli 2023, Gedung Serba Guna', '09:00', '16:00', NULL, '1129122', NULL),
(232321, 'Workshop', 'Kelas dan praktik langsung', '2023-06-25T12:00:00', 'Admin001', 'Workshop seni rupa untuk mengembangkan keterampilan seni peserta', 'https://example.com/file_usulan_kegiatan.pdf', 'https://example.com/foto_linimasa.jpg', 'https://example.com/foto_postingan.jpg', 'https://example.com/foto_surat_undangan.jpg', 'https://example.com/foto_tempat_kegiatan.jpg', '30', 'Seni', 'Sedang', 'Sedang', 'Pembiayaan tambahan akan didapatkan dari sponsor luar', 'sadsd', 'Peserta dapat mengembangkan bakat seni dan menyalurkan ekspresi kreatif', 'Workshop Seni aRupa', '1000000', 'Terima kasih atas perhatian dan dukungannya', 'Kertas, cat, kuas, alat lukis', 'Penyewaan ruangan: 300000, Konsumsi: 200000, Materi pelatihan: 200000, Perlengkapan: 100000', 'Admin', 'Disetujui', 'TandaTanganORMAWA001', 'TandaTanganPembina001', '2023-07-09', '2023-07-13', '2023-07-10', '2023-07-12', 'Meningkatkan keterampilan seni peserta', 'Peserta mampu membuat karya seni yang lebih berkualitas', NULL, NULL, '800000', 'Mengembangkan kreativitas dan keterampilan seni mahasiswa', '2023-06-26T10:30:00', 'Admin002', 'true', '10-12 Juli 2023, Gedung Serba Guna', '09:00', '16:00', NULL, NULL, NULL),
(244522, 'Workshop', 'Kelas dan praktik langsung', '2023-06-25T12:00:00', 'Admin001', 'Workshop seni rupa untuk mengembangkan keterampilan seni peserta', 'https://example.com/file_usulan_kegiatan.pdf', 'https://example.com/foto_linimasa.jpg', 'https://example.com/foto_postingan.jpg', 'https://example.com/foto_surat_undangan.jpg', 'https://example.com/foto_tempat_kegiatan.jpg', '30', 'Seni', 'Sedang', 'Sedang', 'Pembiayaan tambahan akan didapatkan dari sponsor luar', 'sadsd', 'Peserta dapat mengembangkan bakat seni dan menyalurkan ekspresi kreatif', 'Workshop Seni aRupa', '1000000', 'Terima kasih atas perhatian dan dukungannya', 'Kertas, cat, kuas, alat lukis', 'Penyewaan ruangan: 300000, Konsumsi: 200000, Materi pelatihan: 200000, Perlengkapan: 100000', 'Admin', 'Disetujui', 'TandaTanganORMAWA001', 'TandaTanganPembina001', '2023-07-09', '2023-07-13', '2023-07-10', '2023-07-12', 'Meningkatkan keterampilan seni peserta', 'Peserta mampu membuat karya seni yang lebih berkualitas', NULL, NULL, '800000', 'Mengembangkan kreativitas dan keterampilan seni mahasiswa', '2023-06-26T10:30:00', 'Admin002', 'true', '10-12 Juli 2023, Gedung Serba Guna', '09:00', '16:00', 123, '1129122', NULL),
(282322, 'Workshop', 'Kelas dan praktik langsung', '2023-06-25T12:00:00', 'Admin001', 'Workshop seni rupa untuk mengembangkan keterampilan seni peserta', 'https://example.com/file_usulan_kegiatan.pdf', 'https://example.com/foto_linimasa.jpg', 'https://example.com/foto_postingan.jpg', 'https://example.com/foto_surat_undangan.jpg', 'https://example.com/foto_tempat_kegiatan.jpg', '30', 'Seni', 'Sedang', 'Sedang', 'Pembiayaan tambahan akan didapatkan dari sponsor luar', 'sadsd', 'Peserta dapat mengembangkan bakat seni dan menyalurkan ekspresi kreatif', 'Workshop Seni aRupa', '1000000', 'Terima kasih atas perhatian dan dukungannya', 'Kertas, cat, kuas, alat lukis', 'Penyewaan ruangan: 300000, Konsumsi: 200000, Materi pelatihan: 200000, Perlengkapan: 100000', 'Admin', 'Disetujui', 'TandaTanganORMAWA001', 'TandaTanganPembina001', '2023-07-09', '2023-07-13', '2023-07-10', '2023-07-12', 'Meningkatkan keterampilan seni peserta', 'Peserta mampu membuat karya seni yang lebih berkualitas', NULL, NULL, '800000', 'Mengembangkan kreativitas dan keterampilan seni mahasiswa', '2023-06-26T10:30:00', 'Admin002', 'true', '10-12 Juli 2023, Gedung Serba Guna', '09:00', '16:00', 123, '1129122', NULL),
(512367, 'Workshop', 'Kelas dan praktik langsung', '2023-06-25T12:00:00', 'Admin001', 'Workshop seni rupa untuk mengembangkan keterampilan seni peserta', 'https://example.com/file_usulan_kegiatan.pdf', 'https://example.com/foto_linimasa.jpg', 'https://example.com/foto_postingan.jpg', 'https://example.com/foto_surat_undangan.jpg', 'https://example.com/foto_tempat_kegiatan.jpg', '30', 'Seni', 'Sedang', 'Sedang', 'Pembiayaan tambahan akan didapatkan dari sponsor luar', 'Minat seni rupa di kalangan mahasiswa meningkat', 'Peserta dapat mengembangkan bakat seni dan menyalurkan ekspresi kreatif', 'Workshop Seni Rupa', '1000000', 'Terima kasih atas perhatian dan dukungannya', 'Kertas, cat, kuas, alat lukis', 'Penyewaan ruangan: 300000, Konsumsi: 200000, Materi pelatihan: 200000, Perlengkapan: 100000', 'Admin', 'Disetujui', 'TandaTanganORMAWA001', 'TandaTanganPembina001', '2023-07-09', '2023-07-13', '2023-07-10', '2023-07-12', 'Meningkatkan keterampilan seni peserta', 'Peserta mampu membuat karya seni yang lebih berkualitas', NULL, NULL, '800000', 'Mengembangkan kreativitas dan keterampilan seni mahasiswa', '2023-06-26T10:30:00', 'Admin002', 'true', '10-12 Juli 2023, Gedung Serba Guna', '09:00', '16:00', NULL, NULL, NULL),
(2323221, 'Workshop', 'Kelas dan praktik langsung', '2023-06-25T12:00:00', 'Admin001', 'Workshop seni rupa untuk mengembangkan keterampilan seni peserta', 'https://example.com/file_usulan_kegiatan.pdf', 'https://example.com/foto_linimasa.jpg', 'https://example.com/foto_postingan.jpg', 'https://example.com/foto_surat_undangan.jpg', 'https://example.com/foto_tempat_kegiatan.jpg', '30', 'Seni', 'Sedang', 'Sedang', 'Pembiayaan tambahan akan didapatkan dari sponsor luar', 'sadsd', 'Peserta dapat mengembangkan bakat seni dan menyalurkan ekspresi kreatif', 'Workshop Seni aRupa', '1000000', 'Terima kasih atas perhatian dan dukungannya', 'Kertas, cat, kuas, alat lukis', 'Penyewaan ruangan: 300000, Konsumsi: 200000, Materi pelatihan: 200000, Perlengkapan: 100000', 'Admin', 'Disetujui', 'TandaTanganORMAWA001', 'TandaTanganPembina001', '2023-07-09', '2023-07-13', '2023-07-10', '2023-07-12', 'Meningkatkan keterampilan seni peserta', 'Peserta mampu membuat karya seni yang lebih berkualitas', NULL, NULL, '800000', 'Mengembangkan kreativitas dan keterampilan seni mahasiswa', '2023-06-26T10:30:00', 'Admin002', 'true', '10-12 Juli 2023, Gedung Serba Guna', '09:00', '16:00', NULL, NULL, NULL),
(2823222, 'Workshop', 'Kelas dan praktik langsung', '2023-06-25T12:00:00', 'Admin001', 'Workshop seni rupa untuk mengembangkan keterampilan seni peserta', 'https://example.com/file_usulan_kegiatan.pdf', 'https://example.com/foto_linimasa.jpg', 'https://example.com/foto_postingan.jpg', 'https://example.com/foto_surat_undangan.jpg', 'https://example.com/foto_tempat_kegiatan.jpg', '30', 'Seni', 'Sedang', 'Sedang', 'Pembiayaan tambahan akan didapatkan dari sponsor luar', 'sadsd', 'Peserta dapat mengembangkan bakat seni dan menyalurkan ekspresi kreatif', 'Workshop Seni aRupa', '1000000', 'Terima kasih atas perhatian dan dukungannya', 'Kertas, cat, kuas, alat lukis', 'Penyewaan ruangan: 300000, Konsumsi: 200000, Materi pelatihan: 200000, Perlengkapan: 100000', 'Admin', 'Disetujui', 'TandaTanganORMAWA001', 'TandaTanganPembina001', '2023-07-09', '2023-07-13', '2023-07-10', '2023-07-12', 'Meningkatkan keterampilan seni peserta', 'Peserta mampu membuat karya seni yang lebih berkualitas', NULL, NULL, '800000', 'Mengembangkan kreativitas dan keterampilan seni mahasiswa', '2023-06-26T10:30:00', 'Admin002', 'true', '10-12 Juli 2023, Gedung Serba Guna', '09:00', '16:00', 123, '1129122', NULL),
(1690391378381763, 'gasegeasgse', '', '27-07-2023', 'danielsidauruk11@gmail.com', 'Daniel Sidauruk\n1. awokawok\n2. awokaowk\n3. awokawok\n4. awokawok\n5. awokawok\n6. awokawok\n7. awokawok\n8. awokawok', NULL, 'https://firebasestorage.googleapis.com/v0/b/mipoka.appspot.com/o/1690391571402486main-qimg-aab1cd50d148f2ab9553b92ae3ad2ad3.webp?alt=media&token=e85b4429-658b-493f-b64e-ff9f99c8c5d2', 'https://firebasestorage.googleapis.com/v0/b/mipoka.appspot.com/o/169039156895167316901573471473711689958043842547New-2023-Bentley-Continental-GT-S-V8.jpeg?alt=media&token=fabab9b9-5c37-4202-81a2-ddf179842e9b', 'https://firebasestorage.googleapis.com/v0/b/mipoka.appspot.com/o/16903915737996981690157337822902main-qimg-f43bb2c1ee9a6e1ebeb47359ed7d4396-lq.jpeg?alt=media&token=7e3563c8-2b18-4ba4-b701-e7d37fabf768', 'https://firebasestorage.googleapis.com/v0/b/mipoka.appspot.com/o/1690391574264581main-qimg-0a409f9bdae8f5b425281ef4ff30c1af.jpeg?alt=media&token=9a2ff92a-1b1a-4c73-80fb-38c7ef6b33dc', '20', 'Luring', 'Dll', 'Dll', 'aesfasefasef', 'esgaesegs', 'agsagseagse', 'Test Generate Webb', 'Mandiri', 'agesgaesgaesesag', 'gasegesgase', 'gesaasgeages', '', 'Tertunda', 'https://firebasestorage.googleapis.com/v0/b/mipoka.appspot.com/o/signature1690391459225135.png?alt=media&token=495f9c6b-feb7-4b57-b371-3274edafb395', '', '', '', '27-07-2023', '27-07-2023', 'agsaeagseagse', '', 'gfjghfhjgjf', 73499, '20000', 'gsegsesge', '27-07-2023', 'danielsidauruk11@gmail.com', 'Tertunda', 'geasgaesgaes', '00:10', '00:10', 123, '1129122', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `anggota_ormawa`
--
ALTER TABLE `anggota_ormawa`
  ADD KEY `FKan9fl7yleu2pk9e1wj2qsxt6h` (`id_ormawa`);

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indeks untuk tabel `biaya_kegiatan`
--
ALTER TABLE `biaya_kegiatan`
  ADD PRIMARY KEY (`id_biaya_kegiatan`),
  ADD KEY `FK3r0p53qt72ij0bssmgvwjs85t` (`usulan_id`);

--
-- Indeks untuk tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jenis_kegiatan_mpt`
--
ALTER TABLE `jenis_kegiatan_mpt`
  ADD PRIMARY KEY (`id_jenis_kegiatan_mpt`);

--
-- Indeks untuk tabel `kegiatan_mpt`
--
ALTER TABLE `kegiatan_mpt`
  ADD PRIMARY KEY (`id_kegiatan_mpt`),
  ADD KEY `FKr2jsdy9wmiy1htytptwhhjhoq` (`id_jenis_kegiatan_mpt`),
  ADD KEY `FKajmyg2hsip2pjcs3luyyfcl3g` (`id_periode_mpt`);

--
-- Indeks untuk tabel `kegiatan_per_periode_mpt`
--
ALTER TABLE `kegiatan_per_periode_mpt`
  ADD PRIMARY KEY (`id_kegiatan_per_periode_mpt`),
  ADD KEY `FKfwblie9000i161nqqp40iaqwu` (`id_nama_kegiatan_mpt`),
  ADD KEY `FK51f0tslcle7jy5qvebb39whlf` (`id_periode_mpt`);

--
-- Indeks untuk tabel `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id_laporan`),
  ADD KEY `FKmm9uc8w9ou45gtyjs5ppv5q1v` (`id_ormawa`),
  ADD KEY `FKckofo2ih0hjp6vb6823vnvrck` (`id_user`),
  ADD KEY `FKe43vigc5ryoblnojc3sv0gv99` (`id_usulan`),
  ADD KEY `FK253f90s5463kft7ljtcaytogd` (`id_revisi_laporan`),
  ADD KEY `FKoeyryj5nn77gmocyd4v25t7rc` (`usulan`);

--
-- Indeks untuk tabel `mhs_per_periode_mpt`
--
ALTER TABLE `mhs_per_periode_mpt`
  ADD PRIMARY KEY (`id_mhs_per_periode_mpt`),
  ADD KEY `FKc5mms3b77rnjryet9uwfs6flu` (`id_kegiatan_per_periode_mpt`),
  ADD KEY `FK2onq1ivaod9r3yt8lnga2i8tl` (`id_periode_mpt`),
  ADD KEY `FKrpbelalt6ganq6ysmesbrrh5j` (`id_user`),
  ADD KEY `FKha2ugrkbw86d4r4li8uie67e3` (`id_nama_kegiatan_mpt`);

--
-- Indeks untuk tabel `nama_kegiatan_mpt`
--
ALTER TABLE `nama_kegiatan_mpt`
  ADD PRIMARY KEY (`id_nama_kegiatan_mpt`),
  ADD KEY `FKt0wagh1u88ncqam5myydbh0oo` (`id_jenis_kegiatan_mpt`);

--
-- Indeks untuk tabel `notifikasi`
--
ALTER TABLE `notifikasi`
  ADD PRIMARY KEY (`id_notifikasi`);

--
-- Indeks untuk tabel `ormawa`
--
ALTER TABLE `ormawa`
  ADD PRIMARY KEY (`id_ormawa`);

--
-- Indeks untuk tabel `partisipan`
--
ALTER TABLE `partisipan`
  ADD PRIMARY KEY (`id_partisipan`),
  ADD KEY `FKt0mjem6446nvswvd174gv29tm` (`usulan_id`);

--
-- Indeks untuk tabel `periode_mpt`
--
ALTER TABLE `periode_mpt`
  ADD PRIMARY KEY (`id_periode_mpt`);

--
-- Indeks untuk tabel `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `peserta_kegiatan_laporan`
--
ALTER TABLE `peserta_kegiatan_laporan`
  ADD PRIMARY KEY (`id_peserta_kegiatan_laporan`),
  ADD KEY `FK4qjk59jgq8rg5vaqj0u81x4sw` (`id_laporan`);

--
-- Indeks untuk tabel `prestasi`
--
ALTER TABLE `prestasi`
  ADD PRIMARY KEY (`id_prestasi`),
  ADD KEY `FK85snie8jc5jsskk1g015qlckq` (`id_ormawa`),
  ADD KEY `FKc7ceesk4ulab9imke8yt67f2q` (`id_user`);

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK1mtsbur82frn64de7balymq9s` (`category_id`);

--
-- Indeks untuk tabel `revisi_id_biaya_kegiatan`
--
ALTER TABLE `revisi_id_biaya_kegiatan`
  ADD KEY `FKaih481xuolamkpht2u2tfofi8` (`revisi_laporan_id`);

--
-- Indeks untuk tabel `revisi_id_peserta_kegiatan_laporan`
--
ALTER TABLE `revisi_id_peserta_kegiatan_laporan`
  ADD KEY `FKmdpte4pluxocdwebr8jwqtofy` (`revisi_laporan_id`);

--
-- Indeks untuk tabel `revisi_laporan`
--
ALTER TABLE `revisi_laporan`
  ADD PRIMARY KEY (`id_revisi_laporan`),
  ADD KEY `FKsquxuyt1ys4aby9ceu9hxjy5k` (`id_user`);

--
-- Indeks untuk tabel `revisi_usulan`
--
ALTER TABLE `revisi_usulan`
  ADD PRIMARY KEY (`id_revisi_usulan`),
  ADD KEY `FKkhojuwrhc9ekuwtbpne5w4a62` (`id_user`);

--
-- Indeks untuk tabel `revisi_usulan_revisi_foto_tempat_kegiatan`
--
ALTER TABLE `revisi_usulan_revisi_foto_tempat_kegiatan`
  ADD KEY `FKo1o22g1t29vn3nlbxqr4vfmgc` (`revisi_usulan_id_revisi_usulan`);

--
-- Indeks untuk tabel `revisi_usulan_revisi_id_partisipan`
--
ALTER TABLE `revisi_usulan_revisi_id_partisipan`
  ADD KEY `FK38fi87fxmoxx6kemsbw3xqvm9` (`revisi_usulan_id_revisi_usulan`);

--
-- Indeks untuk tabel `revisi_usulan_revisi_id_rincian_biaya_kegiatan`
--
ALTER TABLE `revisi_usulan_revisi_id_rincian_biaya_kegiatan`
  ADD KEY `FKt3p7tnw9y50g5d5kvpetmapa2` (`revisi_usulan_id_revisi_usulan`);

--
-- Indeks untuk tabel `rincian_biaya_kegiatan`
--
ALTER TABLE `rincian_biaya_kegiatan`
  ADD PRIMARY KEY (`id_rincian_biaya_kegiatan`),
  ADD KEY `FKii3469mujuno9lpkoqnyfeog9` (`id_laporan`);

--
-- Indeks untuk tabel `riwayat_mpt`
--
ALTER TABLE `riwayat_mpt`
  ADD PRIMARY KEY (`id_riwayat_mpt`),
  ADD KEY `FKpk6ho9a54wbhrf030v5gfxkhi` (`id_kegiatan_per_periode_mpt`),
  ADD KEY `FKbn6vtkdngdcmwmfnce6psx20c` (`id_user`);

--
-- Indeks untuk tabel `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id_session`),
  ADD KEY `FK7rqucsy9iarugj4xv9ldw46vh` (`id_ormawa`),
  ADD KEY `FKiwjyr7uohn139hnwd1s0xc73t` (`id_user`);

--
-- Indeks untuk tabel `tertib_acara`
--
ALTER TABLE `tertib_acara`
  ADD PRIMARY KEY (`id_tertib_acara`),
  ADD KEY `FKgml5h6vl5fkbel0smbp61t1xp` (`usulan_id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `user_dokumentasi_kegiatan`
--
ALTER TABLE `user_dokumentasi_kegiatan`
  ADD KEY `FKlputpx46ckn40mf7eugc8pb46` (`user_id`);

--
-- Indeks untuk tabel `user_ormawa`
--
ALTER TABLE `user_ormawa`
  ADD KEY `FKkcacngahpc30mhku7yse33xeo` (`id_user`);

--
-- Indeks untuk tabel `usulan`
--
ALTER TABLE `usulan`
  ADD PRIMARY KEY (`id_usulan`),
  ADD KEY `FKii65hxc5tqa7strvqtnry2cfk` (`id_ormawa`),
  ADD KEY `FKmjo98ipkd4oj2h74ldjyvtxml` (`id_user`),
  ADD KEY `FKr5ypasvfy7kkqfrnwt9gxu9ql` (`id_revisi_usulan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT untuk tabel `biaya_kegiatan`
--
ALTER TABLE `biaya_kegiatan`
  MODIFY `id_biaya_kegiatan` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT untuk tabel `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kegiatan_mpt`
--
ALTER TABLE `kegiatan_mpt`
  MODIFY `id_kegiatan_mpt` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id_laporan` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217623;

--
-- AUTO_INCREMENT untuk tabel `partisipan`
--
ALTER TABLE `partisipan`
  MODIFY `id_partisipan` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1332443;

--
-- AUTO_INCREMENT untuk tabel `periode_mpt`
--
ALTER TABLE `periode_mpt`
  MODIFY `id_periode_mpt` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `person`
--
ALTER TABLE `person`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `peserta_kegiatan_laporan`
--
ALTER TABLE `peserta_kegiatan_laporan`
  MODIFY `id_peserta_kegiatan_laporan` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `prestasi`
--
ALTER TABLE `prestasi`
  MODIFY `id_prestasi` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123433;

--
-- AUTO_INCREMENT untuk tabel `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `rincian_biaya_kegiatan`
--
ALTER TABLE `rincian_biaya_kegiatan`
  MODIFY `id_rincian_biaya_kegiatan` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `session`
--
ALTER TABLE `session`
  MODIFY `id_session` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT untuk tabel `tertib_acara`
--
ALTER TABLE `tertib_acara`
  MODIFY `id_tertib_acara` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4345;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `anggota_ormawa`
--
ALTER TABLE `anggota_ormawa`
  ADD CONSTRAINT `FKan9fl7yleu2pk9e1wj2qsxt6h` FOREIGN KEY (`id_ormawa`) REFERENCES `ormawa` (`id_ormawa`);

--
-- Ketidakleluasaan untuk tabel `biaya_kegiatan`
--
ALTER TABLE `biaya_kegiatan`
  ADD CONSTRAINT `FK3r0p53qt72ij0bssmgvwjs85t` FOREIGN KEY (`usulan_id`) REFERENCES `usulan` (`id_usulan`);

--
-- Ketidakleluasaan untuk tabel `kegiatan_mpt`
--
ALTER TABLE `kegiatan_mpt`
  ADD CONSTRAINT `FKajmyg2hsip2pjcs3luyyfcl3g` FOREIGN KEY (`id_periode_mpt`) REFERENCES `periode_mpt` (`id_periode_mpt`),
  ADD CONSTRAINT `FKr2jsdy9wmiy1htytptwhhjhoq` FOREIGN KEY (`id_jenis_kegiatan_mpt`) REFERENCES `jenis_kegiatan_mpt` (`id_jenis_kegiatan_mpt`);

--
-- Ketidakleluasaan untuk tabel `kegiatan_per_periode_mpt`
--
ALTER TABLE `kegiatan_per_periode_mpt`
  ADD CONSTRAINT `FK51f0tslcle7jy5qvebb39whlf` FOREIGN KEY (`id_periode_mpt`) REFERENCES `periode_mpt` (`id_periode_mpt`),
  ADD CONSTRAINT `FKfwblie9000i161nqqp40iaqwu` FOREIGN KEY (`id_nama_kegiatan_mpt`) REFERENCES `nama_kegiatan_mpt` (`id_nama_kegiatan_mpt`);

--
-- Ketidakleluasaan untuk tabel `laporan`
--
ALTER TABLE `laporan`
  ADD CONSTRAINT `FK253f90s5463kft7ljtcaytogd` FOREIGN KEY (`id_revisi_laporan`) REFERENCES `revisi_laporan` (`id_revisi_laporan`),
  ADD CONSTRAINT `FKckofo2ih0hjp6vb6823vnvrck` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `FKe43vigc5ryoblnojc3sv0gv99` FOREIGN KEY (`id_usulan`) REFERENCES `usulan` (`id_usulan`),
  ADD CONSTRAINT `FKmm9uc8w9ou45gtyjs5ppv5q1v` FOREIGN KEY (`id_ormawa`) REFERENCES `ormawa` (`id_ormawa`),
  ADD CONSTRAINT `FKoeyryj5nn77gmocyd4v25t7rc` FOREIGN KEY (`usulan`) REFERENCES `usulan` (`id_usulan`);

--
-- Ketidakleluasaan untuk tabel `mhs_per_periode_mpt`
--
ALTER TABLE `mhs_per_periode_mpt`
  ADD CONSTRAINT `FK2onq1ivaod9r3yt8lnga2i8tl` FOREIGN KEY (`id_periode_mpt`) REFERENCES `periode_mpt` (`id_periode_mpt`),
  ADD CONSTRAINT `FKc5mms3b77rnjryet9uwfs6flu` FOREIGN KEY (`id_kegiatan_per_periode_mpt`) REFERENCES `kegiatan_per_periode_mpt` (`id_kegiatan_per_periode_mpt`),
  ADD CONSTRAINT `FKha2ugrkbw86d4r4li8uie67e3` FOREIGN KEY (`id_nama_kegiatan_mpt`) REFERENCES `nama_kegiatan_mpt` (`id_nama_kegiatan_mpt`),
  ADD CONSTRAINT `FKrpbelalt6ganq6ysmesbrrh5j` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Ketidakleluasaan untuk tabel `nama_kegiatan_mpt`
--
ALTER TABLE `nama_kegiatan_mpt`
  ADD CONSTRAINT `FKt0wagh1u88ncqam5myydbh0oo` FOREIGN KEY (`id_jenis_kegiatan_mpt`) REFERENCES `jenis_kegiatan_mpt` (`id_jenis_kegiatan_mpt`);

--
-- Ketidakleluasaan untuk tabel `partisipan`
--
ALTER TABLE `partisipan`
  ADD CONSTRAINT `FKt0mjem6446nvswvd174gv29tm` FOREIGN KEY (`usulan_id`) REFERENCES `usulan` (`id_usulan`);

--
-- Ketidakleluasaan untuk tabel `peserta_kegiatan_laporan`
--
ALTER TABLE `peserta_kegiatan_laporan`
  ADD CONSTRAINT `FK4qjk59jgq8rg5vaqj0u81x4sw` FOREIGN KEY (`id_laporan`) REFERENCES `laporan` (`id_laporan`);

--
-- Ketidakleluasaan untuk tabel `prestasi`
--
ALTER TABLE `prestasi`
  ADD CONSTRAINT `FK85snie8jc5jsskk1g015qlckq` FOREIGN KEY (`id_ormawa`) REFERENCES `ormawa` (`id_ormawa`),
  ADD CONSTRAINT `FKc7ceesk4ulab9imke8yt67f2q` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Ketidakleluasaan untuk tabel `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK1mtsbur82frn64de7balymq9s` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Ketidakleluasaan untuk tabel `revisi_id_biaya_kegiatan`
--
ALTER TABLE `revisi_id_biaya_kegiatan`
  ADD CONSTRAINT `FKaih481xuolamkpht2u2tfofi8` FOREIGN KEY (`revisi_laporan_id`) REFERENCES `revisi_laporan` (`id_revisi_laporan`);

--
-- Ketidakleluasaan untuk tabel `revisi_id_peserta_kegiatan_laporan`
--
ALTER TABLE `revisi_id_peserta_kegiatan_laporan`
  ADD CONSTRAINT `FKmdpte4pluxocdwebr8jwqtofy` FOREIGN KEY (`revisi_laporan_id`) REFERENCES `revisi_laporan` (`id_revisi_laporan`);

--
-- Ketidakleluasaan untuk tabel `revisi_laporan`
--
ALTER TABLE `revisi_laporan`
  ADD CONSTRAINT `FKsquxuyt1ys4aby9ceu9hxjy5k` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Ketidakleluasaan untuk tabel `revisi_usulan`
--
ALTER TABLE `revisi_usulan`
  ADD CONSTRAINT `FKkhojuwrhc9ekuwtbpne5w4a62` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Ketidakleluasaan untuk tabel `revisi_usulan_revisi_foto_tempat_kegiatan`
--
ALTER TABLE `revisi_usulan_revisi_foto_tempat_kegiatan`
  ADD CONSTRAINT `FKo1o22g1t29vn3nlbxqr4vfmgc` FOREIGN KEY (`revisi_usulan_id_revisi_usulan`) REFERENCES `revisi_usulan` (`id_revisi_usulan`);

--
-- Ketidakleluasaan untuk tabel `revisi_usulan_revisi_id_partisipan`
--
ALTER TABLE `revisi_usulan_revisi_id_partisipan`
  ADD CONSTRAINT `FK38fi87fxmoxx6kemsbw3xqvm9` FOREIGN KEY (`revisi_usulan_id_revisi_usulan`) REFERENCES `revisi_usulan` (`id_revisi_usulan`);

--
-- Ketidakleluasaan untuk tabel `revisi_usulan_revisi_id_rincian_biaya_kegiatan`
--
ALTER TABLE `revisi_usulan_revisi_id_rincian_biaya_kegiatan`
  ADD CONSTRAINT `FKt3p7tnw9y50g5d5kvpetmapa2` FOREIGN KEY (`revisi_usulan_id_revisi_usulan`) REFERENCES `revisi_usulan` (`id_revisi_usulan`);

--
-- Ketidakleluasaan untuk tabel `rincian_biaya_kegiatan`
--
ALTER TABLE `rincian_biaya_kegiatan`
  ADD CONSTRAINT `FKii3469mujuno9lpkoqnyfeog9` FOREIGN KEY (`id_laporan`) REFERENCES `laporan` (`id_laporan`);

--
-- Ketidakleluasaan untuk tabel `riwayat_mpt`
--
ALTER TABLE `riwayat_mpt`
  ADD CONSTRAINT `FKbn6vtkdngdcmwmfnce6psx20c` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `FKpk6ho9a54wbhrf030v5gfxkhi` FOREIGN KEY (`id_kegiatan_per_periode_mpt`) REFERENCES `kegiatan_per_periode_mpt` (`id_kegiatan_per_periode_mpt`);

--
-- Ketidakleluasaan untuk tabel `session`
--
ALTER TABLE `session`
  ADD CONSTRAINT `FK7rqucsy9iarugj4xv9ldw46vh` FOREIGN KEY (`id_ormawa`) REFERENCES `ormawa` (`id_ormawa`),
  ADD CONSTRAINT `FKiwjyr7uohn139hnwd1s0xc73t` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Ketidakleluasaan untuk tabel `tertib_acara`
--
ALTER TABLE `tertib_acara`
  ADD CONSTRAINT `FKgml5h6vl5fkbel0smbp61t1xp` FOREIGN KEY (`usulan_id`) REFERENCES `usulan` (`id_usulan`);

--
-- Ketidakleluasaan untuk tabel `user_dokumentasi_kegiatan`
--
ALTER TABLE `user_dokumentasi_kegiatan`
  ADD CONSTRAINT `FKlputpx46ckn40mf7eugc8pb46` FOREIGN KEY (`user_id`) REFERENCES `laporan` (`id_laporan`);

--
-- Ketidakleluasaan untuk tabel `user_ormawa`
--
ALTER TABLE `user_ormawa`
  ADD CONSTRAINT `FKkcacngahpc30mhku7yse33xeo` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Ketidakleluasaan untuk tabel `usulan`
--
ALTER TABLE `usulan`
  ADD CONSTRAINT `FKii65hxc5tqa7strvqtnry2cfk` FOREIGN KEY (`id_ormawa`) REFERENCES `ormawa` (`id_ormawa`),
  ADD CONSTRAINT `FKmjo98ipkd4oj2h74ldjyvtxml` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `FKr5ypasvfy7kkqfrnwt9gxu9ql` FOREIGN KEY (`id_revisi_usulan`) REFERENCES `revisi_usulan` (`id_revisi_usulan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
