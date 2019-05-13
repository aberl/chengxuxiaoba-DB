/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80015
Source Host           : localhost:3306
Source Database       : chengxuxiaoba

Target Server Type    : MYSQL
Target Server Version : 80015
File Encoding         : 65001

Date: 2019-05-13 22:43:13
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
INSERT INTO `course` VALUES ('1', 'JAVA', 'Java是一门面向对象编程语言，不仅吸收了C++语言的各种优点，还摒弃了C++里难以理解的多继承、指针等概念，因此Java语言具有功能强大和简单易用两个特征。Java语言作为静态面向对象编程语言的代表，极好地实现了面向对象理论，允许程序员以优雅的思维方式进行复杂的编程', '[\"1b7ea65e-92fc-4de8-b486-94ef922a55c2.jpg\",\"35479fe2-e3af-4b9f-aa58-1f3bb4895901.jpg\"]', '1', '2019-05-04 14:54:32');
INSERT INTO `course` VALUES ('2', '数据库', '存储电子文件的处所，用户可以对文件中的数据进行新增、截取、更新、删除等操作。', '[\"ad7f449d-12e3-47e3-bdc6-be18650ff1cc.jpg\"]', '1', '2019-05-04 14:55:13');
INSERT INTO `course` VALUES ('3', '大数据', '“大数据”是需要新处理模式才能具有更强的决策力、洞察发现力和流程优化能力来适应海量、高增长率和多样化的信息资产', '[\"0e80e34e-674d-403e-b548-b654857a9cf0.jpg\"]', '1', '2019-05-04 14:55:37');
INSERT INTO `course` VALUES ('4', '前端', '创建Web页面或app等前端界面呈现给用户的过程，通过HTML，CSS及JavaScript以及衍生出来的各种技术、框架、解决方案，来实现互联网产品的用户界面交互 [1]  。它从网页制作演变而来，名称上有很明显的时代特征。在互联网的演化进程中，网页制作是Web1.0时代的产物，早期网站主要内容都是静态，以图片和文字为主，用户使用网站的行为也以浏览为主。随着互联网技术的发展和HTML5、CSS3的应用，现代网页更加美观，交互效果显著，功能更加强大', '[\"0444d560-9367-4203-9ddd-4c31650725ed.jpg\"]', '-1', '2019-05-04 14:55:55');
INSERT INTO `course` VALUES ('5', '.NET', '.NET是 Microsoft XML Web services 平台。XML Web services 允许应用程序通过 Internet 进行通讯和共享数据，而不管所采用的是哪种操作系统、设备或编程语言。Microsoft .NET 平台提供创建 XML Web services 并将这些服务集成在一起之所需。对个人用户的好处是无缝的、吸引人的体验', '[\"a65577b8-2af1-4238-964c-92b23b397645.jpg\"]', '1', '2019-05-04 14:56:16');
INSERT INTO `course` VALUES ('6', '运维', '运维', '[\"4018ddd7-7b7a-4a2b-9fe6-ca380a46ed1c.mp4\"]', '-1', '2019-05-04 21:02:36');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of coursemodule
-- ----------------------------
INSERT INTO `coursemodule` VALUES ('1', '1', 'JAVA', '初级课程', '初级课程', '[\"67767cb5-17d5-4c05-a6e3-31f0d8c14360.jpg\"]', '1', '2019-05-07 21:37:54');
INSERT INTO `coursemodule` VALUES ('2', '1', 'JAVA', '初级课程', '初级课程', '[\"a2096c1c-9e92-471b-8ae6-0071cc2dd32c.jpg\"]', '1', '2019-05-07 21:37:54');
INSERT INTO `coursemodule` VALUES ('3', '2', '数据库', 'MYSQL', 'MYSQL', '[\"d90a1c11-0a7d-4ae3-b80a-bf1f5ae962f3.jpg\"]', '1', '2019-05-07 21:37:54');
INSERT INTO `coursemodule` VALUES ('4', '1', 'JAVA', '终极教材', '终极教材', '[\"aee2d1e4-fcd2-4a52-ad73-e084c83c4ca4.jpg\"]', '1', '2019-05-07 22:00:28');
INSERT INTO `coursemodule` VALUES ('5', '1', 'JAVA', '终极教材终', '终极教材终极教材', '[\"4ad7d69a-5768-4d7b-983e-cf8363c67512.jpg\"]', '1', '2019-05-07 22:01:01');
INSERT INTO `coursemodule` VALUES ('6', '1', 'JAVA', '所属课程', '所属课程', '[\"9f623625-a6de-4647-88ba-fb14c3a5e13c.jpg\"]', '1', '2019-05-07 22:23:34');
INSERT INTO `coursemodule` VALUES ('7', '1', 'JAVA', 'spri', '呃呃呃', '[\"83c74e29-c873-4fa9-86c9-4ed3dbc29795.jpg\"]', '1', '2019-05-10 21:19:49');

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
  `originName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `size` bigint(20) NOT NULL,
  `purpose` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `createDateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateDateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uploadfile
-- ----------------------------
INSERT INTO `uploadfile` VALUES ('1', '35479fe2-e3af-4b9f-aa58-1f3bb4895901.jpg', '', '36549', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/35479fe2-e3af-4b9f-aa58-1f3bb4895901.jpg', '1', '2019-05-04 14:54:31', '2019-05-04 14:54:31');
INSERT INTO `uploadfile` VALUES ('2', 'ad7f449d-12e3-47e3-bdc6-be18650ff1cc.jpg', '', '129551', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/ad7f449d-12e3-47e3-bdc6-be18650ff1cc.jpg', '1', '2019-05-04 14:55:11', '2019-05-04 14:55:11');
INSERT INTO `uploadfile` VALUES ('3', '0e80e34e-674d-403e-b548-b654857a9cf0.jpg', '', '71400', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/0e80e34e-674d-403e-b548-b654857a9cf0.jpg', '1', '2019-05-04 14:55:33', '2019-05-04 14:55:33');
INSERT INTO `uploadfile` VALUES ('4', '0444d560-9367-4203-9ddd-4c31650725ed.jpg', '', '19487', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/0444d560-9367-4203-9ddd-4c31650725ed.jpg', '1', '2019-05-04 14:55:54', '2019-05-04 14:55:54');
INSERT INTO `uploadfile` VALUES ('5', 'a65577b8-2af1-4238-964c-92b23b397645.jpg', '', '19487', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/a65577b8-2af1-4238-964c-92b23b397645.jpg', '1', '2019-05-04 14:56:15', '2019-05-04 14:56:15');
INSERT INTO `uploadfile` VALUES ('6', '335b0b25-79cc-48ea-a250-e17952c866ae.jpg', '', '9823', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/335b0b25-79cc-48ea-a250-e17952c866ae.jpg', '1', '2019-05-04 21:02:32', '2019-05-04 21:02:32');
INSERT INTO `uploadfile` VALUES ('7', '09b84618-1287-4f95-98f1-af4e926a280f.jpg', '', '19487', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/09b84618-1287-4f95-98f1-af4e926a280f.jpg', '-1', '2019-05-04 21:07:04', '2019-05-04 21:07:12');
INSERT INTO `uploadfile` VALUES ('8', 'a506dbb6-be54-465f-bcc4-de1a7f2847e9.jpg', '', '9823', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/a506dbb6-be54-465f-bcc4-de1a7f2847e9.jpg', '-1', '2019-05-04 21:07:09', '2019-05-04 21:07:14');
INSERT INTO `uploadfile` VALUES ('9', 'acedf7bf-cebd-4f54-829a-fee45e477b10.jpg', '', '19487', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/acedf7bf-cebd-4f54-829a-fee45e477b10.jpg', '1', '2019-05-04 21:09:25', '2019-05-04 21:09:25');
INSERT INTO `uploadfile` VALUES ('10', '7a85dba7-bb0b-4663-97f5-e327f1f3ae48.jpg', '', '19487', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/7a85dba7-bb0b-4663-97f5-e327f1f3ae48.jpg', '-1', '2019-05-04 21:09:52', '2019-05-04 21:10:00');
INSERT INTO `uploadfile` VALUES ('11', '58c191ac-65bb-4d11-81b5-5a2b6e008550.jpg', '', '19487', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/58c191ac-65bb-4d11-81b5-5a2b6e008550.jpg', '1', '2019-05-04 21:10:09', '2019-05-04 21:10:09');
INSERT INTO `uploadfile` VALUES ('12', '68e60354-3b9b-4946-a7d4-c4fbefdf137b.jpg', '', '9823', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/68e60354-3b9b-4946-a7d4-c4fbefdf137b.jpg', '1', '2019-05-04 21:11:05', '2019-05-04 21:11:05');
INSERT INTO `uploadfile` VALUES ('13', 'c144afaa-6d7b-45d1-81af-3292a5f2d5bf.jpg', '', '9823', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/c144afaa-6d7b-45d1-81af-3292a5f2d5bf.jpg', '-1', '2019-05-04 21:13:44', '2019-05-04 21:14:00');
INSERT INTO `uploadfile` VALUES ('14', '1d37259a-744f-4bb3-b824-e7e81e1f2114.mp4', '', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/1d37259a-744f-4bb3-b824-e7e81e1f2114.mp4', '1', '2019-05-04 21:49:34', '2019-05-04 21:49:34');
INSERT INTO `uploadfile` VALUES ('15', 'a4c2df4d-0e64-4528-8e42-3285dc510b4c.mp4', '', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/a4c2df4d-0e64-4528-8e42-3285dc510b4c.mp4', '1', '2019-05-04 21:49:45', '2019-05-04 21:49:45');
INSERT INTO `uploadfile` VALUES ('16', '5e5ad73b-1004-465a-9f3a-2e81fa9863dc.rmvb', '', '978859367', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/5e5ad73b-1004-465a-9f3a-2e81fa9863dc.rmvb', '1', '2019-05-04 21:50:05', '2019-05-04 21:50:05');
INSERT INTO `uploadfile` VALUES ('17', 'f1c1256d-5fec-4eaa-917c-ce2409a853a8.mp4', '', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/f1c1256d-5fec-4eaa-917c-ce2409a853a8.mp4', '1', '2019-05-04 21:52:23', '2019-05-04 21:52:23');
INSERT INTO `uploadfile` VALUES ('18', '21884279-0433-4876-960c-fd672084944d.mp4', '', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/21884279-0433-4876-960c-fd672084944d.mp4', '1', '2019-05-04 21:53:09', '2019-05-04 21:53:09');
INSERT INTO `uploadfile` VALUES ('19', '9f8ba8f2-990f-46de-a5ac-ce78f8ffbbfa.mp4', '', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/9f8ba8f2-990f-46de-a5ac-ce78f8ffbbfa.mp4', '1', '2019-05-04 22:03:54', '2019-05-04 22:03:54');
INSERT INTO `uploadfile` VALUES ('20', '4018ddd7-7b7a-4a2b-9fe6-ca380a46ed1c.mp4', '', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/4018ddd7-7b7a-4a2b-9fe6-ca380a46ed1c.mp4', '1', '2019-05-04 22:23:31', '2019-05-04 22:23:31');
INSERT INTO `uploadfile` VALUES ('21', 'f90f0557-6f04-4357-bc69-ed000ef87236.jpg', '', '19487', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/f90f0557-6f04-4357-bc69-ed000ef87236.jpg', '1', '2019-05-05 21:34:12', '2019-05-05 21:34:12');
INSERT INTO `uploadfile` VALUES ('22', 'd1976742-6321-44ce-b937-80365ec5a811.jpg', '', '9823', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/d1976742-6321-44ce-b937-80365ec5a811.jpg', '1', '2019-05-05 21:34:17', '2019-05-05 21:34:17');
INSERT INTO `uploadfile` VALUES ('23', '0005eb0f-2cdf-4b93-808d-62b347e6d987.jpg', '', '19487', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/0005eb0f-2cdf-4b93-808d-62b347e6d987.jpg', '-1', '2019-05-05 21:38:41', '2019-05-05 21:38:47');
INSERT INTO `uploadfile` VALUES ('24', 'ded712a0-62f6-4d4f-8f2d-f4177f790c20.jpg', '', '19487', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/ded712a0-62f6-4d4f-8f2d-f4177f790c20.jpg', '1', '2019-05-05 21:39:00', '2019-05-05 21:39:00');
INSERT INTO `uploadfile` VALUES ('25', '451fad1f-9ba9-481c-ae16-80188beb4e00.jpg', '', '71400', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/451fad1f-9ba9-481c-ae16-80188beb4e00.jpg', '1', '2019-05-05 21:39:03', '2019-05-05 21:39:03');
INSERT INTO `uploadfile` VALUES ('26', '624e8d2b-92b1-4293-af80-2953cf20f2c3.jpg', '', '95261', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/624e8d2b-92b1-4293-af80-2953cf20f2c3.jpg', '1', '2019-05-05 21:39:08', '2019-05-05 21:39:08');
INSERT INTO `uploadfile` VALUES ('27', 'f3257b78-6fd6-4210-96ef-fb038ed66e3f.jpg', '', '36549', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/f3257b78-6fd6-4210-96ef-fb038ed66e3f.jpg', '1', '2019-05-05 21:39:15', '2019-05-05 21:39:15');
INSERT INTO `uploadfile` VALUES ('28', '7633970a-374f-4106-b2c4-2ee8eb8365be.jpg', '', '129551', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/7633970a-374f-4106-b2c4-2ee8eb8365be.jpg', '1', '2019-05-05 21:39:23', '2019-05-05 21:39:23');
INSERT INTO `uploadfile` VALUES ('29', 'b72f624f-0171-48d5-811c-2ede0e03eb83.jpg', '', '19487', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/b72f624f-0171-48d5-811c-2ede0e03eb83.jpg', '-1', '2019-05-05 21:39:49', '2019-05-05 21:40:36');
INSERT INTO `uploadfile` VALUES ('30', '394dc7e8-fa17-432c-8b6c-f73c53ffd1d3.jpg', '', '9823', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/394dc7e8-fa17-432c-8b6c-f73c53ffd1d3.jpg', '-1', '2019-05-05 21:39:53', '2019-05-05 21:40:37');
INSERT INTO `uploadfile` VALUES ('31', '63dbb2c6-926c-4e2c-ad47-cb356e270b0d.jpg', '', '19487', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/63dbb2c6-926c-4e2c-ad47-cb356e270b0d.jpg', '1', '2019-05-05 21:40:43', '2019-05-05 21:40:43');
INSERT INTO `uploadfile` VALUES ('32', 'abb2d6dc-24c4-483e-af2d-a1f3448d65c0.jpg', '', '19487', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/abb2d6dc-24c4-483e-af2d-a1f3448d65c0.jpg', '1', '2019-05-05 21:42:34', '2019-05-05 21:42:34');
INSERT INTO `uploadfile` VALUES ('33', 'ce0e447d-2969-4f59-92fb-1cf43a6f2644.jpg', '', '9823', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/ce0e447d-2969-4f59-92fb-1cf43a6f2644.jpg', '1', '2019-05-05 21:42:36', '2019-05-05 21:42:36');
INSERT INTO `uploadfile` VALUES ('34', '9f5659da-a60e-4cbe-97f2-172254b37fcc.jpg', '', '71400', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/9f5659da-a60e-4cbe-97f2-172254b37fcc.jpg', '1', '2019-05-05 21:42:39', '2019-05-05 21:42:39');
INSERT INTO `uploadfile` VALUES ('35', 'a285e3b0-6bb4-4593-b57d-090074b12e11.jpg', '', '19487', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/a285e3b0-6bb4-4593-b57d-090074b12e11.jpg', '1', '2019-05-05 21:44:30', '2019-05-05 21:44:30');
INSERT INTO `uploadfile` VALUES ('36', 'f9c2a7ef-2183-442a-9aa1-01289a224bb7.jpg', '', '19487', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/f9c2a7ef-2183-442a-9aa1-01289a224bb7.jpg', '1', '2019-05-05 21:48:50', '2019-05-05 21:48:50');
INSERT INTO `uploadfile` VALUES ('37', '67767cb5-17d5-4c05-a6e3-31f0d8c14360.jpg', '', '9823', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/67767cb5-17d5-4c05-a6e3-31f0d8c14360.jpg', '1', '2019-05-05 21:51:35', '2019-05-05 21:51:35');
INSERT INTO `uploadfile` VALUES ('38', 'a2096c1c-9e92-471b-8ae6-0071cc2dd32c.jpg', '', '9823', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/a2096c1c-9e92-471b-8ae6-0071cc2dd32c.jpg', '1', '2019-05-05 21:57:05', '2019-05-05 21:57:05');
INSERT INTO `uploadfile` VALUES ('39', '8df9f2ab-600b-4f08-97c4-f2646409c1e0.jpg', '', '129551', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/8df9f2ab-600b-4f08-97c4-f2646409c1e0.jpg', '-1', '2019-05-05 21:58:09', '2019-05-13 21:08:09');
INSERT INTO `uploadfile` VALUES ('40', 'dfb26410-9570-4696-92e0-ea570ffc8cf9.jpg', '', '9823', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/dfb26410-9570-4696-92e0-ea570ffc8cf9.jpg', '1', '2019-05-07 21:57:51', '2019-05-07 21:57:51');
INSERT INTO `uploadfile` VALUES ('41', 'aee2d1e4-fcd2-4a52-ad73-e084c83c4ca4.jpg', '', '19487', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/aee2d1e4-fcd2-4a52-ad73-e084c83c4ca4.jpg', '1', '2019-05-07 21:59:13', '2019-05-07 21:59:13');
INSERT INTO `uploadfile` VALUES ('42', '4ad7d69a-5768-4d7b-983e-cf8363c67512.jpg', '', '9823', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/4ad7d69a-5768-4d7b-983e-cf8363c67512.jpg', '1', '2019-05-07 22:00:48', '2019-05-07 22:00:48');
INSERT INTO `uploadfile` VALUES ('43', '9f623625-a6de-4647-88ba-fb14c3a5e13c.jpg', '', '95261', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/9f623625-a6de-4647-88ba-fb14c3a5e13c.jpg', '1', '2019-05-07 22:23:33', '2019-05-07 22:23:33');
INSERT INTO `uploadfile` VALUES ('44', '1b7ea65e-92fc-4de8-b486-94ef922a55c2.jpg', '', '71400', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/1b7ea65e-92fc-4de8-b486-94ef922a55c2.jpg', '1', '2019-05-08 20:24:32', '2019-05-08 20:24:32');
INSERT INTO `uploadfile` VALUES ('45', 'e9530d2b-5a80-4a2a-9a5a-8d9cf71ce1bb.jpg', '', '19487', 'COURSE_MODULE_DETAILS', 'D:/peoject/chengxuxiaoba/files/COURSE_MODULE_DETAILS/e9530d2b-5a80-4a2a-9a5a-8d9cf71ce1bb.jpg', '-1', '2019-05-08 21:35:49', '2019-05-13 21:08:10');
INSERT INTO `uploadfile` VALUES ('46', '83c74e29-c873-4fa9-86c9-4ed3dbc29795.jpg', '', '19487', 'COURSE_MODULE_DETAILS', 'D:/peoject/chengxuxiaoba/files/COURSE_MODULE_DETAILS/83c74e29-c873-4fa9-86c9-4ed3dbc29795.jpg', '1', '2019-05-10 21:19:43', '2019-05-10 21:19:43');
INSERT INTO `uploadfile` VALUES ('47', '79dddb7c-f2b5-4814-bcc8-2b0cfb3d90da.mp4', '', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/79dddb7c-f2b5-4814-bcc8-2b0cfb3d90da.mp4', '1', '2019-05-10 21:30:49', '2019-05-10 21:30:49');
INSERT INTO `uploadfile` VALUES ('48', '27e68f6d-fdc3-4a44-bf53-b0a303d4bf29.mp4', '', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/27e68f6d-fdc3-4a44-bf53-b0a303d4bf29.mp4', '1', '2019-05-10 21:30:56', '2019-05-10 21:30:56');
INSERT INTO `uploadfile` VALUES ('49', '9fcea1ba-33c1-4c6a-910c-2070ece094e7.mp4', '', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/9fcea1ba-33c1-4c6a-910c-2070ece094e7.mp4', '1', '2019-05-10 21:31:35', '2019-05-10 21:31:35');
INSERT INTO `uploadfile` VALUES ('50', '9bb51db0-04ff-4b26-890a-c81b5636734b.jpg', '', '71400', 'COURSE_MODULE_DETAILS', 'D:/peoject/chengxuxiaoba/files/COURSE_MODULE_DETAILS/9bb51db0-04ff-4b26-890a-c81b5636734b.jpg', '1', '2019-05-10 21:32:36', '2019-05-10 21:32:36');
INSERT INTO `uploadfile` VALUES ('51', '146c962c-fdce-4d43-bf63-ad41671bc5ad.mp4', '', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/146c962c-fdce-4d43-bf63-ad41671bc5ad.mp4', '1', '2019-05-10 21:33:17', '2019-05-10 21:33:17');
INSERT INTO `uploadfile` VALUES ('52', '25d557a1-bd35-436a-ba7d-cb745879fdeb.mp4', '', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/25d557a1-bd35-436a-ba7d-cb745879fdeb.mp4', '1', '2019-05-10 21:33:58', '2019-05-10 21:33:58');
INSERT INTO `uploadfile` VALUES ('53', '1d94deb8-8747-486a-8d1a-def30feb898d.mp4', '', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/1d94deb8-8747-486a-8d1a-def30feb898d.mp4', '1', '2019-05-10 21:34:32', '2019-05-10 21:34:32');
INSERT INTO `uploadfile` VALUES ('54', '30b0c5be-4db3-46b7-a0ec-154fe374c17d.mp4', '', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/30b0c5be-4db3-46b7-a0ec-154fe374c17d.mp4', '1', '2019-05-10 21:35:27', '2019-05-10 21:35:27');
INSERT INTO `uploadfile` VALUES ('55', '113e2494-0024-4618-a3dd-e6a5ac0e8cd7.mp4', '', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/113e2494-0024-4618-a3dd-e6a5ac0e8cd7.mp4', '1', '2019-05-10 21:37:11', '2019-05-10 21:37:11');
INSERT INTO `uploadfile` VALUES ('56', '72edde5c-9443-4a7f-aa8c-f423917e1b68.mp4', '', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/72edde5c-9443-4a7f-aa8c-f423917e1b68.mp4', '1', '2019-05-10 21:38:57', '2019-05-10 21:38:57');
INSERT INTO `uploadfile` VALUES ('57', '5a914da3-e559-4ad3-b640-c95da3cf9c1c.mp4', '', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/5a914da3-e559-4ad3-b640-c95da3cf9c1c.mp4', '1', '2019-05-10 21:39:25', '2019-05-10 21:39:25');
INSERT INTO `uploadfile` VALUES ('58', 'c9189f8d-ad1d-4a21-8c4f-32b37a0e51ad.mp4', '', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/c9189f8d-ad1d-4a21-8c4f-32b37a0e51ad.mp4', '1', '2019-05-10 21:39:55', '2019-05-10 21:39:55');
INSERT INTO `uploadfile` VALUES ('59', 'd18963f6-7180-438e-b770-70dff77b2f23.mp4', '', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/d18963f6-7180-438e-b770-70dff77b2f23.mp4', '1', '2019-05-10 21:39:58', '2019-05-10 21:39:58');
INSERT INTO `uploadfile` VALUES ('60', 'eeb58b8d-dcf9-4ff9-b056-2b6a68287cb2.mp4', '', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/eeb58b8d-dcf9-4ff9-b056-2b6a68287cb2.mp4', '1', '2019-05-10 21:40:48', '2019-05-10 21:40:48');
INSERT INTO `uploadfile` VALUES ('61', '191bb2bb-bf1b-4515-8170-3a8538cbbd1b.mp4', '', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/191bb2bb-bf1b-4515-8170-3a8538cbbd1b.mp4', '1', '2019-05-10 21:41:02', '2019-05-10 21:41:02');
INSERT INTO `uploadfile` VALUES ('62', '109c7418-7a9a-4a95-a7ae-fa1e24bd1aa0.mp4', '', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/109c7418-7a9a-4a95-a7ae-fa1e24bd1aa0.mp4', '-1', '2019-05-10 21:42:22', '2019-05-10 21:42:30');
INSERT INTO `uploadfile` VALUES ('63', 'ce70f53f-4ed6-4036-8ed7-d97d7c9021c1.mp4', '', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/ce70f53f-4ed6-4036-8ed7-d97d7c9021c1.mp4', '-1', '2019-05-10 21:42:33', '2019-05-10 21:42:38');
INSERT INTO `uploadfile` VALUES ('64', '64009eab-0a6d-4b3c-9493-63886033c6ef.mp4', '', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/64009eab-0a6d-4b3c-9493-63886033c6ef.mp4', '1', '2019-05-10 21:42:53', '2019-05-10 21:42:53');
INSERT INTO `uploadfile` VALUES ('65', '93f70cf2-e355-4472-905c-ed374ed70d1a.mp4', '', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/93f70cf2-e355-4472-905c-ed374ed70d1a.mp4', '-1', '2019-05-10 21:43:31', '2019-05-10 21:43:45');
INSERT INTO `uploadfile` VALUES ('66', '17f7d910-324e-48dd-a65d-3b9c58a75268.jpg', '', '71400', 'VIDEO_ATTACHMENTS', 'D:/peoject/chengxuxiaoba/files/VIDEO_ATTACHMENTS/17f7d910-324e-48dd-a65d-3b9c58a75268.jpg', '1', '2019-05-10 21:50:27', '2019-05-10 21:50:27');
INSERT INTO `uploadfile` VALUES ('67', 'a5f34cea-b8e6-4dc9-aac7-b2deb39789f5.jpg', '', '71400', 'VIDEO_ATTACHMENTS', 'D:/peoject/chengxuxiaoba/files/VIDEO_ATTACHMENTS/a5f34cea-b8e6-4dc9-aac7-b2deb39789f5.jpg', '1', '2019-05-10 21:50:34', '2019-05-10 21:50:34');
INSERT INTO `uploadfile` VALUES ('68', 'cdc6df87-02f2-4ade-99b5-7f8d4cd0811a.jpg', '', '129551', 'VIDEO_ATTACHMENTS', 'D:/peoject/chengxuxiaoba/files/VIDEO_ATTACHMENTS/cdc6df87-02f2-4ade-99b5-7f8d4cd0811a.jpg', '1', '2019-05-10 21:50:42', '2019-05-10 21:50:42');
INSERT INTO `uploadfile` VALUES ('69', '1afc82e1-d4bb-4217-9e70-dde156404965.mp4', '', '9356508', 'VIDEO_ATTACHMENTS', 'D:/peoject/chengxuxiaoba/files/VIDEO_ATTACHMENTS/1afc82e1-d4bb-4217-9e70-dde156404965.mp4', '1', '2019-05-10 21:51:04', '2019-05-10 21:51:04');
INSERT INTO `uploadfile` VALUES ('70', '071d92b7-e082-4f5d-9883-1e4dcc7a110e.mp4', '', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/071d92b7-e082-4f5d-9883-1e4dcc7a110e.mp4', '1', '2019-05-10 21:51:09', '2019-05-10 21:51:09');
INSERT INTO `uploadfile` VALUES ('71', '2a1fc642-3235-4b84-80ba-c16efed16dd5.mp4', '', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/2a1fc642-3235-4b84-80ba-c16efed16dd5.mp4', '1', '2019-05-10 22:14:59', '2019-05-10 22:14:59');
INSERT INTO `uploadfile` VALUES ('72', '63420a14-2f32-4e5c-8c05-1c000e530fb9.jpg', '', '71400', 'VIDEO_ATTACHMENTS', 'D:/peoject/chengxuxiaoba/files/VIDEO_ATTACHMENTS/63420a14-2f32-4e5c-8c05-1c000e530fb9.jpg', '1', '2019-05-10 22:15:01', '2019-05-10 22:15:01');
INSERT INTO `uploadfile` VALUES ('73', '2229e851-77a9-4434-b5c9-1daff560951b.mp4', '', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/2229e851-77a9-4434-b5c9-1daff560951b.mp4', '1', '2019-05-10 22:20:07', '2019-05-10 22:20:07');
INSERT INTO `uploadfile` VALUES ('74', '0417ae93-89f4-49ff-b3ae-8ad4e835cf7c.jpg', '', '71400', 'VIDEO_ATTACHMENTS', 'D:/peoject/chengxuxiaoba/files/VIDEO_ATTACHMENTS/0417ae93-89f4-49ff-b3ae-8ad4e835cf7c.jpg', '1', '2019-05-10 22:20:10', '2019-05-10 22:20:10');
INSERT INTO `uploadfile` VALUES ('75', 'e57cf6c6-4656-4b02-b92a-66ea986e8ac4.mp4', '', '9356508', 'VIDEO_ATTACHMENTS', 'D:/peoject/chengxuxiaoba/files/VIDEO_ATTACHMENTS/e57cf6c6-4656-4b02-b92a-66ea986e8ac4.mp4', '1', '2019-05-10 22:20:13', '2019-05-10 22:20:13');
INSERT INTO `uploadfile` VALUES ('76', 'a4f7b94c-048c-466a-bb45-1281b3405bf2.mp4', '', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/a4f7b94c-048c-466a-bb45-1281b3405bf2.mp4', '1', '2019-05-10 22:22:18', '2019-05-10 22:22:18');
INSERT INTO `uploadfile` VALUES ('77', '0b184dfe-65db-4988-bdcb-5d54ea6517e2.jpg', '', '71400', 'VIDEO_ATTACHMENTS', 'D:/peoject/chengxuxiaoba/files/VIDEO_ATTACHMENTS/0b184dfe-65db-4988-bdcb-5d54ea6517e2.jpg', '1', '2019-05-10 22:22:22', '2019-05-10 22:22:22');
INSERT INTO `uploadfile` VALUES ('78', 'cb089b1a-9256-4b69-8623-e0f01aec6c37.jpg', '', '9823', 'VIDEO_ATTACHMENTS', 'D:/peoject/chengxuxiaoba/files/VIDEO_ATTACHMENTS/cb089b1a-9256-4b69-8623-e0f01aec6c37.jpg', '1', '2019-05-10 22:22:25', '2019-05-10 22:22:25');
INSERT INTO `uploadfile` VALUES ('79', '89402ac9-8adf-4911-ba6f-7b94d5488e2e.mp4', '', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/89402ac9-8adf-4911-ba6f-7b94d5488e2e.mp4', '1', '2019-05-10 22:24:17', '2019-05-10 22:24:17');
INSERT INTO `uploadfile` VALUES ('80', '2bb23731-3326-412f-8279-374caa2b8a14.jpg', '', '9823', 'VIDEO_ATTACHMENTS', 'D:/peoject/chengxuxiaoba/files/VIDEO_ATTACHMENTS/2bb23731-3326-412f-8279-374caa2b8a14.jpg', '1', '2019-05-10 22:24:19', '2019-05-10 22:24:19');
INSERT INTO `uploadfile` VALUES ('81', 'f462190f-7895-408d-9a7e-f029eba274ce.jpg', '', '19487', 'VIDEO_ATTACHMENTS', 'D:/peoject/chengxuxiaoba/files/VIDEO_ATTACHMENTS/f462190f-7895-408d-9a7e-f029eba274ce.jpg', '1', '2019-05-10 22:24:23', '2019-05-10 22:24:23');
INSERT INTO `uploadfile` VALUES ('82', 'df4f69d0-8540-4243-8751-3e411da190c6.mp4', '', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/df4f69d0-8540-4243-8751-3e411da190c6.mp4', '1', '2019-05-10 22:25:41', '2019-05-10 22:25:41');
INSERT INTO `uploadfile` VALUES ('83', '362be804-0556-42b5-aea3-1408738d78d3.jpg', '', '71400', 'VIDEO_ATTACHMENTS', 'D:/peoject/chengxuxiaoba/files/VIDEO_ATTACHMENTS/362be804-0556-42b5-aea3-1408738d78d3.jpg', '1', '2019-05-10 22:25:43', '2019-05-10 22:25:43');
INSERT INTO `uploadfile` VALUES ('84', '9fe2bf5c-b2bf-4881-b1dd-f6180e309e84.jpg', '', '129551', 'VIDEO_ATTACHMENTS', 'D:/peoject/chengxuxiaoba/files/VIDEO_ATTACHMENTS/9fe2bf5c-b2bf-4881-b1dd-f6180e309e84.jpg', '1', '2019-05-10 22:25:46', '2019-05-10 22:25:46');
INSERT INTO `uploadfile` VALUES ('85', '2e3ca033-c4d0-498c-8f0d-2a17b0e70b02.mp4', '', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/2e3ca033-c4d0-498c-8f0d-2a17b0e70b02.mp4', '1', '2019-05-10 22:27:44', '2019-05-10 22:27:44');
INSERT INTO `uploadfile` VALUES ('86', 'c9a46fdb-d2b8-4ed0-8d2f-c4e61453e048.jpg', '', '71400', 'VIDEO_ATTACHMENTS', 'D:/peoject/chengxuxiaoba/files/VIDEO_ATTACHMENTS/c9a46fdb-d2b8-4ed0-8d2f-c4e61453e048.jpg', '1', '2019-05-10 22:27:45', '2019-05-10 22:27:45');
INSERT INTO `uploadfile` VALUES ('87', '43ab1af0-039f-4b7e-bc37-be1d338f4c4d.jpg', '', '9823', 'VIDEO_ATTACHMENTS', 'D:/peoject/chengxuxiaoba/files/VIDEO_ATTACHMENTS/43ab1af0-039f-4b7e-bc37-be1d338f4c4d.jpg', '1', '2019-05-10 22:27:48', '2019-05-10 22:27:48');
INSERT INTO `uploadfile` VALUES ('88', 'c1d9c8c3-fb51-491d-a3ae-8b001c10be2b.mp4', '', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/c1d9c8c3-fb51-491d-a3ae-8b001c10be2b.mp4', '1', '2019-05-10 22:29:51', '2019-05-10 22:29:51');
INSERT INTO `uploadfile` VALUES ('89', 'fb1f77f4-8ebd-4f46-b1bb-fd9fc760c7f7.mp4', '', '9356508', 'VIDEO_ATTACHMENTS', 'D:/peoject/chengxuxiaoba/files/VIDEO_ATTACHMENTS/fb1f77f4-8ebd-4f46-b1bb-fd9fc760c7f7.mp4', '1', '2019-05-10 22:29:55', '2019-05-10 22:29:55');
INSERT INTO `uploadfile` VALUES ('90', 'deff2421-eda7-4268-98d3-3d19b61706b8.jpg', '94ef922a55c2.jpg', '71400', 'VIDEO_ATTACHMENTS', 'D:/peoject/chengxuxiaoba/files/VIDEO_ATTACHMENTS/deff2421-eda7-4268-98d3-3d19b61706b8.jpg', '1', '2019-05-10 22:29:57', '2019-05-10 22:29:57');
INSERT INTO `uploadfile` VALUES ('91', '779706e3-fa4c-40d7-8b08-24428bbe0273.mp4', '9f5659da-a60e-4cbe-97f2-172254b37fcc.jpg', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/779706e3-fa4c-40d7-8b08-24428bbe0273.mp4', '1', '2019-05-10 22:30:57', '2019-05-10 22:30:57');
INSERT INTO `uploadfile` VALUES ('92', '0cc808e8-fb89-4fb9-b1a8-55cb5631920b.jpg', 'ddddd', '71400', 'VIDEO_ATTACHMENTS', 'D:/peoject/chengxuxiaoba/files/VIDEO_ATTACHMENTS/0cc808e8-fb89-4fb9-b1a8-55cb5631920b.jpg', '-1', '2019-05-10 22:31:00', '2019-05-13 22:40:45');
INSERT INTO `uploadfile` VALUES ('93', '1a2ccca5-c8a8-44d0-8e30-7a93ff7fff70.jpg', '', '9823', 'VIDEO_ATTACHMENTS', 'D:/peoject/chengxuxiaoba/files/VIDEO_ATTACHMENTS/1a2ccca5-c8a8-44d0-8e30-7a93ff7fff70.jpg', '-1', '2019-05-10 22:31:03', '2019-05-13 22:40:47');
INSERT INTO `uploadfile` VALUES ('94', '2baad44f-5475-4b31-ad36-54728c0ea190.mp4', 'www.mp4', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/2baad44f-5475-4b31-ad36-54728c0ea190.mp4', '1', '2019-05-11 12:27:47', '2019-05-11 12:27:47');
INSERT INTO `uploadfile` VALUES ('95', 'ac1a71db-4da0-4125-bc94-7c2cbed4b1ef.jpg', '', '71400', 'VIDEO_ATTACHMENTS', 'D:/peoject/chengxuxiaoba/files/VIDEO_ATTACHMENTS/ac1a71db-4da0-4125-bc94-7c2cbed4b1ef.jpg', '1', '2019-05-11 12:27:49', '2019-05-11 12:27:49');
INSERT INTO `uploadfile` VALUES ('96', '2b1891f2-b5ac-45ed-a3be-79753ac530a5.jpg', 'uploadFile', '95261', 'COURSE_MODULE_DETAILS', 'D:/peoject/chengxuxiaoba/files/COURSE_MODULE_DETAILS/2b1891f2-b5ac-45ed-a3be-79753ac530a5.jpg', '1', '2019-05-11 21:31:56', '2019-05-11 21:31:56');
INSERT INTO `uploadfile` VALUES ('97', '15fdf2d3-acd1-4066-8cae-d40f1665909a.jpg', '624e8d2b-92b1-4293-af80-2953cf20f2c3.jpg', '95261', 'COURSE_MODULE_DETAILS', 'D:/peoject/chengxuxiaoba/files/COURSE_MODULE_DETAILS/15fdf2d3-acd1-4066-8cae-d40f1665909a.jpg', '1', '2019-05-11 21:32:42', '2019-05-11 21:32:42');
INSERT INTO `uploadfile` VALUES ('98', '0e8c3261-704b-4084-aa3d-1f841ad88a89.mp4', '4018ddd7-7b7a-4a2b-9fe6-ca380a46ed1c.mp4', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/0e8c3261-704b-4084-aa3d-1f841ad88a89.mp4', '-1', '2019-05-12 20:26:34', '2019-05-13 22:39:38');
INSERT INTO `uploadfile` VALUES ('99', 'ac3b4238-7797-43ba-b206-4c7ef7f05f7e.jpg', '1b7ea65e-92fc-4de8-b486-94ef922a55c2.jpg', '71400', 'VIDEO_ATTACHMENTS', 'D:/peoject/chengxuxiaoba/files/VIDEO_ATTACHMENTS/ac3b4238-7797-43ba-b206-4c7ef7f05f7e.jpg', '-1', '2019-05-12 20:26:36', '2019-05-13 22:39:44');
INSERT INTO `uploadfile` VALUES ('100', 'd90a1c11-0a7d-4ae3-b80a-bf1f5ae962f3.jpg', '9f5659da-a60e-4cbe-97f2-172254b37fcc.jpg', '71400', 'COURSE_MODULE_DETAILS', 'D:/peoject/chengxuxiaoba/files/COURSE_MODULE_DETAILS/d90a1c11-0a7d-4ae3-b80a-bf1f5ae962f3.jpg', '1', '2019-05-13 21:08:14', '2019-05-13 21:08:14');
INSERT INTO `uploadfile` VALUES ('101', 'e52cf94c-d6e1-4980-9613-dfe4930b2b5e.mp4', '1d37259a-744f-4bb3-b824-e7e81e1f2114.mp4', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/e52cf94c-d6e1-4980-9613-dfe4930b2b5e.mp4', '-1', '2019-05-13 21:22:04', '2019-05-13 21:47:38');
INSERT INTO `uploadfile` VALUES ('102', 'b4247668-feae-4f00-8528-fffe960b069c.jpg', '1b7ea65e-92fc-4de8-b486-94ef922a55c2.jpg', '71400', 'VIDEO_ATTACHMENTS', 'D:/peoject/chengxuxiaoba/files/VIDEO_ATTACHMENTS/b4247668-feae-4f00-8528-fffe960b069c.jpg', '-1', '2019-05-13 21:22:22', '2019-05-13 21:51:09');
INSERT INTO `uploadfile` VALUES ('103', '72da2ad3-aa38-461c-b82c-03f04f594bfb.mp4', '1d37259a-744f-4bb3-b824-e7e81e1f2114.mp4', '9356508', 'VIDEO_ATTACHMENTS', 'D:/peoject/chengxuxiaoba/files/VIDEO_ATTACHMENTS/72da2ad3-aa38-461c-b82c-03f04f594bfb.mp4', '-1', '2019-05-13 21:22:25', '2019-05-13 21:51:07');
INSERT INTO `uploadfile` VALUES ('104', '9ea2e753-ca02-40f6-be26-52809b0ae77a.mp4', '1d37259a-744f-4bb3-b824-e7e81e1f2114.mp4', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/9ea2e753-ca02-40f6-be26-52809b0ae77a.mp4', '1', '2019-05-13 21:42:36', '2019-05-13 21:42:36');
INSERT INTO `uploadfile` VALUES ('105', 'c804ab09-54e1-4814-98b8-519fea7a598c.mp4', '1d37259a-744f-4bb3-b824-e7e81e1f2114.mp4', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/c804ab09-54e1-4814-98b8-519fea7a598c.mp4', '1', '2019-05-13 21:43:07', '2019-05-13 21:43:07');
INSERT INTO `uploadfile` VALUES ('106', '0bdcbb0a-50c5-406a-96d4-1edff3cebb07.mp4', '1d37259a-744f-4bb3-b824-e7e81e1f2114.mp4', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/0bdcbb0a-50c5-406a-96d4-1edff3cebb07.mp4', '1', '2019-05-13 21:43:11', '2019-05-13 21:43:11');
INSERT INTO `uploadfile` VALUES ('107', 'e622b5b8-c17b-419b-8bcc-25735ed8f546.mp4', '1d37259a-744f-4bb3-b824-e7e81e1f2114.mp4', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/e622b5b8-c17b-419b-8bcc-25735ed8f546.mp4', '1', '2019-05-13 21:43:55', '2019-05-13 21:43:55');
INSERT INTO `uploadfile` VALUES ('108', '2164e286-8790-4f52-8e72-42da8352db09.mp4', '1d37259a-744f-4bb3-b824-e7e81e1f2114.mp4', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/2164e286-8790-4f52-8e72-42da8352db09.mp4', '1', '2019-05-13 21:44:48', '2019-05-13 21:44:48');
INSERT INTO `uploadfile` VALUES ('109', '385fa084-1b7b-439f-9286-ff2679133d33.mp4', '1d37259a-744f-4bb3-b824-e7e81e1f2114.mp4', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/385fa084-1b7b-439f-9286-ff2679133d33.mp4', '1', '2019-05-13 21:46:21', '2019-05-13 21:46:21');
INSERT INTO `uploadfile` VALUES ('110', 'c96b366e-c742-4dec-948e-f2129a9e9b74.mp4', '1d37259a-744f-4bb3-b824-e7e81e1f2114.mp4', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/c96b366e-c742-4dec-948e-f2129a9e9b74.mp4', '-1', '2019-05-13 21:47:42', '2019-05-13 21:47:48');
INSERT INTO `uploadfile` VALUES ('111', '305d6117-94f2-4294-85f4-efee47d27887.mp4', '1d37259a-744f-4bb3-b824-e7e81e1f2114.mp4', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/305d6117-94f2-4294-85f4-efee47d27887.mp4', '-1', '2019-05-13 21:47:57', '2019-05-13 21:48:08');
INSERT INTO `uploadfile` VALUES ('112', 'af878ce1-0b4a-44d5-b1b7-769c41fc970d.mp4', '21884279-0433-4876-960c-fd672084944d.mp4', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/af878ce1-0b4a-44d5-b1b7-769c41fc970d.mp4', '1', '2019-05-13 21:48:13', '2019-05-13 21:48:13');
INSERT INTO `uploadfile` VALUES ('113', '60219d58-cb68-4be6-91a9-d6947bbc39d4.jpg', '0e80e34e-674d-403e-b548-b654857a9cf0.jpg', '71400', 'VIDEO_ATTACHMENTS', 'D:/peoject/chengxuxiaoba/files/VIDEO_ATTACHMENTS/60219d58-cb68-4be6-91a9-d6947bbc39d4.jpg', '1', '2019-05-13 21:49:58', '2019-05-13 21:49:58');
INSERT INTO `uploadfile` VALUES ('114', '00d03a9b-68b2-4253-ba4d-deb8dd015bf6.jpg', '1b7ea65e-92fc-4de8-b486-94ef922a55c2.jpg', '71400', 'VIDEO_ATTACHMENTS', 'D:/peoject/chengxuxiaoba/files/VIDEO_ATTACHMENTS/00d03a9b-68b2-4253-ba4d-deb8dd015bf6.jpg', '1', '2019-05-13 21:51:11', '2019-05-13 21:51:11');
INSERT INTO `uploadfile` VALUES ('115', '61732651-a3d5-40c1-a874-8a5d329b5589.mp4', '4018ddd7-7b7a-4a2b-9fe6-ca380a46ed1c.mp4', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/61732651-a3d5-40c1-a874-8a5d329b5589.mp4', '1', '2019-05-13 22:39:42', '2019-05-13 22:39:42');
INSERT INTO `uploadfile` VALUES ('116', '1b41f387-c4f9-4cb2-8ff6-4e18bfe1c9a7.mp4', '9f8ba8f2-990f-46de-a5ac-ce78f8ffbbfa.mp4', '9356508', 'COURSE_VIDEO', 'D:/peoject/chengxuxiaoba/files/COURSE_VIDEO/1b41f387-c4f9-4cb2-8ff6-4e18bfe1c9a7.mp4', '1', '2019-05-13 22:41:34', '2019-05-13 22:41:34');
INSERT INTO `uploadfile` VALUES ('117', 'd1d01a55-61c8-4e3f-bc44-561c7f04c252.mp4', '1d37259a-744f-4bb3-b824-e7e81e1f2114.mp4', '9356508', 'VIDEO_ATTACHMENTS', 'D:/peoject/chengxuxiaoba/files/VIDEO_ATTACHMENTS/d1d01a55-61c8-4e3f-bc44-561c7f04c252.mp4', '1', '2019-05-13 22:42:03', '2019-05-13 22:42:03');

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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES ('20', '1', '779706e3-fa4c-40d7-8b08-24428bbe0273.mp4', 'name1', '[\"0cc808e8-fb89-4fb9-b1a8-55cb5631920b.jpg\",\"1a2ccca5-c8a8-44d0-8e30-7a93ff7fff70.jpg\"]', '12', 'uploadResult', ' ', '0', '0', '1', '2019-03-25 22:04:25');
INSERT INTO `video` VALUES ('22', '1', '779706e3-fa4c-40d7-8b08-24428bbe0273.mp4', 'name2', '[\"0cc808e8-fb89-4fb9-b1a8-55cb5631920b.jpg\",\"1a2ccca5-c8a8-44d0-8e30-7a93ff7fff70.jpg\"]', '12', 'uploadResult', ' ', '0', '0', '1', '2019-03-25 22:12:36');
INSERT INTO `video` VALUES ('23', '1', '779706e3-fa4c-40d7-8b08-24428bbe0273.mp4', 'name3', '[\"0cc808e8-fb89-4fb9-b1a8-55cb5631920b.jpg\",\"1a2ccca5-c8a8-44d0-8e30-7a93ff7fff70.jpg\"]', '12', 'uploadResult', null, '0', '0', '1', '2019-05-10 22:00:59');
INSERT INTO `video` VALUES ('24', '1', '779706e3-fa4c-40d7-8b08-24428bbe0273.mp4', 'name4', '[\"0cc808e8-fb89-4fb9-b1a8-55cb5631920b.jpg\",\"1a2ccca5-c8a8-44d0-8e30-7a93ff7fff70.jpg\"]', '12', 'uploadResult', null, '0', '0', '1', '2019-05-10 22:05:56');
INSERT INTO `video` VALUES ('25', '1', '779706e3-fa4c-40d7-8b08-24428bbe0273.mp4', 'name14', '[]', '12', 'uploadResult', null, '0', '0', '-1', '2019-05-10 22:06:04');
INSERT INTO `video` VALUES ('26', '2', '779706e3-fa4c-40d7-8b08-24428bbe0273.mp4', '1', '[\"0cc808e8-fb89-4fb9-b1a8-55cb5631920b.jpg\",\"1a2ccca5-c8a8-44d0-8e30-7a93ff7fff70.jpg\"]', '12', '123', null, '0', '0', '-1', '2019-05-10 22:31:06');
INSERT INTO `video` VALUES ('27', '2', '2baad44f-5475-4b31-ad36-54728c0ea190.mp4', '1212', '[\"ac1a71db-4da0-4125-bc94-7c2cbed4b1ef.jpg\"]', '12', '1313', null, '0', '0', '-1', '2019-05-11 12:27:53');
INSERT INTO `video` VALUES ('28', '3', '0e8c3261-704b-4084-aa3d-1f841ad88a89.mp4', 'YYYY77', '[]', '121277', '1222277', null, '22', '33', '-1', '2019-05-12 20:26:41');
INSERT INTO `video` VALUES ('29', '1', 'eeeee', 'name15', '[]', '14', 'uploadResult', null, '100', '200', '1', '2019-05-13 21:22:38');
INSERT INTO `video` VALUES ('30', '3', '1b41f387-c4f9-4cb2-8ff6-4e18bfe1c9a7.mp4', 'M3', '[\"d1d01a55-61c8-4e3f-bc44-561c7f04c252.mp4\"]', '2333', '3332', null, '0', '0', '-1', '2019-05-13 22:41:39');
