/*
Navicat MySQL Data Transfer

Source Server         : 本地（Mysql）
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : springboot-mybatis

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-04-18 10:46:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_class
-- ----------------------------
DROP TABLE IF EXISTS `t_class`;
CREATE TABLE `t_class` (
  `id` varchar(50) NOT NULL COMMENT '班级表主键',
  `name` varchar(4) DEFAULT NULL COMMENT '班级名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_class
-- ----------------------------
INSERT INTO `t_class` VALUES ('1', '一班2');
INSERT INTO `t_class` VALUES ('2', '二班');
INSERT INTO `t_class` VALUES ('3', '三班');
INSERT INTO `t_class` VALUES ('4', '四班');
