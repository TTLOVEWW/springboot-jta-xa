/*
Navicat MySQL Data Transfer

Source Server         : 本地（Mysql）
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : springboot-mybatis2

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-04-18 10:46:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_teacher
-- ----------------------------
DROP TABLE IF EXISTS `t_teacher`;
CREATE TABLE `t_teacher` (
  `id` varchar(50) NOT NULL COMMENT '班主任id',
  `name` varchar(4) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_teacher
-- ----------------------------
INSERT INTO `t_teacher` VALUES ('1', '教师一7');
INSERT INTO `t_teacher` VALUES ('2', '教师二');
INSERT INTO `t_teacher` VALUES ('3', '教师三');

-- ----------------------------
-- Procedure structure for testPro
-- ----------------------------
DROP PROCEDURE IF EXISTS `testPro`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `testPro`(IN `in_id` varchar(32),IN `in_name` varchar(4))
BEGIN
	DECLARE t_error INTEGER DEFAULT 0;
	DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET t_error=1;  
	
	START TRANSACTION;
	INSERT INTO `springboot-mybatis`.t_class(id,name) VALUES(in_id,in_name);
	
  INSERT INTO `springboot-mybatis2`.t_teacher(id,name) VALUES(in_id,"657");
	IF t_error = 1 THEN 
		ROLLBACK;
	ELSE 
		COMMIT;
	END IF;
END
;;
DELIMITER ;
