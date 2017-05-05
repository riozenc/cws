/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : cws

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2017-05-05 16:43:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for chill_car_info
-- ----------------------------
DROP TABLE IF EXISTS `chill_car_info`;
CREATE TABLE `chill_car_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(30) DEFAULT NULL,
  `TYPES` varchar(30) DEFAULT NULL,
  `VOLUME` varchar(30) DEFAULT NULL,
  `FAN_NUM` varchar(30) DEFAULT NULL,
  `ENTRANCE_NUM` int(11) DEFAULT NULL,
  `GOODS_SHELVES` int(11) DEFAULT NULL,
  `PROBE_NUM` int(11) DEFAULT NULL,
  `MANUFACTOR` varchar(30) DEFAULT NULL,
  `DIS_MAP` varchar(100) DEFAULT NULL,
  `REMARK` varchar(100) DEFAULT NULL,
  `STATUS` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='chill car冷藏车';

-- ----------------------------
-- Records of chill_car_info
-- ----------------------------
INSERT INTO `chill_car_info` VALUES ('5', '大汽车', '100S', '90S', '1', '1', null, '1', '海康摄像头', '/cws/sds_file/微信对接流程图.png', null, '1');

-- ----------------------------
-- Table structure for cold_storage_info
-- ----------------------------
DROP TABLE IF EXISTS `cold_storage_info`;
CREATE TABLE `cold_storage_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(30) DEFAULT NULL,
  `TYPES` varchar(30) DEFAULT NULL,
  `VOLUME` varchar(30) DEFAULT NULL,
  `AREA` varchar(30) DEFAULT NULL,
  `FAN_NUM` int(11) DEFAULT NULL,
  `FAN_MAIN_NUM` int(11) DEFAULT NULL,
  `FAN_SPARE_NUM` int(11) DEFAULT NULL,
  `ENTRANCE_NUM` int(11) DEFAULT NULL,
  `GOODS_SHELVES` int(11) DEFAULT NULL,
  `PROBE_NUM` int(11) DEFAULT NULL,
  `MANUFACTOR` varchar(30) DEFAULT NULL,
  `DIS_MAP` varchar(100) DEFAULT NULL,
  `REMARK` varchar(100) DEFAULT NULL,
  `STATUS` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='���Cold storage';

-- ----------------------------
-- Records of cold_storage_info
-- ----------------------------
INSERT INTO `cold_storage_info` VALUES ('1', '冷库名称', '15', '1', '12', '1', '1', '1', '1', '1', '1', '1', '/cws/sds_file/0-1-企业列表.jpg', '1', '1');

-- ----------------------------
-- Table structure for common_param_info
-- ----------------------------
DROP TABLE IF EXISTS `common_param_info`;
CREATE TABLE `common_param_info` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `TYPE` varchar(20) DEFAULT NULL,
  `NAME` varchar(20) DEFAULT NULL,
  `VALUE` varchar(20) DEFAULT NULL,
  `REMARK` varchar(100) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `STATUS` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of common_param_info
-- ----------------------------
INSERT INTO `common_param_info` VALUES ('1', 'VERIFY_TYPE', '冷库', '1', null, '2017-04-08 22:00:33', '2017-04-10 23:06:42', '1');
INSERT INTO `common_param_info` VALUES ('2', 'POST_TYPE', '验证设计人员', '1', null, '2017-04-10 22:53:15', '2017-04-10 22:53:17', '1');
INSERT INTO `common_param_info` VALUES ('3', 'POST_TYPE', '验证实施人员', '2', null, '2017-04-10 22:53:28', '2017-04-10 22:53:30', '1');
INSERT INTO `common_param_info` VALUES ('4', 'DUTIES_TYPE', '协助组织实施', '1', null, '2017-04-10 22:55:00', '2017-04-10 22:55:02', '1');
INSERT INTO `common_param_info` VALUES ('5', 'POST_TYPE', '验证组负责人', '3', null, '2017-04-10 23:04:33', '2017-04-10 23:09:33', '1');
INSERT INTO `common_param_info` VALUES ('6', 'VERIFY_TYPE', '冷藏车', '2', null, '2017-04-10 23:07:06', '2017-04-10 23:07:21', '1');
INSERT INTO `common_param_info` VALUES ('10', 'DUTIES_TYPE', '组织协调、监督实施、复核关键数据', '3', null, '2017-04-10 23:26:14', null, '1');
INSERT INTO `common_param_info` VALUES ('11', 'VERIFY_TYPE', '保温箱', '3', '不能改', '2017-05-03 22:34:01', null, '1');

-- ----------------------------
-- Table structure for company_host_rel
-- ----------------------------
DROP TABLE IF EXISTS `company_host_rel`;
CREATE TABLE `company_host_rel` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `COMPANY_ID` int(11) DEFAULT NULL,
  `HOST_ID` int(11) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `REMARK` varchar(100) DEFAULT NULL,
  `STAUTS` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='��ҵ������ϵ��';

-- ----------------------------
-- Records of company_host_rel
-- ----------------------------
INSERT INTO `company_host_rel` VALUES ('1', '1', '1', '2017-04-15 20:31:23', null, '1');

-- ----------------------------
-- Table structure for company_info
-- ----------------------------
DROP TABLE IF EXISTS `company_info`;
CREATE TABLE `company_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(50) DEFAULT NULL,
  `LINKMAN` varchar(20) DEFAULT NULL,
  `PHONE` varchar(20) DEFAULT NULL,
  `ADDRESS` varchar(100) DEFAULT NULL,
  `REMARK` varchar(100) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `STATUS` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='��ҵ��';

-- ----------------------------
-- Records of company_info
-- ----------------------------
INSERT INTO `company_info` VALUES ('1', '天安门', '123', '123', '123', '123', '2017-04-26 23:13:07', '1');
INSERT INTO `company_info` VALUES ('2', '山东艾欧特集团', null, null, null, null, null, '0');

-- ----------------------------
-- Table structure for company_point_rel
-- ----------------------------
DROP TABLE IF EXISTS `company_point_rel`;
CREATE TABLE `company_point_rel` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `COMPANY_ID` int(11) DEFAULT NULL,
  `POINT_ID` int(11) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `REMARK` varchar(100) DEFAULT NULL,
  `STATUS` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='企业测点关系表';

-- ----------------------------
-- Records of company_point_rel
-- ----------------------------
INSERT INTO `company_point_rel` VALUES ('1', '1', '5', '2017-04-15 20:29:14', null, '2');
INSERT INTO `company_point_rel` VALUES ('2', '1', '6', '2017-04-15 20:30:20', null, '2');
INSERT INTO `company_point_rel` VALUES ('3', '1', '7', '2017-05-05 15:33:21', null, '2');
INSERT INTO `company_point_rel` VALUES ('4', '1', '8', '2017-05-05 16:26:39', null, '2');

-- ----------------------------
-- Table structure for company_report_rel
-- ----------------------------
DROP TABLE IF EXISTS `company_report_rel`;
CREATE TABLE `company_report_rel` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `COMPANY_ID` int(11) DEFAULT NULL,
  `REPORT_NO` varchar(64) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `REMARK` varchar(100) DEFAULT NULL,
  `STATUS` smallint(6) DEFAULT NULL COMMENT '1未完成\r\n            2已完成',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='企业与验证报告关系表';

-- ----------------------------
-- Records of company_report_rel
-- ----------------------------
INSERT INTO `company_report_rel` VALUES ('4', '1', '1_1493045541961', '2017-04-24 22:52:59', '55', '1');

-- ----------------------------
-- Table structure for company_verify_rel
-- ----------------------------
DROP TABLE IF EXISTS `company_verify_rel`;
CREATE TABLE `company_verify_rel` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `COMPANY_ID` int(11) DEFAULT NULL,
  `VERIFY_ID` int(11) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `REMARK` varchar(100) DEFAULT NULL,
  `STATUS` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='企业与验证对象关系表。\r\n验证对象包括：冷库、冷藏车等';

-- ----------------------------
-- Records of company_verify_rel
-- ----------------------------
INSERT INTO `company_verify_rel` VALUES ('1', '1', '99', '2017-03-29 23:01:10', '测试关系', '1');
INSERT INTO `company_verify_rel` VALUES ('4', '1', '107', '2017-05-03 23:35:54', '2', '1');
INSERT INTO `company_verify_rel` VALUES ('5', '1', '108', '2017-05-05 16:26:03', '的', '1');

-- ----------------------------
-- Table structure for device_1
-- ----------------------------
DROP TABLE IF EXISTS `device_1`;
CREATE TABLE `device_1` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE` text,
  `VERIFY_REPORT_ID` text,
  `TEMPERATURE` float DEFAULT NULL,
  `STYLE` int(11) DEFAULT NULL,
  `HUMIDITY` float DEFAULT NULL,
  `DEVICE_ID` text,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of device_1
-- ----------------------------
INSERT INTO `device_1` VALUES ('1', '2015-12-24 21:52:31', '2345', '23.5', '1', '32', '1');
INSERT INTO `device_1` VALUES ('2', '2017-04-24 14:41:49', '4', '27', '3', '26', '1');
INSERT INTO `device_1` VALUES ('3', '2017-04-24 22:21:24', '9', '28', '1', '27', '1');
INSERT INTO `device_1` VALUES ('4', '2017-04-24 12:28:41', '6', '20', '1', '26', '1');
INSERT INTO `device_1` VALUES ('5', '2017-04-24 12:55:3', '10', '27', '1', '24', '1');
INSERT INTO `device_1` VALUES ('6', '2017-04-24 7:53:28', '10', '25', '2', '22', '1');
INSERT INTO `device_1` VALUES ('7', '2017-04-24 1:41:4', '2', '22', '2', '28', '1');
INSERT INTO `device_1` VALUES ('8', '2017-04-24 12:23:54', '3', '25', '2', '27', '1');
INSERT INTO `device_1` VALUES ('9', '2017-04-24 11:51:1', '5', '25', '1', '23', '1');
INSERT INTO `device_1` VALUES ('10', '2017-04-24 9:35:17', '8', '20', '2', '24', '1');
INSERT INTO `device_1` VALUES ('11', '2017-04-24 7:43:31', '2', '27', '2', '23', '1');
INSERT INTO `device_1` VALUES ('12', '2017-04-24 3:8:30', '3', '24', '3', '23', '1');
INSERT INTO `device_1` VALUES ('13', '2017-04-24 20:23:37', '10', '22', '3', '24', '1');
INSERT INTO `device_1` VALUES ('14', '2017-04-24 15:23:52', '2', '22', '2', '23', '1');
INSERT INTO `device_1` VALUES ('15', '2017-04-24 2:42:10', '4', '22', '1', '26', '1');
INSERT INTO `device_1` VALUES ('16', '2017-04-24 5:38:9', '7', '28', '2', '21', '1');
INSERT INTO `device_1` VALUES ('17', '2017-04-24 16:38:19', '2', '24', '3', '23', '1');
INSERT INTO `device_1` VALUES ('18', '2017-04-24 3:57:2', '6', '20', '2', '20', '1');
INSERT INTO `device_1` VALUES ('19', '2017-04-24 21:38:20', '9', '26', '1', '24', '1');
INSERT INTO `device_1` VALUES ('20', '2017-04-24 14:49:28', '5', '27', '3', '21', '1');
INSERT INTO `device_1` VALUES ('21', '2017-04-24 19:4:4', '3', '21', '3', '25', '1');
INSERT INTO `device_1` VALUES ('22', '2017-04-24 9:36:43', '3', '26', '2', '27', '1');
INSERT INTO `device_1` VALUES ('23', '2017-04-24 18:4:24', '4', '20', '2', '24', '1');
INSERT INTO `device_1` VALUES ('24', '2017-04-24 8:2:54', '8', '28', '2', '24', '1');
INSERT INTO `device_1` VALUES ('25', '2017-04-24 5:35:1', '8', '27', '2', '27', '1');
INSERT INTO `device_1` VALUES ('26', '2017-04-24 12:19:44', '3', '21', '1', '28', '1');
INSERT INTO `device_1` VALUES ('27', '2017-04-24 23:2:52', '4', '25', '1', '23', '1');
INSERT INTO `device_1` VALUES ('28', '2017-04-24 18:18:30', '7', '28', '3', '20', '1');
INSERT INTO `device_1` VALUES ('29', '2017-04-24 23:51:35', '7', '27', '3', '22', '1');
INSERT INTO `device_1` VALUES ('30', '2017-04-24 6:43:27', '3', '27', '1', '27', '1');
INSERT INTO `device_1` VALUES ('31', '2017-04-24 15:53:1', '9', '26', '3', '25', '1');
INSERT INTO `device_1` VALUES ('32', '2017-04-24 5:23:7', '1', '20', '3', '28', '1');
INSERT INTO `device_1` VALUES ('33', '2017-04-24 12:34:10', '6', '27', '2', '27', '1');
INSERT INTO `device_1` VALUES ('34', '2017-04-24 13:16:15', '5', '23', '2', '27', '1');
INSERT INTO `device_1` VALUES ('35', '2017-04-24 15:9:29', '8', '22', '1', '25', '1');
INSERT INTO `device_1` VALUES ('36', '2017-04-24 10:37:13', '7', '23', '2', '22', '1');
INSERT INTO `device_1` VALUES ('37', '2017-04-24 14:1:7', '9', '26', '3', '27', '1');
INSERT INTO `device_1` VALUES ('38', '2017-04-24 9:19:20', '4', '26', '1', '28', '1');
INSERT INTO `device_1` VALUES ('39', '2017-04-24 20:42:30', '9', '23', '1', '21', '1');
INSERT INTO `device_1` VALUES ('40', '2017-04-24 11:39:25', '6', '23', '1', '26', '1');
INSERT INTO `device_1` VALUES ('41', '2017-04-24 21:57:46', '4', '23', '2', '28', '1');
INSERT INTO `device_1` VALUES ('42', '2017-04-24 14:52:33', '10', '23', '3', '21', '1');
INSERT INTO `device_1` VALUES ('43', '2017-04-24 6:45:36', '1', '28', '1', '22', '1');
INSERT INTO `device_1` VALUES ('44', '2017-04-24 23:2:58', '1', '25', '2', '28', '1');
INSERT INTO `device_1` VALUES ('45', '2017-04-24 5:47:55', '9', '27', '1', '27', '1');
INSERT INTO `device_1` VALUES ('46', '2017-04-24 21:4:43', '7', '24', '2', '20', '1');
INSERT INTO `device_1` VALUES ('47', '2017-04-24 9:49:1', '6', '21', '1', '27', '1');
INSERT INTO `device_1` VALUES ('48', '2017-04-24 14:52:9', '2', '20', '3', '28', '1');
INSERT INTO `device_1` VALUES ('49', '2017-04-24 20:29:19', '2', '28', '3', '27', '1');
INSERT INTO `device_1` VALUES ('50', '2017-04-24 7:4:35', '2', '24', '3', '26', '1');
INSERT INTO `device_1` VALUES ('51', '2017-04-24 4:54:48', '9', '27', '3', '28', '1');
INSERT INTO `device_1` VALUES ('52', '2017-04-24 23:52:5', '10', '21', '1', '25', '1');
INSERT INTO `device_1` VALUES ('53', '2017-04-24 10:41:21', '6', '23', '3', '23', '1');
INSERT INTO `device_1` VALUES ('54', '2017-04-24 8:59:45', '2', '20', '1', '27', '1');
INSERT INTO `device_1` VALUES ('55', '2017-04-24 8:35:28', '4', '28', '3', '26', '1');
INSERT INTO `device_1` VALUES ('56', '2017-04-24 20:19:50', '9', '24', '1', '24', '1');
INSERT INTO `device_1` VALUES ('57', '2017-04-24 22:44:37', '3', '28', '2', '21', '1');
INSERT INTO `device_1` VALUES ('58', '2017-04-24 19:11:8', '6', '25', '1', '27', '1');
INSERT INTO `device_1` VALUES ('59', '2017-04-24 9:8:6', '8', '23', '1', '20', '1');
INSERT INTO `device_1` VALUES ('60', '2017-04-24 7:10:7', '5', '26', '2', '28', '1');
INSERT INTO `device_1` VALUES ('61', '2017-04-24 21:58:40', '9', '26', '1', '28', '1');
INSERT INTO `device_1` VALUES ('62', '2017-04-24 14:40:2', '3', '24', '2', '26', '1');
INSERT INTO `device_1` VALUES ('63', '2017-04-24 15:59:5', '1', '26', '1', '25', '1');

-- ----------------------------
-- Table structure for device_10
-- ----------------------------
DROP TABLE IF EXISTS `device_10`;
CREATE TABLE `device_10` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE` text,
  `VERIFY_REPORT_ID` text,
  `TEMPERATURE` float DEFAULT NULL,
  `STYLE` int(11) DEFAULT NULL,
  `HUMIDITY` float DEFAULT NULL,
  `DEVICE_ID` text,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of device_10
-- ----------------------------
INSERT INTO `device_10` VALUES ('1', '2017-04-24 16:15:54', '10', '26', '1', '20', '10');
INSERT INTO `device_10` VALUES ('2', '2017-04-24 3:33:34', '2', '27', '2', '21', '10');
INSERT INTO `device_10` VALUES ('3', '2017-04-24 16:29:58', '2', '23', '3', '20', '10');
INSERT INTO `device_10` VALUES ('4', '2017-04-24 19:14:9', '6', '28', '3', '26', '10');
INSERT INTO `device_10` VALUES ('5', '2017-04-24 19:48:59', '5', '24', '2', '20', '10');
INSERT INTO `device_10` VALUES ('6', '2017-04-24 16:22:50', '6', '26', '3', '24', '10');
INSERT INTO `device_10` VALUES ('7', '2017-04-24 13:45:40', '3', '24', '2', '26', '10');
INSERT INTO `device_10` VALUES ('8', '2017-04-24 3:24:43', '6', '23', '1', '20', '10');
INSERT INTO `device_10` VALUES ('9', '2017-04-24 16:34:41', '10', '25', '1', '20', '10');
INSERT INTO `device_10` VALUES ('10', '2017-04-24 17:59:12', '5', '25', '3', '23', '10');
INSERT INTO `device_10` VALUES ('11', '2017-04-24 19:12:40', '9', '23', '1', '27', '10');
INSERT INTO `device_10` VALUES ('12', '2017-04-24 12:53:9', '7', '22', '3', '27', '10');
INSERT INTO `device_10` VALUES ('13', '2017-04-24 14:44:41', '5', '24', '2', '24', '10');
INSERT INTO `device_10` VALUES ('14', '2017-04-24 7:25:35', '5', '22', '1', '27', '10');
INSERT INTO `device_10` VALUES ('15', '2017-04-24 18:20:23', '5', '22', '2', '25', '10');
INSERT INTO `device_10` VALUES ('16', '2017-04-24 17:59:16', '10', '27', '2', '20', '10');
INSERT INTO `device_10` VALUES ('17', '2017-04-24 4:45:24', '4', '27', '1', '26', '10');
INSERT INTO `device_10` VALUES ('18', '2017-04-24 17:38:8', '9', '26', '1', '22', '10');
INSERT INTO `device_10` VALUES ('19', '2017-04-24 12:18:50', '4', '26', '2', '21', '10');
INSERT INTO `device_10` VALUES ('20', '2017-04-24 13:2:49', '4', '26', '3', '20', '10');
INSERT INTO `device_10` VALUES ('21', '2017-04-24 5:52:17', '5', '27', '3', '24', '10');
INSERT INTO `device_10` VALUES ('22', '2017-04-24 2:38:43', '3', '23', '1', '26', '10');
INSERT INTO `device_10` VALUES ('23', '2017-04-24 11:45:22', '10', '21', '3', '20', '10');
INSERT INTO `device_10` VALUES ('24', '2017-04-24 2:44:44', '9', '28', '3', '27', '10');
INSERT INTO `device_10` VALUES ('25', '2017-04-24 3:23:21', '7', '21', '2', '21', '10');
INSERT INTO `device_10` VALUES ('26', '2017-04-24 16:14:59', '8', '21', '2', '25', '10');
INSERT INTO `device_10` VALUES ('27', '2017-04-24 23:3:8', '3', '25', '3', '24', '10');
INSERT INTO `device_10` VALUES ('28', '2017-04-24 15:37:4', '1', '23', '2', '28', '10');
INSERT INTO `device_10` VALUES ('29', '2017-04-24 17:52:23', '9', '23', '2', '24', '10');
INSERT INTO `device_10` VALUES ('30', '2017-04-24 21:59:19', '2', '26', '1', '28', '10');
INSERT INTO `device_10` VALUES ('31', '2017-04-24 13:20:50', '9', '25', '3', '25', '10');
INSERT INTO `device_10` VALUES ('32', '2017-04-24 6:9:11', '4', '23', '3', '22', '10');
INSERT INTO `device_10` VALUES ('33', '2017-04-24 3:28:16', '5', '24', '3', '24', '10');
INSERT INTO `device_10` VALUES ('34', '2017-04-24 8:32:49', '7', '27', '3', '23', '10');
INSERT INTO `device_10` VALUES ('35', '2017-04-24 10:52:13', '3', '20', '3', '23', '10');
INSERT INTO `device_10` VALUES ('36', '2017-04-24 1:47:50', '3', '25', '1', '23', '10');
INSERT INTO `device_10` VALUES ('37', '2017-04-24 17:43:16', '2', '24', '1', '24', '10');
INSERT INTO `device_10` VALUES ('38', '2017-04-24 18:53:57', '8', '23', '3', '21', '10');
INSERT INTO `device_10` VALUES ('39', '2017-04-24 11:39:51', '1', '20', '2', '20', '10');
INSERT INTO `device_10` VALUES ('40', '2017-04-24 13:23:53', '2', '22', '2', '23', '10');
INSERT INTO `device_10` VALUES ('41', '2017-04-24 18:17:55', '6', '26', '1', '28', '10');
INSERT INTO `device_10` VALUES ('42', '2017-04-24 21:41:38', '5', '20', '3', '21', '10');
INSERT INTO `device_10` VALUES ('43', '2017-04-24 14:40:56', '10', '22', '3', '28', '10');
INSERT INTO `device_10` VALUES ('44', '2017-04-24 19:46:55', '6', '24', '3', '21', '10');
INSERT INTO `device_10` VALUES ('45', '2017-04-24 23:3:12', '1', '24', '3', '26', '10');
INSERT INTO `device_10` VALUES ('46', '2017-04-24 17:12:21', '4', '25', '1', '23', '10');
INSERT INTO `device_10` VALUES ('47', '2017-04-24 13:47:6', '9', '20', '3', '28', '10');
INSERT INTO `device_10` VALUES ('48', '2017-04-24 7:42:46', '6', '23', '3', '22', '10');
INSERT INTO `device_10` VALUES ('49', '2017-04-24 20:15:32', '9', '27', '2', '25', '10');
INSERT INTO `device_10` VALUES ('50', '2017-04-24 20:5:44', '5', '21', '3', '23', '10');
INSERT INTO `device_10` VALUES ('51', '2017-04-24 10:20:18', '8', '20', '3', '21', '10');
INSERT INTO `device_10` VALUES ('52', '2017-04-24 7:52:20', '5', '28', '2', '27', '10');
INSERT INTO `device_10` VALUES ('53', '2017-04-24 19:27:41', '7', '26', '3', '27', '10');
INSERT INTO `device_10` VALUES ('54', '2017-04-24 2:59:31', '9', '26', '1', '28', '10');
INSERT INTO `device_10` VALUES ('55', '2017-04-24 8:4:5', '3', '20', '3', '25', '10');
INSERT INTO `device_10` VALUES ('56', '2017-04-24 5:12:41', '7', '25', '1', '25', '10');
INSERT INTO `device_10` VALUES ('57', '2017-04-24 13:11:39', '4', '20', '1', '26', '10');
INSERT INTO `device_10` VALUES ('58', '2017-04-24 9:30:14', '9', '28', '2', '25', '10');
INSERT INTO `device_10` VALUES ('59', '2017-04-24 21:44:19', '7', '25', '1', '20', '10');
INSERT INTO `device_10` VALUES ('60', '2017-04-24 12:18:43', '8', '27', '2', '25', '10');
INSERT INTO `device_10` VALUES ('61', '2017-04-24 19:44:30', '10', '27', '3', '23', '10');
INSERT INTO `device_10` VALUES ('62', '2017-04-24 22:30:53', '7', '28', '1', '26', '10');

-- ----------------------------
-- Table structure for device_2
-- ----------------------------
DROP TABLE IF EXISTS `device_2`;
CREATE TABLE `device_2` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE` text,
  `VERIFY_REPORT_ID` text,
  `TEMPERATURE` float DEFAULT NULL,
  `STYLE` int(11) DEFAULT NULL,
  `HUMIDITY` float DEFAULT NULL,
  `DEVICE_ID` text,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of device_2
-- ----------------------------
INSERT INTO `device_2` VALUES ('1', '2017-04-24 18:56:7', '4', '24', '3', '25', '2');
INSERT INTO `device_2` VALUES ('2', '2017-04-24 7:38:52', '2', '24', '3', '25', '2');
INSERT INTO `device_2` VALUES ('3', '2017-04-24 2:37:21', '1', '24', '3', '25', '2');
INSERT INTO `device_2` VALUES ('4', '2017-04-24 5:54:14', '10', '20', '1', '21', '2');
INSERT INTO `device_2` VALUES ('5', '2017-04-24 20:46:45', '3', '22', '2', '24', '2');
INSERT INTO `device_2` VALUES ('6', '2017-04-24 17:49:17', '8', '20', '3', '22', '2');
INSERT INTO `device_2` VALUES ('7', '2017-04-24 11:33:41', '1', '25', '1', '26', '2');
INSERT INTO `device_2` VALUES ('8', '2017-04-24 21:25:58', '4', '22', '1', '22', '2');
INSERT INTO `device_2` VALUES ('9', '2017-04-24 4:45:9', '10', '25', '2', '24', '2');
INSERT INTO `device_2` VALUES ('10', '2017-04-24 7:20:22', '7', '26', '2', '20', '2');
INSERT INTO `device_2` VALUES ('11', '2017-04-24 6:54:42', '4', '20', '1', '26', '2');
INSERT INTO `device_2` VALUES ('12', '2017-04-24 1:33:49', '2', '28', '1', '22', '2');
INSERT INTO `device_2` VALUES ('13', '2017-04-24 4:24:51', '9', '27', '3', '22', '2');
INSERT INTO `device_2` VALUES ('14', '2017-04-24 17:34:44', '4', '28', '1', '26', '2');
INSERT INTO `device_2` VALUES ('15', '2017-04-24 8:24:31', '8', '22', '1', '28', '2');
INSERT INTO `device_2` VALUES ('16', '2017-04-24 21:57:12', '5', '27', '3', '23', '2');
INSERT INTO `device_2` VALUES ('17', '2017-04-24 20:26:21', '9', '28', '1', '28', '2');
INSERT INTO `device_2` VALUES ('18', '2017-04-24 16:38:22', '4', '27', '1', '23', '2');
INSERT INTO `device_2` VALUES ('19', '2017-04-24 10:28:2', '7', '20', '2', '22', '2');
INSERT INTO `device_2` VALUES ('20', '2017-04-24 2:45:49', '5', '25', '1', '26', '2');
INSERT INTO `device_2` VALUES ('21', '2017-04-24 10:15:42', '1', '22', '3', '22', '2');
INSERT INTO `device_2` VALUES ('22', '2017-04-24 22:21:37', '3', '28', '2', '24', '2');
INSERT INTO `device_2` VALUES ('23', '2017-04-24 20:51:27', '3', '25', '2', '27', '2');
INSERT INTO `device_2` VALUES ('24', '2017-04-24 8:47:38', '8', '21', '1', '27', '2');
INSERT INTO `device_2` VALUES ('25', '2017-04-24 9:59:12', '1', '27', '1', '20', '2');
INSERT INTO `device_2` VALUES ('26', '2017-04-24 4:4:49', '5', '26', '3', '28', '2');
INSERT INTO `device_2` VALUES ('27', '2017-04-24 13:4:15', '2', '21', '1', '25', '2');
INSERT INTO `device_2` VALUES ('28', '2017-04-24 8:42:3', '4', '28', '3', '24', '2');
INSERT INTO `device_2` VALUES ('29', '2017-04-24 22:27:9', '7', '27', '3', '22', '2');
INSERT INTO `device_2` VALUES ('30', '2017-04-24 10:31:47', '3', '26', '3', '22', '2');
INSERT INTO `device_2` VALUES ('31', '2017-04-24 10:36:9', '10', '22', '2', '20', '2');
INSERT INTO `device_2` VALUES ('32', '2017-04-24 4:59:49', '2', '26', '2', '21', '2');
INSERT INTO `device_2` VALUES ('33', '2017-04-24 11:19:12', '6', '23', '1', '28', '2');
INSERT INTO `device_2` VALUES ('34', '2017-04-24 15:22:14', '3', '27', '3', '25', '2');
INSERT INTO `device_2` VALUES ('35', '2017-04-24 13:12:26', '10', '21', '3', '24', '2');
INSERT INTO `device_2` VALUES ('36', '2017-04-24 15:9:42', '3', '25', '3', '26', '2');
INSERT INTO `device_2` VALUES ('37', '2017-04-24 20:46:18', '8', '20', '2', '21', '2');
INSERT INTO `device_2` VALUES ('38', '2017-04-24 17:22:48', '3', '24', '3', '23', '2');
INSERT INTO `device_2` VALUES ('39', '2017-04-24 20:18:20', '9', '25', '1', '20', '2');
INSERT INTO `device_2` VALUES ('40', '2017-04-24 23:52:5', '2', '23', '3', '28', '2');
INSERT INTO `device_2` VALUES ('41', '2017-04-24 17:20:8', '10', '27', '3', '25', '2');
INSERT INTO `device_2` VALUES ('42', '2017-04-24 14:35:41', '9', '28', '1', '21', '2');
INSERT INTO `device_2` VALUES ('43', '2017-04-24 10:42:30', '3', '28', '1', '22', '2');
INSERT INTO `device_2` VALUES ('44', '2017-04-24 23:24:12', '5', '23', '2', '23', '2');
INSERT INTO `device_2` VALUES ('45', '2017-04-24 10:48:58', '10', '26', '2', '27', '2');
INSERT INTO `device_2` VALUES ('46', '2017-04-24 23:10:36', '6', '23', '3', '20', '2');
INSERT INTO `device_2` VALUES ('47', '2017-04-24 21:5:24', '1', '28', '1', '21', '2');
INSERT INTO `device_2` VALUES ('48', '2017-04-24 17:22:27', '2', '21', '3', '24', '2');
INSERT INTO `device_2` VALUES ('49', '2017-04-24 11:46:40', '10', '23', '3', '28', '2');
INSERT INTO `device_2` VALUES ('50', '2017-04-24 10:30:33', '3', '24', '3', '25', '2');
INSERT INTO `device_2` VALUES ('51', '2017-04-24 17:2:39', '5', '25', '1', '27', '2');
INSERT INTO `device_2` VALUES ('52', '2017-04-24 11:49:31', '2', '26', '2', '26', '2');
INSERT INTO `device_2` VALUES ('53', '2017-04-24 2:14:46', '2', '24', '2', '27', '2');
INSERT INTO `device_2` VALUES ('54', '2017-04-24 6:42:11', '9', '20', '1', '24', '2');
INSERT INTO `device_2` VALUES ('55', '2017-04-24 16:11:39', '10', '22', '1', '22', '2');
INSERT INTO `device_2` VALUES ('56', '2017-04-24 8:6:33', '8', '23', '3', '25', '2');
INSERT INTO `device_2` VALUES ('57', '2017-04-24 18:41:4', '5', '21', '3', '20', '2');
INSERT INTO `device_2` VALUES ('58', '2017-04-24 3:12:1', '2', '20', '1', '20', '2');
INSERT INTO `device_2` VALUES ('59', '2017-04-24 5:36:35', '7', '25', '3', '20', '2');
INSERT INTO `device_2` VALUES ('60', '2017-04-24 18:16:36', '7', '25', '1', '28', '2');
INSERT INTO `device_2` VALUES ('61', '2017-04-24 6:43:5', '8', '21', '1', '21', '2');
INSERT INTO `device_2` VALUES ('62', '2017-04-24 11:57:39', '9', '28', '1', '28', '2');
INSERT INTO `device_2` VALUES ('63', '2017-04-24 4:13:32', '9', '23', '2', '23', '2');
INSERT INTO `device_2` VALUES ('64', '2017-04-24 15:3:43', '3', '20', '1', '28', '2');
INSERT INTO `device_2` VALUES ('65', '2017-04-24 2:49:31', '5', '21', '2', '24', '2');
INSERT INTO `device_2` VALUES ('66', '2017-04-24 9:34:43', '2', '23', '2', '21', '2');

-- ----------------------------
-- Table structure for device_3
-- ----------------------------
DROP TABLE IF EXISTS `device_3`;
CREATE TABLE `device_3` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE` text,
  `VERIFY_REPORT_ID` text,
  `TEMPERATURE` float DEFAULT NULL,
  `STYLE` int(11) DEFAULT NULL,
  `HUMIDITY` float DEFAULT NULL,
  `DEVICE_ID` text,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of device_3
-- ----------------------------
INSERT INTO `device_3` VALUES ('1', '2017-04-24 4:21:20', '2', '26', '1', '24', '3');
INSERT INTO `device_3` VALUES ('2', '2017-04-24 9:16:3', '7', '23', '3', '20', '3');
INSERT INTO `device_3` VALUES ('3', '2017-04-24 7:58:22', '10', '20', '1', '20', '3');
INSERT INTO `device_3` VALUES ('4', '2017-04-24 13:4:41', '10', '27', '1', '28', '3');
INSERT INTO `device_3` VALUES ('5', '2017-04-24 13:11:35', '1', '28', '3', '28', '3');
INSERT INTO `device_3` VALUES ('6', '2017-04-24 16:59:29', '6', '20', '2', '21', '3');
INSERT INTO `device_3` VALUES ('7', '2017-04-24 10:35:49', '4', '26', '1', '22', '3');
INSERT INTO `device_3` VALUES ('8', '2017-04-24 14:25:37', '5', '21', '2', '21', '3');
INSERT INTO `device_3` VALUES ('9', '2017-04-24 20:30:19', '2', '20', '2', '26', '3');
INSERT INTO `device_3` VALUES ('10', '2017-04-24 8:51:32', '7', '21', '2', '28', '3');
INSERT INTO `device_3` VALUES ('11', '2017-04-24 21:59:40', '7', '25', '1', '20', '3');
INSERT INTO `device_3` VALUES ('12', '2017-04-24 17:27:18', '3', '24', '1', '22', '3');
INSERT INTO `device_3` VALUES ('13', '2017-04-24 12:39:56', '3', '20', '2', '28', '3');
INSERT INTO `device_3` VALUES ('14', '2017-04-24 9:43:41', '8', '21', '2', '21', '3');
INSERT INTO `device_3` VALUES ('15', '2017-04-24 21:6:13', '9', '20', '1', '23', '3');
INSERT INTO `device_3` VALUES ('16', '2017-04-24 12:10:48', '2', '25', '3', '25', '3');
INSERT INTO `device_3` VALUES ('17', '2017-04-24 18:37:36', '10', '22', '3', '28', '3');
INSERT INTO `device_3` VALUES ('18', '2017-04-24 7:39:55', '4', '27', '3', '20', '3');
INSERT INTO `device_3` VALUES ('19', '2017-04-24 19:13:29', '10', '26', '1', '21', '3');
INSERT INTO `device_3` VALUES ('20', '2017-04-24 17:38:58', '9', '21', '1', '28', '3');
INSERT INTO `device_3` VALUES ('21', '2017-04-24 8:46:13', '5', '23', '3', '20', '3');
INSERT INTO `device_3` VALUES ('22', '2017-04-24 3:26:8', '10', '28', '1', '20', '3');
INSERT INTO `device_3` VALUES ('23', '2017-04-24 16:35:3', '9', '21', '1', '26', '3');
INSERT INTO `device_3` VALUES ('24', '2017-04-24 13:1:47', '8', '25', '2', '28', '3');
INSERT INTO `device_3` VALUES ('25', '2017-04-24 16:23:33', '2', '24', '2', '28', '3');
INSERT INTO `device_3` VALUES ('26', '2017-04-24 9:34:35', '6', '27', '1', '28', '3');
INSERT INTO `device_3` VALUES ('27', '2017-04-24 22:23:9', '3', '20', '2', '21', '3');
INSERT INTO `device_3` VALUES ('28', '2017-04-24 9:24:32', '10', '24', '3', '26', '3');
INSERT INTO `device_3` VALUES ('29', '2017-04-24 7:25:46', '6', '27', '3', '22', '3');
INSERT INTO `device_3` VALUES ('30', '2017-04-24 3:12:19', '6', '21', '1', '26', '3');
INSERT INTO `device_3` VALUES ('31', '2017-04-24 8:42:20', '9', '26', '1', '20', '3');
INSERT INTO `device_3` VALUES ('32', '2017-04-24 6:49:46', '1', '21', '2', '20', '3');
INSERT INTO `device_3` VALUES ('33', '2017-04-24 6:38:10', '5', '20', '2', '28', '3');
INSERT INTO `device_3` VALUES ('34', '2017-04-24 17:33:8', '5', '26', '2', '21', '3');
INSERT INTO `device_3` VALUES ('35', '2017-04-24 14:42:10', '3', '24', '3', '21', '3');
INSERT INTO `device_3` VALUES ('36', '2017-04-24 7:10:49', '5', '28', '1', '27', '3');
INSERT INTO `device_3` VALUES ('37', '2017-04-24 22:3:30', '7', '21', '2', '24', '3');
INSERT INTO `device_3` VALUES ('38', '2017-04-24 8:59:28', '1', '27', '2', '23', '3');
INSERT INTO `device_3` VALUES ('39', '2017-04-24 20:55:12', '8', '25', '1', '24', '3');
INSERT INTO `device_3` VALUES ('40', '2017-04-24 11:11:23', '7', '25', '2', '28', '3');
INSERT INTO `device_3` VALUES ('41', '2017-04-24 17:13:20', '7', '27', '3', '28', '3');
INSERT INTO `device_3` VALUES ('42', '2017-04-24 16:6:16', '9', '20', '1', '25', '3');
INSERT INTO `device_3` VALUES ('43', '2017-04-24 19:29:34', '9', '26', '2', '20', '3');
INSERT INTO `device_3` VALUES ('44', '2017-04-24 6:8:26', '4', '25', '2', '25', '3');
INSERT INTO `device_3` VALUES ('45', '2017-04-24 5:26:12', '5', '24', '2', '22', '3');
INSERT INTO `device_3` VALUES ('46', '2017-04-24 16:27:45', '1', '23', '3', '27', '3');
INSERT INTO `device_3` VALUES ('47', '2017-04-24 20:2:30', '3', '20', '2', '22', '3');
INSERT INTO `device_3` VALUES ('48', '2017-04-24 8:3:9', '6', '27', '2', '28', '3');
INSERT INTO `device_3` VALUES ('49', '2017-04-24 13:20:38', '9', '20', '3', '24', '3');
INSERT INTO `device_3` VALUES ('50', '2017-04-24 9:48:35', '8', '25', '1', '25', '3');
INSERT INTO `device_3` VALUES ('51', '2017-04-24 3:22:28', '9', '20', '1', '21', '3');
INSERT INTO `device_3` VALUES ('52', '2017-04-24 7:55:34', '7', '28', '3', '27', '3');
INSERT INTO `device_3` VALUES ('53', '2017-04-24 22:6:58', '10', '27', '1', '26', '3');
INSERT INTO `device_3` VALUES ('54', '2017-04-24 1:59:26', '1', '26', '1', '20', '3');
INSERT INTO `device_3` VALUES ('55', '2017-04-24 10:40:51', '9', '22', '1', '27', '3');
INSERT INTO `device_3` VALUES ('56', '2017-04-24 8:29:53', '7', '22', '2', '27', '3');
INSERT INTO `device_3` VALUES ('57', '2017-04-24 15:39:14', '9', '25', '3', '27', '3');
INSERT INTO `device_3` VALUES ('58', '2017-04-24 1:27:35', '5', '28', '1', '26', '3');
INSERT INTO `device_3` VALUES ('59', '2017-04-24 23:52:47', '10', '21', '3', '20', '3');
INSERT INTO `device_3` VALUES ('60', '2017-04-24 2:47:45', '9', '28', '1', '21', '3');
INSERT INTO `device_3` VALUES ('61', '2017-04-24 23:43:8', '5', '20', '2', '27', '3');
INSERT INTO `device_3` VALUES ('62', '2017-04-24 13:7:58', '4', '24', '3', '24', '3');
INSERT INTO `device_3` VALUES ('63', '2017-04-24 22:10:58', '7', '27', '2', '21', '3');

-- ----------------------------
-- Table structure for device_4
-- ----------------------------
DROP TABLE IF EXISTS `device_4`;
CREATE TABLE `device_4` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE` text,
  `VERIFY_REPORT_ID` text,
  `TEMPERATURE` float DEFAULT NULL,
  `STYLE` int(11) DEFAULT NULL,
  `HUMIDITY` float DEFAULT NULL,
  `DEVICE_ID` text,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of device_4
-- ----------------------------
INSERT INTO `device_4` VALUES ('1', '2017-04-24 8:28:16', '1', '21', '1', '27', '4');
INSERT INTO `device_4` VALUES ('2', '2017-04-24 23:59:7', '4', '21', '1', '27', '4');
INSERT INTO `device_4` VALUES ('3', '2017-04-24 2:21:13', '1', '28', '3', '23', '4');
INSERT INTO `device_4` VALUES ('4', '2017-04-24 12:45:12', '2', '20', '1', '25', '4');
INSERT INTO `device_4` VALUES ('5', '2017-04-24 23:15:38', '1', '21', '3', '22', '4');
INSERT INTO `device_4` VALUES ('6', '2017-04-24 19:4:42', '6', '28', '3', '21', '4');
INSERT INTO `device_4` VALUES ('7', '2017-04-24 18:24:3', '4', '26', '3', '28', '4');
INSERT INTO `device_4` VALUES ('8', '2017-04-24 11:36:52', '7', '27', '3', '27', '4');
INSERT INTO `device_4` VALUES ('9', '2017-04-24 1:41:48', '10', '21', '1', '27', '4');
INSERT INTO `device_4` VALUES ('10', '2017-04-24 4:17:14', '1', '24', '3', '27', '4');
INSERT INTO `device_4` VALUES ('11', '2017-04-24 8:37:1', '7', '21', '3', '20', '4');
INSERT INTO `device_4` VALUES ('12', '2017-04-24 2:7:16', '9', '28', '2', '27', '4');
INSERT INTO `device_4` VALUES ('13', '2017-04-24 20:57:12', '10', '20', '2', '25', '4');
INSERT INTO `device_4` VALUES ('14', '2017-04-24 16:38:9', '3', '28', '1', '27', '4');
INSERT INTO `device_4` VALUES ('15', '2017-04-24 19:49:47', '3', '28', '1', '23', '4');
INSERT INTO `device_4` VALUES ('16', '2017-04-24 14:3:27', '8', '24', '1', '21', '4');
INSERT INTO `device_4` VALUES ('17', '2017-04-24 10:4:49', '4', '27', '1', '27', '4');
INSERT INTO `device_4` VALUES ('18', '2017-04-24 21:36:18', '7', '28', '2', '27', '4');
INSERT INTO `device_4` VALUES ('19', '2017-04-24 15:45:55', '2', '24', '3', '22', '4');
INSERT INTO `device_4` VALUES ('20', '2017-04-24 9:24:55', '4', '23', '3', '23', '4');
INSERT INTO `device_4` VALUES ('21', '2017-04-24 2:8:53', '8', '26', '2', '26', '4');
INSERT INTO `device_4` VALUES ('22', '2017-04-24 16:47:51', '1', '20', '3', '22', '4');
INSERT INTO `device_4` VALUES ('23', '2017-04-24 20:31:11', '5', '27', '2', '22', '4');
INSERT INTO `device_4` VALUES ('24', '2017-04-24 6:5:18', '3', '25', '3', '28', '4');
INSERT INTO `device_4` VALUES ('25', '2017-04-24 8:26:5', '8', '20', '2', '25', '4');
INSERT INTO `device_4` VALUES ('26', '2017-04-24 21:40:42', '3', '21', '3', '27', '4');
INSERT INTO `device_4` VALUES ('27', '2017-04-24 3:38:44', '7', '20', '3', '21', '4');
INSERT INTO `device_4` VALUES ('28', '2017-04-24 10:56:8', '4', '28', '3', '26', '4');
INSERT INTO `device_4` VALUES ('29', '2017-04-24 16:38:1', '5', '27', '1', '23', '4');
INSERT INTO `device_4` VALUES ('30', '2017-04-24 13:31:4', '9', '22', '2', '25', '4');
INSERT INTO `device_4` VALUES ('31', '2017-04-24 13:42:23', '8', '20', '3', '28', '4');
INSERT INTO `device_4` VALUES ('32', '2017-04-24 22:9:30', '8', '24', '3', '25', '4');
INSERT INTO `device_4` VALUES ('33', '2017-04-24 5:47:6', '2', '25', '3', '21', '4');
INSERT INTO `device_4` VALUES ('34', '2017-04-24 2:56:40', '7', '27', '2', '24', '4');
INSERT INTO `device_4` VALUES ('35', '2017-04-24 17:15:29', '9', '27', '3', '25', '4');
INSERT INTO `device_4` VALUES ('36', '2017-04-24 15:10:54', '9', '27', '3', '24', '4');
INSERT INTO `device_4` VALUES ('37', '2017-04-24 9:44:21', '10', '20', '1', '26', '4');
INSERT INTO `device_4` VALUES ('38', '2017-04-24 23:7:18', '2', '24', '1', '26', '4');
INSERT INTO `device_4` VALUES ('39', '2017-04-24 15:7:24', '1', '24', '2', '24', '4');
INSERT INTO `device_4` VALUES ('40', '2017-04-24 22:5:53', '4', '28', '3', '24', '4');
INSERT INTO `device_4` VALUES ('41', '2017-04-24 1:16:4', '10', '24', '3', '25', '4');
INSERT INTO `device_4` VALUES ('42', '2017-04-24 10:35:19', '6', '28', '1', '21', '4');
INSERT INTO `device_4` VALUES ('43', '2017-04-24 9:28:2', '9', '26', '1', '22', '4');
INSERT INTO `device_4` VALUES ('44', '2017-04-24 9:39:7', '8', '28', '3', '22', '4');
INSERT INTO `device_4` VALUES ('45', '2017-04-24 23:52:36', '5', '27', '1', '23', '4');
INSERT INTO `device_4` VALUES ('46', '2017-04-24 21:20:3', '10', '26', '2', '20', '4');
INSERT INTO `device_4` VALUES ('47', '2017-04-24 13:3:47', '7', '26', '1', '27', '4');
INSERT INTO `device_4` VALUES ('48', '2017-04-24 4:20:34', '7', '28', '3', '27', '4');
INSERT INTO `device_4` VALUES ('49', '2017-04-24 11:13:34', '8', '22', '3', '28', '4');
INSERT INTO `device_4` VALUES ('50', '2017-04-24 7:17:27', '9', '21', '1', '20', '4');
INSERT INTO `device_4` VALUES ('51', '2017-04-24 3:57:26', '7', '25', '1', '25', '4');
INSERT INTO `device_4` VALUES ('52', '2017-04-24 7:58:55', '2', '21', '3', '24', '4');
INSERT INTO `device_4` VALUES ('53', '2017-04-24 3:59:16', '9', '22', '2', '26', '4');
INSERT INTO `device_4` VALUES ('54', '2017-04-24 11:44:8', '1', '28', '1', '22', '4');
INSERT INTO `device_4` VALUES ('55', '2017-04-24 7:17:40', '7', '27', '1', '20', '4');
INSERT INTO `device_4` VALUES ('56', '2017-04-24 12:22:38', '8', '20', '3', '27', '4');
INSERT INTO `device_4` VALUES ('57', '2017-04-24 10:4:35', '3', '22', '2', '21', '4');
INSERT INTO `device_4` VALUES ('58', '2017-04-24 22:40:55', '2', '25', '3', '27', '4');
INSERT INTO `device_4` VALUES ('59', '2017-04-24 3:2:40', '3', '24', '1', '28', '4');
INSERT INTO `device_4` VALUES ('60', '2017-04-24 9:4:36', '8', '21', '2', '20', '4');
INSERT INTO `device_4` VALUES ('61', '2017-04-24 18:50:56', '9', '23', '3', '22', '4');
INSERT INTO `device_4` VALUES ('62', '2017-04-24 8:57:3', '9', '26', '2', '24', '4');
INSERT INTO `device_4` VALUES ('63', '2017-04-24 23:25:11', '4', '27', '3', '23', '4');
INSERT INTO `device_4` VALUES ('64', '2017-04-24 16:49:22', '1', '23', '1', '20', '4');
INSERT INTO `device_4` VALUES ('65', '2017-04-24 5:49:2', '10', '26', '1', '26', '4');

-- ----------------------------
-- Table structure for device_5
-- ----------------------------
DROP TABLE IF EXISTS `device_5`;
CREATE TABLE `device_5` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE` text,
  `VERIFY_REPORT_ID` text,
  `TEMPERATURE` float DEFAULT NULL,
  `STYLE` int(11) DEFAULT NULL,
  `HUMIDITY` float DEFAULT NULL,
  `DEVICE_ID` text,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of device_5
-- ----------------------------
INSERT INTO `device_5` VALUES ('1', '2017-04-24 7:55:39', '5', '23', '3', '24', '5');
INSERT INTO `device_5` VALUES ('2', '2017-04-24 15:9:33', '4', '23', '1', '28', '5');
INSERT INTO `device_5` VALUES ('3', '2017-04-24 5:38:52', '2', '21', '1', '25', '5');
INSERT INTO `device_5` VALUES ('4', '2017-04-24 22:35:6', '2', '20', '2', '23', '5');
INSERT INTO `device_5` VALUES ('5', '2017-04-24 2:24:20', '5', '25', '1', '25', '5');
INSERT INTO `device_5` VALUES ('6', '2017-04-24 4:16:38', '6', '26', '1', '27', '5');
INSERT INTO `device_5` VALUES ('7', '2017-04-24 1:41:28', '4', '24', '1', '25', '5');
INSERT INTO `device_5` VALUES ('8', '2017-04-24 6:18:21', '2', '25', '1', '21', '5');
INSERT INTO `device_5` VALUES ('9', '2017-04-24 15:31:28', '10', '26', '3', '23', '5');
INSERT INTO `device_5` VALUES ('10', '2017-04-24 13:32:49', '6', '22', '3', '21', '5');
INSERT INTO `device_5` VALUES ('11', '2017-04-24 3:17:40', '5', '21', '1', '20', '5');
INSERT INTO `device_5` VALUES ('12', '2017-04-24 4:43:43', '6', '27', '3', '22', '5');
INSERT INTO `device_5` VALUES ('13', '2017-04-24 3:29:15', '6', '21', '1', '28', '5');
INSERT INTO `device_5` VALUES ('14', '2017-04-24 17:2:5', '3', '25', '3', '25', '5');
INSERT INTO `device_5` VALUES ('15', '2017-04-24 16:37:30', '7', '24', '1', '25', '5');
INSERT INTO `device_5` VALUES ('16', '2017-04-24 11:42:7', '10', '21', '2', '25', '5');
INSERT INTO `device_5` VALUES ('17', '2017-04-24 19:59:30', '1', '20', '1', '21', '5');
INSERT INTO `device_5` VALUES ('18', '2017-04-24 16:49:19', '2', '20', '1', '26', '5');
INSERT INTO `device_5` VALUES ('19', '2017-04-24 20:26:23', '5', '27', '3', '28', '5');
INSERT INTO `device_5` VALUES ('20', '2017-04-24 17:44:24', '10', '20', '3', '28', '5');
INSERT INTO `device_5` VALUES ('21', '2017-04-24 4:38:27', '10', '24', '2', '20', '5');
INSERT INTO `device_5` VALUES ('22', '2017-04-24 10:35:27', '1', '28', '3', '27', '5');
INSERT INTO `device_5` VALUES ('23', '2017-04-24 4:57:6', '1', '20', '2', '25', '5');
INSERT INTO `device_5` VALUES ('24', '2017-04-24 20:59:6', '7', '27', '1', '24', '5');
INSERT INTO `device_5` VALUES ('25', '2017-04-24 23:37:1', '7', '23', '1', '21', '5');
INSERT INTO `device_5` VALUES ('26', '2017-04-24 4:59:55', '7', '23', '3', '25', '5');
INSERT INTO `device_5` VALUES ('27', '2017-04-24 18:53:43', '1', '21', '2', '25', '5');
INSERT INTO `device_5` VALUES ('28', '2017-04-24 5:20:15', '4', '28', '3', '28', '5');
INSERT INTO `device_5` VALUES ('29', '2017-04-24 8:56:55', '10', '24', '2', '24', '5');
INSERT INTO `device_5` VALUES ('30', '2017-04-24 11:16:55', '3', '24', '1', '26', '5');
INSERT INTO `device_5` VALUES ('31', '2017-04-24 7:47:10', '1', '25', '3', '23', '5');
INSERT INTO `device_5` VALUES ('32', '2017-04-24 9:6:22', '10', '22', '3', '21', '5');
INSERT INTO `device_5` VALUES ('33', '2017-04-24 18:47:15', '10', '21', '3', '24', '5');
INSERT INTO `device_5` VALUES ('34', '2017-04-24 10:14:5', '5', '26', '1', '28', '5');
INSERT INTO `device_5` VALUES ('35', '2017-04-24 6:2:57', '4', '22', '3', '21', '5');
INSERT INTO `device_5` VALUES ('36', '2017-04-24 16:35:51', '3', '23', '3', '23', '5');
INSERT INTO `device_5` VALUES ('37', '2017-04-24 14:45:35', '2', '23', '2', '23', '5');
INSERT INTO `device_5` VALUES ('38', '2017-04-24 23:17:53', '9', '21', '2', '24', '5');
INSERT INTO `device_5` VALUES ('39', '2017-04-24 18:2:25', '1', '27', '1', '23', '5');
INSERT INTO `device_5` VALUES ('40', '2017-04-24 14:1:22', '8', '21', '2', '24', '5');
INSERT INTO `device_5` VALUES ('41', '2017-04-24 14:51:11', '9', '20', '1', '23', '5');
INSERT INTO `device_5` VALUES ('42', '2017-04-24 15:46:30', '6', '25', '3', '22', '5');
INSERT INTO `device_5` VALUES ('43', '2017-04-24 8:57:11', '7', '27', '3', '20', '5');
INSERT INTO `device_5` VALUES ('44', '2017-04-24 12:14:6', '5', '22', '1', '26', '5');
INSERT INTO `device_5` VALUES ('45', '2017-04-24 14:1:19', '1', '20', '3', '25', '5');
INSERT INTO `device_5` VALUES ('46', '2017-04-24 20:3:41', '5', '27', '1', '26', '5');
INSERT INTO `device_5` VALUES ('47', '2017-04-24 9:55:48', '8', '23', '3', '23', '5');
INSERT INTO `device_5` VALUES ('48', '2017-04-24 2:19:9', '6', '26', '3', '26', '5');
INSERT INTO `device_5` VALUES ('49', '2017-04-24 11:13:48', '4', '22', '1', '27', '5');
INSERT INTO `device_5` VALUES ('50', '2017-04-24 16:52:14', '1', '26', '3', '25', '5');
INSERT INTO `device_5` VALUES ('51', '2017-04-24 15:8:11', '6', '21', '1', '27', '5');
INSERT INTO `device_5` VALUES ('52', '2017-04-24 22:56:47', '3', '24', '2', '26', '5');
INSERT INTO `device_5` VALUES ('53', '2017-04-24 13:16:40', '7', '20', '2', '24', '5');
INSERT INTO `device_5` VALUES ('54', '2017-04-24 16:6:3', '3', '20', '3', '25', '5');

-- ----------------------------
-- Table structure for device_6
-- ----------------------------
DROP TABLE IF EXISTS `device_6`;
CREATE TABLE `device_6` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE` text,
  `VERIFY_REPORT_ID` text,
  `TEMPERATURE` float DEFAULT NULL,
  `STYLE` int(11) DEFAULT NULL,
  `HUMIDITY` float DEFAULT NULL,
  `DEVICE_ID` text,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of device_6
-- ----------------------------
INSERT INTO `device_6` VALUES ('1', '2017-04-24 1:32:44', '1_1493045541961', '26', '1', '20', '6');
INSERT INTO `device_6` VALUES ('2', '2017-04-24 3:10:19', '1_1493045541961', '21', '2', '26', '6');
INSERT INTO `device_6` VALUES ('3', '2017-04-24 16:54:3', '1_1493045541961', '24', '3', '20', '6');
INSERT INTO `device_6` VALUES ('4', '2017-04-24 20:29:23', '1_1493045541961', '20', '1', '28', '6');
INSERT INTO `device_6` VALUES ('5', '2017-04-24 6:24:45', '1_1493045541961', '25', '3', '25', '6');
INSERT INTO `device_6` VALUES ('6', '2017-04-24 6:35:53', '1_1493045541961', '27', '3', '27', '6');
INSERT INTO `device_6` VALUES ('7', '2017-04-24 6:23:37', '1_1493045541961', '23', '1', '27', '6');
INSERT INTO `device_6` VALUES ('8', '2017-04-24 9:33:26', '1_1493045541961', '23', '2', '22', '6');
INSERT INTO `device_6` VALUES ('9', '2017-04-24 23:32:23', '1_1493045541961', '24', '3', '26', '6');
INSERT INTO `device_6` VALUES ('10', '2017-04-24 8:7:36', '1_1493045541961', '28', '3', '20', '6');
INSERT INTO `device_6` VALUES ('11', '2017-04-24 3:4:10', '1_1493045541961', '24', '3', '24', '6');
INSERT INTO `device_6` VALUES ('12', '2017-04-24 18:42:25', '1_1493045541961', '27', '1', '25', '6');
INSERT INTO `device_6` VALUES ('13', '2017-04-24 3:47:14', '1_1493045541961', '23', '1', '27', '6');
INSERT INTO `device_6` VALUES ('14', '2017-04-24 15:56:12', '1_1493045541961', '24', '2', '24', '6');
INSERT INTO `device_6` VALUES ('15', '2017-04-24 20:38:5', '1_1493045541961', '22', '2', '24', '6');
INSERT INTO `device_6` VALUES ('16', '2017-04-24 14:35:29', '1_1493045541961', '26', '2', '25', '6');
INSERT INTO `device_6` VALUES ('17', '2017-04-24 2:6:5', '1_1493045541961', '26', '1', '25', '6');
INSERT INTO `device_6` VALUES ('18', '2017-04-24 2:35:9', '1_1493045541961', '27', '3', '24', '6');
INSERT INTO `device_6` VALUES ('19', '2017-04-24 23:43:49', '1_1493045541961', '22', '1', '24', '6');
INSERT INTO `device_6` VALUES ('20', '2017-04-24 13:30:15', '1_1493045541961', '24', '2', '25', '6');
INSERT INTO `device_6` VALUES ('21', '2017-04-24 11:41:48', '1_1493045541961', '24', '3', '20', '6');
INSERT INTO `device_6` VALUES ('22', '2017-04-24 22:47:45', '1_1493045541961', '22', '1', '26', '6');
INSERT INTO `device_6` VALUES ('23', '2017-04-24 23:8:15', '1_1493045541961', '20', '1', '26', '6');
INSERT INTO `device_6` VALUES ('24', '2017-04-24 8:10:33', '1_1493045541961', '28', '2', '23', '6');
INSERT INTO `device_6` VALUES ('25', '2017-04-24 3:43:28', '1_1493045541961', '20', '1', '21', '6');
INSERT INTO `device_6` VALUES ('26', '2017-04-24 2:11:55', '1_1493045541961', '20', '2', '21', '6');
INSERT INTO `device_6` VALUES ('27', '2017-04-24 20:11:18', '1_1493045541961', '27', '1', '25', '6');
INSERT INTO `device_6` VALUES ('28', '2017-04-24 19:37:53', '1_1493045541961', '22', '2', '23', '6');
INSERT INTO `device_6` VALUES ('29', '2017-04-24 23:14:2', '1_1493045541961', '27', '3', '22', '6');
INSERT INTO `device_6` VALUES ('30', '2017-04-24 16:55:55', '1_1493045541961', '22', '3', '24', '6');
INSERT INTO `device_6` VALUES ('31', '2017-04-24 11:38:10', '1_1493045541961', '28', '2', '26', '6');
INSERT INTO `device_6` VALUES ('32', '2017-04-24 22:34:33', '1_1493045541961', '26', '1', '27', '6');
INSERT INTO `device_6` VALUES ('33', '2017-04-24 22:54:39', '1_1493045541961', '22', '2', '22', '6');
INSERT INTO `device_6` VALUES ('34', '2017-04-24 20:16:26', '1_1493045541961', '20', '2', '23', '6');
INSERT INTO `device_6` VALUES ('35', '2017-04-24 14:42:8', '1_1493045541961', '27', '1', '26', '6');
INSERT INTO `device_6` VALUES ('36', '2017-04-24 2:46:23', '1_1493045541961', '25', '3', '23', '6');
INSERT INTO `device_6` VALUES ('37', '2017-04-24 14:9:43', '1_1493045541961', '27', '2', '25', '6');
INSERT INTO `device_6` VALUES ('38', '2017-04-24 5:22:7', '1_1493045541961', '23', '3', '25', '6');
INSERT INTO `device_6` VALUES ('39', '2017-04-24 17:59:38', '1_1493045541961', '20', '1', '26', '6');
INSERT INTO `device_6` VALUES ('40', '2017-04-24 1:59:2', '1_1493045541961', '28', '2', '27', '6');
INSERT INTO `device_6` VALUES ('41', '2017-04-24 23:11:21', '1_1493045541961', '24', '1', '27', '6');
INSERT INTO `device_6` VALUES ('42', '2017-04-24 12:58:29', '1_1493045541961', '24', '1', '27', '6');
INSERT INTO `device_6` VALUES ('43', '2017-04-24 8:10:8', '1_1493045541961', '25', '1', '20', '6');
INSERT INTO `device_6` VALUES ('44', '2017-04-24 19:6:57', '1_1493045541961', '27', '2', '25', '6');
INSERT INTO `device_6` VALUES ('45', '2017-04-24 20:2:4', '1_1493045541961', '26', '1', '22', '6');
INSERT INTO `device_6` VALUES ('46', '2017-04-24 4:57:58', '1_1493045541961', '20', '1', '28', '6');
INSERT INTO `device_6` VALUES ('47', '2017-04-24 13:42:15', '1_1493045541961', '20', '1', '24', '6');
INSERT INTO `device_6` VALUES ('48', '2017-04-24 10:21:35', '1_1493045541961', '21', '2', '26', '6');
INSERT INTO `device_6` VALUES ('49', '2017-04-24 9:14:13', '1_1493045541961', '27', '2', '20', '6');
INSERT INTO `device_6` VALUES ('50', '2017-04-24 23:7:17', '1_1493045541961', '26', '3', '26', '6');
INSERT INTO `device_6` VALUES ('51', '2017-04-24 6:10:36', '1_1493045541961', '28', '2', '22', '6');
INSERT INTO `device_6` VALUES ('52', '2017-04-24 11:56:22', '1_1493045541961', '24', '3', '20', '6');
INSERT INTO `device_6` VALUES ('53', '2017-04-24 5:58:29', '1_1493045541961', '25', '2', '22', '6');
INSERT INTO `device_6` VALUES ('54', '2017-04-24 5:39:5', '1_1493045541961', '20', '1', '21', '6');

-- ----------------------------
-- Table structure for device_7
-- ----------------------------
DROP TABLE IF EXISTS `device_7`;
CREATE TABLE `device_7` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE` text,
  `VERIFY_REPORT_ID` text,
  `TEMPERATURE` float DEFAULT NULL,
  `STYLE` int(11) DEFAULT NULL,
  `HUMIDITY` float DEFAULT NULL,
  `DEVICE_ID` text,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of device_7
-- ----------------------------
INSERT INTO `device_7` VALUES ('1', '2017-04-24 12:50:55', '3', '24', '1', '24', '7');
INSERT INTO `device_7` VALUES ('2', '2017-04-24 21:10:18', '3', '25', '2', '23', '7');
INSERT INTO `device_7` VALUES ('3', '2017-04-24 20:5:10', '6', '22', '2', '20', '7');
INSERT INTO `device_7` VALUES ('4', '2017-04-24 16:18:48', '7', '24', '1', '26', '7');
INSERT INTO `device_7` VALUES ('5', '2017-04-24 9:59:45', '3', '25', '3', '23', '7');
INSERT INTO `device_7` VALUES ('6', '2017-04-24 18:23:17', '10', '20', '3', '20', '7');
INSERT INTO `device_7` VALUES ('7', '2017-04-24 7:2:43', '3', '24', '3', '20', '7');
INSERT INTO `device_7` VALUES ('8', '2017-04-24 16:24:25', '9', '27', '3', '25', '7');
INSERT INTO `device_7` VALUES ('9', '2017-04-24 21:11:16', '5', '21', '2', '27', '7');
INSERT INTO `device_7` VALUES ('10', '2017-04-24 12:35:30', '2', '28', '2', '24', '7');
INSERT INTO `device_7` VALUES ('11', '2017-04-24 7:14:21', '6', '23', '3', '21', '7');
INSERT INTO `device_7` VALUES ('12', '2017-04-24 18:23:43', '9', '27', '3', '26', '7');
INSERT INTO `device_7` VALUES ('13', '2017-04-24 17:33:27', '7', '20', '2', '21', '7');
INSERT INTO `device_7` VALUES ('14', '2017-04-24 3:44:13', '10', '23', '1', '27', '7');
INSERT INTO `device_7` VALUES ('15', '2017-04-24 8:5:1', '10', '27', '3', '28', '7');
INSERT INTO `device_7` VALUES ('16', '2017-04-24 6:56:17', '4', '22', '2', '23', '7');
INSERT INTO `device_7` VALUES ('17', '2017-04-24 13:4:57', '3', '21', '2', '22', '7');
INSERT INTO `device_7` VALUES ('18', '2017-04-24 6:45:13', '3', '26', '1', '26', '7');
INSERT INTO `device_7` VALUES ('19', '2017-04-24 19:15:40', '5', '26', '3', '23', '7');
INSERT INTO `device_7` VALUES ('20', '2017-04-24 23:3:41', '7', '28', '3', '27', '7');
INSERT INTO `device_7` VALUES ('21', '2017-04-24 23:19:24', '10', '28', '1', '24', '7');
INSERT INTO `device_7` VALUES ('22', '2017-04-24 17:36:32', '3', '28', '3', '25', '7');
INSERT INTO `device_7` VALUES ('23', '2017-04-24 13:8:16', '3', '26', '2', '27', '7');
INSERT INTO `device_7` VALUES ('24', '2017-04-24 20:34:33', '1', '24', '1', '21', '7');
INSERT INTO `device_7` VALUES ('25', '2017-04-24 11:47:36', '6', '20', '2', '23', '7');
INSERT INTO `device_7` VALUES ('26', '2017-04-24 9:51:28', '1', '22', '3', '24', '7');
INSERT INTO `device_7` VALUES ('27', '2017-04-24 5:11:9', '9', '24', '1', '27', '7');
INSERT INTO `device_7` VALUES ('28', '2017-04-24 7:57:53', '9', '26', '3', '23', '7');
INSERT INTO `device_7` VALUES ('29', '2017-04-24 6:58:12', '10', '25', '2', '26', '7');
INSERT INTO `device_7` VALUES ('30', '2017-04-24 11:26:33', '10', '24', '1', '20', '7');
INSERT INTO `device_7` VALUES ('31', '2017-04-24 16:11:47', '3', '22', '3', '20', '7');
INSERT INTO `device_7` VALUES ('32', '2017-04-24 13:37:4', '2', '27', '2', '25', '7');
INSERT INTO `device_7` VALUES ('33', '2017-04-24 3:57:10', '3', '20', '3', '23', '7');
INSERT INTO `device_7` VALUES ('34', '2017-04-24 22:59:18', '9', '26', '3', '20', '7');
INSERT INTO `device_7` VALUES ('35', '2017-04-24 2:13:53', '3', '20', '1', '28', '7');
INSERT INTO `device_7` VALUES ('36', '2017-04-24 7:6:5', '4', '27', '3', '27', '7');
INSERT INTO `device_7` VALUES ('37', '2017-04-24 9:11:44', '9', '21', '2', '21', '7');
INSERT INTO `device_7` VALUES ('38', '2017-04-24 4:46:57', '10', '20', '1', '20', '7');
INSERT INTO `device_7` VALUES ('39', '2017-04-24 23:32:12', '8', '27', '1', '28', '7');
INSERT INTO `device_7` VALUES ('40', '2017-04-24 5:29:37', '9', '20', '3', '23', '7');
INSERT INTO `device_7` VALUES ('41', '2017-04-24 7:21:11', '4', '22', '1', '24', '7');
INSERT INTO `device_7` VALUES ('42', '2017-04-24 2:39:28', '2', '21', '3', '22', '7');
INSERT INTO `device_7` VALUES ('43', '2017-04-24 7:46:6', '10', '28', '2', '28', '7');
INSERT INTO `device_7` VALUES ('44', '2017-04-24 4:51:40', '6', '26', '2', '22', '7');
INSERT INTO `device_7` VALUES ('45', '2017-04-24 13:34:14', '2', '20', '2', '24', '7');
INSERT INTO `device_7` VALUES ('46', '2017-04-24 10:9:32', '1', '22', '2', '23', '7');
INSERT INTO `device_7` VALUES ('47', '2017-04-24 1:40:34', '5', '21', '1', '24', '7');
INSERT INTO `device_7` VALUES ('48', '2017-04-24 9:20:13', '4', '20', '1', '25', '7');
INSERT INTO `device_7` VALUES ('49', '2017-04-24 15:27:52', '5', '24', '3', '21', '7');
INSERT INTO `device_7` VALUES ('50', '2017-04-24 16:10:32', '2', '21', '3', '27', '7');
INSERT INTO `device_7` VALUES ('51', '2017-04-24 9:59:39', '10', '28', '3', '22', '7');
INSERT INTO `device_7` VALUES ('52', '2017-04-24 7:12:51', '6', '21', '1', '21', '7');
INSERT INTO `device_7` VALUES ('53', '2017-04-24 6:55:52', '5', '22', '3', '24', '7');
INSERT INTO `device_7` VALUES ('54', '2017-04-24 23:38:48', '2', '21', '1', '28', '7');
INSERT INTO `device_7` VALUES ('55', '2017-04-24 5:58:25', '3', '20', '1', '25', '7');
INSERT INTO `device_7` VALUES ('56', '2017-04-24 16:47:17', '4', '22', '1', '27', '7');
INSERT INTO `device_7` VALUES ('57', '2017-04-24 19:59:47', '5', '27', '2', '25', '7');
INSERT INTO `device_7` VALUES ('58', '2017-04-24 8:34:55', '8', '24', '1', '28', '7');
INSERT INTO `device_7` VALUES ('59', '2017-04-24 22:2:21', '8', '27', '3', '24', '7');
INSERT INTO `device_7` VALUES ('60', '2017-04-24 20:12:43', '8', '24', '1', '24', '7');
INSERT INTO `device_7` VALUES ('61', '2017-04-24 14:28:42', '7', '27', '2', '21', '7');
INSERT INTO `device_7` VALUES ('62', '2017-04-24 20:23:35', '8', '24', '3', '25', '7');
INSERT INTO `device_7` VALUES ('63', '2017-04-24 17:54:54', '2', '27', '1', '24', '7');

-- ----------------------------
-- Table structure for device_8
-- ----------------------------
DROP TABLE IF EXISTS `device_8`;
CREATE TABLE `device_8` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE` text,
  `VERIFY_REPORT_ID` text,
  `TEMPERATURE` float DEFAULT NULL,
  `STYLE` int(11) DEFAULT NULL,
  `HUMIDITY` float DEFAULT NULL,
  `DEVICE_ID` text,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of device_8
-- ----------------------------
INSERT INTO `device_8` VALUES ('1', '2017-04-24 21:12:52', '3', '27', '1', '22', '8');
INSERT INTO `device_8` VALUES ('2', '2017-04-24 8:49:59', '6', '25', '1', '25', '8');
INSERT INTO `device_8` VALUES ('3', '2017-04-24 1:19:27', '8', '28', '1', '28', '8');
INSERT INTO `device_8` VALUES ('4', '2017-04-24 13:34:21', '3', '22', '3', '20', '8');
INSERT INTO `device_8` VALUES ('5', '2017-04-24 9:31:54', '9', '20', '1', '21', '8');
INSERT INTO `device_8` VALUES ('6', '2017-04-24 21:17:2', '1', '24', '2', '28', '8');
INSERT INTO `device_8` VALUES ('7', '2017-04-24 1:10:41', '7', '27', '2', '25', '8');
INSERT INTO `device_8` VALUES ('8', '2017-04-24 8:9:11', '5', '25', '2', '22', '8');
INSERT INTO `device_8` VALUES ('9', '2017-04-24 13:9:33', '8', '26', '2', '28', '8');
INSERT INTO `device_8` VALUES ('10', '2017-04-24 20:44:49', '1', '21', '1', '27', '8');
INSERT INTO `device_8` VALUES ('11', '2017-04-24 1:48:40', '4', '27', '3', '26', '8');
INSERT INTO `device_8` VALUES ('12', '2017-04-24 15:26:25', '1', '27', '3', '27', '8');
INSERT INTO `device_8` VALUES ('13', '2017-04-24 22:45:15', '5', '23', '1', '26', '8');
INSERT INTO `device_8` VALUES ('14', '2017-04-24 3:11:28', '4', '26', '2', '27', '8');
INSERT INTO `device_8` VALUES ('15', '2017-04-24 10:46:39', '9', '27', '1', '22', '8');
INSERT INTO `device_8` VALUES ('16', '2017-04-24 9:34:13', '1', '20', '1', '21', '8');
INSERT INTO `device_8` VALUES ('17', '2017-04-24 9:4:28', '1', '25', '2', '23', '8');
INSERT INTO `device_8` VALUES ('18', '2017-04-24 9:40:22', '7', '22', '3', '21', '8');
INSERT INTO `device_8` VALUES ('19', '2017-04-24 13:29:43', '10', '21', '2', '22', '8');
INSERT INTO `device_8` VALUES ('20', '2017-04-24 17:35:35', '8', '24', '1', '23', '8');
INSERT INTO `device_8` VALUES ('21', '2017-04-24 4:30:24', '5', '28', '1', '21', '8');
INSERT INTO `device_8` VALUES ('22', '2017-04-24 11:39:54', '10', '20', '2', '20', '8');
INSERT INTO `device_8` VALUES ('23', '2017-04-24 23:27:15', '5', '21', '3', '26', '8');
INSERT INTO `device_8` VALUES ('24', '2017-04-24 16:16:58', '2', '25', '3', '22', '8');
INSERT INTO `device_8` VALUES ('25', '2017-04-24 8:29:47', '9', '26', '2', '21', '8');
INSERT INTO `device_8` VALUES ('26', '2017-04-24 8:36:40', '10', '24', '3', '28', '8');
INSERT INTO `device_8` VALUES ('27', '2017-04-24 9:40:56', '10', '24', '3', '26', '8');
INSERT INTO `device_8` VALUES ('28', '2017-04-24 17:16:25', '2', '21', '3', '20', '8');
INSERT INTO `device_8` VALUES ('29', '2017-04-24 16:26:35', '6', '26', '3', '23', '8');
INSERT INTO `device_8` VALUES ('30', '2017-04-24 21:15:51', '10', '25', '2', '20', '8');
INSERT INTO `device_8` VALUES ('31', '2017-04-24 16:55:11', '2', '28', '2', '27', '8');
INSERT INTO `device_8` VALUES ('32', '2017-04-24 17:30:32', '3', '24', '2', '24', '8');
INSERT INTO `device_8` VALUES ('33', '2017-04-24 18:19:27', '10', '21', '1', '25', '8');
INSERT INTO `device_8` VALUES ('34', '2017-04-24 23:6:2', '9', '23', '3', '28', '8');
INSERT INTO `device_8` VALUES ('35', '2017-04-24 23:55:14', '7', '28', '3', '24', '8');
INSERT INTO `device_8` VALUES ('36', '2017-04-24 21:7:47', '9', '24', '1', '24', '8');
INSERT INTO `device_8` VALUES ('37', '2017-04-24 1:51:19', '1', '28', '2', '21', '8');
INSERT INTO `device_8` VALUES ('38', '2017-04-24 14:2:23', '1', '20', '1', '22', '8');
INSERT INTO `device_8` VALUES ('39', '2017-04-24 11:45:52', '5', '21', '2', '20', '8');
INSERT INTO `device_8` VALUES ('40', '2017-04-24 9:42:9', '7', '26', '3', '24', '8');
INSERT INTO `device_8` VALUES ('41', '2017-04-24 16:53:20', '7', '28', '3', '27', '8');
INSERT INTO `device_8` VALUES ('42', '2017-04-24 15:6:40', '8', '22', '1', '24', '8');
INSERT INTO `device_8` VALUES ('43', '2017-04-24 9:8:39', '10', '21', '3', '21', '8');
INSERT INTO `device_8` VALUES ('44', '2017-04-24 6:20:34', '1', '21', '3', '26', '8');
INSERT INTO `device_8` VALUES ('45', '2017-04-24 8:47:16', '3', '26', '1', '21', '8');
INSERT INTO `device_8` VALUES ('46', '2017-04-24 6:59:35', '10', '24', '2', '22', '8');
INSERT INTO `device_8` VALUES ('47', '2017-04-24 4:52:47', '7', '25', '2', '24', '8');

-- ----------------------------
-- Table structure for device_9
-- ----------------------------
DROP TABLE IF EXISTS `device_9`;
CREATE TABLE `device_9` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE` text,
  `VERIFY_REPORT_ID` text,
  `TEMPERATURE` float DEFAULT NULL,
  `STYLE` int(11) DEFAULT NULL,
  `HUMIDITY` float DEFAULT NULL,
  `DEVICE_ID` text,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of device_9
-- ----------------------------
INSERT INTO `device_9` VALUES ('1', '2017-04-24 7:40:19', '10', '21', '1', '28', '9');
INSERT INTO `device_9` VALUES ('2', '2017-04-24 15:54:16', '4', '25', '1', '26', '9');
INSERT INTO `device_9` VALUES ('3', '2017-04-24 5:33:43', '3', '27', '1', '23', '9');
INSERT INTO `device_9` VALUES ('4', '2017-04-24 20:7:34', '10', '24', '3', '23', '9');
INSERT INTO `device_9` VALUES ('5', '2017-04-24 19:8:3', '9', '23', '1', '26', '9');
INSERT INTO `device_9` VALUES ('6', '2017-04-24 21:57:32', '10', '24', '3', '28', '9');
INSERT INTO `device_9` VALUES ('7', '2017-04-24 10:18:33', '8', '26', '1', '26', '9');
INSERT INTO `device_9` VALUES ('8', '2017-04-24 7:29:6', '4', '24', '3', '24', '9');
INSERT INTO `device_9` VALUES ('9', '2017-04-24 12:22:20', '2', '28', '2', '20', '9');
INSERT INTO `device_9` VALUES ('10', '2017-04-24 5:34:43', '5', '26', '1', '20', '9');
INSERT INTO `device_9` VALUES ('11', '2017-04-24 15:37:1', '3', '25', '3', '20', '9');
INSERT INTO `device_9` VALUES ('12', '2017-04-24 20:21:13', '2', '25', '1', '25', '9');
INSERT INTO `device_9` VALUES ('13', '2017-04-24 2:32:12', '8', '22', '2', '27', '9');
INSERT INTO `device_9` VALUES ('14', '2017-04-24 13:5:27', '2', '20', '1', '26', '9');
INSERT INTO `device_9` VALUES ('15', '2017-04-24 18:35:41', '6', '26', '1', '28', '9');
INSERT INTO `device_9` VALUES ('16', '2017-04-24 17:34:28', '8', '28', '3', '23', '9');
INSERT INTO `device_9` VALUES ('17', '2017-04-24 12:13:38', '10', '21', '2', '21', '9');
INSERT INTO `device_9` VALUES ('18', '2017-04-24 17:22:30', '5', '20', '2', '20', '9');
INSERT INTO `device_9` VALUES ('19', '2017-04-24 23:24:1', '6', '23', '1', '25', '9');
INSERT INTO `device_9` VALUES ('20', '2017-04-24 10:33:29', '6', '25', '1', '23', '9');
INSERT INTO `device_9` VALUES ('21', '2017-04-24 19:29:28', '8', '26', '3', '28', '9');
INSERT INTO `device_9` VALUES ('22', '2017-04-24 22:29:56', '3', '26', '1', '20', '9');
INSERT INTO `device_9` VALUES ('23', '2017-04-24 3:4:36', '1', '22', '1', '24', '9');
INSERT INTO `device_9` VALUES ('24', '2017-04-24 5:41:58', '4', '23', '2', '27', '9');
INSERT INTO `device_9` VALUES ('25', '2017-04-24 13:19:29', '4', '21', '3', '25', '9');
INSERT INTO `device_9` VALUES ('26', '2017-04-24 20:23:57', '9', '22', '2', '23', '9');
INSERT INTO `device_9` VALUES ('27', '2017-04-24 22:26:38', '4', '27', '2', '20', '9');
INSERT INTO `device_9` VALUES ('28', '2017-04-24 5:25:4', '8', '21', '2', '24', '9');
INSERT INTO `device_9` VALUES ('29', '2017-04-24 6:45:5', '7', '28', '2', '27', '9');
INSERT INTO `device_9` VALUES ('30', '2017-04-24 19:55:43', '5', '28', '3', '20', '9');
INSERT INTO `device_9` VALUES ('31', '2017-04-24 2:3:47', '2', '25', '1', '24', '9');
INSERT INTO `device_9` VALUES ('32', '2017-04-24 9:41:36', '10', '20', '2', '20', '9');
INSERT INTO `device_9` VALUES ('33', '2017-04-24 10:51:16', '8', '21', '3', '23', '9');
INSERT INTO `device_9` VALUES ('34', '2017-04-24 18:17:14', '9', '24', '2', '21', '9');
INSERT INTO `device_9` VALUES ('35', '2017-04-24 11:32:18', '2', '21', '1', '23', '9');
INSERT INTO `device_9` VALUES ('36', '2017-04-24 4:43:35', '8', '24', '2', '26', '9');
INSERT INTO `device_9` VALUES ('37', '2017-04-24 14:29:11', '3', '21', '1', '27', '9');
INSERT INTO `device_9` VALUES ('38', '2017-04-24 19:30:27', '7', '20', '1', '23', '9');
INSERT INTO `device_9` VALUES ('39', '2017-04-24 4:37:4', '5', '20', '2', '22', '9');
INSERT INTO `device_9` VALUES ('40', '2017-04-24 5:54:36', '5', '20', '3', '20', '9');
INSERT INTO `device_9` VALUES ('41', '2017-04-24 5:8:58', '6', '25', '2', '25', '9');
INSERT INTO `device_9` VALUES ('42', '2017-04-24 20:43:59', '5', '26', '3', '23', '9');
INSERT INTO `device_9` VALUES ('43', '2017-04-24 9:55:44', '7', '22', '1', '21', '9');
INSERT INTO `device_9` VALUES ('44', '2017-04-24 7:34:11', '3', '24', '1', '23', '9');
INSERT INTO `device_9` VALUES ('45', '2017-04-24 21:55:26', '9', '27', '2', '23', '9');
INSERT INTO `device_9` VALUES ('46', '2017-04-24 16:32:10', '1', '28', '1', '20', '9');
INSERT INTO `device_9` VALUES ('47', '2017-04-24 9:56:56', '9', '26', '3', '23', '9');
INSERT INTO `device_9` VALUES ('48', '2017-04-24 15:37:12', '9', '21', '2', '21', '9');
INSERT INTO `device_9` VALUES ('49', '2017-04-24 9:23:51', '4', '26', '1', '22', '9');
INSERT INTO `device_9` VALUES ('50', '2017-04-24 11:45:42', '8', '20', '2', '27', '9');
INSERT INTO `device_9` VALUES ('51', '2017-04-24 17:12:59', '6', '26', '3', '26', '9');
INSERT INTO `device_9` VALUES ('52', '2017-04-24 13:34:46', '9', '27', '2', '25', '9');
INSERT INTO `device_9` VALUES ('53', '2017-04-24 22:58:38', '8', '28', '3', '21', '9');
INSERT INTO `device_9` VALUES ('54', '2017-04-24 2:42:20', '2', '28', '1', '20', '9');
INSERT INTO `device_9` VALUES ('55', '2017-04-24 18:15:48', '6', '21', '3', '22', '9');
INSERT INTO `device_9` VALUES ('56', '2017-04-24 18:3:20', '8', '26', '1', '24', '9');
INSERT INTO `device_9` VALUES ('57', '2017-04-24 4:17:45', '1', '26', '3', '20', '9');
INSERT INTO `device_9` VALUES ('58', '2017-04-24 18:54:3', '10', '28', '1', '21', '9');
INSERT INTO `device_9` VALUES ('59', '2017-04-24 6:14:15', '5', '22', '3', '20', '9');
INSERT INTO `device_9` VALUES ('60', '2017-04-24 1:21:30', '7', '20', '2', '20', '9');
INSERT INTO `device_9` VALUES ('61', '2017-04-24 18:59:42', '9', '25', '2', '27', '9');
INSERT INTO `device_9` VALUES ('62', '2017-04-24 16:1:1', '10', '26', '1', '21', '9');
INSERT INTO `device_9` VALUES ('63', '2017-04-24 2:28:55', '6', '28', '2', '26', '9');
INSERT INTO `device_9` VALUES ('64', '2017-04-24 10:57:35', '2', '23', '1', '21', '9');

-- ----------------------------
-- Table structure for host_info
-- ----------------------------
DROP TABLE IF EXISTS `host_info`;
CREATE TABLE `host_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(30) DEFAULT NULL,
  `TYPES` varchar(30) DEFAULT NULL,
  `SN_NO` varchar(30) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `REMARK` varchar(100) DEFAULT NULL,
  `STATUS` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of host_info
-- ----------------------------
INSERT INTO `host_info` VALUES ('1', '真的主机', 'TEST.HOST.1', 'SN-HOST-1', '2017-04-15 00:00:00', '.', '1');

-- ----------------------------
-- Table structure for insulation_can_info
-- ----------------------------
DROP TABLE IF EXISTS `insulation_can_info`;
CREATE TABLE `insulation_can_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(30) DEFAULT NULL,
  `BRAND` varchar(30) DEFAULT NULL,
  `TYPES` varchar(30) DEFAULT NULL,
  `VOLUME` varchar(30) DEFAULT NULL,
  `DATE` varchar(30) DEFAULT NULL,
  `OUT_SIZE` varchar(30) DEFAULT NULL,
  `IN_SIZE` varchar(30) DEFAULT NULL,
  `WEIGHT` varchar(30) DEFAULT NULL,
  `THICKNESS` varchar(30) DEFAULT NULL,
  `OUT_MATERIAL` varchar(30) DEFAULT NULL,
  `IN_MATERIAL` varchar(30) DEFAULT NULL,
  `CRYOGEN_BRAND` varchar(30) DEFAULT NULL,
  `CRYOGEN_TYPES` varchar(30) DEFAULT NULL,
  `CRYOGEN_COUNT` int(11) DEFAULT NULL,
  `PROBE_NUM` int(11) DEFAULT NULL,
  `MANUFACTOR` varchar(30) DEFAULT NULL,
  `DIS_MAP` varchar(100) DEFAULT NULL,
  `REMARK` varchar(100) DEFAULT NULL,
  `STATUS` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='insulation can\r\n';

-- ----------------------------
-- Records of insulation_can_info
-- ----------------------------
INSERT INTO `insulation_can_info` VALUES ('1', '箱子', '1', '123', '900', null, null, null, '12', null, null, null, null, null, null, null, null, null, null, '1');

-- ----------------------------
-- Table structure for personnel_duties_info
-- ----------------------------
DROP TABLE IF EXISTS `personnel_duties_info`;
CREATE TABLE `personnel_duties_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(30) DEFAULT NULL,
  `DUTIES_ID` int(11) DEFAULT NULL,
  `COMPANY_ID` int(11) DEFAULT NULL,
  `REMARK` varchar(100) DEFAULT NULL,
  `STATUS` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='duties';

-- ----------------------------
-- Records of personnel_duties_info
-- ----------------------------
INSERT INTO `personnel_duties_info` VALUES ('1', '黑海', '3', '1', null, '1');
INSERT INTO `personnel_duties_info` VALUES ('6', 'dd', '3', '0', null, '1');

-- ----------------------------
-- Table structure for personnel_post_info
-- ----------------------------
DROP TABLE IF EXISTS `personnel_post_info`;
CREATE TABLE `personnel_post_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(30) DEFAULT NULL,
  `POST_ID` int(11) DEFAULT NULL,
  `COMPANY_ID` int(11) DEFAULT NULL,
  `REMARK` varchar(100) DEFAULT NULL,
  `STATUS` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='personnel_post';

-- ----------------------------
-- Records of personnel_post_info
-- ----------------------------
INSERT INTO `personnel_post_info` VALUES ('1', '黑海', '1', '1', '1', '1');
INSERT INTO `personnel_post_info` VALUES ('2', '红海', '2', '1', '1', '1');
INSERT INTO `personnel_post_info` VALUES ('3', '率还', '3', '1', '1', '1');
INSERT INTO `personnel_post_info` VALUES ('5', 'dddd', '3', '1', 'a', '1');

-- ----------------------------
-- Table structure for point_info
-- ----------------------------
DROP TABLE IF EXISTS `point_info`;
CREATE TABLE `point_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NO` varchar(4) DEFAULT NULL,
  `SN_NO` varchar(30) DEFAULT NULL,
  `TYPES` varchar(30) DEFAULT NULL,
  `CHECK_UNIT` varchar(30) DEFAULT NULL,
  `CERTIFICATE_NO` varchar(30) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `VALID_DATE` datetime DEFAULT NULL,
  `REMARK` varchar(100) DEFAULT NULL,
  `STATUS` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='point';

-- ----------------------------
-- Records of point_info
-- ----------------------------
INSERT INTO `point_info` VALUES ('5', '1001', 'SN-01', 'TEST.1', '自测', '911', '2017-04-15 20:29:14', '2017-05-06 00:00:00', '1001', '1');
INSERT INTO `point_info` VALUES ('6', '1002', 'SN-02', 'TEST.1', '自测', '911', '2017-04-15 20:30:20', '2017-05-06 00:00:00', '1002', '1');
INSERT INTO `point_info` VALUES ('7', '1003', 'SN-03', 'TEST.1', '自测', '911', '2017-05-05 15:33:21', '2017-05-31 00:00:00', '的', '1');
INSERT INTO `point_info` VALUES ('8', '1004', 'SN-04', 'TEST.1', '自测', '911', '2017-05-05 16:26:39', '2017-06-01 00:00:00', null, '1');

-- ----------------------------
-- Table structure for report_describe
-- ----------------------------
DROP TABLE IF EXISTS `report_describe`;
CREATE TABLE `report_describe` (
  `REPORT_NO` varchar(64) NOT NULL DEFAULT '',
  `VERIFY_MODEL_NAME` varchar(64) DEFAULT NULL,
  `LENGTH` varchar(8) DEFAULT NULL,
  `WIDTH` varchar(8) DEFAULT NULL,
  `HEIGHT` varchar(8) DEFAULT NULL,
  `VOLUME` varchar(8) DEFAULT NULL,
  `EXT` varchar(8) DEFAULT NULL,
  `MONITOR` varchar(8) DEFAULT NULL,
  `MANUFACTOR` varchar(8) DEFAULT NULL,
  `TEMPERATURE` varchar(8) DEFAULT NULL,
  `VERIFY_ID` int(11) NOT NULL,
  `VERIFY_TYPE` int(11) NOT NULL,
  `MACHINE_Z` varchar(8) DEFAULT NULL,
  `MACHINE_M` varchar(8) DEFAULT NULL,
  `MACHINE_B` varchar(8) DEFAULT NULL,
  `SHELF` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`REPORT_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of report_describe
-- ----------------------------
INSERT INTO `report_describe` VALUES ('jjkk123', '牛逼的东西', '21', '22', '33', '4555', '3', '2', '大公司', '20°C', '1', '1', '76', '11', '11', '112');

-- ----------------------------
-- Table structure for report_image_info
-- ----------------------------
DROP TABLE IF EXISTS `report_image_info`;
CREATE TABLE `report_image_info` (
  `REPORT_NO` varchar(64) NOT NULL,
  `JYX_DD` varchar(100) DEFAULT NULL,
  `JYX_KM` varchar(100) DEFAULT NULL,
  `JYX_HJ` varchar(100) DEFAULT NULL,
  `FJ_DD` varchar(100) DEFAULT NULL,
  `FJ_KM` varchar(100) DEFAULT NULL,
  `FJ_HJ` varchar(100) DEFAULT NULL,
  `CRK_DD` varchar(100) DEFAULT NULL,
  `CRK_KM` varchar(100) DEFAULT NULL,
  `CRK_HJ` varchar(100) DEFAULT NULL,
  `SJ_DD` varchar(100) DEFAULT NULL,
  `SJ_KM` varchar(100) DEFAULT NULL,
  `SJ_HJ` varchar(100) DEFAULT NULL,
  `HJ_DD` varchar(100) DEFAULT NULL,
  `HJ_KM` varchar(100) DEFAULT NULL,
  `HJ_HJ` varchar(100) DEFAULT NULL,
  `WSD_DD` varchar(100) DEFAULT NULL,
  `WSD_KM` varchar(100) DEFAULT NULL,
  `WSD_HJ` varchar(100) DEFAULT NULL,
  `DD` varchar(100) DEFAULT NULL,
  `KM` varchar(100) DEFAULT NULL,
  `HJ` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`REPORT_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='验证报告图表';

-- ----------------------------
-- Records of report_image_info
-- ----------------------------
INSERT INTO `report_image_info` VALUES ('1_1493045541961', null, null, null, '/cws/sds_file/1_1493045541961_2_1.png', '/cws/sds_file/1_1493045541961_2_2.png', '/cws/sds_file/1_1493045541961_2_3.png', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for report_info
-- ----------------------------
DROP TABLE IF EXISTS `report_info`;
CREATE TABLE `report_info` (
  `REPORT_NO` varchar(64) NOT NULL DEFAULT '',
  `REPORT_VERSION` varchar(16) DEFAULT NULL,
  `REPORT_TITLE` varchar(64) DEFAULT NULL,
  `VERIFY_PLACE` varchar(64) DEFAULT NULL,
  `VERIFY_OBJECT` varchar(64) DEFAULT NULL,
  `VERIFY_TIME` varchar(64) DEFAULT NULL,
  `VERIFY_ATTR` varchar(32) DEFAULT NULL,
  `REPORT_NAME` varchar(64) DEFAULT NULL,
  `IS_FULL` int(1) DEFAULT NULL COMMENT '是否满载.0:空载 , 1:满载',
  `REPORT_TYPE` varchar(64) DEFAULT NULL,
  `TEMPERATURE` varchar(64) DEFAULT NULL,
  `REPORT_PATH` varchar(100) DEFAULT NULL,
  `REPORT_STATUS` int(1) DEFAULT NULL,
  PRIMARY KEY (`REPORT_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of report_info
-- ----------------------------
INSERT INTO `report_info` VALUES ('1_1493045541961', '1.0', '救济测试', '家里', '1', null, '阿苏大', '测试报告', '0', '1', '极高温验证', 'C:\\Users\\rioze\\Desktop\\《冷库》生成样例.word', '1');

-- ----------------------------
-- Table structure for report_worker
-- ----------------------------
DROP TABLE IF EXISTS `report_worker`;
CREATE TABLE `report_worker` (
  `REPORT_NO` varchar(64) NOT NULL DEFAULT '',
  `NAME` varchar(32) DEFAULT NULL,
  `TYPE` varchar(8) DEFAULT NULL,
  `WORK_P` varchar(32) DEFAULT NULL,
  `WORK_D` varchar(32) DEFAULT NULL,
  `SUP` varchar(32) DEFAULT NULL,
  `ID` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of report_worker
-- ----------------------------
INSERT INTO `report_worker` VALUES ('jjkk123', '奶子公司', '2', '0', '0', '0', '1');
INSERT INTO `report_worker` VALUES ('jjkk123', '吕马三', '1', '射鸡师', '设计，还是设计，还能干什么', '1', '2');
INSERT INTO `report_worker` VALUES ('jjkk123', '迟永四', '1', '爪哇师', '爪哇，专业爪哇', '4', '3');
INSERT INTO `report_worker` VALUES ('jjkk123', '鸡子公司', '3', '0', '0', '0', '4');
INSERT INTO `report_worker` VALUES ('jjkk123', '张二嘎', '1', '射鸡师', '设计，还是设计，还能干什么', '1', '5');
INSERT INTO `report_worker` VALUES ('jjkk123', '张桑啊', '1', '射鸡师', '设计，还是设计，还能干什么', '1', '6');
INSERT INTO `report_worker` VALUES ('jjkk123', '吕步三', '1', '爪哇师', '爪哇，专业爪哇', '4', '7');
INSERT INTO `report_worker` VALUES ('jjkk123', '吕步思', '1', '爪哇师', '爪哇，专业爪哇', '4', '8');

-- ----------------------------
-- Table structure for validation_report_info
-- ----------------------------
DROP TABLE IF EXISTS `validation_report_info`;
CREATE TABLE `validation_report_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(30) DEFAULT NULL,
  `COMPANY_ID` int(11) DEFAULT NULL,
  `VERIFY_ID` int(11) DEFAULT NULL,
  `VERIFY_TYPE` int(11) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `REMARK` varchar(100) DEFAULT NULL,
  `STATUS` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ValidationReport';

-- ----------------------------
-- Records of validation_report_info
-- ----------------------------

-- ----------------------------
-- Table structure for verify_info
-- ----------------------------
DROP TABLE IF EXISTS `verify_info`;
CREATE TABLE `verify_info` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VERIFY_ID` int(11) DEFAULT NULL,
  `VERIFY_NAME` varchar(30) DEFAULT NULL,
  `VERIFY_TYPE` int(11) DEFAULT NULL COMMENT '1、冷库\r\n            2、冷藏车\r\n            3、保温箱',
  `CREATE_DATE` datetime DEFAULT NULL,
  `REMARK` varchar(100) DEFAULT NULL,
  `STATUS` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 COMMENT='验证对象表';

-- ----------------------------
-- Records of verify_info
-- ----------------------------
INSERT INTO `verify_info` VALUES ('99', '1', '冷库名称', '1', '2017-03-29 23:00:38', '测试2个', '1');
INSERT INTO `verify_info` VALUES ('107', '5', '大汽车', '2', '2017-05-03 23:35:54', '2', '1');
INSERT INTO `verify_info` VALUES ('108', '1', '箱子', '3', '2017-05-05 16:26:03', '的', '1');

-- ----------------------------
-- Table structure for verify_point_rel
-- ----------------------------
DROP TABLE IF EXISTS `verify_point_rel`;
CREATE TABLE `verify_point_rel` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VERIFY_ID` int(11) DEFAULT NULL,
  `VERIFY_TYPE` int(11) DEFAULT NULL,
  `POINT_ID` int(11) DEFAULT NULL,
  `POINT_SN` varchar(30) DEFAULT NULL,
  `POINT_POSITION` int(11) DEFAULT NULL,
  `POINT_TYPE` varchar(4) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `REMARK` varchar(100) DEFAULT NULL,
  `STATUS` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='VERIFY是方涛起名的';

-- ----------------------------
-- Records of verify_point_rel
-- ----------------------------
INSERT INTO `verify_point_rel` VALUES ('3', '1', '1', '6', 'SN-02', '2', '2', '2017-04-15 22:16:30', '3', '1');
INSERT INTO `verify_point_rel` VALUES ('4', '1', '1', '5', 'SN-01', '1', '3', '2017-04-21 22:59:24', null, '1');
INSERT INTO `verify_point_rel` VALUES ('5', '5', '2', '7', 'SN-03', '1', '5', '2017-05-05 15:33:39', null, '1');
INSERT INTO `verify_point_rel` VALUES ('6', '1', '3', '8', 'SN-04', '1', '4', '2017-05-05 16:26:57', null, '1');
