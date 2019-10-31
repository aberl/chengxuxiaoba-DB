/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80015
Source Host           : localhost:3306
Source Database       : chengxuxiaoba

Target Server Type    : MYSQL
Target Server Version : 80015
File Encoding         : 65001

Date: 2019-10-31 21:15:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `headerImg` varchar(255) DEFAULT NULL,
  `mobilePhoneNo` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `wechatAccount` varchar(255) DEFAULT NULL,
  `wechatHeaderImg` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `createDateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateDateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------

-- ----------------------------
-- Table structure for accountmessage_relationship
-- ----------------------------
DROP TABLE IF EXISTS `accountmessage_relationship`;
CREATE TABLE `accountmessage_relationship` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountId` int(11) NOT NULL,
  `messageId` int(11) NOT NULL,
  `messageCategory` int(11) NOT NULL,
  `isRead` bit(1) NOT NULL DEFAULT b'0',
  `readDateTime` datetime DEFAULT NULL,
  `createDateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of accountmessage_relationship
-- ----------------------------

-- ----------------------------
-- Table structure for accountrole_relationship
-- ----------------------------
DROP TABLE IF EXISTS `accountrole_relationship`;
CREATE TABLE `accountrole_relationship` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountId` int(11) NOT NULL,
  `roleId` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `createDateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateDateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_account` (`accountId`,`roleId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of accountrole_relationship
-- ----------------------------

-- ----------------------------
-- Table structure for accountviptimerange
-- ----------------------------
DROP TABLE IF EXISTS `accountviptimerange`;
CREATE TABLE `accountviptimerange` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountId` int(11) NOT NULL,
  `startDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `endDate` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `createdateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateDateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_account` (`accountId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of accountviptimerange
-- ----------------------------

-- ----------------------------
-- Table structure for answer
-- ----------------------------
DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `issueId` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `answererId` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `createDateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of answer
-- ----------------------------

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `aliImgUrls` varchar(1000) NOT NULL,
  `images` varchar(1000) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `createDateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------

-- ----------------------------
-- Table structure for coursemodule
-- ----------------------------
DROP TABLE IF EXISTS `coursemodule`;
CREATE TABLE `coursemodule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `courseId` int(11) NOT NULL,
  `courseName` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `aliImgUrls` varchar(1000) NOT NULL,
  `images` varchar(1000) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `createDateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of coursemodule
-- ----------------------------

-- ----------------------------
-- Table structure for evaluate
-- ----------------------------
DROP TABLE IF EXISTS `evaluate`;
CREATE TABLE `evaluate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `videoId` int(11) NOT NULL,
  `content` varchar(500) NOT NULL,
  `stars` int(11) NOT NULL,
  `accountId` int(20) NOT NULL,
  `praiseCount` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `createDateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of evaluate
-- ----------------------------

-- ----------------------------
-- Table structure for issue
-- ----------------------------
DROP TABLE IF EXISTS `issue`;
CREATE TABLE `issue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `videoId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `questionerId` int(11) NOT NULL,
  `answerCount` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `createDateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of issue
-- ----------------------------

-- ----------------------------
-- Table structure for material
-- ----------------------------
DROP TABLE IF EXISTS `material`;
CREATE TABLE `material` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `file` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `createDateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of material
-- ----------------------------

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `category` int(11) NOT NULL DEFAULT '1' COMMENT '消息类别:\r\n0:系统消息\r\n1:用户消息',
  `createDateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------

-- ----------------------------
-- Table structure for paymentrecord
-- ----------------------------
DROP TABLE IF EXISTS `paymentrecord`;
CREATE TABLE `paymentrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountId` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `amount` decimal(10,0) NOT NULL,
  `paymentMothed` varchar(255) NOT NULL,
  `createDateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of paymentrecord
-- ----------------------------

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('1', 'WATCHINGLIMITEDPERDAY', '每日免费观看3段视频', '1');
INSERT INTO `permission` VALUES ('2', 'WATCHINGNOLIMITED', '无限制观看视频', '1');
INSERT INTO `permission` VALUES ('3', 'DOWNLOADINGNOLIMITED', '无限制下载任何资料', '1');
INSERT INTO `permission` VALUES ('5', 'SUBMITEVALUATION', '在线提交评论', '1');
INSERT INTO `permission` VALUES ('6', 'SUBMITISSUE', '在线向老师提问', '1');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `priority` int(11) NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'vistor', '普通会员', '0', '1');
INSERT INTO `role` VALUES ('2', 'vipmember', 'VIP会员', '1', '1');
INSERT INTO `role` VALUES ('3', 'admin', '管理员', '-1', '1');

-- ----------------------------
-- Table structure for rolepayment
-- ----------------------------
DROP TABLE IF EXISTS `rolepayment`;
CREATE TABLE `rolepayment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `roleId` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` int(255) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rolepayment
-- ----------------------------
INSERT INTO `rolepayment` VALUES ('1', 'month', '2', '39.00', '月会员', '1');
INSERT INTO `rolepayment` VALUES ('2', 'season', '2', '79.00', '季会员', '1');
INSERT INTO `rolepayment` VALUES ('3', 'year', '2', '234.00', '年会员', '1');

-- ----------------------------
-- Table structure for rolepaymentimages
-- ----------------------------
DROP TABLE IF EXISTS `rolepaymentimages`;
CREATE TABLE `rolepaymentimages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rolePaymentId` int(11) NOT NULL,
  `payType` int(11) NOT NULL,
  `payWayImage` varchar(255) DEFAULT NULL,
  `payQRImage` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rolepaymentimages
-- ----------------------------

-- ----------------------------
-- Table structure for rolepermission_relationship
-- ----------------------------
DROP TABLE IF EXISTS `rolepermission_relationship`;
CREATE TABLE `rolepermission_relationship` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` int(11) DEFAULT NULL,
  `permission` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `createDateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rolepermission_relationship
-- ----------------------------
INSERT INTO `rolepermission_relationship` VALUES ('1', '1', '1', '1', '2019-06-17 21:49:20');
INSERT INTO `rolepermission_relationship` VALUES ('2', '2', '2', '1', '2019-06-17 21:49:40');
INSERT INTO `rolepermission_relationship` VALUES ('3', '2', '3', '1', '2019-06-17 21:49:46');
INSERT INTO `rolepermission_relationship` VALUES ('4', '2', '4', '1', '2019-06-17 21:50:18');
INSERT INTO `rolepermission_relationship` VALUES ('5', '2', '5', '1', '2019-06-17 21:50:22');
INSERT INTO `rolepermission_relationship` VALUES ('6', '2', '6', '1', '2019-06-17 21:50:27');
INSERT INTO `rolepermission_relationship` VALUES ('7', '3', '2', '1', '2019-06-17 21:49:40');
INSERT INTO `rolepermission_relationship` VALUES ('8', '3', '3', '1', '2019-06-17 21:49:46');
INSERT INTO `rolepermission_relationship` VALUES ('9', '3', '4', '1', '2019-06-17 21:50:18');
INSERT INTO `rolepermission_relationship` VALUES ('10', '3', '5', '1', '2019-06-17 21:50:22');
INSERT INTO `rolepermission_relationship` VALUES ('11', '3', '6', '1', '2019-06-17 21:50:27');

-- ----------------------------
-- Table structure for uploadfile
-- ----------------------------
DROP TABLE IF EXISTS `uploadfile`;
CREATE TABLE `uploadfile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `originName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `size` bigint(20) NOT NULL,
  `purpose` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `createDateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateDateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uploadfile
-- ----------------------------

-- ----------------------------
-- Table structure for validationcode
-- ----------------------------
DROP TABLE IF EXISTS `validationcode`;
CREATE TABLE `validationcode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobilePhoneNo` varchar(20) NOT NULL,
  `validationCode` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expireTime` datetime DEFAULT NULL,
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isActive` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of validationcode
-- ----------------------------

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `courseModuleId` int(11) DEFAULT NULL,
  `aliVideoId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `attachments` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '相关文档，代码',
  `duration` int(11) DEFAULT NULL COMMENT '视频时长，分钟为单位',
  `description` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `images` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `viewCount` int(11) NOT NULL DEFAULT '0',
  `praiseCount` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `createDateTime` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_index` (`courseModuleId`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of video
-- ----------------------------

-- ----------------------------
-- Table structure for videowatchrecord
-- ----------------------------
DROP TABLE IF EXISTS `videowatchrecord`;
CREATE TABLE `videowatchrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `courseModuleId` int(11) NOT NULL,
  `videoId` int(11) NOT NULL,
  `accountId` int(11) NOT NULL,
  `lastWatchTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of videowatchrecord
-- ----------------------------

-- ----------------------------
-- Table structure for videowatchrecordhistory
-- ----------------------------
DROP TABLE IF EXISTS `videowatchrecordhistory`;
CREATE TABLE `videowatchrecordhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `courseModuleId` int(11) NOT NULL,
  `videoId` int(11) NOT NULL,
  `accountId` int(11) NOT NULL,
  `lastWatchTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of videowatchrecordhistory
-- ----------------------------
