-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Agu 2021 pada 09.50
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_spkskripsi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` text NOT NULL,
  `level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `level`) VALUES
(1, 'user', 'user', 'user'),
(2, 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hitung`
--

CREATE TABLE `hitung` (
  `id_hitung` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `hitung`
--

INSERT INTO `hitung` (`id_hitung`, `id_siswa`, `tanggal`) VALUES
(735, 1, '2021-07-19 02:03:23'),
(736, 2, '2021-07-19 02:03:23'),
(737, 3, '2021-07-19 02:03:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sub_kriteria`
--

CREATE TABLE `sub_kriteria` (
  `id_sub` int(11) NOT NULL,
  `skala_sub` varchar(20) NOT NULL,
  `nilai_bobotsub` float NOT NULL,
  `keterangan_sub` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sub_kriteria`
--

INSERT INTO `sub_kriteria` (`id_sub`, `skala_sub`, `nilai_bobotsub`, `keterangan_sub`) VALUES
(1, '90-100', 5, 'Sangat Baik'),
(2, '80-89', 4, 'Baik'),
(3, '70-79', 3, 'Cukup'),
(4, '60-69', 2, 'Kurang'),
(5, '50-59', 1, 'Sangat Kurang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_hasil`
--

CREATE TABLE `tabel_hasil` (
  `id_hasil` int(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nilai` double NOT NULL,
  `tanggal` timestamp NULL DEFAULT current_timestamp(),
  `status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_hasil`
--

INSERT INTO `tabel_hasil` (`id_hasil`, `nama`, `nilai`, `tanggal`, `status`) VALUES
(6, 'Darrel Reswaranto', 0.33300945755553, '2021-07-07 02:09:51', ''),
(7, 'Cantona Juvendwi Y.', 0.33076086248855, '2021-07-07 02:09:51', ''),
(8, 'Ahmad Reihan D.', 0.32884789825503, '2021-07-07 02:09:51', ''),
(9, 'Cessa Gilang R.', 0.32610838928062, '2021-07-07 02:09:51', ''),
(10, 'Rizky Febriansyah', 0.31761308189954, '2021-07-07 02:09:51', ''),
(11, 'Alvino Hesa P.', 0.31709670448952, '2021-07-07 02:09:51', ''),
(12, 'Kristian Yoga P.', 0.30192024988371, '2021-07-07 02:09:51', ''),
(13, 'M. Fatkhur Rosi', 0.29847342748884, '2021-07-07 02:09:51', ''),
(14, 'Devano Diaz A.', 0.29734899683017, '2021-07-07 02:09:51', ''),
(15, 'Moch Farel F.', 0.28691219733848, '2021-07-07 02:09:51', ''),
(26, 'Darrel Reswaranto', 0.29452021249748, '2021-07-07 08:52:14', ''),
(27, 'Cantona Juvendwi Y.', 0.29256322827832, '2021-07-07 08:52:14', ''),
(28, 'Ahmad Reihan D.', 0.29084197677978, '2021-07-07 08:52:14', ''),
(29, 'Cessa Gilang R.', 0.28835105630586, '2021-07-07 08:52:14', ''),
(30, 'Rizky Febriansyah', 0.28126181191271, '2021-07-07 08:52:14', ''),
(31, 'Alvino Hesa P.', 0.28058315558745, '2021-07-07 08:52:14', ''),
(32, 'Reno Putra Kanaya', 0.27166829006406, '2021-07-07 08:52:14', ''),
(33, 'Yoga Adi Pratama', 0.26820631317431, '2021-07-07 08:52:14', ''),
(34, 'Kristian Yoga P.', 0.26743272405705, '2021-07-07 08:52:14', ''),
(35, 'M. Fatkhur Rosi', 0.2641164930058, '2021-07-07 08:52:14', ''),
(36, 'Devano Diaz A.', 0.26316439538294, '2021-07-07 08:52:14', ''),
(37, 'Revan Anugrah Ardiansyah', 0.26017668981868, '2021-07-07 08:52:14', ''),
(38, 'Moch Farel F.', 0.2538800495187, '2021-07-07 08:52:14', ''),
(39, 'Farel Atya Satya B', 0.59455811238349, '2021-07-07 08:55:14', ''),
(40, 'Moch Caesar Ramadhani', 0.57416314939108, '2021-07-07 08:55:14', ''),
(41, 'Dava Oky Saputra', 0.55570937759748, '2021-07-07 08:55:14', ''),
(42, 'Darrel Reswaranto', 0.33300945755553, '2021-07-08 01:04:48', ''),
(43, 'Cantona Juvendwi Y.', 0.33076086248855, '2021-07-08 01:04:48', ''),
(44, 'Ahmad Reihan D.', 0.32884789825503, '2021-07-08 01:04:48', ''),
(45, 'Cessa Gilang R.', 0.32610838928062, '2021-07-08 01:04:48', ''),
(46, 'Rizky Febriansyah', 0.31761308189954, '2021-07-08 01:04:48', ''),
(47, 'Alvino Hesa P.', 0.31709670448952, '2021-07-08 01:04:48', ''),
(48, 'Kristian Yoga P.', 0.30192024988371, '2021-07-08 01:04:48', ''),
(49, 'M. Fatkhur Rosi', 0.29847342748884, '2021-07-08 01:04:48', ''),
(50, 'Devano Diaz A.', 0.29734899683017, '2021-07-08 01:04:48', ''),
(51, 'Moch Farel F.', 0.28691219733848, '2021-07-08 01:04:48', ''),
(52, 'Mochammad Dama Arijalil', 0.19694996839364, '2021-07-13 06:58:31', ''),
(53, 'Darrel Reswaranto', 0.19519889263333, '2021-07-13 06:58:31', ''),
(54, 'Cantona Juvendwi Y.', 0.19387177076772, '2021-07-13 06:58:31', ''),
(55, 'Ahmad Reihan D.', 0.19282331041053, '2021-07-13 06:58:31', ''),
(56, 'Cessa Gilang R.', 0.19137568290033, '2021-07-13 06:58:31', ''),
(57, 'Wahyu Fakhri Wahabi', 0.18977892848839, '2021-07-13 06:58:31', ''),
(58, 'Arta Nugroho', 0.18829575053706, '2021-07-13 06:58:31', ''),
(59, 'Rizky Febriansyah', 0.18626739160081, '2021-07-13 06:58:31', ''),
(60, 'Jeremy Mario Lalopua', 0.18598761820327, '2021-07-13 06:58:31', ''),
(61, 'Alvino Hesa P.', 0.18585764755116, '2021-07-13 06:58:31', ''),
(62, 'Akmal Irsyad Hakim', 0.1855963432272, '2021-07-13 06:58:31', ''),
(63, 'Farel Atya Satya B', 0.18522323181427, '2021-07-13 06:58:31', ''),
(64, 'Adrian Julio Filbert Talahatu', 0.18164126103901, '2021-07-13 06:58:31', ''),
(65, 'Ardhan Caesario Destiawan', 0.18108672432315, '2021-07-13 06:58:31', ''),
(66, 'Reno Putra Kanaya', 0.18010253822319, '2021-07-13 06:58:31', ''),
(67, 'M Jefri A', 0.17888551384429, '2021-07-13 06:58:31', ''),
(68, 'Moch Caesar Ramadhani', 0.17866035062556, '2021-07-13 06:58:31', ''),
(69, 'Yoga Adi Pratama', 0.17785346349571, '2021-07-13 06:58:31', ''),
(70, 'Kristian Yoga P.', 0.17714249571315, '2021-07-13 06:58:31', ''),
(71, 'M. Fatkhur Rosi', 0.17520926014824, '2021-07-13 06:58:31', ''),
(72, 'Adiatma Ramadhani', 0.17468143821777, '2021-07-13 06:58:31', ''),
(73, 'M Kevin Adi Saputra', 0.17455667098529, '2021-07-13 06:58:31', ''),
(74, 'Devano Diaz A.', 0.1742352430141, '2021-07-13 06:58:31', ''),
(75, 'Dava Oky Saputra', 0.17292881616272, '2021-07-13 06:58:31', ''),
(76, 'Revan Anugrah Ardiansyah', 0.17274642252627, '2021-07-13 06:58:31', ''),
(77, 'Kaysan Namfal Yusra', 0.17193032994315, '2021-07-13 06:58:31', ''),
(78, 'Dandy Arya Januar', 0.17148759008688, '2021-07-13 06:58:31', ''),
(79, 'Reynhard Aldino C Talahatu', 0.16894575529437, '2021-07-13 06:58:31', ''),
(80, 'Differemley Haruma Dirgantara', 0.16879874924624, '2021-07-13 06:58:31', ''),
(81, 'Moch Farel F.', 0.1684386862697, '2021-07-13 06:58:31', ''),
(82, 'Mochammad Dama Arijalil', 0.19694996839364, '2021-07-15 21:02:54', ''),
(83, 'Darrel Reswaranto', 0.19519889263333, '2021-07-15 21:02:54', ''),
(84, 'Cantona Juvendwi Y.', 0.19387177076772, '2021-07-15 21:02:54', ''),
(85, 'Ahmad Reihan D.', 0.19282331041053, '2021-07-15 21:02:54', ''),
(86, 'Cessa Gilang R.', 0.19137568290033, '2021-07-15 21:02:54', ''),
(87, 'Wahyu Fakhri Wahabi', 0.18977892848839, '2021-07-15 21:02:54', ''),
(88, 'Arta Nugroho', 0.18829575053706, '2021-07-15 21:02:54', ''),
(89, 'Rizky Febriansyah', 0.18626739160081, '2021-07-15 21:02:54', ''),
(90, 'Jeremy Mario Lalopua', 0.18598761820327, '2021-07-15 21:02:54', ''),
(91, 'Alvino Hesa P.', 0.18585764755116, '2021-07-15 21:02:54', ''),
(92, 'Akmal Irsyad Hakim', 0.1855963432272, '2021-07-15 21:02:54', ''),
(93, 'Farel Atya Satya B', 0.18522323181427, '2021-07-15 21:02:54', ''),
(94, 'Adrian Julio Filbert Talahatu', 0.18164126103901, '2021-07-15 21:02:54', ''),
(95, 'Ardhan Caesario Destiawan', 0.18108672432315, '2021-07-15 21:02:54', ''),
(96, 'Reno Putra Kanaya', 0.18010253822319, '2021-07-15 21:02:54', ''),
(97, 'M Jefri A', 0.17888551384429, '2021-07-15 21:02:54', ''),
(98, 'Moch Caesar Ramadhani', 0.17866035062556, '2021-07-15 21:02:54', ''),
(99, 'Yoga Adi Pratama', 0.17785346349571, '2021-07-15 21:02:54', ''),
(100, 'Kristian Yoga P.', 0.17714249571315, '2021-07-15 21:02:54', ''),
(101, 'M. Fatkhur Rosi', 0.17520926014824, '2021-07-15 21:02:54', ''),
(102, 'Adiatma Ramadhani', 0.17468143821777, '2021-07-15 21:02:54', ''),
(103, 'M Kevin Adi Saputra', 0.17455667098529, '2021-07-15 21:02:54', ''),
(104, 'Devano Diaz A.', 0.1742352430141, '2021-07-15 21:02:54', ''),
(105, 'Dava Oky Saputra', 0.17292881616272, '2021-07-15 21:02:54', ''),
(106, 'Revan Anugrah Ardiansyah', 0.17274642252627, '2021-07-15 21:02:54', ''),
(107, 'Kaysan Namfal Yusra', 0.17193032994315, '2021-07-15 21:02:54', ''),
(108, 'Dandy Arya Januar', 0.17148759008688, '2021-07-15 21:02:54', ''),
(109, 'Reynhard Aldino C Talahatu', 0.16894575529437, '2021-07-15 21:02:54', ''),
(110, 'Differemley Haruma Dirgantara', 0.16879874924624, '2021-07-15 21:02:54', ''),
(111, 'Moch Farel F.', 0.1684386862697, '2021-07-15 21:02:54', ''),
(112, 'Mochammad Dama Arijalil', 0.19694996839364, '2021-07-19 01:57:55', ''),
(113, 'Darrel Reswaranto', 0.19519889263333, '2021-07-19 01:57:55', ''),
(114, 'Cantona Juvendwi Y.', 0.19387177076772, '2021-07-19 01:57:55', ''),
(115, 'Ahmad Reihan D.', 0.19282331041053, '2021-07-19 01:57:55', ''),
(116, 'Cessa Gilang R.', 0.19137568290033, '2021-07-19 01:57:55', ''),
(117, 'Wahyu Fakhri Wahabi', 0.18977892848839, '2021-07-19 01:57:55', ''),
(118, 'Arta Nugroho', 0.18829575053706, '2021-07-19 01:57:55', ''),
(119, 'Rizky Febriansyah', 0.18626739160081, '2021-07-19 01:57:55', ''),
(120, 'Jeremy Mario Lalopua', 0.18598761820327, '2021-07-19 01:57:55', ''),
(121, 'Alvino Hesa P.', 0.18585764755116, '2021-07-19 01:57:55', ''),
(122, 'Akmal Irsyad Hakim', 0.1855963432272, '2021-07-19 01:57:55', ''),
(123, 'Farel Atya Satya B', 0.18522323181427, '2021-07-19 01:57:55', ''),
(124, 'Adrian Julio Filbert Talahatu', 0.18164126103901, '2021-07-19 01:57:55', ''),
(125, 'Ardhan Caesario Destiawan', 0.18108672432315, '2021-07-19 01:57:55', ''),
(126, 'Reno Putra Kanaya', 0.18010253822319, '2021-07-19 01:57:55', ''),
(127, 'M Jefri A', 0.17888551384429, '2021-07-19 01:57:55', ''),
(128, 'Moch Caesar Ramadhani', 0.17866035062556, '2021-07-19 01:57:55', ''),
(129, 'Yoga Adi Pratama', 0.17785346349571, '2021-07-19 01:57:55', ''),
(130, 'Kristian Yoga P.', 0.17714249571315, '2021-07-19 01:57:55', ''),
(131, 'M. Fatkhur Rosi', 0.17520926014824, '2021-07-19 01:57:55', ''),
(132, 'Adiatma Ramadhani', 0.17468143821777, '2021-07-19 01:57:55', ''),
(133, 'M Kevin Adi Saputra', 0.17455667098529, '2021-07-19 01:57:55', ''),
(134, 'Devano Diaz A.', 0.1742352430141, '2021-07-19 01:57:55', ''),
(135, 'Dava Oky Saputra', 0.17292881616272, '2021-07-19 01:57:55', ''),
(136, 'Revan Anugrah Ardiansyah', 0.17274642252627, '2021-07-19 01:57:55', ''),
(137, 'Kaysan Namfal Yusra', 0.17193032994315, '2021-07-19 01:57:55', ''),
(138, 'Dandy Arya Januar', 0.17148759008688, '2021-07-19 01:57:55', ''),
(139, 'Reynhard Aldino C Talahatu', 0.16894575529437, '2021-07-19 01:57:55', ''),
(140, 'Differemley Haruma Dirgantara', 0.16879874924624, '2021-07-19 01:57:55', ''),
(141, 'Moch Farel F.', 0.1684386862697, '2021-07-19 01:57:55', ''),
(142, 'Darrel Reswaranto', 0.46570072206363, '2021-07-19 02:02:02', ''),
(143, 'Cantona Juvendwi Y.', 0.46252072842361, '2021-07-19 02:02:02', ''),
(144, 'Ahmad Reihan D.', 0.46069688886939, '2021-07-19 02:02:02', ''),
(145, 'M. Fatkhur Rosi', 0.41845552459881, '2021-07-19 02:02:02', ''),
(146, 'Devano Diaz A.', 0.41582456003937, '2021-07-19 02:02:02', ''),
(147, 'Darrel Reswaranto', 0.59779060885191, '2021-07-19 02:03:23', ''),
(148, 'Ahmad Reihan D.', 0.58950751023384, '2021-07-19 02:03:23', ''),
(149, 'M. Fatkhur Rosi', 0.53630612309958, '2021-07-19 02:03:23', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_kriteria`
--

CREATE TABLE `tabel_kriteria` (
  `id_kriteria` int(10) NOT NULL,
  `kriteria` text NOT NULL,
  `kode` varchar(20) NOT NULL,
  `type` varchar(10) NOT NULL,
  `bobot` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_kriteria`
--

INSERT INTO `tabel_kriteria` (`id_kriteria`, `kriteria`, `kode`, `type`, `bobot`) VALUES
(1, 'Shooting', 'K1', 'benefit', 0.09),
(2, 'Dribbling', 'K2', 'benefit', 0.09),
(3, 'Passing', 'K3', 'benefit', 0.09),
(4, 'Ball Control', 'K4', 'benefit', 0.07),
(5, 'Heading', 'K5', 'benefit', 0.07),
(6, 'Positioning', 'K6', 'benefit', 0.04),
(7, 'Ball Positioning', 'K7', 'benefit', 0.04),
(8, 'Transition Movement', 'K8', 'benefit', 0.04),
(9, 'Speed', 'K9', 'benefit', 0.07),
(10, 'Coordination', 'K10', 'benefit', 0.03),
(11, 'Agility', 'K11', 'benefit', 0.04),
(12, 'Confidence', 'K12', 'benefit', 0.03),
(13, 'Concentration', 'K13', 'benefit', 0.03),
(14, 'Fairplay', 'K14', 'benefit', 0.12),
(15, 'Attitude', 'K15', 'benefit', 0.15);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_nilai`
--

CREATE TABLE `tabel_nilai` (
  `id_nilai` int(11) NOT NULL,
  `id_kriteria` int(10) NOT NULL,
  `id_siswa` int(100) NOT NULL,
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_nilai`
--

INSERT INTO `tabel_nilai` (`id_nilai`, `id_kriteria`, `id_siswa`, `nilai`) VALUES
(1, 1, 1, 4),
(2, 2, 1, 4),
(3, 3, 1, 4),
(4, 4, 1, 5),
(5, 5, 1, 3),
(6, 6, 1, 4),
(7, 7, 1, 4),
(8, 8, 1, 4),
(9, 9, 1, 5),
(10, 10, 1, 4),
(11, 11, 1, 4),
(12, 12, 1, 4),
(13, 13, 1, 4),
(14, 14, 1, 5),
(15, 15, 1, 5),
(16, 1, 2, 3),
(17, 2, 2, 4),
(18, 3, 2, 4),
(19, 4, 2, 4),
(20, 5, 2, 4),
(21, 6, 2, 4),
(22, 7, 2, 4),
(23, 8, 2, 3),
(24, 9, 2, 4),
(25, 10, 2, 5),
(26, 11, 2, 4),
(27, 12, 2, 4),
(28, 13, 2, 5),
(29, 14, 2, 4),
(30, 15, 2, 4),
(31, 1, 3, 4),
(32, 2, 3, 5),
(33, 3, 3, 4),
(34, 4, 3, 4),
(35, 5, 3, 4),
(36, 6, 3, 4),
(37, 7, 3, 4),
(38, 8, 3, 4),
(39, 9, 3, 4),
(40, 10, 3, 4),
(41, 11, 3, 4),
(42, 12, 3, 5),
(43, 13, 3, 4),
(44, 14, 3, 5),
(45, 15, 3, 5),
(46, 1, 4, 4),
(47, 2, 4, 4),
(48, 3, 4, 4),
(49, 4, 4, 3),
(50, 5, 4, 4),
(51, 6, 4, 5),
(52, 7, 4, 4),
(53, 8, 4, 4),
(54, 9, 4, 3),
(55, 10, 4, 5),
(56, 11, 4, 4),
(57, 12, 4, 4),
(58, 13, 4, 3),
(59, 14, 4, 4),
(60, 15, 4, 4),
(61, 1, 5, 4),
(62, 2, 5, 5),
(63, 3, 5, 4),
(64, 4, 5, 4),
(65, 5, 5, 4),
(66, 6, 5, 4),
(67, 7, 5, 4),
(68, 8, 5, 4),
(69, 9, 5, 4),
(70, 10, 5, 4),
(71, 11, 5, 4),
(72, 12, 5, 4),
(73, 13, 5, 4),
(74, 14, 5, 5),
(75, 15, 5, 5),
(76, 1, 6, 4),
(77, 2, 6, 4),
(78, 3, 6, 5),
(79, 4, 6, 4),
(80, 5, 6, 3),
(81, 6, 6, 4),
(82, 7, 6, 4),
(83, 8, 6, 4),
(84, 9, 6, 5),
(85, 10, 6, 4),
(86, 11, 6, 4),
(87, 12, 6, 5),
(88, 13, 6, 5),
(89, 14, 6, 4),
(90, 15, 6, 5),
(91, 1, 7, 3),
(92, 2, 7, 3),
(93, 3, 7, 4),
(94, 4, 7, 5),
(95, 5, 7, 3),
(96, 6, 7, 4),
(97, 7, 7, 4),
(98, 8, 7, 3),
(99, 9, 7, 4),
(100, 10, 7, 4),
(101, 11, 7, 4),
(102, 12, 7, 4),
(103, 13, 7, 4),
(104, 14, 7, 4),
(105, 15, 7, 4),
(106, 1, 8, 4),
(107, 2, 8, 5),
(108, 3, 8, 3),
(109, 4, 8, 4),
(110, 5, 8, 4),
(111, 6, 8, 4),
(112, 7, 8, 4),
(113, 8, 8, 4),
(114, 9, 8, 4),
(115, 10, 8, 4),
(116, 11, 8, 4),
(117, 12, 8, 4),
(118, 13, 8, 5),
(119, 14, 8, 4),
(120, 15, 8, 5),
(121, 1, 9, 3),
(122, 2, 9, 3),
(123, 3, 9, 4),
(124, 4, 9, 4),
(125, 5, 9, 4),
(126, 6, 9, 4),
(127, 7, 9, 5),
(128, 8, 9, 5),
(129, 9, 9, 5),
(130, 10, 9, 4),
(131, 11, 9, 4),
(132, 12, 9, 4),
(133, 13, 9, 4),
(134, 14, 9, 4),
(135, 15, 9, 4),
(136, 1, 10, 4),
(137, 2, 10, 4),
(138, 3, 10, 4),
(139, 4, 10, 3),
(140, 5, 10, 5),
(141, 6, 10, 4),
(142, 7, 10, 4),
(143, 8, 10, 4),
(144, 9, 10, 4),
(145, 10, 10, 4),
(146, 11, 10, 4),
(147, 12, 10, 4),
(148, 13, 10, 5),
(149, 14, 10, 4),
(150, 15, 10, 5),
(151, 1, 11, 0),
(152, 2, 11, 5),
(153, 3, 11, 0),
(154, 4, 11, 0),
(155, 5, 11, 1),
(156, 6, 11, 5),
(157, 7, 11, 5),
(158, 8, 11, 5),
(159, 9, 11, 5),
(160, 10, 11, 5),
(161, 11, 11, 5),
(162, 12, 11, 5),
(163, 13, 11, 5),
(164, 14, 11, 5),
(165, 15, 11, 5),
(166, 1, 12, 3),
(167, 2, 12, 5),
(168, 3, 12, 4),
(169, 4, 12, 3),
(170, 5, 12, 3),
(171, 6, 12, 3),
(172, 7, 12, 4),
(173, 8, 12, 3),
(174, 9, 12, 3),
(175, 10, 12, 5),
(176, 11, 12, 4),
(177, 12, 12, 4),
(178, 13, 12, 5),
(179, 14, 12, 5),
(180, 15, 12, 5),
(181, 1, 13, 4),
(182, 2, 13, 4),
(183, 3, 13, 4),
(184, 4, 13, 4),
(185, 5, 13, 4),
(186, 6, 13, 4),
(187, 7, 13, 4),
(188, 8, 13, 5),
(189, 9, 13, 4),
(190, 10, 13, 4),
(191, 11, 13, 4),
(192, 12, 13, 4),
(193, 13, 13, 4),
(194, 14, 13, 5),
(195, 15, 13, 4),
(196, 1, 14, 5),
(197, 2, 14, 4),
(198, 3, 14, 4),
(199, 4, 14, 4),
(200, 5, 14, 4),
(201, 6, 14, 3),
(202, 7, 14, 4),
(203, 8, 14, 4),
(204, 9, 14, 4),
(205, 10, 14, 5),
(206, 11, 14, 4),
(207, 12, 14, 5),
(208, 13, 14, 4),
(209, 14, 14, 4),
(210, 15, 14, 5),
(211, 1, 15, 4),
(212, 2, 15, 4),
(213, 3, 15, 4),
(214, 4, 15, 3),
(215, 5, 15, 3),
(216, 6, 15, 4),
(217, 7, 15, 3),
(218, 8, 15, 5),
(219, 9, 15, 5),
(220, 10, 15, 4),
(221, 11, 15, 4),
(222, 12, 15, 4),
(223, 13, 15, 5),
(224, 14, 15, 5),
(225, 15, 15, 4),
(226, 1, 16, 3),
(227, 2, 16, 5),
(228, 3, 16, 4),
(229, 4, 16, 3),
(230, 5, 16, 3),
(231, 6, 16, 3),
(232, 7, 16, 4),
(233, 8, 16, 3),
(234, 9, 16, 3),
(235, 10, 16, 5),
(236, 11, 16, 4),
(237, 12, 16, 4),
(238, 13, 16, 5),
(239, 14, 16, 5),
(240, 15, 16, 4),
(241, 1, 17, 4),
(242, 2, 17, 4),
(243, 3, 17, 4),
(244, 4, 17, 4),
(245, 5, 17, 3),
(246, 6, 17, 4),
(247, 7, 17, 4),
(248, 8, 17, 3),
(249, 9, 17, 5),
(250, 10, 17, 4),
(251, 11, 17, 4),
(252, 12, 17, 5),
(253, 13, 17, 4),
(254, 14, 17, 4),
(255, 15, 17, 4),
(256, 1, 18, 4),
(257, 2, 18, 4),
(258, 3, 18, 4),
(259, 4, 18, 4),
(260, 5, 18, 3),
(261, 6, 18, 4),
(262, 7, 18, 4),
(263, 8, 18, 4),
(264, 9, 18, 4),
(265, 10, 18, 3),
(266, 11, 18, 4),
(267, 12, 18, 4),
(268, 13, 18, 4),
(269, 14, 18, 4),
(270, 15, 18, 5),
(271, 1, 19, 3),
(272, 2, 19, 3),
(273, 3, 19, 4),
(274, 4, 19, 4),
(275, 5, 19, 4),
(276, 6, 19, 4),
(277, 7, 19, 5),
(278, 8, 19, 5),
(279, 9, 19, 4),
(280, 10, 19, 4),
(281, 11, 19, 4),
(282, 12, 19, 4),
(283, 13, 19, 4),
(284, 14, 19, 3),
(285, 15, 19, 4),
(286, 1, 20, 5),
(287, 2, 20, 4),
(288, 3, 20, 4),
(289, 4, 20, 3),
(290, 5, 20, 4),
(291, 6, 20, 3),
(292, 7, 20, 3),
(293, 8, 20, 4),
(294, 9, 20, 4),
(295, 10, 20, 4),
(296, 11, 20, 4),
(297, 12, 20, 4),
(298, 13, 20, 3),
(299, 14, 20, 4),
(300, 15, 20, 4),
(301, 1, 21, 4),
(302, 2, 21, 4),
(303, 3, 21, 3),
(304, 4, 21, 4),
(305, 5, 21, 3),
(306, 6, 21, 4),
(307, 7, 21, 4),
(308, 8, 21, 4),
(309, 9, 21, 4),
(310, 10, 21, 3),
(311, 11, 21, 4),
(312, 12, 21, 4),
(313, 13, 21, 3),
(314, 14, 21, 4),
(315, 15, 21, 5),
(316, 1, 22, 4),
(317, 2, 22, 4),
(318, 3, 22, 3),
(319, 4, 22, 4),
(320, 5, 22, 4),
(321, 6, 22, 4),
(322, 7, 22, 4),
(323, 8, 22, 4),
(324, 9, 22, 4),
(325, 10, 22, 4),
(326, 11, 22, 3),
(327, 12, 22, 5),
(328, 13, 22, 4),
(329, 14, 22, 3),
(330, 15, 22, 4),
(331, 1, 23, 5),
(332, 2, 23, 4),
(333, 3, 23, 4),
(334, 4, 23, 5),
(335, 5, 23, 3),
(336, 6, 23, 4),
(337, 7, 23, 5),
(338, 8, 23, 4),
(339, 9, 23, 4),
(340, 10, 23, 4),
(341, 11, 23, 4),
(342, 12, 23, 3),
(343, 13, 23, 4),
(344, 14, 23, 5),
(345, 15, 23, 4),
(346, 1, 24, 4),
(347, 2, 24, 5),
(348, 3, 24, 4),
(349, 4, 24, 4),
(350, 5, 24, 4),
(351, 6, 24, 4),
(352, 7, 24, 4),
(353, 8, 24, 4),
(354, 9, 24, 5),
(355, 10, 24, 5),
(356, 11, 24, 4),
(357, 12, 24, 4),
(358, 13, 24, 3),
(359, 14, 24, 5),
(360, 15, 24, 5),
(361, 1, 25, 4),
(362, 2, 25, 4),
(363, 3, 25, 4),
(364, 4, 25, 5),
(365, 5, 25, 3),
(366, 6, 25, 3),
(367, 7, 25, 4),
(368, 8, 25, 4),
(369, 9, 25, 4),
(370, 10, 25, 4),
(371, 11, 25, 4),
(372, 12, 25, 4),
(373, 13, 25, 4),
(374, 14, 25, 3),
(375, 15, 25, 4),
(376, 1, 26, 4),
(377, 2, 26, 4),
(378, 3, 26, 4),
(379, 4, 26, 4),
(380, 5, 26, 5),
(381, 6, 26, 3),
(382, 7, 26, 4),
(383, 8, 26, 4),
(384, 9, 26, 3),
(385, 10, 26, 4),
(386, 11, 26, 4),
(387, 12, 26, 4),
(388, 13, 26, 4),
(389, 14, 26, 3),
(390, 15, 26, 4),
(391, 1, 27, 4),
(392, 2, 27, 4),
(393, 3, 27, 3),
(394, 4, 27, 4),
(395, 5, 27, 5),
(396, 6, 27, 4),
(397, 7, 27, 4),
(398, 8, 27, 4),
(399, 9, 27, 5),
(400, 10, 27, 4),
(401, 11, 27, 4),
(402, 12, 27, 4),
(403, 13, 27, 4),
(404, 14, 27, 5),
(405, 15, 27, 4),
(406, 1, 28, 4),
(407, 2, 28, 4),
(408, 3, 28, 3),
(409, 4, 28, 3),
(410, 5, 28, 4),
(411, 6, 28, 4),
(412, 7, 28, 5),
(413, 8, 28, 3),
(414, 9, 28, 4),
(415, 10, 28, 4),
(416, 11, 28, 4),
(417, 12, 28, 3),
(418, 13, 28, 4),
(419, 14, 28, 5),
(420, 15, 28, 5),
(421, 1, 29, 3),
(422, 2, 29, 4),
(423, 3, 29, 4),
(424, 4, 29, 4),
(425, 5, 29, 3),
(426, 6, 29, 5),
(427, 7, 29, 4),
(428, 8, 29, 4),
(429, 9, 29, 4),
(430, 10, 29, 4),
(431, 11, 29, 4),
(432, 12, 29, 4),
(433, 13, 29, 4),
(434, 14, 29, 4),
(435, 15, 29, 4),
(436, 1, 30, 3),
(437, 2, 30, 4),
(438, 3, 30, 4),
(439, 4, 30, 4),
(440, 5, 30, 4),
(441, 6, 30, 3),
(442, 7, 30, 4),
(443, 8, 30, 4),
(444, 9, 30, 4),
(445, 10, 30, 4),
(446, 11, 30, 4),
(447, 12, 30, 4),
(448, 13, 30, 4),
(449, 14, 30, 4),
(450, 15, 30, 5),
(451, 1, 31, 4),
(452, 2, 31, 4),
(453, 3, 31, 4),
(454, 4, 31, 5),
(455, 5, 31, 5),
(456, 6, 31, 4),
(457, 7, 31, 4),
(458, 8, 31, 4),
(459, 9, 31, 4),
(460, 10, 31, 4),
(461, 11, 31, 4),
(462, 12, 31, 4),
(463, 13, 31, 4),
(464, 14, 31, 4),
(465, 15, 31, 4),
(466, 1, 32, 4),
(467, 2, 32, 4),
(468, 3, 32, 5),
(469, 4, 32, 4),
(470, 5, 32, 4),
(471, 6, 32, 4),
(472, 7, 32, 4),
(473, 8, 32, 4),
(474, 9, 32, 4),
(475, 10, 32, 4),
(476, 11, 32, 4),
(477, 12, 32, 4),
(478, 13, 32, 4),
(479, 14, 32, 4),
(480, 15, 32, 4),
(481, 1, 33, 4),
(482, 2, 33, 5),
(483, 3, 33, 4),
(484, 4, 33, 3),
(485, 5, 33, 4),
(486, 6, 33, 3),
(487, 7, 33, 4),
(488, 8, 33, 3),
(489, 9, 33, 4),
(490, 10, 33, 4),
(491, 11, 33, 4),
(492, 12, 33, 4),
(493, 13, 33, 5),
(494, 14, 33, 5),
(495, 15, 33, 4),
(496, 1, 34, 4),
(497, 2, 34, 4),
(498, 3, 34, 4),
(499, 4, 34, 4),
(500, 5, 34, 4),
(501, 6, 34, 4),
(502, 7, 34, 4),
(503, 8, 34, 5),
(504, 9, 34, 3),
(505, 10, 34, 5),
(506, 11, 34, 4),
(507, 12, 34, 4),
(508, 13, 34, 3),
(509, 14, 34, 4),
(510, 15, 34, 4),
(511, 1, 35, 4),
(512, 2, 35, 3),
(513, 3, 35, 4),
(514, 4, 35, 4),
(515, 5, 35, 3),
(516, 6, 35, 5),
(517, 7, 35, 4),
(518, 8, 35, 4),
(519, 9, 35, 3),
(520, 10, 35, 4),
(521, 11, 35, 4),
(522, 12, 35, 4),
(523, 13, 35, 4),
(524, 14, 35, 4),
(525, 15, 35, 3),
(526, 1, 36, 3),
(527, 2, 36, 4),
(528, 3, 36, 4),
(529, 4, 36, 4),
(530, 5, 36, 4),
(531, 6, 36, 3),
(532, 7, 36, 4),
(533, 8, 36, 4),
(534, 9, 36, 3),
(535, 10, 36, 5),
(536, 11, 36, 4),
(537, 12, 36, 4),
(538, 13, 36, 4),
(539, 14, 36, 4),
(540, 15, 36, 4),
(541, 1, 37, 4),
(542, 2, 37, 4),
(543, 3, 37, 3),
(544, 4, 37, 4),
(545, 5, 37, 4),
(546, 6, 37, 5),
(547, 7, 37, 4),
(548, 8, 37, 4),
(549, 9, 37, 4),
(550, 10, 37, 4),
(551, 11, 37, 4),
(552, 12, 37, 4),
(553, 13, 37, 4),
(554, 14, 37, 4),
(555, 15, 37, 4),
(556, 1, 38, 4),
(557, 2, 38, 4),
(558, 3, 38, 5),
(559, 4, 38, 3),
(560, 5, 38, 5),
(561, 6, 38, 4),
(562, 7, 38, 4),
(563, 8, 38, 3),
(564, 9, 38, 4),
(565, 10, 38, 4),
(566, 11, 38, 4),
(567, 12, 38, 4),
(568, 13, 38, 4),
(569, 14, 38, 4),
(570, 15, 38, 4),
(571, 1, 39, 4),
(572, 2, 39, 4),
(573, 3, 39, 4),
(574, 4, 39, 4),
(575, 5, 39, 4),
(576, 6, 39, 4),
(577, 7, 39, 5),
(578, 8, 39, 4),
(579, 9, 39, 4),
(580, 10, 39, 4),
(581, 11, 39, 4),
(582, 12, 39, 4),
(583, 13, 39, 4),
(584, 14, 39, 4),
(585, 15, 39, 4),
(586, 1, 40, 4),
(587, 2, 40, 5),
(588, 3, 40, 5),
(589, 4, 40, 4),
(590, 5, 40, 4),
(591, 6, 40, 4),
(592, 7, 40, 4),
(593, 8, 40, 4),
(594, 9, 40, 4),
(595, 10, 40, 3),
(596, 11, 40, 4),
(597, 12, 40, 4),
(598, 13, 40, 4),
(599, 14, 40, 4),
(600, 15, 40, 4),
(601, 1, 41, 4),
(602, 2, 41, 4),
(603, 3, 41, 3),
(604, 4, 41, 4),
(605, 5, 41, 3),
(606, 6, 41, 3),
(607, 7, 41, 3),
(608, 8, 41, 4),
(609, 9, 41, 4),
(610, 10, 41, 3),
(611, 11, 41, 4),
(612, 12, 41, 4),
(613, 13, 41, 4),
(614, 14, 41, 4),
(615, 15, 41, 4),
(616, 1, 42, 4),
(617, 2, 42, 4),
(618, 3, 42, 4),
(619, 4, 42, 4),
(620, 5, 42, 4),
(621, 6, 42, 4),
(622, 7, 42, 4),
(623, 8, 42, 4),
(624, 9, 42, 4),
(625, 10, 42, 4),
(626, 11, 42, 4),
(627, 12, 42, 4),
(628, 13, 42, 4),
(629, 14, 42, 4),
(630, 15, 42, 4),
(631, 1, 43, 5),
(632, 2, 43, 3),
(633, 3, 43, 3),
(634, 4, 43, 5),
(635, 5, 43, 4),
(636, 6, 43, 4),
(637, 7, 43, 4),
(638, 8, 43, 4),
(639, 9, 43, 4),
(640, 10, 43, 4),
(641, 11, 43, 4),
(642, 12, 43, 5),
(643, 13, 43, 4),
(644, 14, 43, 4),
(645, 15, 43, 4),
(646, 1, 44, 4),
(647, 2, 44, 4),
(648, 3, 44, 4),
(649, 4, 44, 4),
(650, 5, 44, 5),
(651, 6, 44, 4),
(652, 7, 44, 4),
(653, 8, 44, 5),
(654, 9, 44, 4),
(655, 10, 44, 3),
(656, 11, 44, 4),
(657, 12, 44, 4),
(658, 13, 44, 4),
(659, 14, 44, 4),
(660, 15, 44, 5),
(661, 1, 45, 4),
(662, 2, 45, 4),
(663, 3, 45, 4),
(664, 4, 45, 4),
(665, 5, 45, 4),
(666, 6, 45, 4),
(667, 7, 45, 4),
(668, 8, 45, 4),
(669, 9, 45, 3),
(670, 10, 45, 5),
(671, 11, 45, 4),
(672, 12, 45, 4),
(673, 13, 45, 4),
(674, 14, 45, 4),
(675, 15, 45, 4),
(676, 1, 46, 4),
(677, 2, 46, 4),
(678, 3, 46, 4),
(679, 4, 46, 4),
(680, 5, 46, 4),
(681, 6, 46, 4),
(682, 7, 46, 4),
(683, 8, 46, 3),
(684, 9, 46, 4),
(685, 10, 46, 4),
(686, 11, 46, 4),
(687, 12, 46, 3),
(688, 13, 46, 4),
(689, 14, 46, 4),
(690, 15, 46, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabel_siswa`
--

CREATE TABLE `tabel_siswa` (
  `id_siswa` int(100) NOT NULL,
  `nama` text NOT NULL,
  `shooting` varchar(30) NOT NULL,
  `dribbling` varchar(30) NOT NULL,
  `passing` varchar(30) NOT NULL,
  `ball_control` varchar(30) NOT NULL,
  `heading` varchar(30) NOT NULL,
  `positioning` varchar(30) NOT NULL,
  `ball_position` varchar(30) NOT NULL,
  `transition_movement` varchar(30) NOT NULL,
  `speed` varchar(30) NOT NULL,
  `coordination` varchar(30) NOT NULL,
  `agility` varchar(30) NOT NULL,
  `confidence` varchar(30) NOT NULL,
  `concentration` varchar(30) NOT NULL,
  `fairplay` varchar(30) NOT NULL,
  `attitude` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tabel_siswa`
--

INSERT INTO `tabel_siswa` (`id_siswa`, `nama`, `shooting`, `dribbling`, `passing`, `ball_control`, `heading`, `positioning`, `ball_position`, `transition_movement`, `speed`, `coordination`, `agility`, `confidence`, `concentration`, `fairplay`, `attitude`) VALUES
(1, 'Ahmad Reihan D.', '87', '86', '82', '92', '78', '80', '85', '82', '95', '87', '86', '84', '88', '91', '90'),
(2, 'M. Fatkhur Rosi', '78', '85', '88', '87', '80', '89', '83', '78', '86', '93', '84', '85', '92', '85', '89'),
(3, 'Darrel Reswaranto', '82', '90', '87', '87', '85', '83', '85', '85', '80', '80', '80', '90', '85', '90', '90'),
(4, 'Devano Diaz A.', '83', '82', '84', '79', '80', '92', '88', '82', '75', '90', '86', '84', '79', '85', '88'),
(5, 'Cantona Juvendwi Y.', '81', '92', '87', '84', '85', '85', '85', '89', '86', '82', '80', '85', '89', '92', '90'),
(6, 'Cessa Gilang R.', '83', '80', '90', '85', '75', '87', '85', '85', '93', '84', '84', '92', '90', '87', '92'),
(7, 'Moch Farel F.', '75', '78', '85', '90', '76', '85', '87', '79', '80', '88', '83', '85', '88', '86', '89'),
(8, 'Alvino Hesa P.', '84', '90', '79', '84', '80', '87', '84', '85', '80', '84', '84', '82', '91', '89', '92'),
(9, 'Kristian Yoga P.', '75', '78', '82', '85', '85', '86', '91', '93', '93', '83', '80', '83', '85', '89', '89'),
(10, 'Rizky Febriansyah', '80', '85', '87', '78', '93', '86', '88', '84', '80', '85', '87', '83', '91', '85', '90'),
(12, 'M Jefri A', '75', '93', '85', '79', '75', '75', '82', '79', '75', '90', '86', '83', '92', '94', '95'),
(13, 'Akmal Irsyad Hakim', '80', '87', '80', '85', '83', '83', '85', '92', '80', '80', '83', '85', '85', '91', '87'),
(14, 'Wahyu Fakhri Wahabi', '90', '84', '85', '80', '87', '78', '80', '84', '85', '90', '85', '90', '87', '87', '90'),
(15, 'Adrian Julio Filbert Talahatu', '85', '85', '89', '78', '77', '89', '79', '90', '95', '82', '82', '87', '90', '90', '89'),
(16, 'Revan Anugrah Ardiansyah', '75', '90', '87', '79', '75', '75', '80', '75', '70', '92', '88', '83', '90', '94', '87'),
(17, 'Yoga Adi Pratama', '87', '88', '85', '83', '78', '85', '80', '79', '91', '87', '85', '90', '85', '89', '85'),
(18, 'Reno Putra Kanaya', '82', '85', '84', '80', '79', '85', '88', '82', '85', '78', '86', '84', '81', '85', '90'),
(19, 'Reynhard Aldino C Talahatu', '76', '79', '82', '83', '80', '86', '92', '90', '89', '85', '86', '83', '85', '79', '80'),
(20, 'Adiatma Ramadhani', '90', '82', '86', '79', '83', '78', '75', '89', '84', '83', '82', '85', '78', '82', '88'),
(21, 'M Kevin Adi Saputra', '82', '88', '78', '83', '79', '85', '88', '85', '82', '78', '84', '80', '79', '80', '90'),
(22, 'Differemley Haruma Dirgantara', '85', '87', '79', '80', '84', '85', '85', '80', '86', '89', '79', '90', '85', '78', '87'),
(23, 'Arta Nugroho', '93', '84', '84', '92', '77', '87', '92', '86', '85', '85', '87', '75', '85', '90', '80'),
(24, 'Mochammad Dama Arijalil', '82', '90', '80', '80', '84', '83', '87', '85', '90', '90', '88', '80', '77', '91', '90'),
(25, 'Dandy Arya Januar', '80', '85', '89', '92', '75', '78', '83', '85', '88', '81', '84', '89', '83', '79', '85'),
(26, 'Kaysan Namfal Yusra', '85', '84', '80', '86', '90', '78', '82', '83', '75', '83', '85', '80', '83', '79', '88'),
(27, 'Jeremy Mario Lalopua', '81', '82', '78', '84', '90', '80', '84', '85', '90', '85', '87', '80', '84', '90', '88'),
(28, 'Ardhan Caesario Destiawan', '85', '83', '75', '70', '80', '82', '90', '79', '85', '85', '82', '78', '87', '90', '90'),
(29, 'Dava Oky Saputra', '70', '80', '82', '85', '70', '90', '81', '84', '87', '82', '85', '84', '85', '80', '86'),
(30, 'Moch Caesar Ramadhani', '79', '85', '82', '82', '81', '79', '80', '83', '86', '85', '80', '85', '81', '81', '92'),
(31, 'Farel Atya Satya B', '80', '85', '89', '92', '90', '86', '82', '86', '89', '85', '85', '85', '80', '82', '83'),
(32, 'Muhammad Satria Amirudin', '85', '80', '90', '85', '80', '88', '87', '82', '81', '81', '86', '85', '82', '84', '87'),
(33, 'Muhammad Ghaffan Prayoga', '85', '90', '87', '79', '80', '75', '80', '75', '83', '86', '82', '83', '90', '92', '87'),
(34, 'Muh Alif Alfiansyah', '87', '80', '83', '80', '86', '80', '85', '90', '79', '92', '82', '80', '75', '83', '85'),
(35, 'Moch Rizqullah A.', '80', '70', '85', '82', '75', '90', '86', '84', '79', '82', '85', '84', '85', '80', '79'),
(36, 'Radistya Gilang Pandu', '78', '80', '80', '85', '83', '77', '81', '87', '79', '90', '85', '84', '82', '80', '88'),
(37, 'Ricky Alvian Syahputra', '82', '80', '78', '80', '85', '90', '85', '87', '82', '88', '87', '88', '85', '85', '85'),
(38, 'Nabil Loverino Mirsab', '89', '85', '90', '78', '92', '85', '80', '79', '82', '85', '83', '86', '86', '80', '87'),
(39, 'Fattah Darma Vista', '81', '82', '80', '84', '87', '80', '90', '85', '80', '85', '87', '80', '84', '87', '88'),
(40, 'Rico Tri Firmansyah', '85', '90', '90', '80', '81', '83', '85', '80', '87', '78', '82', '83', '85', '85', '85'),
(41, 'Moch Messi', '80', '82', '78', '80', '75', '78', '79', '80', '83', '78', '83', '80', '82', '84', '86'),
(42, 'Moch Nazriel Pratama', '85', '80', '80', '85', '84', '80', '81', '80', '80', '85', '87', '80', '84', '87', '88'),
(43, 'Daffa Prakasa Setiawan', '90', '76', '78', '91', '85', '80', '85', '82', '83', '86', '85', '90', '87', '85', '86'),
(44, 'Jaffar Sidiq Bintang', '83', '85', '82', '82', '90', '85', '84', '90', '88', '78', '85', '86', '80', '82', '90'),
(45, 'Marcel K Sandy', '83', '82', '85', '85', '85', '80', '89', '82', '75', '90', '88', '82', '85', '80', '82'),
(46, 'Rhevanza Putra Andriansyah', '82', '81', '85', '80', '87', '85', '85', '78', '86', '80', '82', '78', '80', '86', '83');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `hitung`
--
ALTER TABLE `hitung`
  ADD PRIMARY KEY (`id_hitung`),
  ADD KEY `id_siswa` (`id_siswa`);

--
-- Indeks untuk tabel `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  ADD PRIMARY KEY (`id_sub`);

--
-- Indeks untuk tabel `tabel_hasil`
--
ALTER TABLE `tabel_hasil`
  ADD PRIMARY KEY (`id_hasil`);

--
-- Indeks untuk tabel `tabel_kriteria`
--
ALTER TABLE `tabel_kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indeks untuk tabel `tabel_nilai`
--
ALTER TABLE `tabel_nilai`
  ADD PRIMARY KEY (`id_nilai`),
  ADD KEY `id_kriteria` (`id_kriteria`),
  ADD KEY `id_siswa` (`id_siswa`);

--
-- Indeks untuk tabel `tabel_siswa`
--
ALTER TABLE `tabel_siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `hitung`
--
ALTER TABLE `hitung`
  MODIFY `id_hitung` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=738;

--
-- AUTO_INCREMENT untuk tabel `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  MODIFY `id_sub` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tabel_hasil`
--
ALTER TABLE `tabel_hasil`
  MODIFY `id_hasil` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT untuk tabel `tabel_nilai`
--
ALTER TABLE `tabel_nilai`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=691;

--
-- AUTO_INCREMENT untuk tabel `tabel_siswa`
--
ALTER TABLE `tabel_siswa`
  MODIFY `id_siswa` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `hitung`
--
ALTER TABLE `hitung`
  ADD CONSTRAINT `hitung_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `tabel_siswa` (`id_siswa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
