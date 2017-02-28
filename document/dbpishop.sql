/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : dbpishop

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2017-02-28 16:16:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_activity_type
-- ----------------------------
DROP TABLE IF EXISTS `tb_activity_type`;
CREATE TABLE `tb_activity_type` (
  `act_type_id` bigint(19) NOT NULL AUTO_INCREMENT,
  `act_name` varchar(100) DEFAULT NULL COMMENT '活动名称',
  `act_description` varchar(50) DEFAULT NULL COMMENT '活动简介',
  `begin_time` timestamp NULL DEFAULT NULL COMMENT '活动开始时间',
  `end_time` timestamp NULL DEFAULT NULL COMMENT '活动结束时间',
  `total_sub` double(10,2) DEFAULT NULL COMMENT '总减免',
  `single_sub` double(10,2) DEFAULT NULL COMMENT '单个商品减免',
  `postage_all` tinyint(1) DEFAULT NULL COMMENT '是否免邮(0:否,1:是)',
  `is_to_all` tinyint(1) DEFAULT NULL COMMENT '是否面向整个商城(0:否;1:是）',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态(0:失效;1:生效）',
  `creator_id` bigint(19) DEFAULT NULL,
  `created_time` timestamp NULL DEFAULT NULL,
  `last_operator_id` bigint(19) DEFAULT NULL,
  `last_operated_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`act_type_id`),
  KEY `ind_activity_type_all` (`is_to_all`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='活动类别表';

-- ----------------------------
-- Table structure for tb_addr
-- ----------------------------
DROP TABLE IF EXISTS `tb_addr`;
CREATE TABLE `tb_addr` (
  `addr_id` int(19) NOT NULL AUTO_INCREMENT,
  `addr_level` int(1) NOT NULL,
  `addr_name` varchar(255) NOT NULL,
  `addr_name_en` varchar(255) NOT NULL,
  `belong_to_level` int(1) DEFAULT NULL,
  PRIMARY KEY (`addr_id`),
  KEY `pk_addr_id` (`addr_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4170 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_goods
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods`;
CREATE TABLE `tb_goods` (
  `goods_id` bigint(19) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) DEFAULT NULL COMMENT '商品编码',
  `goods_name` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `type_id` bigint(19) DEFAULT NULL COMMENT '商品所属类别',
  `brand_id` bigint(19) DEFAULT NULL COMMENT '商品品牌',
  `show_img_1` varchar(100) DEFAULT NULL COMMENT '商品展示图片1',
  `show_img_2` varchar(100) DEFAULT NULL COMMENT '商品展示图片2',
  `show_img_3` varchar(100) DEFAULT NULL COMMENT '商品展示图片3',
  `show_img_4` varchar(100) DEFAULT NULL COMMENT '商品展示图片4',
  `introduce_img` varchar(100) DEFAULT NULL COMMENT '商品详情介绍图片',
  `price` double(10,2) DEFAULT NULL COMMENT '商品价格',
  `stock` int(19) DEFAULT NULL COMMENT '库存',
  `creator_id` bigint(19) DEFAULT NULL,
  `created_time` timestamp NULL DEFAULT NULL,
  `last_operator_id` bigint(19) DEFAULT NULL,
  `last_operated_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`goods_id`),
  KEY `ind_goods_brand` (`brand_id`) USING BTREE,
  KEY `ind_goods_type` (`type_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品信息表';

-- ----------------------------
-- Table structure for tb_goods_activity
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_activity`;
CREATE TABLE `tb_goods_activity` (
  `goods_act_id` bigint(19) NOT NULL AUTO_INCREMENT,
  `act_type_id` bigint(19) DEFAULT NULL COMMENT '活动类型id',
  `goods_id` bigint(19) DEFAULT NULL COMMENT '商品id',
  PRIMARY KEY (`goods_act_id`),
  KEY `ind_goods_act_type` (`act_type_id`) USING BTREE,
  KEY `ind_goods_act_id` (`goods_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='活动-商品关联表';

-- ----------------------------
-- Table structure for tb_goods_brand
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_brand`;
CREATE TABLE `tb_goods_brand` (
  `brand_id` bigint(19) NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(100) DEFAULT NULL COMMENT '品牌名称',
  `brand_img` varchar(100) DEFAULT NULL COMMENT '品牌图片',
  `level` int(1) DEFAULT NULL COMMENT '级别（暂定1:奢侈品牌;2:好品牌;3:一般品牌）',
  `status` int(1) DEFAULT NULL COMMENT '状态（0:失效;1:生效）',
  `creator_id` bigint(19) DEFAULT NULL,
  `created_time` timestamp NULL DEFAULT NULL,
  `last_operator_id` bigint(19) DEFAULT NULL,
  `last_operated_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品品牌表';

-- ----------------------------
-- Table structure for tb_goods_cart
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_cart`;
CREATE TABLE `tb_goods_cart` (
  `cart_id` bigint(19) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(19) DEFAULT NULL COMMENT '用户id',
  `goods_id` bigint(19) DEFAULT NULL COMMENT '商品id',
  `goods_num` int(10) DEFAULT NULL COMMENT '商品个数',
  `created_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`cart_id`),
  KEY `ind_goods_cart_id` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';

-- ----------------------------
-- Table structure for tb_goods_comment
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_comment`;
CREATE TABLE `tb_goods_comment` (
  `comment_id` bigint(19) NOT NULL AUTO_INCREMENT,
  `goods_id` bigint(19) DEFAULT NULL COMMENT '商品id',
  `user_id` bigint(19) DEFAULT NULL COMMENT '用户id',
  `comment` varchar(255) DEFAULT NULL COMMENT '评论',
  `created_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`comment_id`),
  KEY `ind_goods_comment_id` (`goods_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品评论表';

-- ----------------------------
-- Table structure for tb_goods_type
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_type`;
CREATE TABLE `tb_goods_type` (
  `type_id` bigint(19) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '类别名称',
  `level` int(1) DEFAULT NULL COMMENT '级别（1/2/3）',
  `sort` int(1) DEFAULT NULL COMMENT '排序',
  `parent_id` bigint(19) DEFAULT NULL COMMENT '父id',
  `status` int(1) DEFAULT NULL COMMENT '状态（0:失效;1:生效）',
  `creator_id` bigint(19) DEFAULT NULL,
  `created_time` timestamp NULL DEFAULT NULL,
  `last_operator_id` bigint(19) DEFAULT NULL,
  `last_operated_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`type_id`),
  KEY `ind_goods_type_level` (`level`) USING BTREE,
  KEY `ind_goods_type_parent` (`parent_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品类别表';

-- ----------------------------
-- Table structure for tb_order
-- ----------------------------
DROP TABLE IF EXISTS `tb_order`;
CREATE TABLE `tb_order` (
  `order_id` bigint(19) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(19) DEFAULT NULL COMMENT '用户',
  `order_no` varchar(50) DEFAULT NULL COMMENT '订单流水号',
  `order_time` timestamp NULL DEFAULT NULL COMMENT '下单时间',
  `order_amount` double(10,2) DEFAULT NULL COMMENT '下单总额',
  `overdue_time` timestamp NULL DEFAULT NULL COMMENT '逾期时间',
  `pay_no` varchar(50) DEFAULT NULL COMMENT '支付平台流水号',
  `pay_time` timestamp NULL DEFAULT NULL COMMENT '支付时间',
  `pay_amount` double(10,2) DEFAULT NULL COMMENT '支付金额',
  `user_addr_id` bigint(19) DEFAULT NULL COMMENT '收货地址',
  `status` int(1) DEFAULT NULL COMMENT '状态(0:未支付;1:已支付;2:已失效)',
  PRIMARY KEY (`order_id`),
  KEY `ind_order_user_id` (`user_id`) USING BTREE,
  KEY `ind_order_status` (`status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户订单表';

-- ----------------------------
-- Table structure for tb_order_goods
-- ----------------------------
DROP TABLE IF EXISTS `tb_order_goods`;
CREATE TABLE `tb_order_goods` (
  `order_goods_id` bigint(19) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(19) DEFAULT NULL COMMENT '订单id',
  `goods_id` bigint(19) DEFAULT NULL COMMENT '商品id',
  `goods_num` int(10) DEFAULT NULL COMMENT '商品数量',
  PRIMARY KEY (`order_goods_id`),
  KEY `ind_order_goods_id` (`order_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单-商品关联表';

-- ----------------------------
-- Table structure for tb_recommend
-- ----------------------------
DROP TABLE IF EXISTS `tb_recommend`;
CREATE TABLE `tb_recommend` (
  `act_id` bigint(19) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '推荐名称',
  `type` int(1) DEFAULT NULL COMMENT '推荐类别(1:轮播图,2:热门推荐)',
  `image` varchar(255) DEFAULT NULL COMMENT '活动图片',
  `url` varchar(255) DEFAULT NULL COMMENT '图片关联地址',
  `goods_id` bigint(19) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL COMMENT '活动介绍',
  `creator_id` bigint(19) DEFAULT NULL,
  `created_time` timestamp NULL DEFAULT NULL,
  `last_operator_id` bigint(19) DEFAULT NULL,
  `last_operated_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`act_id`),
  KEY `ind_recommend_type` (`type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='推荐商品表';

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
-- Table structure for tb_type_brand
-- ----------------------------
DROP TABLE IF EXISTS `tb_type_brand`;
CREATE TABLE `tb_type_brand` (
  `type_brand_id` bigint(19) NOT NULL AUTO_INCREMENT,
  `type_id` bigint(19) DEFAULT NULL COMMENT '类别id',
  `brand_id` bigint(19) DEFAULT NULL COMMENT '品牌id',
  PRIMARY KEY (`type_brand_id`),
  KEY `ind_type_brand_id` (`type_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品分类-品牌关系表';

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
-- Table structure for tb_user_addr
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_addr`;
CREATE TABLE `tb_user_addr` (
  `user_addr_id` bigint(19) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(19) DEFAULT NULL COMMENT '用户',
  `addressee` varchar(50) DEFAULT NULL COMMENT '收件人',
  `recipient_phone` varchar(20) DEFAULT NULL COMMENT '收件人手机号',
  `reci_province_id` bigint(19) DEFAULT NULL COMMENT '省份id',
  `reci_province_name` varchar(50) DEFAULT NULL COMMENT '省份名称',
  `reci_city_id` bigint(19) DEFAULT NULL COMMENT '城市id',
  `reci_city_name` varchar(50) DEFAULT NULL COMMENT '城市名称',
  `detail_addr` varchar(100) DEFAULT NULL COMMENT '详细地址',
  `is_selected` tinyint(1) DEFAULT NULL COMMENT '是否默认地址',
  `created_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_addr_id`),
  KEY `ind_user_addr_id` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户收货地址表';

-- ----------------------------
-- Table structure for tb_user_browse
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_browse`;
CREATE TABLE `tb_user_browse` (
  `browse_id` bigint(19) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(19) DEFAULT NULL COMMENT '用户id',
  `goods_id` bigint(19) DEFAULT NULL COMMENT '商品id',
  `created_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`browse_id`),
  KEY `ind_user_browse_id` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户浏览记录表';

-- ----------------------------
-- Table structure for tb_user_collection
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_collection`;
CREATE TABLE `tb_user_collection` (
  `collection_id` bigint(19) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(19) DEFAULT NULL COMMENT '用户id',
  `goods_id` bigint(19) DEFAULT NULL COMMENT '商品id',
  `created_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`collection_id`),
  KEY `ind_user_collection_id` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户收藏表';
