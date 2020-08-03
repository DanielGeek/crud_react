/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 100410
 Source Host           : localhost:3306
 Source Schema         : node

 Target Server Type    : MySQL
 Target Server Version : 100410
 File Encoding         : 65001

 Date: 03/08/2020 16:55:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for employees
-- ----------------------------
DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` bigint(20) NULL DEFAULT NULL,
  `roleId` int(11) NULL DEFAULT NULL,
  `createdAt` datetime(0) NOT NULL,
  `updatedAt` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `roleId`(`roleId`) USING BTREE,
  CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employees
-- ----------------------------
INSERT INTO `employees` VALUES (1, 'Johanna Mar', 'johanna@mail.com', 'Malibu Cr 10 No 54', 123456789, 1, '2020-08-03 20:49:58', '2020-08-03 20:49:58');
INSERT INTO `employees` VALUES (2, 'Ruth Angel', 'ruth@mail.com', 'Malibu Cr 10 No 54', 123456789, 1, '2020-08-03 20:51:05', '2020-08-03 20:51:05');
INSERT INTO `employees` VALUES (3, 'Ezequiel Angel', 'ezequiel@mail.com', 'Malibu Cr 10 No 54', 123456789, 1, '2020-08-03 20:51:05', '2020-08-03 20:51:05');
INSERT INTO `employees` VALUES (4, 'Jessica Baettig', 'jessica@mail.com', 'Malibu Cr 10 No 54', 123456789, 1, '2020-08-03 20:51:06', '2020-08-03 20:51:06');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'Admin');

SET FOREIGN_KEY_CHECKS = 1;
