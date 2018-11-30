/*
Navicat MySQL Data Transfer

Source Server         : mysq on localhost
Source Server Version : 50611
Source Host           : localhost:3306
Source Database       : bukutamu

Target Server Type    : MYSQL
Target Server Version : 50611
File Encoding         : 65001

Date: 2018-11-30 10:08:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bukutamu
-- ----------------------------
DROP TABLE IF EXISTS `bukutamu`;
CREATE TABLE `bukutamu` (
  `bukutamu_id` int(11) NOT NULL AUTO_INCREMENT,
  `bukutamu_idkegiatan` int(11) DEFAULT NULL,
  `bukutamu_nama` varchar(255) DEFAULT NULL,
  `bukutamu_email` varchar(50) DEFAULT NULL,
  `bukutamu_notlp` varchar(15) DEFAULT NULL,
  `bukutamu_alamat` text,
  `bukutamu_instansi` text,
  `bukutamu_date` date DEFAULT NULL,
  PRIMARY KEY (`bukutamu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of bukutamu
-- ----------------------------
INSERT INTO `bukutamu` VALUES ('1', '77', 'duwi', 'haryanto.duwi@gmail.com', '085725818424', 'pedak wijirejo pandak bantul', 'SMA N 1 Bantul', '2018-11-30');
INSERT INTO `bukutamu` VALUES ('3', '81', 'bayu', 'bayu@gmail.com', '085725818424', 'bantul', 'bantul', '2018-11-30');
INSERT INTO `bukutamu` VALUES ('4', '77', 'bayu', 'bayu@gmail.com', '085725818424', 'bantul', 'bantul', '2018-11-30');
INSERT INTO `bukutamu` VALUES ('5', '77', 'vera', 'vera@gmail.com', '085725818424', 'bantul', 'bantul', '2018-11-30');

-- ----------------------------
-- Table structure for kegiatan
-- ----------------------------
DROP TABLE IF EXISTS `kegiatan`;
CREATE TABLE `kegiatan` (
  `kegiatan_id` int(255) NOT NULL AUTO_INCREMENT,
  `kegiatan_nama` text,
  `kegiatan_keterangan` text,
  `kegiatan_date` date DEFAULT NULL,
  `kegiatan_file` text,
  `kegiatan_aktif` bit(1) DEFAULT NULL,
  PRIMARY KEY (`kegiatan_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of kegiatan
-- ----------------------------
INSERT INTO `kegiatan` VALUES ('77', 'Pameran/Roadshow', 'Pameran di SMA N 1 Bantul', '2018-11-30', null, '');
INSERT INTO `kegiatan` VALUES ('78', 'Pameran/Roadshow', 'Roadshow di SMA N 3 bantul', '2018-11-30', '8a29bd0fe8520378a3238de644f2d8f7.pdf', '\0');
INSERT INTO `kegiatan` VALUES ('81', 'Pameran/Roadshow', 'Roadshow di SMA 2 N bantul', '2018-12-01', null, '\0');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_nama` varchar(255) DEFAULT NULL,
  `menu_ikon` varchar(255) DEFAULT NULL,
  `menu_is_mainmenu` varchar(5) DEFAULT NULL,
  `menu_link` varchar(255) DEFAULT NULL,
  `menu_akses_level` varchar(2) DEFAULT NULL,
  `menu_urutan` varchar(2) DEFAULT NULL,
  `menu_status` varchar(1) DEFAULT NULL,
  `menu_akses` int(2) DEFAULT NULL,
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', 'master', 'fa fa-tasks', '0', 'master/admin', '1', '1', '1', '0');
INSERT INTO `menu` VALUES ('2', 'barang', 'fa fa-circle-o', '1', 'barang/admin', '1', '1', '1', '0');
INSERT INTO `menu` VALUES ('4', 'home', 'fa fa-tasks', '0', 'frontend/home', '0', '1', '0', '0');
INSERT INTO `menu` VALUES ('5', 'download', 'fa fa-download', '0', 'frontend/download', '0', '3', '0', '0');
INSERT INTO `menu` VALUES ('6', 'kegiatan', 'fa fa-tasks', '0', 'frontend/kegiatan', '0', '2', '0', '0');
INSERT INTO `menu` VALUES ('7', 'kegiatan', 'fa  fa-calendar-check-o ', '0', 'kegiatan/admin', '1', '1', '1', '1');
INSERT INTO `menu` VALUES ('8', 'bukutamu', 'fa fa-book', '0', 'bukutamu/admin', '1', '1', '1', '1');
INSERT INTO `menu` VALUES ('9', 'user', 'fa fa-user', '0', 'user/admin', '1', '1', '1', '1');
INSERT INTO `menu` VALUES ('10', 'bukutamu', 'fa fa-book', '0', 'frontend/bukutamu', '0', '1', '1', '0');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_username` varchar(255) DEFAULT NULL,
  `user_password` text,
  `user_nama` varchar(255) DEFAULT NULL,
  `user_level` varchar(2) DEFAULT NULL,
  `user_terdaftar` date DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', 'admina', '1', '2018-09-29');
INSERT INTO `user` VALUES ('3', 'haryanto', 'haryanto', 'haryanto duwi', '2', '2018-10-21');
INSERT INTO `user` VALUES ('4', 'duwi', 'duwi', 'duwi', '1', '2018-11-30');
