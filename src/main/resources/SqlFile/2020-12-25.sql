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

 Date: 25/12/2020 09:01:10
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
INSERT INTO `re_employee` VALUES ('00c6f9b8-35c8-4378-accc-e4246d04d15a', '陈燕', 2, '41700951', 'TRQ711029', 2, '15700228190', 1, 2, '4000');
INSERT INTO `re_employee` VALUES ('09bd92bf-a097-4f95-b961-af1dfad2cdc9', '贾轶璞', 2, '41703727', 'BXY063335', 1, '15378517308', 1, 2, '4000');
INSERT INTO `re_employee` VALUES ('0a16ee28-111c-4b44-8433-95d35c780d95', '陈凯鑫', 5, '41703930', 'WYJ171184', 1, '15883084387', 1, 5, '4000');
INSERT INTO `re_employee` VALUES ('1', '王二', 100, 'samsara', 'qq123', 1, '18283827038', 1, 1, '5000');
INSERT INTO `re_employee` VALUES ('1223c801-7ab9-471c-a3f3-30a375adb899', '陈艺鑫', 5, '17863570781', '1998522jzy', 1, '15892383980', 1, 5, '4000');
INSERT INTO `re_employee` VALUES ('15eec4d8-31a6-40d2-85c8-9d23de603d10', '赵仕宇', 5, '13012348714', 'Tdx997622', 1, '15700228257', 1, 5, '4000');
INSERT INTO `re_employee` VALUES ('1f357672-4880-4512-8824-379fa0e4b597', '方曦铭', 3, '13547724755', 'sxl010319', 1, '13881109730', 1, 3, '5000');
INSERT INTO `re_employee` VALUES ('2bfb8d93-0d5d-4763-b3bb-2eed2ee71f83', '王涛', 4, '13882168579', 'YX290969', 1, '17726826155', 1, 4, '4000');
INSERT INTO `re_employee` VALUES ('35dc1229-62e5-4600-b049-0e5866841997', '杨子', 4, '15883084387', '123321yy?', 1, '15729632119', 0, 4, '4000');
INSERT INTO `re_employee` VALUES ('36f3fad3-3354-423a-99f4-1a9ee42b8b71', '杨帆', 5, '18615772429', 'Tgn3342824440', 1, '18224022492', 1, 5, '4000');
INSERT INTO `re_employee` VALUES ('3d9ce630-1b6f-49e7-9f63-14a6f92fc7d5', '任小萌', 4, '18501086390', 'YXF143595', 1, '17361163672', 1, 4, '4000');
INSERT INTO `re_employee` VALUES ('58ae39fe-87f9-428c-ba4a-b2184bd9220f', '李竣贻', 3, '41701715', 'Qq123456', 1, '13882168579', 1, 3, '5000');
INSERT INTO `re_employee` VALUES ('591bc60c-2114-4cda-bbd2-08277290db1a', '白湘嫄', 5, '15196255990', 'Myqqnumber.1', 1, '18282666620', 1, 5, '4000');
INSERT INTO `re_employee` VALUES ('5ce7511a-1391-4609-bc07-ddfb7a5ae506', '钟震东', 1, '41807602', '321jtymmd', 1, '13881108521', 1, 1, '10000');
INSERT INTO `re_employee` VALUES ('78b74786-fe24-4fa8-a1f3-4b1bb07bcf7e', '吴宏宇', 4, '18113626532', 'Ftzlamo0921lf.', 1, '16602380230', 1, 4, '4000');
INSERT INTO `re_employee` VALUES ('7c74fa8f-b869-4210-8195-9d7c2e29775f', '岳秋蓉', 3, '41804138', 'ZASDYM120987', 1, '13881364917', 1, 3, '5000');
INSERT INTO `re_employee` VALUES ('94de7cbb-9f48-4030-8fa2-7411bf50d379', '贾婷宇', 4, '18349673318', 'TPC772815', 1, '17863570781', 0, 4, '4000');
INSERT INTO `re_employee` VALUES ('96bb9382-f252-4947-b07b-6c98cc023509', '聂小倩', 1, 'niexiaoqian', 'qq123', 1, '8209961', 1, 2, '2000');
INSERT INTO `re_employee` VALUES ('9902bd3f-711f-4ecf-9924-654b63f161c4', '李春燕', 5, '2019117053', 'dw123456', 1, '18081369257', 1, 5, '4000');
INSERT INTO `re_employee` VALUES ('9d9999d3-33f5-4a70-ba3d-2115b0f1dcbd', '甘菲', 5, '201931020139', 'XYX379795', 1, '18078461434', 1, 5, '4000');
INSERT INTO `re_employee` VALUES ('a7d8075d-552b-4770-b34f-7ea37cbaa7ad', '李航', 3, '41702512', 'A123456A', 1, '13881189256', 1, 3, '5000');
INSERT INTO `re_employee` VALUES ('b7c82609-efd5-48c1-a59f-05e746aa9b65', '周亮', 2, '15378517308', 'sy067317', 1, '15508001993', 1, 2, '4000');
INSERT INTO `re_employee` VALUES ('cab33c20-5939-49af-841e-0b291503f7a2', '王彤月', 4, '18738299005', 'DBB465366', 2, '17608235619', 0, 4, '4000');
INSERT INTO `re_employee` VALUES ('d59a9422-40ec-482a-b2de-93e657b86fb2', '孙乾浩', 5, '41806344', '0000mxy', 1, '18349673318', 1, 5, '4000');
INSERT INTO `re_employee` VALUES ('d77e5b60-d0fc-4a22-9add-eaaf8f0ac966', '帅翔玲', 4, '17726826155', 'XYX379795', 1, '18011435916', 1, 4, '4000');
INSERT INTO `re_employee` VALUES ('e531de52-81ce-46d5-9f56-c0efb98e905f', '罗香凝', 4, '13969133492', 'ZE074047', 1, '17671392338', 1, 4, '4000');
INSERT INTO `re_employee` VALUES ('e8312274-5bd7-4d37-977c-1a5047e9d988', '何晨曦', 3, '41705614', 'Aa13550987525', 2, '13881172371', 1, 3, '5000');
INSERT INTO `re_employee` VALUES ('ea4c7225-88b7-484c-a2be-5d61c9988780', '冯蕾洁', 5, '18078461434', 'liulinzhu', 2, '18090410187', 1, 5, '4000');
INSERT INTO `re_employee` VALUES ('f7122d41-d1db-4a76-ab01-c5360d03b433', '唐瑞强', 5, '13881189256', 'a123123', 1, '18381059506', 1, 5, '4000');

-- ----------------------------
-- Table structure for re_menu
-- ----------------------------
DROP TABLE IF EXISTS `re_menu`;
CREATE TABLE `re_menu`  (
  `mid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mname` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mmateria` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mpirce` int(10) NULL DEFAULT NULL,
  `mnumber` int(10) NULL DEFAULT NULL COMMENT '剩余数量',
  `mimageurl` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '展示图片',
  `mischara` int(10) NULL DEFAULT NULL COMMENT '是否是特色菜',
  `mtype` int(2) NULL DEFAULT NULL COMMENT '菜品种类奶茶，小吃...',
  PRIMARY KEY (`mid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of re_menu
-- ----------------------------
INSERT INTO `re_menu` VALUES ('c66cc66f-5180-4acc-b7d8-841ead7e0339', '回锅肉炒饭', '1,2,3', 11, 100, 'img/1.1.jpg', 1, 204);

-- ----------------------------
-- Table structure for re_menutpye
-- ----------------------------
DROP TABLE IF EXISTS `re_menutpye`;
CREATE TABLE `re_menutpye`  (
  `mtid` int(10) NOT NULL,
  `mtname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mpid` int(10) NULL DEFAULT NULL,
  `mlevel` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`mtid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of re_menutpye
-- ----------------------------
INSERT INTO `re_menutpye` VALUES (100, '特色菜', 0, 1);
INSERT INTO `re_menutpye` VALUES (200, '冒菜类', 0, 1);
INSERT INTO `re_menutpye` VALUES (201, '清汤冒菜', 200, 2);
INSERT INTO `re_menutpye` VALUES (202, '红汤冒菜', 200, 2);
INSERT INTO `re_menutpye` VALUES (203, '干拌冒菜', 200, 2);
INSERT INTO `re_menutpye` VALUES (300, '套餐类', 0, 1);
INSERT INTO `re_menutpye` VALUES (301, '单人套餐', 300, 2);
INSERT INTO `re_menutpye` VALUES (302, '双人套餐', 300, 2);
INSERT INTO `re_menutpye` VALUES (303, '三人套餐', 300, 2);
INSERT INTO `re_menutpye` VALUES (304, '五人套餐', 300, 2);
INSERT INTO `re_menutpye` VALUES (400, '小吃类', 0, 1);
INSERT INTO `re_menutpye` VALUES (500, '饮料类', 0, 1);
INSERT INTO `re_menutpye` VALUES (600, '口味选择', 0, 1);
INSERT INTO `re_menutpye` VALUES (601, '不辣', 600, 2);
INSERT INTO `re_menutpye` VALUES (602, '微辣', 600, 2);
INSERT INTO `re_menutpye` VALUES (603, '中辣', 600, 2);
INSERT INTO `re_menutpye` VALUES (604, '特辣', 600, 2);
INSERT INTO `re_menutpye` VALUES (605, '变态辣', 600, 2);
INSERT INTO `re_menutpye` VALUES (700, '选菜区', 0, 1);
INSERT INTO `re_menutpye` VALUES (701, '素菜区', 700, 2);
INSERT INTO `re_menutpye` VALUES (702, '荤菜区', 700, 2);
INSERT INTO `re_menutpye` VALUES (2011, '番茄冒菜', 201, 3);
INSERT INTO `re_menutpye` VALUES (2012, '骨汤冒菜', 201, 3);

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
INSERT INTO `re_navigation` VALUES (202, '冒菜类', 200, 2, '/menu/maocai');
INSERT INTO `re_navigation` VALUES (203, '套餐类', 200, 2, '/menu/setmeal');
INSERT INTO `re_navigation` VALUES (204, '小吃类', 200, 2, '/menu/snack');
INSERT INTO `re_navigation` VALUES (205, '酒水类', 200, 2, '/menu/drink');
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
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of re_role
-- ----------------------------
INSERT INTO `re_role` VALUES (1, '店长', NULL);
INSERT INTO `re_role` VALUES (2, '仓库管理员', NULL);
INSERT INTO `re_role` VALUES (3, '厨师', NULL);
INSERT INTO `re_role` VALUES (4, '收银员', NULL);
INSERT INTO `re_role` VALUES (5, '服务员', NULL);
INSERT INTO `re_role` VALUES (6, '系统管理员', NULL);

-- ----------------------------
-- Table structure for re_store
-- ----------------------------
DROP TABLE IF EXISTS `re_store`;
CREATE TABLE `re_store`  (
  `stroeid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stroename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stroenumber` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stroetime` datetime(0) NULL DEFAULT NULL,
  `stroestate` int(1) NULL DEFAULT NULL,
  `storeman` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`stroeid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of re_store
-- ----------------------------
INSERT INTO `re_store` VALUES ('024ac7fc-6e8a-4416-9c1e-b15c4a102694', '鱼肉', '10', '千克', '2020-12-01 16:00:00', 1, '00c6f9b8-35c8-4378-accc-e4246d04d15a');
INSERT INTO `re_store` VALUES ('02ce6a75-6088-4d77-b1ce-e6169e49dfd7', '豆芽', '3', '斤', '2020-11-22 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('07763ea6-0699-4c2a-9f04-bf3cf6208c75', '五粮液', '5', '瓶', '2020-11-24 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('0aa95ae0-e4e3-4310-9413-db0ab5393adf', '豆腐', '4', '斤', '2020-11-24 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('1134ddd2-232b-46a3-b8cf-ebec6e32209f', '可乐(大瓶装)', '20', '件', '2020-12-17 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('13caaabb-5366-474a-b42d-238d21e10321', '猪肉', '20', '千克', '2020-11-25 16:00:00', 1, '00c6f9b8-35c8-4378-accc-e4246d04d15a');
INSERT INTO `re_store` VALUES ('1898a752-2005-480d-b7d2-21c5486eb2ef', '可乐(罐装)', '10', '件', '2020-12-16 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('1a23cc4e-4cb1-4987-9872-910e2b2edcbe', '豌豆', '10', '斤', '2020-12-01 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('2a2233aa-db66-4690-b583-ac6a75065f30', '雪花啤酒', '5', '件', '2020-11-25 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('2e410fc8-33a5-4671-8bea-a8d1a5adc513', '凉粉', '2', '斤', '2020-11-24 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('317ee7a2-78b0-4dcd-b563-3c1be2a00de9', '青岛啤酒', '2', '件', '2020-11-24 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('3dbaf420-5df0-4a5a-8d14-3fb2d680fefe', '芬达(大瓶装)', '10', '件', '2020-12-16 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('4073dfaf-0257-4f2a-9201-0822f074e78b', '土豆', '20', '斤', '2020-12-17 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('41c76ef0-dc86-4737-945d-5b4328bf1d6a', '红星二锅头', '3', '瓶', '2020-12-04 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('52eb75b1-5fb1-4310-a531-c38402ec6a97', '酸奶', '7', '件', '2020-11-25 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('5ebbc305-f2c7-4c64-9c0e-630567c02595', '奶茶粉', '1', '瓶', '2020-12-17 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('68b647cf-3de3-4a26-8787-5f9d6862599c', '鸡肉', '10', '千克', '2020-11-24 16:00:00', 1, '00c6f9b8-35c8-4378-accc-e4246d04d15a');
INSERT INTO `re_store` VALUES ('6b06fe96-b95c-4a55-9402-3a77bd50c817', '羊肉', '20', '千克', '2020-12-17 16:00:00', 1, '00c6f9b8-35c8-4378-accc-e4246d04d15a');
INSERT INTO `re_store` VALUES ('6c77e3fa-7205-4a88-931c-f2a5d1749b46', '撒装白酒', '5000', '毫升', '2020-11-25 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('7bac8006-510e-4fcb-844e-3852ea7534ba', '莴笋', '20', '斤', '2020-11-29 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('8470e398-6bd8-443f-af60-26254788b6ec', '平菇', '5', '斤', '2020-11-24 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('879cc5e1-0559-4260-ab4f-ec83fac36d59', '豌豆尖', '10', '斤', '2020-12-16 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('87ba862d-a32e-468d-89e7-208ad8cb6c32', '芬达（罐装）', '10', '件', '2020-11-24 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('8c0abf9f-a312-4793-b9e8-0adaee2284e9', '木耳', '5', '斤', '2020-11-25 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('8c6a54e9-719c-4814-80a4-1d366e60639b', '宽粉', '4', '斤', '2020-12-17 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('8fb4b4f5-b631-4757-a7e0-cdeba9b68048', '酸梅汤', '4', '件', '2020-11-24 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('9244cf0f-9063-4273-89cc-d7b9413b2d05', '橙汁', '2', '件', '2020-12-17 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('998be6c8-f5ab-4c8a-b6e4-e051504c3428', '莲藕', '20', '斤', '2020-11-25 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('9a9937e0-f032-459a-81b1-d04f50aadbfd', '黄瓜', '10', '斤', '2020-12-16 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('9d1a974e-dacc-4a1b-b50b-d0125bc83fd6', '豆奶1L', '20.0', '件', '2020-11-22 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('a1c4d99f-67e5-4f2e-a9f3-6b756dbc6ef8', '虾饺', '10', '千克', '2020-12-04 16:00:00', 1, '00c6f9b8-35c8-4378-accc-e4246d04d15a');
INSERT INTO `re_store` VALUES ('a1d77b65-501d-402a-bc94-d192a5bcd655', '虾条', '10', '千克', '2020-11-22 16:00:00', 1, '00c6f9b8-35c8-4378-accc-e4246d04d15a');
INSERT INTO `re_store` VALUES ('a2c572fc-84db-4891-812f-1975a56f3f2e', '雪碧(大瓶装)', '10', '件', '2020-12-04 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('a5275a66-6c68-4227-9fbe-aca7c99ff8e4', '午餐肉', '20', '千克', '2020-11-29 16:00:00', 1, '00c6f9b8-35c8-4378-accc-e4246d04d15a');
INSERT INTO `re_store` VALUES ('a7512b02-ede9-409d-8c28-ed5a0c1fc142', '鱼丸', '10', '千克', '2020-12-16 16:00:00', 1, '00c6f9b8-35c8-4378-accc-e4246d04d15a');
INSERT INTO `re_store` VALUES ('b0521fa2-0ed2-4d5d-b9dd-8d06ceeb0531', '油条', '1', '斤', '2020-12-17 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('b1a40ede-cb52-466e-a4d8-13362e4b0551', '牛肉', '10', '千克', '2020-12-16 16:00:00', 1, '00c6f9b8-35c8-4378-accc-e4246d04d15a');
INSERT INTO `re_store` VALUES ('b3a34464-e4ff-45bb-876a-44ea0e27add5', '北冰洋', '10', '件', '2020-12-01 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('b71e0744-d9ab-45c3-8f67-9d3a1bbcf777', '洋葱', '10', '斤', '2020-12-04 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('c5763ee0-9df4-4d72-b172-79bfc283d709', '香菇', '3', '斤', '2020-11-25 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('c682f06a-e7ce-4e17-b03a-1e3d2fe073d8', '唯怡豆奶(2L装)', '3', '件', '2020-11-22 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('c8c218bc-609d-4374-bb26-0ebb68dc51fc', '张裕干红葡萄酒', '4', '瓶', '2020-12-17 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('cdcf3a1f-5dd4-473d-9e72-2fb6bd9cc6f6', '细粉', '3', '斤', '2020-12-04 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('ddca0129-cbce-4963-af6e-b6d9697f3457', '花菜', '20.0', '斤', '2020-11-22 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('ddd448a7-c7be-4c93-a8bb-a24274e84c90', '白萝卜', '7', '斤', '2020-11-25 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('de6f44d5-7c39-4854-b837-5ce752499735', '歪嘴', '3', '瓶', '2020-11-25 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('df9ae571-8fc1-4b94-b603-0f994cc84b17', 'RIO鸡尾酒', '6', '件', '2020-11-25 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('dfd58551-f79b-454f-955e-f4fb6fd9ff88', '小白菜', '2', '斤', '2020-12-17 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('ed6c52c0-caef-4743-ace3-783e57c36a15', '海带', '6', '斤', '2020-11-25 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('f2bacd42-9926-4984-9d79-599f52867acf', '豆奶500ml', '20', '件', '2020-11-29 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('f3da213c-7d40-4bc6-a1d0-e383787911b1', '雪碧（罐装）', '20', '件', '2020-11-25 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('f7c21a85-96d5-442d-bc9c-58191c2e5a60', '豆皮', '10', '斤', '2020-11-24 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('ff67fe3c-2a18-41ec-9bbc-5f00ffd788d8', '竹笋', '5', '斤', '2020-11-25 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');

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
INSERT INTO `re_user` VALUES ('00570015-ed8b-43e1-9a3c-ccabb45ae430', '李航', '41702512', 'A123456A', 7, '13881189256', 'afjqspfjktbd@xinhuanet', '1999-04-15 16:00:00', 1, '2020-12-21 04:50:40');
INSERT INTO `re_user` VALUES ('1', '张店长', 'admin', '123456', 0, '18283827038', '2018662638@qq.com', '1999-04-09 10:16:51', 1, '2020-12-15 17:14:23');
INSERT INTO `re_user` VALUES ('14bff009-887d-4023-afc7-69e3670c0ee4', '岳秋蓉', '41804138', 'ZASDYM120987', 7, '13881364917', 'gbkehwicrnmu@56.com', '1999-03-01 16:00:00', 1, '2020-12-21 04:50:40');
INSERT INTO `re_user` VALUES ('26d5d593-fb6f-4137-b317-8cc14beffd2a', '吴宏宇', '18113626532', 'Ftzlamo0921lf.', 7, '16602380230', 'adhnonoemgdw@163.com', '1999-05-29 16:00:00', 1, '2020-12-21 04:50:40');
INSERT INTO `re_user` VALUES ('4e3b4324-610f-4db0-93f6-a16ac0067a53', '任小萌', '18501086390', 'YXF143595', 7, '17361163672', 'masgecblsagh@yahoo.com.cn', '1999-01-16 16:00:00', 1, '2020-12-21 04:50:40');
INSERT INTO `re_user` VALUES ('62f246a2-af97-4a90-b9c8-0ac2e267fa53', '陈艺鑫', '17863570781', '1998522jzy', 7, '15892383980', 'haoolktsleci@china.com', '1999-01-26 16:00:00', 1, '2020-12-21 04:50:40');
INSERT INTO `re_user` VALUES ('6bc561e0-e161-4b9f-a4ec-c70d22c9601e', '王彤月', '18738299005', 'DBB465366', 8, '17608235619', 'chokwnwseudp@citiz.com', '1999-06-13 16:00:00', 0, '2020-12-21 04:50:40');
INSERT INTO `re_user` VALUES ('6c4c96dc-861d-477c-bfc5-27ddde395638', '方曦铭', '13547724755', 'sxl010319', 7, '13881109730', 'ofqwniesohhj@sina.com', '1999-03-11 16:00:00', 1, '2020-12-21 04:50:40');
INSERT INTO `re_user` VALUES ('736a7f02-8dfb-4cd1-9238-a63d7fc4e4dc', '贾婷宇', '18349673318', 'TPC772815', 7, '17863570781', 'nakicpowcsda@263.net', '1999-05-11 16:00:00', 0, '2020-12-21 04:50:40');
INSERT INTO `re_user` VALUES ('75872acc-859b-4031-a025-ce65b60b1822', '孙乾浩', '41806344', '0000mxy', 7, '18349673318', 'kdiqjjiocuah@263.net', '1999-01-21 16:00:00', 1, '2020-12-21 04:50:40');
INSERT INTO `re_user` VALUES ('7d203cf7-eb64-48a1-a09b-1c507e3183fa', '陈燕', '41700951', 'TRQ711029', 8, '15700228190', 'wqfvcbgthede@xinhuanet', '1999-06-22 16:00:00', 1, '2020-12-21 04:50:40');
INSERT INTO `re_user` VALUES ('87e03eea-a14f-430c-a4c3-4d40fe6d0e75', '杨帆', '18615772429', 'Tgn3342824440', 7, '18224022492', 'jgtvbppshowo@265.com', '1999-01-20 16:00:00', 1, '2020-12-21 04:50:40');
INSERT INTO `re_user` VALUES ('a1fedc19-ddef-4e57-a259-9b5e7d7fbd70', '李春燕', '2019117053', 'dw123456', 7, '18081369257', 'goaulmdtfnjg@email.com.cn', '1999-05-15 16:00:00', 1, '2020-12-21 04:50:40');
INSERT INTO `re_user` VALUES ('a536fde3-3669-4e83-bea4-48871df8906f', '白湘嫄', '15196255990', 'Myqqnumber.1', 7, '18282666620', 'msuttvgdsvdt@qq.com', '1999-03-22 16:00:00', 1, '2020-12-21 04:50:40');
INSERT INTO `re_user` VALUES ('a935bd0b-09be-456f-801f-2fa00895948b', '钟震东', '41807602', '321jtymmd', 7, '13881108521', 'sphskqrnbfhp@263.net', '1999-04-17 16:00:00', 1, '2020-12-21 04:50:39');
INSERT INTO `re_user` VALUES ('a99d2e84-e62f-47ff-80fe-7c18757fe9ca', '李竣贻', '41701715', 'Qq123456', 7, '13882168579', 'vcmvibjciwju@126.com', '1999-01-30 16:00:00', 1, '2020-12-21 04:50:40');
INSERT INTO `re_user` VALUES ('af30b1ca-e5a6-4d72-9a79-354464771fec', '唐瑞强', '13881189256', 'a123123', 7, '18381059506', 'rnwodhiesmkq@china.com', '1999-05-28 16:00:00', 1, '2020-12-21 04:50:40');
INSERT INTO `re_user` VALUES ('b9b5d14e-8043-484f-b731-400fc45a50bd', '何晨曦', '41705614', 'Aa13550987525', 8, '13881172371', 'weadejmlptpm@56.com', '1999-04-01 16:00:00', 1, '2020-12-21 04:50:40');
INSERT INTO `re_user` VALUES ('ba4e0e8f-bd50-408e-b92f-e834e36ffb1e', '周亮', '15378517308', 'sy067317', 7, '15508001993', 'peigptssqdtl@china.com', '1999-04-02 16:00:00', 1, '2020-12-21 04:50:40');
INSERT INTO `re_user` VALUES ('ba64c331-d8bc-452d-8d80-64f4f03c3f54', '甘菲', '201931020139', 'XYX379795', 7, '18078461434', 'cjimvqqkuosm@citiz.com', '1999-04-28 16:00:00', 1, '2020-12-21 04:50:40');
INSERT INTO `re_user` VALUES ('bcaf7a4a-9220-4cf4-85d1-31639f201088', '杨子', '15883084387', '123321yy?', 7, '15729632119', 'mcqvadauwgne@263.net', '1999-05-08 16:00:00', 0, '2020-12-21 04:50:40');
INSERT INTO `re_user` VALUES ('c19ddcd0-93a1-4eff-a1f6-96f7f0e31792', '陈凯鑫', '41703930', 'WYJ171184', 7, '15883084387', 'wepiwebkgunu@21cn.com', '1999-05-24 16:00:00', 1, '2020-12-21 04:50:40');
INSERT INTO `re_user` VALUES ('c1e1a3c2-03a1-496b-886e-6e14daa67fcd', '帅翔玲', '17726826155', 'XYX379795', 7, '18011435916', 'spkelofampcw@263.net', '1999-02-25 16:00:00', 1, '2020-12-21 04:50:40');
INSERT INTO `re_user` VALUES ('c4f1f1b4-7214-4e9f-bacd-d844578ce92a', '赵仕宇', '13012348714', 'Tdx997622', 7, '15700228257', 'nuetolktifrb@163.net', '1999-05-29 16:00:00', 1, '2020-12-21 04:50:40');
INSERT INTO `re_user` VALUES ('d8b1b795-14f3-44b6-987c-34c985440f93', '伊利斯·逐星', 'samsara', '123456', 1, '8209961', 'ylt@123', '2020-12-15 09:29:05', 1, '2020-12-16 17:13:19');
INSERT INTO `re_user` VALUES ('da76194d-db9c-4a32-85a5-72cbd7003d82', '王涛', '13882168579', 'YX290969', 7, '17726826155', 'ahqedbfukgnb@enet.com.cn', '1999-02-21 16:00:00', 1, '2020-12-21 04:50:40');
INSERT INTO `re_user` VALUES ('db674d39-168f-45dd-b4e8-e21e984568bc', '贾轶璞', '41703727', 'BXY063335', 7, '15378517308', 'pdwmiwwtclbl@china.com', '1999-03-14 16:00:00', 1, '2020-12-21 04:50:40');
INSERT INTO `re_user` VALUES ('dcddc167-3064-4cd9-8e3b-2bd0e825a579', '罗香凝', '13969133492', 'ZE074047', 7, '17671392338', 'afhsqkogutwf@yahoo.com.cn', '1999-06-01 16:00:00', 1, '2020-12-21 04:50:40');
INSERT INTO `re_user` VALUES ('fe428166-e9a1-4bed-897d-9fed788a2a50', '冯蕾洁', '18078461434', 'liulinzhu', 8, '18090410187', 'vsgahiiimeom@hotmail.com', '1999-05-17 16:00:00', 1, '2020-12-21 04:50:40');

SET FOREIGN_KEY_CHECKS = 1;
