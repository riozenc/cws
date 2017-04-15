/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50027
Source Host           : 127.0.0.1:3306
Source Database       : cws

Target Server Type    : MYSQL
Target Server Version : 50027
File Encoding         : 65001

Date: 2017-04-15 22:17:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for chill_car_info
-- ----------------------------
DROP TABLE IF EXISTS `chill_car_info`;
CREATE TABLE `chill_car_info` (
  `ID` int(11) NOT NULL auto_increment,
  `NAME` varchar(30) default NULL,
  `TYPES` varchar(30) default NULL,
  `VOLUME` varchar(30) default NULL,
  `FAN_NUM` varchar(30) default NULL,
  `ENTRANCE_NUM` int(11) default NULL,
  `GOODS_SHELVES` int(11) default NULL,
  `PROBE_NUM` int(11) default NULL,
  `MANUFACTOR` varchar(30) default NULL,
  `DIS_MAP` varchar(100) default NULL,
  `REMARK` varchar(100) default NULL,
  `STATUS` smallint(6) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='chill car冷藏车';

-- ----------------------------
-- Records of chill_car_info
-- ----------------------------
INSERT INTO `chill_car_info` VALUES ('1', '大汽车', null, null, null, null, null, null, null, null, null, '1');

-- ----------------------------
-- Table structure for cold_storage_info
-- ----------------------------
DROP TABLE IF EXISTS `cold_storage_info`;
CREATE TABLE `cold_storage_info` (
  `ID` int(11) NOT NULL auto_increment,
  `NAME` varchar(30) default NULL,
  `TYPES` varchar(30) default NULL,
  `VOLUME` varchar(30) default NULL,
  `AREA` varchar(30) default NULL,
  `FAN_NUM` int(11) default NULL,
  `FAN_MAIN_NUM` int(11) default NULL,
  `FAN_SPARE_NUM` int(11) default NULL,
  `ENTRANCE_NUM` int(11) default NULL,
  `GOODS_SHELVES` int(11) default NULL,
  `PROBE_NUM` int(11) default NULL,
  `MANUFACTOR` varchar(30) default NULL,
  `DIS_MAP` varchar(100) default NULL,
  `REMARK` varchar(100) default NULL,
  `STATUS` smallint(6) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='���Cold storage';

-- ----------------------------
-- Records of cold_storage_info
-- ----------------------------
INSERT INTO `cold_storage_info` VALUES ('1', '小测试2', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `cold_storage_info` VALUES ('3', '冷酷', null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for common_param_info
-- ----------------------------
DROP TABLE IF EXISTS `common_param_info`;
CREATE TABLE `common_param_info` (
  `ID` bigint(20) NOT NULL auto_increment,
  `TYPE` varchar(20) default NULL,
  `NAME` varchar(20) default NULL,
  `VALUE` varchar(20) default NULL,
  `REMARK` varchar(100) default NULL,
  `CREATE_DATE` datetime default NULL,
  `UPDATE_DATE` datetime default NULL,
  `STATUS` smallint(6) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of common_param_info
-- ----------------------------
INSERT INTO `common_param_info` VALUES ('1', 'VERIFY_TYPE', '冷库', '1', null, '2017-04-08 22:00:33', '2017-04-10 23:06:42', '1');
INSERT INTO `common_param_info` VALUES ('2', 'POST_TYPE', '验证设计人员', '1', null, '2017-04-10 22:53:15', '2017-04-10 22:53:17', '1');
INSERT INTO `common_param_info` VALUES ('3', 'POST_TYPE', '验证实施人员', '2', null, '2017-04-10 22:53:28', '2017-04-10 22:53:30', '1');
INSERT INTO `common_param_info` VALUES ('4', 'DUTIES_TYPE', '协助组织实施', '1', null, '2017-04-10 22:55:00', '2017-04-10 22:55:02', '1');
INSERT INTO `common_param_info` VALUES ('5', 'POST_TYPE', '验证组负责人', '3', null, '2017-04-10 23:04:33', '2017-04-10 23:09:33', '1');
INSERT INTO `common_param_info` VALUES ('6', 'VERIFY_TYPE', '冷藏车', '2', null, '2017-04-10 23:07:06', '2017-04-10 23:07:21', '1');
INSERT INTO `common_param_info` VALUES ('8', 'POST_TYPE', '21322', '5', '13', '2017-04-10 23:22:50', '2017-04-12 21:46:53', '1');
INSERT INTO `common_param_info` VALUES ('10', 'DUTIES_TYPE', '组织协调、监督实施、复核关键数据', '3', null, '2017-04-10 23:26:14', null, '1');

-- ----------------------------
-- Table structure for company_host_rel
-- ----------------------------
DROP TABLE IF EXISTS `company_host_rel`;
CREATE TABLE `company_host_rel` (
  `ID` int(11) NOT NULL auto_increment,
  `COMPANY_ID` int(11) default NULL,
  `HOST_ID` int(11) default NULL,
  `CREATE_DATE` datetime default NULL,
  `REMARK` varchar(100) default NULL,
  `STAUTS` smallint(6) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��ҵ������ϵ��';

-- ----------------------------
-- Records of company_host_rel
-- ----------------------------
INSERT INTO `company_host_rel` VALUES ('1', '1', '1', '2017-04-15 20:31:23', null, '1');

-- ----------------------------
-- Table structure for company_info
-- ----------------------------
DROP TABLE IF EXISTS `company_info`;
CREATE TABLE `company_info` (
  `ID` int(11) NOT NULL auto_increment,
  `NAME` varchar(50) default NULL,
  `LINKMAN` varchar(20) default NULL,
  `PHONE` varchar(20) default NULL,
  `ADDRESS` varchar(100) default NULL,
  `REMARK` varchar(100) default NULL,
  `CREATE_DATE` datetime default NULL,
  `STATUS` smallint(6) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��ҵ��';

-- ----------------------------
-- Records of company_info
-- ----------------------------
INSERT INTO `company_info` VALUES ('1', '总测试公司', '策', '110', '天安门广场', '真的利害', '2017-03-28 22:39:36', '1');
INSERT INTO `company_info` VALUES ('2', '测试添加公司', '崔兴海', '119', '鲁东宿舍', '只会剑圣', '2017-04-08 21:54:29', '1');

-- ----------------------------
-- Table structure for company_point_rel
-- ----------------------------
DROP TABLE IF EXISTS `company_point_rel`;
CREATE TABLE `company_point_rel` (
  `ID` int(11) NOT NULL auto_increment,
  `COMPANY_ID` int(11) default NULL,
  `POINT_ID` int(11) default NULL,
  `CREATE_DATE` datetime default NULL,
  `REMARK` varchar(100) default NULL,
  `STATUS` smallint(6) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='企业测点关系表';

-- ----------------------------
-- Records of company_point_rel
-- ----------------------------
INSERT INTO `company_point_rel` VALUES ('1', '1', '5', '2017-04-15 20:29:14', null, '1');
INSERT INTO `company_point_rel` VALUES ('2', '1', '6', '2017-04-15 20:30:20', null, '2');

-- ----------------------------
-- Table structure for company_verify_rel
-- ----------------------------
DROP TABLE IF EXISTS `company_verify_rel`;
CREATE TABLE `company_verify_rel` (
  `ID` int(11) NOT NULL auto_increment,
  `COMPANY_ID` int(11) default NULL,
  `VERIFY_ID` int(11) default NULL,
  `CREATE_DATE` datetime default NULL,
  `REMARK` varchar(100) default NULL,
  `STATUS` smallint(6) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='企业与验证对象关系表。\r\n验证对象包括：冷库、冷藏车等';

-- ----------------------------
-- Records of company_verify_rel
-- ----------------------------
INSERT INTO `company_verify_rel` VALUES ('1', '1', '1', '2017-03-29 23:01:10', '测试关系', '1');

-- ----------------------------
-- Table structure for host_info
-- ----------------------------
DROP TABLE IF EXISTS `host_info`;
CREATE TABLE `host_info` (
  `ID` int(11) NOT NULL auto_increment,
  `NAME` varchar(30) default NULL,
  `TYPES` varchar(30) default NULL,
  `SN_NO` varchar(30) default NULL,
  `CREATE_DATE` datetime default NULL,
  `REMARK` varchar(100) default NULL,
  `STATUS` smallint(6) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of host_info
-- ----------------------------
INSERT INTO `host_info` VALUES ('1', '真的主机', 'TEST.HOST.1', 'SN-HOST-1', '2017-04-15 00:00:00', '.', '1');

-- ----------------------------
-- Table structure for personnel_duties_info
-- ----------------------------
DROP TABLE IF EXISTS `personnel_duties_info`;
CREATE TABLE `personnel_duties_info` (
  `ID` int(11) NOT NULL auto_increment,
  `NAME` varchar(30) default NULL,
  `DUTIES_ID` int(11) default NULL,
  `COMPANY_ID` int(11) default NULL,
  `REMARK` varchar(100) default NULL,
  `STATUS` smallint(6) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='duties';

-- ----------------------------
-- Records of personnel_duties_info
-- ----------------------------

-- ----------------------------
-- Table structure for personnel_post_info
-- ----------------------------
DROP TABLE IF EXISTS `personnel_post_info`;
CREATE TABLE `personnel_post_info` (
  `ID` int(11) NOT NULL auto_increment,
  `NAME` varchar(30) default NULL,
  `POST_ID` int(11) default NULL,
  `COMPANY_ID` int(11) default NULL,
  `REMARK` varchar(100) default NULL,
  `STATUS` smallint(6) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='personnel_post';

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
  `ID` int(11) NOT NULL auto_increment,
  `NO` varchar(4) default NULL,
  `SN_NO` varchar(30) default NULL,
  `TYPES` varchar(30) default NULL,
  `CHECK_UNIT` varchar(30) default NULL,
  `CERTIFICATE_NO` varchar(30) default NULL,
  `CREATE_DATE` datetime default NULL,
  `VALID_DATE` datetime default NULL,
  `REMARK` varchar(100) default NULL,
  `STATUS` smallint(6) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='point';

-- ----------------------------
-- Records of point_info
-- ----------------------------
INSERT INTO `point_info` VALUES ('5', '1001', 'SN-01', 'TEST.1', '自测', '911', '2017-04-15 20:29:14', '2017-05-06 00:00:00', '1001', '1');
INSERT INTO `point_info` VALUES ('6', '1002', 'SN-02', 'TEST.1', '自测', '911', '2017-04-15 20:30:20', '2017-05-06 00:00:00', '1002', '1');

-- ----------------------------
-- Table structure for validation_report_info
-- ----------------------------
DROP TABLE IF EXISTS `validation_report_info`;
CREATE TABLE `validation_report_info` (
  `ID` int(11) NOT NULL auto_increment,
  `NAME` varchar(30) default NULL,
  `COMPANY_ID` int(11) default NULL,
  `VERIFY_ID` int(11) default NULL,
  `VERIFY_TYPE` int(11) default NULL,
  `CREATE_DATE` datetime default NULL,
  `REMARK` varchar(100) default NULL,
  `STATUS` smallint(6) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ValidationReport';

-- ----------------------------
-- Records of validation_report_info
-- ----------------------------

-- ----------------------------
-- Table structure for verify_info
-- ----------------------------
DROP TABLE IF EXISTS `verify_info`;
CREATE TABLE `verify_info` (
  `ID` int(11) NOT NULL auto_increment,
  `VERIFY_ID` int(11) default NULL,
  `VERIFY_NAME` varchar(30) default NULL,
  `VERIFY_TYPE` int(11) default NULL COMMENT '1、冷库\r\n            2、冷藏车\r\n            3、保温箱',
  `CREATE_DATE` datetime default NULL,
  `REMARK` varchar(100) default NULL,
  `STATUS` smallint(6) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='验证对象表';

-- ----------------------------
-- Records of verify_info
-- ----------------------------
INSERT INTO `verify_info` VALUES ('99', '1', '小测试2', '1', '2017-03-29 23:00:38', '测试2个', '1');
INSERT INTO `verify_info` VALUES ('100', '3', '冷酷', '1', '2017-04-13 21:30:10', '之尊', '1');
INSERT INTO `verify_info` VALUES ('101', '1', '大汽车', '2', '2017-04-13 21:56:56', '奔驰', '1');

-- ----------------------------
-- Table structure for verify_point_rel
-- ----------------------------
DROP TABLE IF EXISTS `verify_point_rel`;
CREATE TABLE `verify_point_rel` (
  `ID` int(11) NOT NULL auto_increment,
  `VERIFY_ID` int(11) default NULL,
  `VERIFY_TYPE` int(11) default NULL,
  `POINT_ID` int(11) default NULL,
  `POINT_SN` varchar(30) default NULL,
  `POINT_POSITION` int(11) default NULL,
  `POINT_TYPE` varchar(4) default NULL,
  `CREATE_DATE` datetime default NULL,
  `REMARK` varchar(100) default NULL,
  `STATUS` smallint(6) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='VERIFY是方涛起名的';

-- ----------------------------
-- Records of verify_point_rel
-- ----------------------------
INSERT INTO `verify_point_rel` VALUES ('3', '1', '1', '6', 'SN-02', '2', '2', '2017-04-15 22:16:30', '3', '1');
