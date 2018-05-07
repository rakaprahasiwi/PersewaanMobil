-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2017 at 10:22 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `persewaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `mobil`
--

CREATE TABLE IF NOT EXISTS `mobil` (
  `no_polisi` varchar(10) NOT NULL,
  `merk` varchar(10) DEFAULT NULL,
  `jenis` varchar(10) DEFAULT NULL,
  `warna` varchar(10) DEFAULT NULL,
  `tarif` double DEFAULT NULL,
  PRIMARY KEY (`no_polisi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mobil`
--

INSERT INTO `mobil` (`no_polisi`, `merk`, `jenis`, `warna`, `tarif`) VALUES
('AB 34 H', 'Suzuki', 'APV', 'Putih', 300000),
('B 3394 L', 'Honda', 'Yaris', 'Pink', 200000),
('D 772 NL', 'Toyota', 'Avanza', 'Biru', 150000),
('F 456 L', 'Honda', 'Yariz', 'Hitam', 250000),
('G 3473 ML', 'Toyt', 'Alphard', 'Hitam', 250000),
('G 444 N', 'Toyota', 'Sienta', 'Merah', 250000),
('G 4474 H', 'Honda', 'Jazz', 'Putih', 200000),
('H 3535 K', 'Honda', 'Jazz', 'Silver', 400000),
('H 686 L', 'Honda', 'Mobilio', 'Biru', 200000);

-- --------------------------------------------------------

--
-- Table structure for table `penyewa`
--

CREATE TABLE IF NOT EXISTS `penyewa` (
  `no_ktp` varchar(15) NOT NULL DEFAULT '',
  `nama` varchar(20) DEFAULT NULL,
  `alamat` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`no_ktp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyewa`
--

INSERT INTO `penyewa` (`no_ktp`, `nama`, `alamat`) VALUES
('12232', 'asdssad', 'adsdasd'),
('12345', 'duta', 'demak'),
('13411', 'Dodi', 'Depok'),
('144252444', 'hahaha', 'gondang'),
('325253', 'Duta', 'Genuk'),
('3321', 'abc', 'semarang'),
('3321023101', 'IMAM', 'Desa Tlogorejo Demak'),
('452542', 'fURQOON', 'Semarang'),
('7597', 'Doni', 'Segayung'),
('99999', 'bagus', 'tlogorejo'),
('dddd', 'dddd', 'dddd'),
('qq', 'qq', 'qq');

-- --------------------------------------------------------

--
-- Table structure for table `sewa_mobil`
--

CREATE TABLE IF NOT EXISTS `sewa_mobil` (
  `no_sewa` varchar(5) DEFAULT NULL,
  `no_ktp` varchar(15) DEFAULT NULL,
  `tgl_sewa` varchar(40) DEFAULT NULL,
  `no_polisi` varchar(10) DEFAULT NULL,
  `jml_hari` int(11) DEFAULT NULL,
  `total` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sewa_mobil`
--

INSERT INTO `sewa_mobil` (`no_sewa`, `no_ktp`, `tgl_sewa`, `no_polisi`, `jml_hari`, `total`) VALUES
('A53', '42624', 'Sat Jul 08 21:35:53 ICT 2017', 'H 3566 U', 3, 450000),
('A35', '426', 'Sat Jul 08 21:39:02 ICT 2017', 'D 4435 TT', 2, 400000),
('A35', '426', 'Sat Jul 08 21:39:02 ICT 2017', 'G 1 L', 2, 500000),
('A1', '325253', 'Sat Jul 08 21:47:14 ICT 2017', 'B 6675 J', 2, 700000),
('A12', '31431', 'Sat Jul 08 21:56:14 ICT 2017', 'D 4435 TT', 3, 600000),
('F33', '325', 'Sat Jul 08 21:59:39 ICT 2017', 'G 3241 L', 2, 300000),
('A3', '253', 'Sat Jul 08 22:08:23 ICT 2017', 'G 3241 L', 2, 300000),
('A44', '56', 'Sat Jul 08 22:12:43 ICT 2017', 'G 1 L', 2, 500000),
('A55', '31515', 'Sun Jul 09 21:04:05 ICT 2017', 'D 4435 TT', 2, 400000),
('a646', '2452', 'Sun Jul 09 21:05:58 ICT 2017', 'G 3241 L', 2, 300000),
('dd', '1355', 'Sun Jul 09 21:42:14 ICT 2017', 'B 6675 J', 2, 700000),
('A524', '2545', 'Sun Jul 09 21:46:24 ICT 2017', 'D 4435 TT', 2, 400000),
('D2', '234', 'Sun Jul 09 21:48:35 ICT 2017', 'G 1 L', 2, 500000),
('F22', '2355', 'Sun Jul 09 21:51:06 ICT 2017', 'B 6675 J', 2, 700000),
('D44', '2555', 'Sun Jul 09 21:56:40 ICT 2017', 'B 6675 J', 2, 700000),
('D44', '2555', 'Sun Jul 09 21:56:40 ICT 2017', 'D 4435 TT', 2, 400000),
('D44', '2555', 'Sun Jul 09 21:56:40 ICT 2017', 'G 3241 L', 2, 300000),
('D24', '2464', 'Sun Jul 09 22:39:57 ICT 2017', 'B 6675 J', 2, 700000),
('D24', '2464', 'Sun Jul 09 22:39:57 ICT 2017', 'AB 34 H', 2, 400000),
('D32', '42y', 'Mon Jul 10 00:20:59 ICT 2017', 'AB 44 T', 2, 1000000),
('S78', '7597', 'Mon Jul 10 00:28:43 ICT 2017', 'AB 34 H', 3, 600000),
('F78', '5774', 'Mon Jul 10 00:29:44 ICT 2017', 'D 4435 TT', 4, 800000),
('A006', '4626', 'Mon Jul 10 18:09:11 ICT 2017', 'G 3241 L', 2, 300000),
('A006', '4626', 'Mon Jul 10 18:09:11 ICT 2017', 'D 4435 TT', 3, 600000),
('A006', '352352', 'Mon Jul 10 18:14:13 ICT 2017', 'G 44 UL', 2, 300000),
('A006', '352352', 'Mon Jul 10 18:14:13 ICT 2017', 'D 4435 TT', 2, 400000),
('A76', '64866', 'Mon Jul 10 22:29:19 ICT 2017', 'AB 44 T', 2, 1000000),
('A76', '64866', 'Mon Jul 10 22:29:19 ICT 2017', 'B 6675 J', 2, 700000),
('A32', '21341', 'Tue Jul 11 12:55:41 ICT 2017', 'B 3394 L', 3, 600000),
('A32', '21341', 'Tue Jul 11 12:55:41 ICT 2017', 'B 6675 J', 2, 700000),
('A441', '3153', 'Tue Jul 11 16:48:34 ICT 2017', 'AA 123 L', 5, 750000),
('A441', '3153', 'Tue Jul 11 16:48:34 ICT 2017', 'B 3394 L', 2, 400000),
('a11', 'dddd', 'Sat Jul 08 20:32:00 ICT 2017', 'AB 34 H', 2, 400000),
('D23', '5135', 'Tue Jul 11 20:34:52 ICT 2017', 'B 33 CAK', 2, 400000),
('D23', '5135', 'Mon Jul 10 20:34:00 ICT 2017', 'B 3394 L', 2, 400000),
('aqq', 'qq', 'Tue Jul 11 22:33:43 ICT 2017', 'AB 34 H', 2, 400000),
('A111', '73537', 'Tue Jul 11 23:08:31 ICT 2017', 'G 444 N', 3, 750000),
('A111', '73537', 'Tue Jul 11 23:08:31 ICT 2017', 'B 6675 J', 2, 700000),
('D65', '53653', 'Tue Jul 11 23:10:55 ICT 2017', 'B 3394 L', 3, 600000),
('W24', '6537', 'Tue Jul 11 23:14:41 ICT 2017', 'B 33 CAK', 4, 800000),
('F23', '3223', 'Tue Jul 11 23:16:49 ICT 2017', 'AB 34 H', 3, 600000),
('D64', '46353', 'Tue Jul 11 23:16:49 ICT 2017', 'B 6675 J', 2, 700000),
('G23', '3243', 'Tue Jul 11 23:32:18 ICT 2017', 'D 772 NL', 2, 300000),
('G23', '3243', 'Tue Jul 11 23:32:18 ICT 2017', 'G 444 N', 2, 500000),
('A98', '245246', 'Wed Jul 12 09:00:29 ICT 2017', 'B 6675 J', 2, 700000),
('A98', '245246', 'Wed Jul 12 09:00:29 ICT 2017', 'G 4474 H', 3, 600000),
('A98', '245246', 'Wed Jul 12 09:00:29 ICT 2017', 'G 3473 ML', 2, 500000),
('A46', '345324', 'Wed Jul 12 09:04:00 ICT 2017', 'B 6675 J', 2, 700000),
('D21', '3423', 'Wed Jul 12 09:05:09 ICT 2017', 'D 772 NL', 2, 300000),
('D21', '3423', 'Wed Jul 12 09:05:09 ICT 2017', 'AB 34 H', 2, 400000),
('D44', '144252444', 'Wed Jul 12 09:16:48 ICT 2017', 'AB 34 H', 2, 400000),
('001', '12345', 'Thu Jul 13 10:11:02 ICT 2017', 'AB 34 H', 3, 600000),
('1', '3321', 'Thu Jul 13 10:12:42 ICT 2017', 'AB 34 H', 7, 1400000),
('10', '99999', 'Thu Jul 13 10:18:31 ICT 2017', 'G 3473 ML', 9, 2250000),
('3', '678', 'Thu Jul 13 10:18:31 ICT 2017', 'AB 34 H', 2, 400000),
('003', '3321023101', 'Thu Jul 13 11:53:16 ICT 2017', 'AB 34 H', 3, 900000),
('003', '3321023101', 'Thu Jul 13 11:53:16 ICT 2017', 'B 3394 L', 2, 400000),
('S23', '325253', 'Thu Jul 13 12:41:07 ICT 2017', 'B 6675 J', 3, 1050000),
('S23', '325253', 'Thu Jul 13 12:41:07 ICT 2017', 'D 772 NL', 2, 300000),
('D1', '13411', 'Thu Jul 13 12:59:48 ICT 2017', 'B 6675 J', 2, 700000),
('D6', '452542', 'Thu Jul 13 14:39:22 ICT 2017', 'F 456 L', 2, 500000),
('D6', '452542', 'Fri Jul 14 14:39:00 ICT 2017', 'G 3473 ML', 3, 750000);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
