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

 Date: 19/03/2023 09:26:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for course_state
-- ----------------------------
DROP TABLE IF EXISTS `course_state`;
CREATE TABLE `course_state`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `userid` int NULL DEFAULT NULL,
  `courseid` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `userid`(`userid` ASC) USING BTREE,
  INDEX `courseid`(`courseid` ASC) USING BTREE,
  CONSTRAINT `courseid` FOREIGN KEY (`courseid`) REFERENCES `course` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `userid` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course_state
-- ----------------------------
INSERT INTO `course_state` VALUES (1, 1, 1);
INSERT INTO `course_state` VALUES (2, 3, 2);
INSERT INTO `course_state` VALUES (3, 14, 3);
INSERT INTO `course_state` VALUES (4, 13, 1);

SET FOREIGN_KEY_CHECKS = 1;
