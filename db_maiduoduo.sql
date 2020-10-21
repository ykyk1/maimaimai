/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50540
Source Host           : 127.0.0.1:3306
Source Database       : db_maiduoduo

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2020-10-21 20:53:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for perm
-- ----------------------------
DROP TABLE IF EXISTS `perm`;
CREATE TABLE `perm` (
  `perm_id` int(11) NOT NULL AUTO_INCREMENT,
  `perm_name` varchar(50) DEFAULT NULL,
  `perm_code` varchar(50) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`perm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of perm
-- ----------------------------
INSERT INTO `perm` VALUES ('1', '用户添加', 'user:add', null);
INSERT INTO `perm` VALUES ('2', '用户删除', 'user:delete', null);
INSERT INTO `perm` VALUES ('3', '用户修改', 'user:update', null);
INSERT INTO `perm` VALUES ('4', '用户查询', 'user:select', null);
INSERT INTO `perm` VALUES ('5', '商品添加', 'product:add', null);
INSERT INTO `perm` VALUES ('6', '商品删除', 'product:delete', null);
INSERT INTO `perm` VALUES ('7', '商品修改', 'product:update', null);
INSERT INTO `perm` VALUES ('8', '商品查询', 'product:select', null);
INSERT INTO `perm` VALUES ('9', '浏览主页', 'index:browser', null);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(20) DEFAULT NULL,
  `description` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'admin', '管理员');
INSERT INTO `role` VALUES ('2', 'user', '普通用户');
INSERT INTO `role` VALUES ('3', 'productor', '产品经理');

-- ----------------------------
-- Table structure for role_perm
-- ----------------------------
DROP TABLE IF EXISTS `role_perm`;
CREATE TABLE `role_perm` (
  `role_id` int(11) NOT NULL,
  `perm_id` int(11) NOT NULL,
  PRIMARY KEY (`role_id`,`perm_id`),
  KEY `FK_Reference_4` (`perm_id`),
  CONSTRAINT `FK_Reference_3` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`),
  CONSTRAINT `FK_Reference_4` FOREIGN KEY (`perm_id`) REFERENCES `perm` (`perm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_perm
-- ----------------------------
INSERT INTO `role_perm` VALUES ('1', '1');
INSERT INTO `role_perm` VALUES ('1', '2');
INSERT INTO `role_perm` VALUES ('1', '3');
INSERT INTO `role_perm` VALUES ('1', '4');
INSERT INTO `role_perm` VALUES ('3', '5');
INSERT INTO `role_perm` VALUES ('3', '6');
INSERT INTO `role_perm` VALUES ('3', '7');
INSERT INTO `role_perm` VALUES ('3', '8');
INSERT INTO `role_perm` VALUES ('2', '9');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `salt` varchar(20) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1318891579989159943 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'lb', 'c4d770dad3e6d8a30a52fa446861a028', null, '2509417758@qq.com', 'J7Rcp&gMax', null, '1');
INSERT INTO `user` VALUES ('2', 'zf', '5446685b1551a732d3303b409b367d53', null, '2509417758@qq.com', 'DWJ(k4IL$n', null, '0');
INSERT INTO `user` VALUES ('3', 'gy', 'a30eac68dcbb92ed810543e05cec761f', null, '2509417758@qq.com', ')JET#OBgG$', null, '0');
INSERT INTO `user` VALUES ('1318879546400960514', 'xiaochen', '123', null, null, null, null, null);
INSERT INTO `user` VALUES ('1318891579989159937', 'xiaochen2', '123', null, null, null, null, null);
INSERT INTO `user` VALUES ('1318891579989159938', 'xiaochen3', '123', null, null, null, null, null);
INSERT INTO `user` VALUES ('1318891579989159939', 'xiaochen3', '123', null, null, null, null, null);
INSERT INTO `user` VALUES ('1318891579989159940', 'xiaochen4', '123', null, null, null, null, null);
INSERT INTO `user` VALUES ('1318891579989159941', 'xiaochen4', '123', null, null, null, null, null);
INSERT INTO `user` VALUES ('1318891579989159942', 'xiaochen4', '123', null, null, null, null, null);

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `user_id` bigint(20) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FK_Reference_2` (`role_id`),
  CONSTRAINT `FK_Reference_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FK_Reference_2` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('2', '1');
INSERT INTO `user_role` VALUES ('1', '2');
INSERT INTO `user_role` VALUES ('3', '3');
