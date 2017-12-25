/*
Navicat MySQL Data Transfer

Source Server         : aliyun
Source Server Version : 50715
Source Host           : rm-uf607sm2zgs0csj58o.mysql.rds.aliyuncs.com:3306
Source Database       : store

Target Server Type    : MYSQL
Target Server Version : 50715
File Encoding         : 65001

Date: 2017-12-18 09:45:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_browse_record
-- ----------------------------
DROP TABLE IF EXISTS `tb_browse_record`;
CREATE TABLE `tb_browse_record` (
  `id` int(19) NOT NULL AUTO_INCREMENT,
  `user_id` int(19) NOT NULL COMMENT '用户',
  `goods_id` int(19) NOT NULL COMMENT '商品',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `ind_browse_record_user` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户浏览记录';

-- ----------------------------
-- Records of tb_browse_record
-- ----------------------------

-- ----------------------------
-- Table structure for tb_category
-- ----------------------------
DROP TABLE IF EXISTS `tb_category`;
CREATE TABLE `tb_category` (
  `id` int(19) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '分类名称',
  `level` int(1) DEFAULT NULL COMMENT '级别（共三级）',
  `sort` int(2) DEFAULT NULL COMMENT '排序',
  `parent_id` int(19) DEFAULT NULL COMMENT '上级',
  `creator_id` int(19) DEFAULT NULL,
  `created_time` timestamp NULL DEFAULT NULL,
  `last_operator_id` int(19) DEFAULT NULL,
  `last_operated_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uni_tb_category_name` (`name`) USING BTREE,
  KEY `ind_tb_category_level` (`level`) USING BTREE,
  KEY `ind_tb_category_parent_id` (`parent_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品分类';

-- ----------------------------
-- Records of tb_category
-- ----------------------------

-- ----------------------------
-- Table structure for tb_goods_carousel
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_carousel`;
CREATE TABLE `tb_goods_carousel` (
  `id` int(19) NOT NULL AUTO_INCREMENT,
  `type` int(1) NOT NULL COMMENT '类别（1:轮播图；2:热门推荐 ;3:大类推荐）',
  `goods_id` int(19) NOT NULL COMMENT '商品id',
  `goods_url` varchar(100) NOT NULL COMMENT '商品地址链接',
  `img` varchar(50) NOT NULL COMMENT '图片名称',
  `sort` int(1) NOT NULL COMMENT '排序',
  `begin_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '开始时间',
  `end_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '结束时间',
  `status` int(1) NOT NULL COMMENT '状态',
  `creator_id` int(19) NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_operator_id` int(19) NOT NULL,
  `last_operated_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `ind_goods_carousel_type` (`type`) USING BTREE,
  KEY `ind_goods_carousel_status` (`status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品推荐';

-- ----------------------------
-- Records of tb_goods_carousel
-- ----------------------------

-- ----------------------------
-- Table structure for tb_goods_cart
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_cart`;
CREATE TABLE `tb_goods_cart` (
  `id` int(19) NOT NULL AUTO_INCREMENT,
  `user_id` int(19) NOT NULL COMMENT '用户',
  `goods_id` int(19) NOT NULL COMMENT '商品',
  `num` int(10) NOT NULL COMMENT '数量',
  `begin_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `ind_goods_cart_user` (`user_id`) USING BTREE,
  KEY `ind_goods_cart_goods` (`goods_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车';

-- ----------------------------
-- Records of tb_goods_cart
-- ----------------------------

-- ----------------------------
-- Table structure for tb_goods_category
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_category`;
CREATE TABLE `tb_goods_category` (
  `id` int(19) NOT NULL AUTO_INCREMENT,
  `goods_id` int(19) DEFAULT NULL,
  `category_id` int(19) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_goods_category
-- ----------------------------

-- ----------------------------
-- Table structure for tb_goods_collection
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_collection`;
CREATE TABLE `tb_goods_collection` (
  `id` int(19) NOT NULL AUTO_INCREMENT,
  `user_id` int(19) NOT NULL COMMENT '用户',
  `goods_id` int(19) NOT NULL COMMENT '商品',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '收藏时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_goods_collection
-- ----------------------------

-- ----------------------------
-- Table structure for tb_goods_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_info`;
CREATE TABLE `tb_goods_info` (
  `id` int(19) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(100) DEFAULT NULL COMMENT '商品名称',
  `simple_intro` varchar(50) NOT NULL COMMENT '简单描述',
  `stock` int(10) DEFAULT NULL COMMENT '库存',
  `saled` int(10) DEFAULT NULL COMMENT '已售',
  `price` double(20,2) DEFAULT NULL COMMENT '单价',
  `goods_intro` varchar(1000) DEFAULT NULL COMMENT '商品介绍',
  `goods_detail` varchar(1000) DEFAULT NULL,
  `small_img_1` varchar(50) DEFAULT NULL COMMENT '小图展示1名称',
  `small_img_2` varchar(50) DEFAULT NULL COMMENT '小图展示2',
  `small_img_3` varchar(50) DEFAULT NULL COMMENT '小图展示3',
  `small_img_4` varchar(50) DEFAULT NULL COMMENT '小图展示4',
  `small_img_5` varchar(50) DEFAULT NULL COMMENT '小图展示5',
  `big_img_1` varchar(50) DEFAULT NULL COMMENT '大图展示1',
  `big_img_2` varchar(50) DEFAULT NULL COMMENT '大图展示2',
  `big_img_3` varchar(50) DEFAULT NULL COMMENT '大图展示3',
  `big_img_4` varchar(50) DEFAULT NULL COMMENT '大图展示4',
  `big_img_5` varchar(50) DEFAULT NULL COMMENT '大图展示5',
  `is_child` int(1) DEFAULT NULL COMMENT '是否有分类(0:没有;1:有)',
  `status` int(1) DEFAULT NULL COMMENT '状态',
  `level` int(1) DEFAULT NULL COMMENT '级别(1:大类;2:小类)',
  `model_value_id_1` int(19) DEFAULT NULL COMMENT '型号一',
  `model_value_id_2` int(19) DEFAULT NULL COMMENT '型号二',
  `model_value_id_3` int(19) DEFAULT NULL COMMENT '型号三',
  `creator_id` int(19) DEFAULT NULL,
  `created_time` timestamp NULL DEFAULT NULL,
  `last_operator_id` int(19) DEFAULT NULL,
  `last_operated_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_tb_goods_name` (`goods_name`) USING BTREE,
  KEY `ind_tb_goods_status` (`status`) USING BTREE,
  KEY `ind_tb_goods_default_id` (`is_child`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品基础信息';

-- ----------------------------
-- Records of tb_goods_info
-- ----------------------------

-- ----------------------------
-- Table structure for tb_goods_model
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_model`;
CREATE TABLE `tb_goods_model` (
  `id` int(19) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  PRIMARY KEY (`id`),
  KEY `uni_goods_model_name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品型号（颜色、版本等）';

-- ----------------------------
-- Records of tb_goods_model
-- ----------------------------

-- ----------------------------
-- Table structure for tb_goods_model_value
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_model_value`;
CREATE TABLE `tb_goods_model_value` (
  `id` int(19) NOT NULL AUTO_INCREMENT,
  `goods_id` int(19) DEFAULT NULL COMMENT '商品',
  `model_id` int(19) DEFAULT NULL COMMENT '型号',
  `model_value` varchar(100) DEFAULT NULL COMMENT '型号值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品具体型号';

-- ----------------------------
-- Records of tb_goods_model_value
-- ----------------------------

-- ----------------------------
-- Table structure for tb_message_code
-- ----------------------------
DROP TABLE IF EXISTS `tb_message_code`;
CREATE TABLE `tb_message_code` (
  `id` int(19) NOT NULL AUTO_INCREMENT,
  `mobile` varchar(20) DEFAULT NULL COMMENT '手机号',
  `type` int(1) DEFAULT NULL COMMENT '类型（1:注册;2:忘记密码）',
  `code` varchar(10) DEFAULT NULL COMMENT '验证码',
  `begin_time` timestamp NULL DEFAULT NULL COMMENT '开始时间',
  `end_time` timestamp NULL DEFAULT NULL COMMENT '过期时间',
  `status` int(1) DEFAULT NULL COMMENT '状态(0:失效;1:生效)',
  PRIMARY KEY (`id`),
  KEY `ind_tb_validate_mobile` (`mobile`) USING BTREE,
  KEY `ind_tb_validate_type` (`type`) USING BTREE,
  KEY `ind_tb_validate_status` (`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='验证码存储表';

-- ----------------------------
-- Records of tb_message_code
-- ----------------------------

-- ----------------------------
-- Table structure for tb_order_address
-- ----------------------------
DROP TABLE IF EXISTS `tb_order_address`;
CREATE TABLE `tb_order_address` (
  `id` int(19) NOT NULL AUTO_INCREMENT,
  `order_id` int(19) DEFAULT NULL COMMENT '订单',
  `address_id` int(19) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  KEY `ind_order_address_order_id` (`order_id`) USING BTREE,
  KEY `ind_order_address_id` (`address_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单用户地址';

-- ----------------------------
-- Records of tb_order_address
-- ----------------------------

-- ----------------------------
-- Table structure for tb_order_goods
-- ----------------------------
DROP TABLE IF EXISTS `tb_order_goods`;
CREATE TABLE `tb_order_goods` (
  `id` int(19) NOT NULL AUTO_INCREMENT,
  `order_id` int(19) DEFAULT NULL COMMENT '订单',
  `goods_id` int(19) DEFAULT NULL COMMENT '商品',
  `goods_num` int(10) DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`id`),
  KEY `ind_order_goods_id` (`goods_id`) USING BTREE,
  KEY `ind_order_goods_order` (`order_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单商品表';

-- ----------------------------
-- Records of tb_order_goods
-- ----------------------------

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(19) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) DEFAULT NULL COMMENT '用户名称',
  `user_mobile` varchar(20) DEFAULT NULL COMMENT '手机号',
  `user_pwd` varchar(100) DEFAULT NULL COMMENT '密码（加密）',
  `reg_time` timestamp NULL DEFAULT NULL COMMENT '注册时间',
  `error_num` int(1) DEFAULT NULL COMMENT '剩余可错误次数',
  `frozen_time` timestamp NULL DEFAULT NULL COMMENT '冻结到期时间',
  `last_login_time` timestamp NULL DEFAULT NULL COMMENT '最近登录时间',
  `last_error_time` timestamp NULL DEFAULT NULL COMMENT '上次错误时间',
  `status` int(1) DEFAULT NULL COMMENT '状态（0:失效;1:生效）',
  `open_id` varchar(100) DEFAULT NULL COMMENT '微信关联id',
  `creator_id` int(19) DEFAULT NULL,
  `created_time` timestamp NULL DEFAULT NULL,
  `last_operator_id` int(19) DEFAULT NULL,
  `last_operated_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_tb_user_mobile` (`user_mobile`) USING BTREE,
  UNIQUE KEY `uni_tb_user_open_id` (`open_id`) USING BTREE,
  KEY `ind_tb_user_status` (`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户基础表';

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('3', null, '15205155720', 'e10adc3949ba59abbe56e057f20f883e', '2017-07-05 16:27:32', '5', null, null, null, '1', null, null, null, null, null);

-- ----------------------------
-- Table structure for tb_user_address
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_address`;
CREATE TABLE `tb_user_address` (
  `id` int(19) NOT NULL AUTO_INCREMENT,
  `user_id` int(19) NOT NULL COMMENT '用户',
  `province_id` int(19) NOT NULL COMMENT '省',
  `province_name` varchar(50) NOT NULL,
  `city_id` int(19) NOT NULL COMMENT '市',
  `city_name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL COMMENT '详细地址',
  `zip` varchar(10) NOT NULL COMMENT '邮编',
  `receiver` varchar(50) NOT NULL COMMENT '收货人',
  `tel` varchar(20) NOT NULL COMMENT '电话',
  `is_default` tinyint(1) NOT NULL COMMENT '是否默认(0:否;1:是)',
  PRIMARY KEY (`id`),
  KEY `ind_address_user_id` (`user_id`) USING BTREE,
  KEY `ind_address_is_default` (`is_default`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户地址';

-- ----------------------------
-- Records of tb_user_address
-- ----------------------------

-- ----------------------------
-- Table structure for tb_user_order
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_order`;
CREATE TABLE `tb_user_order` (
  `id` int(19) NOT NULL AUTO_INCREMENT,
  `order_no` varchar(50) DEFAULT NULL COMMENT '订单号',
  `user_id` int(19) DEFAULT NULL COMMENT '用户',
  `amount` double(20,2) DEFAULT NULL COMMENT '订单金额',
  `begin_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `notify_url` varchar(100) DEFAULT NULL COMMENT '支付通知地址',
  `out_trade_no` varchar(50) DEFAULT NULL COMMENT '外部交易号',
  `pay_type` varchar(50) DEFAULT NULL COMMENT '支付方式',
  `pay_amount` double(20,2) DEFAULT NULL COMMENT '支付金额',
  `end_time` timestamp NULL DEFAULT NULL COMMENT '支付时间',
  `status` int(1) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_user_order_no` (`order_no`) USING BTREE,
  KEY `ind_user_order_user_id` (`user_id`) USING BTREE,
  KEY `ind_user_order_status` (`status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户订单表';

-- ----------------------------
-- Records of tb_user_order
-- ----------------------------
