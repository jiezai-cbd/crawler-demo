/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80020
 Source Host           : localhost:3306
 Source Schema         : crawler

 Target Server Type    : MySQL
 Target Server Version : 80020
 File Encoding         : 65001

 Date: 06/06/2020 15:38:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for jd_item
-- ----------------------------
DROP TABLE IF EXISTS `jd_item`;
CREATE TABLE `jd_item`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `spu` bigint(0) NULL DEFAULT NULL COMMENT '商品集合id',
  `sku` bigint(0) NULL DEFAULT NULL COMMENT '商品最小品类单元id',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品标题',
  `price` bigint(0) NULL DEFAULT NULL COMMENT '商品价格',
  `pic` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品图片',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品详情地址',
  `created` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `updated` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sku`(`sku`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '京东商品表' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
