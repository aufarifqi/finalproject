/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 10.4.24-MariaDB : Database - fp_shift
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`fp_shift` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `fp_shift`;

/*Table structure for table `joins` */

DROP TABLE IF EXISTS `joins`;

CREATE TABLE `joins` (
  `id_joins` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `id_kelas` int(6) DEFAULT NULL,
  `id_user` int(6) DEFAULT NULL,
  `id_materi` int(6) DEFAULT NULL,
  `id_sesi` int(6) DEFAULT NULL,
  `role` enum('Student','Tutor','Fasilitator') DEFAULT NULL,
  PRIMARY KEY (`id_joins`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `joins` */

/*Table structure for table `kelas` */

DROP TABLE IF EXISTS `kelas`;

CREATE TABLE `kelas` (
  `id_kelas` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `nama_kelas` varchar(25) NOT NULL,
  `tanggal_mulai` date DEFAULT NULL,
  `tanggal_selesai` date DEFAULT NULL,
  `deskripsi_kelas` varchar(50) DEFAULT NULL,
  `foto_kelas` blob DEFAULT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id_kelas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `kelas` */

/*Table structure for table `materi` */

DROP TABLE IF EXISTS `materi`;

CREATE TABLE `materi` (
  `id_materi` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `nama_materi` varchar(25) NOT NULL,
  `file_materi` blob DEFAULT NULL,
  `jenis_materi` enum('materi','recording') DEFAULT NULL,
  `id_sesi` int(6) NOT NULL,
  PRIMARY KEY (`id_materi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `materi` */

/*Table structure for table `sesi` */

DROP TABLE IF EXISTS `sesi`;

CREATE TABLE `sesi` (
  `id_sesi` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `id_kelas` int(6) NOT NULL,
  `nama_sesi` varchar(25) DEFAULT NULL,
  `waktu_mulai` datetime DEFAULT NULL,
  `waktu_selesai` datetime DEFAULT NULL,
  `urutan_sesi` int(11) NOT NULL,
  PRIMARY KEY (`id_sesi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `sesi` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `status` enum('admin','student','tutor','fasilitator') DEFAULT NULL,
  `nama_lengkap` varchar(250) NOT NULL,
  `foto` blob DEFAULT NULL,
  `alamat` varchar(250) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `phone` int(15) DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(25) NOT NULL,
  `pendidikan_terakhir` varchar(25) DEFAULT NULL,
  `institusi` varchar(25) DEFAULT NULL,
  `pekerjaan` varchar(25) DEFAULT NULL,
  `instagram` varchar(30) DEFAULT NULL,
  `twitter` varchar(30) DEFAULT NULL,
  `linkedin` varchar(30) DEFAULT NULL,
  `facebook` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `user` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
