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
DROP TABLE IF EXISTS `guru`;
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
DELETE FROM `guru`;
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

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
