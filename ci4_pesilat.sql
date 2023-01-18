/*
SQLyog Professional v12.5.1 (64 bit)
MySQL - 10.4.27-MariaDB : Database - ci4_pesilat
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ci4_pesilat` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `ci4_pesilat`;

/*Table structure for table `files` */

DROP TABLE IF EXISTS `files`;

CREATE TABLE `files` (
  `id_files` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nama_files` varchar(255) DEFAULT NULL,
  `jenis_files` varchar(50) DEFAULT NULL,
  `keterangan_files` varchar(255) DEFAULT NULL,
  `files_upload` varchar(255) DEFAULT NULL,
  `tgl_input` date DEFAULT NULL,
  PRIMARY KEY (`id_files`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `files` */

/*Table structure for table `kategoritanding` */

DROP TABLE IF EXISTS `kategoritanding`;

CREATE TABLE `kategoritanding` (
  `id_kategoritanding` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nama_kategoritanding` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id_kategoritanding`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `kategoritanding` */

/*Table structure for table `kelastanding` */

DROP TABLE IF EXISTS `kelastanding`;

CREATE TABLE `kelastanding` (
  `id_kelastanding` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kelastanding` varchar(21) NOT NULL,
  PRIMARY KEY (`id_kelastanding`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `kelastanding` */

insert  into `kelastanding`(`id_kelastanding`,`nama_kelastanding`) values 
(1,'KELAS A'),
(2,'KELAS B'),
(3,'KELAS C'),
(4,'KELAS D'),
(5,'KELAS E'),
(6,'KELAS F'),
(7,'KELAS G'),
(8,'KELAS H'),
(9,'KELAS I'),
(10,'KELAS J');

/*Table structure for table `kontingen` */

DROP TABLE IF EXISTS `kontingen`;

CREATE TABLE `kontingen` (
  `id_kontingen` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asal_kontingen` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_kontingen`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `kontingen` */

insert  into `kontingen`(`id_kontingen`,`asal_kontingen`) values 
(1,'Bandar Lampung'),
(2,'Peswaran'),
(3,'Pringsewu'),
(4,'Tanggamus'),
(5,'Lampung Barat'),
(6,'Lampung Tengah');

/*Table structure for table `official` */

DROP TABLE IF EXISTS `official`;

CREATE TABLE `official` (
  `id_official` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nama_official` varchar(25) DEFAULT NULL,
  `jk_official` char(2) DEFAULT NULL,
  `tempat_lahir` varchar(200) DEFAULT NULL,
  `tgl_lahir_official` date DEFAULT NULL,
  `alamat_official` text DEFAULT NULL,
  `kontingen` varchar(255) DEFAULT NULL,
  `kota` varchar(255) DEFAULT NULL,
  `provinsi` varchar(255) DEFAULT NULL,
  `nohp_official` varchar(14) DEFAULT NULL,
  `email_official` varchar(50) DEFAULT NULL,
  `tgl_input_official` date DEFAULT NULL,
  PRIMARY KEY (`id_official`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `official` */

insert  into `official`(`id_official`,`nama_official`,`jk_official`,`tempat_lahir`,`tgl_lahir_official`,`alamat_official`,`kontingen`,`kota`,`provinsi`,`nohp_official`,`email_official`,`tgl_input_official`) values 
(1,'agus Sulistiono','L','Sidodadi','2022-07-11','jl sidodadi tanggamus','1','Tanggamus','Lampung','082311231','agussulistionoe0@gmail.com','2023-01-18'),
(2,'andi prab','L','Sukabmi','2022-09-15','Jl pangeran antasari sukabumi',NULL,'Bandar Lampung','Lampung','08234234234','andi@gmail.com','2023-01-18');

/*Table structure for table `peserta` */

DROP TABLE IF EXISTS `peserta`;

CREATE TABLE `peserta` (
  `id_peserta` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nomor_peserta` varchar(50) DEFAULT NULL,
  `nama_peserta` varchar(255) DEFAULT NULL,
  `tempat_lahir` varchar(200) DEFAULT NULL,
  `tgl_lahir_peserta` date DEFAULT NULL,
  `jk_peserta` char(2) DEFAULT NULL,
  `agama` varchar(50) DEFAULT NULL,
  `tb_peserta` float DEFAULT NULL,
  `bb_peserta` float DEFAULT NULL,
  `asal_sekolah` varchar(255) DEFAULT NULL,
  `id_kelastanding` int(11) DEFAULT NULL,
  `id_kategoritanding` int(11) DEFAULT NULL,
  `id_kontingen` int(11) DEFAULT NULL,
  `id_files` int(11) DEFAULT NULL,
  `tgl_input` date DEFAULT NULL,
  PRIMARY KEY (`id_peserta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `peserta` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id_user` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `id_official` int(11) DEFAULT NULL,
  `id_peserta` int(11) DEFAULT NULL,
  `tgl_input_user` date DEFAULT NULL,
  `tgl_update` date DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `users` */

insert  into `users`(`id_user`,`username`,`password`,`level`,`id_official`,`id_peserta`,`tgl_input_user`,`tgl_update`) values 
(1,'admin','admin','administra',0,NULL,'2023-01-18',NULL),
(2,'agus','agus','Official',1,NULL,'2023-01-18',NULL),
(3,'andi','andi','Official',2,NULL,'2023-01-18',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
