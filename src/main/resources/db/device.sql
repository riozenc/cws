/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : cws

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-05-02 09:48:00
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `device_1`
-- ----------------------------
DROP TABLE IF EXISTS `device_1`;
CREATE TABLE `device_1` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DEVICE_ID` text,
  `HUMIDITY` float DEFAULT NULL,
  `STYLE` int(11) DEFAULT NULL,
  `DATE` text,
  `TEMPERATURE` float DEFAULT NULL,
  `VERIFY_REPORT_ID` text,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of device_1
-- ----------------------------
INSERT INTO device_1 VALUES ('1', '1', '27', '3', '2017-04-24 14:25:41', '20', null);
INSERT INTO device_1 VALUES ('2', '1', '22', '2', '2017-04-24 17:42:19', '21', null);
INSERT INTO device_1 VALUES ('3', '1', '26', '1', '2017-04-24 10:6:17', '25', null);
INSERT INTO device_1 VALUES ('4', '1', '21', '3', '2017-04-24 11:26:50', '26', null);
INSERT INTO device_1 VALUES ('5', '1', '28', '1', '2017-04-24 15:52:54', '23', null);
INSERT INTO device_1 VALUES ('6', '1', '22', '3', '2017-04-24 5:43:30', '20', null);
INSERT INTO device_1 VALUES ('7', '1', '21', '2', '2017-04-24 17:2:7', '21', null);
INSERT INTO device_1 VALUES ('8', '1', '24', '3', '2017-04-24 2:8:35', '25', null);
INSERT INTO device_1 VALUES ('9', '1', '24', '1', '2017-04-24 20:16:50', '22', null);
INSERT INTO device_1 VALUES ('10', '1', '23', '1', '2017-04-24 11:57:54', '23', null);
INSERT INTO device_1 VALUES ('11', '1', '22', '3', '2017-04-24 22:58:19', '20', null);
INSERT INTO device_1 VALUES ('12', '1', '20', '1', '2017-04-24 10:58:58', '20', null);
INSERT INTO device_1 VALUES ('13', '1', '20', '3', '2017-04-24 21:55:36', '23', null);
INSERT INTO device_1 VALUES ('14', '1', '28', '1', '2017-04-24 22:3:21', '27', null);
INSERT INTO device_1 VALUES ('15', '1', '27', '2', '2017-04-24 1:39:20', '22', null);
INSERT INTO device_1 VALUES ('16', '1', '24', '2', '2017-04-24 16:30:32', '20', null);
INSERT INTO device_1 VALUES ('17', '1', '21', '3', '2017-04-24 12:21:27', '23', null);
INSERT INTO device_1 VALUES ('18', '1', '22', '2', '2017-04-24 16:27:35', '23', null);
INSERT INTO device_1 VALUES ('19', '1', '23', '2', '2017-04-24 19:13:56', '21', null);
INSERT INTO device_1 VALUES ('20', '1', '20', '3', '2017-04-24 16:16:21', '25', null);
INSERT INTO device_1 VALUES ('21', '1', '25', '3', '2017-04-24 2:34:57', '21', null);
INSERT INTO device_1 VALUES ('22', '1', '28', '2', '2017-04-24 3:44:40', '23', null);
INSERT INTO device_1 VALUES ('23', '1', '27', '3', '2017-04-24 9:19:17', '27', null);
INSERT INTO device_1 VALUES ('24', '1', '22', '1', '2017-04-24 7:47:36', '23', null);
INSERT INTO device_1 VALUES ('25', '1', '25', '1', '2017-04-24 3:28:50', '24', null);
INSERT INTO device_1 VALUES ('26', '1', '27', '1', '2017-04-24 6:41:26', '24', null);
INSERT INTO device_1 VALUES ('27', '1', '27', '3', '2017-04-24 18:13:18', '28', null);
INSERT INTO device_1 VALUES ('28', '1', '27', '1', '2017-04-24 11:4:35', '26', null);
INSERT INTO device_1 VALUES ('29', '1', '26', '3', '2017-04-24 14:53:50', '24', null);
INSERT INTO device_1 VALUES ('30', '1', '23', '3', '2017-04-24 7:38:30', '28', null);
INSERT INTO device_1 VALUES ('31', '1', '20', '1', '2017-04-24 16:35:14', '26', null);
INSERT INTO device_1 VALUES ('32', '1', '25', '1', '2017-04-24 9:24:42', '23', null);
INSERT INTO device_1 VALUES ('33', '1', '22', '3', '2017-04-24 3:1:56', '20', null);
INSERT INTO device_1 VALUES ('34', '1', '20', '1', '2017-04-24 13:41:24', '25', null);
INSERT INTO device_1 VALUES ('35', '1', '27', '2', '2017-04-24 2:27:22', '23', null);
INSERT INTO device_1 VALUES ('36', '1', '22', '2', '2017-04-24 4:21:10', '24', null);
INSERT INTO device_1 VALUES ('37', '1', '24', '2', '2017-04-24 4:10:57', '27', null);
INSERT INTO device_1 VALUES ('38', '1', '28', '1', '2017-04-24 6:48:24', '24', null);
INSERT INTO device_1 VALUES ('39', '1', '20', '3', '2017-04-24 4:41:51', '23', null);
INSERT INTO device_1 VALUES ('40', '1', '26', '2', '2017-04-24 1:2:20', '21', null);
INSERT INTO device_1 VALUES ('41', '1', '23', '3', '2017-04-24 15:18:42', '23', null);
INSERT INTO device_1 VALUES ('42', '1', '25', '1', '2017-04-24 20:50:30', '24', null);
INSERT INTO device_1 VALUES ('43', '1', '20', '3', '2017-04-24 2:59:19', '22', null);
INSERT INTO device_1 VALUES ('44', '1', '25', '3', '2017-04-24 17:24:53', '21', null);
INSERT INTO device_1 VALUES ('45', '1', '23', '3', '2017-04-24 7:25:8', '22', null);

-- ----------------------------
-- Table structure for `device_10`
-- ----------------------------
DROP TABLE IF EXISTS `device_10`;
CREATE TABLE `device_10` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DEVICE_ID` text,
  `HUMIDITY` float DEFAULT NULL,
  `STYLE` int(11) DEFAULT NULL,
  `DATE` text,
  `TEMPERATURE` float DEFAULT NULL,
  `VERIFY_REPORT_ID` text,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of device_10
-- ----------------------------
INSERT INTO device_10 VALUES ('1', '10', '21', '1', '2017-04-24 4:39:59', '28', null);
INSERT INTO device_10 VALUES ('2', '10', '22', '1', '2017-04-24 6:23:9', '27', null);
INSERT INTO device_10 VALUES ('3', '10', '25', '1', '2017-04-24 12:24:22', '22', null);
INSERT INTO device_10 VALUES ('4', '10', '24', '2', '2017-04-24 3:52:2', '26', null);
INSERT INTO device_10 VALUES ('5', '10', '20', '3', '2017-04-24 7:2:39', '28', null);
INSERT INTO device_10 VALUES ('6', '10', '24', '3', '2017-04-24 2:37:48', '22', null);
INSERT INTO device_10 VALUES ('7', '10', '20', '1', '2017-04-24 6:8:33', '28', null);
INSERT INTO device_10 VALUES ('8', '10', '24', '3', '2017-04-24 11:15:7', '24', null);
INSERT INTO device_10 VALUES ('9', '10', '24', '3', '2017-04-24 17:58:53', '23', null);
INSERT INTO device_10 VALUES ('10', '10', '23', '3', '2017-04-24 11:38:47', '23', null);
INSERT INTO device_10 VALUES ('11', '10', '28', '3', '2017-04-24 12:12:51', '27', null);
INSERT INTO device_10 VALUES ('12', '10', '20', '2', '2017-04-24 5:31:30', '23', null);
INSERT INTO device_10 VALUES ('13', '10', '23', '1', '2017-04-24 23:6:21', '24', null);
INSERT INTO device_10 VALUES ('14', '10', '21', '3', '2017-04-24 17:54:35', '22', null);
INSERT INTO device_10 VALUES ('15', '10', '28', '3', '2017-04-24 18:19:11', '21', null);
INSERT INTO device_10 VALUES ('16', '10', '22', '1', '2017-04-24 10:1:36', '21', null);
INSERT INTO device_10 VALUES ('17', '10', '27', '3', '2017-04-24 15:4:4', '20', null);
INSERT INTO device_10 VALUES ('18', '10', '23', '2', '2017-04-24 5:59:56', '22', null);
INSERT INTO device_10 VALUES ('19', '10', '26', '2', '2017-04-24 18:4:42', '21', null);
INSERT INTO device_10 VALUES ('20', '10', '25', '2', '2017-04-24 19:23:33', '20', null);
INSERT INTO device_10 VALUES ('21', '10', '20', '1', '2017-04-24 8:8:40', '21', null);
INSERT INTO device_10 VALUES ('22', '10', '21', '3', '2017-04-24 12:23:11', '23', null);
INSERT INTO device_10 VALUES ('23', '10', '25', '3', '2017-04-24 2:8:13', '28', null);
INSERT INTO device_10 VALUES ('24', '10', '23', '3', '2017-04-24 3:27:10', '23', null);
INSERT INTO device_10 VALUES ('25', '10', '22', '3', '2017-04-24 14:46:33', '28', null);
INSERT INTO device_10 VALUES ('26', '10', '24', '1', '2017-04-24 20:48:57', '27', null);
INSERT INTO device_10 VALUES ('27', '10', '22', '3', '2017-04-24 15:6:9', '26', null);
INSERT INTO device_10 VALUES ('28', '10', '28', '1', '2017-04-24 21:47:47', '28', null);
INSERT INTO device_10 VALUES ('29', '10', '26', '3', '2017-04-24 2:8:18', '20', null);
INSERT INTO device_10 VALUES ('30', '10', '23', '1', '2017-04-24 11:26:48', '28', null);
INSERT INTO device_10 VALUES ('31', '10', '28', '2', '2017-04-24 23:1:54', '27', null);
INSERT INTO device_10 VALUES ('32', '10', '25', '2', '2017-04-24 19:19:14', '25', null);
INSERT INTO device_10 VALUES ('33', '10', '24', '2', '2017-04-24 1:57:20', '28', null);
INSERT INTO device_10 VALUES ('34', '10', '24', '1', '2017-04-24 4:35:28', '20', null);
INSERT INTO device_10 VALUES ('35', '10', '27', '1', '2017-04-24 6:29:21', '23', null);
INSERT INTO device_10 VALUES ('36', '10', '24', '1', '2017-04-24 4:44:53', '26', null);
INSERT INTO device_10 VALUES ('37', '10', '20', '2', '2017-04-24 13:9:57', '24', null);
INSERT INTO device_10 VALUES ('38', '10', '23', '2', '2017-04-24 13:17:30', '27', null);
INSERT INTO device_10 VALUES ('39', '10', '26', '2', '2017-04-24 2:42:31', '21', null);

-- ----------------------------
-- Table structure for `device_2`
-- ----------------------------
DROP TABLE IF EXISTS `device_2`;
CREATE TABLE `device_2` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DEVICE_ID` text,
  `HUMIDITY` float DEFAULT NULL,
  `STYLE` int(11) DEFAULT NULL,
  `DATE` text,
  `TEMPERATURE` float DEFAULT NULL,
  `VERIFY_REPORT_ID` text,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of device_2
-- ----------------------------
INSERT INTO device_2 VALUES ('1', '2', '24', '2', '2017-04-24 18:58:43', '27', null);
INSERT INTO device_2 VALUES ('2', '2', '28', '1', '2017-04-24 22:59:33', '24', null);
INSERT INTO device_2 VALUES ('3', '2', '26', '1', '2017-04-24 15:36:38', '27', null);
INSERT INTO device_2 VALUES ('4', '2', '27', '3', '2017-04-24 6:59:16', '28', null);
INSERT INTO device_2 VALUES ('5', '2', '25', '2', '2017-04-24 7:52:9', '20', null);
INSERT INTO device_2 VALUES ('6', '2', '22', '2', '2017-04-24 18:49:26', '20', null);
INSERT INTO device_2 VALUES ('7', '2', '25', '2', '2017-04-24 1:37:51', '23', null);
INSERT INTO device_2 VALUES ('8', '2', '22', '2', '2017-04-24 16:22:29', '24', null);
INSERT INTO device_2 VALUES ('9', '2', '20', '3', '2017-04-24 18:50:18', '24', null);
INSERT INTO device_2 VALUES ('10', '2', '25', '1', '2017-04-24 20:50:49', '27', null);
INSERT INTO device_2 VALUES ('11', '2', '27', '2', '2017-04-24 16:22:36', '27', null);
INSERT INTO device_2 VALUES ('12', '2', '23', '2', '2017-04-24 8:54:32', '20', null);
INSERT INTO device_2 VALUES ('13', '2', '22', '2', '2017-04-24 11:6:54', '23', null);
INSERT INTO device_2 VALUES ('14', '2', '21', '1', '2017-04-24 19:18:47', '20', null);
INSERT INTO device_2 VALUES ('15', '2', '23', '2', '2017-04-24 14:28:58', '28', null);
INSERT INTO device_2 VALUES ('16', '2', '20', '3', '2017-04-24 19:16:49', '28', null);
INSERT INTO device_2 VALUES ('17', '2', '23', '3', '2017-04-24 19:30:51', '23', null);
INSERT INTO device_2 VALUES ('18', '2', '28', '2', '2017-04-24 22:20:10', '28', null);
INSERT INTO device_2 VALUES ('19', '2', '25', '3', '2017-04-24 14:45:23', '23', null);
INSERT INTO device_2 VALUES ('20', '2', '27', '3', '2017-04-24 9:10:12', '28', null);
INSERT INTO device_2 VALUES ('21', '2', '27', '3', '2017-04-24 6:31:29', '26', null);
INSERT INTO device_2 VALUES ('22', '2', '22', '3', '2017-04-24 12:55:33', '26', null);
INSERT INTO device_2 VALUES ('23', '2', '26', '2', '2017-04-24 6:3:3', '28', null);
INSERT INTO device_2 VALUES ('24', '2', '28', '3', '2017-04-24 5:29:4', '23', null);
INSERT INTO device_2 VALUES ('25', '2', '23', '2', '2017-04-24 22:17:6', '23', null);
INSERT INTO device_2 VALUES ('26', '2', '20', '1', '2017-04-24 1:4:3', '28', null);
INSERT INTO device_2 VALUES ('27', '2', '26', '2', '2017-04-24 7:2:6', '22', null);
INSERT INTO device_2 VALUES ('28', '2', '26', '2', '2017-04-24 10:33:37', '21', null);
INSERT INTO device_2 VALUES ('29', '2', '20', '2', '2017-04-24 16:20:47', '24', null);
INSERT INTO device_2 VALUES ('30', '2', '21', '1', '2017-04-24 9:32:28', '23', null);
INSERT INTO device_2 VALUES ('31', '2', '26', '1', '2017-04-24 10:57:21', '27', null);
INSERT INTO device_2 VALUES ('32', '2', '27', '1', '2017-04-24 5:9:10', '24', null);
INSERT INTO device_2 VALUES ('33', '2', '21', '3', '2017-04-24 9:31:55', '28', null);
INSERT INTO device_2 VALUES ('34', '2', '24', '1', '2017-04-24 20:36:39', '23', null);
INSERT INTO device_2 VALUES ('35', '2', '20', '2', '2017-04-24 1:9:46', '20', null);
INSERT INTO device_2 VALUES ('36', '2', '20', '2', '2017-04-24 9:11:30', '22', null);
INSERT INTO device_2 VALUES ('37', '2', '20', '2', '2017-04-24 7:21:54', '24', null);
INSERT INTO device_2 VALUES ('38', '2', '28', '1', '2017-04-24 21:17:45', '20', null);
INSERT INTO device_2 VALUES ('39', '2', '26', '1', '2017-04-24 5:33:37', '22', null);
INSERT INTO device_2 VALUES ('40', '2', '21', '3', '2017-04-24 1:55:44', '28', null);
INSERT INTO device_2 VALUES ('41', '2', '28', '2', '2017-04-24 2:34:55', '20', null);
INSERT INTO device_2 VALUES ('42', '2', '20', '2', '2017-04-24 23:7:38', '20', null);
INSERT INTO device_2 VALUES ('43', '2', '23', '3', '2017-04-24 3:23:47', '24', null);
INSERT INTO device_2 VALUES ('44', '2', '21', '2', '2017-04-24 17:14:26', '20', null);
INSERT INTO device_2 VALUES ('45', '2', '22', '2', '2017-04-24 9:31:12', '24', null);
INSERT INTO device_2 VALUES ('46', '2', '28', '3', '2017-04-24 9:6:40', '21', null);
INSERT INTO device_2 VALUES ('47', '2', '28', '3', '2017-04-24 7:19:42', '22', null);
INSERT INTO device_2 VALUES ('48', '2', '22', '2', '2017-04-24 20:42:43', '25', null);
INSERT INTO device_2 VALUES ('49', '2', '26', '2', '2017-04-24 20:27:34', '23', null);
INSERT INTO device_2 VALUES ('50', '2', '20', '3', '2017-04-24 2:47:29', '25', null);
INSERT INTO device_2 VALUES ('51', '2', '26', '1', '2017-04-24 17:6:30', '26', null);
INSERT INTO device_2 VALUES ('52', '2', '22', '2', '2017-04-24 16:37:49', '27', null);
INSERT INTO device_2 VALUES ('53', '2', '26', '2', '2017-04-24 19:14:41', '23', null);
INSERT INTO device_2 VALUES ('54', '2', '23', '2', '2017-04-24 20:59:50', '20', null);
INSERT INTO device_2 VALUES ('55', '2', '28', '2', '2017-04-24 3:57:31', '23', null);

-- ----------------------------
-- Table structure for `device_3`
-- ----------------------------
DROP TABLE IF EXISTS `device_3`;
CREATE TABLE `device_3` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DEVICE_ID` text,
  `HUMIDITY` float DEFAULT NULL,
  `STYLE` int(11) DEFAULT NULL,
  `DATE` text,
  `TEMPERATURE` float DEFAULT NULL,
  `VERIFY_REPORT_ID` text,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of device_3
-- ----------------------------
INSERT INTO device_3 VALUES ('1', '3', '28', '2', '2017-04-24 2:42:44', '20', null);
INSERT INTO device_3 VALUES ('2', '3', '28', '2', '2017-04-24 20:11:41', '23', null);
INSERT INTO device_3 VALUES ('3', '3', '28', '3', '2017-04-24 13:45:10', '21', null);
INSERT INTO device_3 VALUES ('4', '3', '28', '2', '2017-04-24 1:48:38', '25', null);
INSERT INTO device_3 VALUES ('5', '3', '27', '1', '2017-04-24 7:7:43', '28', null);
INSERT INTO device_3 VALUES ('6', '3', '26', '1', '2017-04-24 20:38:22', '22', null);
INSERT INTO device_3 VALUES ('7', '3', '21', '2', '2017-04-24 3:29:48', '21', null);
INSERT INTO device_3 VALUES ('8', '3', '27', '3', '2017-04-24 14:25:11', '20', null);
INSERT INTO device_3 VALUES ('9', '3', '28', '2', '2017-04-24 8:26:43', '21', null);
INSERT INTO device_3 VALUES ('10', '3', '20', '2', '2017-04-24 6:29:9', '20', null);
INSERT INTO device_3 VALUES ('11', '3', '27', '3', '2017-04-24 18:45:59', '23', null);
INSERT INTO device_3 VALUES ('12', '3', '26', '2', '2017-04-24 5:13:35', '23', null);
INSERT INTO device_3 VALUES ('13', '3', '22', '1', '2017-04-24 2:19:41', '20', null);
INSERT INTO device_3 VALUES ('14', '3', '26', '1', '2017-04-24 5:56:7', '24', null);
INSERT INTO device_3 VALUES ('15', '3', '27', '1', '2017-04-24 5:36:48', '20', null);
INSERT INTO device_3 VALUES ('16', '3', '25', '2', '2017-04-24 14:44:9', '21', null);
INSERT INTO device_3 VALUES ('17', '3', '21', '2', '2017-04-24 23:7:55', '24', null);
INSERT INTO device_3 VALUES ('18', '3', '28', '3', '2017-04-24 11:26:31', '21', null);
INSERT INTO device_3 VALUES ('19', '3', '23', '1', '2017-04-24 5:20:21', '25', null);
INSERT INTO device_3 VALUES ('20', '3', '23', '2', '2017-04-24 10:26:48', '27', null);
INSERT INTO device_3 VALUES ('21', '3', '27', '2', '2017-04-24 4:44:24', '27', null);
INSERT INTO device_3 VALUES ('22', '3', '24', '1', '2017-04-24 19:48:3', '27', null);
INSERT INTO device_3 VALUES ('23', '3', '25', '1', '2017-04-24 13:43:45', '28', null);
INSERT INTO device_3 VALUES ('24', '3', '23', '3', '2017-04-24 17:42:50', '22', null);
INSERT INTO device_3 VALUES ('25', '3', '24', '2', '2017-04-24 17:4:5', '23', null);
INSERT INTO device_3 VALUES ('26', '3', '24', '3', '2017-04-24 22:50:50', '25', null);
INSERT INTO device_3 VALUES ('27', '3', '21', '2', '2017-04-24 16:32:34', '27', null);
INSERT INTO device_3 VALUES ('28', '3', '27', '2', '2017-04-24 20:52:52', '25', null);
INSERT INTO device_3 VALUES ('29', '3', '25', '3', '2017-04-24 19:4:36', '22', null);
INSERT INTO device_3 VALUES ('30', '3', '25', '1', '2017-04-24 12:34:1', '23', null);
INSERT INTO device_3 VALUES ('31', '3', '23', '3', '2017-04-24 2:2:6', '25', null);
INSERT INTO device_3 VALUES ('32', '3', '20', '2', '2017-04-24 1:13:31', '23', null);
INSERT INTO device_3 VALUES ('33', '3', '28', '2', '2017-04-24 2:51:50', '24', null);
INSERT INTO device_3 VALUES ('34', '3', '28', '3', '2017-04-24 13:52:47', '21', null);
INSERT INTO device_3 VALUES ('35', '3', '23', '3', '2017-04-24 11:52:28', '20', null);
INSERT INTO device_3 VALUES ('36', '3', '20', '3', '2017-04-24 14:8:59', '27', null);
INSERT INTO device_3 VALUES ('37', '3', '21', '2', '2017-04-24 1:31:14', '25', null);
INSERT INTO device_3 VALUES ('38', '3', '23', '2', '2017-04-24 1:5:52', '25', null);
INSERT INTO device_3 VALUES ('39', '3', '24', '1', '2017-04-24 9:58:46', '23', null);
INSERT INTO device_3 VALUES ('40', '3', '26', '3', '2017-04-24 19:35:31', '27', null);
INSERT INTO device_3 VALUES ('41', '3', '27', '3', '2017-04-24 9:55:8', '24', null);
INSERT INTO device_3 VALUES ('42', '3', '25', '3', '2017-04-24 19:50:35', '23', null);
INSERT INTO device_3 VALUES ('43', '3', '27', '1', '2017-04-24 19:42:58', '22', null);
INSERT INTO device_3 VALUES ('44', '3', '20', '1', '2017-04-24 19:27:13', '23', null);
INSERT INTO device_3 VALUES ('45', '3', '26', '1', '2017-04-24 20:4:40', '21', null);
INSERT INTO device_3 VALUES ('46', '3', '22', '3', '2017-04-24 23:1:37', '25', null);
INSERT INTO device_3 VALUES ('47', '3', '24', '1', '2017-04-24 15:20:43', '23', null);
INSERT INTO device_3 VALUES ('48', '3', '24', '3', '2017-04-24 4:4:26', '20', null);
INSERT INTO device_3 VALUES ('49', '3', '28', '3', '2017-04-24 12:28:23', '20', null);
INSERT INTO device_3 VALUES ('50', '3', '28', '2', '2017-04-24 19:54:11', '20', null);
INSERT INTO device_3 VALUES ('51', '3', '28', '3', '2017-04-24 23:13:59', '25', null);
INSERT INTO device_3 VALUES ('52', '3', '22', '1', '2017-04-24 23:55:9', '26', null);
INSERT INTO device_3 VALUES ('53', '3', '23', '2', '2017-04-24 18:14:44', '23', null);
INSERT INTO device_3 VALUES ('54', '3', '23', '1', '2017-04-24 3:1:39', '20', null);
INSERT INTO device_3 VALUES ('55', '3', '23', '2', '2017-04-24 8:25:10', '25', null);

-- ----------------------------
-- Table structure for `device_4`
-- ----------------------------
DROP TABLE IF EXISTS `device_4`;
CREATE TABLE `device_4` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DEVICE_ID` text,
  `HUMIDITY` float DEFAULT NULL,
  `STYLE` int(11) DEFAULT NULL,
  `DATE` text,
  `TEMPERATURE` float DEFAULT NULL,
  `VERIFY_REPORT_ID` text,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of device_4
-- ----------------------------
INSERT INTO device_4 VALUES ('1', '4', '20', '2', '2017-04-24 1:25:41', '20', null);
INSERT INTO device_4 VALUES ('2', '4', '28', '3', '2017-04-24 8:29:49', '25', null);
INSERT INTO device_4 VALUES ('3', '4', '23', '2', '2017-04-24 23:54:19', '25', null);
INSERT INTO device_4 VALUES ('4', '4', '27', '3', '2017-04-24 5:38:19', '22', null);
INSERT INTO device_4 VALUES ('5', '4', '24', '3', '2017-04-24 19:52:14', '28', null);
INSERT INTO device_4 VALUES ('6', '4', '24', '2', '2017-04-24 20:27:38', '28', null);
INSERT INTO device_4 VALUES ('7', '4', '27', '3', '2017-04-24 5:45:52', '25', null);
INSERT INTO device_4 VALUES ('8', '4', '26', '3', '2017-04-24 4:27:33', '24', null);
INSERT INTO device_4 VALUES ('9', '4', '26', '1', '2017-04-24 16:58:54', '24', null);
INSERT INTO device_4 VALUES ('10', '4', '20', '3', '2017-04-24 9:48:55', '27', null);
INSERT INTO device_4 VALUES ('11', '4', '24', '2', '2017-04-24 8:44:20', '24', null);
INSERT INTO device_4 VALUES ('12', '4', '25', '1', '2017-04-24 1:52:12', '20', null);
INSERT INTO device_4 VALUES ('13', '4', '22', '1', '2017-04-24 14:12:39', '23', null);
INSERT INTO device_4 VALUES ('14', '4', '28', '2', '2017-04-24 17:27:20', '28', null);
INSERT INTO device_4 VALUES ('15', '4', '24', '3', '2017-04-24 14:18:34', '25', null);
INSERT INTO device_4 VALUES ('16', '4', '23', '2', '2017-04-24 18:38:7', '24', null);
INSERT INTO device_4 VALUES ('17', '4', '21', '2', '2017-04-24 16:29:51', '26', null);
INSERT INTO device_4 VALUES ('18', '4', '20', '1', '2017-04-24 1:40:51', '22', null);
INSERT INTO device_4 VALUES ('19', '4', '26', '3', '2017-04-24 10:36:56', '26', null);
INSERT INTO device_4 VALUES ('20', '4', '25', '2', '2017-04-24 4:32:34', '23', null);
INSERT INTO device_4 VALUES ('21', '4', '21', '1', '2017-04-24 16:31:30', '25', null);
INSERT INTO device_4 VALUES ('22', '4', '20', '2', '2017-04-24 6:22:45', '22', null);
INSERT INTO device_4 VALUES ('23', '4', '25', '2', '2017-04-24 11:29:46', '23', null);
INSERT INTO device_4 VALUES ('24', '4', '21', '1', '2017-04-24 23:50:6', '24', null);
INSERT INTO device_4 VALUES ('25', '4', '26', '1', '2017-04-24 10:25:17', '24', null);
INSERT INTO device_4 VALUES ('26', '4', '24', '1', '2017-04-24 19:37:36', '26', null);
INSERT INTO device_4 VALUES ('27', '4', '25', '1', '2017-04-24 11:39:20', '24', null);
INSERT INTO device_4 VALUES ('28', '4', '22', '1', '2017-04-24 8:21:50', '23', null);
INSERT INTO device_4 VALUES ('29', '4', '20', '3', '2017-04-24 6:42:38', '20', null);
INSERT INTO device_4 VALUES ('30', '4', '22', '2', '2017-04-24 1:22:51', '20', null);
INSERT INTO device_4 VALUES ('31', '4', '23', '2', '2017-04-24 19:42:57', '23', null);
INSERT INTO device_4 VALUES ('32', '4', '25', '3', '2017-04-24 13:25:2', '21', null);
INSERT INTO device_4 VALUES ('33', '4', '28', '3', '2017-04-24 4:16:44', '25', null);
INSERT INTO device_4 VALUES ('34', '4', '26', '1', '2017-04-24 21:36:40', '28', null);
INSERT INTO device_4 VALUES ('35', '4', '21', '3', '2017-04-24 2:29:58', '22', null);
INSERT INTO device_4 VALUES ('36', '4', '23', '1', '2017-04-24 16:33:42', '22', null);
INSERT INTO device_4 VALUES ('37', '4', '20', '1', '2017-04-24 13:9:53', '26', null);
INSERT INTO device_4 VALUES ('38', '4', '20', '2', '2017-04-24 17:54:38', '22', null);
INSERT INTO device_4 VALUES ('39', '4', '26', '2', '2017-04-24 16:24:36', '21', null);
INSERT INTO device_4 VALUES ('40', '4', '25', '1', '2017-04-24 19:14:56', '28', null);
INSERT INTO device_4 VALUES ('41', '4', '25', '2', '2017-04-24 14:48:34', '26', null);
INSERT INTO device_4 VALUES ('42', '4', '23', '1', '2017-04-24 15:45:56', '20', null);
INSERT INTO device_4 VALUES ('43', '4', '20', '3', '2017-04-24 5:46:50', '23', null);
INSERT INTO device_4 VALUES ('44', '4', '27', '3', '2017-04-24 23:14:27', '21', null);
INSERT INTO device_4 VALUES ('45', '4', '25', '1', '2017-04-24 20:30:10', '20', null);
INSERT INTO device_4 VALUES ('46', '4', '25', '3', '2017-04-24 7:49:20', '23', null);
INSERT INTO device_4 VALUES ('47', '4', '28', '2', '2017-04-24 11:45:32', '27', null);
INSERT INTO device_4 VALUES ('48', '4', '26', '2', '2017-04-24 8:40:55', '22', null);
INSERT INTO device_4 VALUES ('49', '4', '22', '1', '2017-04-24 15:40:34', '25', null);
INSERT INTO device_4 VALUES ('50', '4', '23', '2', '2017-04-24 10:58:42', '25', null);
INSERT INTO device_4 VALUES ('51', '4', '22', '3', '2017-04-24 16:59:7', '28', null);
INSERT INTO device_4 VALUES ('52', '4', '20', '3', '2017-04-24 23:56:15', '24', null);
INSERT INTO device_4 VALUES ('53', '4', '21', '3', '2017-04-24 7:24:37', '24', null);

-- ----------------------------
-- Table structure for `device_5`
-- ----------------------------
DROP TABLE IF EXISTS `device_5`;
CREATE TABLE `device_5` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DEVICE_ID` text,
  `HUMIDITY` float DEFAULT NULL,
  `STYLE` int(11) DEFAULT NULL,
  `DATE` text,
  `TEMPERATURE` float DEFAULT NULL,
  `VERIFY_REPORT_ID` text,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of device_5
-- ----------------------------
INSERT INTO device_5 VALUES ('1', '5', '25', '3', '2017-04-24 11:4:9', '22', null);
INSERT INTO device_5 VALUES ('2', '5', '27', '1', '2017-04-24 14:28:3', '28', null);
INSERT INTO device_5 VALUES ('3', '5', '21', '1', '2017-04-24 5:46:29', '24', null);
INSERT INTO device_5 VALUES ('4', '5', '23', '1', '2017-04-24 15:58:28', '23', null);
INSERT INTO device_5 VALUES ('5', '5', '22', '2', '2017-04-24 12:11:2', '26', null);
INSERT INTO device_5 VALUES ('6', '5', '20', '2', '2017-04-24 9:19:12', '27', null);
INSERT INTO device_5 VALUES ('7', '5', '28', '2', '2017-04-24 12:12:21', '24', null);
INSERT INTO device_5 VALUES ('8', '5', '24', '1', '2017-04-24 13:24:36', '21', null);
INSERT INTO device_5 VALUES ('9', '5', '21', '2', '2017-04-24 8:17:23', '28', null);
INSERT INTO device_5 VALUES ('10', '5', '21', '1', '2017-04-24 13:58:57', '22', null);
INSERT INTO device_5 VALUES ('11', '5', '28', '2', '2017-04-24 14:5:5', '27', null);
INSERT INTO device_5 VALUES ('12', '5', '25', '2', '2017-04-24 7:19:26', '26', null);
INSERT INTO device_5 VALUES ('13', '5', '20', '3', '2017-04-24 22:26:55', '24', null);
INSERT INTO device_5 VALUES ('14', '5', '27', '1', '2017-04-24 13:36:25', '20', null);
INSERT INTO device_5 VALUES ('15', '5', '21', '1', '2017-04-24 12:58:45', '25', null);
INSERT INTO device_5 VALUES ('16', '5', '22', '1', '2017-04-24 21:32:33', '24', null);
INSERT INTO device_5 VALUES ('17', '5', '26', '3', '2017-04-24 22:45:23', '20', null);
INSERT INTO device_5 VALUES ('18', '5', '23', '3', '2017-04-24 1:47:4', '21', null);
INSERT INTO device_5 VALUES ('19', '5', '22', '2', '2017-04-24 21:43:48', '27', null);
INSERT INTO device_5 VALUES ('20', '5', '23', '3', '2017-04-24 14:38:19', '20', null);
INSERT INTO device_5 VALUES ('21', '5', '22', '1', '2017-04-24 16:18:25', '20', null);
INSERT INTO device_5 VALUES ('22', '5', '27', '3', '2017-04-24 6:23:23', '21', null);
INSERT INTO device_5 VALUES ('23', '5', '25', '2', '2017-04-24 16:6:9', '22', null);
INSERT INTO device_5 VALUES ('24', '5', '27', '2', '2017-04-24 2:32:8', '24', null);
INSERT INTO device_5 VALUES ('25', '5', '24', '1', '2017-04-24 10:12:9', '25', null);
INSERT INTO device_5 VALUES ('26', '5', '25', '1', '2017-04-24 4:47:30', '27', null);
INSERT INTO device_5 VALUES ('27', '5', '24', '3', '2017-04-24 13:15:54', '23', null);
INSERT INTO device_5 VALUES ('28', '5', '28', '1', '2017-04-24 13:30:56', '27', null);
INSERT INTO device_5 VALUES ('29', '5', '25', '2', '2017-04-24 14:27:51', '23', null);
INSERT INTO device_5 VALUES ('30', '5', '25', '2', '2017-04-24 20:12:15', '26', null);
INSERT INTO device_5 VALUES ('31', '5', '25', '1', '2017-04-24 16:9:11', '26', null);
INSERT INTO device_5 VALUES ('32', '5', '27', '1', '2017-04-24 8:35:12', '28', null);
INSERT INTO device_5 VALUES ('33', '5', '27', '2', '2017-04-24 14:42:33', '27', null);
INSERT INTO device_5 VALUES ('34', '5', '21', '2', '2017-04-24 18:52:29', '26', null);
INSERT INTO device_5 VALUES ('35', '5', '20', '2', '2017-04-24 9:36:35', '20', null);
INSERT INTO device_5 VALUES ('36', '5', '23', '1', '2017-04-24 2:54:59', '27', null);
INSERT INTO device_5 VALUES ('37', '5', '20', '2', '2017-04-24 19:44:40', '25', null);
INSERT INTO device_5 VALUES ('38', '5', '21', '2', '2017-04-24 4:59:47', '24', null);
INSERT INTO device_5 VALUES ('39', '5', '21', '3', '2017-04-24 12:42:32', '28', null);
INSERT INTO device_5 VALUES ('40', '5', '20', '3', '2017-04-24 1:53:25', '28', null);
INSERT INTO device_5 VALUES ('41', '5', '25', '3', '2017-04-24 19:47:51', '26', null);
INSERT INTO device_5 VALUES ('42', '5', '20', '3', '2017-04-24 9:44:41', '24', null);
INSERT INTO device_5 VALUES ('43', '5', '21', '3', '2017-04-24 13:20:34', '22', null);
INSERT INTO device_5 VALUES ('44', '5', '24', '3', '2017-04-24 15:18:32', '28', null);

-- ----------------------------
-- Table structure for `device_6`
-- ----------------------------
DROP TABLE IF EXISTS `device_6`;
CREATE TABLE `device_6` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DEVICE_ID` text,
  `HUMIDITY` float DEFAULT NULL,
  `STYLE` int(11) DEFAULT NULL,
  `DATE` text,
  `TEMPERATURE` float DEFAULT NULL,
  `VERIFY_REPORT_ID` text,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of device_6
-- ----------------------------
INSERT INTO device_6 VALUES ('1', '6', '22', '3', '2017-04-24 19:53:12', '25', null);
INSERT INTO device_6 VALUES ('2', '6', '27', '3', '2017-04-24 14:55:19', '25', null);
INSERT INTO device_6 VALUES ('3', '6', '25', '2', '2017-04-24 5:6:10', '22', null);
INSERT INTO device_6 VALUES ('4', '6', '20', '3', '2017-04-24 21:31:19', '21', null);
INSERT INTO device_6 VALUES ('5', '6', '28', '3', '2017-04-24 10:2:6', '23', null);
INSERT INTO device_6 VALUES ('6', '6', '27', '3', '2017-04-24 1:33:50', '25', null);
INSERT INTO device_6 VALUES ('7', '6', '25', '2', '2017-04-24 12:7:34', '25', null);
INSERT INTO device_6 VALUES ('8', '6', '28', '3', '2017-04-24 22:1:54', '20', null);
INSERT INTO device_6 VALUES ('9', '6', '24', '1', '2017-04-24 19:49:34', '22', null);
INSERT INTO device_6 VALUES ('10', '6', '21', '1', '2017-04-24 22:33:18', '24', null);
INSERT INTO device_6 VALUES ('11', '6', '20', '1', '2017-04-24 23:6:42', '23', null);
INSERT INTO device_6 VALUES ('12', '6', '25', '3', '2017-04-24 10:18:32', '23', null);
INSERT INTO device_6 VALUES ('13', '6', '20', '2', '2017-04-24 10:13:51', '23', null);
INSERT INTO device_6 VALUES ('14', '6', '27', '3', '2017-04-24 14:48:30', '24', null);
INSERT INTO device_6 VALUES ('15', '6', '27', '2', '2017-04-24 3:45:36', '21', null);
INSERT INTO device_6 VALUES ('16', '6', '27', '2', '2017-04-24 5:44:59', '22', null);
INSERT INTO device_6 VALUES ('17', '6', '23', '2', '2017-04-24 7:13:24', '26', null);
INSERT INTO device_6 VALUES ('18', '6', '25', '1', '2017-04-24 5:15:57', '27', null);
INSERT INTO device_6 VALUES ('19', '6', '21', '3', '2017-04-24 18:8:49', '23', null);
INSERT INTO device_6 VALUES ('20', '6', '28', '3', '2017-04-24 2:17:37', '24', null);
INSERT INTO device_6 VALUES ('21', '6', '27', '3', '2017-04-24 15:19:28', '20', null);
INSERT INTO device_6 VALUES ('22', '6', '24', '2', '2017-04-24 7:33:31', '21', null);
INSERT INTO device_6 VALUES ('23', '6', '24', '1', '2017-04-24 10:22:4', '27', null);
INSERT INTO device_6 VALUES ('24', '6', '27', '3', '2017-04-24 8:39:22', '21', null);
INSERT INTO device_6 VALUES ('25', '6', '26', '2', '2017-04-24 12:4:41', '26', null);
INSERT INTO device_6 VALUES ('26', '6', '25', '1', '2017-04-24 18:17:36', '20', null);
INSERT INTO device_6 VALUES ('27', '6', '23', '3', '2017-04-24 14:12:24', '20', null);
INSERT INTO device_6 VALUES ('28', '6', '23', '1', '2017-04-24 7:51:8', '25', null);
INSERT INTO device_6 VALUES ('29', '6', '20', '2', '2017-04-24 16:4:51', '24', null);
INSERT INTO device_6 VALUES ('30', '6', '26', '2', '2017-04-24 13:2:4', '23', null);
INSERT INTO device_6 VALUES ('31', '6', '21', '2', '2017-04-24 22:2:22', '24', null);
INSERT INTO device_6 VALUES ('32', '6', '27', '2', '2017-04-24 14:39:10', '22', null);
INSERT INTO device_6 VALUES ('33', '6', '21', '2', '2017-04-24 7:4:11', '27', null);
INSERT INTO device_6 VALUES ('34', '6', '20', '1', '2017-04-24 23:51:14', '28', null);
INSERT INTO device_6 VALUES ('35', '6', '24', '3', '2017-04-24 20:13:42', '27', null);
INSERT INTO device_6 VALUES ('36', '6', '20', '2', '2017-04-24 16:8:52', '27', null);
INSERT INTO device_6 VALUES ('37', '6', '28', '1', '2017-04-24 7:38:20', '20', null);
INSERT INTO device_6 VALUES ('38', '6', '24', '1', '2017-04-24 3:23:14', '27', null);
INSERT INTO device_6 VALUES ('39', '6', '24', '1', '2017-04-24 17:40:44', '21', null);
INSERT INTO device_6 VALUES ('40', '6', '28', '2', '2017-04-24 2:39:11', '21', null);
INSERT INTO device_6 VALUES ('41', '6', '23', '3', '2017-04-24 5:16:38', '25', null);
INSERT INTO device_6 VALUES ('42', '6', '22', '3', '2017-04-24 8:26:30', '26', null);
INSERT INTO device_6 VALUES ('43', '6', '21', '3', '2017-04-24 12:52:58', '22', null);
INSERT INTO device_6 VALUES ('44', '6', '22', '2', '2017-04-24 19:26:30', '28', null);
INSERT INTO device_6 VALUES ('45', '6', '21', '2', '2017-04-24 19:18:6', '23', null);
INSERT INTO device_6 VALUES ('46', '6', '21', '2', '2017-04-24 22:2:40', '24', null);
INSERT INTO device_6 VALUES ('47', '6', '25', '1', '2017-04-24 22:59:11', '20', null);
INSERT INTO device_6 VALUES ('48', '6', '23', '1', '2017-04-24 21:34:38', '23', null);
INSERT INTO device_6 VALUES ('49', '6', '21', '1', '2017-04-24 18:44:33', '26', null);
INSERT INTO device_6 VALUES ('50', '6', '24', '2', '2017-04-24 12:52:58', '27', null);
INSERT INTO device_6 VALUES ('51', '6', '23', '2', '2017-04-24 19:33:30', '24', null);
INSERT INTO device_6 VALUES ('52', '6', '22', '2', '2017-04-24 5:52:43', '28', null);
INSERT INTO device_6 VALUES ('53', '6', '28', '1', '2017-04-24 14:35:10', '22', null);
INSERT INTO device_6 VALUES ('54', '6', '20', '1', '2017-04-24 23:34:50', '28', null);
INSERT INTO device_6 VALUES ('55', '6', '25', '2', '2017-04-24 4:35:6', '26', null);

-- ----------------------------
-- Table structure for `device_7`
-- ----------------------------
DROP TABLE IF EXISTS `device_7`;
CREATE TABLE `device_7` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DEVICE_ID` text,
  `HUMIDITY` float DEFAULT NULL,
  `STYLE` int(11) DEFAULT NULL,
  `DATE` text,
  `TEMPERATURE` float DEFAULT NULL,
  `VERIFY_REPORT_ID` text,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of device_7
-- ----------------------------
INSERT INTO device_7 VALUES ('1', '7', '20', '2', '2017-04-24 11:53:26', '25', null);
INSERT INTO device_7 VALUES ('2', '7', '28', '2', '2017-04-24 22:44:17', '20', null);
INSERT INTO device_7 VALUES ('3', '7', '22', '3', '2017-04-24 5:35:48', '28', null);
INSERT INTO device_7 VALUES ('4', '7', '28', '3', '2017-04-24 13:30:19', '28', null);
INSERT INTO device_7 VALUES ('5', '7', '27', '3', '2017-04-24 11:15:50', '21', null);
INSERT INTO device_7 VALUES ('6', '7', '26', '2', '2017-04-24 12:12:57', '28', null);
INSERT INTO device_7 VALUES ('7', '7', '27', '3', '2017-04-24 18:29:55', '24', null);
INSERT INTO device_7 VALUES ('8', '7', '22', '2', '2017-04-24 19:11:1', '20', null);
INSERT INTO device_7 VALUES ('9', '7', '27', '1', '2017-04-24 10:26:46', '25', null);
INSERT INTO device_7 VALUES ('10', '7', '26', '2', '2017-04-24 14:13:29', '20', null);
INSERT INTO device_7 VALUES ('11', '7', '24', '2', '2017-04-24 8:57:26', '24', null);
INSERT INTO device_7 VALUES ('12', '7', '25', '3', '2017-04-24 18:23:16', '27', null);
INSERT INTO device_7 VALUES ('13', '7', '23', '2', '2017-04-24 23:19:16', '23', null);
INSERT INTO device_7 VALUES ('14', '7', '27', '2', '2017-04-24 4:6:7', '28', null);
INSERT INTO device_7 VALUES ('15', '7', '21', '1', '2017-04-24 12:10:29', '22', null);
INSERT INTO device_7 VALUES ('16', '7', '28', '2', '2017-04-24 4:31:10', '27', null);
INSERT INTO device_7 VALUES ('17', '7', '25', '3', '2017-04-24 23:7:54', '22', null);
INSERT INTO device_7 VALUES ('18', '7', '20', '2', '2017-04-24 5:38:32', '27', null);
INSERT INTO device_7 VALUES ('19', '7', '20', '2', '2017-04-24 15:38:3', '26', null);
INSERT INTO device_7 VALUES ('20', '7', '24', '2', '2017-04-24 9:32:46', '25', null);
INSERT INTO device_7 VALUES ('21', '7', '21', '1', '2017-04-24 23:22:53', '26', null);
INSERT INTO device_7 VALUES ('22', '7', '28', '1', '2017-04-24 20:26:31', '22', null);
INSERT INTO device_7 VALUES ('23', '7', '22', '2', '2017-04-24 19:55:14', '28', null);
INSERT INTO device_7 VALUES ('24', '7', '24', '1', '2017-04-24 19:16:2', '24', null);
INSERT INTO device_7 VALUES ('25', '7', '27', '3', '2017-04-24 15:38:27', '25', null);
INSERT INTO device_7 VALUES ('26', '7', '21', '3', '2017-04-24 10:30:24', '25', null);
INSERT INTO device_7 VALUES ('27', '7', '20', '1', '2017-04-24 6:26:6', '26', null);
INSERT INTO device_7 VALUES ('28', '7', '26', '3', '2017-04-24 5:47:9', '28', null);
INSERT INTO device_7 VALUES ('29', '7', '25', '1', '2017-04-24 13:28:47', '25', null);
INSERT INTO device_7 VALUES ('30', '7', '22', '3', '2017-04-24 16:33:3', '21', null);
INSERT INTO device_7 VALUES ('31', '7', '24', '2', '2017-04-24 6:2:9', '26', null);
INSERT INTO device_7 VALUES ('32', '7', '20', '3', '2017-04-24 17:16:28', '27', null);
INSERT INTO device_7 VALUES ('33', '7', '24', '1', '2017-04-24 4:10:52', '23', null);
INSERT INTO device_7 VALUES ('34', '7', '25', '3', '2017-04-24 6:42:35', '20', null);
INSERT INTO device_7 VALUES ('35', '7', '25', '1', '2017-04-24 23:54:52', '24', null);
INSERT INTO device_7 VALUES ('36', '7', '20', '3', '2017-04-24 5:54:34', '20', null);
INSERT INTO device_7 VALUES ('37', '7', '23', '1', '2017-04-24 8:11:15', '21', null);
INSERT INTO device_7 VALUES ('38', '7', '23', '3', '2017-04-24 20:22:19', '20', null);
INSERT INTO device_7 VALUES ('39', '7', '28', '2', '2017-04-24 11:39:20', '24', null);
INSERT INTO device_7 VALUES ('40', '7', '20', '1', '2017-04-24 16:8:57', '27', null);
INSERT INTO device_7 VALUES ('41', '7', '27', '3', '2017-04-24 3:50:52', '27', null);
INSERT INTO device_7 VALUES ('42', '7', '23', '3', '2017-04-24 12:22:31', '22', null);
INSERT INTO device_7 VALUES ('43', '7', '21', '1', '2017-04-24 16:16:44', '20', null);
INSERT INTO device_7 VALUES ('44', '7', '22', '1', '2017-04-24 4:47:49', '22', null);
INSERT INTO device_7 VALUES ('45', '7', '21', '3', '2017-04-24 5:17:26', '23', null);
INSERT INTO device_7 VALUES ('46', '7', '25', '2', '2017-04-24 6:7:15', '24', null);
INSERT INTO device_7 VALUES ('47', '7', '21', '1', '2017-04-24 6:37:14', '27', null);
INSERT INTO device_7 VALUES ('48', '7', '20', '2', '2017-04-24 19:53:23', '23', null);
INSERT INTO device_7 VALUES ('49', '7', '26', '1', '2017-04-24 15:37:23', '20', null);
INSERT INTO device_7 VALUES ('50', '7', '22', '3', '2017-04-24 6:32:30', '24', null);
INSERT INTO device_7 VALUES ('51', '7', '27', '2', '2017-04-24 1:7:35', '24', null);
INSERT INTO device_7 VALUES ('52', '7', '26', '1', '2017-04-24 3:14:25', '24', null);
INSERT INTO device_7 VALUES ('53', '7', '21', '1', '2017-04-24 19:55:41', '26', null);
INSERT INTO device_7 VALUES ('54', '7', '25', '1', '2017-04-24 8:51:13', '26', null);
INSERT INTO device_7 VALUES ('55', '7', '21', '1', '2017-04-24 19:12:14', '21', null);
INSERT INTO device_7 VALUES ('56', '7', '21', '2', '2017-04-24 1:14:30', '28', null);
INSERT INTO device_7 VALUES ('57', '7', '27', '2', '2017-04-24 4:14:41', '28', null);
INSERT INTO device_7 VALUES ('58', '7', '21', '2', '2017-04-24 23:52:37', '23', null);
INSERT INTO device_7 VALUES ('59', '7', '25', '3', '2017-04-24 23:49:31', '21', null);
INSERT INTO device_7 VALUES ('60', '7', '26', '2', '2017-04-24 1:2:32', '20', null);
INSERT INTO device_7 VALUES ('61', '7', '20', '2', '2017-04-24 12:56:58', '22', null);
INSERT INTO device_7 VALUES ('62', '7', '21', '1', '2017-04-24 18:16:4', '22', null);
INSERT INTO device_7 VALUES ('63', '7', '25', '1', '2017-04-24 19:11:57', '25', null);
INSERT INTO device_7 VALUES ('64', '7', '25', '2', '2017-04-24 15:58:26', '20', null);
INSERT INTO device_7 VALUES ('65', '7', '21', '2', '2017-04-24 14:8:40', '23', null);
INSERT INTO device_7 VALUES ('66', '7', '22', '2', '2017-04-24 3:39:48', '24', null);
INSERT INTO device_7 VALUES ('67', '7', '22', '2', '2017-04-24 12:47:9', '26', null);
INSERT INTO device_7 VALUES ('68', '7', '27', '1', '2017-04-24 18:53:39', '28', null);
INSERT INTO device_7 VALUES ('69', '7', '22', '3', '2017-04-24 13:14:26', '24', null);
INSERT INTO device_7 VALUES ('70', '7', '28', '3', '2017-04-24 6:5:47', '27', null);
INSERT INTO device_7 VALUES ('71', '7', '24', '2', '2017-04-24 7:51:5', '20', null);

-- ----------------------------
-- Table structure for `device_8`
-- ----------------------------
DROP TABLE IF EXISTS `device_8`;
CREATE TABLE `device_8` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DEVICE_ID` text,
  `HUMIDITY` float DEFAULT NULL,
  `STYLE` int(11) DEFAULT NULL,
  `DATE` text,
  `TEMPERATURE` float DEFAULT NULL,
  `VERIFY_REPORT_ID` text,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of device_8
-- ----------------------------
INSERT INTO device_8 VALUES ('1', '8', '25', '3', '2017-04-24 11:55:11', '25', null);
INSERT INTO device_8 VALUES ('2', '8', '20', '1', '2017-04-24 11:4:7', '21', null);
INSERT INTO device_8 VALUES ('3', '8', '22', '3', '2017-04-24 11:54:12', '20', null);
INSERT INTO device_8 VALUES ('4', '8', '22', '2', '2017-04-24 7:11:19', '26', null);
INSERT INTO device_8 VALUES ('5', '8', '25', '1', '2017-04-24 6:59:14', '26', null);
INSERT INTO device_8 VALUES ('6', '8', '23', '3', '2017-04-24 9:25:18', '28', null);
INSERT INTO device_8 VALUES ('7', '8', '26', '1', '2017-04-24 17:5:16', '20', null);
INSERT INTO device_8 VALUES ('8', '8', '20', '2', '2017-04-24 7:56:9', '26', null);
INSERT INTO device_8 VALUES ('9', '8', '28', '1', '2017-04-24 21:24:6', '23', null);
INSERT INTO device_8 VALUES ('10', '8', '24', '2', '2017-04-24 19:18:16', '21', null);
INSERT INTO device_8 VALUES ('11', '8', '22', '3', '2017-04-24 18:53:47', '24', null);
INSERT INTO device_8 VALUES ('12', '8', '23', '1', '2017-04-24 23:18:56', '28', null);
INSERT INTO device_8 VALUES ('13', '8', '20', '3', '2017-04-24 3:58:40', '21', null);
INSERT INTO device_8 VALUES ('14', '8', '25', '3', '2017-04-24 3:26:40', '22', null);
INSERT INTO device_8 VALUES ('15', '8', '20', '3', '2017-04-24 10:31:9', '20', null);
INSERT INTO device_8 VALUES ('16', '8', '25', '3', '2017-04-24 3:39:47', '28', null);
INSERT INTO device_8 VALUES ('17', '8', '28', '2', '2017-04-24 12:15:53', '28', null);
INSERT INTO device_8 VALUES ('18', '8', '23', '3', '2017-04-24 9:13:37', '22', null);
INSERT INTO device_8 VALUES ('19', '8', '20', '3', '2017-04-24 19:19:50', '28', null);
INSERT INTO device_8 VALUES ('20', '8', '28', '1', '2017-04-24 7:48:4', '22', null);
INSERT INTO device_8 VALUES ('21', '8', '20', '1', '2017-04-24 3:15:7', '28', null);
INSERT INTO device_8 VALUES ('22', '8', '22', '2', '2017-04-24 11:8:17', '20', null);
INSERT INTO device_8 VALUES ('23', '8', '22', '3', '2017-04-24 21:24:16', '23', null);
INSERT INTO device_8 VALUES ('24', '8', '23', '2', '2017-04-24 12:41:2', '26', null);
INSERT INTO device_8 VALUES ('25', '8', '24', '2', '2017-04-24 10:29:49', '25', null);

-- ----------------------------
-- Table structure for `device_9`
-- ----------------------------
DROP TABLE IF EXISTS `device_9`;
CREATE TABLE `device_9` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DEVICE_ID` text,
  `HUMIDITY` float DEFAULT NULL,
  `STYLE` int(11) DEFAULT NULL,
  `DATE` text,
  `TEMPERATURE` float DEFAULT NULL,
  `VERIFY_REPORT_ID` text,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of device_9
-- ----------------------------
INSERT INTO device_9 VALUES ('1', '9', '20', '1', '2017-04-24 19:2:35', '22', null);
INSERT INTO device_9 VALUES ('2', '9', '26', '2', '2017-04-24 7:38:17', '21', null);
INSERT INTO device_9 VALUES ('3', '9', '27', '1', '2017-04-24 2:1:26', '27', null);
INSERT INTO device_9 VALUES ('4', '9', '24', '1', '2017-04-24 17:7:46', '27', null);
INSERT INTO device_9 VALUES ('5', '9', '26', '3', '2017-04-24 15:3:8', '20', null);
INSERT INTO device_9 VALUES ('6', '9', '22', '1', '2017-04-24 9:41:40', '25', null);
INSERT INTO device_9 VALUES ('7', '9', '25', '3', '2017-04-24 6:31:13', '22', null);
INSERT INTO device_9 VALUES ('8', '9', '24', '3', '2017-04-24 3:5:16', '28', null);
INSERT INTO device_9 VALUES ('9', '9', '22', '2', '2017-04-24 5:34:4', '26', null);
INSERT INTO device_9 VALUES ('10', '9', '21', '2', '2017-04-24 8:23:42', '26', null);
INSERT INTO device_9 VALUES ('11', '9', '20', '1', '2017-04-24 15:51:27', '23', null);
INSERT INTO device_9 VALUES ('12', '9', '23', '3', '2017-04-24 23:4:49', '20', null);
INSERT INTO device_9 VALUES ('13', '9', '26', '1', '2017-04-24 15:3:21', '23', null);
INSERT INTO device_9 VALUES ('14', '9', '24', '1', '2017-04-24 9:9:25', '25', null);
INSERT INTO device_9 VALUES ('15', '9', '26', '1', '2017-04-24 22:55:50', '28', null);
INSERT INTO device_9 VALUES ('16', '9', '26', '3', '2017-04-24 6:55:17', '20', null);
INSERT INTO device_9 VALUES ('17', '9', '20', '3', '2017-04-24 7:8:46', '26', null);
INSERT INTO device_9 VALUES ('18', '9', '25', '1', '2017-04-24 2:10:59', '22', null);
INSERT INTO device_9 VALUES ('19', '9', '23', '1', '2017-04-24 18:35:40', '28', null);
INSERT INTO device_9 VALUES ('20', '9', '20', '1', '2017-04-24 2:48:57', '25', null);
INSERT INTO device_9 VALUES ('21', '9', '24', '1', '2017-04-24 14:15:24', '25', null);
INSERT INTO device_9 VALUES ('22', '9', '25', '3', '2017-04-24 22:4:27', '26', null);
INSERT INTO device_9 VALUES ('23', '9', '27', '3', '2017-04-24 9:36:56', '28', null);
INSERT INTO device_9 VALUES ('24', '9', '23', '2', '2017-04-24 12:2:29', '27', null);
INSERT INTO device_9 VALUES ('25', '9', '25', '2', '2017-04-24 12:25:54', '27', null);
INSERT INTO device_9 VALUES ('26', '9', '23', '2', '2017-04-24 5:16:10', '23', null);
INSERT INTO device_9 VALUES ('27', '9', '22', '3', '2017-04-24 21:8:40', '25', null);
INSERT INTO device_9 VALUES ('28', '9', '27', '1', '2017-04-24 13:55:44', '22', null);
INSERT INTO device_9 VALUES ('29', '9', '27', '2', '2017-04-24 16:12:35', '20', null);
INSERT INTO device_9 VALUES ('30', '9', '28', '1', '2017-04-24 6:12:6', '25', null);
INSERT INTO device_9 VALUES ('31', '9', '21', '3', '2017-04-24 10:46:36', '21', null);
INSERT INTO device_9 VALUES ('32', '9', '22', '2', '2017-04-24 9:15:39', '27', null);
INSERT INTO device_9 VALUES ('33', '9', '20', '2', '2017-04-24 6:29:26', '24', null);
INSERT INTO device_9 VALUES ('34', '9', '20', '3', '2017-04-24 1:31:33', '20', null);
INSERT INTO device_9 VALUES ('35', '9', '27', '2', '2017-04-24 14:28:57', '20', null);
INSERT INTO device_9 VALUES ('36', '9', '22', '3', '2017-04-24 20:48:15', '22', null);
INSERT INTO device_9 VALUES ('37', '9', '20', '2', '2017-04-24 9:26:48', '28', null);
INSERT INTO device_9 VALUES ('38', '9', '26', '2', '2017-04-24 20:5:25', '21', null);
INSERT INTO device_9 VALUES ('39', '9', '21', '1', '2017-04-24 22:28:27', '21', null);
INSERT INTO device_9 VALUES ('40', '9', '24', '1', '2017-04-24 11:52:41', '21', null);
INSERT INTO device_9 VALUES ('41', '9', '28', '1', '2017-04-24 18:31:9', '28', null);
INSERT INTO device_9 VALUES ('42', '9', '27', '3', '2017-04-24 15:56:35', '22', null);
INSERT INTO device_9 VALUES ('43', '9', '27', '1', '2017-04-24 23:40:59', '21', null);
INSERT INTO device_9 VALUES ('44', '9', '24', '3', '2017-04-24 22:45:38', '20', null);
INSERT INTO device_9 VALUES ('45', '9', '23', '3', '2017-04-24 6:54:7', '20', null);
INSERT INTO device_9 VALUES ('46', '9', '24', '3', '2017-04-24 7:55:31', '23', null);
INSERT INTO device_9 VALUES ('47', '9', '28', '1', '2017-04-24 1:40:54', '23', null);
INSERT INTO device_9 VALUES ('48', '9', '23', '1', '2017-04-24 17:45:48', '28', null);
INSERT INTO device_9 VALUES ('49', '9', '21', '3', '2017-04-24 3:21:2', '20', null);
INSERT INTO device_9 VALUES ('50', '9', '28', '2', '2017-04-24 16:52:33', '24', null);
INSERT INTO device_9 VALUES ('51', '9', '27', '1', '2017-04-24 14:43:28', '26', null);
INSERT INTO device_9 VALUES ('52', '9', '22', '2', '2017-04-24 13:32:18', '28', null);
INSERT INTO device_9 VALUES ('53', '9', '23', '3', '2017-04-24 23:15:10', '28', null);
INSERT INTO device_9 VALUES ('54', '9', '22', '3', '2017-04-24 23:32:20', '23', null);
INSERT INTO device_9 VALUES ('55', '9', '26', '1', '2017-04-24 12:52:26', '25', null);
INSERT INTO device_9 VALUES ('56', '9', '24', '3', '2017-04-24 21:14:20', '25', null);
INSERT INTO device_9 VALUES ('57', '9', '27', '2', '2017-04-24 9:5:33', '25', null);
INSERT INTO device_9 VALUES ('58', '9', '24', '3', '2017-04-24 20:23:53', '20', null);
