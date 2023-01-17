-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table moka.guru
CREATE TABLE IF NOT EXISTS `guru` (
  `id_guru` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `gelar` varchar(10) DEFAULT NULL,
  `jk` varchar(50) NOT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `no_hp` varchar(50) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `id_role` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id_guru`),
  KEY `FK_guru_role` (`id_role`),
  CONSTRAINT `FK_guru_role` FOREIGN KEY (`id_role`) REFERENCES `role` (`id_role`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table moka.guru: ~23 rows (approximately)
/*!40000 ALTER TABLE `guru` DISABLE KEYS */;
INSERT INTO `guru` (`id_guru`, `nama`, `gelar`, `jk`, `alamat`, `tempat_lahir`, `tgl_lahir`, `no_hp`, `foto`, `id_role`, `username`, `password`) VALUES
	('GTK001', 'Muchtim Humaidi', NULL, 'L', NULL, NULL, NULL, '625755175557', 'user.png', 3, 'muc', 'b47c6e71ca3a5e23cab99c2e9da03046'),
	('GTK002', 'Baiatur Ridhwan', NULL, 'L', NULL, NULL, NULL, '629681279836', 'user.png', 3, 'bai', 'b47c6e71ca3a5e23cab99c2e9da03046'),
	('GTK003', 'Endah Wahyu Winasih', NULL, 'P', NULL, NULL, NULL, '622301488505', 'user.png', 3, 'end', 'b47c6e71ca3a5e23cab99c2e9da03046'),
	('GTK004', 'Dwi Ratna Budiyanti', NULL, 'P', NULL, NULL, NULL, '625259929321', 'user.png', 3, 'dwi', 'b47c6e71ca3a5e23cab99c2e9da03046'),
	('GTK005', 'Muhammad Abdurrohim', NULL, 'L', NULL, NULL, NULL, '622132959435', 'user.png', 3, 'muh', 'b47c6e71ca3a5e23cab99c2e9da03046'),
	('GTK006', 'Anita Dian Susanti', NULL, 'P', NULL, NULL, NULL, '625335364031', 'user.png', 3, 'ani', 'b47c6e71ca3a5e23cab99c2e9da03046'),
	('GTK007', 'Linda Tri Wulandari', NULL, 'P', NULL, NULL, NULL, '625882196287', 'user.png', 3, 'lin', 'b47c6e71ca3a5e23cab99c2e9da03046'),
	('GTK008', 'Alfin Andrias Satiya', NULL, 'L', NULL, NULL, NULL, '625749111188', 'user.png', 3, 'alf', 'b47c6e71ca3a5e23cab99c2e9da03046'),
	('GTK009', 'Amama Ali', NULL, 'L', NULL, NULL, NULL, '625234510600', 'user.png', 3, 'ama', 'b47c6e71ca3a5e23cab99c2e9da03046'),
	('GTK010', 'Nimatul Fudllah', NULL, 'P', NULL, NULL, NULL, '629619570375', 'user.png', 3, 'atu', 'b47c6e71ca3a5e23cab99c2e9da03046'),
	('GTK011', 'Dewi Mayasari', NULL, 'P', NULL, NULL, NULL, '629679164832', 'user.png', 3, 'may', 'b47c6e71ca3a5e23cab99c2e9da03046'),
	('GTK012', 'Dewi Mustika Sari', NULL, 'P', NULL, NULL, NULL, '625790257030', 'user.png', 3, 'mus', 'b47c6e71ca3a5e23cab99c2e9da03046'),
	('GTK013', 'Dwi Retno Wilujeng', NULL, 'P', NULL, NULL, NULL, '6295388214242', 'user.png', 3, 'dwi', 'b47c6e71ca3a5e23cab99c2e9da03046'),
	('GTK014', 'Ahsantum Arumawati', NULL, 'P', NULL, NULL, NULL, '621554229676', 'user.png', 3, 'ahs', 'b47c6e71ca3a5e23cab99c2e9da03046'),
	('GTK015', 'Latifah Baroroh, S.E', NULL, 'P', NULL, NULL, NULL, '625658151157', 'user.png', 3, 'lat', 'b47c6e71ca3a5e23cab99c2e9da03046'),
	('GTK016', 'Mega Pratitis Nur Aini', NULL, 'P', NULL, NULL, NULL, '627758740842', 'user.png', 3, 'meg', 'b47c6e71ca3a5e23cab99c2e9da03046'),
	('GTK017', 'Muhammad Mahbubbi', NULL, 'L', NULL, NULL, NULL, '621335758505', 'user.png', 3, 'muh', 'b47c6e71ca3a5e23cab99c2e9da03046'),
	('GTK018', 'Tri Agung Priambodo', NULL, 'L', NULL, NULL, NULL, '625791747949', 'user.png', 3, 'tri', 'b47c6e71ca3a5e23cab99c2e9da03046'),
	('GTK019', 'Wahid Suprabowo', NULL, 'L', NULL, NULL, NULL, '6212335173838', 'user.png', 3, 'wah', 'b47c6e71ca3a5e23cab99c2e9da03046'),
	('GTK020', 'Ipnu Masyaid ', NULL, 'L', NULL, NULL, NULL, '622139855935', 'masipnu.jpg', 1, 'admin', '21232f297a57a5a743894a0e4a801fc3'),
	('GTK021', 'Windarti Sovia RN', NULL, 'P', NULL, NULL, NULL, '621234356707', 'user.png', 3, 'win', 'b47c6e71ca3a5e23cab99c2e9da03046'),
	('GTK022', 'Lutfi Choirina', NULL, 'P', NULL, NULL, NULL, '621290602935', 'user.png', 3, 'lut', 'b47c6e71ca3a5e23cab99c2e9da03046'),
	('GTK023', 'Hidayatul Muntafiah', NULL, 'P', NULL, NULL, NULL, '621233006379', 'user.png', 3, 'hid', 'b47c6e71ca3a5e23cab99c2e9da03046');
/*!40000 ALTER TABLE `guru` ENABLE KEYS */;

-- Dumping structure for table moka.hari
CREATE TABLE IF NOT EXISTS `hari` (
  `id_hari` int(11) NOT NULL AUTO_INCREMENT,
  `nama_hari` varchar(50) NOT NULL,
  PRIMARY KEY (`id_hari`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table moka.hari: ~6 rows (approximately)
/*!40000 ALTER TABLE `hari` DISABLE KEYS */;
INSERT INTO `hari` (`id_hari`, `nama_hari`) VALUES
	(1, 'Senin'),
	(2, 'Selasa'),
	(3, 'Rabu'),
	(4, 'Kamis'),
	(5, 'Jum\'at'),
	(6, 'Sabtu');
/*!40000 ALTER TABLE `hari` ENABLE KEYS */;

-- Dumping structure for table moka.jadwal_kbm
CREATE TABLE IF NOT EXISTS `jadwal_kbm` (
  `id_jadwal` int(11) NOT NULL AUTO_INCREMENT,
  `id_kbm` char(5) NOT NULL,
  `id_mengajar` int(11) NOT NULL,
  PRIMARY KEY (`id_jadwal`),
  KEY `FK_jadwal_kbm_jam_kbm` (`id_kbm`),
  KEY `FK_jadwal_kbm_mengajar` (`id_mengajar`),
  CONSTRAINT `FK_jadwal_kbm_jam_kbm` FOREIGN KEY (`id_kbm`) REFERENCES `jam_kbm` (`id_kbm`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_jadwal_kbm_mengajar` FOREIGN KEY (`id_mengajar`) REFERENCES `mengajar` (`id_mengajar`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=310 DEFAULT CHARSET=latin1;

-- Dumping data for table moka.jadwal_kbm: ~0 rows (approximately)
/*!40000 ALTER TABLE `jadwal_kbm` DISABLE KEYS */;
INSERT INTO `jadwal_kbm` (`id_jadwal`, `id_kbm`, `id_mengajar`) VALUES
	(306, '1.1', 231),
	(307, '1.1', 229),
	(308, '1.1', 228),
	(309, '1.1', 230);
/*!40000 ALTER TABLE `jadwal_kbm` ENABLE KEYS */;

-- Dumping structure for table moka.jamke
CREATE TABLE IF NOT EXISTS `jamke` (
  `id_jamke` int(11) NOT NULL AUTO_INCREMENT,
  `nama_jamke` int(11) NOT NULL,
  PRIMARY KEY (`id_jamke`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table moka.jamke: ~8 rows (approximately)
/*!40000 ALTER TABLE `jamke` DISABLE KEYS */;
INSERT INTO `jamke` (`id_jamke`, `nama_jamke`) VALUES
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5),
	(6, 6),
	(7, 7),
	(8, 8);
/*!40000 ALTER TABLE `jamke` ENABLE KEYS */;

-- Dumping structure for table moka.jam_kbm
CREATE TABLE IF NOT EXISTS `jam_kbm` (
  `id_kbm` char(5) NOT NULL,
  `id_hari` int(11) NOT NULL,
  `id_jamke` int(11) NOT NULL,
  PRIMARY KEY (`id_kbm`),
  KEY `FK_jam_kbm_hari` (`id_hari`),
  KEY `FK_jam_kbm_jamke` (`id_jamke`),
  CONSTRAINT `FK_jam_kbm_hari` FOREIGN KEY (`id_hari`) REFERENCES `hari` (`id_hari`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_jam_kbm_jamke` FOREIGN KEY (`id_jamke`) REFERENCES `jamke` (`id_jamke`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table moka.jam_kbm: ~45 rows (approximately)
/*!40000 ALTER TABLE `jam_kbm` DISABLE KEYS */;
INSERT INTO `jam_kbm` (`id_kbm`, `id_hari`, `id_jamke`) VALUES
	('1.1', 1, 1),
	('1.2', 1, 2),
	('1.3', 1, 3),
	('1.4', 1, 4),
	('1.5', 1, 5),
	('1.6', 1, 6),
	('1.7', 1, 7),
	('1.8', 1, 8),
	('2.1', 2, 1),
	('2.2', 2, 2),
	('2.3', 2, 3),
	('2.4', 2, 4),
	('2.5', 2, 5),
	('2.6', 2, 6),
	('2.7', 2, 7),
	('2.8', 2, 8),
	('3.1', 3, 1),
	('3.2', 3, 2),
	('3.3', 3, 3),
	('3.4', 3, 4),
	('3.5', 3, 5),
	('3.6', 3, 6),
	('3.7', 3, 7),
	('3.8', 3, 8),
	('4.1', 4, 1),
	('4.2', 4, 2),
	('4.3', 4, 3),
	('4.4', 4, 4),
	('4.5', 4, 5),
	('4.6', 4, 6),
	('4.7', 4, 7),
	('4.8', 4, 8),
	('5.1', 5, 1),
	('5.2', 5, 2),
	('5.3', 5, 3),
	('5.4', 5, 4),
	('5.8', 5, 8),
	('6.1', 6, 1),
	('6.2', 6, 2),
	('6.3', 6, 3),
	('6.4', 6, 4),
	('6.5', 6, 5),
	('6.6', 6, 6),
	('6.7', 6, 7),
	('6.8', 6, 8);
/*!40000 ALTER TABLE `jam_kbm` ENABLE KEYS */;

-- Dumping structure for table moka.kelas
CREATE TABLE IF NOT EXISTS `kelas` (
  `id_kelas` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kelas` varchar(3) NOT NULL,
  `id_komli` int(11) NOT NULL,
  PRIMARY KEY (`id_kelas`),
  KEY `FK_kelas_komli` (`id_komli`),
  CONSTRAINT `FK_kelas_komli` FOREIGN KEY (`id_komli`) REFERENCES `komli` (`id_komli`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- Dumping data for table moka.kelas: ~6 rows (approximately)
/*!40000 ALTER TABLE `kelas` DISABLE KEYS */;
INSERT INTO `kelas` (`id_kelas`, `nama_kelas`, `id_komli`) VALUES
	(11, 'X', 20),
	(12, 'X', 21),
	(13, 'XI', 20),
	(14, 'XI', 21),
	(15, 'XII', 20),
	(16, 'XII', 21);
/*!40000 ALTER TABLE `kelas` ENABLE KEYS */;

-- Dumping structure for table moka.komli
CREATE TABLE IF NOT EXISTS `komli` (
  `id_komli` int(11) NOT NULL AUTO_INCREMENT,
  `nama_komli` varchar(50) NOT NULL,
  `prosentase` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_komli`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- Dumping data for table moka.komli: ~3 rows (approximately)
/*!40000 ALTER TABLE `komli` DISABLE KEYS */;
INSERT INTO `komli` (`id_komli`, `nama_komli`, `prosentase`) VALUES
	(20, 'Rekayasa Perangkat Lunak', 0),
	(21, 'Perbankan Syariah', 0);
/*!40000 ALTER TABLE `komli` ENABLE KEYS */;

-- Dumping structure for table moka.log_presensi
CREATE TABLE IF NOT EXISTS `log_presensi` (
  `id_log` int(11) NOT NULL AUTO_INCREMENT,
  `tgl` date NOT NULL,
  `id_mengajar` int(11) NOT NULL,
  `id_siswa` varchar(10) NOT NULL,
  `id_presensi` int(11) NOT NULL,
  `catatan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_log`),
  KEY `id-presensi` (`id_log`),
  KEY `FK_log_presensi_siswa` (`id_siswa`),
  KEY `FK_log_presensi_presensi` (`id_presensi`),
  KEY `FK_log_presensi_mengajar` (`id_mengajar`),
  CONSTRAINT `FK_log_presensi_mengajar` FOREIGN KEY (`id_mengajar`) REFERENCES `mengajar` (`id_mengajar`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_log_presensi_presensi` FOREIGN KEY (`id_presensi`) REFERENCES `presensi` (`id_presensi`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_log_presensi_siswa` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table moka.log_presensi: ~0 rows (approximately)
/*!40000 ALTER TABLE `log_presensi` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_presensi` ENABLE KEYS */;

-- Dumping structure for table moka.mapel
CREATE TABLE IF NOT EXISTS `mapel` (
  `id_mapel` int(11) NOT NULL AUTO_INCREMENT,
  `nama_mapel` varchar(50) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  PRIMARY KEY (`id_mapel`),
  KEY `id-mapel` (`id_mapel`),
  KEY `FK__kelas` (`id_kelas`),
  CONSTRAINT `FK__kelas` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=latin1;

-- Dumping data for table moka.mapel: ~84 rows (approximately)
/*!40000 ALTER TABLE `mapel` DISABLE KEYS */;
INSERT INTO `mapel` (`id_mapel`, `nama_mapel`, `id_kelas`) VALUES
	(101, 'Bahasa Inggris', 13),
	(102, 'Bahasa Inggris', 14),
	(103, 'Bahasa Inggris', 15),
	(104, 'Bahasa Inggris', 16),
	(105, 'Bahasa Inggris', 11),
	(106, 'Bahasa Inggris', 12),
	(107, 'Produk Kreatif & Kewirausahaan', 13),
	(108, 'Produk Kreatif & Kewirausahaan', 15),
	(109, 'Pemograman Web dan Perangkat Bergerak', 15),
	(110, 'Pemograman Berorientasi Objek', 13),
	(111, 'Pemograman Berorientasi Objek', 15),
	(112, 'Fisika', 11),
	(113, 'Kimia', 11),
	(114, 'Ilmu Pengetahuan Alam', 12),
	(115, 'Matematika', 13),
	(116, 'Matematika', 14),
	(117, 'Matematika', 15),
	(118, 'Matematika', 16),
	(119, 'Permodelan Perangkat Lunak', 13),
	(120, 'Simulasi & Komunikasi Digital', 11),
	(121, 'Simulasi & Komunikasi Digital', 12),
	(122, 'Sistem Kompuer ', 11),
	(123, 'Pemograman Dasar', 11),
	(124, 'Pemograman Web dan Perangkat Bergerak', 13),
	(125, 'Seni Budaya', 12),
	(126, 'Seni Budaya', 11),
	(127, 'Sejarah Indonesia', 12),
	(128, 'Sejarah Indonesia', 11),
	(129, 'Etika Profesi', 12),
	(130, 'Produk Kreatif & Kewirausahaan', 16),
	(131, 'Ekonomi Bisnis', 12),
	(132, 'Bahasa Jawa', 11),
	(133, 'Bahasa Jawa', 12),
	(134, 'Bahasa Jawa', 13),
	(135, 'Bahasa Jawa', 14),
	(136, 'Bahasa Jawa', 16),
	(137, 'Bahasa Jawa', 15),
	(139, 'Basis Data', 13),
	(140, 'Basis Data', 15),
	(142, 'Komputer & Jaringan Dasar', 11),
	(143, 'Administrasi Umum', 12),
	(144, 'Perbankan Dasar', 12),
	(145, 'Pengelolaan Kas', 14),
	(146, 'Produk Kreatif & Kewirausahaan', 14),
	(147, 'Ekonomi Islam', 14),
	(148, 'Ekonomi Islam', 16),
	(149, 'Layanan Lembaga Keuangan Syariah', 14),
	(150, 'Layanan Lembaga Keuangan Syariah', 16),
	(151, 'Akutansi Perbankan Syariah', 14),
	(152, 'Akuntasi Perbankan Syariah', 16),
	(153, 'Komputer Akuntasi', 14),
	(154, 'Komputer Akuntasi', 16),
	(155, 'ASWAJA', 11),
	(156, 'ASWAJA', 12),
	(157, 'ASWAJA', 13),
	(158, 'ASWAJA', 14),
	(159, 'ASWAJA', 15),
	(160, 'ASWAJA', 16),
	(161, 'Pendidikan Agama dan Budi Pekerti', 15),
	(162, 'Pendidikan Agama dan Budi Pekerti', 16),
	(163, 'Aplikasi Pengolah Angka Spreadsheet', 12),
	(164, 'Akuntasi Dasar', 12),
	(165, 'Bahasa Indonesia', 11),
	(166, 'Bahasa Indonesia', 12),
	(167, 'Bahasa Indonesia', 13),
	(168, 'Bahasa Indonesia', 14),
	(169, 'Bahasa Indonesia', 15),
	(170, 'Bahasa Indonesia', 16),
	(171, 'Pendidikan Pancasila & Kewarganegaraan', 11),
	(172, 'Pendidikan Pancasila & Kewarganegaraan', 12),
	(173, 'Pendidikan Pancasila & Kewarganegaraan', 13),
	(174, 'Pendidikan Pancasila & Kewarganegaraan', 14),
	(175, 'Pendidikan Pancasila & Kewarganegaraan', 15),
	(176, 'Pendidikan Pancasila & Kewarganegaraan', 15),
	(177, 'Kelas SAMSUNG', 13),
	(179, 'Matematika', 12),
	(180, 'Pendidikan Jasmani dan Keolahragaan', 11),
	(181, 'Pendidikan Jasmani dan Keolahragaan', 12),
	(182, 'Pendidikan Jasmani dan Keolahragaan', 13),
	(183, 'Pendidikan Jasmani dan Keolahragaan', 14),
	(184, 'Pendidikan Agama dan Budi Pekerti', 11),
	(185, 'Pendidikan Agama dan Budi Pekerti', 12),
	(186, 'Pendidikan Agama dan Budi Pekerti', 13),
	(187, 'Pendidikan Agama dan Budi Pekerti', 14);
/*!40000 ALTER TABLE `mapel` ENABLE KEYS */;

-- Dumping structure for table moka.mengajar
CREATE TABLE IF NOT EXISTS `mengajar` (
  `id_mengajar` int(11) NOT NULL AUTO_INCREMENT,
  `id_guru` varchar(10) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  PRIMARY KEY (`id_mengajar`),
  KEY `FK_mengajar_guru` (`id_guru`),
  KEY `FK_mengajar_mapel` (`id_mapel`),
  CONSTRAINT `FK_mengajar_guru` FOREIGN KEY (`id_guru`) REFERENCES `guru` (`id_guru`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_mengajar_mapel` FOREIGN KEY (`id_mapel`) REFERENCES `mapel` (`id_mapel`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=232 DEFAULT CHARSET=latin1;

-- Dumping data for table moka.mengajar: ~1 rows (approximately)
/*!40000 ALTER TABLE `mengajar` DISABLE KEYS */;
INSERT INTO `mengajar` (`id_mengajar`, `id_guru`, `id_mapel`) VALUES
	(228, 'GTK020', 139),
	(229, 'GTK020', 140),
	(230, 'GTK020', 142),
	(231, 'GTK002', 112);
/*!40000 ALTER TABLE `mengajar` ENABLE KEYS */;

-- Dumping structure for table moka.ortu
CREATE TABLE IF NOT EXISTS `ortu` (
  `id_ortu` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jk` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `ttl` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `no_hp` varchar(50) DEFAULT NULL,
  `id_siswa` varchar(10) DEFAULT NULL,
  `id_role` int(11) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `foto` varchar(50) DEFAULT 'ortu.png',
  PRIMARY KEY (`id_ortu`),
  KEY `id-ortu` (`id_ortu`),
  KEY `FK_ortu_role` (`id_role`),
  KEY `FK_ortu_siswa` (`id_siswa`),
  CONSTRAINT `FK_ortu_role` FOREIGN KEY (`id_role`) REFERENCES `role` (`id_role`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_ortu_siswa` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table moka.ortu: ~1 rows (approximately)
/*!40000 ALTER TABLE `ortu` DISABLE KEYS */;
INSERT INTO `ortu` (`id_ortu`, `nama`, `jk`, `alamat`, `ttl`, `status`, `no_hp`, `id_siswa`, `id_role`, `username`, `password`, `foto`) VALUES
	('ORT0001', 'Linda Tri Wulandari', 'P', NULL, NULL, NULL, '625882196287', 'PD0054', 4, 'lin', '9ee522bab17b185bdc90f132fe77e1da', 'ortu.png');
/*!40000 ALTER TABLE `ortu` ENABLE KEYS */;

-- Dumping structure for view moka.pop_xii_pbs
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `pop_xii_pbs` (
	`COUNT(id_kelas)` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for view moka.pop_xii_rpl
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `pop_xii_rpl` (
	`COUNT(id_kelas)` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for view moka.pop_xi_pbs
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `pop_xi_pbs` (
	`COUNT(id_kelas)` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for view moka.pop_xi_rpl
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `pop_xi_rpl` (
	`COUNT(id_kelas)` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for view moka.pop_x_pbs
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `pop_x_pbs` (
	`COUNT(id_kelas)` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for view moka.pop_x_rpl
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `pop_x_rpl` (
	`COUNT(id_kelas)` BIGINT(21) NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for table moka.presensi
CREATE TABLE IF NOT EXISTS `presensi` (
  `id_presensi` int(2) NOT NULL AUTO_INCREMENT,
  `nama_presensi` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_presensi`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table moka.presensi: ~4 rows (approximately)
/*!40000 ALTER TABLE `presensi` DISABLE KEYS */;
INSERT INTO `presensi` (`id_presensi`, `nama_presensi`) VALUES
	(1, 'Hadir'),
	(2, 'Izin'),
	(3, 'Sakit'),
	(4, 'Tanpa Keterangan');
/*!40000 ALTER TABLE `presensi` ENABLE KEYS */;

-- Dumping structure for table moka.role
CREATE TABLE IF NOT EXISTS `role` (
  `id_role` int(11) NOT NULL AUTO_INCREMENT,
  `nama_role` varchar(50) NOT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table moka.role: ~6 rows (approximately)
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` (`id_role`, `nama_role`) VALUES
	(1, 'Admin'),
	(2, 'Operator'),
	(3, 'Guru'),
	(4, 'Orang Tua'),
	(5, 'Peserta Didik'),
	(6, 'Kepala Sekolah');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;

-- Dumping structure for table moka.sekolah
CREATE TABLE IF NOT EXISTS `sekolah` (
  `npsn` varchar(50) NOT NULL,
  `nama_sekolah` varchar(50) NOT NULL,
  `ks` varchar(50) NOT NULL,
  `alamat_sekolah` varchar(50) NOT NULL,
  `tgl_berdiri` varchar(50) NOT NULL,
  `deskripsi` varchar(500) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `website` varchar(50) NOT NULL,
  `logo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table moka.sekolah: ~0 rows (approximately)
/*!40000 ALTER TABLE `sekolah` DISABLE KEYS */;
INSERT INTO `sekolah` (`npsn`, `nama_sekolah`, `ks`, `alamat_sekolah`, `tgl_berdiri`, `deskripsi`, `no_telp`, `email`, `website`, `logo`) VALUES
	('69968954', 'SMK BP Subulul Huda', 'Muchtim Humaidi, M.IRKH', 'RT. 08/ RW. 02, Rejosari, Kebonsari, Madiun', '03 September 2017', 'SMK-BP Subulul Huda Kembangsawit merupakan lembaga pendidikan berbasis pesantren yang mengintegrasikan Kurikulum Pendidikan Nasional dengan Nilai-nilai Kepesantrenan serta dilaksanakan comperhensive control di bawah pengawasan Ustadz dan Pengasuh.', '(0351) 366704', 'smkbpsubululhuda@gmail.com', 'www.smkbpsh.sch.id', 'logo-smkbp.png');
/*!40000 ALTER TABLE `sekolah` ENABLE KEYS */;

-- Dumping structure for table moka.semester
CREATE TABLE IF NOT EXISTS `semester` (
  `id-semester` int(11) NOT NULL AUTO_INCREMENT,
  `nama-semester` varchar(50) NOT NULL,
  `id-tapel` int(11) NOT NULL,
  KEY `id-semester` (`id-semester`),
  KEY `FK__tapel` (`id-tapel`),
  CONSTRAINT `FK__tapel` FOREIGN KEY (`id-tapel`) REFERENCES `tapel` (`id-tapel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table moka.semester: ~0 rows (approximately)
/*!40000 ALTER TABLE `semester` DISABLE KEYS */;
/*!40000 ALTER TABLE `semester` ENABLE KEYS */;

-- Dumping structure for table moka.siswa
CREATE TABLE IF NOT EXISTS `siswa` (
  `id_siswa` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nis` varchar(50) DEFAULT NULL,
  `jk` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `ttl` varchar(50) DEFAULT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `id_kelas` int(11) NOT NULL,
  `id_walas` int(11) DEFAULT NULL,
  `id_ortu` int(11) DEFAULT NULL,
  `id_role` int(11) NOT NULL DEFAULT '5',
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id_siswa`),
  KEY `id-siswa` (`id_siswa`),
  KEY `FK_siswa_walas` (`id_walas`),
  KEY `FK_siswa_ortu` (`id_ortu`),
  KEY `FK_siswa_kelas` (`id_kelas`),
  KEY `FK_siswa_role` (`id_role`),
  CONSTRAINT `FK_siswa_kelas` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_siswa_role` FOREIGN KEY (`id_role`) REFERENCES `role` (`id_role`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table moka.siswa: ~111 rows (approximately)
/*!40000 ALTER TABLE `siswa` DISABLE KEYS */;
INSERT INTO `siswa` (`id_siswa`, `nama`, `nis`, `jk`, `alamat`, `ttl`, `foto`, `id_kelas`, `id_walas`, `id_ortu`, `id_role`, `username`, `password`) VALUES
	('PD0001', 'Aan Ahmad Ardiansyah', '094.062.065', 'L', NULL, NULL, 'siswa.png', 15, NULL, NULL, 5, 'abi', '25d55ad283aa400af464c76d713c07ad'),
	('PD0002', 'Abid Ainur Rofi', '129.086.065', 'L', NULL, NULL, 'siswa.png', 13, NULL, NULL, 5, 'ach', '25d55ad283aa400af464c76d713c07ad'),
	('PD0003', 'Achmad Murtazikin', '095.063.065', 'L', NULL, NULL, 'siswa.png', 15, NULL, NULL, 5, 'ade', '25d55ad283aa400af464c76d713c07ad'),
	('PD0004', 'Adelin Azizatul Nabfiqoh', '130.087.065', 'P', NULL, NULL, 'siswa.png', 13, NULL, NULL, 5, 'adi', '25d55ad283aa400af464c76d713c07ad'),
	('PD0005', 'Adit Tiya', '203.062.113', 'L', NULL, NULL, 'siswa.png', 11, NULL, NULL, 5, 'afr', '25d55ad283aa400af464c76d713c07ad'),
	('PD0006', 'Afrizal Eka Putra', '215.142.065', 'L', NULL, NULL, 'siswa.png', 12, NULL, NULL, 5, 'ahm', '25d55ad283aa400af464c76d713c07ad'),
	('PD0007', 'Ahmad Amirul Huda', '096.064.065', 'L', NULL, NULL, 'siswa.png', 15, NULL, NULL, 5, 'ahm', '25d55ad283aa400af464c76d713c07ad'),
	('PD0008', 'Ahmad Arbain Nawawi', '131.088.065', 'L', NULL, NULL, 'siswa.png', 13, NULL, NULL, 5, 'ahm', '25d55ad283aa400af464c76d713c07ad'),
	('PD0009', 'Ahmad Daffa Al Burhani', '178.117.065', 'L', NULL, NULL, 'siswa.png', 14, NULL, NULL, 5, 'ahm', '25d55ad283aa400af464c76d713c07ad'),
	('PD0010', 'Ahmad Syaifuddin Nur Wahid', '177.116.065', 'L', NULL, NULL, 'siswa.png', 13, NULL, NULL, 5, 'ahm', '25d55ad283aa400af464c76d713c07ad'),
	('PD0011', 'Ahmad Yahya Amiruddin', '132.089.065', 'L', NULL, NULL, 'siswa.png', 13, NULL, NULL, 5, 'akm', '25d55ad283aa400af464c76d713c07ad'),
	('PD0012', 'Akmal Sukri', '134.091.065', 'L', NULL, NULL, 'siswa.png', 13, NULL, NULL, 5, 'ald', '25d55ad283aa400af464c76d713c07ad'),
	('PD0013', 'Aldi Muhamad Zainuri', '060.040.065', 'L', NULL, NULL, 'siswa.png', 15, NULL, NULL, 5, 'ami', '25d55ad283aa400af464c76d713c07ad'),
	('PD0014', 'Aminun Naufal', '126.083.065', 'L', NULL, NULL, 'siswa.png', 15, NULL, NULL, 5, 'ang', '25d55ad283aa400af464c76d713c07ad'),
	('PD0015', 'Anggi Suhetiani', '181.120.065', 'P', NULL, NULL, 'siswa.png', 11, NULL, NULL, 5, 'ang', '25d55ad283aa400af464c76d713c07ad'),
	('PD0016', 'Anggita Amalia Sari', '116.035.113', 'P', NULL, NULL, 'siswa.png', 14, NULL, NULL, 5, 'ani', '25d55ad283aa400af464c76d713c07ad'),
	('PD0017', 'Anisa Auralita Aszahra', '135.092.065', 'P', NULL, NULL, 'siswa.png', 13, NULL, NULL, 5, 'ann', '25d55ad283aa400af464c76d713c07ad'),
	('PD0018', 'Annisa Hayu Istiqomah', '180.119.065', 'P', NULL, NULL, 'siswa.png', 11, NULL, NULL, 5, 'aul', '25d55ad283aa400af464c76d713c07ad'),
	('PD0019', 'Aulia Marsya Prasaja', '117.036.113', 'P', NULL, NULL, 'siswa.png', 15, NULL, NULL, 5, 'aza', '25d55ad283aa400af464c76d713c07ad'),
	('PD0020', 'Azahra Amalia Putri', '136.093.065', 'P', NULL, NULL, 'siswa.png', 13, NULL, NULL, 5, 'aza', '25d55ad283aa400af464c76d713c07ad'),
	('PD0021', 'Azaria Diva Nataneila', '204.063.113', 'P', NULL, NULL, 'siswa.png', 12, NULL, NULL, 5, 'bah', '25d55ad283aa400af464c76d713c07ad'),
	('PD0022', 'Baha Annur Asyikin', '158.044.113', 'P', NULL, NULL, 'siswa.png', 14, NULL, NULL, 5, 'bah', '25d55ad283aa400af464c76d713c07ad'),
	('PD0023', 'Bahrudin Ahmad', '205.064.113', 'L', NULL, NULL, 'siswa.png', 14, NULL, NULL, 5, 'bin', '25d55ad283aa400af464c76d713c07ad'),
	('PD0024', 'Binti Fatimatuz Zahro', '206.065.113', 'P', NULL, NULL, 'siswa.png', 12, NULL, NULL, 5, 'bur', '25d55ad283aa400af464c76d713c07ad'),
	('PD0025', 'Burhan Yusuf Hasyim', '137.094.065', 'L', NULL, NULL, 'siswa.png', 13, NULL, NULL, 5, 'can', '25d55ad283aa400af464c76d713c07ad'),
	('PD0026', 'Cantika Aulia Sabila', '097.065.065', 'P', NULL, NULL, 'siswa.png', 15, NULL, NULL, 5, 'che', '25d55ad283aa400af464c76d713c07ad'),
	('PD0027', 'Chentika Dwi Astuti', '159.045.113', 'P', NULL, NULL, 'siswa.png', 14, NULL, NULL, 5, 'dea', '25d55ad283aa400af464c76d713c07ad'),
	('PD0028', 'Dea Maya Rosita', '160.046.113', 'P', NULL, NULL, 'siswa.png', 14, NULL, NULL, 5, 'dia', '25d55ad283aa400af464c76d713c07ad'),
	('PD0029', 'Diana', '176.115.065', 'P', NULL, NULL, 'siswa.png', 13, NULL, NULL, 5, 'din', '25d55ad283aa400af464c76d713c07ad'),
	('PD0030', 'Dina Alif Sholikah', '118.037.113', 'P', NULL, NULL, 'siswa.png', 16, NULL, NULL, 5, 'din', '25d55ad283aa400af464c76d713c07ad'),
	('PD0031', 'Dina Aulia Khoirunnisa', '161.047.113', 'P', NULL, NULL, 'siswa.png', 16, NULL, NULL, 5, 'din', '25d55ad283aa400af464c76d713c07ad'),
	('PD0032', 'Dina Nur Antika', '119.038.113', 'P', NULL, NULL, 'siswa.png', 16, NULL, NULL, 5, 'din', '25d55ad283aa400af464c76d713c07ad'),
	('PD0033', 'Dini Zahrotul Azizah', '138.095.065', 'P', NULL, NULL, 'siswa.png', 13, NULL, NULL, 5, 'dio', '25d55ad283aa400af464c76d713c07ad'),
	('PD0034', 'Dio Rizky Rahayu', '208.067.113', 'P', NULL, NULL, 'siswa.png', 14, NULL, NULL, 5, 'don', '25d55ad283aa400af464c76d713c07ad'),
	('PD0035', 'Doni Putra Pratama', '183.122.065', 'L', NULL, NULL, 'siswa.png', 11, NULL, NULL, 5, 'evi', '25d55ad283aa400af464c76d713c07ad'),
	('PD0036', 'Evi Nur Kumalasari', '120.039.113', 'P', NULL, NULL, 'siswa.png', 16, NULL, NULL, 5, 'evi', '25d55ad283aa400af464c76d713c07ad'),
	('PD0037', 'Eviana Eka Safitri', '162.048.113', 'P', NULL, NULL, 'siswa.png', 14, NULL, NULL, 5, 'fai', '25d55ad283aa400af464c76d713c07ad'),
	('PD0038', 'Faikhul Himam Efendy', '209.068.113', 'L', NULL, NULL, 'siswa.png', 11, NULL, NULL, 5, 'far', '25d55ad283aa400af464c76d713c07ad'),
	('PD0039', 'Faris Surya Pratama Arianto', '184.123.065', 'L', NULL, NULL, 'siswa.png', 11, NULL, NULL, 5, 'fil', '25d55ad283aa400af464c76d713c07ad'),
	('PD0040', 'Filzah Nabilatul Zahra', '121.040.113', 'P', NULL, NULL, 'siswa.png', 16, NULL, NULL, 5, 'fir', '25d55ad283aa400af464c76d713c07ad'),
	('PD0041', 'Firman Hamdani', '099.067.065', 'L', NULL, NULL, 'siswa.png', 15, NULL, NULL, 5, 'hab', '25d55ad283aa400af464c76d713c07ad'),
	('PD0042', 'Habib Muhammad Nur Islam', '100.068.065', 'L', NULL, NULL, 'siswa.png', 15, NULL, NULL, 5, 'had', '25d55ad283aa400af464c76d713c07ad'),
	('PD0043', 'Hadziq Naufal Bagus Ahmad Dany', '101.069.065', 'L', NULL, NULL, 'siswa.png', 15, NULL, NULL, 5, 'han', '25d55ad283aa400af464c76d713c07ad'),
	('PD0044', 'Hanif Ichsani', '102.070.065', 'L', NULL, NULL, 'siswa.png', 15, NULL, NULL, 5, 'has', '25d55ad283aa400af464c76d713c07ad'),
	('PD0045', 'Hasyiem Muayad', '210.069.113', 'L', NULL, NULL, 'siswa.png', 12, NULL, NULL, 5, 'hes', '25d55ad283aa400af464c76d713c07ad'),
	('PD0046', 'Hesti Nuraini', '127.084.065', 'P', NULL, NULL, 'siswa.png', 15, NULL, NULL, 5, 'hid', '25d55ad283aa400af464c76d713c07ad'),
	('PD0047', 'Hidayatun Nisa', '122.082.065', 'P', NULL, NULL, 'siswa.png', 15, NULL, NULL, 5, 'irf', '25d55ad283aa400af464c76d713c07ad'),
	('PD0048', 'Irfan Hanif Saputra', '163.049.113', 'L', NULL, NULL, 'siswa.png', 13, NULL, NULL, 5, 'kha', '25d55ad283aa400af464c76d713c07ad'),
	('PD0049', 'Khanifatun Najwa', '139.096.065', 'P', NULL, NULL, 'siswa.png', 13, NULL, NULL, 5, 'kha', '25d55ad283aa400af464c76d713c07ad'),
	('PD0050', 'Kharisma Ananda Putri', '140.097.065', 'P', NULL, NULL, 'siswa.png', 13, NULL, NULL, 5, 'kho', '25d55ad283aa400af464c76d713c07ad'),
	('PD0051', 'Khoirul Agus Riyadi', '103.071.065', 'L', NULL, NULL, 'siswa.png', 15, NULL, NULL, 5, 'kho', '25d55ad283aa400af464c76d713c07ad'),
	('PD0052', 'Khoirul Anam', '104.072.065', 'L', NULL, NULL, 'siswa.png', 15, NULL, NULL, 5, 'lat', '25d55ad283aa400af464c76d713c07ad'),
	('PD0053', 'Latifatul Mukaromah', '123.041.113', 'P', NULL, NULL, 'siswa.png', 16, NULL, NULL, 5, 'lis', '25d55ad283aa400af464c76d713c07ad'),
	('PD0054', 'Lisa Aprida Rahmawati', '105.073.065', 'P', NULL, NULL, 'siswa.png', 15, NULL, NULL, 5, 'luc', '25d55ad283aa400af464c76d713c07ad'),
	('PD0055', 'Lucky Tegar Saputra', '186.125.065', 'L', NULL, NULL, 'siswa.png', 11, NULL, NULL, 5, 'm. ', '25d55ad283aa400af464c76d713c07ad'),
	('PD0056', 'M. Muwafiq Zainuddin Alhabibi', '106.074.065', 'L', NULL, NULL, 'siswa.png', 15, NULL, NULL, 5, 'moh', '25d55ad283aa400af464c76d713c07ad'),
	('PD0057', 'Mohamad Salman Alfarisi', '142.099.065', 'L', NULL, NULL, 'siswa.png', 13, NULL, NULL, 5, 'muh', '25d55ad283aa400af464c76d713c07ad'),
	('PD0058', 'Muhamad Rendi Alfian', '107.075.065', 'L', NULL, NULL, 'siswa.png', 15, NULL, NULL, 5, 'muh', '25d55ad283aa400af464c76d713c07ad'),
	('PD0059', 'Muhammad Ali Manshur', '216.143.065', 'L', NULL, NULL, 'siswa.png', 11, NULL, NULL, 5, 'muh', '25d55ad283aa400af464c76d713c07ad'),
	('PD0060', 'Muhammad Dhava Abdillah', '166.052.113', 'L', NULL, NULL, 'siswa.png', 12, NULL, NULL, 5, 'muh', '25d55ad283aa400af464c76d713c07ad'),
	('PD0061', 'Muhammad Fajrul Falakul \'Ulum', '165.051.113', 'L', NULL, NULL, 'siswa.png', 12, NULL, NULL, 5, 'muh', '25d55ad283aa400af464c76d713c07ad'),
	('PD0062', 'Muhammad Fashih Irsyadul Maula', '187.126.065', 'L', NULL, NULL, 'siswa.png', 12, NULL, NULL, 5, 'muh', '25d55ad283aa400af464c76d713c07ad'),
	('PD0063', 'Muhammad Pasya Harmidzi Syahril', '188.127.065', 'L', NULL, NULL, 'siswa.png', 11, NULL, NULL, 5, 'muh', '25d55ad283aa400af464c76d713c07ad'),
	('PD0064', 'Muhammad Sidiq Masyhuri', '189.128.065', 'L', NULL, NULL, 'siswa.png', 11, NULL, NULL, 5, 'muh', '25d55ad283aa400af464c76d713c07ad'),
	('PD0065', 'Muhinnatul Fitriyah', '211.070.113', 'P', NULL, NULL, 'siswa.png', 11, NULL, NULL, 5, 'nab', '25d55ad283aa400af464c76d713c07ad'),
	('PD0066', 'Nabila Zahrotu Nisa', '167.053.113', 'P', NULL, NULL, 'siswa.png', 14, NULL, NULL, 5, 'nah', '25d55ad283aa400af464c76d713c07ad'),
	('PD0067', 'Nahri Ilham Mubarok', '144.101.065', 'L', NULL, NULL, 'siswa.png', 13, NULL, NULL, 5, 'nai', '25d55ad283aa400af464c76d713c07ad'),
	('PD0068', 'Naila Lailatul Badriyyah', '109.077.065', 'P', NULL, NULL, 'siswa.png', 15, NULL, NULL, 5, 'naj', '25d55ad283aa400af464c76d713c07ad'),
	('PD0069', 'Najib Ulil Absyor', '145.102.065', 'L', NULL, NULL, 'siswa.png', 13, NULL, NULL, 5, 'nam', '25d55ad283aa400af464c76d713c07ad'),
	('PD0070', 'Namja Hasya YafiUllaili', '190.129.065', 'L', NULL, NULL, 'siswa.png', 11, NULL, NULL, 5, 'nas', '25d55ad283aa400af464c76d713c07ad'),
	('PD0071', 'Nasywa Galan Baskara', '192.131.065', 'L', NULL, NULL, 'siswa.png', 11, NULL, NULL, 5, 'nau', '25d55ad283aa400af464c76d713c07ad'),
	('PD0072', 'Naufal Labib Fikri', '191.130.065', 'L', NULL, NULL, 'siswa.png', 11, NULL, NULL, 5, 'nau', '25d55ad283aa400af464c76d713c07ad'),
	('PD0073', 'Naufal Muhammad Hammam Al Harits', '110.033.113', 'L', NULL, NULL, 'siswa.png', 16, NULL, NULL, 5, 'nim', '25d55ad283aa400af464c76d713c07ad'),
	('PD0074', 'NiMah Imroatun Najiah', '168.054.113', 'P', NULL, NULL, 'siswa.png', 12, NULL, NULL, 5, 'nov', '25d55ad283aa400af464c76d713c07ad'),
	('PD0075', 'Nova Dwi Ramadhana', '111.078.065', 'L', NULL, NULL, 'siswa.png', 15, NULL, NULL, 5, 'pra', '25d55ad283aa400af464c76d713c07ad'),
	('PD0076', 'Pradhytyo Titis Hanurogo', '146.103.065', 'L', NULL, NULL, 'siswa.png', 13, NULL, NULL, 5, 'put', '25d55ad283aa400af464c76d713c07ad'),
	('PD0077', 'Putri Nur Hadiroh', '169.055.113', 'P', NULL, NULL, 'siswa.png', 14, NULL, NULL, 5, 'rad', '25d55ad283aa400af464c76d713c07ad'),
	('PD0078', 'Radifka Kiara Aswan', '147.104.065', 'P', NULL, NULL, 'siswa.png', 13, NULL, NULL, 5, 'rah', '25d55ad283aa400af464c76d713c07ad'),
	('PD0079', 'Rahmadani', '112.034.113', 'L', NULL, NULL, 'siswa.png', 16, NULL, NULL, 5, 'rah', '25d55ad283aa400af464c76d713c07ad'),
	('PD0080', 'Rahmania Azzahra', '193.132.065', 'P', NULL, NULL, 'siswa.png', 11, NULL, NULL, 5, 'rai', '25d55ad283aa400af464c76d713c07ad'),
	('PD0081', 'Raiz Fathoni Fauzanata', '148.105.065', 'L', NULL, NULL, 'siswa.png', 13, NULL, NULL, 5, 'rar', '25d55ad283aa400af464c76d713c07ad'),
	('PD0082', 'Rara Aulia Salsabila', '128.085.065', 'P', NULL, NULL, 'siswa.png', 16, NULL, NULL, 5, 'ree', '25d55ad283aa400af464c76d713c07ad'),
	('PD0083', 'Reena Alfiana Aulia', '212.071.113', 'P', NULL, NULL, 'siswa.png', 12, NULL, NULL, 5, 'ren', '25d55ad283aa400af464c76d713c07ad'),
	('PD0084', 'Reno Widiyatmoko', '194.133.065', 'L', NULL, NULL, 'siswa.png', 11, NULL, NULL, 5, 'rid', '25d55ad283aa400af464c76d713c07ad'),
	('PD0085', 'Ridho Gufron Ikhtiar', '113.079.065', 'L', NULL, NULL, 'siswa.png', 16, NULL, NULL, 5, 'ris', '25d55ad283aa400af464c76d713c07ad'),
	('PD0086', 'Riska Aprilia Widianti', '114.080.065', 'P', NULL, NULL, 'siswa.png', 16, NULL, NULL, 5, 'riz', '25d55ad283aa400af464c76d713c07ad'),
	('PD0087', 'Rizal Mummaziq Jiyonis', '115.081.065', 'L', NULL, NULL, 'siswa.png', 16, NULL, NULL, 5, 'riz', '25d55ad283aa400af464c76d713c07ad'),
	('PD0088', 'Rizki Anisa', '175.061.113', 'P', NULL, NULL, 'siswa.png', 12, NULL, NULL, 5, 'rob', '25d55ad283aa400af464c76d713c07ad'),
	('PD0089', 'Robben Reyviano Manopo', '149.106.065', 'L', NULL, NULL, 'siswa.png', 13, NULL, NULL, 5, 'rob', '25d55ad283aa400af464c76d713c07ad'),
	('PD0090', 'Robit Ahmad Haris Arrifqi', '124.042.113', 'L', NULL, NULL, 'siswa.png', 16, NULL, NULL, 5, 'saf', '25d55ad283aa400af464c76d713c07ad'),
	('PD0091', 'Safiur Rofik', '195.134.065', 'L', NULL, NULL, 'siswa.png', 11, NULL, NULL, 5, 'sek', '25d55ad283aa400af464c76d713c07ad'),
	('PD0092', 'Sekar Arum Safitri', '213.072.113', 'P', NULL, NULL, 'siswa.png', 12, NULL, NULL, 5, 'sev', '25d55ad283aa400af464c76d713c07ad'),
	('PD0093', 'Sevira Damayanti', '151.108.065', 'P', NULL, NULL, 'siswa.png', 13, NULL, NULL, 5, 'she', '25d55ad283aa400af464c76d713c07ad'),
	('PD0094', 'Shelfia Adinda Fauziyah', '172.058.113', 'P', NULL, NULL, 'siswa.png', 14, NULL, NULL, 5, 'sit', '25d55ad283aa400af464c76d713c07ad'),
	('PD0095', 'Siti Dwi Rohmatin', '196.135.065', 'P', NULL, NULL, 'siswa.png', 11, NULL, NULL, 5, 'sit', '25d55ad283aa400af464c76d713c07ad'),
	('PD0096', 'Siti Mubasy Syaroh', '197.136.065', 'P', NULL, NULL, 'siswa.png', 11, NULL, NULL, 5, 'sit', '25d55ad283aa400af464c76d713c07ad'),
	('PD0097', 'Siti Multazimatussholikhah', '152.109.065', 'P', NULL, NULL, 'siswa.png', 13, NULL, NULL, 5, 'suq', '25d55ad283aa400af464c76d713c07ad'),
	('PD0098', 'Suqya Rohmatin', '153.110.065', 'P', NULL, NULL, 'siswa.png', 13, NULL, NULL, 5, 'sya', '25d55ad283aa400af464c76d713c07ad'),
	('PD0099', 'Syahwa Amalia Wijayanti', '125.043.113', 'P', NULL, NULL, 'siswa.png', 16, NULL, NULL, 5, 'tia', '25d55ad283aa400af464c76d713c07ad'),
	('PD0100', 'Tialin Dwi Nurdianti', '214.073.113', 'P', NULL, NULL, 'siswa.png', 12, NULL, NULL, 5, 'tia', '25d55ad283aa400af464c76d713c07ad'),
	('PD0101', 'Tiara Eka Arianti', '154.111.065', 'P', NULL, NULL, 'siswa.png', 13, NULL, NULL, 5, 'uba', '25d55ad283aa400af464c76d713c07ad'),
	('PD0102', 'Ubaidil Munawar Amin', '198.137.065', 'L', NULL, NULL, 'siswa.png', 11, NULL, NULL, 5, 'uha', '25d55ad283aa400af464c76d713c07ad'),
	('PD0103', 'Uhailul Munawwar', '155.112.065', 'L', NULL, NULL, 'siswa.png', 13, NULL, NULL, 5, 'uma', '25d55ad283aa400af464c76d713c07ad'),
	('PD0104', 'Umam Anum Wiranu', '199.138.065', 'L', NULL, NULL, 'siswa.png', 11, NULL, NULL, 5, 'umi', '25d55ad283aa400af464c76d713c07ad'),
	('PD0105', 'Umi Khasanatul Masruroh', '156.113.065', 'P', NULL, NULL, 'siswa.png', 13, NULL, NULL, 5, 'wil', '25d55ad283aa400af464c76d713c07ad'),
	('PD0106', 'Wilda Mufida Aini', '200.139.065', 'P', NULL, NULL, 'siswa.png', 11, NULL, NULL, 5, 'yaz', '25d55ad283aa400af464c76d713c07ad'),
	('PD0107', 'Yazid Basthomi', '201.140.065', 'L', NULL, NULL, 'siswa.png', 11, NULL, NULL, 5, 'yes', '25d55ad283aa400af464c76d713c07ad'),
	('PD0108', 'Yessyca Sandra Chasmala', '173.059.113', 'P', NULL, NULL, 'siswa.png', 12, NULL, NULL, 5, 'yus', '25d55ad283aa400af464c76d713c07ad'),
	('PD0109', 'Yusuf Geva Rowais', '202.141.065', 'L', NULL, NULL, 'siswa.png', 11, NULL, NULL, 5, 'zak', '25d55ad283aa400af464c76d713c07ad'),
	('PD0110', 'Zakia Kurnia Fajrin', '157.114.065', 'P', NULL, NULL, 'siswa.png', 13, NULL, NULL, 5, 'zev', '25d55ad283aa400af464c76d713c07ad'),
	('PD0111', 'Zeva Lia Putri', '174.060.113', 'P', NULL, NULL, 'siswa.png', 14, NULL, NULL, 5, '', '25d55ad283aa400af464c76d713c07ad');
/*!40000 ALTER TABLE `siswa` ENABLE KEYS */;

-- Dumping structure for table moka.tapel
CREATE TABLE IF NOT EXISTS `tapel` (
  `id-tapel` int(11) NOT NULL AUTO_INCREMENT,
  `nama-tapel` varchar(50) NOT NULL,
  KEY `id-tapel` (`id-tapel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table moka.tapel: ~0 rows (approximately)
/*!40000 ALTER TABLE `tapel` DISABLE KEYS */;
/*!40000 ALTER TABLE `tapel` ENABLE KEYS */;

-- Dumping structure for table moka.users
CREATE TABLE IF NOT EXISTS `users` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(1) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table moka.users: ~5 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id_user`, `username`, `password`, `role`) VALUES
	(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1),
	(2, 'operator', '21232f297a57a5a743894a0e4a801fc3', 2),
	(3, 'guru', '21232f297a57a5a743894a0e4a801fc3', 3),
	(4, 'siswa', '21232f297a57a5a743894a0e4a801fc3', 4),
	(5, 'ortu', '21232f297a57a5a743894a0e4a801fc3', 5),
	(6, 'ks', '21232f297a57a5a743894a0e4a801fc3', 6);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for view moka.view_guru_all
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_guru_all` (
	`id_guru` VARCHAR(10) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`gelar` VARCHAR(10) NULL COLLATE 'latin1_swedish_ci',
	`jk` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`alamat` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`tempat_lahir` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`tgl_lahir` DATE NULL,
	`no_hp` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`foto` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`username` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`password` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view moka.view_guru_simple
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_guru_simple` (
	`id_guru` VARCHAR(10) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_guru` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`gelar` VARCHAR(10) NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view moka.view_jadwal_all
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_jadwal_all` (
	`id_kbm` CHAR(5) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_hari` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_jamke` INT(11) NOT NULL,
	`nama_kelas` VARCHAR(3) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_komli` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_mapel` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view moka.view_jadwal_xii_pbs_1
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_jadwal_xii_pbs_1` (
	`id_kbm` CHAR(5) NOT NULL COLLATE 'latin1_swedish_ci',
	`id_jadwal` INT(11) NOT NULL,
	`nama_hari` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_jamke` INT(11) NOT NULL,
	`nama_mapel` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view moka.view_jadwal_xii_pbs_2
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_jadwal_xii_pbs_2` (
	`id_kbm` CHAR(5) NOT NULL COLLATE 'latin1_swedish_ci',
	`id_jadwal` INT(11) NOT NULL,
	`nama_hari` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_jamke` INT(11) NOT NULL,
	`nama_mapel` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view moka.view_jadwal_xii_pbs_3
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_jadwal_xii_pbs_3` (
	`id_kbm` CHAR(5) NOT NULL COLLATE 'latin1_swedish_ci',
	`id_jadwal` INT(11) NOT NULL,
	`nama_hari` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_jamke` INT(11) NOT NULL,
	`nama_mapel` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view moka.view_jadwal_xii_pbs_4
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_jadwal_xii_pbs_4` (
	`id_kbm` CHAR(5) NOT NULL COLLATE 'latin1_swedish_ci',
	`id_jadwal` INT(11) NOT NULL,
	`nama_hari` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_jamke` INT(11) NOT NULL,
	`nama_mapel` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view moka.view_jadwal_xii_pbs_5
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_jadwal_xii_pbs_5` (
	`id_kbm` CHAR(5) NOT NULL COLLATE 'latin1_swedish_ci',
	`id_jadwal` INT(11) NOT NULL,
	`nama_hari` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_jamke` INT(11) NOT NULL,
	`nama_mapel` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view moka.view_jadwal_xii_pbs_6
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_jadwal_xii_pbs_6` (
	`id_kbm` CHAR(5) NOT NULL COLLATE 'latin1_swedish_ci',
	`id_jadwal` INT(11) NOT NULL,
	`nama_hari` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_jamke` INT(11) NOT NULL,
	`nama_mapel` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view moka.view_jadwal_xii_rpl_1
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_jadwal_xii_rpl_1` (
	`id_kbm` CHAR(5) NOT NULL COLLATE 'latin1_swedish_ci',
	`id_jadwal` INT(11) NOT NULL,
	`nama_hari` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_jamke` INT(11) NOT NULL,
	`nama_mapel` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view moka.view_jadwal_xii_rpl_2
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_jadwal_xii_rpl_2` (
	`id_kbm` CHAR(5) NOT NULL COLLATE 'latin1_swedish_ci',
	`id_jadwal` INT(11) NOT NULL,
	`nama_hari` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_jamke` INT(11) NOT NULL,
	`nama_mapel` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view moka.view_jadwal_xii_rpl_3
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_jadwal_xii_rpl_3` (
	`id_kbm` CHAR(5) NOT NULL COLLATE 'latin1_swedish_ci',
	`id_jadwal` INT(11) NOT NULL,
	`nama_hari` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_jamke` INT(11) NOT NULL,
	`nama_mapel` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view moka.view_jadwal_xii_rpl_4
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_jadwal_xii_rpl_4` (
	`id_kbm` CHAR(5) NOT NULL COLLATE 'latin1_swedish_ci',
	`id_jadwal` INT(11) NOT NULL,
	`nama_hari` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_jamke` INT(11) NOT NULL,
	`nama_mapel` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view moka.view_jadwal_xii_rpl_5
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_jadwal_xii_rpl_5` (
	`id_kbm` CHAR(5) NOT NULL COLLATE 'latin1_swedish_ci',
	`id_jadwal` INT(11) NOT NULL,
	`nama_hari` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_jamke` INT(11) NOT NULL,
	`nama_mapel` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view moka.view_jadwal_xii_rpl_6
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_jadwal_xii_rpl_6` (
	`id_kbm` CHAR(5) NOT NULL COLLATE 'latin1_swedish_ci',
	`id_jadwal` INT(11) NOT NULL,
	`nama_hari` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_jamke` INT(11) NOT NULL,
	`nama_mapel` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view moka.view_jadwal_xi_pbs_1
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_jadwal_xi_pbs_1` (
	`id_kbm` CHAR(5) NOT NULL COLLATE 'latin1_swedish_ci',
	`id_jadwal` INT(11) NOT NULL,
	`nama_hari` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_jamke` INT(11) NOT NULL,
	`nama_mapel` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view moka.view_jadwal_xi_pbs_2
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_jadwal_xi_pbs_2` (
	`id_kbm` CHAR(5) NOT NULL COLLATE 'latin1_swedish_ci',
	`id_jadwal` INT(11) NOT NULL,
	`nama_hari` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_jamke` INT(11) NOT NULL,
	`nama_mapel` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view moka.view_jadwal_xi_pbs_3
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_jadwal_xi_pbs_3` (
	`id_kbm` CHAR(5) NOT NULL COLLATE 'latin1_swedish_ci',
	`id_jadwal` INT(11) NOT NULL,
	`nama_hari` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_jamke` INT(11) NOT NULL,
	`nama_mapel` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view moka.view_jadwal_xi_pbs_4
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_jadwal_xi_pbs_4` (
	`id_kbm` CHAR(5) NOT NULL COLLATE 'latin1_swedish_ci',
	`id_jadwal` INT(11) NOT NULL,
	`nama_hari` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_jamke` INT(11) NOT NULL,
	`nama_mapel` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view moka.view_jadwal_xi_pbs_5
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_jadwal_xi_pbs_5` (
	`id_kbm` CHAR(5) NOT NULL COLLATE 'latin1_swedish_ci',
	`id_jadwal` INT(11) NOT NULL,
	`nama_hari` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_jamke` INT(11) NOT NULL,
	`nama_mapel` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view moka.view_jadwal_xi_pbs_6
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_jadwal_xi_pbs_6` (
	`id_kbm` CHAR(5) NOT NULL COLLATE 'latin1_swedish_ci',
	`id_jadwal` INT(11) NOT NULL,
	`nama_hari` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_jamke` INT(11) NOT NULL,
	`nama_mapel` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view moka.view_jadwal_xi_rpl_1
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_jadwal_xi_rpl_1` (
	`id_kbm` CHAR(5) NOT NULL COLLATE 'latin1_swedish_ci',
	`id_jadwal` INT(11) NOT NULL,
	`nama_hari` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_jamke` INT(11) NOT NULL,
	`nama_mapel` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view moka.view_jadwal_xi_rpl_2
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_jadwal_xi_rpl_2` (
	`id_kbm` CHAR(5) NOT NULL COLLATE 'latin1_swedish_ci',
	`id_jadwal` INT(11) NOT NULL,
	`nama_hari` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_jamke` INT(11) NOT NULL,
	`nama_mapel` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view moka.view_jadwal_xi_rpl_3
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_jadwal_xi_rpl_3` (
	`id_kbm` CHAR(5) NOT NULL COLLATE 'latin1_swedish_ci',
	`id_jadwal` INT(11) NOT NULL,
	`nama_hari` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_jamke` INT(11) NOT NULL,
	`nama_mapel` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view moka.view_jadwal_xi_rpl_4
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_jadwal_xi_rpl_4` (
	`id_kbm` CHAR(5) NOT NULL COLLATE 'latin1_swedish_ci',
	`id_jadwal` INT(11) NOT NULL,
	`nama_hari` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_jamke` INT(11) NOT NULL,
	`nama_mapel` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view moka.view_jadwal_xi_rpl_5
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_jadwal_xi_rpl_5` (
	`id_kbm` CHAR(5) NOT NULL COLLATE 'latin1_swedish_ci',
	`id_jadwal` INT(11) NOT NULL,
	`nama_hari` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_jamke` INT(11) NOT NULL,
	`nama_mapel` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view moka.view_jadwal_xi_rpl_6
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_jadwal_xi_rpl_6` (
	`id_kbm` CHAR(5) NOT NULL COLLATE 'latin1_swedish_ci',
	`id_jadwal` INT(11) NOT NULL,
	`nama_hari` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_jamke` INT(11) NOT NULL,
	`nama_mapel` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view moka.view_jadwal_x_pbs_1
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_jadwal_x_pbs_1` (
	`id_kbm` CHAR(5) NOT NULL COLLATE 'latin1_swedish_ci',
	`id_jadwal` INT(11) NOT NULL,
	`nama_hari` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_jamke` INT(11) NOT NULL,
	`nama_mapel` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view moka.view_jadwal_x_pbs_2
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_jadwal_x_pbs_2` (
	`id_kbm` CHAR(5) NOT NULL COLLATE 'latin1_swedish_ci',
	`id_jadwal` INT(11) NOT NULL,
	`nama_hari` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_jamke` INT(11) NOT NULL,
	`nama_mapel` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view moka.view_jadwal_x_pbs_3
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_jadwal_x_pbs_3` (
	`id_kbm` CHAR(5) NOT NULL COLLATE 'latin1_swedish_ci',
	`id_jadwal` INT(11) NOT NULL,
	`nama_hari` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_jamke` INT(11) NOT NULL,
	`nama_mapel` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view moka.view_jadwal_x_pbs_4
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_jadwal_x_pbs_4` (
	`id_kbm` CHAR(5) NOT NULL COLLATE 'latin1_swedish_ci',
	`id_jadwal` INT(11) NOT NULL,
	`nama_hari` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_jamke` INT(11) NOT NULL,
	`nama_mapel` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view moka.view_jadwal_x_pbs_5
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_jadwal_x_pbs_5` (
	`id_kbm` CHAR(5) NOT NULL COLLATE 'latin1_swedish_ci',
	`id_jadwal` INT(11) NOT NULL,
	`nama_hari` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_jamke` INT(11) NOT NULL,
	`nama_mapel` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view moka.view_jadwal_x_pbs_6
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_jadwal_x_pbs_6` (
	`id_kbm` CHAR(5) NOT NULL COLLATE 'latin1_swedish_ci',
	`id_jadwal` INT(11) NOT NULL,
	`nama_hari` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_jamke` INT(11) NOT NULL,
	`nama_mapel` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view moka.view_jadwal_x_rpl_1
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_jadwal_x_rpl_1` (
	`id_kbm` CHAR(5) NOT NULL COLLATE 'latin1_swedish_ci',
	`id_jadwal` INT(11) NOT NULL,
	`nama_hari` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_jamke` INT(11) NOT NULL,
	`nama_mapel` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view moka.view_jadwal_x_rpl_2
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_jadwal_x_rpl_2` (
	`id_kbm` CHAR(5) NOT NULL COLLATE 'latin1_swedish_ci',
	`id_jadwal` INT(11) NOT NULL,
	`nama_hari` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_jamke` INT(11) NOT NULL,
	`nama_mapel` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view moka.view_jadwal_x_rpl_3
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_jadwal_x_rpl_3` (
	`id_kbm` CHAR(5) NOT NULL COLLATE 'latin1_swedish_ci',
	`id_jadwal` INT(11) NOT NULL,
	`nama_hari` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_jamke` INT(11) NOT NULL,
	`nama_mapel` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view moka.view_jadwal_x_rpl_4
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_jadwal_x_rpl_4` (
	`id_kbm` CHAR(5) NOT NULL COLLATE 'latin1_swedish_ci',
	`id_jadwal` INT(11) NOT NULL,
	`nama_hari` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_jamke` INT(11) NOT NULL,
	`nama_mapel` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view moka.view_jadwal_x_rpl_5
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_jadwal_x_rpl_5` (
	`id_kbm` CHAR(5) NOT NULL COLLATE 'latin1_swedish_ci',
	`id_jadwal` INT(11) NOT NULL,
	`nama_hari` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_jamke` INT(11) NOT NULL,
	`nama_mapel` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view moka.view_jadwal_x_rpl_6
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_jadwal_x_rpl_6` (
	`id_kbm` CHAR(5) NOT NULL COLLATE 'latin1_swedish_ci',
	`id_jadwal` INT(11) NOT NULL,
	`nama_hari` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_jamke` INT(11) NOT NULL,
	`nama_mapel` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view moka.view_jam_kbm
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_jam_kbm` (
	`id_kbm` CHAR(5) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_hari` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`nama_jamke` INT(11) NULL
) ENGINE=MyISAM;

-- Dumping structure for view moka.view_kelas
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_kelas` (
	`id_kelas` INT(11) NOT NULL,
	`nama_kelas` VARCHAR(3) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_komli` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`prosentase` INT(2) NULL
) ENGINE=MyISAM;

-- Dumping structure for view moka.view_log_presensi_all
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_log_presensi_all` (
	`id_log` INT(11) NOT NULL,
	`tgl` DATE NOT NULL,
	`nama_hari` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_jamke` INT(11) NOT NULL,
	`nama_mapel` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_guru` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_siswa` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`jenis_presensi` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`catatan` VARCHAR(100) NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view moka.view_mapel
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_mapel` (
	`id_mapel` INT(11) NOT NULL,
	`nama_mapel` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_kelas` VARCHAR(3) NULL COLLATE 'latin1_swedish_ci',
	`nama_komli` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view moka.view_mapel_all
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_mapel_all` (
	`id_komli` INT(11) NOT NULL,
	`id_kelas` INT(11) NOT NULL,
	`id_mapel` INT(11) NOT NULL,
	`nama_mapel` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_kelas` VARCHAR(3) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_komli` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`prosentase` INT(2) NOT NULL
) ENGINE=MyISAM;

-- Dumping structure for view moka.view_mapel_belum_ditugaskan
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_mapel_belum_ditugaskan` (
	`id_mapel` INT(11) NOT NULL,
	`nama_mapel` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_kelas` VARCHAR(3) NULL COLLATE 'latin1_swedish_ci',
	`nama_komli` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view moka.view_mapel_sudah_ditugaskan
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_mapel_sudah_ditugaskan` (
	`id_mapel` INT(11) NOT NULL,
	`nama_mapel` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_kelas` VARCHAR(3) NULL COLLATE 'latin1_swedish_ci',
	`nama_komli` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`id_mengajar` INT(11) NOT NULL,
	`id_guru` VARCHAR(10) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view moka.view_mengajar
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_mengajar` (
	`id_mengajar` INT(11) NOT NULL,
	`id_guru` VARCHAR(10) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_guru` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_mapel` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_kelas` VARCHAR(3) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_komli` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view moka.view_ortu_all
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_ortu_all` (
	`id_ortu` VARCHAR(10) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_ortu` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`jk` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`alamat` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`status` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`no_hp` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`id_siswa` VARCHAR(10) NULL COLLATE 'latin1_swedish_ci',
	`username` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`nama_siswa` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view moka.view_siswa_all
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_siswa_all` (
	`id_siswa` VARCHAR(10) NOT NULL COLLATE 'latin1_swedish_ci',
	`foto` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`nis` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`nama` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`jk` VARCHAR(50) NULL COLLATE 'latin1_swedish_ci',
	`id_kelas` INT(11) NOT NULL,
	`nama_kelas` VARCHAR(3) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_komli` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for view moka.view_tugas_mengajar
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `view_tugas_mengajar` (
	`id_mengajar` INT(11) NOT NULL,
	`nama_guru` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_mapel` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_kelas` VARCHAR(3) NOT NULL COLLATE 'latin1_swedish_ci',
	`nama_komli` VARCHAR(50) NOT NULL COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for table moka.walas
CREATE TABLE IF NOT EXISTS `walas` (
  `id-walas` int(11) NOT NULL AUTO_INCREMENT,
  `nama-walas` varchar(50) NOT NULL,
  PRIMARY KEY (`id-walas`),
  KEY `id-walas` (`id-walas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table moka.walas: ~0 rows (approximately)
/*!40000 ALTER TABLE `walas` DISABLE KEYS */;
/*!40000 ALTER TABLE `walas` ENABLE KEYS */;

-- Dumping structure for view moka.pop_xii_pbs
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `pop_xii_pbs`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pop_xii_pbs` AS SELECT COUNT(id_kelas) FROM siswa WHERE id_kelas=16 ;

-- Dumping structure for view moka.pop_xii_rpl
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `pop_xii_rpl`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pop_xii_rpl` AS SELECT COUNT(id_kelas) FROM siswa WHERE id_kelas=15 ;

-- Dumping structure for view moka.pop_xi_pbs
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `pop_xi_pbs`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pop_xi_pbs` AS SELECT COUNT(id_kelas) FROM siswa WHERE id_kelas=14 ;

-- Dumping structure for view moka.pop_xi_rpl
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `pop_xi_rpl`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pop_xi_rpl` AS SELECT COUNT(id_kelas) FROM siswa WHERE id_kelas=13 ;

-- Dumping structure for view moka.pop_x_pbs
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `pop_x_pbs`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pop_x_pbs` AS SELECT COUNT(id_kelas) FROM siswa WHERE id_kelas=12 ;

-- Dumping structure for view moka.pop_x_rpl
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `pop_x_rpl`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pop_x_rpl` AS SELECT COUNT(id_kelas) FROM siswa WHERE id_kelas=11 ;

-- Dumping structure for view moka.view_guru_all
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_guru_all`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_guru_all` AS select 
id_guru,
nama,
gelar,
jk,
alamat,
tempat_lahir,
tgl_lahir,
no_hp,
foto,
username,
password
from guru
order by id_guru asc ;

-- Dumping structure for view moka.view_guru_simple
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_guru_simple`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_guru_simple` AS select 
id_guru,
nama as nama_guru,
gelar
from guru
order by id_guru asc ;

-- Dumping structure for view moka.view_jadwal_all
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_jadwal_all`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_jadwal_all` AS select
jadwal_kbm.id_kbm,
hari.nama_hari,
jamke.nama_jamke,
kelas.nama_kelas,
komli.nama_komli,
mapel.nama_mapel,
guru.nama
from jadwal_kbm
join mengajar USING(id_mengajar)
join jam_kbm using(id_kbm)
join hari using(id_hari)
join jamke using(id_jamke)
join guru using(id_guru)
join mapel using(id_mapel)
join kelas using(id_kelas)
join komli using(id_komli) ;

-- Dumping structure for view moka.view_jadwal_xii_pbs_1
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_jadwal_xii_pbs_1`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_jadwal_xii_pbs_1` AS select
jadwal_kbm.id_kbm,
jadwal_kbm.id_jadwal,
hari.nama_hari,
jamke.nama_jamke,
mapel.nama_mapel,
guru.nama
from jadwal_kbm
join mengajar USING(id_mengajar)
join jam_kbm using(id_kbm)
join hari using(id_hari)
join jamke using(id_jamke)
join guru using(id_guru)
join mapel using(id_mapel)
join kelas using(id_kelas)
join komli using(id_komli)
where kelas.nama_kelas="XII"
and hari.id_hari=1
and komli.nama_komli="Perbankan Syariah"
order by id_kbm asc ;

-- Dumping structure for view moka.view_jadwal_xii_pbs_2
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_jadwal_xii_pbs_2`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_jadwal_xii_pbs_2` AS select
jadwal_kbm.id_kbm,
jadwal_kbm.id_jadwal,
hari.nama_hari,
jamke.nama_jamke,
mapel.nama_mapel,
guru.nama
from jadwal_kbm
join mengajar USING(id_mengajar)
join jam_kbm using(id_kbm)
join hari using(id_hari)
join jamke using(id_jamke)
join guru using(id_guru)
join mapel using(id_mapel)
join kelas using(id_kelas)
join komli using(id_komli)
where kelas.nama_kelas="XII"
and hari.id_hari=2
and komli.nama_komli="Perbankan Syariah"
order by id_kbm asc ;

-- Dumping structure for view moka.view_jadwal_xii_pbs_3
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_jadwal_xii_pbs_3`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_jadwal_xii_pbs_3` AS select
jadwal_kbm.id_kbm,jadwal_kbm.id_jadwal,
hari.nama_hari,
jamke.nama_jamke,
mapel.nama_mapel,
guru.nama
from jadwal_kbm
join mengajar USING(id_mengajar)
join jam_kbm using(id_kbm)
join hari using(id_hari)
join jamke using(id_jamke)
join guru using(id_guru)
join mapel using(id_mapel)
join kelas using(id_kelas)
join komli using(id_komli)
where kelas.nama_kelas="XII"
and hari.id_hari=3
and komli.nama_komli="Perbankan Syariah"
order by id_kbm asc ;

-- Dumping structure for view moka.view_jadwal_xii_pbs_4
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_jadwal_xii_pbs_4`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_jadwal_xii_pbs_4` AS select
jadwal_kbm.id_kbm,jadwal_kbm.id_jadwal,
hari.nama_hari,
jamke.nama_jamke,
mapel.nama_mapel,
guru.nama
from jadwal_kbm
join mengajar USING(id_mengajar)
join jam_kbm using(id_kbm)
join hari using(id_hari)
join jamke using(id_jamke)
join guru using(id_guru)
join mapel using(id_mapel)
join kelas using(id_kelas)
join komli using(id_komli)
where kelas.nama_kelas="XII"
and hari.id_hari=4
and komli.nama_komli="Perbankan Syariah"
order by id_kbm asc ;

-- Dumping structure for view moka.view_jadwal_xii_pbs_5
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_jadwal_xii_pbs_5`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_jadwal_xii_pbs_5` AS select
jadwal_kbm.id_kbm,jadwal_kbm.id_jadwal,
hari.nama_hari,
jamke.nama_jamke,
mapel.nama_mapel,
guru.nama
from jadwal_kbm
join mengajar USING(id_mengajar)
join jam_kbm using(id_kbm)
join hari using(id_hari)
join jamke using(id_jamke)
join guru using(id_guru)
join mapel using(id_mapel)
join kelas using(id_kelas)
join komli using(id_komli)
where kelas.nama_kelas="XII"
and hari.id_hari=5
and komli.nama_komli="Perbankan Syariah"
order by id_kbm asc ;

-- Dumping structure for view moka.view_jadwal_xii_pbs_6
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_jadwal_xii_pbs_6`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_jadwal_xii_pbs_6` AS select
jadwal_kbm.id_kbm,jadwal_kbm.id_jadwal,
hari.nama_hari,
jamke.nama_jamke,
mapel.nama_mapel,
guru.nama
from jadwal_kbm
join mengajar USING(id_mengajar)
join jam_kbm using(id_kbm)
join hari using(id_hari)
join jamke using(id_jamke)
join guru using(id_guru)
join mapel using(id_mapel)
join kelas using(id_kelas)
join komli using(id_komli)
where kelas.nama_kelas="XII"
and hari.id_hari=6
and komli.nama_komli="Perbankan Syariah"
order by id_kbm asc ;

-- Dumping structure for view moka.view_jadwal_xii_rpl_1
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_jadwal_xii_rpl_1`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_jadwal_xii_rpl_1` AS select
jadwal_kbm.id_kbm,jadwal_kbm.id_jadwal,
hari.nama_hari,
jamke.nama_jamke,
mapel.nama_mapel,
guru.nama
from jadwal_kbm
join mengajar USING(id_mengajar)
join jam_kbm using(id_kbm)
join hari using(id_hari)
join jamke using(id_jamke)
join guru using(id_guru)
join mapel using(id_mapel)
join kelas using(id_kelas)
join komli using(id_komli)
where kelas.nama_kelas="XII"
and hari.id_hari=1
and komli.nama_komli="Rekayasa Perangkat Lunak"
order by id_kbm asc ;

-- Dumping structure for view moka.view_jadwal_xii_rpl_2
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_jadwal_xii_rpl_2`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_jadwal_xii_rpl_2` AS select
jadwal_kbm.id_kbm,jadwal_kbm.id_jadwal,
hari.nama_hari,
jamke.nama_jamke,
mapel.nama_mapel,
guru.nama
from jadwal_kbm
join mengajar USING(id_mengajar)
join jam_kbm using(id_kbm)
join hari using(id_hari)
join jamke using(id_jamke)
join guru using(id_guru)
join mapel using(id_mapel)
join kelas using(id_kelas)
join komli using(id_komli)
where kelas.nama_kelas="XII"
and hari.id_hari=2
and komli.nama_komli="Rekayasa Perangkat Lunak"
order by id_kbm asc ;

-- Dumping structure for view moka.view_jadwal_xii_rpl_3
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_jadwal_xii_rpl_3`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_jadwal_xii_rpl_3` AS select
jadwal_kbm.id_kbm,jadwal_kbm.id_jadwal,
hari.nama_hari,
jamke.nama_jamke,
mapel.nama_mapel,
guru.nama
from jadwal_kbm
join mengajar USING(id_mengajar)
join jam_kbm using(id_kbm)
join hari using(id_hari)
join jamke using(id_jamke)
join guru using(id_guru)
join mapel using(id_mapel)
join kelas using(id_kelas)
join komli using(id_komli)
where kelas.nama_kelas="XII"
and hari.id_hari=3
and komli.nama_komli="Rekayasa Perangkat Lunak"
order by id_kbm asc ;

-- Dumping structure for view moka.view_jadwal_xii_rpl_4
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_jadwal_xii_rpl_4`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_jadwal_xii_rpl_4` AS select
jadwal_kbm.id_kbm,jadwal_kbm.id_jadwal,
hari.nama_hari,
jamke.nama_jamke,
mapel.nama_mapel,
guru.nama
from jadwal_kbm
join mengajar USING(id_mengajar)
join jam_kbm using(id_kbm)
join hari using(id_hari)
join jamke using(id_jamke)
join guru using(id_guru)
join mapel using(id_mapel)
join kelas using(id_kelas)
join komli using(id_komli)
where kelas.nama_kelas="XII"
and hari.id_hari=4
and komli.nama_komli="Rekayasa Perangkat Lunak"
order by id_kbm asc ;

-- Dumping structure for view moka.view_jadwal_xii_rpl_5
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_jadwal_xii_rpl_5`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_jadwal_xii_rpl_5` AS select
jadwal_kbm.id_kbm,jadwal_kbm.id_jadwal,
hari.nama_hari,
jamke.nama_jamke,
mapel.nama_mapel,
guru.nama
from jadwal_kbm
join mengajar USING(id_mengajar)
join jam_kbm using(id_kbm)
join hari using(id_hari)
join jamke using(id_jamke)
join guru using(id_guru)
join mapel using(id_mapel)
join kelas using(id_kelas)
join komli using(id_komli)
where kelas.nama_kelas="XII"
and hari.id_hari=5
and komli.nama_komli="Rekayasa Perangkat Lunak"
order by id_kbm asc ;

-- Dumping structure for view moka.view_jadwal_xii_rpl_6
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_jadwal_xii_rpl_6`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_jadwal_xii_rpl_6` AS select
jadwal_kbm.id_kbm,jadwal_kbm.id_jadwal,
hari.nama_hari,
jamke.nama_jamke,
mapel.nama_mapel,
guru.nama
from jadwal_kbm
join mengajar USING(id_mengajar)
join jam_kbm using(id_kbm)
join hari using(id_hari)
join jamke using(id_jamke)
join guru using(id_guru)
join mapel using(id_mapel)
join kelas using(id_kelas)
join komli using(id_komli)
where kelas.nama_kelas="XII"
and hari.id_hari=6
and komli.nama_komli="Rekayasa Perangkat Lunak"
order by id_kbm asc ;

-- Dumping structure for view moka.view_jadwal_xi_pbs_1
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_jadwal_xi_pbs_1`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_jadwal_xi_pbs_1` AS select
jadwal_kbm.id_kbm,jadwal_kbm.id_jadwal,
hari.nama_hari,
jamke.nama_jamke,
mapel.nama_mapel,
guru.nama
from jadwal_kbm
join mengajar USING(id_mengajar)
join jam_kbm using(id_kbm)
join hari using(id_hari)
join jamke using(id_jamke)
join guru using(id_guru)
join mapel using(id_mapel)
join kelas using(id_kelas)
join komli using(id_komli)
where kelas.nama_kelas="XI"
and hari.id_hari=1
and komli.nama_komli="Perbankan Syariah"
order by id_kbm asc ;

-- Dumping structure for view moka.view_jadwal_xi_pbs_2
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_jadwal_xi_pbs_2`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_jadwal_xi_pbs_2` AS select
jadwal_kbm.id_kbm,jadwal_kbm.id_jadwal,
hari.nama_hari,
jamke.nama_jamke,
mapel.nama_mapel,
guru.nama
from jadwal_kbm
join mengajar USING(id_mengajar)
join jam_kbm using(id_kbm)
join hari using(id_hari)
join jamke using(id_jamke)
join guru using(id_guru)
join mapel using(id_mapel)
join kelas using(id_kelas)
join komli using(id_komli)
where kelas.nama_kelas="XI"
and hari.id_hari=2
and komli.nama_komli="Perbankan Syariah"
order by id_kbm asc ;

-- Dumping structure for view moka.view_jadwal_xi_pbs_3
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_jadwal_xi_pbs_3`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_jadwal_xi_pbs_3` AS select
jadwal_kbm.id_kbm,jadwal_kbm.id_jadwal,
hari.nama_hari,
jamke.nama_jamke,
mapel.nama_mapel,
guru.nama
from jadwal_kbm
join mengajar USING(id_mengajar)
join jam_kbm using(id_kbm)
join hari using(id_hari)
join jamke using(id_jamke)
join guru using(id_guru)
join mapel using(id_mapel)
join kelas using(id_kelas)
join komli using(id_komli)
where kelas.nama_kelas="XI"
and hari.id_hari=3
and komli.nama_komli="Perbankan Syariah"
order by id_kbm asc ;

-- Dumping structure for view moka.view_jadwal_xi_pbs_4
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_jadwal_xi_pbs_4`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_jadwal_xi_pbs_4` AS select
jadwal_kbm.id_kbm,jadwal_kbm.id_jadwal,
hari.nama_hari,
jamke.nama_jamke,
mapel.nama_mapel,
guru.nama
from jadwal_kbm
join mengajar USING(id_mengajar)
join jam_kbm using(id_kbm)
join hari using(id_hari)
join jamke using(id_jamke)
join guru using(id_guru)
join mapel using(id_mapel)
join kelas using(id_kelas)
join komli using(id_komli)
where kelas.nama_kelas="XI"
and hari.id_hari=4
and komli.nama_komli="Perbankan Syariah"
order by id_kbm asc ;

-- Dumping structure for view moka.view_jadwal_xi_pbs_5
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_jadwal_xi_pbs_5`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_jadwal_xi_pbs_5` AS select
jadwal_kbm.id_kbm,jadwal_kbm.id_jadwal,
hari.nama_hari,
jamke.nama_jamke,
mapel.nama_mapel,
guru.nama
from jadwal_kbm
join mengajar USING(id_mengajar)
join jam_kbm using(id_kbm)
join hari using(id_hari)
join jamke using(id_jamke)
join guru using(id_guru)
join mapel using(id_mapel)
join kelas using(id_kelas)
join komli using(id_komli)
where kelas.nama_kelas="XI"
and hari.id_hari=5
and komli.nama_komli="Perbankan Syariah"
order by id_kbm asc ;

-- Dumping structure for view moka.view_jadwal_xi_pbs_6
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_jadwal_xi_pbs_6`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_jadwal_xi_pbs_6` AS select
jadwal_kbm.id_kbm,jadwal_kbm.id_jadwal,
hari.nama_hari,
jamke.nama_jamke,
mapel.nama_mapel,
guru.nama
from jadwal_kbm
join mengajar USING(id_mengajar)
join jam_kbm using(id_kbm)
join hari using(id_hari)
join jamke using(id_jamke)
join guru using(id_guru)
join mapel using(id_mapel)
join kelas using(id_kelas)
join komli using(id_komli)
where kelas.nama_kelas="XI"
and hari.id_hari=6
and komli.nama_komli="Perbankan Syariah"
order by id_kbm asc ;

-- Dumping structure for view moka.view_jadwal_xi_rpl_1
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_jadwal_xi_rpl_1`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_jadwal_xi_rpl_1` AS SELECT
jadwal_kbm.id_kbm,
jadwal_kbm.id_jadwal,
hari.nama_hari,
jamke.nama_jamke,
mapel.nama_mapel,
guru.nama
from jadwal_kbm
join mengajar USING(id_mengajar)
join jam_kbm using(id_kbm)
join hari using(id_hari)
join jamke using(id_jamke)
join guru using(id_guru)
join mapel using(id_mapel)
join kelas using(id_kelas)
join komli using(id_komli)
where kelas.nama_kelas="XI"
and hari.id_hari=1
and komli.nama_komli="Rekayasa Perangkat Lunak"
order by id_kbm asc ;

-- Dumping structure for view moka.view_jadwal_xi_rpl_2
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_jadwal_xi_rpl_2`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_jadwal_xi_rpl_2` AS select
jadwal_kbm.id_kbm,
jadwal_kbm.id_jadwal,
hari.nama_hari,
jamke.nama_jamke,
mapel.nama_mapel,
guru.nama
from jadwal_kbm
join mengajar USING(id_mengajar)
join jam_kbm using(id_kbm)
join hari using(id_hari)
join jamke using(id_jamke)
join guru using(id_guru)
join mapel using(id_mapel)
join kelas using(id_kelas)
join komli using(id_komli)
where kelas.nama_kelas="XI"
and hari.id_hari=2
and komli.nama_komli="Rekayasa Perangkat Lunak"
order by id_kbm asc ;

-- Dumping structure for view moka.view_jadwal_xi_rpl_3
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_jadwal_xi_rpl_3`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_jadwal_xi_rpl_3` AS select
jadwal_kbm.id_kbm,jadwal_kbm.id_jadwal,
hari.nama_hari,
jamke.nama_jamke,
mapel.nama_mapel,
guru.nama
from jadwal_kbm
join mengajar USING(id_mengajar)
join jam_kbm using(id_kbm)
join hari using(id_hari)
join jamke using(id_jamke)
join guru using(id_guru)
join mapel using(id_mapel)
join kelas using(id_kelas)
join komli using(id_komli)
where kelas.nama_kelas="XI"
and hari.id_hari=3
and komli.nama_komli="Rekayasa Perangkat Lunak"
order by id_kbm asc ;

-- Dumping structure for view moka.view_jadwal_xi_rpl_4
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_jadwal_xi_rpl_4`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_jadwal_xi_rpl_4` AS select
jadwal_kbm.id_kbm,jadwal_kbm.id_jadwal,
hari.nama_hari,
jamke.nama_jamke,
mapel.nama_mapel,
guru.nama
from jadwal_kbm
join mengajar USING(id_mengajar)
join jam_kbm using(id_kbm)
join hari using(id_hari)
join jamke using(id_jamke)
join guru using(id_guru)
join mapel using(id_mapel)
join kelas using(id_kelas)
join komli using(id_komli)
where kelas.nama_kelas="XI"
and hari.id_hari=4
and komli.nama_komli="Rekayasa Perangkat Lunak"
order by id_kbm asc ;

-- Dumping structure for view moka.view_jadwal_xi_rpl_5
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_jadwal_xi_rpl_5`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_jadwal_xi_rpl_5` AS select
jadwal_kbm.id_kbm,jadwal_kbm.id_jadwal,
hari.nama_hari,
jamke.nama_jamke,
mapel.nama_mapel,
guru.nama
from jadwal_kbm
join mengajar USING(id_mengajar)
join jam_kbm using(id_kbm)
join hari using(id_hari)
join jamke using(id_jamke)
join guru using(id_guru)
join mapel using(id_mapel)
join kelas using(id_kelas)
join komli using(id_komli)
where kelas.nama_kelas="XI"
and hari.id_hari=5
and komli.nama_komli="Rekayasa Perangkat Lunak"
order by id_kbm asc ;

-- Dumping structure for view moka.view_jadwal_xi_rpl_6
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_jadwal_xi_rpl_6`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_jadwal_xi_rpl_6` AS select
jadwal_kbm.id_kbm,jadwal_kbm.id_jadwal,
hari.nama_hari,
jamke.nama_jamke,
mapel.nama_mapel,
guru.nama
from jadwal_kbm
join mengajar USING(id_mengajar)
join jam_kbm using(id_kbm)
join hari using(id_hari)
join jamke using(id_jamke)
join guru using(id_guru)
join mapel using(id_mapel)
join kelas using(id_kelas)
join komli using(id_komli)
where kelas.nama_kelas="XI"
and hari.id_hari=6
and komli.nama_komli="Rekayasa Perangkat Lunak"
order by id_kbm asc ;

-- Dumping structure for view moka.view_jadwal_x_pbs_1
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_jadwal_x_pbs_1`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_jadwal_x_pbs_1` AS select
jadwal_kbm.id_kbm,jadwal_kbm.id_jadwal,
hari.nama_hari,
jamke.nama_jamke,
mapel.nama_mapel,
guru.nama
from jadwal_kbm
join mengajar USING(id_mengajar)
join jam_kbm using(id_kbm)
join hari using(id_hari)
join jamke using(id_jamke)
join guru using(id_guru)
join mapel using(id_mapel)
join kelas using(id_kelas)
join komli using(id_komli)
where kelas.nama_kelas="X"
and hari.id_hari=1
and komli.nama_komli="Perbankan Syariah" ;

-- Dumping structure for view moka.view_jadwal_x_pbs_2
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_jadwal_x_pbs_2`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_jadwal_x_pbs_2` AS select
jadwal_kbm.id_kbm,jadwal_kbm.id_jadwal,
hari.nama_hari,
jamke.nama_jamke,
mapel.nama_mapel,
guru.nama
from jadwal_kbm
join mengajar USING(id_mengajar)
join jam_kbm using(id_kbm)
join hari using(id_hari)
join jamke using(id_jamke)
join guru using(id_guru)
join mapel using(id_mapel)
join kelas using(id_kelas)
join komli using(id_komli)
where kelas.nama_kelas="X"
and hari.id_hari=2
and komli.nama_komli="Perbankan Syariah" ;

-- Dumping structure for view moka.view_jadwal_x_pbs_3
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_jadwal_x_pbs_3`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_jadwal_x_pbs_3` AS select
jadwal_kbm.id_kbm,jadwal_kbm.id_jadwal,
hari.nama_hari,
jamke.nama_jamke,
mapel.nama_mapel,
guru.nama
from jadwal_kbm
join mengajar USING(id_mengajar)
join jam_kbm using(id_kbm)
join hari using(id_hari)
join jamke using(id_jamke)
join guru using(id_guru)
join mapel using(id_mapel)
join kelas using(id_kelas)
join komli using(id_komli)
where kelas.nama_kelas="X"
and hari.id_hari=3
and komli.nama_komli="Perbankan Syariah" ;

-- Dumping structure for view moka.view_jadwal_x_pbs_4
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_jadwal_x_pbs_4`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_jadwal_x_pbs_4` AS select
jadwal_kbm.id_kbm,jadwal_kbm.id_jadwal,
hari.nama_hari,
jamke.nama_jamke,
mapel.nama_mapel,
guru.nama
from jadwal_kbm
join mengajar USING(id_mengajar)
join jam_kbm using(id_kbm)
join hari using(id_hari)
join jamke using(id_jamke)
join guru using(id_guru)
join mapel using(id_mapel)
join kelas using(id_kelas)
join komli using(id_komli)
where kelas.nama_kelas="X"
and hari.id_hari=4
and komli.nama_komli="Perbankan Syariah"
order by id_kbm asc ;

-- Dumping structure for view moka.view_jadwal_x_pbs_5
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_jadwal_x_pbs_5`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_jadwal_x_pbs_5` AS select
jadwal_kbm.id_kbm,jadwal_kbm.id_jadwal,
hari.nama_hari,
jamke.nama_jamke,
mapel.nama_mapel,
guru.nama
from jadwal_kbm
join mengajar USING(id_mengajar)
join jam_kbm using(id_kbm)
join hari using(id_hari)
join jamke using(id_jamke)
join guru using(id_guru)
join mapel using(id_mapel)
join kelas using(id_kelas)
join komli using(id_komli)
where kelas.nama_kelas="X"
and hari.id_hari=5
and komli.nama_komli="Perbankan Syariah"
order by id_kbm asc ;

-- Dumping structure for view moka.view_jadwal_x_pbs_6
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_jadwal_x_pbs_6`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_jadwal_x_pbs_6` AS select
jadwal_kbm.id_kbm,jadwal_kbm.id_jadwal,
hari.nama_hari,
jamke.nama_jamke,
mapel.nama_mapel,
guru.nama
from jadwal_kbm
join mengajar USING(id_mengajar)
join jam_kbm using(id_kbm)
join hari using(id_hari)
join jamke using(id_jamke)
join guru using(id_guru)
join mapel using(id_mapel)
join kelas using(id_kelas)
join komli using(id_komli)
where kelas.nama_kelas="X"
and hari.id_hari=6
and komli.nama_komli="Perbankan Syariah"
order by id_kbm asc ;

-- Dumping structure for view moka.view_jadwal_x_rpl_1
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_jadwal_x_rpl_1`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_jadwal_x_rpl_1` AS select
jadwal_kbm.id_kbm,jadwal_kbm.id_jadwal,
hari.nama_hari,
jamke.nama_jamke,
mapel.nama_mapel,
guru.nama
from jadwal_kbm
join mengajar USING(id_mengajar)
join jam_kbm using(id_kbm)
join hari using(id_hari)
join jamke using(id_jamke)
join guru using(id_guru)
join mapel using(id_mapel)
join kelas using(id_kelas)
join komli using(id_komli)
where kelas.nama_kelas="X"
and komli.nama_komli="Rekayasa Perangkat Lunak"
and hari.id_hari=1
order by id_kbm asc ;

-- Dumping structure for view moka.view_jadwal_x_rpl_2
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_jadwal_x_rpl_2`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_jadwal_x_rpl_2` AS select
jadwal_kbm.id_kbm,jadwal_kbm.id_jadwal,
hari.nama_hari,
jamke.nama_jamke,
mapel.nama_mapel,
guru.nama
from jadwal_kbm
join mengajar USING(id_mengajar)
join jam_kbm using(id_kbm)
join hari using(id_hari)
join jamke using(id_jamke)
join guru using(id_guru)
join mapel using(id_mapel)
join kelas using(id_kelas)
join komli using(id_komli)
where kelas.nama_kelas="X"
and komli.nama_komli="Rekayasa Perangkat Lunak"
and hari.id_hari=2
order by id_kbm asc ;

-- Dumping structure for view moka.view_jadwal_x_rpl_3
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_jadwal_x_rpl_3`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_jadwal_x_rpl_3` AS select
jadwal_kbm.id_kbm,jadwal_kbm.id_jadwal,
hari.nama_hari,
jamke.nama_jamke,
mapel.nama_mapel,
guru.nama
from jadwal_kbm
join mengajar USING(id_mengajar)
join jam_kbm using(id_kbm)
join hari using(id_hari)
join jamke using(id_jamke)
join guru using(id_guru)
join mapel using(id_mapel)
join kelas using(id_kelas)
join komli using(id_komli)
where kelas.nama_kelas="X"
and komli.nama_komli="Rekayasa Perangkat Lunak"
and hari.id_hari=3
order by id_kbm asc ;

-- Dumping structure for view moka.view_jadwal_x_rpl_4
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_jadwal_x_rpl_4`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_jadwal_x_rpl_4` AS select
jadwal_kbm.id_kbm,jadwal_kbm.id_jadwal,
hari.nama_hari,
jamke.nama_jamke,
mapel.nama_mapel,
guru.nama
from jadwal_kbm
join mengajar USING(id_mengajar)
join jam_kbm using(id_kbm)
join hari using(id_hari)
join jamke using(id_jamke)
join guru using(id_guru)
join mapel using(id_mapel)
join kelas using(id_kelas)
join komli using(id_komli)
where kelas.nama_kelas="X"
and komli.nama_komli="Rekayasa Perangkat Lunak"
and hari.id_hari=4
order by id_kbm asc ;

-- Dumping structure for view moka.view_jadwal_x_rpl_5
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_jadwal_x_rpl_5`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_jadwal_x_rpl_5` AS select
jadwal_kbm.id_kbm,jadwal_kbm.id_jadwal,
hari.nama_hari,
jamke.nama_jamke,
mapel.nama_mapel,
guru.nama
from jadwal_kbm
join mengajar USING(id_mengajar)
join jam_kbm using(id_kbm)
join hari using(id_hari)
join jamke using(id_jamke)
join guru using(id_guru)
join mapel using(id_mapel)
join kelas using(id_kelas)
join komli using(id_komli)
where kelas.nama_kelas="X"
and komli.nama_komli="Rekayasa Perangkat Lunak"
and hari.id_hari=5
order by id_kbm asc ;

-- Dumping structure for view moka.view_jadwal_x_rpl_6
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_jadwal_x_rpl_6`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_jadwal_x_rpl_6` AS select
jadwal_kbm.id_kbm,jadwal_kbm.id_jadwal,
hari.nama_hari,
jamke.nama_jamke,
mapel.nama_mapel,
guru.nama
from jadwal_kbm
join mengajar USING(id_mengajar)
join jam_kbm using(id_kbm)
join hari using(id_hari)
join jamke using(id_jamke)
join guru using(id_guru)
join mapel using(id_mapel)
join kelas using(id_kelas)
join komli using(id_komli)
where kelas.nama_kelas="X"
and komli.nama_komli="Rekayasa Perangkat Lunak"
and hari.id_hari=6
order by id_kbm asc ;

-- Dumping structure for view moka.view_jam_kbm
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_jam_kbm`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_jam_kbm` AS SELECT jam_kbm.id_kbm,hari.nama_hari,jamke.nama_jamke FROM jam_kbm
LEFT JOIN hari ON jam_kbm.id_hari=hari.id_hari
LEFT JOIN jamke ON jam_kbm.id_jamke=jamke.id_jamke
ORDER BY jam_kbm.id_kbm ASC ;

-- Dumping structure for view moka.view_kelas
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_kelas`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_kelas` AS SELECT 
kelas.id_kelas,
kelas.nama_kelas,
komli.nama_komli,
komli.prosentase
FROM kelas LEFT JOIN komli ON kelas.id_komli=komli.id_komli ORDER BY kelas.id_kelas  ASC ;

-- Dumping structure for view moka.view_log_presensi_all
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_log_presensi_all`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_log_presensi_all` AS select 
log_presensi.id_log,
log_presensi.tgl,
hari.nama_hari,
jamke.nama_jamke,
mapel.nama_mapel,
guru.nama as nama_guru,
siswa.nama as nama_siswa,
presensi.nama_presensi as jenis_presensi,
log_presensi.catatan
from log_presensi
join mengajar using(id_mengajar)
JOIN guru USING(id_guru)
join jadwal_kbm using(id_mengajar)
join jam_kbm using(id_kbm)
join hari using(id_hari)
join jamke using(id_jamke)
join mapel using(id_mapel)
join siswa using(id_siswa)
join presensi using(id_presensi) ;

-- Dumping structure for view moka.view_mapel
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_mapel`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_mapel` AS SELECT 
mapel.id_mapel,
mapel.nama_mapel,
kelas.nama_kelas,
komli.nama_komli
FROM mapel
LEFT JOIN kelas ON mapel.id_kelas=kelas.id_kelas LEFT JOIN komli ON kelas.id_komli=komli.id_komli ORDER BY kelas.id_kelas ASC ;

-- Dumping structure for view moka.view_mapel_all
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_mapel_all`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_mapel_all` AS SELECT 
*
FROM mapel JOIN kelas using(id_kelas) JOIN komli using(id_komli) ORDER BY kelas.id_kelas ASC ;

-- Dumping structure for view moka.view_mapel_belum_ditugaskan
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_mapel_belum_ditugaskan`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_mapel_belum_ditugaskan` AS SELECT * FROM view_mapel
WHERE id_mapel NOT IN (SELECT id_mapel FROM mengajar)
ORDER BY nama_mapel ASC ;

-- Dumping structure for view moka.view_mapel_sudah_ditugaskan
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_mapel_sudah_ditugaskan`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_mapel_sudah_ditugaskan` AS SELECT * FROM view_mapel
JOIN mengajar using(id_mapel)
ORDER BY nama_mapel asc ;

-- Dumping structure for view moka.view_mengajar
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_mengajar`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_mengajar` AS select
mengajar.id_mengajar,
guru.id_guru,
guru.nama as nama_guru,
mapel.nama_mapel,
kelas.nama_kelas,
komli.nama_komli
from guru
join mengajar using(id_guru)
join mapel using(id_mapel)
join kelas using(id_kelas)
join komli using(id_komli)
ORDER BY guru.id_guru  ASC ;

-- Dumping structure for view moka.view_ortu_all
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_ortu_all`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_ortu_all` AS select
ortu.id_ortu,
ortu.nama as nama_ortu,
ortu.jk,
ortu.alamat,
ortu.status,
ortu.no_hp,
ortu.id_siswa,
ortu.username,
siswa.nama AS nama_siswa
from ortu
join siswa using(id_siswa) ;

-- Dumping structure for view moka.view_siswa_all
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_siswa_all`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_siswa_all` AS SELECT
siswa.id_siswa,
siswa.foto,
siswa.nis,
siswa.nama,
siswa.jk,
kelas.id_kelas,
kelas.nama_kelas,
komli.nama_komli
from siswa
join kelas using(id_kelas)
join komli using(id_komli)
ORDER BY kelas.nama_kelas ASC ;

-- Dumping structure for view moka.view_tugas_mengajar
-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `view_tugas_mengajar`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_tugas_mengajar` AS SELECT
mengajar.id_mengajar,
guru.nama AS nama_guru,
mapel.nama_mapel,
kelas.nama_kelas,
komli.nama_komli
from mengajar
join guru using(id_guru)
join mapel using(id_mapel)
join kelas using (id_kelas)
join komli using(id_komli) ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
