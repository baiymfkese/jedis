/*
Navicat MySQL Data Transfer

Source Server         : 218.244.142.27
Source Server Version : 50537
Source Host           : 218.244.142.27:3309
Source Database       : jushikj_tes

Target Server Type    : MYSQL
Target Server Version : 50537
File Encoding         : 65001

Date: 2015-10-21 16:54:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tes_class_type`
-- ----------------------------
DROP TABLE IF EXISTS `tes_class_type`;
CREATE TABLE `tes_class_type` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(125) DEFAULT NULL,
  `descp` varchar(125) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tes_class_type
-- ----------------------------
INSERT INTO `tes_class_type` VALUES ('13442b9d52a94e79a4e0ee6dd70f09c4', '生物', '');
INSERT INTO `tes_class_type` VALUES ('3809916e44a0438d9be99c408513fb1a', ' ddd', '');
INSERT INTO `tes_class_type` VALUES ('693729d129434fac9d60f0240666a3c3', '英语', '');
INSERT INTO `tes_class_type` VALUES ('88d0fe16489444fc86b84b5af326fbca', '测试', '');
INSERT INTO `tes_class_type` VALUES ('8ae800ac1b2b474f8120267a5467db54', '物理', '');
INSERT INTO `tes_class_type` VALUES ('a486fc70bdd6424c9aabdb2e52336210', '数学', '');
INSERT INTO `tes_class_type` VALUES ('f8325dac2cd649fa82b56a4394d20262', '语文', '');

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
INSERT INTO `tes_collect_question` VALUES ('6fb5866681504b7e9e28960462efb3bc', '08b3b1ecda9c470ca635d482d5936661', '65320a4aa19b411aa484bb5185f71f39', '2015-10-21 16:31:52');
INSERT INTO `tes_collect_question` VALUES ('9a1bd2489d1748bd919a2992b37fc397', '45a9fc831f9845438d3f6268d7f36a85', '65320a4aa19b411aa484bb5185f71f39', '2015-10-14 09:55:30');

-- ----------------------------
-- Table structure for `tes_courseware`
-- ----------------------------
DROP TABLE IF EXISTS `tes_courseware`;
CREATE TABLE `tes_courseware` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(125) DEFAULT NULL,
  `uploadUser` varchar(125) DEFAULT NULL COMMENT '课件的上传人',
  `speaker` varchar(125) DEFAULT NULL COMMENT '演讲者',
  `descp` varchar(125) DEFAULT NULL COMMENT '描述信息',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tes_courseware
-- ----------------------------
INSERT INTO `tes_courseware` VALUES ('25045ad18ba24c509e3cbfbdf5efe172', '现代散文概述', 'lvzhh', 'lvzhh', '', '2015-08-23 13:18:06');
INSERT INTO `tes_courseware` VALUES ('2540a7f4662a46779cf6dd769c1abd9d', '大学英语', '111111', '111111', '', '2015-06-19 15:33:03');
INSERT INTO `tes_courseware` VALUES ('56199f8bc2774aa1b03aee3c932c57d9', '第二章 现代散文', '111111', '111111', '', '2015-08-30 00:11:31');
INSERT INTO `tes_courseware` VALUES ('583ab781262b47f0a75d9873ba6ba4c4', '现代散文概述', 'lvzhh', 'lvzhh', '', '2015-08-23 13:18:26');
INSERT INTO `tes_courseware` VALUES ('64a952f1d09a40a891348864c8b5dea9', 'gaishu', 'lvzhh', 'lvzhh', '', '2015-08-23 13:52:08');
INSERT INTO `tes_courseware` VALUES ('89b0109844ae43019e0a1a58773c3880', '测试', 'lvzhh', 'lvzhh', '', '2015-08-23 13:22:37');
INSERT INTO `tes_courseware` VALUES ('933e1168013b4bd088c33be7c3b638c7', '第三章课题', '111111', '111111', '', '2015-03-29 16:37:49');
INSERT INTO `tes_courseware` VALUES ('ababd686cb8d49ec906933e03a2f802a', '第二章 现代散文', '111111', '111111', '', '2015-08-30 00:21:23');
INSERT INTO `tes_courseware` VALUES ('d8c7ee51e1e14ea3880b169618209acf', '第一章课件', '111111', '111111', '阿打算的放', '2015-03-29 16:36:40');
INSERT INTO `tes_courseware` VALUES ('e74bc33a2ddf4d44b3010e0d9303f1ad', '概述培训课件一', '111111', '111111', '爱的发的发', '2015-03-29 16:34:51');
INSERT INTO `tes_courseware` VALUES ('e92ff4375c554befbe27a64d34dd1235', '大学英语', '111111', '111111', '', '2015-06-19 15:33:00');
INSERT INTO `tes_courseware` VALUES ('f03ed986709d471eb5a6f9e5351c12fc', '生物课件', '111111', '111111', '', '2015-06-19 15:36:33');

-- ----------------------------
-- Table structure for `tes_courseware_content_relation`
-- ----------------------------
DROP TABLE IF EXISTS `tes_courseware_content_relation`;
CREATE TABLE `tes_courseware_content_relation` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `coursewareId` varchar(32) DEFAULT NULL,
  `fileUrl` varchar(125) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `fileName` varchar(125) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tes_courseware_content_relation
-- ----------------------------
INSERT INTO `tes_courseware_content_relation` VALUES ('07f1bc688318473595910c5c23e18158', '933e1168013b4bd088c33be7c3b638c7', '/upload/courseware/_1427618269495.mp4', '2015-03-29 16:37:49', 'NotAfraid.mp4');
INSERT INTO `tes_courseware_content_relation` VALUES ('14725f26bc7b4d3892261022e2a4deee', 'e74bc33a2ddf4d44b3010e0d9303f1ad', '/upload/courseware/_1427618091359.pdf', '2015-03-29 16:34:51', '蓝鲸体系介绍.pdf');
INSERT INTO `tes_courseware_content_relation` VALUES ('3a76e0f1cda34d5aabb1c3112e6f3c3b', '56199f8bc2774aa1b03aee3c932c57d9', '/upload/courseware/_1440864691426.pdf', '2015-08-30 00:11:31', '软件项目管理-注释版.pdf');
INSERT INTO `tes_courseware_content_relation` VALUES ('409681085bf94a22998cc29ddd36a5f5', '64a952f1d09a40a891348864c8b5dea9', '/upload/courseware/_1440309128564.pdf', '2015-08-23 13:52:08', '软件项目管理-注释版.pdf');
INSERT INTO `tes_courseware_content_relation` VALUES ('5b2c8a1eb0124b7c867e25c4e071e174', '933e1168013b4bd088c33be7c3b638c7', '/upload/courseware/_1427618269764.pdf', '2015-03-29 16:37:49', '阿里金融云技术白皮书_v1.3 - 副本.pdf');
INSERT INTO `tes_courseware_content_relation` VALUES ('b29574d1d9e246e79bd0a3d0e0c5bd7e', 'ababd686cb8d49ec906933e03a2f802a', '/upload/courseware/_1440865283162.pdf', '2015-08-30 00:21:23', '软件项目管理-注释版.pdf');
INSERT INTO `tes_courseware_content_relation` VALUES ('d54b1de2f0d147f29717b9ad66c69fcd', 'd8c7ee51e1e14ea3880b169618209acf', '/upload/courseware/_1427618200326.mp4', '2015-03-29 16:36:40', 'NotAfraid.mp4');

-- ----------------------------
-- Table structure for `tes_data`
-- ----------------------------
DROP TABLE IF EXISTS `tes_data`;
CREATE TABLE `tes_data` (
  `id` varchar(32) NOT NULL,
  `userId` varchar(32) DEFAULT NULL,
  `name` varchar(125) DEFAULT NULL,
  `createUserName` varchar(32) DEFAULT NULL,
  `path` varchar(125) DEFAULT NULL,
  `type` varchar(125) DEFAULT NULL COMMENT 'file:文件，dir:目录',
  `parentId` varchar(32) DEFAULT NULL COMMENT 'true:共享，false:不共享',
  `share` varchar(32) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tes_data
-- ----------------------------
INSERT INTO `tes_data` VALUES ('05e66df9239a4dd3b173bd8100dc8ff5', '3d2abb1f3868448982bb7da35096b045', 'modulemanagement.module.license.log', 'teacher', 'modulemanagement.module.license.log', 'file', '', null, '2015-03-22 13:50:48');
INSERT INTO `tes_data` VALUES ('08f0bc43e5454887aaf6ae15e1f9440b', '3d2abb1f3868448982bb7da35096b045', 'clustermonitor.clusteroverview.log', 'teacher', 'clustermonitor.clusteroverview.log', 'file', '', null, '2015-03-22 13:49:37');
INSERT INTO `tes_data` VALUES ('0d5a19b562bd4ace916368ce3b651b36', '321b8bacaaca4dcc9459953554d0555a', 'test-a', 'lvzhh-t', null, 'dir', '', null, '2015-08-23 12:42:34');
INSERT INTO `tes_data` VALUES ('0f3b85465ba64037b599000a803731cd', '3d2abb1f3868448982bb7da35096b045', '的的苦辣的', 'teacher', null, 'dir', '', null, '2015-03-22 13:50:30');
INSERT INTO `tes_data` VALUES ('106513e04f5c4a5993d6c16d7ace58c6', '321b8bacaaca4dcc9459953554d0555a', '住友制药-洛珊P3临床试验方案1.1版.pdf', 'lvzhh-t', '住友制药-洛珊P3临床试验方案1.1版.pdf', 'file', '', null, '2015-08-23 12:36:52');
INSERT INTO `tes_data` VALUES ('1560f044d88b4f4a93c61a38099b3823', '321b8bacaaca4dcc9459953554d0555a', 'Gridview4.0 项目计划及进度-2015-07-03.pptx', 'lvzhh-t', 'Gridview4.0 项目计划及进度-2015-07-03.pptx', 'file', '', null, '2015-08-23 12:20:56');
INSERT INTO `tes_data` VALUES ('1b6de2efa8ab485982358a2ba37192fa', '3d2abb1f3868448982bb7da35096b045', 'modulemanagement.module.common.log', 'teacher', 'modulemanagement.module.common.log', 'file', '', null, '2015-03-22 13:50:57');
INSERT INTO `tes_data` VALUES ('2588e416efe6462eacb144305493111a', '3d2abb1f3868448982bb7da35096b045', 'teagta', 'teacher', null, 'dir', '', null, '2015-03-22 13:48:17');
INSERT INTO `tes_data` VALUES ('2abda37f854443f68abcae4b6357711e', '65320a4aa19b411aa484bb5185f71f39', '呃呃', 'st001', null, 'dir', '', 'true', '2015-10-12 23:24:48');
INSERT INTO `tes_data` VALUES ('34336b0b3b384c09a22b683ae8c73e6e', '3d2abb1f3868448982bb7da35096b045', '爱的发', 'teacher', null, 'dir', 'b4ec085766494cbf8ea177dd3ccf6c6a', null, '2015-03-22 13:49:03');
INSERT INTO `tes_data` VALUES ('35f303b39cf14e05b1cd4d094cb3ecb4', '3d2abb1f3868448982bb7da35096b045', 'cluster.monitor.log', 'teacher', 'cluster.monitor.log', 'file', '', null, '2015-03-22 13:50:01');
INSERT INTO `tes_data` VALUES ('56eff093bff443faa7945fd800ff0064', '321b8bacaaca4dcc9459953554d0555a', 'lvzhh-t', 'lvzhh-t', null, 'dir', '', null, '2015-08-23 12:21:19');
INSERT INTO `tes_data` VALUES ('5f564050fac64d0d95aa165ab288d612', '05df7d7b68aa418fae1eab83b4b6f8c8', '自我测试.vsd', 'lvzhh-s', '自我测试.vsd', 'file', '', null, '2015-09-11 06:04:09');
INSERT INTO `tes_data` VALUES ('5f7e949f45a5488b9f1257de51b69876', 'e937849f97a84faaaef051010c2a9a68', '阿里金融云技术白皮书_v1.3 - 副本.pdf', 't001', '阿里金融云技术白皮书_v1.3 - 副本.pdf', 'file', '', null, '2015-03-29 17:37:53');
INSERT INTO `tes_data` VALUES ('6ca98782a2c443d0bb935410169278b5', '58f6fd5f3c064d1197d0ebb1e21f528f', 'Karaf入门指南.doc', 'st002', 'Karaf入门指南.doc', 'file', '', 'true', '2015-09-10 20:56:47');
INSERT INTO `tes_data` VALUES ('6d7a0f9064e646c396c6077e13310092', '321b8bacaaca4dcc9459953554d0555a', 'DSCN1744.JPG', 'lvzhh-t', 'DSCN1744.JPG', 'file', '', null, '2015-08-23 12:41:55');
INSERT INTO `tes_data` VALUES ('7207a6992b3e4a228c07e87a21c7a463', 'e937849f97a84faaaef051010c2a9a68', 'Coding 经验交流.ppt', 't001', 'Coding 经验交流.ppt', 'file', '', null, '2015-03-29 17:36:14');
INSERT INTO `tes_data` VALUES ('761bf21734284278b9648fea7f387a3f', '05df7d7b68aa418fae1eab83b4b6f8c8', 'data', 'lvzhh-s', null, 'dir', '', null, '2015-09-11 06:04:19');
INSERT INTO `tes_data` VALUES ('7c6f83492aee4f29a6c5e3e200c2f49b', '3d2abb1f3868448982bb7da35096b045', '啊打发', 'teacher', null, 'dir', '', null, '2015-03-22 13:50:13');
INSERT INTO `tes_data` VALUES ('7e0b4ec2a9154e95aec2733521cf3311', '4b1ac07bd406461fa5ca1bfe484148b7', 'test', 'stu001', null, 'dir', '', null, '2015-03-22 17:06:53');
INSERT INTO `tes_data` VALUES ('92b911310ee744d1a3f25cf3106364a8', '3d2abb1f3868448982bb7da35096b045', '只是体系', 'teacher', null, 'dir', '', null, '2015-03-22 13:50:09');
INSERT INTO `tes_data` VALUES ('9b85d28c5f68433786c017c1ee0440e0', 'e937849f97a84faaaef051010c2a9a68', '英语', 't001', null, 'dir', '', null, '2015-06-24 23:03:24');
INSERT INTO `tes_data` VALUES ('9c256b597e1b48f8a43af1f3bfd9b5b4', 'e937849f97a84faaaef051010c2a9a68', '高等数学', 't001', null, 'dir', '', null, '2015-06-19 15:28:10');
INSERT INTO `tes_data` VALUES ('ab8a78d6c149470181591fe6973c3361', '3d2abb1f3868448982bb7da35096b045', 'clustermonitor.clusteroverview.log', 'teacher', 'clustermonitor.clusteroverview.log', 'file', '', null, '2015-03-22 13:49:47');
INSERT INTO `tes_data` VALUES ('ac0e32da0c884f5faf7fcb0401b42a2d', 'e937849f97a84faaaef051010c2a9a68', 'asdfafd', 't001', null, 'dir', '', null, '2015-03-29 17:36:54');
INSERT INTO `tes_data` VALUES ('b4ec085766494cbf8ea177dd3ccf6c6a', '3d2abb1f3868448982bb7da35096b045', '我的', 'teacher', null, 'dir', '', null, '2015-03-22 13:48:46');
INSERT INTO `tes_data` VALUES ('bcf3ea5dcf88488c86040d4fecc73a45', 'e937849f97a84faaaef051010c2a9a68', '软件产品经理职责.doc', 't001', '软件产品经理职责.doc', 'file', '', 'true', '2015-06-19 15:27:54');
INSERT INTO `tes_data` VALUES ('c327221b0e164cc3a50a378213dcf295', '321b8bacaaca4dcc9459953554d0555a', 'lvzhh-s', 'lvzhh-t', null, 'dir', '', null, '2015-08-23 12:38:01');
INSERT INTO `tes_data` VALUES ('c8758dc898e64380b47b3180ff22d643', '65320a4aa19b411aa484bb5185f71f39', '软件产品经理职责.doc', 'st001', '软件产品经理职责.doc', 'file', '', null, '2015-06-19 16:06:03');
INSERT INTO `tes_data` VALUES ('c8dbf6f38575483caf8e9a2e399199d5', 'e937849f97a84faaaef051010c2a9a68', 'modulemanagement.module.configuration.log', 't001', 'modulemanagement.module.configuration.log', 'file', '', 'true', '2015-03-29 17:35:28');
INSERT INTO `tes_data` VALUES ('ca4e88f5b09c4b128eb3b29a24f667fa', '3d2abb1f3868448982bb7da35096b045', '啊打发啊', 'teacher', null, 'dir', '', null, '2015-03-22 13:50:36');
INSERT INTO `tes_data` VALUES ('cc03689474644b9e9472e124fd61bbe8', '3d2abb1f3868448982bb7da35096b045', '', 'teacher', null, 'dir', '', null, '2015-03-22 13:49:15');
INSERT INTO `tes_data` VALUES ('e35fa5e6e1024934a3a09a98685c82c0', '3d2abb1f3868448982bb7da35096b045', 'adad', 'teacher', null, 'dir', '2588e416efe6462eacb144305493111a', null, '2015-03-22 13:48:29');
INSERT INTO `tes_data` VALUES ('ec06a65479ec4cc696414400c4c14a59', '3d2abb1f3868448982bb7da35096b045', '啊打发调度', 'teacher', null, 'dir', '', null, '2015-03-22 13:50:25');

-- ----------------------------
-- Table structure for `tes_department`
-- ----------------------------
DROP TABLE IF EXISTS `tes_department`;
CREATE TABLE `tes_department` (
  `id` varchar(32) NOT NULL,
  `name` varchar(100) NOT NULL,
  `parentId` varchar(32) DEFAULT NULL,
  `descp` varchar(125) DEFAULT NULL,
  `level` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tes_department
-- ----------------------------
INSERT INTO `tes_department` VALUES ('2fbc5e90173d4ce9ada14a5ca7d3c2fa', '移动通信', '', '', '0');
INSERT INTO `tes_department` VALUES ('692ce55fae364027a7692cb7434d7372', '曙光', '', '', '0');
INSERT INTO `tes_department` VALUES ('b5765a4fa86d438a8a13e552c5a187e1', '部门2', '', '', '0');
INSERT INTO `tes_department` VALUES ('f155b5d0d8844e8ca16526d7a63e2239', '部门1', '', '', '0');
INSERT INTO `tes_department` VALUES ('f1ad5ebc846c4ac7b4e53e31d8a6d5f9', '子部门1', 'f155b5d0d8844e8ca16526d7a63e2239', '', '1');
INSERT INTO `tes_department` VALUES ('f31230158ad34d02996c59f6ddb439fe', '国家电网', '', '', '0');

-- ----------------------------
-- Table structure for `tes_department_resource`
-- ----------------------------
DROP TABLE IF EXISTS `tes_department_resource`;
CREATE TABLE `tes_department_resource` (
  `id` varchar(32) NOT NULL,
  `departmentId` varchar(32) DEFAULT NULL,
  `userId` varchar(125) DEFAULT NULL,
  `resourceId` varchar(32) NOT NULL,
  `url` varchar(125) DEFAULT NULL,
  `type` varchar(125) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tes_department_resource
-- ----------------------------
INSERT INTO `tes_department_resource` VALUES ('00306ccd06a44fb69b6a05ccce16af55', '65320a4aa19b411aa484bb5185f71f39', '65320a4aa19b411aa484bb5185f71f39', '01b51f0328f14244933a947588a9854c', null, 'exam');
INSERT INTO `tes_department_resource` VALUES ('06086569b1b6419eb87b93565ec98d51', '65320a4aa19b411aa484bb5185f71f39', '65320a4aa19b411aa484bb5185f71f39', '8c3526d6e80840b792747b7b37d1df85', null, 'exam');
INSERT INTO `tes_department_resource` VALUES ('0b4049f22b7f402f8af7f7ef8f690195', '65320a4aa19b411aa484bb5185f71f39', '65320a4aa19b411aa484bb5185f71f39', 'dd0a72e4006d415d858b11fc62e8d505', null, 'exam');
INSERT INTO `tes_department_resource` VALUES ('2621f38310db4eca9d7f0525977c7ce2', '05df7d7b68aa418fae1eab83b4b6f8c8', '05df7d7b68aa418fae1eab83b4b6f8c8', 'c5128cf898f14c6983cae531094d86eb', null, 'exam');
INSERT INTO `tes_department_resource` VALUES ('304d36b9cd9846379fe5b224827aea1b', '65320a4aa19b411aa484bb5185f71f39', '65320a4aa19b411aa484bb5185f71f39', '6b91bfe105e740b0acd6c7554dfeaf55', null, 'exam');
INSERT INTO `tes_department_resource` VALUES ('4dfb5ba03d1a4260a82b043299ed202b', '34ea3ea664f24339a0823a12c8e6b488', '34ea3ea664f24339a0823a12c8e6b488', '43ed4bce2208485e8cdb50c3842dda20', null, 'exam');
INSERT INTO `tes_department_resource` VALUES ('524f77389f694d218c87db9ad8948390', '65320a4aa19b411aa484bb5185f71f39', '65320a4aa19b411aa484bb5185f71f39', 'b58a948debf443e599c9fd62033c9f27', null, 'exam');
INSERT INTO `tes_department_resource` VALUES ('8dbea3ba08894122aa37352195fefe91', '65320a4aa19b411aa484bb5185f71f39', '65320a4aa19b411aa484bb5185f71f39', '5f93f234698249d583e81e87de1e3070', null, 'exam');
INSERT INTO `tes_department_resource` VALUES ('934587e4eea0497099cb447fd4a393f1', '65320a4aa19b411aa484bb5185f71f39', '65320a4aa19b411aa484bb5185f71f39', '8498d350783e45b0b72830995dcf4d9f', null, 'exam');
INSERT INTO `tes_department_resource` VALUES ('abd07093e4b540418944933d81d3913e', '05df7d7b68aa418fae1eab83b4b6f8c8', '05df7d7b68aa418fae1eab83b4b6f8c8', 'e19d370194fa4d618107187f1ea7d665', null, 'exam');
INSERT INTO `tes_department_resource` VALUES ('ce0f99620a094bb2b934b339eed01fdf', '65320a4aa19b411aa484bb5185f71f39', '65320a4aa19b411aa484bb5185f71f39', 'f43b50cc2d35400887fe51a8fed2d507', null, 'exam');
INSERT INTO `tes_department_resource` VALUES ('d9cc95503cb749a5aeb238e35582e9db', '65320a4aa19b411aa484bb5185f71f39', '65320a4aa19b411aa484bb5185f71f39', 'b5a2ba11595f4e7e97e5474d9aa30c7c', null, 'exam');
INSERT INTO `tes_department_resource` VALUES ('e7c175a07b4b4d4f994baf25891a7395', '65320a4aa19b411aa484bb5185f71f39', '65320a4aa19b411aa484bb5185f71f39', 'e19d370194fa4d618107187f1ea7d665', null, 'exam');
INSERT INTO `tes_department_resource` VALUES ('e88abccfcf19486e833e1a786c4d984d', '65320a4aa19b411aa484bb5185f71f39', '65320a4aa19b411aa484bb5185f71f39', '29e2703037204283ae96dbad385283b4', null, 'exam');
INSERT INTO `tes_department_resource` VALUES ('eb5ea622e8024cc487144b5bb23067e8', '05df7d7b68aa418fae1eab83b4b6f8c8', '05df7d7b68aa418fae1eab83b4b6f8c8', 'e2af7928faca4a55b2c841fae05bbe18', null, 'exam');
INSERT INTO `tes_department_resource` VALUES ('f2a6a0a7e82644c68f07c4fdd6e4e272', '65320a4aa19b411aa484bb5185f71f39', '65320a4aa19b411aa484bb5185f71f39', 'e9f944fca05b436eb897bc4c208bdfa2', null, 'exam');
INSERT INTO `tes_department_resource` VALUES ('fae8b246790745f281bb784d8cf9cc09', '05df7d7b68aa418fae1eab83b4b6f8c8', '05df7d7b68aa418fae1eab83b4b6f8c8', 'ed7bd2d41cb74e118003ff2f73255b87', null, 'exam');
INSERT INTO `tes_department_resource` VALUES ('ffbab6c889a34b45bc9a9115359d8ed2', '65320a4aa19b411aa484bb5185f71f39', '65320a4aa19b411aa484bb5185f71f39', 'c5128cf898f14c6983cae531094d86eb', null, 'exam');

-- ----------------------------
-- Table structure for `tes_exampaper`
-- ----------------------------
DROP TABLE IF EXISTS `tes_exampaper`;
CREATE TABLE `tes_exampaper` (
  `id` varchar(32) NOT NULL COMMENT '试卷id',
  `name` varchar(125) NOT NULL COMMENT '试卷名称',
  `createType` varchar(32) DEFAULT NULL COMMENT '组卷类型(手动/随机)',
  `createUser` varchar(32) DEFAULT NULL COMMENT '组卷人',
  `classTypeId` varchar(32) DEFAULT NULL COMMENT '试卷所属科目（示例：语文，数学）',
  `createTime` datetime DEFAULT NULL COMMENT '组卷时间',
  `lastmodifyTime` datetime DEFAULT NULL COMMENT '最后修改时间',
  `passLine` varchar(10) DEFAULT NULL COMMENT '及格线',
  `score` varchar(10) DEFAULT NULL COMMENT '总分数',
  `descp` varchar(125) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tes_exampaper
-- ----------------------------
INSERT INTO `tes_exampaper` VALUES ('0167a86ff6014bacbaf86aad22b7c4d3', '55', '', 'teacher', '', '2015-03-22 16:53:33', '2015-03-22 16:53:33', '333', '34', '');
INSERT INTO `tes_exampaper` VALUES ('095be93e781d45b396f513400eaae4b8', '文言文考试卷二', 'manual', 'teacher', '4849beda375e4be98f4f7720adbeb0c5', '2015-03-22 15:22:13', '2015-03-22 15:35:58', '60', '100', '');
INSERT INTO `tes_exampaper` VALUES ('1268ddd9ca1742c4b7d00f018e813ed8', '33', '', 'teacher', '', '2015-03-22 16:50:25', '2015-03-22 16:50:25', '333', '3333', '');
INSERT INTO `tes_exampaper` VALUES ('312355d100054114932791b17ee65e3d', '数学考试', 'random', 't001', '225bf83e448e4fdfb7475c916bd7e1d8', '2015-06-19 15:56:47', '2015-06-19 15:56:47', '60', '100', '');
INSERT INTO `tes_exampaper` VALUES ('328b8661e60b4665bc30750f3c587a79', '物理考试卷', 'manual', 't001', '2105cedbc7514a66810beca0d6e96f64', '2015-04-19 17:01:35', '2015-06-24 22:15:16', '60', '100', '');
INSERT INTO `tes_exampaper` VALUES ('34bf9057c8fb447f93ef8146aaa9f7a1', '额额', '', 'teacher', '4849beda375e4be98f4f7720adbeb0c5', '2015-03-22 16:38:14', '2015-03-22 16:38:14', '43', '56', '');
INSERT INTO `tes_exampaper` VALUES ('35ce9da10b3240ed9071392b6d715a62', '333', '', 'teacher', '4849beda375e4be98f4f7720adbeb0c5', '2015-03-22 16:42:25', '2015-03-22 16:42:25', '3', '44', '');
INSERT INTO `tes_exampaper` VALUES ('3b80cd4bacb7488bb4bf4d98ebf695b0', 'test', 'manual', 't001', '2105cedbc7514a66810beca0d6e96f64', '2015-04-19 16:25:55', '2015-04-19 16:25:55', '60', '100', '');
INSERT INTO `tes_exampaper` VALUES ('4f64d5db2ba54ff2b0e36f0590d7ea34', '语文测试试卷', 'manual', 'lvzhh-t', 'b4d6508b353747b691be903c0a313596', '2015-08-23 14:21:58', '2015-08-23 14:21:58', '60', '100', '');
INSERT INTO `tes_exampaper` VALUES ('6243af87636444029773fa86ccb2cabd', '人人', '', 'teacher', '4849beda375e4be98f4f7720adbeb0c5', '2015-03-22 16:35:12', '2015-03-22 16:35:12', '34', '44', '');
INSERT INTO `tes_exampaper` VALUES ('7cdf7d8ea519492e9d89867432688e88', 'ddd', '', 't001', '2105cedbc7514a66810beca0d6e96f64', '2015-04-19 16:03:34', '2015-04-19 16:03:34', '60', '100', '');
INSERT INTO `tes_exampaper` VALUES ('7fc7de676f83495f822cea97701e847a', 'test', 'manual', 't001', '2105cedbc7514a66810beca0d6e96f64', '2015-04-19 16:26:11', '2015-04-19 16:26:11', '60', '100', '');
INSERT INTO `tes_exampaper` VALUES ('98be3823413740d682d784d12b171d46', '测试', 'manual', 't001', '2105cedbc7514a66810beca0d6e96f64', '2015-04-19 16:20:32', '2015-04-19 16:20:32', '60', '100', '');
INSERT INTO `tes_exampaper` VALUES ('990e7c2c2a5f4952aae70bfe2a587a28', 'test', '', 't001', '2105cedbc7514a66810beca0d6e96f64', '2015-04-19 16:28:09', '2015-04-19 16:28:09', '60', '100', '');
INSERT INTO `tes_exampaper` VALUES ('9cbb011440c7412ead6d07ab13ed50d8', '数学考试', 'random', 't001', '225bf83e448e4fdfb7475c916bd7e1d8', '2015-06-19 15:56:55', '2015-06-19 15:56:55', '60', '100', '');
INSERT INTO `tes_exampaper` VALUES ('9cdcdd84932b466284c3dc750d639f5d', '数学考试', 'random', 't001', '225bf83e448e4fdfb7475c916bd7e1d8', '2015-06-19 15:55:02', '2015-06-19 15:55:02', '60', '100', '');
INSERT INTO `tes_exampaper` VALUES ('a136a7f796624accbc8923e4aa60fd49', '额额', '', 'teacher', '4849beda375e4be98f4f7720adbeb0c5', '2015-03-22 16:37:44', '2015-03-22 16:37:44', '43', '56', '');
INSERT INTO `tes_exampaper` VALUES ('a7f692e2dc1a4f19995fdc32a9a2eddf', 'test', 'manual', 't001', '2105cedbc7514a66810beca0d6e96f64', '2015-04-19 16:26:06', '2015-04-19 16:26:06', '60', '100', '');
INSERT INTO `tes_exampaper` VALUES ('af495e54ad6847f38a60636080f551b7', 'test', 'manual', 't001', '2105cedbc7514a66810beca0d6e96f64', '2015-04-19 16:36:26', '2015-04-19 16:36:26', '60', '100', '');
INSERT INTO `tes_exampaper` VALUES ('b5ad647e0f034467b150652ff9bcfd4a', '数学考试', 'random', 't001', '225bf83e448e4fdfb7475c916bd7e1d8', '2015-06-19 15:55:18', '2015-06-19 15:55:18', '60', '100', '');
INSERT INTO `tes_exampaper` VALUES ('bb5d8791aa4645a89093a7534024f5ec', '数学考试', 'random', 't001', '225bf83e448e4fdfb7475c916bd7e1d8', '2015-06-19 15:55:22', '2015-06-19 15:55:22', '60', '100', '');
INSERT INTO `tes_exampaper` VALUES ('c17c03e6dc55493f8271e756089bcdb2', '王小丫', 'manual', 't001', '2105cedbc7514a66810beca0d6e96f64', '2015-04-19 17:19:06', '2015-04-19 17:19:06', '60', '100', '');
INSERT INTO `tes_exampaper` VALUES ('c354ac9147844c98a062f3936cfa5c27', '数学考试', 'random', 't001', '225bf83e448e4fdfb7475c916bd7e1d8', '2015-06-19 15:55:20', '2015-06-19 15:55:20', '60', '100', '');
INSERT INTO `tes_exampaper` VALUES ('c377233b41c84a4daf9f6b3220a39580', '333', '', 'teacher', '', '2015-03-22 16:56:08', '2015-03-22 16:56:08', '222', '33', '');
INSERT INTO `tes_exampaper` VALUES ('c92911c5f0d04adaaf41ed84de4118c6', '人人', '', 'teacher', '4849beda375e4be98f4f7720adbeb0c5', '2015-03-22 16:34:50', '2015-03-22 16:34:50', '34', '44', '');
INSERT INTO `tes_exampaper` VALUES ('d156e8dae2254ae9ae515c1e3f048569', '数学考试', 'random', 't001', '225bf83e448e4fdfb7475c916bd7e1d8', '2015-06-19 15:56:50', '2015-06-19 15:56:50', '60', '100', '');
INSERT INTO `tes_exampaper` VALUES ('d256db4c145748499613c4554bc4ab1b', '大学生第一次英语考试试卷', 'manual', 't001', 'b4d6508b353747b691be903c0a313596', '2015-06-19 15:51:21', '2015-06-19 15:51:21', '90', '150', '');
INSERT INTO `tes_exampaper` VALUES ('d4f84f1456cf41d18cc3f809ae792635', '吕灼恒', 'manual', 't001', '2105cedbc7514a66810beca0d6e96f64', '2015-04-19 16:47:27', '2015-04-19 16:47:27', '60', '100', '');
INSERT INTO `tes_exampaper` VALUES ('d6598df1a21046f6a18ac5407e0e425f', 'rr', '', 'teacher', '', '2015-03-22 16:05:09', '2015-03-22 16:05:09', '33', '12', '');
INSERT INTO `tes_exampaper` VALUES ('e178f2ed141c473ca17663b55bbbb74a', 'd', '', 'teacher', '', '2015-03-22 16:02:36', '2015-03-22 16:02:36', '46', '44', '');
INSERT INTO `tes_exampaper` VALUES ('e2347052970740a6883c4ca5b4034213', '文言文考试', '', 'teacher', '4849beda375e4be98f4f7720adbeb0c5', '2015-03-22 15:21:26', '2015-03-22 15:21:26', '60', '100', '');
INSERT INTO `tes_exampaper` VALUES ('fbf8974d55164b62bc7b1f6dc706e2b2', '大学物理考试', 'manual', 't001', '2105cedbc7514a66810beca0d6e96f64', '2015-03-29 17:11:45', '2015-03-29 17:28:39', '60', '100', '');
INSERT INTO `tes_exampaper` VALUES ('ff0e64cd69e84551897d497fc7258677', '数学考试', 'random', 't001', '225bf83e448e4fdfb7475c916bd7e1d8', '2015-06-19 15:55:46', '2015-06-19 15:55:46', '60', '100', '');

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
INSERT INTO `tes_exampaper_questiontype` VALUES ('047d81481e6e46e286506f3c3a7d2dd1', '7fc7de676f83495f822cea97701e847a', '20000', '2');
INSERT INTO `tes_exampaper_questiontype` VALUES ('0f9630c367234a0e9f74a354a4289ecf', 'd256db4c145748499613c4554bc4ab1b', '20000', '0');
INSERT INTO `tes_exampaper_questiontype` VALUES ('1450245bcf0b41698fcb16c89f22a5e8', '7cdf7d8ea519492e9d89867432688e88', '20000', '1');
INSERT INTO `tes_exampaper_questiontype` VALUES ('14faa1b05e4840e4a97fb3e49e7efafa', 'd256db4c145748499613c4554bc4ab1b', '20002', '1');
INSERT INTO `tes_exampaper_questiontype` VALUES ('175eeb664e0645f28ecf17a7ebbd21dc', 'bb5d8791aa4645a89093a7534024f5ec', '20000', '0');
INSERT INTO `tes_exampaper_questiontype` VALUES ('1e702c3b3d7b4999918f260c70fbece8', '4f64d5db2ba54ff2b0e36f0590d7ea34', '20000', '0');
INSERT INTO `tes_exampaper_questiontype` VALUES ('24ffbe423f0f49e9943ece849b018ed7', 'a7f692e2dc1a4f19995fdc32a9a2eddf', '20000', '0');
INSERT INTO `tes_exampaper_questiontype` VALUES ('2f55ca610c664c348ae97dacccde42ae', '7cdf7d8ea519492e9d89867432688e88', '20000', '0');
INSERT INTO `tes_exampaper_questiontype` VALUES ('324e2f02623d43e68ec93685e53e76c3', 'fbf8974d55164b62bc7b1f6dc706e2b2', '20000', '0');
INSERT INTO `tes_exampaper_questiontype` VALUES ('3f032f76c6804c23921d3a6de94bc464', 'fbf8974d55164b62bc7b1f6dc706e2b2', '20002', '0');
INSERT INTO `tes_exampaper_questiontype` VALUES ('4dd6f8e0b0144c8dad0ef8ddf810b1e8', '312355d100054114932791b17ee65e3d', '20000', '0');
INSERT INTO `tes_exampaper_questiontype` VALUES ('525259b502474354affc584a28c17e3d', 'd256db4c145748499613c4554bc4ab1b', '20002', '3');
INSERT INTO `tes_exampaper_questiontype` VALUES ('53f5302dcfd447d8bf1acd45ce59dc67', 'e2347052970740a6883c4ca5b4034213', '20000', '0');
INSERT INTO `tes_exampaper_questiontype` VALUES ('6b3cf83e5e5c4a52a5f0187619e07bea', 'a7f692e2dc1a4f19995fdc32a9a2eddf', '20000', '1');
INSERT INTO `tes_exampaper_questiontype` VALUES ('758219b887344b0f881c92987b82e842', '7fc7de676f83495f822cea97701e847a', '20000', '0');
INSERT INTO `tes_exampaper_questiontype` VALUES ('7dc0141ef6bf47aeaec82c1355b4b136', '328b8661e60b4665bc30750f3c587a79', '20000', '0');
INSERT INTO `tes_exampaper_questiontype` VALUES ('822b80e40683418f961506d517a9b8ba', 'b5ad647e0f034467b150652ff9bcfd4a', '20000', '0');
INSERT INTO `tes_exampaper_questiontype` VALUES ('8418219e8e4d4ed2b4882005792c2bcc', 'd4f84f1456cf41d18cc3f809ae792635', '20000', '0');
INSERT INTO `tes_exampaper_questiontype` VALUES ('87b13b5836d7459c8b8118e0f008e984', 'c354ac9147844c98a062f3936cfa5c27', '20000', '0');
INSERT INTO `tes_exampaper_questiontype` VALUES ('8dd11ca4da7047ddba3e30a03b8b851b', '990e7c2c2a5f4952aae70bfe2a587a28', '20000', '0');
INSERT INTO `tes_exampaper_questiontype` VALUES ('9b01c695d99e4404babdfe1c527d637a', 'ff0e64cd69e84551897d497fc7258677', '20000', '0');
INSERT INTO `tes_exampaper_questiontype` VALUES ('9e03006ed8564ecbba7b32e474d7d0e3', '3b80cd4bacb7488bb4bf4d98ebf695b0', '20000', '0');
INSERT INTO `tes_exampaper_questiontype` VALUES ('ac4a34808a1e45aa9ad7e8990ca47a9c', '9cbb011440c7412ead6d07ab13ed50d8', '20000', '0');
INSERT INTO `tes_exampaper_questiontype` VALUES ('b00e7d1a15b84eb58f24f9659af5674b', 'c17c03e6dc55493f8271e756089bcdb2', '20000', '1');
INSERT INTO `tes_exampaper_questiontype` VALUES ('b2af938ad8904262ad345f4b44ff39df', 'c17c03e6dc55493f8271e756089bcdb2', '20000', '0');
INSERT INTO `tes_exampaper_questiontype` VALUES ('b6eb816c7ade4e8f96f383f6c4c72a5e', 'd256db4c145748499613c4554bc4ab1b', '20000', '2');
INSERT INTO `tes_exampaper_questiontype` VALUES ('c16e76428c7142e3a78b2359460d471e', '9cdcdd84932b466284c3dc750d639f5d', '20000', '0');
INSERT INTO `tes_exampaper_questiontype` VALUES ('c1a2ed4f3c9741d3846823f4e116b21a', '98be3823413740d682d784d12b171d46', '20000', '0');
INSERT INTO `tes_exampaper_questiontype` VALUES ('c5902680b568457c83520c42676261e6', 'd156e8dae2254ae9ae515c1e3f048569', '20000', '0');
INSERT INTO `tes_exampaper_questiontype` VALUES ('f0380ab3d92f457abae44b9f2fd56d24', 'af495e54ad6847f38a60636080f551b7', '20000', '0');
INSERT INTO `tes_exampaper_questiontype` VALUES ('f7754762af1a4f7b90e48f6139675555', '095be93e781d45b396f513400eaae4b8', '20000', '0');
INSERT INTO `tes_exampaper_questiontype` VALUES ('fed85e4a5dd54e49a8b5f13b9a32b8f4', '7fc7de676f83495f822cea97701e847a', '20000', '1');

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
  `description` varchar(125) DEFAULT NULL COMMENT '描述信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考试记录表';

-- ----------------------------
-- Records of tes_exam_log
-- ----------------------------
INSERT INTO `tes_exam_log` VALUES ('1244b964165c4c8d9eaf89e95373ac77', '65320a4aa19b411aa484bb5185f71f39', '2015-10-12 17:33:12', '2015-10-12 17:33:36', 'b58a948debf443e599c9fd62033c9f27', null, '0', null, null, null);
INSERT INTO `tes_exam_log` VALUES ('1a4663155072434eb8a7fc46c1ecf884', '05df7d7b68aa418fae1eab83b4b6f8c8', '2015-09-10 22:57:02', '2015-09-10 23:09:58', 'e2af7928faca4a55b2c841fae05bbe18', null, '0', null, null, null);
INSERT INTO `tes_exam_log` VALUES ('1a7e5e68b0ab49a8a073f26db1053b79', '65320a4aa19b411aa484bb5185f71f39', '2015-10-21 16:31:31', '2015-10-21 16:31:39', 'c5128cf898f14c6983cae531094d86eb', null, '0', null, null, null);
INSERT INTO `tes_exam_log` VALUES ('28681e63d12648cd9bd375decf94ef64', '65320a4aa19b411aa484bb5185f71f39', '2015-10-02 11:45:20', '2015-10-02 11:45:28', 'e19d370194fa4d618107187f1ea7d665', null, '0', null, null, null);
INSERT INTO `tes_exam_log` VALUES ('5632d51c32714332b995e65a7a28e239', '65320a4aa19b411aa484bb5185f71f39', '2015-10-12 18:00:18', '2015-10-12 18:00:29', '6b91bfe105e740b0acd6c7554dfeaf55', null, '0', null, null, null);
INSERT INTO `tes_exam_log` VALUES ('5a9f84a8df4a451dbcf96c9c135c5a0f', '65320a4aa19b411aa484bb5185f71f39', '2015-10-12 20:04:04', '2015-10-12 20:05:32', 'e19d370194fa4d618107187f1ea7d665', null, '0', null, null, null);
INSERT INTO `tes_exam_log` VALUES ('5e5c2da9c02a4bb28c43bbffd2d88e49', '65320a4aa19b411aa484bb5185f71f39', '2015-10-21 16:31:46', '2015-10-21 16:31:58', 'b5a2ba11595f4e7e97e5474d9aa30c7c', null, '0', null, null, null);
INSERT INTO `tes_exam_log` VALUES ('703420bea17345b9bfe721c8533218fe', '05df7d7b68aa418fae1eab83b4b6f8c8', '2015-09-10 15:48:38', '2015-09-10 16:18:17', 'ed7bd2d41cb74e118003ff2f73255b87', null, '0', null, null, null);
INSERT INTO `tes_exam_log` VALUES ('81804876ba8f467faff085c1eddb2ed6', '65320a4aa19b411aa484bb5185f71f39', '2015-06-19 16:05:38', '2015-06-19 16:05:48', '5f93f234698249d583e81e87de1e3070', null, '0', null, null, null);
INSERT INTO `tes_exam_log` VALUES ('8d10c148c21a4fa381d3ffb4f4533358', '65320a4aa19b411aa484bb5185f71f39', '2015-10-12 23:06:50', '2015-10-12 23:16:14', 'c5128cf898f14c6983cae531094d86eb', null, '0', null, null, null);
INSERT INTO `tes_exam_log` VALUES ('963982b05c704ebab7cd59a29914d108', '65320a4aa19b411aa484bb5185f71f39', '2015-05-17 15:37:06', '2015-05-17 15:39:49', '29e2703037204283ae96dbad385283b4', 'e937849f97a84faaaef051010c2a9a68', '50', '2015-06-19 16:01:35', null, null);
INSERT INTO `tes_exam_log` VALUES ('9b3486432ae7486f91346d2382eefc9c', '65320a4aa19b411aa484bb5185f71f39', '2015-10-12 20:02:30', '2015-10-12 20:03:33', 'e19d370194fa4d618107187f1ea7d665', null, '0', null, null, null);
INSERT INTO `tes_exam_log` VALUES ('a0f7c225dc3e4cda8fe262067af8bc56', '65320a4aa19b411aa484bb5185f71f39', '2015-03-29 17:30:40', '2015-03-29 17:32:01', 'e9f944fca05b436eb897bc4c208bdfa2', 'e937849f97a84faaaef051010c2a9a68', '60', '2015-03-29 17:34:24', null, null);
INSERT INTO `tes_exam_log` VALUES ('a91c7ef7f41447cdbcd67a7a7f54aed9', '65320a4aa19b411aa484bb5185f71f39', '2015-06-24 23:43:12', '2015-06-24 23:45:14', '01b51f0328f14244933a947588a9854c', null, '0', null, null, null);
INSERT INTO `tes_exam_log` VALUES ('bc2b8e138b7a45509292ae552e78c37c', '65320a4aa19b411aa484bb5185f71f39', '2015-06-24 22:16:27', '2015-06-24 22:16:55', 'b5a2ba11595f4e7e97e5474d9aa30c7c', 'e937849f97a84faaaef051010c2a9a68', '0', '2015-06-24 22:18:01', null, null);
INSERT INTO `tes_exam_log` VALUES ('c7629b61d41f4d62ae0eafbc3029fad4', '65320a4aa19b411aa484bb5185f71f39', '2015-10-12 20:07:12', '2015-10-12 20:07:48', 'e19d370194fa4d618107187f1ea7d665', null, '0', null, null, null);
INSERT INTO `tes_exam_log` VALUES ('cb7efbc7dd994781ac3eb0b22667fa7c', '65320a4aa19b411aa484bb5185f71f39', '2015-03-29 17:17:17', '2015-03-29 17:17:39', 'dd0a72e4006d415d858b11fc62e8d505', 'e937849f97a84faaaef051010c2a9a68', '1', '2015-03-29 17:22:48', null, null);
INSERT INTO `tes_exam_log` VALUES ('df83408289334d1ba4ae181922dbe790', '65320a4aa19b411aa484bb5185f71f39', '2015-04-19 16:21:46', '2015-04-19 16:24:28', '8c3526d6e80840b792747b7b37d1df85', 'e937849f97a84faaaef051010c2a9a68', '0', '2015-06-19 16:01:58', null, null);
INSERT INTO `tes_exam_log` VALUES ('ed9f386c80924564808cb0457a5e7806', '65320a4aa19b411aa484bb5185f71f39', '2015-10-14 09:55:25', '2015-10-14 09:55:35', 'c5128cf898f14c6983cae531094d86eb', null, '0', null, null, null);
INSERT INTO `tes_exam_log` VALUES ('f4f7c04528204d0ca908ad4024853b2a', '34ea3ea664f24339a0823a12c8e6b488', '2015-03-22 15:36:48', '2015-03-22 15:39:29', '43ed4bce2208485e8cdb50c3842dda20', '3d2abb1f3868448982bb7da35096b045', '6', '2015-03-22 15:44:19', null, null);
INSERT INTO `tes_exam_log` VALUES ('f7c72e10c045449d911636760d86cf48', '65320a4aa19b411aa484bb5185f71f39', '2015-06-24 22:14:13', '2015-06-24 22:14:23', 'f43b50cc2d35400887fe51a8fed2d507', null, '0', null, null, null);

-- ----------------------------
-- Table structure for `tes_exam_room`
-- ----------------------------
DROP TABLE IF EXISTS `tes_exam_room`;
CREATE TABLE `tes_exam_room` (
  `id` varchar(32) NOT NULL,
  `name` varchar(125) DEFAULT NULL COMMENT '考场名称',
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
  `description` varchar(125) DEFAULT NULL COMMENT '描述信息',
  `coverFile` varchar(125) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考场表';

-- ----------------------------
-- Records of tes_exam_room
-- ----------------------------
INSERT INTO `tes_exam_room` VALUES ('01b51f0328f14244933a947588a9854c', '英语考试', '2', '2015-06-24 00:00:00', '2015-06-24 00:00:00', '2015-06-24 23:40:41', 'e937849f97a84faaaef051010c2a9a68', '2015-06-24 23:40:41', 'e937849f97a84faaaef051010c2a9a68', null, '1', '328b8661e60b4665bc30750f3c587a79', null, 'item', '', '/resources/img/shijuan.jpg');
INSERT INTO `tes_exam_room` VALUES ('29e2703037204283ae96dbad385283b4', '大学物理期末测试', '100', '2015-06-24 00:00:00', '2015-06-24 00:00:00', '2015-05-17 15:34:55', 'e937849f97a84faaaef051010c2a9a68', '2015-06-24 23:38:37', 'e937849f97a84faaaef051010c2a9a68', null, '1', '328b8661e60b4665bc30750f3c587a79', null, 'full', '与国内同类教材相比，本书在内容、体系上均有较大创新。本书内容包括：绪论，运动学，质点动力学，引力，质点系动力学，刚体动力学，振动，波，相对论力学，温度，热力学第一定律，热力学第二定律，理想气体的微观模型，相变，静电场，导体和电介质，磁场，电磁感应，物质的磁性，麦克斯韦方程组，电磁波，能量量子化，物质的波动性质，薛定谔方程，原子，分子和团簇，费米统计和玻色统计，凝聚态物质，核物理，轻子和夸克，天体物理，物理宇宙学。本书可作为理科各专业大学物理课程的教材，也可供其他专业和社会读者阅读。', '/resources/img/shijuan.jpg');
INSERT INTO `tes_exam_room` VALUES ('43ed4bce2208485e8cdb50c3842dda20', '文言文考试一', '100', '2015-03-24 00:00:00', '2015-03-24 00:00:00', '2015-03-22 15:29:55', '3d2abb1f3868448982bb7da35096b045', '2015-06-24 22:11:32', 'e937849f97a84faaaef051010c2a9a68', null, '1', '095be93e781d45b396f513400eaae4b8', null, 'full', '', '/resources/img/shijuan.jpg');
INSERT INTO `tes_exam_room` VALUES ('5f93f234698249d583e81e87de1e3070', '英语考试', '100', '2015-06-19 00:00:00', '2015-06-19 00:00:00', '2015-06-19 15:59:04', 'e937849f97a84faaaef051010c2a9a68', '2015-06-19 15:59:04', 'e937849f97a84faaaef051010c2a9a68', '2015-06-20 00:00:00', '1', '312355d100054114932791b17ee65e3d', null, 'item', '', '/upload/examroomIcon/1.jpg');
INSERT INTO `tes_exam_room` VALUES ('6b91bfe105e740b0acd6c7554dfeaf55', '测试一下', '100', null, null, '2015-08-23 23:52:55', '321b8bacaaca4dcc9459953554d0555a', '2015-08-23 23:52:55', '321b8bacaaca4dcc9459953554d0555a', null, '1', '312355d100054114932791b17ee65e3d', null, 'item', '', '/resources/img/shijuan.jpg');
INSERT INTO `tes_exam_room` VALUES ('8c3526d6e80840b792747b7b37d1df85', '测试', '60', null, null, '2015-04-19 16:21:13', 'e937849f97a84faaaef051010c2a9a68', '2015-04-19 16:21:13', 'e937849f97a84faaaef051010c2a9a68', null, '1', '98be3823413740d682d784d12b171d46', null, 'item', '', '/resources/img/shijuan.jpg');
INSERT INTO `tes_exam_room` VALUES ('b58a948debf443e599c9fd62033c9f27', '测试一下', '100', null, null, '2015-08-23 23:52:55', '321b8bacaaca4dcc9459953554d0555a', '2015-08-23 23:52:55', '321b8bacaaca4dcc9459953554d0555a', null, '1', '312355d100054114932791b17ee65e3d', null, 'item', '', '/resources/img/shijuan.jpg');
INSERT INTO `tes_exam_room` VALUES ('b5a2ba11595f4e7e97e5474d9aa30c7c', '物理考试', '10', '2015-06-24 00:00:00', '2015-06-24 00:00:00', '2015-06-24 22:15:50', 'e937849f97a84faaaef051010c2a9a68', '2015-06-24 23:39:36', 'e937849f97a84faaaef051010c2a9a68', null, '1', '328b8661e60b4665bc30750f3c587a79', null, 'full', '', '/resources/img/shijuan.jpg');
INSERT INTO `tes_exam_room` VALUES ('c5128cf898f14c6983cae531094d86eb', '大学语文', '222', null, null, '2015-09-11 06:06:47', '58f6fd5f3c064d1197d0ebb1e21f528f', '2015-09-11 06:06:47', '58f6fd5f3c064d1197d0ebb1e21f528f', null, '1', '4f64d5db2ba54ff2b0e36f0590d7ea34', null, 'item', '', '/resources/img/shijuan.jpg');
INSERT INTO `tes_exam_room` VALUES ('dd0a72e4006d415d858b11fc62e8d505', '大学物理考试', '100', null, null, '2015-03-29 17:15:31', 'e937849f97a84faaaef051010c2a9a68', '2015-05-17 15:15:50', 'e937849f97a84faaaef051010c2a9a68', null, '1', 'fbf8974d55164b62bc7b1f6dc706e2b2', null, 'full', '大大的风', '/resources/img/shijuan.jpg');
INSERT INTO `tes_exam_room` VALUES ('e19d370194fa4d618107187f1ea7d665', '大学语文', '222', null, null, '2015-09-11 06:06:47', '58f6fd5f3c064d1197d0ebb1e21f528f', '2015-09-11 06:06:47', '58f6fd5f3c064d1197d0ebb1e21f528f', null, '1', '4f64d5db2ba54ff2b0e36f0590d7ea34', null, 'item', '', '/resources/img/shijuan.jpg');
INSERT INTO `tes_exam_room` VALUES ('e2af7928faca4a55b2c841fae05bbe18', '测试一下', '100', null, null, '2015-08-23 23:54:13', '321b8bacaaca4dcc9459953554d0555a', '2015-08-23 23:54:13', '321b8bacaaca4dcc9459953554d0555a', null, '1', '328b8661e60b4665bc30750f3c587a79', null, 'item', '', '/upload/examroomIcon/Chrysanthemum.jpg');
INSERT INTO `tes_exam_room` VALUES ('e9f944fca05b436eb897bc4c208bdfa2', '大学物理期中考试', '100', null, null, '2015-03-29 17:30:12', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:30:12', 'e937849f97a84faaaef051010c2a9a68', null, '1', 'fbf8974d55164b62bc7b1f6dc706e2b2', null, 'item', '', '/resources/img/shijuan.jpg');
INSERT INTO `tes_exam_room` VALUES ('ed7bd2d41cb74e118003ff2f73255b87', '测试一下', '100', null, null, '2015-08-23 23:54:13', '321b8bacaaca4dcc9459953554d0555a', '2015-08-23 23:54:13', '321b8bacaaca4dcc9459953554d0555a', null, '1', '328b8661e60b4665bc30750f3c587a79', null, 'item', '', '/upload/examroomIcon/Chrysanthemum.jpg');
INSERT INTO `tes_exam_room` VALUES ('f43b50cc2d35400887fe51a8fed2d507', 'test', '10', '2015-06-24 00:00:00', '2015-06-24 00:00:00', '2015-06-24 22:13:55', 'e937849f97a84faaaef051010c2a9a68', '2015-06-24 22:13:55', 'e937849f97a84faaaef051010c2a9a68', null, '1', '312355d100054114932791b17ee65e3d', null, 'item', '', '/resources/img/shijuan.jpg');

-- ----------------------------
-- Table structure for `tes_exam_score`
-- ----------------------------
DROP TABLE IF EXISTS `tes_exam_score`;
CREATE TABLE `tes_exam_score` (
  `id` varchar(32) NOT NULL,
  `examLogId` varchar(32) NOT NULL COMMENT '考试记录ID',
  `questionId` varchar(32) NOT NULL COMMENT '试题ID',
  `answer` varchar(125) DEFAULT NULL COMMENT '试题答案',
  `fillDate` datetime DEFAULT NULL COMMENT '填写答案的时间',
  `judgeDate` datetime DEFAULT NULL COMMENT '阅卷时间',
  `score` int(11) DEFAULT NULL COMMENT '分数',
  `studentId` varchar(32) DEFAULT NULL COMMENT '学生编号',
  `teacherId` varchar(32) DEFAULT NULL COMMENT '老师ID',
  `description` varchar(125) DEFAULT NULL COMMENT '描述信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考试成绩';

-- ----------------------------
-- Records of tes_exam_score
-- ----------------------------
INSERT INTO `tes_exam_score` VALUES ('03b255d8187a4a9bbe5d7e4ed3854b19', '703420bea17345b9bfe721c8533218fe', '04a7ef4aa04044f4b1a7bdece7d5ebaa', '', null, '2015-09-10 20:58:07', '0', null, '58f6fd5f3c064d1197d0ebb1e21f528f', null);
INSERT INTO `tes_exam_score` VALUES ('03b2d1b3c7894558b9ac1bfff25920e6', 'a0f7c225dc3e4cda8fe262067af8bc56', '015f45ad973d485c949e814dcedb9b75', 'D', null, '2015-03-29 17:33:38', '0', null, 'e937849f97a84faaaef051010c2a9a68', null);
INSERT INTO `tes_exam_score` VALUES ('03fc9eed84774309a9dab899407424c9', 'df83408289334d1ba4ae181922dbe790', '04a7ef4aa04044f4b1a7bdece7d5ebaa', '', null, '2015-06-19 16:01:58', '0', null, 'e937849f97a84faaaef051010c2a9a68', null);
INSERT INTO `tes_exam_score` VALUES ('053724b116c4453393a9810c82d08461', '5e5c2da9c02a4bb28c43bbffd2d88e49', '04a7ef4aa04044f4b1a7bdece7d5ebaa', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('09c8f930adca4ab3b63ca9e87b3d8e2c', 'f4f7c04528204d0ca908ad4024853b2a', '192bf5297d3e4c8790ad8c2e8fd7cd81', 'D', null, '2015-03-22 15:44:17', '2', null, '3d2abb1f3868448982bb7da35096b045', null);
INSERT INTO `tes_exam_score` VALUES ('0ad9c5ca050f48d98559ae3061bb3cf0', 'a0f7c225dc3e4cda8fe262067af8bc56', '5da1810b95534a909b9fc78a35a4cd1e', '1', null, '2015-03-29 17:33:38', '10', null, 'e937849f97a84faaaef051010c2a9a68', null);
INSERT INTO `tes_exam_score` VALUES ('0bf1b9db158643a1969830cb79b6f854', '963982b05c704ebab7cd59a29914d108', '08b3b1ecda9c470ca635d482d5936661', 'A', null, '2015-06-19 16:01:35', '50', null, 'e937849f97a84faaaef051010c2a9a68', null);
INSERT INTO `tes_exam_score` VALUES ('0d45b20c569b45b1b8e6d36f91279f25', 'bc2b8e138b7a45509292ae552e78c37c', '14a03ed15d314e3891dd6b12254b5c1f', 'D', null, '2015-06-24 22:17:57', '0', null, 'e937849f97a84faaaef051010c2a9a68', null);
INSERT INTO `tes_exam_score` VALUES ('0e18f77ece6149a3aba482eaa73dcbf4', '28681e63d12648cd9bd375decf94ef64', '45a9fc831f9845438d3f6268d7f36a85', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('11cefc4bf602408a98c7ec85daf43aa6', 'bc2b8e138b7a45509292ae552e78c37c', '041c19c76b94485e91b9044ea2a5c259', 'D', null, '2015-06-24 22:17:57', '0', null, 'e937849f97a84faaaef051010c2a9a68', null);
INSERT INTO `tes_exam_score` VALUES ('15a2bdffefbe4bc789481f224f7c6d3a', 'a0f7c225dc3e4cda8fe262067af8bc56', '309f7eb6005944b48c20bdb9777d3c93', '1', null, '2015-03-29 17:33:38', '0', null, 'e937849f97a84faaaef051010c2a9a68', null);
INSERT INTO `tes_exam_score` VALUES ('16584825603748328e9541e1da3fdf09', 'bc2b8e138b7a45509292ae552e78c37c', '04a7ef4aa04044f4b1a7bdece7d5ebaa', 'C', null, '2015-06-24 22:17:57', '0', null, 'e937849f97a84faaaef051010c2a9a68', null);
INSERT INTO `tes_exam_score` VALUES ('2044916a8cd94ddd8e76cbb08ff7dd98', '5a9f84a8df4a451dbcf96c9c135c5a0f', '45a9fc831f9845438d3f6268d7f36a85', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('268653ea425246879b6c7b7839e34fdf', 'a0f7c225dc3e4cda8fe262067af8bc56', '55f9e8c2541945e18d8abf2a4e10ec53', 'D', null, '2015-03-29 17:33:38', '0', null, 'e937849f97a84faaaef051010c2a9a68', null);
INSERT INTO `tes_exam_score` VALUES ('29c4c1d63b6c42d48480b25b97e26d38', '9b3486432ae7486f91346d2382eefc9c', '45a9fc831f9845438d3f6268d7f36a85', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('2db070dd13bc471daab6ca4c1d2a3ca8', 'a0f7c225dc3e4cda8fe262067af8bc56', '237d5f5acc044806979e86c0d43935ea', '1', null, '2015-03-29 17:33:38', '10', null, 'e937849f97a84faaaef051010c2a9a68', null);
INSERT INTO `tes_exam_score` VALUES ('3b4b5fe681824a028d7f883a10ecc80f', 'a91c7ef7f41447cdbcd67a7a7f54aed9', '1612ebd0c6504096b0b5e9b79456159c', 'A', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('3b6a7716e5b74081897251c368b3600a', 'ed9f386c80924564808cb0457a5e7806', '45a9fc831f9845438d3f6268d7f36a85', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('3c7dbc6629074841ab77a84ae50c60fc', 'df83408289334d1ba4ae181922dbe790', '14a03ed15d314e3891dd6b12254b5c1f', '', null, '2015-06-19 16:01:58', '0', null, 'e937849f97a84faaaef051010c2a9a68', null);
INSERT INTO `tes_exam_score` VALUES ('3ca5413cbd21477aa0746801d16e2c05', '1a4663155072434eb8a7fc46c1ecf884', '14a03ed15d314e3891dd6b12254b5c1f', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('455645f051d14e448638d37e2beba558', 'a91c7ef7f41447cdbcd67a7a7f54aed9', '04a7ef4aa04044f4b1a7bdece7d5ebaa', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('4677363f692c4b3481e5cbc32640e7c4', '703420bea17345b9bfe721c8533218fe', '08b3b1ecda9c470ca635d482d5936661', '', null, '2015-09-10 20:58:07', '0', null, '58f6fd5f3c064d1197d0ebb1e21f528f', null);
INSERT INTO `tes_exam_score` VALUES ('4ee5c9f0e0b348759f3c9cd7bf340704', 'df83408289334d1ba4ae181922dbe790', '08b3b1ecda9c470ca635d482d5936661', '', null, '2015-06-19 16:01:58', '0', null, 'e937849f97a84faaaef051010c2a9a68', null);
INSERT INTO `tes_exam_score` VALUES ('53b8ae75e5274ed68645e4830faab26a', 'c7629b61d41f4d62ae0eafbc3029fad4', '45a9fc831f9845438d3f6268d7f36a85', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('57412b6872f14493a135eade92b79551', 'a0f7c225dc3e4cda8fe262067af8bc56', '519e599c33ef408dbd49dc30c7a1c6e9', '1', null, '2015-03-29 17:33:38', '0', null, 'e937849f97a84faaaef051010c2a9a68', null);
INSERT INTO `tes_exam_score` VALUES ('5963f1a894994f01a8644e8784e5a687', 'bc2b8e138b7a45509292ae552e78c37c', '08b3b1ecda9c470ca635d482d5936661', 'C', null, '2015-06-24 22:17:57', '0', null, 'e937849f97a84faaaef051010c2a9a68', null);
INSERT INTO `tes_exam_score` VALUES ('5cc072ab048b4288b53a15fa914dfe19', 'a0f7c225dc3e4cda8fe262067af8bc56', '1612ebd0c6504096b0b5e9b79456159c', 'D', null, '2015-03-29 17:33:38', '0', null, 'e937849f97a84faaaef051010c2a9a68', null);
INSERT INTO `tes_exam_score` VALUES ('670da1da6bfa46b289754cd29d0cbaee', '5e5c2da9c02a4bb28c43bbffd2d88e49', '1612ebd0c6504096b0b5e9b79456159c', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('6e1deab78a30400d8520fe659a28a3e4', '5e5c2da9c02a4bb28c43bbffd2d88e49', '041c19c76b94485e91b9044ea2a5c259', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('6fd21f9c84bf446792c7d06c003ffa5e', 'a0f7c225dc3e4cda8fe262067af8bc56', '3c9741abb94543f9b8e586c8fe74a2cf', 'D', null, '2015-03-29 17:33:38', '10', null, 'e937849f97a84faaaef051010c2a9a68', null);
INSERT INTO `tes_exam_score` VALUES ('758dd2f380da48b8a4318b2005b2acb2', 'bc2b8e138b7a45509292ae552e78c37c', '1612ebd0c6504096b0b5e9b79456159c', 'B', null, '2015-06-24 22:17:57', '0', null, 'e937849f97a84faaaef051010c2a9a68', null);
INSERT INTO `tes_exam_score` VALUES ('7e2f4f1e9d464f289d3cba8df54ac058', 'bc2b8e138b7a45509292ae552e78c37c', '08b3b1ecda9c470ca635d482d5936661', 'C', null, '2015-06-24 22:17:57', '0', null, 'e937849f97a84faaaef051010c2a9a68', null);
INSERT INTO `tes_exam_score` VALUES ('8228d453aa5a4d40a95d2b15a71c82a0', 'a0f7c225dc3e4cda8fe262067af8bc56', '436237df5e4f40de8df50ae93710b9f5', 'D', null, '2015-03-29 17:33:38', '0', null, 'e937849f97a84faaaef051010c2a9a68', null);
INSERT INTO `tes_exam_score` VALUES ('82b0c72af7da4d62bf45e1cb7d06fcf8', 'f4f7c04528204d0ca908ad4024853b2a', '17edd7d9e58e43b68861956906f02885', 'D', null, '2015-03-22 15:44:17', '0', null, '3d2abb1f3868448982bb7da35096b045', null);
INSERT INTO `tes_exam_score` VALUES ('9165e06b9bcb45e99d622a0efc008b01', '963982b05c704ebab7cd59a29914d108', '04a7ef4aa04044f4b1a7bdece7d5ebaa', 'C', null, '2015-06-19 16:01:35', '0', null, 'e937849f97a84faaaef051010c2a9a68', null);
INSERT INTO `tes_exam_score` VALUES ('92238eb17117435ebc6b4833027779b4', 'a0f7c225dc3e4cda8fe262067af8bc56', '48260c8a810b44a09d12c133579d94e0', 'A', null, '2015-03-29 17:33:38', '0', null, 'e937849f97a84faaaef051010c2a9a68', null);
INSERT INTO `tes_exam_score` VALUES ('9baefbd2dffc4528b1146d254e13a660', '703420bea17345b9bfe721c8533218fe', '14a03ed15d314e3891dd6b12254b5c1f', '', null, '2015-09-10 20:58:07', '0', null, '58f6fd5f3c064d1197d0ebb1e21f528f', null);
INSERT INTO `tes_exam_score` VALUES ('a34f6e3a57e746dcbeaa92cffaecf69d', 'f4f7c04528204d0ca908ad4024853b2a', '373e16e8016d4125be2006f3c1e01d03', 'D', null, '2015-03-22 15:44:17', '0', null, '3d2abb1f3868448982bb7da35096b045', null);
INSERT INTO `tes_exam_score` VALUES ('a764adff344e4dfe999b1a90096e2523', 'a0f7c225dc3e4cda8fe262067af8bc56', '4e181f6aa88a4ba6829929661a366737', 'D', null, '2015-03-29 17:33:38', '10', null, 'e937849f97a84faaaef051010c2a9a68', null);
INSERT INTO `tes_exam_score` VALUES ('a8239a1a944e405ca71c2b0a38cae9b4', '703420bea17345b9bfe721c8533218fe', '14a03ed15d314e3891dd6b12254b5c1f', '', null, '2015-09-10 20:58:07', '0', null, '58f6fd5f3c064d1197d0ebb1e21f528f', null);
INSERT INTO `tes_exam_score` VALUES ('ad475cab191046fbb284c1d6340e57b8', 'a91c7ef7f41447cdbcd67a7a7f54aed9', '08b3b1ecda9c470ca635d482d5936661', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('ad95e2a313a744c596894f5297d12c94', 'bc2b8e138b7a45509292ae552e78c37c', '1612ebd0c6504096b0b5e9b79456159c', 'B', null, '2015-06-24 22:17:57', '0', null, 'e937849f97a84faaaef051010c2a9a68', null);
INSERT INTO `tes_exam_score` VALUES ('add6385674674f238bb084022390646b', 'a91c7ef7f41447cdbcd67a7a7f54aed9', '041c19c76b94485e91b9044ea2a5c259', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('b0be765fc55c457a806922466cfeb06c', 'df83408289334d1ba4ae181922dbe790', '015f45ad973d485c949e814dcedb9b75', '', null, '2015-06-19 16:01:58', '0', null, 'e937849f97a84faaaef051010c2a9a68', null);
INSERT INTO `tes_exam_score` VALUES ('b2a668f013bf4cd6b69c4095c670aedc', '703420bea17345b9bfe721c8533218fe', '08b3b1ecda9c470ca635d482d5936661', '', null, '2015-09-10 20:58:07', '0', null, '58f6fd5f3c064d1197d0ebb1e21f528f', null);
INSERT INTO `tes_exam_score` VALUES ('b3db952d2f6046d6b2c1b1a937b3fdf7', 'f4f7c04528204d0ca908ad4024853b2a', '28d70063023a4ed1a7748e8d00ecfb91', 'D', null, '2015-03-22 15:44:17', '0', null, '3d2abb1f3868448982bb7da35096b045', null);
INSERT INTO `tes_exam_score` VALUES ('b54c917a1c86492ea80db1823bcc0337', 'bc2b8e138b7a45509292ae552e78c37c', '14a03ed15d314e3891dd6b12254b5c1f', 'D', null, '2015-06-24 22:17:57', '0', null, 'e937849f97a84faaaef051010c2a9a68', null);
INSERT INTO `tes_exam_score` VALUES ('b83de7c1b01741e9826adc2150a14ca8', 'a91c7ef7f41447cdbcd67a7a7f54aed9', '08b3b1ecda9c470ca635d482d5936661', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('b9d56bbf5008488eb2043625feabdd22', '703420bea17345b9bfe721c8533218fe', '041c19c76b94485e91b9044ea2a5c259', '', null, '2015-09-10 20:58:07', '0', null, '58f6fd5f3c064d1197d0ebb1e21f528f', null);
INSERT INTO `tes_exam_score` VALUES ('be6661e611dd45f2a29e0632950f42f0', '5e5c2da9c02a4bb28c43bbffd2d88e49', '08b3b1ecda9c470ca635d482d5936661', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('c056b377ea5146b097da74b51e92711e', 'a0f7c225dc3e4cda8fe262067af8bc56', '04a7ef4aa04044f4b1a7bdece7d5ebaa', 'D', null, '2015-03-29 17:33:38', '10', null, 'e937849f97a84faaaef051010c2a9a68', null);
INSERT INTO `tes_exam_score` VALUES ('c13c8d283d1746acaf88636b0a62c3bf', 'f4f7c04528204d0ca908ad4024853b2a', '13631476234e409b888491167b35ba4e', 'A', null, '2015-03-22 15:44:17', '2', null, '3d2abb1f3868448982bb7da35096b045', null);
INSERT INTO `tes_exam_score` VALUES ('c5488aba7297496792850d0e3c54d422', '5e5c2da9c02a4bb28c43bbffd2d88e49', '14a03ed15d314e3891dd6b12254b5c1f', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('c5f72178316942489201015a3d7e3a41', '1a4663155072434eb8a7fc46c1ecf884', '14a03ed15d314e3891dd6b12254b5c1f', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('cfc11f95f83049c1b83290b903dcb90b', '5e5c2da9c02a4bb28c43bbffd2d88e49', '1612ebd0c6504096b0b5e9b79456159c', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('d01e7f9fb35c4715895a38903320d0ee', '1a7e5e68b0ab49a8a073f26db1053b79', '45a9fc831f9845438d3f6268d7f36a85', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('d79404726c164e8db66669734020dab1', 'df83408289334d1ba4ae181922dbe790', '1612ebd0c6504096b0b5e9b79456159c', '', null, '2015-06-19 16:01:58', '0', null, 'e937849f97a84faaaef051010c2a9a68', null);
INSERT INTO `tes_exam_score` VALUES ('d7b7a5844edd4f2d821a7bc3a06741bd', '1a4663155072434eb8a7fc46c1ecf884', '08b3b1ecda9c470ca635d482d5936661', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('d7e46ecc180645da8e72c7cacda0e2c0', 'a0f7c225dc3e4cda8fe262067af8bc56', '36e65e197899453c82f3948f08186c9a', '1', null, '2015-03-29 17:33:38', '10', null, 'e937849f97a84faaaef051010c2a9a68', null);
INSERT INTO `tes_exam_score` VALUES ('d96928b92f4c41f3a7ddfd3b11434565', 'a91c7ef7f41447cdbcd67a7a7f54aed9', '1612ebd0c6504096b0b5e9b79456159c', 'A', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('df1567fc0b2c4057b596790819105b9b', '1a4663155072434eb8a7fc46c1ecf884', '1612ebd0c6504096b0b5e9b79456159c', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('e46cb901a07c49d98f257c5be90cbf2f', '5e5c2da9c02a4bb28c43bbffd2d88e49', '14a03ed15d314e3891dd6b12254b5c1f', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('e6e7274a35df4eaa8fa5affe632362fb', '703420bea17345b9bfe721c8533218fe', '1612ebd0c6504096b0b5e9b79456159c', '', null, '2015-09-10 20:58:07', '0', null, '58f6fd5f3c064d1197d0ebb1e21f528f', null);
INSERT INTO `tes_exam_score` VALUES ('e9a9ce5eb3384d609a64265bbb00b614', 'cb7efbc7dd994781ac3eb0b22667fa7c', '86c6882b2ae24fa6b53384a5004db0b0', 'A', null, '2015-03-29 17:22:47', '1', null, 'e937849f97a84faaaef051010c2a9a68', null);
INSERT INTO `tes_exam_score` VALUES ('eb5184c442fa40148ac32f5ca7155226', '1a4663155072434eb8a7fc46c1ecf884', '08b3b1ecda9c470ca635d482d5936661', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('ec423a456c054a278c1de8ac91b81d37', '1a4663155072434eb8a7fc46c1ecf884', '041c19c76b94485e91b9044ea2a5c259', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('ec4c679fb93e45e2b9fc09315991cc96', '1a4663155072434eb8a7fc46c1ecf884', '04a7ef4aa04044f4b1a7bdece7d5ebaa', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('eef09631b8c64e6c9646f797bd9235f8', 'f4f7c04528204d0ca908ad4024853b2a', '27747c0346974b5f9acfaedce3bdc25d', 'D', null, '2015-03-22 15:44:17', '0', null, '3d2abb1f3868448982bb7da35096b045', null);
INSERT INTO `tes_exam_score` VALUES ('f4ed4d11146242488df683d4f8bc5a0a', 'f4f7c04528204d0ca908ad4024853b2a', '365a2ba5ea21420886bc8f7a7934f1aa', 'D', null, '2015-03-22 15:44:17', '2', null, '3d2abb1f3868448982bb7da35096b045', null);
INSERT INTO `tes_exam_score` VALUES ('f6fd9a68dbac40899cd730e195356d70', '8d10c148c21a4fa381d3ffb4f4533358', '45a9fc831f9845438d3f6268d7f36a85', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('f73e868300f44f36ad20c1dba2049af4', '703420bea17345b9bfe721c8533218fe', '1612ebd0c6504096b0b5e9b79456159c', '', null, '2015-09-10 20:58:07', '0', null, '58f6fd5f3c064d1197d0ebb1e21f528f', null);
INSERT INTO `tes_exam_score` VALUES ('f79cbe9f94d94b7ba33a5851e80fb1ba', 'a91c7ef7f41447cdbcd67a7a7f54aed9', '14a03ed15d314e3891dd6b12254b5c1f', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('f82fa0079ac7443e9aecda22fa909cea', 'a91c7ef7f41447cdbcd67a7a7f54aed9', '14a03ed15d314e3891dd6b12254b5c1f', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('fd3652c55f6d4abda4292d3f6f3bd027', '5e5c2da9c02a4bb28c43bbffd2d88e49', '08b3b1ecda9c470ca635d482d5936661', '', null, null, '0', null, null, null);
INSERT INTO `tes_exam_score` VALUES ('ffe287ca8b6642c2ba23db0007c8ab05', '1a4663155072434eb8a7fc46c1ecf884', '1612ebd0c6504096b0b5e9b79456159c', '', null, null, '0', null, null, null);

-- ----------------------------
-- Table structure for `tes_file`
-- ----------------------------
DROP TABLE IF EXISTS `tes_file`;
CREATE TABLE `tes_file` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(125) DEFAULT NULL,
  `url` varchar(125) DEFAULT NULL,
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
  `name` varchar(125) DEFAULT NULL,
  `parentId` varchar(32) DEFAULT NULL,
  `classTypeId` varchar(32) DEFAULT NULL,
  `type` varchar(32) DEFAULT NULL,
  `descp` varchar(125) DEFAULT NULL COMMENT '描述',
  `createTime` datetime DEFAULT NULL,
  `level` varchar(125) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tes_knowledge
-- ----------------------------
INSERT INTO `tes_knowledge` VALUES ('02e2bf9e3b404fe187562c9d35b9bc54', '第一章 概述', '4849beda375e4be98f4f7720adbeb0c5', '3beadd5ff355494bb2f73557c670a79e', '1', '', '2015-03-22 15:06:18', '1');
INSERT INTO `tes_knowledge` VALUES ('0453ff3666344ce38a18a6b7b21c86b8', '第二章 现代散文', 'f8274e1f07094a9189439d5854956f02', '693729d129434fac9d60f0240666a3c3', '1', '', '2015-08-23 13:08:38', '1');
INSERT INTO `tes_knowledge` VALUES ('197937d8a2eb432aaef7146db401c13e', '生物', '0', '13442b9d52a94e79a4e0ee6dd70f09c4', '1', '', '2015-06-19 15:35:55', '0');
INSERT INTO `tes_knowledge` VALUES ('2105cedbc7514a66810beca0d6e96f64', '大学物理', '0', '8ae800ac1b2b474f8120267a5467db54', '1', '', '2015-03-29 16:09:16', '0');
INSERT INTO `tes_knowledge` VALUES ('225bf83e448e4fdfb7475c916bd7e1d8', '高等数学', '0', 'a486fc70bdd6424c9aabdb2e52336210', '1', '高等数学', '2015-06-19 15:27:05', '0');
INSERT INTO `tes_knowledge` VALUES ('240c44d79076405596491ecbfc445238', '概述', '2105cedbc7514a66810beca0d6e96f64', '8ae800ac1b2b474f8120267a5467db54', '1', '', '2015-03-29 16:09:46', '1');
INSERT INTO `tes_knowledge` VALUES ('8f68b57cff74497685a1d5cf7715abcf', '第一章  直线运动', '2105cedbc7514a66810beca0d6e96f64', '8ae800ac1b2b474f8120267a5467db54', '1', '', '2015-03-29 16:10:12', '1');
INSERT INTO `tes_knowledge` VALUES ('b09c0f1c3c2f4d13b402015cc240c165', '第一章 近代诗歌', 'f8274e1f07094a9189439d5854956f02', '693729d129434fac9d60f0240666a3c3', '1', '', '2015-08-23 13:07:47', '1');
INSERT INTO `tes_knowledge` VALUES ('b4d6508b353747b691be903c0a313596', '大学英语', '0', '693729d129434fac9d60f0240666a3c3', '1', '', '2015-06-19 15:31:57', '0');
INSERT INTO `tes_knowledge` VALUES ('b65c9bb62e9846c7a0e7811c640e4132', '概述', 'f8274e1f07094a9189439d5854956f02', '693729d129434fac9d60f0240666a3c3', '1', '', '2015-08-23 13:06:46', '1');
INSERT INTO `tes_knowledge` VALUES ('d59a29ca56a04c85b29d52d2b0a9a2af', '第二章  抛物线运动', '2105cedbc7514a66810beca0d6e96f64', '8ae800ac1b2b474f8120267a5467db54', '1', '', '2015-03-29 16:11:53', '1');
INSERT INTO `tes_knowledge` VALUES ('f8274e1f07094a9189439d5854956f02', '大学语文', '0', '693729d129434fac9d60f0240666a3c3', '1', '', '2015-08-23 13:05:33', '0');

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
INSERT INTO `tes_knowledge_courseware_relation` VALUES ('10e7ac0bc5da44359b64f257ea56c331', 'd8c7ee51e1e14ea3880b169618209acf', '8f68b57cff74497685a1d5cf7715abcf');
INSERT INTO `tes_knowledge_courseware_relation` VALUES ('1e3bcb88e66e42feac75f4710b6362b7', 'f03ed986709d471eb5a6f9e5351c12fc', '197937d8a2eb432aaef7146db401c13e');
INSERT INTO `tes_knowledge_courseware_relation` VALUES ('238f163282154ef69048f07ddc61398a', 'ababd686cb8d49ec906933e03a2f802a', '0453ff3666344ce38a18a6b7b21c86b8');
INSERT INTO `tes_knowledge_courseware_relation` VALUES ('248009f948a84383bf7e7c0d4ee31acd', '25045ad18ba24c509e3cbfbdf5efe172', 'b65c9bb62e9846c7a0e7811c640e4132');
INSERT INTO `tes_knowledge_courseware_relation` VALUES ('464d77002a6a4220883d6a79f3b26132', 'e74bc33a2ddf4d44b3010e0d9303f1ad', '225bf83e448e4fdfb7475c916bd7e1d8');
INSERT INTO `tes_knowledge_courseware_relation` VALUES ('4b1b5e7eda9d43c48e7f6effba7e3fff', 'e92ff4375c554befbe27a64d34dd1235', '0');
INSERT INTO `tes_knowledge_courseware_relation` VALUES ('7d4f2e75e0ea4f02b6e993337af49a09', '583ab781262b47f0a75d9873ba6ba4c4', 'b65c9bb62e9846c7a0e7811c640e4132');
INSERT INTO `tes_knowledge_courseware_relation` VALUES ('8143f9cf9595497ca888aa3b8cc68fe5', '56199f8bc2774aa1b03aee3c932c57d9', '0453ff3666344ce38a18a6b7b21c86b8');
INSERT INTO `tes_knowledge_courseware_relation` VALUES ('89d45b09cf224ea096c5d0c03ba07bb1', '933e1168013b4bd088c33be7c3b638c7', '8f68b57cff74497685a1d5cf7715abcf');
INSERT INTO `tes_knowledge_courseware_relation` VALUES ('90564cc877ed4de3b2df9435b919b92e', '2540a7f4662a46779cf6dd769c1abd9d', '0');
INSERT INTO `tes_knowledge_courseware_relation` VALUES ('b9fe9bcfa6ec4effbfa08aaa864cc2e2', 'e74bc33a2ddf4d44b3010e0d9303f1ad', '240c44d79076405596491ecbfc445238');
INSERT INTO `tes_knowledge_courseware_relation` VALUES ('cef9e76c3fc54abeab8732fbd20bcbe6', '89b0109844ae43019e0a1a58773c3880', '240c44d79076405596491ecbfc445238');
INSERT INTO `tes_knowledge_courseware_relation` VALUES ('f63055f09f55479f961decbc00521c70', '64a952f1d09a40a891348864c8b5dea9', 'b65c9bb62e9846c7a0e7811c640e4132');

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
  `descp` varchar(125) DEFAULT NULL,
  `url` varchar(125) DEFAULT NULL,
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
  `id` varchar(32) NOT NULL COMMENT '试题id',
  `level` varchar(10) NOT NULL COMMENT '难易度',
  `title` text NOT NULL COMMENT '题目',
  `answer` text NOT NULL COMMENT '答案',
  `resolution` text COMMENT '解析',
  `istrain` tinyint(1) DEFAULT '1' COMMENT '是否可以作为练习题',
  `optionnum` int(8) DEFAULT NULL COMMENT '选项个数',
  `typeId` varchar(12) NOT NULL COMMENT '试题类型id',
  `user` varchar(120) DEFAULT NULL COMMENT '试题录入人',
  `lastmodifyUser` varchar(120) DEFAULT NULL COMMENT '最后修改人',
  `lastmodifyTime` datetime NOT NULL COMMENT '最后修改时间',
  `userId` varchar(32) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `knows` varchar(125) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`),
  KEY `FK_tes_question` (`typeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tes_question
-- ----------------------------
INSERT INTO `tes_question` VALUES ('015f45ad973d485c949e814dcedb9b75', '一般', '电力系统正常方式下按电压判据计算的静态储备系数为（  ）.', 'A', '电力系统正常方式下按电压判据计算的静态储备系数为10%~15%.', '1', '4', '20000', 't001', null, '2015-03-29 17:25:19', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:25:19', '大学物理', 'A.10%~15%  \nB.15%~20% \nC.20%~25% \nD.15%~25%\n');
INSERT INTO `tes_question` VALUES ('041c19c76b94485e91b9044ea2a5c259', '一般', '根据《电力系统安全稳定导则》的规定，以下不属于电力系统安全稳定计算的运行方式的是（  ）.', 'B', '根据《电力系统安全稳定导则》的规定，电力系统安全稳定计算的运行方式有：正常运行方式、事故后运行方式和特殊运行方式.', '1', '4', '20000', 't001', null, '2015-03-29 17:25:31', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:25:31', '大学物理', 'A.正常运行方式  \nB.最优化运行方式  \nC.事故后运行方式  \nD.特殊运行方式\n');
INSERT INTO `tes_question` VALUES ('04a7ef4aa04044f4b1a7bdece7d5ebaa', '简单', 'PSD-BPA潮流程序的输入文件有（  ）.', 'D', 'PSD-BPA潮流程序的输入文件有程序控制语句、网络数据和老库文件.', '1', '4', '20000', 't001', null, '2015-03-29 17:25:10', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:25:10', '大学物理', 'A.程序控制语句  \nB.网络数据  \nC.老库文件  \nD.以上都是\n');
INSERT INTO `tes_question` VALUES ('08b3b1ecda9c470ca635d482d5936661', '一般', '利用暂态稳定计算程序进行时域仿真时，为了找到系统断面的静态稳定极限功率，以下做法错误的是（  ）.', 'A', '', '1', '4', '20000', 't001', null, '2015-03-29 17:25:20', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:25:20', '大学物理', 'A.保证断面的功率流动不变  \nB.保证系统的频率和电压在正常范围内\nC.保证增减功率基本平衡 \nD.功率的增减方案要符合实际的功率流向\n');
INSERT INTO `tes_question` VALUES ('0dc70343d5b2441f8cbab10f60eaaf8d', '简单', 'PSD-SCCP短路电流程序在OUT文件提示支路阻抗为零时应当查看支路参数是否填写正确.', '1', '', '1', '0', '20002', 't001', null, '2015-03-29 17:26:25', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:26:25', '概述,大学物理,第一章,第二章', '');
INSERT INTO `tes_question` VALUES ('14a03ed15d314e3891dd6b12254b5c1f', '简单', '《电力系统安全稳定导则》规定，电力系统承受大扰动能力的安全稳定标准分为（  ）级.', 'C', '', '1', '4', '20000', 't001', null, '2015-03-29 17:25:27', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:25:27', '大学物理', 'A.一  \nB.二  \nC.三  \nD.四\n');
INSERT INTO `tes_question` VALUES ('1612ebd0c6504096b0b5e9b79456159c', '一般', '在PSD-BPA潮流程序中，不是节点数据卡的是（  ）.', 'A ', '在PSD-BPA潮流程序中，A卡不是节点数据卡.', '1', '4', '20000', 't001', null, '2015-03-29 17:25:15', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:25:15', '大学物理', 'A.A  \nB.B\nC.BD\nD.BM\n');
INSERT INTO `tes_question` VALUES ('1bc83f0d3ca44b52ac86b449610e3f31', '简单', 'PSD-SCCP短路电流程序采用的SWI文件中零序网络的拓扑结构应与DAT文件中正序网络结构保持一致，包括支路名和支路平行码.', '1', '', '1', '0', '20002', 't001', null, '2015-03-29 17:26:20', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:26:20', '概述,大学物理,第一章,第二章', '');
INSERT INTO `tes_question` VALUES ('237d5f5acc044806979e86c0d43935ea', '一般', 'PSD-SCCP短路电流程序在OUT文件提示文件打开失败时应当查看文件路径是否正确，文件是否存在，文件是否被其他程序占用.', '1', '对于发电厂和500kV变电所的220kV母线，事故运行方式时，电压允许偏差为系统额定电压的-5%~10%.', '1', '0', '20002', 't001', null, '2015-03-29 17:26:23', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:26:23', '概述,大学物理,第一章,第二章', '');
INSERT INTO `tes_question` VALUES ('2419413b23054b7ba8bf0eafbc6ed317', '一般', 'PSD-SCCP短路电流程序在OUT文件提示数据格式错误时应当查看数据填写是否符合规范，文本中是否包含制表符替代空格.', '1', '对于发电厂和220（330）kV变电所的110~35kV母线，正常运行方式时，电压允许偏差为系统额定电压的-3%~7%  .', '1', '0', '20002', 't001', null, '2015-03-29 17:26:23', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:26:23', '概述,大学物理,第一章,第二章', '');
INSERT INTO `tes_question` VALUES ('309f7eb6005944b48c20bdb9777d3c93', '一般', '在PSD-SCCP短路电流程序中，若选择基于运行方式进行短路电流计算时，母线电压取潮流计算结果.', '0', '', '1', '0', '20002', 't001', null, '2015-03-29 17:26:18', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:26:18', '概述,大学物理,第一章,第二章', '');
INSERT INTO `tes_question` VALUES ('36e65e197899453c82f3948f08186c9a', '简单', 'PSD-SCCP短路电流程序在OUT文件提示交流线路重复时应当查看交流线路并联号是否重复.', '1', '', '1', '0', '20002', 't001', null, '2015-03-29 17:26:24', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:26:24', '概述,大学物理,第一章,第二章', '');
INSERT INTO `tes_question` VALUES ('3c9741abb94543f9b8e586c8fe74a2cf', '一般', '以下验证电力系统频率稳定性的做法正确的是（  ）. ', 'D', '', '1', '4', '20000', 't001', null, '2015-03-29 17:25:23', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:25:23', '大学物理', 'A.最大的（或几个）发电机组切除  \nB.系统联络线断开  \nC.远距离输电线路断开  \nD.以上都包括\n');
INSERT INTO `tes_question` VALUES ('3ff8ceada60149ee86443d32b65db9ba', '简单', '根据《电力系统安全稳定导则》的规定，正常运行方式下，单一元件故障扰动，依靠保护、开关和重合闸的正确运作，不采取稳控措施，系统必须稳定运行和正常供电对应的是第（  ）级标准.', 'A', '', '1', '4', '20000', 't001', null, '2015-03-29 17:25:28', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:25:28', '大学物理', 'A.一  \nB.二  \nC.三  \nD.四\n');
INSERT INTO `tes_question` VALUES ('436237df5e4f40de8df50ae93710b9f5', '简单', '电力系统中，无功功率平衡指的是（  ）.\n', 'C', '电力系统中，无功功率平衡指的是指感性无功功率平衡与容性无功功率平衡.', '1', '4', '20000', 't001', null, '2015-03-29 17:25:32', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:25:32', '大学物理', 'A.感性无功功率平衡  \nB.容性无功功率平衡  \nC.感性无功功率平衡与容性无功功率平衡  \nD.以上均不对\n');
INSERT INTO `tes_question` VALUES ('45a9fc831f9845438d3f6268d7f36a85', '简单', '<p>how old are you？</p>\r\n', 'A', '<p>asdfghjkl</p>\r\n', '1', '4', '20000', 'lvzhh-t', null, '2015-08-23 14:16:51', '321b8bacaaca4dcc9459953554d0555a', '2015-08-23 14:16:51', '概述', '<p>A.12</p>\r\n\r\n<p>B.23</p>\r\n\r\n<p>C.34</p>\r\n\r\n<p>D.44</p>\r\n\r\n<p>&nbsp;</p>\r\n');
INSERT INTO `tes_question` VALUES ('4670cbedbf1744f197b08c7b0ec294c1', '简单', 'PSD-SCCP短路电流程序在OUT文件提示导纳矩阵三角分解失败时应当查看直流换流变压器零序参数是否漏填.', '1', '', '1', '0', '20002', 't001', null, '2015-03-29 17:26:26', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:26:26', '概述,大学物理,第一章,第二章', '');
INSERT INTO `tes_question` VALUES ('48260c8a810b44a09d12c133579d94e0', '一般', '对于发电厂和220（330）kV变电所的110~35kV母线，正常运行方式时，电压允许偏差为系统额定电压的（  ）.\n\n', 'C', '对于发电厂和220（330）kV变电所的110~35kV母线，正常运行方式时，电压允许偏差为系统额定电压的-3%~7%  .', '1', '4', '20000', 't001', null, '2015-03-29 17:25:35', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:25:35', '大学物理', 'A.0~10%  \nB.-5%~10%  \nC.-3%~7%  \nD.-5%~5%');
INSERT INTO `tes_question` VALUES ('494b7b44c687418696cbb3399ecccfdb', '一般', '频率稳定是指电力系统发生（  ）扰动后，系统频率能够保持或恢复到允许的范围内，不发生频率崩溃的能力. ', 'A', '频率稳定是指电力系统发生有功功率扰动后，系统频率能够保持或恢复到允许的范围内，不发生频率崩溃的能力. ', '1', '4', '20000', 't001', null, '2015-03-29 17:25:23', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:25:23', '大学物理', 'A.有功功率  \nB.无功功率  \nC.有功功率或无功功率  \nD.视在功率\n');
INSERT INTO `tes_question` VALUES ('4e181f6aa88a4ba6829929661a366737', '简单', 'PSD-BPA潮流程序的输出文件有（  ）.', 'D', 'PSD-BPA潮流程序的输出文件有新库文件、结果输出文件和绘图文件.', '1', '4', '20000', 't001', null, '2015-03-29 17:25:10', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:25:10', '大学物理', 'A.新库文件  \nB.结果输出文件  \nC.绘图文件  \nD.以上都是\n');
INSERT INTO `tes_question` VALUES ('519e599c33ef408dbd49dc30c7a1c6e9', '简单', '在PSD-SCCP短路电流程序中，如果SWI文件中没有给出线路零序阻抗参数，短路电流计算程序讲默认设置为等于正序阻抗参数的值.', '0', '电力系统中，无功功率平衡指的是指感性无功功率平衡与容性无功功率平衡.', '1', '0', '20002', 't001', null, '2015-03-29 17:26:21', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:26:21', '概述,大学物理,第一章,第二章', '');
INSERT INTO `tes_question` VALUES ('55839717ab9b4e9897193e385eb5e8a0', '简单', 'PSD-SCCP短路电流程序将采用的SWI文件中零序网络的拓扑结构与DAT文件中正序网络结构不一致的内容予以忽略，不给出提示信息.', '1', '', '1', '0', '20002', 't001', null, '2015-03-29 17:26:21', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:26:21', '概述,大学物理,第一章,第二章', '');
INSERT INTO `tes_question` VALUES ('55f9e8c2541945e18d8abf2a4e10ec53', '简单', '在PSD-BPA潮流程序中，二级控制语句的表示方法是（  ）.', 'B', '', '1', '4', '20000', 't001', null, '2015-03-29 17:25:13', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:25:13', '大学物理', 'A.（……）  \nB. /……\\\nC. >……< \nD. <……>\n');
INSERT INTO `tes_question` VALUES ('5853e04b1a6748a7a6f1cf40679cefa8', '一般', '以下何种情况下可认为主系统是不稳定的（  ）.', 'D', '', '1', '4', '20000', 't001', null, '2015-03-29 17:25:21', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:25:21', '大学物理', 'A.多机复杂系统在摇摆过程中，任两机组间的相对角度达到200°或更大，但仍能恢复到同步衰减而逐渐稳定  \nB.在系统振荡过程中，只是某一个别小机组或终端地区小电源失去稳定，而主系统和大机组不失稳，自动解列失稳的小机组或终端地区小电源\nC.受端系统的中、小型同步调相机失去稳定，而系统中各主要机组之间不失去稳定 \nD.电网遭受一次大扰动后，引起电力系统各机组之间功角相对增大，发生二摆失稳现象\n');
INSERT INTO `tes_question` VALUES ('5da1810b95534a909b9fc78a35a4cd1e', '一般', 'PSD-SCCP短路电流程序在读软件锁失败时应当查看软件锁是否安装正确，是否授权短路电流程序.', '1', '对于发电厂和500kV变电所的220kV母线，正常运行方式时，电压允许偏差为系统额定电压的0~10%.', '1', '0', '20002', 't001', null, '2015-03-29 17:26:22', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:26:22', '概述,大学物理,第一章,第二章', '');
INSERT INTO `tes_question` VALUES ('639a21c13418496abd6604e829b981d2', '一般', '电力系统正常方式下按功角判据计算的静态储备系数为（  ）.', 'B', '电力系统正常方式下按功角判据计算的静态储备系数为15%~20%.', '1', '4', '20000', 't001', null, '2015-03-29 17:25:19', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:25:19', '大学物理', 'A.10%~15%  \nB.15%~20% \nC.20%~25% \nD.15%~25%\n');
INSERT INTO `tes_question` VALUES ('685a2dfdf5a1473b88c3a4a0ef69f3f7', '简单', 'PSD-SCCP短路电流程序采用DAT文件必须保证系统的拓扑结构完整，不能出现孤独立的孤岛.', '0', '', '1', '0', '20002', 't001', null, '2015-03-29 17:26:20', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:26:20', '概述,大学物理,第一章,第二章', '');
INSERT INTO `tes_question` VALUES ('6be15c2a0d1d47559c548edbb4995f84', '一般', '以下对PSD-BPA潮流程序的输出文件的描述错误的是（  ）.', 'B', 'PSD-BPA潮流程序的结果输出文件是文本文件.', '1', '4', '20000', 't001', null, '2015-03-29 17:25:11', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:25:11', '大学物理', 'A.新库文件是二进制输出文件，包括有完整的网络数据和潮流解  \nB.结果输出文件是二进制输出文件，能够根据控制语句输出潮流结果  \nC.结果输出文件是文本文件，能够根据控制语句输出潮流结果  \nD.绘图文件是供单线图格式潮流图及地理接线图格式潮流图程序使用的二进制结果文件\n');
INSERT INTO `tes_question` VALUES ('75d4aaa34f8e40a88adb54f897d80bc4', '一般', '对于1000kV与500（330）kV母线，正常运行方式时，最高运行电压不得超过系统额定电压的（  ）.', 'D', '对于1000kV与500（330）kV母线，正常运行方式时，最高运行电压不得超过系统额定电压的110%.', '1', '4', '20000', 't001', null, '2015-03-29 17:25:33', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:25:33', '大学物理', 'A.95%  \nB.100%  \nC.105%  \nD.110%\n');
INSERT INTO `tes_question` VALUES ('76e47ce3cee44041ac7371392d1fbe90', '一般', '常规稳定分析流程中，对于发电机参数的数据检查，机端电压的标么值应在（  ）之间.', 'A', '常规稳定分析流程中，对于发电机参数的数据检查，机端电压的标么值应在0.95-1.05之间.', '1', '4', '20000', 't001', null, '2015-03-29 17:25:26', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:25:26', '大学物理', 'A.0.95-1.05  \nB.0.95-1.10  \nC.0.90-1.10  \nD.0.90-1.05\n');
INSERT INTO `tes_question` VALUES ('782ec66dc2e447cabc80c5aa1a9c8388', '一般', '对于发电厂和500kV变电所的220kV母线，事故运行方式时，电压允许偏差为系统额定电压的（  ）.', 'B', '对于发电厂和500kV变电所的220kV母线，事故运行方式时，电压允许偏差为系统额定电压的-5%~10%.', '1', '4', '20000', 't001', null, '2015-03-29 17:25:35', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:25:35', '大学物理', 'A.0~10%  \nB.-5%~10%  \nC.-10%~10%  \nD.-5%~5%\n');
INSERT INTO `tes_question` VALUES ('7f1be7204d5040f4a85fd4decf4ca716', '一般', '电力系统电压稳定判据为（  ）以后恢复到（  ）标称电压以上，就认为系统或负荷电压稳定.', 'A', '电力系统电压稳定判据为10s以后恢复到0.8标称电压以上，就认为系统或负荷电压稳定.', '1', '4', '20000', 't001', null, '2015-03-29 17:25:25', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:25:25', '大学物理', 'A.10s 0.8     \nB.10s 0.9    \nC.9s 0.8     \nD.9s 0.9\n');
INSERT INTO `tes_question` VALUES ('8510e5a1dc4445f89b4e80454c092e62', '一般', '电力系统频率稳定判据有系统运行频率不长期悬浮在低于（  ）的水平.', 'D', '电力系统频率稳定判据有系统运行频率不长期悬浮在低于49.0Hz的水平.', '1', '4', '20000', 't001', null, '2015-03-29 17:25:24', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:25:24', '大学物理', 'A.48.5Hz  \nB.50.0Hz  \nC.49.5Hz  \nD.49.0Hz\n');
INSERT INTO `tes_question` VALUES ('86c6882b2ae24fa6b53384a5004db0b0', '简单', '<p>大学物理是否好学呢<img alt=\"\" src=\"/tes/upload/images/GRAPES--MESO.png\" style=\"height:128px; width:128px\" />？</p>\r\n', 'A', '<p>阿打算的发生的烦</p>\r\n', '1', '4', '20000', 't001', null, '2015-03-29 17:09:57', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:09:57', '概述', '<p>A.切切切切</p>\r\n\r\n<p>B.苏打水非打死的</p>\r\n\r\n<p>C.<img class=\"vedio\" src=\"../resources/images/mpeg.png\" title=\"/tes//upload/questionfiles/images/景行.jpg\" /></p>\r\n\r\n<p>D.6666</p>\r\n\r\n<p>&nbsp;</p>\r\n');
INSERT INTO `tes_question` VALUES ('8718f5b2389d45cba81a39c0f78682eb', '困难', '以下不是目前常用的提高系统静稳定的措施是（  ）.', 'A', '减少发电机或变压器的电抗不能提高系统静稳定性.', '1', '4', '20000', 't001', null, '2015-03-29 17:25:17', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:25:17', '大学物理', 'A.减少发电机或变压器的电抗    \nB.采用自动调节励磁装置\nC.减少线路电抗    \nD.改善系统结构  \n');
INSERT INTO `tes_question` VALUES ('8d3fec7b1c9d45ffb06ba6b6ec588d03', '简单', '<p>单选题</p>\r\n', 'A', '<p>一般疑问句</p>\r\n', '1', '4', '20000', 't001', null, '2015-06-19 15:43:23', 'e937849f97a84faaaef051010c2a9a68', '2015-06-19 15:43:23', '大学英语', '<p>Do you have a friend?</p>\r\n\r\n<p>A.yes, I do</p>\r\n\r\n<p>B.please</p>\r\n\r\n<p>C.what are you doing</p>\r\n\r\n<p>D.bye</p>\r\n\r\n<p>&nbsp;</p>\r\n');
INSERT INTO `tes_question` VALUES ('8dbfcecc9f644e8f86e7b0e5d756d3de', '一般', 'PSD-SCCP短路电流程序执行短路电流扫描功能和单一故障计算时可选择的故障类型相同.', '0', '对于1000kV与500（330）kV母线，正常运行方式时，最高运行电压不得超过系统额定电压的110%.', '1', '0', '20002', 't001', null, '2015-03-29 17:26:22', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:26:22', '概述,大学物理,第一章,第二章', '');
INSERT INTO `tes_question` VALUES ('91f4378889594f629944cf03fd8835bb', '一般', '在PSD-SCCP短路电流程序中，若选择不基于运行方式进行短路电流计算时，母线电压取潮流计算结果. ', '0', '', '1', '0', '20002', 't001', null, '2015-03-29 17:26:19', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:26:19', '概述,大学物理,第一章,第二章', '');
INSERT INTO `tes_question` VALUES ('93cd711ffb634d1e9c7a0b078fbb9509', '一般', '以下对电力系统的故障切除时间的描述错误的是（  ）.', 'D', '母线、变压器的故障切除时间均按同电压等级线路近端故障切除时间考虑，但500kV变压器的故障切除时间是按照同电压等级线路远端故障切除时间考虑的.', '1', '4', '20000', 't001', null, '2015-03-29 17:25:36', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:25:36', '大学物理', 'A.220kV线路近故障点侧：0.12秒（6个周波）；远故障点侧：0.12秒  \nB.330kV线路近故障点侧：0.1秒（5个周波）；远故障点侧：0.1秒  \nC.500/1000kV线路近故障点侧：0.09秒（4.5个周波）；远故障点侧：0.1秒  \nD.母线、变压器的故障切除时间均按同电压等级线路近端故障切除时间考虑\n');
INSERT INTO `tes_question` VALUES ('93dcf7cc3bd44b7bb263bcd889469378', '一般', '常规稳定分析流程中，对于变压器参数的数据检查，应根据变压器所带机组和负荷容量，根据短路阻抗来核对（  ）之间. ', 'B', '常规稳定分析流程中，对于变压器参数的数据检查，应根据变压器所带机组和负荷容量，根据短路阻抗来核对12%-18%之间. ', '1', '4', '20000', 't001', null, '2015-03-29 17:25:26', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:25:26', '大学物理', 'A.10%-15%  \nB.12%-18%  \nC.10%-18%  \nD.12%-15%\n');
INSERT INTO `tes_question` VALUES ('9432f805f94c40b28ca68aab33283126', '简单', '在PSD-BPA潮流程序中，控制语句一共可以有（  ）级.', 'C', '在PSD-BPA潮流程序中，控制语句一共可以有三级.', '1', '4', '20000', 't001', null, '2015-03-29 17:25:12', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:25:12', '大学物理', 'A.一  \nB.二\nC.三 \nD.四\n');
INSERT INTO `tes_question` VALUES ('9605b52ef06b4bf09e82c6f084fa8607', '简单', 'PSD-SCCP短路电流程序在OUT文件提示导纳矩阵三角分解失败时应当查看所提示节点相关的支路零序、正序参数是否正确填写，节点所在同步网是否有接地支路.', '1', '', '1', '0', '20002', 't001', null, '2015-03-29 17:26:25', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:26:25', '概述,大学物理,第一章,第二章', '');
INSERT INTO `tes_question` VALUES ('97d630a2e822452b930a58445d23b1a6', '简单', 'PSD-SCCP短路电流程序采用DAT文件必须保证系统的拓扑结构完整，不能出现孤立节点.', '1', '', '1', '0', '20002', 't001', null, '2015-03-29 17:26:20', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:26:20', '概述,大学物理,第一章,第二章', '');
INSERT INTO `tes_question` VALUES ('980f45e591ab40c0992cb0c44427df6e', '一般', '在PSD-SCCP短路电流程序中，若选择不基于运行方式进行短路电流计算时，母线电压取1.0∠0.0.', '1', '', '1', '0', '20002', 't001', null, '2015-03-29 17:26:19', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:26:19', '概述,大学物理,第一章,第二章', '');
INSERT INTO `tes_question` VALUES ('9a1fed47629d4047ba6278f5c4e952c8', '简单', '在PSD-BPA潮流程序中，三级控制语句的表示方法是（  ）.', 'C', '', '1', '4', '20000', 't001', null, '2015-03-29 17:25:13', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:25:13', '大学物理', 'A.（……）  \nB. /……\\\nC. >……< \nD. <……>\n');
INSERT INTO `tes_question` VALUES ('9e4bb461756445318adfc6eb3f220b56', '一般', '若升压变压器高压侧接地，当系统发生不对称短路故障时，发电机侧有零序通路.', '0', '根据《电力系统安全稳定导则》的规定，电力系统安全稳定计算的运行方式有：正常运行方式、事故后运行方式和特殊运行方式.', '1', '0', '20002', 't001', null, '2015-03-29 17:26:21', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:26:21', '概述,大学物理,第一章,第二章', '');
INSERT INTO `tes_question` VALUES ('9e80f7f9008747358b1acacf6f6be077', '一般', '在PSD-BPA潮流程序中，潮流结果文件中的“未安排无功的节点列表”显示的是所有（  ）节点强制增加的无功功率.', 'B', '', '1', '4', '20000', 't001', null, '2015-03-29 17:25:15', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:25:15', '大学物理', 'A.B \nB.BE\nC.BQ\nD.BS\n');
INSERT INTO `tes_question` VALUES ('9fd3da514de84ab99060b5dd938c833b', '困难', '以下不是系统常用于提高暂态稳定的措施是（  ）.', 'A', '', '1', '4', '20000', 't001', null, '2015-03-29 17:25:18', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:25:18', '大学物理', 'A.线路串联电容补偿    \nB.连锁切机\nC.连切负荷    \nD.设置解列点\n');
INSERT INTO `tes_question` VALUES ('a35c6d9952db422e9d6c6d715a1c0158', '一般', '对于发电厂和500kV变电所的220kV母线，正常运行方式时，电压允许偏差为系统额定电压的（  ）.', 'A', '对于发电厂和500kV变电所的220kV母线，正常运行方式时，电压允许偏差为系统额定电压的0~10%.', '1', '4', '20000', 't001', null, '2015-03-29 17:25:34', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:25:34', '大学物理', 'A.0~10%  \nB.-5%~10%  \nC.-10~10%  \nD.-5%~5%\n');
INSERT INTO `tes_question` VALUES ('a437e7d7527c4ce8b862cd5c9c86a60d', '一般', '以下对改进的牛顿-拉夫逊法的描述正确的有（  ）.', 'D', '改进的牛顿-拉夫逊法适用于求解低压配电网、具有串补的网络和经网络化简后的等值网络系统的潮流，有助于克服由于网络R\\X比值大而收敛性差的困难和处理伪Vθ节点.', '1', '4', '20000', 't001', null, '2015-03-29 17:25:09', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:25:09', '大学物理', 'A.适用于求解低压配电网、具有串补的网络和经网络化简后的等值网络系统的潮流\nB.有助于克服由于网络R\\X比值大而收敛性差的困难\nC.可以用来处理伪Vθ节点\nD.以上都有\n');
INSERT INTO `tes_question` VALUES ('aed0067e4c3b40cd8aac8d89654547cd', '简单', '根据《电力系统安全稳定导则》的规定，正常运行方式下，严重故障扰动，保护、开关和重合闸的正确运作，应稳定运行，必要时允许采取切机切负荷等稳控措施对应的是第（  ）级标准.', 'B', '', '1', '4', '20000', 't001', null, '2015-03-29 17:25:30', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:25:30', '大学物理', 'A.一  \nB.二  \nC.三  \nD.四\n');
INSERT INTO `tes_question` VALUES ('b123e6ce8e47488dad0f23480a165862', '一般', '在PSD-BPA潮流程序中，以下对潮流结果文件中“未安排无功的节点列表”描述中正确的是（  ）.', 'C', '如果结果是负值，表示增加了电抗器，无功较多，应减少无功补偿.', '1', '4', '20000', 't001', null, '2015-03-29 17:25:16', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:25:16', '大学物理', 'A.如果结果是负值，表示增加了电容器，缺少无功  \nB.如果结果是负值，表示增加了电抗器，缺少无功\nC.如果结果是正值，表示增加了电容器，缺少无功\nD.如果结果是正值，表示增加了电容器，无功较多\n');
INSERT INTO `tes_question` VALUES ('b1cb4ac176e04ce5bbdbdb79a8022799', '简单', '在PSD-BPA潮流程序中，一级控制语句的表示方法是（  ）.', 'A', '', '1', '4', '20000', 't001', null, '2015-03-29 17:25:12', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:25:12', '大学物理', 'A.（……）  \nB. /……\\\nC. >……< \nD. <……>\n');
INSERT INTO `tes_question` VALUES ('b7cd47ba6a6e4b04a51dc37a069d6727', '简单', '在计算机潮流计算的节点中，数量最多的一类节点是（  ).', 'A', '在计算机潮流计算的节点中，数量最多的一类节点是PQ节点.', '1', '4', '20000', 't001', null, '2015-03-29 17:25:08', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:25:08', '大学物理', 'A.PQ节点\nB.PV节点\nC.Vθ节点\nD.平衡节点');
INSERT INTO `tes_question` VALUES ('ba44529c1b484956bd55a7e83aa25968', '一般', '电力系统暂态稳定判据是电网遭受一次（  ）后，引起电力系统各机组之间功角相对增大，在经过（  ）摇摆不失步.', 'B', '电力系统暂态稳定判据是电网遭受一次大扰动后，引起电力系统各机组之间功角相对增大，在经过第一、第二摇摆不失步.', '1', '4', '20000', 't001', null, '2015-03-29 17:25:21', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:25:21', '大学物理', 'A.小扰动 第一、第二  \nB.大扰动 第一、第二\nC.小扰动 第一 \nD.大扰动 第一\n');
INSERT INTO `tes_question` VALUES ('ba680af2e10847b1bc2fef307b813d0e', '一般', '以下对PSD-BPA潮流程序中控制语句的描述正确的是（  ）.', 'A', '控制语句可以用小写字母；有的控制语句放在网络数据的后面；所有控制语句中的空格都看作是分隔符.', '1', '4', '20000', 't001', null, '2015-03-29 17:25:14', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:25:14', '大学物理', 'A.控制语句必须要顶格填写  \nB.控制语句必须用大写字母\nC.控制语句都要放在网络数据的前面\nD.控制语句中不能出现空格\n');
INSERT INTO `tes_question` VALUES ('bed874416e3948328a877afb0279a221', '困难', '以下不是系统常用于提高暂态稳定的措施是（  ）.', 'D', '', '1', '4', '20000', 't001', null, '2015-03-29 17:25:17', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:25:17', '大学物理', 'A.故障快速切除      \nB.线路快速重合     \nC.强行励磁\nD.变压器经小电阻接地\n');
INSERT INTO `tes_question` VALUES ('bfbf0db6f0db49bfaf58b40d1c75680d', '一般', '在PSD-SCCP短路电流程序中，若选择基于运行方式进行短路电流计算时，母线电压取1.0∠0.0.', '0', '', '1', '0', '20002', 't001', null, '2015-03-29 17:26:18', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:26:18', '概述,大学物理,第一章,第二章', '');
INSERT INTO `tes_question` VALUES ('da52aee77db24ae9b6be3c0c0ea623b4', '简单', '<p>what are doing？</p>\r\n', 'A', '', '1', '3', '20000', 't001', null, '2015-06-19 15:47:53', 'e937849f97a84faaaef051010c2a9a68', '2015-06-19 15:47:53', '大学英语', '<p>what are you doing</p>\r\n\r\n<p>A.No，I don&#39;t</p>\r\n\r\n<p>B.Yes， I do</p>\r\n\r\n<p>C.playing</p>\r\n');
INSERT INTO `tes_question` VALUES ('dda695a706fd452e875bee334a87f315', '简单', 'PSD-BPA潮流程序采用的计算方法不包括（  ）.', 'D', 'PSD-BPA潮流程序采用的计算方法不包括高斯-赛德尔法.', '1', '4', '20000', 't001', null, '2015-03-29 17:25:08', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:25:08', '大学物理', 'A.P-Q分解法 \nB.牛顿-拉夫逊法\nC.改进的牛顿-拉夫逊法\nD.高斯-赛德尔法\n');
INSERT INTO `tes_question` VALUES ('e556c50e38f446e9b11fa474c1904d63', '简单', 'PSD-BPA潮流程序的输出文件有（  ）.', 'D', 'PSD-BPA潮流程序的输出文件有新库文件(bse)、结果输出文件(pfo)和绘图文件(map).', '1', '4', '20000', 't001', null, '2015-03-29 17:25:11', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:25:11', '大学物理', 'A.*.bse  \nB.*.pfo  \nC.*.map  \nD.以上都是\n');
INSERT INTO `tes_question` VALUES ('e5ecb53d577d426dbfea32fdce36f975', '一般', 'PSD-SCCP短路电流程序在OUT文件提示潮流数据中某母线没有找到时应当查看该母线填写格式是否正确，空格是否错位.', '1', '母线、变压器的故障切除时间均按同电压等级线路近端故障切除时间考虑，但500kV变压器的故障切除时间是按照同电压等级线路远端故障切除时间考虑的.', '1', '0', '20002', 't001', null, '2015-03-29 17:26:23', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:26:23', '概述,大学物理,第一章,第二章', '');
INSERT INTO `tes_question` VALUES ('e8b3077de59f4cb59e1fa605a88475f0', '简单', '根据《电力系统安全稳定导则》的规定，电力系统发生故障导致稳定破坏时，必须采取措施，防止系统崩溃，避免造成长时间大面积停电，使负荷损失尽可能减小对应的是第（  ）级标准.', 'C', '', '1', '4', '20000', 't001', null, '2015-03-29 17:25:30', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:25:30', '大学物理', 'A.一  \nB.二  \nC.三  \nD.四\n');
INSERT INTO `tes_question` VALUES ('ed609b1a840e41bd97296e56f049fecb', '简单', 'PSD-SCCP短路电流程序在OUT文件提示变压器支路重复时应当查看变压器并联号是否重复.', '1', '', '1', '0', '20002', 't001', null, '2015-03-29 17:26:24', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:26:24', '概述,大学物理,第一章,第二章', '');
INSERT INTO `tes_question` VALUES ('fe1aa039105646b1ae396de548b5b767', '简单', 'PSD-SCCP短路电流程序在OUT文件提示存在孤立节点时应当查看是否确实存在孤立节点，与该节点相关的支路是否填写正确.', '1', '', '1', '0', '20002', 't001', null, '2015-03-29 17:26:25', 'e937849f97a84faaaef051010c2a9a68', '2015-03-29 17:26:25', '概述,大学物理,第一章,第二章', '');

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
INSERT INTO `tes_questiontype_question` VALUES ('0009a219869d4f4a851946d72ee011c4', 'd256db4c145748499613c4554bc4ab1b', '20000', '08b3b1ecda9c470ca635d482d5936661', '10', '3');
INSERT INTO `tes_questiontype_question` VALUES ('05b991adc241435bb12101f95d9df9e5', '328b8661e60b4665bc30750f3c587a79', '20000', '14a03ed15d314e3891dd6b12254b5c1f', '20', '3');
INSERT INTO `tes_questiontype_question` VALUES ('0692cfec4fae4210a843475c9e8c765b', 'fbf8974d55164b62bc7b1f6dc706e2b2', '20000', '04a7ef4aa04044f4b1a7bdece7d5ebaa', '10', '1');
INSERT INTO `tes_questiontype_question` VALUES ('0798ddf9d91c40229714b6d7e9e3881c', '98be3823413740d682d784d12b171d46', '20000', '04a7ef4aa04044f4b1a7bdece7d5ebaa', '2', '1');
INSERT INTO `tes_questiontype_question` VALUES ('0c0a1ed48692487b87893ceb07776ddc', '7cdf7d8ea519492e9d89867432688e88', '20000', '9fd3da514de84ab99060b5dd938c833b', '50', '1');
INSERT INTO `tes_questiontype_question` VALUES ('0e3f2f2bed9b4dcd9376d6fa014398f7', 'd256db4c145748499613c4554bc4ab1b', '20002', '5da1810b95534a909b9fc78a35a4cd1e', '2', '9');
INSERT INTO `tes_questiontype_question` VALUES ('15dfa2e866bd44a18c3357f570636979', 'e2347052970740a6883c4ca5b4034213', '20000', '28d70063023a4ed1a7748e8d00ecfb91', '10', '6');
INSERT INTO `tes_questiontype_question` VALUES ('179b5b5c0b1d41da8bcbeb1c7c99c119', '328b8661e60b4665bc30750f3c587a79', '20000', '08b3b1ecda9c470ca635d482d5936661', '20', '2');
INSERT INTO `tes_questiontype_question` VALUES ('1994c16898154fbab12c077d8d93b576', 'fbf8974d55164b62bc7b1f6dc706e2b2', '20002', '519e599c33ef408dbd49dc30c7a1c6e9', '10', '3');
INSERT INTO `tes_questiontype_question` VALUES ('1cb595d561b747fba4a1c653087451a5', '98be3823413740d682d784d12b171d46', '20000', '14a03ed15d314e3891dd6b12254b5c1f', '2', '3');
INSERT INTO `tes_questiontype_question` VALUES ('1e0273644efd49bdab3f2d8e02548d8f', 'c17c03e6dc55493f8271e756089bcdb2', '20000', '04a7ef4aa04044f4b1a7bdece7d5ebaa', '3', '1');
INSERT INTO `tes_questiontype_question` VALUES ('236286a69d3441739bb4051ee5f1d532', '7fc7de676f83495f822cea97701e847a', '20000', '041c19c76b94485e91b9044ea2a5c259', '50', '1');
INSERT INTO `tes_questiontype_question` VALUES ('23b8862081314686aaac5ddca9d664fb', 'd256db4c145748499613c4554bc4ab1b', '20000', '14a03ed15d314e3891dd6b12254b5c1f', '10', '4');
INSERT INTO `tes_questiontype_question` VALUES ('2a149a913e124801a98bcda1983ae625', '98be3823413740d682d784d12b171d46', '20000', '08b3b1ecda9c470ca635d482d5936661', '2', '2');
INSERT INTO `tes_questiontype_question` VALUES ('2af6388a58bc4b409b25325dbb192809', '3b80cd4bacb7488bb4bf4d98ebf695b0', '20000', '041c19c76b94485e91b9044ea2a5c259', '50', '1');
INSERT INTO `tes_questiontype_question` VALUES ('31f8b87e8680472bb883d26e3b837207', 'd256db4c145748499613c4554bc4ab1b', '20000', '041c19c76b94485e91b9044ea2a5c259', '10', '1');
INSERT INTO `tes_questiontype_question` VALUES ('32ee3ff668d3437b9a2b7c0246f54b9b', '7fc7de676f83495f822cea97701e847a', '20000', '015f45ad973d485c949e814dcedb9b75', '50', '0');
INSERT INTO `tes_questiontype_question` VALUES ('352b1509d5f140d3b171bfc75daa5397', 'd256db4c145748499613c4554bc4ab1b', '20002', '2419413b23054b7ba8bf0eafbc6ed317', '10', '3');
INSERT INTO `tes_questiontype_question` VALUES ('37962170356b43dd8abc70ec51c056a8', 'fbf8974d55164b62bc7b1f6dc706e2b2', '20000', '436237df5e4f40de8df50ae93710b9f5', '10', '4');
INSERT INTO `tes_questiontype_question` VALUES ('37c98da926f944c6a49c4f6409bb051f', '328b8661e60b4665bc30750f3c587a79', '20000', '04a7ef4aa04044f4b1a7bdece7d5ebaa', '20', '1');
INSERT INTO `tes_questiontype_question` VALUES ('39f1b8c5b3844755a47966f8199a91d1', 'd256db4c145748499613c4554bc4ab1b', '20000', '015f45ad973d485c949e814dcedb9b75', '2', '0');
INSERT INTO `tes_questiontype_question` VALUES ('3fc602cd49304b53b10aedffbe4fd6cc', 'd256db4c145748499613c4554bc4ab1b', '20000', '14a03ed15d314e3891dd6b12254b5c1f', '2', '4');
INSERT INTO `tes_questiontype_question` VALUES ('411050df861d4083a4664b6a602ff975', 'd4f84f1456cf41d18cc3f809ae792635', '20000', '04a7ef4aa04044f4b1a7bdece7d5ebaa', '25', '0');
INSERT INTO `tes_questiontype_question` VALUES ('4ddcf8d3a41441dbb416a53da1d9b5e5', 'd256db4c145748499613c4554bc4ab1b', '20002', '0dc70343d5b2441f8cbab10f60eaaf8d', '2', '0');
INSERT INTO `tes_questiontype_question` VALUES ('4e2de044da694518bb5d476e8ff24a0c', 'd256db4c145748499613c4554bc4ab1b', '20002', '237d5f5acc044806979e86c0d43935ea', '10', '2');
INSERT INTO `tes_questiontype_question` VALUES ('4f51d9c5481346f089306a44a1a3c644', 'c17c03e6dc55493f8271e756089bcdb2', '20000', '04a7ef4aa04044f4b1a7bdece7d5ebaa', '50', '1');
INSERT INTO `tes_questiontype_question` VALUES ('500a373b4a1f4e63bae8be573f90cd76', '095be93e781d45b396f513400eaae4b8', '20000', '17edd7d9e58e43b68861956906f02885', '2', '1');
INSERT INTO `tes_questiontype_question` VALUES ('51379fb4bf7940cf9a479f0f397c3189', 'd256db4c145748499613c4554bc4ab1b', '20002', '2419413b23054b7ba8bf0eafbc6ed317', '2', '3');
INSERT INTO `tes_questiontype_question` VALUES ('52bb73a7240e4ed2ba9f0d08e656ece6', '328b8661e60b4665bc30750f3c587a79', '20000', '041c19c76b94485e91b9044ea2a5c259', '20', '0');
INSERT INTO `tes_questiontype_question` VALUES ('54fb85ea85834c90a8c6218c3f0e26bd', 'd256db4c145748499613c4554bc4ab1b', '20000', '08b3b1ecda9c470ca635d482d5936661', '2', '3');
INSERT INTO `tes_questiontype_question` VALUES ('592812ed4e804f6f8f94d69ebd0bba9f', 'd256db4c145748499613c4554bc4ab1b', '20000', '04a7ef4aa04044f4b1a7bdece7d5ebaa', '2', '2');
INSERT INTO `tes_questiontype_question` VALUES ('5e7552df94cd42d6bccdbd7c7f60076d', 'fbf8974d55164b62bc7b1f6dc706e2b2', '20002', '237d5f5acc044806979e86c0d43935ea', '10', '0');
INSERT INTO `tes_questiontype_question` VALUES ('5ea61d0c890b4d9eb678bc5b1faf6d7d', 'd256db4c145748499613c4554bc4ab1b', '20002', '519e599c33ef408dbd49dc30c7a1c6e9', '2', '7');
INSERT INTO `tes_questiontype_question` VALUES ('5f81f40bdc174c6c9f7caa084be1d7a8', '98be3823413740d682d784d12b171d46', '20000', '1612ebd0c6504096b0b5e9b79456159c', '2', '4');
INSERT INTO `tes_questiontype_question` VALUES ('65c0e019da5249578bb75f5982606ae8', '095be93e781d45b396f513400eaae4b8', '20000', '192bf5297d3e4c8790ad8c2e8fd7cd81', '2', '2');
INSERT INTO `tes_questiontype_question` VALUES ('67ad96b248694638a738642e59b069de', '328b8661e60b4665bc30750f3c587a79', '20000', '1612ebd0c6504096b0b5e9b79456159c', '20', '4');
INSERT INTO `tes_questiontype_question` VALUES ('6885ab7b69a84b5cb9e412795eaaafb0', '7fc7de676f83495f822cea97701e847a', '20000', '015f45ad973d485c949e814dcedb9b75', '50', '0');
INSERT INTO `tes_questiontype_question` VALUES ('6bdf6cc635da432ab6f8600068dbea4c', '095be93e781d45b396f513400eaae4b8', '20000', '13631476234e409b888491167b35ba4e', '2', '0');
INSERT INTO `tes_questiontype_question` VALUES ('6ca6499c6025478ea1d0b45587d1a6ca', 'd256db4c145748499613c4554bc4ab1b', '20002', '4670cbedbf1744f197b08c7b0ec294c1', '10', '6');
INSERT INTO `tes_questiontype_question` VALUES ('6daeff8bd9334fb6bc120db80f901d0c', 'fbf8974d55164b62bc7b1f6dc706e2b2', '20002', '36e65e197899453c82f3948f08186c9a', '10', '2');
INSERT INTO `tes_questiontype_question` VALUES ('6fc415ed6245400a97bafb428f7b23f8', 'a7f692e2dc1a4f19995fdc32a9a2eddf', '20000', '041c19c76b94485e91b9044ea2a5c259', '50', '1');
INSERT INTO `tes_questiontype_question` VALUES ('7166404f628745c4946a6147848e9440', 'fbf8974d55164b62bc7b1f6dc706e2b2', '20002', '309f7eb6005944b48c20bdb9777d3c93', '10', '1');
INSERT INTO `tes_questiontype_question` VALUES ('72e9dca4619d4d23af5a0c0f87c8a3c2', 'd256db4c145748499613c4554bc4ab1b', '20002', '1bc83f0d3ca44b52ac86b449610e3f31', '10', '1');
INSERT INTO `tes_questiontype_question` VALUES ('74d6f97252064ac385832a4043047692', 'fbf8974d55164b62bc7b1f6dc706e2b2', '20000', '48260c8a810b44a09d12c133579d94e0', '10', '5');
INSERT INTO `tes_questiontype_question` VALUES ('7bba44e20e0e45b5bf2b893d1718894c', 'e2347052970740a6883c4ca5b4034213', '20000', '13631476234e409b888491167b35ba4e', '10', '1');
INSERT INTO `tes_questiontype_question` VALUES ('7d9ad587e93c4c5899582a29f1e33b5b', 'd256db4c145748499613c4554bc4ab1b', '20002', '309f7eb6005944b48c20bdb9777d3c93', '10', '4');
INSERT INTO `tes_questiontype_question` VALUES ('7dea36f1de134a88924f398533b28231', 'fbf8974d55164b62bc7b1f6dc706e2b2', '20000', '4e181f6aa88a4ba6829929661a366737', '10', '6');
INSERT INTO `tes_questiontype_question` VALUES ('82ad713e22ac445c8bafdb89ff595f6b', '990e7c2c2a5f4952aae70bfe2a587a28', '20000', '9432f805f94c40b28ca68aab33283126', '50', '0');
INSERT INTO `tes_questiontype_question` VALUES ('8891994f79da4400a775be279fd5b122', 'd256db4c145748499613c4554bc4ab1b', '20002', '237d5f5acc044806979e86c0d43935ea', '2', '2');
INSERT INTO `tes_questiontype_question` VALUES ('92158b1abbc9496b9ba257b997ece26c', 'e2347052970740a6883c4ca5b4034213', '20000', 'ad7426c439af4e778e4177408333bd27', '10', '2');
INSERT INTO `tes_questiontype_question` VALUES ('9285e00f120242368fabd588476bbc4b', 'e2347052970740a6883c4ca5b4034213', '20000', 'c29f95f2895e4178b6f69273fadb96b6', '10', '5');
INSERT INTO `tes_questiontype_question` VALUES ('94784fc7247e49bfa0b0bd4cae45b550', '4f64d5db2ba54ff2b0e36f0590d7ea34', '20000', '45a9fc831f9845438d3f6268d7f36a85', '100', '0');
INSERT INTO `tes_questiontype_question` VALUES ('957d52d9c2864a31947131fca6004dc2', '095be93e781d45b396f513400eaae4b8', '20000', '27747c0346974b5f9acfaedce3bdc25d', '2', '3');
INSERT INTO `tes_questiontype_question` VALUES ('9a57489411634be9a2aeab0a3708d190', '328b8661e60b4665bc30750f3c587a79', '20000', '08b3b1ecda9c470ca635d482d5936661', '20', '2');
INSERT INTO `tes_questiontype_question` VALUES ('9b44c4c10be64bdd8cfb6265475c8ba3', 'e2347052970740a6883c4ca5b4034213', '20000', '94d45b57095a4e639ecb58ed1705d723', '10', '3');
INSERT INTO `tes_questiontype_question` VALUES ('9d38fcea923144d7be3e4870a03498ff', '7cdf7d8ea519492e9d89867432688e88', '20000', '08b3b1ecda9c470ca635d482d5936661', '50', '1');
INSERT INTO `tes_questiontype_question` VALUES ('9d5175e5b2814c89952661fae0686eb8', 'd256db4c145748499613c4554bc4ab1b', '20002', '0dc70343d5b2441f8cbab10f60eaaf8d', '10', '0');
INSERT INTO `tes_questiontype_question` VALUES ('9dc8259ea0f144439977d4e9ca0ec3b4', 'af495e54ad6847f38a60636080f551b7', '20000', '041c19c76b94485e91b9044ea2a5c259', '100', '0');
INSERT INTO `tes_questiontype_question` VALUES ('9dcabe8bd34d4ce9a046b3d6ff3197b6', '98be3823413740d682d784d12b171d46', '20000', '015f45ad973d485c949e814dcedb9b75', '2', '0');
INSERT INTO `tes_questiontype_question` VALUES ('a95053e5866f4b2184f8ee9b1597530a', '7cdf7d8ea519492e9d89867432688e88', '20000', '48260c8a810b44a09d12c133579d94e0', '50', '0');
INSERT INTO `tes_questiontype_question` VALUES ('aa6da4272547412fab02d55a5c53c1e0', 'd256db4c145748499613c4554bc4ab1b', '20002', '55839717ab9b4e9897193e385eb5e8a0', '10', '8');
INSERT INTO `tes_questiontype_question` VALUES ('ab3657741d8846f781f03416c624aa30', 'd256db4c145748499613c4554bc4ab1b', '20002', '4670cbedbf1744f197b08c7b0ec294c1', '2', '6');
INSERT INTO `tes_questiontype_question` VALUES ('ab4801b321094576a50c2cd9a153c5cf', 'd4f84f1456cf41d18cc3f809ae792635', '20000', '14a03ed15d314e3891dd6b12254b5c1f', '25', '2');
INSERT INTO `tes_questiontype_question` VALUES ('ad3cb514f25f4ba6a66130aca6094268', 'fbf8974d55164b62bc7b1f6dc706e2b2', '20000', '015f45ad973d485c949e814dcedb9b75', '10', '0');
INSERT INTO `tes_questiontype_question` VALUES ('ae415542f4764fb080458e9194848c88', 'd256db4c145748499613c4554bc4ab1b', '20002', '1bc83f0d3ca44b52ac86b449610e3f31', '2', '1');
INSERT INTO `tes_questiontype_question` VALUES ('b974dcfd7f72409f86b6a3d04bea1152', 'a7f692e2dc1a4f19995fdc32a9a2eddf', '20000', '015f45ad973d485c949e814dcedb9b75', '50', '0');
INSERT INTO `tes_questiontype_question` VALUES ('ba148ddffce545e98521f27f82c4de57', '095be93e781d45b396f513400eaae4b8', '20000', '365a2ba5ea21420886bc8f7a7934f1aa', '2', '5');
INSERT INTO `tes_questiontype_question` VALUES ('babf06b037db49c498a5850c733de4fc', 'a7f692e2dc1a4f19995fdc32a9a2eddf', '20000', '041c19c76b94485e91b9044ea2a5c259', '50', '1');
INSERT INTO `tes_questiontype_question` VALUES ('bac3915167a74198818ba73c069fc22e', 'fbf8974d55164b62bc7b1f6dc706e2b2', '20000', '1612ebd0c6504096b0b5e9b79456159c', '10', '2');
INSERT INTO `tes_questiontype_question` VALUES ('bbc855959a9944ef9db3d0a112a2d588', '7fc7de676f83495f822cea97701e847a', '20000', '041c19c76b94485e91b9044ea2a5c259', '50', '1');
INSERT INTO `tes_questiontype_question` VALUES ('bce3f32f5e5a40ae865770ff18d23b79', '990e7c2c2a5f4952aae70bfe2a587a28', '20000', '7f1be7204d5040f4a85fd4decf4ca716', '50', '1');
INSERT INTO `tes_questiontype_question` VALUES ('c0bb1158f29447c59348dcfc118d2871', 'e2347052970740a6883c4ca5b4034213', '20000', 'da0b3c4eba374c48ba3ad07c2a902e77', '10', '4');
INSERT INTO `tes_questiontype_question` VALUES ('c4e9274ae27a4a72988b86b078508275', '328b8661e60b4665bc30750f3c587a79', '20000', '14a03ed15d314e3891dd6b12254b5c1f', '20', '3');
INSERT INTO `tes_questiontype_question` VALUES ('c771826f420d49ea956614427f60b74f', 'd256db4c145748499613c4554bc4ab1b', '20002', '519e599c33ef408dbd49dc30c7a1c6e9', '10', '7');
INSERT INTO `tes_questiontype_question` VALUES ('c9fdf90423194415adf5dd4c8c1853c1', '3b80cd4bacb7488bb4bf4d98ebf695b0', '20000', '015f45ad973d485c949e814dcedb9b75', '50', '0');
INSERT INTO `tes_questiontype_question` VALUES ('cc25cf696fd541b0bea23ccfa77a26b7', 'd256db4c145748499613c4554bc4ab1b', '20002', '36e65e197899453c82f3948f08186c9a', '2', '5');
INSERT INTO `tes_questiontype_question` VALUES ('cd73326a15524c019bf4bfc6886e90b2', 'd256db4c145748499613c4554bc4ab1b', '20002', '5da1810b95534a909b9fc78a35a4cd1e', '10', '9');
INSERT INTO `tes_questiontype_question` VALUES ('ce1e8dce22d7486b8f4d715b72908361', '095be93e781d45b396f513400eaae4b8', '20000', '373e16e8016d4125be2006f3c1e01d03', '2', '6');
INSERT INTO `tes_questiontype_question` VALUES ('cec4b48b37494f1c9fcb6e73fdb2a62e', 'd256db4c145748499613c4554bc4ab1b', '20000', '015f45ad973d485c949e814dcedb9b75', '10', '0');
INSERT INTO `tes_questiontype_question` VALUES ('d6d638a4d8704feeb88053c188c9e9c0', '095be93e781d45b396f513400eaae4b8', '20000', '28d70063023a4ed1a7748e8d00ecfb91', '2', '4');
INSERT INTO `tes_questiontype_question` VALUES ('da3507dc554a4a2a9db40333bad3297e', 'd256db4c145748499613c4554bc4ab1b', '20000', '04a7ef4aa04044f4b1a7bdece7d5ebaa', '10', '2');
INSERT INTO `tes_questiontype_question` VALUES ('dff48db2159f4f6cb46346c88343e6cf', 'd256db4c145748499613c4554bc4ab1b', '20000', '041c19c76b94485e91b9044ea2a5c259', '2', '1');
INSERT INTO `tes_questiontype_question` VALUES ('e5f05e6308db49399e75bc1553379c22', 'e2347052970740a6883c4ca5b4034213', '20000', '373e16e8016d4125be2006f3c1e01d03', '10', '0');
INSERT INTO `tes_questiontype_question` VALUES ('e6f2d66c65154e4dab259be8535a25a5', '7fc7de676f83495f822cea97701e847a', '20000', '015f45ad973d485c949e814dcedb9b75', '50', '0');
INSERT INTO `tes_questiontype_question` VALUES ('e849cd42a23b4e5387c6a4c115f6af71', 'a7f692e2dc1a4f19995fdc32a9a2eddf', '20000', '015f45ad973d485c949e814dcedb9b75', '50', '0');
INSERT INTO `tes_questiontype_question` VALUES ('e91e757b9b3149b1993b4a64782ef239', 'd256db4c145748499613c4554bc4ab1b', '20002', '309f7eb6005944b48c20bdb9777d3c93', '2', '4');
INSERT INTO `tes_questiontype_question` VALUES ('ea9a01a3ea584f339f69332bebbaf29b', 'fbf8974d55164b62bc7b1f6dc706e2b2', '20000', '55f9e8c2541945e18d8abf2a4e10ec53', '10', '7');
INSERT INTO `tes_questiontype_question` VALUES ('ec19da04fc27417da3d5604ae9e818e1', 'fbf8974d55164b62bc7b1f6dc706e2b2', '20002', '5da1810b95534a909b9fc78a35a4cd1e', '10', '4');
INSERT INTO `tes_questiontype_question` VALUES ('ed2d3c9d470f4395b63758981ac9a195', '328b8661e60b4665bc30750f3c587a79', '20000', '1612ebd0c6504096b0b5e9b79456159c', '20', '4');
INSERT INTO `tes_questiontype_question` VALUES ('eeadbc1b4ce84d14960329432351610e', 'c17c03e6dc55493f8271e756089bcdb2', '20000', '041c19c76b94485e91b9044ea2a5c259', '50', '0');
INSERT INTO `tes_questiontype_question` VALUES ('f0ca710a175b4045b60a2be2ef2374ea', 'd256db4c145748499613c4554bc4ab1b', '20002', '36e65e197899453c82f3948f08186c9a', '10', '5');
INSERT INTO `tes_questiontype_question` VALUES ('f1bc8b8d96874f58a00a188b8030bb17', '7fc7de676f83495f822cea97701e847a', '20000', '041c19c76b94485e91b9044ea2a5c259', '50', '1');
INSERT INTO `tes_questiontype_question` VALUES ('f1c240cc51d54b22aba4af7949b607ea', 'd256db4c145748499613c4554bc4ab1b', '20002', '55839717ab9b4e9897193e385eb5e8a0', '2', '8');
INSERT INTO `tes_questiontype_question` VALUES ('f59433b51bc94338a699259f85895bed', 'd4f84f1456cf41d18cc3f809ae792635', '20000', '08b3b1ecda9c470ca635d482d5936661', '25', '1');
INSERT INTO `tes_questiontype_question` VALUES ('faf62972e70a4bc6b0d66510cd06a734', '7cdf7d8ea519492e9d89867432688e88', '20000', '436237df5e4f40de8df50ae93710b9f5', '50', '0');
INSERT INTO `tes_questiontype_question` VALUES ('ff284e4a90cd449b8539e41c2ecf3231', 'c17c03e6dc55493f8271e756089bcdb2', '20000', '041c19c76b94485e91b9044ea2a5c259', '3', '0');
INSERT INTO `tes_questiontype_question` VALUES ('ff31d1d492634d62b908c119e9260ad7', 'd4f84f1456cf41d18cc3f809ae792635', '20000', '1612ebd0c6504096b0b5e9b79456159c', '25', '3');
INSERT INTO `tes_questiontype_question` VALUES ('ff95be4ad1f749bf995669afd14169ac', 'fbf8974d55164b62bc7b1f6dc706e2b2', '20000', '3c9741abb94543f9b8e586c8fe74a2cf', '10', '3');

-- ----------------------------
-- Table structure for `tes_question_content`
-- ----------------------------
DROP TABLE IF EXISTS `tes_question_content`;
CREATE TABLE `tes_question_content` (
  `id` varchar(32) NOT NULL,
  `contentTypeId` varchar(32) DEFAULT NULL,
  `content` text,
  `seqNu` int(125) DEFAULT NULL,
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
  `descp` varchar(125) DEFAULT NULL COMMENT '描述',
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
INSERT INTO `tes_question_knowledge` VALUES ('029f512e2baa4606b92af2a7d2171ccd', 'ed609b1a840e41bd97296e56f049fecb', '240c44d79076405596491ecbfc445238');
INSERT INTO `tes_question_knowledge` VALUES ('02af8c6d290649128d059b87cf2ca397', 'ed609b1a840e41bd97296e56f049fecb', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('052105332fd845089160ee5f68c01ce0', '9605b52ef06b4bf09e82c6f084fa8607', 'd59a29ca56a04c85b29d52d2b0a9a2af');
INSERT INTO `tes_question_knowledge` VALUES ('08704ebb04a64c7eac4e302d387da6f0', '9605b52ef06b4bf09e82c6f084fa8607', '240c44d79076405596491ecbfc445238');
INSERT INTO `tes_question_knowledge` VALUES ('0d139442f4654c258d0f6205b295f29b', '309f7eb6005944b48c20bdb9777d3c93', '240c44d79076405596491ecbfc445238');
INSERT INTO `tes_question_knowledge` VALUES ('0d3642b208bb47bf883b7447345d6d05', 'bfbf0db6f0db49bfaf58b40d1c75680d', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('13d57c6acd7948159b6ef6a965ec9610', 'a35c6d9952db422e9d6c6d715a1c0158', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('177dcd06a8844ab4910a4ec9bb1b2d2c', 'bfbf0db6f0db49bfaf58b40d1c75680d', '8f68b57cff74497685a1d5cf7715abcf');
INSERT INTO `tes_question_knowledge` VALUES ('177ed3d2e9054754a99183f6121dcf3b', '5da1810b95534a909b9fc78a35a4cd1e', '8f68b57cff74497685a1d5cf7715abcf');
INSERT INTO `tes_question_knowledge` VALUES ('18a35643912645b4acabb800ec90c2c0', '9e4bb461756445318adfc6eb3f220b56', '8f68b57cff74497685a1d5cf7715abcf');
INSERT INTO `tes_question_knowledge` VALUES ('18d15b554fdd47509170a396e95ec9ad', '494b7b44c687418696cbb3399ecccfdb', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('196661f93fb1498684efac6e6439e136', '9605b52ef06b4bf09e82c6f084fa8607', '8f68b57cff74497685a1d5cf7715abcf');
INSERT INTO `tes_question_knowledge` VALUES ('198cec18af20438d8a9149724cb5d13e', '980f45e591ab40c0992cb0c44427df6e', 'd59a29ca56a04c85b29d52d2b0a9a2af');
INSERT INTO `tes_question_knowledge` VALUES ('1e3bd9e80dc84caa9515e7e84e6e4e57', '237d5f5acc044806979e86c0d43935ea', 'd59a29ca56a04c85b29d52d2b0a9a2af');
INSERT INTO `tes_question_knowledge` VALUES ('1f493f6b92cd42a9b69eb04806bce948', 'e5ecb53d577d426dbfea32fdce36f975', '8f68b57cff74497685a1d5cf7715abcf');
INSERT INTO `tes_question_knowledge` VALUES ('20c79a221da6465b9d630bb0294a2e03', '519e599c33ef408dbd49dc30c7a1c6e9', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('20d6bdbfcbd9449f85dd61114ed39496', 'b123e6ce8e47488dad0f23480a165862', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('21add24a70814eed92e9e8fb02ae8672', 'ba680af2e10847b1bc2fef307b813d0e', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('230cd34212524ec2a91a89d37615ec15', '36e65e197899453c82f3948f08186c9a', '240c44d79076405596491ecbfc445238');
INSERT INTO `tes_question_knowledge` VALUES ('28029faea8d449be8ab1a6fffbbd46c3', '639a21c13418496abd6604e829b981d2', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('29c2af653967491dbc4ca0effbfdec87', '75d4aaa34f8e40a88adb54f897d80bc4', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('29c863e98809488c980f1c0fbcd34290', '86c6882b2ae24fa6b53384a5004db0b0', '240c44d79076405596491ecbfc445238');
INSERT INTO `tes_question_knowledge` VALUES ('3143e16a2a174783b1eff737151a4a2f', '97d630a2e822452b930a58445d23b1a6', 'd59a29ca56a04c85b29d52d2b0a9a2af');
INSERT INTO `tes_question_knowledge` VALUES ('32b2be51e12c4b23bb5c2512beddea32', '9fd3da514de84ab99060b5dd938c833b', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('32e0b4ac1ec849e78706062d895a81eb', '0dc70343d5b2441f8cbab10f60eaaf8d', '8f68b57cff74497685a1d5cf7715abcf');
INSERT INTO `tes_question_knowledge` VALUES ('339c96533fce4eb481db67928644b9e8', '4670cbedbf1744f197b08c7b0ec294c1', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('362e5e3597e54620844f486051c37a3c', '237d5f5acc044806979e86c0d43935ea', '8f68b57cff74497685a1d5cf7715abcf');
INSERT INTO `tes_question_knowledge` VALUES ('37339511b24645e18f12d1bbf8731efc', '8dbfcecc9f644e8f86e7b0e5d756d3de', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('3b3a45f8a52040748586a79db931b90a', '7f1be7204d5040f4a85fd4decf4ca716', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('3c48741a34284e79b56ec7e36cda7b72', '9605b52ef06b4bf09e82c6f084fa8607', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('3d116bc5d9324c54a0a864e2a2e39a0c', 'dda695a706fd452e875bee334a87f315', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('3db8b76699da47aaafdd4f01c58de742', 'b1cb4ac176e04ce5bbdbdb79a8022799', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('3e0a973b7e6b4d7a90153b944a716d02', '55839717ab9b4e9897193e385eb5e8a0', '240c44d79076405596491ecbfc445238');
INSERT INTO `tes_question_knowledge` VALUES ('417ab582264847a8b5f0a854ddf35fd4', '015f45ad973d485c949e814dcedb9b75', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('42651ce24cc14b7098dee52492160a71', '55839717ab9b4e9897193e385eb5e8a0', 'd59a29ca56a04c85b29d52d2b0a9a2af');
INSERT INTO `tes_question_knowledge` VALUES ('48fceb3b471e4306bce0ebfb780dc820', 'a437e7d7527c4ce8b862cd5c9c86a60d', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('496a199ee37e40a086b3596a0d6e32de', 'ba44529c1b484956bd55a7e83aa25968', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('4ac3432504a445e2a4b095fb73fd03d3', '8510e5a1dc4445f89b4e80454c092e62', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('4d061ef143e74b89a564d776b7e25385', '9e4bb461756445318adfc6eb3f220b56', '240c44d79076405596491ecbfc445238');
INSERT INTO `tes_question_knowledge` VALUES ('4dfc17dfd73b404d8eddb8eafae52fd6', '8dbfcecc9f644e8f86e7b0e5d756d3de', '8f68b57cff74497685a1d5cf7715abcf');
INSERT INTO `tes_question_knowledge` VALUES ('509015b764b4421e94c4e415ef6d0e37', '2419413b23054b7ba8bf0eafbc6ed317', '8f68b57cff74497685a1d5cf7715abcf');
INSERT INTO `tes_question_knowledge` VALUES ('512d572c06fb483bb87e8ac798e26d4f', 'ed609b1a840e41bd97296e56f049fecb', 'd59a29ca56a04c85b29d52d2b0a9a2af');
INSERT INTO `tes_question_knowledge` VALUES ('527258d6209b4f4891266de1aaffef0b', '309f7eb6005944b48c20bdb9777d3c93', 'd59a29ca56a04c85b29d52d2b0a9a2af');
INSERT INTO `tes_question_knowledge` VALUES ('53d704e845844cfdb4588e7c70a63b5a', 'bfbf0db6f0db49bfaf58b40d1c75680d', '240c44d79076405596491ecbfc445238');
INSERT INTO `tes_question_knowledge` VALUES ('5492f6441c4543e4b9401abe20d7df1e', '041c19c76b94485e91b9044ea2a5c259', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('5540059f2f844745a7016ef751c20e08', '91f4378889594f629944cf03fd8835bb', '8f68b57cff74497685a1d5cf7715abcf');
INSERT INTO `tes_question_knowledge` VALUES ('5693fbe547db440881c70eb3b1d744b2', '8718f5b2389d45cba81a39c0f78682eb', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('56d467a069214534b79d8003edffd89d', '9e80f7f9008747358b1acacf6f6be077', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('56ed062a94264ac6875730f85e2adc8e', '5da1810b95534a909b9fc78a35a4cd1e', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('575e14203f234c8cbd8f37d15c00d313', 'e5ecb53d577d426dbfea32fdce36f975', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('59342fb9f19547cba22e264b976e20ab', '3ff8ceada60149ee86443d32b65db9ba', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('61fa099b87a044d5b6b2016343822271', '685a2dfdf5a1473b88c3a4a0ef69f3f7', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('63134c007dea464cb69e27cb0e2210b9', '2419413b23054b7ba8bf0eafbc6ed317', '240c44d79076405596491ecbfc445238');
INSERT INTO `tes_question_knowledge` VALUES ('649a893825a74cafb753b409c46f8349', '91f4378889594f629944cf03fd8835bb', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('6624da2c74414dcf8e4c1449301f4f15', '782ec66dc2e447cabc80c5aa1a9c8388', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('6a5d2e54972e41a4a54a5bad663c8173', '08b3b1ecda9c470ca635d482d5936661', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('6a7c35dd29c34ccca51b0aa42c999479', 'bed874416e3948328a877afb0279a221', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('6a9844a1301c4f9eb782477368b8f845', '980f45e591ab40c0992cb0c44427df6e', '8f68b57cff74497685a1d5cf7715abcf');
INSERT INTO `tes_question_knowledge` VALUES ('6ac20ec1724142fc9a20cf9a5975f5c6', 'fe1aa039105646b1ae396de548b5b767', 'd59a29ca56a04c85b29d52d2b0a9a2af');
INSERT INTO `tes_question_knowledge` VALUES ('6b532d2fadf74e5daeda5e0cc1a3e993', '0dc70343d5b2441f8cbab10f60eaaf8d', 'd59a29ca56a04c85b29d52d2b0a9a2af');
INSERT INTO `tes_question_knowledge` VALUES ('6c4109bd7cd54c578852805c007b480d', '980f45e591ab40c0992cb0c44427df6e', '240c44d79076405596491ecbfc445238');
INSERT INTO `tes_question_knowledge` VALUES ('6c7e57dc4da041d78257ac8259c81692', '1612ebd0c6504096b0b5e9b79456159c', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('6ce6667722dc4ccb9806967f44b1c56f', '97d630a2e822452b930a58445d23b1a6', '240c44d79076405596491ecbfc445238');
INSERT INTO `tes_question_knowledge` VALUES ('6f80987f649a4d91a1477bf3ac4290c8', '519e599c33ef408dbd49dc30c7a1c6e9', '8f68b57cff74497685a1d5cf7715abcf');
INSERT INTO `tes_question_knowledge` VALUES ('6f9978b242334c73968ecea8fa8ceab1', '8d3fec7b1c9d45ffb06ba6b6ec588d03', 'b4d6508b353747b691be903c0a313596');
INSERT INTO `tes_question_knowledge` VALUES ('7097d48c625747239e03577d5dc1c5cb', '9e4bb461756445318adfc6eb3f220b56', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('74ab6557c7a0421d9a8c13425b3930e7', '2419413b23054b7ba8bf0eafbc6ed317', 'd59a29ca56a04c85b29d52d2b0a9a2af');
INSERT INTO `tes_question_knowledge` VALUES ('77a9ce20269c47c99b33475f143c3764', '48260c8a810b44a09d12c133579d94e0', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('79e0e971b9d949378289f4165dd190f9', '0dc70343d5b2441f8cbab10f60eaaf8d', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('7d1456a35ab24d2aa75b20994f391eaa', '97d630a2e822452b930a58445d23b1a6', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('7e0b508656ac4935910ea2d5eb87a19d', 'b7cd47ba6a6e4b04a51dc37a069d6727', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('80e7fbf64d82431dbb7fa94a7e56aca9', '3c9741abb94543f9b8e586c8fe74a2cf', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('816dae4d3e12421184da65537adcadb1', 'e5ecb53d577d426dbfea32fdce36f975', '240c44d79076405596491ecbfc445238');
INSERT INTO `tes_question_knowledge` VALUES ('821671d4196a4363a51f15b3e7cd98e8', '309f7eb6005944b48c20bdb9777d3c93', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('84f00eca8e8f4f799fb0718d4580a207', '97d630a2e822452b930a58445d23b1a6', '8f68b57cff74497685a1d5cf7715abcf');
INSERT INTO `tes_question_knowledge` VALUES ('8623942816804c56a7f30d5679f3e46e', '8dbfcecc9f644e8f86e7b0e5d756d3de', 'd59a29ca56a04c85b29d52d2b0a9a2af');
INSERT INTO `tes_question_knowledge` VALUES ('86b9667356334094b0325e0d0a194ed8', '519e599c33ef408dbd49dc30c7a1c6e9', '240c44d79076405596491ecbfc445238');
INSERT INTO `tes_question_knowledge` VALUES ('8adb83e142d04dc38cb02181eaa7d8b6', '9a1fed47629d4047ba6278f5c4e952c8', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('8c0c66b9b42346b09417213529d3e804', '519e599c33ef408dbd49dc30c7a1c6e9', 'd59a29ca56a04c85b29d52d2b0a9a2af');
INSERT INTO `tes_question_knowledge` VALUES ('8d06b5188d7a46cfbd15730c82895e9f', '36e65e197899453c82f3948f08186c9a', 'd59a29ca56a04c85b29d52d2b0a9a2af');
INSERT INTO `tes_question_knowledge` VALUES ('8ed42a77eae34cc9b6a1d65de80b69da', '980f45e591ab40c0992cb0c44427df6e', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('92835c7bbae04fa89ff809583c760aab', '45a9fc831f9845438d3f6268d7f36a85', 'b65c9bb62e9846c7a0e7811c640e4132');
INSERT INTO `tes_question_knowledge` VALUES ('94a771d0130b4ea7a43526cdf1430905', '309f7eb6005944b48c20bdb9777d3c93', '8f68b57cff74497685a1d5cf7715abcf');
INSERT INTO `tes_question_knowledge` VALUES ('97067fe0b1cf43cd89b7b6bae8f8f9b2', '5da1810b95534a909b9fc78a35a4cd1e', 'd59a29ca56a04c85b29d52d2b0a9a2af');
INSERT INTO `tes_question_knowledge` VALUES ('97499e1655424287b53d744575a11d98', '1bc83f0d3ca44b52ac86b449610e3f31', '8f68b57cff74497685a1d5cf7715abcf');
INSERT INTO `tes_question_knowledge` VALUES ('9965546860c34d64b2796fd753c2c6b8', '2419413b23054b7ba8bf0eafbc6ed317', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('9fdd19e72b9a4fc39d28cefd6d8598e0', '1bc83f0d3ca44b52ac86b449610e3f31', '240c44d79076405596491ecbfc445238');
INSERT INTO `tes_question_knowledge` VALUES ('a33624fd07ee4184b4a378d3ec580aed', '4670cbedbf1744f197b08c7b0ec294c1', '240c44d79076405596491ecbfc445238');
INSERT INTO `tes_question_knowledge` VALUES ('a3958053d4f34525b2f9c66f482eab3e', '0dc70343d5b2441f8cbab10f60eaaf8d', '240c44d79076405596491ecbfc445238');
INSERT INTO `tes_question_knowledge` VALUES ('a424a715519a446792c4e542bb98b9c9', '436237df5e4f40de8df50ae93710b9f5', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('a74614371b2342d6906ce0724db0e0ab', '237d5f5acc044806979e86c0d43935ea', '240c44d79076405596491ecbfc445238');
INSERT INTO `tes_question_knowledge` VALUES ('a76170fbb5b2483f91a6384a51d60de9', '685a2dfdf5a1473b88c3a4a0ef69f3f7', '240c44d79076405596491ecbfc445238');
INSERT INTO `tes_question_knowledge` VALUES ('a899d0f09bb3498a99d2ea1232760fb1', '4670cbedbf1744f197b08c7b0ec294c1', 'd59a29ca56a04c85b29d52d2b0a9a2af');
INSERT INTO `tes_question_knowledge` VALUES ('aa163d280dda41d1a324ec18a80e5243', '9432f805f94c40b28ca68aab33283126', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('ae64701159754c869542eb039613b4a1', '685a2dfdf5a1473b88c3a4a0ef69f3f7', 'd59a29ca56a04c85b29d52d2b0a9a2af');
INSERT INTO `tes_question_knowledge` VALUES ('af1c2097e0be4f0285e41d177c249821', 'e8b3077de59f4cb59e1fa605a88475f0', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('b158657d09734d6ba6aafc74a9290037', '55f9e8c2541945e18d8abf2a4e10ec53', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('b1760ef26e784f01903ca3c3e3a3dd7b', '237d5f5acc044806979e86c0d43935ea', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('b925b8b813694c0b97f3f8afb91773e1', '8dbfcecc9f644e8f86e7b0e5d756d3de', '240c44d79076405596491ecbfc445238');
INSERT INTO `tes_question_knowledge` VALUES ('bbf34b49ede94c91b3acee1f1ad08107', '6be15c2a0d1d47559c548edbb4995f84', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('bc77c996be304821b8774f3b59fdadbf', '5da1810b95534a909b9fc78a35a4cd1e', '240c44d79076405596491ecbfc445238');
INSERT INTO `tes_question_knowledge` VALUES ('bd532acfcead43028344363da2a306cb', '14a03ed15d314e3891dd6b12254b5c1f', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('c024ce45f91e4df387fe789899c9d7e8', 'bfbf0db6f0db49bfaf58b40d1c75680d', 'd59a29ca56a04c85b29d52d2b0a9a2af');
INSERT INTO `tes_question_knowledge` VALUES ('c0f4e0d2d5a24311be26ec28b8ed8572', '1bc83f0d3ca44b52ac86b449610e3f31', 'd59a29ca56a04c85b29d52d2b0a9a2af');
INSERT INTO `tes_question_knowledge` VALUES ('c17646b221514404aa834bd5f10c5322', 'ed609b1a840e41bd97296e56f049fecb', '8f68b57cff74497685a1d5cf7715abcf');
INSERT INTO `tes_question_knowledge` VALUES ('c8eb78ea18544640bb9f481dcd4c91fd', '93cd711ffb634d1e9c7a0b078fbb9509', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('cc4cf8739c2e4d5ca803ec5c5d13b29a', '93dcf7cc3bd44b7bb263bcd889469378', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('ccaba6104ed346c9a1e38c71efbb104a', '4e181f6aa88a4ba6829929661a366737', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('d13d4d6c23d24f53a180e7bfa67b07f9', 'e556c50e38f446e9b11fa474c1904d63', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('d1736f4bc8b04c62ad239649a605ecff', '5853e04b1a6748a7a6f1cf40679cefa8', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('d189c90c70c64ecdac446c9804a62063', 'fe1aa039105646b1ae396de548b5b767', '8f68b57cff74497685a1d5cf7715abcf');
INSERT INTO `tes_question_knowledge` VALUES ('d3e83b3ca3f44e8aaac89a9d2c7bb9eb', '1bc83f0d3ca44b52ac86b449610e3f31', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('da8116aa75fd4183b884e68232dc8be4', '91f4378889594f629944cf03fd8835bb', 'd59a29ca56a04c85b29d52d2b0a9a2af');
INSERT INTO `tes_question_knowledge` VALUES ('dbe705671e834c1f982ec173c46f88f6', '685a2dfdf5a1473b88c3a4a0ef69f3f7', '8f68b57cff74497685a1d5cf7715abcf');
INSERT INTO `tes_question_knowledge` VALUES ('e52fd7e06da547c898acd9209430cb00', '36e65e197899453c82f3948f08186c9a', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('e8083a9a4896436491a4778cbfd1e0d0', '55839717ab9b4e9897193e385eb5e8a0', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('e9fa80a7c5a544eca3fabc4720a1346d', 'da52aee77db24ae9b6be3c0c0ea623b4', 'b4d6508b353747b691be903c0a313596');
INSERT INTO `tes_question_knowledge` VALUES ('eb297eb88931497ababe5c8ec51c27be', '9e4bb461756445318adfc6eb3f220b56', 'd59a29ca56a04c85b29d52d2b0a9a2af');
INSERT INTO `tes_question_knowledge` VALUES ('eb57856577dd4daa91cde41ccfc56533', '76e47ce3cee44041ac7371392d1fbe90', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('ebfb3613ac814fe2b97e75902e8860e5', 'e5ecb53d577d426dbfea32fdce36f975', 'd59a29ca56a04c85b29d52d2b0a9a2af');
INSERT INTO `tes_question_knowledge` VALUES ('ed65c5203cac4d278477c810c81e4b2a', '91f4378889594f629944cf03fd8835bb', '240c44d79076405596491ecbfc445238');
INSERT INTO `tes_question_knowledge` VALUES ('ee26576240c7432ea209b2bf47e92d54', 'fe1aa039105646b1ae396de548b5b767', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('f2d805b842bd45e984e198f223e2605d', '04a7ef4aa04044f4b1a7bdece7d5ebaa', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('f3c16df9e1804120a859e3ae20da7202', 'aed0067e4c3b40cd8aac8d89654547cd', '2105cedbc7514a66810beca0d6e96f64');
INSERT INTO `tes_question_knowledge` VALUES ('f47ba332a36d40c2b7f8bd2da65554cc', '55839717ab9b4e9897193e385eb5e8a0', '8f68b57cff74497685a1d5cf7715abcf');
INSERT INTO `tes_question_knowledge` VALUES ('f8090621cb9d4947bb42b9e7de03f65e', '4670cbedbf1744f197b08c7b0ec294c1', '8f68b57cff74497685a1d5cf7715abcf');
INSERT INTO `tes_question_knowledge` VALUES ('f9183c053784461e8b7506d34744cfbb', '36e65e197899453c82f3948f08186c9a', '8f68b57cff74497685a1d5cf7715abcf');
INSERT INTO `tes_question_knowledge` VALUES ('f9cf1cbb4d844393a0e302947d97bd32', 'fe1aa039105646b1ae396de548b5b767', '240c44d79076405596491ecbfc445238');

-- ----------------------------
-- Table structure for `tes_question_times`
-- ----------------------------
DROP TABLE IF EXISTS `tes_question_times`;
CREATE TABLE `tes_question_times` (
  `id` varchar(125) NOT NULL,
  `questionId` varchar(125) NOT NULL,
  `times` int(125) NOT NULL,
  PRIMARY KEY (`id`,`questionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tes_question_times
-- ----------------------------

-- ----------------------------
-- Table structure for `tes_question_type`
-- ----------------------------
DROP TABLE IF EXISTS `tes_question_type`;
CREATE TABLE `tes_question_type` (
  `id` varchar(32) NOT NULL,
  `code` varchar(60) NOT NULL,
  `name` varchar(125) DEFAULT NULL,
  `descp` varchar(125) DEFAULT NULL,
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
  `descp` varchar(125) DEFAULT NULL,
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
  `roleName` varchar(125) NOT NULL,
  `deparmentId` varchar(32) NOT NULL,
  `departmentName` varchar(125) NOT NULL,
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
  `name` varchar(125) DEFAULT NULL,
  `classTypeId` varchar(125) DEFAULT NULL,
  `createUser` varchar(32) DEFAULT NULL,
  `status` varchar(32) DEFAULT NULL COMMENT '新建:new,发布:publish,关闭:close',
  `endTime` datetime DEFAULT NULL,
  `startTime` datetime DEFAULT NULL,
  `knowledgeId` varchar(125) DEFAULT NULL,
  `classHours` varchar(32) DEFAULT NULL,
  `score` varchar(32) DEFAULT NULL,
  `descp` varchar(125) DEFAULT NULL,
  `coverFile` varchar(125) DEFAULT NULL,
  `banner` varchar(125) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tes_train
-- ----------------------------
INSERT INTO `tes_train` VALUES ('000ded0145cd478da24cd45fb05c8137', 'peix', '8ae800ac1b2b474f8120267a5467db54', 't001', 'new', null, null, '2105cedbc7514a66810beca0d6e96f64', '33', '11', '333', '/resources/images/fengmian.jpg', '');
INSERT INTO `tes_train` VALUES ('23bc1a74a01a4c86b6203451d5f224a0', 'peix', '8ae800ac1b2b474f8120267a5467db54', 't001', 'new', null, null, '2105cedbc7514a66810beca0d6e96f64', '33', '11', '333', '/resources/images/fengmian.jpg', '');
INSERT INTO `tes_train` VALUES ('2b6e182497584ad28321fa6adcc26ad8', '测试课程一', 'a486fc70bdd6424c9aabdb2e52336210', 'teacher', 'new', '2015-03-01 00:00:00', '2015-03-11 00:00:00', '4849beda375e4be98f4f7720adbeb0c5', '23', '12', '', '/resources/images/fengmian.jpg', '');
INSERT INTO `tes_train` VALUES ('2c047d9f00f64f6ab2578aa7c4b3e533', '让人', '693729d129434fac9d60f0240666a3c3', 'lvzhh-t', 'new', null, null, 'f8274e1f07094a9189439d5854956f02', '33', '33', '', '/resources/images/fengmian.jpg', '');
INSERT INTO `tes_train` VALUES ('3e747b735084457bb4ba4fe8b381b403', '测试语文', '693729d129434fac9d60f0240666a3c3', 'lvzhh-t', 'new', '2015-08-28 00:00:00', '2015-08-17 00:00:00', 'f8274e1f07094a9189439d5854956f02', '333', '22', '', '/resources/images/fengmian.jpg', '');
INSERT INTO `tes_train` VALUES ('7596d319ef0f4868b8a632c6abd8f853', 'ea', 'a486fc70bdd6424c9aabdb2e52336210', 'teacher', 'new', '2015-03-27 00:00:00', '2015-03-16 00:00:00', '4849beda375e4be98f4f7720adbeb0c5', '34', '33', '', '/resources/images/fengmian.jpg', '');
INSERT INTO `tes_train` VALUES ('767214e8399b4f659bdf846d18c1ec0c', '高等数学', '8ae800ac1b2b474f8120267a5467db54', 't001', 'new', '2015-06-18 00:00:00', '2015-03-02 00:00:00', '2105cedbc7514a66810beca0d6e96f64', '12', '3', '高等数学', '/upload/trainIcon/1.jpg', '/upload/bannerIcon/喵喵.jpeg');
INSERT INTO `tes_train` VALUES ('7d16897e561a4a9fa30a88a1b0c85269', '33', 'a486fc70bdd6424c9aabdb2e52336210', 'teacher', 'new', '2015-03-03 00:00:00', '2015-03-31 00:00:00', '4849beda375e4be98f4f7720adbeb0c5', '33', '33', '', '/resources/images/fengmian.jpg', '');
INSERT INTO `tes_train` VALUES ('7f2dd8a8411b4f3ca6112e6ac3bfdcc3', 'rrr', '693729d129434fac9d60f0240666a3c3', 'lvzhh-t', 'new', null, null, 'b4d6508b353747b691be903c0a313596', '44', '44', '', '/resources/images/fengmian.jpg', '');
INSERT INTO `tes_train` VALUES ('bd0ea4281f9b4be9a5cf4b69e75b1b70', '3333', '693729d129434fac9d60f0240666a3c3', 'lvzhh-t', 'new', null, null, 'b4d6508b353747b691be903c0a313596', '33', '333', '', '/resources/images/fengmian.jpg', '');
INSERT INTO `tes_train` VALUES ('c4177390eeda4e4a8589297707970691', 'testo', '3beadd5ff355494bb2f73557c670a79e', null, 'new', '2015-03-02 00:00:00', '2015-03-12 00:00:00', '4849beda375e4be98f4f7720adbeb0c5', '33', '100', '999999999999999999999999999999999999999999999999999999933333999999999999999999999999999999999999999999999999999999933333999999999999999999999999999999999999999999999999999', '/resources/images/fengmian.jpg', '');
INSERT INTO `tes_train` VALUES ('c6d20521422e4cb3a15423d10ddc3d2e', 'ceshi', '693729d129434fac9d60f0240666a3c3', 't001', 'new', null, null, 'f8274e1f07094a9189439d5854956f02', '11', '33', '', '/resources/images/fengmian.jpg', '');
INSERT INTO `tes_train` VALUES ('ccc48cfb13904651b544b36cd60a9598', '3', 'a486fc70bdd6424c9aabdb2e52336210', null, 'new', null, null, '4849beda375e4be98f4f7720adbeb0c5', '33', '333', '222222222222222222222222222222222', '/resources/images/fengmian.jpg', '');
INSERT INTO `tes_train` VALUES ('cd69dd28a0a84d568764a9bf2c953b27', '3333', '693729d129434fac9d60f0240666a3c3', 'lvzhh-t', 'new', null, null, 'b4d6508b353747b691be903c0a313596', '33', '333', '', '/resources/images/fengmian.jpg', '');
INSERT INTO `tes_train` VALUES ('f13c38a8900a49e2a1ab10a41a701f18', '大学英语', '693729d129434fac9d60f0240666a3c3', 't001', 'new', '2015-06-17 00:00:00', '2015-03-04 00:00:00', 'b4d6508b353747b691be903c0a313596', '20', '3', '', '/upload/trainIcon/1.jpg', '/upload/bannerIcon/喵喵.jpeg');
INSERT INTO `tes_train` VALUES ('f2145b65d4d94d968f673c810fea21e3', '大学物理', '8ae800ac1b2b474f8120267a5467db54', null, 'new', null, null, '2105cedbc7514a66810beca0d6e96f64', '123', '123', '课程目标：打好英语基础，备战四六级考试。课程特色：朴素、实用、有效适用人群：大学在校生，高中毕业生。优惠方式：基础课免费，循环开课，学会为止。课程详情：着重讲解基础性的词汇和语法知识，为提高英语水平打下牢固基础。备注：想学习的同学请务必加QQ群，我们会在群里分享学习资料。', '/resources/images/fengmian.jpg', '');

-- ----------------------------
-- Table structure for `tes_train_comment`
-- ----------------------------
DROP TABLE IF EXISTS `tes_train_comment`;
CREATE TABLE `tes_train_comment` (
  `id` varchar(125) NOT NULL DEFAULT '',
  `trainId` varchar(125) NOT NULL DEFAULT '',
  `degreeDlty` varchar(125) NOT NULL,
  `quality` varchar(125) NOT NULL,
  `level` varchar(125) NOT NULL,
  `content` varchar(125) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `userId` varchar(125) NOT NULL,
  `userName` varchar(125) NOT NULL,
  PRIMARY KEY (`id`,`trainId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tes_train_comment
-- ----------------------------
INSERT INTO `tes_train_comment` VALUES ('13fc3c3c2f474f0c92e26b398bc6ac70', 'c6d20521422e4cb3a15423d10ddc3d2e', '4', '4', '4', 'sfsfsf', '2015-10-14 21:34:06', '65320a4aa19b411aa484bb5185f71f39', 'st001');
INSERT INTO `tes_train_comment` VALUES ('8d4a9fb8e8c84f6199d38c3527b99ffb', '3e747b735084457bb4ba4fe8b381b403', '2', '2', '1', 'dd', '2015-10-12 23:54:15', '', '');
INSERT INTO `tes_train_comment` VALUES ('9a2a482eb4024408b5eb6b498af2c05e', '3e747b735084457bb4ba4fe8b381b403', '2', '2', '3', 'dd', '2015-10-12 23:54:20', '', '');
INSERT INTO `tes_train_comment` VALUES ('ab1b5b6fb05446a9aeb4af8307b9892b', 'c6d20521422e4cb3a15423d10ddc3d2e', '4', '4', '4', 'sfsfsfddd', '2015-10-14 21:34:26', '65320a4aa19b411aa484bb5185f71f39', 'st001');
INSERT INTO `tes_train_comment` VALUES ('b4cca3e7abe44ab2bc5394e84a02671f', '2c047d9f00f64f6ab2578aa7c4b3e533', '', '', '', 'ddds', '2015-10-14 19:59:53', '', '');
INSERT INTO `tes_train_comment` VALUES ('d674eb605651423a9be61583484fd048', '2c047d9f00f64f6ab2578aa7c4b3e533', '4', '4', '', 'ddds', '2015-10-14 20:00:20', '', '');

-- ----------------------------
-- Table structure for `tes_train_content`
-- ----------------------------
DROP TABLE IF EXISTS `tes_train_content`;
CREATE TABLE `tes_train_content` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `trainId` varchar(32) DEFAULT NULL,
  `chapterName` varchar(125) DEFAULT NULL,
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
-- Table structure for `tes_train_notes`
-- ----------------------------
DROP TABLE IF EXISTS `tes_train_notes`;
CREATE TABLE `tes_train_notes` (
  `id` varchar(125) NOT NULL,
  `userId` varchar(125) NOT NULL,
  `userName` varchar(125) NOT NULL,
  `createDate` datetime NOT NULL,
  `content` varchar(125) NOT NULL,
  `trainId` varchar(125) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tes_train_notes
-- ----------------------------
INSERT INTO `tes_train_notes` VALUES ('08336266eaa84f769f29c5bad74cf973', '65320a4aa19b411aa484bb5185f71f39', 'st001', '2015-10-21 15:32:48', '呃呃呃呃 15810356073', '767214e8399b4f659bdf846d18c1ec0c');
INSERT INTO `tes_train_notes` VALUES ('19b64f3a7a4d4be9954c77de3b4ec950', '65320a4aa19b411aa484bb5185f71f39', 'st001', '2015-10-21 16:26:41', 'ddd', '2c047d9f00f64f6ab2578aa7c4b3e533');
INSERT INTO `tes_train_notes` VALUES ('1c9223c801904b40b9cce04271cad8b7', '65320a4aa19b411aa484bb5185f71f39', 'st001', '2015-10-21 15:19:44', '呃呃呃呃', '');
INSERT INTO `tes_train_notes` VALUES ('246f2e983a114369a20924e26802df75', '65320a4aa19b411aa484bb5185f71f39', 'st001', '2015-10-21 16:36:17', 'ggg', 'c6d20521422e4cb3a15423d10ddc3d2e');
INSERT INTO `tes_train_notes` VALUES ('2cd5a949e6e548d8b2ec1256132c2989', '65320a4aa19b411aa484bb5185f71f39', 'st001', '2015-10-18 16:31:48', 'ggg', '');
INSERT INTO `tes_train_notes` VALUES ('4d9f7572e0444241ae86030cf7c79c18', '65320a4aa19b411aa484bb5185f71f39', 'st001', '2015-10-15 00:04:20', 'sdsdsdddd', '');
INSERT INTO `tes_train_notes` VALUES ('608d5be232c34ea498a7ea77c1d2fa15', '65320a4aa19b411aa484bb5185f71f39', 'st001', '2015-10-21 16:03:47', '咕咚咕咚', '2c047d9f00f64f6ab2578aa7c4b3e533');
INSERT INTO `tes_train_notes` VALUES ('6f3cfe24afd34aca8511d42af734ba88', '65320a4aa19b411aa484bb5185f71f39', 'st001', '2015-10-21 16:34:26', 'ä»æ´æ´ç', '767214e8399b4f659bdf846d18c1ec0c');
INSERT INTO `tes_train_notes` VALUES ('7dc28cb2f3854ec985a0e7bf619db16c', '65320a4aa19b411aa484bb5185f71f39', 'st001', '2015-10-21 16:36:23', 'ggg', 'c6d20521422e4cb3a15423d10ddc3d2e');
INSERT INTO `tes_train_notes` VALUES ('832c11b9ee89488991dceb7fdb7023f6', '65320a4aa19b411aa484bb5185f71f39', 'st001', '2015-10-21 16:15:02', '咕咚咕咚', '2c047d9f00f64f6ab2578aa7c4b3e533');
INSERT INTO `tes_train_notes` VALUES ('a50cc9b681fc4f1881442120c6de7d4e', '65320a4aa19b411aa484bb5185f71f39', 'st001', '2015-10-21 16:34:12', 'ä»æ´æ´ç', '767214e8399b4f659bdf846d18c1ec0c');
INSERT INTO `tes_train_notes` VALUES ('a5c7946d213849a2a7456d76f87865bf', '65320a4aa19b411aa484bb5185f71f39', 'st001', '2015-10-15 00:02:53', 'dfghjkddd', '');
INSERT INTO `tes_train_notes` VALUES ('b59418821d3d4bf5ba32c6311a9af1bd', '65320a4aa19b411aa484bb5185f71f39', 'st001', '2015-10-21 16:27:40', 'ddd', '2c047d9f00f64f6ab2578aa7c4b3e533');
INSERT INTO `tes_train_notes` VALUES ('bda09f32f83f4f1ca98975b50f4ca932', '65320a4aa19b411aa484bb5185f71f39', 'st001', '2015-10-15 00:03:18', 'dfghjkddd', '');
INSERT INTO `tes_train_notes` VALUES ('bda9c35beccc488b98679088b35dbd58', '65320a4aa19b411aa484bb5185f71f39', 'st001', '2015-10-21 15:19:36', '呃呃呃呃', '');
INSERT INTO `tes_train_notes` VALUES ('c1c96fe1c26c4393b1e393c556292c0b', '65320a4aa19b411aa484bb5185f71f39', 'st001', '2015-10-21 15:26:09', '呃呃呃呃', '767214e8399b4f659bdf846d18c1ec0c');
INSERT INTO `tes_train_notes` VALUES ('c814eaa7edb3419eacdb830f4737363b', '65320a4aa19b411aa484bb5185f71f39', 'st001', '2015-10-14 23:58:40', 'dfghjk', '');
INSERT INTO `tes_train_notes` VALUES ('d9dd376f2bf84bd88577750281d9a52a', '65320a4aa19b411aa484bb5185f71f39', 'st001', '2015-10-21 16:31:48', 'dddee', 'c6d20521422e4cb3a15423d10ddc3d2e');
INSERT INTO `tes_train_notes` VALUES ('fb909d0d769342d6b22c69154848c3d7', '65320a4aa19b411aa484bb5185f71f39', 'st001', '2015-10-21 16:31:41', 'ddd', 'c6d20521422e4cb3a15423d10ddc3d2e');

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
INSERT INTO `tes_train_recorder` VALUES ('0f8c4f49abb94a2583749c4208879bbf', '65320a4aa19b411aa484bb5185f71f39', '767214e8399b4f659bdf846d18c1ec0c', '2015-06-19 16:05:12', null, '2015-06-19 16:05:12');
INSERT INTO `tes_train_recorder` VALUES ('14383da822274dd89728a1185ad75fd4', '05df7d7b68aa418fae1eab83b4b6f8c8', 'f2145b65d4d94d968f673c810fea21e3', '2015-08-23 13:38:56', null, '2015-08-23 13:38:56');
INSERT INTO `tes_train_recorder` VALUES ('220e5ce32b2c4df58e8892dc7a14e45e', '65320a4aa19b411aa484bb5185f71f39', 'cd69dd28a0a84d568764a9bf2c953b27', '2015-10-21 15:36:26', null, '2015-10-21 15:36:26');
INSERT INTO `tes_train_recorder` VALUES ('374e7232825f4e6d828a5ca3ce08be70', '65320a4aa19b411aa484bb5185f71f39', '2c047d9f00f64f6ab2578aa7c4b3e533', '2015-08-27 17:53:08', null, '2015-08-27 17:53:08');
INSERT INTO `tes_train_recorder` VALUES ('4999a2e7acbe47e89dd7a61ce07fcd5c', '65320a4aa19b411aa484bb5185f71f39', '7596d319ef0f4868b8a632c6abd8f853', '2015-06-19 16:04:52', null, '2015-06-19 16:04:52');
INSERT INTO `tes_train_recorder` VALUES ('5ebcb5a470884832b04592399cf74d1a', '65320a4aa19b411aa484bb5185f71f39', '89f25248bd4e4c68b3c8e4b634bc28aa', '2015-05-17 15:26:30', null, '2015-05-17 15:26:30');
INSERT INTO `tes_train_recorder` VALUES ('8b82d92510454cec89388aa854eec3da', '05df7d7b68aa418fae1eab83b4b6f8c8', '3e747b735084457bb4ba4fe8b381b403', '2015-08-23 13:37:23', null, '2015-08-23 13:37:23');
INSERT INTO `tes_train_recorder` VALUES ('90579302055e480f9d28b9c43623d2a6', '65320a4aa19b411aa484bb5185f71f39', 'f2145b65d4d94d968f673c810fea21e3', '2015-03-29 16:56:47', null, '2015-03-29 16:56:47');
INSERT INTO `tes_train_recorder` VALUES ('ab448db1257646d0b71e8c57b9077e9a', '05df7d7b68aa418fae1eab83b4b6f8c8', 'f13c38a8900a49e2a1ab10a41a701f18', '2015-08-23 13:38:32', null, '2015-08-23 13:38:32');
INSERT INTO `tes_train_recorder` VALUES ('bb1be7db2b1f40b88f6313ddd4bf6b09', '65320a4aa19b411aa484bb5185f71f39', '23bc1a74a01a4c86b6203451d5f224a0', '2015-10-21 16:30:01', null, '2015-10-21 16:30:01');
INSERT INTO `tes_train_recorder` VALUES ('c64fd2d6b03d47829463eba371c01c6f', '05df7d7b68aa418fae1eab83b4b6f8c8', '7d16897e561a4a9fa30a88a1b0c85269', '2015-08-23 14:13:19', null, '2015-08-23 14:13:19');
INSERT INTO `tes_train_recorder` VALUES ('ca3357546a424859aef5a94b9c56afe0', '65320a4aa19b411aa484bb5185f71f39', 'c6d20521422e4cb3a15423d10ddc3d2e', '2015-08-30 00:12:50', null, '2015-08-30 00:12:50');
INSERT INTO `tes_train_recorder` VALUES ('da293bf9f02f4ae3877a24413cf2742d', '05df7d7b68aa418fae1eab83b4b6f8c8', '23bc1a74a01a4c86b6203451d5f224a0', '2015-09-10 23:12:25', null, '2015-09-10 23:12:25');
INSERT INTO `tes_train_recorder` VALUES ('e9503da2c15a44f8bc0fbe5e62afe619', '65320a4aa19b411aa484bb5185f71f39', '2b6e182497584ad28321fa6adcc26ad8', '2015-10-02 11:45:09', null, '2015-10-02 11:45:09');
INSERT INTO `tes_train_recorder` VALUES ('ef202145a30242ddb530a766ace1d623', '65320a4aa19b411aa484bb5185f71f39', '3e747b735084457bb4ba4fe8b381b403', '2015-08-27 17:53:25', null, '2015-08-27 17:53:25');

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
  `descp` varchar(125) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tes_user
-- ----------------------------
INSERT INTO `tes_user` VALUES ('05df7d7b68aa418fae1eab83b4b6f8c8', 'lvzhh-s', 'lvzhh-s', '111111', '', 'f31230158ad34d02996c59f6ddb439fe', '', '2015-08-23 12:19:47', 'male', '', '');
INSERT INTO `tes_user` VALUES ('2c76be7a204e4117bf861810ef31fdb4', 'test111', '111111', '111111', '', '', '', '2015-08-23 19:21:02', 'male', '', '');
INSERT INTO `tes_user` VALUES ('321b8bacaaca4dcc9459953554d0555a', 'lvzhh-t', 'lvzhh', '111111', '', '692ce55fae364027a7692cb7434d7372', '', '2015-08-23 12:14:37', 'male', '', '');
INSERT INTO `tes_user` VALUES ('58f6fd5f3c064d1197d0ebb1e21f528f', 'st002', '学生2', '111111', '', '', '', '2015-06-19 17:54:30', 'male', '', '');
INSERT INTO `tes_user` VALUES ('65320a4aa19b411aa484bb5185f71f39', 'st001', 'st001', '111111', '', '692ce55fae364027a7692cb7434d7372', '', '2015-03-29 16:04:22', 'male', '', '');
INSERT INTO `tes_user` VALUES ('709ad33dab614ddca656d7191eefe1b2', 'ouou', '2222', '222222', '', '692ce55fae364027a7692cb7434d7372', '', '2015-08-23 23:16:54', 'male', '', '');
INSERT INTO `tes_user` VALUES ('9459cd20e6324fe3be4fca7af270b62a', 'admin', 'admin', '111111', '', '692ce55fae364027a7692cb7434d7372', '', '2015-03-29 16:02:14', 'male', '', '');
INSERT INTO `tes_user` VALUES ('dca4125d87334b019c40528d4f395dfc', 't002', '教师', '111111', 't001@email.com', 'f155b5d0d8844e8ca16526d7a63e2239', '12345678901', '2015-06-23 09:53:24', 'male', '24', '');
INSERT INTO `tes_user` VALUES ('e937849f97a84faaaef051010c2a9a68', 't001', '111111', '111111', '', '692ce55fae364027a7692cb7434d7372', '', '2015-03-29 16:03:40', 'male', '', '');

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
INSERT INTO `tes_user_role` VALUES ('0e30ec52b9e342209fccb3d6780486de', '321b8bacaaca4dcc9459953554d0555a', '2');
INSERT INTO `tes_user_role` VALUES ('449f6b7f9c6e486888beaa2f1589781b', '2c76be7a204e4117bf861810ef31fdb4', '2');
INSERT INTO `tes_user_role` VALUES ('4ae3f0bc453f457cb5872c3bb37f0eb9', '9459cd20e6324fe3be4fca7af270b62a', '1');
INSERT INTO `tes_user_role` VALUES ('746eacc9bb994ba2b4f36ac770c614d3', '65320a4aa19b411aa484bb5185f71f39', '3');
INSERT INTO `tes_user_role` VALUES ('7bebe967243a487ebe1f116cad75c93b', '05df7d7b68aa418fae1eab83b4b6f8c8', '3');
INSERT INTO `tes_user_role` VALUES ('98d8af2230ee4af79ad8bd69e9e5210c', '709ad33dab614ddca656d7191eefe1b2', '2');
INSERT INTO `tes_user_role` VALUES ('a3091900ba9e4f52ac5d389fba43bdfd', 'e937849f97a84faaaef051010c2a9a68', '2');
INSERT INTO `tes_user_role` VALUES ('e75703732965458ea9a2212a899dfcba', 'dca4125d87334b019c40528d4f395dfc', '2');
INSERT INTO `tes_user_role` VALUES ('fe25c24ca3a94792a7d3b61f86eeb022', '58f6fd5f3c064d1197d0ebb1e21f528f', '2');

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
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `tes_exam_log_detail_view` AS select `student`.`displayName` AS `studentName`,`student`.`id` AS `studentId`,`exam_log`.`id` AS `examLogId`,`exam_room`.`id` AS `examRoomId`,`exam_room`.`name` AS `examRoomName`,`exam_room`.`duration` AS `examRoomDuration`,`exam_log`.`beginDate` AS `examLogBeginDate`,`exam_log`.`endDate` AS `examLogEndDate`,`exam_log`.`examRoomId` AS `examLogExamRoomId`,`exam_log`.`teacherId` AS `teacherId`,`exam_log`.`score` AS `examLogScore`,`exam_log`.`judgeDate` AS `examLogJudgeDate`,`exam_log`.`modifyDate` AS `examLogModifyDate`,`exam_log`.`description` AS `examLogDescription` from ((`tes_exam_log` `exam_log` join `tes_exam_room` `exam_room`) join `tes_user` `student`) where ((`exam_log`.`examRoomId` = `exam_room`.`id`) and (`exam_log`.`studentId` = `student`.`id`)) ;

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
