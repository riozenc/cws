/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : cws

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-05-31 09:28:37
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `chill_car_info`
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
INSERT INTO chill_car_info VALUES ('5', '大汽车', '100S', '90S', '1', '1', null, '1', '海康摄像头', '/cws/sds_file/微信对接流程图.png', null, '1');

-- ----------------------------
-- Table structure for `cold_storage_info`
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='���Cold storage';

-- ----------------------------
-- Records of cold_storage_info
-- ----------------------------
INSERT INTO cold_storage_info VALUES ('1', '冷库名称', '15', '1', '12', '1', '1', '1', '1', '1', '1', '1', '/cws/sds_file/0-1-企业列表.jpg', '1', '1');
INSERT INTO cold_storage_info VALUES ('2', '深圳冷库测试', null, null, null, null, null, null, null, null, null, null, '/cws/cws_file/1.jpg', null, '1');

-- ----------------------------
-- Table structure for `common_param_info`
-- ----------------------------
DROP TABLE IF EXISTS `common_param_info`;
CREATE TABLE `common_param_info` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `TYPE` varchar(20) DEFAULT NULL,
  `NAME` varchar(20) DEFAULT NULL,
  `VALUE` varchar(100) DEFAULT NULL,
  `REMARK` varchar(100) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `STATUS` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of common_param_info
-- ----------------------------
INSERT INTO common_param_info VALUES ('1', 'VERIFY_TYPE', '冷库', '1', null, '2017-04-08 22:00:33', '2017-04-10 23:06:42', '1');
INSERT INTO common_param_info VALUES ('2', 'POST_TYPE', '验证设计人员', '1', null, '2017-04-10 22:53:15', '2017-04-10 22:53:17', '1');
INSERT INTO common_param_info VALUES ('3', 'POST_TYPE', '验证实施人员', '2', null, '2017-04-10 22:53:28', '2017-04-10 22:53:30', '1');
INSERT INTO common_param_info VALUES ('4', 'DUTIES_TYPE', '协助组织实施', '1', null, '2017-04-10 22:55:00', '2017-04-10 22:55:02', '1');
INSERT INTO common_param_info VALUES ('5', 'POST_TYPE', '验证组负责人', '3', null, '2017-04-10 23:04:33', '2017-04-10 23:09:33', '1');
INSERT INTO common_param_info VALUES ('6', 'VERIFY_TYPE', '冷藏车', '2', null, '2017-04-10 23:07:06', '2017-04-10 23:07:21', '1');
INSERT INTO common_param_info VALUES ('10', 'DUTIES_TYPE', '组织协调、监督实施、复核关键数据', '3', null, '2017-04-10 23:26:14', null, '1');
INSERT INTO common_param_info VALUES ('11', 'VERIFY_TYPE', '保温箱', '3', '不能改', '2017-05-03 22:34:01', null, '1');
INSERT INTO common_param_info VALUES ('12', 'PATH_TYPE', 'TOMCAT_PATH', 'C:/Users/Administrator/workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps', null, null, null, null);
INSERT INTO common_param_info VALUES ('13', 'IP_TYPE', 'IP', '221.0.91.34:801', null, null, null, null);

-- ----------------------------
-- Table structure for `company_host_rel`
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='��ҵ������ϵ��';

-- ----------------------------
-- Records of company_host_rel
-- ----------------------------
INSERT INTO company_host_rel VALUES ('1', '1', '1', '2017-04-15 20:31:23', null, '1');
INSERT INTO company_host_rel VALUES ('2', '1', '2', '2017-05-27 11:49:17', null, '1');

-- ----------------------------
-- Table structure for `company_info`
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
INSERT INTO company_info VALUES ('1', '天安门', '123', '123', '123', '123', '2017-04-26 23:13:07', '1');
INSERT INTO company_info VALUES ('2', '山东艾欧特集团', null, null, null, null, null, '0');

-- ----------------------------
-- Table structure for `company_point_rel`
-- ----------------------------
DROP TABLE IF EXISTS `company_point_rel`;
CREATE TABLE `company_point_rel` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `COMPANY_ID` int(11) DEFAULT NULL,
  `POINT_ID` int(11) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `VALID_DATE` datetime DEFAULT NULL,
  `REMARK` varchar(100) DEFAULT NULL,
  `STATUS` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='企业测点关系表';

-- ----------------------------
-- Records of company_point_rel
-- ----------------------------
INSERT INTO company_point_rel VALUES ('1', '1', '5', '2017-04-15 20:29:14', '2017-05-25 00:00:00', null, '2');
INSERT INTO company_point_rel VALUES ('2', '1', '6', '2017-04-15 20:30:20', '2017-05-26 00:00:00', null, '2');
INSERT INTO company_point_rel VALUES ('3', '1', '7', '2017-05-05 15:33:21', '2017-05-27 00:00:00', null, '2');
INSERT INTO company_point_rel VALUES ('4', '1', '8', '2017-05-05 16:26:39', '2017-05-28 00:00:00', null, '2');
INSERT INTO company_point_rel VALUES ('5', '1', '9', '2017-05-27 12:21:25', '2017-06-10 00:00:00', null, '2');
INSERT INTO company_point_rel VALUES ('6', '1', '10', '2017-05-27 12:21:38', '2017-06-10 00:00:00', null, '2');
INSERT INTO company_point_rel VALUES ('7', '1', '11', '2017-05-27 12:21:53', '2017-06-10 00:00:00', null, '2');
INSERT INTO company_point_rel VALUES ('8', '1', '12', '2017-05-27 12:22:09', '2017-06-10 00:00:00', null, '2');
INSERT INTO company_point_rel VALUES ('9', '1', '13', '2017-05-27 12:22:24', '2017-06-10 00:00:00', null, '2');
INSERT INTO company_point_rel VALUES ('10', '1', '14', '2017-05-27 12:22:37', '2017-06-10 00:00:00', null, '2');
INSERT INTO company_point_rel VALUES ('11', '1', '15', '2017-05-27 12:22:52', '2017-06-10 00:00:00', null, '2');
INSERT INTO company_point_rel VALUES ('12', '1', '16', '2017-05-27 12:23:06', '2017-06-10 00:00:00', null, '2');
INSERT INTO company_point_rel VALUES ('13', '1', '17', '2017-05-27 12:23:17', '2017-06-10 00:00:00', null, '2');
INSERT INTO company_point_rel VALUES ('14', '1', '18', '2017-05-27 12:23:32', '2017-06-10 00:00:00', null, '2');
INSERT INTO company_point_rel VALUES ('15', '1', '19', '2017-05-27 12:23:45', '2017-06-10 00:00:00', null, '2');
INSERT INTO company_point_rel VALUES ('16', '1', '20', '2017-05-27 12:23:55', '2017-06-10 00:00:00', null, '2');
INSERT INTO company_point_rel VALUES ('17', '1', '21', '2017-05-27 12:24:06', '2017-06-10 00:00:00', null, '2');
INSERT INTO company_point_rel VALUES ('18', '1', '22', '2017-05-27 12:24:18', '2017-06-10 00:00:00', null, '2');
INSERT INTO company_point_rel VALUES ('19', '1', '23', '2017-05-27 12:24:36', '2017-06-10 00:00:00', null, '2');
INSERT INTO company_point_rel VALUES ('20', '1', '24', '2017-05-27 12:24:49', '2017-06-10 00:00:00', null, '2');
INSERT INTO company_point_rel VALUES ('21', '1', '25', '2017-05-27 12:25:02', '2017-06-10 00:00:00', null, '2');
INSERT INTO company_point_rel VALUES ('22', '1', '26', '2017-05-27 12:25:16', '2017-06-10 00:00:00', null, '2');
INSERT INTO company_point_rel VALUES ('23', '1', '27', '2017-05-27 12:25:31', '2017-06-10 00:00:00', null, '2');
INSERT INTO company_point_rel VALUES ('24', '1', '28', '2017-05-27 12:25:44', '2017-06-10 00:00:00', null, '2');
INSERT INTO company_point_rel VALUES ('25', '1', '29', '2017-05-27 12:25:54', '2017-06-10 00:00:00', null, '2');
INSERT INTO company_point_rel VALUES ('26', '1', '30', '2017-05-27 12:26:05', '2017-06-10 00:00:00', null, '2');
INSERT INTO company_point_rel VALUES ('27', '1', '31', '2017-05-27 12:26:16', '2017-06-10 00:00:00', null, '2');
INSERT INTO company_point_rel VALUES ('28', '1', '32', '2017-05-27 12:26:26', '2017-06-10 00:00:00', null, '2');
INSERT INTO company_point_rel VALUES ('29', '1', '33', '2017-05-27 12:26:40', '2017-06-10 00:00:00', null, '2');
INSERT INTO company_point_rel VALUES ('30', '1', '34', '2017-05-27 12:26:56', '2017-06-10 00:00:00', null, '2');
INSERT INTO company_point_rel VALUES ('31', '1', '35', '2017-05-27 12:27:11', '2017-06-10 00:00:00', null, '2');
INSERT INTO company_point_rel VALUES ('32', '1', '36', '2017-05-27 12:27:23', '2017-06-10 00:00:00', null, '2');
INSERT INTO company_point_rel VALUES ('33', '1', '37', '2017-05-27 12:27:35', '2017-06-10 00:00:00', null, '2');
INSERT INTO company_point_rel VALUES ('34', '1', '38', '2017-05-27 12:27:48', '2017-06-10 00:00:00', null, '2');

-- ----------------------------
-- Table structure for `company_report_rel`
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='企业与验证报告关系表';

-- ----------------------------
-- Records of company_report_rel
-- ----------------------------
INSERT INTO company_report_rel VALUES ('4', '1', '1_1493045541961', '2017-04-24 22:52:59', '55', '1');
INSERT INTO company_report_rel VALUES ('7', '1', '1_1495859418548', '2017-05-27 12:30:19', null, '1');

-- ----------------------------
-- Table structure for `company_verify_rel`
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='企业与验证对象关系表。\r\n验证对象包括：冷库、冷藏车等';

-- ----------------------------
-- Records of company_verify_rel
-- ----------------------------
INSERT INTO company_verify_rel VALUES ('1', '1', '99', '2017-03-29 23:01:10', '测试关系', '1');
INSERT INTO company_verify_rel VALUES ('4', '1', '107', '2017-05-03 23:35:54', '2', '1');
INSERT INTO company_verify_rel VALUES ('5', '1', '108', '2017-05-05 16:26:03', '的', '1');
INSERT INTO company_verify_rel VALUES ('6', '1', '109', '2017-05-27 12:29:55', null, '1');

-- ----------------------------
-- Table structure for `device_34002900`
-- ----------------------------
DROP TABLE IF EXISTS `device_34002900`;
CREATE TABLE `device_34002900` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE` text,
  `SN_NO` text,
  `REPORT_NO` text,
  `STYLE` int(11) DEFAULT NULL,
  `TEMPERATURE` float DEFAULT NULL,
  `HUMIDITY` float DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of device_34002900
-- ----------------------------
INSERT INTO device_34002900 VALUES ('1', '2017-05-28 05:56:15', '34002900', '1_1495859418548', '1', '27.09', '61.25');
INSERT INTO device_34002900 VALUES ('2', '2017-05-28 05:56:15', '34002900', '1_1495859418548', '1', '27.09', '61.25');
INSERT INTO device_34002900 VALUES ('3', '2017-05-28 05:56:15', '34002900', '1_1495859418548', '1', '27.09', '61.25');
INSERT INTO device_34002900 VALUES ('4', '2017-05-28 05:56:15', '34002900', '1_1495859418548', '1', '27.09', '61.25');
INSERT INTO device_34002900 VALUES ('5', '2017-05-28 10:04:33', '34002900', '1_1495859418548', '1', '27.66', '66.15');
INSERT INTO device_34002900 VALUES ('6', '2017-05-28 10:14:34', '34002900', '1_1495859418548', '1', '27.75', '66.4');
INSERT INTO device_34002900 VALUES ('7', '2017-05-28 10:19:34', '34002900', '1_1495859418548', '1', '27.79', '66.7');
INSERT INTO device_34002900 VALUES ('8', '2017-05-28 10:24:35', '34002900', '1_1495859418548', '1', '27.83', '66.94');
INSERT INTO device_34002900 VALUES ('9', '2017-05-28 10:29:35', '34002900', '1_1495859418548', '1', '27.87', '66.7');
INSERT INTO device_34002900 VALUES ('10', '2017-05-28 10:34:36', '34002900', '1_1495859418548', '1', '27.83', '67.14');
INSERT INTO device_34002900 VALUES ('11', '2017-05-28 10:39:37', '34002900', '1_1495859418548', '1', '27.92', '67.44');
INSERT INTO device_34002900 VALUES ('12', '2017-05-28 10:44:37', '34002900', '1_1495859418548', '1', '27.95', '67.3');
INSERT INTO device_34002900 VALUES ('13', '2017-05-28 10:49:39', '34002900', '1_1495859418548', '1', '27.96', '66.94');
INSERT INTO device_34002900 VALUES ('14', '2017-05-28 10:54:38', '34002900', '1_1495859418548', '1', '27.87', '66.88');
INSERT INTO device_34002900 VALUES ('15', '2017-05-28 10:59:39', '34002900', '1_1495859418548', '1', '27.83', '66.67');
INSERT INTO device_34002900 VALUES ('16', '2017-05-28 11:04:39', '34002900', '1_1495859418548', '1', '27.81', '66.47');
INSERT INTO device_34002900 VALUES ('17', '2017-05-28 11:09:40', '34002900', '1_1495859418548', '1', '27.82', '66.64');
INSERT INTO device_34002900 VALUES ('18', '2017-05-28 11:14:40', '34002900', '1_1495859418548', '1', '27.81', '66.59');
INSERT INTO device_34002900 VALUES ('19', '2017-05-28 11:19:41', '34002900', '1_1495859418548', '1', '27.85', '66.64');
INSERT INTO device_34002900 VALUES ('20', '2017-05-28 11:24:41', '34002900', '1_1495859418548', '1', '27.9', '66.4');
INSERT INTO device_34002900 VALUES ('21', '2017-05-28 11:29:42', '34002900', '1_1495859418548', '1', '27.93', '66.76');
INSERT INTO device_34002900 VALUES ('22', '2017-05-28 11:34:42', '34002900', '1_1495859418548', '1', '27.95', '67.14');
INSERT INTO device_34002900 VALUES ('23', '2017-05-28 11:39:42', '34002900', '1_1495859418548', '1', '28.05', '67.14');

-- ----------------------------
-- Table structure for `device_34003000`
-- ----------------------------
DROP TABLE IF EXISTS `device_34003000`;
CREATE TABLE `device_34003000` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE` text,
  `SN_NO` text,
  `REPORT_NO` text,
  `STYLE` int(11) DEFAULT NULL,
  `TEMPERATURE` float DEFAULT NULL,
  `HUMIDITY` float DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of device_34003000
-- ----------------------------
INSERT INTO device_34003000 VALUES ('1', '2017-05-28 06:25:22', '34003000', '1_1495859418548', '1', '27.06', '60.64');
INSERT INTO device_34003000 VALUES ('2', '2017-05-28 06:25:22', '34003000', '1_1495859418548', '1', '27.06', '60.64');
INSERT INTO device_34003000 VALUES ('3', '2017-05-28 06:25:22', '34003000', '1_1495859418548', '1', '27.06', '60.64');
INSERT INTO device_34003000 VALUES ('4', '2017-05-28 06:25:22', '34003000', '1_1495859418548', '1', '27.06', '60.64');
INSERT INTO device_34003000 VALUES ('5', '2017-05-28 10:04:15', '34003000', '1_1495859418548', '1', '27.56', '65.54');
INSERT INTO device_34003000 VALUES ('6', '2017-05-28 10:14:16', '34003000', '1_1495859418548', '1', '27.64', '65.92');
INSERT INTO device_34003000 VALUES ('7', '2017-05-28 10:19:17', '34003000', '1_1495859418548', '1', '27.67', '66.02');
INSERT INTO device_34003000 VALUES ('8', '2017-05-28 10:24:18', '34003000', '1_1495859418548', '1', '27.72', '66.01');
INSERT INTO device_34003000 VALUES ('9', '2017-05-28 10:29:18', '34003000', '1_1495859418548', '1', '27.76', '66.31');
INSERT INTO device_34003000 VALUES ('10', '2017-05-28 10:34:19', '34003000', '1_1495859418548', '1', '27.74', '66.84');
INSERT INTO device_34003000 VALUES ('11', '2017-05-28 10:39:19', '34003000', '1_1495859418548', '1', '27.81', '66.54');
INSERT INTO device_34003000 VALUES ('12', '2017-05-28 10:44:20', '34003000', '1_1495859418548', '1', '27.83', '66.54');
INSERT INTO device_34003000 VALUES ('13', '2017-05-28 10:49:20', '34003000', '1_1495859418548', '1', '27.83', '66.34');
INSERT INTO device_34003000 VALUES ('14', '2017-05-28 10:54:21', '34003000', '1_1495859418548', '1', '27.78', '66.24');
INSERT INTO device_34003000 VALUES ('15', '2017-05-28 10:59:21', '34003000', '1_1495859418548', '1', '27.76', '66.13');
INSERT INTO device_34003000 VALUES ('16', '2017-05-28 11:04:22', '34003000', '1_1495859418548', '1', '27.76', '65.8');
INSERT INTO device_34003000 VALUES ('17', '2017-05-28 11:09:22', '34003000', '1_1495859418548', '1', '27.75', '65.98');
INSERT INTO device_34003000 VALUES ('18', '2017-05-28 11:14:23', '34003000', '1_1495859418548', '1', '27.75', '66.04');
INSERT INTO device_34003000 VALUES ('19', '2017-05-28 11:19:23', '34003000', '1_1495859418548', '1', '27.78', '66.16');
INSERT INTO device_34003000 VALUES ('20', '2017-05-28 11:24:24', '34003000', '1_1495859418548', '1', '27.82', '65.47');
INSERT INTO device_34003000 VALUES ('21', '2017-05-28 11:29:24', '34003000', '1_1495859418548', '1', '27.83', '65.95');
INSERT INTO device_34003000 VALUES ('22', '2017-05-28 11:34:25', '34003000', '1_1495859418548', '1', '27.87', '66.42');
INSERT INTO device_34003000 VALUES ('23', '2017-05-28 11:39:25', '34003000', '1_1495859418548', '1', '27.93', '66.04');

-- ----------------------------
-- Table structure for `device_34003100`
-- ----------------------------
DROP TABLE IF EXISTS `device_34003100`;
CREATE TABLE `device_34003100` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE` text,
  `SN_NO` text,
  `REPORT_NO` text,
  `STYLE` int(11) DEFAULT NULL,
  `TEMPERATURE` float DEFAULT NULL,
  `HUMIDITY` float DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of device_34003100
-- ----------------------------
INSERT INTO device_34003100 VALUES ('1', '2017-05-28 06:25:18', '34003100', '1_1495859418548', '1', '27.08', '61.29');
INSERT INTO device_34003100 VALUES ('2', '2017-05-28 06:25:18', '34003100', '1_1495859418548', '1', '27.08', '61.29');
INSERT INTO device_34003100 VALUES ('3', '2017-05-28 06:25:18', '34003100', '1_1495859418548', '1', '27.08', '61.29');
INSERT INTO device_34003100 VALUES ('4', '2017-05-28 06:25:18', '34003100', '1_1495859418548', '1', '27.08', '61.29');
INSERT INTO device_34003100 VALUES ('5', '2017-05-28 10:04:30', '34003100', '1_1495859418548', '1', '27.79', '66.82');
INSERT INTO device_34003100 VALUES ('6', '2017-05-28 10:14:31', '34003100', '1_1495859418548', '1', '27.89', '66.89');
INSERT INTO device_34003100 VALUES ('7', '2017-05-28 10:19:32', '34003100', '1_1495859418548', '1', '27.98', '67.09');
INSERT INTO device_34003100 VALUES ('8', '2017-05-28 10:24:32', '34003100', '1_1495859418548', '1', '28.06', '67.44');
INSERT INTO device_34003100 VALUES ('9', '2017-05-28 10:29:33', '34003100', '1_1495859418548', '1', '28.06', '67.56');
INSERT INTO device_34003100 VALUES ('10', '2017-05-28 10:34:33', '34003100', '1_1495859418548', '1', '28.01', '67.95');
INSERT INTO device_34003100 VALUES ('11', '2017-05-28 10:39:34', '34003100', '1_1495859418548', '1', '28.1', '67.92');
INSERT INTO device_34003100 VALUES ('12', '2017-05-28 10:44:34', '34003100', '1_1495859418548', '1', '28.16', '67.98');
INSERT INTO device_34003100 VALUES ('13', '2017-05-28 10:49:35', '34003100', '1_1495859418548', '1', '28.15', '67.75');
INSERT INTO device_34003100 VALUES ('14', '2017-05-28 10:54:35', '34003100', '1_1495859418548', '1', '28.06', '67.63');
INSERT INTO device_34003100 VALUES ('15', '2017-05-28 10:59:36', '34003100', '1_1495859418548', '1', '28', '67.36');
INSERT INTO device_34003100 VALUES ('16', '2017-05-28 11:04:36', '34003100', '1_1495859418548', '1', '27.98', '67.03');
INSERT INTO device_34003100 VALUES ('17', '2017-05-28 11:09:37', '34003100', '1_1495859418548', '1', '27.98', '67.09');
INSERT INTO device_34003100 VALUES ('18', '2017-05-28 11:14:37', '34003100', '1_1495859418548', '1', '27.94', '67.12');
INSERT INTO device_34003100 VALUES ('19', '2017-05-28 11:19:38', '34003100', '1_1495859418548', '1', '27.98', '67.15');
INSERT INTO device_34003100 VALUES ('20', '2017-05-28 11:24:38', '34003100', '1_1495859418548', '1', '27.98', '66.71');
INSERT INTO device_34003100 VALUES ('21', '2017-05-28 11:29:39', '34003100', '1_1495859418548', '1', '28.01', '66.89');
INSERT INTO device_34003100 VALUES ('22', '2017-05-28 11:34:39', '34003100', '1_1495859418548', '1', '28.05', '67.59');
INSERT INTO device_34003100 VALUES ('23', '2017-05-28 11:39:40', '34003100', '1_1495859418548', '1', '28.16', '67.42');

-- ----------------------------
-- Table structure for `device_34003300`
-- ----------------------------
DROP TABLE IF EXISTS `device_34003300`;
CREATE TABLE `device_34003300` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE` text,
  `SN_NO` text,
  `REPORT_NO` text,
  `STYLE` int(11) DEFAULT NULL,
  `TEMPERATURE` float DEFAULT NULL,
  `HUMIDITY` float DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of device_34003300
-- ----------------------------
INSERT INTO device_34003300 VALUES ('1', '2017-05-28 05:56:35', '34003300', '1_1495859418548', '1', '27.17', '60.29');
INSERT INTO device_34003300 VALUES ('2', '2017-05-28 05:56:35', '34003300', '1_1495859418548', '1', '27.17', '60.29');
INSERT INTO device_34003300 VALUES ('3', '2017-05-28 05:56:35', '34003300', '1_1495859418548', '1', '27.17', '60.29');
INSERT INTO device_34003300 VALUES ('4', '2017-05-28 05:56:35', '34003300', '1_1495859418548', '1', '27.17', '60.29');
INSERT INTO device_34003300 VALUES ('5', '2017-05-28 10:04:03', '34003300', '1_1495859418548', '1', '27.59', '64.8');
INSERT INTO device_34003300 VALUES ('6', '2017-05-28 10:14:04', '34003300', '1_1495859418548', '1', '27.66', '65.48');
INSERT INTO device_34003300 VALUES ('7', '2017-05-28 10:19:05', '34003300', '1_1495859418548', '1', '27.66', '65.69');
INSERT INTO device_34003300 VALUES ('8', '2017-05-28 10:24:06', '34003300', '1_1495859418548', '1', '27.7', '65.31');
INSERT INTO device_34003300 VALUES ('9', '2017-05-28 10:29:06', '34003300', '1_1495859418548', '1', '27.73', '65.57');
INSERT INTO device_34003300 VALUES ('10', '2017-05-28 10:34:07', '34003300', '1_1495859418548', '1', '27.73', '66.07');
INSERT INTO device_34003300 VALUES ('11', '2017-05-28 10:39:07', '34003300', '1_1495859418548', '1', '27.77', '65.77');
INSERT INTO device_34003300 VALUES ('12', '2017-05-28 10:44:08', '34003300', '1_1495859418548', '1', '27.8', '65.66');
INSERT INTO device_34003300 VALUES ('13', '2017-05-28 10:49:08', '34003300', '1_1495859418548', '1', '27.8', '65.53');
INSERT INTO device_34003300 VALUES ('14', '2017-05-28 10:54:09', '34003300', '1_1495859418548', '1', '27.76', '65.45');
INSERT INTO device_34003300 VALUES ('15', '2017-05-28 10:59:09', '34003300', '1_1495859418548', '1', '27.76', '65.33');
INSERT INTO device_34003300 VALUES ('16', '2017-05-28 11:04:10', '34003300', '1_1495859418548', '1', '27.75', '65.18');
INSERT INTO device_34003300 VALUES ('17', '2017-05-28 11:09:10', '34003300', '1_1495859418548', '1', '27.75', '65.28');
INSERT INTO device_34003300 VALUES ('18', '2017-05-28 11:14:11', '34003300', '1_1495859418548', '1', '27.79', '65.45');
INSERT INTO device_34003300 VALUES ('19', '2017-05-28 11:19:11', '34003300', '1_1495859418548', '1', '27.83', '65.42');
INSERT INTO device_34003300 VALUES ('20', '2017-05-28 11:24:12', '34003300', '1_1495859418548', '1', '27.86', '65.33');
INSERT INTO device_34003300 VALUES ('21', '2017-05-28 11:29:12', '34003300', '1_1495859418548', '1', '27.89', '65.63');
INSERT INTO device_34003300 VALUES ('22', '2017-05-28 11:34:13', '34003300', '1_1495859418548', '1', '27.9', '65.89');
INSERT INTO device_34003300 VALUES ('23', '2017-05-28 11:39:13', '34003300', '1_1495859418548', '1', '27.95', '65.89');

-- ----------------------------
-- Table structure for `device_34003600`
-- ----------------------------
DROP TABLE IF EXISTS `device_34003600`;
CREATE TABLE `device_34003600` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE` text,
  `SN_NO` text,
  `REPORT_NO` text,
  `STYLE` int(11) DEFAULT NULL,
  `TEMPERATURE` float DEFAULT NULL,
  `HUMIDITY` float DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of device_34003600
-- ----------------------------
INSERT INTO device_34003600 VALUES ('1', '2017-05-28 05:57:27', '34003600', '1_1495859418548', '1', '27.01', '60.65');
INSERT INTO device_34003600 VALUES ('2', '2017-05-28 05:57:27', '34003600', '1_1495859418548', '1', '27.01', '60.65');
INSERT INTO device_34003600 VALUES ('3', '2017-05-28 05:57:27', '34003600', '1_1495859418548', '1', '27.01', '60.65');
INSERT INTO device_34003600 VALUES ('4', '2017-05-28 05:57:27', '34003600', '1_1495859418548', '1', '27.01', '60.65');
INSERT INTO device_34003600 VALUES ('5', '2017-05-28 10:04:39', '34003600', '1_1495859418548', '1', '27.41', '65.28');
INSERT INTO device_34003600 VALUES ('6', '2017-05-28 10:14:40', '34003600', '1_1495859418548', '1', '27.48', '65.63');
INSERT INTO device_34003600 VALUES ('7', '2017-05-28 10:19:41', '34003600', '1_1495859418548', '1', '27.49', '65.75');
INSERT INTO device_34003600 VALUES ('8', '2017-05-28 10:24:41', '34003600', '1_1495859418548', '1', '27.53', '65.84');
INSERT INTO device_34003600 VALUES ('9', '2017-05-28 10:29:42', '34003600', '1_1495859418548', '1', '27.56', '65.95');
INSERT INTO device_34003600 VALUES ('10', '2017-05-28 10:34:42', '34003600', '1_1495859418548', '1', '27.56', '66.14');
INSERT INTO device_34003600 VALUES ('11', '2017-05-28 10:39:43', '34003600', '1_1495859418548', '1', '27.61', '66.16');
INSERT INTO device_34003600 VALUES ('12', '2017-05-28 10:44:43', '34003600', '1_1495859418548', '1', '27.63', '65.9');
INSERT INTO device_34003600 VALUES ('13', '2017-05-28 10:49:44', '34003600', '1_1495859418548', '1', '27.65', '65.78');
INSERT INTO device_34003600 VALUES ('14', '2017-05-28 10:54:44', '34003600', '1_1495859418548', '1', '27.59', '65.72');
INSERT INTO device_34003600 VALUES ('15', '2017-05-28 10:59:45', '34003600', '1_1495859418548', '1', '27.59', '65.63');
INSERT INTO device_34003600 VALUES ('16', '2017-05-28 11:04:45', '34003600', '1_1495859418548', '1', '27.58', '65.4');
INSERT INTO device_34003600 VALUES ('17', '2017-05-28 11:09:46', '34003600', '1_1495859418548', '1', '27.6', '65.66');
INSERT INTO device_34003600 VALUES ('18', '2017-05-28 11:14:46', '34003600', '1_1495859418548', '1', '27.6', '65.63');
INSERT INTO device_34003600 VALUES ('19', '2017-05-28 11:19:47', '34003600', '1_1495859418548', '1', '27.65', '65.78');
INSERT INTO device_34003600 VALUES ('20', '2017-05-28 11:24:47', '34003600', '1_1495859418548', '1', '27.68', '65.63');
INSERT INTO device_34003600 VALUES ('21', '2017-05-28 11:29:48', '34003600', '1_1495859418548', '1', '27.71', '65.87');
INSERT INTO device_34003600 VALUES ('22', '2017-05-28 11:34:48', '34003600', '1_1495859418548', '1', '27.71', '66.16');
INSERT INTO device_34003600 VALUES ('23', '2017-05-28 11:39:49', '34003600', '1_1495859418548', '1', '27.78', '66.1');

-- ----------------------------
-- Table structure for `device_34003a00`
-- ----------------------------
DROP TABLE IF EXISTS `device_34003a00`;
CREATE TABLE `device_34003a00` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE` text,
  `SN_NO` text,
  `REPORT_NO` text,
  `STYLE` int(11) DEFAULT NULL,
  `TEMPERATURE` float DEFAULT NULL,
  `HUMIDITY` float DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of device_34003a00
-- ----------------------------
INSERT INTO device_34003a00 VALUES ('1', '2017-05-27 22:54:10', '34003A00', '1_1495859418548', '1', '27.38', '66.35');
INSERT INTO device_34003a00 VALUES ('2', '2017-05-27 22:54:10', '34003A00', '1_1495859418548', '1', '27.38', '66.35');
INSERT INTO device_34003a00 VALUES ('3', '2017-05-27 22:54:10', '34003A00', '1_1495859418548', '1', '27.38', '66.35');
INSERT INTO device_34003a00 VALUES ('4', '2017-05-27 22:54:10', '34003A00', '1_1495859418548', '1', '27.38', '66.35');
INSERT INTO device_34003a00 VALUES ('5', '2017-05-27 22:54:10', '34003A00', '1_1495859418548', '1', '27.38', '66.35');
INSERT INTO device_34003a00 VALUES ('6', '2017-05-27 22:54:10', '34003A00', '1_1495859418548', '1', '27.38', '66.35');
INSERT INTO device_34003a00 VALUES ('7', '2017-05-27 22:54:10', '34003A00', '1_1495859418548', '1', '27.38', '66.35');
INSERT INTO device_34003a00 VALUES ('8', '2017-05-27 22:54:10', '34003A00', '1_1495859418548', '1', '27.38', '66.35');
INSERT INTO device_34003a00 VALUES ('9', '2017-05-27 22:54:10', '34003A00', '1_1495859418548', '1', '27.38', '66.35');
INSERT INTO device_34003a00 VALUES ('10', '2017-05-27 22:54:10', '34003A00', '1_1495859418548', '1', '27.38', '66.35');
INSERT INTO device_34003a00 VALUES ('11', '2017-05-27 22:54:10', '34003A00', '1_1495859418548', '1', '27.38', '66.35');
INSERT INTO device_34003a00 VALUES ('12', '2017-05-27 22:54:10', '34003A00', '1_1495859418548', '1', '27.38', '66.35');
INSERT INTO device_34003a00 VALUES ('13', '2017-05-27 22:54:10', '34003A00', '1_1495859418548', '1', '27.38', '66.35');
INSERT INTO device_34003a00 VALUES ('14', '2017-05-27 22:54:10', '34003A00', '1_1495859418548', '1', '27.38', '66.35');
INSERT INTO device_34003a00 VALUES ('15', '2017-05-27 22:54:10', '34003A00', '1_1495859418548', '1', '27.38', '66.35');
INSERT INTO device_34003a00 VALUES ('16', '2017-05-27 22:54:10', '34003A00', '1_1495859418548', '1', '27.38', '66.35');
INSERT INTO device_34003a00 VALUES ('17', '2017-05-27 22:54:10', '34003A00', '1_1495859418548', '1', '27.38', '66.35');
INSERT INTO device_34003a00 VALUES ('18', '2017-05-27 22:54:10', '34003A00', '1_1495859418548', '1', '27.38', '66.35');
INSERT INTO device_34003a00 VALUES ('19', '2017-05-27 22:54:10', '34003A00', '1_1495859418548', '1', '27.38', '66.35');
INSERT INTO device_34003a00 VALUES ('20', '2017-05-27 22:54:10', '34003A00', '1_1495859418548', '1', '27.38', '66.35');
INSERT INTO device_34003a00 VALUES ('21', '2017-05-27 22:54:10', '34003A00', '1_1495859418548', '1', '27.38', '66.35');
INSERT INTO device_34003a00 VALUES ('22', '2017-05-27 22:54:10', '34003A00', '1_1495859418548', '1', '27.38', '66.35');
INSERT INTO device_34003a00 VALUES ('23', '2017-05-27 22:54:10', '34003A00', '1_1495859418548', '1', '27.38', '66.35');

-- ----------------------------
-- Table structure for `device_54004300`
-- ----------------------------
DROP TABLE IF EXISTS `device_54004300`;
CREATE TABLE `device_54004300` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE` text,
  `SN_NO` text,
  `REPORT_NO` text,
  `STYLE` int(11) DEFAULT NULL,
  `TEMPERATURE` float DEFAULT NULL,
  `HUMIDITY` float DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of device_54004300
-- ----------------------------
INSERT INTO device_54004300 VALUES ('1', '2017-05-28 05:40:19', '54004300', '1_1495859418548', '1', '27.05', '60.87');
INSERT INTO device_54004300 VALUES ('2', '2017-05-28 05:40:19', '54004300', '1_1495859418548', '1', '27.05', '60.87');
INSERT INTO device_54004300 VALUES ('3', '2017-05-28 05:40:19', '54004300', '1_1495859418548', '1', '27.05', '60.87');
INSERT INTO device_54004300 VALUES ('4', '2017-05-28 05:40:19', '54004300', '1_1495859418548', '1', '27.05', '60.87');
INSERT INTO device_54004300 VALUES ('5', '2017-05-28 10:04:00', '54004300', '1_1495859418548', '1', '27.47', '65.29');
INSERT INTO device_54004300 VALUES ('6', '2017-05-28 10:14:01', '54004300', '1_1495859418548', '1', '27.56', '66');
INSERT INTO device_54004300 VALUES ('7', '2017-05-28 10:19:02', '54004300', '1_1495859418548', '1', '27.57', '66.21');
INSERT INTO device_54004300 VALUES ('8', '2017-05-28 10:24:02', '54004300', '1_1495859418548', '1', '27.6', '65.76');
INSERT INTO device_54004300 VALUES ('9', '2017-05-28 10:29:02', '54004300', '1_1495859418548', '1', '27.61', '66.15');
INSERT INTO device_54004300 VALUES ('10', '2017-05-28 10:34:03', '54004300', '1_1495859418548', '1', '27.6', '66.71');
INSERT INTO device_54004300 VALUES ('11', '2017-05-28 10:39:03', '54004300', '1_1495859418548', '1', '27.67', '66.41');
INSERT INTO device_54004300 VALUES ('12', '2017-05-28 10:44:04', '54004300', '1_1495859418548', '1', '27.71', '66.26');
INSERT INTO device_54004300 VALUES ('13', '2017-05-28 10:49:05', '54004300', '1_1495859418548', '1', '27.71', '66.18');
INSERT INTO device_54004300 VALUES ('14', '2017-05-28 10:54:05', '54004300', '1_1495859418548', '1', '27.67', '66');
INSERT INTO device_54004300 VALUES ('15', '2017-05-28 10:59:06', '54004300', '1_1495859418548', '1', '27.65', '65.94');
INSERT INTO device_54004300 VALUES ('16', '2017-05-28 11:04:06', '54004300', '1_1495859418548', '1', '27.64', '65.79');
INSERT INTO device_54004300 VALUES ('17', '2017-05-28 11:09:07', '54004300', '1_1495859418548', '1', '27.65', '65.91');
INSERT INTO device_54004300 VALUES ('18', '2017-05-28 11:14:07', '54004300', '1_1495859418548', '1', '27.65', '65.97');
INSERT INTO device_54004300 VALUES ('19', '2017-05-28 11:19:08', '54004300', '1_1495859418548', '1', '27.7', '65.97');
INSERT INTO device_54004300 VALUES ('20', '2017-05-28 11:24:08', '54004300', '1_1495859418548', '1', '27.74', '65.79');
INSERT INTO device_54004300 VALUES ('21', '2017-05-28 11:29:09', '54004300', '1_1495859418548', '1', '27.77', '66.18');
INSERT INTO device_54004300 VALUES ('22', '2017-05-28 11:34:09', '54004300', '1_1495859418548', '1', '27.78', '66.53');
INSERT INTO device_54004300 VALUES ('23', '2017-05-28 11:39:09', '54004300', '1_1495859418548', '1', '27.85', '66.41');

-- ----------------------------
-- Table structure for `device_54004600`
-- ----------------------------
DROP TABLE IF EXISTS `device_54004600`;
CREATE TABLE `device_54004600` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE` text,
  `SN_NO` text,
  `REPORT_NO` text,
  `STYLE` int(11) DEFAULT NULL,
  `TEMPERATURE` float DEFAULT NULL,
  `HUMIDITY` float DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of device_54004600
-- ----------------------------
INSERT INTO device_54004600 VALUES ('1', '2017-05-28 06:25:03', '54004600', '1_1495859418548', '1', '27.13', '60.29');
INSERT INTO device_54004600 VALUES ('2', '2017-05-28 06:25:03', '54004600', '1_1495859418548', '1', '27.13', '60.29');
INSERT INTO device_54004600 VALUES ('3', '2017-05-28 06:25:03', '54004600', '1_1495859418548', '1', '27.13', '60.29');
INSERT INTO device_54004600 VALUES ('4', '2017-05-28 06:25:03', '54004600', '1_1495859418548', '1', '27.13', '60.29');
INSERT INTO device_54004600 VALUES ('5', '2017-05-28 10:04:21', '54004600', '1_1495859418548', '1', '27.59', '65.18');
INSERT INTO device_54004600 VALUES ('6', '2017-05-28 10:14:22', '54004600', '1_1495859418548', '1', '27.67', '65.57');
INSERT INTO device_54004600 VALUES ('7', '2017-05-28 10:19:23', '54004600', '1_1495859418548', '1', '27.68', '65.53');
INSERT INTO device_54004600 VALUES ('8', '2017-05-28 10:24:23', '54004600', '1_1495859418548', '1', '27.72', '65.33');
INSERT INTO device_54004600 VALUES ('9', '2017-05-28 10:29:24', '54004600', '1_1495859418548', '1', '27.74', '66.01');
INSERT INTO device_54004600 VALUES ('10', '2017-05-28 10:34:24', '54004600', '1_1495859418548', '1', '27.74', '66.27');
INSERT INTO device_54004600 VALUES ('11', '2017-05-28 10:39:25', '54004600', '1_1495859418548', '1', '27.8', '66.1');
INSERT INTO device_54004600 VALUES ('12', '2017-05-28 10:44:25', '54004600', '1_1495859418548', '1', '27.82', '66.04');
INSERT INTO device_54004600 VALUES ('13', '2017-05-28 10:49:26', '54004600', '1_1495859418548', '1', '27.87', '65.8');
INSERT INTO device_54004600 VALUES ('14', '2017-05-28 10:54:26', '54004600', '1_1495859418548', '1', '27.78', '65.8');
INSERT INTO device_54004600 VALUES ('15', '2017-05-28 10:59:27', '54004600', '1_1495859418548', '1', '27.77', '65.71');
INSERT INTO device_54004600 VALUES ('16', '2017-05-28 11:04:27', '54004600', '1_1495859418548', '1', '27.76', '65.41');
INSERT INTO device_54004600 VALUES ('17', '2017-05-28 11:09:28', '54004600', '1_1495859418548', '1', '27.77', '65.53');
INSERT INTO device_54004600 VALUES ('18', '2017-05-28 11:14:28', '54004600', '1_1495859418548', '1', '27.76', '65.63');
INSERT INTO device_54004600 VALUES ('19', '2017-05-28 11:19:29', '54004600', '1_1495859418548', '1', '27.82', '65.74');
INSERT INTO device_54004600 VALUES ('20', '2017-05-28 11:24:29', '54004600', '1_1495859418548', '1', '27.87', '65.6');
INSERT INTO device_54004600 VALUES ('21', '2017-05-28 11:29:30', '54004600', '1_1495859418548', '1', '27.89', '65.89');
INSERT INTO device_54004600 VALUES ('22', '2017-05-28 11:34:30', '54004600', '1_1495859418548', '1', '27.91', '66.21');
INSERT INTO device_54004600 VALUES ('23', '2017-05-28 11:39:31', '54004600', '1_1495859418548', '1', '27.98', '66.21');

-- ----------------------------
-- Table structure for `device_54004700`
-- ----------------------------
DROP TABLE IF EXISTS `device_54004700`;
CREATE TABLE `device_54004700` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE` text,
  `SN_NO` text,
  `REPORT_NO` text,
  `STYLE` int(11) DEFAULT NULL,
  `TEMPERATURE` float DEFAULT NULL,
  `HUMIDITY` float DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of device_54004700
-- ----------------------------
INSERT INTO device_54004700 VALUES ('1', '2017-05-28 06:25:30', '54004700', '1_1495859418548', '1', '27.12', '60.14');
INSERT INTO device_54004700 VALUES ('2', '2017-05-28 06:25:30', '54004700', '1_1495859418548', '1', '27.12', '60.14');
INSERT INTO device_54004700 VALUES ('3', '2017-05-28 06:25:30', '54004700', '1_1495859418548', '1', '27.12', '60.14');
INSERT INTO device_54004700 VALUES ('4', '2017-05-28 06:25:30', '54004700', '1_1495859418548', '1', '27.12', '60.14');
INSERT INTO device_54004700 VALUES ('5', '2017-05-28 10:04:27', '54004700', '1_1495859418548', '1', '27.85', '66.07');
INSERT INTO device_54004700 VALUES ('6', '2017-05-28 10:14:28', '54004700', '1_1495859418548', '1', '27.95', '65.98');
INSERT INTO device_54004700 VALUES ('7', '2017-05-28 10:19:29', '54004700', '1_1495859418548', '1', '28.05', '66.01');
INSERT INTO device_54004700 VALUES ('8', '2017-05-28 10:24:30', '54004700', '1_1495859418548', '1', '28.26', '66.69');
INSERT INTO device_54004700 VALUES ('9', '2017-05-28 10:29:31', '54004700', '1_1495859418548', '1', '28.82', '56.37');
INSERT INTO device_54004700 VALUES ('10', '2017-05-28 10:34:30', '54004700', '1_1495859418548', '1', '28.68', '56.14');
INSERT INTO device_54004700 VALUES ('11', '2017-05-28 10:39:31', '54004700', '1_1495859418548', '1', '28.38', '67.55');
INSERT INTO device_54004700 VALUES ('12', '2017-05-28 10:44:31', '54004700', '1_1495859418548', '1', '28.42', '67.66');
INSERT INTO device_54004700 VALUES ('13', '2017-05-28 10:49:32', '54004700', '1_1495859418548', '1', '28.39', '67.52');
INSERT INTO device_54004700 VALUES ('14', '2017-05-28 10:54:32', '54004700', '1_1495859418548', '1', '28.27', '67.28');
INSERT INTO device_54004700 VALUES ('15', '2017-05-28 10:59:33', '54004700', '1_1495859418548', '1', '28.19', '66.9');
INSERT INTO device_54004700 VALUES ('16', '2017-05-28 11:04:33', '54004700', '1_1495859418548', '1', '28.12', '66.46');
INSERT INTO device_54004700 VALUES ('17', '2017-05-28 11:09:34', '54004700', '1_1495859418548', '1', '28.1', '66.51');
INSERT INTO device_54004700 VALUES ('18', '2017-05-28 11:14:34', '54004700', '1_1495859418548', '1', '28.07', '66.45');
INSERT INTO device_54004700 VALUES ('19', '2017-05-28 11:19:35', '54004700', '1_1495859418548', '1', '28.1', '66.48');
INSERT INTO device_54004700 VALUES ('20', '2017-05-28 11:24:35', '54004700', '1_1495859418548', '1', '28.08', '65.86');
INSERT INTO device_54004700 VALUES ('21', '2017-05-28 11:29:36', '54004700', '1_1495859418548', '1', '28.08', '65.89');
INSERT INTO device_54004700 VALUES ('22', '2017-05-28 11:34:36', '54004700', '1_1495859418548', '1', '28.09', '66.69');
INSERT INTO device_54004700 VALUES ('23', '2017-05-28 11:39:37', '54004700', '1_1495859418548', '1', '28.21', '66.43');

-- ----------------------------
-- Table structure for `device_54004900`
-- ----------------------------
DROP TABLE IF EXISTS `device_54004900`;
CREATE TABLE `device_54004900` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE` text,
  `SN_NO` text,
  `REPORT_NO` text,
  `STYLE` int(11) DEFAULT NULL,
  `TEMPERATURE` float DEFAULT NULL,
  `HUMIDITY` float DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of device_54004900
-- ----------------------------
INSERT INTO device_54004900 VALUES ('1', '2017-05-28 05:57:07', '54004900', '1_1495859418548', '1', '27.11', '60.64');
INSERT INTO device_54004900 VALUES ('2', '2017-05-28 05:57:07', '54004900', '1_1495859418548', '1', '27.11', '60.64');
INSERT INTO device_54004900 VALUES ('3', '2017-05-28 05:57:07', '54004900', '1_1495859418548', '1', '27.11', '60.64');
INSERT INTO device_54004900 VALUES ('4', '2017-05-28 05:57:07', '54004900', '1_1495859418548', '1', '27.11', '60.64');
INSERT INTO device_54004900 VALUES ('5', '2017-05-28 10:04:24', '54004900', '1_1495859418548', '1', '27.51', '65.28');
INSERT INTO device_54004900 VALUES ('6', '2017-05-28 10:14:25', '54004900', '1_1495859418548', '1', '27.6', '65.66');
INSERT INTO device_54004900 VALUES ('7', '2017-05-28 10:19:26', '54004900', '1_1495859418548', '1', '27.62', '65.6');
INSERT INTO device_54004900 VALUES ('8', '2017-05-28 10:24:26', '54004900', '1_1495859418548', '1', '27.65', '65.42');
INSERT INTO device_54004900 VALUES ('9', '2017-05-28 10:29:27', '54004900', '1_1495859418548', '1', '27.67', '66.07');
INSERT INTO device_54004900 VALUES ('10', '2017-05-28 10:34:27', '54004900', '1_1495859418548', '1', '27.67', '66.24');
INSERT INTO device_54004900 VALUES ('11', '2017-05-28 10:39:28', '54004900', '1_1495859418548', '1', '27.73', '66.13');
INSERT INTO device_54004900 VALUES ('12', '2017-05-28 10:44:29', '54004900', '1_1495859418548', '1', '27.75', '66.04');
INSERT INTO device_54004900 VALUES ('13', '2017-05-28 10:49:29', '54004900', '1_1495859418548', '1', '27.77', '65.89');
INSERT INTO device_54004900 VALUES ('14', '2017-05-28 10:54:30', '54004900', '1_1495859418548', '1', '27.72', '65.92');
INSERT INTO device_54004900 VALUES ('15', '2017-05-28 10:59:30', '54004900', '1_1495859418548', '1', '27.71', '65.77');
INSERT INTO device_54004900 VALUES ('16', '2017-05-28 11:04:31', '54004900', '1_1495859418548', '1', '27.71', '65.53');
INSERT INTO device_54004900 VALUES ('17', '2017-05-28 11:09:31', '54004900', '1_1495859418548', '1', '27.72', '65.53');
INSERT INTO device_54004900 VALUES ('18', '2017-05-28 11:14:32', '54004900', '1_1495859418548', '1', '27.71', '65.72');
INSERT INTO device_54004900 VALUES ('19', '2017-05-28 11:19:32', '54004900', '1_1495859418548', '1', '27.76', '65.8');
INSERT INTO device_54004900 VALUES ('20', '2017-05-28 11:24:33', '54004900', '1_1495859418548', '1', '27.79', '65.68');
INSERT INTO device_54004900 VALUES ('21', '2017-05-28 11:29:33', '54004900', '1_1495859418548', '1', '27.82', '65.8');
INSERT INTO device_54004900 VALUES ('22', '2017-05-28 11:34:33', '54004900', '1_1495859418548', '1', '27.83', '66.21');
INSERT INTO device_54004900 VALUES ('23', '2017-05-28 11:39:34', '54004900', '1_1495859418548', '1', '27.9', '66.18');

-- ----------------------------
-- Table structure for `device_54004f00`
-- ----------------------------
DROP TABLE IF EXISTS `device_54004f00`;
CREATE TABLE `device_54004f00` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE` text,
  `SN_NO` text,
  `REPORT_NO` text,
  `STYLE` int(11) DEFAULT NULL,
  `TEMPERATURE` float DEFAULT NULL,
  `HUMIDITY` float DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of device_54004f00
-- ----------------------------
INSERT INTO device_54004f00 VALUES ('1', '2017-05-27 23:09:46', '54004F00', '1_1495859418548', '1', '28.05', '67.75');
INSERT INTO device_54004f00 VALUES ('2', '2017-05-27 23:09:46', '54004F00', '1_1495859418548', '1', '28.05', '67.75');
INSERT INTO device_54004f00 VALUES ('3', '2017-05-27 23:09:46', '54004F00', '1_1495859418548', '1', '28.05', '67.75');
INSERT INTO device_54004f00 VALUES ('4', '2017-05-27 23:09:46', '54004F00', '1_1495859418548', '1', '28.05', '67.75');
INSERT INTO device_54004f00 VALUES ('5', '2017-05-27 23:09:46', '54004F00', '1_1495859418548', '1', '28.05', '67.75');
INSERT INTO device_54004f00 VALUES ('6', '2017-05-27 23:09:46', '54004F00', '1_1495859418548', '1', '28.05', '67.75');
INSERT INTO device_54004f00 VALUES ('7', '2017-05-27 23:09:46', '54004F00', '1_1495859418548', '1', '28.05', '67.75');
INSERT INTO device_54004f00 VALUES ('8', '2017-05-27 23:09:46', '54004F00', '1_1495859418548', '1', '28.05', '67.75');
INSERT INTO device_54004f00 VALUES ('9', '2017-05-27 23:09:46', '54004F00', '1_1495859418548', '1', '28.05', '67.75');
INSERT INTO device_54004f00 VALUES ('10', '2017-05-27 23:09:46', '54004F00', '1_1495859418548', '1', '28.05', '67.75');
INSERT INTO device_54004f00 VALUES ('11', '2017-05-27 23:09:46', '54004F00', '1_1495859418548', '1', '28.05', '67.75');
INSERT INTO device_54004f00 VALUES ('12', '2017-05-27 23:09:46', '54004F00', '1_1495859418548', '1', '28.05', '67.75');
INSERT INTO device_54004f00 VALUES ('13', '2017-05-27 23:09:46', '54004F00', '1_1495859418548', '1', '28.05', '67.75');
INSERT INTO device_54004f00 VALUES ('14', '2017-05-27 23:09:46', '54004F00', '1_1495859418548', '1', '28.05', '67.75');
INSERT INTO device_54004f00 VALUES ('15', '2017-05-27 23:09:46', '54004F00', '1_1495859418548', '1', '28.05', '67.75');
INSERT INTO device_54004f00 VALUES ('16', '2017-05-27 23:09:46', '54004F00', '1_1495859418548', '1', '28.05', '67.75');
INSERT INTO device_54004f00 VALUES ('17', '2017-05-27 23:09:46', '54004F00', '1_1495859418548', '1', '28.05', '67.75');
INSERT INTO device_54004f00 VALUES ('18', '2017-05-27 23:09:46', '54004F00', '1_1495859418548', '1', '28.05', '67.75');
INSERT INTO device_54004f00 VALUES ('19', '2017-05-27 23:09:46', '54004F00', '1_1495859418548', '1', '28.05', '67.75');
INSERT INTO device_54004f00 VALUES ('20', '2017-05-27 23:09:46', '54004F00', '1_1495859418548', '1', '28.05', '67.75');
INSERT INTO device_54004f00 VALUES ('21', '2017-05-27 23:09:46', '54004F00', '1_1495859418548', '1', '28.05', '67.75');
INSERT INTO device_54004f00 VALUES ('22', '2017-05-27 23:09:46', '54004F00', '1_1495859418548', '1', '28.05', '67.75');
INSERT INTO device_54004f00 VALUES ('23', '2017-05-27 23:09:46', '54004F00', '1_1495859418548', '1', '28.05', '67.75');

-- ----------------------------
-- Table structure for `device_54005000`
-- ----------------------------
DROP TABLE IF EXISTS `device_54005000`;
CREATE TABLE `device_54005000` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE` text,
  `SN_NO` text,
  `REPORT_NO` text,
  `STYLE` int(11) DEFAULT NULL,
  `TEMPERATURE` float DEFAULT NULL,
  `HUMIDITY` float DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of device_54005000
-- ----------------------------
INSERT INTO device_54005000 VALUES ('1', '2017-05-28 05:56:51', '54005000', '1_1495859418548', '1', '27.07', '60.85');
INSERT INTO device_54005000 VALUES ('2', '2017-05-28 05:56:51', '54005000', '1_1495859418548', '1', '27.07', '60.85');
INSERT INTO device_54005000 VALUES ('3', '2017-05-28 05:56:51', '54005000', '1_1495859418548', '1', '27.07', '60.85');
INSERT INTO device_54005000 VALUES ('4', '2017-05-28 05:56:51', '54005000', '1_1495859418548', '1', '27.07', '60.85');
INSERT INTO device_54005000 VALUES ('5', '2017-05-28 10:04:09', '54005000', '1_1495859418548', '1', '27.63', '65.66');
INSERT INTO device_54005000 VALUES ('6', '2017-05-28 10:14:10', '54005000', '1_1495859418548', '1', '27.7', '65.98');
INSERT INTO device_54005000 VALUES ('7', '2017-05-28 10:19:11', '54005000', '1_1495859418548', '1', '27.74', '66.4');
INSERT INTO device_54005000 VALUES ('8', '2017-05-28 10:24:11', '54005000', '1_1495859418548', '1', '27.8', '66.37');
INSERT INTO device_54005000 VALUES ('9', '2017-05-28 10:29:12', '54005000', '1_1495859418548', '1', '27.82', '66.45');
INSERT INTO device_54005000 VALUES ('10', '2017-05-28 10:34:13', '54005000', '1_1495859418548', '1', '27.81', '67.16');
INSERT INTO device_54005000 VALUES ('11', '2017-05-28 10:39:13', '54005000', '1_1495859418548', '1', '27.9', '66.78');
INSERT INTO device_54005000 VALUES ('12', '2017-05-28 10:44:14', '54005000', '1_1495859418548', '1', '27.93', '66.69');
INSERT INTO device_54005000 VALUES ('13', '2017-05-28 10:49:14', '54005000', '1_1495859418548', '1', '27.91', '66.54');
INSERT INTO device_54005000 VALUES ('14', '2017-05-28 10:54:15', '54005000', '1_1495859418548', '1', '27.87', '66.6');
INSERT INTO device_54005000 VALUES ('15', '2017-05-28 10:59:15', '54005000', '1_1495859418548', '1', '27.82', '66.37');
INSERT INTO device_54005000 VALUES ('16', '2017-05-28 11:04:16', '54005000', '1_1495859418548', '1', '27.8', '66.1');
INSERT INTO device_54005000 VALUES ('17', '2017-05-28 11:09:16', '54005000', '1_1495859418548', '1', '27.8', '66.24');
INSERT INTO device_54005000 VALUES ('18', '2017-05-28 11:14:17', '54005000', '1_1495859418548', '1', '27.8', '66.24');
INSERT INTO device_54005000 VALUES ('19', '2017-05-28 11:19:17', '54005000', '1_1495859418548', '1', '27.83', '66.37');
INSERT INTO device_54005000 VALUES ('20', '2017-05-28 11:24:18', '54005000', '1_1495859418548', '1', '27.88', '66.1');
INSERT INTO device_54005000 VALUES ('21', '2017-05-28 11:29:18', '54005000', '1_1495859418548', '1', '27.91', '66.34');
INSERT INTO device_54005000 VALUES ('22', '2017-05-28 11:34:18', '54005000', '1_1495859418548', '1', '27.94', '66.84');
INSERT INTO device_54005000 VALUES ('23', '2017-05-28 11:39:19', '54005000', '1_1495859418548', '1', '28.02', '66.78');

-- ----------------------------
-- Table structure for `device_6a004300`
-- ----------------------------
DROP TABLE IF EXISTS `device_6a004300`;
CREATE TABLE `device_6a004300` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE` text,
  `SN_NO` text,
  `REPORT_NO` text,
  `STYLE` int(11) DEFAULT NULL,
  `TEMPERATURE` float DEFAULT NULL,
  `HUMIDITY` float DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of device_6a004300
-- ----------------------------
INSERT INTO device_6a004300 VALUES ('1', '2017-05-28 05:56:18', '6A004300', '1_1495859418548', '1', '27.06', '60.32');
INSERT INTO device_6a004300 VALUES ('2', '2017-05-28 05:56:18', '6A004300', '1_1495859418548', '1', '27.06', '60.32');
INSERT INTO device_6a004300 VALUES ('3', '2017-05-28 05:56:18', '6A004300', '1_1495859418548', '1', '27.06', '60.32');
INSERT INTO device_6a004300 VALUES ('4', '2017-05-28 05:56:18', '6A004300', '1_1495859418548', '1', '27.06', '60.32');
INSERT INTO device_6a004300 VALUES ('5', '2017-05-28 10:04:18', '6A004300', '1_1495859418548', '1', '27.52', '64.99');
INSERT INTO device_6a004300 VALUES ('6', '2017-05-28 10:14:19', '6A004300', '1_1495859418548', '1', '27.59', '65.46');
INSERT INTO device_6a004300 VALUES ('7', '2017-05-28 10:19:20', '6A004300', '1_1495859418548', '1', '27.62', '65.49');
INSERT INTO device_6a004300 VALUES ('8', '2017-05-28 10:24:20', '6A004300', '1_1495859418548', '1', '27.66', '65.49');
INSERT INTO device_6a004300 VALUES ('9', '2017-05-28 10:29:21', '6A004300', '1_1495859418548', '1', '27.68', '65.79');
INSERT INTO device_6a004300 VALUES ('10', '2017-05-28 10:34:21', '6A004300', '1_1495859418548', '1', '27.67', '66.25');
INSERT INTO device_6a004300 VALUES ('11', '2017-05-28 10:39:22', '6A004300', '1_1495859418548', '1', '27.75', '65.98');
INSERT INTO device_6a004300 VALUES ('12', '2017-05-28 10:44:22', '6A004300', '1_1495859418548', '1', '27.76', '65.93');
INSERT INTO device_6a004300 VALUES ('13', '2017-05-28 10:49:23', '6A004300', '1_1495859418548', '1', '27.77', '65.72');
INSERT INTO device_6a004300 VALUES ('14', '2017-05-28 10:54:23', '6A004300', '1_1495859418548', '1', '27.72', '65.63');
INSERT INTO device_6a004300 VALUES ('15', '2017-05-28 10:59:24', '6A004300', '1_1495859418548', '1', '27.7', '65.57');
INSERT INTO device_6a004300 VALUES ('16', '2017-05-28 11:04:24', '6A004300', '1_1495859418548', '1', '27.68', '65.22');
INSERT INTO device_6a004300 VALUES ('17', '2017-05-28 11:09:25', '6A004300', '1_1495859418548', '1', '27.68', '65.46');
INSERT INTO device_6a004300 VALUES ('18', '2017-05-28 11:14:25', '6A004300', '1_1495859418548', '1', '27.68', '65.48');
INSERT INTO device_6a004300 VALUES ('19', '2017-05-28 11:19:26', '6A004300', '1_1495859418548', '1', '27.74', '65.6');
INSERT INTO device_6a004300 VALUES ('20', '2017-05-28 11:24:26', '6A004300', '1_1495859418548', '1', '27.78', '65.43');
INSERT INTO device_6a004300 VALUES ('21', '2017-05-28 11:29:27', '6A004300', '1_1495859418548', '1', '27.8', '65.66');
INSERT INTO device_6a004300 VALUES ('22', '2017-05-28 11:34:27', '6A004300', '1_1495859418548', '1', '27.82', '66.14');
INSERT INTO device_6a004300 VALUES ('23', '2017-05-28 11:39:28', '6A004300', '1_1495859418548', '1', '27.91', '65.95');

-- ----------------------------
-- Table structure for `device_6b004d00`
-- ----------------------------
DROP TABLE IF EXISTS `device_6b004d00`;
CREATE TABLE `device_6b004d00` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE` text,
  `SN_NO` text,
  `REPORT_NO` text,
  `STYLE` int(11) DEFAULT NULL,
  `TEMPERATURE` float DEFAULT NULL,
  `HUMIDITY` float DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of device_6b004d00
-- ----------------------------
INSERT INTO device_6b004d00 VALUES ('1', '2017-05-28 06:25:36', '6B004D00', '1_1495859418548', '1', '27.03', '60.61');
INSERT INTO device_6b004d00 VALUES ('2', '2017-05-28 06:25:36', '6B004D00', '1_1495859418548', '1', '27.03', '60.61');
INSERT INTO device_6b004d00 VALUES ('3', '2017-05-28 06:25:36', '6B004D00', '1_1495859418548', '1', '27.03', '60.61');
INSERT INTO device_6b004d00 VALUES ('4', '2017-05-28 06:25:36', '6B004D00', '1_1495859418548', '1', '27.03', '60.61');
INSERT INTO device_6b004d00 VALUES ('5', '2017-05-28 10:04:36', '6B004D00', '1_1495859418548', '1', '27.55', '65.72');
INSERT INTO device_6b004d00 VALUES ('6', '2017-05-28 10:14:38', '6B004D00', '1_1495859418548', '1', '27.64', '66.02');
INSERT INTO device_6b004d00 VALUES ('7', '2017-05-28 10:19:38', '6B004D00', '1_1495859418548', '1', '27.66', '66.24');
INSERT INTO device_6b004d00 VALUES ('8', '2017-05-28 10:24:39', '6B004D00', '1_1495859418548', '1', '27.71', '66.43');
INSERT INTO device_6b004d00 VALUES ('9', '2017-05-28 10:29:39', '6B004D00', '1_1495859418548', '1', '27.73', '66.34');
INSERT INTO device_6b004d00 VALUES ('10', '2017-05-28 10:34:40', '6B004D00', '1_1495859418548', '1', '27.71', '66.63');
INSERT INTO device_6b004d00 VALUES ('11', '2017-05-28 10:39:40', '6B004D00', '1_1495859418548', '1', '27.78', '66.84');
INSERT INTO device_6b004d00 VALUES ('12', '2017-05-28 10:44:41', '6B004D00', '1_1495859418548', '1', '27.81', '66.51');
INSERT INTO device_6b004d00 VALUES ('13', '2017-05-28 10:49:40', '6B004D00', '1_1495859418548', '1', '27.82', '66.34');
INSERT INTO device_6b004d00 VALUES ('14', '2017-05-28 10:54:41', '6B004D00', '1_1495859418548', '1', '27.74', '66.27');
INSERT INTO device_6b004d00 VALUES ('15', '2017-05-28 10:59:41', '6B004D00', '1_1495859418548', '1', '27.72', '66.1');
INSERT INTO device_6b004d00 VALUES ('16', '2017-05-28 11:04:42', '6B004D00', '1_1495859418548', '1', '27.71', '65.89');
INSERT INTO device_6b004d00 VALUES ('17', '2017-05-28 11:09:42', '6B004D00', '1_1495859418548', '1', '27.72', '66.1');
INSERT INTO device_6b004d00 VALUES ('18', '2017-05-28 11:14:43', '6B004D00', '1_1495859418548', '1', '27.71', '66.07');
INSERT INTO device_6b004d00 VALUES ('19', '2017-05-28 11:19:43', '6B004D00', '1_1495859418548', '1', '27.75', '66.16');
INSERT INTO device_6b004d00 VALUES ('20', '2017-05-28 11:24:44', '6B004D00', '1_1495859418548', '1', '27.8', '66.01');
INSERT INTO device_6b004d00 VALUES ('21', '2017-05-28 11:29:44', '6B004D00', '1_1495859418548', '1', '27.85', '66.31');
INSERT INTO device_6b004d00 VALUES ('22', '2017-05-28 11:34:45', '6B004D00', '1_1495859418548', '1', '27.85', '66.66');
INSERT INTO device_6b004d00 VALUES ('23', '2017-05-28 11:39:45', '6B004D00', '1_1495859418548', '1', '27.94', '66.66');

-- ----------------------------
-- Table structure for `device_6b004f00`
-- ----------------------------
DROP TABLE IF EXISTS `device_6b004f00`;
CREATE TABLE `device_6b004f00` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DATE` text,
  `SN_NO` text,
  `REPORT_NO` text,
  `STYLE` int(11) DEFAULT NULL,
  `TEMPERATURE` float DEFAULT NULL,
  `HUMIDITY` float DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of device_6b004f00
-- ----------------------------
INSERT INTO device_6b004f00 VALUES ('1', '2017-05-28 06:24:11', '6B004F00', '1_1495859418548', '1', '27.12', '60.74');
INSERT INTO device_6b004f00 VALUES ('2', '2017-05-28 06:24:11', '6B004F00', '1_1495859418548', '1', '27.12', '60.74');
INSERT INTO device_6b004f00 VALUES ('3', '2017-05-28 06:24:11', '6B004F00', '1_1495859418548', '1', '27.12', '60.74');
INSERT INTO device_6b004f00 VALUES ('4', '2017-05-28 06:24:11', '6B004F00', '1_1495859418548', '1', '27.12', '60.74');
INSERT INTO device_6b004f00 VALUES ('5', '2017-05-28 10:04:12', '6B004F00', '1_1495859418548', '1', '27.65', '65.58');
INSERT INTO device_6b004f00 VALUES ('6', '2017-05-28 10:14:13', '6B004F00', '1_1495859418548', '1', '27.74', '65.9');
INSERT INTO device_6b004f00 VALUES ('7', '2017-05-28 10:19:14', '6B004F00', '1_1495859418548', '1', '27.78', '66.28');
INSERT INTO device_6b004f00 VALUES ('8', '2017-05-28 10:24:14', '6B004F00', '1_1495859418548', '1', '27.83', '66.14');
INSERT INTO device_6b004f00 VALUES ('9', '2017-05-28 10:29:15', '6B004F00', '1_1495859418548', '1', '27.85', '66.44');
INSERT INTO device_6b004f00 VALUES ('10', '2017-05-28 10:34:16', '6B004F00', '1_1495859418548', '1', '27.83', '67.02');
INSERT INTO device_6b004f00 VALUES ('11', '2017-05-28 10:39:16', '6B004F00', '1_1495859418548', '1', '27.91', '66.79');
INSERT INTO device_6b004f00 VALUES ('12', '2017-05-28 10:44:17', '6B004F00', '1_1495859418548', '1', '27.94', '66.58');
INSERT INTO device_6b004f00 VALUES ('13', '2017-05-28 10:49:17', '6B004F00', '1_1495859418548', '1', '27.93', '66.47');
INSERT INTO device_6b004f00 VALUES ('14', '2017-05-28 10:54:18', '6B004F00', '1_1495859418548', '1', '27.88', '66.4');
INSERT INTO device_6b004f00 VALUES ('15', '2017-05-28 10:59:18', '6B004F00', '1_1495859418548', '1', '27.86', '66.23');
INSERT INTO device_6b004f00 VALUES ('16', '2017-05-28 11:04:19', '6B004F00', '1_1495859418548', '1', '27.83', '65.96');
INSERT INTO device_6b004f00 VALUES ('17', '2017-05-28 11:09:19', '6B004F00', '1_1495859418548', '1', '27.83', '66.11');
INSERT INTO device_6b004f00 VALUES ('18', '2017-05-28 11:14:20', '6B004F00', '1_1495859418548', '1', '27.82', '66.17');
INSERT INTO device_6b004f00 VALUES ('19', '2017-05-28 11:19:20', '6B004F00', '1_1495859418548', '1', '27.88', '66.28');
INSERT INTO device_6b004f00 VALUES ('20', '2017-05-28 11:24:21', '6B004F00', '1_1495859418548', '1', '27.88', '64.89');
INSERT INTO device_6b004f00 VALUES ('21', '2017-05-28 11:29:21', '6B004F00', '1_1495859418548', '1', '27.89', '65.28');
INSERT INTO device_6b004f00 VALUES ('22', '2017-05-28 11:34:22', '6B004F00', '1_1495859418548', '1', '27.93', '65.98');
INSERT INTO device_6b004f00 VALUES ('23', '2017-05-28 11:39:22', '6B004F00', '1_1495859418548', '1', '27.96', '65.54');

-- ----------------------------
-- Table structure for `host_info`
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of host_info
-- ----------------------------
INSERT INTO host_info VALUES ('1', '真的主机', 'TEST.HOST.1', 'SN-HOST-1', '2017-04-15 00:00:00', '.', '1');
INSERT INTO host_info VALUES ('2', '深圳测试主机', 'SZ_TEST.1', '00082267A660', '2017-05-27 00:00:00', '深圳测试使用', '1');

-- ----------------------------
-- Table structure for `insulation_can_info`
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
INSERT INTO insulation_can_info VALUES ('1', '箱子', '1', '123', '900', null, null, null, '12', null, null, null, null, null, null, null, null, 'adsffadfa', null, '1');

-- ----------------------------
-- Table structure for `personnel_duties_info`
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
INSERT INTO personnel_duties_info VALUES ('1', '黑海', '3', '1', null, '1');
INSERT INTO personnel_duties_info VALUES ('6', 'dd', '3', '0', null, '1');

-- ----------------------------
-- Table structure for `personnel_post_info`
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
INSERT INTO personnel_post_info VALUES ('1', '黑海', '1', '1', '1', '1');
INSERT INTO personnel_post_info VALUES ('2', '红海', '2', '1', '1', '1');
INSERT INTO personnel_post_info VALUES ('3', '率还', '3', '1', '1', '1');
INSERT INTO personnel_post_info VALUES ('5', 'dddd', '3', '1', 'a', '1');

-- ----------------------------
-- Table structure for `point_info`
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
  `REMARK` varchar(100) DEFAULT NULL,
  `STATUS` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='point';

-- ----------------------------
-- Records of point_info
-- ----------------------------
INSERT INTO point_info VALUES ('5', '1001', 'SN-01', 'TEST.1', '自测', '911', '2017-04-15 20:29:14', '1001', '1');
INSERT INTO point_info VALUES ('6', '1002', 'SN-02', 'TEST.1', '自测', '911', '2017-04-15 20:30:20', '1002', '1');
INSERT INTO point_info VALUES ('7', '1003', 'SN-03', 'TEST.1', '自测', '911', '2017-05-05 15:33:21', '的', '1');
INSERT INTO point_info VALUES ('8', '1004', 'SN-04', 'TEST.1', '自测', '911', '2017-05-05 16:26:39', null, '1');
INSERT INTO point_info VALUES ('9', '1', '34002B00', '1', '1', '1', '2017-05-27 12:21:25', null, '1');
INSERT INTO point_info VALUES ('10', '2', '6B005100', '1', '1', '1', '2017-05-27 12:21:38', null, '1');
INSERT INTO point_info VALUES ('11', '3', '54004A00', '1', '1', '1', '2017-05-27 12:21:53', null, '1');
INSERT INTO point_info VALUES ('12', '4', '6A004600', '1', '1', '1', '2017-05-27 12:22:09', null, '1');
INSERT INTO point_info VALUES ('13', '5', '54003E00', '1', '1', '1', '2017-05-27 12:22:24', null, '1');
INSERT INTO point_info VALUES ('14', '6', '6B004C00', '1', '1', '1', '2017-05-27 12:22:37', null, '1');
INSERT INTO point_info VALUES ('15', '7', '54003D00', '1', '1', '1', '2017-05-27 12:22:52', null, '1');
INSERT INTO point_info VALUES ('16', '8', '6A004A00', '1', '1', '1', '2017-05-27 12:23:06', null, '1');
INSERT INTO point_info VALUES ('17', '9', '54005200', '1', '1', '1', '2017-05-27 12:23:17', null, '1');
INSERT INTO point_info VALUES ('18', '10', '6B004B00', '1', '1', '1', '2017-05-27 12:23:32', null, '1');
INSERT INTO point_info VALUES ('19', '11', '54004400', '1', '1', '1', '2017-05-27 12:23:45', null, '1');
INSERT INTO point_info VALUES ('20', '12', '34002E00', '1', '1', '1', '2017-05-27 12:23:55', null, '1');
INSERT INTO point_info VALUES ('21', '13', '54004E00', '1', '1', '1', '2017-05-27 12:24:06', null, '1');
INSERT INTO point_info VALUES ('22', '14', '54003C00', '1', '1', '1', '2017-05-27 12:24:18', null, '1');
INSERT INTO point_info VALUES ('23', '15', '54004300', '1', '1', '1', '2017-05-27 12:24:36', null, '1');
INSERT INTO point_info VALUES ('24', '16', '54004900', '1', '1', '1', '2017-05-27 12:24:49', null, '1');
INSERT INTO point_info VALUES ('25', '17', '34003A00', '1', '1', '1', '2017-05-27 12:25:02', null, '1');
INSERT INTO point_info VALUES ('26', '18', '6B004F00', '1', '1', '1', '2017-05-27 12:25:16', null, '1');
INSERT INTO point_info VALUES ('27', '19', '54005000', '1', '1', '1', '2017-05-27 12:25:31', null, '1');
INSERT INTO point_info VALUES ('28', '20', '54004700', '1', '1', '1', '2017-05-27 12:25:44', null, '1');
INSERT INTO point_info VALUES ('29', '21', '34003100', '1', '1', '1', '2017-05-27 12:25:54', null, '1');
INSERT INTO point_info VALUES ('30', '22', '34003300', '1', '1', '1', '2017-05-27 12:26:05', null, '1');
INSERT INTO point_info VALUES ('31', '23', '34002900', '1', '1', '1', '2017-05-27 12:26:16', null, '1');
INSERT INTO point_info VALUES ('32', '24', '54004C00', '1', '1', '1', '2017-05-27 12:26:26', null, '1');
INSERT INTO point_info VALUES ('33', '25', '6B004D00', '1', '1', '1', '2017-05-27 12:26:40', null, '1');
INSERT INTO point_info VALUES ('34', '26', '54004F00', '1', '1', '1', '2017-05-27 12:26:56', null, '1');
INSERT INTO point_info VALUES ('35', '27', '34003000', '1', '1', '1', '2017-05-27 12:27:11', null, '1');
INSERT INTO point_info VALUES ('36', '28', '34003600', '1', '1', '1', '2017-05-27 12:27:23', null, '1');
INSERT INTO point_info VALUES ('37', '29', '6A004300', '1', '1', '1', '2017-05-27 12:27:35', null, '1');
INSERT INTO point_info VALUES ('38', '30', '54004600', '1', '1', '1', '2017-05-27 12:27:48', null, '1');

-- ----------------------------
-- Table structure for `report_describe`
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
INSERT INTO report_describe VALUES ('jjkk123', '牛逼的东西', '21', '22', '33', '4555', '3', '2', '大公司', '20°C', '1', '1', '76', '11', '11', '112');

-- ----------------------------
-- Table structure for `report_image_info`
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
INSERT INTO report_image_info VALUES ('1_1493045541961', null, null, null, '/cws/sds_file/1_1493045541961_2_1.png', '/cws/sds_file/1_1493045541961_2_2.png', '/cws/sds_file/1_1493045541961_2_3.png', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `report_info`
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
INSERT INTO report_info VALUES ('1_1493045541961', '1.0', '救济测试', '家里', '1', null, '阿苏大', '测试报告', '0', '1', '极高温验证', 'C:\\Users\\rioze\\Desktop\\《冷库》生成样例.word', '1');
INSERT INTO report_info VALUES ('1_1495859418548', null, null, null, '2', null, null, '深圳冷库验证报告', '1', '1', '极高温验证', null, '0');

-- ----------------------------
-- Table structure for `report_worker`
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
INSERT INTO report_worker VALUES ('jjkk123', '奶子公司', '2', '0', '0', '0', '1');
INSERT INTO report_worker VALUES ('jjkk123', '吕马三', '1', '射鸡师', '设计，还是设计，还能干什么', '1', '2');
INSERT INTO report_worker VALUES ('jjkk123', '迟永四', '1', '爪哇师', '爪哇，专业爪哇', '4', '3');
INSERT INTO report_worker VALUES ('jjkk123', '鸡子公司', '3', '0', '0', '0', '4');
INSERT INTO report_worker VALUES ('jjkk123', '张二嘎', '1', '射鸡师', '设计，还是设计，还能干什么', '1', '5');
INSERT INTO report_worker VALUES ('jjkk123', '张桑啊', '1', '射鸡师', '设计，还是设计，还能干什么', '1', '6');
INSERT INTO report_worker VALUES ('jjkk123', '吕步三', '1', '爪哇师', '爪哇，专业爪哇', '4', '7');
INSERT INTO report_worker VALUES ('jjkk123', '吕步思', '1', '爪哇师', '爪哇，专业爪哇', '4', '8');

-- ----------------------------
-- Table structure for `validation_report_info`
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
-- Table structure for `verify_info`
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
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8 COMMENT='验证对象表';

-- ----------------------------
-- Records of verify_info
-- ----------------------------
INSERT INTO verify_info VALUES ('99', '1', '冷库名称', '1', '2017-03-29 23:00:38', '测试2个', '1');
INSERT INTO verify_info VALUES ('107', '5', '大汽车', '2', '2017-05-03 23:35:54', '2', '1');
INSERT INTO verify_info VALUES ('108', '1', '箱子', '3', '2017-05-05 16:26:03', '的', '1');
INSERT INTO verify_info VALUES ('109', '2', '深圳冷库测试', '1', '2017-05-27 12:29:55', null, '1');

-- ----------------------------
-- Table structure for `verify_point_rel`
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='VERIFY是方涛起名的';

-- ----------------------------
-- Records of verify_point_rel
-- ----------------------------
INSERT INTO verify_point_rel VALUES ('3', '1', '1', '6', 'SN-02', '2', '2', '2017-04-15 22:16:30', '3', '1');
INSERT INTO verify_point_rel VALUES ('4', '1', '1', '5', 'SN-01', '1', '3', '2017-04-21 22:59:24', null, '1');
INSERT INTO verify_point_rel VALUES ('5', '5', '2', '7', 'SN-03', '1', '5', '2017-05-05 15:33:39', null, '1');
INSERT INTO verify_point_rel VALUES ('6', '1', '3', '8', 'SN-04', '1', '4', '2017-05-05 16:26:57', null, '1');
INSERT INTO verify_point_rel VALUES ('7', '2', '1', '9', '34002B00', '1', '1', '2017-05-27 12:34:12', null, '1');
INSERT INTO verify_point_rel VALUES ('8', '2', '1', '10', '6B005100', '2', '2', '2017-05-27 12:34:23', null, '1');
INSERT INTO verify_point_rel VALUES ('9', '2', '1', '11', '54004A00', '3', '3', '2017-05-27 12:34:32', null, '1');
INSERT INTO verify_point_rel VALUES ('10', '2', '1', '12', '6A004600', '4', '4', '2017-05-27 12:35:05', null, '1');
INSERT INTO verify_point_rel VALUES ('11', '2', '1', '13', '54003E00', '5', '1', '2017-05-27 12:35:51', null, '1');
INSERT INTO verify_point_rel VALUES ('12', '2', '1', '14', '6B004C00', '6', '1', '2017-05-27 12:35:59', null, '1');
INSERT INTO verify_point_rel VALUES ('13', '2', '1', '15', '54003D00', '7', '1', '2017-05-27 12:40:56', null, '1');
INSERT INTO verify_point_rel VALUES ('14', '2', '1', '17', '54005200', '8', '1', '2017-05-27 12:41:04', null, '1');
INSERT INTO verify_point_rel VALUES ('15', '2', '1', '18', '6B004B00', '9', '3', '2017-05-27 12:41:12', null, '1');
INSERT INTO verify_point_rel VALUES ('16', '2', '1', '19', '54004400', '10', '1', '2017-05-27 12:41:19', null, '1');
INSERT INTO verify_point_rel VALUES ('17', '2', '1', '16', '6A004A00', '11', '5', '2017-05-27 12:41:28', null, '1');
INSERT INTO verify_point_rel VALUES ('18', '2', '1', '22', '54003C00', '12', '1', '2017-05-27 12:41:35', null, '1');
INSERT INTO verify_point_rel VALUES ('19', '2', '1', '20', '34002E00', '13', '5', '2017-05-27 12:41:42', null, '1');
INSERT INTO verify_point_rel VALUES ('20', '2', '1', '25', '34003A00', '14', '1', '2017-05-27 12:41:59', null, '1');
INSERT INTO verify_point_rel VALUES ('21', '2', '1', '37', '6A004300', '15', '3', '2017-05-27 12:42:08', null, '1');
INSERT INTO verify_point_rel VALUES ('22', '2', '1', '21', '54004E00', '16', '7', '2017-05-27 12:42:17', null, '1');
INSERT INTO verify_point_rel VALUES ('23', '2', '1', '23', '54004300', '17', '6', '2017-05-27 12:42:35', null, '1');
INSERT INTO verify_point_rel VALUES ('24', '2', '1', '24', '54004900', '18', '1', '2017-05-27 12:42:42', null, '1');
INSERT INTO verify_point_rel VALUES ('25', '2', '1', '26', '6B004F00', '19', '2', '2017-05-27 12:42:50', null, '1');
INSERT INTO verify_point_rel VALUES ('26', '2', '1', '27', '54005000', '20', '1', '2017-05-27 12:42:57', null, '1');
INSERT INTO verify_point_rel VALUES ('27', '2', '1', '28', '54004700', '21', '6', '2017-05-27 12:43:05', null, '1');
INSERT INTO verify_point_rel VALUES ('28', '2', '1', '30', '34003300', '22', '1', '2017-05-27 12:43:12', null, '1');
INSERT INTO verify_point_rel VALUES ('29', '2', '1', '32', '54004C00', '23', '1', '2017-05-27 12:43:19', null, '1');
INSERT INTO verify_point_rel VALUES ('30', '2', '1', '31', '34002900', '24', '3', '2017-05-27 12:43:26', null, '1');
INSERT INTO verify_point_rel VALUES ('31', '2', '1', '33', '6B004D00', '25', '4', '2017-05-27 12:43:33', null, '1');
INSERT INTO verify_point_rel VALUES ('32', '2', '1', '29', '34003100', '26', '4', '2017-05-27 12:43:46', null, '1');
INSERT INTO verify_point_rel VALUES ('33', '2', '1', '34', '54004F00', '27', '1', '2017-05-27 12:43:53', null, '1');
INSERT INTO verify_point_rel VALUES ('34', '2', '1', '36', '34003600', '28', '1', '2017-05-27 12:44:04', null, '1');
INSERT INTO verify_point_rel VALUES ('35', '2', '1', '35', '34003000', '29', '2', '2017-05-27 12:44:12', null, '1');
INSERT INTO verify_point_rel VALUES ('36', '2', '1', '38', '54004600', '30', '3', '2017-05-27 12:44:19', null, '1');
