/*
 Navicat Premium Data Transfer

 Source Server         : samsara
 Source Server Type    : MySQL
 Source Server Version : 50732
 Source Host           : localhost:3306
 Source Schema         : restaurant

 Target Server Type    : MySQL
 Target Server Version : 50732
 File Encoding         : 65001

 Date: 18/12/2020 17:04:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for re_authority
-- ----------------------------
DROP TABLE IF EXISTS `re_authority`;
CREATE TABLE `re_authority`  (
  `authorityid` int(11) NOT NULL,
  `aname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `acover` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`authorityid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of re_authority
-- ----------------------------
INSERT INTO `re_authority` VALUES (0, '管理员权限', '1,2,3,4,5,6');
INSERT INTO `re_authority` VALUES (1, '店长权限', '1,2,3,4,5,6');

-- ----------------------------
-- Table structure for re_employee
-- ----------------------------
DROP TABLE IF EXISTS `re_employee`;
CREATE TABLE `re_employee`  (
  `eid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `eroleid` int(10) NULL DEFAULT NULL,
  `eusername` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `epassword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `esex` int(1) NULL DEFAULT NULL,
  `ephone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `estate` int(1) NULL DEFAULT NULL,
  `deptid` int(10) NULL DEFAULT NULL,
  `salary` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`eid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of re_employee
-- ----------------------------
INSERT INTO `re_employee` VALUES ('1', '王二', 100, 'samsara', 'qq123', 1, '18283827038', 1, 1, '5000');
INSERT INTO `re_employee` VALUES ('96bb9382-f252-4947-b07b-6c98cc023509', '聂小倩', 1, 'niexiaoqian', 'qq123', 1, '8209961', 1, 2, '2000');

-- ----------------------------
-- Table structure for re_menu
-- ----------------------------
DROP TABLE IF EXISTS `re_menu`;
CREATE TABLE `re_menu`  (
  `mid` int(10) NOT NULL AUTO_INCREMENT,
  `mname` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mmateria` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mpirce` int(10) NULL DEFAULT NULL,
  `mnumber` int(10) NULL DEFAULT NULL,
  `mimageurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '展示图片',
  `mischara` int(10) NULL DEFAULT NULL COMMENT '是否是特色菜',
  `mtype` int(2) NULL DEFAULT NULL COMMENT '菜品种类奶茶，小吃...',
  PRIMARY KEY (`mid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for re_menutpye
-- ----------------------------
DROP TABLE IF EXISTS `re_menutpye`;
CREATE TABLE `re_menutpye`  (
  `mtid` int(10) NOT NULL,
  `mtname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mpid` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`mtid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for re_navigation
-- ----------------------------
DROP TABLE IF EXISTS `re_navigation`;
CREATE TABLE `re_navigation`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `itemname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pid` int(10) NOT NULL,
  `dirlevel` int(10) NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 604 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of re_navigation
-- ----------------------------
INSERT INTO `re_navigation` VALUES (100, '店铺首页', 0, 1, '/home');
INSERT INTO `re_navigation` VALUES (101, '店铺信息', 100, 2, '/home/info');
INSERT INTO `re_navigation` VALUES (200, '菜品管理', 0, 1, '/menu/home');
INSERT INTO `re_navigation` VALUES (201, '特色菜', 200, 2, '/menu/special');
INSERT INTO `re_navigation` VALUES (202, '快餐类', 200, 2, '/menu/fast');
INSERT INTO `re_navigation` VALUES (203, '面食类', 200, 2, '/menu/noodle');
INSERT INTO `re_navigation` VALUES (204, '小吃类', 200, 2, '/menu/snack');
INSERT INTO `re_navigation` VALUES (205, '饮料类', 200, 2, '/menu/drink');
INSERT INTO `re_navigation` VALUES (206, '菜品管理', 200, 2, '/menu/menumange');
INSERT INTO `re_navigation` VALUES (300, '订单管理', 0, 1, '/order/home');
INSERT INTO `re_navigation` VALUES (301, '已下单', 300, 2, '/order/ordered');
INSERT INTO `re_navigation` VALUES (302, '已完成', 300, 2, '/order/done');
INSERT INTO `re_navigation` VALUES (303, '总订单', 300, 2, '/order/total');
INSERT INTO `re_navigation` VALUES (400, '库存管理', 0, 1, '/store/home');
INSERT INTO `re_navigation` VALUES (401, '食材列表', 400, 2, '/store/materiallist');
INSERT INTO `re_navigation` VALUES (402, '饮料列表', 400, 2, '/store/drinklist');
INSERT INTO `re_navigation` VALUES (500, '店铺管理', 0, 1, '/shop/home');
INSERT INTO `re_navigation` VALUES (501, '用户管理', 500, 2, '/shop/user');
INSERT INTO `re_navigation` VALUES (502, '员工列表', 500, 2, '/shop/employeelist');
INSERT INTO `re_navigation` VALUES (503, '薪资管理', 500, 2, '/shop/salary');
INSERT INTO `re_navigation` VALUES (600, '报表分析', 0, 1, '/dataanalysis/home');
INSERT INTO `re_navigation` VALUES (601, '订单报表', 600, 2, '/dataanalysis/order');
INSERT INTO `re_navigation` VALUES (602, '库存报表', 600, 2, '/dataanalysis/store');
INSERT INTO `re_navigation` VALUES (603, '销量报表', 600, 2, '/dataanalysis/sell');

-- ----------------------------
-- Table structure for re_order
-- ----------------------------
DROP TABLE IF EXISTS `re_order`;
CREATE TABLE `re_order`  (
  `oid` int(20) NOT NULL AUTO_INCREMENT,
  `uid` int(20) NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createtime` datetime(0) NULL DEFAULT NULL,
  `finshtime` datetime(0) NULL DEFAULT NULL,
  `state` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`oid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for re_role
-- ----------------------------
DROP TABLE IF EXISTS `re_role`;
CREATE TABLE `re_role`  (
  `roleid` int(5) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `roleauthority` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`roleid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of re_role
-- ----------------------------
INSERT INTO `re_role` VALUES (0, '系统管理员', NULL);
INSERT INTO `re_role` VALUES (1, '店长', NULL);
INSERT INTO `re_role` VALUES (2, '仓库管理员', NULL);
INSERT INTO `re_role` VALUES (3, '厨师', NULL);
INSERT INTO `re_role` VALUES (4, '收银员', NULL);
INSERT INTO `re_role` VALUES (5, '服务员', NULL);

-- ----------------------------
-- Table structure for re_store
-- ----------------------------
DROP TABLE IF EXISTS `re_store`;
CREATE TABLE `re_store`  (
  `stroeid` int(10) NOT NULL,
  `stroename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stroenumber` int(10) NULL DEFAULT NULL,
  `stroetime` datetime(0) NULL DEFAULT NULL,
  `stroestate` int(1) NULL DEFAULT NULL,
  `storeman` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`stroeid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for re_user
-- ----------------------------
DROP TABLE IF EXISTS `re_user`;
CREATE TABLE `re_user`  (
  `uid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `roleid` int(5) NULL DEFAULT NULL,
  `phoen` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birth` datetime(0) NULL DEFAULT NULL,
  `gender` int(1) NULL DEFAULT NULL,
  `createtime` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of re_user
-- ----------------------------
INSERT INTO `re_user` VALUES ('1', '张店长', 'admin', '123456', 0, '18283827038', '2018662638@qq.com', '1999-04-09 10:16:51', 1, '2020-12-15 17:14:23');
INSERT INTO `re_user` VALUES ('d8b1b795-14f3-44b6-987c-34c985440f93', '伊利斯·逐星', 'samsara', '123456', 1, '8209961', 'ylt@123', '2020-12-15 09:29:05', 1, '2020-12-16 17:13:19');

SET FOREIGN_KEY_CHECKS = 1;
