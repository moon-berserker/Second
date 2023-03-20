/*
 Navicat Premium Data Transfer

 Source Server         : 1
 Source Server Type    : MySQL
 Source Server Version : 80031 (8.0.31)
 Source Host           : localhost:3306
 Source Schema         : jw

 Target Server Type    : MySQL
 Target Server Version : 80031 (8.0.31)
 File Encoding         : 65001

 Date: 19/03/2023 09:26:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for time
-- ----------------------------
DROP TABLE IF EXISTS `time`;
CREATE TABLE `time`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of time
-- ----------------------------
INSERT INTO `time` VALUES (1, '08:00-09:35 Mon');
INSERT INTO `time` VALUES (2, '09:50-12:15 Mon');
INSERT INTO `time` VALUES (3, '14:00-15:35 Mon');
INSERT INTO `time` VALUES (4, '15:50-18:15 Mon');
INSERT INTO `time` VALUES (5, '08:00-09:35 Tue');
INSERT INTO `time` VALUES (6, '09:50-12:15 Tue');
INSERT INTO `time` VALUES (7, '14:00-15:35 Tue');
INSERT INTO `time` VALUES (8, '15:50-18:15 Tue');
INSERT INTO `time` VALUES (9, '08:00-09:35 Wes');
INSERT INTO `time` VALUES (10, '09:50-12:15 Wes');
INSERT INTO `time` VALUES (11, '14:00-15:35 Wes');
INSERT INTO `time` VALUES (12, '15:50-18:15 Wes');
INSERT INTO `time` VALUES (13, '08:00-09:35 Thu');
INSERT INTO `time` VALUES (14, '09:50-12:15 Thu');
INSERT INTO `time` VALUES (15, '14:00-15:35 Thu');
INSERT INTO `time` VALUES (16, '15:50-18:15 Thu');
INSERT INTO `time` VALUES (17, '08:00-09:35 Fri');
INSERT INTO `time` VALUES (18, '09:50-12:15 Fri');
INSERT INTO `time` VALUES (19, '14:00-15:35 Fri');
INSERT INTO `time` VALUES (20, '15:50-18:15 Fri');

SET FOREIGN_KEY_CHECKS = 1;
