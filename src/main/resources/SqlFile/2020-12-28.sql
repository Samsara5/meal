/*
 Navicat Premium Data Transfer

 Source Server         : Samsara
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : localhost:3306
 Source Schema         : restaurant

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 28/12/2020 19:27:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for re_authority
-- ----------------------------
DROP TABLE IF EXISTS `re_authority`;
CREATE TABLE `re_authority`  (
  `authorityid` int(11) NOT NULL,
  `aname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `acover` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
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
  `ename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `eroleid` int(10) DEFAULT NULL,
  `eusername` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `epassword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `esex` int(1) DEFAULT NULL,
  `ephone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `estate` int(1) DEFAULT NULL,
  `deptid` int(10) DEFAULT NULL,
  `salary` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
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
  `mname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `mmateria` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `mpirce` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `mnumber` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '剩余数量',
  `mimageurl` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '展示图片',
  `mischara` int(10) DEFAULT NULL COMMENT '是否是特色菜',
  `mtype` int(10) DEFAULT NULL COMMENT '菜品种类奶茶，小吃...',
  PRIMARY KEY (`mid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of re_menu
-- ----------------------------
INSERT INTO `re_menu` VALUES ('039d0965-131f-4161-9d9d-3738bc588d4c', '白萝卜', 'f239e865-b7f0-41c4-b68b-ff4c4f64d222', '9', '7', 'D://menuImage/6c911814-45b9-4fd0-be44-287563831397.jpg', 0, 701);
INSERT INTO `re_menu` VALUES ('0ae306bc-71a4-416d-8450-d20d70581a8f', '张裕干红葡萄酒', 'c88272dc-2c23-4614-a668-130bbe56e0e6', '184', '4', 'D://menuImage/caefbd78-b285-4ed5-856d-ff104c121544.jpg', 0, 500);
INSERT INTO `re_menu` VALUES ('191c6066-0a3b-4a6f-8334-5980943a58de', '豌豆尖', 'ea107d23-ee18-467c-a955-8e6b277021f0', '6', '10', 'D://menuImage/64d5b1d3-cdca-4f25-85d8-d827cdaae23e.jpg', 0, 701);
INSERT INTO `re_menu` VALUES ('23d4ade1-193a-4ff9-9660-54f4c27480b0', '细粉', 'ce4c3e51-8e99-4cd3-8415-d995ba381430', '7', '3', 'D://menuImage/01a2a7cd-1306-41d0-b6c1-a36cf3aaff24.jpg', 0, 701);
INSERT INTO `re_menu` VALUES ('2d5de3b6-1f33-4477-9c1f-5240155deca9', '洋葱', '0f2842c8-c610-4feb-a6b6-a5a5aa893f7a', '8', '10', 'D://menuImage/d3b4cdb6-19c5-4e14-84d2-a0f5a8f04e3c.jpg', 0, 701);
INSERT INTO `re_menu` VALUES ('397bc408-5086-485f-a18d-c00cfee042a2', '芬达（罐装）', '54828c9e-a9fb-4c8b-9953-64b4777fecfa', '9', '10', 'D://menuImage/69fa2f34-fa44-42a2-b4cf-f120539ba07c.jpg', 0, 500);
INSERT INTO `re_menu` VALUES ('3a0fb07b-7681-47ce-897c-9c8441715fd9', '虾饺', '90ec36cc-bae6-4fba-b468-eab9509f1792', '16', '10', 'D://menuImage/53b4e5fe-6f91-4215-81fc-992446b6fd37.jpg', 0, 702);
INSERT INTO `re_menu` VALUES ('3a85a750-8bd0-40d8-9d0f-8bdb5104045b', '凉粉', 'f7f09cf1-b255-453e-a3f7-f80b346c2d7d', '7', '2', 'D://menuImage/364a5867-c222-4fcb-8be6-2f5c472ba942.jpg', 0, 701);
INSERT INTO `re_menu` VALUES ('3da901e7-49ab-45ae-ac3e-696cc4a1d3a6', '豌豆', 'c2820d2c-aec4-4f8d-a846-ccd809d1fd5f', '9', '10', 'D://menuImage/f931846a-f9ee-434a-ab91-dee549e061e0.jpg', 0, 701);
INSERT INTO `re_menu` VALUES ('50d1b3a8-5485-4375-84f9-8e7a6d5485d8', '宽粉', '5e9a4d88-6131-44ad-b7bc-a31560034819', '6', '4', 'D://menuImage/f9e165d6-4ecf-4bc6-8eb8-af6db3c791aa.jpg', 0, 701);
INSERT INTO `re_menu` VALUES ('5537d453-588d-4bcb-ab56-10aeb3bd26db', '雪碧(大瓶装)', 'e46ba309-2360-4f2b-bc7c-564ce359d1ce', '8', '10', 'D://menuImage/40140b72-4dff-48ac-ac1e-b9bd0a1dffea.jpg', 0, 500);
INSERT INTO `re_menu` VALUES ('555aa7bc-920d-4239-b2ac-fee9c39b13c4', '北冰洋', 'f09cd5f7-c3ed-4660-a9f5-ab283f4e1917', '8', '10', 'D://menuImage/5f8e0c57-8437-4804-b162-fac8c8eaf721.jpg', 0, 500);
INSERT INTO `re_menu` VALUES ('5e6c9f62-2ccb-4fb0-a2b1-bc3000d44aa6', '豆芽', '479e7a23-2b4a-4919-98f8-24669dd35301', '8', '3', 'D://menuImage/2dc9fe63-475e-46db-be07-ad3726573a5d.jpg', 0, 701);
INSERT INTO `re_menu` VALUES ('67699f12-d485-488d-b34e-792922995761', '可乐(罐装)', '26419ada-ea73-48cf-b8f8-93027052b3b5', '7', '10', 'D://menuImage/f87ebe21-4b87-4e8a-97e5-715f75ff2995.jpg', 1, 500);
INSERT INTO `re_menu` VALUES ('6c59058c-a4d4-40ad-8314-fe7708626888', '雪花啤酒', '5fa422bd-54b4-486c-b8b7-750316b045a8', '11', '5', 'D://menuImage/d692e7f1-3871-4444-8da8-4e18b282d3df.jpg', 0, 500);
INSERT INTO `re_menu` VALUES ('6d552be9-9788-42b6-b48d-18599d00533f', '红星二锅头', 'b99542ef-a965-4273-a381-4ce0a67ef61b', '13', '3', 'D://menuImage/5baa6d03-031d-4263-bbe5-46e9e6cae51e.jpg', 0, 500);
INSERT INTO `re_menu` VALUES ('6ff58504-e59d-4ba3-9885-608b5a3d4ced', '雪碧（罐装）', 'cda28b88-661b-4c77-ad2b-44f78775297f', '7', '20', 'D://menuImage/536a0a40-8cfe-4a71-8392-25687ee9dafb.jpg', 1, 500);
INSERT INTO `re_menu` VALUES ('793632e7-2329-42fc-919c-75ddd94a5bfa', '酸梅汤', '9469bf79-c5ca-4cbf-8a08-cb22dddae1e4', '4', '4', 'D://menuImage/3e4188d2-f8e0-429b-ad16-bce04b89d91c.jpg', 0, 500);
INSERT INTO `re_menu` VALUES ('79d5d6ba-f2ce-4477-9b79-a9e010dae380', '平菇', '8b6704b5-5140-471b-ad4e-d18d93535bbe', '6', '5', 'D://menuImage/86b65cca-2f31-472e-917c-cd8c9993cb1f.jpg', 0, 701);
INSERT INTO `re_menu` VALUES ('800d2a28-ac9e-4dd4-8f18-e3abc92e580a', '歪嘴', 'd0e8bb22-720c-405b-84b9-8a85e7797eb4', '10', '3', 'D://menuImage/80b0f093-c1e9-4237-a70c-5d07c98862b5.jpg', 0, 500);
INSERT INTO `re_menu` VALUES ('8550810c-4047-411d-868a-dea806c8f225', '猪肉', 'b35f9001-4d08-4357-81d0-f5b1e37d2bec', '15', '20', 'D://menuImage/46843870-44c0-4983-ab87-20b49d7dd87b.jpg', 0, 702);
INSERT INTO `re_menu` VALUES ('89064f96-6f33-4b14-8617-39b383cf50ed', 'RIO鸡尾酒', 'e6d0b26f-a678-47b6-a837-794fef622846', '12', '6', 'D://menuImage/f2ba00ef-1429-4ce6-a35f-98a9c9961632.jpg', 0, 500);
INSERT INTO `re_menu` VALUES ('8ed61974-fa07-4080-9d75-c8bcaea89c20', '鸡肉', '1160fe48-98e8-44ab-9a8e-8c9efaa26d95', '19', '10', 'D://menuImage/c5d93a1e-fdca-4c6e-a997-b99478d2662e.jpg', 0, 702);
INSERT INTO `re_menu` VALUES ('91ae4522-b936-4310-b107-3b861323d112', '花菜', '14b5ec63-ef76-42b8-84b3-c30f7377893b', '10', '20.0', 'D://menuImage/57c62c2b-c33d-4892-80fc-c9354ea9baf0.jpg', 0, 701);
INSERT INTO `re_menu` VALUES ('9ff331e3-aeb3-49b5-a41d-560f97144b38', '豆皮', '9576868c-90db-4db6-a563-020a01ff5f20', '9', '10', 'D://menuImage/ec59a5d6-7a06-4642-988f-f96944ffa359.jpg', 0, 701);
INSERT INTO `re_menu` VALUES ('b48f7566-7d3f-4d87-be7c-8f05024759cb', '海带', 'e78196d5-35a6-431b-a588-e0161cf7601b', '5', '6', 'D://menuImage/91a42111-78d7-4bfd-a020-069321034342.jpg', 0, 701);
INSERT INTO `re_menu` VALUES ('b6a69145-c73d-4e1f-b2b9-6a17dcc6af6e', '五粮液', '27789351-ca89-4eb5-9361-43dfa166690f', '171', '5', 'D://menuImage/ce0cb046-4ef0-4b1a-8cff-12cc0a0684c3.jpg', 0, 500);
INSERT INTO `re_menu` VALUES ('bb506bf9-6efc-4534-98df-39a73fc80ea6', '羊肉', 'fa58827b-75ed-4c5c-9024-113bc3e95bf9', '19', '20', 'D://menuImage/26ea3141-6b19-454e-87d4-5da70554e748.jpg', 0, 702);
INSERT INTO `re_menu` VALUES ('bc5f83d9-db38-4c64-8f43-29660d2466a1', '青岛啤酒', '556ebd7b-8902-4e65-a459-1b37696aef3b', '19', '2', 'D://menuImage/36f20e1c-8177-4c37-9695-24a6739dba9e.jpg', 0, 500);
INSERT INTO `re_menu` VALUES ('bdb58673-f005-4d0e-90c9-681332a3b612', '豆奶500ml', 'c66d209d-044d-4d60-b4f8-50f0a1e37ded', '2', '20', 'D://menuImage/dea40671-f9f1-4a31-84d4-a808e99d116e.jpg', 0, 500);
INSERT INTO `re_menu` VALUES ('be17af1e-9d60-4c08-b0be-87683c0c9171', '黄瓜', '85f1423a-1bc9-4b80-b3ca-cc6274605cbc', '8', '10', 'D://menuImage/4decdeab-2bc2-4117-b9e8-017022a4b0d2.jpg', 0, 701);
INSERT INTO `re_menu` VALUES ('be19e3b9-aac0-4674-a4e0-883d4e95ddc7', '可乐(大瓶装)', 'c6ec570b-99cc-47de-a09a-74fdbe481e0c', '10', '20', 'D://menuImage/7aad4c76-ede4-46e7-8370-07b7ff38e37f.jpg', 0, 500);
INSERT INTO `re_menu` VALUES ('be412312-79bd-438b-981e-15605b49bd9d', '豆奶1L', '5c9f12d0-91b0-49b2-89cb-2b8f1b9b7cbf', '5', '20.0', 'D://menuImage/2fb30d9a-39cb-47d8-8779-07045808349d.jpg', 1, 500);
INSERT INTO `re_menu` VALUES ('bfc62c57-5dd6-4675-86e4-d0eae4923604', '午餐肉', 'ed2994a3-06c1-4fad-80bf-d3fff860f2ea', '16', '20', 'D://menuImage/2079ed98-bb78-4469-b4b8-2ed242e57007.jpg', 0, 702);
INSERT INTO `re_menu` VALUES ('c2380cbb-e321-46fb-b57b-5bba56fe8694', '白酒', '4f8cae1f-8467-4a05-aee8-d20566a9c7eb', '16', '5000', 'D://menuImage/281d3567-14ce-43f2-a9dc-5798f5792351.jpg', 0, 500);
INSERT INTO `re_menu` VALUES ('c4159a1e-c255-4fbd-a113-791c04dce10c', '虾条', 'c0a321a6-f2b3-4f3d-8f6b-5ed62f159c52', '8', '10', 'D://menuImage/55caf1a8-1382-4998-8532-a23246d924d2.jpg', 0, 702);
INSERT INTO `re_menu` VALUES ('c4ae6a09-935d-4090-8886-3bf92d7a5315', '唯怡豆奶(2L装)', '9c2ea316-dad7-49f2-a005-6bb3186425fc', '13', '3', 'D://menuImage/3adfc84a-0ac6-40c4-b374-2c26f1430512.jpg', 0, 500);
INSERT INTO `re_menu` VALUES ('c82712ea-c174-423c-91e7-4ee00e2b07ef', '香菇', '9d3c4a74-bd99-4ed9-a27f-7d301ae23160', '5', '3', 'D://menuImage/48f738a7-8dff-400e-a6f5-11f1fa3714f0.jpg', 0, 701);
INSERT INTO `re_menu` VALUES ('c9a25577-69f1-42f0-a5b6-6b7468d18cf3', '酸奶', '8f7ccc71-443e-4e3b-9838-7eef8caa147f', '2', '7', 'D://menuImage/ab7d1dbe-541f-403a-940d-8a01baf89b2c.jpg', 0, 500);
INSERT INTO `re_menu` VALUES ('c9f77a22-e1db-4902-8803-1275191d492e', '竹笋', '352fc345-fd73-41a9-9a0b-9121890257f4', '10', '5', 'D://menuImage/2641864a-054e-4380-96be-c277bfc67a9f.jpg', 1, 701);
INSERT INTO `re_menu` VALUES ('d035b668-2c0c-45c4-b9c5-2e851fc903c7', '木耳', 'd2829592-2ead-4fac-90ed-1561fcc0896f', '5', '5', 'D://menuImage/24414db9-5e90-4ffb-ae49-dbbe0ee223af.jpg', 0, 701);
INSERT INTO `re_menu` VALUES ('d0e9096e-ce9d-4ca2-9f50-aeef458ce111', '鱼肉', '9cc33004-4ecd-49e8-91ef-e7ece9efb3b7', '14', '10', 'D://menuImage/921ab0b9-edd3-4f40-b121-3a372ca106fe.jpg', 0, 702);
INSERT INTO `re_menu` VALUES ('d6bd865a-fae7-4584-a979-38608398c912', '莴笋', '151e4746-b773-48db-ab9d-1cf9ee311db0', '9', '20', 'D://menuImage/4ba4c290-2c80-4d2f-b754-0b91cc2538d4.jpg', 0, 701);
INSERT INTO `re_menu` VALUES ('d9966b84-66ca-4bc8-9dea-cdabce4caf60', '芬达(大瓶装)', '02941f0b-2c9e-4802-9723-8c032713fd96', '9', '10', 'D://menuImage/86fb42d3-c9f6-457e-a6af-17e4d68d1c64.jpg', 0, 500);
INSERT INTO `re_menu` VALUES ('dbe9ab06-c55b-41ff-9731-3d42a2f217f5', '油条', '452c32b2-92e0-4f05-a1a9-bdcc5d5ab15e', '8', '1', 'D://menuImage/ef51bd45-9351-44d4-839e-b287fa56dc91.jpg', 1, 701);
INSERT INTO `re_menu` VALUES ('e0b9e297-c897-480a-bfe4-e9663583390c', '小白菜', '7aa026fd-2877-48c4-8d6a-b6fa8c1e792d', '7', '2', 'D://menuImage/b7fb0019-7157-4293-871a-287ba567b3fc.jpg', 0, 701);
INSERT INTO `re_menu` VALUES ('e7b40cc0-2109-4845-a46b-27a341bdbfd5', '奶茶粉', 'f0847443-dd68-43ea-b07d-960a3bb3d727', '34', '1', 'D://menuImage/5aca9111-6dea-4feb-abea-2843df78d973.jpg', 0, 500);
INSERT INTO `re_menu` VALUES ('f05980bf-2b42-4eed-bc11-55e197350dbc', '豆腐', '95a21359-899e-48ae-9bfc-1f76a1602745', '5', '4', 'D://menuImage/772b2aeb-742e-453c-9223-4fba1051c709.jpg', 0, 701);
INSERT INTO `re_menu` VALUES ('f0cb6919-c363-4339-aaa6-ee670ce201f9', '莲藕', '7b6dbfbc-9163-4dc9-a938-d5f67fb993f1', '8', '20', 'D://menuImage/e9accd55-f94a-45ec-aafd-ce14ae875d4b.jpg', 0, 701);
INSERT INTO `re_menu` VALUES ('f2d323c2-3ac6-4f98-8b04-f37183862f71', '鱼丸', '081319a5-62fa-414d-b52e-0eca9dd43bf7', '19', '10', 'D://menuImage/9ff56e56-19eb-494e-b41a-1d0922170778.jpg', 1, 702);
INSERT INTO `re_menu` VALUES ('f2f0539b-a91c-4a37-a8e5-974e0bd10853', '牛肉', '61f0e9c4-440c-4669-9ac6-cee07e170032', '18', '10', 'D://menuImage/48b33c73-9c84-4a0a-8354-a16cae65389f.jpg', 0, 702);
INSERT INTO `re_menu` VALUES ('f3984885-834c-40a0-8c13-599fb518616f', '橙汁', '889c60ab-dae1-4a47-a30c-6c0cc06e2cdc', '12', '2', 'D://menuImage/d196d77a-04de-480b-9817-0df58419e132.jpg', 0, 500);
INSERT INTO `re_menu` VALUES ('fb1f6317-5aaa-402a-a2ce-0a0238b09aad', '土豆', 'de34f7d1-baf1-4b26-9972-c5783b02ec2e', '8', '20', 'D://menuImage/2c08326d-60eb-4a54-80fa-4d754bc316db.jpg', 1, 701);

-- ----------------------------
-- Table structure for re_menutpye
-- ----------------------------
DROP TABLE IF EXISTS `re_menutpye`;
CREATE TABLE `re_menutpye`  (
  `mtid` int(10) NOT NULL,
  `mtname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `mpid` int(10) DEFAULT NULL,
  `mlevel` int(1) DEFAULT NULL,
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
  `itemname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pid` int(10) NOT NULL,
  `dirlevel` int(10) DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
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
  `oid` int(20) NOT NULL AUTO_INCREMENT,
  `uid` int(20) DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `price` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `createtime` datetime(0) DEFAULT NULL,
  `finshtime` datetime(0) DEFAULT NULL,
  `state` int(1) DEFAULT NULL,
  PRIMARY KEY (`oid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for re_ordercontent
-- ----------------------------
DROP TABLE IF EXISTS `re_ordercontent`;
CREATE TABLE `re_ordercontent`  (
  `contentid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `storename` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ordernum` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `totalprice` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`contentid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for re_role
-- ----------------------------
DROP TABLE IF EXISTS `re_role`;
CREATE TABLE `re_role`  (
  `roleid` int(5) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `roleauthority` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
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
  `stroename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `stroenumber` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `stroetime` datetime(0) DEFAULT NULL,
  `stroestate` int(1) DEFAULT NULL,
  `storeman` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`stroeid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of re_store
-- ----------------------------
INSERT INTO `re_store` VALUES ('02941f0b-2c9e-4802-9723-8c032713fd96', '芬达(大瓶装)', '10', '件', '2020-12-16 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('081319a5-62fa-414d-b52e-0eca9dd43bf7', '鱼丸', '10', '千克', '2020-12-16 16:00:00', 1, '00c6f9b8-35c8-4378-accc-e4246d04d15a');
INSERT INTO `re_store` VALUES ('0f2842c8-c610-4feb-a6b6-a5a5aa893f7a', '洋葱', '10', '斤', '2020-12-04 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('1160fe48-98e8-44ab-9a8e-8c9efaa26d95', '鸡肉', '10', '千克', '2020-11-24 16:00:00', 1, '00c6f9b8-35c8-4378-accc-e4246d04d15a');
INSERT INTO `re_store` VALUES ('14b5ec63-ef76-42b8-84b3-c30f7377893b', '花菜', '20.0', '斤', '2020-11-22 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('151e4746-b773-48db-ab9d-1cf9ee311db0', '莴笋', '20', '斤', '2020-11-29 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('26419ada-ea73-48cf-b8f8-93027052b3b5', '可乐(罐装)', '10', '件', '2020-12-16 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('27789351-ca89-4eb5-9361-43dfa166690f', '五粮液', '5', '瓶', '2020-11-24 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('352fc345-fd73-41a9-9a0b-9121890257f4', '竹笋', '5', '斤', '2020-11-25 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('452c32b2-92e0-4f05-a1a9-bdcc5d5ab15e', '油条', '1', '斤', '2020-12-17 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('479e7a23-2b4a-4919-98f8-24669dd35301', '豆芽', '3', '斤', '2020-11-22 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('4f8cae1f-8467-4a05-aee8-d20566a9c7eb', '白酒', '5000', '毫升', '2020-11-25 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('54828c9e-a9fb-4c8b-9953-64b4777fecfa', '芬达（罐装）', '10', '件', '2020-11-24 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('556ebd7b-8902-4e65-a459-1b37696aef3b', '青岛啤酒', '2', '件', '2020-11-24 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('5c9f12d0-91b0-49b2-89cb-2b8f1b9b7cbf', '豆奶1L', '20.0', '件', '2020-11-22 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('5e9a4d88-6131-44ad-b7bc-a31560034819', '宽粉', '4', '斤', '2020-12-17 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('5fa422bd-54b4-486c-b8b7-750316b045a8', '雪花啤酒', '5', '件', '2020-11-25 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('61f0e9c4-440c-4669-9ac6-cee07e170032', '牛肉', '10', '千克', '2020-12-16 16:00:00', 1, '00c6f9b8-35c8-4378-accc-e4246d04d15a');
INSERT INTO `re_store` VALUES ('7aa026fd-2877-48c4-8d6a-b6fa8c1e792d', '小白菜', '2', '斤', '2020-12-17 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('7b6dbfbc-9163-4dc9-a938-d5f67fb993f1', '莲藕', '20', '斤', '2020-11-25 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('85f1423a-1bc9-4b80-b3ca-cc6274605cbc', '黄瓜', '10', '斤', '2020-12-16 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('889c60ab-dae1-4a47-a30c-6c0cc06e2cdc', '橙汁', '2', '件', '2020-12-17 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('8b6704b5-5140-471b-ad4e-d18d93535bbe', '平菇', '5', '斤', '2020-11-24 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('8f7ccc71-443e-4e3b-9838-7eef8caa147f', '酸奶', '7', '件', '2020-11-25 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('90ec36cc-bae6-4fba-b468-eab9509f1792', '虾饺', '10', '千克', '2020-12-04 16:00:00', 1, '00c6f9b8-35c8-4378-accc-e4246d04d15a');
INSERT INTO `re_store` VALUES ('9469bf79-c5ca-4cbf-8a08-cb22dddae1e4', '酸梅汤', '4', '件', '2020-11-24 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('9576868c-90db-4db6-a563-020a01ff5f20', '豆皮', '10', '斤', '2020-11-24 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('95a21359-899e-48ae-9bfc-1f76a1602745', '豆腐', '4', '斤', '2020-11-24 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('9c2ea316-dad7-49f2-a005-6bb3186425fc', '唯怡豆奶(2L装)', '3', '件', '2020-11-22 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('9cc33004-4ecd-49e8-91ef-e7ece9efb3b7', '鱼肉', '10', '千克', '2020-12-01 16:00:00', 1, '00c6f9b8-35c8-4378-accc-e4246d04d15a');
INSERT INTO `re_store` VALUES ('9d3c4a74-bd99-4ed9-a27f-7d301ae23160', '香菇', '3', '斤', '2020-11-25 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('b35f9001-4d08-4357-81d0-f5b1e37d2bec', '猪肉', '20', '千克', '2020-11-25 16:00:00', 1, '00c6f9b8-35c8-4378-accc-e4246d04d15a');
INSERT INTO `re_store` VALUES ('b99542ef-a965-4273-a381-4ce0a67ef61b', '红星二锅头', '3', '瓶', '2020-12-04 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('c0a321a6-f2b3-4f3d-8f6b-5ed62f159c52', '虾条', '10', '千克', '2020-11-22 16:00:00', 1, '00c6f9b8-35c8-4378-accc-e4246d04d15a');
INSERT INTO `re_store` VALUES ('c2820d2c-aec4-4f8d-a846-ccd809d1fd5f', '豌豆', '10', '斤', '2020-12-01 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('c66d209d-044d-4d60-b4f8-50f0a1e37ded', '豆奶500ml', '20', '件', '2020-11-29 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('c6ec570b-99cc-47de-a09a-74fdbe481e0c', '可乐(大瓶装)', '20', '件', '2020-12-17 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('c88272dc-2c23-4614-a668-130bbe56e0e6', '张裕干红葡萄酒', '4', '瓶', '2020-12-17 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('cda28b88-661b-4c77-ad2b-44f78775297f', '雪碧（罐装）', '20', '件', '2020-11-25 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('ce4c3e51-8e99-4cd3-8415-d995ba381430', '细粉', '3', '斤', '2020-12-04 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('d0e8bb22-720c-405b-84b9-8a85e7797eb4', '歪嘴', '3', '瓶', '2020-11-25 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('d2829592-2ead-4fac-90ed-1561fcc0896f', '木耳', '5', '斤', '2020-11-25 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('de34f7d1-baf1-4b26-9972-c5783b02ec2e', '土豆', '20', '斤', '2020-12-17 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('e46ba309-2360-4f2b-bc7c-564ce359d1ce', '雪碧(大瓶装)', '10', '件', '2020-12-04 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('e6d0b26f-a678-47b6-a837-794fef622846', 'RIO鸡尾酒', '6', '件', '2020-11-25 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('e78196d5-35a6-431b-a588-e0161cf7601b', '海带', '6', '斤', '2020-11-25 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('ea107d23-ee18-467c-a955-8e6b277021f0', '豌豆尖', '10', '斤', '2020-12-16 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('ed2994a3-06c1-4fad-80bf-d3fff860f2ea', '午餐肉', '20', '千克', '2020-11-29 16:00:00', 1, '00c6f9b8-35c8-4378-accc-e4246d04d15a');
INSERT INTO `re_store` VALUES ('f0847443-dd68-43ea-b07d-960a3bb3d727', '奶茶粉', '1', '瓶', '2020-12-17 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('f09cd5f7-c3ed-4660-a9f5-ab283f4e1917', '北冰洋', '10', '件', '2020-12-01 16:00:00', 3, 'b7c82609-efd5-48c1-a59f-05e746aa9b65');
INSERT INTO `re_store` VALUES ('f239e865-b7f0-41c4-b68b-ff4c4f64d222', '白萝卜', '7', '斤', '2020-11-25 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('f7f09cf1-b255-453e-a3f7-f80b346c2d7d', '凉粉', '2', '斤', '2020-11-24 16:00:00', 2, '96bb9382-f252-4947-b07b-6c98cc023509');
INSERT INTO `re_store` VALUES ('fa58827b-75ed-4c5c-9024-113bc3e95bf9', '羊肉', '20', '千克', '2020-12-17 16:00:00', 1, '00c6f9b8-35c8-4378-accc-e4246d04d15a');

-- ----------------------------
-- Table structure for re_user
-- ----------------------------
DROP TABLE IF EXISTS `re_user`;
CREATE TABLE `re_user`  (
  `uid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `roleid` int(5) DEFAULT NULL,
  `phoen` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `birth` datetime(0) DEFAULT NULL,
  `gender` int(1) DEFAULT NULL,
  `createtime` datetime(0) DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
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
