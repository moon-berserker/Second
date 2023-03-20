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

 Date: 19/03/2023 09:27:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for venue_state
-- ----------------------------
DROP TABLE IF EXISTS `venue_state`;
CREATE TABLE `venue_state`  (
  `state_id` int NOT NULL AUTO_INCREMENT,
  `venueid` int NOT NULL,
  `timeid` int NOT NULL,
  `useid` int NULL DEFAULT NULL,
  `state` int NOT NULL,
  PRIMARY KEY (`state_id`) USING BTREE,
  INDEX `venueid_s`(`venueid` ASC) USING BTREE,
  INDEX `timeid_s`(`timeid` ASC) USING BTREE,
  INDEX `useid`(`useid` ASC) USING BTREE,
  CONSTRAINT `timeid_s` FOREIGN KEY (`timeid`) REFERENCES `time` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `useid` FOREIGN KEY (`useid`) REFERENCES `user` (`userid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `venueid_s` FOREIGN KEY (`venueid`) REFERENCES `venue` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of venue_state
-- ----------------------------
INSERT INTO `venue_state` VALUES (1, 1, 8, 1, 0);
INSERT INTO `venue_state` VALUES (2, 2, 3, NULL, 1);
INSERT INTO `venue_state` VALUES (3, 3, 2, NULL, 1);
INSERT INTO `venue_state` VALUES (4, 2, 6, NULL, 1);

SET FOREIGN_KEY_CHECKS = 1;
