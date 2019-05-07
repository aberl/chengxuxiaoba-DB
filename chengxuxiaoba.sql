/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80015
Source Host           : localhost:3306
Source Database       : chengxuxiaoba

Target Server Type    : MYSQL
Target Server Version : 80015
File Encoding         : 65001

Date: 2019-05-07 22:20:29
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('4', 'AIAXUR', null, '15001112623', 'password2', null, null, '1', '2019-03-25 21:51:33', '2019-03-25 21:51:33');
INSERT INTO `account` VALUES ('5', 'AIAXUT', null, '15001112622', 'password2', '', '', '1', '2019-03-25 21:51:33', '2019-03-25 21:51:33');
INSERT INTO `account` VALUES ('6', 'PMHWAX', null, '15001112627', '111111', null, null, '1', '2019-04-06 19:54:41', '2019-04-06 19:54:41');
INSERT INTO `account` VALUES ('7', 'GNUDXR', null, '15001112727', '123456', null, null, '1', '2019-04-06 20:07:31', '2019-04-06 20:07:31');
INSERT INTO `account` VALUES ('17', 'HMTPTU', null, '15001112620', '123456', null, null, '1', '2019-04-06 21:41:29', '2019-04-06 21:41:29');
INSERT INTO `account` VALUES ('18', 'OXSUMZ', null, '15001112777', '121233', null, null, '1', '2019-04-06 21:53:37', '2019-04-06 21:53:37');
INSERT INTO `account` VALUES ('19', 'DYPSYG', null, '15001112625', '123456', null, null, '1', '2019-04-06 23:53:55', '2019-04-06 23:53:55');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of answer
-- ----------------------------
INSERT INTO `answer` VALUES ('1', '1', 'content', '4', '1', '2019-03-28 21:51:29');
INSERT INTO `answer` VALUES ('2', '1', 'content', '4', '1', '2019-03-28 21:51:34');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', 'JAVA', 'Java是一门面向对象编程语言，不仅吸收了C++语言的各种优点，还摒弃了C++里难以理解的多继承、指针等概念，因此Java语言具有功能强大和简单易用两个特征。Java语言作为静态面向对象编程语言的代表，极好地实现了面向对象理论，允许程序员以优雅的思维方式进行复杂的编程', '[\"35479fe2-e3af-4b9f-aa58-1f3bb4895901.jpg\"]', '1', '2019-05-04 14:54:32');
INSERT INTO `course` VALUES ('2', '数据库', '存储电子文件的处所，用户可以对文件中的数据进行新增、截取、更新、删除等操作。', '[\"ad7f449d-12e3-47e3-bdc6-be18650ff1cc.jpg\"]', '1', '2019-05-04 14:55:13');
INSERT INTO `course` VALUES ('3', '大数据', '“大数据”是需要新处理模式才能具有更强的决策力、洞察发现力和流程优化能力来适应海量、高增长率和多样化的信息资产', '[\"0e80e34e-674d-403e-b548-b654857a9cf0.jpg\"]', '1', '2019-05-04 14:55:37');
INSERT INTO `course` VALUES ('4', '前端', '创建Web页面或app等前端界面呈现给用户的过程，通过HTML，CSS及JavaScript以及衍生出来的各种技术、框架、解决方案，来实现互联网产品的用户界面交互 [1]  。它从网页制作演变而来，名称上有很明显的时代特征。在互联网的演化进程中，网页制作是Web1.0时代的产物，早期网站主要内容都是静态，以图片和文字为主，用户使用网站的行为也以浏览为主。随着互联网技术的发展和HTML5、CSS3的应用，现代网页更加美观，交互效果显著，功能更加强大', '[\"0444d560-9367-4203-9ddd-4c31650725ed.jpg\"]', '1', '2019-05-04 14:55:55');
INSERT INTO `course` VALUES ('5', '.NET', '.NET是 Microsoft XML Web services 平台。XML Web services 允许应用程序通过 Internet 进行通讯和共享数据，而不管所采用的是哪种操作系统、设备或编程语言。Microsoft .NET 平台提供创建 XML Web services 并将这些服务集成在一起之所需。对个人用户的好处是无缝的、吸引人的体验', '[\"a65577b8-2af1-4238-964c-92b23b397645.jpg\"]', '1', '2019-05-04 14:56:16');
INSERT INTO `course` VALUES ('6', '运维', '运维', '[\"4018ddd7-7b7a-4a2b-9fe6-ca380a46ed1c.mp4\"]', '1', '2019-05-04 21:02:36');
INSERT INTO `course` VALUES ('7', '333', '444', '[\"a285e3b0-6bb4-4593-b57d-090074b12e11.jpg\"]', '-1', '2019-05-05 21:44:32');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of coursemodule
-- ----------------------------
INSERT INTO `coursemodule` VALUES ('1', '1', 'JAVA', '初级课程', '初级课程', '[\"67767cb5-17d5-4c05-a6e3-31f0d8c14360.jpg\"]', '1', '2019-05-07 21:37:54');
INSERT INTO `coursemodule` VALUES ('2', '1', 'JAVA', '初级课程', '初级课程', '[\"a2096c1c-9e92-471b-8ae6-0071cc2dd32c.jpg\"]', '1', '2019-05-07 21:37:54');
INSERT INTO `coursemodule` VALUES ('3', '2', '数据库', 'MYSQL', 'MYSQL', '[\"8df9f2ab-600b-4f08-97c4-f2646409c1e0.jpg\"]', '1', '2019-05-07 21:37:54');
INSERT INTO `coursemodule` VALUES ('4', '2', '数据库', '终极教材', '终极教材', '[\"aee2d1e4-fcd2-4a52-ad73-e084c83c4ca4.jpg\"]', '1', '2019-05-07 22:00:28');
INSERT INTO `coursemodule` VALUES ('5', '1', 'JAVA', '终极教材终', '终极教材终极教材', '[\"4ad7d69a-5768-4d7b-983e-cf8363c67512.jpg\"]', '1', '2019-05-07 22:01:01');

-- ----------------------------
-- Table structure for evaluate
-- ----------------------------
DROP TABLE IF EXISTS `evaluate`;
CREATE TABLE `evaluate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `videoId` int(11) NOT NULL,
  `content` varchar(500) NOT NULL,
  `starts` int(11) NOT NULL,
  `accountId` int(20) NOT NULL,
  `praiseCount` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `createDateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of evaluate
-- ----------------------------
INSERT INTO `evaluate` VALUES ('4', '20', 'content', '5', '4', '0', '1', '2019-03-25 22:37:24');
INSERT INTO `evaluate` VALUES ('5', '20', 'content5', '5', '5', '0', '1', '2019-03-25 22:38:21');
INSERT INTO `evaluate` VALUES ('6', '22', 'content5', '5', '5', '0', '1', '2019-03-25 22:38:41');

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of issue
-- ----------------------------
INSERT INTO `issue` VALUES ('1', '22', 'name', 'content', '4', '2', '1', '2019-03-27 22:16:15');
INSERT INTO `issue` VALUES ('2', '22', 'name', 'content', '4', '0', '1', '2019-03-28 21:15:11');
INSERT INTO `issue` VALUES ('3', '22', 'name', 'content', '4', '0', '1', '2019-03-28 21:15:13');
INSERT INTO `issue` VALUES ('4', '22', 'name', 'content', '4', '0', '1', '2019-03-28 21:15:14');
INSERT INTO `issue` VALUES ('5', '22', 'name', 'content', '4', '0', '1', '2019-03-28 21:15:15');
INSERT INTO `issue` VALUES ('6', '22', 'name', 'content', '4', '0', '1', '2019-03-28 21:15:16');
INSERT INTO `issue` VALUES ('7', '22', 'name', 'content', '4', '0', '1', '2019-03-28 21:15:17');
INSERT INTO `issue` VALUES ('8', '22', 'name', 'content', '4', '0', '1', '2019-03-28 21:15:17');
INSERT INTO `issue` VALUES ('9', '22', 'name', 'content', '4', '0', '1', '2019-03-28 21:15:18');
INSERT INTO `issue` VALUES ('10', '22', 'name', 'content', '4', '0', '1', '2019-03-28 21:15:19');

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
-- Table structure for uploadfile
-- ----------------------------
DROP TABLE IF EXISTS `uploadfile`;
CREATE TABLE `uploadfile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `size` bigint(20) NOT NULL,
  `purpose` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `createDateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateDateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uploadfile
-- ----------------------------
INSERT INTO `uploadfile` VALUES ('1', '35479fe2-e3af-4b9f-aa58-1f3bb4895901.jpg', '36549', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/35479fe2-e3af-4b9f-aa58-1f3bb4895901.jpg', '1', '2019-05-04 14:54:31', '2019-05-04 14:54:31');
INSERT INTO `uploadfile` VALUES ('2', 'ad7f449d-12e3-47e3-bdc6-be18650ff1cc.jpg', '129551', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/ad7f449d-12e3-47e3-bdc6-be18650ff1cc.jpg', '1', '2019-05-04 14:55:11', '2019-05-04 14:55:11');
INSERT INTO `uploadfile` VALUES ('3', '0e80e34e-674d-403e-b548-b654857a9cf0.jpg', '71400', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/0e80e34e-674d-403e-b548-b654857a9cf0.jpg', '1', '2019-05-04 14:55:33', '2019-05-04 14:55:33');
INSERT INTO `uploadfile` VALUES ('4', '0444d560-9367-4203-9ddd-4c31650725ed.jpg', '19487', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/0444d560-9367-4203-9ddd-4c31650725ed.jpg', '1', '2019-05-04 14:55:54', '2019-05-04 14:55:54');
INSERT INTO `uploadfile` VALUES ('5', 'a65577b8-2af1-4238-964c-92b23b397645.jpg', '19487', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/a65577b8-2af1-4238-964c-92b23b397645.jpg', '1', '2019-05-04 14:56:15', '2019-05-04 14:56:15');
INSERT INTO `uploadfile` VALUES ('6', '335b0b25-79cc-48ea-a250-e17952c866ae.jpg', '9823', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/335b0b25-79cc-48ea-a250-e17952c866ae.jpg', '1', '2019-05-04 21:02:32', '2019-05-04 21:02:32');
INSERT INTO `uploadfile` VALUES ('7', '09b84618-1287-4f95-98f1-af4e926a280f.jpg', '19487', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/09b84618-1287-4f95-98f1-af4e926a280f.jpg', '-1', '2019-05-04 21:07:04', '2019-05-04 21:07:12');
INSERT INTO `uploadfile` VALUES ('8', 'a506dbb6-be54-465f-bcc4-de1a7f2847e9.jpg', '9823', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/a506dbb6-be54-465f-bcc4-de1a7f2847e9.jpg', '-1', '2019-05-04 21:07:09', '2019-05-04 21:07:14');
INSERT INTO `uploadfile` VALUES ('9', 'acedf7bf-cebd-4f54-829a-fee45e477b10.jpg', '19487', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/acedf7bf-cebd-4f54-829a-fee45e477b10.jpg', '1', '2019-05-04 21:09:25', '2019-05-04 21:09:25');
INSERT INTO `uploadfile` VALUES ('10', '7a85dba7-bb0b-4663-97f5-e327f1f3ae48.jpg', '19487', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/7a85dba7-bb0b-4663-97f5-e327f1f3ae48.jpg', '-1', '2019-05-04 21:09:52', '2019-05-04 21:10:00');
INSERT INTO `uploadfile` VALUES ('11', '58c191ac-65bb-4d11-81b5-5a2b6e008550.jpg', '19487', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/58c191ac-65bb-4d11-81b5-5a2b6e008550.jpg', '1', '2019-05-04 21:10:09', '2019-05-04 21:10:09');
INSERT INTO `uploadfile` VALUES ('12', '68e60354-3b9b-4946-a7d4-c4fbefdf137b.jpg', '9823', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/68e60354-3b9b-4946-a7d4-c4fbefdf137b.jpg', '1', '2019-05-04 21:11:05', '2019-05-04 21:11:05');
INSERT INTO `uploadfile` VALUES ('13', 'c144afaa-6d7b-45d1-81af-3292a5f2d5bf.jpg', '9823', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/c144afaa-6d7b-45d1-81af-3292a5f2d5bf.jpg', '-1', '2019-05-04 21:13:44', '2019-05-04 21:14:00');
INSERT INTO `uploadfile` VALUES ('14', '1d37259a-744f-4bb3-b824-e7e81e1f2114.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/1d37259a-744f-4bb3-b824-e7e81e1f2114.mp4', '1', '2019-05-04 21:49:34', '2019-05-04 21:49:34');
INSERT INTO `uploadfile` VALUES ('15', 'a4c2df4d-0e64-4528-8e42-3285dc510b4c.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/a4c2df4d-0e64-4528-8e42-3285dc510b4c.mp4', '1', '2019-05-04 21:49:45', '2019-05-04 21:49:45');
INSERT INTO `uploadfile` VALUES ('16', '5e5ad73b-1004-465a-9f3a-2e81fa9863dc.rmvb', '978859367', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/5e5ad73b-1004-465a-9f3a-2e81fa9863dc.rmvb', '1', '2019-05-04 21:50:05', '2019-05-04 21:50:05');
INSERT INTO `uploadfile` VALUES ('17', 'f1c1256d-5fec-4eaa-917c-ce2409a853a8.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/f1c1256d-5fec-4eaa-917c-ce2409a853a8.mp4', '1', '2019-05-04 21:52:23', '2019-05-04 21:52:23');
INSERT INTO `uploadfile` VALUES ('18', '21884279-0433-4876-960c-fd672084944d.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/21884279-0433-4876-960c-fd672084944d.mp4', '1', '2019-05-04 21:53:09', '2019-05-04 21:53:09');
INSERT INTO `uploadfile` VALUES ('19', '9f8ba8f2-990f-46de-a5ac-ce78f8ffbbfa.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/9f8ba8f2-990f-46de-a5ac-ce78f8ffbbfa.mp4', '1', '2019-05-04 22:03:54', '2019-05-04 22:03:54');
INSERT INTO `uploadfile` VALUES ('20', '4018ddd7-7b7a-4a2b-9fe6-ca380a46ed1c.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/4018ddd7-7b7a-4a2b-9fe6-ca380a46ed1c.mp4', '1', '2019-05-04 22:23:31', '2019-05-04 22:23:31');
INSERT INTO `uploadfile` VALUES ('21', 'f90f0557-6f04-4357-bc69-ed000ef87236.jpg', '19487', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/f90f0557-6f04-4357-bc69-ed000ef87236.jpg', '1', '2019-05-05 21:34:12', '2019-05-05 21:34:12');
INSERT INTO `uploadfile` VALUES ('22', 'd1976742-6321-44ce-b937-80365ec5a811.jpg', '9823', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/d1976742-6321-44ce-b937-80365ec5a811.jpg', '1', '2019-05-05 21:34:17', '2019-05-05 21:34:17');
INSERT INTO `uploadfile` VALUES ('23', '0005eb0f-2cdf-4b93-808d-62b347e6d987.jpg', '19487', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/0005eb0f-2cdf-4b93-808d-62b347e6d987.jpg', '-1', '2019-05-05 21:38:41', '2019-05-05 21:38:47');
INSERT INTO `uploadfile` VALUES ('24', 'ded712a0-62f6-4d4f-8f2d-f4177f790c20.jpg', '19487', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/ded712a0-62f6-4d4f-8f2d-f4177f790c20.jpg', '1', '2019-05-05 21:39:00', '2019-05-05 21:39:00');
INSERT INTO `uploadfile` VALUES ('25', '451fad1f-9ba9-481c-ae16-80188beb4e00.jpg', '71400', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/451fad1f-9ba9-481c-ae16-80188beb4e00.jpg', '1', '2019-05-05 21:39:03', '2019-05-05 21:39:03');
INSERT INTO `uploadfile` VALUES ('26', '624e8d2b-92b1-4293-af80-2953cf20f2c3.jpg', '95261', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/624e8d2b-92b1-4293-af80-2953cf20f2c3.jpg', '1', '2019-05-05 21:39:08', '2019-05-05 21:39:08');
INSERT INTO `uploadfile` VALUES ('27', 'f3257b78-6fd6-4210-96ef-fb038ed66e3f.jpg', '36549', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/f3257b78-6fd6-4210-96ef-fb038ed66e3f.jpg', '1', '2019-05-05 21:39:15', '2019-05-05 21:39:15');
INSERT INTO `uploadfile` VALUES ('28', '7633970a-374f-4106-b2c4-2ee8eb8365be.jpg', '129551', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/7633970a-374f-4106-b2c4-2ee8eb8365be.jpg', '1', '2019-05-05 21:39:23', '2019-05-05 21:39:23');
INSERT INTO `uploadfile` VALUES ('29', 'b72f624f-0171-48d5-811c-2ede0e03eb83.jpg', '19487', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/b72f624f-0171-48d5-811c-2ede0e03eb83.jpg', '-1', '2019-05-05 21:39:49', '2019-05-05 21:40:36');
INSERT INTO `uploadfile` VALUES ('30', '394dc7e8-fa17-432c-8b6c-f73c53ffd1d3.jpg', '9823', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/394dc7e8-fa17-432c-8b6c-f73c53ffd1d3.jpg', '-1', '2019-05-05 21:39:53', '2019-05-05 21:40:37');
INSERT INTO `uploadfile` VALUES ('31', '63dbb2c6-926c-4e2c-ad47-cb356e270b0d.jpg', '19487', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/63dbb2c6-926c-4e2c-ad47-cb356e270b0d.jpg', '1', '2019-05-05 21:40:43', '2019-05-05 21:40:43');
INSERT INTO `uploadfile` VALUES ('32', 'abb2d6dc-24c4-483e-af2d-a1f3448d65c0.jpg', '19487', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/abb2d6dc-24c4-483e-af2d-a1f3448d65c0.jpg', '1', '2019-05-05 21:42:34', '2019-05-05 21:42:34');
INSERT INTO `uploadfile` VALUES ('33', 'ce0e447d-2969-4f59-92fb-1cf43a6f2644.jpg', '9823', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/ce0e447d-2969-4f59-92fb-1cf43a6f2644.jpg', '1', '2019-05-05 21:42:36', '2019-05-05 21:42:36');
INSERT INTO `uploadfile` VALUES ('34', '9f5659da-a60e-4cbe-97f2-172254b37fcc.jpg', '71400', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/9f5659da-a60e-4cbe-97f2-172254b37fcc.jpg', '1', '2019-05-05 21:42:39', '2019-05-05 21:42:39');
INSERT INTO `uploadfile` VALUES ('35', 'a285e3b0-6bb4-4593-b57d-090074b12e11.jpg', '19487', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/a285e3b0-6bb4-4593-b57d-090074b12e11.jpg', '1', '2019-05-05 21:44:30', '2019-05-05 21:44:30');
INSERT INTO `uploadfile` VALUES ('36', 'f9c2a7ef-2183-442a-9aa1-01289a224bb7.jpg', '19487', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/f9c2a7ef-2183-442a-9aa1-01289a224bb7.jpg', '1', '2019-05-05 21:48:50', '2019-05-05 21:48:50');
INSERT INTO `uploadfile` VALUES ('37', '67767cb5-17d5-4c05-a6e3-31f0d8c14360.jpg', '9823', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/67767cb5-17d5-4c05-a6e3-31f0d8c14360.jpg', '1', '2019-05-05 21:51:35', '2019-05-05 21:51:35');
INSERT INTO `uploadfile` VALUES ('38', 'a2096c1c-9e92-471b-8ae6-0071cc2dd32c.jpg', '9823', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/a2096c1c-9e92-471b-8ae6-0071cc2dd32c.jpg', '1', '2019-05-05 21:57:05', '2019-05-05 21:57:05');
INSERT INTO `uploadfile` VALUES ('39', '8df9f2ab-600b-4f08-97c4-f2646409c1e0.jpg', '129551', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/8df9f2ab-600b-4f08-97c4-f2646409c1e0.jpg', '1', '2019-05-05 21:58:09', '2019-05-05 21:58:09');
INSERT INTO `uploadfile` VALUES ('40', 'dfb26410-9570-4696-92e0-ea570ffc8cf9.jpg', '9823', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/dfb26410-9570-4696-92e0-ea570ffc8cf9.jpg', '1', '2019-05-07 21:57:51', '2019-05-07 21:57:51');
INSERT INTO `uploadfile` VALUES ('41', 'aee2d1e4-fcd2-4a52-ad73-e084c83c4ca4.jpg', '19487', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/aee2d1e4-fcd2-4a52-ad73-e084c83c4ca4.jpg', '1', '2019-05-07 21:59:13', '2019-05-07 21:59:13');
INSERT INTO `uploadfile` VALUES ('42', '4ad7d69a-5768-4d7b-983e-cf8363c67512.jpg', '9823', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/4ad7d69a-5768-4d7b-983e-cf8363c67512.jpg', '1', '2019-05-07 22:00:48', '2019-05-07 22:00:48');

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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

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

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `courseModuleId` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `duration` int(11) NOT NULL COMMENT '视频时长，分钟为单位',
  `description` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `viewCount` int(11) NOT NULL DEFAULT '0',
  `praiseCount` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `createDateTime` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_index` (`courseModuleId`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES ('20', '1', 'D:/peoject/chengxuxiaoba/video//b6b55ea5-8b42-4a7e-92a6-e0fde658648e.mp4', 'name1', '12', 'uploadResult', null, '0', '0', '1', '2019-03-25 22:04:25');
INSERT INTO `video` VALUES ('22', '1', 'D:/peoject/chengxuxiaoba/video//8cb723dc-c139-45c7-9b14-6d6e3f379011.mp4', 'name2', '12', 'uploadResult', null, '0', '0', '1', '2019-03-25 22:12:36');
