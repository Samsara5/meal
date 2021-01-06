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

 Date: 06/01/2021 17:56:43
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
INSERT INTO `re_employee` VALUES ('1', '王二', 100, 'samsara', '123456', 1, '18283827038', 1, 1, '5000');
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
  `mname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mmateria` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mpirce` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mnumber` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '剩余数量',
  `mimageurl` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '展示图片',
  `mischara` int(10) NULL DEFAULT NULL COMMENT '是否是特色菜',
  `mtype` int(10) NULL DEFAULT NULL COMMENT '菜品种类奶茶，小吃...',
  PRIMARY KEY (`mid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of re_menu
-- ----------------------------
INSERT INTO `re_menu` VALUES ('07242987-fafa-4bea-ace1-3930f2081dde', '鱼丸', 'a474de10-de08-46de-a324-0a9663d83f61', '19', '10', 'D://menuImage/a27b26b1-f00c-49e0-9dc4-44380186a7a4.jpg', 1, 702);
INSERT INTO `re_menu` VALUES ('08a677ff-f86b-4a30-bd2e-8facf9831d00', '宽粉', '1bba3f67-2543-435d-87d1-de0f191c472b', '6', '20', 'D://menuImage/b34a75bc-454f-4477-9818-8f26ca1922bd.jpg', 0, 701);
INSERT INTO `re_menu` VALUES ('14002949-866e-439f-91e3-b798b0070b70', '木耳', '9e45e2c5-3262-4d49-abe1-ca98034ac19d', '5', '20', 'D://menuImage/14ced839-1e38-4d15-b6b3-32ce6f8dcd85.jpg', 0, 701);
INSERT INTO `re_menu` VALUES ('1766bf59-604c-4b14-8f81-05539fb51782', '细粉', '6acf0272-744a-45f1-a708-b81cda0b2fa4', '7', '20', 'D://menuImage/b9214d1f-41f2-45d7-9949-a704293be403.jpg', 0, 701);
INSERT INTO `re_menu` VALUES ('27c49043-f5c8-4abf-8d76-90b7b17a8f46', '歪嘴', '062a383f-4e5b-45d1-a7dc-a09cb0cb2a5a', '10', '20', 'D://menuImage/dda65275-9e1b-4c5c-9f3b-d9bc480e9c6a.jpg', 0, 500);
INSERT INTO `re_menu` VALUES ('2b48d825-f646-49c1-9929-84257bf47491', '豆奶1L', '4f09e44b-be49-4c7f-95c2-c2015aa33b49', '5', '20', 'D://menuImage/39805a80-5d19-4616-a78e-dc1f96ceb6d7.jpg', 1, 500);
INSERT INTO `re_menu` VALUES ('3293db92-9daa-4f09-baf8-bed7a7c401ed', '豌豆', 'f90213db-0180-4bf9-a2cf-a15d6f9b6ba2', '9', '10', 'D://menuImage/a84404e5-ec66-49cd-84de-bc14d7800d5e.jpg', 0, 701);
INSERT INTO `re_menu` VALUES ('42923701-df43-457e-ac35-d499b4b3950c', '牛肉', 'c3fb61ea-ec2f-42e3-8cff-a7f08b1778f0', '18', '10', 'D://menuImage/1b15fbf7-09b3-416f-9c14-d5cf5b38abbf.jpg', 0, 702);
INSERT INTO `re_menu` VALUES ('44326501-2766-4bba-ab8f-2bc9f531db27', '香菇', 'bc3885a6-bbb6-4339-876b-fc950de8ec56', '5', '20', 'D://menuImage/9c19ad75-b94c-4325-93cf-476957877ca6.jpg', 0, 701);
INSERT INTO `re_menu` VALUES ('47daed24-6870-4b39-b3de-50e32d5745bc', '虾饺', '36fed396-d01d-4d9a-912e-5fa64d82d3fe', '16', '10', 'D://menuImage/141b9668-b7b7-4258-be0a-b2331cdaa97f.jpg', 0, 702);
INSERT INTO `re_menu` VALUES ('49a4230e-529e-4078-873d-88e64c768ec0', '午餐肉', '321548de-bbd2-4ea6-baed-c09e23377d97', '16', '20', 'D://menuImage/18b91d1d-72bc-4da0-b8f7-fd2d71abf88c.jpg', 0, 702);
INSERT INTO `re_menu` VALUES ('4d6cba22-6718-40b8-8f3a-4122813fc41a', '雪花啤酒', '8661a702-bd9e-4a93-bab8-1d120b234708', '11', '20', 'D://menuImage/8252b8f3-4eef-477d-a69b-14269976c2d0.jpg', 0, 500);
INSERT INTO `re_menu` VALUES ('56bf6495-611c-4c3e-8a37-1667568addd7', 'RIO鸡尾酒', '08ae195a-cd7f-45e1-80fe-47b1d4310011', '12', '20', 'D://menuImage/e2057f0b-90d8-4908-b11c-0450512ea867.jpg', 0, 500);
INSERT INTO `re_menu` VALUES ('56e25742-d372-478c-a4f1-b9a9acbbdb5a', '豆奶500ml', '697fdf72-e3b5-4133-b2d6-19a7aa68d85a', '2', '20', 'D://menuImage/1fa76d59-d3fc-4efd-b5e6-b0695f3a9025.jpg', 0, 500);
INSERT INTO `re_menu` VALUES ('615b0c8c-7da2-4742-980e-6a5725fb166e', '豆腐', '8776a1fe-1f13-414c-af76-760a655aee62', '5', '20', 'D://menuImage/8b16c4f2-769c-425c-b47a-6993d18dfc77.jpg', 0, 701);
INSERT INTO `re_menu` VALUES ('61c82b80-c7eb-4f7f-bffa-957da6fb20f6', '橙汁', 'df082db1-2925-4acc-965b-080bdbb3365f', '12', '20', 'D://menuImage/cec4013c-b2b9-494f-988a-4c033f12229a.jpg', 0, 500);
INSERT INTO `re_menu` VALUES ('6607b56a-ed76-4d4b-9521-a4885284aaa3', '虾条', 'd8dc3748-29b2-4b8f-87c0-e21305610f25', '8', '10', 'D://menuImage/ce906815-21d3-410c-a059-960c236d83f2.jpg', 0, 702);
INSERT INTO `re_menu` VALUES ('670f0848-9e16-4062-bf2b-be9ee2ac620c', '唯怡豆奶(2L装)', '803c137c-6b3d-4d03-bb11-270faafc24b8', '13', '20', 'D://menuImage/740d848a-5c86-4891-a48b-13bd1e5f08a2.jpg', 0, 500);
INSERT INTO `re_menu` VALUES ('6926d2bf-7b7e-4ab9-9040-ccc53f1ae008', '鸡肉', '60022a2c-9b85-4922-a02a-df1ada983ef4', '19', '10', 'D://menuImage/2fcdf1e7-0da3-49cd-84bc-2c01d9a89b55.jpg', 0, 702);
INSERT INTO `re_menu` VALUES ('75f08c54-ecc9-48f8-9893-b56f7ec7d9ee', '青岛啤酒', '9f9a34bc-7abd-46e6-a7e6-b881ae2bae84', '19', '20', 'D://menuImage/385061d5-b782-474f-ba8f-0a48795b22b7.jpg', 0, 500);
INSERT INTO `re_menu` VALUES ('7679609b-2077-46cb-86a0-23f980479599', '凉粉', '635732f8-fbc1-47e2-b7ca-5fcb4f2e1d61', '7', '20', 'D://menuImage/3d34348c-2815-47e4-a511-3e7b55899819.jpg', 0, 701);
INSERT INTO `re_menu` VALUES ('795a131f-173f-4274-b733-5ff0f511986c', '酸梅汤', '35f8b0d6-b508-49e8-ad55-e9e98940e0ee', '4', '20', 'D://menuImage/1967c71e-69a3-4114-87b8-e0cf8d7495b8.jpg', 0, 500);
INSERT INTO `re_menu` VALUES ('7fdb445c-f241-486b-a33b-0687ec1c9ef5', '北冰洋', 'ec36e0bf-48de-4565-b286-61e0554f8638', '8', '20', 'D://menuImage/60ffe536-bcc8-474c-a182-66aa54a6de03.jpg', 0, 500);
INSERT INTO `re_menu` VALUES ('83cce4c2-fd47-48bb-9c8a-b0a1315cc606', '平菇', 'f2b54819-bbe5-408e-b05a-e4dab2f58bf0', '6', '20', 'D://menuImage/c321ef48-0344-4291-85c4-61e14191659e.jpg', 0, 701);
INSERT INTO `re_menu` VALUES ('8783d003-dbbc-4b1b-9605-19547038dcfa', '白酒', '70c3e9f9-7237-4051-8192-06b1246cab57', '16', '5000', 'D://menuImage/913a8d71-925e-4433-8911-f56a54f0c4fc.jpg', 0, 500);
INSERT INTO `re_menu` VALUES ('8bba41ca-d863-41a0-8a97-c71c1e4ad045', '洋葱', 'a8d1b041-513a-4b71-8a60-8986cb97d587', '8', '10', 'D://menuImage/9dee5345-7555-44d4-bb8f-cef78b5bef34.jpg', 0, 701);
INSERT INTO `re_menu` VALUES ('8f4591d9-8ccb-4957-bed1-bd7dbcc42aeb', '豆芽', '0b5e6a02-f14a-4f1a-a946-efd9693446fe', '8', '20', 'D://menuImage/f8b1445b-183f-426c-94d1-d2b0e6874463.jpg', 0, 701);
INSERT INTO `re_menu` VALUES ('90593b28-8d46-4b02-b7b2-1bcd1403cd91', '五粮液', '14f3abae-fcd6-465e-8cfe-10204a8c2d25', '171', '20', 'D://menuImage/ccfdf2ff-7e58-4203-96ea-737658cce0a1.jpg', 0, 500);
INSERT INTO `re_menu` VALUES ('94dffb37-b523-478f-b44c-276867327797', '小白菜', '8db6d271-57ec-48b8-b379-a934a8ae7eef', '7', '20', 'D://menuImage/0c759ca8-244a-47ec-aa77-dac086144787.jpg', 0, 701);
INSERT INTO `re_menu` VALUES ('990ca32e-fe5d-4e99-a8d7-7ff872429e68', '土豆', 'c0f71f3b-db64-453e-8bf9-606b6bf810d4', '8', '20', 'D://menuImage/b9b66b8d-ac1c-445e-95f3-3dbe3511c5ee.jpg', 1, 701);
INSERT INTO `re_menu` VALUES ('9d6b6f1a-5806-480e-8110-6a8790becea6', '可乐(罐装)', '58f57350-80e9-4119-aa37-2259117bae54', '7', '20', 'D://menuImage/20b15b5f-11cc-455e-9773-6e3235ec4670.jpg', 1, 500);
INSERT INTO `re_menu` VALUES ('a061b078-a730-44d7-a7aa-78329edc873c', '黄瓜', 'e0d5a18f-ac7f-4323-a6e5-48729fd56cee', '8', '10', 'D://menuImage/a45976ba-8077-434d-a655-bd7956797917.jpg', 0, 701);
INSERT INTO `re_menu` VALUES ('ab2becd4-306f-4236-8dba-a50f23c4e065', '豆皮', '31cf4b3f-5deb-4fc3-9245-afe1540e78b9', '9', '10', 'D://menuImage/d7553147-0998-468e-9742-b598ba42e0d1.jpg', 0, 701);
INSERT INTO `re_menu` VALUES ('aee9674b-fae8-4799-8a64-15d42f95bc72', '芬达（罐装）', 'd5e05ff5-e985-4505-a6bb-03b754ec7f9c', '9', '20', 'D://menuImage/fefcc4d3-7a05-42ac-8394-c2591f054bc5.jpg', 0, 500);
INSERT INTO `re_menu` VALUES ('b427346a-bfb1-4565-ae17-79b3573ed9bc', '红星二锅头', '42aef7fe-1112-489a-b4d7-23bf1eb4e5b2', '13', '20', 'D://menuImage/9806839f-9556-4014-ada2-dfb016b89f38.jpg', 0, 500);
INSERT INTO `re_menu` VALUES ('b5fceeea-9ea6-4df3-abe6-2f5ce7a0c478', '芬达(大瓶装)', '3ca47e94-1b1b-4b32-9448-fe2def712ce6', '9', '20', 'D://menuImage/0d1ac2d8-9b56-4968-aa5b-a3615a1e42fa.jpg', 0, 500);
INSERT INTO `re_menu` VALUES ('b852e006-4b48-49b7-93bb-57369e2f6457', '奶茶粉', '4df35162-f758-4c44-b641-d9cf05654b15', '34', '20', 'D://menuImage/f9a808ad-8857-4e5b-bec2-d649f2dfdc2a.jpg', 0, 500);
INSERT INTO `re_menu` VALUES ('baf6e652-1384-4ad9-a5ac-e973da20ef96', '雪碧（罐装）', '281f258a-ee60-4ce0-bd65-abc45a7ffcd6', '7', '20', 'D://menuImage/50d27aef-3276-4bc1-927b-876c552db2fe.jpg', 1, 500);
INSERT INTO `re_menu` VALUES ('bfb0db92-cbb4-4441-a076-2d83fdd9ad5a', '雪碧(大瓶装)', '5b74b353-3899-4308-9a74-73dcfcf9decb', '8', '20', 'D://menuImage/4baacaa5-1d01-49a3-b34d-b67a6421bb1b.jpg', 0, 500);
INSERT INTO `re_menu` VALUES ('c2ff9b2d-a931-4ce8-bde4-129684714f74', '可乐(大瓶装)', '13441f01-b9f1-4dfd-9fa2-b1a6bfb90176', '10', '20', 'D://menuImage/f44a8f8b-f6cd-4ed3-80de-66c834a6e01b.jpg', 0, 500);
INSERT INTO `re_menu` VALUES ('c8d8310e-3385-40e9-9122-e9e9c9495bc4', '张裕干红葡萄酒', '1ea9290d-b793-4e7b-9bb3-3969cab4474a', '184', '20', 'D://menuImage/90e2ecbe-6ed7-4444-bafe-8ab76e8f87ae.jpg', 0, 500);
INSERT INTO `re_menu` VALUES ('ce38e66b-b940-4eca-8090-17a4a66f03db', '海带', '5bd3bded-42ea-480d-888c-858927b54beb', '5', '20', 'D://menuImage/8c3e407a-870e-4aec-8660-2be3a64544a2.jpg', 0, 701);
INSERT INTO `re_menu` VALUES ('d4637e17-3b6c-41d6-946d-859b8f014fd7', '羊肉', '4082bf17-31bc-43d1-bfc5-0a32ea05a9c2', '19', '20', 'D://menuImage/b1ec38f7-a8ef-437e-825c-2f4734b69602.jpg', 0, 702);
INSERT INTO `re_menu` VALUES ('d7192df1-9746-4b72-bfe4-10b5cf4c0a8d', '油条', '3cf2e9bd-4c09-4bb2-baaf-0419673ed8cb', '8', '20', 'D://menuImage/89309c74-f820-47be-a1bf-b47a7dfd4290.jpg', 1, 701);
INSERT INTO `re_menu` VALUES ('d7c19a86-94d8-4c7f-9deb-0ef5c19fa24b', '莴笋', '42b62332-cab7-466a-8f82-36ac552177ea', '9', '20', 'D://menuImage/31822766-77fd-4e8d-804f-050d1c3b651e.jpg', 0, 701);
INSERT INTO `re_menu` VALUES ('db7a9c00-7177-474e-9fd7-89557dfe4976', '酸奶', '5d2c10a5-094a-448a-8936-3f69a66ca091', '2', '20', 'D://menuImage/dad6255f-5890-4d9e-bcea-2c84d6c9742f.jpg', 0, 500);
INSERT INTO `re_menu` VALUES ('e6f0ec9a-4c7a-4369-802c-8df4ffbd573b', '竹笋', '9e986abf-ddd0-48ae-99c0-e471e7be0ca1', '10', '20', 'D://menuImage/fc61e404-1db9-453b-8914-cecdb57bd419.jpg', 1, 701);
INSERT INTO `re_menu` VALUES ('e85f2087-c646-4151-921d-f4396ab4f81d', '鱼肉', '568a3a5c-2125-438a-a4a6-29160b53de98', '14', '10', 'D://menuImage/6de6303f-6c75-4859-9b02-260e56875205.jpg', 0, 702);
INSERT INTO `re_menu` VALUES ('f016ce40-0979-4153-946a-b83c4e0ec3ca', '猪肉', '73929394-9985-4d5f-85a1-39e4d3f3113f', '15', '20', 'D://menuImage/6819afe9-b8fc-417a-a0b6-f9a6d85a1801.jpg', 0, 702);
INSERT INTO `re_menu` VALUES ('f2aabab6-8979-462d-bca8-c9bb584ba4ea', '豌豆尖', 'c646759c-0879-41af-a6af-343bc22e3e75', '6', '10', 'D://menuImage/54c89d50-105a-499a-8817-979cddb6632d.jpg', 0, 701);
INSERT INTO `re_menu` VALUES ('f325515c-0d99-4ac6-9210-2eb6cc1f5810', '花菜', 'a480b0e6-cc98-462a-8f8b-3d3f3da08e97', '10', '20', 'D://menuImage/5e7230b5-a5c9-4c46-83a9-9c87854eb94b.jpg', 0, 701);
INSERT INTO `re_menu` VALUES ('fa15b646-c803-4018-9ea9-7df1762d339b', '白萝卜', '13ad6057-47f8-4836-af22-520e1e7dc9ef', '9', '20', 'D://menuImage/fbf60bed-5f1b-43c3-8737-56e5ce1659f0.jpg', 0, 701);
INSERT INTO `re_menu` VALUES ('faab404f-97f2-4b28-9dce-83eb3b4bae55', '莲藕', '14452682-3024-4e35-ada8-f512762cc352', '8', '20', 'D://menuImage/aadaf9f4-a29e-4883-9517-2692aef053f6.jpg', 0, 701);

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
INSERT INTO `re_menutpye` VALUES (203, '干拌冒菜', 200, 3);
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
INSERT INTO `re_menutpye` VALUES (701, '素菜类', 700, 2);
INSERT INTO `re_menutpye` VALUES (702, '荤菜类', 700, 2);
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
  `oid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `price` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createtime` datetime(0) NULL DEFAULT NULL,
  `finshtime` datetime(0) NULL DEFAULT NULL,
  `state` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`oid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of re_order
-- ----------------------------
INSERT INTO `re_order` VALUES ('191cdfe5-7c76-4635-9e0e-02aa0906c309', 'ba4e0e8f-bd50-408e-b92f-e834e36ffb1e', '16e4b18d-83bb-41b3-95da-c470696e5f77,055aa432-56ee-4297-a984-826f4639abe4,34c0ddec-50dd-4c1f-b1eb-3da59a6879d5,', '130', '2020-12-09 16:00:00', '2020-12-09 16:00:00', 0);
INSERT INTO `re_order` VALUES ('1adae9b1-4463-4e4d-97ca-4c9f66a03c01', '62f246a2-af97-4a90-b9c8-0ac2e267fa53', 'ba418b2c-8daa-4796-b9db-13e5571d732c,0093f3cf-a24c-451c-bfae-1da906cf8bcb,97cecfc6-9d56-45e2-9ab1-a5d739aeffd8,', '62', '2020-12-20 16:00:00', '2020-12-20 16:00:00', 1);
INSERT INTO `re_order` VALUES ('1b695fd8-60e2-4bad-9983-56010965fce5', '14bff009-887d-4023-afc7-69e3670c0ee4', 'd2206dea-21ec-4c88-825e-6d8cdce20d1a,f058b2ed-9ed4-4efb-93a8-85fb85b115d6,23bcc550-ea52-4ba2-97b3-25be395caed5,', '565', '2020-12-11 16:00:00', '2020-12-11 16:00:00', 1);
INSERT INTO `re_order` VALUES ('1c513caf-ae10-4ace-9ea5-60a556197b4a', 'bcaf7a4a-9220-4cf4-85d1-31639f201088', 'dceba1ba-ce52-436c-a7e1-51d070e5a100,b5e88bdd-01bd-4b80-b05a-60b7998fb3c5,8f8369bf-36e2-408e-b851-8a0d90ce01f0,', '65', '2020-12-05 16:00:00', '2020-12-05 16:00:00', 1);
INSERT INTO `re_order` VALUES ('24eeb6b9-6404-49b6-b600-bc88e4f3731b', 'a99d2e84-e62f-47ff-80fe-7c18757fe9ca', '19db6057-15a9-4a67-886b-46bc44dc64f5,0a044ecd-0c00-405e-ab76-6c84476b43ba,2dfced5a-83ce-4015-96f0-d245141d4380,', '95', '2020-12-10 16:00:00', '2020-12-10 16:00:00', 0);
INSERT INTO `re_order` VALUES ('287ea7fe-51f3-4375-80f3-f0eb92e78a24', 'c4f1f1b4-7214-4e9f-bacd-d844578ce92a', '2a392748-c60b-4b0d-9d9c-6c62eb33ffa3,4421d479-73e7-42dc-b706-7fef9a05ba98,9b11d9da-fc8d-458a-8df8-138ba27f0c39,', '91', '2020-12-12 16:00:00', '2020-12-12 16:00:00', 0);
INSERT INTO `re_order` VALUES ('50f37348-809e-4d70-884b-77b10aa4638b', 'db674d39-168f-45dd-b4e8-e21e984568bc', '0480f484-b75b-460d-a200-28f423ddacb2,9d32f6c8-bf8c-453a-951c-714b6a7902aa,c8ed673d-23ad-41b0-89ca-3ed8b3303b4b,', '960', '2020-12-24 16:00:00', '2020-12-24 16:00:00', 1);
INSERT INTO `re_order` VALUES ('58d0bdf9-3f50-45ff-8bb6-a205abf606ea', '14bff009-887d-4023-afc7-69e3670c0ee4', '8353d7e0-1ba6-478c-8b33-61d6a260274a,da4d8202-26d2-4354-86b3-955f9d562eb8,25873a2f-feca-41a2-b793-91cda5078014,', '970', '2020-12-23 16:00:00', '2020-12-23 16:00:00', 1);
INSERT INTO `re_order` VALUES ('5caf9d80-5efb-4b7d-84be-cbefae8c1816', '00570015-ed8b-43e1-9a3c-ccabb45ae430', 'eb900b2e-75c9-459f-872d-542caa29de47,75ae6442-0530-485b-bac6-e0f25684f7d3,8deb58ae-dd01-413e-891d-ec975ba5c666,', '64', '2020-12-19 16:00:00', '2020-12-19 16:00:00', 0);
INSERT INTO `re_order` VALUES ('6758cdcb-eb76-4349-a960-74881fa0c1f0', 'bcaf7a4a-9220-4cf4-85d1-31639f201088', '8fc57c20-4a80-4423-8875-75bc1711edc1,762d769e-7b69-4f5c-8d94-9aaf3cff0200,69d6f5ce-d3d2-4794-bca9-c3b26c9245a2,', '113', '2020-12-27 16:00:00', '2020-12-27 16:00:00', 1);
INSERT INTO `re_order` VALUES ('727b3eed-16c0-4070-b9a3-c63616bf05f0', 'c4f1f1b4-7214-4e9f-bacd-d844578ce92a', '9646db8b-4aae-498b-a85a-f19d2e8bbbfd,c5777d6f-de49-4b28-b8e9-2edef6e12bb8,cf4c0f9d-618d-4449-8386-1a963522040d,', '90', '2020-12-23 16:00:00', '2020-12-23 16:00:00', 0);
INSERT INTO `re_order` VALUES ('7c7cfcc3-c556-4b68-934c-6680aeb50788', 'db674d39-168f-45dd-b4e8-e21e984568bc', 'c6583841-5c36-4d15-8c6d-414a75f928ee,7f88a0c2-fc20-4380-83a8-f1857816a997,182436bb-6f6a-48fa-b502-0a9d474175ce,', '91', '2020-12-15 16:00:00', '2020-12-15 16:00:00', 0);
INSERT INTO `re_order` VALUES ('7e0677be-d8d9-47ef-8706-a29b51709142', '26d5d593-fb6f-4137-b317-8cc14beffd2a', '8bcacb28-616a-40b6-9a1e-24aed2bb01d6,0ca28403-2a63-446b-ab74-ac7464dacd93,76b819da-a1a9-42dc-aded-268b50af8947,', '109', '2020-12-12 16:00:00', '2020-12-12 16:00:00', 1);
INSERT INTO `re_order` VALUES ('837c9a18-79e7-4438-a280-b07aea044c2f', 'ba4e0e8f-bd50-408e-b92f-e834e36ffb1e', '1bbe29bd-8487-42b2-9f5e-4ecd432e4640,88362d89-8d28-428e-ad2d-fb64e38d7729,328ccb0b-5eb7-4d43-88e4-8fff21a1f501,', '59', '2020-12-11 16:00:00', '2020-12-11 16:00:00', 1);
INSERT INTO `re_order` VALUES ('87b1dde3-014c-442d-8299-4e2dddc84b31', 'c19ddcd0-93a1-4eff-a1f6-96f7f0e31792', 'c8d6a2cc-2a76-43e0-98ff-a28cb42a3480,8ce906b8-ebee-4400-a525-bd91aacac97e,e24caeac-7b99-49d1-a56a-d0aa3ce563c3,', '73', '2020-12-29 16:00:00', '2020-12-29 16:00:00', 1);
INSERT INTO `re_order` VALUES ('89683c01-4f15-489a-93e3-18133b4a20f5', '62f246a2-af97-4a90-b9c8-0ac2e267fa53', 'b4c171a7-9981-4924-9e8f-f9678eeca640,8849f32e-a9d5-4af2-9eaa-e3f44498bc22,4962765e-f512-4ce2-96ca-cf2e77c51b17,', '119', '2020-12-28 16:00:00', '2020-12-28 16:00:00', 0);
INSERT INTO `re_order` VALUES ('a4e63986-bfdf-464e-ad02-d710ffdf08e0', '00570015-ed8b-43e1-9a3c-ccabb45ae430', '92ddec16-7806-4319-b556-fdb31ccf4b09,a547bc2b-af98-4f8f-9668-ddf7815f3d0a,b74feebe-0b8f-4b77-a1ca-d108763a98bf,', '74', '2020-12-07 16:00:00', '2020-12-07 16:00:00', 1);
INSERT INTO `re_order` VALUES ('aedf82f6-564a-4df0-9798-793d1de6f4ac', '7d203cf7-eb64-48a1-a09b-1c507e3183fa', 'd5a5ee9a-96d9-4cfc-b6bd-8be509073437,e0d6b41b-cf44-4c12-9c0f-32c1705f8ce3,72cf53af-ca18-4740-aa31-338fa0abb113,', '76', '2020-12-07 16:00:00', '2020-12-07 16:00:00', 1);
INSERT INTO `re_order` VALUES ('b17bfd17-e5ba-4571-92df-07c4418a2a03', '7d203cf7-eb64-48a1-a09b-1c507e3183fa', 'f19a7a95-c8d3-44b2-904c-5a97d0231f76,9463ae92-b5b5-48cb-bc01-36a49fbb9cdf,965ca7fc-a4c4-46d8-994c-87a4191a7765,', '128', '2020-12-10 16:00:00', '2020-12-10 16:00:00', 0);
INSERT INTO `re_order` VALUES ('c1786f5f-5491-4f85-a068-a1629064d761', 'c19ddcd0-93a1-4eff-a1f6-96f7f0e31792', '7a243563-b2cf-4a58-8bcf-57597c4ffe3a,d31abe22-b427-4088-b4b1-cb252c515b70,3ddb851e-fd84-4d52-bffb-fa08b2b35a57,', '201', '2020-12-22 16:00:00', '2020-12-22 16:00:00', 1);
INSERT INTO `re_order` VALUES ('d06c958d-5667-4b5f-94ec-1cbd87124743', 'a99d2e84-e62f-47ff-80fe-7c18757fe9ca', 'b3e7ef8b-fb80-421e-86c4-54d12223b744,c2980656-f4e1-4928-b3c4-011b3f7b0c37,74ceb3b2-5498-45b9-b9bc-1064d162a49c,', '51', '2020-12-28 16:00:00', '2020-12-28 16:00:00', 1);
INSERT INTO `re_order` VALUES ('e67321bc-d077-4dff-adf5-2ca9d73cc9cb', '26d5d593-fb6f-4137-b317-8cc14beffd2a', '1ec9857e-7209-463d-a679-309d7ba4e43d,7a69c216-7819-4ee8-ac29-31f159830838,6d9388f3-ff02-4d7a-9364-7da8bf69f0ba,', '120', '2020-12-06 16:00:00', '2020-12-06 16:00:00', 0);

-- ----------------------------
-- Table structure for re_ordercontent
-- ----------------------------
DROP TABLE IF EXISTS `re_ordercontent`;
CREATE TABLE `re_ordercontent`  (
  `contentid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `storename` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ordernum` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `totalprice` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`contentid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of re_ordercontent
-- ----------------------------
INSERT INTO `re_ordercontent` VALUES ('0093f3cf-a24c-451c-bfae-1da906cf8bcb', '小白菜', '2', '14');
INSERT INTO `re_ordercontent` VALUES ('0480f484-b75b-460d-a200-28f423ddacb2', '张裕干红葡萄酒', '5', '920');
INSERT INTO `re_ordercontent` VALUES ('055aa432-56ee-4297-a984-826f4639abe4', '豌豆尖', '3', '18');
INSERT INTO `re_ordercontent` VALUES ('0a044ecd-0c00-405e-ab76-6c84476b43ba', '豆腐', '1', '5');
INSERT INTO `re_ordercontent` VALUES ('0ca28403-2a63-446b-ab74-ac7464dacd93', '凉粉', '5', '35');
INSERT INTO `re_ordercontent` VALUES ('16e4b18d-83bb-41b3-95da-c470696e5f77', 'RIO鸡尾酒', '3', '36');
INSERT INTO `re_ordercontent` VALUES ('182436bb-6f6a-48fa-b502-0a9d474175ce', '鸡肉', '2', '38');
INSERT INTO `re_ordercontent` VALUES ('19db6057-15a9-4a67-886b-46bc44dc64f5', '雪花啤酒', '3', '33');
INSERT INTO `re_ordercontent` VALUES ('1bbe29bd-8487-42b2-9f5e-4ecd432e4640', '青岛啤酒', '1', '19');
INSERT INTO `re_ordercontent` VALUES ('1ec9857e-7209-463d-a679-309d7ba4e43d', '奶茶粉', '1', '34');
INSERT INTO `re_ordercontent` VALUES ('23bcc550-ea52-4ba2-97b3-25be395caed5', '香菇', '4', '20');
INSERT INTO `re_ordercontent` VALUES ('25873a2f-feca-41a2-b793-91cda5078014', '张裕干红葡萄酒', '5', '920');
INSERT INTO `re_ordercontent` VALUES ('2a392748-c60b-4b0d-9d9c-6c62eb33ffa3', '羊肉', '4', '76');
INSERT INTO `re_ordercontent` VALUES ('2dfced5a-83ce-4015-96f0-d245141d4380', '青岛啤酒', '3', '57');
INSERT INTO `re_ordercontent` VALUES ('328ccb0b-5eb7-4d43-88e4-8fff21a1f501', '平菇', '4', '24');
INSERT INTO `re_ordercontent` VALUES ('34c0ddec-50dd-4c1f-b1eb-3da59a6879d5', '羊肉', '4', '76');
INSERT INTO `re_ordercontent` VALUES ('3ddb851e-fd84-4d52-bffb-fa08b2b35a57', '奶茶粉', '4', '136');
INSERT INTO `re_ordercontent` VALUES ('4421d479-73e7-42dc-b706-7fef9a05ba98', '洋葱', '1', '8');
INSERT INTO `re_ordercontent` VALUES ('4962765e-f512-4ce2-96ca-cf2e77c51b17', '雪花啤酒', '5', '55');
INSERT INTO `re_ordercontent` VALUES ('69d6f5ce-d3d2-4794-bca9-c3b26c9245a2', '酸奶', '4', '8');
INSERT INTO `re_ordercontent` VALUES ('6d9388f3-ff02-4d7a-9364-7da8bf69f0ba', '橙汁', '4', '48');
INSERT INTO `re_ordercontent` VALUES ('72cf53af-ca18-4740-aa31-338fa0abb113', '宽粉', '5', '30');
INSERT INTO `re_ordercontent` VALUES ('74ceb3b2-5498-45b9-b9bc-1064d162a49c', '海带', '5', '25');
INSERT INTO `re_ordercontent` VALUES ('75ae6442-0530-485b-bac6-e0f25684f7d3', '酸梅汤', '2', '8');
INSERT INTO `re_ordercontent` VALUES ('762d769e-7b69-4f5c-8d94-9aaf3cff0200', '可乐(罐装)', '5', '35');
INSERT INTO `re_ordercontent` VALUES ('76b819da-a1a9-42dc-aded-268b50af8947', '豆奶1L', '2', '10');
INSERT INTO `re_ordercontent` VALUES ('7a243563-b2cf-4a58-8bcf-57597c4ffe3a', '猪肉', '2', '30');
INSERT INTO `re_ordercontent` VALUES ('7a69c216-7819-4ee8-ac29-31f159830838', '青岛啤酒', '2', '38');
INSERT INTO `re_ordercontent` VALUES ('7f88a0c2-fc20-4380-83a8-f1857816a997', '海带', '1', '5');
INSERT INTO `re_ordercontent` VALUES ('8353d7e0-1ba6-478c-8b33-61d6a260274a', '竹笋', '4', '40');
INSERT INTO `re_ordercontent` VALUES ('88362d89-8d28-428e-ad2d-fb64e38d7729', '莲藕', '2', '16');
INSERT INTO `re_ordercontent` VALUES ('8849f32e-a9d5-4af2-9eaa-e3f44498bc22', '鱼肉', '4', '56');
INSERT INTO `re_ordercontent` VALUES ('8bcacb28-616a-40b6-9a1e-24aed2bb01d6', '虾饺', '4', '64');
INSERT INTO `re_ordercontent` VALUES ('8ce906b8-ebee-4400-a525-bd91aacac97e', '青岛啤酒', '3', '57');
INSERT INTO `re_ordercontent` VALUES ('8deb58ae-dd01-413e-891d-ec975ba5c666', '牛肉', '2', '36');
INSERT INTO `re_ordercontent` VALUES ('8f8369bf-36e2-408e-b851-8a0d90ce01f0', '花菜', '3', '30');
INSERT INTO `re_ordercontent` VALUES ('8fc57c20-4a80-4423-8875-75bc1711edc1', '鱼肉', '5', '70');
INSERT INTO `re_ordercontent` VALUES ('92ddec16-7806-4319-b556-fdb31ccf4b09', '午餐肉', '3', '48');
INSERT INTO `re_ordercontent` VALUES ('9463ae92-b5b5-48cb-bc01-36a49fbb9cdf', '平菇', '1', '6');
INSERT INTO `re_ordercontent` VALUES ('9646db8b-4aae-498b-a85a-f19d2e8bbbfd', '唯怡豆奶(2L装)', '4', '52');
INSERT INTO `re_ordercontent` VALUES ('965ca7fc-a4c4-46d8-994c-87a4191a7765', '鱼丸', '3', '57');
INSERT INTO `re_ordercontent` VALUES ('97cecfc6-9d56-45e2-9ab1-a5d739aeffd8', '酸梅汤', '4', '16');
INSERT INTO `re_ordercontent` VALUES ('9b11d9da-fc8d-458a-8df8-138ba27f0c39', '可乐(罐装)', '1', '7');
INSERT INTO `re_ordercontent` VALUES ('9d32f6c8-bf8c-453a-951c-714b6a7902aa', '虾条', '2', '16');
INSERT INTO `re_ordercontent` VALUES ('a547bc2b-af98-4f8f-9668-ddf7815f3d0a', '细粉', '3', '21');
INSERT INTO `re_ordercontent` VALUES ('b3e7ef8b-fb80-421e-86c4-54d12223b744', '牛肉', '1', '18');
INSERT INTO `re_ordercontent` VALUES ('b4c171a7-9981-4924-9e8f-f9678eeca640', '酸奶', '4', '8');
INSERT INTO `re_ordercontent` VALUES ('b5e88bdd-01bd-4b80-b05a-60b7998fb3c5', '黄瓜', '2', '16');
INSERT INTO `re_ordercontent` VALUES ('b74feebe-0b8f-4b77-a1ca-d108763a98bf', '木耳', '1', '5');
INSERT INTO `re_ordercontent` VALUES ('ba418b2c-8daa-4796-b9db-13e5571d732c', '白酒', '2', '32');
INSERT INTO `re_ordercontent` VALUES ('c2980656-f4e1-4928-b3c4-011b3f7b0c37', '北冰洋', '1', '8');
INSERT INTO `re_ordercontent` VALUES ('c5777d6f-de49-4b28-b8e9-2edef6e12bb8', '宽粉', '5', '30');
INSERT INTO `re_ordercontent` VALUES ('c6583841-5c36-4d15-8c6d-414a75f928ee', '橙汁', '4', '48');
INSERT INTO `re_ordercontent` VALUES ('c8d6a2cc-2a76-43e0-98ff-a28cb42a3480', '豆奶500ml', '3', '6');
INSERT INTO `re_ordercontent` VALUES ('c8ed673d-23ad-41b0-89ca-3ed8b3303b4b', '豌豆尖', '4', '24');
INSERT INTO `re_ordercontent` VALUES ('cf4c0f9d-618d-4449-8386-1a963522040d', '豆奶500ml', '4', '8');
INSERT INTO `re_ordercontent` VALUES ('d2206dea-21ec-4c88-825e-6d8cdce20d1a', '五粮液', '3', '513');
INSERT INTO `re_ordercontent` VALUES ('d31abe22-b427-4088-b4b1-cb252c515b70', '雪碧（罐装）', '5', '35');
INSERT INTO `re_ordercontent` VALUES ('d5a5ee9a-96d9-4cfc-b6bd-8be509073437', '鸡肉', '2', '38');
INSERT INTO `re_ordercontent` VALUES ('da4d8202-26d2-4354-86b3-955f9d562eb8', '豆奶1L', '2', '10');
INSERT INTO `re_ordercontent` VALUES ('dceba1ba-ce52-436c-a7e1-51d070e5a100', '鱼丸', '1', '19');
INSERT INTO `re_ordercontent` VALUES ('e0d6b41b-cf44-4c12-9c0f-32c1705f8ce3', '土豆', '1', '8');
INSERT INTO `re_ordercontent` VALUES ('e24caeac-7b99-49d1-a56a-d0aa3ce563c3', '竹笋', '1', '10');
INSERT INTO `re_ordercontent` VALUES ('eb900b2e-75c9-459f-872d-542caa29de47', '花菜', '2', '20');
INSERT INTO `re_ordercontent` VALUES ('f058b2ed-9ed4-4efb-93a8-85fb85b115d6', '雪碧(大瓶装)', '4', '32');
INSERT INTO `re_ordercontent` VALUES ('f19a7a95-c8d3-44b2-904c-5a97d0231f76', '红星二锅头', '5', '65');

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
  `unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stroetime` datetime(0) NULL DEFAULT NULL,
  `stroestate` int(1) NULL DEFAULT NULL,
  `storeman` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`stroeid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of re_store
-- ----------------------------
INSERT INTO `re_store` VALUES ('062a383f-4e5b-45d1-a7dc-a09cb0cb2a5a', '歪嘴', '20', '瓶', '2020-11-25 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('08ae195a-cd7f-45e1-80fe-47b1d4310011', 'RIO鸡尾酒', '20', '件', '2020-11-25 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('0b5e6a02-f14a-4f1a-a946-efd9693446fe', '豆芽', '20', '斤', '2020-11-22 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('13441f01-b9f1-4dfd-9fa2-b1a6bfb90176', '可乐(大瓶装)', '20', '件', '2020-12-17 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('13ad6057-47f8-4836-af22-520e1e7dc9ef', '白萝卜', '20', '斤', '2020-11-25 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('14452682-3024-4e35-ada8-f512762cc352', '莲藕', '20', '斤', '2020-11-25 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('14f3abae-fcd6-465e-8cfe-10204a8c2d25', '五粮液', '20', '瓶', '2020-11-24 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('1bba3f67-2543-435d-87d1-de0f191c472b', '宽粉', '20', '斤', '2020-12-17 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('1ea9290d-b793-4e7b-9bb3-3969cab4474a', '张裕干红葡萄酒', '20', '瓶', '2020-12-17 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('281f258a-ee60-4ce0-bd65-abc45a7ffcd6', '雪碧（罐装）', '20', '件', '2020-11-25 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('31cf4b3f-5deb-4fc3-9245-afe1540e78b9', '豆皮', '10', '斤', '2020-11-24 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('321548de-bbd2-4ea6-baed-c09e23377d97', '午餐肉', '20', '千克', '2020-11-29 16:00:00', 1, '00c6f9b8-35c8-4378-accc-e4246d04d15a');
INSERT INTO `re_store` VALUES ('35f8b0d6-b508-49e8-ad55-e9e98940e0ee', '酸梅汤', '20', '件', '2020-11-24 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('36fed396-d01d-4d9a-912e-5fa64d82d3fe', '虾饺', '10', '千克', '2020-12-04 16:00:00', 1, '00c6f9b8-35c8-4378-accc-e4246d04d15a');
INSERT INTO `re_store` VALUES ('3ca47e94-1b1b-4b32-9448-fe2def712ce6', '芬达(大瓶装)', '20', '件', '2020-12-16 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('3cf2e9bd-4c09-4bb2-baaf-0419673ed8cb', '油条', '20', '斤', '2020-12-17 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('4082bf17-31bc-43d1-bfc5-0a32ea05a9c2', '羊肉', '20', '千克', '2020-12-17 16:00:00', 1, '00c6f9b8-35c8-4378-accc-e4246d04d15a');
INSERT INTO `re_store` VALUES ('42aef7fe-1112-489a-b4d7-23bf1eb4e5b2', '红星二锅头', '20', '瓶', '2020-12-04 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('42b62332-cab7-466a-8f82-36ac552177ea', '莴笋', '20', '斤', '2020-11-29 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('4df35162-f758-4c44-b641-d9cf05654b15', '奶茶粉', '20', '瓶', '2020-12-17 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('4f09e44b-be49-4c7f-95c2-c2015aa33b49', '豆奶1L', '20', '件', '2020-11-22 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('568a3a5c-2125-438a-a4a6-29160b53de98', '鱼肉', '10', '千克', '2020-12-01 16:00:00', 1, '00c6f9b8-35c8-4378-accc-e4246d04d15a');
INSERT INTO `re_store` VALUES ('58f57350-80e9-4119-aa37-2259117bae54', '可乐(罐装)', '20', '件', '2020-12-16 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('5b74b353-3899-4308-9a74-73dcfcf9decb', '雪碧(大瓶装)', '20', '件', '2020-12-04 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('5bd3bded-42ea-480d-888c-858927b54beb', '海带', '20', '斤', '2020-11-25 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('5d2c10a5-094a-448a-8936-3f69a66ca091', '酸奶', '20', '件', '2020-11-25 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('60022a2c-9b85-4922-a02a-df1ada983ef4', '鸡肉', '10', '千克', '2020-11-24 16:00:00', 1, '00c6f9b8-35c8-4378-accc-e4246d04d15a');
INSERT INTO `re_store` VALUES ('635732f8-fbc1-47e2-b7ca-5fcb4f2e1d61', '凉粉', '20', '斤', '2020-11-24 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('697fdf72-e3b5-4133-b2d6-19a7aa68d85a', '豆奶500ml', '20', '件', '2020-11-29 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('6acf0272-744a-45f1-a708-b81cda0b2fa4', '细粉', '20', '斤', '2020-12-04 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('70c3e9f9-7237-4051-8192-06b1246cab57', '白酒', '5000', '毫升', '2020-11-25 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('73929394-9985-4d5f-85a1-39e4d3f3113f', '猪肉', '20', '千克', '2020-11-25 16:00:00', 1, '00c6f9b8-35c8-4378-accc-e4246d04d15a');
INSERT INTO `re_store` VALUES ('803c137c-6b3d-4d03-bb11-270faafc24b8', '唯怡豆奶(2L装)', '20', '件', '2020-11-22 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('8661a702-bd9e-4a93-bab8-1d120b234708', '雪花啤酒', '20', '件', '2020-11-25 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('8776a1fe-1f13-414c-af76-760a655aee62', '豆腐', '20', '斤', '2020-11-24 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('8db6d271-57ec-48b8-b379-a934a8ae7eef', '小白菜', '20', '斤', '2020-12-17 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('9e45e2c5-3262-4d49-abe1-ca98034ac19d', '木耳', '20', '斤', '2020-11-25 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('9e986abf-ddd0-48ae-99c0-e471e7be0ca1', '竹笋', '20', '斤', '2020-11-25 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('9f9a34bc-7abd-46e6-a7e6-b881ae2bae84', '青岛啤酒', '20', '件', '2020-11-24 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('a474de10-de08-46de-a324-0a9663d83f61', '鱼丸', '10', '千克', '2020-12-16 16:00:00', 1, '00c6f9b8-35c8-4378-accc-e4246d04d15a');
INSERT INTO `re_store` VALUES ('a480b0e6-cc98-462a-8f8b-3d3f3da08e97', '花菜', '20', '斤', '2020-11-22 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('a8d1b041-513a-4b71-8a60-8986cb97d587', '洋葱', '10', '斤', '2020-12-04 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('bc3885a6-bbb6-4339-876b-fc950de8ec56', '香菇', '20', '斤', '2020-11-25 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('c0f71f3b-db64-453e-8bf9-606b6bf810d4', '土豆', '20', '斤', '2020-12-17 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('c3fb61ea-ec2f-42e3-8cff-a7f08b1778f0', '牛肉', '10', '千克', '2020-12-16 16:00:00', 1, '00c6f9b8-35c8-4378-accc-e4246d04d15a');
INSERT INTO `re_store` VALUES ('c646759c-0879-41af-a6af-343bc22e3e75', '豌豆尖', '10', '斤', '2020-12-16 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('d5e05ff5-e985-4505-a6bb-03b754ec7f9c', '芬达（罐装）', '20', '件', '2020-11-24 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('d8dc3748-29b2-4b8f-87c0-e21305610f25', '虾条', '10', '千克', '2020-11-22 16:00:00', 1, '00c6f9b8-35c8-4378-accc-e4246d04d15a');
INSERT INTO `re_store` VALUES ('df082db1-2925-4acc-965b-080bdbb3365f', '橙汁', '20', '件', '2020-12-17 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('e0d5a18f-ac7f-4323-a6e5-48729fd56cee', '黄瓜', '10', '斤', '2020-12-16 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('ec36e0bf-48de-4565-b286-61e0554f8638', '北冰洋', '20', '件', '2020-12-01 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('f2b54819-bbe5-408e-b05a-e4dab2f58bf0', '平菇', '20', '斤', '2020-11-24 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('f90213db-0180-4bf9-a2cf-a15d6f9b6ba2', '豌豆', '10', '斤', '2020-12-01 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');

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
