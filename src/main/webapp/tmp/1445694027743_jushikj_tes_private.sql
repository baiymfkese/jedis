/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 60011
Source Host           : localhost:3306
Source Database       : jushikj_tes

Target Server Type    : MYSQL
Target Server Version : 60011
File Encoding         : 65001

Date: 2015-10-21 16:55:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tes_class_type`
-- ----------------------------
DROP TABLE IF EXISTS `tes_class_type`;
CREATE TABLE `tes_class_type` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(255) DEFAULT NULL,
  `descp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tes_class_type
-- ----------------------------
INSERT INTO `tes_class_type` VALUES ('8dd20643683e42d4bd98706cb8d645ad', 'js', 'javascript学习');
INSERT INTO `tes_class_type` VALUES ('9dbe7c96d20946f19033ae53503b93df', 'java', 'java知识');

-- ----------------------------
-- Table structure for `tes_collect_question`
-- ----------------------------
DROP TABLE IF EXISTS `tes_collect_question`;
CREATE TABLE `tes_collect_question` (
  `id` varchar(64) NOT NULL,
  `question_id` varchar(64) DEFAULT NULL COMMENT '试题ID',
  `user_id` varchar(64) DEFAULT NULL COMMENT '用户ID',
  `collect_time` datetime DEFAULT NULL COMMENT '收藏日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tes_collect_question
-- ----------------------------
INSERT INTO `tes_collect_question` VALUES ('08064c68e4354a82839e79ae6c58b066', 'cee6eaeae04c4e44a536d1f99c2911d8', '89449764270243e4bec025b3bbe40de3', '2015-10-13 13:34:27');
INSERT INTO `tes_collect_question` VALUES ('430ca1846e7b4098a2977266e09058e6', '1075e1253a204415994c986eb2d2e811', '89449764270243e4bec025b3bbe40de3', '2015-10-16 22:42:51');
INSERT INTO `tes_collect_question` VALUES ('63c984d48dea4a05b2d75d9d5f606b21', '96f4af3a4d244f0593f0a070f17266b7', '89449764270243e4bec025b3bbe40de3', '2015-10-13 21:41:54');
INSERT INTO `tes_collect_question` VALUES ('6484831f483b47d48cee974f7fc135d9', '96f4af3a4d244f0593f0a070f17266b7', 'b9fc86104c3d48ecade466652b51b596', '2015-10-19 19:15:51');
INSERT INTO `tes_collect_question` VALUES ('8ee9bb31a47f40a6b1e18e90d0005f9c', '968f9b5ab91544d9ae4a30e81f5d3e36', '89449764270243e4bec025b3bbe40de3', '2015-10-16 20:49:33');
INSERT INTO `tes_collect_question` VALUES ('9c1ad4a6b3b0487eb71f5f19751a39c0', 'cee6eaeae04c4e44a536d1f99c2911d8', 'b9fc86104c3d48ecade466652b51b596', '2015-10-19 19:15:53');

-- ----------------------------
-- Table structure for `tes_courseware`
-- ----------------------------
DROP TABLE IF EXISTS `tes_courseware`;
CREATE TABLE `tes_courseware` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(255) DEFAULT NULL,
  `uploadUser` varchar(255) DEFAULT NULL COMMENT '课件的上传人',
  `speaker` varchar(255) DEFAULT NULL COMMENT '演讲者',
  `descp` varchar(255) DEFAULT NULL COMMENT '描述信息',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tes_courseware
-- ----------------------------
INSERT INTO `tes_courseware` VALUES ('4180780b64b1419abb3affc13ecac755', '第一章', 'teacher', 'teacher', '', '2015-10-14 19:21:53');

-- ----------------------------
-- Table structure for `tes_courseware_content_relation`
-- ----------------------------
DROP TABLE IF EXISTS `tes_courseware_content_relation`;
CREATE TABLE `tes_courseware_content_relation` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `coursewareId` varchar(32) DEFAULT NULL,
  `fileUrl` varchar(500) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `fileName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tes_courseware_content_relation
-- ----------------------------
INSERT INTO `tes_courseware_content_relation` VALUES ('9fe97b0d46434084809d42104471ab28', '4180780b64b1419abb3affc13ecac755', '../courseware/第一章_teacher_14448217618130.docx', '2015-10-14 19:22:41', '集体户住房公积金购房支取材料2014(1).docx');

-- ----------------------------
-- Table structure for `tes_data`
-- ----------------------------
DROP TABLE IF EXISTS `tes_data`;
CREATE TABLE `tes_data` (
  `id` varchar(32) NOT NULL,
  `userId` varchar(32) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createUserName` varchar(32) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL COMMENT 'file:文件，dir:目录',
  `parentId` varchar(32) DEFAULT NULL COMMENT 'true:共享，false:不共享',
  `share` varchar(32) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tes_data
-- ----------------------------

-- ----------------------------
-- Table structure for `tes_department`
-- ----------------------------
DROP TABLE IF EXISTS `tes_department`;
CREATE TABLE `tes_department` (
  `id` varchar(32) NOT NULL,
  `name` varchar(100) NOT NULL,
  `parentId` varchar(32) DEFAULT NULL,
  `descp` varchar(255) DEFAULT NULL,
  `level` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tes_department
-- ----------------------------
INSERT INTO `tes_department` VALUES ('1a453cd3428540d2b0d22c129a2df27a', '研发部', '', '', '0');

-- ----------------------------
-- Table structure for `tes_department_resource`
-- ----------------------------
DROP TABLE IF EXISTS `tes_department_resource`;
CREATE TABLE `tes_department_resource` (
  `id` varchar(32) NOT NULL,
  `departmentId` varchar(32) DEFAULT NULL,
  `userId` varchar(255) DEFAULT NULL,
  `resourceId` varchar(32) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tes_department_resource
-- ----------------------------
INSERT INTO `tes_department_resource` VALUES ('a3cec4bdd77a4a699d143836a9480f3b', '89449764270243e4bec025b3bbe40de3', '89449764270243e4bec025b3bbe40de3', 'bb0dac779d5f4c27846f8cdb3f6ef071', null, 'exam');
INSERT INTO `tes_department_resource` VALUES ('f5937c7283834ef0ab117e66d45d7b78', 'b9fc86104c3d48ecade466652b51b596', 'b9fc86104c3d48ecade466652b51b596', '83ed71733326422b933d8647b3ecb2d9', null, 'exam');

-- ----------------------------
-- Table structure for `tes_exampaper`
-- ----------------------------
DROP TABLE IF EXISTS `tes_exampaper`;
CREATE TABLE `tes_exampaper` (
  `id` varchar(32) NOT NULL COMMENT '试卷id',
  `name` varchar(255) NOT NULL COMMENT '试卷名称',
  `createType` varchar(32) DEFAULT NULL COMMENT '组卷类型(手动/随机)',
  `createUser` varchar(32) DEFAULT NULL COMMENT '组卷人',
  `classTypeId` varchar(32) DEFAULT NULL COMMENT '试卷所属科目（示例：语文，数学）',
  `createTime` datetime DEFAULT NULL COMMENT '组卷时间',
  `lastmodifyTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `passLine` varchar(10) DEFAULT NULL COMMENT '及格线',
  `score` varchar(10) DEFAULT NULL COMMENT '总分数',
  `descp` varchar(255) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tes_exampaper
-- ----------------------------
INSERT INTO `tes_exampaper` VALUES ('9f6514ef463947d690d97b0724ad5d29', 'java基础考试', 'manual', 'teacher', '07c2aca44ef441fd9090361b28ee3a19', '2015-10-12 21:15:28', '2015-10-16 20:36:08', '60', '100', '');

-- ----------------------------
-- Table structure for `tes_exampaper_questiontype`
-- ----------------------------
DROP TABLE IF EXISTS `tes_exampaper_questiontype`;
CREATE TABLE `tes_exampaper_questiontype` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `exampaperId` varchar(32) DEFAULT NULL COMMENT '试卷id',
  `questionTypeId` varchar(32) DEFAULT NULL COMMENT '题型（分区）id',
  `seqNu` int(11) DEFAULT NULL COMMENT '排列序号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tes_exampaper_questiontype
-- ----------------------------
INSERT INTO `tes_exampaper_questiontype` VALUES ('4ccc9bcf90534f97b9780e0850489e20', '9f6514ef463947d690d97b0724ad5d29', '20004', '0');
INSERT INTO `tes_exampaper_questiontype` VALUES ('66bc4b582a34438aa5bff401f95caac7', '9f6514ef463947d690d97b0724ad5d29', '20000', '0');

-- ----------------------------
-- Table structure for `tes_exam_log`
-- ----------------------------
DROP TABLE IF EXISTS `tes_exam_log`;
CREATE TABLE `tes_exam_log` (
  `id` varchar(32) NOT NULL,
  `studentId` varchar(32) NOT NULL COMMENT '学生ID',
  `beginDate` datetime DEFAULT NULL COMMENT '开始考试的时间',
  `endDate` datetime DEFAULT NULL COMMENT '结束考试的时间',
  `examRoomId` varchar(32) NOT NULL COMMENT '考场ID',
  `teacherId` varchar(32) DEFAULT NULL COMMENT '老师ID',
  `score` int(11) DEFAULT NULL COMMENT '考试分数',
  `judgeDate` datetime DEFAULT NULL COMMENT '批卷时间',
  `modifyDate` datetime DEFAULT NULL COMMENT '修改考试记录时间',
  `description` varchar(255) DEFAULT NULL COMMENT '描述信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考试记录表';

-- ----------------------------
-- Records of tes_exam_log
-- ----------------------------
INSERT INTO `tes_exam_log` VALUES ('01f7aa0b7ca443dfadecae14c5e8e9f0', '89449764270243e4bec025b3bbe40de3', '2015-10-13 21:17:30', '2015-10-13 21:23:09', 'bb0dac779d5f4c27846f8cdb3f6ef071', null, '0', null, null, null);
INSERT INTO `tes_exam_log` VALUES ('202d6f0935c14c939f87a7b61e708c42', '89449764270243e4bec025b3bbe40de3', '2015-10-13 21:42:09', '2015-10-13 21:42:36', 'bb0dac779d5f4c27846f8cdb3f6ef071', null, '0', null, null, null);
INSERT INTO `tes_exam_log` VALUES ('208d66ae71a347c0a7860d5264b3000b', '89449764270243e4bec025b3bbe40de3', '2015-10-13 21:39:54', '2015-10-13 21:42:04', 'bb0dac779d5f4c27846f8cdb3f6ef071', null, '0', null, null, null);
INSERT INTO `tes_exam_log` VALUES ('2860636805e24afa8558a5d2bf512792', '89449764270243e4bec025b3bbe40de3', '2015-10-12 21:23:18', '2015-10-12 21:23:33', 'bb0dac779d5f4c27846f8cdb3f6ef071', null, '0', null, null, null);
INSERT INTO `tes_exam_log` VALUES ('51a3d47946c842cf92d75314d684f06f', '89449764270243e4bec025b3bbe40de3', '2015-10-12 22:55:41', '2015-10-12 23:35:44', 'bb0dac779d5f4c27846f8cdb3f6ef071', null, '0', null, null, null);
INSERT INTO `tes_exam_log` VALUES ('59e9cd4cbd734b07b8998084307e8a51', '89449764270243e4bec025b3bbe40de3', '2015-10-13 13:32:01', '2015-10-13 13:32:09', 'bb0dac779d5f4c27846f8cdb3f6ef071', null, '0', null, null, null);
INSERT INTO `tes_exam_log` VALUES ('60caf7072b3b463e80cf45aa92fcdaab', 'b9fc86104c3d48ecade466652b51b596', '2015-10-19 19:16:58', '2015-10-19 19:17:15', '83ed71733326422b933d8647b3ecb2d9', null, '0', null, null, null);
INSERT INTO `tes_exam_log` VALUES ('967ab4f4bd904692808f88dd46d4acbf', '89449764270243e4bec025b3bbe40de3', '2015-10-16 20:49:20', '2015-10-16 20:49:36', 'bb0dac779d5f4c27846f8cdb3f6ef071', null, '0', null, null, null);
INSERT INTO `tes_exam_log` VALUES ('9d349c26cf9b4f7ba9bc31c3d805a86d', '89449764270243e4bec025b3bbe40de3', '2015-10-12 21:25:50', '2015-10-12 21:26:38', 'bb0dac779d5f4c27846f8cdb3f6ef071', null, '0', null, null, null);
INSERT INTO `tes_exam_log` VALUES ('b5b4518e428b4d6eba442ef858c93a28', '89449764270243e4bec025b3bbe40de3', '2015-10-16 22:42:38', '2015-10-16 22:43:16', 'bb0dac779d5f4c27846f8cdb3f6ef071', null, '0', null, null, null);
INSERT INTO `tes_exam_log` VALUES ('be435ef3a48644ad9c3b39be4a5ba662', '89449764270243e4bec025b3bbe40de3', '2015-10-17 11:01:44', '2015-10-17 11:02:01', 'bb0dac779d5f4c27846f8cdb3f6ef071', null, '0', null, null, null);
INSERT INTO `tes_exam_log` VALUES ('d6f9e7d4becd4232a1fdbd42dae41d0b', '89449764270243e4bec025b3bbe40de3', '2015-10-16 20:36:28', '2015-10-16 20:37:13', 'bb0dac779d5f4c27846f8cdb3f6ef071', null, '0', null, null, null);
INSERT INTO `tes_exam_log` VALUES ('dbbefac42cb742be9ec3b2f2c8ca9f83', '89449764270243e4bec025b3bbe40de3', '2015-10-16 20:48:43', '2015-10-16 20:48:52', 'bb0dac779d5f4c27846f8cdb3f6ef071', null, '0', null, null, null);
INSERT INTO `tes_exam_log` VALUES ('ddfa96e1e9284fa6a778fc241365aeaa', 'b9fc86104c3d48ecade466652b51b596', '2015-10-19 19:15:25', '2015-10-19 19:15:58', '83ed71733326422b933d8647b3ecb2d9', null, '0', null, null, null);
INSERT INTO `tes_exam_log` VALUES ('e116d6f9b16f402b8c3db03073e07209', '89449764270243e4bec025b3bbe40de3', '2015-10-12 22:26:32', '2015-10-12 22:35:00', 'bb0dac779d5f4c27846f8cdb3f6ef071', null, '0', null, null, null);
INSERT INTO `tes_exam_log` VALUES ('e438d3fc9417432bb7b9ac0091e1e5e2', '89449764270243e4bec025b3bbe40de3', '2015-10-13 21:13:01', '2015-10-13 21:15:14', 'bb0dac779d5f4c27846f8cdb3f6ef071', null, '0', null, null, null);
INSERT INTO `tes_exam_log` VALUES ('ebbd261006794c9aa9cd2119b1f3b5aa', '89449764270243e4bec025b3bbe40de3', '2015-10-13 13:33:45', '2015-10-13 13:34:51', 'bb0dac779d5f4c27846f8cdb3f6ef071', null, '0', null, null, null);

-- ----------------------------
-- Table structure for `tes_exam_room`
-- ----------------------------
DROP TABLE IF EXISTS `tes_exam_room`;
CREATE TABLE `tes_exam_room` (
  `id` varchar(32) NOT NULL,
  `name` varchar(255) DEFAULT NULL COMMENT '考场名称',
  `duration` int(11) DEFAULT NULL COMMENT '考试时长',
  `beginDate` datetime DEFAULT NULL COMMENT '考试有效起始时间',
  `endDate` datetime DEFAULT NULL COMMENT '考试有效期截止时间',
  `createDate` datetime DEFAULT NULL,
  `createUserId` varchar(32) DEFAULT NULL COMMENT '创建该考试的用户ID',
  `modifyDate` datetime DEFAULT NULL COMMENT '修改信息时间',
  `modifyUserId` varchar(32) DEFAULT NULL COMMENT '修改用户ID',
  `publishDate` datetime DEFAULT NULL COMMENT '发布考试的时间',
  `review` int(11) DEFAULT NULL COMMENT '是否可以查看试卷',
  `examPaperId` varchar(32) DEFAULT NULL COMMENT '关联的试卷ID',
  `status` varchar(32) DEFAULT NULL COMMENT '状态',
  `mode` varchar(32) DEFAULT NULL COMMENT '试卷模式，单题:item,整卷:full',
  `description` varchar(255) DEFAULT NULL COMMENT '描述信息',
  `coverFile` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考场表';

-- ----------------------------
-- Records of tes_exam_room
-- ----------------------------
INSERT INTO `tes_exam_room` VALUES ('83ed71733326422b933d8647b3ecb2d9', 'java', '40', null, null, '2015-10-19 19:13:43', 'c84b8529714146979bb8363320d2fc37', '2015-10-19 19:14:06', 'c84b8529714146979bb8363320d2fc37', null, '1', '9f6514ef463947d690d97b0724ad5d29', null, 'full', '', '/resources/img/shijuan.jpg');
INSERT INTO `tes_exam_room` VALUES ('bb0dac779d5f4c27846f8cdb3f6ef071', 'java基础', '40', '2015-10-12 00:00:00', '2015-10-14 00:00:00', '2015-10-12 21:19:54', 'c84b8529714146979bb8363320d2fc37', '2015-10-12 21:19:54', 'c84b8529714146979bb8363320d2fc37', null, '1', '9f6514ef463947d690d97b0724ad5d29', null, 'full', '', '/resources/img/shijuan.jpg');

-- ----------------------------
-- Table structure for `tes_exam_score`
-- ----------------------------
DROP TABLE IF EXISTS `tes_exam_score`;
CREATE TABLE `tes_exam_score` (
  `id` varchar(32) NOT NULL,
  `examLogId` varchar(32) NOT NULL COMMENT '考试记录ID',
  `questionId` varchar(32) NOT NULL COMMENT '试题ID',
  `answer` varchar(255) DEFAULT NULL COMMENT '试题答案',
  `fillDate` datetime DEFAULT NULL COMMENT '填写答案的时间',
  `judgeDate` datetime DEFAULT NULL COMMENT '阅卷时间',
  `score` int(11) DEFAULT NULL COMMENT '分数',
  `studentId` varchar(32) DEFAULT NULL COMMENT '学生编号',
  `teacherId` varchar(32) DEFAULT NULL COMMENT '老师ID',
  `description` varchar(255) DEFAULT NULL COMMENT '描述信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考试成绩';

-- ----------------------------
-- Records of tes_exam_score
-- ----------------------------
INSERT INTO `tes_exam_score` VALUES ('0413a86e1ebd42b8bcb6b5ecf4169b16', 'b5b4518e428b4d6eba442ef858c93a28', 'cee6eaeae04c4e44a536d1f99c2911d8', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('04c3a501e1c44f5d966ba4a9fb724739', 'd6f9e7d4becd4232a1fdbd42dae41d0b', '968f9b5ab91544d9ae4a30e81f5d3e36', 'C', null, null, '20', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('0a42e77b74924b49832e181d6a2ce7a8', '60caf7072b3b463e80cf45aa92fcdaab', 'cee6eaeae04c4e44a536d1f99c2911d8', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('13cd9e59ec1b4ecfb982489b0b775a31', 'd6f9e7d4becd4232a1fdbd42dae41d0b', '96f4af3a4d244f0593f0a070f17266b7', 'B', null, null, '20', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('1b9b71b8fa074f95a64fdb3a926bfc8f', '51a3d47946c842cf92d75314d684f06f', 'cee6eaeae04c4e44a536d1f99c2911d8', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('1bd69ccc19264a448a7191e90db02154', 'd6f9e7d4becd4232a1fdbd42dae41d0b', 'cee6eaeae04c4e44a536d1f99c2911d8', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('2c50211068614642b01e68039079a901', '202d6f0935c14c939f87a7b61e708c42', '96f4af3a4d244f0593f0a070f17266b7', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('33fa2696393a43e6ad834a3fde5f5169', 'dbbefac42cb742be9ec3b2f2c8ca9f83', '96f4af3a4d244f0593f0a070f17266b7', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('379019db73fb48dc9a4d686451451946', 'e438d3fc9417432bb7b9ac0091e1e5e2', '96f4af3a4d244f0593f0a070f17266b7', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('3fc224d41a61460f85f3627437d8a112', 'e116d6f9b16f402b8c3db03073e07209', 'cee6eaeae04c4e44a536d1f99c2911d8', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('416daaa395a740d5a870887fe10d6526', 'b5b4518e428b4d6eba442ef858c93a28', '96f4af3a4d244f0593f0a070f17266b7', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('44040f8251ba4655a95ea955e6bae484', '60caf7072b3b463e80cf45aa92fcdaab', '96f4af3a4d244f0593f0a070f17266b7', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('510e8b0bd29d41e5acbddac0aa9b30e3', 'dbbefac42cb742be9ec3b2f2c8ca9f83', '1075e1253a204415994c986eb2d2e811', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('5b2be89804a04936bf60ddcd4de9652a', '967ab4f4bd904692808f88dd46d4acbf', 'cee6eaeae04c4e44a536d1f99c2911d8', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('67d2deb1096841bdba50b52294fc1cd5', '01f7aa0b7ca443dfadecae14c5e8e9f0', '96f4af3a4d244f0593f0a070f17266b7', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('75179ccb731b45d280dadd226313fb6e', '967ab4f4bd904692808f88dd46d4acbf', '96f4af3a4d244f0593f0a070f17266b7', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('775b3ab4ad2e44d7aa510cbb250926ff', '208d66ae71a347c0a7860d5264b3000b', '96f4af3a4d244f0593f0a070f17266b7', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('7782d65cf6dd4cdc97ccf9b3bc3c946f', '202d6f0935c14c939f87a7b61e708c42', 'cee6eaeae04c4e44a536d1f99c2911d8', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('7a98ecd995b2411fb73de447b9a1c90d', 'ddfa96e1e9284fa6a778fc241365aeaa', 'cee6eaeae04c4e44a536d1f99c2911d8', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('7c24c64efb064bc79d5429acd7fa0d53', 'ddfa96e1e9284fa6a778fc241365aeaa', '968f9b5ab91544d9ae4a30e81f5d3e36', 'C', null, null, '20', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('81c632a1d477470d9d4958dd40ca7b20', 'ddfa96e1e9284fa6a778fc241365aeaa', '1075e1253a204415994c986eb2d2e811', 'B', null, null, '20', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('83b1c967cf4e444c9bde038f0422592f', 'd6f9e7d4becd4232a1fdbd42dae41d0b', '1075e1253a204415994c986eb2d2e811', 'A', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('8ad2f74ef71c403bb0dd2804239685c2', 'ebbd261006794c9aa9cd2119b1f3b5aa', '96f4af3a4d244f0593f0a070f17266b7', 'B', null, null, '50', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('8cdef6bb09804312840033f7a10a58e8', 'be435ef3a48644ad9c3b39be4a5ba662', '96f4af3a4d244f0593f0a070f17266b7', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('8f9427e757c34a88a0b8cbb297d505a6', 'e438d3fc9417432bb7b9ac0091e1e5e2', 'cee6eaeae04c4e44a536d1f99c2911d8', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('8fb728c134bd47a39fa5cd5338f0f333', 'b5b4518e428b4d6eba442ef858c93a28', '968f9b5ab91544d9ae4a30e81f5d3e36', 'C', null, null, '20', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('961b9dd6ad8f4145a2161c513c0ac042', 'dbbefac42cb742be9ec3b2f2c8ca9f83', '968f9b5ab91544d9ae4a30e81f5d3e36', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('9ca42bbca9f34ee3989013e3668f2554', 'be435ef3a48644ad9c3b39be4a5ba662', 'cee6eaeae04c4e44a536d1f99c2911d8', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('a63a94e34dee426b8abbb99b5fbb0254', '967ab4f4bd904692808f88dd46d4acbf', '968f9b5ab91544d9ae4a30e81f5d3e36', 'C', null, null, '20', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('b975472966d64ad2b671d5ccf4c634e9', 'ebbd261006794c9aa9cd2119b1f3b5aa', 'cee6eaeae04c4e44a536d1f99c2911d8', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('bd883af57003483e9f7314fa11c1c5de', 'be435ef3a48644ad9c3b39be4a5ba662', '1075e1253a204415994c986eb2d2e811', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('c019534c624440038fcb82512f508569', 'be435ef3a48644ad9c3b39be4a5ba662', '968f9b5ab91544d9ae4a30e81f5d3e36', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('c86a344d603f44e8a7f8f8b2e080c2bb', '9d349c26cf9b4f7ba9bc31c3d805a86d', 'cee6eaeae04c4e44a536d1f99c2911d8', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('d7644bf5b524444b98b5a983b2cb2ddc', '59e9cd4cbd734b07b8998084307e8a51', 'cee6eaeae04c4e44a536d1f99c2911d8', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('d78769c197874ca6b264d244d3d3aabd', '967ab4f4bd904692808f88dd46d4acbf', '1075e1253a204415994c986eb2d2e811', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('d828e17ed33744bdb94a9e3e7531b886', 'ddfa96e1e9284fa6a778fc241365aeaa', '96f4af3a4d244f0593f0a070f17266b7', 'B', null, null, '20', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('d9f6b92051484fe89035aa2df0c45972', '60caf7072b3b463e80cf45aa92fcdaab', '968f9b5ab91544d9ae4a30e81f5d3e36', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('e27061ab6fc245e8b789712a3cf08fa9', 'dbbefac42cb742be9ec3b2f2c8ca9f83', 'cee6eaeae04c4e44a536d1f99c2911d8', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('e590635713fa415884fb5ba97c560d60', 'b5b4518e428b4d6eba442ef858c93a28', '1075e1253a204415994c986eb2d2e811', 'C', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('ed24ddda8441470d944e61a82561356d', '208d66ae71a347c0a7860d5264b3000b', 'cee6eaeae04c4e44a536d1f99c2911d8', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('f1be9ef77b454350a6bbf5cc04a542bd', '01f7aa0b7ca443dfadecae14c5e8e9f0', 'cee6eaeae04c4e44a536d1f99c2911d8', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('f286b134b172474ea22f673d6245e214', '60caf7072b3b463e80cf45aa92fcdaab', '1075e1253a204415994c986eb2d2e811', '', null, null, '0', null, null, null);

-- ----------------------------
-- Table structure for `tes_file`
-- ----------------------------
DROP TABLE IF EXISTS `tes_file`;
CREATE TABLE `tes_file` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tes_file
-- ----------------------------

-- ----------------------------
-- Table structure for `tes_knowledge`
-- ----------------------------
DROP TABLE IF EXISTS `tes_knowledge`;
CREATE TABLE `tes_knowledge` (
  `id` varchar(32) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parentId` varchar(32) DEFAULT NULL,
  `classTypeId` varchar(32) DEFAULT NULL,
  `type` varchar(32) DEFAULT NULL,
  `descp` varchar(255) DEFAULT NULL COMMENT '描述',
  `createTime` datetime DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tes_knowledge
-- ----------------------------
INSERT INTO `tes_knowledge` VALUES ('07c2aca44ef441fd9090361b28ee3a19', 'java学习', '0', '9dbe7c96d20946f19033ae53503b93df', '1', 'java学习', '2015-10-11 15:52:17', '0');
INSERT INTO `tes_knowledge` VALUES ('6b4b81ff59df4f3eb4917d975c67c66e', 'javascript', '0', '8dd20643683e42d4bd98706cb8d645ad', '1', 'dfdfd', '2015-10-11 15:47:01', '0');
INSERT INTO `tes_knowledge` VALUES ('c3ec19c559eb4121bfe722ce578fcd12', '第一章', '07c2aca44ef441fd9090361b28ee3a19', '9dbe7c96d20946f19033ae53503b93df', '1', '', '2015-10-14 19:21:03', '1');

-- ----------------------------
-- Table structure for `tes_knowledge_courseware_relation`
-- ----------------------------
DROP TABLE IF EXISTS `tes_knowledge_courseware_relation`;
CREATE TABLE `tes_knowledge_courseware_relation` (
  `id` varchar(32) NOT NULL,
  `coursewareId` varchar(32) DEFAULT NULL,
  `knowledgeId` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tes_knowledge_courseware_relation
-- ----------------------------
INSERT INTO `tes_knowledge_courseware_relation` VALUES ('e9d21dcbff394250ac921482316f0fef', '4180780b64b1419abb3affc13ecac755', 'c3ec19c559eb4121bfe722ce578fcd12');

-- ----------------------------
-- Table structure for `tes_module`
-- ----------------------------
DROP TABLE IF EXISTS `tes_module`;
CREATE TABLE `tes_module` (
  `id` varchar(32) NOT NULL,
  `name` varchar(100) NOT NULL,
  `parentId` varchar(32) DEFAULT NULL,
  `descp` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tes_module
-- ----------------------------

-- ----------------------------
-- Table structure for `tes_permission`
-- ----------------------------
DROP TABLE IF EXISTS `tes_permission`;
CREATE TABLE `tes_permission` (
  `id` varchar(32) NOT NULL,
  `name` varchar(100) NOT NULL,
  `moduleId` varchar(32) NOT NULL,
  `descp` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tes_permission
-- ----------------------------

-- ----------------------------
-- Table structure for `tes_permission_role`
-- ----------------------------
DROP TABLE IF EXISTS `tes_permission_role`;
CREATE TABLE `tes_permission_role` (
  `id` varchar(32) NOT NULL,
  `permissionId` varchar(32) NOT NULL,
  `roleId` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tes_permission_role
-- ----------------------------

-- ----------------------------
-- Table structure for `tes_question`
-- ----------------------------
DROP TABLE IF EXISTS `tes_question`;
CREATE TABLE `tes_question` (
  `id` varchar(125) NOT NULL COMMENT '试题id',
  `level` varchar(10) NOT NULL COMMENT '难易度',
  `title` text NOT NULL COMMENT '题目',
  `answer` text NOT NULL COMMENT '答案',
  `resolution` text COMMENT '解析',
  `istrain` tinyint(1) DEFAULT '1' COMMENT '是否可以作为练习题',
  `optionnum` int(8) DEFAULT '0' COMMENT '选项个数',
  `typeId` varchar(12) NOT NULL COMMENT '试题类型id',
  `user` varchar(120) DEFAULT NULL COMMENT '试题录入人',
  `lastmodifyUser` varchar(120) DEFAULT NULL COMMENT '最后修改人',
  `lastmodifyTime` datetime NOT NULL COMMENT '最后修改时间',
  `userId` varchar(32) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `knows` varchar(255) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`),
  KEY `FK_tes_question` (`typeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tes_question
-- ----------------------------
INSERT INTO `tes_question` VALUES ('1075e1253a204415994c986eb2d2e811', '困难', '<p>下列哪个是Map类型?下列哪个是Map类型?下列哪个是Map类型?下列哪个是Map类型?下列哪个是Map类型?下列哪个是Map类型?下列哪个是Map类型?下列哪个是Map类型?123</p>\r\n', 'B', '', '1', '4', '20000', 'teacher', null, '2015-10-16 20:35:06', 'c84b8529714146979bb8363320d2fc37', '2015-10-16 20:35:06', '第一章', '<p>A. ArrayList</p>\r\n\r\n<p>B. Collections</p>\r\n\r\n<p>C. HashMap</p>\r\n\r\n<p>D. Set</p>\r\n');
INSERT INTO `tes_question` VALUES ('1c901a6796c44dcd9a9432d228b700f6', '简单', '<p>js中赋值语句：string s=&quot;s&quot;是对的</p>\r\n', '0', '<p>js中所有的赋值语句是通过关键字var表示的</p>\r\n', '1', '4', '20002', 'teacher', null, '2015-10-11 15:49:21', 'c84b8529714146979bb8363320d2fc37', '2015-10-11 15:49:21', 'javascript', '');
INSERT INTO `tes_question` VALUES ('2228821cac7a4ca6a0055d9c29c36aa5', '简单', '<p>java中的继承是用implements关键字</p>\r\n', '0', '', '1', '4', '20002', 'teacher', null, '2015-10-18 15:07:07', 'c84b8529714146979bb8363320d2fc37', '2015-10-18 15:07:07', '第一章', '');
INSERT INTO `tes_question` VALUES ('968f9b5ab91544d9ae4a30e81f5d3e36', '困难', '<p>java中的继承是用哪个关键字？</p>\r\n', 'C', '', '1', '4', '20000', 'teacher', null, '2015-10-16 20:33:28', 'c84b8529714146979bb8363320d2fc37', '2015-10-16 20:33:28', '第一章', '<p>A. implements</p>\r\n\r\n<p>B. super</p>\r\n\r\n<p>C. extends</p>\r\n\r\n<p>D. Enum</p>\r\n');
INSERT INTO `tes_question` VALUES ('96f4af3a4d244f0593f0a070f17266b7', '一般', '<p>java中声明常量的关键字是()?24678</p>\r\n', 'B', '<p>java中关键字final为正确答案</p>\r\n', '1', '4', '20000', 'teacher', 'teacher', '2015-10-13 19:14:57', 'c84b8529714146979bb8363320d2fc37', '2015-10-13 13:31:36', 'java学习', '<p>A. constant</p>\r\n\r\n<p>B. final</p>\r\n\r\n<p>C. class</p>\r\n\r\n<p>D. finally</p>\r\n');
INSERT INTO `tes_question` VALUES ('cee6eaeae04c4e44a536d1f99c2911d8', '一般', '<p>java中String s=&quot;abc&quot;,String t=&quot;abc&quot;,s.equals(t)是否相等?</p>\r\n', '相等\r\n', '<p>s和t是指向同一个引用，所以是相等</p>\r\n', '1', '4', '20004', 'teacher', null, '2015-10-11 15:54:56', 'c84b8529714146979bb8363320d2fc37', '2015-10-11 15:54:56', 'java学习', '');

-- ----------------------------
-- Table structure for `tes_questiontype_question`
-- ----------------------------
DROP TABLE IF EXISTS `tes_questiontype_question`;
CREATE TABLE `tes_questiontype_question` (
  `id` varchar(32) NOT NULL COMMENT 'id',
  `exampaperId` varchar(32) DEFAULT NULL COMMENT '试卷id',
  `questionTypeId` varchar(32) DEFAULT NULL COMMENT '题型id',
  `questionId` varchar(32) DEFAULT NULL COMMENT '试题id',
  `score` varchar(10) DEFAULT NULL COMMENT '分数',
  `seqNu` int(11) DEFAULT NULL COMMENT '排列序号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tes_questiontype_question
-- ----------------------------
INSERT INTO `tes_questiontype_question` VALUES ('2c06abef07724a01835ad2b27508c156', '9f6514ef463947d690d97b0724ad5d29', '20004', 'cee6eaeae04c4e44a536d1f99c2911d8', '60', '0');
INSERT INTO `tes_questiontype_question` VALUES ('5b7a4d3f1e004655969180a250ef3d1e', '9f6514ef463947d690d97b0724ad5d29', '20000', '1075e1253a204415994c986eb2d2e811', '20', '0');
INSERT INTO `tes_questiontype_question` VALUES ('6d9193d1935c483c82fbe5726f71129d', '9f6514ef463947d690d97b0724ad5d29', '20000', '968f9b5ab91544d9ae4a30e81f5d3e36', '20', '1');
INSERT INTO `tes_questiontype_question` VALUES ('ea3fc62ec8784307b3ba06e4d44a72ba', '9f6514ef463947d690d97b0724ad5d29', '20000', '96f4af3a4d244f0593f0a070f17266b7', '20', '2');

-- ----------------------------
-- Table structure for `tes_question_content`
-- ----------------------------
DROP TABLE IF EXISTS `tes_question_content`;
CREATE TABLE `tes_question_content` (
  `id` varchar(32) NOT NULL,
  `contentTypeId` varchar(32) DEFAULT NULL,
  `content` text,
  `seqNu` int(255) DEFAULT NULL,
  `questionId` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tes_question_content
-- ----------------------------

-- ----------------------------
-- Table structure for `tes_question_content_type`
-- ----------------------------
DROP TABLE IF EXISTS `tes_question_content_type`;
CREATE TABLE `tes_question_content_type` (
  `id` varchar(32) NOT NULL COMMENT '试题内容类型id',
  `type` varchar(60) NOT NULL COMMENT '试题内容类型',
  `descp` varchar(255) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tes_question_content_type
-- ----------------------------
INSERT INTO `tes_question_content_type` VALUES ('10000', 'text', '');
INSERT INTO `tes_question_content_type` VALUES ('10001', 'image', null);
INSERT INTO `tes_question_content_type` VALUES ('10002', 'video', null);
INSERT INTO `tes_question_content_type` VALUES ('10003', 'flash', null);
INSERT INTO `tes_question_content_type` VALUES ('10004', 'radio', null);

-- ----------------------------
-- Table structure for `tes_question_knowledge`
-- ----------------------------
DROP TABLE IF EXISTS `tes_question_knowledge`;
CREATE TABLE `tes_question_knowledge` (
  `id` varchar(32) NOT NULL,
  `questionId` varchar(32) DEFAULT NULL,
  `knowledgeId` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tes_question_knowledge
-- ----------------------------
INSERT INTO `tes_question_knowledge` VALUES ('008afcf1c35046c1b4bb9be17965fc3d', '2228821cac7a4ca6a0055d9c29c36aa5', 'c3ec19c559eb4121bfe722ce578fcd12');
INSERT INTO `tes_question_knowledge` VALUES ('28554b9bdfbd46e1b04b002addf6d10f', '1c901a6796c44dcd9a9432d228b700f6', '6b4b81ff59df4f3eb4917d975c67c66e');
INSERT INTO `tes_question_knowledge` VALUES ('2d6abf7af5a142ea9b516042c5ba4957', '96f4af3a4d244f0593f0a070f17266b7', '');
INSERT INTO `tes_question_knowledge` VALUES ('6e636d341a7a40cb8cb4baae88bdd129', '1075e1253a204415994c986eb2d2e811', 'c3ec19c559eb4121bfe722ce578fcd12');
INSERT INTO `tes_question_knowledge` VALUES ('a25ae93a5cba497e8ea230800f0388a2', '968f9b5ab91544d9ae4a30e81f5d3e36', 'c3ec19c559eb4121bfe722ce578fcd12');
INSERT INTO `tes_question_knowledge` VALUES ('e4a77a6ddd9a45dbae11314c1bc09a2a', 'cee6eaeae04c4e44a536d1f99c2911d8', '07c2aca44ef441fd9090361b28ee3a19');

-- ----------------------------
-- Table structure for `tes_question_times`
-- ----------------------------
DROP TABLE IF EXISTS `tes_question_times`;
CREATE TABLE `tes_question_times` (
  `id` varchar(120) NOT NULL,
  `questionId` varchar(120) NOT NULL,
  `times` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`questionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tes_question_times
-- ----------------------------
INSERT INTO `tes_question_times` VALUES ('12343434', '1075e1253a204415994c986eb2d2e811', '29');
INSERT INTO `tes_question_times` VALUES ('289143', 'cee6eaeae04c4e44a536d1f99c2911d8', '8');
INSERT INTO `tes_question_times` VALUES ('4234722', '96f4af3a4d244f0593f0a070f17266b7', '20');

-- ----------------------------
-- Table structure for `tes_question_type`
-- ----------------------------
DROP TABLE IF EXISTS `tes_question_type`;
CREATE TABLE `tes_question_type` (
  `id` varchar(32) NOT NULL,
  `code` varchar(60) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `descp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tes_question_type
-- ----------------------------
INSERT INTO `tes_question_type` VALUES ('20000', 'single', '单选题', null);
INSERT INTO `tes_question_type` VALUES ('20001', 'multiple', '多选题', null);
INSERT INTO `tes_question_type` VALUES ('20002', 'judge', '判断题', null);
INSERT INTO `tes_question_type` VALUES ('20003', 'gapfilling', '填空题', null);
INSERT INTO `tes_question_type` VALUES ('20004', 'essay', '问答题', null);

-- ----------------------------
-- Table structure for `tes_role`
-- ----------------------------
DROP TABLE IF EXISTS `tes_role`;
CREATE TABLE `tes_role` (
  `id` varchar(32) NOT NULL,
  `name` varchar(100) NOT NULL,
  `descp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tes_role
-- ----------------------------
INSERT INTO `tes_role` VALUES ('1', '管理员', '管理员');
INSERT INTO `tes_role` VALUES ('2', '教师', '教师');
INSERT INTO `tes_role` VALUES ('3', '考生', '考生');

-- ----------------------------
-- Table structure for `tes_role_department`
-- ----------------------------
DROP TABLE IF EXISTS `tes_role_department`;
CREATE TABLE `tes_role_department` (
  `id` varchar(32) NOT NULL,
  `roleId` varchar(32) NOT NULL,
  `roleName` varchar(255) NOT NULL,
  `deparmentId` varchar(32) NOT NULL,
  `departmentName` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tes_role_department
-- ----------------------------

-- ----------------------------
-- Table structure for `tes_train`
-- ----------------------------
DROP TABLE IF EXISTS `tes_train`;
CREATE TABLE `tes_train` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(255) DEFAULT NULL,
  `classTypeId` varchar(255) DEFAULT NULL,
  `createUser` varchar(32) DEFAULT NULL,
  `status` varchar(32) DEFAULT NULL COMMENT '新建:new,发布:publish,关闭:close',
  `endTime` datetime DEFAULT NULL,
  `startTime` datetime DEFAULT NULL,
  `knowledgeId` varchar(255) DEFAULT NULL,
  `classHours` varchar(32) DEFAULT NULL,
  `score` varchar(32) DEFAULT NULL,
  `descp` varchar(255) DEFAULT NULL,
  `coverFile` varchar(255) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tes_train
-- ----------------------------
INSERT INTO `tes_train` VALUES ('41031cf94d3b4a6eac5f4e352dd595d7', 'java学习', '9dbe7c96d20946f19033ae53503b93df', 'teacher', 'new', null, null, '07c2aca44ef441fd9090361b28ee3a19', '25', '100', '', '/resources/images/fengmian.jpg', '');

-- ----------------------------
-- Table structure for `tes_train_content`
-- ----------------------------
DROP TABLE IF EXISTS `tes_train_content`;
CREATE TABLE `tes_train_content` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `trainId` varchar(32) DEFAULT NULL,
  `chapterName` varchar(255) DEFAULT NULL,
  `parentId` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tes_train_content
-- ----------------------------

-- ----------------------------
-- Table structure for `tes_train_knowledge_relation`
-- ----------------------------
DROP TABLE IF EXISTS `tes_train_knowledge_relation`;
CREATE TABLE `tes_train_knowledge_relation` (
  `id` varchar(32) DEFAULT NULL,
  `trainContentId` varchar(32) DEFAULT NULL,
  `knowledgeId` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tes_train_knowledge_relation
-- ----------------------------

-- ----------------------------
-- Table structure for `tes_train_recorder`
-- ----------------------------
DROP TABLE IF EXISTS `tes_train_recorder`;
CREATE TABLE `tes_train_recorder` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `studentId` varchar(32) DEFAULT NULL,
  `trainId` varchar(32) DEFAULT NULL,
  `beginDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tes_train_recorder
-- ----------------------------

-- ----------------------------
-- Table structure for `tes_user`
-- ----------------------------
DROP TABLE IF EXISTS `tes_user`;
CREATE TABLE `tes_user` (
  `id` varchar(32) NOT NULL,
  `loginName` varchar(100) NOT NULL,
  `displayName` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `departmentId` varchar(32) NOT NULL,
  `phoneNum` varchar(50) DEFAULT NULL,
  `regTime` datetime DEFAULT NULL,
  `sex` varchar(45) DEFAULT NULL,
  `age` varchar(45) DEFAULT NULL,
  `descp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tes_user
-- ----------------------------
INSERT INTO `tes_user` VALUES ('2bc3840dd57a4fecbba7f2c54f68ccce', 'admin', 'admin', '111111', '', '', null, '0000-00-00 00:00:00', null, null, '');
INSERT INTO `tes_user` VALUES ('4b1ac07bd406461fa5ca1bfe484148b7', 'student', 'student', '111111', '', '', '', '0000-00-00 00:00:00', '', '', '');
INSERT INTO `tes_user` VALUES ('89449764270243e4bec025b3bbe40de3', 'lisi', 'lisi', '111111', '', '1a453cd3428540d2b0d22c129a2df27a', '', '2015-10-12 21:19:03', 'male', '', '');
INSERT INTO `tes_user` VALUES ('b9fc86104c3d48ecade466652b51b596', 'wangsan', 'sdfdf', '111111', '', '1a453cd3428540d2b0d22c129a2df27a', '', '2015-10-19 16:29:15', 'male', '', '');
INSERT INTO `tes_user` VALUES ('c84b8529714146979bb8363320d2fc37', 'teacher', 'teacher', '111111', '', '', '', '0000-00-00 00:00:00', '', '', '');

-- ----------------------------
-- Table structure for `tes_user_permission`
-- ----------------------------
DROP TABLE IF EXISTS `tes_user_permission`;
CREATE TABLE `tes_user_permission` (
  `id` varchar(32) NOT NULL,
  `userId` varchar(32) NOT NULL,
  `permissionId` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tes_user_permission
-- ----------------------------

-- ----------------------------
-- Table structure for `tes_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `tes_user_role`;
CREATE TABLE `tes_user_role` (
  `id` varchar(32) NOT NULL,
  `userId` varchar(32) NOT NULL,
  `roleId` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tes_user_role
-- ----------------------------
INSERT INTO `tes_user_role` VALUES ('1', '2bc3840dd57a4fecbba7f2c54f68ccce', '1');
INSERT INTO `tes_user_role` VALUES ('2eb68a6ef11a45bca30ac2dad6ac9868', 'c84b8529714146979bb8363320d2fc37', '2');
INSERT INTO `tes_user_role` VALUES ('6844f479d5f5419097f971b74f5660dd', '89449764270243e4bec025b3bbe40de3', '3');
INSERT INTO `tes_user_role` VALUES ('962e3203c5ae40e99a28f6c9281fed40', '4b1ac07bd406461fa5ca1bfe484148b7', '3');
INSERT INTO `tes_user_role` VALUES ('fbd9f59f78fb4a09a365745570819f3c', 'b9fc86104c3d48ecade466652b51b596', '3');

-- ----------------------------
-- View structure for `tes_completion_paper_view`
-- ----------------------------
DROP VIEW IF EXISTS `tes_completion_paper_view`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `tes_completion_paper_view` AS select `ques`.`level` AS `LEVEL`,`ques`.`title` AS `title`,`ques`.`answer` AS `answer`,`type`.`name` AS `type`,`rel`.`seqNu` AS `QuestionNumber`,`type_num`.`seqNu` AS `TypeNumber`,`rel`.`score` AS `score`,`ques`.`optionnum` AS `optionnum`,`ques`.`lastmodifyUser` AS `lastmodifyuser`,`ques`.`lastmodifyTime` AS `lastmodifytime`,`ques`.`userId` AS `userid`,`ques`.`createTime` AS `createtime`,`ques`.`knows` AS `knows`,`ques`.`content` AS `content`,`ques`.`user` AS `user`,`ques`.`typeId` AS `typeId`,`ques`.`resolution` AS `resolution`,`ques`.`istrain` AS `istrain`,`type`.`code` AS `code`,`type`.`descp` AS `descp`,`rel`.`exampaperId` AS `exampaperId`,`rel`.`questionTypeId` AS `questionTypeId`,`rel`.`questionId` AS `questionId`,`exampaper`.`name` AS `name`,`exampaper`.`passLine` AS `passLine` from ((((`tes_questiontype_question` `rel` join `tes_exampaper_questiontype` `type_num`) join `tes_question_type` `type`) join `tes_question` `ques`) join `tes_exampaper` `exampaper`) where ((`rel`.`questionId` = `ques`.`id`) and (`rel`.`questionTypeId` = `type`.`id`) and (`rel`.`exampaperId` = `type_num`.`exampaperId`) and (`rel`.`questionTypeId` = `type_num`.`questionTypeId`) and (`exampaper`.`id` = `rel`.`exampaperId`)) order by `type_num`.`seqNu`,`rel`.`seqNu` ;

-- ----------------------------
-- View structure for `tes_department_user_view`
-- ----------------------------
DROP VIEW IF EXISTS `tes_department_user_view`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `tes_department_user_view` AS select `a`.`id` AS `id`,`a`.`name` AS `NAME`,`a`.`parentId` AS `parentId`,`a`.`descp` AS `descp`,`a`.`level` AS `LEVEL`,`u`.`id` AS `userId`,`u`.`loginName` AS `loginName`,`u`.`departmentId` AS `usrDep`,`u`.`roleId` AS `roleId`,`u`.`roleName` AS `roleName` from ((`tes_department` `a` left join `tes_department` `b` on((`a`.`id` = `b`.`parentId`))) left join `tes_user_role_department_view` `u` on((`a`.`id` = `u`.`departmentId`))) ;

-- ----------------------------
-- View structure for `tes_exam_log_detail_view`
-- ----------------------------
DROP VIEW IF EXISTS `tes_exam_log_detail_view`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `tes_exam_log_detail_view` AS select `student`.`displayName` AS `studentName`,`student`.`id` AS `studentId`,`exam_log`.`id` AS `examLogId`,`exam_room`.`id` AS `examRoomId`,`exam_room`.`name` AS `examRoomName`,`exam_room`.`duration` AS `examRoomDuration`,`exam_room`.`coverFile` AS `examRoomCoverFile`,`exam_log`.`beginDate` AS `examLogBeginDate`,`exam_log`.`endDate` AS `examLogEndDate`,`exam_log`.`examRoomId` AS `examLogExamRoomId`,`exam_log`.`teacherId` AS `teacherId`,`exam_log`.`score` AS `examLogScore`,`exam_log`.`judgeDate` AS `examLogJudgeDate`,`exam_log`.`modifyDate` AS `examLogModifyDate`,`exam_log`.`description` AS `examLogDescription` from ((`tes_exam_log` `exam_log` join `tes_exam_room` `exam_room`) join `tes_user` `student`) where ((`exam_log`.`examRoomId` = `exam_room`.`id`) and (`exam_log`.`studentId` = `student`.`id`)) ;

-- ----------------------------
-- View structure for `tes_exam_log_room_paper_result_view`
-- ----------------------------
DROP VIEW IF EXISTS `tes_exam_log_room_paper_result_view`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `tes_exam_log_room_paper_result_view` AS select `user`.`displayName` AS `displayName`,`paper`.`LEVEL` AS `LEVEL`,`paper`.`title` AS `title`,`paper`.`answer` AS `answer`,`paper`.`type` AS `type`,`paper`.`QuestionNumber` AS `QuestionNumber`,`paper`.`TypeNumber` AS `TypeNumber`,`paper`.`paperScore` AS `paperScore`,`paper`.`optionnum` AS `optionnum`,`paper`.`lastmodifyuser` AS `lastmodifyuser`,`paper`.`lastmodifytime` AS `lastmodifytime`,`paper`.`userid` AS `userid`,`paper`.`createtime` AS `createtime`,`paper`.`knows` AS `knows`,`paper`.`content` AS `content`,`paper`.`user` AS `user`,`paper`.`typeId` AS `typeId`,`paper`.`resolution` AS `resolution`,`paper`.`istrain` AS `istrain`,`paper`.`code` AS `code`,`paper`.`descp` AS `descp`,`paper`.`exampaperId` AS `exampaperId`,`paper`.`questionTypeId` AS `questionTypeId`,`paper`.`questionId` AS `questionId`,`paper`.`room_id` AS `room_id`,`paper`.`paperName` AS `paperName`,`paper`.`status` AS `status`,`paper`.`description` AS `description`,`paper`.`review` AS `review`,`paper`.`duration` AS `duration`,`paper`.`exampaperId` AS `paperId`,`paper`.`score` AS `score`,`paper`.`judgeDate` AS `judgeDate`,`paper`.`log_id` AS `log_id`,`paper`.`passLine` AS `passLine`,`paper`.`examRoomName` AS `examRoomName`,`paper`.`studentId` AS `studentId`,`score`.`id` AS `scoreId`,`score`.`answer` AS `result`,`score`.`judgeDate` AS `scoreJudgeDate`,`score`.`score` AS `resultScore`,`score`.`description` AS `scoreDescription` from ((`tes_exam_log_room_paper_view` `paper` left join `tes_exam_score` `score` on(((`paper`.`questionId` = `score`.`questionId`) and (`paper`.`log_id` = `score`.`examLogId`)))) join `tes_user` `user`) where (`user`.`id` = `paper`.`studentId`) ;

-- ----------------------------
-- View structure for `tes_exam_log_room_paper_view`
-- ----------------------------
DROP VIEW IF EXISTS `tes_exam_log_room_paper_view`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `tes_exam_log_room_paper_view` AS select `paper`.`LEVEL` AS `LEVEL`,`paper`.`title` AS `title`,`paper`.`answer` AS `answer`,`paper`.`type` AS `type`,`paper`.`QuestionNumber` AS `QuestionNumber`,`paper`.`TypeNumber` AS `TypeNumber`,`paper`.`score` AS `paperScore`,`paper`.`optionnum` AS `optionnum`,`paper`.`lastmodifyuser` AS `lastmodifyuser`,`paper`.`lastmodifytime` AS `lastmodifytime`,`paper`.`userid` AS `userid`,`paper`.`createtime` AS `createtime`,`paper`.`knows` AS `knows`,`paper`.`content` AS `content`,`paper`.`user` AS `user`,`paper`.`typeId` AS `typeId`,`paper`.`resolution` AS `resolution`,`paper`.`istrain` AS `istrain`,`paper`.`code` AS `code`,`paper`.`descp` AS `descp`,`paper`.`exampaperId` AS `exampaperId`,`paper`.`questionTypeId` AS `questionTypeId`,`paper`.`questionId` AS `questionId`,`paper`.`room_id` AS `room_id`,`paper`.`paperName` AS `paperName`,`paper`.`status` AS `status`,`paper`.`description` AS `description`,`paper`.`review` AS `review`,`paper`.`duration` AS `duration`,`paper`.`passLine` AS `passLine`,`examlog`.`id` AS `log_id`,`paper`.`examRoomName` AS `examRoomName`,`examlog`.`score` AS `score`,`examlog`.`judgeDate` AS `judgeDate`,`examlog`.`studentId` AS `studentId` from (`tes_exam_room_paper_view` `paper` join `tes_exam_log` `examlog`) where (`paper`.`room_id` = `examlog`.`examRoomId`) ;

-- ----------------------------
-- View structure for `tes_exam_result_statistic_view`
-- ----------------------------
DROP VIEW IF EXISTS `tes_exam_result_statistic_view`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `tes_exam_result_statistic_view` AS select `tes_exam_log_room_paper_result_view`.`type` AS `type`,count(0) AS `totalNum`,sum(`tes_exam_log_room_paper_result_view`.`paperScore`) AS `totalScore`,sum(`tes_exam_log_room_paper_result_view`.`score`) AS `score`,count(if((`tes_exam_log_room_paper_result_view`.`score` = `tes_exam_log_room_paper_result_view`.`paperScore`),1,NULL)) AS `rightNum`,`tes_exam_log_room_paper_result_view`.`exampaperId` AS `exampaperId` from `tes_exam_log_room_paper_result_view` group by `tes_exam_log_room_paper_result_view`.`type` ;

-- ----------------------------
-- View structure for `tes_exam_room_paper_view`
-- ----------------------------
DROP VIEW IF EXISTS `tes_exam_room_paper_view`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `tes_exam_room_paper_view` AS select `ques`.`level` AS `LEVEL`,`ques`.`title` AS `title`,`ques`.`answer` AS `answer`,`type`.`name` AS `type`,`rel`.`seqNu` AS `QuestionNumber`,`type_num`.`seqNu` AS `TypeNumber`,`rel`.`score` AS `score`,`ques`.`optionnum` AS `optionnum`,`ques`.`lastmodifyUser` AS `lastmodifyuser`,`ques`.`lastmodifyTime` AS `lastmodifytime`,`ques`.`userId` AS `userid`,`ques`.`createTime` AS `createtime`,`ques`.`knows` AS `knows`,`ques`.`content` AS `content`,`ques`.`user` AS `user`,`ques`.`typeId` AS `typeId`,`ques`.`resolution` AS `resolution`,`ques`.`istrain` AS `istrain`,`type`.`code` AS `code`,`type`.`descp` AS `descp`,`rel`.`exampaperId` AS `exampaperId`,`rel`.`questionTypeId` AS `questionTypeId`,`rel`.`questionId` AS `questionId`,`room`.`id` AS `room_id`,`room`.`name` AS `examRoomName`,`room`.`status` AS `status`,`room`.`description` AS `description`,`room`.`review` AS `review`,`room`.`duration` AS `duration`,`exampaper`.`name` AS `paperName`,`exampaper`.`passLine` AS `passLine` from (((((`tes_questiontype_question` `rel` join `tes_exampaper_questiontype` `type_num`) join `tes_question_type` `type`) join `tes_exam_room` `room`) join `tes_question` `ques`) join `tes_exampaper` `exampaper`) where ((`rel`.`questionId` = `ques`.`id`) and (`rel`.`questionTypeId` = `type`.`id`) and (`rel`.`exampaperId` = `type_num`.`exampaperId`) and (`rel`.`questionTypeId` = `type_num`.`questionTypeId`) and (`rel`.`exampaperId` = `room`.`examPaperId`) and (`exampaper`.`id` = `rel`.`exampaperId`)) order by `type_num`.`seqNu`,`rel`.`seqNu` ;

-- ----------------------------
-- View structure for `tes_user_role_department_view`
-- ----------------------------
DROP VIEW IF EXISTS `tes_user_role_department_view`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `tes_user_role_department_view` AS select `u`.`id` AS `id`,`u`.`loginName` AS `loginName`,`u`.`displayName` AS `displayName`,`u`.`password` AS `password`,`u`.`email` AS `email`,`u`.`regTime` AS `regTime`,`u`.`phoneNum` AS `phoneNum`,`u`.`age` AS `age`,`u`.`descp` AS `descp`,`u`.`sex` AS `sex`,`ur`.`roleId` AS `roleId`,`r`.`name` AS `roleName`,`u`.`departmentId` AS `departmentId`,`dep`.`name` AS `departmentName` from (((`tes_user` `u` left join `tes_user_role` `ur` on((`u`.`id` = `ur`.`userId`))) left join `tes_role` `r` on((`ur`.`roleId` = `r`.`id`))) left join `tes_department` `dep` on((`u`.`departmentId` = `dep`.`id`))) ;

-- ----------------------------
-- View structure for `tes_user_view`
-- ----------------------------
DROP VIEW IF EXISTS `tes_user_view`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `tes_user_view` AS select `a`.`userId` AS `id`,(case when (`a`.`loginName` = `b`.`loginName`) then `a`.`loginName` else `a`.`NAME` end) AS `NAME`,(case when (`a`.`loginName` = `b`.`loginName`) then (`a`.`LEVEL` + 1) else `a`.`LEVEL` end) AS `LEVEL`,`a`.`id` AS `depId`,`a`.`usrDep` AS `parentId`,`a`.`roleId` AS `roleId`,`a`.`roleName` AS `roleName`,(case when (`a`.`usrDep` is not null) then 1 else 0 end) AS `TYPE` from (`tes_department_user_view` `a` left join `tes_department_user_view` `b` on((`a`.`usrDep` = `b`.`id`))) where (`a`.`loginName` = `b`.`loginName`) ;
