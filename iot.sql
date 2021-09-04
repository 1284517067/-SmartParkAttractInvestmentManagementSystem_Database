/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : localhost:3306
 Source Schema         : iot

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 04/09/2021 21:35:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for approval_opinion
-- ----------------------------
DROP TABLE IF EXISTS `approval_opinion`;
CREATE TABLE `approval_opinion`  (
  `opinion_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `opinion` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `form_id` bigint(20) NULL DEFAULT NULL,
  `position_id` bigint(20) NULL DEFAULT NULL,
  `approval_process_node_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `handler` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `prev_node` bigint(20) NULL DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `approval_date` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contract_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`opinion_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of approval_opinion
-- ----------------------------
INSERT INTO `approval_opinion` VALUES (1, NULL, 3, 4, '招商审批', NULL, NULL, '待审批', NULL, '意向登记');
INSERT INTO `approval_opinion` VALUES (2, NULL, 3, 9, '招商领导审批', NULL, 3, '待审批', NULL, '意向登记');
INSERT INTO `approval_opinion` VALUES (3, '1', 4, 4, '招商审批', NULL, NULL, '同意', NULL, '意向登记');
INSERT INTO `approval_opinion` VALUES (4, '1', 4, 9, '招商领导审批', NULL, 4, '同意', NULL, '意向登记');
INSERT INTO `approval_opinion` VALUES (7, '1', 5, 4, '招商审批', NULL, NULL, '同意', NULL, '意向登记');
INSERT INTO `approval_opinion` VALUES (8, '1', 5, 9, '招商领导审批', NULL, 5, '同意', NULL, '意向登记');
INSERT INTO `approval_opinion` VALUES (9, 'ckna', 2, 4, '招商审批', NULL, NULL, '同意', NULL, '意向登记');
INSERT INTO `approval_opinion` VALUES (10, '1', 2, 9, '招商领导审批', NULL, 2, '同意', NULL, '意向登记');
INSERT INTO `approval_opinion` VALUES (11, 'caln', 6, 4, '招商审批', NULL, NULL, '同意', NULL, '意向登记');
INSERT INTO `approval_opinion` VALUES (12, 'ca', 6, 9, '招商领导审批', NULL, 6, '同意', NULL, '意向登记');
INSERT INTO `approval_opinion` VALUES (13, '2', 8, 4, '招商审批', NULL, NULL, '拒绝', NULL, '意向登记');
INSERT INTO `approval_opinion` VALUES (14, '0', 8, 9, '招商领导审批', NULL, 8, '拒绝', NULL, '意向登记');
INSERT INTO `approval_opinion` VALUES (15, '0', 9, 4, '招商审批', NULL, NULL, '拒绝', NULL, '意向登记');
INSERT INTO `approval_opinion` VALUES (16, '0', 9, 9, '招商领导审批', NULL, 9, '拒绝', NULL, '意向登记');
INSERT INTO `approval_opinion` VALUES (17, '2', 21, 4, '招商审批', NULL, NULL, '拒绝', NULL, '意向登记');
INSERT INTO `approval_opinion` VALUES (18, NULL, 21, 9, '招商领导审批', NULL, 21, '待审批', NULL, '意向登记');
INSERT INTO `approval_opinion` VALUES (19, NULL, 3, 8, '测试审批节点', NULL, NULL, '待审批', NULL, '意向协议');
INSERT INTO `approval_opinion` VALUES (20, NULL, 3, 6, '测试审批节点', NULL, 3, '待审批', NULL, '意向协议');
INSERT INTO `approval_opinion` VALUES (21, NULL, 2, 8, '测试审批节点', NULL, NULL, '待审批', NULL, '意向协议');
INSERT INTO `approval_opinion` VALUES (22, NULL, 2, 6, '测试审批节点', NULL, 2, '待审批', NULL, '意向协议');
INSERT INTO `approval_opinion` VALUES (23, '1', 4, 4, '招商部门审批', NULL, NULL, '同意', NULL, '意向协议');
INSERT INTO `approval_opinion` VALUES (24, '1', 4, 9, '招商领导审批', NULL, 4, '同意', NULL, '意向协议');
INSERT INTO `approval_opinion` VALUES (25, '1', 5, 4, '招商部门审批', NULL, NULL, '同意', NULL, '意向协议');
INSERT INTO `approval_opinion` VALUES (26, '1', 5, 9, '招商领导审批', NULL, 5, '同意', NULL, '意向协议');
INSERT INTO `approval_opinion` VALUES (27, '1', 6, 4, '招商部门审批', NULL, NULL, '同意', NULL, '意向协议');
INSERT INTO `approval_opinion` VALUES (28, '1', 6, 9, '招商领导审批', NULL, 6, '同意', NULL, '意向协议');
INSERT INTO `approval_opinion` VALUES (29, '1', 8, 4, '招商部门审批', NULL, NULL, '同意', NULL, '租赁合同');
INSERT INTO `approval_opinion` VALUES (30, '1', 9, 4, '招商部门审批', NULL, NULL, '同意', NULL, '租赁合同');
INSERT INTO `approval_opinion` VALUES (31, '1', 1, 8, '运维审批', NULL, NULL, '同意', NULL, '入驻申请');
INSERT INTO `approval_opinion` VALUES (32, '1', 1, 4, '招商审批', NULL, 1, '同意', NULL, '入驻申请');
INSERT INTO `approval_opinion` VALUES (33, '1', 1, 9, '招商领导审批', NULL, 1, '同意', NULL, '入驻申请');
INSERT INTO `approval_opinion` VALUES (34, '1', 1, 2, '招商管理审批', NULL, 1, '同意', NULL, '入驻申请');
INSERT INTO `approval_opinion` VALUES (35, '1', 1, 7, '运维领导审批', NULL, 1, '同意', NULL, '入驻申请');
INSERT INTO `approval_opinion` VALUES (36, NULL, 20, 9, '招商领导审批', NULL, NULL, '待审批', NULL, '意向登记');
INSERT INTO `approval_opinion` VALUES (37, NULL, 7, 9, '招商部门审批', NULL, NULL, '待审批', NULL, '意向协议');
INSERT INTO `approval_opinion` VALUES (38, NULL, 7, 9, '招商领导审批', NULL, 7, '待审批', NULL, '意向协议');
INSERT INTO `approval_opinion` VALUES (39, NULL, 8, 9, '招商部门审批', NULL, NULL, '待审批', NULL, '意向协议');
INSERT INTO `approval_opinion` VALUES (40, NULL, 8, 9, '招商领导审批', NULL, 8, '待审批', NULL, '意向协议');
INSERT INTO `approval_opinion` VALUES (41, NULL, 9, 9, '招商部门审批', NULL, NULL, '待审批', NULL, '意向协议');
INSERT INTO `approval_opinion` VALUES (42, NULL, 9, 9, '招商领导审批', NULL, 9, '待审批', NULL, '意向协议');
INSERT INTO `approval_opinion` VALUES (43, NULL, 10, 4, '招商部门审批', NULL, NULL, '待审批', NULL, '租赁合同');
INSERT INTO `approval_opinion` VALUES (44, NULL, 11, 4, '招商部门审批', NULL, NULL, '待审批', NULL, '租赁合同');
INSERT INTO `approval_opinion` VALUES (45, NULL, 11, 9, '招商领导审批', NULL, 11, '待审批', NULL, '租赁合同');
INSERT INTO `approval_opinion` VALUES (46, NULL, 11, 6, '物业部门审批', NULL, 11, '待审批', NULL, '租赁合同');
INSERT INTO `approval_opinion` VALUES (47, NULL, 11, 5, '物业领导审批', NULL, 11, '待审批', NULL, '租赁合同');

-- ----------------------------
-- Table structure for approval_process
-- ----------------------------
DROP TABLE IF EXISTS `approval_process`;
CREATE TABLE `approval_process`  (
  `approval_process_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `approval_process_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contract_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `process_description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `business_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`approval_process_id`) USING BTREE,
  UNIQUE INDEX `a_p_name`(`approval_process_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of approval_process
-- ----------------------------
INSERT INTO `approval_process` VALUES (1, '租赁合同审批', '租赁合同', '略', '新签', '启用');
INSERT INTO `approval_process` VALUES (2, '测试审批流', '入驻申请', '', '新签', '启用');
INSERT INTO `approval_process` VALUES (10, '测试审批流1', '入驻申请', '', '新签', '废弃');
INSERT INTO `approval_process` VALUES (11, '测试审批流3', '入驻申请', '', '续签', '启用');
INSERT INTO `approval_process` VALUES (12, '意向协议审批流', '意向协议', '', '新签', '启用');
INSERT INTO `approval_process` VALUES (13, '测试审批流5', '退租合同', '', '新签', '启用');
INSERT INTO `approval_process` VALUES (14, '测试审批流6', '意向协议', '', '续签', '启用');
INSERT INTO `approval_process` VALUES (15, '测试审批流8', '退租合同', '', '续签', '已删除');
INSERT INTO `approval_process` VALUES (16, '测试审批流9', '租赁合同', '', '续签', '启用');
INSERT INTO `approval_process` VALUES (17, '测试审批流7', '退园申请', '', '新签', '已删除');
INSERT INTO `approval_process` VALUES (18, '意向登记审批流', '意向登记', '', '新签', '启用');

-- ----------------------------
-- Table structure for approval_process_node
-- ----------------------------
DROP TABLE IF EXISTS `approval_process_node`;
CREATE TABLE `approval_process_node`  (
  `approval_process_node_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `approval_process_node_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `prev_node_id` bigint(20) NULL DEFAULT NULL,
  `position_id` bigint(20) NULL DEFAULT NULL,
  `approval_process_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`approval_process_node_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of approval_process_node
-- ----------------------------
INSERT INTO `approval_process_node` VALUES (41, 'cs', NULL, 4, 10);
INSERT INTO `approval_process_node` VALUES (42, 'cs2', 41, 5, 10);
INSERT INTO `approval_process_node` VALUES (73, '招商领导审批', NULL, 9, 16);
INSERT INTO `approval_process_node` VALUES (74, '物业领导审批', 73, 5, 16);
INSERT INTO `approval_process_node` VALUES (75, '运维领导审批', 74, 7, 16);
INSERT INTO `approval_process_node` VALUES (80, '运维审批', NULL, 8, 2);
INSERT INTO `approval_process_node` VALUES (81, '招商审批', 80, 4, 2);
INSERT INTO `approval_process_node` VALUES (82, '招商领导审批', 81, 9, 2);
INSERT INTO `approval_process_node` VALUES (83, '招商管理审批', 82, 2, 2);
INSERT INTO `approval_process_node` VALUES (84, '运维领导审批', 83, 7, 2);
INSERT INTO `approval_process_node` VALUES (91, '招商部门审批', NULL, 4, 13);
INSERT INTO `approval_process_node` VALUES (92, '招商领导审批', 91, 9, 13);
INSERT INTO `approval_process_node` VALUES (103, '招商审批', NULL, 4, 18);
INSERT INTO `approval_process_node` VALUES (104, '招商领导审批', 103, 9, 18);
INSERT INTO `approval_process_node` VALUES (105, '招商部门审批', NULL, 4, 12);
INSERT INTO `approval_process_node` VALUES (106, '招商领导审批', 105, 9, 12);
INSERT INTO `approval_process_node` VALUES (107, '招商部门审批', NULL, 4, 1);
INSERT INTO `approval_process_node` VALUES (108, '招商领导审批', 107, 9, 1);
INSERT INTO `approval_process_node` VALUES (109, '物业部门审批', 108, 6, 1);
INSERT INTO `approval_process_node` VALUES (110, '物业领导审批', 109, 5, 1);

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department`  (
  `department_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`department_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES (3, '招商');
INSERT INTO `department` VALUES (4, '物业');
INSERT INTO `department` VALUES (5, '运维');

-- ----------------------------
-- Table structure for enter_application
-- ----------------------------
DROP TABLE IF EXISTS `enter_application`;
CREATE TABLE `enter_application`  (
  `form_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `form_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enterprise_id` bigint(20) NULL DEFAULT NULL,
  `contract_id` bigint(20) NULL DEFAULT NULL,
  `enter_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enter_population` bigint(20) NULL DEFAULT NULL,
  `principal` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enter_description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `approval_status` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`form_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of enter_application
-- ----------------------------
INSERT INTO `enter_application` VALUES (1, '2021-02-20-CSAC-入驻申请', 4, 9, '2021-02-21', 11, 'admin', '1', '已发', '审批完成');

-- ----------------------------
-- Table structure for enterprise
-- ----------------------------
DROP TABLE IF EXISTS `enterprise`;
CREATE TABLE `enterprise`  (
  `enterprise_id` bigint(20) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT '企业id',
  `enterprise_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业名称',
  `status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业状态',
  `enterprise_nature` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业性质',
  `enter_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '入园时间',
  `office_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '办公地址',
  `enterprise_legal_person` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业法人',
  `registration_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '注册时间',
  `contact` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人',
  `contact_tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人电话',
  `contact_department` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人所属部门',
  `contact_position` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人所在职位',
  `enterprise_email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业邮箱',
  `registered_capital` bigint(20) NULL DEFAULT NULL COMMENT '注册资金',
  `industry_type_id` bigint(20) NULL DEFAULT NULL COMMENT '所属行业类型',
  `enterprise_area` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业所属地区',
  `business_registration_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工商注册类型',
  `enterprise_introduction` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '企业简介',
  `enter_park` bigint(20) NULL DEFAULT NULL COMMENT '入驻园区',
  `record_date` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登记时间',
  `contract_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '合同类型',
  `enterprise_tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业电话',
  `source` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `qq` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`enterprise_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of enterprise
-- ----------------------------
INSERT INTO `enterprise` VALUES (00000000000000000001, '测试公司1', '正常', '个人', '2020-12-17', '测试地址', '测试工具人', '2020-12-17', '测试工具人', '13333322432', '测试工具人的部门', '测试工具人的职位', '12@qq.com', 12000000, 1, '广东省珠海市', '国有经济', '测试公司简介', 1, '2020-12-17', '租赁合同', '13111122222', NULL, NULL);
INSERT INTO `enterprise` VALUES (00000000000000000003, '测试企业2', '筹建', '中外合资', '2020-12-17', '测试地址2', '工具人', '2020-12-17', '测试工具人', '13110002927', '工具人部门', '工具人总经理', '工具人@qq.com', 124142, 6, '测试地区', '股份制', '', 5, '2020-12-17', '物业合同', '13110002927', NULL, NULL);
INSERT INTO `enterprise` VALUES (00000000000000000004, 'CSAC', '正常', NULL, NULL, NULL, '12', '2021-01-05', 'AC', '13111234444', '2133', '12', NULL, 13, 1, 'SAC', '股份制', NULL, NULL, NULL, '物业合同', '13116228777', NULL, NULL);
INSERT INTO `enterprise` VALUES (00000000000000000005, '回归测试', '正常', '私营', '2021-03-11', 'sad', 'efwi', '2021-03-31', '阿婆的家', '13112344928', '', '', 'isve@qq.com', 13, 2, '时间', '私营经济', '', 1, '2021-03-24', '租赁合同', '13112344928', '自主开发', NULL);

-- ----------------------------
-- Table structure for enterprise_enter_park
-- ----------------------------
DROP TABLE IF EXISTS `enterprise_enter_park`;
CREATE TABLE `enterprise_enter_park`  (
  `enterprise_id` bigint(20) NULL DEFAULT NULL,
  `space_id` bigint(20) NULL DEFAULT NULL,
  `record_date` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of enterprise_enter_park
-- ----------------------------
INSERT INTO `enterprise_enter_park` VALUES (1, 1, '2020-12-17');
INSERT INTO `enterprise_enter_park` VALUES (3, 5, '2020-12-17');
INSERT INTO `enterprise_enter_park` VALUES (3, 1, '2021-02-21');
INSERT INTO `enterprise_enter_park` VALUES (4, 5, '2021-02-21');

-- ----------------------------
-- Table structure for industry_type
-- ----------------------------
DROP TABLE IF EXISTS `industry_type`;
CREATE TABLE `industry_type`  (
  `industry_type_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `industry_type_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `father_node_id` bigint(20) NULL DEFAULT NULL,
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`industry_type_id`) USING BTREE,
  UNIQUE INDEX `industry_type_id`(`industry_type_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of industry_type
-- ----------------------------
INSERT INTO `industry_type` VALUES (1, 'IT互联网', NULL, NULL, '正常');
INSERT INTO `industry_type` VALUES (2, '互联网应用', 1, NULL, '正常');
INSERT INTO `industry_type` VALUES (3, '房地产', NULL, '', '正常');
INSERT INTO `industry_type` VALUES (4, '房产中介', 3, '无', '正常');
INSERT INTO `industry_type` VALUES (5, '金融行业', NULL, NULL, '正常');
INSERT INTO `industry_type` VALUES (6, '电子商务', 1, NULL, '正常');
INSERT INTO `industry_type` VALUES (7, '地产租赁', 3, NULL, '废弃');
INSERT INTO `industry_type` VALUES (8, '制造业', NULL, NULL, '正常');
INSERT INTO `industry_type` VALUES (9, '服装制造', 8, NULL, '正常');
INSERT INTO `industry_type` VALUES (10, '证券', 5, '', '正常');
INSERT INTO `industry_type` VALUES (11, '食宿服务', NULL, '', '正常');
INSERT INTO `industry_type` VALUES (13, '教育行业', NULL, '', '正常');

-- ----------------------------
-- Table structure for intention_agreement
-- ----------------------------
DROP TABLE IF EXISTS `intention_agreement`;
CREATE TABLE `intention_agreement`  (
  `form_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `form_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enterprise_id` bigint(20) NULL DEFAULT NULL,
  `earnest` bigint(20) NULL DEFAULT NULL,
  `deadline` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `apply_date` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `applicant` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `approval_status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `reset_flag` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`form_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of intention_agreement
-- ----------------------------
INSERT INTO `intention_agreement` VALUES (1, '2021-01-13-CSAC-意向协议', 4, 21, '2021-01-22', '2021-01-13', 'admin', '', '待发', NULL, 0);
INSERT INTO `intention_agreement` VALUES (2, '2021-01-13-CSAC-意向协议(1)', 4, 24, '2021-01-26', '2021-01-13', 'admin', '', '已发', '等待测试审批节点', 0);
INSERT INTO `intention_agreement` VALUES (3, '2021-01-13-CSAC-意向协议(2)', 4, 34, '2021-01-25', '2021-01-13', 'admin', '', '已发', '等待测试审批节点', 0);
INSERT INTO `intention_agreement` VALUES (4, '2021-01-13-CSAC-意向协议(3)', 4, 313, '2021-01-13', '2021-01-13', 'admin', '', '已发', '等待招商部门审批', 0);
INSERT INTO `intention_agreement` VALUES (5, '2021-01-13-测试公司1-意向协议', 1, 12, '2021-01-13', '2021-01-13', 'admin', '', '已发', '审批完成', 1);
INSERT INTO `intention_agreement` VALUES (6, '2021-01-13-CSAC-意向协议(4)', 4, 12, '2021-01-13', '2021-01-13', 'admin', '', '已发', '审批完成', 1);
INSERT INTO `intention_agreement` VALUES (7, '2021-02-23-测试企业2-意向协议', 3, 654, '2021-02-24', '2021-02-23', 'admin', '', '已发', '等待招商部门审批', 0);
INSERT INTO `intention_agreement` VALUES (8, '2021-02-23-测试公司1-意向协议', 1, 876, '2021-02-23', '2021-02-23', 'admin', '', '已发', '等待招商部门审批', 0);
INSERT INTO `intention_agreement` VALUES (9, '2021-02-23-测试公司1-意向协议(1)', 1, 13, '2021-02-24', '2021-02-23', 'admin', '', '已发', '等待招商部门审批', 0);

-- ----------------------------
-- Table structure for intention_agreement_room
-- ----------------------------
DROP TABLE IF EXISTS `intention_agreement_room`;
CREATE TABLE `intention_agreement_room`  (
  `form_id` bigint(20) NOT NULL,
  `space_id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of intention_agreement_room
-- ----------------------------
INSERT INTO `intention_agreement_room` VALUES (3, 4);
INSERT INTO `intention_agreement_room` VALUES (3, 9);
INSERT INTO `intention_agreement_room` VALUES (2, 4);
INSERT INTO `intention_agreement_room` VALUES (4, 4);
INSERT INTO `intention_agreement_room` VALUES (5, 4);
INSERT INTO `intention_agreement_room` VALUES (6, 4);
INSERT INTO `intention_agreement_room` VALUES (7, 4);
INSERT INTO `intention_agreement_room` VALUES (8, 4);
INSERT INTO `intention_agreement_room` VALUES (9, 4);

-- ----------------------------
-- Table structure for intention_registration_form
-- ----------------------------
DROP TABLE IF EXISTS `intention_registration_form`;
CREATE TABLE `intention_registration_form`  (
  `form_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '登记表ID',
  `form_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '合同名称',
  `enterprise_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业名称',
  `enterprise_area` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业所属地区',
  `industry_type_id` bigint(20) NULL DEFAULT NULL COMMENT '行业类型',
  `source` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '来源方式',
  `contact` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人',
  `contact_tel` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `contact_department` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人部门',
  `contact_position` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人职位',
  `qq` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人QQ',
  `contact_email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人邮箱',
  `enterprise_tel` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业电话',
  `enterprise_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业网址',
  `enterprise_legal_person` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业法人',
  `registration_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '注册日期',
  `registered_capital` bigint(20) NULL DEFAULT NULL COMMENT '注册资金',
  `department_id` bigint(20) NULL DEFAULT NULL COMMENT '负责部门',
  `department_manager` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门经理',
  `apply_date` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '申请日期',
  `principal` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '申请人',
  `contract_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '合同类型',
  `status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表单状态',
  `business_registration_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工商注册类型',
  `approval_status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审批状态',
  PRIMARY KEY (`form_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of intention_registration_form
-- ----------------------------
INSERT INTO `intention_registration_form` VALUES (2, '2020-12-30-CSAC-意向登记', 'CSAC', 'SAC', 1, '自主开发', 'AC', '13111234444', '2133', '12', '123', '12#@QQ.COM', '13116228777', '13431', '12', '2021-01-05', 13, 3, 'admin', '2020-12-30', 'admin', '物业合同', '已发', '股份制', '审批完成');
INSERT INTO `intention_registration_form` VALUES (3, '2020-12-31-测试送办-意向登记', '测试送办', 'csa', 3, '企业介绍', 'ca', '13111188888', 'cwih', 'vk', 'lcwioehco', 'ckwu@qq.com', '15177783839', 'kwfhu', ' c', '2020-12-30', 12, 3, 'admin', '2020-12-31', 'admin', '租赁合同', '已发', '国有经济', '');
INSERT INTO `intention_registration_form` VALUES (4, '2021-01-04-测试送办1-意向登记', '测试送办1', 'CSa', 2, '自主开发', 'ascij', '13411188399', 'oiqdw', 'dqlwn', '13411188399', '13411188399@qq.com', '13411188399', '13411188399pwoj', 'csakln', '2021-01-28', 12, 3, 'admin', '2021-01-04', 'admin', '物业合同', '已发', '有限责任公司', '审批完成');
INSERT INTO `intention_registration_form` VALUES (5, '2021-01-05-测试消息2-意向登记', '测试消息2', 'cs', 1, '自主开发', 'sc', '15338888883', 'dsuh', 'dskh', '15338888883', '15338888883@qq.com', '15338888883', 'LASKM', 'LCKN', '2021-01-17', 11, 3, 'admin', '2021-01-05', 'admin2', '物业合同', '已发', '股份制', '等待招商领导审批');
INSERT INTO `intention_registration_form` VALUES (6, '2021-01-06-csa-意向登记', 'csa', 'asc', 1, '自主开发', 'csa', '15518788299', 'a', 'sa', '15518788299', '15518788299@qq.com', '15518788299', 'askj', 'alsn', '2021-01-07', 123, 3, 'admin', '2021-01-06', 'admin', '租赁合同', '已发', '有限责任公司', '等待招商领导审批');
INSERT INTO `intention_registration_form` VALUES (7, '2021-01-06-测试删除-意向登记', '测试删除', 'ask', 1, '自主开发', 'laskn', '15533322211', 'a', 's', '15533322211', '1@qq.com', '15533322211', 'sn', 'djl', '2021-01-06', -1, 3, 'admin', '2021-01-06', 'admin2', '租赁合同', '已删除', '国有经济', '');
INSERT INTO `intention_registration_form` VALUES (8, '2021-01-06-测试拒绝-意向登记', '测试拒绝', '查收', 1, '自主开发', 's', '15533322211', 'ci', 'a', '15533322211', 'z@qq.com', '15533322211', 'q', 'q', '2021-01-06', -11, 3, 'admin', '2021-01-06', 'admin2', '物业合同', '已发', '股份制', '拒绝');
INSERT INTO `intention_registration_form` VALUES (9, '2021-01-06-sac-意向登记', 'sac', 'cas', 1, '自主开发', 'csa', '15533322211', 'sad', 'du', '15533322211', 's@qq.com', '15533322211', 'w', 'a', '2021-01-29', 1, 3, 'admin', '2021-01-06', 'admin2', '租赁合同', '已发', '有限责任公司', '拒绝');
INSERT INTO `intention_registration_form` VALUES (10, '2021-01-06-测试流程-意向登记', '测试流程', 'wd', 1, '企业介绍', 'ew', '17103000301', 'sackn', 'acs', '', '', '', '', '', '2021-01-24', 12, 3, NULL, NULL, 'admin', NULL, '待发', NULL, NULL);
INSERT INTO `intention_registration_form` VALUES (11, '2021-01-07-测试重名-意向登记', '测试重名', '1', 1, '自主开发', 'asjk', '13511188828', 'sali', 'aslid', 'alkj', 'ad@qq.com', '13511188828', 'adkjb', 'asj', '2021-01-26', 12, 4, 'wyadmin', '2021-01-07', 'admin', '租赁合同', '待发', '个体经济', '');
INSERT INTO `intention_registration_form` VALUES (12, '2021-01-07-测试重名-意向登记(1)', '测试重名', '23', 1, '自主开发', 'ascn', '13511188828', 'csa i', 'advh', 'alsk', 'alis@qq.com', '13511188828', 'adli', 'aslc', '2021-01-07', 13, 4, 'wyadmin', '2021-01-07', 'admin', '物业合同', '待发', '国有经济', '');
INSERT INTO `intention_registration_form` VALUES (13, '2021-01-07-测试重名-意向登记(1)', '测试重名', 'viu', 1, '企业介绍', 'salkcn', '13511188828', 'casasccas', 'ca', 'cas', 'as!@qq.com', '13511188828', 'lcnasc', 'can', '2021-01-18', 21, 5, 'ywadmin', '2021-01-07', 'admin', '租赁合同', '待发', '联营经济', '');
INSERT INTO `intention_registration_form` VALUES (14, '2021-01-07-测试重名-意向登记(1)', '测试重名', 'asiuh', 1, '自主开发', 'askdl1', '13112233213', 'sliv', 'lvjs', '13112233213', 'ls@qq.cxom', '13112233213', 'scn', 'alsk', '2021-01-01', 2, 3, 'admin', '2021-01-07', 'admin', '物业合同', '待发', '股份制', '');
INSERT INTO `intention_registration_form` VALUES (15, '2021-01-07-测试重名-意向登记(1)', '测试重名', 'sc', 2, '自主开发', 'cslak', '13112233213', 'lcas', 'ncl', '13112233213', 'lvis@qq.com', '13112233213', 'cks', 'lcv', '2021-01-30', 12, 4, 'wyadmin', '2021-01-07', 'admin', '物业合同', '待发', '联营经济', '');
INSERT INTO `intention_registration_form` VALUES (16, '2021-01-07-测试重名-意向登记(1)', '测试重名', 'csiaj', 2, '企业介绍', 'calks', '13112233213', 'lskc', 'lkn', 'lkn', 'lkn@qq.com', '13112233213', 'lksn', 'alskn', '2021-01-12', 12, 3, 'admin', '2021-01-07', 'admin', '租赁合同', '待发', '股份制', '');
INSERT INTO `intention_registration_form` VALUES (17, '2021-01-07-测试重名-意向登记(1)', '测试重名', 'csiaj', 2, '企业介绍', 'calks', '13112233213', 'lskc', 'lkn', 'lkn', 'lkn@qq.com', '13112233213', 'lksn', 'alskn', '2021-01-12', 12, 3, 'admin', '2021-01-07', 'admin', '租赁合同', '待发', '股份制', '');
INSERT INTO `intention_registration_form` VALUES (18, '2021-01-07-测试重名-意向登记(1)', '测试重名', 'csiaj', 2, '企业介绍', 'calks', '13112233213', 'lskc', 'lkn', 'lkn', 'lkn@qq.com', '13112233213', 'lksn', 'alskn', '2021-01-12', 12, 3, 'admin', '2021-01-07', 'admin', '租赁合同', '待发', '股份制', '');
INSERT INTO `intention_registration_form` VALUES (19, '2021-01-07-测试重名-意向登记(1)', '测试重名', 'csiaj', 2, '企业介绍', 'calks', '13112233213', 'lskc', 'lkn', 'lkn', 'lkn@qq.com', '13112233213', 'lksn', 'alskn', '2021-01-12', 12, 3, 'admin', '2021-01-07', 'admin', '租赁合同', '待发', '股份制', '');
INSERT INTO `intention_registration_form` VALUES (20, '2021-01-07-测试重名-意向登记(2)', '测试重名', 'csiaj', 2, '企业介绍', 'calks', '13112233213', 'lskc', 'lkn', 'lkn', 'lkn@qq.com', '13112233213', 'lksn', 'alskn', '2021-01-12', 12, 3, 'admin', '2021-01-07', 'admin', '租赁合同', '已发', '股份制', '等待招商领导审批');
INSERT INTO `intention_registration_form` VALUES (21, '2021-01-07-测试重名-意向登记(3)', '测试重名', 'csiaj', 2, '企业介绍', 'calks', '13112233213', 'lskc', 'lkn', 'lkn', 'lkn@qq.com', '13112233213', 'lksn', 'alskn', '2021-01-12', 12, 3, 'admin', '2021-01-07', 'admin', '租赁合同', '已发', '股份制', '拒绝');

-- ----------------------------
-- Table structure for lease_back_application
-- ----------------------------
DROP TABLE IF EXISTS `lease_back_application`;
CREATE TABLE `lease_back_application`  (
  `form_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `form_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enterprise_id` bigint(20) NULL DEFAULT NULL,
  `contract_id` bigint(20) NULL DEFAULT NULL,
  `applicant` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `reset_flag` int(1) NULL DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `approval_status` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `end_date` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `end_reason` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`form_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for lease_contract
-- ----------------------------
DROP TABLE IF EXISTS `lease_contract`;
CREATE TABLE `lease_contract`  (
  `form_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `form_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enterprise_id` bigint(20) NULL DEFAULT NULL,
  `start_date` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `expiry_date` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `deposit` bigint(20) NULL DEFAULT NULL,
  `warning_date` int(11) NULL DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `approval_status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `reset_flag` int(1) NULL DEFAULT NULL,
  `sign_date` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `applicant` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `apply_date` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`form_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lease_contract
-- ----------------------------
INSERT INTO `lease_contract` VALUES (7, '2021-02-08-CSAC-租赁合同', 4, '2021-02-09', '2021-02-16', 6, 1, '已删除', '', 0, '2021-02-02', 'admin', '2021-02-08');
INSERT INTO `lease_contract` VALUES (8, '2021-02-08-CSAC-租赁合同(1)', 4, '2021-02-09', '2021-02-09', 10000, 1, '已删除', '审批完成', 0, '2021-02-07', 'admin', '2021-02-08');
INSERT INTO `lease_contract` VALUES (9, '2021-02-08-CSAC-租赁合同(2)', 4, '2021-02-09', '2021-02-09', 12, 1, '已发', '审批完成', 1, '2021-02-07', 'admin', '2021-02-08');
INSERT INTO `lease_contract` VALUES (10, '2021-03-05-CSAC-租赁合同', 4, '2021-03-10', '2021-03-31', 938103, 1, '已发', '等待招商部门审批', 0, '2021-03-05', 'admin', '2021-03-05');
INSERT INTO `lease_contract` VALUES (11, '2021-03-05-CSAC-租赁合同(1)', 4, '2021-03-11', '2021-03-28', 13, 1, '已发', '等待招商部门审批', 0, '2021-03-04', 'admin', '2021-03-05');

-- ----------------------------
-- Table structure for lease_contract_pay_item
-- ----------------------------
DROP TABLE IF EXISTS `lease_contract_pay_item`;
CREATE TABLE `lease_contract_pay_item`  (
  `form_id` bigint(20) NULL DEFAULT NULL,
  `space_id` bigint(20) NULL DEFAULT NULL,
  `item_id` bigint(20) NULL DEFAULT NULL,
  `formula_id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lease_contract_pay_item
-- ----------------------------
INSERT INTO `lease_contract_pay_item` VALUES (1, 4, 2, 1);
INSERT INTO `lease_contract_pay_item` VALUES (2, 4, 2, 1);
INSERT INTO `lease_contract_pay_item` VALUES (8, 9, 2, 1);
INSERT INTO `lease_contract_pay_item` VALUES (9, 9, 2, 1);
INSERT INTO `lease_contract_pay_item` VALUES (10, 4, 2, 1);
INSERT INTO `lease_contract_pay_item` VALUES (11, 4, 2, 1);

-- ----------------------------
-- Table structure for lease_contract_room
-- ----------------------------
DROP TABLE IF EXISTS `lease_contract_room`;
CREATE TABLE `lease_contract_room`  (
  `space_id` bigint(20) NOT NULL,
  `form_id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lease_contract_room
-- ----------------------------
INSERT INTO `lease_contract_room` VALUES (4, 1);
INSERT INTO `lease_contract_room` VALUES (4, 2);
INSERT INTO `lease_contract_room` VALUES (4, 7);
INSERT INTO `lease_contract_room` VALUES (9, 8);
INSERT INTO `lease_contract_room` VALUES (9, 9);
INSERT INTO `lease_contract_room` VALUES (4, 10);
INSERT INTO `lease_contract_room` VALUES (4, 11);

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `father_node_id` bigint(20) NULL DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `level` int(2) NULL DEFAULT NULL,
  `menu_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, '智慧招商', NULL, '正常', 'el-icon-s-goods', 1, NULL);
INSERT INTO `menu` VALUES (2, '智慧物业', NULL, '正常', 'el-icon-s-home', 1, NULL);
INSERT INTO `menu` VALUES (3, '消息中心', NULL, '正常', 'el-icon-chat-line-round', 1, NULL);
INSERT INTO `menu` VALUES (4, '空间管理', 0, '正常', 'el-icon-office-building', 1, NULL);
INSERT INTO `menu` VALUES (5, '基础管理', 1, '正常', NULL, 2, NULL);
INSERT INTO `menu` VALUES (6, '项目中心', 1, '正常', NULL, 2, NULL);
INSERT INTO `menu` VALUES (7, '企业管理', 1, '正常', NULL, 2, NULL);
INSERT INTO `menu` VALUES (8, '招商总览', 1, '正常', NULL, 2, NULL);
INSERT INTO `menu` VALUES (9, '财务中心', 2, '正常', NULL, 2, NULL);
INSERT INTO `menu` VALUES (10, '合同中心', 2, '正常', NULL, 2, NULL);
INSERT INTO `menu` VALUES (11, '空间数据', 4, '正常', NULL, 2, '/main/SpatialDataManagement');
INSERT INTO `menu` VALUES (12, '审批消息', 3, '正常', NULL, 2, '/main/ApprovalMessage');
INSERT INTO `menu` VALUES (13, '项目公海', 6, '正常', NULL, 3, '/main/ProjectSea');
INSERT INTO `menu` VALUES (14, '意向协议', 6, '正常', NULL, 3, '/main/IntentionAgreementManagement');
INSERT INTO `menu` VALUES (15, '租赁申请', 6, '正常', NULL, 3, '/main/LeaseContractApplication');
INSERT INTO `menu` VALUES (16, '入驻申请', 6, '正常', NULL, 3, '/main/EnterApplication');
INSERT INTO `menu` VALUES (17, '退租申请', 6, '正常', NULL, 3, '/main/LeaseBackApplication');
INSERT INTO `menu` VALUES (18, '我的项目', 6, '正常', NULL, 3, '/main/MyProject');
INSERT INTO `menu` VALUES (19, '项目回收站', 6, '正常', NULL, 3, '/main/ProjectRecycleBin');
INSERT INTO `menu` VALUES (20, '企业档案', 7, '正常', NULL, 3, '/main/EnterpriseArchives');
INSERT INTO `menu` VALUES (21, '退园企业', 7, '正常', NULL, 3, NULL);
INSERT INTO `menu` VALUES (22, '退园登记', 7, '正常', NULL, 3, NULL);
INSERT INTO `menu` VALUES (23, '行业类型管理', 5, '正常', NULL, 3, '/main/IndustryTypeManagement');
INSERT INTO `menu` VALUES (24, '账单管理', 9, '正常', NULL, 3, NULL);
INSERT INTO `menu` VALUES (25, '押金管理', 9, '正常', NULL, 3, NULL);
INSERT INTO `menu` VALUES (26, '意向金管理', 9, '正常', NULL, 3, NULL);
INSERT INTO `menu` VALUES (27, '费用调整', 9, '正常', NULL, 3, NULL);
INSERT INTO `menu` VALUES (28, '租赁合同', 10, '正常', NULL, 3, NULL);
INSERT INTO `menu` VALUES (29, '退租合同', 10, '正常', NULL, 3, NULL);
INSERT INTO `menu` VALUES (30, '收费项管理', 2, '正常', NULL, 2, '/main/PayItemManagement');
INSERT INTO `menu` VALUES (31, '系统管理', NULL, '正常', 'el-icon-cpu', 1, NULL);
INSERT INTO `menu` VALUES (32, '基础管理', NULL, '正常', 'el-icon-odometer', 1, NULL);
INSERT INTO `menu` VALUES (33, '用户管理', 31, '正常', NULL, 2, '/main/UserManagement');
INSERT INTO `menu` VALUES (34, '菜单管理', 31, '正常', NULL, 2, '/main/MenuManagement');
INSERT INTO `menu` VALUES (35, '角色权限管理', 31, '正常', NULL, 2, '/main/RolePrivilegesManagement');
INSERT INTO `menu` VALUES (36, '审批流程节点管理', 32, '正常', NULL, 2, '/main/ApprovalProcessNodeManagement');
INSERT INTO `menu` VALUES (37, '审批流程管理', 32, '正常', NULL, 2, '/main/ApprovalProcessManagement');
INSERT INTO `menu` VALUES (38, '职位管理', 32, '正常', NULL, 2, '/main/PositionManagement');
INSERT INTO `menu` VALUES (41, '测试菜单', 34, '已删除', '', 3, '');
INSERT INTO `menu` VALUES (44, '测试一级菜单', 0, '已删除', '', 1, '');
INSERT INTO `menu` VALUES (45, '测试一级菜单2', 0, '已删除', '', 1, '');
INSERT INTO `menu` VALUES (46, '测试二级菜单', 45, '正常', '', 2, '');
INSERT INTO `menu` VALUES (48, '意向登记', 6, '正常', '', 3, '/main/IntentionRegistrationManagement');
INSERT INTO `menu` VALUES (49, '测试菜单权限', 4, '已删除', '', 2, '');
INSERT INTO `menu` VALUES (50, '测试111', 4, '已删除', '', 2, '');

-- ----------------------------
-- Table structure for menu_authority
-- ----------------------------
DROP TABLE IF EXISTS `menu_authority`;
CREATE TABLE `menu_authority`  (
  `position_id` bigint(20) NULL DEFAULT NULL,
  `menu_id` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu_authority
-- ----------------------------
INSERT INTO `menu_authority` VALUES (1, 1);
INSERT INTO `menu_authority` VALUES (1, 2);
INSERT INTO `menu_authority` VALUES (1, 3);
INSERT INTO `menu_authority` VALUES (1, 4);
INSERT INTO `menu_authority` VALUES (1, 5);
INSERT INTO `menu_authority` VALUES (1, 6);
INSERT INTO `menu_authority` VALUES (1, 7);
INSERT INTO `menu_authority` VALUES (1, 8);
INSERT INTO `menu_authority` VALUES (1, 9);
INSERT INTO `menu_authority` VALUES (1, 10);
INSERT INTO `menu_authority` VALUES (1, 11);
INSERT INTO `menu_authority` VALUES (1, 12);
INSERT INTO `menu_authority` VALUES (1, 13);
INSERT INTO `menu_authority` VALUES (1, 14);
INSERT INTO `menu_authority` VALUES (1, 15);
INSERT INTO `menu_authority` VALUES (1, 16);
INSERT INTO `menu_authority` VALUES (1, 17);
INSERT INTO `menu_authority` VALUES (1, 18);
INSERT INTO `menu_authority` VALUES (1, 19);
INSERT INTO `menu_authority` VALUES (1, 20);
INSERT INTO `menu_authority` VALUES (1, 21);
INSERT INTO `menu_authority` VALUES (1, 22);
INSERT INTO `menu_authority` VALUES (1, 23);
INSERT INTO `menu_authority` VALUES (1, 24);
INSERT INTO `menu_authority` VALUES (1, 25);
INSERT INTO `menu_authority` VALUES (1, 26);
INSERT INTO `menu_authority` VALUES (1, 27);
INSERT INTO `menu_authority` VALUES (1, 28);
INSERT INTO `menu_authority` VALUES (1, 29);
INSERT INTO `menu_authority` VALUES (2, 30);
INSERT INTO `menu_authority` VALUES (2, 31);
INSERT INTO `menu_authority` VALUES (2, 32);
INSERT INTO `menu_authority` VALUES (2, 33);
INSERT INTO `menu_authority` VALUES (2, 34);
INSERT INTO `menu_authority` VALUES (2, 35);
INSERT INTO `menu_authority` VALUES (2, 36);
INSERT INTO `menu_authority` VALUES (2, 37);
INSERT INTO `menu_authority` VALUES (2, 38);
INSERT INTO `menu_authority` VALUES (2, 2);
INSERT INTO `menu_authority` VALUES (9, 1);
INSERT INTO `menu_authority` VALUES (9, 5);
INSERT INTO `menu_authority` VALUES (9, 23);
INSERT INTO `menu_authority` VALUES (9, 6);
INSERT INTO `menu_authority` VALUES (9, 13);
INSERT INTO `menu_authority` VALUES (9, 14);
INSERT INTO `menu_authority` VALUES (9, 15);
INSERT INTO `menu_authority` VALUES (9, 16);
INSERT INTO `menu_authority` VALUES (9, 17);
INSERT INTO `menu_authority` VALUES (9, 18);
INSERT INTO `menu_authority` VALUES (9, 19);
INSERT INTO `menu_authority` VALUES (9, 48);
INSERT INTO `menu_authority` VALUES (9, 7);
INSERT INTO `menu_authority` VALUES (9, 20);
INSERT INTO `menu_authority` VALUES (9, 21);
INSERT INTO `menu_authority` VALUES (9, 22);
INSERT INTO `menu_authority` VALUES (9, 8);
INSERT INTO `menu_authority` VALUES (9, 2);
INSERT INTO `menu_authority` VALUES (9, 9);
INSERT INTO `menu_authority` VALUES (9, 24);
INSERT INTO `menu_authority` VALUES (9, 25);
INSERT INTO `menu_authority` VALUES (9, 26);
INSERT INTO `menu_authority` VALUES (9, 27);
INSERT INTO `menu_authority` VALUES (9, 10);
INSERT INTO `menu_authority` VALUES (9, 28);
INSERT INTO `menu_authority` VALUES (9, 29);
INSERT INTO `menu_authority` VALUES (9, 30);
INSERT INTO `menu_authority` VALUES (9, 3);
INSERT INTO `menu_authority` VALUES (9, 12);
INSERT INTO `menu_authority` VALUES (9, 4);
INSERT INTO `menu_authority` VALUES (9, 11);
INSERT INTO `menu_authority` VALUES (9, 50);
INSERT INTO `menu_authority` VALUES (9, 31);
INSERT INTO `menu_authority` VALUES (9, 33);
INSERT INTO `menu_authority` VALUES (9, 34);
INSERT INTO `menu_authority` VALUES (9, 35);
INSERT INTO `menu_authority` VALUES (9, 32);
INSERT INTO `menu_authority` VALUES (9, 36);
INSERT INTO `menu_authority` VALUES (9, 37);
INSERT INTO `menu_authority` VALUES (9, 38);
INSERT INTO `menu_authority` VALUES (4, 1);
INSERT INTO `menu_authority` VALUES (4, 5);
INSERT INTO `menu_authority` VALUES (4, 23);
INSERT INTO `menu_authority` VALUES (4, 6);
INSERT INTO `menu_authority` VALUES (4, 13);
INSERT INTO `menu_authority` VALUES (4, 14);
INSERT INTO `menu_authority` VALUES (4, 15);
INSERT INTO `menu_authority` VALUES (4, 16);
INSERT INTO `menu_authority` VALUES (4, 17);
INSERT INTO `menu_authority` VALUES (4, 18);
INSERT INTO `menu_authority` VALUES (4, 19);
INSERT INTO `menu_authority` VALUES (4, 48);
INSERT INTO `menu_authority` VALUES (4, 7);
INSERT INTO `menu_authority` VALUES (4, 20);
INSERT INTO `menu_authority` VALUES (4, 21);
INSERT INTO `menu_authority` VALUES (4, 22);
INSERT INTO `menu_authority` VALUES (4, 8);
INSERT INTO `menu_authority` VALUES (4, 9);
INSERT INTO `menu_authority` VALUES (4, 24);
INSERT INTO `menu_authority` VALUES (4, 25);
INSERT INTO `menu_authority` VALUES (4, 26);
INSERT INTO `menu_authority` VALUES (4, 27);
INSERT INTO `menu_authority` VALUES (4, 10);
INSERT INTO `menu_authority` VALUES (4, 28);
INSERT INTO `menu_authority` VALUES (4, 29);
INSERT INTO `menu_authority` VALUES (4, 3);
INSERT INTO `menu_authority` VALUES (4, 12);
INSERT INTO `menu_authority` VALUES (4, 4);
INSERT INTO `menu_authority` VALUES (4, 11);
INSERT INTO `menu_authority` VALUES (8, 1);
INSERT INTO `menu_authority` VALUES (8, 5);
INSERT INTO `menu_authority` VALUES (8, 23);
INSERT INTO `menu_authority` VALUES (8, 6);
INSERT INTO `menu_authority` VALUES (8, 13);
INSERT INTO `menu_authority` VALUES (8, 14);
INSERT INTO `menu_authority` VALUES (8, 15);
INSERT INTO `menu_authority` VALUES (8, 16);
INSERT INTO `menu_authority` VALUES (8, 17);
INSERT INTO `menu_authority` VALUES (8, 18);
INSERT INTO `menu_authority` VALUES (8, 19);
INSERT INTO `menu_authority` VALUES (8, 48);
INSERT INTO `menu_authority` VALUES (8, 7);
INSERT INTO `menu_authority` VALUES (8, 20);
INSERT INTO `menu_authority` VALUES (8, 21);
INSERT INTO `menu_authority` VALUES (8, 22);
INSERT INTO `menu_authority` VALUES (8, 8);
INSERT INTO `menu_authority` VALUES (8, 2);
INSERT INTO `menu_authority` VALUES (8, 9);
INSERT INTO `menu_authority` VALUES (8, 24);
INSERT INTO `menu_authority` VALUES (8, 25);
INSERT INTO `menu_authority` VALUES (8, 26);
INSERT INTO `menu_authority` VALUES (8, 27);
INSERT INTO `menu_authority` VALUES (8, 10);
INSERT INTO `menu_authority` VALUES (8, 28);
INSERT INTO `menu_authority` VALUES (8, 29);
INSERT INTO `menu_authority` VALUES (8, 30);
INSERT INTO `menu_authority` VALUES (8, 3);
INSERT INTO `menu_authority` VALUES (8, 12);
INSERT INTO `menu_authority` VALUES (7, 1);
INSERT INTO `menu_authority` VALUES (7, 5);
INSERT INTO `menu_authority` VALUES (7, 23);
INSERT INTO `menu_authority` VALUES (7, 6);
INSERT INTO `menu_authority` VALUES (7, 13);
INSERT INTO `menu_authority` VALUES (7, 14);
INSERT INTO `menu_authority` VALUES (7, 15);
INSERT INTO `menu_authority` VALUES (7, 16);
INSERT INTO `menu_authority` VALUES (7, 17);
INSERT INTO `menu_authority` VALUES (7, 18);
INSERT INTO `menu_authority` VALUES (7, 19);
INSERT INTO `menu_authority` VALUES (7, 48);
INSERT INTO `menu_authority` VALUES (7, 7);
INSERT INTO `menu_authority` VALUES (7, 20);
INSERT INTO `menu_authority` VALUES (7, 21);
INSERT INTO `menu_authority` VALUES (7, 22);
INSERT INTO `menu_authority` VALUES (7, 8);
INSERT INTO `menu_authority` VALUES (7, 2);
INSERT INTO `menu_authority` VALUES (7, 9);
INSERT INTO `menu_authority` VALUES (7, 24);
INSERT INTO `menu_authority` VALUES (7, 25);
INSERT INTO `menu_authority` VALUES (7, 26);
INSERT INTO `menu_authority` VALUES (7, 27);
INSERT INTO `menu_authority` VALUES (7, 10);
INSERT INTO `menu_authority` VALUES (7, 28);
INSERT INTO `menu_authority` VALUES (7, 29);
INSERT INTO `menu_authority` VALUES (7, 30);
INSERT INTO `menu_authority` VALUES (7, 3);
INSERT INTO `menu_authority` VALUES (7, 12);
INSERT INTO `menu_authority` VALUES (6, 2);
INSERT INTO `menu_authority` VALUES (6, 9);
INSERT INTO `menu_authority` VALUES (6, 24);
INSERT INTO `menu_authority` VALUES (6, 25);
INSERT INTO `menu_authority` VALUES (6, 26);
INSERT INTO `menu_authority` VALUES (6, 27);
INSERT INTO `menu_authority` VALUES (6, 10);
INSERT INTO `menu_authority` VALUES (6, 28);
INSERT INTO `menu_authority` VALUES (6, 29);
INSERT INTO `menu_authority` VALUES (6, 30);
INSERT INTO `menu_authority` VALUES (6, 3);
INSERT INTO `menu_authority` VALUES (6, 12);
INSERT INTO `menu_authority` VALUES (6, 4);
INSERT INTO `menu_authority` VALUES (6, 11);
INSERT INTO `menu_authority` VALUES (5, 2);
INSERT INTO `menu_authority` VALUES (5, 9);
INSERT INTO `menu_authority` VALUES (5, 24);
INSERT INTO `menu_authority` VALUES (5, 25);
INSERT INTO `menu_authority` VALUES (5, 26);
INSERT INTO `menu_authority` VALUES (5, 27);
INSERT INTO `menu_authority` VALUES (5, 10);
INSERT INTO `menu_authority` VALUES (5, 28);
INSERT INTO `menu_authority` VALUES (5, 29);
INSERT INTO `menu_authority` VALUES (5, 30);
INSERT INTO `menu_authority` VALUES (5, 3);
INSERT INTO `menu_authority` VALUES (5, 12);
INSERT INTO `menu_authority` VALUES (5, 4);
INSERT INTO `menu_authority` VALUES (5, 11);

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `message_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `department_id` bigint(20) NULL DEFAULT NULL,
  `position_id` bigint(20) NULL DEFAULT NULL,
  `form_id` bigint(20) NULL DEFAULT NULL,
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `applicant` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '申请人',
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消息类型',
  `status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contract_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `principal` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`message_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES (1, NULL, NULL, 4, 4, '2021-01-04-测试送办1-意向登记-招商审批', 'admin', '已办', '正常', '2021-01-04', '意向登记', 'admin2');
INSERT INTO `message` VALUES (2, NULL, NULL, 4, 5, '2021-01-05-测试消息2-意向登记-招商审批', 'admin2', '已办', '正常', '2021-01-05', '意向登记', 'admin2');
INSERT INTO `message` VALUES (3, NULL, NULL, 9, 4, '2021-01-04-测试送办1-意向登记-招商领导审批', 'admin', '已办', '正常', '2021-01-05', '意向登记', 'admin');
INSERT INTO `message` VALUES (4, NULL, NULL, 4, 2, '2020-12-30-CSAC-意向登记-招商审批', 'admin', '已办', '正常', '2021-01-06', '意向登记', 'admin2');
INSERT INTO `message` VALUES (5, NULL, NULL, 9, 2, '2020-12-30-CSAC-意向登记-招商领导审批', 'admin', '已办', '正常', '2021-01-06', '意向登记', 'admin');
INSERT INTO `message` VALUES (6, NULL, NULL, 9, 5, '2021-01-05-测试消息2-意向登记-招商领导审批', 'admin2', '已办', '正常', '2021-01-06', '意向登记', 'admin');
INSERT INTO `message` VALUES (7, NULL, NULL, 4, 6, '2021-01-06-csa-意向登记-招商审批', 'admin', '已办', '正常', '2021-01-06', '意向登记', 'admin2');
INSERT INTO `message` VALUES (8, NULL, NULL, 9, 6, '2021-01-06-csa-意向登记-招商领导审批', 'admin', '已办', '正常', '2021-01-06', '意向登记', 'admin');
INSERT INTO `message` VALUES (9, NULL, NULL, 4, 8, '2021-01-06-测试拒绝-意向登记-招商审批', 'admin2', '已办', '正常', '2021-01-06', '意向登记', 'admin2');
INSERT INTO `message` VALUES (10, NULL, NULL, 9, 8, '2021-01-06-测试拒绝-意向登记-招商领导审批', 'admin2', '已办', '正常', '2021-01-06', '意向登记', 'admin');
INSERT INTO `message` VALUES (11, NULL, NULL, 4, 9, '2021-01-06-sac-意向登记-招商审批', 'admin2', '已办', '正常', '2021-01-06', '意向登记', 'admin2');
INSERT INTO `message` VALUES (12, NULL, NULL, 9, 9, '2021-01-06-sac-意向登记-招商领导审批', 'admin2', '已办', '正常', '2021-01-06', '意向登记', 'admin');
INSERT INTO `message` VALUES (13, NULL, NULL, 4, 21, '2021-01-07-测试重名-意向登记(3)-招商审批', 'admin', '已办', '正常', '2021-01-11', '意向登记', 'admin2');
INSERT INTO `message` VALUES (14, NULL, NULL, 8, 3, '2021-01-13-CSAC-意向协议(2)-测试审批节点', 'admin', '待办', '正常', '2021-01-13', '意向协议', NULL);
INSERT INTO `message` VALUES (15, NULL, NULL, 8, 2, '2021-01-13-CSAC-意向协议(1)-测试审批节点', 'admin', '待办', '正常', '2021-01-13', '意向协议', NULL);
INSERT INTO `message` VALUES (16, NULL, NULL, 4, 4, '2021-01-13-CSAC-意向协议(3)-招商部门审批', 'admin', '已办', '正常', '2021-01-13', '意向协议', 'admin2');
INSERT INTO `message` VALUES (17, NULL, NULL, 9, 4, '2021-01-13-CSAC-意向协议(3)-招商领导审批', 'admin', '已办', '正常', '2021-01-13', '意向协议', 'admin');
INSERT INTO `message` VALUES (18, NULL, NULL, 4, 5, '2021-01-13-测试公司1-意向协议-招商部门审批', 'admin', '已办', '正常', '2021-01-13', '意向协议', 'admin2');
INSERT INTO `message` VALUES (19, NULL, NULL, 9, 5, '2021-01-13-测试公司1-意向协议-招商领导审批', 'admin', '已办', '正常', '2021-01-13', '意向协议', 'admin');
INSERT INTO `message` VALUES (20, NULL, NULL, 4, 6, '2021-01-13-CSAC-意向协议(4)-招商部门审批', 'admin', '已办', '正常', '2021-01-13', '意向协议', 'admin2');
INSERT INTO `message` VALUES (21, NULL, NULL, 9, 6, '2021-01-13-CSAC-意向协议(4)-招商领导审批', 'admin', '已办', '正常', '2021-01-13', '意向协议', 'admin');
INSERT INTO `message` VALUES (22, NULL, NULL, 4, 8, '2021-02-08-CSAC-租赁合同(1)-招商部门审批', 'admin', '已办', '正常', '2021-02-08', '租赁合同', 'admin2');
INSERT INTO `message` VALUES (23, NULL, NULL, 4, 9, '2021-02-08-CSAC-租赁合同(2)-招商部门审批', 'admin', '已办', '正常', '2021-02-08', '租赁合同', 'admin2');
INSERT INTO `message` VALUES (24, NULL, NULL, 8, 1, '2021-02-20-CSAC-入驻申请-运维审批', 'admin', '已办', '正常', '2021-02-21', '入驻申请', 'ywadmin2');
INSERT INTO `message` VALUES (25, NULL, NULL, 4, 1, '2021-02-20-CSAC-入驻申请-招商审批', 'admin', '已办', '正常', '2021-02-21', '入驻申请', 'admin2');
INSERT INTO `message` VALUES (26, NULL, NULL, 9, 1, '2021-02-20-CSAC-入驻申请-招商领导审批', 'admin', '已办', '正常', '2021-02-21', '入驻申请', 'admin');
INSERT INTO `message` VALUES (27, NULL, NULL, 2, 1, '2021-02-20-CSAC-入驻申请-招商管理审批', 'admin', '已办', '正常', '2021-02-21', '入驻申请', 'admin3');
INSERT INTO `message` VALUES (28, NULL, NULL, 7, 1, '2021-02-20-CSAC-入驻申请-运维领导审批', 'admin', '已办', '正常', '2021-02-21', '入驻申请', 'ywadmin');
INSERT INTO `message` VALUES (29, NULL, NULL, 9, 20, '2021-01-07-测试重名-意向登记(2)-招商领导审批', 'admin', '待办', '正常', '2021-02-23', '意向登记', NULL);
INSERT INTO `message` VALUES (30, NULL, NULL, 9, 7, '2021-02-23-测试企业2-意向协议-招商部门审批', 'admin', '待办', '正常', '2021-02-23', '意向协议', NULL);
INSERT INTO `message` VALUES (31, NULL, NULL, 9, 8, '2021-02-23-测试公司1-意向协议-招商部门审批', 'admin', '待办', '正常', '2021-02-23', '意向协议', NULL);
INSERT INTO `message` VALUES (32, NULL, NULL, 9, 9, '2021-02-23-测试公司1-意向协议(1)-招商部门审批', 'admin', '待办', '正常', '2021-02-23', '意向协议', NULL);
INSERT INTO `message` VALUES (33, NULL, NULL, 4, 10, '2021-03-05-CSAC-租赁合同-招商部门审批', 'admin', '待办', '正常', '2021-03-05', '租赁合同', NULL);
INSERT INTO `message` VALUES (34, NULL, NULL, 4, 11, '2021-03-05-CSAC-租赁合同(1)-招商部门审批', 'admin', '待办', '正常', '2021-03-05', '租赁合同', NULL);

-- ----------------------------
-- Table structure for pay_item
-- ----------------------------
DROP TABLE IF EXISTS `pay_item`;
CREATE TABLE `pay_item`  (
  `item_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`item_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pay_item
-- ----------------------------
INSERT INTO `pay_item` VALUES (2, '电费', '测试', 12.00);

-- ----------------------------
-- Table structure for pay_item_formula
-- ----------------------------
DROP TABLE IF EXISTS `pay_item_formula`;
CREATE TABLE `pay_item_formula`  (
  `formula_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `formula_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `item_id` bigint(20) NULL DEFAULT NULL,
  `formula` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`formula_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pay_item_formula
-- ----------------------------
INSERT INTO `pay_item_formula` VALUES (1, '统一价格', 2, '使用量*单价');

-- ----------------------------
-- Table structure for position
-- ----------------------------
DROP TABLE IF EXISTS `position`;
CREATE TABLE `position`  (
  `position_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `position_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `department_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`position_id`) USING BTREE,
  INDEX `did`(`department_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of position
-- ----------------------------
INSERT INTO `position` VALUES (2, '管理', 3);
INSERT INTO `position` VALUES (4, '职员', 3);
INSERT INTO `position` VALUES (5, '经理', 4);
INSERT INTO `position` VALUES (6, '职员', 4);
INSERT INTO `position` VALUES (7, '经理', 5);
INSERT INTO `position` VALUES (8, '职员', 5);
INSERT INTO `position` VALUES (9, '经理', 3);

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project`  (
  `project_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '项目ID',
  `enterprise_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业名称',
  `enterprise_area` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属地区',
  `industry_type_id` bigint(20) NULL DEFAULT NULL COMMENT '行业类型',
  `contact` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人',
  `contact_tel` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `contact_department` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人部门',
  `contact_position` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人职位',
  `qq` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系QQ',
  `contact_email` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系邮箱',
  `enterprise_tel` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业电话',
  `enterprise_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业网址',
  `enterprise_legal_person` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业法人',
  `registration_time` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '注册时间',
  `registered_capital` bigint(20) NULL DEFAULT NULL COMMENT '注册资本',
  `department_id` bigint(20) NULL DEFAULT NULL COMMENT '所属部门',
  `principal` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `source` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目来源',
  `status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '项目状态',
  PRIMARY KEY (`project_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of project
-- ----------------------------
INSERT INTO `project` VALUES (1, '测试项目', '广东省珠海市', 3, '测试', '13111111111', '12', '21', '1', '12@qq.com', '21', '21', '213', '2020-12-10', 32, 4, NULL, '自主开发', '正常');
INSERT INTO `project` VALUES (2, '测试项目2', '测试地区', 6, '测试人', '13211142211', '', '', '', '', '', '', '', '2020-12-21', 213, 3, 'admin', '主动上门', '正常');
INSERT INTO `project` VALUES (3, '测试删除项目', '测试', 4, '测试', '14141113333', '', '', '', '', '', '', '', '2020-12-28', 213, 3, 'admin', '其他渠道', '已删除');
INSERT INTO `project` VALUES (4, '测试流程', 'wd', 1, 'ew', '17103000301', 'sackn', 'acs', '', '', '', '', '', '2021-01-24', 12, 3, 'admin', '企业介绍', '正常');

-- ----------------------------
-- Table structure for space_data
-- ----------------------------
DROP TABLE IF EXISTS `space_data`;
CREATE TABLE `space_data`  (
  `space_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `space_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `space_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `area_covered` bigint(20) NULL DEFAULT NULL,
  `floor_space` bigint(20) NULL DEFAULT NULL,
  `space_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `parent_node_id` bigint(20) NULL DEFAULT NULL,
  `lease_area` bigint(20) NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enterprise_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`space_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of space_data
-- ----------------------------
INSERT INTO `space_data` VALUES (1, '南方软件园', '广东省珠海市高新区南方软件园', 2000, 2000, '园区', 1000.00, NULL, NULL, '', NULL);
INSERT INTO `space_data` VALUES (2, 'B1栋', '南方软件园', 500, 500, '楼栋', 1000.00, 1, NULL, '', NULL);
INSERT INTO `space_data` VALUES (3, '1层', '南方软件园B1栋', NULL, NULL, '楼层', 1000.00, 2, NULL, '', NULL);
INSERT INTO `space_data` VALUES (4, 'B1-101', '南方软件园B1栋1楼', NULL, 200, '房间', 1000.00, 3, 200, '待租', NULL);
INSERT INTO `space_data` VALUES (5, '清华科技园', '广东省珠海市高新区清华科技园', 1000, 1000, '园区', 10000.00, NULL, 0, '', NULL);
INSERT INTO `space_data` VALUES (6, '甲1栋', '', 0, 0, '楼栋', 0.00, 5, 0, '', NULL);
INSERT INTO `space_data` VALUES (7, '1楼', '', 0, 0, '楼层', 0.00, 6, 0, '', NULL);
INSERT INTO `space_data` VALUES (9, '101', '', 0, 3000, '房间', 13000.00, 7, 2000, '待租', NULL);
INSERT INTO `space_data` VALUES (10, 'A1栋', '', 10000, 10000, '楼栋', 30000.00, 1, 0, '', NULL);

-- ----------------------------
-- Table structure for spring_session
-- ----------------------------
DROP TABLE IF EXISTS `spring_session`;
CREATE TABLE `spring_session`  (
  `PRIMARY_ID` char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `SESSION_ID` char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CREATION_TIME` bigint(20) NOT NULL,
  `LAST_ACCESS_TIME` bigint(20) NOT NULL,
  `MAX_INACTIVE_INTERVAL` int(11) NOT NULL,
  `EXPIRY_TIME` bigint(20) NOT NULL,
  `PRINCIPAL_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`PRIMARY_ID`) USING BTREE,
  UNIQUE INDEX `SPRING_SESSION_IX1`(`SESSION_ID`) USING BTREE,
  INDEX `SPRING_SESSION_IX2`(`EXPIRY_TIME`) USING BTREE,
  INDEX `SPRING_SESSION_IX3`(`PRINCIPAL_NAME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for spring_session_attributes
-- ----------------------------
DROP TABLE IF EXISTS `spring_session_attributes`;
CREATE TABLE `spring_session_attributes`  (
  `SESSION_PRIMARY_ID` char(36) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ATTRIBUTE_NAME` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ATTRIBUTE_BYTES` blob NOT NULL,
  PRIMARY KEY (`SESSION_PRIMARY_ID`, `ATTRIBUTE_NAME`) USING BTREE,
  CONSTRAINT `SPRING_SESSION_ATTRIBUTES_FK` FOREIGN KEY (`SESSION_PRIMARY_ID`) REFERENCES `spring_session` (`PRIMARY_ID`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `account_level` int(2) NULL DEFAULT NULL,
  `position_id` bigint(20) NULL DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`username`) USING BTREE,
  INDEX `pid`(`position_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('admin', '123', 2, 9, '启用');
INSERT INTO `user` VALUES ('admin2', '123', 2, 4, '启用');
INSERT INTO `user` VALUES ('admin3', '123', 1, 2, '启用');
INSERT INTO `user` VALUES ('csadmin', '123', 1, 2, '注销');
INSERT INTO `user` VALUES ('csadmin1', '123', 1, 6, '启用');
INSERT INTO `user` VALUES ('wyadmin', '123', 1, 5, '启用');
INSERT INTO `user` VALUES ('wyadmin2', '123', 1, 6, '启用');
INSERT INTO `user` VALUES ('ywadmin', '123', 1, 7, '启用');
INSERT INTO `user` VALUES ('ywadmin2', '123', 1, 8, '启用');

SET FOREIGN_KEY_CHECKS = 1;
