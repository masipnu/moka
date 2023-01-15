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


-- Dumping database structure for moka
DROP DATABASE IF EXISTS `moka`;
CREATE DATABASE IF NOT EXISTS `moka` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `moka`;

-- Dumping structure for table moka.guru
DROP TABLE IF EXISTS `guru`;
CREATE TABLE IF NOT EXISTS `guru` (
  `id_guru` varchar(10) NOT NULL DEFAULT '',
  `nama` varchar(50) NOT NULL,
  `jk` varchar(50) NOT NULL DEFAULT '',
  `alamat` varchar(50) NOT NULL DEFAULT '',
  `ttl` varchar(50) NOT NULL DEFAULT '',
  `no_hp` varchar(50) NOT NULL DEFAULT '',
  `foto` varchar(50) NOT NULL DEFAULT '',
  `id_role` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id_guru`),
  KEY `FK_guru_role` (`id_role`),
  CONSTRAINT `FK_guru_role` FOREIGN KEY (`id_role`) REFERENCES `role` (`id_role`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table moka.guru: ~1 rows (approximately)
DELETE FROM `guru`;
/*!40000 ALTER TABLE `guru` DISABLE KEYS */;
INSERT INTO `guru` (`id_guru`, `nama`, `jk`, `alamat`, `ttl`, `no_hp`, `foto`, `id_role`, `username`, `password`) VALUES
	('GTK001', 'Ipnu Masyaid', 'L', 'Gegeran, Sukorejo, Ponorogo', '08 November 1994', '082139855933', 'profil.png', 1, 'admin', '21232f297a57a5a743894a0e4a801fc3');
/*!40000 ALTER TABLE `guru` ENABLE KEYS */;

-- Dumping structure for table moka.kelas
DROP TABLE IF EXISTS `kelas`;
CREATE TABLE IF NOT EXISTS `kelas` (
  `id_kelas` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kelas` varchar(3) NOT NULL,
  `id_komli` int(11) NOT NULL,
  PRIMARY KEY (`id_kelas`),
  KEY `FK_kelas_komli` (`id_komli`),
  CONSTRAINT `FK_kelas_komli` FOREIGN KEY (`id_komli`) REFERENCES `komli` (`id_komli`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- Dumping data for table moka.kelas: ~7 rows (approximately)
DELETE FROM `kelas`;
/*!40000 ALTER TABLE `kelas` DISABLE KEYS */;
INSERT INTO `kelas` (`id_kelas`, `nama_kelas`, `id_komli`) VALUES
	(5, 'X', 20),
	(6, 'X', 21),
	(12, 'XI', 20),
	(13, 'XI', 21),
	(17, 'XII', 20),
	(18, 'XII', 23),
	(20, 'X', 23),
	(21, 'XII', 21);
/*!40000 ALTER TABLE `kelas` ENABLE KEYS */;

-- Dumping structure for table moka.komli
DROP TABLE IF EXISTS `komli`;
CREATE TABLE IF NOT EXISTS `komli` (
  `id_komli` int(11) NOT NULL AUTO_INCREMENT,
  `nama_komli` varchar(50) NOT NULL,
  `prosentase` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_komli`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

-- Dumping data for table moka.komli: ~3 rows (approximately)
DELETE FROM `komli`;
/*!40000 ALTER TABLE `komli` DISABLE KEYS */;
INSERT INTO `komli` (`id_komli`, `nama_komli`, `prosentase`) VALUES
	(20, 'Rekayasa Perangkat Lunak', 0),
	(21, 'Perbankan Syariah', 0),
	(23, 'Teknik Sepeda Motor', 0);
/*!40000 ALTER TABLE `komli` ENABLE KEYS */;

-- Dumping structure for table moka.log_presensi
DROP TABLE IF EXISTS `log_presensi`;
CREATE TABLE IF NOT EXISTS `log_presensi` (
  `id_log` varchar(10) NOT NULL,
  `tgl` date NOT NULL,
  `jam` int(2) NOT NULL DEFAULT '0',
  `id_kelas` int(11) NOT NULL,
  `id_guru` varchar(10) NOT NULL DEFAULT '0',
  `id_mapel` int(11) NOT NULL,
  `id_siswa` varchar(10) NOT NULL DEFAULT '0',
  `id_presensi` int(11) NOT NULL,
  `catatan` varchar(100) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_log`),
  KEY `id-presensi` (`id_log`),
  KEY `FK_log_presensi_kelas` (`id_kelas`),
  KEY `FK_log_presensi_guru` (`id_guru`),
  KEY `FK_log_presensi_mapel` (`id_mapel`),
  KEY `FK_log_presensi_siswa` (`id_siswa`),
  KEY `FK_log_presensi_presensi` (`id_presensi`),
  CONSTRAINT `FK_log_presensi_guru` FOREIGN KEY (`id_guru`) REFERENCES `guru` (`id_guru`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_log_presensi_kelas` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_log_presensi_mapel` FOREIGN KEY (`id_mapel`) REFERENCES `mapel` (`id_mapel`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_log_presensi_presensi` FOREIGN KEY (`id_presensi`) REFERENCES `presensi` (`id_presensi`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_log_presensi_siswa` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table moka.log_presensi: ~0 rows (approximately)
DELETE FROM `log_presensi`;
/*!40000 ALTER TABLE `log_presensi` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_presensi` ENABLE KEYS */;

-- Dumping structure for table moka.mapel
DROP TABLE IF EXISTS `mapel`;
CREATE TABLE IF NOT EXISTS `mapel` (
  `id_mapel` int(11) NOT NULL AUTO_INCREMENT,
  `nama_mapel` varchar(50) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  PRIMARY KEY (`id_mapel`),
  KEY `id-mapel` (`id_mapel`),
  KEY `FK__kelas` (`id_kelas`),
  CONSTRAINT `FK__kelas` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- Dumping data for table moka.mapel: ~0 rows (approximately)
DELETE FROM `mapel`;
/*!40000 ALTER TABLE `mapel` DISABLE KEYS */;
INSERT INTO `mapel` (`id_mapel`, `nama_mapel`, `id_kelas`) VALUES
	(2, 'Basis Data', 12),
	(3, 'Basis Data', 17),
	(4, 'Pendidikan Agama Islam', 5),
	(5, 'Pendidikan Agama Islam', 6),
	(6, 'Pendidikan Agama Islam', 12),
	(7, 'Pendidikan Agama Islam', 13),
	(8, 'Pendidikan Agama Islam', 17),
	(9, 'Pendidikan Agama Islam', 21),
	(10, 'Kelas Samsung', 5),
	(11, 'Kelas Samsung', 12),
	(12, 'Kelas Samsung', 17),
	(13, 'Bahasa Indonesia', 5),
	(14, 'Bahasa Indonesia', 6),
	(15, 'Bahasa Indonesia', 12),
	(16, 'Bahasa Indonesia', 13),
	(17, 'Bahasa Indonesia', 17),
	(18, 'Bahasa Indonesia', 17),
	(19, 'Dasar Desain Grafis', 5),
	(20, 'Fikih', 20);
/*!40000 ALTER TABLE `mapel` ENABLE KEYS */;

-- Dumping structure for table moka.ortu
DROP TABLE IF EXISTS `ortu`;
CREATE TABLE IF NOT EXISTS `ortu` (
  `id_ortu` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL DEFAULT '0',
  `jk` varchar(50) NOT NULL DEFAULT '0',
  `alamat` varchar(50) NOT NULL DEFAULT '0',
  `ttl` varchar(50) NOT NULL DEFAULT '0',
  `status` varchar(50) NOT NULL DEFAULT '0',
  `no_hp` varchar(50) NOT NULL DEFAULT '0',
  `id_siswa` varchar(10) NOT NULL DEFAULT '0',
  `id_role` int(11) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '0',
  `password` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_ortu`),
  KEY `id-ortu` (`id_ortu`),
  KEY `FK_ortu_role` (`id_role`),
  KEY `FK_ortu_siswa` (`id_siswa`),
  CONSTRAINT `FK_ortu_role` FOREIGN KEY (`id_role`) REFERENCES `role` (`id_role`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_ortu_siswa` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table moka.ortu: ~0 rows (approximately)
DELETE FROM `ortu`;
/*!40000 ALTER TABLE `ortu` DISABLE KEYS */;
/*!40000 ALTER TABLE `ortu` ENABLE KEYS */;

-- Dumping structure for table moka.presensi
DROP TABLE IF EXISTS `presensi`;
CREATE TABLE IF NOT EXISTS `presensi` (
  `id_presensi` int(2) NOT NULL AUTO_INCREMENT,
  `nama_presensi` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_presensi`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table moka.presensi: ~4 rows (approximately)
DELETE FROM `presensi`;
/*!40000 ALTER TABLE `presensi` DISABLE KEYS */;
INSERT INTO `presensi` (`id_presensi`, `nama_presensi`) VALUES
	(1, 'Hadir'),
	(2, 'Izin'),
	(3, 'Sakit'),
	(4, 'Tanpa Keterangan');
/*!40000 ALTER TABLE `presensi` ENABLE KEYS */;

-- Dumping structure for table moka.role
DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `id_role` int(11) NOT NULL AUTO_INCREMENT,
  `nama_role` varchar(50) NOT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table moka.role: ~6 rows (approximately)
DELETE FROM `role`;
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
DROP TABLE IF EXISTS `sekolah`;
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
DELETE FROM `sekolah`;
/*!40000 ALTER TABLE `sekolah` DISABLE KEYS */;
INSERT INTO `sekolah` (`npsn`, `nama_sekolah`, `ks`, `alamat_sekolah`, `tgl_berdiri`, `deskripsi`, `no_telp`, `email`, `website`, `logo`) VALUES
	('69968954', 'SMK BP Subulul Huda', 'Muchtim Humaidi, M.IRKH', 'RT. 08/ RW. 02, Rejosari, Kebonsari, Madiun', '03 September 2017', 'SMK-BP Subulul Huda Kembangsawit merupakan lembaga pendidikan berbasis pesantren yang mengintegrasikan Kurikulum Pendidikan Nasional dengan Nilai-nilai Kepesantrenan serta dilaksanakan comperhensive control di bawah pengawasan Ustadz dan Pengasuh.', '(0351) 366704', 'smkbpsubululhuda@gmail.com', 'www.smkbpsh.sch.id', 'logo-smkbp.png');
/*!40000 ALTER TABLE `sekolah` ENABLE KEYS */;

-- Dumping structure for table moka.semester
DROP TABLE IF EXISTS `semester`;
CREATE TABLE IF NOT EXISTS `semester` (
  `id-semester` int(11) NOT NULL AUTO_INCREMENT,
  `nama-semester` varchar(50) NOT NULL,
  `id-tapel` int(11) NOT NULL,
  KEY `id-semester` (`id-semester`),
  KEY `FK__tapel` (`id-tapel`),
  CONSTRAINT `FK__tapel` FOREIGN KEY (`id-tapel`) REFERENCES `tapel` (`id-tapel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table moka.semester: ~0 rows (approximately)
DELETE FROM `semester`;
/*!40000 ALTER TABLE `semester` DISABLE KEYS */;
/*!40000 ALTER TABLE `semester` ENABLE KEYS */;

-- Dumping structure for table moka.siswa
DROP TABLE IF EXISTS `siswa`;
CREATE TABLE IF NOT EXISTS `siswa` (
  `id_siswa` varchar(10) NOT NULL,
  `nis` varchar(50) NOT NULL DEFAULT '0',
  `nama` varchar(50) NOT NULL DEFAULT '0',
  `jk` varchar(50) NOT NULL DEFAULT '0',
  `alamat` varchar(50) NOT NULL DEFAULT '0',
  `ttl` varchar(50) NOT NULL DEFAULT '0',
  `foto` varchar(50) NOT NULL DEFAULT '0',
  `id_kelas` int(11) NOT NULL DEFAULT '0',
  `id_walas` int(11) NOT NULL DEFAULT '0',
  `id_ortu` int(11) NOT NULL DEFAULT '0',
  `id_role` int(11) NOT NULL DEFAULT '0',
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

-- Dumping data for table moka.siswa: ~0 rows (approximately)
DELETE FROM `siswa`;
/*!40000 ALTER TABLE `siswa` DISABLE KEYS */;
INSERT INTO `siswa` (`id_siswa`, `nis`, `nama`, `jk`, `alamat`, `ttl`, `foto`, `id_kelas`, `id_walas`, `id_ortu`, `id_role`, `username`, `password`) VALUES
	('PD0001', '20230701', 'Ahmad Masykur', 'L', 'Rejosari, Kebonsari, Madiun', '12 Januari 2001', '', 5, 0, 0, 5, 'siswa', '21232f297a57a5a743894a0e4a801fc3');
/*!40000 ALTER TABLE `siswa` ENABLE KEYS */;

-- Dumping structure for table moka.tapel
DROP TABLE IF EXISTS `tapel`;
CREATE TABLE IF NOT EXISTS `tapel` (
  `id-tapel` int(11) NOT NULL AUTO_INCREMENT,
  `nama-tapel` varchar(50) NOT NULL,
  KEY `id-tapel` (`id-tapel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table moka.tapel: ~0 rows (approximately)
DELETE FROM `tapel`;
/*!40000 ALTER TABLE `tapel` DISABLE KEYS */;
/*!40000 ALTER TABLE `tapel` ENABLE KEYS */;

-- Dumping structure for table moka.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(1) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table moka.users: ~5 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id_user`, `username`, `password`, `role`) VALUES
	(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1),
	(2, 'operator', '21232f297a57a5a743894a0e4a801fc3', 2),
	(3, 'guru', '21232f297a57a5a743894a0e4a801fc3', 3),
	(4, 'siswa', '21232f297a57a5a743894a0e4a801fc3', 4),
	(5, 'ortu', '21232f297a57a5a743894a0e4a801fc3', 5),
	(6, 'ks', '21232f297a57a5a743894a0e4a801fc3', 6);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table moka.walas
DROP TABLE IF EXISTS `walas`;
CREATE TABLE IF NOT EXISTS `walas` (
  `id-walas` int(11) NOT NULL AUTO_INCREMENT,
  `nama-walas` varchar(50) NOT NULL,
  PRIMARY KEY (`id-walas`),
  KEY `id-walas` (`id-walas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table moka.walas: ~0 rows (approximately)
DELETE FROM `walas`;
/*!40000 ALTER TABLE `walas` DISABLE KEYS */;
/*!40000 ALTER TABLE `walas` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
