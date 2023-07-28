-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 28 Jul 2023 pada 14.08
-- Versi server: 8.0.34
-- Versi PHP: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smas5270_fisika`
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
(16, 'Kit Listrik ', '2023-07-17 05:12:03'),
(17, 'Kit Mekanika', '2023-07-17 05:12:10'),
(18, 'Kit Optika', '2023-07-17 05:12:18'),
(19, 'Lainnya', '2023-07-17 05:12:23');

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
(8, 'Dina Mauliyani Qoriah, S.Si.', NULL, 'P', 'dina', '9b37a3ea07415a3421941a3110053b6b', NULL, 'dina@gmail.com', '0812747124214', NULL, NULL, NULL, NULL, 1, '2', '2023-07-13 09:13:06', '188bfd84f97bb7ac25228c1751a0acb9.jpeg');

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
(1407, '2023-07-18 04:11:00', '116.206.43.77', 'Chrome'),
(1408, '2023-07-26 08:51:51', '182.1.234.2', 'Chrome'),
(1409, '2023-07-26 09:08:55', '205.169.39.246', 'Chrome'),
(1410, '2023-07-26 09:09:45', '65.154.226.166', 'Chrome'),
(1411, '2023-07-26 09:14:42', '69.171.231.119', 'Other'),
(1412, '2023-07-26 09:14:42', '69.171.231.4', 'Other'),
(1413, '2023-07-26 09:14:55', '66.220.149.16', 'Safari'),
(1414, '2023-07-26 09:14:58', '65.154.226.170', 'Chrome'),
(1415, '2023-07-26 09:15:00', '173.252.127.6', 'Chrome'),
(1416, '2023-07-26 09:15:32', '69.63.189.2', 'Other'),
(1417, '2023-07-26 09:15:50', '173.252.107.111', 'Other'),
(1418, '2023-07-26 09:34:47', '51.81.167.146', 'Safari'),
(1419, '2023-07-26 09:41:15', '39.110.218.101', 'Chrome'),
(1420, '2023-07-26 10:03:23', '103.105.82.205', 'Chrome'),
(1421, '2023-07-26 10:23:03', '116.206.9.56', 'Chrome'),
(1422, '2023-07-26 11:42:58', '34.254.53.125', 'Firefox'),
(1423, '2023-07-26 12:07:50', '110.50.81.198', 'Chrome'),
(1424, '2023-07-26 12:08:56', '110.137.75.185', 'Chrome'),
(1425, '2023-07-26 12:09:00', '103.189.123.4', 'Chrome'),
(1426, '2023-07-26 14:44:20', '171.244.43.14', 'Chrome'),
(1427, '2023-07-26 17:29:18', '176.53.219.88', 'Chrome'),
(1428, '2023-07-26 18:01:53', '89.104.101.231', 'Chrome'),
(1429, '2023-07-26 20:09:41', '89.104.101.129', 'Chrome'),
(1430, '2023-07-26 20:27:18', '176.53.217.168', 'Chrome'),
(1431, '2023-07-26 20:37:26', '134.122.6.228', 'Chrome'),
(1432, '2023-07-27 00:40:47', '120.188.92.191', 'Chrome'),
(1433, '2023-07-27 00:41:11', '103.26.211.5', 'Chrome'),
(1434, '2023-07-27 00:43:13', '182.1.232.233', 'Chrome'),
(1435, '2023-07-27 02:07:49', '45.76.161.37', 'Other'),
(1436, '2023-07-27 02:58:53', '114.10.116.122', 'Chrome'),
(1437, '2023-07-27 06:39:00', '182.1.232.30', 'Chrome'),
(1438, '2023-07-27 07:11:40', '116.206.212.98', 'Chrome'),
(1439, '2023-07-27 07:16:59', '110.137.75.185', 'Chrome'),
(1440, '2023-07-27 08:13:20', '87.236.176.221', 'Mozilla'),
(1441, '2023-07-27 09:14:27', '182.253.63.4', 'Chrome'),
(1442, '2023-07-27 09:16:00', '103.175.82.69', 'Chrome'),
(1443, '2023-07-27 10:04:35', '178.175.131.100', 'Chrome'),
(1444, '2023-07-27 10:43:24', '185.209.196.225', 'Chrome'),
(1445, '2023-07-27 12:51:31', '103.82.15.31', 'Opera'),
(1446, '2023-07-27 13:23:24', '182.1.233.163', 'Chrome'),
(1447, '2023-07-27 13:36:54', '87.236.176.24', 'Mozilla'),
(1448, '2023-07-27 13:57:31', '146.190.139.158', 'Chrome'),
(1449, '2023-07-27 17:28:19', '176.53.221.51', 'Chrome'),
(1450, '2023-07-27 18:31:13', '24.199.95.152', 'Chrome'),
(1451, '2023-07-27 20:15:39', '176.53.221.1', 'Chrome'),
(1452, '2023-07-27 21:59:13', '87.236.176.191', 'Mozilla'),
(1453, '2023-07-27 23:31:20', '1.116.84.14', 'Chrome'),
(1454, '2023-07-28 01:50:24', '182.1.235.68', 'Chrome'),
(1455, '2023-07-28 02:07:40', '51.81.167.146', 'Safari'),
(1456, '2023-07-28 02:09:37', '179.43.169.181', 'Firefox'),
(1457, '2023-07-28 02:10:37', '114.10.70.151', 'Chrome'),
(1458, '2023-07-28 02:33:36', '65.154.226.169', 'Chrome'),
(1459, '2023-07-28 02:40:38', '69.171.249.1', 'Other'),
(1460, '2023-07-28 02:40:38', '69.171.249.117', 'Other'),
(1461, '2023-07-28 02:40:40', '173.252.127.22', 'Safari'),
(1462, '2023-07-28 02:40:43', '173.252.127.17', 'Safari'),
(1463, '2023-07-28 02:41:15', '69.171.249.8', 'Other'),
(1464, '2023-07-28 02:41:16', '173.252.107.10', 'Other'),
(1465, '2023-07-28 02:47:52', '116.206.212.98', 'Chrome'),
(1466, '2023-07-28 04:40:57', '34.254.53.125', 'Firefox'),
(1467, '2023-07-28 06:46:10', '116.206.42.80', 'Chrome');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pinjam`
--

CREATE TABLE `tbl_pinjam` (
  `pinjam_id` int NOT NULL,
  `pinjam_nama` varchar(100) NOT NULL,
  `pinjam_waktu` varchar(100) NOT NULL,
  `pinjam_deskripsi` varchar(100) NOT NULL,
  `pinjam_status` varchar(10) NOT NULL DEFAULT 'Diproses'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(62, 'Kabel Penghubung Merah', '<p>Alat 80</p>\r\n', '2023-07-27 02:26:00', 18, 'Kit Optika', 1, 'ff1460883d1fa2f679866056c6039b15.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'kabel-penghubung-merah'),
(63, 'Rel Presisi', '<p>Alat 79</p>\r\n', '2023-07-27 02:27:48', 18, 'Kit Optika', 1, '69d38c09204523ff44e0c191f7e426c2.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'rel-presisi'),
(64, 'Alat 78', '<p>Alat 78</p>\r\n', '2023-07-27 02:29:04', 18, 'Kit Optika', 3, '93db318c3fe7bc903a2104538b224f48.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'alat-78'),
(65, 'Tumpakan Berpenjepit', '<p>Alat 77</p>\r\n', '2023-07-27 02:32:02', 18, 'Kit Optika', 0, 'c28a479de4521b0436a376a8b71560d9.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'tumpakan-berpenjepit'),
(66, 'Kaki Rel', '<p>Alat 76</p>\r\n', '2023-07-27 02:32:46', 18, 'Kit Optika', 1, 'bc9809a20e62f71deb28c723980e1530.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'kaki-rel'),
(67, 'Alat 75', '<p>Alat 75</p>\r\n', '2023-07-27 02:33:26', 18, 'Kit Optika', 2, '058cd77a2622ab583ee7d29fda74710a.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'alat-75'),
(68, 'Penyambung Rel', '<p>Alat 74</p>\r\n', '2023-07-27 02:33:54', 18, 'Kit Optika', 1, '7509ea793464a9802943da8bac995560.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'penyambung-rel'),
(69, 'Alat 73', '<p>Alat 73</p>\r\n', '2023-07-27 02:34:18', 18, 'Kit Optika', 0, 'a69d70e115ebdd23c16100fc6e353882.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'alat-73'),
(70, 'Alat 72', '<p>Alat 72</p>\r\n', '2023-07-27 02:40:22', 18, 'Kit Optika', 0, '216f8d511391eeab919135f0050389ba.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'alat-72'),
(71, 'Alat 71', '<p>Alat 71</p>\r\n', '2023-07-27 02:40:44', 18, 'Kit Optika', 0, 'c5d6c4dcf1180f6a452ebde908624fde.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'alat-71'),
(72, 'Prisma Siku-Siku', '<p>Alat 70</p>\r\n', '2023-07-27 02:41:36', 18, 'Kit Optika', 0, 'fa89f7d732148ba228f836d2af83f096.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'prisma-siku-siku'),
(73, 'Layar Tembus Cahaya', '<p>Alat 69</p>\r\n', '2023-07-27 02:42:06', 18, 'Kit Optika', 0, '8021cce499fa1549e6c8fed884fb0a9c.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'layar-tembus-cahaya'),
(74, 'Tempat Lampu Bertangkai', '<p>Alat 68</p>\r\n', '2023-07-27 02:42:56', 18, 'Kit Optika', 0, 'b6605e655a897894e15ee7cbdb36ee24.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'tempat-lampu-bertangkai'),
(75, 'Lensa Bikonkaf', '<p>Alat 67</p>\r\n', '2023-07-27 02:43:32', 18, 'Kit Optika', 0, '0664f65abd4df6f7762f05103844d457.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'lensa-bikonkaf'),
(76, 'Balok Kaca', '<p>Alat 66</p>\r\n', '2023-07-27 02:44:09', 18, 'Kit Optika', 0, 'e592bc477a025c601ab35c107a8bab26.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'balok-kaca'),
(77, 'Diafragma 1 Celah', '<p>Alat 65</p>\r\n', '2023-07-27 02:46:33', 18, 'Kit Optika', 0, 'acbf01713c29ee7ebd2d30ee776cf3d3.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'diafragma-1-celah'),
(78, 'Diafragma Anak', '<p>Alat 64</p>\r\n', '2023-07-27 02:47:14', 18, 'Kit Optika', 0, '65d3ea8574f82a757dc969248808fe38.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'diafragma-anak'),
(79, 'Diafragma 5 Celah', '<p>Alat 63</p>\r\n', '2023-07-27 02:48:03', 18, 'Kit Optika', 0, '2dd2b840fcbf169f7c85483f6ba5d57e.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'diafragma-5-celah'),
(80, 'Kisi Difraksi', '<p>Alat 62</p>\r\n', '2023-07-27 02:48:45', 18, 'Kit Optika', 0, '27c287413930e584b1951220fc05987a.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'kisi-difraksi'),
(81, 'Cermin Kombinasi', '<p>Alat 61</p>\r\n', '2023-07-27 02:49:19', 18, 'Kit Optika', 0, 'e2b2a45a16bab28fee6a8e806dccfca2.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'cermin-kombinasi'),
(82, 'Lensa Bikonveks', '<p>Alat 60</p>\r\n', '2023-07-27 02:50:21', 18, 'Kit Optika', 0, '020a24d56366ac0d541c4fcb5472f8b1.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'lensa-bikonveks'),
(83, 'Alat 59', '<p>Alat 59</p>\r\n', '2023-07-27 02:52:11', 19, 'Lainnya', 0, '6b63b2164adef3515725d90bab0e6b29.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'alat-59'),
(84, 'Pengait Beban', '<p>Alat 58</p>\r\n', '2023-07-27 02:53:16', 17, 'Kit Mekanika', 0, '3fcf66b57ad769915740898e6487e923.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'pengait-beban'),
(85, 'Jepit Penahan', '<p>Alat 57</p>\r\n', '2023-07-27 02:54:27', 17, 'Kit Mekanika', 0, 'acd7b64153fbaeb61599b0f6ade5dfd5.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'jepit-penahan'),
(86, 'Steker Perangkai', '<p>Alat 56</p>\r\n', '2023-07-27 02:55:36', 17, 'Kit Mekanika', 0, '7c137ffb014eb538f2e6ad114299cef4.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'steker-perangkai'),
(87, 'Rel Presisi', '<p>Alat 55</p>\r\n', '2023-07-27 02:56:45', 17, 'Kit Mekanika', 0, 'ba234546bb0ce3829954bb23f6267d5c.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'rel-presisi'),
(88, 'Dasar Statif', '<p>Alat 54</p>\r\n', '2023-07-27 02:57:25', 17, 'Kit Mekanika', 1, 'eb4b330fc65ea2af20b5286ce28e5a73.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'dasar-statif'),
(89, 'Kaki Statif', '<p>Alat 53</p>\r\n', '2023-07-27 03:00:20', 17, 'Kit Mekanika', 0, '3dd626667f331fd6eb38aaef40d6fb19.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'kaki-statif'),
(90, 'Batang Statif', '<p>Alat 52</p>\r\n', '2023-07-27 03:01:41', 17, 'Kit Mekanika', 0, '885f8c2a02d0fad95efcf993909afc76.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'batang-statif'),
(91, 'Jangka Sorong', '<p>Alat 51</p>\r\n', '2023-07-27 03:02:08', 17, 'Kit Mekanika', 0, 'ac91bc30b85ddc46e3a4f892956bb36d.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'jangka-sorong'),
(92, 'Beban 50 gram', '<p>Alat 50</p>\r\n', '2023-07-27 03:04:07', 17, 'Kit Mekanika', 0, 'a5038a9591bdceec3fa094f45b478bb2.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'beban-50-gram'),
(93, 'Neraca Pegas', '<p>Alat 49</p>\r\n', '2023-07-27 03:10:04', 17, 'Kit Mekanika', 0, '33f6f985c3a1d2fefce2f518b4f77540.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'neraca-pegas'),
(94, 'Balok Pendukung', '<p>Alat 48</p>\r\n', '2023-07-27 03:11:13', 17, 'Kit Mekanika', 0, '7d7b647c15569975ec4ce52516875b28.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'balok-pendukung'),
(95, 'Catu Daya KAL-60', '<p>Alat 47</p>\r\n', '2023-07-27 03:13:40', 17, 'Kit Mekanika', 4, 'f1e40de30f254ac501395d4f6b96b9f3.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'catu-daya-kal-60'),
(96, 'Balok Aluminium', '<p>Alat 46</p>\r\n', '2023-07-27 03:14:16', 17, 'Kit Mekanika', 0, '4e020d235fbcc007e7580e46e283b8e6.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'balok-aluminium'),
(97, 'Kereta Dinamika', '<p>Alat 45</p>\r\n', '2023-07-27 03:15:10', 17, 'Kit Mekanika', 1, '5160f9d88bde02387e7fd04b9f422551.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'kereta-dinamika'),
(98, 'Balok Bertingkat', '<p>Alat 44</p>\r\n', '2023-07-27 03:16:21', 17, 'Kit Mekanika', 3, '316519fde8c4d1263bbf95faf17c8415.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'balok-bertingkat'),
(99, 'Katrol', '<p>Alat 43</p>\r\n', '2023-07-27 03:18:00', 17, 'Kit Mekanika', 3, 'cf64074e742c53e1761c4b2299790c7c.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'katrol'),
(100, 'Alat 42', '<p>Alat 42</p>\r\n', '2023-07-27 03:20:04', 19, 'Lainnya', 2, 'e0428dae2a918e0256329a8e31259464.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'alat-42'),
(101, 'Alat 41', '<p>Alat 41</p>\r\n', '2023-07-27 03:20:35', 19, 'Lainnya', 0, 'b446161c2c2681b5bfa3b17192add3ea.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'alat-41'),
(102, 'Alat 40', '<p>Alat 40</p>\r\n', '2023-07-27 03:21:42', 19, 'Lainnya', 0, '2e36a40acc826ed45a5ef5fb1e76670c.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'alat-40'),
(103, 'Alat 39', '<p>Alat 39</p>\r\n', '2023-07-27 03:22:00', 19, 'Lainnya', 0, '37b3ecff6853b2588e124fa51a4328ae.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'alat-39'),
(104, 'Alat 38', '<p>Alat 38</p>\r\n', '2023-07-27 03:22:21', 19, 'Lainnya', 0, '719fb982843816d0f49e062f8a8d539e.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'alat-38'),
(105, 'Alat 37', '<p>Alat 37</p>\r\n', '2023-07-27 03:23:42', 19, 'Lainnya', 0, '4f870152ca36d1b513b18b9d762dac54.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'alat-37'),
(106, 'Alat 36', '<p>Alat 36</p>\r\n', '2023-07-27 03:25:25', 19, 'Lainnya', 0, 'bc66f9be37aded1d3ec8dce5be0e3452.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'alat-36'),
(107, 'Bidang Miring', '<p>Alat 35</p>\r\n', '2023-07-27 03:26:55', 17, 'Kit Mekanika', 0, '633ea5c1df5ca02ccb48f88666ef71b7.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'bidang-miring'),
(108, 'Jembatan Penghubung', '<p>Alat 34</p>\r\n', '2023-07-27 03:28:23', 16, 'Kit Listrik ', 0, 'f6d9dbc07829e3bedf47cc8a7b45ba7f.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'jembatan-penghubung'),
(109, 'Bola Lampu', '<p>Alat 33</p>\r\n', '2023-07-27 03:31:33', 16, 'Kit Listrik ', 0, '9588c4ad7cb091c4c1ef3b607fd8c655.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'bola-lampu'),
(110, 'Kabel Penghubung Merah & Hitam', '<p>Alat 32</p>\r\n', '2023-07-27 03:33:03', 16, 'Kit Listrik ', 0, 'e125e042cb968e7415093445989def02.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'kabel-penghubung-merah-&-hitam'),
(111, 'Inti Besi', '<p>Alat 31</p>\r\n', '2023-07-27 03:34:15', 16, 'Kit Listrik ', 0, '87fbcf3d6592c020ec5c91014ad2b9d1.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'inti-besi'),
(112, 'Papan Rangkaian', '<p>Alat 30</p>\r\n', '2023-07-27 03:35:51', 16, 'Kit Listrik ', 0, '78ff82e2e168312ee0c6990de3049fdb.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'papan-rangkaian'),
(113, 'Jepit Steker', '<p>Alat 29</p>\r\n', '2023-07-27 03:38:13', 16, 'Kit Listrik ', 0, 'd89a1caa6bca013fce6931a745c020a7.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'jepit-steker'),
(114, 'Kawat', '<p>Alat 28</p>\r\n', '2023-07-27 03:39:18', 16, 'Kit Listrik ', 0, '8c5c549370ae3f2cc538bb1d381c903b.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'kawat'),
(115, 'Alat 27', '<p>Alat 27</p>\r\n', '2023-07-27 03:41:22', 16, 'Kit Listrik ', 0, '1accd220b730e345ba1a99a0f736a35a.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'alat-27'),
(116, 'Magnet Batang Alnico', '<p>Alat 26</p>\r\n', '2023-07-27 03:42:44', 16, 'Kit Listrik ', 0, '609fb27711adaad996b4f53eb2efc731.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'magnet-batang-alnico'),
(117, 'Model Kompas', '<p>Alat 25</p>\r\n', '2023-07-27 03:43:27', 16, 'Kit Listrik ', 0, '839b9c1906d25ec249689bc626a537b4.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'model-kompas'),
(118, 'Transistor 2SD438', '<p>Alat 24</p>\r\n', '2023-07-27 03:44:57', 16, 'Kit Listrik ', 0, '710148497e285027666e6cabe00791df.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'transistor-2sd438'),
(119, 'Alat 23', '<p>Alat 23</p>\r\n', '2023-07-27 03:50:21', 16, 'Kit Listrik ', 0, 'bc7f7f28aa1e6bd8aacdf87600b3de44.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'alat-23'),
(120, 'Alat 22', '<p>Alat 22</p>\r\n', '2023-07-27 03:50:41', 16, 'Kit Listrik ', 1, 'da47ceda5cf21646534960a159ed7996.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'alat-22'),
(121, 'Kumparan', '<p>Alat 21</p>\r\n', '2023-07-27 03:51:56', 16, 'Kit Listrik ', 1, '071fca93bc63641d51f4e79fef14d7a4.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'kumparan'),
(122, 'Potensiometer', '<p>Alat 20</p>\r\n', '2023-07-27 03:53:19', 16, 'Kit Listrik ', 1, 'f70194693a0971131e1e87908dc41c9b.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'potensiometer'),
(123, 'Alat 19', '<p>Alat 19</p>\r\n', '2023-07-27 03:55:07', 19, 'Lainnya', 0, '173d62811fccf4cde829c01d42fb01c4.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'alat-19'),
(124, 'Alat 18', '<p>Alat 18</p>\r\n', '2023-07-27 03:55:55', 19, 'Lainnya', 0, '38685ccd46d450753ea87e7038b176f0.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'alat-18'),
(125, 'Alat 17', '<p>Alat 17</p>\r\n', '2023-07-27 03:56:55', 19, 'Lainnya', 1, '041d9697f9dac52bc655695e100e37d2.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'alat-17'),
(126, 'Catu Daya KAL60', '<p>Alat 16</p>\r\n', '2023-07-27 06:42:16', 16, 'Kit Listrik ', 1, '104630fd7e00a734a834daf7d0787e93.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'catu-daya-kal60'),
(127, 'Alat 15', '<p>Alat 15</p>\r\n', '2023-07-27 06:42:56', 19, 'Lainnya', 2, '3af9a4a4449dc026ffa27be28f3a80c3.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'alat-15'),
(128, 'Alat 14', '<p>Alat 14</p>\r\n', '2023-07-27 06:46:02', 19, 'Lainnya', 0, 'a7d481d0626b3d70974f98a0be7e45ef.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'alat-14'),
(129, 'Alat 13', '<p>Alat 13</p>\r\n', '2023-07-27 06:46:30', 19, 'Lainnya', 0, 'f65f08cb0b00f382dfabb252e892e5fd.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'alat-13'),
(130, 'Alat 12', '<p>Alat 12</p>\r\n', '2023-07-27 06:46:52', 19, 'Lainnya', 0, '3ec3e5a46629ea670db63ccff3212382.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'alat-12'),
(131, 'Alat 11', '<p>Alat 11</p>\r\n', '2023-07-27 06:47:17', 19, 'Lainnya', 1, '37adac342530e8b87f6ddbe8ed3ab4d6.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'alat-11'),
(132, 'Alat 10', '<p>Alat 10</p>\r\n', '2023-07-27 06:49:02', 19, 'Lainnya', 2, '267f413fb7520293d0b7ebb3bdbbd54a.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'alat-10'),
(133, 'Alat 9', '<p>Alat 9</p>\r\n', '2023-07-27 06:49:36', 19, 'Lainnya', 2, '61437695663ecd9fc9729578ba8b1586.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'alat-9'),
(134, 'Alat 8', '<p>Alat 8</p>\r\n', '2023-07-27 06:50:01', 19, 'Lainnya', 0, '27a41f65a7df8ccfa272f1ba069acb11.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'alat-8'),
(135, 'Alat 7', '<p>Alat 7</p>\r\n', '2023-07-27 06:51:27', 19, 'Lainnya', 0, '99f9896b7df7542d7e1649e8875bcb5e.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'alat-7'),
(136, 'Alat 6', '<p>Alat 6</p>\r\n', '2023-07-27 06:52:03', 19, 'Lainnya', 1, '0a4e506b5b96a20488750b7922cd83b3.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'alat-6'),
(137, 'Alat 5', '<p>Alat 5</p>\r\n', '2023-07-27 06:52:22', 19, 'Lainnya', 1, '5699c9c9f70d6f27bab6c426d14411e1.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'alat-5'),
(138, 'Alat 4', '<p>Alat 4</p>\r\n', '2023-07-27 06:54:53', 19, 'Lainnya', 0, '330b04dcc740baae63a6f7aed1415c2a.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'alat-4'),
(139, 'Alat 3', '<p>Alat 3</p>\r\n', '2023-07-27 06:55:14', 19, 'Lainnya', 0, 'edf8943e711faff64246e5e35be5be29.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'alat-3'),
(140, 'Alat 2', '<p>Alat 2</p>\r\n', '2023-07-27 06:55:30', 19, 'Lainnya', 5, 'f01ceb1463253719c0ad893b37d314de.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'alat-2'),
(141, 'Alat 1', '<p>Alat 1</p>\r\n', '2023-07-27 06:55:49', 19, 'Lainnya', 7, '62888018c3331619ad613fdcfa78e184.jpg', 6, 'Siti Nur Prafitri.M, S.Pd.', 0, 'alat-1');

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
  MODIFY `file_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `tbl_guru`
--
ALTER TABLE `tbl_guru`
  MODIFY `guru_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  MODIFY `inbox_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `kategori_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  MODIFY `kelas_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  MODIFY `komentar_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_log_aktivitas`
--
ALTER TABLE `tbl_log_aktivitas`
  MODIFY `log_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  MODIFY `pengguna_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  MODIFY `pengunjung_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1468;

--
-- AUTO_INCREMENT untuk tabel `tbl_pinjam`
--
ALTER TABLE `tbl_pinjam`
  MODIFY `pinjam_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  MODIFY `tulisan_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
