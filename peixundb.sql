/*
Navicat MySQL Data Transfer

Source Server         : yzb
Source Server Version : 50628
Source Host           : 120.27.133.86:3306
Source Database       : demo1

Target Server Type    : MYSQL
Target Server Version : 50628
File Encoding         : 65001

Date: 2019-02-28 10:47:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for px_comp
-- ----------------------------
DROP TABLE IF EXISTS `px_comp`;
CREATE TABLE `px_comp` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `compn` char(20) DEFAULT NULL,
  `vaildate` date DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of px_comp
-- ----------------------------
INSERT INTO `px_comp` VALUES ('1', '何达培训', '2029-01-01', '1');
INSERT INTO `px_comp` VALUES ('13', '培训测试', null, '86');
INSERT INTO `px_comp` VALUES ('14', '惠州机场机务', null, '90');
INSERT INTO `px_comp` VALUES ('15', '非童艺班', null, '95');
INSERT INTO `px_comp` VALUES ('16', '王学利', null, '96');
INSERT INTO `px_comp` VALUES ('17', '豫星篮球俱乐部', null, '98');
INSERT INTO `px_comp` VALUES ('18', '新时空教育培训学校', null, '100');
INSERT INTO `px_comp` VALUES ('19', '金榜教育', null, '101');
INSERT INTO `px_comp` VALUES ('20', '臻武道馆', null, '105');
INSERT INTO `px_comp` VALUES ('21', '上海遇美品牌管理有限公司', null, '108');
INSERT INTO `px_comp` VALUES ('22', '优先教育', null, '109');
INSERT INTO `px_comp` VALUES ('23', '北京韦加无人机科技股份有限公司', null, '110');
INSERT INTO `px_comp` VALUES ('26', '红太阳舞蹈', null, '114');
INSERT INTO `px_comp` VALUES ('27', '无线星空教育', null, '116');
INSERT INTO `px_comp` VALUES ('28', '卓乐琴行.卓乐美术室', null, '117');
INSERT INTO `px_comp` VALUES ('29', '尤八琴行', null, '119');
INSERT INTO `px_comp` VALUES ('30', '青龙满族自治县龙王庙乡八音阁琴行', null, '120');
INSERT INTO `px_comp` VALUES ('31', 'image art', null, '122');
INSERT INTO `px_comp` VALUES ('32', '信阳缪斯音乐', null, '123');
INSERT INTO `px_comp` VALUES ('33', '诗乐琴坊', null, '124');
INSERT INTO `px_comp` VALUES ('34', '金坛棋院', null, '129');
INSERT INTO `px_comp` VALUES ('35', '响当当少儿托管中心', null, '130');
INSERT INTO `px_comp` VALUES ('36', 'jhph', null, '131');
INSERT INTO `px_comp` VALUES ('37', '爱你宝贝', null, '132');
INSERT INTO `px_comp` VALUES ('38', '第一画室', null, '141');
INSERT INTO `px_comp` VALUES ('39', '武汉体能空间体育发展有限公司', null, '142');
INSERT INTO `px_comp` VALUES ('40', 'Test', null, '143');
INSERT INTO `px_comp` VALUES ('41', '皇冠体育', null, '145');

-- ----------------------------
-- Table structure for px_paike
-- ----------------------------
DROP TABLE IF EXISTS `px_paike`;
CREATE TABLE `px_paike` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `stuname` varchar(30) DEFAULT NULL COMMENT '学生姓名',
  `kedate` date DEFAULT NULL COMMENT '上课时间',
  `starthour` char(10) DEFAULT NULL COMMENT '上2 下2',
  `teacher` varchar(30) DEFAULT NULL COMMENT '教练',
  `ketype` char(2) DEFAULT 'K1' COMMENT '课类型',
  `ok` int(1) DEFAULT '0' COMMENT '是否已上课',
  `beforeke` varchar(200) DEFAULT '教师评语',
  `midke` varchar(200) DEFAULT NULL,
  `afterke` varchar(200) DEFAULT NULL,
  `tlevel` char(10) DEFAULT NULL COMMENT '教师收费级别',
  `slevel` char(10) DEFAULT NULL COMMENT '学生收费级别',
  `compid` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`),
  KEY `Starthour` (`starthour`) USING BTREE,
  KEY `kedate` (`kedate`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=946 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of px_paike
-- ----------------------------
INSERT INTO `px_paike` VALUES ('104', '29', '2018-03-09', '下4', '4', 'A外', '10', '课前：按时到课，准备充分。', '课中：训练认真，注意力稍有不集中，动作方面正手动作易往上走需改正。', '课后：下节课主要以改正正手动作为主', 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('105', '27', '2018-03-09', '下4', '4', 'A外', '10', '课前：按时到课，准备充分。', '课中：训练认真，改掉了上节课捡球慢的习惯，动作方面反手动作易翻板需控制拍型向前上方挥出。', '课后：下节课主要以调整反手击球动作为主。', 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('109', '18', '2018-03-09', '晚7', '4', 'A外', '10', '课前：', '课中：', '课后：', 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('114', '27', '2018-03-10', '上8', '4', 'A外', '10', '', '', '', 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('115', '30', '2018-03-10', '上8', '4', 'A外', '10', '', '', '', 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('116', '24', '2018-03-10', '上10', '4', 'A外', '10', '', '', '', 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('118', '22', '2018-03-10', '下2', '4', 'A外', '10', '', '', '', 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('119', '18', '2018-03-10', '下4', '4', 'A外', '10', '课前准备：', '课程结评：', '下节安排：', 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('120', '25', '2018-03-10', '下4', '4', 'A外', '10', '课前准备：', '课程结评：', '下节安排：', 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('122', '27', '2018-03-11', '上8', '5', 'A外', '10', '课前准备：', '课程结评：', '下节安排：', 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('123', '12', '2018-03-11', '上10', '5', 'A外', '10', '课前准备：', '课程结评：', '下节安排：', 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('124', '19', '2018-03-11', '下2', '4', 'A外', '10', '课前准备：', '课程结评：', '下节安排：', 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('125', '25', '2018-03-11', '下2', '4', 'A外', '10', '', '', '', 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('126', '31', '2018-03-11', '下2', '5', 'A外', '10', '课前准备：', '课程结评：', '下节安排：', 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('127', '32', '2018-03-11', '下2', '5', 'A外', '10', '课前准备：', '课程结评：', '下节安排：', 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('128', '20', '2018-03-11', '下4', '4', 'A外', '10', '', '', '', 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('129', '18', '2018-03-11', '下4', '4', 'A外', '10', '', '', '', 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('130', '33', '2018-03-11', '下4', '5', 'A外', '10', '', '', '', 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('147', '12', '2018-03-12', '下4', '4', 'A外', '10', '课前准备：', '课程结评：', '下节安排：', 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('148', '18', '2018-03-12', '下4', '4', 'A外', '10', '课前准备：', '课程结评：', '下节安排：', 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('149', '23', '2018-03-12', '下4', '5', 'A外', '10', '课前准备：', '课程结评：', '下节安排：', 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('150', '25', '2018-03-12', '下4', '5', 'A外', '10', '课前准备：', '课程结评：', '下节安排：', 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('153', '21', '2018-03-12', '晚7', '5', 'A外', '10', '课前准备：', '课程结评：', '下节安排：', 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('154', '34', '2018-03-12', '晚7', '5', 'A外', '10', '课前准备：', '课程结评：', '下节安排：', 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('155', '23', '2018-03-13', '下4', '4', 'A外', '10', '课前准备：', '课程结评：', '下节安排：', 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('156', '28', '2018-03-13', '下4', '4', 'A外', '10', '课前准备：', '课程结评：', '下节安排：', 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('157', '36', '2018-03-13', '下4', '5', 'A外', '10', '课前准备：', '课程结评：', '下节安排：', 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('158', '27', '2018-03-17', '上8', '4', 'A外', '10', '课前准备：', '课程结评：', '下节安排：', 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('159', '30', '2018-03-17', '上8', '4', 'A外', '10', '', '', '', 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('160', '24', '2018-03-17', '上10', '5', 'A外', '10', '课前准备：', '课程结评：', '下节安排：', 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('161', '22', '2018-03-17', '下3', '5', 'A外', '10', '课前准备：', '课程结评：', '下节安排：', 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('163', '25', '2018-03-17', '下4', '4', 'A外', '10', '课前准备：', '课程结评：', '下节安排：', 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('165', '23', '2018-03-17', '下3', '5', 'A外', '10', '课前准备：', '课程结评：', '下节安排：', 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('166', '20', '2018-03-17', '上8', '5', 'A外', '10', '课前准备：', '课程结评：', '下节安排：', 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('167', '12', '2018-03-17', '上10', '5', 'A外', '10', '课前准备：', '课程结评：', '下节安排：', 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('168', '35', '2018-03-17', '下230', '4', 'A外', '10', '课前准备：', '课程结评：', '下节安排：', 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('169', '36', '2018-03-17', '下230', '4', 'A外', '10', '课前准备：', '课程结评：', '下节安排：', 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('170', '27', '2018-03-18', '上8', '5', 'A外', '10', '', '', '', 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('171', '28', '2018-03-18', '上10', '5', 'A外', '10', '课前准备：', '课程结评：', '下节安排：', 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('172', '19', '2018-03-18', '下2', '4', 'A外', '10', '', '', '', 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('173', '25', '2018-03-18', '下2', '4', 'A外', '10', '', '', '', 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('174', '31', '2018-03-18', '下2', '5', 'A外', '10', '课前准备：', '课程结评：', '下节安排：', 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('175', '32', '2018-03-18', '下2', '5', 'A外', '10', '课前准备：', '课程结评：', '下节安排：', 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('176', '20', '2018-03-18', '下4', '5', 'A外', '10', '课前准备：', '课程结评：', '下节安排：', 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('177', '18', '2018-03-18', '下4', '5', 'A外', '10', '课前准备：', '课程结评：', '下节安排：', 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('178', '23', '2018-03-18', '上10', '5', 'A外', '10', '课前准备：', '课程结评：', '下节安排：', 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('185', '34', '2018-03-18', '上8', '5', 'A外', '10', '', '', '', 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('188', '35', '2018-03-18', '下330', '4', 'A外', '10', '', '', '', 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('189', '36', '2018-03-18', '下330', '4', 'A外', '10', '', '', '', 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('197', '27', '2018-03-19', '晚7', '4', 'A外', '0', '', '', '', 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('200', '18', '2018-03-19', '晚7', '4', 'A外', '0', '', '', '', 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('201', '21', '2018-03-19', '晚7', '5', 'A外', '0', '', '', '', 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('202', '34', '2018-03-19', '晚7', '5', 'A外', '0', '', '', '', 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('204', '20', '2018-03-20', '下4', '4', 'A外', '0', '', '', '', 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('205', '25', '2018-03-20', '下4', '4', 'A外', '0', '', '', '', 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('206', '23', '2018-03-20', '下4', '5', 'A外', '0', '', '', '', 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('207', '19', '2018-03-20', '下4', '5', 'A外', '0', '', '', '', 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('208', '27', '2018-03-24', '上8', '5', 'A外', '10', '课前准备：', '课程结评：', '下节安排：', 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('209', '30', '2018-03-24', '上8', '5', 'A外', '10', '课前准备：', '课程结评：', '下节安排：', 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('210', '25', '2018-03-24', '上10', '5', 'A外', '10', '课前准备：', '课程结评：', '下节安排：', 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('211', '22', '2018-03-24', '下230', '4', 'A外', '10', '课前准备：', '课程结评：', '下节安排：', 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('213', '23', '2018-03-24', '下4', '4', 'A外', '10', '课前准备：', '课程结评：', '下节安排：', 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('214', '20', '2018-03-24', '下230', '4', 'A外', '10', '课前准备：', '课程结评：', '下节安排：', 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('215', '24', '2018-03-24', '上10', '5', 'A外', '10', '课前准备：', '课程结评：', '下节安排：', 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('223', '18', '2018-03-24', '下4', '4', 'A外', '10', '', '', '', 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('224', '27', '2018-03-25', '上8', '5', 'A外', '0', '', '', '', 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('225', '28', '2018-03-25', '上10', '5', 'A外', '0', '', '', '', 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('226', '19', '2018-03-25', '下2', '4', 'A外', '0', '', '', '', 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('227', '25', '2018-03-25', '下2', '4', 'A外', '0', '', '', '', 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('228', '31', '2018-03-25', '下2', '5', 'A外', '0', '', '', '', 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('229', '32', '2018-03-25', '下2', '5', 'A外', '0', '', '', '', 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('230', '20', '2018-03-25', '下4', '5', 'A外', '0', '', '', '', 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('231', '18', '2018-03-25', '下4', '5', 'A外', '0', '', '', '', 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('232', '23', '2018-03-25', '上10', '5', 'A外', '0', '', '', '', 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('233', '34', '2018-03-25', '上8', '5', 'A外', '0', '', '', '', 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('234', '35', '2018-03-25', '下330', '4', 'A外', '0', '', '', '', 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('235', '36', '2018-03-25', '下330', '4', 'A外', '0', '', '', '', 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('239', '19', '2018-03-26', '下4', '4', 'A外', '10', '', '', '', 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('240', '20', '2018-03-26', '下4', '4', 'A外', '10', '', '', '', 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('241', '23', '2018-03-26', '下4', '5', 'A外', '10', '', '', '', 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('242', '28', '2018-03-26', '晚7', '5', 'A外', '10', '', '', '', 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('246', '20', '2018-03-27', '下4', '4', 'A外', '10', '课前准备：', '课程结评：', '下节安排：', 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('247', '19', '2018-03-27', '下4', '4', 'A外', '10', '课前准备：', '课程结评：', '下节安排：', 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('248', '23', '2018-03-27', '下4', '5', 'A外', '10', '课前准备：', '课程结评：', '下节安排：', 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('249', '27', '2018-03-27', '下4', '5', 'A外', '10', '课前准备：', '课程结评：', '下节安排：', 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('368', '87', '2018-03-28', '上8', '86', 'K1', '10', 'gffg~vrrxcbbnj', null, null, '0', 'S1', '13');
INSERT INTO `px_paike` VALUES ('369', '87', '2018-04-04', null, '88', 'K1', '0', '', null, null, 'T1', 'S1', '13');
INSERT INTO `px_paike` VALUES ('370', '92', '2018-03-29', null, '90', 'K1', '2', '', null, null, '0', 'S1', '14');
INSERT INTO `px_paike` VALUES ('371', '27', '2018-03-31', '上10', '5', 'A外', '10', '教师评语', null, null, 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('372', '30', '2018-03-31', '上10', '5', 'A外', '10', '教师评语', null, null, 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('374', '22', '2018-03-31', '下200', '4', 'A外', '10', '教师评语', null, null, 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('375', '23', '2018-03-31', '下4', '4', 'A外', '10', '教师评语', null, null, 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('378', '18', '2018-03-31', '下200', '4', 'A外', '10', '教师评语', null, null, 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('386', '25', '2018-04-02', '下4', '5', 'A外', '10', '教师评语', null, null, 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('387', '28', '2018-04-02', '下4', '5', 'A外', '10', '教师评语', null, null, 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('393', '33', '2018-04-03', '下4', '93', 'B内', '10', '教师评语', null, null, 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('395', '25', '2018-04-03', '下4', '5', 'A外', '10', '教师评语', null, null, 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('400', '27', '2018-04-03', '下4', '5', 'A外', '10', '教师评语', null, null, 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('401', '23', '2018-04-03', '晚7', '5', 'A外', '10', '教师评语', null, null, 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('402', '37', '2018-04-03', '晚7', '5', 'A外', '10', '教师评语', null, null, 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('403', '94', '2018-04-06', '上8', '5', 'A外', '10', '教师评语', null, null, 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('404', '18', '2018-04-06', '上8', '5', 'A外', '10', '教师评语', null, null, 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('405', '21', '2018-04-06', '上10', '5', 'A外', '10', '教师评语', null, null, 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('406', '28', '2018-04-06', '上10', '5', 'A外', '10', '教师评语', null, null, 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('407', '27', '2018-04-07', '上8', '5', 'A外', '10', '教师评语', null, null, 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('408', '18', '2018-04-07', '上8', '5', 'A外', '10', '教师评语', null, null, 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('409', '22', '2018-04-07', '上10', '5', 'A外', '10', '教师评语', null, null, 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('411', '94', '2018-04-07', '上10', '5', 'A外', '10', '教师评语', null, null, 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('414', null, '2018-04-14', null, null, 'K1', '0', '教师评语', null, null, null, null, '17');
INSERT INTO `px_paike` VALUES ('415', '20', '2018-04-10', '下4', '93', 'A外', '10', '教师评语', null, null, 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('416', '27', '2018-04-10', '下4', '93', 'A外', '10', '教师评语', null, null, 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('417', '37', '2018-04-10', '晚7', '93', 'A外', '10', '教师评语', null, null, 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('418', '23', '2018-04-10', '晚7', '93', 'A外', '10', '教师评语', null, null, 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('422', '20', '2018-04-12', '下4', '93', 'A外', '10', '教师评语', null, null, 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('423', '103', '2018-04-17', '17:00', '104', 'K1', '0', '教师评语', null, null, 'T1', 'S1', '19');
INSERT INTO `px_paike` VALUES ('424', '102', '2018-05-14', '8:30-10:30', '104', 'K1', '0', '教师评语', null, null, 'T1', 'S1', '19');
INSERT INTO `px_paike` VALUES ('425', '102', '2018-05-14', null, null, 'K1', '0', '教师评语', null, null, null, 'S1', '19');
INSERT INTO `px_paike` VALUES ('426', '102', '2018-04-17', '8:30', '104', 'K1', '0', '教师评语', null, null, 'T1', 'S1', '19');
INSERT INTO `px_paike` VALUES ('427', '102', '2018-04-17', null, null, 'K1', '0', '教师评语', null, null, null, 'S1', '19');
INSERT INTO `px_paike` VALUES ('428', '20', '2018-04-17', '下4', '5', 'A外', '10', '教师评语', null, null, 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('429', '28', '2018-04-17', '下4', '5', 'A外', '10', '教师评语', null, null, 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('430', '37', '2018-04-17', '晚7', '5', 'A外', '10', '教师评语', null, null, 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('431', '23', '2018-04-17', '晚7', '5', 'A外', '10', '教师评语', null, null, 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('435', '94', '2018-04-17', '下4', '93', 'A外', '10', '教师评语', null, null, 'T70', 'S1', '1');
INSERT INTO `px_paike` VALUES ('436', '20', '2018-04-19', '下4', '93', 'A外', '10', '教师评语', null, null, 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('437', '28', '2018-04-19', '下4', '93', 'A外', '10', '教师评语', null, null, 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('439', null, '2018-04-19', null, null, 'K1', '0', '教师评语', null, null, null, null, '20');
INSERT INTO `px_paike` VALUES ('440', null, '2018-04-19', null, null, 'K1', '0', '教师评语', null, null, null, null, '20');
INSERT INTO `px_paike` VALUES ('441', null, '2018-04-19', null, null, 'K1', '0', '教师评语', null, null, null, null, '20');
INSERT INTO `px_paike` VALUES ('442', null, '2018-04-20', null, null, 'K1', '0', '教师评语', null, null, null, null, '20');
INSERT INTO `px_paike` VALUES ('443', null, '2018-04-21', null, null, 'K1', '0', '教师评语', null, null, null, null, '20');
INSERT INTO `px_paike` VALUES ('444', null, '2018-04-21', null, null, 'K1', '0', '教师评语', null, null, null, null, '20');
INSERT INTO `px_paike` VALUES ('446', '28', '2018-04-24', '下4', '5', 'A外', '10', '教师评语', null, null, 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('447', '37', '2018-04-24', '晚7', '5', 'A外', '10', '教师评语', null, null, 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('449', '23', '2018-04-24', '下4', '5', 'A外', '10', '教师评语', null, null, 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('452', '23', '2018-04-28', '下4', '5', 'A外', '2', '教师评语', null, null, 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('453', '18', '2018-04-28', '晚7', '5', 'A外', '0', '教师评语', null, null, 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('454', '25', '2018-04-28', '下4', '5', 'A外', '2', '教师评语', null, null, 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('455', '27', '2018-05-05', '上8', '93', 'A外', '10', '教师评语', null, null, 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('456', '35', '2018-05-05', '下5', '93', 'A外', '10', '教师评语', null, null, 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('457', '18', '2018-05-05', '上8', '93', 'A外', '10', '教师评语', null, null, 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('458', '25', '2018-05-05', '上8', '93', 'A外', '10', '教师评语', null, null, 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('459', '26', '2018-05-05', '上8', '93', 'A外', '10', '教师评语', null, null, 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('460', '23', '2018-05-05', '下3', '93', 'A外', '10', '教师评语', null, null, 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('461', '22', '2018-05-05', '下3', '93', 'A外', '10', '教师评语', null, null, 'T70', 'V12', '1');
INSERT INTO `px_paike` VALUES ('462', '115', '2018-05-10', null, '114', 'K1', '1', '教师评语', null, null, '0', 'S1', '26');
INSERT INTO `px_paike` VALUES ('463', null, '2018-05-12', null, null, 'K1', '0', '教师评语', null, null, null, null, '27');
INSERT INTO `px_paike` VALUES ('464', '33', '2018-05-22', '下4', '5', 'B内', '2', '教师评语', null, null, 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('465', '27', '2018-05-22', '下4', '5', 'B内', '2', '教师评语', null, null, 'T75', 'V12', '1');
INSERT INTO `px_paike` VALUES ('466', null, '2018-06-24', null, null, 'K1', '0', '教师评语', null, null, null, null, '30');
INSERT INTO `px_paike` VALUES ('467', '121', '2018-06-25', '9.00', '120', 'K1', '0', '教师评语', null, null, '0', 'S1', '30');
INSERT INTO `px_paike` VALUES ('468', null, '2018-06-27', null, null, 'K1', '0', '教师评语', null, null, null, null, '32');
INSERT INTO `px_paike` VALUES ('469', null, '2018-06-27', null, null, 'K1', '0', '教师评语', null, null, null, null, '32');
INSERT INTO `px_paike` VALUES ('470', null, '2018-07-02', null, null, 'K1', '0', '教师评语', null, null, null, null, '33');
INSERT INTO `px_paike` VALUES ('471', null, '2018-08-16', null, null, 'K1', '0', '教师评语', null, null, null, null, '36');
INSERT INTO `px_paike` VALUES ('472', null, '2018-08-16', null, null, 'K1', '0', '教师评语', null, null, null, null, '36');
INSERT INTO `px_paike` VALUES ('473', null, '2018-11-19', null, null, 'K1', '0', '教师评语', null, null, null, null, '1');
INSERT INTO `px_paike` VALUES ('474', null, '2018-11-23', null, null, 'K1', '0', '教师评语', null, null, null, null, '37');
INSERT INTO `px_paike` VALUES ('475', null, '2018-12-02', null, null, 'K1', '0', '教师评语', null, null, null, null, '37');
INSERT INTO `px_paike` VALUES ('476', null, '2018-11-25', null, null, 'K1', '0', '教师评语', null, null, null, null, '37');
INSERT INTO `px_paike` VALUES ('477', null, '2018-11-23', null, null, 'K1', '0', '教师评语', null, null, null, null, '37');
INSERT INTO `px_paike` VALUES ('478', '28', '2018-12-02', '上10', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('479', '137', '2018-12-02', '上830', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('480', '36', '2018-12-02', '下230', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('481', '35', '2018-12-02', '下230', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('483', '32', '2018-12-02', '下5', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('484', '31', '2018-12-02', '下5', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('485', null, '2018-12-02', null, null, 'K1', '0', '教师评语', null, null, null, null, '1');
INSERT INTO `px_paike` VALUES ('486', '140', '2018-12-02', '晚7', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('487', '27', '2018-12-03', '下430', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('488', '20', '2018-12-03', '下430', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('489', null, '2018-12-03', null, null, 'K1', '0', '教师评语', null, null, null, null, '1');
INSERT INTO `px_paike` VALUES ('490', null, '2018-12-03', null, null, 'K1', '0', '教师评语', null, null, null, null, '1');
INSERT INTO `px_paike` VALUES ('491', '24', '2018-12-07', '晚7', '113', 'A外', '0', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('492', '33', '2018-12-07', '下430', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('493', '136', '2018-12-07', '晚7', '113', 'A外', '0', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('494', '27', '2018-12-08', '上830', '113', 'A外', '0', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('495', '29', '2018-12-08', '晚7', '113', 'A外', '0', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('496', '136', '2018-12-08', '上11', '113', 'A外', '0', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('497', '138', '2018-12-08', '下430', '113', 'A外', '0', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('498', '94', '2018-12-08', '下430', '113', 'A外', '0', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('499', '24', '2018-12-08', '上11', '113', 'A外', '0', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('500', '35', '2018-12-08', '上11下230', '113', 'A外', '0', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('501', '35', '2018-12-08', '上11下230', '113', 'A外', '0', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('502', '28', '2018-12-09', '上10', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('503', '137', '2018-12-09', '上830', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('504', '36', '2018-12-09', '下230', '113', 'A外', '2', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('505', '35', '2018-12-09', '下230', '113', 'A外', '2', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('506', '32', '2018-12-09', '下5', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('507', '31', '2018-12-09', '下5', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('508', null, '2018-12-09', null, null, 'K1', '0', '教师评语', null, null, null, null, '1');
INSERT INTO `px_paike` VALUES ('509', '30', '2018-12-09', '上830', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('517', '140', '2018-12-09', '晚7', '113', 'A外', '2', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('518', null, '2018-12-14', null, null, 'K1', '0', '教师评语', null, null, null, null, '38');
INSERT INTO `px_paike` VALUES ('519', null, '2018-12-14', null, null, 'K1', '0', '教师评语', null, null, null, null, '38');
INSERT INTO `px_paike` VALUES ('520', '24', '2018-12-14', '晚7', '113', 'A外', '0', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('521', '33', '2018-12-14', '下430', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('522', '136', '2018-12-14', '晚7', '113', 'A外', '0', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('523', '139', '2018-12-14', '下430', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('524', '27', '2018-12-15', '上830', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('525', '29', '2018-12-15', '晚7', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('526', '136', '2018-12-15', '上11', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('528', '94', '2018-12-15', '下430', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('529', '24', '2018-12-15', '上11', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('530', '25', '2018-12-15', '上830', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('531', '35', '2018-12-15', '下230', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('539', '35', '2018-12-15', '下230', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('541', '28', '2018-12-16', '上10', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('542', '27', '2018-12-16', '上830', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('545', '32', '2018-12-16', '下5', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('546', '31', '2018-12-16', '下5', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('547', null, '2018-12-16', null, null, 'K1', '0', '教师评语', null, null, null, null, '1');
INSERT INTO `px_paike` VALUES ('548', '30', '2018-12-16', '上830', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('549', '140', '2018-12-16', '晚7', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('556', '140', '2018-12-20', '晚7', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('557', '12', '2018-12-20', '下430', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('558', '23', '2018-12-20', '下430', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('559', '24', '2018-12-21', '晚7', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('560', '33', '2018-12-21', '下430', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('561', '136', '2018-12-21', '晚7', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('562', '139', '2018-12-21', '下430', '113', 'A外', '2', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('566', '27', '2018-12-22', '上830', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('568', '136', '2018-12-22', '上11', '113', 'A外', '0', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('570', '24', '2018-12-22', '上11', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('571', '25', '2018-12-22', '上830', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('572', '35', '2018-12-22', '下230', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('573', '35', '2018-12-22', '下230', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('581', '28', '2018-12-23', '上10', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('583', '32', '2018-12-23', '下5', '113', 'A外', '2', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('584', '31', '2018-12-23', '下5', '113', 'A外', '2', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('585', null, '2018-12-23', null, null, 'K1', '0', '教师评语', null, null, null, null, '1');
INSERT INTO `px_paike` VALUES ('586', '30', '2018-12-23', '上830', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('588', '27', '2018-12-29', '上10', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('589', '136', '2018-12-29', '上10', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('590', '137', '2018-12-29', '上830', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('591', '25', '2018-12-29', '上830', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('593', '29', '2018-12-29', '晚7', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('595', '37', '2018-12-29', '下5', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('596', '136', '2018-12-30', '上1030', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('597', '27', '2018-12-30', '上9', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('599', null, '2018-12-30', null, null, 'K1', '0', '教师评语', null, null, null, null, '1');
INSERT INTO `px_paike` VALUES ('600', '25', '2018-12-30', '上1030', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('604', '137', '2018-12-31', '上10', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('605', '30', '2019-01-02', '晚7', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('606', '37', '2019-01-02', '下430', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('607', '140', '2019-01-03', '晚7', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('608', '33', '2019-01-04', '下430', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('609', '27', '2019-01-04', '下430', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('610', '27', '2019-01-05', '上830', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('611', '136', '2019-01-05', '上10', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('614', '36', '2019-01-05', '下230', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('618', '30', '2019-01-06', '上830', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('624', '28', '2019-01-06', '上10', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('625', '37', '2019-01-06', '下4', '113', 'A外', '2', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('626', '140', '2019-01-06', '晚7', '113', 'A外', '0', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('628', '37', '2019-01-09', '下430', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('630', '136', '2019-01-11', '下430', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('631', '24', '2019-01-11', '下430', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('633', '37', '2019-01-11', '晚7', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('634', '12', '2019-01-12', '上9', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('635', '37', '2019-01-12', '上9', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('636', '29', '2019-01-12', '晚7', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('638', '30', '2019-01-13', '上830', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('639', '136', '2019-01-13', '上830', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('640', '24', '2019-01-13', '上10', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('641', '33', '2019-01-13', '上10', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('645', '27', '2019-01-14', '上10', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('646', '28', '2019-01-14', '上10', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('647', null, '2019-01-14', null, null, 'K1', '0', '教师评语', null, null, null, null, '1');
INSERT INTO `px_paike` VALUES ('651', '37', '2019-01-16', '晚7', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('652', '136', '2019-01-18', '下430', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('653', '24', '2019-01-18', '下430', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('656', '33', '2019-01-19', '上9', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('657', '136', '2019-01-19', '下230', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('658', '2', '2019-01-20', '上9', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V20', '1');
INSERT INTO `px_paike` VALUES ('660', '138', '2019-01-20', '下230', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('661', '33', '2019-01-20', '下230', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('665', '144', '2019-01-15', '上1030', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('666', '31', '2019-01-15', '下230', '113', 'A外', '0', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('667', '24', '2019-01-15', '晚7', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('668', '32', '2019-01-15', '下230', '113', 'A外', '1', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('669', '33', '2019-01-15', '上1030', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('670', '37', '2019-01-15', '晚7', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('671', '25', '2019-01-15', '上9', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('672', '27', '2019-01-15', '上9', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('673', '27', '2019-01-16', '上9', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('674', '25', '2019-01-16', '上9', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('675', '144', '2019-01-16', '上1030', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('676', '33', '2019-01-16', '上1030', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('677', '138', '2019-01-16', '下230', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('678', '28', '2019-01-16', '下230', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('680', '144', '2019-01-17', '上1030', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('681', '36', '2019-01-17', '下4', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('682', '36', '2019-01-17', '下4', '113', 'A外', '1', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('683', '37', '2019-01-17', '晚7', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('684', '138', '2019-01-17', '下230', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('686', '33', '2019-01-17', '上1030', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('687', '140', '2019-01-17', '晚7', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('688', '28', '2019-01-18', '下230', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('690', '34', '2019-01-18', '上9', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('691', '33', '2019-01-18', '上9', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('692', '139', '2019-01-18', '下230', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('693', '137', '2019-01-18', '上1030', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('694', '144', '2019-01-18', '上1030', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('695', '138', '2019-01-19', '下230', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('696', '27', '2019-01-19', '上9', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('698', '144', '2019-01-19', '上1030', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('700', '144', '2019-01-20', '上1030', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('701', '35', '2019-01-20', '下4', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('702', '36', '2019-01-20', '下4', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('703', '140', '2019-01-20', '晚7', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('704', '34', '2019-01-21', '上9', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('705', '24', '2019-01-21', '晚7', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('706', '140', '2019-01-21', '晚7', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('707', '144', '2019-01-22', '上1030', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('708', '138', '2019-01-22', '下230', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('709', '136', '2019-01-22', '下4', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('710', '139', '2019-01-22', '下230', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('711', '33', '2019-01-22', '上9', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('712', '28', '2019-01-22', '下4', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('714', '34', '2019-01-22', '上9', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('723', '137', '2019-01-23', '上9', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('724', '34', '2019-01-23', '上9', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('725', '144', '2019-01-23', '上1030', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('727', '138', '2019-01-23', '下230', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('728', '28', '2019-01-23', '下4', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('729', '144', '2019-01-24', '上1030', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('730', '140', '2019-01-24', '下230', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('731', '28', '2019-01-24', '下4', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('732', '24', '2019-01-24', '上9', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('733', '138', '2019-01-24', '晚7', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('734', '33', '2019-01-24', '上9', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('736', '136', '2019-01-25', '下430', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('737', '138', '2019-01-25', '下230', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('738', '28', '2019-01-25', '下4', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('739', '34', '2019-01-25', '上9', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('740', '33', '2019-01-25', '上9', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('741', '139', '2019-01-25', '下230', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('743', '144', '2019-01-25', '上1030', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('752', '36', '2019-01-26', '上1030', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('753', '138', '2019-01-26', '下230', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('755', '144', '2019-01-26', '上9', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('758', '33', '2019-01-27', '上9', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('759', '138', '2019-01-27', '下230', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('760', '137', '2019-01-27', '上9', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('761', '36', '2019-01-27', '上1030', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('762', '35', '2019-01-27', '上1030', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('764', '140', '2019-01-27', '下230', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('765', '137', '2019-01-21', '上9', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('766', '144', '2019-01-21', '上1030', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('768', '36', '2019-01-21', '下230', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('769', '35', '2019-01-21', '下230', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('770', '140', '2019-01-23', '下230', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('771', '136', '2019-01-23', '下4', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('773', '136', '2019-01-26', '下4', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('775', '140', '2019-01-26', '下230', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('776', '35', '2019-01-26', '上1030', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('778', '28', '2019-01-27', '下4', '113', 'A外', '0', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('779', '34', '2019-01-28', '上9', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('782', '137', '2019-01-28', '上9', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('783', '144', '2019-01-28', '上1030', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('784', '36', '2019-01-28', '下230', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('785', '35', '2019-01-28', '下230', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('786', '138', '2019-01-28', '上1030', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('787', '28', '2019-01-28', '下4', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('788', '136', '2019-01-28', '下4', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('789', '144', '2019-01-29', '上1030', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('793', '137', '2019-01-29', '上9', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('795', '34', '2019-01-29', '上9', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('796', '137', '2019-01-30', '上9', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('797', '34', '2019-01-30', '上9', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('798', '140', '2019-01-30', '上1030', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('799', '138', '2019-01-30', '上1030', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('800', '28', '2019-01-30', '下4', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('803', '138', '2019-02-13', '上1030', '146', 'A外', '10', '教师评语', null, null, '0', 'T1', '1');
INSERT INTO `px_paike` VALUES ('805', '22', '2019-02-13', '上1030', '146', 'A外', '10', '教师评语', null, null, '0', 'T1', '1');
INSERT INTO `px_paike` VALUES ('806', '26', '2019-02-13', '上9', '146', 'A外', '10', '教师评语', null, null, '0', 'T1', '1');
INSERT INTO `px_paike` VALUES ('807', '25', '2019-02-13', '上9', '146', 'A外', '10', '教师评语', null, null, '0', 'T1', '1');
INSERT INTO `px_paike` VALUES ('808', '37', '2019-02-13', '下230', '146', 'A外', '10', '教师评语', null, null, '0', 'V12', '1');
INSERT INTO `px_paike` VALUES ('809', '34', '2019-02-13', '下230', '146', 'A外', '10', '教师评语', null, null, '0', 'V12', '1');
INSERT INTO `px_paike` VALUES ('810', '2', '2019-02-13', '下430', '146', 'A外', '10', '教师评语', null, null, '0', 'V20', '1');
INSERT INTO `px_paike` VALUES ('811', '28', '2019-02-13', '下430', '146', 'A外', '10', '教师评语', null, null, '0', 'V12', '1');
INSERT INTO `px_paike` VALUES ('812', '25', '2019-02-14', '上9', '146', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('813', '26', '2019-02-14', '上9', '146', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('814', '138', '2019-02-14', '上9', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('815', '28', '2019-02-14', '下430', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('816', '37', '2019-02-14', '下230', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('817', '27', '2019-02-14', '上9', '113', 'A外', '0', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('818', '22', '2019-02-14', '下230', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('819', '34', '2019-02-14', '上1030', '146', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('820', '2', '2019-02-14', '下430', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V20', '1');
INSERT INTO `px_paike` VALUES ('821', '25', '2019-02-15', '上9', '146', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('822', '138', '2019-02-15', '下430', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('823', '37', '2019-02-15', '上9', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('824', '27', '2019-02-15', '上9', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('825', '22', '2019-02-15', '上1030', '146', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('826', '34', '2019-02-15', '上1030', '146', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('827', '28', '2019-02-15', '下430', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('828', '26', '2019-02-15', '上9', '146', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('830', '2', '2019-02-15', '上1030', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V20', '1');
INSERT INTO `px_paike` VALUES ('833', '27', '2019-02-16', '上9', '146', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('834', '138', '2019-02-16', '下430', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('835', '28', '2019-02-16', '下430', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('836', '34', '2019-02-16', '上1030', '146', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('837', '26', '2019-02-16', '上1030', '146', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('838', '24', '2019-02-16', '上9', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('839', '27', '2019-02-17', '上1030', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('840', '2', '2019-02-17', '上1030', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V20', '1');
INSERT INTO `px_paike` VALUES ('841', '26', '2019-02-17', '上1030', '146', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('842', '138', '2019-02-17', '下430', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('843', '34', '2019-02-17', '上1030', '146', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('844', '23', '2019-02-18', '下430', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('845', '26', '2019-02-18', '下430', '146', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('846', '28', '2019-02-18', '下430', '146', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('847', '137', '2019-02-18', '下430', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('848', '28', '2019-02-19', '下430', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('849', '23', '2019-02-19', '下430', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('850', '37', '2019-02-19', '下430', '146', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('851', '18', '2019-02-19', '下430', '146', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('852', '27', '2019-02-20', '下430', '146', 'A外', '10', '教师评语', null, null, '0', 'V12', '1');
INSERT INTO `px_paike` VALUES ('854', '23', '2019-02-20', '下430', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('855', '140', '2019-02-20', '晚', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('856', '24', '2019-02-20', '晚', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('857', '137', '2019-02-20', '下430', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('859', '30', '2019-02-20', '晚', '146', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('867', '28', '2019-02-20', '下430', '146', 'A外', '10', '教师评语', null, null, '0', 'V12', '1');
INSERT INTO `px_paike` VALUES ('868', '138', '2019-02-20', '晚', '146', 'A外', '10', '教师评语', null, null, '0', 'S1', '1');
INSERT INTO `px_paike` VALUES ('869', '25', '2019-02-21', '上9', '146', 'A外', '0', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('870', '26', '2019-02-21', '上9', '146', 'A外', '0', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('871', '138', '2019-02-21', '上9', '113', 'A外', '0', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('872', '28', '2019-02-21', '下430', '113', 'A外', '0', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('873', '37', '2019-02-21', '下430', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('874', '27', '2019-02-21', '上9', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('875', '22', '2019-02-21', '下230', '113', 'A外', '2', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('876', '27', '2019-02-21', '下430', '113', 'A外', '0', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('877', '2', '2019-02-21', '下430', '113', 'A外', '0', '教师评语', null, null, 'T1', 'V20', '1');
INSERT INTO `px_paike` VALUES ('884', '136', '2019-02-22', '晚7', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('885', '138', '2019-02-22', '下430', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('886', '37', '2019-02-22', '上9', '113', 'A外', '0', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('887', '27', '2019-02-22', '上9', '113', 'A外', '0', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('888', '22', '2019-02-22', '晚7', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('889', '138', '2019-02-22', '下430', '113', 'A外', '0', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('890', '28', '2019-02-22', '下430', '113', 'A外', '0', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('891', '26', '2019-02-22', '上9', '146', 'A外', '0', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('892', '20', '2019-02-22', '下430', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('899', '18', '2019-02-23', '晚7', '113', 'A外', '1', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('900', '138', '2019-02-23', '晚7', '113', 'A外', '0', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('901', '144', '2019-02-23', '下430', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('902', '27', '2019-02-23', '上10', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('903', '25', '2019-02-23', '上9', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('906', '29', '2019-02-23', '晚7', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('907', '25', '2019-02-23', '上9', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('908', '27', '2019-02-24', '上830', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('909', '28', '2019-02-24', '上10', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('910', '26', '2019-02-24', '下230', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('911', '37', '2019-02-24', '下230', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('912', '30', '2019-02-24', '上830', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('915', '25', '2019-02-24', '上10', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('916', '144', '2019-02-24', '下430', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('917', '23', '2019-02-25', '下430', '113', 'A外', '0', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('918', '26', '2019-02-25', '下430', '146', 'A外', '0', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('919', '22', '2019-02-25', '晚7', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('920', '24', '2019-02-25', '晚7', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('924', '3', '2019-02-26', '下430', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('925', '12', '2019-02-26', '下430', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('931', '37', '2019-02-27', '下430', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('932', '23', '2019-02-27', '下430', '113', 'A外', '10', '教师评语', null, null, 'T1', 'V12', '1');
INSERT INTO `px_paike` VALUES ('933', '140', '2019-02-27', '晚', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');
INSERT INTO `px_paike` VALUES ('934', '139', '2019-02-27', '晚', '113', 'A外', '10', '教师评语', null, null, 'T1', 'S1', '1');

-- ----------------------------
-- Table structure for px_type
-- ----------------------------
DROP TABLE IF EXISTS `px_type`;
CREATE TABLE `px_type` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `K1` char(10) DEFAULT 'K1',
  `K2` char(10) DEFAULT 'K2',
  `K3` char(10) DEFAULT 'K3',
  `K4` char(10) DEFAULT 'K4',
  `S1` char(10) DEFAULT 'S1',
  `S2` char(10) DEFAULT 'S2',
  `S3` char(10) DEFAULT 'S3',
  `S4` char(10) DEFAULT 'S4',
  `T1` char(10) DEFAULT 'T1',
  `T2` char(10) DEFAULT 'T2',
  `T3` char(10) DEFAULT 'T3',
  `T4` char(10) DEFAULT 'T4',
  `compid` int(11) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of px_type
-- ----------------------------
INSERT INTO `px_type` VALUES ('1', 'K1', 'K2', 'K3', 'K4', 'S1', 'S2', 'S3', 'S4', 'T1', 'T2', 'T3', 'T4', '0');
INSERT INTO `px_type` VALUES ('13', 'A外', 'B内', null, null, 'V12', 'V20', null, null, 'T70', 'T75', 'T80', null, '1');
INSERT INTO `px_type` VALUES ('22', 'A', 'B', 'K3', 'K4', 'V1', 'V2', 'S3', 'S4', 'T1', 'T2', 'T3', 'T4', '13');
INSERT INTO `px_type` VALUES ('23', '六年级读写班', '百团班', 'K3', 'K4', 'S1', 'S2', 'S3', 'S4', 'T1', 'T2', 'T3', 'T4', '15');
INSERT INTO `px_type` VALUES ('24', '跆拳道', '合气道', '巴西柔术', 'K4', '幼儿', '少儿', 'S3', 'S4', '余威', 'T2', 'T3', 'T4', '20');
INSERT INTO `px_type` VALUES ('25', '母婴护理', '经络催乳', '小儿推拿', '月子教练', '月嫂学员', '催乳学员', '儿推学员', '月子教练', '特级教师', '高级教师', '中级教师', '初级教师', '37');
INSERT INTO `px_type` VALUES ('26', '素描', '色彩', '速写', '创意', '一班', '二班', '三班', '四班', '王丙杰', '高华英', '林泽立', '王丹阳', '38');

-- ----------------------------
-- Table structure for px_user
-- ----------------------------
DROP TABLE IF EXISTS `px_user`;
CREATE TABLE `px_user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `usr` varchar(20) DEFAULT NULL,
  `password` varchar(50) DEFAULT '202cb962ac59075b964b07152d234b70',
  `usrtype` int(2) DEFAULT NULL COMMENT '1、管理 2、教练 3、学生',
  `mobile` varchar(11) DEFAULT NULL,
  `vaild` char(2) DEFAULT '有效' COMMENT '用户是否有效',
  `level` char(6) DEFAULT '' COMMENT '学员或教练级别',
  `kecs` int(3) DEFAULT '10',
  `compid` int(11) DEFAULT NULL COMMENT '公司id',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of px_user
-- ----------------------------
INSERT INTO `px_user` VALUES ('1', '何达', 'e10adc3949ba59abbe56e057f20f883e', '1', '13007422228', '有效', '0', '10', '1');
INSERT INTO `px_user` VALUES ('2', '顺子', '202cb962ac59075b964b07152d234b70', '3', 'X2', '有效', 'V20', '5', '1');
INSERT INTO `px_user` VALUES ('3', '汤启微', '202cb962ac59075b964b07152d234b70', '3', null, '有效', 'V12', '9', '1');
INSERT INTO `px_user` VALUES ('4', '阳光', '202cb962ac59075b964b07152d234b70', '2', '18570049842', '有效', 'T75', '10', '1');
INSERT INTO `px_user` VALUES ('5', '王', '202cb962ac59075b964b07152d234b70', '2', '13278881718', '有效', 'T75', '10', '1');
INSERT INTO `px_user` VALUES ('12', '李辰宇', '202cb962ac59075b964b07152d234b70', '3', null, '有效', 'V12', '9', '1');
INSERT INTO `px_user` VALUES ('18', '张弛度', '202cb962ac59075b964b07152d234b70', '3', '', '有效', 'V12', '-1', '1');
INSERT INTO `px_user` VALUES ('19', '平平', '202cb962ac59075b964b07152d234b70', '3', '', '有效', 'V12', '-1', '1');
INSERT INTO `px_user` VALUES ('20', '一丁', '202cb962ac59075b964b07152d234b70', '3', '', '有效', 'V12', '-4', '1');
INSERT INTO `px_user` VALUES ('21', '谢仲芳', '202cb962ac59075b964b07152d234b70', '3', '', '有效', 'V12', '9', '1');
INSERT INTO `px_user` VALUES ('22', '球球', '202cb962ac59075b964b07152d234b70', '3', null, '有效', 'V12', '-1', '1');
INSERT INTO `px_user` VALUES ('23', '易凯鑫', '202cb962ac59075b964b07152d234b70', '3', null, '有效', 'V12', '-4', '1');
INSERT INTO `px_user` VALUES ('24', '龙思含', '202cb962ac59075b964b07152d234b70', '3', null, '有效', 'V12', '-3', '1');
INSERT INTO `px_user` VALUES ('25', '吴文杰', '202cb962ac59075b964b07152d234b70', '3', '', '有效', 'V12', '-9', '1');
INSERT INTO `px_user` VALUES ('26', '廖子博', '202cb962ac59075b964b07152d234b70', '3', null, '有效', 'V12', '-7', '1');
INSERT INTO `px_user` VALUES ('27', '喆喆', '202cb962ac59075b964b07152d234b70', '3', '', '有效', 'V12', '-21', '1');
INSERT INTO `px_user` VALUES ('28', '牛牛', '202cb962ac59075b964b07152d234b70', '3', '', '有效', 'V12', '-21', '1');
INSERT INTO `px_user` VALUES ('29', '小贝', '202cb962ac59075b964b07152d234b70', '3', null, '有效', 'V12', '5', '1');
INSERT INTO `px_user` VALUES ('30', '睿睿', '202cb962ac59075b964b07152d234b70', '3', null, '有效', 'V12', '-3', '1');
INSERT INTO `px_user` VALUES ('31', '小杨男', '202cb962ac59075b964b07152d234b70', '3', '', '有效', 'V12', '2', '1');
INSERT INTO `px_user` VALUES ('32', '小杨女', '202cb962ac59075b964b07152d234b70', '3', '', '有效', 'V12', '2', '1');
INSERT INTO `px_user` VALUES ('33', '多多', '202cb962ac59075b964b07152d234b70', '3', null, '有效', 'V12', '10', '1');
INSERT INTO `px_user` VALUES ('34', '豆豆', '202cb962ac59075b964b07152d234b70', '3', null, '有效', 'V12', '-6', '1');
INSERT INTO `px_user` VALUES ('35', '大毛', '202cb962ac59075b964b07152d234b70', '3', '', '有效', 'V12', '-13', '1');
INSERT INTO `px_user` VALUES ('36', '小毛', '202cb962ac59075b964b07152d234b70', '3', '', '有效', 'V12', '-11', '1');
INSERT INTO `px_user` VALUES ('37', '宽昶', '202cb962ac59075b964b07152d234b70', '3', null, '有效', 'V12', '-19', '1');
INSERT INTO `px_user` VALUES ('86', '陈海山', '202cb962ac59075b964b07152d234b70', '1', '13077376007', '有效', '0', '10', '13');
INSERT INTO `px_user` VALUES ('87', '学生A', '202cb962ac59075b964b07152d234b70', '3', '13077376005', '有效', 'V1', '9', '13');
INSERT INTO `px_user` VALUES ('88', '教师A', '202cb962ac59075b964b07152d234b70', '2', '13077376004', '有效', 'T1', '10', '13');
INSERT INTO `px_user` VALUES ('90', '杨兆德', '202cb962ac59075b964b07152d234b70', '1', '18688309876', '有效', '0', '10', '14');
INSERT INTO `px_user` VALUES ('91', '厉成良', '202cb962ac59075b964b07152d234b70', '2', '13680795855', '有效', 'T1', '10', '14');
INSERT INTO `px_user` VALUES ('92', '测试', '202cb962ac59075b964b07152d234b70', '3', '13836787878', '有效', 'S1', '10', '14');
INSERT INTO `px_user` VALUES ('93', '任', '202cb962ac59075b964b07152d234b70', '2', '13808457010', '有效', 'T70', '10', '1');
INSERT INTO `px_user` VALUES ('94', '徐为盛', '202cb962ac59075b964b07152d234b70', '3', '12345678910', '有效', 'S1', '7', '1');
INSERT INTO `px_user` VALUES ('95', 'felicia', '202cb962ac59075b964b07152d234b70', '1', '13295801960', '有效', '0', '10', '15');
INSERT INTO `px_user` VALUES ('96', '王学利', '202cb962ac59075b964b07152d234b70', '1', '15998628329', '有效', '0', '10', '16');
INSERT INTO `px_user` VALUES ('98', '001', '202cb962ac59075b964b07152d234b70', '1', '15039171275', '有效', '0', '10', '17');
INSERT INTO `px_user` VALUES ('99', '曹峙峰', '202cb962ac59075b964b07152d234b70', '3', '18237932005', '有效', 'S1', '10', '17');
INSERT INTO `px_user` VALUES ('100', '温雨', '202cb962ac59075b964b07152d234b70', '1', '15832188627', '有效', '0', '10', '18');
INSERT INTO `px_user` VALUES ('101', 'oklhb628', '202cb962ac59075b964b07152d234b70', '1', '18397749593', '有效', '0', '10', '19');
INSERT INTO `px_user` VALUES ('102', '单励鹏', '202cb962ac59075b964b07152d234b70', '3', '18888881688', '有效', 'S1', '10', '19');
INSERT INTO `px_user` VALUES ('103', '付彰', '202cb962ac59075b964b07152d234b70', '3', '15566886688', '有效', 'S1', '10', '19');
INSERT INTO `px_user` VALUES ('104', '朱兰英', '202cb962ac59075b964b07152d234b70', '2', '18868686868', '有效', 'T1', '10', '19');
INSERT INTO `px_user` VALUES ('105', '余威', 'dd11b2a607a78aa23805a1bcf0a32d71', '1', '18575997449', '有效', '0', '10', '20');
INSERT INTO `px_user` VALUES ('106', '幼儿', '202cb962ac59075b964b07152d234b70', '3', '17004054455', '有效', 'S1', '10', '20');
INSERT INTO `px_user` VALUES ('107', '少儿', '202cb962ac59075b964b07152d234b70', '3', '13868440177', '有效', 'S1', '10', '20');
INSERT INTO `px_user` VALUES ('108', '温', '202cb962ac59075b964b07152d234b70', '1', '13844948202', '有效', '0', '10', '21');
INSERT INTO `px_user` VALUES ('109', '姜老师', '202cb962ac59075b964b07152d234b70', '1', '15152599088', '有效', '0', '10', '22');
INSERT INTO `px_user` VALUES ('110', '张国宇', '202cb962ac59075b964b07152d234b70', '1', '13730223213', '有效', '0', '10', '23');
INSERT INTO `px_user` VALUES ('113', '朱一凡h', '202cb962ac59075b964b07152d234b70', '2', '13371543111', '有效', 'T1', '10', '1');
INSERT INTO `px_user` VALUES ('114', 'robin', '202cb962ac59075b964b07152d234b70', '1', '13510510988', '有效', '0', '10', '26');
INSERT INTO `px_user` VALUES ('115', '小明', '202cb962ac59075b964b07152d234b70', '3', '13510610989', '有效', 'S1', '1', '26');
INSERT INTO `px_user` VALUES ('116', '睢磊', '202cb962ac59075b964b07152d234b70', '1', '15091356722', '有效', '0', '10', '27');
INSERT INTO `px_user` VALUES ('117', '小玉老师', '202cb962ac59075b964b07152d234b70', '1', '15118256974', '有效', '0', '10', '28');
INSERT INTO `px_user` VALUES ('118', '陆老师', '202cb962ac59075b964b07152d234b70', '2', '13058571475', '有效', 'T1', '10', '28');
INSERT INTO `px_user` VALUES ('119', '陈', '202cb962ac59075b964b07152d234b70', '1', '13870258177', '有效', '0', '10', '29');
INSERT INTO `px_user` VALUES ('120', '白云飞', '202cb962ac59075b964b07152d234b70', '1', '18033510401', '有效', '0', '10', '30');
INSERT INTO `px_user` VALUES ('121', '刘新', '202cb962ac59075b964b07152d234b70', '3', '16603366618', '有效', 'S1', '10', '30');
INSERT INTO `px_user` VALUES ('122', 'chu', '202cb962ac59075b964b07152d234b70', '1', '18611107472', '有效', '0', '10', '31');
INSERT INTO `px_user` VALUES ('123', '邹涵钰', '202cb962ac59075b964b07152d234b70', '1', '15537630909', '有效', '0', '10', '32');
INSERT INTO `px_user` VALUES ('124', '李老师', '202cb962ac59075b964b07152d234b70', '1', '13938668201', '有效', '0', '10', '33');
INSERT INTO `px_user` VALUES ('125', '梁博', '202cb962ac59075b964b07152d234b70', '3', '18768977980', '有效', 'S1', '20', '33');
INSERT INTO `px_user` VALUES ('126', '齐飞', '202cb962ac59075b964b07152d234b70', '3', '15837537880', '有效', 'S1', '20', '33');
INSERT INTO `px_user` VALUES ('127', '岳烨', '202cb962ac59075b964b07152d234b70', '3', '15836985910', '有效', 'S1', '20', '33');
INSERT INTO `px_user` VALUES ('128', '于博洋', '202cb962ac59075b964b07152d234b70', '3', '15238239923', '有效', 'S1', '20', '33');
INSERT INTO `px_user` VALUES ('129', 'jtfzp', '202cb962ac59075b964b07152d234b70', '1', '13861117596', '有效', '0', '10', '34');
INSERT INTO `px_user` VALUES ('130', '郑鹏飞', '202cb962ac59075b964b07152d234b70', '1', '13855686918', '有效', '0', '10', '35');
INSERT INTO `px_user` VALUES ('131', 'hll', '202cb962ac59075b964b07152d234b70', '1', '15162896898', '有效', '0', '10', '36');
INSERT INTO `px_user` VALUES ('132', '江山', '202cb962ac59075b964b07152d234b70', '1', '13778262543', '有效', '0', '10', '37');
INSERT INTO `px_user` VALUES ('133', '赵春萍', '202cb962ac59075b964b07152d234b70', '2', '15348106505', '有效', '特级教师', '10', '37');
INSERT INTO `px_user` VALUES ('134', '吴晓金', '202cb962ac59075b964b07152d234b70', '2', '18942897268', '有效', '特级教师', '10', '37');
INSERT INTO `px_user` VALUES ('135', '邱志明', '202cb962ac59075b964b07152d234b70', '3', '15181026183', '有效', '月嫂学员', '30', '37');
INSERT INTO `px_user` VALUES ('136', '妞妞', '202cb962ac59075b964b07152d234b70', '3', '11111111111', '有效', 'S1', '-5', '1');
INSERT INTO `px_user` VALUES ('137', '小智', '202cb962ac59075b964b07152d234b70', '3', '22222222222', '有效', 'S1', '-3', '1');
INSERT INTO `px_user` VALUES ('138', '邓皓宇', '202cb962ac59075b964b07152d234b70', '3', '33333333333', '有效', 'S1', '-9', '1');
INSERT INTO `px_user` VALUES ('139', '果果', '202cb962ac59075b964b07152d234b70', '3', '44444444444', '有效', 'S1', '5', '1');
INSERT INTO `px_user` VALUES ('140', '琪琪', '202cb962ac59075b964b07152d234b70', '3', '55555555555', '有效', 'S1', '-4', '1');
INSERT INTO `px_user` VALUES ('141', '丙杰', '202cb962ac59075b964b07152d234b70', '1', '18638774499', '有效', '0', '10', '38');
INSERT INTO `px_user` VALUES ('142', '许苏杭', '202cb962ac59075b964b07152d234b70', '1', '18571568109', '有效', '0', '10', '39');
INSERT INTO `px_user` VALUES ('143', 'Alex', '202cb962ac59075b964b07152d234b70', '1', '15898909878', '有效', '0', '10', '40');
INSERT INTO `px_user` VALUES ('144', '苗苗', '202cb962ac59075b964b07152d234b70', '3', '66666666666', '有效', 'S1', '-6', '1');
INSERT INTO `px_user` VALUES ('145', '浦仕虎', '202cb962ac59075b964b07152d234b70', '1', '13888563261', '有效', '0', '10', '41');
INSERT INTO `px_user` VALUES ('146', '谭笑莹', '202cb962ac59075b964b07152d234b70', '2', '18874828827', '有效', 'T1', '10', '1');

-- ----------------------------
-- View structure for v_paike
-- ----------------------------
DROP VIEW IF EXISTS `v_paike`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_paike` AS select `px_paike`.`kedate` AS `kedate`,`px_paike`.`starthour` AS `starthour`,`px_paike`.`ketype` AS `ketype`,`px_paike`.`ok` AS `ok`,`px_paike`.`beforeke` AS `beforeke`,`px_paike`.`midke` AS `midke`,`px_paike`.`afterke` AS `afterke`,`t`.`usr` AS `teacher`,`s`.`usr` AS `student`,`px_paike`.`teacher` AS `tid`,`px_paike`.`stuname` AS `sid`,`px_paike`.`ID` AS `ID`,`px_paike`.`tlevel` AS `tlevel`,`px_paike`.`slevel` AS `slevel`,trim(concat(`px_paike`.`kedate`,`px_paike`.`starthour`,`px_paike`.`teacher`)) AS `heke`,`px_paike`.`compid` AS `compid`,`t`.`mobile` AS `tmobile`,`s`.`mobile` AS `smobile` from ((`px_paike` left join `px_user` `t` on((`px_paike`.`teacher` = `t`.`ID`))) left join `px_user` `s` on((`px_paike`.`stuname` = `s`.`ID`))) ;

-- ----------------------------
-- View structure for v_user
-- ----------------------------
DROP VIEW IF EXISTS `v_user`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `v_user` AS select `px_user`.`ID` AS `ID`,`px_user`.`usr` AS `usr`,`px_user`.`password` AS `password`,`px_user`.`usrtype` AS `usrtype`,`px_user`.`mobile` AS `mobile`,`px_user`.`vaild` AS `vaild`,`px_user`.`level` AS `level`,`px_user`.`kecs` AS `kecs`,`px_user`.`compid` AS `compid`,`px_comp`.`compn` AS `compn` from (`px_user` join `px_comp` on((`px_user`.`compid` = `px_comp`.`ID`))) ;
