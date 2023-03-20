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

 Date: 19/03/2023 09:26:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `tid` int NOT NULL,
  `course_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `course_time` int NOT NULL,
  `venueid` int NOT NULL,
  `maximum_number` int NOT NULL,
  `current_number` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `venueid`(`venueid` ASC) USING BTREE,
  INDEX `course_time`(`course_time` ASC) USING BTREE,
  CONSTRAINT `course_time` FOREIGN KEY (`course_time`) REFERENCES `time` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `venueid` FOREIGN KEY (`venueid`) REFERENCES `venue` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES (1, 33, 'Badminton', 1, 1, 50, 2);
INSERT INTO `course` VALUES (2, 56, 'サッカー', 1, 2, 20, 1);
INSERT INTO `course` VALUES (3, 57, 'バスケットボール', 4, 3, 20, 1);

SET FOREIGN_KEY_CHECKS = 1;
