/*
 Navicat Premium Data Transfer

 Source Server         : localhost连接
 Source Server Type    : MySQL
 Source Server Version : 50737
 Source Host           : localhost:3306
 Source Schema         : python_pet

 Target Server Type    : MySQL
 Target Server Version : 50737
 File Encoding         : 65001

 Date: 21/06/2023 16:38:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 85 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add ad', 7, 'add_ad');
INSERT INTO `auth_permission` VALUES (26, 'Can change ad', 7, 'change_ad');
INSERT INTO `auth_permission` VALUES (27, 'Can delete ad', 7, 'delete_ad');
INSERT INTO `auth_permission` VALUES (28, 'Can view ad', 7, 'view_ad');
INSERT INTO `auth_permission` VALUES (29, 'Can add classification', 8, 'add_classification');
INSERT INTO `auth_permission` VALUES (30, 'Can change classification', 8, 'change_classification');
INSERT INTO `auth_permission` VALUES (31, 'Can delete classification', 8, 'delete_classification');
INSERT INTO `auth_permission` VALUES (32, 'Can view classification', 8, 'view_classification');
INSERT INTO `auth_permission` VALUES (33, 'Can add error log', 9, 'add_errorlog');
INSERT INTO `auth_permission` VALUES (34, 'Can change error log', 9, 'change_errorlog');
INSERT INTO `auth_permission` VALUES (35, 'Can delete error log', 9, 'delete_errorlog');
INSERT INTO `auth_permission` VALUES (36, 'Can view error log', 9, 'view_errorlog');
INSERT INTO `auth_permission` VALUES (37, 'Can add login log', 10, 'add_loginlog');
INSERT INTO `auth_permission` VALUES (38, 'Can change login log', 10, 'change_loginlog');
INSERT INTO `auth_permission` VALUES (39, 'Can delete login log', 10, 'delete_loginlog');
INSERT INTO `auth_permission` VALUES (40, 'Can view login log', 10, 'view_loginlog');
INSERT INTO `auth_permission` VALUES (41, 'Can add notice', 11, 'add_notice');
INSERT INTO `auth_permission` VALUES (42, 'Can change notice', 11, 'change_notice');
INSERT INTO `auth_permission` VALUES (43, 'Can delete notice', 11, 'delete_notice');
INSERT INTO `auth_permission` VALUES (44, 'Can view notice', 11, 'view_notice');
INSERT INTO `auth_permission` VALUES (45, 'Can add op log', 12, 'add_oplog');
INSERT INTO `auth_permission` VALUES (46, 'Can change op log', 12, 'change_oplog');
INSERT INTO `auth_permission` VALUES (47, 'Can delete op log', 12, 'delete_oplog');
INSERT INTO `auth_permission` VALUES (48, 'Can view op log', 12, 'view_oplog');
INSERT INTO `auth_permission` VALUES (49, 'Can add tag', 13, 'add_tag');
INSERT INTO `auth_permission` VALUES (50, 'Can change tag', 13, 'change_tag');
INSERT INTO `auth_permission` VALUES (51, 'Can delete tag', 13, 'delete_tag');
INSERT INTO `auth_permission` VALUES (52, 'Can view tag', 13, 'view_tag');
INSERT INTO `auth_permission` VALUES (53, 'Can add user', 14, 'add_user');
INSERT INTO `auth_permission` VALUES (54, 'Can change user', 14, 'change_user');
INSERT INTO `auth_permission` VALUES (55, 'Can delete user', 14, 'delete_user');
INSERT INTO `auth_permission` VALUES (56, 'Can view user', 14, 'view_user');
INSERT INTO `auth_permission` VALUES (57, 'Can add thing', 15, 'add_thing');
INSERT INTO `auth_permission` VALUES (58, 'Can change thing', 15, 'change_thing');
INSERT INTO `auth_permission` VALUES (59, 'Can delete thing', 15, 'delete_thing');
INSERT INTO `auth_permission` VALUES (60, 'Can view thing', 15, 'view_thing');
INSERT INTO `auth_permission` VALUES (61, 'Can add record', 16, 'add_record');
INSERT INTO `auth_permission` VALUES (62, 'Can change record', 16, 'change_record');
INSERT INTO `auth_permission` VALUES (63, 'Can delete record', 16, 'delete_record');
INSERT INTO `auth_permission` VALUES (64, 'Can view record', 16, 'view_record');
INSERT INTO `auth_permission` VALUES (65, 'Can add order log', 17, 'add_orderlog');
INSERT INTO `auth_permission` VALUES (66, 'Can change order log', 17, 'change_orderlog');
INSERT INTO `auth_permission` VALUES (67, 'Can delete order log', 17, 'delete_orderlog');
INSERT INTO `auth_permission` VALUES (68, 'Can view order log', 17, 'view_orderlog');
INSERT INTO `auth_permission` VALUES (69, 'Can add order', 18, 'add_order');
INSERT INTO `auth_permission` VALUES (70, 'Can change order', 18, 'change_order');
INSERT INTO `auth_permission` VALUES (71, 'Can delete order', 18, 'delete_order');
INSERT INTO `auth_permission` VALUES (72, 'Can view order', 18, 'view_order');
INSERT INTO `auth_permission` VALUES (73, 'Can add comment', 19, 'add_comment');
INSERT INTO `auth_permission` VALUES (74, 'Can change comment', 19, 'change_comment');
INSERT INTO `auth_permission` VALUES (75, 'Can delete comment', 19, 'delete_comment');
INSERT INTO `auth_permission` VALUES (76, 'Can view comment', 19, 'view_comment');
INSERT INTO `auth_permission` VALUES (77, 'Can add banner', 20, 'add_banner');
INSERT INTO `auth_permission` VALUES (78, 'Can change banner', 20, 'change_banner');
INSERT INTO `auth_permission` VALUES (79, 'Can delete banner', 20, 'delete_banner');
INSERT INTO `auth_permission` VALUES (80, 'Can view banner', 20, 'view_banner');
INSERT INTO `auth_permission` VALUES (81, 'Can add address', 21, 'add_address');
INSERT INTO `auth_permission` VALUES (82, 'Can change address', 21, 'change_address');
INSERT INTO `auth_permission` VALUES (83, 'Can delete address', 21, 'delete_address');
INSERT INTO `auth_permission` VALUES (84, 'Can view address', 21, 'view_address');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for b_ad
-- ----------------------------
DROP TABLE IF EXISTS `b_ad`;
CREATE TABLE `b_ad`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_ad
-- ----------------------------
INSERT INTO `b_ad` VALUES (1, 'ad/1687260782755.jpeg', 'http://www.baidu.com111', '2023-06-20 19:32:44.907970');

-- ----------------------------
-- Table structure for b_address
-- ----------------------------
DROP TABLE IF EXISTS `b_address`;
CREATE TABLE `b_address`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `desc` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `default` tinyint(1) NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_address_user_id_a37a8d6a_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_address_user_id_a37a8d6a_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_address
-- ----------------------------
INSERT INTO `b_address` VALUES (1, '刘德华', 'aaa', 'bbb', 0, '2023-06-20 19:14:53.742975', 2);

-- ----------------------------
-- Table structure for b_banner
-- ----------------------------
DROP TABLE IF EXISTS `b_banner`;
CREATE TABLE `b_banner`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_banner_thing_id_3f307d00_fk_b_thing_id`(`thing_id`) USING BTREE,
  CONSTRAINT `b_banner_thing_id_3f307d00_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_banner
-- ----------------------------

-- ----------------------------
-- Table structure for b_classification
-- ----------------------------
DROP TABLE IF EXISTS `b_classification`;
CREATE TABLE `b_classification`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_classification
-- ----------------------------
INSERT INTO `b_classification` VALUES (2, '猫咪类', '2023-06-20 18:56:47.586672');
INSERT INTO `b_classification` VALUES (3, '狗狗类', '2023-06-20 18:56:52.087622');
INSERT INTO `b_classification` VALUES (4, '兔子', '2023-06-20 19:18:39.636188');
INSERT INTO `b_classification` VALUES (5, '仓鼠', '2023-06-20 19:18:43.866035');

-- ----------------------------
-- Table structure for b_comment
-- ----------------------------
DROP TABLE IF EXISTS `b_comment`;
CREATE TABLE `b_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment_time` datetime(6) NULL DEFAULT NULL,
  `like_count` int(11) NOT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_comment_thing_id_57ab492b_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_comment_user_id_46f0670f_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_comment_thing_id_57ab492b_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_comment_user_id_46f0670f_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_comment
-- ----------------------------
INSERT INTO `b_comment` VALUES (1, 'dddd', '2023-06-20 19:30:06.063553', 0, 11, 2);
INSERT INTO `b_comment` VALUES (2, 'fff', '2023-06-20 19:30:07.515674', 0, 11, 2);
INSERT INTO `b_comment` VALUES (3, 'ddd', '2023-06-20 19:30:10.885762', 0, 11, 2);
INSERT INTO `b_comment` VALUES (4, 'aaa', '2023-06-20 19:30:12.944587', 0, 11, 2);
INSERT INTO `b_comment` VALUES (5, 'aa', '2023-06-20 19:30:28.612212', 0, 11, 2);
INSERT INTO `b_comment` VALUES (6, 'ddd', '2023-06-21 16:36:47.757804', 0, 5, 4);

-- ----------------------------
-- Table structure for b_error_log
-- ----------------------------
DROP TABLE IF EXISTS `b_error_log`;
CREATE TABLE `b_error_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_error_log
-- ----------------------------

-- ----------------------------
-- Table structure for b_login_log
-- ----------------------------
DROP TABLE IF EXISTS `b_login_log`;
CREATE TABLE `b_login_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_login_log
-- ----------------------------
INSERT INTO `b_login_log` VALUES (1, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-18 22:14:39.714474');
INSERT INTO `b_login_log` VALUES (2, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-20 18:56:22.387665');
INSERT INTO `b_login_log` VALUES (3, 'ddd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-20 19:14:45.364048');
INSERT INTO `b_login_log` VALUES (4, 'ddd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-20 19:32:21.427950');
INSERT INTO `b_login_log` VALUES (5, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-20 19:32:35.372765');
INSERT INTO `b_login_log` VALUES (6, 'admin123', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-21 16:36:06.845197');
INSERT INTO `b_login_log` VALUES (7, 'cdcd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-21 16:36:25.007819');
INSERT INTO `b_login_log` VALUES (8, 'admin123', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36', '2023-06-21 16:37:04.777923');

-- ----------------------------
-- Table structure for b_notice
-- ----------------------------
DROP TABLE IF EXISTS `b_notice`;
CREATE TABLE `b_notice`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_notice
-- ----------------------------
INSERT INTO `b_notice` VALUES (1, 'aaa', 'bbbbb', '2023-06-20 19:32:49.989135');
INSERT INTO `b_notice` VALUES (2, '测试', 'abcd', '2023-06-20 19:32:57.748885');

-- ----------------------------
-- Table structure for b_op_log
-- ----------------------------
DROP TABLE IF EXISTS `b_op_log`;
CREATE TABLE `b_op_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `re_ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_time` datetime(6) NULL DEFAULT NULL,
  `re_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `access_time` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 548 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_op_log
-- ----------------------------
INSERT INTO `b_op_log` VALUES (1, '127.0.0.1', '2023-06-18 22:13:10.964904', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (2, '127.0.0.1', '2023-06-18 22:13:10.966286', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (3, '127.0.0.1', '2023-06-18 22:13:10.967294', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (4, '127.0.0.1', '2023-06-18 22:13:10.968294', '/myapp/index/thing/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (5, '127.0.0.1', '2023-06-18 22:13:15.942594', '/myapp/admin/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (6, '127.0.0.1', '2023-06-18 22:13:15.959289', '/myapp/admin/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (7, '127.0.0.1', '2023-06-18 22:13:15.962419', '/myapp/admin/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (8, '127.0.0.1', '2023-06-18 22:13:17.457968', '/myapp/admin/overview/count', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (9, '127.0.0.1', '2023-06-18 22:13:43.629707', '/myapp/admin/adminLogin', 'POST', NULL, '14');
INSERT INTO `b_op_log` VALUES (10, '127.0.0.1', '2023-06-18 22:14:39.726426', '/myapp/admin/adminLogin', 'POST', NULL, '64');
INSERT INTO `b_op_log` VALUES (11, '127.0.0.1', '2023-06-18 22:14:39.944906', '/myapp/admin/overview/count', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (12, '127.0.0.1', '2023-06-18 22:16:45.409038', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (13, '127.0.0.1', '2023-06-18 22:16:45.410038', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (14, '127.0.0.1', '2023-06-18 22:16:45.411039', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (15, '127.0.0.1', '2023-06-18 22:17:06.281575', '/myapp/admin/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (16, '127.0.0.1', '2023-06-18 22:17:07.254360', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (17, '127.0.0.1', '2023-06-18 22:17:07.255360', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (18, '127.0.0.1', '2023-06-18 22:17:07.268949', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (19, '127.0.0.1', '2023-06-20 18:49:49.623766', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (20, '127.0.0.1', '2023-06-20 18:49:49.626682', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (21, '127.0.0.1', '2023-06-20 18:49:49.646384', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (22, '127.0.0.1', '2023-06-20 18:49:49.650400', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (23, '127.0.0.1', '2023-06-20 18:50:27.471984', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (24, '127.0.0.1', '2023-06-20 18:50:27.482233', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (25, '127.0.0.1', '2023-06-20 18:50:27.487124', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (26, '127.0.0.1', '2023-06-20 18:50:29.346287', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (27, '127.0.0.1', '2023-06-20 18:50:29.897128', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (28, '127.0.0.1', '2023-06-20 18:50:29.899165', '/myapp/admin/tag/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (29, '127.0.0.1', '2023-06-20 18:50:29.901197', '/myapp/admin/tag/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (30, '127.0.0.1', '2023-06-20 18:50:31.894701', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (31, '127.0.0.1', '2023-06-20 18:50:31.895760', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (32, '127.0.0.1', '2023-06-20 18:50:31.898179', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (33, '127.0.0.1', '2023-06-20 18:55:18.937714', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (34, '127.0.0.1', '2023-06-20 18:55:18.938711', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (35, '127.0.0.1', '2023-06-20 18:55:18.960039', '/myapp/admin/tag/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (36, '127.0.0.1', '2023-06-20 18:55:21.122865', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (37, '127.0.0.1', '2023-06-20 18:55:21.123864', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (38, '127.0.0.1', '2023-06-20 18:55:21.125874', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (39, '127.0.0.1', '2023-06-20 18:55:33.199047', '/myapp/admin/classification/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (40, '127.0.0.1', '2023-06-20 18:55:39.071762', '/myapp/admin/classification/create', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (41, '127.0.0.1', '2023-06-20 18:55:46.534306', '/myapp/admin/classification/create', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (42, '127.0.0.1', '2023-06-20 18:56:22.395657', '/myapp/admin/adminLogin', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (43, '127.0.0.1', '2023-06-20 18:56:22.840756', '/myapp/admin/overview/count', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (44, '127.0.0.1', '2023-06-20 18:56:26.306025', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (45, '127.0.0.1', '2023-06-20 18:56:37.844672', '/myapp/admin/classification/create', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (46, '127.0.0.1', '2023-06-20 18:56:37.872145', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (47, '127.0.0.1', '2023-06-20 18:56:47.591682', '/myapp/admin/classification/create', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (48, '127.0.0.1', '2023-06-20 18:56:47.632689', '/myapp/admin/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (49, '127.0.0.1', '2023-06-20 18:56:52.093642', '/myapp/admin/classification/create', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (50, '127.0.0.1', '2023-06-20 18:56:52.135760', '/myapp/admin/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (51, '127.0.0.1', '2023-06-20 18:56:53.373537', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (52, '127.0.0.1', '2023-06-20 18:57:06.321974', '/myapp/admin/tag/create', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (53, '127.0.0.1', '2023-06-20 18:57:06.341828', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (54, '127.0.0.1', '2023-06-20 18:57:11.873729', '/myapp/admin/tag/create', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (55, '127.0.0.1', '2023-06-20 18:57:11.895721', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (56, '127.0.0.1', '2023-06-20 18:57:20.598814', '/myapp/admin/tag/create', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (57, '127.0.0.1', '2023-06-20 18:57:20.621705', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (58, '127.0.0.1', '2023-06-20 18:57:24.092509', '/myapp/admin/order/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (59, '127.0.0.1', '2023-06-20 18:57:24.640654', '/myapp/admin/tag/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (60, '127.0.0.1', '2023-06-20 18:57:25.476762', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (61, '127.0.0.1', '2023-06-20 18:57:25.479103', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (62, '127.0.0.1', '2023-06-20 18:57:25.494140', '/myapp/admin/classification/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (63, '127.0.0.1', '2023-06-20 18:59:17.125394', '/myapp/admin/thing/create', 'POST', NULL, '331');
INSERT INTO `b_op_log` VALUES (64, '127.0.0.1', '2023-06-20 18:59:17.195579', '/myapp/admin/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (65, '127.0.0.1', '2023-06-20 18:59:19.775646', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (66, '127.0.0.1', '2023-06-20 18:59:19.777648', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (67, '127.0.0.1', '2023-06-20 18:59:19.784642', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (68, '127.0.0.1', '2023-06-20 18:59:19.794639', '/myapp/index/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (69, '127.0.0.1', '2023-06-20 18:59:19.821276', '/upload/cover/1687258713493.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (70, '127.0.0.1', '2023-06-20 18:59:52.339634', '/myapp/admin/thing/create', 'POST', NULL, '77');
INSERT INTO `b_op_log` VALUES (71, '127.0.0.1', '2023-06-20 18:59:52.433887', '/myapp/admin/thing/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (72, '127.0.0.1', '2023-06-20 19:00:23.560716', '/myapp/admin/thing/create', 'POST', NULL, '96');
INSERT INTO `b_op_log` VALUES (73, '127.0.0.1', '2023-06-20 19:00:23.723862', '/myapp/admin/thing/list', 'GET', NULL, '63');
INSERT INTO `b_op_log` VALUES (74, '127.0.0.1', '2023-06-20 19:00:27.281192', '/myapp/admin/classification/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (75, '127.0.0.1', '2023-06-20 19:00:28.481089', '/myapp/admin/tag/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (76, '127.0.0.1', '2023-06-20 19:00:29.541472', '/myapp/admin/order/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (77, '127.0.0.1', '2023-06-20 19:00:30.726633', '/myapp/admin/comment/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (78, '127.0.0.1', '2023-06-20 19:00:32.151668', '/myapp/admin/user/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (79, '127.0.0.1', '2023-06-20 19:00:36.177777', '/myapp/admin/ad/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (80, '127.0.0.1', '2023-06-20 19:00:36.898965', '/myapp/admin/notice/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (81, '127.0.0.1', '2023-06-20 19:00:40.138969', '/myapp/admin/loginLog/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (82, '127.0.0.1', '2023-06-20 19:00:40.915422', '/myapp/admin/opLog/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (83, '127.0.0.1', '2023-06-20 19:00:43.356790', '/myapp/admin/overview/count', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (84, '127.0.0.1', '2023-06-20 19:00:49.281187', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1057');
INSERT INTO `b_op_log` VALUES (85, '127.0.0.1', '2023-06-20 19:00:50.469446', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (86, '127.0.0.1', '2023-06-20 19:01:23.745393', '/myapp/admin/tag/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (87, '127.0.0.1', '2023-06-20 19:01:24.483701', '/myapp/admin/comment/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (88, '127.0.0.1', '2023-06-20 19:01:26.780725', '/myapp/index/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (89, '127.0.0.1', '2023-06-20 19:01:26.782724', '/myapp/index/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (90, '127.0.0.1', '2023-06-20 19:01:26.801756', '/myapp/index/tag/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (91, '127.0.0.1', '2023-06-20 19:01:26.827297', '/myapp/index/tag/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (92, '127.0.0.1', '2023-06-20 19:01:26.859300', '/upload/cover/1687258713493.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (93, '127.0.0.1', '2023-06-20 19:01:26.863298', '/upload/cover/1687258713493.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (94, '127.0.0.1', '2023-06-20 19:01:26.883288', '/upload/cover/1687258713493.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (95, '127.0.0.1', '2023-06-20 19:02:08.147684', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (96, '127.0.0.1', '2023-06-20 19:02:08.148772', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (97, '127.0.0.1', '2023-06-20 19:02:08.174815', '/myapp/admin/tag/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (98, '127.0.0.1', '2023-06-20 19:03:15.385484', '/myapp/admin/thing/create', 'POST', NULL, '112');
INSERT INTO `b_op_log` VALUES (99, '127.0.0.1', '2023-06-20 19:03:15.466825', '/myapp/admin/thing/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (100, '127.0.0.1', '2023-06-20 19:03:36.896344', '/myapp/index/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (101, '127.0.0.1', '2023-06-20 19:03:36.900437', '/myapp/index/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (102, '127.0.0.1', '2023-06-20 19:03:36.911787', '/myapp/index/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (103, '127.0.0.1', '2023-06-20 19:03:36.935374', '/myapp/index/classification/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (104, '127.0.0.1', '2023-06-20 19:03:36.968290', '/upload/cover/1687258713493.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (105, '127.0.0.1', '2023-06-20 19:03:36.970293', '/upload/cover/1687258713493.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (106, '127.0.0.1', '2023-06-20 19:03:36.971291', '/upload/cover/1687258713493.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (107, '127.0.0.1', '2023-06-20 19:03:36.978497', '/upload/cover/1687258953981.png', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (108, '127.0.0.1', '2023-06-20 19:06:08.255946', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (109, '127.0.0.1', '2023-06-20 19:06:08.256945', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (110, '127.0.0.1', '2023-06-20 19:06:08.313970', '/myapp/admin/tag/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (111, '127.0.0.1', '2023-06-20 19:06:12.300790', '/myapp/index/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (112, '127.0.0.1', '2023-06-20 19:06:12.302027', '/myapp/index/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (113, '127.0.0.1', '2023-06-20 19:06:12.305044', '/myapp/index/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (114, '127.0.0.1', '2023-06-20 19:06:12.317232', '/myapp/index/tag/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (115, '127.0.0.1', '2023-06-20 19:06:12.335360', '/upload/cover/1687258713493.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (116, '127.0.0.1', '2023-06-20 19:06:12.336361', '/upload/cover/1687258713493.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (117, '127.0.0.1', '2023-06-20 19:06:12.354275', '/upload/cover/1687258713493.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (118, '127.0.0.1', '2023-06-20 19:06:12.354275', '/upload/cover/1687258713493.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (119, '127.0.0.1', '2023-06-20 19:07:43.469115', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (120, '127.0.0.1', '2023-06-20 19:07:43.497743', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (121, '127.0.0.1', '2023-06-20 19:07:43.521144', '/upload/cover/1687258713493.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (122, '127.0.0.1', '2023-06-20 19:07:43.521144', '/upload/cover/1687258713493.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (123, '127.0.0.1', '2023-06-20 19:07:43.521144', '/upload/cover/1687258713493.jpeg', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (124, '127.0.0.1', '2023-06-20 19:07:43.522143', '/upload/cover/1687258713493.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (125, '127.0.0.1', '2023-06-20 19:08:18.032223', '/myapp/index/comment/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (126, '127.0.0.1', '2023-06-20 19:08:18.063270', '/myapp/index/thing/detail', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (127, '127.0.0.1', '2023-06-20 19:08:18.074647', '/myapp/index/thing/detail', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (128, '127.0.0.1', '2023-06-20 19:08:18.088648', '/myapp/index/thing/detail', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (129, '127.0.0.1', '2023-06-20 19:08:18.120683', '/upload/cover/1687258953981.png', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (130, '127.0.0.1', '2023-06-20 19:09:40.538203', '/myapp/index/thing/detail', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (131, '127.0.0.1', '2023-06-20 19:09:40.546852', '/myapp/index/thing/detail', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (132, '127.0.0.1', '2023-06-20 19:09:40.560977', '/myapp/index/thing/detail', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (133, '127.0.0.1', '2023-06-20 19:09:40.562491', '/myapp/index/thing/detail', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (134, '127.0.0.1', '2023-06-20 19:09:40.577737', '/upload/cover/1687258953981.png', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (135, '127.0.0.1', '2023-06-20 19:09:40.577737', '/upload/cover/1687258953981.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (136, '127.0.0.1', '2023-06-20 19:09:40.577737', '/upload/cover/1687258953981.png', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (137, '127.0.0.1', '2023-06-20 19:09:40.578746', '/upload/cover/1687258953981.png', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (138, '127.0.0.1', '2023-06-20 19:09:56.283661', '/myapp/index/comment/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (139, '127.0.0.1', '2023-06-20 19:09:56.296662', '/myapp/index/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (140, '127.0.0.1', '2023-06-20 19:09:56.307662', '/myapp/index/comment/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (141, '127.0.0.1', '2023-06-20 19:09:56.311737', '/myapp/index/comment/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (142, '127.0.0.1', '2023-06-20 19:13:51.810547', '/myapp/index/address/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (143, '127.0.0.1', '2023-06-20 19:13:51.811515', '/myapp/index/address/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (144, '127.0.0.1', '2023-06-20 19:14:27.938670', '/myapp/index/address/create', 'POST', NULL, '19');
INSERT INTO `b_op_log` VALUES (145, '127.0.0.1', '2023-06-20 19:14:35.523329', '/myapp/index/thing/list', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (146, '127.0.0.1', '2023-06-20 19:14:35.524330', '/myapp/index/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (147, '127.0.0.1', '2023-06-20 19:14:35.525325', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (148, '127.0.0.1', '2023-06-20 19:14:35.535331', '/myapp/index/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (149, '127.0.0.1', '2023-06-20 19:14:35.550007', '/upload/cover/1687258812642.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (150, '127.0.0.1', '2023-06-20 19:14:35.551007', '/upload/cover/1687258812642.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (151, '127.0.0.1', '2023-06-20 19:14:35.551007', '/upload/cover/1687258812642.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (152, '127.0.0.1', '2023-06-20 19:14:35.551007', '/upload/cover/1687258812642.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (153, '127.0.0.1', '2023-06-20 19:14:42.685933', '/myapp/index/user/register', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (154, '127.0.0.1', '2023-06-20 19:14:45.369063', '/myapp/index/user/login', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (155, '127.0.0.1', '2023-06-20 19:14:45.440173', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (156, '127.0.0.1', '2023-06-20 19:14:45.443176', '/myapp/index/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (157, '127.0.0.1', '2023-06-20 19:14:45.448340', '/myapp/index/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (158, '127.0.0.1', '2023-06-20 19:14:45.461344', '/myapp/index/thing/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (159, '127.0.0.1', '2023-06-20 19:14:47.863399', '/myapp/index/thing/detail', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (160, '127.0.0.1', '2023-06-20 19:14:47.872413', '/myapp/index/thing/detail', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (161, '127.0.0.1', '2023-06-20 19:14:47.873395', '/myapp/index/thing/detail', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (162, '127.0.0.1', '2023-06-20 19:14:47.877933', '/myapp/index/thing/detail', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (163, '127.0.0.1', '2023-06-20 19:14:48.865555', '/myapp/index/address/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (164, '127.0.0.1', '2023-06-20 19:14:48.873515', '/myapp/index/address/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (165, '127.0.0.1', '2023-06-20 19:14:53.755784', '/myapp/index/address/create', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (166, '127.0.0.1', '2023-06-20 19:14:54.822383', '/myapp/index/order/create', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (167, '127.0.0.1', '2023-06-20 19:15:33.824780', '/myapp/index/address/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (168, '127.0.0.1', '2023-06-20 19:15:33.826399', '/myapp/index/address/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (169, '127.0.0.1', '2023-06-20 19:15:34.837248', '/myapp/index/order/create', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (170, '127.0.0.1', '2023-06-20 19:15:34.960069', '/myapp/index/notice/list_api', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (171, '127.0.0.1', '2023-06-20 19:15:38.098045', '/myapp/index/order/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (172, '127.0.0.1', '2023-06-20 19:15:38.107045', '/myapp/index/order/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (173, '127.0.0.1', '2023-06-20 19:15:38.110045', '/myapp/index/order/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (174, '127.0.0.1', '2023-06-20 19:15:38.118046', '/myapp/index/order/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (175, '127.0.0.1', '2023-06-20 19:15:41.646180', '/myapp/index/comment/listMyComments', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (176, '127.0.0.1', '2023-06-20 19:15:42.825642', '/myapp/index/address/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (177, '127.0.0.1', '2023-06-20 19:15:44.217311', '/myapp/index/order/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (178, '127.0.0.1', '2023-06-20 19:15:45.111018', '/myapp/index/user/info', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (179, '127.0.0.1', '2023-06-20 19:15:46.051518', '/myapp/index/thing/getWishThingList', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (180, '127.0.0.1', '2023-06-20 19:15:46.720029', '/myapp/index/thing/getCollectThingList', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (181, '127.0.0.1', '2023-06-20 19:16:17.570246', '/myapp/index/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (182, '127.0.0.1', '2023-06-20 19:16:17.571499', '/myapp/index/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (183, '127.0.0.1', '2023-06-20 19:16:17.573530', '/myapp/index/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (184, '127.0.0.1', '2023-06-20 19:16:17.583745', '/myapp/index/tag/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (185, '127.0.0.1', '2023-06-20 19:16:17.618320', '/upload/cover/1687258713493.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (186, '127.0.0.1', '2023-06-20 19:16:17.618320', '/upload/cover/1687258713493.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (187, '127.0.0.1', '2023-06-20 19:16:17.619316', '/upload/cover/1687258713493.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (188, '127.0.0.1', '2023-06-20 19:16:17.619316', '/upload/cover/1687258713493.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (189, '127.0.0.1', '2023-06-20 19:16:17.849027', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (190, '127.0.0.1', '2023-06-20 19:16:17.850027', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (191, '127.0.0.1', '2023-06-20 19:16:17.870029', '/myapp/admin/tag/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (192, '127.0.0.1', '2023-06-20 19:16:17.921541', '/myapp/index/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (193, '127.0.0.1', '2023-06-20 19:16:17.922561', '/myapp/index/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (194, '127.0.0.1', '2023-06-20 19:16:17.923572', '/myapp/index/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (195, '127.0.0.1', '2023-06-20 19:16:17.934745', '/myapp/index/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (196, '127.0.0.1', '2023-06-20 19:16:25.837995', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (197, '127.0.0.1', '2023-06-20 19:16:26.499010', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (198, '127.0.0.1', '2023-06-20 19:16:26.502006', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (199, '127.0.0.1', '2023-06-20 19:16:26.517108', '/myapp/admin/tag/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (200, '127.0.0.1', '2023-06-20 19:17:19.727754', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (201, '127.0.0.1', '2023-06-20 19:17:19.730766', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (202, '127.0.0.1', '2023-06-20 19:17:19.743756', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (203, '127.0.0.1', '2023-06-20 19:17:23.734489', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (204, '127.0.0.1', '2023-06-20 19:17:23.735982', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (205, '127.0.0.1', '2023-06-20 19:17:23.755549', '/myapp/admin/tag/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (206, '127.0.0.1', '2023-06-20 19:17:36.301475', '/myapp/admin/thing/update', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (207, '127.0.0.1', '2023-06-20 19:17:36.374705', '/myapp/admin/thing/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (208, '127.0.0.1', '2023-06-20 19:17:42.654055', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (209, '127.0.0.1', '2023-06-20 19:17:43.264592', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (210, '127.0.0.1', '2023-06-20 19:17:44.750743', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (211, '127.0.0.1', '2023-06-20 19:17:44.751754', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (212, '127.0.0.1', '2023-06-20 19:17:44.752744', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (213, '127.0.0.1', '2023-06-20 19:17:44.765744', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (214, '127.0.0.1', '2023-06-20 19:17:44.775258', '/upload/cover/1687258953981.png', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (215, '127.0.0.1', '2023-06-20 19:18:30.164355', '/myapp/admin/thing/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (216, '127.0.0.1', '2023-06-20 19:18:30.165355', '/myapp/admin/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (217, '127.0.0.1', '2023-06-20 19:18:30.197733', '/myapp/admin/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (218, '127.0.0.1', '2023-06-20 19:18:31.224463', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (219, '127.0.0.1', '2023-06-20 19:18:39.643108', '/myapp/admin/classification/create', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (220, '127.0.0.1', '2023-06-20 19:18:39.697071', '/myapp/admin/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (221, '127.0.0.1', '2023-06-20 19:18:43.870546', '/myapp/admin/classification/create', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (222, '127.0.0.1', '2023-06-20 19:18:43.909980', '/myapp/admin/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (223, '127.0.0.1', '2023-06-20 19:19:22.881287', '/myapp/admin/tag/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (224, '127.0.0.1', '2023-06-20 19:19:27.175538', '/myapp/admin/tag/create', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (225, '127.0.0.1', '2023-06-20 19:19:27.210832', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (226, '127.0.0.1', '2023-06-20 19:19:31.764489', '/myapp/admin/tag/create', 'POST', NULL, '16');
INSERT INTO `b_op_log` VALUES (227, '127.0.0.1', '2023-06-20 19:19:31.790870', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (228, '127.0.0.1', '2023-06-20 19:19:35.740875', '/myapp/admin/tag/create', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (229, '127.0.0.1', '2023-06-20 19:19:35.790562', '/myapp/admin/tag/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (230, '127.0.0.1', '2023-06-20 19:19:37.677133', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (231, '127.0.0.1', '2023-06-20 19:19:37.679180', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (232, '127.0.0.1', '2023-06-20 19:19:37.680214', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (233, '127.0.0.1', '2023-06-20 19:19:37.693026', '/myapp/index/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (234, '127.0.0.1', '2023-06-20 19:19:37.707818', '/upload/cover/1687258713493.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (235, '127.0.0.1', '2023-06-20 19:19:37.708830', '/upload/cover/1687258713493.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (236, '127.0.0.1', '2023-06-20 19:19:37.708830', '/upload/cover/1687258713493.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (237, '127.0.0.1', '2023-06-20 19:19:37.708830', '/upload/cover/1687258713493.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (238, '127.0.0.1', '2023-06-20 19:19:55.527945', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (239, '127.0.0.1', '2023-06-20 19:19:55.554537', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (240, '127.0.0.1', '2023-06-20 19:19:55.568538', '/myapp/admin/tag/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (241, '127.0.0.1', '2023-06-20 19:20:00.154710', '/myapp/admin/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (242, '127.0.0.1', '2023-06-20 19:20:01.404788', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (243, '127.0.0.1', '2023-06-20 19:20:01.420776', '/myapp/admin/tag/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (244, '127.0.0.1', '2023-06-20 19:20:01.436871', '/myapp/admin/tag/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (245, '127.0.0.1', '2023-06-20 19:21:32.156156', '/myapp/admin/thing/create', 'POST', NULL, '124');
INSERT INTO `b_op_log` VALUES (246, '127.0.0.1', '2023-06-20 19:21:32.262210', '/myapp/admin/thing/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (247, '127.0.0.1', '2023-06-20 19:22:15.021762', '/myapp/admin/thing/create', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (248, '127.0.0.1', '2023-06-20 19:22:15.140866', '/myapp/admin/thing/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (249, '127.0.0.1', '2023-06-20 19:23:26.310880', '/myapp/admin/thing/create', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (250, '127.0.0.1', '2023-06-20 19:23:26.422693', '/myapp/admin/thing/list', 'GET', NULL, '59');
INSERT INTO `b_op_log` VALUES (251, '127.0.0.1', '2023-06-20 19:24:14.091473', '/myapp/admin/thing/create', 'POST', NULL, '79');
INSERT INTO `b_op_log` VALUES (252, '127.0.0.1', '2023-06-20 19:24:14.156000', '/myapp/admin/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (253, '127.0.0.1', '2023-06-20 19:25:48.043589', '/myapp/admin/thing/create', 'POST', NULL, '69');
INSERT INTO `b_op_log` VALUES (254, '127.0.0.1', '2023-06-20 19:25:48.163214', '/myapp/admin/thing/list', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (255, '127.0.0.1', '2023-06-20 19:26:39.189638', '/myapp/admin/thing/create', 'POST', NULL, '64');
INSERT INTO `b_op_log` VALUES (256, '127.0.0.1', '2023-06-20 19:26:39.331909', '/myapp/admin/thing/list', 'GET', NULL, '106');
INSERT INTO `b_op_log` VALUES (257, '127.0.0.1', '2023-06-20 19:26:41.150430', '/myapp/index/thing/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (258, '127.0.0.1', '2023-06-20 19:26:41.152480', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (259, '127.0.0.1', '2023-06-20 19:26:41.153497', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (260, '127.0.0.1', '2023-06-20 19:26:41.175229', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (261, '127.0.0.1', '2023-06-20 19:26:41.197584', '/upload/cover/1687258953981.png', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (262, '127.0.0.1', '2023-06-20 19:26:41.198576', '/upload/cover/1687260228638.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (263, '127.0.0.1', '2023-06-20 19:26:41.200584', '/upload/cover/1687260111383.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (264, '127.0.0.1', '2023-06-20 19:26:41.201576', '/upload/cover/1687260111383.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (265, '127.0.0.1', '2023-06-20 19:26:41.202576', '/upload/cover/1687260111383.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (266, '127.0.0.1', '2023-06-20 19:26:41.204576', '/upload/cover/1687260111383.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (267, '127.0.0.1', '2023-06-20 19:26:41.214578', '/upload/cover/1687260056932.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (268, '127.0.0.1', '2023-06-20 19:26:41.214578', '/upload/cover/1687258812642.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (269, '127.0.0.1', '2023-06-20 19:26:41.217578', '/upload/cover/1687258782902.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (270, '127.0.0.1', '2023-06-20 19:26:41.225583', '/upload/cover/1687258713493.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (271, '127.0.0.1', '2023-06-20 19:27:24.873675', '/myapp/admin/thing/create', 'POST', NULL, '72');
INSERT INTO `b_op_log` VALUES (272, '127.0.0.1', '2023-06-20 19:27:24.974660', '/myapp/admin/thing/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (273, '127.0.0.1', '2023-06-20 19:28:01.743131', '/myapp/admin/thing/create', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (274, '127.0.0.1', '2023-06-20 19:28:01.908745', '/myapp/admin/thing/list', 'GET', NULL, '120');
INSERT INTO `b_op_log` VALUES (275, '127.0.0.1', '2023-06-20 19:28:05.741874', '/myapp/index/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (276, '127.0.0.1', '2023-06-20 19:28:05.743908', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (277, '127.0.0.1', '2023-06-20 19:28:05.744866', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (278, '127.0.0.1', '2023-06-20 19:28:05.767887', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (279, '127.0.0.1', '2023-06-20 19:28:05.788854', '/upload/cover/1687260056932.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (280, '127.0.0.1', '2023-06-20 19:28:05.790854', '/upload/cover/1687260056932.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (281, '127.0.0.1', '2023-06-20 19:28:05.790854', '/upload/cover/1687260056932.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (282, '127.0.0.1', '2023-06-20 19:28:05.790854', '/upload/cover/1687260056932.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (283, '127.0.0.1', '2023-06-20 19:28:05.791852', '/upload/cover/1687260056932.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (284, '127.0.0.1', '2023-06-20 19:28:05.791852', '/upload/cover/1687260056932.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (285, '127.0.0.1', '2023-06-20 19:28:05.802646', '/upload/cover/1687260425529.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (286, '127.0.0.1', '2023-06-20 19:28:05.811210', '/upload/cover/1687260459725.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (287, '127.0.0.1', '2023-06-20 19:28:27.437418', '/myapp/admin/thing/update', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (288, '127.0.0.1', '2023-06-20 19:28:27.526029', '/myapp/admin/thing/list', 'GET', NULL, '54');
INSERT INTO `b_op_log` VALUES (289, '127.0.0.1', '2023-06-20 19:28:30.313609', '/myapp/index/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (290, '127.0.0.1', '2023-06-20 19:28:30.317853', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (291, '127.0.0.1', '2023-06-20 19:28:30.319866', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (292, '127.0.0.1', '2023-06-20 19:28:30.340873', '/myapp/index/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (293, '127.0.0.1', '2023-06-20 19:28:30.360948', '/upload/cover/1687260505646.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (294, '127.0.0.1', '2023-06-20 19:28:30.360948', '/upload/cover/1687260505646.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (295, '127.0.0.1', '2023-06-20 19:28:30.360948', '/upload/cover/1687260505646.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (296, '127.0.0.1', '2023-06-20 19:28:30.360948', '/upload/cover/1687260505646.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (297, '127.0.0.1', '2023-06-20 19:28:30.361951', '/upload/cover/1687260505646.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (298, '127.0.0.1', '2023-06-20 19:28:30.361951', '/upload/cover/1687260505646.jpeg', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (299, '127.0.0.1', '2023-06-20 19:28:37.455905', '/upload/cover/1687260505646.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (300, '127.0.0.1', '2023-06-20 19:28:43.584297', '/myapp/admin/thing/update', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (301, '127.0.0.1', '2023-06-20 19:28:43.698207', '/myapp/admin/thing/list', 'GET', NULL, '50');
INSERT INTO `b_op_log` VALUES (302, '127.0.0.1', '2023-06-20 19:28:59.893347', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (303, '127.0.0.1', '2023-06-20 19:28:59.894371', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (304, '127.0.0.1', '2023-06-20 19:28:59.935740', '/myapp/admin/tag/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (305, '127.0.0.1', '2023-06-20 19:29:10.790417', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (306, '127.0.0.1', '2023-06-20 19:29:10.791430', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (307, '127.0.0.1', '2023-06-20 19:29:10.865790', '/myapp/admin/classification/list', 'GET', NULL, '78');
INSERT INTO `b_op_log` VALUES (308, '127.0.0.1', '2023-06-20 19:29:19.923337', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (309, '127.0.0.1', '2023-06-20 19:29:19.931330', '/myapp/admin/tag/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (310, '127.0.0.1', '2023-06-20 19:29:19.979085', '/myapp/admin/tag/list', 'GET', NULL, '65');
INSERT INTO `b_op_log` VALUES (311, '127.0.0.1', '2023-06-20 19:29:22.985791', '/upload/cover/1687260459725.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (312, '127.0.0.1', '2023-06-20 19:29:24.461715', '/myapp/admin/thing/update', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (313, '127.0.0.1', '2023-06-20 19:29:24.577287', '/myapp/admin/thing/list', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (314, '127.0.0.1', '2023-06-20 19:29:33.582943', '/myapp/index/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (315, '127.0.0.1', '2023-06-20 19:29:33.583936', '/myapp/index/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (316, '127.0.0.1', '2023-06-20 19:29:33.585937', '/myapp/index/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (317, '127.0.0.1', '2023-06-20 19:29:33.608940', '/myapp/index/classification/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (318, '127.0.0.1', '2023-06-20 19:29:33.624312', '/upload/cover/1687260228638.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (319, '127.0.0.1', '2023-06-20 19:29:33.625524', '/upload/cover/1687260228638.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (320, '127.0.0.1', '2023-06-20 19:29:33.625524', '/upload/cover/1687260228638.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (321, '127.0.0.1', '2023-06-20 19:29:33.625524', '/upload/cover/1687260228638.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (322, '127.0.0.1', '2023-06-20 19:29:33.627000', '/upload/cover/1687260228638.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (323, '127.0.0.1', '2023-06-20 19:29:33.627000', '/upload/cover/1687260228638.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (324, '127.0.0.1', '2023-06-20 19:29:33.635753', '/upload/cover/1687260111383.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (325, '127.0.0.1', '2023-06-20 19:29:33.636774', '/upload/cover/1687260056932.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (326, '127.0.0.1', '2023-06-20 19:29:33.638803', '/upload/cover/1687260505646.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (327, '127.0.0.1', '2023-06-20 19:29:33.641094', '/upload/cover/1687258713493.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (328, '127.0.0.1', '2023-06-20 19:29:33.643309', '/upload/cover/1687258812642.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (329, '127.0.0.1', '2023-06-20 19:29:33.643309', '/upload/cover/1687258812642.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (330, '127.0.0.1', '2023-06-20 19:29:36.622862', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (331, '127.0.0.1', '2023-06-20 19:29:37.106250', '/myapp/index/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (332, '127.0.0.1', '2023-06-20 19:29:37.612805', '/myapp/index/thing/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (333, '127.0.0.1', '2023-06-20 19:29:38.094805', '/myapp/index/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (334, '127.0.0.1', '2023-06-20 19:29:38.533657', '/myapp/index/thing/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (335, '127.0.0.1', '2023-06-20 19:29:39.152416', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (336, '127.0.0.1', '2023-06-20 19:29:39.580758', '/myapp/index/thing/list', 'GET', NULL, '45');
INSERT INTO `b_op_log` VALUES (337, '127.0.0.1', '2023-06-20 19:29:40.176972', '/myapp/index/thing/list', 'GET', NULL, '75');
INSERT INTO `b_op_log` VALUES (338, '127.0.0.1', '2023-06-20 19:29:46.367646', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (339, '127.0.0.1', '2023-06-20 19:29:50.048098', '/myapp/admin/classification/delete', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (340, '127.0.0.1', '2023-06-20 19:29:50.079764', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (341, '127.0.0.1', '2023-06-20 19:29:51.184437', '/myapp/admin/tag/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (342, '127.0.0.1', '2023-06-20 19:29:52.758318', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (343, '127.0.0.1', '2023-06-20 19:29:52.770904', '/myapp/admin/tag/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (344, '127.0.0.1', '2023-06-20 19:29:52.824151', '/myapp/admin/tag/list', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (345, '127.0.0.1', '2023-06-20 19:29:56.844156', '/myapp/index/thing/detail', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (346, '127.0.0.1', '2023-06-20 19:29:56.850153', '/myapp/index/thing/detail', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (347, '127.0.0.1', '2023-06-20 19:29:56.869153', '/myapp/index/thing/detail', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (348, '127.0.0.1', '2023-06-20 19:29:56.875154', '/myapp/index/thing/detail', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (349, '127.0.0.1', '2023-06-20 19:29:56.879155', '/upload/cover/1687260425529.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (350, '127.0.0.1', '2023-06-20 19:29:56.884154', '/upload/cover/1687260505646.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (351, '127.0.0.1', '2023-06-20 19:30:01.216346', '/myapp/index/thing/addWishUser', 'POST', NULL, '59');
INSERT INTO `b_op_log` VALUES (352, '127.0.0.1', '2023-06-20 19:30:01.255021', '/myapp/index/thing/detail', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (353, '127.0.0.1', '2023-06-20 19:30:01.539404', '/myapp/index/thing/addCollectUser', 'POST', NULL, '60');
INSERT INTO `b_op_log` VALUES (354, '127.0.0.1', '2023-06-20 19:30:01.569877', '/myapp/index/thing/detail', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (355, '127.0.0.1', '2023-06-20 19:30:06.072554', '/myapp/index/comment/create', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (356, '127.0.0.1', '2023-06-20 19:30:06.117450', '/myapp/index/comment/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (357, '127.0.0.1', '2023-06-20 19:30:07.530727', '/myapp/index/comment/create', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (358, '127.0.0.1', '2023-06-20 19:30:07.556664', '/myapp/index/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (359, '127.0.0.1', '2023-06-20 19:30:10.893035', '/myapp/index/comment/create', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (360, '127.0.0.1', '2023-06-20 19:30:10.945478', '/myapp/index/comment/list', 'GET', NULL, '43');
INSERT INTO `b_op_log` VALUES (361, '127.0.0.1', '2023-06-20 19:30:12.953435', '/myapp/index/comment/create', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (362, '127.0.0.1', '2023-06-20 19:30:12.980847', '/myapp/index/comment/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (363, '127.0.0.1', '2023-06-20 19:30:28.617235', '/myapp/index/comment/create', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (364, '127.0.0.1', '2023-06-20 19:30:28.646118', '/myapp/index/comment/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (365, '127.0.0.1', '2023-06-20 19:30:31.057640', '/myapp/index/address/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (366, '127.0.0.1', '2023-06-20 19:30:31.059814', '/myapp/index/address/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (367, '127.0.0.1', '2023-06-20 19:30:35.467083', '/myapp/index/order/create', 'POST', NULL, '52');
INSERT INTO `b_op_log` VALUES (368, '127.0.0.1', '2023-06-20 19:30:35.517783', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (369, '127.0.0.1', '2023-06-20 19:30:37.758871', '/myapp/index/user/info', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (370, '127.0.0.1', '2023-06-20 19:30:37.763514', '/myapp/index/user/info', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (371, '127.0.0.1', '2023-06-20 19:30:37.773513', '/myapp/index/user/info', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (372, '127.0.0.1', '2023-06-20 19:30:37.772512', '/myapp/index/user/info', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (373, '127.0.0.1', '2023-06-20 19:30:39.275548', '/myapp/index/order/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (374, '127.0.0.1', '2023-06-20 19:30:40.435920', '/myapp/index/comment/listMyComments', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (375, '127.0.0.1', '2023-06-20 19:30:41.711364', '/myapp/index/address/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (376, '127.0.0.1', '2023-06-20 19:30:42.859209', '/myapp/index/user/info', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (377, '127.0.0.1', '2023-06-20 19:30:44.366069', '/myapp/index/user/info', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (378, '127.0.0.1', '2023-06-20 19:30:45.518220', '/myapp/index/order/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (379, '127.0.0.1', '2023-06-20 19:30:49.275837', '/myapp/index/comment/listMyComments', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (380, '127.0.0.1', '2023-06-20 19:31:41.009393', '/myapp/index/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (381, '127.0.0.1', '2023-06-20 19:31:41.011353', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (382, '127.0.0.1', '2023-06-20 19:31:41.017367', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (383, '127.0.0.1', '2023-06-20 19:31:41.040102', '/myapp/index/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (384, '127.0.0.1', '2023-06-20 19:31:41.060607', '/upload/cover/1687260187342.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (385, '127.0.0.1', '2023-06-20 19:31:41.060607', '/upload/cover/1687260187342.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (386, '127.0.0.1', '2023-06-20 19:31:41.061610', '/upload/cover/1687260187342.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (387, '127.0.0.1', '2023-06-20 19:31:41.061610', '/upload/cover/1687260187342.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (388, '127.0.0.1', '2023-06-20 19:31:41.061610', '/upload/cover/1687260187342.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (389, '127.0.0.1', '2023-06-20 19:31:41.061610', '/upload/cover/1687260187342.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (390, '127.0.0.1', '2023-06-20 19:31:41.071003', '/upload/cover/1687260111383.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (391, '127.0.0.1', '2023-06-20 19:31:41.073168', '/upload/cover/1687260056932.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (392, '127.0.0.1', '2023-06-20 19:31:41.073168', '/upload/cover/1687260056932.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (393, '127.0.0.1', '2023-06-20 19:31:42.001389', '/myapp/admin/overview/count', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (394, '127.0.0.1', '2023-06-20 19:31:44.315134', '/myapp/admin/overview/count', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (395, '127.0.0.1', '2023-06-20 19:31:49.742193', '/myapp/admin/overview/count', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (396, '127.0.0.1', '2023-06-20 19:32:12.606493', '/myapp/index/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (397, '127.0.0.1', '2023-06-20 19:32:12.608524', '/myapp/index/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (398, '127.0.0.1', '2023-06-20 19:32:12.612982', '/myapp/index/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (399, '127.0.0.1', '2023-06-20 19:32:12.637542', '/myapp/index/thing/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (400, '127.0.0.1', '2023-06-20 19:32:12.659333', '/upload/cover/1687260505646.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (401, '127.0.0.1', '2023-06-20 19:32:12.659333', '/upload/cover/1687260505646.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (402, '127.0.0.1', '2023-06-20 19:32:12.659333', '/upload/cover/1687260505646.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (403, '127.0.0.1', '2023-06-20 19:32:12.673577', '/upload/cover/1687260505646.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (404, '127.0.0.1', '2023-06-20 19:32:14.672459', '/myapp/index/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (405, '127.0.0.1', '2023-06-20 19:32:14.673474', '/myapp/index/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (406, '127.0.0.1', '2023-06-20 19:32:14.677509', '/myapp/index/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (407, '127.0.0.1', '2023-06-20 19:32:14.699382', '/myapp/index/classification/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (408, '127.0.0.1', '2023-06-20 19:32:21.435945', '/myapp/index/user/login', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (409, '127.0.0.1', '2023-06-20 19:32:21.498212', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (410, '127.0.0.1', '2023-06-20 19:32:21.499215', '/myapp/index/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (411, '127.0.0.1', '2023-06-20 19:32:21.524315', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (412, '127.0.0.1', '2023-06-20 19:32:21.559249', '/myapp/index/thing/list', 'GET', NULL, '67');
INSERT INTO `b_op_log` VALUES (413, '127.0.0.1', '2023-06-20 19:32:29.298670', '/myapp/admin/adminLogin', 'POST', NULL, '18');
INSERT INTO `b_op_log` VALUES (414, '127.0.0.1', '2023-06-20 19:32:35.380775', '/myapp/admin/adminLogin', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (415, '127.0.0.1', '2023-06-20 19:32:35.579775', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (416, '127.0.0.1', '2023-06-20 19:32:35.602542', '/myapp/admin/tag/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (417, '127.0.0.1', '2023-06-20 19:32:35.647598', '/myapp/admin/tag/list', 'GET', NULL, '71');
INSERT INTO `b_op_log` VALUES (418, '127.0.0.1', '2023-06-20 19:32:37.661944', '/myapp/admin/tag/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (419, '127.0.0.1', '2023-06-20 19:32:38.389812', '/myapp/admin/comment/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (420, '127.0.0.1', '2023-06-20 19:32:39.737670', '/myapp/admin/user/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (421, '127.0.0.1', '2023-06-20 19:32:41.497063', '/myapp/admin/ad/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (422, '127.0.0.1', '2023-06-20 19:32:44.917764', '/myapp/admin/ad/create', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (423, '127.0.0.1', '2023-06-20 19:32:44.960733', '/myapp/admin/ad/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (424, '127.0.0.1', '2023-06-20 19:32:46.106478', '/myapp/admin/notice/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (425, '127.0.0.1', '2023-06-20 19:32:50.004896', '/myapp/admin/notice/create', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (426, '127.0.0.1', '2023-06-20 19:32:50.049471', '/myapp/admin/notice/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (427, '127.0.0.1', '2023-06-20 19:32:57.755089', '/myapp/admin/notice/create', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (428, '127.0.0.1', '2023-06-20 19:32:57.783253', '/myapp/admin/notice/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (429, '127.0.0.1', '2023-06-20 19:32:59.273047', '/myapp/admin/ad/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (430, '127.0.0.1', '2023-06-20 19:33:03.567548', '/myapp/admin/ad/update', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (431, '127.0.0.1', '2023-06-20 19:33:03.601058', '/myapp/admin/ad/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (432, '127.0.0.1', '2023-06-20 19:33:03.619207', '/upload/ad/1687260782755.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (433, '127.0.0.1', '2023-06-20 19:33:05.768004', '/myapp/admin/overview/count', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (434, '127.0.0.1', '2023-06-20 19:33:13.107343', '/myapp/index/comment/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (435, '127.0.0.1', '2023-06-20 19:33:13.116427', '/myapp/index/comment/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (436, '127.0.0.1', '2023-06-20 19:33:13.128956', '/upload/cover/1687260425529.jpeg', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (437, '127.0.0.1', '2023-06-20 19:33:13.131040', '/upload/cover/1687260425529.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (438, '127.0.0.1', '2023-06-20 19:33:13.139036', '/upload/cover/1687260425529.jpeg', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (439, '127.0.0.1', '2023-06-20 19:33:13.155188', '/upload/cover/1687260111383.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (440, '127.0.0.1', '2023-06-20 19:33:13.155188', '/upload/cover/1687260111383.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (441, '127.0.0.1', '2023-06-20 19:33:13.155188', '/upload/cover/1687260111383.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (442, '127.0.0.1', '2023-06-20 19:33:13.155188', '/upload/cover/1687260111383.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (443, '127.0.0.1', '2023-06-20 19:33:13.156171', '/upload/cover/1687260111383.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (444, '127.0.0.1', '2023-06-20 19:33:13.156171', '/upload/cover/1687260111383.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (445, '127.0.0.1', '2023-06-20 19:33:14.286183', '/myapp/index/address/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (446, '127.0.0.1', '2023-06-20 19:33:14.290153', '/myapp/index/address/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (447, '127.0.0.1', '2023-06-20 19:33:15.429520', '/myapp/index/order/create', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (448, '127.0.0.1', '2023-06-20 19:33:15.511975', '/myapp/index/notice/list_api', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (449, '127.0.0.1', '2023-06-20 19:33:18.929244', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1065');
INSERT INTO `b_op_log` VALUES (450, '127.0.0.1', '2023-06-20 19:33:19.091983', '/myapp/admin/overview/count', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (451, '127.0.0.1', '2023-06-20 19:33:27.630150', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (452, '127.0.0.1', '2023-06-20 19:33:27.634149', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (453, '127.0.0.1', '2023-06-20 19:33:27.691078', '/myapp/admin/tag/list', 'GET', NULL, '62');
INSERT INTO `b_op_log` VALUES (454, '127.0.0.1', '2023-06-20 19:33:29.225155', '/myapp/admin/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (455, '127.0.0.1', '2023-06-20 19:34:08.985551', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (456, '127.0.0.1', '2023-06-20 19:34:10.238779', '/myapp/admin/overview/count', 'GET', NULL, '66');
INSERT INTO `b_op_log` VALUES (457, '127.0.0.1', '2023-06-20 19:34:18.124301', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (458, '127.0.0.1', '2023-06-20 19:34:18.125312', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (459, '127.0.0.1', '2023-06-20 19:34:18.174912', '/myapp/admin/tag/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (460, '127.0.0.1', '2023-06-21 16:35:38.467864', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (461, '127.0.0.1', '2023-06-21 16:35:38.470897', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (462, '127.0.0.1', '2023-06-21 16:35:38.472894', '/myapp/index/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (463, '127.0.0.1', '2023-06-21 16:35:38.495176', '/myapp/index/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (464, '127.0.0.1', '2023-06-21 16:35:38.517202', '/upload/cover/1687260425529.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (465, '127.0.0.1', '2023-06-21 16:35:38.518202', '/upload/cover/1687260425529.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (466, '127.0.0.1', '2023-06-21 16:35:38.518202', '/upload/cover/1687260425529.jpeg', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (467, '127.0.0.1', '2023-06-21 16:35:38.519202', '/upload/cover/1687260425529.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (468, '127.0.0.1', '2023-06-21 16:35:38.519202', '/upload/cover/1687260425529.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (469, '127.0.0.1', '2023-06-21 16:35:38.520202', '/upload/cover/1687260425529.jpeg', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (470, '127.0.0.1', '2023-06-21 16:35:38.534213', '/upload/cover/1687260111383.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (471, '127.0.0.1', '2023-06-21 16:35:38.534213', '/upload/cover/1687258812642.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (472, '127.0.0.1', '2023-06-21 16:35:38.534213', '/upload/cover/1687258812642.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (473, '127.0.0.1', '2023-06-21 16:35:38.535202', '/upload/cover/1687258812642.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (474, '127.0.0.1', '2023-06-21 16:35:38.535202', '/upload/cover/1687260505646.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (475, '127.0.0.1', '2023-06-21 16:35:38.537202', '/upload/cover/1687260056932.jpeg', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (476, '127.0.0.1', '2023-06-21 16:35:42.700466', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (477, '127.0.0.1', '2023-06-21 16:35:42.703896', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (478, '127.0.0.1', '2023-06-21 16:35:42.743865', '/myapp/admin/tag/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (479, '127.0.0.1', '2023-06-21 16:35:45.238794', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (480, '127.0.0.1', '2023-06-21 16:35:46.300191', '/myapp/admin/user/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (481, '127.0.0.1', '2023-06-21 16:36:00.644400', '/myapp/admin/user/create', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (482, '127.0.0.1', '2023-06-21 16:36:00.683928', '/myapp/admin/user/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (483, '127.0.0.1', '2023-06-21 16:36:06.850608', '/myapp/admin/adminLogin', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (484, '127.0.0.1', '2023-06-21 16:36:07.006280', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (485, '127.0.0.1', '2023-06-21 16:36:07.012358', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (486, '127.0.0.1', '2023-06-21 16:36:07.055656', '/myapp/admin/tag/list', 'GET', NULL, '52');
INSERT INTO `b_op_log` VALUES (487, '127.0.0.1', '2023-06-21 16:36:10.039735', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (488, '127.0.0.1', '2023-06-21 16:36:10.042340', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (489, '127.0.0.1', '2023-06-21 16:36:10.043570', '/myapp/index/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (490, '127.0.0.1', '2023-06-21 16:36:10.074287', '/myapp/index/thing/list', 'GET', NULL, '39');
INSERT INTO `b_op_log` VALUES (491, '127.0.0.1', '2023-06-21 16:36:20.552182', '/myapp/index/user/register', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (492, '127.0.0.1', '2023-06-21 16:36:25.013455', '/myapp/index/user/login', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (493, '127.0.0.1', '2023-06-21 16:36:25.075393', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (494, '127.0.0.1', '2023-06-21 16:36:25.086665', '/myapp/index/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (495, '127.0.0.1', '2023-06-21 16:36:25.089664', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (496, '127.0.0.1', '2023-06-21 16:36:25.111292', '/myapp/index/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (497, '127.0.0.1', '2023-06-21 16:36:28.751964', '/myapp/index/notice/list_api', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (498, '127.0.0.1', '2023-06-21 16:36:28.762450', '/myapp/index/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (499, '127.0.0.1', '2023-06-21 16:36:28.771994', '/myapp/index/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (500, '127.0.0.1', '2023-06-21 16:36:28.784210', '/myapp/index/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (501, '127.0.0.1', '2023-06-21 16:36:29.770110', '/myapp/index/address/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (502, '127.0.0.1', '2023-06-21 16:36:29.772110', '/myapp/index/address/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (503, '127.0.0.1', '2023-06-21 16:36:34.908100', '/myapp/index/comment/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (504, '127.0.0.1', '2023-06-21 16:36:34.923114', '/myapp/index/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (505, '127.0.0.1', '2023-06-21 16:36:34.925105', '/myapp/index/comment/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (506, '127.0.0.1', '2023-06-21 16:36:34.945109', '/myapp/index/comment/list', 'GET', NULL, '40');
INSERT INTO `b_op_log` VALUES (507, '127.0.0.1', '2023-06-21 16:36:35.485761', '/myapp/index/thing/addWishUser', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (508, '127.0.0.1', '2023-06-21 16:36:35.507759', '/myapp/index/thing/detail', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (509, '127.0.0.1', '2023-06-21 16:36:35.839533', '/myapp/index/thing/addCollectUser', 'POST', NULL, '62');
INSERT INTO `b_op_log` VALUES (510, '127.0.0.1', '2023-06-21 16:36:35.861156', '/myapp/index/thing/detail', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (511, '127.0.0.1', '2023-06-21 16:36:37.208832', '/myapp/index/thing/detail', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (512, '127.0.0.1', '2023-06-21 16:36:37.219942', '/myapp/index/thing/detail', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (513, '127.0.0.1', '2023-06-21 16:36:37.230320', '/myapp/index/thing/detail', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (514, '127.0.0.1', '2023-06-21 16:36:37.240510', '/myapp/index/thing/detail', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (515, '127.0.0.1', '2023-06-21 16:36:37.717864', '/myapp/index/thing/addWishUser', 'POST', NULL, '51');
INSERT INTO `b_op_log` VALUES (516, '127.0.0.1', '2023-06-21 16:36:37.750857', '/myapp/index/thing/detail', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (517, '127.0.0.1', '2023-06-21 16:36:38.078306', '/myapp/index/thing/addCollectUser', 'POST', NULL, '53');
INSERT INTO `b_op_log` VALUES (518, '127.0.0.1', '2023-06-21 16:36:38.125964', '/myapp/index/thing/detail', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (519, '127.0.0.1', '2023-06-21 16:36:39.508178', '/myapp/index/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (520, '127.0.0.1', '2023-06-21 16:36:39.530896', '/myapp/index/thing/detail', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (521, '127.0.0.1', '2023-06-21 16:36:39.536659', '/myapp/index/thing/detail', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (522, '127.0.0.1', '2023-06-21 16:36:39.545703', '/myapp/index/thing/detail', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (523, '127.0.0.1', '2023-06-21 16:36:40.028745', '/myapp/index/thing/addWishUser', 'POST', NULL, '21');
INSERT INTO `b_op_log` VALUES (524, '127.0.0.1', '2023-06-21 16:36:40.060838', '/myapp/index/thing/detail', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (525, '127.0.0.1', '2023-06-21 16:36:40.370158', '/myapp/index/thing/addCollectUser', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (526, '127.0.0.1', '2023-06-21 16:36:40.396271', '/myapp/index/thing/detail', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (527, '127.0.0.1', '2023-06-21 16:36:43.953272', '/myapp/index/thing/detail', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (528, '127.0.0.1', '2023-06-21 16:36:43.963675', '/myapp/index/thing/detail', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (529, '127.0.0.1', '2023-06-21 16:36:43.969610', '/myapp/index/thing/detail', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (530, '127.0.0.1', '2023-06-21 16:36:43.985692', '/myapp/index/thing/detail', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (531, '127.0.0.1', '2023-06-21 16:36:44.587479', '/myapp/index/thing/addWishUser', 'POST', NULL, '16');
INSERT INTO `b_op_log` VALUES (532, '127.0.0.1', '2023-06-21 16:36:44.626178', '/myapp/index/thing/detail', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (533, '127.0.0.1', '2023-06-21 16:36:44.962161', '/myapp/index/thing/addCollectUser', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (534, '127.0.0.1', '2023-06-21 16:36:45.005139', '/myapp/index/thing/detail', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (535, '127.0.0.1', '2023-06-21 16:36:47.763019', '/myapp/index/comment/create', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (536, '127.0.0.1', '2023-06-21 16:36:47.792499', '/myapp/index/comment/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (537, '127.0.0.1', '2023-06-21 16:36:51.333638', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (538, '127.0.0.1', '2023-06-21 16:36:51.340633', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (539, '127.0.0.1', '2023-06-21 16:36:51.384177', '/myapp/admin/tag/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (540, '127.0.0.1', '2023-06-21 16:37:04.782292', '/myapp/admin/adminLogin', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (541, '127.0.0.1', '2023-06-21 16:37:04.951120', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (542, '127.0.0.1', '2023-06-21 16:37:04.978033', '/myapp/admin/tag/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (543, '127.0.0.1', '2023-06-21 16:37:05.002536', '/myapp/admin/tag/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (544, '127.0.0.1', '2023-06-21 16:37:18.252459', '/myapp/index/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (545, '127.0.0.1', '2023-06-21 16:37:18.254431', '/myapp/index/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (546, '127.0.0.1', '2023-06-21 16:37:18.255390', '/myapp/index/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (547, '127.0.0.1', '2023-06-21 16:37:18.277385', '/myapp/index/tag/list', 'GET', NULL, '29');

-- ----------------------------
-- Table structure for b_order
-- ----------------------------
DROP TABLE IF EXISTS `b_order`;
CREATE TABLE `b_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_number` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `count` int(11) NOT NULL,
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_time` datetime(6) NULL DEFAULT NULL,
  `pay_time` datetime(6) NULL DEFAULT NULL,
  `receiver_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_order_thing_id_4e345e2c_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_order_user_id_64854046_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_order_thing_id_4e345e2c_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_order_user_id_64854046_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_order
-- ----------------------------
INSERT INTO `b_order` VALUES (1, '1687259734824', 1, '1', '2023-06-20 19:15:34.828126', NULL, '刘德华', 'bbb', 'aaa', NULL, 2, 2);
INSERT INTO `b_order` VALUES (2, '1687260635444', 4, '1', '2023-06-20 19:30:35.449888', NULL, '刘德华', 'bbb', 'aaa', NULL, 11, 2);
INSERT INTO `b_order` VALUES (3, '1687260795410', 1, '1', '2023-06-20 19:33:15.416612', NULL, '刘德华', 'bbb', 'aaa', NULL, 11, 2);

-- ----------------------------
-- Table structure for b_order_log
-- ----------------------------
DROP TABLE IF EXISTS `b_order_log`;
CREATE TABLE `b_order_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `action` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_order_log_thing_id_7306f624_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_order_log_user_id_1003e839_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_order_log_thing_id_7306f624_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_order_log_user_id_1003e839_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_order_log
-- ----------------------------

-- ----------------------------
-- Table structure for b_record
-- ----------------------------
DROP TABLE IF EXISTS `b_record`;
CREATE TABLE `b_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `record_time` datetime(6) NULL DEFAULT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_record_classification_id_52591cc9_fk_b_classification_id`(`classification_id`) USING BTREE,
  INDEX `b_record_thing_id_d8e773c0_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_record_user_id_7e5958b0_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_record_classification_id_52591cc9_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_record_thing_id_d8e773c0_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_record_user_id_7e5958b0_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_record
-- ----------------------------

-- ----------------------------
-- Table structure for b_tag
-- ----------------------------
DROP TABLE IF EXISTS `b_tag`;
CREATE TABLE `b_tag`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_tag
-- ----------------------------
INSERT INTO `b_tag` VALUES (1, '波斯', '2023-06-20 18:57:06.316974');
INSERT INTO `b_tag` VALUES (2, '温柔型', '2023-06-20 18:57:11.868736');
INSERT INTO `b_tag` VALUES (3, '活泼型', '2023-06-20 18:57:20.594820');
INSERT INTO `b_tag` VALUES (4, '玩具', '2023-06-20 19:19:27.169211');
INSERT INTO `b_tag` VALUES (5, '医疗', '2023-06-20 19:19:31.759346');
INSERT INTO `b_tag` VALUES (6, '美容', '2023-06-20 19:19:35.734241');

-- ----------------------------
-- Table structure for b_thing
-- ----------------------------
DROP TABLE IF EXISTS `b_thing`;
CREATE TABLE `b_thing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cover` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `price` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `yingyang` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `baozhiqi` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fit` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `repertory` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `pv` int(11) NOT NULL,
  `recommend_count` int(11) NOT NULL,
  `wish_count` int(11) NOT NULL,
  `collect_count` int(11) NOT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_thing_classification_id_47675ac4_fk_b_classification_id`(`classification_id`) USING BTREE,
  CONSTRAINT `b_thing_classification_id_47675ac4_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing
-- ----------------------------
INSERT INTO `b_thing` VALUES (1, '阿拉斯加犬', 'cover/1687258713493.jpeg', '哺乳类动物是恒温胎生的脊椎动物，几乎遍布全球。哺乳类宠物种类非常多，在宠物中占有很大的数量和比例。哺乳类宠物的代表有狗、猫、鼠、兔、马、牛、羊等，分为草食、肉食和杂食三种类型。哺乳类宠物的特点是有发达的脑部、敏感的神经和灵敏的感官，具有很好的学习能力，因为智商较其他种类来说更高，所以与主人的互动性较好、能够理解主人的想法，十分适合作为生活的伴侣。哺乳类宠物对外在环境的依赖较小，能够很好地适应环境', '1000', NULL, '男', '', '', '', '0', 0, 0, '2023-06-20 18:59:17.086653', 0, 0, 0, 0, 3, NULL);
INSERT INTO `b_thing` VALUES (2, '日本波波犬', 'cover/1687258782902.jpeg', '哺乳类动物是恒温胎生的脊椎动物，几乎遍布全球。哺乳类宠物种类非常多，在宠物中占有很大的数量和比例。哺乳类宠物的代表有狗、猫、鼠、兔、马、牛、羊等，分为草食、肉食和杂食三种类型。哺乳类宠物的特点是有发达的脑部、敏感的神经和灵敏的感官，具有很好的学习能力，因为智商较其他种类来说更高，所以与主人的互动性较好、能够理解主人的想法，十分适合作为生活的伴侣。哺乳类宠物对外在环境的依赖较小，能够很好地适应环境', '2000', NULL, '女', '', '', '', '0', 0, 0, '2023-06-20 18:59:52.297365', 0, 0, 0, 0, 3, NULL);
INSERT INTO `b_thing` VALUES (3, '意大利beatuy犬', 'cover/1687258812642.jpeg', '哺乳类动物是恒温胎生的脊椎动物，几乎遍布全球。哺乳类宠物种类非常多，在宠物中占有很大的数量和比例。哺乳类宠物的代表有狗、猫、鼠、兔、马、牛、羊等，分为草食、肉食和杂食三种类型。哺乳类宠物的特点是有发达的脑部、敏感的神经和灵敏的感官，具有很好的学习能力，因为智商较其他种类来说更高，所以与主人的互动性较好、能够理解主人的想法，十分适合作为生活的伴侣。哺乳类宠物对外在环境的依赖较小，能够很好地适应环境', '2000', NULL, '男', '', '', '', '0', 0, 0, '2023-06-20 19:00:23.514414', 0, 0, 0, 0, 3, NULL);
INSERT INTO `b_thing` VALUES (4, '精品ap牌狗粮', 'cover/1687260505646.jpeg', '矿物质是宠物狗不可缺少的又一类营养素，它包括人体所需的元素，如钙、磷、锌、铜、镁、钾、铁等。矿物质是构成宠物狗集体组织的重要原料，帮助调节体内酸碱平衡、肌肉收缩、神经反应等', '200', '', '', '维生素A', '20年', '狗狗、猫咪', '0', 0, 0, '2023-06-20 19:03:15.320485', 0, 0, 0, 0, 3, '北京市朝阳路99号');
INSERT INTO `b_thing` VALUES (5, '波斯猫来自法国', 'cover/1687260056932.jpeg', '猫，分多种，是鼠的天敌。各地都有畜养。有黄、黑、白、灰等各种颜色；身形像狸，外貌像老虎，毛柔而齿利（有几乎无毛的品种）。以尾长腰短，目光如金银，上腭棱多的最好。身体小巧。', '200', '小彤彤', '女', '', '', '', '0', 0, 0, '2023-06-20 19:21:32.130879', 0, 0, 1, 1, 2, '济南市奥体西路99号');
INSERT INTO `b_thing` VALUES (6, '美国卡卡猫', 'cover/1687260111383.jpeg', '猫，分多种，是鼠的天敌。各地都有畜养。有黄、黑、白、灰等各种颜色；身形像狸，外貌像老虎，毛柔而齿利（有几乎无毛的品种）。以尾长腰短，目光如金银，上腭棱多的最好。身体小巧', '3000', '笑笑', '男', '', '', '', '0', 0, 0, '2023-06-20 19:22:14.987665', 0, 0, 0, 0, 2, '青岛市北京西路8号');
INSERT INTO `b_thing` VALUES (7, '墨西哥野兔子', 'cover/1687260187342.jpeg', '猫，分多种，是鼠的天敌。各地都有畜养。有黄、黑、白、灰等各种颜色；身形像狸，外貌像老虎，毛柔而齿利（有几乎无毛的品种）。以尾长腰短，目光如金银，上腭棱多的最好。身体小巧', '300', '小博尔特', '女', '', '', '', '0', 0, 0, '2023-06-20 19:23:26.289757', 0, 0, 0, 0, 4, '北京市xxx路');
INSERT INTO `b_thing` VALUES (8, '英国alpha兔', 'cover/1687260228638.jpeg', '兔子，分多种，是鼠的天敌。各地都有畜养。有黄、黑、白、灰等各种颜色；身形像狸，外貌像老虎，毛柔而齿利（有几乎无毛的品种）。以尾长腰短，目光如金银，上腭棱多的最好。身体小巧', '3000', '小可爱', '女', '', '', '', '0', 0, 0, '2023-06-20 19:24:14.067475', 0, 0, 0, 0, 4, '郑州市人民路88号');
INSERT INTO `b_thing` VALUES (9, '德国小仓鼠', 'cover/1687260327436.jpeg', '仓鼠，分多种，是鼠的天敌。各地都有畜养。有黄、黑、白、灰等各种颜色；身形像狸，外貌像老虎，毛柔而齿利（有几乎无毛的品种）。以尾长腰短，目光如金银，上腭棱多的最好。身体小巧', '2500', '哈哈', '女', '', '', '', '0', 0, 0, '2023-06-20 19:25:48.007540', 0, 0, 0, 0, 5, '德州市三八路');
INSERT INTO `b_thing` VALUES (10, '意大利名犬99号', 'cover/1687260376491.jpeg', '狗狗，分多种，是鼠的天敌。各地都有畜养。有黄、黑、白、灰等各种颜色；身形像狸，外貌像老虎，毛柔而齿利（有几乎无毛的品种）。以尾长腰短，目光如金银，上腭棱多的最好。身体小巧', '3900', '哈哈', '男', '', '', '', '0', 0, 0, '2023-06-20 19:26:39.160303', 0, 0, 1, 1, 3, '上海市南京路88号');
INSERT INTO `b_thing` VALUES (11, '测试狗狗', 'cover/1687260425529.jpeg', '各地都有畜养。有黄、黑、白、灰等各种颜色；身形像狸，外貌像老虎，毛柔而齿利（有几乎无毛的品种）。以尾长腰短，目光如金银，上腭棱多的最好。身体小巧', '3000', 'ddd', '男', '', '', '', '0', 0, 0, '2023-06-20 19:27:24.835599', 0, 0, 2, 2, 3, '上海市xx路');
INSERT INTO `b_thing` VALUES (12, '德国牧羊犬', 'cover/1687260459725.jpeg', '猫，分多种，是鼠的天敌。各地都有畜养。有黄、黑、白、灰等各种颜色；身形像狸，外貌像老虎，毛柔而齿利（有几乎无毛的品种）。以尾长腰短，目光如金银，上腭棱多的最好。身体小巧', '2900', '', '女', '', '', '', '0', 0, 0, '2023-06-20 19:28:01.725153', 0, 0, 1, 1, 3, '哈尔滨市人民路9号');

-- ----------------------------
-- Table structure for b_thing_collect
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_collect`;
CREATE TABLE `b_thing_collect`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_collect_thing_id_user_id_45b9f252_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_collect_user_id_e5d69968_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_collect_thing_id_8edce8b3_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_collect_user_id_e5d69968_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_collect
-- ----------------------------
INSERT INTO `b_thing_collect` VALUES (5, 5, 4);
INSERT INTO `b_thing_collect` VALUES (2, 10, 4);
INSERT INTO `b_thing_collect` VALUES (1, 11, 2);
INSERT INTO `b_thing_collect` VALUES (4, 11, 4);
INSERT INTO `b_thing_collect` VALUES (3, 12, 4);

-- ----------------------------
-- Table structure for b_thing_tag
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_tag`;
CREATE TABLE `b_thing_tag`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_tag_thing_id_tag_id_a5d426b2_uniq`(`thing_id`, `tag_id`) USING BTREE,
  INDEX `b_thing_tag_tag_id_d02b28a1_fk_b_tag_id`(`tag_id`) USING BTREE,
  CONSTRAINT `b_thing_tag_tag_id_d02b28a1_fk_b_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `b_tag` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_tag_thing_id_fb8ecf3f_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_tag
-- ----------------------------
INSERT INTO `b_thing_tag` VALUES (1, 1, 1);
INSERT INTO `b_thing_tag` VALUES (2, 1, 2);
INSERT INTO `b_thing_tag` VALUES (3, 2, 2);
INSERT INTO `b_thing_tag` VALUES (4, 2, 3);
INSERT INTO `b_thing_tag` VALUES (5, 3, 1);
INSERT INTO `b_thing_tag` VALUES (6, 4, 2);
INSERT INTO `b_thing_tag` VALUES (31, 4, 3);
INSERT INTO `b_thing_tag` VALUES (32, 4, 5);
INSERT INTO `b_thing_tag` VALUES (7, 5, 1);
INSERT INTO `b_thing_tag` VALUES (8, 5, 2);
INSERT INTO `b_thing_tag` VALUES (9, 5, 3);
INSERT INTO `b_thing_tag` VALUES (10, 5, 4);
INSERT INTO `b_thing_tag` VALUES (11, 5, 5);
INSERT INTO `b_thing_tag` VALUES (12, 6, 2);
INSERT INTO `b_thing_tag` VALUES (13, 6, 3);
INSERT INTO `b_thing_tag` VALUES (14, 6, 5);
INSERT INTO `b_thing_tag` VALUES (15, 7, 2);
INSERT INTO `b_thing_tag` VALUES (16, 7, 3);
INSERT INTO `b_thing_tag` VALUES (17, 7, 5);
INSERT INTO `b_thing_tag` VALUES (18, 8, 1);
INSERT INTO `b_thing_tag` VALUES (19, 8, 3);
INSERT INTO `b_thing_tag` VALUES (20, 8, 5);
INSERT INTO `b_thing_tag` VALUES (21, 9, 2);
INSERT INTO `b_thing_tag` VALUES (22, 9, 4);
INSERT INTO `b_thing_tag` VALUES (23, 9, 5);
INSERT INTO `b_thing_tag` VALUES (24, 10, 3);
INSERT INTO `b_thing_tag` VALUES (25, 10, 5);
INSERT INTO `b_thing_tag` VALUES (26, 11, 2);
INSERT INTO `b_thing_tag` VALUES (27, 11, 5);
INSERT INTO `b_thing_tag` VALUES (28, 12, 2);
INSERT INTO `b_thing_tag` VALUES (29, 12, 3);
INSERT INTO `b_thing_tag` VALUES (30, 12, 4);

-- ----------------------------
-- Table structure for b_thing_wish
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_wish`;
CREATE TABLE `b_thing_wish`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_wish_thing_id_user_id_9d647bbb_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_wish_user_id_e2d94f6c_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_wish_thing_id_f0864b16_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_wish_user_id_e2d94f6c_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_wish
-- ----------------------------
INSERT INTO `b_thing_wish` VALUES (5, 5, 4);
INSERT INTO `b_thing_wish` VALUES (2, 10, 4);
INSERT INTO `b_thing_wish` VALUES (1, 11, 2);
INSERT INTO `b_thing_wish` VALUES (4, 11, 4);
INSERT INTO `b_thing_wish` VALUES (3, 12, 4);

-- ----------------------------
-- Table structure for b_user
-- ----------------------------
DROP TABLE IF EXISTS `b_user`;
CREATE TABLE `b_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT NULL,
  `push_email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `push_switch` tinyint(1) NULL DEFAULT NULL,
  `admin_token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_user
-- ----------------------------
INSERT INTO `b_user` VALUES (1, 'admin', '78aafd3207ec4ef6d16f9fc07e95ebc3', '1', '0', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21232f297a57a5a743894a0e4a801fc3', NULL);
INSERT INTO `b_user` VALUES (2, 'ddd', '77963b7a931377ad4ab5ad6a9cd718aa', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2023-06-20 19:14:42.680892', 0, NULL, 0, NULL, '77963b7a931377ad4ab5ad6a9cd718aa');
INSERT INTO `b_user` VALUES (3, 'admin123', '0192023a7bbd73250516f069df18b500', '3', '0', NULL, '', NULL, '122', NULL, NULL, '2023-06-21 16:36:00.640129', 0, NULL, 0, '0192023a7bbd73250516f069df18b500', NULL);
INSERT INTO `b_user` VALUES (4, 'cdcd', 'bea40877aa2ce569e5f9e3a264872b54', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2023-06-21 16:36:20.548036', 0, NULL, 0, NULL, 'bea40877aa2ce569e5f9e3a264872b54');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (7, 'myapp', 'ad');
INSERT INTO `django_content_type` VALUES (21, 'myapp', 'address');
INSERT INTO `django_content_type` VALUES (20, 'myapp', 'banner');
INSERT INTO `django_content_type` VALUES (8, 'myapp', 'classification');
INSERT INTO `django_content_type` VALUES (19, 'myapp', 'comment');
INSERT INTO `django_content_type` VALUES (9, 'myapp', 'errorlog');
INSERT INTO `django_content_type` VALUES (10, 'myapp', 'loginlog');
INSERT INTO `django_content_type` VALUES (11, 'myapp', 'notice');
INSERT INTO `django_content_type` VALUES (12, 'myapp', 'oplog');
INSERT INTO `django_content_type` VALUES (18, 'myapp', 'order');
INSERT INTO `django_content_type` VALUES (17, 'myapp', 'orderlog');
INSERT INTO `django_content_type` VALUES (16, 'myapp', 'record');
INSERT INTO `django_content_type` VALUES (13, 'myapp', 'tag');
INSERT INTO `django_content_type` VALUES (15, 'myapp', 'thing');
INSERT INTO `django_content_type` VALUES (14, 'myapp', 'user');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2023-06-18 22:10:28.914484');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2023-06-18 22:10:29.239955');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2023-06-18 22:10:29.357100');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2023-06-18 22:10:29.375347');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2023-06-18 22:10:29.391353');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2023-06-18 22:10:29.507953');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2023-06-18 22:10:29.587072');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2023-06-18 22:10:29.662551');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2023-06-18 22:10:29.672156');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2023-06-18 22:10:29.729005');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2023-06-18 22:10:29.734979');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2023-06-18 22:10:29.747950');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2023-06-18 22:10:29.803064');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2023-06-18 22:10:29.853053');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2023-06-18 22:10:29.915283');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2023-06-18 22:10:29.930377');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2023-06-18 22:10:30.002137');
INSERT INTO `django_migrations` VALUES (18, 'myapp', '0001_initial', '2023-06-18 22:10:31.088968');
INSERT INTO `django_migrations` VALUES (19, 'sessions', '0001_initial', '2023-06-18 22:10:31.139210');
INSERT INTO `django_migrations` VALUES (20, 'myapp', '0002_thing_address', '2023-06-20 19:11:07.825805');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
