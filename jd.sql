/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : jd

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-11-10 19:28:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for jd_cards
-- ----------------------------
DROP TABLE IF EXISTS `jd_cards`;
CREATE TABLE `jd_cards` (
  `jid` int(12) NOT NULL AUTO_INCREMENT,
  `img_url` varchar(30) DEFAULT NULL,
  `title` varchar(22) DEFAULT NULL,
  PRIMARY KEY (`jid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jd_cards
-- ----------------------------
INSERT INTO `jd_cards` VALUES ('1', '/cardImg/jd_chaoshi.png.webp', '京东超市');
INSERT INTO `jd_cards` VALUES ('2', '/cardImg/jd_qqg.png.webp', '全球购');
INSERT INTO `jd_cards` VALUES ('3', '/cardImg/jd_shishang.png.webp', '京东时尚');
INSERT INTO `jd_cards` VALUES ('4', '/cardImg/jd_shengxian.png.webp', '京东生鲜');
INSERT INTO `jd_cards` VALUES ('5', '/cardImg/jd_daojia.png.webp', '京东到家');
INSERT INTO `jd_cards` VALUES ('6', '/cardImg/jd_chongzhi.png.webp', '充值缴费');
INSERT INTO `jd_cards` VALUES ('7', '/cardImg/jd_pg.png.webp', '9.9元拼');
INSERT INTO `jd_cards` VALUES ('8', '/cardImg/pingou.gif', '领券');
INSERT INTO `jd_cards` VALUES ('9', '/cardImg/jd_zhuanqian.png.webp', '赚钱');
INSERT INTO `jd_cards` VALUES ('10', '/cardImg/jd_quanbu.png.webp', '全部');

-- ----------------------------
-- Table structure for jd_category
-- ----------------------------
DROP TABLE IF EXISTS `jd_category`;
CREATE TABLE `jd_category` (
  `id` int(22) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(22) NOT NULL,
  `gmt_create` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `gmt_update` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jd_category
-- ----------------------------

-- ----------------------------
-- Table structure for jd_seckill
-- ----------------------------
DROP TABLE IF EXISTS `jd_seckill`;
CREATE TABLE `jd_seckill` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(22) DEFAULT NULL,
  `product_price_new` varchar(22) DEFAULT NULL,
  `product_price_old` varchar(22) DEFAULT NULL,
  `img_url` varchar(37) DEFAULT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jd_seckill
-- ----------------------------
INSERT INTO `jd_seckill` VALUES ('1', '成人用品', '39.5', '49.5', '/seckillImg/adult.jpg');
INSERT INTO `jd_seckill` VALUES ('2', '手表', '288', '899', '/seckillImg/watch.jpg');
INSERT INTO `jd_seckill` VALUES ('3', '手机', '799', '1199', '/seckillImg/phone.jpg');
INSERT INTO `jd_seckill` VALUES ('4', '鞋子', '199', '268', '/seckillImg/yifu.jpg');
INSERT INTO `jd_seckill` VALUES ('5', '衣服', '89', '128', '/seckillImg/shoe.jpg');
INSERT INTO `jd_seckill` VALUES ('6', '化妆瓶', '288', '399', '/seckillImg/shoe2.jpg');
INSERT INTO `jd_seckill` VALUES ('7', '电视', '2200', '3330', '/seckillImg/tv.jpg');

-- ----------------------------
-- Table structure for jd_swiper
-- ----------------------------
DROP TABLE IF EXISTS `jd_swiper`;
CREATE TABLE `jd_swiper` (
  `sid` int(5) NOT NULL AUTO_INCREMENT,
  `img_url` varchar(50) DEFAULT NULL,
  `title` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jd_swiper
-- ----------------------------
INSERT INTO `jd_swiper` VALUES ('1', 'swiperImg/01.jpg', '1');
INSERT INTO `jd_swiper` VALUES ('2', 'swiperImg/02.jpg', '2');
INSERT INTO `jd_swiper` VALUES ('3', 'swiperImg/03.jpg', '3');
INSERT INTO `jd_swiper` VALUES ('4', 'swiperImg/04.jpg', '4');
INSERT INTO `jd_swiper` VALUES ('5', 'swiperImg/05.jpg', '5');
INSERT INTO `jd_swiper` VALUES ('6', 'swiperImg/06.jpg', '6');

-- ----------------------------
-- Table structure for jd_users
-- ----------------------------
DROP TABLE IF EXISTS `jd_users`;
CREATE TABLE `jd_users` (
  `uid` int(22) NOT NULL AUTO_INCREMENT,
  `uname` varchar(22) NOT NULL,
  `upwd` varchar(22) NOT NULL,
  `gender` int(11) DEFAULT '1',
  `phone` int(33) DEFAULT NULL,
  `ctime` datetime DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jd_users
-- ----------------------------
INSERT INTO `jd_users` VALUES ('1', 'admin', '123', '1', '1365376281', '2018-11-07 21:32:41');
INSERT INTO `jd_users` VALUES ('2', 'huihui', '123', '1', '1323234566', '2018-11-07 21:33:49');
