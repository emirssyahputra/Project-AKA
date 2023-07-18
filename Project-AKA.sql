-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 18 Jul 2023 pada 04.45
-- Versi server: 10.6.13-MariaDB-cll-lve
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `labtesak_sekolah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_files`
--

CREATE TABLE `tbl_files` (
  `file_id` int(11) NOT NULL,
  `file_judul` varchar(120) DEFAULT NULL,
  `file_deskripsi` text DEFAULT NULL,
  `file_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `file_oleh` varchar(60) DEFAULT NULL,
  `file_download` int(11) DEFAULT 0,
  `file_data` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbl_files`
--

INSERT INTO `tbl_files` (`file_id`, `file_judul`, `file_deskripsi`, `file_tanggal`, `file_oleh`, `file_download`, `file_data`) VALUES
(22, 'lorem', 'ipsum', '2023-07-17 07:37:22', 'Siti Nur Prafitri.M, S.Pd.', 0, '35f815091d85ebd84cced0f738837b1d.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_guru`
--

CREATE TABLE `tbl_guru` (
  `guru_id` int(11) NOT NULL,
  `guru_nip` varchar(30) DEFAULT NULL,
  `guru_nama` varchar(70) DEFAULT NULL,
  `guru_jenkel` varchar(2) DEFAULT NULL,
  `guru_tmp_lahir` varchar(80) DEFAULT NULL,
  `guru_tgl_lahir` varchar(80) DEFAULT NULL,
  `guru_mapel` varchar(120) DEFAULT NULL,
  `guru_photo` varchar(40) DEFAULT NULL,
  `guru_tgl_input` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbl_guru`
--

INSERT INTO `tbl_guru` (`guru_id`, `guru_nip`, `guru_nama`, `guru_jenkel`, `guru_tmp_lahir`, `guru_tgl_lahir`, `guru_mapel`, `guru_photo`, `guru_tgl_input`) VALUES
(11, '123123123131', 'Miftahul Hasanah, S.Pd.', 'P', '', '', 'Guru Fisika', '883010c893dacb9856cb57c12821f544.jpeg', '2023-07-07 03:25:01'),
(12, '123123123131', 'Nurazmi, S.Pd', 'P', '', '', 'Guru Fisika', '6ef92dd3f2b9465e97a051b06d84b4bf.jpeg', '2023-07-07 03:25:34'),
(13, '123123123131', 'Supardi, M.Pd', 'L', '', '', 'Guru Fisika', '7cb59a0bda0d2100a24228dc0754fa9e.jpeg', '2023-07-07 03:27:33'),
(14, '123123123131', 'Siti Nur Prafitri.M, S.Pd.', 'P', '', '', 'Staff Laboratorium', 'ba61de69e46718aa87842fe5b4efd70c.jpeg', '2023-07-07 03:28:34'),
(15, '123123123131', 'Dina Mauliyani Qoriah, S.Si.', 'P', '', '', 'Guru Fisika', '6718554d7338a6bfa0df2615ac5d9104.jpeg', '2023-07-17 13:16:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_inbox`
--

CREATE TABLE `tbl_inbox` (
  `inbox_id` int(11) NOT NULL,
  `inbox_nama` varchar(40) DEFAULT NULL,
  `inbox_email` varchar(60) DEFAULT NULL,
  `inbox_kontak` varchar(20) DEFAULT NULL,
  `inbox_pesan` text DEFAULT NULL,
  `inbox_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `inbox_status` int(11) DEFAULT 1 COMMENT '1=Belum dilihat, 0=Telah dilihat'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(30) DEFAULT NULL,
  `kategori_tanggal` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`kategori_id`, `kategori_nama`, `kategori_tanggal`) VALUES
(16, 'Kit Listrik ', '2023-07-17 05:12:03'),
(17, 'Kit Mekanika', '2023-07-17 05:12:10'),
(18, 'Kit Optika', '2023-07-17 05:12:18'),
(19, 'Lainnya', '2023-07-17 05:12:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `kelas_id` int(11) NOT NULL,
  `kelas_nama` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
  `komentar_id` int(11) NOT NULL,
  `komentar_nama` varchar(30) DEFAULT NULL,
  `komentar_email` varchar(50) DEFAULT NULL,
  `komentar_isi` varchar(120) DEFAULT NULL,
  `komentar_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `komentar_status` varchar(2) DEFAULT NULL,
  `komentar_tulisan_id` int(11) DEFAULT NULL,
  `komentar_parent` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_log_aktivitas`
--

CREATE TABLE `tbl_log_aktivitas` (
  `log_id` int(11) NOT NULL,
  `log_nama` text DEFAULT NULL,
  `log_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `log_ip` varchar(20) DEFAULT NULL,
  `log_pengguna_id` int(11) DEFAULT NULL,
  `log_icon` blob DEFAULT NULL,
  `log_jenis_icon` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengguna`
--

CREATE TABLE `tbl_pengguna` (
  `pengguna_id` int(11) NOT NULL,
  `pengguna_nama` varchar(50) DEFAULT NULL,
  `pengguna_moto` varchar(100) DEFAULT NULL,
  `pengguna_jenkel` varchar(2) DEFAULT NULL,
  `pengguna_username` varchar(30) DEFAULT NULL,
  `pengguna_password` varchar(35) DEFAULT NULL,
  `pengguna_tentang` text DEFAULT NULL,
  `pengguna_email` varchar(50) DEFAULT NULL,
  `pengguna_nohp` varchar(20) DEFAULT NULL,
  `pengguna_facebook` varchar(35) DEFAULT NULL,
  `pengguna_twitter` varchar(35) DEFAULT NULL,
  `pengguna_linkdin` varchar(35) DEFAULT NULL,
  `pengguna_google_plus` varchar(35) DEFAULT NULL,
  `pengguna_status` int(11) DEFAULT 1,
  `pengguna_level` varchar(3) DEFAULT NULL,
  `pengguna_register` timestamp NULL DEFAULT current_timestamp(),
  `pengguna_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbl_pengguna`
--

INSERT INTO `tbl_pengguna` (`pengguna_id`, `pengguna_nama`, `pengguna_moto`, `pengguna_jenkel`, `pengguna_username`, `pengguna_password`, `pengguna_tentang`, `pengguna_email`, `pengguna_nohp`, `pengguna_facebook`, `pengguna_twitter`, `pengguna_linkdin`, `pengguna_google_plus`, `pengguna_status`, `pengguna_level`, `pengguna_register`, `pengguna_photo`) VALUES
(6, 'Siti Nur Prafitri.M, S.Pd.', NULL, 'P', 'mega', '15b80e47cb7b993d71cc36062f965043', NULL, 'Mega@gmail.com', '0823124213', NULL, NULL, NULL, NULL, 1, '1', '2023-07-07 04:24:38', 'f25d655583b112dbe46b02d7604486ed.jpeg'),
(7, 'Emirssyah Putra', NULL, 'L', 'emir', '76819ce3342e399fa13e96b0dfffbeb4', NULL, 'emirssyah13@gmail.com', '081368620646', NULL, NULL, NULL, NULL, 1, '1', '2023-07-07 04:28:19', 'a8f4eefba1f9fa7017a41287fa0ccd6a.JPG'),
(8, 'Dina Mauliyani Qoriah, S.Si.', NULL, 'P', 'dina', '9b37a3ea07415a3421941a3110053b6b', NULL, 'dina@gmail.com', '0812747124214', NULL, NULL, NULL, NULL, 1, '2', '2023-07-13 09:13:06', '188bfd84f97bb7ac25228c1751a0acb9.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengunjung`
--

CREATE TABLE `tbl_pengunjung` (
  `pengunjung_id` int(11) NOT NULL,
  `pengunjung_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `pengunjung_ip` varchar(40) DEFAULT NULL,
  `pengunjung_perangkat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
(1233, '2023-07-12 06:29:18', '182.1.233.245', 'Chrome'),
(1234, '2023-07-12 06:57:39', '132.145.67.248', 'Mozilla'),
(1235, '2023-07-12 07:35:32', '17.241.219.171', 'Safari'),
(1236, '2023-07-12 09:03:12', '45.76.161.37', 'Other'),
(1237, '2023-07-12 10:24:19', '198.235.24.18', 'Other'),
(1238, '2023-07-12 12:19:09', '34.215.246.15', 'Chrome'),
(1239, '2023-07-12 12:19:36', '35.88.242.237', 'Chrome'),
(1240, '2023-07-12 12:19:42', '34.220.93.179', 'Chrome'),
(1241, '2023-07-12 12:20:19', '34.218.252.74', 'Chrome'),
(1242, '2023-07-12 12:54:58', '17.241.75.230', 'Safari'),
(1243, '2023-07-12 18:06:47', '103.105.82.192', 'Chrome'),
(1244, '2023-07-13 04:35:38', '182.1.229.217', 'Chrome'),
(1245, '2023-07-13 07:46:11', '34.220.50.24', 'Chrome'),
(1246, '2023-07-13 07:46:12', '34.219.5.205', 'Chrome'),
(1247, '2023-07-13 07:46:29', '54.149.31.65', 'Chrome'),
(1248, '2023-07-13 07:46:31', '34.220.128.244', 'Chrome'),
(1249, '2023-07-13 07:54:13', '34.211.182.73', 'Chrome'),
(1250, '2023-07-13 07:54:15', '35.91.152.41', 'Chrome'),
(1251, '2023-07-13 11:39:57', '165.232.125.105', 'Chrome'),
(1252, '2023-07-13 12:50:08', '51.79.143.34', 'Chrome'),
(1253, '2023-07-13 12:51:59', '152.32.135.164', 'Chrome'),
(1254, '2023-07-13 13:47:40', '45.76.161.37', 'Other'),
(1255, '2023-07-13 13:50:24', '103.105.82.192', 'Chrome'),
(1256, '2023-07-13 13:55:09', '51.81.167.146', 'Safari'),
(1257, '2023-07-13 13:55:09', '154.28.229.195', 'Chrome'),
(1258, '2023-07-13 13:55:30', '170.64.190.167', 'Chrome'),
(1259, '2023-07-13 13:55:32', '167.172.20.95', 'Other'),
(1260, '2023-07-13 13:55:32', '162.243.161.105', 'Other'),
(1261, '2023-07-13 13:55:32', '170.64.154.140', 'Chrome'),
(1262, '2023-07-13 13:55:32', '128.199.62.55', 'Other'),
(1263, '2023-07-13 13:55:33', '134.122.34.144', 'Other'),
(1264, '2023-07-13 13:55:34', '172.105.37.32', 'Other'),
(1265, '2023-07-13 13:55:34', '137.184.106.30', 'Other'),
(1266, '2023-07-13 13:55:59', '79.104.53.14', 'Other'),
(1267, '2023-07-13 13:56:53', '34.133.2.115', 'Firefox'),
(1268, '2023-07-13 13:57:46', '143.110.156.182', 'Other'),
(1269, '2023-07-13 13:57:47', '192.53.126.23', 'Other'),
(1270, '2023-07-13 13:59:09', '179.43.169.181', 'Firefox'),
(1271, '2023-07-13 14:01:44', '18.204.233.163', 'Firefox'),
(1272, '2023-07-13 14:03:55', '107.150.22.10', 'Chrome'),
(1273, '2023-07-13 14:14:43', '169.150.203.34', 'Chrome'),
(1274, '2023-07-13 14:19:32', '205.169.39.255', 'Chrome'),
(1275, '2023-07-13 14:19:33', '205.169.39.246', 'Chrome'),
(1276, '2023-07-13 14:19:46', '154.28.229.181', 'Chrome'),
(1277, '2023-07-13 14:19:57', '205.169.39.243', 'Chrome'),
(1278, '2023-07-13 14:54:50', '39.110.218.101', 'Chrome'),
(1279, '2023-07-13 15:06:16', '110.137.39.10', 'Chrome'),
(1280, '2023-07-13 15:27:07', '65.154.226.166', 'Chrome'),
(1281, '2023-07-13 15:27:07', '65.154.226.169', 'Chrome'),
(1282, '2023-07-13 16:55:49', '34.254.53.125', 'Firefox'),
(1283, '2023-07-13 18:16:34', '69.171.231.2', 'Other'),
(1284, '2023-07-13 18:16:34', '69.171.231.6', 'Other'),
(1285, '2023-07-13 18:16:37', '66.220.149.120', 'Googlebot'),
(1286, '2023-07-13 18:16:42', '66.220.149.6', 'Safari'),
(1287, '2023-07-13 18:17:12', '66.220.149.5', 'Other'),
(1288, '2023-07-13 18:17:20', '66.220.149.119', 'Other'),
(1289, '2023-07-13 19:54:47', '133.242.140.127', 'Chrome'),
(1290, '2023-07-13 19:56:10', '171.244.43.14', 'Chrome'),
(1291, '2023-07-13 21:20:46', '167.248.133.125', 'Mozilla'),
(1292, '2023-07-13 21:30:26', '167.248.133.186', 'Mozilla'),
(1293, '2023-07-14 00:37:05', '162.142.125.13', 'Mozilla'),
(1294, '2023-07-14 00:58:26', '167.94.138.124', 'Mozilla'),
(1295, '2023-07-14 01:26:01', '116.206.43.70', 'Chrome'),
(1296, '2023-07-14 02:22:16', '120.188.5.207', 'Chrome'),
(1297, '2023-07-14 03:13:05', '44.195.244.245', 'Firefox'),
(1298, '2023-07-14 04:22:42', '64.227.74.150', 'Chrome'),
(1299, '2023-07-14 06:21:18', '89.175.184.250', 'Chrome'),
(1300, '2023-07-14 07:26:23', '116.206.43.85', 'Chrome'),
(1301, '2023-07-14 07:53:03', '188.166.232.158', 'Chrome'),
(1302, '2023-07-14 08:38:04', '182.1.229.225', 'Chrome'),
(1303, '2023-07-14 09:11:33', '87.236.176.76', 'Mozilla'),
(1304, '2023-07-14 10:38:55', '199.244.88.230', 'Chrome'),
(1305, '2023-07-14 16:04:50', '45.76.161.37', 'Other'),
(1306, '2023-07-14 16:10:36', '103.105.82.199', 'Chrome'),
(1307, '2023-07-14 16:22:28', '116.206.39.114', 'Chrome'),
(1308, '2023-07-14 16:53:01', '154.28.229.13', 'Chrome'),
(1309, '2023-07-14 16:53:03', '51.81.167.146', 'Safari'),
(1310, '2023-07-14 16:53:31', '170.64.190.167', 'Edge'),
(1311, '2023-07-14 16:53:43', '139.144.96.150', 'Other'),
(1312, '2023-07-14 16:53:43', '206.81.1.88', 'Other'),
(1313, '2023-07-14 16:53:47', '125.163.154.200', 'Opera'),
(1314, '2023-07-14 16:54:16', '103.82.15.31', 'Opera'),
(1315, '2023-07-14 16:54:52', '45.83.220.217', 'Chrome'),
(1316, '2023-07-14 16:55:01', '195.74.76.198', 'Other'),
(1317, '2023-07-14 16:56:09', '34.133.2.115', 'Chrome'),
(1318, '2023-07-14 16:56:43', '45.8.223.237', 'Chrome'),
(1319, '2023-07-14 16:58:13', '92.60.40.249', 'Chrome'),
(1320, '2023-07-14 17:26:32', '205.169.39.250', 'Chrome'),
(1321, '2023-07-14 17:26:41', '205.169.39.254', 'Chrome'),
(1322, '2023-07-14 17:26:41', '205.169.39.249', 'Chrome'),
(1323, '2023-07-14 17:36:29', '116.206.42.117', 'Chrome'),
(1324, '2023-07-14 17:39:52', '173.252.87.119', 'Other'),
(1325, '2023-07-14 17:40:03', '173.252.127.15', 'Safari'),
(1326, '2023-07-14 17:40:37', '173.252.95.9', 'Other'),
(1327, '2023-07-14 17:52:53', '39.110.218.101', 'Chrome'),
(1328, '2023-07-14 19:19:26', '34.254.53.125', 'Firefox'),
(1329, '2023-07-14 19:34:16', '165.227.72.19', 'Chrome'),
(1330, '2023-07-14 21:11:13', '87.236.176.5', 'Mozilla'),
(1331, '2023-07-14 21:26:22', '87.236.176.9', 'Mozilla'),
(1332, '2023-07-14 21:31:09', '65.154.226.169', 'Chrome'),
(1333, '2023-07-14 21:31:13', '65.154.226.170', 'Chrome'),
(1334, '2023-07-14 21:33:56', '65.154.226.166', 'Chrome'),
(1335, '2023-07-14 22:02:42', '183.129.153.157', 'Chrome'),
(1336, '2023-07-14 22:52:44', '133.242.140.127', 'Chrome'),
(1337, '2023-07-14 22:54:26', '171.244.43.14', 'Chrome'),
(1338, '2023-07-15 00:56:16', '167.248.133.185', 'Mozilla'),
(1339, '2023-07-15 01:22:43', '188.166.232.158', 'Chrome'),
(1340, '2023-07-15 03:08:17', '103.105.82.199', 'Chrome'),
(1341, '2023-07-15 03:12:57', '183.129.153.157', 'Chrome'),
(1342, '2023-07-15 03:19:26', '110.137.39.89', 'Chrome'),
(1343, '2023-07-15 03:20:32', '202.43.172.5', 'Chrome'),
(1344, '2023-07-15 03:25:18', '150.129.59.4', 'Chrome'),
(1345, '2023-07-15 03:40:32', '116.206.43.85', 'Chrome'),
(1346, '2023-07-15 04:39:06', '87.236.176.148', 'Mozilla'),
(1347, '2023-07-15 08:16:29', '104.248.237.206', 'Chrome'),
(1348, '2023-07-15 09:54:17', '165.227.223.101', 'Chrome'),
(1349, '2023-07-15 10:01:55', '198.235.24.17', 'Other'),
(1350, '2023-07-15 10:19:02', '167.248.133.191', 'Mozilla'),
(1351, '2023-07-15 10:20:34', '167.94.138.35', 'Mozilla'),
(1352, '2023-07-15 13:51:35', '87.236.176.65', 'Mozilla'),
(1353, '2023-07-15 15:21:17', '18.204.233.163', 'Firefox'),
(1354, '2023-07-15 19:20:20', '87.236.176.99', 'Mozilla'),
(1355, '2023-07-15 23:26:19', '89.175.184.250', 'Chrome'),
(1356, '2023-07-15 23:26:19', '89.175.184.250', 'Chrome'),
(1357, '2023-07-16 01:22:55', '170.64.191.33', 'Chrome'),
(1358, '2023-07-16 09:03:14', '45.76.161.37', 'Other'),
(1359, '2023-07-16 09:03:43', '103.105.82.202', 'Chrome'),
(1360, '2023-07-16 09:03:45', '113.197.108.36', 'Chrome'),
(1361, '2023-07-16 12:23:53', '34.220.129.194', 'Chrome'),
(1362, '2023-07-16 12:23:58', '34.211.110.244', 'Chrome'),
(1363, '2023-07-16 12:24:23', '34.209.81.29', 'Chrome'),
(1364, '2023-07-16 12:26:19', '34.222.32.130', 'Chrome'),
(1365, '2023-07-16 14:25:06', '143.198.156.244', 'Chrome'),
(1366, '2023-07-16 16:26:49', '116.206.42.87', 'Chrome'),
(1367, '2023-07-16 16:30:37', '116.206.39.103', 'Chrome'),
(1368, '2023-07-16 16:35:29', '116.206.39.85', 'Chrome'),
(1369, '2023-07-16 20:58:22', '68.183.201.200', 'Chrome'),
(1370, '2023-07-17 00:17:54', '182.1.235.182', 'Chrome'),
(1371, '2023-07-17 00:49:45', '116.206.43.74', 'Chrome'),
(1372, '2023-07-17 00:50:14', '110.50.81.198', 'Chrome'),
(1373, '2023-07-17 01:22:30', '110.50.80.197', 'Chrome'),
(1374, '2023-07-17 01:38:05', '182.1.229.243', 'Chrome'),
(1375, '2023-07-17 02:54:28', '116.206.39.80', 'Chrome'),
(1376, '2023-07-17 03:13:40', '110.137.39.214', 'Chrome'),
(1377, '2023-07-17 03:44:53', '116.206.212.98', 'Chrome'),
(1378, '2023-07-17 03:49:07', '116.206.43.101', 'Chrome'),
(1379, '2023-07-17 03:52:18', '103.175.82.68', 'Chrome'),
(1380, '2023-07-17 04:16:05', '116.206.42.67', 'Chrome'),
(1381, '2023-07-17 04:37:06', '203.78.116.137', 'Chrome'),
(1382, '2023-07-17 04:38:07', '18.221.53.25', 'Chrome'),
(1383, '2023-07-17 04:38:07', '18.218.43.63', 'Chrome'),
(1384, '2023-07-17 04:43:05', '52.58.12.201', 'Opera'),
(1385, '2023-07-17 05:22:55', '116.206.39.73', 'Chrome'),
(1386, '2023-07-17 05:37:36', '182.1.235.195', 'Chrome'),
(1387, '2023-07-17 06:17:58', '116.206.39.124', 'Chrome'),
(1388, '2023-07-17 07:27:32', '157.230.7.34', 'Chrome'),
(1389, '2023-07-17 08:12:45', '116.206.43.98', 'Chrome'),
(1390, '2023-07-17 08:16:15', '103.26.211.5', 'Chrome'),
(1391, '2023-07-17 08:16:23', '110.50.81.199', 'Chrome'),
(1392, '2023-07-17 08:34:37', '116.206.39.90', 'Chrome'),
(1393, '2023-07-17 09:00:37', '120.188.93.60', 'Chrome'),
(1394, '2023-07-17 09:35:55', '103.105.82.202', 'Chrome'),
(1395, '2023-07-17 09:39:25', '202.169.232.109', 'Chrome'),
(1396, '2023-07-17 10:25:47', '110.137.39.89', 'Chrome'),
(1397, '2023-07-17 11:21:21', '104.194.228.138', 'Firefox'),
(1398, '2023-07-17 12:29:13', '182.1.228.17', 'Chrome'),
(1399, '2023-07-17 12:50:43', '116.206.43.104', 'Chrome'),
(1400, '2023-07-17 16:27:19', '116.206.42.69', 'Chrome'),
(1401, '2023-07-17 19:50:05', '116.206.39.93', 'Chrome'),
(1402, '2023-07-18 00:23:08', '182.1.236.26', 'Chrome'),
(1403, '2023-07-18 00:25:01', '167.99.233.123', 'Safari'),
(1404, '2023-07-18 01:09:28', '116.206.42.83', 'Chrome'),
(1405, '2023-07-18 02:00:31', '159.203.11.128', 'Chrome'),
(1406, '2023-07-18 02:18:50', '116.206.212.98', 'Chrome'),
(1407, '2023-07-18 04:11:00', '116.206.43.77', 'Chrome');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pinjam`
--

CREATE TABLE `tbl_pinjam` (
  `pinjam_id` int(100) NOT NULL,
  `pinjam_nama` varchar(100) NOT NULL,
  `pinjam_waktu` varchar(100) NOT NULL,
  `pinjam_deskripsi` varchar(100) NOT NULL,
  `pinjam_status` varchar(10) NOT NULL DEFAULT 'Diproses'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tulisan`
--

CREATE TABLE `tbl_tulisan` (
  `tulisan_id` int(11) NOT NULL,
  `tulisan_judul` varchar(100) DEFAULT NULL,
  `tulisan_isi` text DEFAULT NULL,
  `tulisan_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `tulisan_kategori_id` int(11) DEFAULT NULL,
  `tulisan_kategori_nama` varchar(30) DEFAULT NULL,
  `tulisan_views` int(11) DEFAULT 0,
  `tulisan_gambar` varchar(40) DEFAULT NULL,
  `tulisan_pengguna_id` int(11) DEFAULT NULL,
  `tulisan_author` varchar(40) DEFAULT NULL,
  `tulisan_img_slider` int(11) NOT NULL DEFAULT 0,
  `tulisan_slug` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbl_tulisan`
--

INSERT INTO `tbl_tulisan` (`tulisan_id`, `tulisan_judul`, `tulisan_isi`, `tulisan_tanggal`, `tulisan_kategori_id`, `tulisan_kategori_nama`, `tulisan_views`, `tulisan_gambar`, `tulisan_pengguna_id`, `tulisan_author`, `tulisan_img_slider`, `tulisan_slug`) VALUES
(48, 'Gelas Ukur', '<p>sdadasdad</p>\r\n', '2023-07-17 05:12:43', 16, 'Kit Listrik ', 9, '0e38d738b827eab32b3d1428c9350ada.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'gelas-ukur'),
(49, 'Penggaris Besi', '<p>sdasdad</p>\r\n', '2023-07-17 05:13:02', 17, 'Kit Mekanika', 6, '7f1c47bb5d866e0515b2bffb10c0cf97.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'penggaris-besi'),
(50, 'Gelas Beker', '<p>sdasdassda</p>\r\n', '2023-07-17 05:13:23', 18, 'Kit Optika', 6, 'c873e0f074eb11bf78ef0ed4ea73e19a.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'gelas-beker'),
(51, 'Gelas', '<p>dasdasdadasd</p>\r\n', '2023-07-17 05:13:51', 19, 'Lainnya', 4, '739a9c2419a417385c7294d475d87d57.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'gelas'),
(52, 'sdfsdf', '<p>fdadf</p>\r\n', '2023-07-17 06:19:26', 16, 'Kit Listrik ', 4, '37f4e1354d776f65dcfbb133661151e5.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'sdfsdf'),
(53, 'vvv', '<p>vvvv</p>\r\n', '2023-07-17 06:19:40', 17, 'Kit Mekanika', 1, 'ba62c2a499ea2af03a3e598786b910ba.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'vvv'),
(54, 'ggggg', '<p>ggggg</p>\r\n', '2023-07-17 06:19:55', 18, 'Kit Optika', 2, '4a1e3ef6301f183909334ad8d8329a75.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'ggggg'),
(55, 'tryrt', '<p>tyyyy</p>\r\n', '2023-07-17 06:20:26', 19, 'Lainnya', 4, '3be64a5d49d1453e5d9fa424ab7b7729.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'tryrt'),
(56, 'cvbcvbcvb', '<p>werwer</p>\r\n', '2023-07-17 07:34:39', 17, 'Kit Mekanika', 3, '636ac27e9a88ecbf49abd7ce47d7e3a2.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'cvbcvbcvb');

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
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `tbl_guru`
--
ALTER TABLE `tbl_guru`
  MODIFY `guru_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  MODIFY `inbox_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  MODIFY `kelas_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  MODIFY `komentar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_log_aktivitas`
--
ALTER TABLE `tbl_log_aktivitas`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  MODIFY `pengguna_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  MODIFY `pengunjung_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1408;

--
-- AUTO_INCREMENT untuk tabel `tbl_pinjam`
--
ALTER TABLE `tbl_pinjam`
  MODIFY `pinjam_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  MODIFY `tulisan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
