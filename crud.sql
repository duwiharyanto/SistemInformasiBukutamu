/*
 Navicat Premium Data Transfer

 Source Server         : PHPMYADMIN
 Source Server Type    : MySQL
 Source Server Version : 100131
 Source Host           : localhost:3306
 Source Schema         : bukutamu

 Target Server Type    : MySQL
 Target Server Version : 100131
 File Encoding         : 65001

 Date: 25/11/2018 08:33:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for barang
-- ----------------------------
DROP TABLE IF EXISTS `barang`;
CREATE TABLE `barang`  (
  `barang_id` int(11) NOT NULL,
  `barang_nama` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `barang_tgl_pembelian` date NULL DEFAULT NULL,
  `barang_keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`barang_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for kegiatan
-- ----------------------------
DROP TABLE IF EXISTS `kegiatan`;
CREATE TABLE `kegiatan`  (
  `kegiatan_id` int(255) NOT NULL AUTO_INCREMENT,
  `kegiatan_nama` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `kegiatan_keterangan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `kegiatan_date` date NULL DEFAULT NULL,
  `kegiatan_file` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`kegiatan_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 77 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kegiatan
-- ----------------------------
INSERT INTO `kegiatan` VALUES (61, 'adwd', 'teloo', '2018-11-24', 'cf025eb64962066f05f249398d1886dd.pdf');
INSERT INTO `kegiatan` VALUES (73, 'hhh', 'hhh', '2018-11-24', NULL);
INSERT INTO `kegiatan` VALUES (74, 'heloo', 'hello', '2018-11-25', '3198a2947b6e1e8433ff5c584bb05c22.pdf');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `menu_ikon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `menu_is_mainmenu` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `menu_link` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `menu_akses_level` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `menu_urutan` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `menu_status` varchar(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, 'master', 'fa fa-tasks', '0', 'master/admin', '1', '1', '1');
INSERT INTO `menu` VALUES (2, 'barang', 'fa fa-circle-o', '1', 'barang/admin', '1', '1', '1');
INSERT INTO `menu` VALUES (4, 'home', 'fa fa-tasks', '0', 'frontend/home', '0', '1', '1');
INSERT INTO `menu` VALUES (5, 'download', 'fa fa-download', '0', 'frontend/download', '0', '3', '1');
INSERT INTO `menu` VALUES (6, 'kegiatan', 'fa fa-tasks', '0', 'frontend/kegiatan', '0', '2', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_username` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `user_password` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `user_nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `user_level` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `user_terdaftar` date NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', 'admin', 'admina', '1', '2018-09-29');
INSERT INTO `user` VALUES (3, 'haryanto', 'haryanto', 'haryanto duwi', '2', '2018-10-21');

SET FOREIGN_KEY_CHECKS = 1;
