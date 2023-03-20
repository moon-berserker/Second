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

 Date: 19/03/2023 09:26:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `userid` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `telephone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `identity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`userid`) USING BTREE,
  UNIQUE INDEX `telephone`(`telephone` ASC) USING BTREE,
  UNIQUE INDEX `username`(`username` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 58 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'fxy', 'fxy5774', '18380438675', 'student');
INSERT INTO `user` VALUES (3, 'wy', '123456', '13842867505', 'student');
INSERT INTO `user` VALUES (13, 'carrie_orlando', '111111', '14478785564', 'student');
INSERT INTO `user` VALUES (14, 'carrie', '111111', '12345678910', 'student');
INSERT INTO `user` VALUES (33, 'mzxtx', 'mzxtx', '18380438577', 'teacher');
INSERT INTO `user` VALUES (56, 'Wang', 'wang', '13548967537', 'teacher');
INSERT INTO `user` VALUES (57, 'Zhao', 'zhao', '18647502395', 'teacher');

SET FOREIGN_KEY_CHECKS = 1;
