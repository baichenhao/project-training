/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50506
Source Host           : localhost:3306
Source Database       : runnerprj

Target Server Type    : MYSQL
Target Server Version : 50506
File Encoding         : 65001

Date: 2019-01-02 14:01:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_chatrecord`
-- ----------------------------
DROP TABLE IF EXISTS `t_chatrecord`;
CREATE TABLE `t_chatrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `times` datetime DEFAULT NULL,
  `talkerId` int(11) DEFAULT NULL,
  `uId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKj7l0h7le0bwys2gqrmuhfnfwu` (`talkerId`),
  KEY `FKidnhy0sunugqp4j8c1mo7624r` (`uId`),
  CONSTRAINT `FKidnhy0sunugqp4j8c1mo7624r` FOREIGN KEY (`uId`) REFERENCES `t_user` (`id`),
  CONSTRAINT `FKj7l0h7le0bwys2gqrmuhfnfwu` FOREIGN KEY (`talkerId`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_chatrecord
-- ----------------------------
INSERT INTO `t_chatrecord` VALUES ('52', '你好', '2019-01-02 11:00:39', '675827712', '1995943936');
INSERT INTO `t_chatrecord` VALUES ('53', '哈喽', '2019-01-02 11:00:46', '1995943936', '675827712');
INSERT INTO `t_chatrecord` VALUES ('54', '哈喽', '2019-01-02 11:00:49', '1995943936', '675827712');
INSERT INTO `t_chatrecord` VALUES ('55', '哈喽', '2019-01-02 11:00:52', '1995943936', '675827712');
INSERT INTO `t_chatrecord` VALUES ('56', '行', '2019-01-02 11:00:55', '675827712', '1995943936');
INSERT INTO `t_chatrecord` VALUES ('57', '哈喽', '2019-01-02 11:04:15', '1995943936', '675827712');

-- ----------------------------
-- Table structure for `t_commentaryrecord`
-- ----------------------------
DROP TABLE IF EXISTS `t_commentaryrecord`;
CREATE TABLE `t_commentaryrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `times` datetime DEFAULT NULL,
  `commentatorId` int(11) DEFAULT NULL,
  `uId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKf2rgl0odyjafj9konulg7h5ou` (`commentatorId`),
  KEY `FKfj8nc1k2k8ylossbquv3studa` (`uId`),
  CONSTRAINT `FKfj8nc1k2k8ylossbquv3studa` FOREIGN KEY (`uId`) REFERENCES `t_user` (`id`),
  CONSTRAINT `FKf2rgl0odyjafj9konulg7h5ou` FOREIGN KEY (`commentatorId`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_commentaryrecord
-- ----------------------------
INSERT INTO `t_commentaryrecord` VALUES ('1', '#服务周到#', '4', '2018-12-30 17:11:10', '675827712', '256397312');
INSERT INTO `t_commentaryrecord` VALUES ('2', '#服务周到##态度友好#', '4', '2018-12-31 21:37:46', '675827712', '1995943936');
INSERT INTO `t_commentaryrecord` VALUES ('3', '#准时##服务周到##飞毛腿##态度友好##热心肠#抹灰工', '5', '2019-01-02 11:02:50', '675827712', '1995943936');

-- ----------------------------
-- Table structure for `t_information`
-- ----------------------------
DROP TABLE IF EXISTS `t_information`;
CREATE TABLE `t_information` (
  `id` int(11) NOT NULL,
  `aBalance` int(11) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `bankNumber` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `clazz` varchar(255) DEFAULT NULL,
  `college` varchar(255) DEFAULT NULL,
  `creditScore` int(11) DEFAULT NULL,
  `deposit` int(11) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `major` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `oppositeImage` varchar(255) DEFAULT NULL,
  `paymentPassword` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `positiveImage` varchar(255) DEFAULT NULL,
  `school` varchar(255) DEFAULT NULL,
  `schoolNumber` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_information
-- ----------------------------
INSERT INTO `t_information` VALUES ('158838784', '2', null, null, null, null, null, null, null, null, null, null, null, '000000', null, null, null, null, null);
INSERT INTO `t_information` VALUES ('256397312', '101', '20', null, null, '', '', null, null, null, null, '刘琪', null, '123456', '15227136627', null, '', null, null);
INSERT INTO `t_information` VALUES ('675827712', '195', '20', null, null, '', '', null, null, null, null, '丁泽仁', 'images/personalCenter/studentID/675827712208887ef1ee73ce5.jpg', '123456', '13730552112', null, '', null, null);
INSERT INTO `t_information` VALUES ('973623296', '0', null, null, null, null, null, null, null, null, null, null, null, '000000', null, null, null, null, null);
INSERT INTO `t_information` VALUES ('1274523648', '0', null, null, null, null, null, null, null, null, null, null, null, '000000', null, null, null, null, null);
INSERT INTO `t_information` VALUES ('1342722048', '0', null, null, null, null, null, null, null, null, null, null, null, '000000', null, null, null, null, null);
INSERT INTO `t_information` VALUES ('1513598976', '0', null, null, null, null, null, null, null, null, null, null, null, '000000', null, null, null, null, null);
INSERT INTO `t_information` VALUES ('1974972416', '0', null, null, null, null, null, null, null, null, null, null, null, '000000', null, null, null, null, null);
INSERT INTO `t_information` VALUES ('1995943936', '196', '18', null, null, '', '软件学院', null, null, null, null, '刘文轩', null, '123456', '15227177209', null, '河北师范大学', null, null);
INSERT INTO `t_information` VALUES ('2075635712', '0', null, null, null, null, null, null, null, null, null, null, null, '000000', null, null, null, null, null);
INSERT INTO `t_information` VALUES ('2113384448', '0', null, null, null, null, null, null, null, null, null, null, null, '000000', null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_manager`
-- ----------------------------
DROP TABLE IF EXISTS `t_manager`;
CREATE TABLE `t_manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_manager
-- ----------------------------
INSERT INTO `t_manager` VALUES ('1', '123456', 'root');

-- ----------------------------
-- Table structure for `t_notice`
-- ----------------------------
DROP TABLE IF EXISTS `t_notice`;
CREATE TABLE `t_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext NOT NULL,
  `times` datetime NOT NULL,
  `title` varchar(100) NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_notice
-- ----------------------------

-- ----------------------------
-- Table structure for `t_order`
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deliveryTime` varchar(255) DEFAULT NULL,
  `destLnglat` varchar(255) DEFAULT NULL,
  `invoiceTime` datetime DEFAULT NULL,
  `itemNumber` varchar(255) DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `orderNumber` varchar(255) DEFAULT NULL,
  `receipt` varchar(255) DEFAULT NULL,
  `receiptTime` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `schoolName` varchar(255) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `successTime` datetime DEFAULT NULL,
  `delivery` int(11) NOT NULL,
  `invoiceId` int(11) DEFAULT NULL,
  `receiptId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKoo7np83v8mxt5dl757fq0axlp` (`delivery`),
  KEY `FK5ph9r01chp89polnr6wfkqs2u` (`invoiceId`),
  KEY `FKr422jroaucus4dok2xapvf9xj` (`receiptId`),
  CONSTRAINT `FKr422jroaucus4dok2xapvf9xj` FOREIGN KEY (`receiptId`) REFERENCES `t_user` (`id`),
  CONSTRAINT `FK5ph9r01chp89polnr6wfkqs2u` FOREIGN KEY (`invoiceId`) REFERENCES `t_user` (`id`),
  CONSTRAINT `FKoo7np83v8mxt5dl757fq0axlp` FOREIGN KEY (`delivery`) REFERENCES `t_station` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES ('1', '22:22', '114.521792,37.996578', '2018-12-30 16:31:45', '211', '2', '15461587045281513598976', '2', null, '2', null, '0', '5', null, '2', '1513598976', null);
INSERT INTO `t_order` VALUES ('2', '19:04', '114.518146,37.994234', '2018-12-30 17:04:57', '075100', '4', '1546160697394675827712', '诚朴园一期三号楼', '2018-12-30 17:09:44', '测试。', null, '0', '5', '2018-12-30 17:10:53', '2', '675827712', '256397312');
INSERT INTO `t_order` VALUES ('3', '21:06', '114.525606,37.999512', '2018-12-30 17:07:11', '075100', '3', '1546160831989675827712', '体院红馆', '2018-12-30 17:53:36', '测试。', null, '0', '5', '2018-12-30 17:53:57', '2', '675827712', '256397312');
INSERT INTO `t_order` VALUES ('4', '18:00', '114.522834,37.997737', '2018-12-30 17:15:56', '5551', '15', '1546161356568256397312', '软件学院', null, '有点多辛苦代跑侠', null, '2', '5', null, '4', '256397312', null);
INSERT INTO `t_order` VALUES ('5', '18:00', '114.522668,37.997693', '2018-12-30 17:16:49', '5551', '15', '1546161409978256397312', '软件学院', '2018-12-30 17:18:16', '有点多辛苦代跑侠', null, '2', '5', null, '2', '256397312', '675827712');
INSERT INTO `t_order` VALUES ('6', '20:59', '114.526155,37.999708', '2018-12-30 17:59:43', '075100', '2', '1546163983642675827712', '体育学院红楼', '2018-12-30 18:00:46', '', null, '0', '5', '2018-12-30 18:01:47', '2', '675827712', '158838784');
INSERT INTO `t_order` VALUES ('7', '16:15', '114.518298,37.994498', '2018-12-31 13:15:19', '07510', '3', '1546233319366675827712', '诚朴园一期三号楼', '2018-12-31 14:56:43', '测试', null, '0', '5', '2018-12-31 14:58:13', '2', '675827712', '256397312');
INSERT INTO `t_order` VALUES ('8', '17:16', '114.515798,37.992963', '2018-12-31 13:16:18', '075100', '3', '1546233378601675827712', '美术学院报告厅', null, '测试', null, '0', '5', null, '2', '675827712', null);
INSERT INTO `t_order` VALUES ('9', '17:50', '114.523028,37.998018', '2018-12-31 15:51:00', '087156', '3', '1546242660732256397312', '软件学院406', '2018-12-31 16:02:53', '尽快', null, '1', '5', null, '2', '256397312', '1995943936');
INSERT INTO `t_order` VALUES ('10', '17:29', '114.522931,37.997915', '2018-12-31 16:29:37', '546431', '3', '1546244977349256397312', '软件学院', '2018-12-31 16:32:12', '尽快哦', null, '1', '5', null, '2', '256397312', '1995943936');
INSERT INTO `t_order` VALUES ('11', '21:14', '114.520158,37.995174', '2018-12-31 18:15:00', '075400', '5', '1546251300592675827712', '测试', '2018-12-31 18:16:03', '', null, '0', '5', null, '2', '675827712', '1995943936');
INSERT INTO `t_order` VALUES ('12', '22:05', '114.519694,37.994569', '2018-12-31 20:06:12', '075100', '3', '1546257972935675827712', '测试', '2018-12-31 20:14:12', '测试', null, '0', '5', '2018-12-31 20:17:28', '2', '675827712', '1995943936');
INSERT INTO `t_order` VALUES ('13', '22:05', '114.518555,37.994376', '2018-12-31 20:08:05', '075100', '3', '1546258085658675827712', '测试', null, '测试', null, '0', '5', null, '2', '675827712', null);
INSERT INTO `t_order` VALUES ('14', '22:50', '114.523039,37.994325', '2019-01-01 21:49:09', '069854', '3', '1546350549692675827712', '软件学院', '2019-01-01 21:55:54', '辣鸡', null, '1', '5', null, '2', '675827712', null);
INSERT INTO `t_order` VALUES ('15', '22:57', '114.526099,37.995581', '2019-01-01 21:57:40', '645644', '3', '1546351060252675827712', '软件工程', '2019-01-01 21:57:58', '', null, '0', '5', null, '2', '675827712', '256397312');
INSERT INTO `t_order` VALUES ('16', '23:00', '114.511627,37.986438', '2019-01-01 22:00:36', '7758521', '3', '1546351236647256397312', '诚朴园3号楼', '2019-01-01 22:01:03', '', null, '0', '5', null, '2', '256397312', '675827712');
INSERT INTO `t_order` VALUES ('17', '15:33', '114.520229,37.996704', '2019-01-02 08:33:29', '075100', '3', '15463892093411995943936', '公教楼B座', null, '易碎。', null, '0', '5', null, '2', '1995943936', null);
INSERT INTO `t_order` VALUES ('18', '14:37', '114.522566,37.998528', '2019-01-02 08:37:48', '075100', '2', '15463894687921995943936', '数信学院', '2019-01-02 10:03:56', '测试', null, '0', '5', null, '2', '1995943936', '675827712');
INSERT INTO `t_order` VALUES ('19', '16:38', '114.525856,37.999389', '2019-01-02 08:38:40', '075100', '3', '15463895201361995943936', '体院球场', '2019-01-02 10:21:29', '测试', null, '0', '5', null, '2', '1995943936', '675827712');
INSERT INTO `t_order` VALUES ('20', '13:39', '114.521228,37.997857', '2019-01-02 08:39:43', '075100', '5', '15463895832431995943936', '资环楼', '2019-01-02 11:03:55', '测试', null, '0', '1', null, '2', '1995943936', '675827712');
INSERT INTO `t_order` VALUES ('21', '16:40', '114.522251,37.999762', '2019-01-02 08:40:37', '075100', '3', '15463896379231995943936', '创业孵化园', null, '测试', null, '0', '0', null, '3', '1995943936', null);
INSERT INTO `t_order` VALUES ('22', '15:41', '114.520624,37.994837', '2019-01-02 08:42:10', '075100', '2', '15463897301761995943936', '第一餐厅', '2019-01-02 08:43:03', '测试', null, '0', '5', null, '2', '1995943936', '675827712');
INSERT INTO `t_order` VALUES ('23', '15:45', '114.516225,37.995862', '2019-01-02 08:45:42', '075100', '5', '15463899423941995943936', '乒乓球场', null, '测试', null, '0', '0', null, '6', '1995943936', null);
INSERT INTO `t_order` VALUES ('24', '16:22', '114.520751,37.995815', '2019-01-02 10:23:01', '075100', '3', '15463957810881995943936', '公教楼D座', null, '测试', null, '0', '0', null, '2', '1995943936', null);
INSERT INTO `t_order` VALUES ('25', '14:23', '114.522436,37.998317', '2019-01-02 10:23:53', '075100', '3', '15463958330711995943936', '数信学院', null, '测试', null, '0', '0', null, '2', '1995943936', null);
INSERT INTO `t_order` VALUES ('26', '13:30', '114.523435,37.998391', '2019-01-02 10:31:14', '075100', '4', '15463962742161995943936', '北院研究生宿舍', '2019-01-02 10:31:58', '测试', null, '0', '1', null, '2', '1995943936', '675827712');
INSERT INTO `t_order` VALUES ('27', '17:58', '114.52789,37.998319', '2019-01-02 10:59:30', '654987', '3', '1546397970715675827712', '软件学院', '2019-01-02 11:00:15', '', null, '1', '6', '2019-01-02 11:02:33', '2', '675827712', '1995943936');

-- ----------------------------
-- Table structure for `t_station`
-- ----------------------------
DROP TABLE IF EXISTS `t_station`;
CREATE TABLE `t_station` (
  `id` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `lnglat` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKqry3s9j6m3w8de3h5jsffdnk` (`parentId`),
  CONSTRAINT `FKqry3s9j6m3w8de3h5jsffdnk` FOREIGN KEY (`parentId`) REFERENCES `t_station` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_station
-- ----------------------------
INSERT INTO `t_station` VALUES ('1', '', '', '河北师范大学', null);
INSERT INTO `t_station` VALUES ('2', '师生活动中心西侧菜鸟驿站', '114.517722,37.996268', '菜鸟驿站', '1');
INSERT INTO `t_station` VALUES ('3', '一期食堂东侧', '114.522035,37.99496', '一食堂东侧菜鸟驿站', '1');
INSERT INTO `t_station` VALUES ('4', '西门口北行10米菜鸟驿站', '114.513422,37.997481', '小麦公社', '1');
INSERT INTO `t_station` VALUES ('5', '西门口北行20米菜鸟驿站', '114.513396,37.997824', '中通', '1');
INSERT INTO `t_station` VALUES ('6', '西门口北行30米菜鸟驿站', '114.51339,37.998052', '圆通', '1');
INSERT INTO `t_station` VALUES ('7', '青春魔方一楼', '114.525546,37.995242', '京东快递', '1');
INSERT INTO `t_station` VALUES ('8', '青春魔方一楼', '114.525478,37.995377', '菜鸟驿站(申通、百世快递)', '1');

-- ----------------------------
-- Table structure for `t_systemnotice`
-- ----------------------------
DROP TABLE IF EXISTS `t_systemnotice`;
CREATE TABLE `t_systemnotice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `times` datetime DEFAULT NULL,
  `uId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKfpsysp1j4mxe5di5nr8207bsq` (`uId`),
  CONSTRAINT `FKfpsysp1j4mxe5di5nr8207bsq` FOREIGN KEY (`uId`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_systemnotice
-- ----------------------------
INSERT INTO `t_systemnotice` VALUES ('1', '刘琪用户抢您发布的单啦!', '0', '2018-12-31 14:56:43', '675827712');
INSERT INTO `t_systemnotice` VALUES ('2', '叫我妹儿哥。用户抢您发布的单啦!', '0', '2018-12-31 16:02:53', '256397312');
INSERT INTO `t_systemnotice` VALUES ('3', '叫我妹儿哥。用户抢您发布的单啦!', '0', '2018-12-31 16:32:12', '256397312');
INSERT INTO `t_systemnotice` VALUES ('4', '叫我妹儿哥。用户抢您发布的单啦!', '0', '2018-12-31 18:16:03', '675827712');
INSERT INTO `t_systemnotice` VALUES ('5', '叫我妹儿哥。用户抢您发布的单啦!', '0', '2018-12-31 20:14:12', '675827712');
INSERT INTO `t_systemnotice` VALUES ('6', '哈哈哈哈的白用户抢您发布的单啦!', '0', '2019-01-01 21:57:58', '675827712');
INSERT INTO `t_systemnotice` VALUES ('7', '哈哈哈哈的白用户抢您发布的单啦!', '0', '2019-01-01 22:01:03', '256397312');
INSERT INTO `t_systemnotice` VALUES ('8', '哈哈哈哈的白用户抢您发布的单啦!', '0', '2019-01-02 08:43:03', '1995943936');
INSERT INTO `t_systemnotice` VALUES ('9', '哈哈哈哈的白用户抢您发布的单啦!', '0', '2019-01-02 10:03:56', '1995943936');
INSERT INTO `t_systemnotice` VALUES ('10', '代跑展示用户抢您发布的单啦!', '0', '2019-01-02 10:21:29', '1995943936');
INSERT INTO `t_systemnotice` VALUES ('11', '代跑展示用户抢您发布的单啦!', '0', '2019-01-02 10:31:58', '1995943936');
INSERT INTO `t_systemnotice` VALUES ('12', '代跑侠用户抢您发布的单啦!', '0', '2019-01-02 11:00:15', '675827712');
INSERT INTO `t_systemnotice` VALUES ('13', '代跑展示用户抢您发布的单啦!', '0', '2019-01-02 11:03:55', '1995943936');
INSERT INTO `t_systemnotice` VALUES ('14', '您的订单错误', '0', '2019-01-02 11:10:51', '1995943936');
INSERT INTO `t_systemnotice` VALUES ('15', '你好棒', '0', '2019-01-02 11:11:12', '675827712');

-- ----------------------------
-- Table structure for `t_transactionrecord`
-- ----------------------------
DROP TABLE IF EXISTS `t_transactionrecord`;
CREATE TABLE `t_transactionrecord` (
  `id` int(11) NOT NULL,
  `money` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `times` datetime NOT NULL,
  `uId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKepe1br946hl1983kynrxqjyr8` (`uId`),
  CONSTRAINT `FKepe1br946hl1983kynrxqjyr8` FOREIGN KEY (`uId`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_transactionrecord
-- ----------------------------

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `headPortrait` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `weChat` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('158838784', '530902887@qq.com', 'images/defaultImg.jpg', '用户名158838784', '123mlx.', null, '0', null);
INSERT INTO `t_user` VALUES ('256397312', '1138322644@qq.com', 'images/headimages/2018048312048012018040151540247ecea32c8e1ee7bf.jpg', '哈哈哈哈的白', '.94AIZHENI', '1138322644', '0', 'TOP22666');
INSERT INTO `t_user` VALUES ('675827712', '1242353902@qq.com', 'images/headimages/201900502110509v2-d7797a37707dcc839b4f0d47349f4fd8.jpg', '哈哈哈哈的白', '123ljz.', '', '0', '');
INSERT INTO `t_user` VALUES ('973623296', '1242353902@sina.com', 'images/defaultImg.jpg', '用户名973623296', '123ljz.', null, '0', null);
INSERT INTO `t_user` VALUES ('1274523648', '1473003409@qq.com', 'images/defaultImg.jpg', '用户名1274523648', '123ljz.', null, '0', null);
INSERT INTO `t_user` VALUES ('1342722048', '1773768273@qq.com', 'images/defaultImg.jpg', '用户名1342722048', '123ljz.', null, '0', null);
INSERT INTO `t_user` VALUES ('1513598976', '512653808@qq.com', 'images/defaultImg.jpg', '用户名1513598976', '123ljz.', null, '0', null);
INSERT INTO `t_user` VALUES ('1974972416', '380100043@qq.com', 'images/defaultImg.jpg', '用户名1974972416', '123ljz.', null, '0', null);
INSERT INTO `t_user` VALUES ('1995943936', '16812520@qq.com', 'images/headimages/20190410210411356b6ddb9c2dbaff.jpg', '代跑侠', '123ljz.', '', '0', 'TOP22666');
INSERT INTO `t_user` VALUES ('2075635712', '420809214@qq.com', 'images/defaultImg.jpg', '用户名2075635712', '123ljz.', null, '0', null);
INSERT INTO `t_user` VALUES ('2113384448', '1046850931@qq.com', 'images/defaultImg.jpg', '用户名2113384448', '123ljz.', null, '0', null);
