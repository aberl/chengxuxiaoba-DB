/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80015
Source Host           : localhost:3306
Source Database       : chengxuxiaoba

Target Server Type    : MYSQL
Target Server Version : 80015
File Encoding         : 65001

Date: 2019-04-29 07:17:37
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', 'JAVA', 'Java是一门面向对象编程语言，不仅吸收了C++语言的各种优点，还摒弃了C++里难以理解的多继承、指针等概念，因此Java语言具有功能强大和简单易用两个特征。Java语言作为静态面向对象编程语言的代表，极好地实现了面向对象理论，允许程序员以优雅的思维方式进行复杂的编程', '[\"a8926c9b-9257-426d-a617-4d7feedd5113.jpg\"]', '-1', '2019-04-21 21:23:49');
INSERT INTO `course` VALUES ('2', '数据库', '存储电子文件的处所，用户可以对文件中的数据进行新增、截取、更新、删除等操作。', '[\"c665902f-4d0d-459f-b706-19282fa0256e.jpg\"]', '-1', '2019-04-21 22:31:33');
INSERT INTO `course` VALUES ('3', '大数据', '“大数据”是需要新处理模式才能具有更强的决策力、洞察发现力和流程优化能力来适应海量、高增长率和多样化的信息资产', '[\"2ec92979-ad03-4077-9677-7700e4e2437d.jpg\",\"79234001-2a37-48df-a18f-1c774a1c7504.jpg\",\"a45c00f1-fba3-462d-aae0-d5974741a885.jpg\"]', '1', '2019-04-21 23:01:53');
INSERT INTO `course` VALUES ('4', '前端', '创建Web页面或app等前端界面呈现给用户的过程，通过HTML，CSS及JavaScript以及衍生出来的各种技术、框架、解决方案，来实现互联网产品的用户界面交互 [1]  。它从网页制作演变而来，名称上有很明显的时代特征。在互联网的演化进程中，网页制作是Web1.0时代的产物，早期网站主要内容都是静态，以图片和文字为主，用户使用网站的行为也以浏览为主。随着互联网技术的发展和HTML5、CSS3的应用，现代网页更加美观，交互效果显著，功能更加强大', '[\"30960dc9-75cf-44be-9111-9a0e52a04add.jpg\"]', '1', '2019-04-21 23:08:21');
INSERT INTO `course` VALUES ('6', '.NET', '.NET是 Microsoft XML Web services 平台。XML Web services 允许应用程序通过 Internet 进行通讯和共享数据，而不管所采用的是哪种操作系统、设备或编程语言。Microsoft .NET 平台提供创建 XML Web services 并将这些服务集成在一起之所需。对个人用户的好处是无缝的、吸引人的体验', '[\"31a010d4-3b40-4b74-825c-718fcc3987e9.jpg\"]', '-1', '2019-04-22 22:03:58');

-- ----------------------------
-- Table structure for coursemodule
-- ----------------------------
DROP TABLE IF EXISTS `coursemodule`;
CREATE TABLE `coursemodule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `courseId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `images` varchar(1000) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uploadfile
-- ----------------------------
INSERT INTO `uploadfile` VALUES ('1', 'a8926c9b-9257-426d-a617-4d7feedd5113.jpg', '36549', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/a8926c9b-9257-426d-a617-4d7feedd5113.jpg', '1', '2019-04-21 21:23:12', '2019-04-21 21:23:12');
INSERT INTO `uploadfile` VALUES ('2', 'c665902f-4d0d-459f-b706-19282fa0256e.jpg', '129551', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/c665902f-4d0d-459f-b706-19282fa0256e.jpg', '1', '2019-04-21 22:30:13', '2019-04-21 22:30:13');
INSERT INTO `uploadfile` VALUES ('3', '2ec92979-ad03-4077-9677-7700e4e2437d.jpg', '71400', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/2ec92979-ad03-4077-9677-7700e4e2437d.jpg', '1', '2019-04-21 23:01:04', '2019-04-21 23:01:04');
INSERT INTO `uploadfile` VALUES ('4', '79234001-2a37-48df-a18f-1c774a1c7504.jpg', '95261', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/79234001-2a37-48df-a18f-1c774a1c7504.jpg', '1', '2019-04-21 23:01:05', '2019-04-21 23:01:05');
INSERT INTO `uploadfile` VALUES ('5', 'a45c00f1-fba3-462d-aae0-d5974741a885.jpg', '114159', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/a45c00f1-fba3-462d-aae0-d5974741a885.jpg', '1', '2019-04-21 23:01:07', '2019-04-21 23:01:07');
INSERT INTO `uploadfile` VALUES ('6', '30960dc9-75cf-44be-9111-9a0e52a04add.jpg', '9823', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/30960dc9-75cf-44be-9111-9a0e52a04add.jpg', '1', '2019-04-21 23:07:59', '2019-04-21 23:07:59');
INSERT INTO `uploadfile` VALUES ('7', '8e0a0902-d706-4cc6-85ff-6a6c0d05fed3.jpg', '19487', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/8e0a0902-d706-4cc6-85ff-6a6c0d05fed3.jpg', '1', '2019-04-22 22:00:14', '2019-04-22 22:00:14');
INSERT INTO `uploadfile` VALUES ('8', '31a010d4-3b40-4b74-825c-718fcc3987e9.jpg', '19487', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/31a010d4-3b40-4b74-825c-718fcc3987e9.jpg', '1', '2019-04-22 22:03:51', '2019-04-22 22:03:51');
INSERT INTO `uploadfile` VALUES ('9', '0be05c6e-63d0-4fa8-9ce4-94417ca030b1.jpg', '36549', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/0be05c6e-63d0-4fa8-9ce4-94417ca030b1.jpg', '1', '2019-04-23 22:25:08', '2019-04-23 22:25:08');
INSERT INTO `uploadfile` VALUES ('10', 'eb18e1a7-51e5-4922-ba40-cbef5df296ec.jpg', '129551', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/eb18e1a7-51e5-4922-ba40-cbef5df296ec.jpg', '1', '2019-04-23 22:41:33', '2019-04-23 22:41:33');
INSERT INTO `uploadfile` VALUES ('11', '1724556d-b69c-41b3-a1e4-c801e9614ea4.jpg', '71400', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/1724556d-b69c-41b3-a1e4-c801e9614ea4.jpg', '1', '2019-04-23 22:41:59', '2019-04-23 22:41:59');
INSERT INTO `uploadfile` VALUES ('12', '3001f708-2320-4f49-b5af-b502e34fc67f.jpg', '71400', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/3001f708-2320-4f49-b5af-b502e34fc67f.jpg', '1', '2019-04-23 22:45:18', '2019-04-23 22:45:18');
INSERT INTO `uploadfile` VALUES ('13', 'ff6c0837-bf18-4819-beee-b3e3442ed408.jpg', '95261', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/ff6c0837-bf18-4819-beee-b3e3442ed408.jpg', '1', '2019-04-23 22:55:47', '2019-04-23 22:55:47');
INSERT INTO `uploadfile` VALUES ('14', 'a166e0fb-862a-4868-bf62-c0e94958224f.png', '32633', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/a166e0fb-862a-4868-bf62-c0e94958224f.png', '1', '2019-04-23 22:56:09', '2019-04-23 22:56:09');
INSERT INTO `uploadfile` VALUES ('15', '73b3464d-5a4c-45ae-af99-6b4c0af5b8ee.jpg', '9823', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/73b3464d-5a4c-45ae-af99-6b4c0af5b8ee.jpg', '1', '2019-04-24 22:14:19', '2019-04-24 22:14:19');
INSERT INTO `uploadfile` VALUES ('16', 'dd948d43-15db-41eb-91b8-5f2fc4f5e468.jpg', '71400', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/dd948d43-15db-41eb-91b8-5f2fc4f5e468.jpg', '1', '2019-04-24 22:21:56', '2019-04-24 22:21:56');
INSERT INTO `uploadfile` VALUES ('17', '4a8174d6-ee16-4e63-bb0e-8d5a5671e489.jpg', '9823', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/4a8174d6-ee16-4e63-bb0e-8d5a5671e489.jpg', '1', '2019-04-25 23:04:57', '2019-04-25 23:04:57');
INSERT INTO `uploadfile` VALUES ('18', 'ceed3a01-b470-447a-b0d1-57491c2bf563.jpg', '9823', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/ceed3a01-b470-447a-b0d1-57491c2bf563.jpg', '1', '2019-04-25 23:04:57', '2019-04-25 23:04:57');
INSERT INTO `uploadfile` VALUES ('19', 'dc49130f-2967-4881-acfc-108c81a3a8a1.jpg', '19487', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/dc49130f-2967-4881-acfc-108c81a3a8a1.jpg', '1', '2019-04-25 23:04:57', '2019-04-25 23:04:57');
INSERT INTO `uploadfile` VALUES ('20', '82ee2661-a076-463c-8d18-728f64498227.jpg', '19487', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/82ee2661-a076-463c-8d18-728f64498227.jpg', '1', '2019-04-25 23:04:57', '2019-04-25 23:04:57');
INSERT INTO `uploadfile` VALUES ('21', '05dbf064-dcfe-40b9-8f0a-708319c1a5ea.jpg', '71400', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/05dbf064-dcfe-40b9-8f0a-708319c1a5ea.jpg', '1', '2019-04-25 23:04:57', '2019-04-25 23:04:57');
INSERT INTO `uploadfile` VALUES ('22', 'a9944359-f6ad-4361-967a-ac471f1a8319.jpg', '19487', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/a9944359-f6ad-4361-967a-ac471f1a8319.jpg', '1', '2019-04-25 23:06:44', '2019-04-25 23:06:44');
INSERT INTO `uploadfile` VALUES ('23', '5e1815c6-b89f-4d7b-aa4f-cc9627db83f4.jpg', '71400', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/5e1815c6-b89f-4d7b-aa4f-cc9627db83f4.jpg', '1', '2019-04-25 23:06:55', '2019-04-25 23:06:55');
INSERT INTO `uploadfile` VALUES ('24', 'c943b00c-07c5-4a01-9c16-95600cc955f2.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/c943b00c-07c5-4a01-9c16-95600cc955f2.mp4', '1', '2019-04-25 23:08:36', '2019-04-25 23:08:36');
INSERT INTO `uploadfile` VALUES ('25', '7ef33100-561c-47e4-aa83-11368a6fd24f.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/7ef33100-561c-47e4-aa83-11368a6fd24f.mp4', '1', '2019-04-25 23:08:45', '2019-04-25 23:08:45');
INSERT INTO `uploadfile` VALUES ('26', '495d3091-ef59-4fcf-8e02-d7ecb53000fa.rmvb', '978859367', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/495d3091-ef59-4fcf-8e02-d7ecb53000fa.rmvb', '1', '2019-04-25 23:10:27', '2019-04-25 23:10:27');
INSERT INTO `uploadfile` VALUES ('27', '1d29a161-bb13-463f-ba08-dc8cf4e9a008.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/1d29a161-bb13-463f-ba08-dc8cf4e9a008.mp4', '1', '2019-04-25 23:11:56', '2019-04-25 23:11:56');
INSERT INTO `uploadfile` VALUES ('28', '770ef7d2-f5e0-4646-9ec8-8b47a879ed10.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/770ef7d2-f5e0-4646-9ec8-8b47a879ed10.mp4', '1', '2019-04-25 23:12:06', '2019-04-25 23:12:06');
INSERT INTO `uploadfile` VALUES ('29', '8cce34b3-30d8-45f9-8ac6-037595e08166.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/8cce34b3-30d8-45f9-8ac6-037595e08166.mp4', '1', '2019-04-25 23:12:28', '2019-04-25 23:12:28');
INSERT INTO `uploadfile` VALUES ('30', 'ef5413a8-ef95-4295-95b1-bf631388e7d3.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/ef5413a8-ef95-4295-95b1-bf631388e7d3.mp4', '1', '2019-04-25 23:14:22', '2019-04-25 23:14:22');
INSERT INTO `uploadfile` VALUES ('31', '879a1d98-0bb7-486e-9b04-ac01a785895c.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/879a1d98-0bb7-486e-9b04-ac01a785895c.mp4', '1', '2019-04-25 23:15:57', '2019-04-25 23:15:57');
INSERT INTO `uploadfile` VALUES ('32', 'c919fbcf-bbbc-4333-99c0-2bc894870a39.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/c919fbcf-bbbc-4333-99c0-2bc894870a39.mp4', '1', '2019-04-25 23:19:30', '2019-04-25 23:19:30');
INSERT INTO `uploadfile` VALUES ('33', '6669e7f8-5001-43ce-ab76-b0f155dad40b.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/6669e7f8-5001-43ce-ab76-b0f155dad40b.mp4', '1', '2019-04-25 23:20:07', '2019-04-25 23:20:07');
INSERT INTO `uploadfile` VALUES ('34', '4fbd497a-d18d-4fb6-93d8-205d7d5ca9af.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/4fbd497a-d18d-4fb6-93d8-205d7d5ca9af.mp4', '1', '2019-04-25 23:20:12', '2019-04-25 23:20:12');
INSERT INTO `uploadfile` VALUES ('35', 'b46e1c1e-a89a-4449-a699-ec36cf28b010.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/b46e1c1e-a89a-4449-a699-ec36cf28b010.mp4', '1', '2019-04-25 23:21:58', '2019-04-25 23:21:58');
INSERT INTO `uploadfile` VALUES ('36', 'b41154db-7658-4fac-9eef-d552752a8278.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/b41154db-7658-4fac-9eef-d552752a8278.mp4', '1', '2019-04-25 23:22:15', '2019-04-25 23:22:15');
INSERT INTO `uploadfile` VALUES ('37', '60932729-f82d-4a99-b122-05bed2b31bd3.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/60932729-f82d-4a99-b122-05bed2b31bd3.mp4', '1', '2019-04-25 23:25:45', '2019-04-25 23:25:45');
INSERT INTO `uploadfile` VALUES ('38', '3e4ea1e6-ba42-4e2a-a61d-45ca4d4e0aa5.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/3e4ea1e6-ba42-4e2a-a61d-45ca4d4e0aa5.mp4', '1', '2019-04-25 23:25:51', '2019-04-25 23:25:51');
INSERT INTO `uploadfile` VALUES ('39', 'b40e494c-2c8b-4aba-a292-54cd1eb8da88.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/b40e494c-2c8b-4aba-a292-54cd1eb8da88.mp4', '1', '2019-04-27 20:34:27', '2019-04-27 20:34:27');
INSERT INTO `uploadfile` VALUES ('40', '44bbacf0-103f-4752-b3a2-7e2d03af28ee.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/44bbacf0-103f-4752-b3a2-7e2d03af28ee.mp4', '1', '2019-04-27 20:34:48', '2019-04-27 20:34:48');
INSERT INTO `uploadfile` VALUES ('41', '01c5a229-f376-4110-801d-8a71f3e75418.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/01c5a229-f376-4110-801d-8a71f3e75418.mp4', '1', '2019-04-27 20:39:03', '2019-04-27 20:39:03');
INSERT INTO `uploadfile` VALUES ('42', 'af8114e0-229f-48bc-9a15-6d5261a89b75.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/af8114e0-229f-48bc-9a15-6d5261a89b75.mp4', '1', '2019-04-27 20:39:41', '2019-04-27 20:39:41');
INSERT INTO `uploadfile` VALUES ('43', '909bc893-32d8-4a4c-a938-6963009bb7c4.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/909bc893-32d8-4a4c-a938-6963009bb7c4.mp4', '1', '2019-04-27 20:39:44', '2019-04-27 20:39:44');
INSERT INTO `uploadfile` VALUES ('44', '586b79b5-505c-4ae4-9a15-c07eaee6456c.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/586b79b5-505c-4ae4-9a15-c07eaee6456c.mp4', '1', '2019-04-27 20:49:21', '2019-04-27 20:49:21');
INSERT INTO `uploadfile` VALUES ('45', 'b2c23b8a-e206-4e62-a532-7e7c218615cc.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/b2c23b8a-e206-4e62-a532-7e7c218615cc.mp4', '1', '2019-04-27 20:49:38', '2019-04-27 20:49:38');
INSERT INTO `uploadfile` VALUES ('46', '5382967f-d083-4c61-97cd-a9f369be13ca.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/5382967f-d083-4c61-97cd-a9f369be13ca.mp4', '1', '2019-04-27 20:50:27', '2019-04-27 20:50:27');
INSERT INTO `uploadfile` VALUES ('47', '450db6bc-9fbd-4061-81a3-0007d5046fd0.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/450db6bc-9fbd-4061-81a3-0007d5046fd0.mp4', '1', '2019-04-27 20:50:52', '2019-04-27 20:50:52');
INSERT INTO `uploadfile` VALUES ('48', '059361c5-27d2-4c81-8699-59471e99fcea.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/059361c5-27d2-4c81-8699-59471e99fcea.mp4', '1', '2019-04-27 20:51:05', '2019-04-27 20:51:05');
INSERT INTO `uploadfile` VALUES ('49', 'a0faae13-e8fd-46d2-a16f-f2f0dddc5002.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/a0faae13-e8fd-46d2-a16f-f2f0dddc5002.mp4', '1', '2019-04-27 20:51:53', '2019-04-27 20:51:53');
INSERT INTO `uploadfile` VALUES ('50', 'de5980e3-bf49-4f38-9556-8958ff3bfa73.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/de5980e3-bf49-4f38-9556-8958ff3bfa73.mp4', '1', '2019-04-27 20:54:05', '2019-04-27 20:54:05');
INSERT INTO `uploadfile` VALUES ('51', '7a677411-3c2d-4e24-ab78-271d2c4d2063.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/7a677411-3c2d-4e24-ab78-271d2c4d2063.mp4', '1', '2019-04-27 20:54:27', '2019-04-27 20:54:27');
INSERT INTO `uploadfile` VALUES ('52', 'b86c0606-3039-418b-a59d-cf9f17d63d6d.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/b86c0606-3039-418b-a59d-cf9f17d63d6d.mp4', '1', '2019-04-27 20:54:59', '2019-04-27 20:54:59');
INSERT INTO `uploadfile` VALUES ('53', 'a05b362c-9a03-4251-b046-0a6ec5b30ec7.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/a05b362c-9a03-4251-b046-0a6ec5b30ec7.mp4', '1', '2019-04-27 20:55:08', '2019-04-27 20:55:08');
INSERT INTO `uploadfile` VALUES ('54', 'b28a44ba-1ca3-46c6-8120-0be4dcede8c0.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/b28a44ba-1ca3-46c6-8120-0be4dcede8c0.mp4', '1', '2019-04-27 20:56:20', '2019-04-27 20:56:20');
INSERT INTO `uploadfile` VALUES ('55', '94af9f65-de04-431e-afbb-b1925999281c.rmvb', '978859367', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/94af9f65-de04-431e-afbb-b1925999281c.rmvb', '1', '2019-04-27 20:57:00', '2019-04-27 20:57:00');
INSERT INTO `uploadfile` VALUES ('56', '4d292803-12f7-4c85-a110-b8aa9324371b.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/4d292803-12f7-4c85-a110-b8aa9324371b.mp4', '1', '2019-04-27 20:58:00', '2019-04-27 20:58:00');
INSERT INTO `uploadfile` VALUES ('57', 'ae018f4d-a658-4ea0-8ace-157c0bfd0165.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/ae018f4d-a658-4ea0-8ace-157c0bfd0165.mp4', '1', '2019-04-27 20:59:45', '2019-04-27 20:59:45');
INSERT INTO `uploadfile` VALUES ('58', '60dfbed5-33f3-4a12-af6b-a170895abbb1.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/60dfbed5-33f3-4a12-af6b-a170895abbb1.mp4', '1', '2019-04-27 21:01:34', '2019-04-27 21:01:34');
INSERT INTO `uploadfile` VALUES ('59', '5abfd8f0-b223-482f-9274-f93ebc8961ab.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/5abfd8f0-b223-482f-9274-f93ebc8961ab.mp4', '1', '2019-04-27 21:02:48', '2019-04-27 21:02:48');
INSERT INTO `uploadfile` VALUES ('60', 'cb33b58d-5fdc-46e7-9830-fbc414f53f9b.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/cb33b58d-5fdc-46e7-9830-fbc414f53f9b.mp4', '1', '2019-04-27 21:03:46', '2019-04-27 21:03:46');
INSERT INTO `uploadfile` VALUES ('61', '607e1fc1-debd-457f-bc06-32296ea09fc5.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/607e1fc1-debd-457f-bc06-32296ea09fc5.mp4', '1', '2019-04-27 21:06:27', '2019-04-27 21:06:27');
INSERT INTO `uploadfile` VALUES ('62', '4731b45d-c3a8-484a-a28f-763b004696fa.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/4731b45d-c3a8-484a-a28f-763b004696fa.mp4', '1', '2019-04-27 21:06:46', '2019-04-27 21:06:46');
INSERT INTO `uploadfile` VALUES ('63', '021ab1ee-430e-4309-986b-d96653063881.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/021ab1ee-430e-4309-986b-d96653063881.mp4', '1', '2019-04-27 21:06:49', '2019-04-27 21:06:49');
INSERT INTO `uploadfile` VALUES ('64', '3e984abf-5b74-4724-921c-a152cf7c40e5.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/3e984abf-5b74-4724-921c-a152cf7c40e5.mp4', '1', '2019-04-27 21:10:13', '2019-04-27 21:10:13');
INSERT INTO `uploadfile` VALUES ('65', '4a33c5be-42dd-44a2-b368-41ab896792bd.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/4a33c5be-42dd-44a2-b368-41ab896792bd.mp4', '1', '2019-04-27 21:10:38', '2019-04-27 21:10:38');
INSERT INTO `uploadfile` VALUES ('66', '30bcf1d4-fa45-42be-8ac6-0f72a9e20584.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/30bcf1d4-fa45-42be-8ac6-0f72a9e20584.mp4', '1', '2019-04-27 21:12:02', '2019-04-27 21:12:02');
INSERT INTO `uploadfile` VALUES ('67', 'b7119f89-4d7a-4e6f-969d-f170fc54475d.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/b7119f89-4d7a-4e6f-969d-f170fc54475d.mp4', '1', '2019-04-27 21:13:55', '2019-04-27 21:13:55');
INSERT INTO `uploadfile` VALUES ('68', '80268348-0f59-4a4d-b161-dab5e0b5bad0.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/80268348-0f59-4a4d-b161-dab5e0b5bad0.mp4', '1', '2019-04-27 21:15:24', '2019-04-27 21:15:24');
INSERT INTO `uploadfile` VALUES ('69', '244fd240-f336-4d38-bb55-c1471f1a5613.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/244fd240-f336-4d38-bb55-c1471f1a5613.mp4', '1', '2019-04-27 21:15:35', '2019-04-27 21:15:35');
INSERT INTO `uploadfile` VALUES ('70', 'a45076ca-cec7-4ffa-9e7a-a6536d8b6670.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/a45076ca-cec7-4ffa-9e7a-a6536d8b6670.mp4', '1', '2019-04-27 21:20:59', '2019-04-27 21:20:59');
INSERT INTO `uploadfile` VALUES ('71', '48bb2eaf-fab2-4bfa-8837-2c15fe0179f4.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/48bb2eaf-fab2-4bfa-8837-2c15fe0179f4.mp4', '1', '2019-04-27 21:21:26', '2019-04-27 21:21:26');
INSERT INTO `uploadfile` VALUES ('72', 'a11b43b3-c7f7-49bb-9c91-ffaa2dd9bdeb.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/a11b43b3-c7f7-49bb-9c91-ffaa2dd9bdeb.mp4', '1', '2019-04-27 21:21:31', '2019-04-27 21:21:31');
INSERT INTO `uploadfile` VALUES ('73', 'eb055668-32dd-4f98-b891-40400419a0a7.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/eb055668-32dd-4f98-b891-40400419a0a7.mp4', '1', '2019-04-27 21:24:13', '2019-04-27 21:24:13');
INSERT INTO `uploadfile` VALUES ('74', '5c81484a-64d2-4528-9aba-1ccaa9a12af6.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/5c81484a-64d2-4528-9aba-1ccaa9a12af6.mp4', '1', '2019-04-27 21:24:52', '2019-04-27 21:24:52');
INSERT INTO `uploadfile` VALUES ('75', '197e5570-8106-42b2-a26d-1b2d04507147.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/197e5570-8106-42b2-a26d-1b2d04507147.mp4', '1', '2019-04-27 21:27:27', '2019-04-27 21:27:27');
INSERT INTO `uploadfile` VALUES ('76', '7cf3af40-6c56-44f1-80d1-24997d6bf145.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/7cf3af40-6c56-44f1-80d1-24997d6bf145.mp4', '1', '2019-04-27 21:27:46', '2019-04-27 21:27:46');
INSERT INTO `uploadfile` VALUES ('77', 'ce0131cc-35b3-450c-9678-cd2f9fac7ae7.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/ce0131cc-35b3-450c-9678-cd2f9fac7ae7.mp4', '1', '2019-04-27 21:28:47', '2019-04-27 21:28:47');
INSERT INTO `uploadfile` VALUES ('78', '9992377f-6406-44e5-b71d-097660f25a30.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/9992377f-6406-44e5-b71d-097660f25a30.mp4', '1', '2019-04-27 21:33:31', '2019-04-27 21:33:31');
INSERT INTO `uploadfile` VALUES ('79', '46baea3d-a802-4879-b2f8-11fb4cd1966e.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/46baea3d-a802-4879-b2f8-11fb4cd1966e.mp4', '1', '2019-04-27 21:36:16', '2019-04-27 21:36:16');
INSERT INTO `uploadfile` VALUES ('80', 'e886b209-0474-4c52-b955-46fa257296b9.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/e886b209-0474-4c52-b955-46fa257296b9.mp4', '1', '2019-04-27 21:39:57', '2019-04-27 21:39:57');
INSERT INTO `uploadfile` VALUES ('81', '141b614b-3300-4fb8-acd0-3c1f4cee25f5.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/141b614b-3300-4fb8-acd0-3c1f4cee25f5.mp4', '1', '2019-04-27 21:40:04', '2019-04-27 21:40:04');
INSERT INTO `uploadfile` VALUES ('82', '138548af-4644-4ed3-b5e0-ea013d9408f7.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/138548af-4644-4ed3-b5e0-ea013d9408f7.mp4', '1', '2019-04-27 21:43:48', '2019-04-27 21:43:48');
INSERT INTO `uploadfile` VALUES ('83', '54d89d49-aaf7-4c4b-859e-51b85576995a.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/54d89d49-aaf7-4c4b-859e-51b85576995a.mp4', '1', '2019-04-27 21:45:15', '2019-04-27 21:45:15');
INSERT INTO `uploadfile` VALUES ('84', '20e67425-13c5-4cd4-a4dd-4721d7cde32a.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/20e67425-13c5-4cd4-a4dd-4721d7cde32a.mp4', '1', '2019-04-27 21:47:09', '2019-04-27 21:47:09');
INSERT INTO `uploadfile` VALUES ('85', '516f275e-1c82-40c2-b9bb-5de79ef6e504.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/516f275e-1c82-40c2-b9bb-5de79ef6e504.mp4', '1', '2019-04-27 21:47:45', '2019-04-27 21:47:45');
INSERT INTO `uploadfile` VALUES ('86', '3e852aa1-5024-4930-a979-2609eb7ddae8.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/3e852aa1-5024-4930-a979-2609eb7ddae8.mp4', '1', '2019-04-27 21:47:55', '2019-04-27 21:47:55');
INSERT INTO `uploadfile` VALUES ('87', '2118b901-049f-49b4-a983-8de976ca3d3f.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/2118b901-049f-49b4-a983-8de976ca3d3f.mp4', '1', '2019-04-27 21:48:08', '2019-04-27 21:48:08');
INSERT INTO `uploadfile` VALUES ('88', 'a13586f9-4853-4bb9-9e50-c33b04a9eaa8.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/a13586f9-4853-4bb9-9e50-c33b04a9eaa8.mp4', '1', '2019-04-27 21:48:16', '2019-04-27 21:48:16');
INSERT INTO `uploadfile` VALUES ('89', 'de95713a-d2c0-4dcc-b83e-d419a66289b6.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/de95713a-d2c0-4dcc-b83e-d419a66289b6.mp4', '1', '2019-04-27 21:48:54', '2019-04-27 21:48:54');
INSERT INTO `uploadfile` VALUES ('90', 'f29d893e-7fa6-4701-a4da-04abb420e1fa.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/f29d893e-7fa6-4701-a4da-04abb420e1fa.mp4', '1', '2019-04-27 21:49:14', '2019-04-27 21:49:14');
INSERT INTO `uploadfile` VALUES ('91', '459c8d08-ef93-44cc-b9b8-633d75ddd004.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/459c8d08-ef93-44cc-b9b8-633d75ddd004.mp4', '1', '2019-04-27 21:51:56', '2019-04-27 21:51:56');
INSERT INTO `uploadfile` VALUES ('92', 'f1e6f7a3-33fe-451a-a611-e0cb7fd93561.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/f1e6f7a3-33fe-451a-a611-e0cb7fd93561.mp4', '1', '2019-04-27 22:02:07', '2019-04-27 22:02:07');
INSERT INTO `uploadfile` VALUES ('93', '463d3989-431f-4c8f-9674-8a8cc8ba42e3.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/463d3989-431f-4c8f-9674-8a8cc8ba42e3.mp4', '1', '2019-04-27 22:02:43', '2019-04-27 22:02:43');
INSERT INTO `uploadfile` VALUES ('94', '10fad074-3980-442e-a516-f384fddc0fce.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/10fad074-3980-442e-a516-f384fddc0fce.mp4', '1', '2019-04-27 22:03:14', '2019-04-27 22:03:14');
INSERT INTO `uploadfile` VALUES ('95', 'e492c579-cfdf-41b4-9f4a-4033ef35ba1f.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/e492c579-cfdf-41b4-9f4a-4033ef35ba1f.mp4', '1', '2019-04-27 22:04:02', '2019-04-27 22:04:02');
INSERT INTO `uploadfile` VALUES ('96', '195babb9-84be-422f-9023-aaee5ebe31dd.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/195babb9-84be-422f-9023-aaee5ebe31dd.mp4', '1', '2019-04-27 22:05:44', '2019-04-27 22:05:44');
INSERT INTO `uploadfile` VALUES ('97', '2a814023-df8d-43c7-9828-9af674c90c23.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/2a814023-df8d-43c7-9828-9af674c90c23.mp4', '1', '2019-04-27 22:05:57', '2019-04-27 22:05:57');
INSERT INTO `uploadfile` VALUES ('98', '6581d414-be66-4c06-9424-9e8067c1313d.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/6581d414-be66-4c06-9424-9e8067c1313d.mp4', '1', '2019-04-27 22:07:16', '2019-04-27 22:07:16');
INSERT INTO `uploadfile` VALUES ('99', 'e674d46f-f6d3-4e9b-be5f-95046ea0ea83.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/e674d46f-f6d3-4e9b-be5f-95046ea0ea83.mp4', '1', '2019-04-27 22:14:37', '2019-04-27 22:14:37');
INSERT INTO `uploadfile` VALUES ('100', 'c857c43c-e1d4-4b6d-8bec-a00b5d95f270.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/c857c43c-e1d4-4b6d-8bec-a00b5d95f270.mp4', '1', '2019-04-27 22:14:55', '2019-04-27 22:14:55');
INSERT INTO `uploadfile` VALUES ('101', '8075271f-ecd2-495e-92c5-81301f51eb29.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/8075271f-ecd2-495e-92c5-81301f51eb29.mp4', '1', '2019-04-27 22:15:19', '2019-04-27 22:15:19');
INSERT INTO `uploadfile` VALUES ('102', '3c2587f8-c99d-422b-a829-b700c0409eb5.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/3c2587f8-c99d-422b-a829-b700c0409eb5.mp4', '1', '2019-04-27 22:16:01', '2019-04-27 22:16:01');
INSERT INTO `uploadfile` VALUES ('103', '54725475-a540-4477-8a51-81a6458177fe.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/54725475-a540-4477-8a51-81a6458177fe.mp4', '1', '2019-04-27 22:16:44', '2019-04-27 22:16:44');
INSERT INTO `uploadfile` VALUES ('104', '30c38ac4-8938-4cc7-8680-4632a0488b83.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/30c38ac4-8938-4cc7-8680-4632a0488b83.mp4', '1', '2019-04-27 22:16:58', '2019-04-27 22:16:58');
INSERT INTO `uploadfile` VALUES ('105', '6d4d2523-4fb2-4d3c-b220-cc25dd9b7d2d.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/6d4d2523-4fb2-4d3c-b220-cc25dd9b7d2d.mp4', '1', '2019-04-27 22:17:26', '2019-04-27 22:17:26');
INSERT INTO `uploadfile` VALUES ('106', 'b11c725a-63e0-49f1-80df-4955bf622ab9.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/b11c725a-63e0-49f1-80df-4955bf622ab9.mp4', '1', '2019-04-27 22:17:37', '2019-04-27 22:17:37');
INSERT INTO `uploadfile` VALUES ('107', '90eda8e3-11fe-4f72-b38e-457627892c95.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/90eda8e3-11fe-4f72-b38e-457627892c95.mp4', '1', '2019-04-27 22:18:12', '2019-04-27 22:18:12');
INSERT INTO `uploadfile` VALUES ('108', 'a1a3120e-a993-48b8-b618-0c0de623f084.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/a1a3120e-a993-48b8-b618-0c0de623f084.mp4', '1', '2019-04-27 22:23:40', '2019-04-27 22:23:40');
INSERT INTO `uploadfile` VALUES ('109', 'fbc3c649-c292-48f1-915f-b8368427c7e2.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/fbc3c649-c292-48f1-915f-b8368427c7e2.mp4', '1', '2019-04-27 22:26:31', '2019-04-27 22:26:31');
INSERT INTO `uploadfile` VALUES ('110', 'e88a8140-2ec9-4cf2-adfb-370baf0115b0.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/e88a8140-2ec9-4cf2-adfb-370baf0115b0.mp4', '1', '2019-04-27 22:27:02', '2019-04-27 22:27:02');
INSERT INTO `uploadfile` VALUES ('111', 'd69df963-e236-4d32-9023-2b297d2e6719.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/d69df963-e236-4d32-9023-2b297d2e6719.mp4', '1', '2019-04-27 22:27:29', '2019-04-27 22:27:29');
INSERT INTO `uploadfile` VALUES ('112', '23203245-60b7-4cf2-a2f0-191f95c53f5b.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/23203245-60b7-4cf2-a2f0-191f95c53f5b.mp4', '1', '2019-04-27 22:30:38', '2019-04-27 22:30:38');
INSERT INTO `uploadfile` VALUES ('113', 'd7502732-16df-4b7c-a915-411f1dc8364c.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/d7502732-16df-4b7c-a915-411f1dc8364c.mp4', '1', '2019-04-27 22:30:55', '2019-04-27 22:30:55');
INSERT INTO `uploadfile` VALUES ('114', '6a8e2db9-03d7-4ad0-b297-5d55d86d22b8.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/6a8e2db9-03d7-4ad0-b297-5d55d86d22b8.mp4', '1', '2019-04-28 21:34:41', '2019-04-28 21:34:41');
INSERT INTO `uploadfile` VALUES ('115', '568cffa3-ec20-45ef-8f94-bd318bcb954b.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/568cffa3-ec20-45ef-8f94-bd318bcb954b.mp4', '1', '2019-04-28 21:34:48', '2019-04-28 21:34:48');
INSERT INTO `uploadfile` VALUES ('116', '9602b1f3-de66-46ab-a31e-9b6895e9eae7.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/9602b1f3-de66-46ab-a31e-9b6895e9eae7.mp4', '1', '2019-04-28 21:35:40', '2019-04-28 21:35:40');
INSERT INTO `uploadfile` VALUES ('117', '72c5417a-b850-4e81-b0a0-2525487e4aec.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/72c5417a-b850-4e81-b0a0-2525487e4aec.mp4', '1', '2019-04-28 21:36:26', '2019-04-28 21:36:26');
INSERT INTO `uploadfile` VALUES ('118', 'ec2bb44d-593e-45e4-864c-2e413c567f06.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/ec2bb44d-593e-45e4-864c-2e413c567f06.mp4', '1', '2019-04-28 21:36:43', '2019-04-28 21:36:43');
INSERT INTO `uploadfile` VALUES ('119', '05bf7e92-e0fc-4535-ae10-d799d5514aeb.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/05bf7e92-e0fc-4535-ae10-d799d5514aeb.mp4', '1', '2019-04-28 21:37:13', '2019-04-28 21:37:13');
INSERT INTO `uploadfile` VALUES ('120', 'e886558d-03fb-4524-9e00-66d09f76b89e.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/e886558d-03fb-4524-9e00-66d09f76b89e.mp4', '1', '2019-04-28 21:37:23', '2019-04-28 21:37:23');
INSERT INTO `uploadfile` VALUES ('121', '85f92af5-8604-4abb-9b5c-b6258c6e4a97.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/85f92af5-8604-4abb-9b5c-b6258c6e4a97.mp4', '1', '2019-04-28 21:37:27', '2019-04-28 21:37:27');
INSERT INTO `uploadfile` VALUES ('122', 'be30b4d1-98a9-4bbe-bd55-773d9efc6968.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/be30b4d1-98a9-4bbe-bd55-773d9efc6968.mp4', '1', '2019-04-28 21:37:31', '2019-04-28 21:37:31');
INSERT INTO `uploadfile` VALUES ('123', 'ea604364-7e9f-478b-9c04-6f86b55dfc25.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/ea604364-7e9f-478b-9c04-6f86b55dfc25.mp4', '1', '2019-04-28 21:38:54', '2019-04-28 21:38:54');
INSERT INTO `uploadfile` VALUES ('124', '99fd2876-3e99-42c3-b547-6756b961ea22.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/99fd2876-3e99-42c3-b547-6756b961ea22.mp4', '1', '2019-04-28 21:38:58', '2019-04-28 21:38:58');
INSERT INTO `uploadfile` VALUES ('125', 'cb873581-5d46-4b15-8dd1-eb6f62649cdc.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/cb873581-5d46-4b15-8dd1-eb6f62649cdc.mp4', '1', '2019-04-28 21:39:43', '2019-04-28 21:39:43');
INSERT INTO `uploadfile` VALUES ('126', 'e20558b7-669c-44b7-a97c-ea0fcc33dec8.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/e20558b7-669c-44b7-a97c-ea0fcc33dec8.mp4', '1', '2019-04-28 21:40:05', '2019-04-28 21:40:05');
INSERT INTO `uploadfile` VALUES ('127', '05bb9963-d955-4747-96af-3a675a55eaa4.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/05bb9963-d955-4747-96af-3a675a55eaa4.mp4', '1', '2019-04-28 21:41:39', '2019-04-28 21:41:39');
INSERT INTO `uploadfile` VALUES ('128', 'e4f3c00a-e5c4-462a-9115-f26400b8f82e.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/e4f3c00a-e5c4-462a-9115-f26400b8f82e.mp4', '1', '2019-04-28 21:41:52', '2019-04-28 21:41:52');
INSERT INTO `uploadfile` VALUES ('129', 'd2cbb996-efd3-4a37-9e08-abab98ea1a36.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/d2cbb996-efd3-4a37-9e08-abab98ea1a36.mp4', '1', '2019-04-28 21:41:56', '2019-04-28 21:41:56');
INSERT INTO `uploadfile` VALUES ('130', '8116cde7-62e6-40e7-8e06-15d03484db89.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/8116cde7-62e6-40e7-8e06-15d03484db89.mp4', '1', '2019-04-28 21:43:06', '2019-04-28 21:43:06');
INSERT INTO `uploadfile` VALUES ('131', 'fe963fc6-2531-437a-951b-e4268f6fa524.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/fe963fc6-2531-437a-951b-e4268f6fa524.mp4', '1', '2019-04-28 21:46:02', '2019-04-28 21:46:02');
INSERT INTO `uploadfile` VALUES ('132', '05996854-7a20-40d3-ada7-806dc6fa0532.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/05996854-7a20-40d3-ada7-806dc6fa0532.mp4', '1', '2019-04-28 21:46:50', '2019-04-28 21:46:50');
INSERT INTO `uploadfile` VALUES ('133', '05420439-5e38-4f2c-89e7-e70192d49392.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/05420439-5e38-4f2c-89e7-e70192d49392.mp4', '1', '2019-04-28 21:47:28', '2019-04-28 21:47:28');
INSERT INTO `uploadfile` VALUES ('134', '7d502645-c91e-4ff3-9108-e70cd4e6b4fd.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/7d502645-c91e-4ff3-9108-e70cd4e6b4fd.mp4', '1', '2019-04-28 21:48:20', '2019-04-28 21:48:20');
INSERT INTO `uploadfile` VALUES ('135', 'ce0c30fc-dddc-4464-ab88-cd2cedc13e14.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/ce0c30fc-dddc-4464-ab88-cd2cedc13e14.mp4', '1', '2019-04-28 21:50:01', '2019-04-28 21:50:01');
INSERT INTO `uploadfile` VALUES ('136', '024dc5e0-8a54-49fc-9ca7-ac7e5a4e2510.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/024dc5e0-8a54-49fc-9ca7-ac7e5a4e2510.mp4', '1', '2019-04-28 21:51:31', '2019-04-28 21:51:31');
INSERT INTO `uploadfile` VALUES ('137', '63d71280-cf7c-4182-8526-96f9cb192264.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/63d71280-cf7c-4182-8526-96f9cb192264.mp4', '1', '2019-04-28 21:53:21', '2019-04-28 21:53:21');
INSERT INTO `uploadfile` VALUES ('138', 'af080362-1fb8-4669-a005-f78b800e1302.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/af080362-1fb8-4669-a005-f78b800e1302.mp4', '1', '2019-04-28 21:53:47', '2019-04-28 21:53:47');
INSERT INTO `uploadfile` VALUES ('139', 'd25def8d-4df3-4c35-a8e4-2233c15f8022.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/d25def8d-4df3-4c35-a8e4-2233c15f8022.mp4', '1', '2019-04-28 21:54:04', '2019-04-28 21:54:04');
INSERT INTO `uploadfile` VALUES ('140', '24a4b556-65c1-475d-9a52-c3b1c9f89ab8.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/24a4b556-65c1-475d-9a52-c3b1c9f89ab8.mp4', '1', '2019-04-28 21:55:06', '2019-04-28 21:55:06');
INSERT INTO `uploadfile` VALUES ('141', 'dc3dbf7e-a8d8-46b1-b6ec-294566b19f72.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/dc3dbf7e-a8d8-46b1-b6ec-294566b19f72.mp4', '1', '2019-04-28 21:55:36', '2019-04-28 21:55:36');
INSERT INTO `uploadfile` VALUES ('142', '07a24418-0d25-4236-9f78-0405794e493d.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/07a24418-0d25-4236-9f78-0405794e493d.mp4', '1', '2019-04-28 21:56:16', '2019-04-28 21:56:16');
INSERT INTO `uploadfile` VALUES ('143', '0ac78211-2ab7-4d26-8e54-c1ee5dc93fab.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/0ac78211-2ab7-4d26-8e54-c1ee5dc93fab.mp4', '1', '2019-04-28 21:56:34', '2019-04-28 21:56:34');
INSERT INTO `uploadfile` VALUES ('144', 'cda996ea-e686-4b13-a81f-214f068f8f98.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/cda996ea-e686-4b13-a81f-214f068f8f98.mp4', '1', '2019-04-28 21:57:16', '2019-04-28 21:57:16');
INSERT INTO `uploadfile` VALUES ('145', '5b8038e2-9488-4449-8937-6eafee2d9792.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/5b8038e2-9488-4449-8937-6eafee2d9792.mp4', '1', '2019-04-28 21:57:37', '2019-04-28 21:57:37');
INSERT INTO `uploadfile` VALUES ('146', '55949dd2-7edd-4831-9cf2-2736207ee970.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/55949dd2-7edd-4831-9cf2-2736207ee970.mp4', '1', '2019-04-28 21:58:21', '2019-04-28 21:58:21');
INSERT INTO `uploadfile` VALUES ('147', 'ede1ac6e-407e-45e1-83dc-308f1c1e772a.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/ede1ac6e-407e-45e1-83dc-308f1c1e772a.mp4', '1', '2019-04-28 21:58:43', '2019-04-28 21:58:43');
INSERT INTO `uploadfile` VALUES ('148', '8dd62709-ab93-4bcd-8ee8-a09c4496e04b.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/8dd62709-ab93-4bcd-8ee8-a09c4496e04b.mp4', '1', '2019-04-28 21:59:27', '2019-04-28 21:59:27');
INSERT INTO `uploadfile` VALUES ('149', '2f4ad711-e8df-49c0-a700-5c70ec9adbda.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/2f4ad711-e8df-49c0-a700-5c70ec9adbda.mp4', '1', '2019-04-28 22:03:09', '2019-04-28 22:03:09');
INSERT INTO `uploadfile` VALUES ('150', '9ccdfdeb-226e-4830-b35a-92ca4ff17909.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/9ccdfdeb-226e-4830-b35a-92ca4ff17909.mp4', '1', '2019-04-28 22:03:28', '2019-04-28 22:03:28');
INSERT INTO `uploadfile` VALUES ('151', '14e41f73-bf17-4a96-a614-1e4286ee50df.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/14e41f73-bf17-4a96-a614-1e4286ee50df.mp4', '1', '2019-04-28 22:03:45', '2019-04-28 22:03:45');
INSERT INTO `uploadfile` VALUES ('152', '2fc603da-15d7-4de9-84d1-43f9aaeddcda.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/2fc603da-15d7-4de9-84d1-43f9aaeddcda.mp4', '1', '2019-04-28 22:04:14', '2019-04-28 22:04:14');
INSERT INTO `uploadfile` VALUES ('153', 'f437a75b-fbea-46d2-82f3-c246eefce4ea.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/f437a75b-fbea-46d2-82f3-c246eefce4ea.mp4', '1', '2019-04-28 22:04:43', '2019-04-28 22:04:43');
INSERT INTO `uploadfile` VALUES ('154', '3b0f3ae7-987c-4f3a-8a14-aaed8aaa422c.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/3b0f3ae7-987c-4f3a-8a14-aaed8aaa422c.mp4', '1', '2019-04-28 22:04:57', '2019-04-28 22:04:57');
INSERT INTO `uploadfile` VALUES ('155', '02b8b705-f422-4f36-813a-93f173f1dd17.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/02b8b705-f422-4f36-813a-93f173f1dd17.mp4', '1', '2019-04-28 22:05:22', '2019-04-28 22:05:22');
INSERT INTO `uploadfile` VALUES ('156', '371abd49-4c2b-465e-ae5f-4a5e1d7b031b.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/371abd49-4c2b-465e-ae5f-4a5e1d7b031b.mp4', '1', '2019-04-28 22:07:46', '2019-04-28 22:07:46');
INSERT INTO `uploadfile` VALUES ('157', 'ef9e6451-d389-42b4-b3fc-cdd20cf3306d.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/ef9e6451-d389-42b4-b3fc-cdd20cf3306d.mp4', '1', '2019-04-28 22:09:52', '2019-04-28 22:09:52');
INSERT INTO `uploadfile` VALUES ('158', '30e22174-a8da-4413-a93d-6a04fb18df8b.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/30e22174-a8da-4413-a93d-6a04fb18df8b.mp4', '1', '2019-04-28 22:10:17', '2019-04-28 22:10:17');
INSERT INTO `uploadfile` VALUES ('159', '49a4b42a-37bb-41f8-852f-1c6f9d8d1c6d.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/49a4b42a-37bb-41f8-852f-1c6f9d8d1c6d.mp4', '1', '2019-04-28 22:10:45', '2019-04-28 22:10:45');
INSERT INTO `uploadfile` VALUES ('160', '6e7beff7-f92e-4b21-943f-d4f8278b9375.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/6e7beff7-f92e-4b21-943f-d4f8278b9375.mp4', '1', '2019-04-28 22:10:57', '2019-04-28 22:10:57');
INSERT INTO `uploadfile` VALUES ('161', '6d9be92b-def4-43a8-961d-ebc36ce85c76.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/6d9be92b-def4-43a8-961d-ebc36ce85c76.mp4', '1', '2019-04-28 22:11:30', '2019-04-28 22:11:30');
INSERT INTO `uploadfile` VALUES ('162', '21bf12a1-8a93-4cf7-8b34-b30cbd70974f.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/21bf12a1-8a93-4cf7-8b34-b30cbd70974f.mp4', '1', '2019-04-28 22:11:38', '2019-04-28 22:11:38');
INSERT INTO `uploadfile` VALUES ('163', 'd6690e2c-0c84-468b-9f44-303ce0c0500b.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/d6690e2c-0c84-468b-9f44-303ce0c0500b.mp4', '1', '2019-04-28 22:12:30', '2019-04-28 22:12:30');
INSERT INTO `uploadfile` VALUES ('164', '1b771210-7f0f-43ff-965c-db0ed4e78044.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/1b771210-7f0f-43ff-965c-db0ed4e78044.mp4', '1', '2019-04-28 22:14:26', '2019-04-28 22:14:26');
INSERT INTO `uploadfile` VALUES ('165', '75380a9f-c426-4a75-a0a9-b659e7e838e0.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/75380a9f-c426-4a75-a0a9-b659e7e838e0.mp4', '1', '2019-04-28 22:14:54', '2019-04-28 22:14:54');
INSERT INTO `uploadfile` VALUES ('166', 'a97506a4-4d11-49e3-b1c7-ae06eb7e7948.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/a97506a4-4d11-49e3-b1c7-ae06eb7e7948.mp4', '1', '2019-04-28 22:14:58', '2019-04-28 22:14:58');
INSERT INTO `uploadfile` VALUES ('167', '47e78b66-a58f-4dd6-bad5-21c255a4b784.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/47e78b66-a58f-4dd6-bad5-21c255a4b784.mp4', '1', '2019-04-28 22:15:09', '2019-04-28 22:15:09');
INSERT INTO `uploadfile` VALUES ('168', '722e0767-9cc1-44f0-9860-20d871ba1a12.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/722e0767-9cc1-44f0-9860-20d871ba1a12.mp4', '1', '2019-04-28 22:15:12', '2019-04-28 22:15:12');
INSERT INTO `uploadfile` VALUES ('169', 'd92e89af-acef-4704-84b2-7173b5c57c10.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/d92e89af-acef-4704-84b2-7173b5c57c10.mp4', '1', '2019-04-28 22:16:30', '2019-04-28 22:16:30');
INSERT INTO `uploadfile` VALUES ('170', '28609677-dbbf-40be-9e3d-ad4b906327a5.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/28609677-dbbf-40be-9e3d-ad4b906327a5.mp4', '1', '2019-04-28 22:16:36', '2019-04-28 22:16:36');
INSERT INTO `uploadfile` VALUES ('171', '6dd9508c-6c8b-4dee-b4a5-b8f060f6faea.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/6dd9508c-6c8b-4dee-b4a5-b8f060f6faea.mp4', '1', '2019-04-28 22:18:25', '2019-04-28 22:18:25');
INSERT INTO `uploadfile` VALUES ('172', '9e70295a-1657-43bf-b354-e0b6fcc5c7e5.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/9e70295a-1657-43bf-b354-e0b6fcc5c7e5.mp4', '1', '2019-04-28 22:19:18', '2019-04-28 22:19:18');
INSERT INTO `uploadfile` VALUES ('173', '5f287ee3-bf84-4b1c-aa47-e0eef58dccf3.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/5f287ee3-bf84-4b1c-aa47-e0eef58dccf3.mp4', '1', '2019-04-28 22:20:58', '2019-04-28 22:20:58');
INSERT INTO `uploadfile` VALUES ('174', 'a83561be-9fc6-4421-8390-27c322f8c591.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/a83561be-9fc6-4421-8390-27c322f8c591.mp4', '1', '2019-04-28 22:21:22', '2019-04-28 22:21:22');
INSERT INTO `uploadfile` VALUES ('175', '6dd828ed-30f8-4410-957c-b7f6d8af5520.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/6dd828ed-30f8-4410-957c-b7f6d8af5520.mp4', '1', '2019-04-28 22:22:08', '2019-04-28 22:22:08');
INSERT INTO `uploadfile` VALUES ('176', '8f900b90-7c24-453a-8b0d-90d4c4dff533.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/8f900b90-7c24-453a-8b0d-90d4c4dff533.mp4', '1', '2019-04-28 22:22:58', '2019-04-28 22:22:58');
INSERT INTO `uploadfile` VALUES ('177', 'a70e9756-b8fa-45af-9ece-aebcb0fe47d0.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/a70e9756-b8fa-45af-9ece-aebcb0fe47d0.mp4', '1', '2019-04-28 22:24:08', '2019-04-28 22:24:08');
INSERT INTO `uploadfile` VALUES ('178', 'bda49566-e005-4bbe-94c9-c5f97954baa8.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/bda49566-e005-4bbe-94c9-c5f97954baa8.mp4', '1', '2019-04-28 22:24:42', '2019-04-28 22:24:42');
INSERT INTO `uploadfile` VALUES ('179', '95f06d78-178d-4baf-a92a-4925e2f7228d.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/95f06d78-178d-4baf-a92a-4925e2f7228d.mp4', '1', '2019-04-28 22:25:08', '2019-04-28 22:25:08');
INSERT INTO `uploadfile` VALUES ('180', '045a93ed-5555-4e95-8d12-7626dac015e8.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/045a93ed-5555-4e95-8d12-7626dac015e8.mp4', '-1', '2019-04-28 22:25:33', '2019-04-28 22:25:35');
INSERT INTO `uploadfile` VALUES ('181', 'fe240ac2-c4c3-4c8d-87c3-45a1364e951d.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/fe240ac2-c4c3-4c8d-87c3-45a1364e951d.mp4', '-1', '2019-04-28 22:25:54', '2019-04-28 22:25:56');
INSERT INTO `uploadfile` VALUES ('182', 'e793908f-d076-4031-b28c-b8c98496d9d6.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/e793908f-d076-4031-b28c-b8c98496d9d6.mp4', '-1', '2019-04-28 22:26:12', '2019-04-28 22:26:13');
INSERT INTO `uploadfile` VALUES ('183', 'd39288c3-53ed-4f8b-9971-a3bfaa8a540e.rmvb', '978859367', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/d39288c3-53ed-4f8b-9971-a3bfaa8a540e.rmvb', '1', '2019-04-28 22:28:34', '2019-04-28 22:28:34');
INSERT INTO `uploadfile` VALUES ('184', '1672bc9e-260f-43c2-831d-744bda1f2277.mp4', '9356508', 'COURSE_BACKGROUND', 'D:/peoject/chengxuxiaoba/files/COURSE_BACKGROUND/1672bc9e-260f-43c2-831d-744bda1f2277.mp4', '1', '2019-04-28 22:37:48', '2019-04-28 22:37:48');

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
