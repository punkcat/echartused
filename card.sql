/*
Navicat MySQL Data Transfer

Source Server         : account
Source Server Version : 50709
Source Host           : localhost:3306
Source Database       : card

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2016-06-13 14:05:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `abc`
-- ----------------------------
DROP TABLE IF EXISTS `abc`;
CREATE TABLE `abc` (
  `id` int(11) NOT NULL,
  `first` varchar(255) DEFAULT NULL,
  `last` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of abc
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `username` varchar(255) NOT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('', '');
INSERT INTO `user` VALUES ('123456789', '123456');
INSERT INTO `user` VALUES ('2013212275', '260017');

-- ----------------------------
-- Table structure for `usercard`
-- ----------------------------
DROP TABLE IF EXISTS `usercard`;
CREATE TABLE `usercard` (
  `username` varchar(255) NOT NULL,
  `tamp` int(255) NOT NULL,
  `balance` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `operate` varchar(255) NOT NULL,
  PRIMARY KEY (`tamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usercard
-- ----------------------------
INSERT INTO `usercard` VALUES ('2013212275', '1', '500', 'Mon Jun 06 13:59:59 CST 2016', '+500');
INSERT INTO `usercard` VALUES ('2013212275', '2', '1500', 'Mon Jun 06 14:00:04 CST 2016', '+1000');
INSERT INTO `usercard` VALUES ('2013212275', '3', '1000', 'Mon Jun 06 14:00:08 CST 2016', '-500');
INSERT INTO `usercard` VALUES ('2013212275', '4', '100', 'Mon Jun 06 14:00:12 CST 2016', '-900');
INSERT INTO `usercard` VALUES ('2013212275', '5', '0', 'Mon Jun 06 14:00:16 CST 2016', '-100');
INSERT INTO `usercard` VALUES ('2013212275', '6', '900', 'Mon Jun 06 14:00:21 CST 2016', '+900');
INSERT INTO `usercard` VALUES ('2013212275', '7', '10900', 'Mon Jun 06 14:00:27 CST 2016', '+10000');
INSERT INTO `usercard` VALUES ('2013212275', '8', '10650', 'Mon Jun 06 14:00:35 CST 2016', '-250');
INSERT INTO `usercard` VALUES ('2013212275', '9', '9950', 'Mon Jun 06 14:00:40 CST 2016', '-700');
INSERT INTO `usercard` VALUES ('2013212275', '10', '2950', 'Thu Jun 09 00:47:39 CST 2016', '-7000');
INSERT INTO `usercard` VALUES ('2013212275', '11', '950', 'Mon Jun 13 13:26:10 CST 2016', '-2000');
INSERT INTO `usercard` VALUES ('2013212275', '12', '50', 'Mon Jun 13 13:27:32 CST 2016', '-900');

-- ----------------------------
-- Table structure for `userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `username` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `college` varchar(255) DEFAULT NULL,
  `prof` varchar(255) DEFAULT NULL,
  `enrollyear` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('2013212275', '张勇劼', '男', '国服', '软工', '2013');
