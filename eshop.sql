/*
 Navicat Premium Data Transfer

 Source Server         : Java项目
 Source Server Type    : MySQL
 Source Server Version : 80020
 Source Host           : localhost:3306
 Source Schema         : eshop

 Target Server Type    : MySQL
 Target Server Version : 80020
 File Encoding         : 65001

 Date: 17/06/2020 17:37:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', 'tuShOfiBrA8+br7ENrMS8A==');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '手工艺品');
INSERT INTO `category` VALUES (2, '熟食品');
INSERT INTO `category` VALUES (3, '蔬菜');
INSERT INTO `category` VALUES (4, '水果');

-- ----------------------------
-- Table structure for indent
-- ----------------------------
DROP TABLE IF EXISTS `indent`;
CREATE TABLE `indent`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `total` float NULL DEFAULT NULL COMMENT '总价',
  `amount` int(0) NULL DEFAULT NULL COMMENT '商品总数',
  `status` tinyint(0) NULL DEFAULT 1 COMMENT '订单状态(1未付款/2已付款/3已发货/4已完成)',
  `paytype` tinyint(0) NULL DEFAULT 0 COMMENT '支付方式 (1微信/2支付宝/3货到付款)',
  `systime` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '下单时间',
  `user_id` int(0) NULL DEFAULT NULL COMMENT '下单用户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for items
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `price` float NULL DEFAULT NULL COMMENT '购买时价格',
  `amount` int(0) NULL DEFAULT NULL COMMENT '数量',
  `indent_id` int(0) NULL DEFAULT NULL,
  `product_id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `cover` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '封面',
  `price` float NULL DEFAULT NULL COMMENT '价格',
  `intro` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '介绍',
  `stock` int(0) NULL DEFAULT NULL COMMENT '库存',
  `category_id` int(0) NULL DEFAULT NULL COMMENT '分类',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, '多汁大橙子', 'picture/20061712562.jpg', 16, '很多汁嗷', 50, 4);
INSERT INTO `product` VALUES (2, '苹果', 'picture/20061700423.jpg', 8, '红苹果', 88, 4);
INSERT INTO `product` VALUES (3, '大辣椒', 'picture/20061724097.jpg', 28, '火鸡面，大辣椒，一顿不吃心赤闹', 99, 3);
INSERT INTO `product` VALUES (4, '西瓜', 'picture/20061724806.jpg', 6, '好好吃的哦', 99, 4);
INSERT INTO `product` VALUES (5, '香蕉', 'picture/20061715194.jpg', 10, '大大大大大♂香蕉', 50, 4);
INSERT INTO `product` VALUES (6, '胡萝卜', 'picture/20061755946.jpg', 12, '佛罗勃', 32, 3);
INSERT INTO `product` VALUES (7, '农家大卤肉', 'picture/20061755442.jpg', 26, '超~香卤肉', 42, 2);
INSERT INTO `product` VALUES (8, '冻梨', 'picture/20061739344.jpg', 20, '东北特产大冻梨', 32, 4);
INSERT INTO `product` VALUES (9, '樱桃', 'picture/20061729484.jpg', 35, '没有吃到最后一口樱桃，就像没吃过生日蛋糕', 15, 4);
INSERT INTO `product` VALUES (10, '青菜', 'picture/20061752399.jpg', 7, '特邀扶贫地区产品', 99, 3);
INSERT INTO `product` VALUES (11, '芹菜', 'picture/20061752591.jpg', 12, '特邀扶贫地区产品', 13, 3);
INSERT INTO `product` VALUES (12, '干黑木耳', 'picture/20061730774.jpg', 50, '营养多多的野生黑木耳，选自深山处，特邀扶贫地区产品', 42, 3);
INSERT INTO `product` VALUES (13, '老！番！茄！', 'picture/20061713314.jpg', 8, '遇事不决老番茄，特邀扶贫地区产品', 99, 3);
INSERT INTO `product` VALUES (14, '二荆条辣椒', 'picture/20061740688.jpg', 523.87, '超辣，二荆条辣椒', 99, 3);
INSERT INTO `product` VALUES (15, '苦瓜', 'picture/20061741922.jpg', 8, '好吃的大苦瓜', 42, 3);
INSERT INTO `product` VALUES (16, '腊肉香肠', 'picture/20061759784.jpg', 45.82, '腊香肠，扶贫地区精选商品', 43, 2);
INSERT INTO `product` VALUES (17, '瓦楞纸小房子', 'picture/20061738897.jpg', 150, '特邀扶贫地区手工艺制品，详情请联系：GNBBBCX', 5, 1);

-- ----------------------------
-- Table structure for product_new
-- ----------------------------
DROP TABLE IF EXISTS `product_new`;
CREATE TABLE `product_new`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `product_id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_new
-- ----------------------------
INSERT INTO `product_new` VALUES (1, 11);
INSERT INTO `product_new` VALUES (2, 5);
INSERT INTO `product_new` VALUES (3, 8);
INSERT INTO `product_new` VALUES (4, 13);

-- ----------------------------
-- Table structure for product_sale
-- ----------------------------
DROP TABLE IF EXISTS `product_sale`;
CREATE TABLE `product_sale`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `product_id` int(0) NULL DEFAULT NULL,
  `discount` tinyint(0) NULL DEFAULT 100 COMMENT '折扣(x%)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_sale
-- ----------------------------
INSERT INTO `product_sale` VALUES (1, 2, 92);
INSERT INTO `product_sale` VALUES (2, 7, 82);
INSERT INTO `product_sale` VALUES (3, 10, 89);
INSERT INTO `product_sale` VALUES (5, 16, 95);

-- ----------------------------
-- Table structure for product_show
-- ----------------------------
DROP TABLE IF EXISTS `product_show`;
CREATE TABLE `product_show`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `product_id` int(0) NULL DEFAULT NULL,
  `showtext` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '展示图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_show
-- ----------------------------
INSERT INTO `product_show` VALUES (1, 17, '推荐理由');
INSERT INTO `product_show` VALUES (2, 4, '推荐理由');
INSERT INTO `product_show` VALUES (3, 1, '推荐理由');
INSERT INTO `product_show` VALUES (4, 6, '推荐理由');
INSERT INTO `product_show` VALUES (5, 7, '推荐理由');
INSERT INTO `product_show` VALUES (6, 9, '推荐理由');
INSERT INTO `product_show` VALUES (7, 12, '推荐理由');
INSERT INTO `product_show` VALUES (8, 16, '推荐理由');

-- ----------------------------
-- Table structure for shopcart
-- ----------------------------
DROP TABLE IF EXISTS `shopcart`;
CREATE TABLE `shopcart`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `amount` int(0) NULL DEFAULT NULL COMMENT '数量',
  `product_id` int(0) NULL DEFAULT NULL,
  `user_id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录密码',
  `payword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '支付密码',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, '1', 'iUOoOdMAl7FsB1Kig37hmg==', 'iUOoOdMAl7FsB1Kig37hmg==', '12312341234', '北京北京北京');

SET FOREIGN_KEY_CHECKS = 1;
