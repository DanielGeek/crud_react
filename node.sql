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

 Date: 10/08/2020 10:11:50
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
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employees
-- ----------------------------
INSERT INTO `employees` VALUES (1, 'Johanna Mar', 'johanna@mail.com', 'Malibu Cr 10 No 54', 123456789, 3, '2020-08-03 22:04:19', '2020-08-10 14:06:55');
INSERT INTO `employees` VALUES (2, 'Ruth Angel', 'ruth@mail.com', 'Malibu Cr 10 No 54', 123456789, 2, '2020-08-03 22:04:22', '2020-08-10 14:09:51');
INSERT INTO `employees` VALUES (3, 'Ezequiel Angel', 'ezequiel@mail.com', 'Malibu Cr 10 No 54', 123456789, 4, '2020-08-03 22:04:23', '2020-08-10 14:10:30');
INSERT INTO `employees` VALUES (4, 'Jessica Baettig', 'jessica@mail.com', 'Malibu Cr 10 No 54', 123456789, 1, '2020-08-03 22:04:24', '2020-08-03 22:04:24');
INSERT INTO `employees` VALUES (5, 'Daniel', 'daniel@email.com', 'ricardo neumann', 936292818, 1, '2020-08-04 14:11:14', '2020-08-04 14:11:14');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createdAt` datetime(0) NOT NULL,
  `updatedAt` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'Admin', '2020-08-03 22:04:19', '2020-08-03 22:04:19');
INSERT INTO `roles` VALUES (2, 'Project Manager', '2020-08-03 22:04:22', '2020-08-03 22:04:22');
INSERT INTO `roles` VALUES (3, 'Programer Junior', '2020-08-03 22:04:23', '2020-08-03 22:04:23');
INSERT INTO `roles` VALUES (4, 'Programer Senior', '2020-08-03 22:04:24', '2020-08-03 22:04:24');

SET FOREIGN_KEY_CHECKS = 1;
