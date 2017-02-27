/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : dbpishop

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2017-02-27 17:46:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_goods_brand
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_brand`;
CREATE TABLE `tb_goods_brand` (
  `brand_id` bigint(19) NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(100) DEFAULT NULL,
  `level` int(1) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `creator_id` bigint(19) DEFAULT NULL,
  `created_time` timestamp NULL DEFAULT NULL,
  `last_operator_id` bigint(19) DEFAULT NULL,
  `last_operated_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_goods_brand
-- ----------------------------

-- ----------------------------
-- Table structure for tb_goods_type
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_type`;
CREATE TABLE `tb_goods_type` (
  `type_id` bigint(19) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `level` int(1) DEFAULT NULL,
  `sort` int(1) DEFAULT NULL,
  `parent_id` bigint(19) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `creator_id` bigint(19) DEFAULT NULL,
  `created_time` timestamp NULL DEFAULT NULL,
  `last_operator_id` bigint(19) DEFAULT NULL,
  `last_operated_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_goods_type
-- ----------------------------

-- ----------------------------
-- Table structure for tb_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_role`;
CREATE TABLE `tb_role` (
  `role_id` bigint(19) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  `integral` int(10) DEFAULT NULL COMMENT '积分要求',
  `status` int(1) DEFAULT NULL COMMENT '状态（0:失效;1:生效）',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色信息';

-- ----------------------------
-- Records of tb_role
-- ----------------------------

-- ----------------------------
-- Table structure for tb_type_brand
-- ----------------------------
DROP TABLE IF EXISTS `tb_type_brand`;
CREATE TABLE `tb_type_brand` (
  `type_brand_id` bigint(19) NOT NULL AUTO_INCREMENT,
  `type_id` bigint(19) DEFAULT NULL,
  `brand_id` bigint(19) DEFAULT NULL,
  PRIMARY KEY (`type_brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_type_brand
-- ----------------------------

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `user_id` bigint(19) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) DEFAULT NULL COMMENT '用户名',
  `mobile` varchar(20) DEFAULT NULL COMMENT '手机号',
  `password` varchar(50) DEFAULT NULL COMMENT '密码',
  `appid` varchar(50) DEFAULT NULL,
  `appkey` varchar(50) DEFAULT NULL,
  `open_id` varchar(100) DEFAULT NULL,
  `last_login_time` timestamp NULL DEFAULT NULL COMMENT '最近登录时间',
  `reg_time` timestamp NULL DEFAULT NULL COMMENT '注册时间',
  `status` int(1) DEFAULT NULL COMMENT '状态（0:失效;1:生效）',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `uni_tb_user_name` (`user_name`) USING BTREE,
  UNIQUE KEY `uni_tb_user_mobile` (`mobile`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户基本信息';

-- ----------------------------
-- Records of tb_user
-- ----------------------------
