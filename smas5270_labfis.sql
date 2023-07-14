-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 14 Jul 2023 pada 10.02
-- Versi server: 8.0.33
-- Versi PHP: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smas5270_labfis`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_files`
--

CREATE TABLE `tbl_files` (
  `file_id` int NOT NULL,
  `file_judul` varchar(120) DEFAULT NULL,
  `file_deskripsi` text,
  `file_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `file_oleh` varchar(60) DEFAULT NULL,
  `file_download` int DEFAULT '0',
  `file_data` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_guru`
--

CREATE TABLE `tbl_guru` (
  `guru_id` int NOT NULL,
  `guru_nip` varchar(30) DEFAULT NULL,
  `guru_nama` varchar(70) DEFAULT NULL,
  `guru_jenkel` varchar(2) DEFAULT NULL,
  `guru_tmp_lahir` varchar(80) DEFAULT NULL,
  `guru_tgl_lahir` varchar(80) DEFAULT NULL,
  `guru_mapel` varchar(120) DEFAULT NULL,
  `guru_photo` varchar(40) DEFAULT NULL,
  `guru_tgl_input` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_guru`
--

INSERT INTO `tbl_guru` (`guru_id`, `guru_nip`, `guru_nama`, `guru_jenkel`, `guru_tmp_lahir`, `guru_tgl_lahir`, `guru_mapel`, `guru_photo`, `guru_tgl_input`) VALUES
(10, '123123123131', 'Dina Mauliyani Qoriah, S.Si.', 'P', '', '', 'Guru Fisika', 'a98eddb0f759d557b16459349c21ee1e.jpeg', '2023-07-07 03:21:09'),
(11, '123123123131', 'Miftahul Hasanah, S.Pd.', 'P', '', '', 'Guru Fisika', '883010c893dacb9856cb57c12821f544.jpeg', '2023-07-07 03:25:01'),
(12, '123123123131', 'Nurazmi, S.Pd', 'P', '', '', 'Guru Fisika', '08f9190ca229a478918d12b1aefdfda1.jpeg', '2023-07-07 03:25:34'),
(13, '', 'Supardi, M.Pd', 'L', '', '', 'Guru Fisika', '7cb59a0bda0d2100a24228dc0754fa9e.jpeg', '2023-07-07 03:27:33'),
(14, '', 'Siti Nur Prafitri.M, S.Pd.', 'P', '', '', 'Staff Laboratorium', 'ba61de69e46718aa87842fe5b4efd70c.jpeg', '2023-07-07 03:28:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_inbox`
--

CREATE TABLE `tbl_inbox` (
  `inbox_id` int NOT NULL,
  `inbox_nama` varchar(40) DEFAULT NULL,
  `inbox_email` varchar(60) DEFAULT NULL,
  `inbox_kontak` varchar(20) DEFAULT NULL,
  `inbox_pesan` text,
  `inbox_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `inbox_status` int DEFAULT '1' COMMENT '1=Belum dilihat, 0=Telah dilihat'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `kategori_id` int NOT NULL,
  `kategori_nama` varchar(30) DEFAULT NULL,
  `kategori_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`kategori_id`, `kategori_nama`, `kategori_tanggal`) VALUES
(14, 'Alat Peraga', '2023-07-05 05:00:12'),
(15, 'Alat Praktikum', '2023-07-05 05:00:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `kelas_id` int NOT NULL,
  `kelas_nama` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`kelas_id`, `kelas_nama`) VALUES
(1, 'Kelas X.1'),
(2, 'Kelas X.2'),
(3, 'Kelas X.3'),
(4, 'Kelas X.4'),
(5, 'Kelas X.5'),
(6, 'Kelas X.6'),
(7, 'Kelas X.7'),
(8, 'Kelas XI IPA.1'),
(9, 'Kelas XI IPA.2'),
(10, 'Kelas XI IPA.3'),
(11, 'Kelas XI IPA.4'),
(12, 'Kelas XI IPA.5'),
(13, 'Kelas XI IPA.6'),
(14, 'Kelas XI IPA.7'),
(15, 'Kelas XI IPS.1'),
(16, 'Kelas XI IPS.2'),
(17, 'Kelas XI IPS.3'),
(18, 'Kelas XI IPS.4'),
(19, 'Kelas XI IPS.5'),
(20, 'Kelas XI IPS.6'),
(21, 'Kelas XI IPS.7');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_komentar`
--

CREATE TABLE `tbl_komentar` (
  `komentar_id` int NOT NULL,
  `komentar_nama` varchar(30) DEFAULT NULL,
  `komentar_email` varchar(50) DEFAULT NULL,
  `komentar_isi` varchar(120) DEFAULT NULL,
  `komentar_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `komentar_status` varchar(2) DEFAULT NULL,
  `komentar_tulisan_id` int DEFAULT NULL,
  `komentar_parent` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_log_aktivitas`
--

CREATE TABLE `tbl_log_aktivitas` (
  `log_id` int NOT NULL,
  `log_nama` text,
  `log_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `log_ip` varchar(20) DEFAULT NULL,
  `log_pengguna_id` int DEFAULT NULL,
  `log_icon` blob,
  `log_jenis_icon` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengguna`
--

CREATE TABLE `tbl_pengguna` (
  `pengguna_id` int NOT NULL,
  `pengguna_nama` varchar(50) DEFAULT NULL,
  `pengguna_moto` varchar(100) DEFAULT NULL,
  `pengguna_jenkel` varchar(2) DEFAULT NULL,
  `pengguna_username` varchar(30) DEFAULT NULL,
  `pengguna_password` varchar(35) DEFAULT NULL,
  `pengguna_tentang` text,
  `pengguna_email` varchar(50) DEFAULT NULL,
  `pengguna_nohp` varchar(20) DEFAULT NULL,
  `pengguna_facebook` varchar(35) DEFAULT NULL,
  `pengguna_twitter` varchar(35) DEFAULT NULL,
  `pengguna_linkdin` varchar(35) DEFAULT NULL,
  `pengguna_google_plus` varchar(35) DEFAULT NULL,
  `pengguna_status` int DEFAULT '1',
  `pengguna_level` varchar(3) DEFAULT NULL,
  `pengguna_register` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `pengguna_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengguna`
--

INSERT INTO `tbl_pengguna` (`pengguna_id`, `pengguna_nama`, `pengguna_moto`, `pengguna_jenkel`, `pengguna_username`, `pengguna_password`, `pengguna_tentang`, `pengguna_email`, `pengguna_nohp`, `pengguna_facebook`, `pengguna_twitter`, `pengguna_linkdin`, `pengguna_google_plus`, `pengguna_status`, `pengguna_level`, `pengguna_register`, `pengguna_photo`) VALUES
(6, 'Siti Nur Prafitri.M, S.Pd.', NULL, 'P', 'mega', '15b80e47cb7b993d71cc36062f965043', NULL, 'Mega@gmail.com', '0823124213', NULL, NULL, NULL, NULL, 1, '1', '2023-07-07 04:24:38', 'f25d655583b112dbe46b02d7604486ed.jpeg'),
(7, 'Emirssyah Putra', NULL, 'L', 'emir', '76819ce3342e399fa13e96b0dfffbeb4', NULL, 'emirssyah13@gmail.com', '081368620646', NULL, NULL, NULL, NULL, 1, '1', '2023-07-07 04:28:19', 'a8f4eefba1f9fa7017a41287fa0ccd6a.JPG'),
(9, 'Nurazmi, S.Pd', NULL, 'P', 'nurazmi', '81dc9bdb52d04dc20036dbd8313ed055', NULL, 'nurazmi@gmail.com', '082121212121', NULL, NULL, NULL, NULL, 1, '2', '2023-07-14 01:36:09', 'dcd88aea8be17b46afee1b62fb4b54e1.jpeg'),
(10, 'Dina Mauliyani Qoriah, S.Si.', NULL, 'P', 'dina', '81dc9bdb52d04dc20036dbd8313ed055', NULL, 'dina@gmail.com', '0812747124214', NULL, NULL, NULL, NULL, 1, '2', '2023-07-14 02:24:48', 'eebf9efc3a45d518b4306c02a80c6f83.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengunjung`
--

CREATE TABLE `tbl_pengunjung` (
  `pengunjung_id` int NOT NULL,
  `pengunjung_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `pengunjung_ip` varchar(40) DEFAULT NULL,
  `pengunjung_perangkat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengunjung`
--

INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES
(1192, '2023-07-05 04:17:49', '116.206.212.98', 'Chrome'),
(1193, '2023-07-05 05:03:28', '116.206.39.91', 'Chrome'),
(1194, '2023-07-05 08:34:38', '182.3.105.77', 'Chrome'),
(1195, '2023-07-05 08:40:13', '110.50.81.198', 'Chrome'),
(1196, '2023-07-05 13:24:52', '182.3.105.65', 'Chrome'),
(1197, '2023-07-06 06:49:48', '116.206.212.98', 'Chrome'),
(1198, '2023-07-06 14:26:11', '103.105.82.195', 'Chrome'),
(1199, '2023-07-07 02:29:26', '116.206.212.98', 'Chrome'),
(1200, '2023-07-07 02:53:35', '182.1.229.185', 'Chrome'),
(1201, '2023-07-07 03:06:50', '110.50.81.201', 'Chrome'),
(1202, '2023-07-07 03:08:21', '110.50.81.203', 'Chrome'),
(1203, '2023-07-07 03:48:37', '110.50.81.198', 'Chrome'),
(1204, '2023-07-07 06:13:57', '116.206.43.107', 'Chrome'),
(1205, '2023-07-07 08:49:13', '103.105.82.195', 'Chrome'),
(1206, '2023-07-08 00:30:19', '8.36.86.51', 'Firefox'),
(1207, '2023-07-08 07:46:53', '208.72.20.198', 'Chrome'),
(1208, '2023-07-08 07:47:12', '54.160.81.45', 'Chrome'),
(1209, '2023-07-08 07:47:12', '204.236.240.197', 'Chrome'),
(1210, '2023-07-08 11:33:23', '103.105.82.195', 'Chrome'),
(1211, '2023-07-08 13:52:02', '116.206.39.71', 'Chrome'),
(1212, '2023-07-10 02:45:07', '116.206.39.93', 'Chrome'),
(1213, '2023-07-10 03:12:27', '116.206.39.77', 'Chrome'),
(1214, '2023-07-10 03:20:11', '116.206.212.98', 'Chrome'),
(1215, '2023-07-10 03:22:09', '182.1.236.33', 'Chrome'),
(1216, '2023-07-10 04:35:59', '116.206.39.119', 'Chrome'),
(1217, '2023-07-10 04:55:51', '116.206.42.85', 'Chrome'),
(1218, '2023-07-10 04:56:01', '110.50.81.202', 'Chrome'),
(1219, '2023-07-10 05:05:32', '202.43.172.4', 'Chrome'),
(1220, '2023-07-10 05:26:35', '116.206.43.98', 'Chrome'),
(1221, '2023-07-10 05:59:25', '103.31.109.106', 'Chrome'),
(1222, '2023-07-10 05:59:49', '182.3.43.124', 'Chrome'),
(1223, '2023-07-10 06:01:57', '116.206.39.78', 'Chrome'),
(1224, '2023-07-10 06:01:59', '110.50.81.200', 'Chrome'),
(1225, '2023-07-10 06:35:28', '116.206.42.108', 'Chrome'),
(1226, '2023-07-10 06:44:10', '116.206.42.95', 'Chrome'),
(1227, '2023-07-10 12:31:32', '110.137.38.223', 'Chrome'),
(1228, '2023-07-10 16:08:10', '182.253.63.2', 'Chrome'),
(1229, '2023-07-11 04:59:19', '116.206.212.98', 'Chrome'),
(1230, '2023-07-11 11:46:26', '116.206.43.89', 'Chrome'),
(1231, '2023-07-12 02:40:09', '182.1.232.44', 'Chrome'),
(1232, '2023-07-12 03:21:14', '116.206.39.78', 'Chrome'),
(1233, '2023-07-13 01:08:27', '::1', 'Chrome'),
(1234, '2023-07-13 12:00:44', '127.0.0.1', 'Chrome'),
(1235, '2023-07-14 01:11:38', '::1', 'Chrome'),
(1236, '2023-07-14 01:26:19', '116.206.43.70', 'Chrome'),
(1237, '2023-07-14 01:29:27', '116.206.212.98', 'Chrome'),
(1238, '2023-07-14 01:35:27', '182.1.229.225', 'Chrome'),
(1239, '2023-07-14 01:52:07', '116.206.39.78', 'Chrome'),
(1240, '2023-07-14 02:28:13', '120.188.5.207', 'Chrome');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pinjam`
--

CREATE TABLE `tbl_pinjam` (
  `pinjam_id` int NOT NULL,
  `pinjam_nama` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `pinjam_waktu` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `pinjam_deskripsi` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `pinjam_status` varchar(100) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Diproses'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_pinjam`
--

INSERT INTO `tbl_pinjam` (`pinjam_id`, `pinjam_nama`, `pinjam_waktu`, `pinjam_deskripsi`, `pinjam_status`) VALUES
(9, 'Dina Mauliyani Qoriah, S.Si.', '2023-07-13T19:56', 'asdasdadasd', 'Ditolak'),
(12, 'Dina Mauliyani Qoriah, S.Si.', '2023-07-13T12:43', 'sdasdada', 'Diterima'),
(13, 'Dina Mauliyani Qoriah, S.Si.', '2023-07-19T20:48', 'asdadadsa', 'Diterima'),
(15, 'Nurazmi, S.Pd', '2023-07-06T08:44', 'sdasdadadad', 'Diproses');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tulisan`
--

CREATE TABLE `tbl_tulisan` (
  `tulisan_id` int NOT NULL,
  `tulisan_judul` varchar(100) DEFAULT NULL,
  `tulisan_isi` text,
  `tulisan_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `tulisan_kategori_id` int DEFAULT NULL,
  `tulisan_kategori_nama` varchar(30) DEFAULT NULL,
  `tulisan_views` int DEFAULT '0',
  `tulisan_gambar` varchar(40) DEFAULT NULL,
  `tulisan_pengguna_id` int DEFAULT NULL,
  `tulisan_author` varchar(40) DEFAULT NULL,
  `tulisan_img_slider` int NOT NULL DEFAULT '0',
  `tulisan_slug` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_tulisan`
--

INSERT INTO `tbl_tulisan` (`tulisan_id`, `tulisan_judul`, `tulisan_isi`, `tulisan_tanggal`, `tulisan_kategori_id`, `tulisan_kategori_nama`, `tulisan_views`, `tulisan_gambar`, `tulisan_pengguna_id`, `tulisan_author`, `tulisan_img_slider`, `tulisan_slug`) VALUES
(37, 'Gelas Ukur', '<p>asdwasda</p>\r\n', '2023-07-10 04:04:47', 15, 'Alat Praktikum', 49, 'ee0fe9ca710b1ddc459eadbb6ddff045.jpg', 7, 'Emirssyah Putra', 0, 'gelas-ukur'),
(38, 'penggaris besi', '<p>sadsadasd</p>\r\n', '2023-07-10 04:04:58', 15, 'Alat Praktikum', 306, '525e13a263273f2049307d9546914b5a.jpg', 7, 'Emirssyah Putra', 0, 'penggaris-besi'),
(39, 'penggaris plastik', '<p>sdasdsdad</p>\r\n', '2023-07-13 06:37:40', 14, 'Alat Peraga', 0, 'eb208748e57c591311e8d17b9e04fe74.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'penggaris-plastik');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_files`
--
ALTER TABLE `tbl_files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indeks untuk tabel `tbl_guru`
--
ALTER TABLE `tbl_guru`
  ADD PRIMARY KEY (`guru_id`);

--
-- Indeks untuk tabel `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  ADD PRIMARY KEY (`inbox_id`);

--
-- Indeks untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indeks untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`kelas_id`);

--
-- Indeks untuk tabel `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  ADD PRIMARY KEY (`komentar_id`),
  ADD KEY `komentar_tulisan_id` (`komentar_tulisan_id`);

--
-- Indeks untuk tabel `tbl_log_aktivitas`
--
ALTER TABLE `tbl_log_aktivitas`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `log_pengguna_id` (`log_pengguna_id`);

--
-- Indeks untuk tabel `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  ADD PRIMARY KEY (`pengguna_id`);

--
-- Indeks untuk tabel `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  ADD PRIMARY KEY (`pengunjung_id`);

--
-- Indeks untuk tabel `tbl_pinjam`
--
ALTER TABLE `tbl_pinjam`
  ADD PRIMARY KEY (`pinjam_id`);

--
-- Indeks untuk tabel `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  ADD PRIMARY KEY (`tulisan_id`),
  ADD KEY `tulisan_kategori_id` (`tulisan_kategori_id`),
  ADD KEY `tulisan_pengguna_id` (`tulisan_pengguna_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_files`
--
ALTER TABLE `tbl_files`
  MODIFY `file_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tbl_guru`
--
ALTER TABLE `tbl_guru`
  MODIFY `guru_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  MODIFY `inbox_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `kategori_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  MODIFY `kelas_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  MODIFY `komentar_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_log_aktivitas`
--
ALTER TABLE `tbl_log_aktivitas`
  MODIFY `log_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  MODIFY `pengguna_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  MODIFY `pengunjung_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1241;

--
-- AUTO_INCREMENT untuk tabel `tbl_pinjam`
--
ALTER TABLE `tbl_pinjam`
  MODIFY `pinjam_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  MODIFY `tulisan_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
