/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80015
Source Host           : localhost:3306
Source Database       : chengxuxiaoba

Target Server Type    : MYSQL
Target Server Version : 80015
File Encoding         : 65001

Date: 2019-07-21 13:39:18
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('4', 'AIAXUR', null, '15001112623', 'password2', null, null, '1', '2019-03-25 21:51:33', '2019-03-25 21:51:33');
INSERT INTO `account` VALUES ('5', 'AIAXUT', null, '15001112622', 'password2', '', '', '1', '2019-03-25 21:51:33', '2019-03-25 21:51:33');
INSERT INTO `account` VALUES ('6', 'PMHWAX', null, '15001112627', '111111', null, null, '1', '2019-04-06 19:54:41', '2019-04-06 19:54:41');
INSERT INTO `account` VALUES ('7', 'GNUDXR', null, '15001112727', '123456', null, null, '1', '2019-04-06 20:07:31', '2019-04-06 20:07:31');
INSERT INTO `account` VALUES ('17', 'HMTPTU', null, '15001112620', '123456', null, null, '1', '2019-04-06 21:41:29', '2019-04-06 21:41:29');
INSERT INTO `account` VALUES ('18', 'OXSUMZ', null, '15001112777', '121233', null, null, '1', '2019-04-06 21:53:37', '2019-04-06 21:53:37');
INSERT INTO `account` VALUES ('19', 'DYPSYG', null, '15001112625', '123456', null, null, '-1', '2019-04-06 23:53:55', '2019-04-06 23:53:55');
INSERT INTO `account` VALUES ('20', 'WWOTTF', null, '15001112633', '111111', null, null, '1', '2019-05-14 22:05:19', '2019-05-14 22:05:19');
INSERT INTO `account` VALUES ('22', 'JLZGPQ', null, '13720004712', '111111', null, null, '1', '2019-05-18 21:35:39', '2019-05-18 21:35:39');
INSERT INTO `account` VALUES ('26', 'PHQXWT', null, '13720004711', 'password', null, null, '-1', '2019-05-19 17:58:08', '2019-05-19 17:58:08');
INSERT INTO `account` VALUES ('27', 'UAFGPT', null, '13000001272', '123456', null, null, '1', '2019-05-21 21:54:25', '2019-05-21 21:54:25');
INSERT INTO `account` VALUES ('28', 'BYAJHN', null, '13000001273', '123456', null, null, '-1', '2019-05-21 21:54:25', '2019-05-21 21:54:25');
INSERT INTO `account` VALUES ('29', 'YZNCWJ', null, '13441112728', '1qaz2wsx', null, null, '-1', '2019-06-03 22:26:28', '2019-06-03 22:26:28');

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of accountmessage_relationship
-- ----------------------------
INSERT INTO `accountmessage_relationship` VALUES ('1', '4', '1', '4', '', '2019-03-30 23:58:34', '2019-03-30 22:55:20');
INSERT INTO `accountmessage_relationship` VALUES ('2', '4', '2', '5', '', '2019-03-30 23:58:47', '2019-03-30 22:55:20');
INSERT INTO `accountmessage_relationship` VALUES ('3', '4', '3', '4', '\0', null, '2019-03-30 23:11:14');
INSERT INTO `accountmessage_relationship` VALUES ('4', '5', '1', '5', '\0', null, '2019-03-30 23:11:14');
INSERT INTO `accountmessage_relationship` VALUES ('5', '4', '4', '4', '\0', null, '2019-03-30 23:11:46');
INSERT INTO `accountmessage_relationship` VALUES ('6', '5', '2', '5', '\0', null, '2019-03-30 23:11:46');
INSERT INTO `accountmessage_relationship` VALUES ('7', '4', '5', '4', '\0', null, '2019-03-30 23:20:48');
INSERT INTO `accountmessage_relationship` VALUES ('8', '5', '3', '5', '\0', null, '2019-03-30 23:20:48');
INSERT INTO `accountmessage_relationship` VALUES ('9', '4', '6', '12', '\0', null, '2019-03-30 23:23:19');
INSERT INTO `accountmessage_relationship` VALUES ('10', '5', '4', '12', '\0', null, '2019-03-30 23:23:19');
INSERT INTO `accountmessage_relationship` VALUES ('11', '4', '7', '13', '\0', null, '2019-03-30 23:23:31');
INSERT INTO `accountmessage_relationship` VALUES ('12', '5', '5', '13', '\0', null, '2019-03-30 23:23:31');
INSERT INTO `accountmessage_relationship` VALUES ('13', '4', '8', '14', '\0', null, '2019-03-30 23:23:41');
INSERT INTO `accountmessage_relationship` VALUES ('14', '5', '6', '14', '\0', null, '2019-03-30 23:23:41');

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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of accountrole_relationship
-- ----------------------------
INSERT INTO `accountrole_relationship` VALUES ('5', '1', '1', '1', '2019-05-18 21:06:57', '2019-05-18 21:06:57');
INSERT INTO `accountrole_relationship` VALUES ('6', '22', '1', '1', '2019-05-18 21:35:39', '2019-05-18 21:35:39');
INSERT INTO `accountrole_relationship` VALUES ('13', '4', '1', '1', '2019-05-19 22:25:50', '2019-05-19 22:25:50');
INSERT INTO `accountrole_relationship` VALUES ('14', '4', '3', '1', '2019-05-19 22:25:50', '2019-05-19 22:25:50');
INSERT INTO `accountrole_relationship` VALUES ('28', '26', '3', '1', '2019-05-21 21:43:11', '2019-05-21 21:43:11');
INSERT INTO `accountrole_relationship` VALUES ('35', '5', '1', '1', '2019-06-12 22:16:42', '2019-06-12 22:16:42');
INSERT INTO `accountrole_relationship` VALUES ('58', '6', '3', '1', '2019-06-18 22:15:24', '2019-06-18 22:15:24');
INSERT INTO `accountrole_relationship` VALUES ('59', '29', '1', '1', '2019-07-06 21:34:18', '2019-07-06 21:34:18');
INSERT INTO `accountrole_relationship` VALUES ('60', '28', '1', '1', '2019-07-06 21:34:22', '2019-07-06 21:34:22');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of accountviptimerange
-- ----------------------------
INSERT INTO `accountviptimerange` VALUES ('1', '26', '2019-05-01 08:00:00', '2019-06-29 08:00:00', '1', '2019-05-19 22:52:50', '2019-05-21 21:43:11');
INSERT INTO `accountviptimerange` VALUES ('2', '5', '2019-06-01 08:00:00', '2019-06-30 08:00:00', '1', '2019-06-12 22:16:42', '2019-06-12 22:16:42');
INSERT INTO `accountviptimerange` VALUES ('3', '6', '2019-06-06 08:00:00', '2019-07-01 08:00:00', '1', '2019-06-18 22:03:02', '2019-06-18 22:15:17');

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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of answer
-- ----------------------------
INSERT INTO `answer` VALUES ('1', '1', 'content', '4', '1', '2019-03-28 21:51:29');
INSERT INTO `answer` VALUES ('2', '1', 'content', '4', '1', '2019-03-28 21:51:34');
INSERT INTO `answer` VALUES ('23', '1', 'content', '4', '1', '2019-06-08 21:01:06');
INSERT INTO `answer` VALUES ('24', '1', 'content', '5', '1', '2019-06-08 21:01:42');
INSERT INTO `answer` VALUES ('25', '1', 'content', '6', '1', '2019-06-08 21:01:59');
INSERT INTO `answer` VALUES ('26', '1', 'content', '7', '1', '2019-06-08 21:02:09');
INSERT INTO `answer` VALUES ('27', '1', 'content', '11', '1', '2019-06-08 21:02:53');
INSERT INTO `answer` VALUES ('28', '11', '层代码，但是对Quartz有了一个比较清晰的概念了，谢谢老师的点点滴滴多多多多多层代码，但是对Quartz有了一个比较清晰的概念了，谢谢老师的点点滴滴多多多多多层代码，但是对Quartz有了一个比较清晰的概念了，谢谢老师的点点滴滴多多多多多层代码，但是对Quartz有了一个比较清晰的概念了，谢谢老师的点点滴滴多多多多多层代码，但是对Quartz有了一个比较清晰的概念了，谢谢老师的点点滴滴多多多多多', '11', '1', '2019-06-08 21:03:52');
INSERT INTO `answer` VALUES ('29', '11', '层代码，但是对Quartz有了一个比较清晰的概念了，谢谢老师的点点滴滴多多多多多层代码，但是对Quartz有了一个比较清晰的概念了，谢谢老师的点点滴滴多多多多多层代码，但是对Quartz有了一个比较清晰的概念了，谢谢老师的点点滴滴多多多多多层代码，但是对Quartz有了一个比较清晰的概念了，谢谢老师的点点滴滴多多多多多层代码，但是对Quartz有了一个比较清晰的概念了，谢谢老师的点点滴滴多多多多多', '11', '1', '2019-06-08 22:46:36');
INSERT INTO `answer` VALUES ('30', '12', '2121212', '11', '1', '2019-06-08 22:49:36');
INSERT INTO `answer` VALUES ('31', '27', '1212', '6', '1', '2019-06-10 22:23:12');
INSERT INTO `answer` VALUES ('32', '29', '3333', '6', '1', '2019-06-10 22:23:18');
INSERT INTO `answer` VALUES ('33', '26', '3333333', '6', '1', '2019-06-10 22:23:30');
INSERT INTO `answer` VALUES ('34', '11', '333333333', '6', '1', '2019-06-10 22:24:55');
INSERT INTO `answer` VALUES ('35', '11', '4444', '6', '1', '2019-06-10 22:27:17');
INSERT INTO `answer` VALUES ('36', '11', 'qqqqqq', '6', '1', '2019-06-10 22:27:42');
INSERT INTO `answer` VALUES ('37', '11', 'www', '6', '1', '2019-06-10 22:33:58');
INSERT INTO `answer` VALUES ('38', '12', 'e3333', '6', '1', '2019-06-10 22:34:04');
INSERT INTO `answer` VALUES ('39', '11', '4444', '6', '1', '2019-06-10 22:34:14');
INSERT INTO `answer` VALUES ('40', '11', 'eeee', '6', '1', '2019-06-10 22:35:40');
INSERT INTO `answer` VALUES ('41', '11', '44443', '6', '1', '2019-06-10 22:38:13');
INSERT INTO `answer` VALUES ('42', '11', '3333', '6', '1', '2019-06-12 21:34:41');
INSERT INTO `answer` VALUES ('43', '11', '4444', '6', '1', '2019-06-12 21:34:47');
INSERT INTO `answer` VALUES ('44', '11', '43', '6', '1', '2019-06-12 21:35:11');
INSERT INTO `answer` VALUES ('45', '11', '3', '6', '1', '2019-06-12 21:35:17');
INSERT INTO `answer` VALUES ('46', '11', '333', '6', '1', '2019-06-12 21:36:10');
INSERT INTO `answer` VALUES ('47', '11', '444', '6', '1', '2019-06-12 21:36:14');
INSERT INTO `answer` VALUES ('48', '11', '433', '6', '1', '2019-06-12 21:36:45');
INSERT INTO `answer` VALUES ('49', '11', '4444', '6', '1', '2019-06-12 21:37:04');
INSERT INTO `answer` VALUES ('50', '11', '5555', '6', '1', '2019-06-12 21:37:09');
INSERT INTO `answer` VALUES ('51', '11', '2222', '6', '1', '2019-06-12 21:40:36');
INSERT INTO `answer` VALUES ('52', '11', '3333', '6', '1', '2019-06-12 21:40:41');
INSERT INTO `answer` VALUES ('53', '11', '222', '6', '1', '2019-06-12 21:42:18');
INSERT INTO `answer` VALUES ('54', '11', '333', '6', '1', '2019-06-12 21:43:02');
INSERT INTO `answer` VALUES ('55', '11', '2222', '6', '1', '2019-06-12 21:43:47');
INSERT INTO `answer` VALUES ('56', '11', '3333', '6', '1', '2019-06-12 21:43:51');
INSERT INTO `answer` VALUES ('57', '12', '4444', '6', '1', '2019-06-12 21:43:54');
INSERT INTO `answer` VALUES ('58', '11', '3333', '6', '1', '2019-06-12 21:51:42');
INSERT INTO `answer` VALUES ('59', '11', '333', '6', '1', '2019-06-12 21:55:22');
INSERT INTO `answer` VALUES ('60', '26', '相信自己', '6', '1', '2019-06-12 21:56:07');
INSERT INTO `answer` VALUES ('61', '26', '相信自己', '6', '1', '2019-06-12 21:56:20');
INSERT INTO `answer` VALUES ('62', '25', '3333', '6', '1', '2019-06-12 21:56:59');
INSERT INTO `answer` VALUES ('63', '25', 'RRRRR', '6', '1', '2019-06-12 21:57:05');
INSERT INTO `answer` VALUES ('64', '25', '33333T', '6', '1', '2019-06-12 21:57:26');
INSERT INTO `answer` VALUES ('65', '27', '相信自己', '6', '1', '2019-06-12 21:57:47');
INSERT INTO `answer` VALUES ('66', '28', '恩恩', '6', '1', '2019-06-12 21:58:02');
INSERT INTO `answer` VALUES ('67', '28', '333', '6', '1', '2019-06-12 21:58:23');
INSERT INTO `answer` VALUES ('68', '28', '44444', '6', '1', '2019-06-12 21:58:30');
INSERT INTO `answer` VALUES ('69', '24', '嗯嗯嗯', '6', '1', '2019-06-12 21:58:57');
INSERT INTO `answer` VALUES ('70', '30', '嗯嗯嗯呃', '6', '1', '2019-06-12 22:02:00');
INSERT INTO `answer` VALUES ('71', '31', '好的', '6', '1', '2019-06-12 22:06:19');
INSERT INTO `answer` VALUES ('72', '32', '讲文明属性风', '6', '1', '2019-06-12 22:07:02');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `images` varchar(1000) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `createDateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', 'JAVA', 'Java是一门面向对象编程语言，不仅吸收了C++语言的各种优点，还摒弃了C++里难以理解的多继承、指针等概念，因此Java语言具有功能强大和简单易用两个特征。Java语言作为静态面向对象编程语言的代表，极好地实现了面向对象理论，允许程序员以优雅的思维方式进行复杂的编程.', '[\"3ff3d5d9-b433-4b7f-ab37-d91ee27bdb46.jpg\"]', '1', '2019-05-14 21:16:21');
INSERT INTO `course` VALUES ('2', '数据库', '数据库，简而言之可视为电子化的文件柜——存储电子文件的处所，用户可以对文件中的数据进行新增、截取、更新、删除等操作。\n所谓“数据库”是以一定方式储存在一起、能予多个用户共享、具有尽可能小的冗余度、与应用程序彼此独立的数据集合。', '[\"f7c5d1cb-c734-4935-bf70-02d8acad399e.jpg\"]', '1', '2019-05-14 21:17:03');
INSERT INTO `course` VALUES ('3', '前端', '前端', '[\"42afa7d2-0bf6-407e-856e-5213d5f585be.jpg\"]', '1', '2019-05-22 21:58:07');
INSERT INTO `course` VALUES ('4', '.NET', '.NET', '[\"1d20e48f-bf75-4ae1-93c6-79b06fe784f2.jpg\"]', '1', '2019-05-22 21:58:43');
INSERT INTO `course` VALUES ('5', '大数据', '大数据', '[\"bcb36118-4797-4be5-be2a-61c56bbe2b78.jpg\"]', '1', '2019-05-22 22:12:45');
INSERT INTO `course` VALUES ('6', '开发工具', '开发工具', '[\"5c797292-96a0-45d4-8228-addc017114f1.jpg\",\"1045d9d2-e116-44e7-9f48-81568545c1c0.jpg\"]', '1', '2019-05-23 23:03:28');

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
  `images` varchar(1000) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `createDateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of coursemodule
-- ----------------------------
INSERT INTO `coursemodule` VALUES ('1', '1', 'JAVA', '初级课程', 'JAVA初级', '[\"9547dd8d-5c3d-4e3a-ae94-8ea54003e734.jpg\"]', '1', '2019-05-14 21:18:59');
INSERT INTO `coursemodule` VALUES ('2', '2', '数据库', 'MSSQL', 'MSSQL', '[\"8921faad-08f0-4021-bf3f-d968e18eb750.jpg\"]', '1', '2019-05-14 21:19:45');
INSERT INTO `coursemodule` VALUES ('3', '1', 'JAVA', '高级课程', '高级课程', '[\"9bd68fdb-2145-4449-bcb1-2ec137020d7c.jpg\"]', '1', '2019-05-23 22:48:48');
INSERT INTO `coursemodule` VALUES ('4', '1', 'JAVA', '中级课程', '中级课程', '[\"8fc2352b-ef86-4ad6-9b14-aa5e9d170a59.jpg\"]', '1', '2019-05-23 22:58:07');
INSERT INTO `coursemodule` VALUES ('5', '2', '数据库', 'MYSQL', 'MYSQL', '[\"199d7e77-8171-4b22-8556-c4388f3a0ce6.jpg\"]', '1', '2019-05-23 23:00:07');
INSERT INTO `coursemodule` VALUES ('6', '2', '数据库', 'Redis', 'Redis', '[\"74a4b7af-7bc9-4e8d-b096-632d47e09ba8.jpg\",\"e8d8de8f-6757-424e-9ab9-c39723e8f882.jpg\"]', '1', '2019-05-23 23:01:58');
INSERT INTO `coursemodule` VALUES ('7', '3', '前端', 'css', 'css', '[\"67a418f2-d0b2-4574-bf4b-ab22504f6700.jpg\"]', '1', '2019-05-30 20:49:34');

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of evaluate
-- ----------------------------
INSERT INTO `evaluate` VALUES ('4', '1', '棒棒的', '2', '4', '1', '-1', '2019-03-25 22:37:24');
INSERT INTO `evaluate` VALUES ('5', '1', '赞', '3', '5', '2', '-1', '2019-03-25 22:38:21');
INSERT INTO `evaluate` VALUES ('6', '1', '很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位很到位', '5', '5', '3', '-1', '2019-03-25 22:38:41');
INSERT INTO `evaluate` VALUES ('7', '2', 'content5', '5', '5', '0', '1', '2019-06-02 21:19:04');
INSERT INTO `evaluate` VALUES ('8', '2', '驱蚊器无群驱蚊器无群驱蚊器无群驱蚊器无群', '4', '6', '0', '1', '2019-06-02 21:28:45');
INSERT INTO `evaluate` VALUES ('9', '2', 'getEvaluationListgetEvaluationListgetEvaluationList', '5', '6', '0', '1', '2019-06-02 21:38:19');
INSERT INTO `evaluate` VALUES ('10', '2', '棒棒的棒棒的棒棒的棒棒的棒棒的棒棒的棒棒的', '5', '6', '0', '1', '2019-06-02 21:47:02');
INSERT INTO `evaluate` VALUES ('11', '1', '棒棒的棒棒的棒棒的棒棒的棒棒的棒棒的', '4', '6', '0', '-1', '2019-06-02 21:49:58');
INSERT INTO `evaluate` VALUES ('12', '1', '1300000127213000001272130000012721300000127213000001272', '5', '27', '0', '-1', '2019-06-02 21:55:50');
INSERT INTO `evaluate` VALUES ('13', '1', '13000001273130000012731300000127313000001273', '5', '28', '0', '-1', '2019-06-03 22:08:58');
INSERT INTO `evaluate` VALUES ('14', '1', '15001112727150011127271500111272715001112727', '5', '7', '0', '1', '2019-06-03 22:10:13');
INSERT INTO `evaluate` VALUES ('15', '1', '428042804280428042804280', '2', '29', '0', '1', '2019-06-03 22:26:49');
INSERT INTO `evaluate` VALUES ('16', '2', '您觉得视频怎么样您觉得视频怎么样您觉得视频怎么样', '5', '29', '0', '1', '2019-06-04 20:59:36');
INSERT INTO `evaluate` VALUES ('17', '8', 'qwqwqwqw', '5', '22', '0', '1', '2019-07-07 22:07:49');
INSERT INTO `evaluate` VALUES ('18', '9', 'qweqweqwewqe', '5', '6', '0', '1', '2019-07-11 20:41:10');
INSERT INTO `evaluate` VALUES ('19', '9', 'very good, perfect, sound nice and very clear screen', '5', '22', '0', '1', '2019-07-11 20:43:22');
INSERT INTO `evaluate` VALUES ('20', '10', '息技术有限公司 出版物经营许可证 新出发京零字第海170131号', '5', '22', '0', '1', '2019-07-11 20:45:28');

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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of issue
-- ----------------------------
INSERT INTO `issue` VALUES ('1', '22', 'name', 'content', '4', '7', '1', '2019-03-27 22:16:15');
INSERT INTO `issue` VALUES ('2', '22', 'name', 'content', '4', '0', '1', '2019-03-28 21:15:11');
INSERT INTO `issue` VALUES ('11', '1', 'name', '超级赞，看到项目组里用这个，我这个新手完全摸不着头脑，看不懂。现在虽然还没看底层代码，但是对Quartz有了一个比较清晰的概念了，谢谢老师的点点滴滴多多多多多', '4', '25', '1', '2019-06-03 22:16:26');
INSERT INTO `issue` VALUES ('12', '1', 'name', 'content', '4', '2', '1', '2019-06-04 21:55:33');
INSERT INTO `issue` VALUES ('24', '1', '', 'qwqwqw', '29', '1', '1', '2019-06-05 22:42:58');
INSERT INTO `issue` VALUES ('25', '1', '', '55555', '29', '3', '1', '2019-06-05 22:44:27');
INSERT INTO `issue` VALUES ('26', '1', '', '，我这个新手完全', '29', '3', '1', '2019-06-08 20:56:20');
INSERT INTO `issue` VALUES ('27', '1', '', '超级赞，看到项目组里用这个，我这个新手完', '29', '2', '1', '2019-06-08 21:28:55');
INSERT INTO `issue` VALUES ('28', '1', '', '芭芭拉啦啦', '29', '3', '1', '2019-06-08 22:50:12');
INSERT INTO `issue` VALUES ('29', '1', '', '我这个我这个', '6', '1', '1', '2019-06-10 21:36:46');
INSERT INTO `issue` VALUES ('30', '1', '', '请赐教请赐教', '6', '1', '1', '2019-06-12 22:01:50');
INSERT INTO `issue` VALUES ('31', '2', '', 'JDK讲的再深入一点', '6', '1', '1', '2019-06-12 22:06:08');
INSERT INTO `issue` VALUES ('32', '2', '', '啪啪啊啊啊', '6', '1', '1', '2019-06-12 22:06:46');
INSERT INTO `issue` VALUES ('33', '8', '', 'qwqwqwqw', '22', '0', '1', '2019-07-07 22:08:02');
INSERT INTO `issue` VALUES ('34', '9', '', 'eeeewewe', '6', '0', '1', '2019-07-11 20:41:03');
INSERT INTO `issue` VALUES ('35', '10', '', '息技术有限公司 出版物经营许可证 新出发', '22', '0', '1', '2019-07-11 20:45:32');

-- ----------------------------
-- Table structure for material
-- ----------------------------
DROP TABLE IF EXISTS `material`;
CREATE TABLE `material` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('1', 'true1', 'content', '1', '1', '2019-03-30 22:49:48');
INSERT INTO `message` VALUES ('2', 'name2', 'content', '1', '1', '2019-03-30 22:50:24');
INSERT INTO `message` VALUES ('3', 'name3', 'content', '1', '1', '2019-03-30 22:51:21');
INSERT INTO `message` VALUES ('4', 'name4', 'content', '1', '1', '2019-03-30 22:53:36');
INSERT INTO `message` VALUES ('5', 'name5', 'content', '1', '1', '2019-03-30 22:55:18');
INSERT INTO `message` VALUES ('6', 'name6', 'content', '1', '1', '2019-03-30 23:09:34');
INSERT INTO `message` VALUES ('7', 'name7', 'content', '1', '1', '2019-03-30 23:09:53');
INSERT INTO `message` VALUES ('8', 'name8', 'content', '1', '1', '2019-03-30 23:10:24');
INSERT INTO `message` VALUES ('9', 'name9', 'content', '1', '1', '2019-03-30 23:11:13');
INSERT INTO `message` VALUES ('10', 'name10', 'content', '1', '1', '2019-03-30 23:11:35');
INSERT INTO `message` VALUES ('11', 'name11', 'content', '1', '1', '2019-03-30 23:19:30');
INSERT INTO `message` VALUES ('12', 'name12', 'content', '1', '1', '2019-03-30 23:23:09');
INSERT INTO `message` VALUES ('13', 'name13', 'content', '1', '1', '2019-03-30 23:23:25');
INSERT INTO `message` VALUES ('14', 'name14', 'content', '1', '1', '2019-03-30 23:23:41');

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
INSERT INTO `permission` VALUES ('1', 'THREEPERDAY', '每日免费观看3段视频', '1');
INSERT INTO `permission` VALUES ('2', 'WATCHINGNOLIMITED', '无限制观看视频', '1');
INSERT INTO `permission` VALUES ('3', 'DOWNLOADINGNOLIMITED', '无限制下载任何资料', '1');
INSERT INTO `permission` VALUES ('4', 'FASTFORWARD', '视频快进播放', '1');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rolepermission_relationship
-- ----------------------------
INSERT INTO `rolepermission_relationship` VALUES ('1', '1', '1', '1', '2019-06-17 21:49:20');
INSERT INTO `rolepermission_relationship` VALUES ('2', '2', '2', '1', '2019-06-17 21:49:40');
INSERT INTO `rolepermission_relationship` VALUES ('3', '2', '3', '1', '2019-06-17 21:49:46');
INSERT INTO `rolepermission_relationship` VALUES ('4', '2', '4', '1', '2019-06-17 21:50:18');
INSERT INTO `rolepermission_relationship` VALUES ('5', '2', '5', '1', '2019-06-17 21:50:22');
INSERT INTO `rolepermission_relationship` VALUES ('6', '2', '6', '1', '2019-06-17 21:50:27');

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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uploadfile
-- ----------------------------
INSERT INTO `uploadfile` VALUES ('1', '981ffe53-8749-4b34-866e-269a38833b91.jpg', 'JAVA.jpg', '36549', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/981ffe53-8749-4b34-866e-269a38833b91.jpg', '1', '2019-05-14 21:15:29', '2019-05-14 21:15:29');
INSERT INTO `uploadfile` VALUES ('2', 'f7c5d1cb-c734-4935-bf70-02d8acad399e.jpg', 'Database.jpg', '129551', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/f7c5d1cb-c734-4935-bf70-02d8acad399e.jpg', '1', '2019-05-14 21:16:34', '2019-05-14 21:16:34');
INSERT INTO `uploadfile` VALUES ('3', '9547dd8d-5c3d-4e3a-ae94-8ea54003e734.jpg', 'javalevel.jpg', '14360', 'COURSE_MODULE_DETAILS', 'D:/peoject/chengxuxiaoba/files/COURSE_MODULE_DETAILS/9547dd8d-5c3d-4e3a-ae94-8ea54003e734.jpg', '1', '2019-05-14 21:18:42', '2019-05-14 21:18:42');
INSERT INTO `uploadfile` VALUES ('4', '8921faad-08f0-4021-bf3f-d968e18eb750.jpg', 'MSSQL.jpg', '25208', 'COURSE_MODULE_DETAILS', 'D:/peoject/chengxuxiaoba/files/COURSE_MODULE_DETAILS/8921faad-08f0-4021-bf3f-d968e18eb750.jpg', '1', '2019-05-14 21:19:41', '2019-05-14 21:19:41');
INSERT INTO `uploadfile` VALUES ('5', '5575c293-cca3-4418-84b4-5e0a9c8f5618.mp4', 'java入门.mp4', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/5575c293-cca3-4418-84b4-5e0a9c8f5618.mp4', '1', '2019-05-14 21:25:20', '2019-05-14 21:25:20');
INSERT INTO `uploadfile` VALUES ('6', '08836f45-b53e-47e4-b613-62e30a3dc061.txt', '代码01.txt', '0', 'VIDEO_ATTACHMENTS', 'D:/peoject/chengxuxiaoba/files/VIDEO_ATTACHMENTS/08836f45-b53e-47e4-b613-62e30a3dc061.txt', '1', '2019-05-14 21:25:31', '2019-05-14 21:25:31');
INSERT INTO `uploadfile` VALUES ('7', '617b3cc3-75ff-4a10-88b5-22657330744f.txt', '讲义01.txt', '0', 'VIDEO_ATTACHMENTS', 'D:/peoject/chengxuxiaoba/files/VIDEO_ATTACHMENTS/617b3cc3-75ff-4a10-88b5-22657330744f.txt', '1', '2019-05-14 21:25:34', '2019-05-14 21:25:34');
INSERT INTO `uploadfile` VALUES ('8', '42afa7d2-0bf6-407e-856e-5213d5f585be.jpg', 'front.jpg', '9823', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/42afa7d2-0bf6-407e-856e-5213d5f585be.jpg', '1', '2019-05-22 21:58:05', '2019-05-22 21:58:05');
INSERT INTO `uploadfile` VALUES ('9', '1d20e48f-bf75-4ae1-93c6-79b06fe784f2.jpg', 'NET.jpg', '19487', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/1d20e48f-bf75-4ae1-93c6-79b06fe784f2.jpg', '1', '2019-05-22 21:58:37', '2019-05-22 21:58:37');
INSERT INTO `uploadfile` VALUES ('10', 'bcb36118-4797-4be5-be2a-61c56bbe2b78.jpg', 'bigdata3.jpg', '71400', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/bcb36118-4797-4be5-be2a-61c56bbe2b78.jpg', '1', '2019-05-22 22:12:44', '2019-05-22 22:12:44');
INSERT INTO `uploadfile` VALUES ('11', 'cbfbff45-3f8c-4e15-9bea-606e55f6c109.jpg', 'JAVA.jpg', '36549', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/cbfbff45-3f8c-4e15-9bea-606e55f6c109.jpg', '1', '2019-05-23 22:46:31', '2019-05-23 22:46:31');
INSERT INTO `uploadfile` VALUES ('12', 'd7457cd6-6d0b-466f-af1c-c87978bb4f49.jpg', 'JAVA.jpg', '36549', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/d7457cd6-6d0b-466f-af1c-c87978bb4f49.jpg', '1', '2019-05-23 22:46:52', '2019-05-23 22:46:52');
INSERT INTO `uploadfile` VALUES ('13', '3ff3d5d9-b433-4b7f-ab37-d91ee27bdb46.jpg', 'JAVA.jpg', '36549', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/3ff3d5d9-b433-4b7f-ab37-d91ee27bdb46.jpg', '1', '2019-05-23 22:48:11', '2019-05-23 22:48:11');
INSERT INTO `uploadfile` VALUES ('14', '22884592-adb2-45cc-8ed8-cf622ed86a69.jpg', 'JAVA.jpg', '36549', 'COURSE_MODULE_DETAILS', 'D:/peoject/chengxuxiaoba/files/COURSE_MODULE_DETAILS/22884592-adb2-45cc-8ed8-cf622ed86a69.jpg', '-1', '2019-05-23 22:48:44', '2019-05-23 22:57:29');
INSERT INTO `uploadfile` VALUES ('15', '9bd68fdb-2145-4449-bcb1-2ec137020d7c.jpg', 'JAVA.jpg', '36549', 'COURSE_MODULE_DETAILS', 'D:/peoject/chengxuxiaoba/files/COURSE_MODULE_DETAILS/9bd68fdb-2145-4449-bcb1-2ec137020d7c.jpg', '1', '2019-05-23 22:57:36', '2019-05-23 22:57:36');
INSERT INTO `uploadfile` VALUES ('16', 'f13fb83f-3e39-43a0-97ea-b56d0660189d.jpg', 'JAVA.jpg', '36549', 'COURSE_MODULE_DETAILS', 'D:/peoject/chengxuxiaoba/files/COURSE_MODULE_DETAILS/f13fb83f-3e39-43a0-97ea-b56d0660189d.jpg', '-1', '2019-05-23 22:58:05', '2019-05-23 22:58:33');
INSERT INTO `uploadfile` VALUES ('17', '2f8f3f5c-6d74-4dc4-ab6a-590630110108.jpg', 'MSSQL.jpg', '25208', 'COURSE_MODULE_DETAILS', 'D:/peoject/chengxuxiaoba/files/COURSE_MODULE_DETAILS/2f8f3f5c-6d74-4dc4-ab6a-590630110108.jpg', '-1', '2019-05-23 22:58:39', '2019-05-23 22:59:26');
INSERT INTO `uploadfile` VALUES ('18', '91b8f9af-42c9-494c-9e15-18f4f9409d21.jpg', 'MSSQL.jpg', '25208', 'COURSE_MODULE_DETAILS', 'D:/peoject/chengxuxiaoba/files/COURSE_MODULE_DETAILS/91b8f9af-42c9-494c-9e15-18f4f9409d21.jpg', '-1', '2019-05-23 22:59:28', '2019-05-23 22:59:34');
INSERT INTO `uploadfile` VALUES ('19', '8fc2352b-ef86-4ad6-9b14-aa5e9d170a59.jpg', 'JAVA.jpg', '36549', 'COURSE_MODULE_DETAILS', 'D:/peoject/chengxuxiaoba/files/COURSE_MODULE_DETAILS/8fc2352b-ef86-4ad6-9b14-aa5e9d170a59.jpg', '1', '2019-05-23 22:59:37', '2019-05-23 22:59:37');
INSERT INTO `uploadfile` VALUES ('20', '199d7e77-8171-4b22-8556-c4388f3a0ce6.jpg', 'MSSQL.jpg', '25208', 'COURSE_MODULE_DETAILS', 'D:/peoject/chengxuxiaoba/files/COURSE_MODULE_DETAILS/199d7e77-8171-4b22-8556-c4388f3a0ce6.jpg', '1', '2019-05-23 23:00:04', '2019-05-23 23:00:04');
INSERT INTO `uploadfile` VALUES ('21', 'aabad42d-0faa-4ff7-a8ba-5649c927893d.jpg', 'MSSQL.jpg', '25208', 'COURSE_MODULE_DETAILS', 'D:/peoject/chengxuxiaoba/files/COURSE_MODULE_DETAILS/aabad42d-0faa-4ff7-a8ba-5649c927893d.jpg', '1', '2019-05-23 23:00:41', '2019-05-23 23:00:41');
INSERT INTO `uploadfile` VALUES ('22', '4c3251e7-3d25-482c-b71f-a67f78cf6fa2.jpg', 'MSSQL.jpg', '25208', 'COURSE_MODULE_DETAILS', 'D:/peoject/chengxuxiaoba/files/COURSE_MODULE_DETAILS/4c3251e7-3d25-482c-b71f-a67f78cf6fa2.jpg', '1', '2019-05-23 23:01:32', '2019-05-23 23:01:32');
INSERT INTO `uploadfile` VALUES ('23', '74a4b7af-7bc9-4e8d-b096-632d47e09ba8.jpg', 'MSSQL.jpg', '25208', 'COURSE_MODULE_DETAILS', 'D:/peoject/chengxuxiaoba/files/COURSE_MODULE_DETAILS/74a4b7af-7bc9-4e8d-b096-632d47e09ba8.jpg', '1', '2019-05-23 23:01:56', '2019-05-23 23:01:56');
INSERT INTO `uploadfile` VALUES ('24', 'e8d8de8f-6757-424e-9ab9-c39723e8f882.jpg', 'Database.jpg', '129551', 'COURSE_MODULE_DETAILS', 'D:/peoject/chengxuxiaoba/files/COURSE_MODULE_DETAILS/e8d8de8f-6757-424e-9ab9-c39723e8f882.jpg', '1', '2019-05-23 23:02:10', '2019-05-23 23:02:10');
INSERT INTO `uploadfile` VALUES ('25', 'ba229f22-a609-455b-af08-b60fa65accfb.jpg', 'javalevel.jpg', '14360', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/ba229f22-a609-455b-af08-b60fa65accfb.jpg', '1', '2019-05-23 23:02:49', '2019-05-23 23:02:49');
INSERT INTO `uploadfile` VALUES ('26', '5c797292-96a0-45d4-8228-addc017114f1.jpg', 'javalevel.jpg', '14360', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/5c797292-96a0-45d4-8228-addc017114f1.jpg', '1', '2019-05-23 23:03:23', '2019-05-23 23:03:23');
INSERT INTO `uploadfile` VALUES ('27', '1045d9d2-e116-44e7-9f48-81568545c1c0.jpg', 'bigdata3.jpg', '71400', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/1045d9d2-e116-44e7-9f48-81568545c1c0.jpg', '1', '2019-05-23 23:03:39', '2019-05-23 23:03:39');
INSERT INTO `uploadfile` VALUES ('28', '83edcaa6-394c-4098-9769-763bd442ce14.mp4', '8834d006-767a-4b29-888c-2229b8e34a8d.mp4', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/83edcaa6-394c-4098-9769-763bd442ce14.mp4', '1', '2019-05-27 21:54:24', '2019-05-27 21:54:24');
INSERT INTO `uploadfile` VALUES ('29', '5572d27a-da5f-4236-8b39-4290962d8994.mp4', '8834d006-767a-4b29-888c-2229b8e34a8d.mp4', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/5572d27a-da5f-4236-8b39-4290962d8994.mp4', '1', '2019-05-28 21:25:01', '2019-05-28 21:25:01');
INSERT INTO `uploadfile` VALUES ('30', 'aefa8e93-44c9-4e58-b7ad-89cad81a4a8e.mp4', '9682b383-6f9f-4ef5-a00d-dceccef888f5.mp4', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/aefa8e93-44c9-4e58-b7ad-89cad81a4a8e.mp4', '1', '2019-05-28 21:35:54', '2019-05-28 21:35:54');
INSERT INTO `uploadfile` VALUES ('31', '4d9fd5a9-b9f4-4ad4-86aa-b7a46d8e5a9b.mp4', '8834d006-767a-4b29-888c-2229b8e34a8d.mp4', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/4d9fd5a9-b9f4-4ad4-86aa-b7a46d8e5a9b.mp4', '1', '2019-05-28 21:36:32', '2019-05-28 21:36:32');
INSERT INTO `uploadfile` VALUES ('32', '65b5594d-e01d-4d8e-8bfa-bb0a4b1b370d.mp4', '9682b383-6f9f-4ef5-a00d-dceccef888f5.mp4', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/65b5594d-e01d-4d8e-8bfa-bb0a4b1b370d.mp4', '1', '2019-05-28 21:38:42', '2019-05-28 21:38:42');
INSERT INTO `uploadfile` VALUES ('33', '9ff61701-2f1b-470d-844b-938e23a06186.mp4', '9682b383-6f9f-4ef5-a00d-dceccef888f5.mp4', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/9ff61701-2f1b-470d-844b-938e23a06186.mp4', '1', '2019-05-28 21:40:08', '2019-05-28 21:40:08');
INSERT INTO `uploadfile` VALUES ('34', '67a418f2-d0b2-4574-bf4b-ab22504f6700.jpg', 'front.jpg', '9823', 'COURSE_MODULE_DETAILS', 'D:/peoject/chengxuxiaoba/files/COURSE_MODULE_DETAILS/67a418f2-d0b2-4574-bf4b-ab22504f6700.jpg', '1', '2019-05-30 20:49:30', '2019-05-30 20:49:30');
INSERT INTO `uploadfile` VALUES ('35', 'dc4679d0-03ab-437a-8505-63aaeaa2906c.jpg', 'javalevel.jpg', '14360', 'VIDEO_ATTACHMENTS', 'D:/peoject/chengxuxiaoba/files/VIDEO_ATTACHMENTS/dc4679d0-03ab-437a-8505-63aaeaa2906c.jpg', '1', '2019-05-30 20:58:15', '2019-05-30 20:58:15');
INSERT INTO `uploadfile` VALUES ('36', '6ad98496-7f71-4c03-9b85-64a88a209b68.mp4', '9682b383-6f9f-4ef5-a00d-dceccef888f5.mp4', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/6ad98496-7f71-4c03-9b85-64a88a209b68.mp4', '1', '2019-05-30 21:03:00', '2019-05-30 21:03:00');
INSERT INTO `uploadfile` VALUES ('37', 'f50336cd-f7c0-4d5c-9f5e-53a1083c7bab.mp4', '8834d006-767a-4b29-888c-2229b8e34a8d.mp4', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/f50336cd-f7c0-4d5c-9f5e-53a1083c7bab.mp4', '1', '2019-07-07 21:57:17', '2019-07-07 21:57:17');
INSERT INTO `uploadfile` VALUES ('38', '79ff559e-2af6-4d3e-ac5b-fa05cbd331b0.mp4', '45372974-0f68-4573-88d1-c9fde50ca86c.mp4', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/79ff559e-2af6-4d3e-ac5b-fa05cbd331b0.mp4', '1', '2019-07-11 20:35:49', '2019-07-11 20:35:49');
INSERT INTO `uploadfile` VALUES ('39', '161a1168-e055-4fbb-8c72-d03e0b573fd7.mp4', '9682b383-6f9f-4ef5-a00d-dceccef888f5.mp4', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/161a1168-e055-4fbb-8c72-d03e0b573fd7.mp4', '1', '2019-07-11 20:44:01', '2019-07-11 20:44:01');
INSERT INTO `uploadfile` VALUES ('40', 'bf60d508-72e9-43a4-9692-5b8def3922a0.png', 'index.png', '31075', 'VIDEO_ATTACHMENTS', 'D:/peoject/chengxuxiaoba/files/VIDEO_ATTACHMENTS/bf60d508-72e9-43a4-9692-5b8def3922a0.png', '1', '2019-07-11 20:44:15', '2019-07-11 20:44:15');
INSERT INTO `uploadfile` VALUES ('41', '74322f42-0e22-401c-9f11-8aeaca8a3d7f.pdf', '个人所得税纳税清单.pdf', '12016', 'VIDEO_ATTACHMENTS', 'D:/peoject/chengxuxiaoba/files/VIDEO_ATTACHMENTS/74322f42-0e22-401c-9f11-8aeaca8a3d7f.pdf', '1', '2019-07-11 20:44:21', '2019-07-11 20:44:21');
INSERT INTO `uploadfile` VALUES ('42', 'a52883ab-7866-4f9f-be4e-340bac632b0e.mp4', '161225183.mp4', '15970881', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/a52883ab-7866-4f9f-be4e-340bac632b0e.mp4', '-1', '2019-07-21 13:02:55', '2019-07-21 13:31:42');
INSERT INTO `uploadfile` VALUES ('43', 'ee291a4a-5de5-4e55-ad8c-5ef586002fd1.mp4', '8834d006-767a-4b29-888c-2229b8e34a8d.mp4', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/ee291a4a-5de5-4e55-ad8c-5ef586002fd1.mp4', '1', '2019-07-21 13:04:26', '2019-07-21 13:04:26');
INSERT INTO `uploadfile` VALUES ('44', '30b9c04b-ca61-490b-98b8-33f3413698e8.mp4', '8834d006-767a-4b29-888c-2229b8e34a8d.mp4', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/30b9c04b-ca61-490b-98b8-33f3413698e8.mp4', '1', '2019-07-21 13:07:25', '2019-07-21 13:07:25');
INSERT INTO `uploadfile` VALUES ('45', '0aa37b35-eb57-47cc-a9d7-7f53df193efb.mp4', '8834d006-767a-4b29-888c-2229b8e34a8d.mp4', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/0aa37b35-eb57-47cc-a9d7-7f53df193efb.mp4', '1', '2019-07-21 13:08:05', '2019-07-21 13:08:05');
INSERT INTO `uploadfile` VALUES ('46', 'd39eed67-730e-4ef3-8392-78eb39c5b534.mp4', '8834d006-767a-4b29-888c-2229b8e34a8d.mp4', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/d39eed67-730e-4ef3-8392-78eb39c5b534.mp4', '1', '2019-07-21 13:10:05', '2019-07-21 13:10:05');
INSERT INTO `uploadfile` VALUES ('47', '3da8485a-d478-4731-9d38-06f5c790b091.mp4', '9682b383-6f9f-4ef5-a00d-dceccef888f5.mp4', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/3da8485a-d478-4731-9d38-06f5c790b091.mp4', '1', '2019-07-21 13:11:37', '2019-07-21 13:11:37');
INSERT INTO `uploadfile` VALUES ('48', '0c95b90a-4905-4e0f-90a0-7f4adc451b68.mp4', '9682b383-6f9f-4ef5-a00d-dceccef888f5.mp4', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/0c95b90a-4905-4e0f-90a0-7f4adc451b68.mp4', '1', '2019-07-21 13:14:14', '2019-07-21 13:14:14');
INSERT INTO `uploadfile` VALUES ('49', '689b497d-9633-4cbb-bf1e-702d3774fefc.mp4', '9682b383-6f9f-4ef5-a00d-dceccef888f5.mp4', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/689b497d-9633-4cbb-bf1e-702d3774fefc.mp4', '1', '2019-07-21 13:16:07', '2019-07-21 13:16:07');
INSERT INTO `uploadfile` VALUES ('50', 'e8ee2cb4-60bc-4271-bb83-21bb2702742c.pdf', '个人所得税纳税清单201401201412.pdf', '5520', 'VIDEO_ATTACHMENTS', 'D:/peoject/chengxuxiaoba/files/VIDEO_ATTACHMENTS/e8ee2cb4-60bc-4271-bb83-21bb2702742c.pdf', '1', '2019-07-21 13:17:03', '2019-07-21 13:17:03');
INSERT INTO `uploadfile` VALUES ('51', 'ded4349c-65e7-4456-ac24-0ea8be9d5d8b.mp4', '8834d006-767a-4b29-888c-2229b8e34a8d.mp4', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/ded4349c-65e7-4456-ac24-0ea8be9d5d8b.mp4', '1', '2019-07-21 13:20:39', '2019-07-21 13:20:39');
INSERT INTO `uploadfile` VALUES ('52', '9e8d5954-6894-4952-a0fd-1d1ddf726e65.mp4', 'c7ab9946-a3e9-4cee-ad34-4756a71bbbdc.mp4', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/9e8d5954-6894-4952-a0fd-1d1ddf726e65.mp4', '1', '2019-07-21 13:22:18', '2019-07-21 13:22:18');
INSERT INTO `uploadfile` VALUES ('53', '06eb55bc-5676-4a9b-b822-64d6d1e7beb8.jpg', 'front.jpg', '9823', 'VIDEO_ATTACHMENTS', 'D:/peoject/chengxuxiaoba/files/VIDEO_ATTACHMENTS/06eb55bc-5676-4a9b-b822-64d6d1e7beb8.jpg', '1', '2019-07-21 13:22:26', '2019-07-21 13:22:26');
INSERT INTO `uploadfile` VALUES ('54', '9fac25c2-a056-4e5f-9b30-f306dc455eb1.mp4', '161225183.mp4', '15970881', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/9fac25c2-a056-4e5f-9b30-f306dc455eb1.mp4', '1', '2019-07-21 13:26:10', '2019-07-21 13:26:10');
INSERT INTO `uploadfile` VALUES ('55', 'b66c9043-2f68-4399-b937-f2153fbaa9a3.mp4', 'f50336cd-f7c0-4d5c-9f5e-53a1083c7bab.mp4', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/b66c9043-2f68-4399-b937-f2153fbaa9a3.mp4', '1', '2019-07-21 13:29:46', '2019-07-21 13:29:46');
INSERT INTO `uploadfile` VALUES ('56', '1d41b412-18ae-4f3a-87da-9fd8618004ab.mp4', '3da8485a-d478-4731-9d38-06f5c790b091.mp4', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/1d41b412-18ae-4f3a-87da-9fd8618004ab.mp4', '1', '2019-07-21 13:30:12', '2019-07-21 13:30:12');
INSERT INTO `uploadfile` VALUES ('57', 'c9597a4a-5d63-4fcb-b706-2d79c718b249.mp4', '0aa37b35-eb57-47cc-a9d7-7f53df193efb.mp4', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/c9597a4a-5d63-4fcb-b706-2d79c718b249.mp4', '-1', '2019-07-21 13:31:45', '2019-07-21 13:32:15');
INSERT INTO `uploadfile` VALUES ('58', '536d99e6-cd3b-4dc5-bc33-d0aaa5b52770.mp4', '161225183.mp4', '15970881', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/536d99e6-cd3b-4dc5-bc33-d0aaa5b52770.mp4', '-1', '2019-07-21 13:32:20', '2019-07-21 13:33:00');
INSERT INTO `uploadfile` VALUES ('59', 'aaae923a-5ed5-4b23-83a9-b0a6f2226a53.mp4', 'java入门.mp4', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/aaae923a-5ed5-4b23-83a9-b0a6f2226a53.mp4', '1', '2019-07-21 13:33:03', '2019-07-21 13:33:03');

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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of validationcode
-- ----------------------------
INSERT INTO `validationcode` VALUES ('15', 'register', '15001112623', '4205', '2019-03-25 22:21:07', '2019-03-25 21:51:07', '\0');
INSERT INTO `validationcode` VALUES ('16', 'forgetPassword', '15001112623', '0420', '2019-03-25 22:22:04', '2019-03-25 21:52:04', '\0');
INSERT INTO `validationcode` VALUES ('17', 'forgetPassword', '15001112623', '4358', '2019-04-01 23:12:24', '2019-04-01 22:42:24', '');
INSERT INTO `validationcode` VALUES ('18', 'register', '15001112627', '5593', '2019-04-02 22:04:57', '2019-04-02 21:34:57', '');
INSERT INTO `validationcode` VALUES ('19', 'forgetPassword', '15001112623', '3557', '2019-04-02 22:17:53', '2019-04-02 21:47:53', '');
INSERT INTO `validationcode` VALUES ('20', 'register', '15001112627', '9818', '2019-04-02 23:22:18', '2019-04-02 22:52:18', '');
INSERT INTO `validationcode` VALUES ('21', 'register', '15001112627', '3249', '2019-04-03 00:18:04', '2019-04-02 23:48:04', '');
INSERT INTO `validationcode` VALUES ('22', 'register', '15001112627', '3319', '2019-04-03 21:50:30', '2019-04-03 21:20:30', '');
INSERT INTO `validationcode` VALUES ('23', ' ', '15001112627', '5995', '2019-04-03 21:50:30', '2019-04-03 21:20:30', '');
INSERT INTO `validationcode` VALUES ('24', 'forgetPassword', '15001112623', '3582', '2019-04-03 21:52:22', '2019-04-03 21:22:22', '');
INSERT INTO `validationcode` VALUES ('25', 'register', '15001112627', '0045', '2019-04-03 22:33:06', '2019-04-03 22:03:06', '');
INSERT INTO `validationcode` VALUES ('26', 'register', '15001112627', '6430', '2019-04-03 23:08:32', '2019-04-03 22:38:32', '');
INSERT INTO `validationcode` VALUES ('27', 'register', '15001112627', '8086', '2019-04-03 23:40:53', '2019-04-03 23:10:53', '');
INSERT INTO `validationcode` VALUES ('28', 'register', '15001112527', '9128', '2019-04-04 00:10:39', '2019-04-03 23:40:39', '');
INSERT INTO `validationcode` VALUES ('29', 'register', '15001112627', '5965', '2019-04-04 00:14:16', '2019-04-03 23:44:16', '');
INSERT INTO `validationcode` VALUES ('30', 'register', '15001112323', '9769', '2019-04-04 00:18:03', '2019-04-03 23:48:03', '');
INSERT INTO `validationcode` VALUES ('31', 'register', '15001112627', '2955', '2019-04-06 14:50:35', '2019-04-06 14:20:35', '');
INSERT INTO `validationcode` VALUES ('32', 'register', '15001112627', '2249', '2019-04-06 19:45:16', '2019-04-06 19:15:16', '');
INSERT INTO `validationcode` VALUES ('33', 'register', '15001112628', '1879', '2019-04-06 19:48:32', '2019-04-06 19:18:32', '');
INSERT INTO `validationcode` VALUES ('34', 'register', '15001112627', '7496', '2019-04-06 20:16:49', '2019-04-06 19:46:49', '\0');
INSERT INTO `validationcode` VALUES ('35', 'register', '15001112727', '8385', '2019-04-06 20:37:12', '2019-04-06 20:07:12', '\0');
INSERT INTO `validationcode` VALUES ('36', 'register', '15001112620', '6933', '2019-04-06 21:47:08', '2019-04-06 21:17:08', '\0');
INSERT INTO `validationcode` VALUES ('37', 'register', '15001112777', '1630', '2019-04-06 22:23:15', '2019-04-06 21:53:15', '\0');
INSERT INTO `validationcode` VALUES ('38', 'register', '15001112625', '1087', '2019-04-07 00:23:43', '2019-04-06 23:53:43', '\0');
INSERT INTO `validationcode` VALUES ('39', 'forgetPassword', '15001112627', '8706', '2019-04-07 00:45:41', '2019-04-07 00:15:41', '\0');
INSERT INTO `validationcode` VALUES ('40', 'forgetPassword', '15001112627', '4963', '2019-04-07 01:00:26', '2019-04-07 00:30:26', '\0');
INSERT INTO `validationcode` VALUES ('41', 'forgetPassword', '15001112627', '7489', '2019-04-07 01:02:59', '2019-04-07 00:32:59', '\0');
INSERT INTO `validationcode` VALUES ('42', 'forgetPassword', '15001112627', '2892', '2019-04-07 01:07:59', '2019-04-07 00:37:59', '\0');
INSERT INTO `validationcode` VALUES ('43', 'forgetPassword', '15001112627', '8402', '2019-04-07 01:21:47', '2019-04-07 00:51:47', '\0');
INSERT INTO `validationcode` VALUES ('44', 'forgetPassword', '15001112627', '9535', '2019-04-07 01:35:55', '2019-04-07 01:05:55', '\0');
INSERT INTO `validationcode` VALUES ('45', 'forgetPassword', '15001112627', '5876', '2019-04-08 21:41:34', '2019-04-08 21:11:34', '\0');
INSERT INTO `validationcode` VALUES ('46', 'register', '15001112633', '2164', '2019-05-14 22:34:58', '2019-05-14 22:04:58', '\0');
INSERT INTO `validationcode` VALUES ('47', 'register', '13720004712', '5573', '2019-05-18 22:01:50', '2019-05-18 21:31:50', '\0');
INSERT INTO `validationcode` VALUES ('48', 'register', '13720004711', '3202', '2019-05-19 18:21:28', '2019-05-19 17:51:28', '\0');
INSERT INTO `validationcode` VALUES ('49', 'register', '13000001272', '2050', '2019-05-21 22:23:37', '2019-05-21 21:53:37', '\0');
INSERT INTO `validationcode` VALUES ('50', 'register', '13441112728', '4280', '2019-06-03 22:55:42', '2019-06-03 22:25:42', '\0');

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `courseModuleId` int(11) NOT NULL,
  `file` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES ('1', '1', '5575c293-cca3-4418-84b4-5e0a9c8f5618.mp4', 'HELLO JAVA', '[\"08836f45-b53e-47e4-b613-62e30a3dc061.txt\",\"617b3cc3-75ff-4a10-88b5-22657330744f.txt\"]', '120', 'JAVA初体验，环境讲解，用途等等', null, '237', '2', '-1', '2019-05-14 21:25:42');
INSERT INTO `video` VALUES ('2', '1', '83edcaa6-394c-4098-9769-763bd442ce14.mp4', 'JDK', '[]', '12', 'JDK (Java Development Kit)\nJDK 是整个Java的核心，包括了Java运行环境（Java Runtime Envirnment），一堆Java工具和Java基础的类库(rt.jar)。不论什么Java应用服务器实质都是内置了某个版本的JDK。因此掌握 JDK是学好Java的第一步。最主流的JDK是Sun公司发布的JDK，除了Sun之外，还有很多公司和组织都开发了自己的JDK，例如IBM公司开发的JDK，BEA公司的Jrocket，还有GNU组织开发的JDK等等。其中IBM的JDK包含的JVM（Java Virtual Machine）运行效率要比Sun JDK包含的JVM高出许多。而专门运行在x86平台的Jrocket在服务端运行效率也要比Sun JDK好很多。但不管怎么说，我们还是需要先把Sun JDK掌握好。', null, '44', '0', '1', '2019-05-27 21:55:09');
INSERT INTO `video` VALUES ('3', '1', '5572d27a-da5f-4236-8b39-4290962d8994.mp4', 'Tomcat', '[]', '12', 'Tomcat 服务器是一个免费的开放源代码的Web 应用服务器，Tomcat是Apache 软件基金会（Apache Software Foundation）的Jakarta 项目中的一个核心项目，它早期的名称为catalina，后来由Apache、Sun 和其他一些公司及个人共同开发而成，并更名为Tomcat。Tomcat 是一个小型的轻量级应用服务器，在中小型系统和并发访问用户不是很多的场合下被普遍使用，是开发和调试JSP 程序的首选，因为Tomcat 技术先进、性能稳定，成为目前比较流行的Web 应用服务器。Tomcat是应用（java）服务器，它只是一个servlet容器，是Apache的扩展，但它是独立运行的。目前最新的版本为Tomcat 8.0.24 Released。', null, '3', '0', '1', '2019-05-28 21:25:07');
INSERT INTO `video` VALUES ('4', '1', 'aefa8e93-44c9-4e58-b7ad-89cad81a4a8e.mp4', '面向对象和面向过程', '[]', '12', '面向对象和面向过程', null, '5', '0', '1', '2019-05-28 21:35:55');
INSERT INTO `video` VALUES ('5', '1', '4d9fd5a9-b9f4-4ad4-86aa-b7a46d8e5a9b.mp4', '继承', '[]', '11', '继承', null, '2', '0', '1', '2019-05-28 21:36:32');
INSERT INTO `video` VALUES ('6', '1', '65b5594d-e01d-4d8e-8bfa-bb0a4b1b370d.mp4', '集合', '[]', '9', '集合', null, '0', '0', '1', '2019-05-28 21:38:43');
INSERT INTO `video` VALUES ('7', '1', '9ff61701-2f1b-470d-844b-938e23a06186.mp4', '字符串', '[]', '6', '字符串', null, '10', '0', '1', '2019-05-28 21:40:13');
INSERT INTO `video` VALUES ('8', '3', 'f50336cd-f7c0-4d5c-9f5e-53a1083c7bab.mp4', '注解', '[]', '22', '注解', null, '5', '0', '1', '2019-07-07 21:57:23');
INSERT INTO `video` VALUES ('9', '7', '79ff559e-2af6-4d3e-ac5b-fa05cbd331b0.mp4', 'css + html5', '[]', '22', 'css + html5', null, '5', '0', '1', '2019-07-11 20:35:52');
INSERT INTO `video` VALUES ('10', '7', '161a1168-e055-4fbb-8c72-d03e0b573fd7.mp4', 'VUE + css3', '[\"bf60d508-72e9-43a4-9692-5b8def3922a0.png\",\"74322f42-0e22-401c-9f11-8aeaca8a3d7f.pdf\"]', '11', 'VUE + css3, 前端最轻量级框架，样式组件', null, '2', '0', '1', '2019-07-11 20:44:53');
INSERT INTO `video` VALUES ('11', '2', 'aaae923a-5ed5-4b23-83a9-b0a6f2226a53.mp4', '数据库安装', '[]', '12', '数据库安装', null, '11', '0', '1', '2019-07-21 13:03:03');
INSERT INTO `video` VALUES ('12', '2', '3da8485a-d478-4731-9d38-06f5c790b091.mp4', '基本语法', '[\"e8ee2cb4-60bc-4271-bb83-21bb2702742c.pdf\"]', '12', '12', null, '1', '0', '1', '2019-07-21 13:11:40');
INSERT INTO `video` VALUES ('13', '2', '9e8d5954-6894-4952-a0fd-1d1ddf726e65.mp4', '索引', '[\"06eb55bc-5676-4a9b-b822-64d6d1e7beb8.jpg\"]', '12', '索引', null, '0', '0', '1', '2019-07-21 13:22:42');

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of videowatchrecord
-- ----------------------------
INSERT INTO `videowatchrecord` VALUES ('1', '1', '1', '22', '2019-07-09 21:46:33');
INSERT INTO `videowatchrecord` VALUES ('2', '1', '2', '22', '2019-07-11 20:46:08');
INSERT INTO `videowatchrecord` VALUES ('3', '3', '8', '22', '2019-07-07 22:06:57');
INSERT INTO `videowatchrecord` VALUES ('4', '1', '2', '6', '2019-07-11 20:34:26');
INSERT INTO `videowatchrecord` VALUES ('5', '1', '1', '6', '2019-07-21 13:05:00');
INSERT INTO `videowatchrecord` VALUES ('6', '1', '4', '6', '2019-07-11 20:34:53');
INSERT INTO `videowatchrecord` VALUES ('7', '3', '8', '6', '2019-07-11 20:35:09');
INSERT INTO `videowatchrecord` VALUES ('8', '7', '9', '6', '2019-07-11 20:41:16');
INSERT INTO `videowatchrecord` VALUES ('9', '7', '9', '22', '2019-07-11 20:42:48');
INSERT INTO `videowatchrecord` VALUES ('10', '7', '10', '22', '2019-07-11 20:45:19');
INSERT INTO `videowatchrecord` VALUES ('11', '2', '11', '6', '2019-07-21 13:33:12');
INSERT INTO `videowatchrecord` VALUES ('12', '2', '12', '6', '2019-07-21 13:12:08');

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
