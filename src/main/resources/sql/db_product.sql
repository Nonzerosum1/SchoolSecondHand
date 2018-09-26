/*
Navicat MySQL Data Transfer

Source Server         : My_con
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : db_product

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2018-09-26 11:01:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `proName` varchar(100) DEFAULT NULL COMMENT '商品名称',
  `proSellprice` float DEFAULT NULL,
  `proCostprice` float DEFAULT NULL,
  `proCondition` varchar(50) DEFAULT NULL COMMENT '商品类型',
  `proPicsrc` varchar(100) DEFAULT NULL COMMENT '商品描述',
  `proUserid` int(10) DEFAULT NULL,
  `tranStateid` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('2', '荣耀v10', '666', '2299', '非全新', 'images/images2/imagerongyao10.jpg', '1', '1');
INSERT INTO `product` VALUES ('3', '书架', '20', '120', '9成新', 'images/images2/imagehujia.jpg', '1', '1');

-- ----------------------------
-- Table structure for productindex
-- ----------------------------
DROP TABLE IF EXISTS `productindex`;
CREATE TABLE `productindex` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `picSrc` varchar(100) DEFAULT NULL,
  `maxPrice` float DEFAULT NULL,
  `hisRecos` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of productindex
-- ----------------------------
INSERT INTO `productindex` VALUES ('1', '苹果 iPhone X', 'images\\imageiphonex.jpg', '6130', '10');
INSERT INTO `productindex` VALUES ('2', '苹果 iPhone 8 Plus', 'images\\imageiphone8plus.jpg', '5365', '12');
INSERT INTO `productindex` VALUES ('3', '苹果 iPhone 8', 'images\\imageiphone8.jpg', '4430', '6');
INSERT INTO `productindex` VALUES ('4', '苹果 iPhone 7 Plus', 'images\\imageiphone7plus.jpg', '4085', '15');
INSERT INTO `productindex` VALUES ('5', '苹果 iPhone 7', 'images\\imageiphone7.jpg', '3175', '23');

-- ----------------------------
-- Table structure for prouser
-- ----------------------------
DROP TABLE IF EXISTS `prouser`;
CREATE TABLE `prouser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `trueName` varchar(60) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `faculty` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prouser
-- ----------------------------
INSERT INTO `prouser` VALUES ('1', 'Tom', '13978956665', '男', '数计学院', '123456');
INSERT INTO `prouser` VALUES ('2', 'Jack', '13855661234', '男', '理工学院', '123456');
INSERT INTO `prouser` VALUES ('3', 'Rose', '13942658866', '女', '外国语学院', '123456');
INSERT INTO `prouser` VALUES ('4', 'xiaoming', '17844569923', '男', '化工学院', '123456');

-- ----------------------------
-- Table structure for transtate
-- ----------------------------
DROP TABLE IF EXISTS `transtate`;
CREATE TABLE `transtate` (
  `id` int(20) NOT NULL,
  `state` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of transtate
-- ----------------------------
INSERT INTO `transtate` VALUES ('1', '未发布');
INSERT INTO `transtate` VALUES ('2', '已发布');

-- ----------------------------
-- Table structure for transtionproduct
-- ----------------------------
DROP TABLE IF EXISTS `transtionproduct`;
CREATE TABLE `transtionproduct` (
  `id` int(20) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `tpname` varchar(100) DEFAULT NULL,
  `tpsellprice` float DEFAULT NULL,
  `tpcostprice` float DEFAULT NULL,
  `tpcondition` varchar(50) DEFAULT NULL,
  `tppicsrc` varchar(100) DEFAULT NULL,
  `tpuserid` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tpuserid` (`tpuserid`) USING BTREE,
  CONSTRAINT `prouser_ibfk_1` FOREIGN KEY (`tpuserid`) REFERENCES `prouser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of transtionproduct
-- ----------------------------
INSERT INTO `transtionproduct` VALUES ('00000000000000000001', '电音（Danyin） DM-099 话筒 手持式 黑色 单插头', '30', '50', ' 非全新', 'images/images2/imageDanyin.jpg', '1');
INSERT INTO `transtionproduct` VALUES ('00000000000000000077', '书架', '20', '120', '9成新', 'images/images2/imagehujia.jpg', '1');
