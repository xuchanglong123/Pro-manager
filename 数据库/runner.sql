/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50506
Source Host           : localhost:3306
Source Database       : runner

Target Server Type    : MYSQL
Target Server Version : 50506
File Encoding         : 65001

Date: 2018-11-28 23:46:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `chatrecord`
-- ----------------------------
DROP TABLE IF EXISTS `chatrecord`;
CREATE TABLE `chatrecord` (
  `id` int(11) NOT NULL,
  `times` datetime NOT NULL,
  `content` varchar(1024) NOT NULL,
  `uId` varchar(50) NOT NULL,
  `talkerId` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chatrecord
-- ----------------------------

-- ----------------------------
-- Table structure for `commentaryrecord`
-- ----------------------------
DROP TABLE IF EXISTS `commentaryrecord`;
CREATE TABLE `commentaryrecord` (
  `id` int(11) NOT NULL,
  `comment` varchar(256) DEFAULT NULL,
  `uId` varchar(50) NOT NULL,
  `commentatorId` varchar(256) NOT NULL,
  `score` int(11) DEFAULT NULL,
  `times` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of commentaryrecord
-- ----------------------------

-- ----------------------------
-- Table structure for `information`
-- ----------------------------
DROP TABLE IF EXISTS `information`;
CREATE TABLE `information` (
  `uId` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `sex` varchar(50) DEFAULT NULL,
  `age` varchar(50) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `schoolNumber` varchar(50) DEFAULT NULL,
  `major` varchar(50) DEFAULT NULL,
  `class` varchar(50) DEFAULT NULL,
  `grade` varchar(50) DEFAULT NULL,
  `college` varchar(50) DEFAULT NULL,
  `school` varchar(50) DEFAULT NULL,
  `positiveImage` varchar(256) DEFAULT NULL,
  `oppositeImage` varchar(256) DEFAULT NULL,
  `aBalance` decimal(10,0) DEFAULT NULL,
  `bankNumber` varchar(50) DEFAULT NULL,
  `deposit` decimal(10,0) DEFAULT NULL,
  `creditScore` int(11) DEFAULT NULL,
  `paymentPassword` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`uId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of information
-- ----------------------------

-- ----------------------------
-- Table structure for `notices`
-- ----------------------------
DROP TABLE IF EXISTS `notices`;
CREATE TABLE `notices` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `times` datetime NOT NULL,
  `content` varchar(256) NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notices
-- ----------------------------

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `orderNumber` int(11) NOT NULL DEFAULT '0',
  `money` decimal(10,0) NOT NULL,
  `receipt` varchar(256) NOT NULL,
  `delivery` varchar(256) NOT NULL,
  `remarks` varchar(256) DEFAULT NULL,
  `invoiceTime` datetime NOT NULL,
  `receiptTime` datetime NOT NULL,
  `successTime` datetime DEFAULT NULL,
  `status` int(10) NOT NULL,
  `deliveryTime` datetime DEFAULT NULL,
  `invoiceId` varchar(50) NOT NULL,
  `receiptId` varchar(50) NOT NULL,
  `size` int(11) NOT NULL,
  `coordinate` varchar(50) NOT NULL,
  PRIMARY KEY (`orderNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for `schools`
-- ----------------------------
DROP TABLE IF EXISTS `schools`;
CREATE TABLE `schools` (
  `parentId` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`parentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of schools
-- ----------------------------

-- ----------------------------
-- Table structure for `station`
-- ----------------------------
DROP TABLE IF EXISTS `station`;
CREATE TABLE `station` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `coordinate` varchar(50) NOT NULL,
  `sId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of station
-- ----------------------------

-- ----------------------------
-- Table structure for `systemnotices`
-- ----------------------------
DROP TABLE IF EXISTS `systemnotices`;
CREATE TABLE `systemnotices` (
  `id` int(11) NOT NULL,
  `times` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `content` varchar(50) NOT NULL,
  `uId` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of systemnotices
-- ----------------------------

-- ----------------------------
-- Table structure for `transactionrecord`
-- ----------------------------
DROP TABLE IF EXISTS `transactionrecord`;
CREATE TABLE `transactionrecord` (
  `id` int(11) NOT NULL,
  `money` decimal(10,0) NOT NULL,
  `status` int(11) NOT NULL,
  `uId` varchar(50) NOT NULL,
  `times` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of transactionrecord
-- ----------------------------

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` varchar(50) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `headPortrait` varchar(256) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `QQ` varchar(50) DEFAULT NULL,
  `weChat` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
