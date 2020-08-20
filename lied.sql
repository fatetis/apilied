/*
Navicat MySQL Data Transfer

Source Server         : my
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : lied

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2020-08-20 18:41:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `lied_admin_menu`
-- ----------------------------
DROP TABLE IF EXISTS `lied_admin_menu`;
CREATE TABLE `lied_admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `uri` varchar(50) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lied_admin_menu
-- ----------------------------
INSERT INTO `lied_admin_menu` VALUES ('1', '0', '1', 'Index', 'fa-bar-chart', 'dashboard', null, null, '2019-12-10 15:27:18');
INSERT INTO `lied_admin_menu` VALUES ('2', '0', '2', 'Admin', 'fa-tasks', '', null, null, null);
INSERT INTO `lied_admin_menu` VALUES ('3', '2', '3', 'Users', 'fa-users', 'auth/users', null, null, null);
INSERT INTO `lied_admin_menu` VALUES ('4', '2', '4', 'Roles', 'fa-user', 'auth/roles', null, null, null);
INSERT INTO `lied_admin_menu` VALUES ('5', '2', '5', 'Permission', 'fa-ban', 'auth/permissions', null, null, null);
INSERT INTO `lied_admin_menu` VALUES ('6', '2', '6', 'Menu', 'fa-bars', 'auth/menu', null, null, null);
INSERT INTO `lied_admin_menu` VALUES ('7', '2', '7', 'Operation log', 'fa-history', 'auth/logs', null, null, null);
INSERT INTO `lied_admin_menu` VALUES ('8', '0', '22', '产品管理', 'fa-bars', 'product', null, '2018-12-19 09:59:17', '2020-06-05 09:06:37');
INSERT INTO `lied_admin_menu` VALUES ('9', '8', '23', '产品列表', 'fa-bars', 'product', null, '2018-12-19 10:21:12', '2020-06-05 09:06:37');
INSERT INTO `lied_admin_menu` VALUES ('10', '8', '25', '产品规格列表', 'fa-bars', 'product/attr', null, '2018-12-24 09:16:15', '2020-06-05 09:06:37');
INSERT INTO `lied_admin_menu` VALUES ('11', '0', '19', '品牌管理', 'fa-bars', null, null, '2018-12-25 03:24:49', '2020-06-05 09:06:37');
INSERT INTO `lied_admin_menu` VALUES ('12', '11', '20', '品牌列表', 'fa-bars', 'brand', null, '2018-12-25 03:25:21', '2020-06-05 09:06:37');
INSERT INTO `lied_admin_menu` VALUES ('13', '11', '21', '品牌分类', 'fa-bars', 'brand/category', null, '2018-12-25 03:25:57', '2020-06-05 09:06:37');
INSERT INTO `lied_admin_menu` VALUES ('14', '8', '24', '产品分类', 'fa-bars', 'product/category', null, '2018-12-25 04:00:55', '2020-06-05 09:06:37');
INSERT INTO `lied_admin_menu` VALUES ('15', '8', '26', '秒杀管理', 'fa-align-left', 'product/seckill', null, '2019-01-24 09:24:16', '2020-06-05 09:06:37');
INSERT INTO `lied_admin_menu` VALUES ('16', '0', '17', '用户管理', 'fa-bars', 'user', null, '2019-02-16 14:10:10', '2020-06-05 09:06:37');
INSERT INTO `lied_admin_menu` VALUES ('17', '16', '18', '用户列表', 'fa-bars', 'user', null, '2019-02-16 14:10:28', '2020-06-05 09:06:37');
INSERT INTO `lied_admin_menu` VALUES ('20', '43', '28', '订单管理', 'fa-bars', 'product/order', null, '2019-02-18 14:57:08', '2020-06-08 13:43:39');
INSERT INTO `lied_admin_menu` VALUES ('21', '0', '33', '地域管理', 'fa-bars', null, null, '2019-02-18 15:25:13', '2020-06-08 13:43:39');
INSERT INTO `lied_admin_menu` VALUES ('22', '21', '34', '地域列表', 'fa-bars', 'region', null, '2019-02-18 15:25:31', '2020-06-08 13:43:39');
INSERT INTO `lied_admin_menu` VALUES ('23', '0', '36', '广告管理', 'fa-bars', null, null, '2019-02-19 09:23:06', '2020-06-08 13:43:39');
INSERT INTO `lied_admin_menu` VALUES ('24', '23', '37', '广告位置列表', 'fa-bars', 'adv/position', null, '2019-02-19 09:23:30', '2020-06-08 13:43:39');
INSERT INTO `lied_admin_menu` VALUES ('25', '23', '38', '广告列表', 'fa-bars', 'adv', null, '2019-02-19 09:44:55', '2020-06-08 13:43:39');
INSERT INTO `lied_admin_menu` VALUES ('26', '0', '39', '文章管理', 'fa-bars', null, null, '2019-02-19 16:12:18', '2020-06-08 13:43:39');
INSERT INTO `lied_admin_menu` VALUES ('27', '26', '40', '文章分类', 'fa-bars', 'article/category', null, '2019-02-19 16:12:37', '2020-06-08 13:43:39');
INSERT INTO `lied_admin_menu` VALUES ('28', '26', '41', '文章列表', 'fa-bars', 'article', null, '2019-02-19 16:12:54', '2020-06-08 13:43:39');
INSERT INTO `lied_admin_menu` VALUES ('29', '21', '35', '地域开通', 'fa-bars', 'region/open', null, '2019-05-21 15:50:21', '2020-06-08 13:43:39');
INSERT INTO `lied_admin_menu` VALUES ('30', '0', '29', '优惠券管理', 'fa-bars', null, null, '2019-06-17 10:09:19', '2020-06-08 13:43:39');
INSERT INTO `lied_admin_menu` VALUES ('31', '30', '30', '优惠券列表', 'fa-bars', 'coupon', null, '2019-06-17 10:09:57', '2020-06-08 13:43:39');
INSERT INTO `lied_admin_menu` VALUES ('32', '30', '31', '线下券列表', 'fa-bars', 'coupon/batch', null, '2019-06-26 11:08:59', '2020-06-08 13:43:39');
INSERT INTO `lied_admin_menu` VALUES ('33', '30', '32', '线下券码列表', 'fa-bars', 'coupon/offline', null, '2019-07-10 13:54:04', '2020-06-08 13:43:39');
INSERT INTO `lied_admin_menu` VALUES ('34', '2', '8', 'Log viewer', 'fa-database', 'logs', null, '2019-10-09 11:41:08', '2019-10-09 11:42:46');
INSERT INTO `lied_admin_menu` VALUES ('35', '2', '9', '定时任务', 'fa-hourglass-1', '/crontabs', null, '2019-12-20 14:44:49', '2019-12-20 14:45:54');
INSERT INTO `lied_admin_menu` VALUES ('36', '2', '10', '定时任务日志', 'fa-bars', '/crontabLogs', null, '2019-12-20 14:45:34', '2019-12-20 14:45:45');
INSERT INTO `lied_admin_menu` VALUES ('37', '2', '11', 'Helpers', 'fa-gears', '', null, '2020-04-17 14:14:18', '2020-04-17 14:16:17');
INSERT INTO `lied_admin_menu` VALUES ('38', '37', '12', 'Scaffold', 'fa-keyboard-o', 'helpers/scaffold', null, '2020-04-17 14:14:19', '2020-04-17 14:16:17');
INSERT INTO `lied_admin_menu` VALUES ('39', '37', '13', 'Database terminal', 'fa-database', 'helpers/terminal/database', null, '2020-04-17 14:14:19', '2020-04-17 14:16:17');
INSERT INTO `lied_admin_menu` VALUES ('40', '37', '14', 'Laravel artisan', 'fa-terminal', 'helpers/terminal/artisan', null, '2020-04-17 14:14:19', '2020-04-17 14:16:17');
INSERT INTO `lied_admin_menu` VALUES ('41', '37', '15', 'Routes', 'fa-list-alt', 'helpers/routes', null, '2020-04-17 14:14:19', '2020-04-17 14:16:17');
INSERT INTO `lied_admin_menu` VALUES ('42', '2', '16', 'Redis manager', 'fa-database', 'redis', null, '2020-06-03 08:49:43', '2020-06-05 09:06:37');
INSERT INTO `lied_admin_menu` VALUES ('43', '0', '27', '订单管理', 'fa-bars', null, null, '2020-06-08 13:43:13', '2020-06-08 13:43:39');

-- ----------------------------
-- Table structure for `lied_admin_operation_log`
-- ----------------------------
DROP TABLE IF EXISTS `lied_admin_operation_log`;
CREATE TABLE `lied_admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `method` varchar(10) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `input` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lied_admin_operation_log_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=955 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lied_admin_operation_log
-- ----------------------------
INSERT INTO `lied_admin_operation_log` VALUES ('1', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-30 15:36:36', '2020-07-30 15:36:36');
INSERT INTO `lied_admin_operation_log` VALUES ('2', '1', 'admin/adv/position', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 15:36:42', '2020-07-30 15:36:42');
INSERT INTO `lied_admin_operation_log` VALUES ('3', '1', 'admin/adv', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 15:36:44', '2020-07-30 15:36:44');
INSERT INTO `lied_admin_operation_log` VALUES ('4', '1', 'admin/adv/position', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 15:36:46', '2020-07-30 15:36:46');
INSERT INTO `lied_admin_operation_log` VALUES ('5', '1', 'admin/adv/position/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 15:36:48', '2020-07-30 15:36:48');
INSERT INTO `lied_admin_operation_log` VALUES ('6', '1', 'admin/product/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 16:23:54', '2020-07-30 16:23:54');
INSERT INTO `lied_admin_operation_log` VALUES ('7', '1', 'admin/product/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 16:23:58', '2020-07-30 16:23:58');
INSERT INTO `lied_admin_operation_log` VALUES ('8', '1', 'admin/product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 16:24:06', '2020-07-30 16:24:06');
INSERT INTO `lied_admin_operation_log` VALUES ('9', '1', 'admin/product/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 16:24:07', '2020-07-30 16:24:07');
INSERT INTO `lied_admin_operation_log` VALUES ('10', '1', 'admin/brand', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 16:24:09', '2020-07-30 16:24:09');
INSERT INTO `lied_admin_operation_log` VALUES ('11', '1', 'admin/brand/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 16:24:10', '2020-07-30 16:24:10');
INSERT INTO `lied_admin_operation_log` VALUES ('12', '1', 'admin/brand/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 16:24:11', '2020-07-30 16:24:11');
INSERT INTO `lied_admin_operation_log` VALUES ('13', '1', 'admin/product/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 16:24:15', '2020-07-30 16:24:15');
INSERT INTO `lied_admin_operation_log` VALUES ('14', '1', 'admin/adv', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 16:48:27', '2020-07-30 16:48:27');
INSERT INTO `lied_admin_operation_log` VALUES ('15', '1', 'admin/adv/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 16:48:29', '2020-07-30 16:48:29');
INSERT INTO `lied_admin_operation_log` VALUES ('16', '1', 'admin/adv', 'GET', '127.0.0.1', '[]', '2020-07-30 16:48:31', '2020-07-30 16:48:31');
INSERT INTO `lied_admin_operation_log` VALUES ('17', '1', 'admin/region/open', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 16:48:56', '2020-07-30 16:48:56');
INSERT INTO `lied_admin_operation_log` VALUES ('18', '1', 'admin/region', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 16:48:58', '2020-07-30 16:48:58');
INSERT INTO `lied_admin_operation_log` VALUES ('19', '1', 'admin/region/open', 'GET', '127.0.0.1', '[]', '2020-07-30 16:48:59', '2020-07-30 16:48:59');
INSERT INTO `lied_admin_operation_log` VALUES ('20', '1', 'admin/region', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 16:51:02', '2020-07-30 16:51:02');
INSERT INTO `lied_admin_operation_log` VALUES ('21', '1', 'admin/region/open', 'GET', '127.0.0.1', '[]', '2020-07-30 16:51:03', '2020-07-30 16:51:03');
INSERT INTO `lied_admin_operation_log` VALUES ('22', '1', 'admin/region', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 16:53:39', '2020-07-30 16:53:39');
INSERT INTO `lied_admin_operation_log` VALUES ('23', '1', 'admin/adv/position', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 16:55:33', '2020-07-30 16:55:33');
INSERT INTO `lied_admin_operation_log` VALUES ('24', '1', 'admin/adv/position/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 16:55:35', '2020-07-30 16:55:35');
INSERT INTO `lied_admin_operation_log` VALUES ('25', '1', 'admin/adv', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 16:55:39', '2020-07-30 16:55:39');
INSERT INTO `lied_admin_operation_log` VALUES ('26', '1', 'admin/adv/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 16:55:40', '2020-07-30 16:55:40');
INSERT INTO `lied_admin_operation_log` VALUES ('27', '1', 'admin/adv', 'GET', '127.0.0.1', '[]', '2020-07-30 16:55:41', '2020-07-30 16:55:41');
INSERT INTO `lied_admin_operation_log` VALUES ('28', '1', 'admin/adv', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 17:03:21', '2020-07-30 17:03:21');
INSERT INTO `lied_admin_operation_log` VALUES ('29', '1', 'admin/adv/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-30 17:03:24', '2020-07-30 17:03:24');
INSERT INTO `lied_admin_operation_log` VALUES ('30', '1', 'admin/api/adv/position', 'GET', '127.0.0.1', '{\"q\":null}', '2020-07-30 17:03:27', '2020-07-30 17:03:27');
INSERT INTO `lied_admin_operation_log` VALUES ('31', '1', 'admin/adv/create', 'GET', '127.0.0.1', '[]', '2020-07-30 17:03:51', '2020-07-30 17:03:51');
INSERT INTO `lied_admin_operation_log` VALUES ('32', '1', 'admin/adv', 'GET', '127.0.0.1', '[]', '2020-07-31 09:38:40', '2020-07-31 09:38:40');
INSERT INTO `lied_admin_operation_log` VALUES ('33', '1', 'admin/adv/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 09:38:43', '2020-07-31 09:38:43');
INSERT INTO `lied_admin_operation_log` VALUES ('34', '1', 'admin/api/adv/position', 'GET', '127.0.0.1', '{\"q\":null}', '2020-07-31 09:38:48', '2020-07-31 09:38:48');
INSERT INTO `lied_admin_operation_log` VALUES ('35', '1', 'admin/adv/create', 'GET', '127.0.0.1', '[]', '2020-07-31 11:55:53', '2020-07-31 11:55:53');
INSERT INTO `lied_admin_operation_log` VALUES ('36', '1', 'admin/api/region/open/city', 'GET', '127.0.0.1', '{\"q\":null}', '2020-07-31 11:55:56', '2020-07-31 11:55:56');
INSERT INTO `lied_admin_operation_log` VALUES ('37', '1', 'admin/api/region/open/city', 'GET', '127.0.0.1', '{\"q\":null}', '2020-07-31 11:56:09', '2020-07-31 11:56:09');
INSERT INTO `lied_admin_operation_log` VALUES ('38', '1', 'admin/adv/create', 'GET', '127.0.0.1', '[]', '2020-07-31 13:55:24', '2020-07-31 13:55:24');
INSERT INTO `lied_admin_operation_log` VALUES ('39', '1', 'admin/api/region/open/city', 'GET', '127.0.0.1', '{\"q\":null}', '2020-07-31 13:55:27', '2020-07-31 13:55:27');
INSERT INTO `lied_admin_operation_log` VALUES ('40', '1', 'admin/adv/create', 'GET', '127.0.0.1', '[]', '2020-07-31 13:55:38', '2020-07-31 13:55:38');
INSERT INTO `lied_admin_operation_log` VALUES ('41', '1', 'admin/api/region/open/city', 'GET', '127.0.0.1', '{\"q\":null}', '2020-07-31 13:55:41', '2020-07-31 13:55:41');
INSERT INTO `lied_admin_operation_log` VALUES ('42', '1', 'admin/adv/create', 'GET', '127.0.0.1', '[]', '2020-07-31 13:56:01', '2020-07-31 13:56:01');
INSERT INTO `lied_admin_operation_log` VALUES ('43', '1', 'admin/api/region/open/city', 'GET', '127.0.0.1', '{\"q\":null}', '2020-07-31 13:56:04', '2020-07-31 13:56:04');
INSERT INTO `lied_admin_operation_log` VALUES ('44', '1', 'admin/region/open', 'GET', '127.0.0.1', '[]', '2020-07-31 13:56:49', '2020-07-31 13:56:49');
INSERT INTO `lied_admin_operation_log` VALUES ('45', '1', 'admin/region/open/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 13:56:51', '2020-07-31 13:56:51');
INSERT INTO `lied_admin_operation_log` VALUES ('46', '1', 'admin/region/open', 'POST', '127.0.0.1', '{\"region_id\":\"424\",\"is_show\":\"on\",\"sort_order\":\"99\",\"_token\":\"qd8UtR26fH3OTEjzhhZIWhZ3h9f0qPWRYv6Hpioe\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/region\\/open\"}', '2020-07-31 13:57:01', '2020-07-31 13:57:01');
INSERT INTO `lied_admin_operation_log` VALUES ('47', '1', 'admin/region/open', 'GET', '127.0.0.1', '[]', '2020-07-31 13:57:01', '2020-07-31 13:57:01');
INSERT INTO `lied_admin_operation_log` VALUES ('48', '1', 'admin/region/open/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 13:57:22', '2020-07-31 13:57:22');
INSERT INTO `lied_admin_operation_log` VALUES ('49', '1', 'admin/adv', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 13:57:26', '2020-07-31 13:57:26');
INSERT INTO `lied_admin_operation_log` VALUES ('50', '1', 'admin/adv/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 13:57:27', '2020-07-31 13:57:27');
INSERT INTO `lied_admin_operation_log` VALUES ('51', '1', 'admin/api/region/open/city', 'GET', '127.0.0.1', '{\"q\":null}', '2020-07-31 13:57:30', '2020-07-31 13:57:30');
INSERT INTO `lied_admin_operation_log` VALUES ('52', '1', 'admin/api/region/open/city', 'GET', '127.0.0.1', '{\"q\":null}', '2020-07-31 13:57:34', '2020-07-31 13:57:34');
INSERT INTO `lied_admin_operation_log` VALUES ('53', '1', 'admin/region/open', 'GET', '127.0.0.1', '[]', '2020-07-31 13:57:41', '2020-07-31 13:57:41');
INSERT INTO `lied_admin_operation_log` VALUES ('54', '1', 'admin/adv/create', 'GET', '127.0.0.1', '[]', '2020-07-31 13:58:17', '2020-07-31 13:58:17');
INSERT INTO `lied_admin_operation_log` VALUES ('55', '1', 'admin/api/region/open/city', 'GET', '127.0.0.1', '{\"q\":null}', '2020-07-31 13:58:20', '2020-07-31 13:58:20');
INSERT INTO `lied_admin_operation_log` VALUES ('56', '1', 'admin/adv/create', 'GET', '127.0.0.1', '[]', '2020-07-31 14:01:02', '2020-07-31 14:01:02');
INSERT INTO `lied_admin_operation_log` VALUES ('57', '1', 'admin/api/region/open/city', 'GET', '127.0.0.1', '{\"q\":\"guang\"}', '2020-07-31 14:01:09', '2020-07-31 14:01:09');
INSERT INTO `lied_admin_operation_log` VALUES ('58', '1', 'admin/api/region/open/city', 'GET', '127.0.0.1', '{\"q\":\"guang\"}', '2020-07-31 14:01:16', '2020-07-31 14:01:16');
INSERT INTO `lied_admin_operation_log` VALUES ('59', '1', 'admin/api/region/open/city', 'GET', '127.0.0.1', '{\"q\":\"\\u5e7f\\u5dde\"}', '2020-07-31 14:01:17', '2020-07-31 14:01:17');
INSERT INTO `lied_admin_operation_log` VALUES ('60', '1', 'admin/api/region/open/city', 'GET', '127.0.0.1', '{\"q\":\"\\u5e7f\"}', '2020-07-31 14:01:20', '2020-07-31 14:01:20');
INSERT INTO `lied_admin_operation_log` VALUES ('61', '1', 'admin/api/region/open/city', 'GET', '127.0.0.1', '{\"q\":\"guang\"}', '2020-07-31 14:01:21', '2020-07-31 14:01:21');
INSERT INTO `lied_admin_operation_log` VALUES ('62', '1', 'admin/api/region/open/city', 'GET', '127.0.0.1', '{\"q\":\"guangzhou\"}', '2020-07-31 14:01:23', '2020-07-31 14:01:23');
INSERT INTO `lied_admin_operation_log` VALUES ('63', '1', 'admin/api/region/open/city', 'GET', '127.0.0.1', '{\"q\":\"guang\"}', '2020-07-31 14:01:26', '2020-07-31 14:01:26');
INSERT INTO `lied_admin_operation_log` VALUES ('64', '1', 'admin/api/region/open/city', 'GET', '127.0.0.1', '{\"q\":\"guangz\"}', '2020-07-31 14:01:28', '2020-07-31 14:01:28');
INSERT INTO `lied_admin_operation_log` VALUES ('65', '1', 'admin/api/region/open/city', 'GET', '127.0.0.1', '{\"q\":\"guang\"}', '2020-07-31 14:01:30', '2020-07-31 14:01:30');
INSERT INTO `lied_admin_operation_log` VALUES ('66', '1', 'admin/api/region/open/city', 'GET', '127.0.0.1', '{\"q\":\"guangd\"}', '2020-07-31 14:01:31', '2020-07-31 14:01:31');
INSERT INTO `lied_admin_operation_log` VALUES ('67', '1', 'admin/api/region/open/city', 'GET', '127.0.0.1', '{\"q\":\"g\"}', '2020-07-31 14:01:33', '2020-07-31 14:01:33');
INSERT INTO `lied_admin_operation_log` VALUES ('68', '1', 'admin/api/region/open/city', 'GET', '127.0.0.1', '{\"q\":null}', '2020-07-31 14:02:34', '2020-07-31 14:02:34');
INSERT INTO `lied_admin_operation_log` VALUES ('69', '1', 'admin/api/region/open/city', 'GET', '127.0.0.1', '{\"q\":null}', '2020-07-31 14:07:48', '2020-07-31 14:07:48');
INSERT INTO `lied_admin_operation_log` VALUES ('70', '1', 'admin/api/region/open/city', 'GET', '127.0.0.1', '{\"q\":null}', '2020-07-31 14:31:14', '2020-07-31 14:31:14');
INSERT INTO `lied_admin_operation_log` VALUES ('71', '1', 'admin/adv/create', 'GET', '127.0.0.1', '[]', '2020-07-31 14:31:20', '2020-07-31 14:31:20');
INSERT INTO `lied_admin_operation_log` VALUES ('72', '1', 'admin/api/region/open/city', 'GET', '127.0.0.1', '{\"q\":null}', '2020-07-31 14:31:22', '2020-07-31 14:31:22');
INSERT INTO `lied_admin_operation_log` VALUES ('73', '1', 'admin/adv/create', 'GET', '127.0.0.1', '[]', '2020-07-31 14:37:19', '2020-07-31 14:37:19');
INSERT INTO `lied_admin_operation_log` VALUES ('74', '1', 'admin/api/region/open/city', 'GET', '127.0.0.1', '{\"q\":null}', '2020-07-31 14:37:23', '2020-07-31 14:37:23');
INSERT INTO `lied_admin_operation_log` VALUES ('75', '1', 'admin/adv/create', 'GET', '127.0.0.1', '[]', '2020-07-31 14:37:45', '2020-07-31 14:37:45');
INSERT INTO `lied_admin_operation_log` VALUES ('76', '1', 'admin/api/region/open/city', 'GET', '127.0.0.1', '{\"q\":null}', '2020-07-31 14:37:48', '2020-07-31 14:37:48');
INSERT INTO `lied_admin_operation_log` VALUES ('77', '1', 'admin/region/open', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 14:46:31', '2020-07-31 14:46:31');
INSERT INTO `lied_admin_operation_log` VALUES ('78', '1', 'admin/region/open/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 14:46:33', '2020-07-31 14:46:33');
INSERT INTO `lied_admin_operation_log` VALUES ('79', '1', 'admin/adv', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 14:48:03', '2020-07-31 14:48:03');
INSERT INTO `lied_admin_operation_log` VALUES ('80', '1', 'admin/adv/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 14:48:05', '2020-07-31 14:48:05');
INSERT INTO `lied_admin_operation_log` VALUES ('81', '1', 'admin/api/adv/position', 'GET', '127.0.0.1', '{\"q\":null}', '2020-07-31 14:48:21', '2020-07-31 14:48:21');
INSERT INTO `lied_admin_operation_log` VALUES ('82', '1', 'admin/api/region/open/city', 'GET', '127.0.0.1', '{\"q\":null}', '2020-07-31 14:48:26', '2020-07-31 14:48:26');
INSERT INTO `lied_admin_operation_log` VALUES ('83', '1', 'admin/adv', 'POST', '127.0.0.1', '{\"name\":\"\\u9996\\u9875\\u8f6e\\u64ad\",\"url\":\"https:\\/\\/test.xiehome.com\\/index.php\\/m.php\\/loan\",\"position_id\":\"1\",\"is_show\":\"on\",\"sort\":\"99\",\"advopen\":{\"new_1\":{\"position_id\":\"1\",\"start_time\":\"2020-07-31 00:00:00\",\"end_time\":\"2020-07-31 00:00:00\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"qd8UtR26fH3OTEjzhhZIWhZ3h9f0qPWRYv6Hpioe\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/adv\"}', '2020-07-31 14:48:32', '2020-07-31 14:48:32');
INSERT INTO `lied_admin_operation_log` VALUES ('84', '1', 'admin/adv/create', 'GET', '127.0.0.1', '[]', '2020-07-31 14:48:34', '2020-07-31 14:48:34');
INSERT INTO `lied_admin_operation_log` VALUES ('85', '1', 'admin/adv', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 14:52:03', '2020-07-31 14:52:03');
INSERT INTO `lied_admin_operation_log` VALUES ('86', '1', 'admin/adv/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 14:52:05', '2020-07-31 14:52:05');
INSERT INTO `lied_admin_operation_log` VALUES ('87', '1', 'admin/upload/image', 'POST', '127.0.0.1', '{\"name\":\"o_1eehq8rbsdi81t8b1aal7eh16v58.jpg\",\"_token\":\"qd8UtR26fH3OTEjzhhZIWhZ3h9f0qPWRYv6Hpioe\",\"upload_url\":\"images\\/adv_thumb\\/20200731\",\"is_lock\":\"0\"}', '2020-07-31 14:52:09', '2020-07-31 14:52:09');
INSERT INTO `lied_admin_operation_log` VALUES ('88', '1', 'admin/api/adv/position', 'GET', '127.0.0.1', '{\"q\":null}', '2020-07-31 14:52:13', '2020-07-31 14:52:13');
INSERT INTO `lied_admin_operation_log` VALUES ('89', '1', 'admin/api/region/open/city', 'GET', '127.0.0.1', '{\"q\":null}', '2020-07-31 14:52:17', '2020-07-31 14:52:17');
INSERT INTO `lied_admin_operation_log` VALUES ('90', '1', 'admin/adv', 'POST', '127.0.0.1', '{\"name\":\"\\u5546\\u57ce\\u5e73\\u53f0\\u63a5\\u53e3\",\"url\":\"https:\\/\\/test.xiehome.com\\/index.php\\/m.php\\/loan\",\"media_id\":\"1\",\"position_id\":\"1\",\"is_show\":\"on\",\"sort\":\"99\",\"advopen\":{\"new_1\":{\"position_id\":\"1\",\"start_time\":\"2020-07-31 00:00:00\",\"end_time\":\"2020-08-01 00:00:00\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"qd8UtR26fH3OTEjzhhZIWhZ3h9f0qPWRYv6Hpioe\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/adv\"}', '2020-07-31 14:52:23', '2020-07-31 14:52:23');
INSERT INTO `lied_admin_operation_log` VALUES ('91', '1', 'admin/adv/create', 'GET', '127.0.0.1', '[]', '2020-07-31 14:52:24', '2020-07-31 14:52:24');
INSERT INTO `lied_admin_operation_log` VALUES ('92', '1', 'admin/adv', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 14:53:06', '2020-07-31 14:53:06');
INSERT INTO `lied_admin_operation_log` VALUES ('93', '1', 'admin/adv/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 14:53:08', '2020-07-31 14:53:08');
INSERT INTO `lied_admin_operation_log` VALUES ('94', '1', 'admin/upload/image', 'POST', '127.0.0.1', '{\"name\":\"o_1eehqaqft12is1on21re9h5ocrkj.jpg\",\"_token\":\"qd8UtR26fH3OTEjzhhZIWhZ3h9f0qPWRYv6Hpioe\",\"upload_url\":\"images\\/adv_thumb\\/20200731\",\"is_lock\":\"0\"}', '2020-07-31 14:53:13', '2020-07-31 14:53:13');
INSERT INTO `lied_admin_operation_log` VALUES ('95', '1', 'admin/api/adv/position', 'GET', '127.0.0.1', '{\"q\":null}', '2020-07-31 14:53:15', '2020-07-31 14:53:15');
INSERT INTO `lied_admin_operation_log` VALUES ('96', '1', 'admin/api/region/open/city', 'GET', '127.0.0.1', '{\"q\":null}', '2020-07-31 14:53:18', '2020-07-31 14:53:18');
INSERT INTO `lied_admin_operation_log` VALUES ('97', '1', 'admin/adv', 'POST', '127.0.0.1', '{\"name\":\"\\u5546\\u57ce\\u5e73\\u53f0\\u63a5\\u53e3\",\"url\":\"https:\\/\\/test.xiehome.com\\/index.php\\/m.php\\/loan\",\"media_id\":\"2\",\"position_id\":\"1\",\"is_show\":\"on\",\"sort\":\"99\",\"advopen\":{\"new_1\":{\"region_id\":\"1\",\"start_time\":\"2020-07-31 00:00:00\",\"end_time\":\"2020-08-01 00:00:00\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"qd8UtR26fH3OTEjzhhZIWhZ3h9f0qPWRYv6Hpioe\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/adv\"}', '2020-07-31 14:53:23', '2020-07-31 14:53:23');
INSERT INTO `lied_admin_operation_log` VALUES ('98', '1', 'admin/adv/create', 'GET', '127.0.0.1', '[]', '2020-07-31 14:53:25', '2020-07-31 14:53:25');
INSERT INTO `lied_admin_operation_log` VALUES ('99', '1', 'admin/adv', 'POST', '127.0.0.1', '{\"name\":\"\\u5546\\u57ce\\u5e73\\u53f0\\u63a5\\u53e3\",\"url\":\"https:\\/\\/test.xiehome.com\\/index.php\\/m.php\\/loan\",\"media_id\":\"2\",\"position_id\":null,\"is_show\":\"on\",\"sort\":\"99\",\"advopen\":{\"new___LA_KEY__\":{\"region_id\":\"1\",\"start_time\":\"2020-07-31 00:00:00\",\"end_time\":\"2020-08-01 00:00:00\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"qd8UtR26fH3OTEjzhhZIWhZ3h9f0qPWRYv6Hpioe\"}', '2020-07-31 14:57:19', '2020-07-31 14:57:19');
INSERT INTO `lied_admin_operation_log` VALUES ('100', '1', 'admin/adv/create', 'GET', '127.0.0.1', '[]', '2020-07-31 14:57:19', '2020-07-31 14:57:19');
INSERT INTO `lied_admin_operation_log` VALUES ('101', '1', 'admin/adv', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 14:57:22', '2020-07-31 14:57:22');
INSERT INTO `lied_admin_operation_log` VALUES ('102', '1', 'admin/adv/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 14:57:23', '2020-07-31 14:57:23');
INSERT INTO `lied_admin_operation_log` VALUES ('103', '1', 'admin/upload/image', 'POST', '127.0.0.1', '{\"name\":\"o_1eehqiin3ocukiou5ink10fq17.jpg\",\"_token\":\"qd8UtR26fH3OTEjzhhZIWhZ3h9f0qPWRYv6Hpioe\",\"upload_url\":\"images\\/adv_thumb\\/20200731\",\"is_lock\":\"0\"}', '2020-07-31 14:57:27', '2020-07-31 14:57:27');
INSERT INTO `lied_admin_operation_log` VALUES ('104', '1', 'admin/api/adv/position', 'GET', '127.0.0.1', '{\"q\":null}', '2020-07-31 14:57:30', '2020-07-31 14:57:30');
INSERT INTO `lied_admin_operation_log` VALUES ('105', '1', 'admin/api/region/open/city', 'GET', '127.0.0.1', '{\"q\":null}', '2020-07-31 14:57:34', '2020-07-31 14:57:34');
INSERT INTO `lied_admin_operation_log` VALUES ('106', '1', 'admin/api/region/open/city', 'GET', '127.0.0.1', '{\"q\":null}', '2020-07-31 14:57:37', '2020-07-31 14:57:37');
INSERT INTO `lied_admin_operation_log` VALUES ('107', '1', 'admin/adv', 'POST', '127.0.0.1', '{\"name\":\"\\u5546\\u57ce\\u5e73\\u53f0\\u63a5\\u53e3\",\"url\":\"https:\\/\\/test.xiehome.com\\/index.php\\/m.php\\/loan\",\"media_id\":\"3\",\"position_id\":\"1\",\"is_show\":\"on\",\"sort\":\"99\",\"advopen\":{\"new_1\":{\"region_open_id\":\"1\",\"start_time\":\"2020-07-31 00:00:00\",\"end_time\":\"2020-08-01 00:00:00\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"qd8UtR26fH3OTEjzhhZIWhZ3h9f0qPWRYv6Hpioe\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/adv\"}', '2020-07-31 14:57:41', '2020-07-31 14:57:41');
INSERT INTO `lied_admin_operation_log` VALUES ('108', '1', 'admin/adv', 'GET', '127.0.0.1', '[]', '2020-07-31 14:57:41', '2020-07-31 14:57:41');
INSERT INTO `lied_admin_operation_log` VALUES ('109', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 14:58:24', '2020-07-31 14:58:24');
INSERT INTO `lied_admin_operation_log` VALUES ('110', '1', 'admin/api/adv/position', 'GET', '127.0.0.1', '{\"q\":null}', '2020-07-31 15:07:15', '2020-07-31 15:07:15');
INSERT INTO `lied_admin_operation_log` VALUES ('111', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-07-31 15:12:58', '2020-07-31 15:12:58');
INSERT INTO `lied_admin_operation_log` VALUES ('112', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-07-31 15:14:36', '2020-07-31 15:14:36');
INSERT INTO `lied_admin_operation_log` VALUES ('113', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-07-31 15:19:37', '2020-07-31 15:19:37');
INSERT INTO `lied_admin_operation_log` VALUES ('114', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-07-31 15:19:58', '2020-07-31 15:19:58');
INSERT INTO `lied_admin_operation_log` VALUES ('115', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-07-31 15:21:24', '2020-07-31 15:21:24');
INSERT INTO `lied_admin_operation_log` VALUES ('116', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-07-31 15:22:01', '2020-07-31 15:22:01');
INSERT INTO `lied_admin_operation_log` VALUES ('117', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-07-31 15:22:09', '2020-07-31 15:22:09');
INSERT INTO `lied_admin_operation_log` VALUES ('118', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-07-31 15:22:11', '2020-07-31 15:22:11');
INSERT INTO `lied_admin_operation_log` VALUES ('119', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-07-31 15:23:29', '2020-07-31 15:23:29');
INSERT INTO `lied_admin_operation_log` VALUES ('120', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-07-31 15:23:40', '2020-07-31 15:23:40');
INSERT INTO `lied_admin_operation_log` VALUES ('121', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-07-31 15:24:26', '2020-07-31 15:24:26');
INSERT INTO `lied_admin_operation_log` VALUES ('122', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-07-31 15:24:37', '2020-07-31 15:24:37');
INSERT INTO `lied_admin_operation_log` VALUES ('123', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-07-31 15:24:49', '2020-07-31 15:24:49');
INSERT INTO `lied_admin_operation_log` VALUES ('124', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-07-31 15:25:34', '2020-07-31 15:25:34');
INSERT INTO `lied_admin_operation_log` VALUES ('125', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-07-31 15:25:54', '2020-07-31 15:25:54');
INSERT INTO `lied_admin_operation_log` VALUES ('126', '1', 'admin/api/region/open/city', 'GET', '127.0.0.1', '{\"q\":null}', '2020-07-31 15:26:00', '2020-07-31 15:26:00');
INSERT INTO `lied_admin_operation_log` VALUES ('127', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-07-31 15:26:11', '2020-07-31 15:26:11');
INSERT INTO `lied_admin_operation_log` VALUES ('128', '1', 'admin/adv', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 15:26:16', '2020-07-31 15:26:16');
INSERT INTO `lied_admin_operation_log` VALUES ('129', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 15:26:18', '2020-07-31 15:26:18');
INSERT INTO `lied_admin_operation_log` VALUES ('130', '1', 'admin/adv', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 15:26:26', '2020-07-31 15:26:26');
INSERT INTO `lied_admin_operation_log` VALUES ('131', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 15:26:28', '2020-07-31 15:26:28');
INSERT INTO `lied_admin_operation_log` VALUES ('132', '1', 'admin/adv', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 15:27:48', '2020-07-31 15:27:48');
INSERT INTO `lied_admin_operation_log` VALUES ('133', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 15:27:49', '2020-07-31 15:27:49');
INSERT INTO `lied_admin_operation_log` VALUES ('134', '1', 'admin/api/region/open/city', 'GET', '127.0.0.1', '{\"q\":null}', '2020-07-31 15:27:52', '2020-07-31 15:27:52');
INSERT INTO `lied_admin_operation_log` VALUES ('135', '1', 'admin/adv/3', 'PUT', '127.0.0.1', '{\"name\":\"\\u5546\\u57ce\\u5e73\\u53f0\\u63a5\\u53e3\",\"url\":\"https:\\/\\/test.xiehome.com\\/index.php\\/m.php\\/loan\",\"media_id\":\"3\",\"position_id\":\"1\",\"is_show\":\"on\",\"sort\":\"99\",\"advopen\":{\"1\":{\"region_open_id\":\"1\",\"start_time\":\"2020-07-31 00:00:00\",\"end_time\":\"2020-08-01 00:00:00\",\"id\":\"1\",\"_remove_\":\"0\"}},\"_token\":\"qd8UtR26fH3OTEjzhhZIWhZ3h9f0qPWRYv6Hpioe\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/adv\"}', '2020-07-31 15:27:54', '2020-07-31 15:27:54');
INSERT INTO `lied_admin_operation_log` VALUES ('136', '1', 'admin/adv', 'GET', '127.0.0.1', '[]', '2020-07-31 15:27:54', '2020-07-31 15:27:54');
INSERT INTO `lied_admin_operation_log` VALUES ('137', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 15:27:56', '2020-07-31 15:27:56');
INSERT INTO `lied_admin_operation_log` VALUES ('138', '1', 'admin/api/region/open/city', 'GET', '127.0.0.1', '{\"q\":null}', '2020-07-31 15:28:10', '2020-07-31 15:28:10');
INSERT INTO `lied_admin_operation_log` VALUES ('139', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-07-31 15:28:37', '2020-07-31 15:28:37');
INSERT INTO `lied_admin_operation_log` VALUES ('140', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-07-31 15:28:41', '2020-07-31 15:28:41');
INSERT INTO `lied_admin_operation_log` VALUES ('141', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-07-31 15:29:50', '2020-07-31 15:29:50');
INSERT INTO `lied_admin_operation_log` VALUES ('142', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-07-31 15:29:53', '2020-07-31 15:29:53');
INSERT INTO `lied_admin_operation_log` VALUES ('143', '1', 'admin/api/region/open/city', 'GET', '127.0.0.1', '{\"q\":null}', '2020-07-31 15:29:57', '2020-07-31 15:29:57');
INSERT INTO `lied_admin_operation_log` VALUES ('144', '1', 'admin/adv/3', 'PUT', '127.0.0.1', '{\"name\":\"\\u5546\\u57ce\\u5e73\\u53f0\\u63a5\\u53e3\",\"url\":\"https:\\/\\/test.xiehome.com\\/index.php\\/m.php\\/loan\",\"media_id\":\"3\",\"position_id\":\"1\",\"is_show\":\"on\",\"sort\":\"99\",\"advopen\":{\"new_1\":{\"region_open_id\":\"1\",\"start_time\":\"2020-07-31 00:00:00\",\"end_time\":\"2020-08-01 00:00:00\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"qd8UtR26fH3OTEjzhhZIWhZ3h9f0qPWRYv6Hpioe\",\"_method\":\"PUT\"}', '2020-07-31 15:30:02', '2020-07-31 15:30:02');
INSERT INTO `lied_admin_operation_log` VALUES ('145', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-07-31 15:30:03', '2020-07-31 15:30:03');
INSERT INTO `lied_admin_operation_log` VALUES ('146', '1', 'admin/adv', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 15:30:26', '2020-07-31 15:30:26');
INSERT INTO `lied_admin_operation_log` VALUES ('147', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 15:30:29', '2020-07-31 15:30:29');
INSERT INTO `lied_admin_operation_log` VALUES ('148', '1', 'admin/api/region/open/city', 'GET', '127.0.0.1', '{\"q\":null}', '2020-07-31 15:30:32', '2020-07-31 15:30:32');
INSERT INTO `lied_admin_operation_log` VALUES ('149', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-07-31 15:31:08', '2020-07-31 15:31:08');
INSERT INTO `lied_admin_operation_log` VALUES ('150', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-07-31 15:31:10', '2020-07-31 15:31:10');
INSERT INTO `lied_admin_operation_log` VALUES ('151', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-07-31 15:33:43', '2020-07-31 15:33:43');
INSERT INTO `lied_admin_operation_log` VALUES ('152', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-07-31 15:35:10', '2020-07-31 15:35:10');
INSERT INTO `lied_admin_operation_log` VALUES ('153', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-07-31 15:35:12', '2020-07-31 15:35:12');
INSERT INTO `lied_admin_operation_log` VALUES ('154', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-07-31 15:40:17', '2020-07-31 15:40:17');
INSERT INTO `lied_admin_operation_log` VALUES ('155', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-07-31 15:43:03', '2020-07-31 15:43:03');
INSERT INTO `lied_admin_operation_log` VALUES ('156', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-07-31 15:43:04', '2020-07-31 15:43:04');
INSERT INTO `lied_admin_operation_log` VALUES ('157', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-07-31 15:43:59', '2020-07-31 15:43:59');
INSERT INTO `lied_admin_operation_log` VALUES ('158', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-07-31 15:44:10', '2020-07-31 15:44:10');
INSERT INTO `lied_admin_operation_log` VALUES ('159', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-07-31 15:44:54', '2020-07-31 15:44:54');
INSERT INTO `lied_admin_operation_log` VALUES ('160', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-07-31 15:45:39', '2020-07-31 15:45:39');
INSERT INTO `lied_admin_operation_log` VALUES ('161', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-07-31 15:46:16', '2020-07-31 15:46:16');
INSERT INTO `lied_admin_operation_log` VALUES ('162', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-07-31 15:46:25', '2020-07-31 15:46:25');
INSERT INTO `lied_admin_operation_log` VALUES ('163', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-07-31 15:47:03', '2020-07-31 15:47:03');
INSERT INTO `lied_admin_operation_log` VALUES ('164', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-07-31 15:47:12', '2020-07-31 15:47:12');
INSERT INTO `lied_admin_operation_log` VALUES ('165', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-07-31 15:47:43', '2020-07-31 15:47:43');
INSERT INTO `lied_admin_operation_log` VALUES ('166', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-07-31 15:47:50', '2020-07-31 15:47:50');
INSERT INTO `lied_admin_operation_log` VALUES ('167', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-07-31 15:48:00', '2020-07-31 15:48:00');
INSERT INTO `lied_admin_operation_log` VALUES ('168', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-07-31 15:48:34', '2020-07-31 15:48:34');
INSERT INTO `lied_admin_operation_log` VALUES ('169', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-07-31 15:48:46', '2020-07-31 15:48:46');
INSERT INTO `lied_admin_operation_log` VALUES ('170', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-07-31 15:49:18', '2020-07-31 15:49:18');
INSERT INTO `lied_admin_operation_log` VALUES ('171', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-07-31 15:49:24', '2020-07-31 15:49:24');
INSERT INTO `lied_admin_operation_log` VALUES ('172', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-07-31 15:58:44', '2020-07-31 15:58:44');
INSERT INTO `lied_admin_operation_log` VALUES ('173', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-07-31 15:59:09', '2020-07-31 15:59:09');
INSERT INTO `lied_admin_operation_log` VALUES ('174', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-07-31 15:59:18', '2020-07-31 15:59:18');
INSERT INTO `lied_admin_operation_log` VALUES ('175', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-07-31 16:03:25', '2020-07-31 16:03:25');
INSERT INTO `lied_admin_operation_log` VALUES ('176', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-07-31 16:03:41', '2020-07-31 16:03:41');
INSERT INTO `lied_admin_operation_log` VALUES ('177', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-07-31 16:12:13', '2020-07-31 16:12:13');
INSERT INTO `lied_admin_operation_log` VALUES ('178', '1', 'admin/adv', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 16:15:32', '2020-07-31 16:15:32');
INSERT INTO `lied_admin_operation_log` VALUES ('179', '1', 'admin/adv', 'GET', '127.0.0.1', '[]', '2020-07-31 16:16:25', '2020-07-31 16:16:25');
INSERT INTO `lied_admin_operation_log` VALUES ('180', '1', 'admin/adv', 'GET', '127.0.0.1', '[]', '2020-07-31 16:16:40', '2020-07-31 16:16:40');
INSERT INTO `lied_admin_operation_log` VALUES ('181', '1', 'admin/adv/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 16:26:20', '2020-07-31 16:26:20');
INSERT INTO `lied_admin_operation_log` VALUES ('182', '1', 'admin/api/adv/position', 'GET', '127.0.0.1', '{\"q\":null}', '2020-07-31 16:27:25', '2020-07-31 16:27:25');
INSERT INTO `lied_admin_operation_log` VALUES ('183', '1', 'admin/adv/position', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 16:28:30', '2020-07-31 16:28:30');
INSERT INTO `lied_admin_operation_log` VALUES ('184', '1', 'admin/adv', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 16:28:38', '2020-07-31 16:28:38');
INSERT INTO `lied_admin_operation_log` VALUES ('185', '1', 'admin/adv/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 16:28:41', '2020-07-31 16:28:41');
INSERT INTO `lied_admin_operation_log` VALUES ('186', '1', 'admin/adv/create', 'GET', '127.0.0.1', '[]', '2020-07-31 16:29:16', '2020-07-31 16:29:16');
INSERT INTO `lied_admin_operation_log` VALUES ('187', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-31 16:29:21', '2020-07-31 16:29:21');
INSERT INTO `lied_admin_operation_log` VALUES ('188', '1', 'admin/dashboard', 'GET', '127.0.0.1', '[]', '2020-07-31 16:29:22', '2020-07-31 16:29:22');
INSERT INTO `lied_admin_operation_log` VALUES ('189', '1', 'admin/product/order', 'GET', '127.0.0.1', '[]', '2020-07-31 16:30:21', '2020-07-31 16:30:21');
INSERT INTO `lied_admin_operation_log` VALUES ('190', '1', 'admin/product', 'GET', '127.0.0.1', '[]', '2020-07-31 16:30:25', '2020-07-31 16:30:25');
INSERT INTO `lied_admin_operation_log` VALUES ('191', '1', 'admin/adv', 'GET', '127.0.0.1', '[]', '2020-07-31 16:30:30', '2020-07-31 16:30:30');
INSERT INTO `lied_admin_operation_log` VALUES ('192', '1', 'admin/adv/position', 'GET', '127.0.0.1', '[]', '2020-07-31 16:32:11', '2020-07-31 16:32:11');
INSERT INTO `lied_admin_operation_log` VALUES ('193', '1', 'admin/adv/position/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 16:32:28', '2020-07-31 16:32:28');
INSERT INTO `lied_admin_operation_log` VALUES ('194', '1', 'admin/adv/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 16:32:32', '2020-07-31 16:32:32');
INSERT INTO `lied_admin_operation_log` VALUES ('195', '1', 'admin/adv/position', 'GET', '127.0.0.1', '[]', '2020-07-31 16:32:34', '2020-07-31 16:32:34');
INSERT INTO `lied_admin_operation_log` VALUES ('196', '1', 'admin/adv/position/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 16:32:35', '2020-07-31 16:32:35');
INSERT INTO `lied_admin_operation_log` VALUES ('197', '1', 'admin/adv/position', 'GET', '127.0.0.1', '[]', '2020-07-31 16:32:37', '2020-07-31 16:32:37');
INSERT INTO `lied_admin_operation_log` VALUES ('198', '1', 'admin/adv/position/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 16:32:40', '2020-07-31 16:32:40');
INSERT INTO `lied_admin_operation_log` VALUES ('199', '1', 'admin/adv/position', 'GET', '127.0.0.1', '[]', '2020-07-31 16:40:37', '2020-07-31 16:40:37');
INSERT INTO `lied_admin_operation_log` VALUES ('200', '1', 'admin/adv/position/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 16:40:38', '2020-07-31 16:40:38');
INSERT INTO `lied_admin_operation_log` VALUES ('201', '1', 'admin/adv/position', 'GET', '127.0.0.1', '[]', '2020-07-31 16:40:40', '2020-07-31 16:40:40');
INSERT INTO `lied_admin_operation_log` VALUES ('202', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-31 16:40:41', '2020-07-31 16:40:41');
INSERT INTO `lied_admin_operation_log` VALUES ('203', '1', 'admin/dashboard', 'GET', '127.0.0.1', '[]', '2020-07-31 16:40:41', '2020-07-31 16:40:41');
INSERT INTO `lied_admin_operation_log` VALUES ('204', '1', 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2020-07-31 16:41:52', '2020-07-31 16:41:52');
INSERT INTO `lied_admin_operation_log` VALUES ('205', '1', 'admin/dashboard', 'GET', '127.0.0.1', '[]', '2020-07-31 16:41:54', '2020-07-31 16:41:54');
INSERT INTO `lied_admin_operation_log` VALUES ('206', '1', 'admin/dashboard', 'GET', '127.0.0.1', '[]', '2020-07-31 16:42:24', '2020-07-31 16:42:24');
INSERT INTO `lied_admin_operation_log` VALUES ('207', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-31 16:42:25', '2020-07-31 16:42:25');
INSERT INTO `lied_admin_operation_log` VALUES ('208', '1', 'admin/dashboard', 'GET', '127.0.0.1', '[]', '2020-07-31 16:42:25', '2020-07-31 16:42:25');
INSERT INTO `lied_admin_operation_log` VALUES ('209', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-31 16:42:27', '2020-07-31 16:42:27');
INSERT INTO `lied_admin_operation_log` VALUES ('210', '1', 'admin/dashboard', 'GET', '127.0.0.1', '[]', '2020-07-31 16:42:27', '2020-07-31 16:42:27');
INSERT INTO `lied_admin_operation_log` VALUES ('211', '1', 'admin/adv/position', 'GET', '127.0.0.1', '[]', '2020-07-31 16:42:29', '2020-07-31 16:42:29');
INSERT INTO `lied_admin_operation_log` VALUES ('212', '1', 'admin/adv/position/create', 'GET', '127.0.0.1', '{\"_ifraem_id_\":\"iframe__admin_adv_position\"}', '2020-07-31 16:42:31', '2020-07-31 16:42:31');
INSERT INTO `lied_admin_operation_log` VALUES ('213', '1', 'admin/adv/position/create', 'GET', '127.0.0.1', '{\"_ifraem_id_\":\"iframe__admin_adv_position\"}', '2020-07-31 16:42:39', '2020-07-31 16:42:39');
INSERT INTO `lied_admin_operation_log` VALUES ('214', '1', 'admin/adv/position/1/edit', 'GET', '127.0.0.1', '{\"_ifraem_id_\":\"iframe__admin_adv_position\"}', '2020-07-31 16:42:45', '2020-07-31 16:42:45');
INSERT INTO `lied_admin_operation_log` VALUES ('215', '1', 'admin/adv/position/create', 'GET', '127.0.0.1', '{\"_ifraem_id_\":\"iframe__admin_adv_position\"}', '2020-07-31 16:42:57', '2020-07-31 16:42:57');
INSERT INTO `lied_admin_operation_log` VALUES ('216', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-31 16:42:59', '2020-07-31 16:42:59');
INSERT INTO `lied_admin_operation_log` VALUES ('217', '1', 'admin/dashboard', 'GET', '127.0.0.1', '[]', '2020-07-31 16:43:00', '2020-07-31 16:43:00');
INSERT INTO `lied_admin_operation_log` VALUES ('218', '1', 'admin/adv/position', 'GET', '127.0.0.1', '[]', '2020-07-31 16:43:01', '2020-07-31 16:43:01');
INSERT INTO `lied_admin_operation_log` VALUES ('219', '1', 'admin/adv/position/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 16:43:02', '2020-07-31 16:43:02');
INSERT INTO `lied_admin_operation_log` VALUES ('220', '1', 'admin/adv/position', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 16:43:05', '2020-07-31 16:43:05');
INSERT INTO `lied_admin_operation_log` VALUES ('221', '1', 'admin/adv/position/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 16:43:06', '2020-07-31 16:43:06');
INSERT INTO `lied_admin_operation_log` VALUES ('222', '1', 'admin/adv/position', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 16:43:08', '2020-07-31 16:43:08');
INSERT INTO `lied_admin_operation_log` VALUES ('223', '1', 'admin/adv/position/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 16:43:18', '2020-07-31 16:43:18');
INSERT INTO `lied_admin_operation_log` VALUES ('224', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-31 16:43:20', '2020-07-31 16:43:20');
INSERT INTO `lied_admin_operation_log` VALUES ('225', '1', 'admin/dashboard', 'GET', '127.0.0.1', '[]', '2020-07-31 16:43:20', '2020-07-31 16:43:20');
INSERT INTO `lied_admin_operation_log` VALUES ('226', '1', 'admin/adv/position', 'GET', '127.0.0.1', '[]', '2020-07-31 16:43:21', '2020-07-31 16:43:21');
INSERT INTO `lied_admin_operation_log` VALUES ('227', '1', 'admin/adv/position/create', 'GET', '127.0.0.1', '{\"_ifraem_id_\":\"iframe__admin_adv_position\"}', '2020-07-31 16:43:23', '2020-07-31 16:43:23');
INSERT INTO `lied_admin_operation_log` VALUES ('228', '1', 'admin/adv', 'GET', '127.0.0.1', '[]', '2020-07-31 16:43:29', '2020-07-31 16:43:29');
INSERT INTO `lied_admin_operation_log` VALUES ('229', '1', 'admin/adv/create', 'GET', '127.0.0.1', '{\"_ifraem_id_\":\"iframe__admin_adv\"}', '2020-07-31 16:43:31', '2020-07-31 16:43:31');
INSERT INTO `lied_admin_operation_log` VALUES ('230', '1', 'admin/adv', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 16:43:38', '2020-07-31 16:43:38');
INSERT INTO `lied_admin_operation_log` VALUES ('231', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '{\"_ifraem_id_\":\"iframe_http___www_lied_com_admin_adv_create__ifraem_id__iframe__admin_adv\"}', '2020-07-31 16:43:40', '2020-07-31 16:43:40');
INSERT INTO `lied_admin_operation_log` VALUES ('232', '1', 'admin/adv', 'GET', '127.0.0.1', '[]', '2020-07-31 17:03:48', '2020-07-31 17:03:48');
INSERT INTO `lied_admin_operation_log` VALUES ('233', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-31 17:07:25', '2020-07-31 17:07:25');
INSERT INTO `lied_admin_operation_log` VALUES ('234', '1', 'admin/dashboard', 'GET', '127.0.0.1', '[]', '2020-07-31 17:07:25', '2020-07-31 17:07:25');
INSERT INTO `lied_admin_operation_log` VALUES ('235', '1', 'admin/adv', 'GET', '127.0.0.1', '[]', '2020-07-31 17:07:28', '2020-07-31 17:07:28');
INSERT INTO `lied_admin_operation_log` VALUES ('236', '1', 'admin/adv', 'GET', '127.0.0.1', '[]', '2020-07-31 17:07:58', '2020-07-31 17:07:58');
INSERT INTO `lied_admin_operation_log` VALUES ('237', '1', 'admin/adv', 'GET', '127.0.0.1', '[]', '2020-07-31 17:09:29', '2020-07-31 17:09:29');
INSERT INTO `lied_admin_operation_log` VALUES ('238', '1', 'admin/adv', 'GET', '127.0.0.1', '[]', '2020-07-31 17:09:39', '2020-07-31 17:09:39');
INSERT INTO `lied_admin_operation_log` VALUES ('239', '1', 'admin/adv', 'GET', '127.0.0.1', '[]', '2020-07-31 17:10:50', '2020-07-31 17:10:50');
INSERT INTO `lied_admin_operation_log` VALUES ('240', '1', 'admin/adv', 'GET', '127.0.0.1', '[]', '2020-07-31 17:11:14', '2020-07-31 17:11:14');
INSERT INTO `lied_admin_operation_log` VALUES ('241', '1', 'admin/adv', 'GET', '127.0.0.1', '[]', '2020-07-31 17:14:16', '2020-07-31 17:14:16');
INSERT INTO `lied_admin_operation_log` VALUES ('242', '1', 'admin/adv', 'GET', '127.0.0.1', '[]', '2020-07-31 17:15:36', '2020-07-31 17:15:36');
INSERT INTO `lied_admin_operation_log` VALUES ('243', '1', 'admin/adv', 'GET', '127.0.0.1', '[]', '2020-07-31 17:20:30', '2020-07-31 17:20:30');
INSERT INTO `lied_admin_operation_log` VALUES ('244', '1', 'admin/adv', 'GET', '127.0.0.1', '[]', '2020-07-31 17:20:33', '2020-07-31 17:20:33');
INSERT INTO `lied_admin_operation_log` VALUES ('245', '1', 'admin/adv', 'GET', '127.0.0.1', '[]', '2020-07-31 17:20:38', '2020-07-31 17:20:38');
INSERT INTO `lied_admin_operation_log` VALUES ('246', '1', 'admin/adv', 'GET', '127.0.0.1', '[]', '2020-07-31 17:21:43', '2020-07-31 17:21:43');
INSERT INTO `lied_admin_operation_log` VALUES ('247', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 17:21:48', '2020-07-31 17:21:48');
INSERT INTO `lied_admin_operation_log` VALUES ('248', '1', 'admin/adv/3', 'PUT', '127.0.0.1', '{\"name\":\"\\u5546\\u57ce\\u5e73\\u53f0\\u63a5\\u53e3\",\"url\":\"https:\\/\\/test.xiehome.com\\/index.php\\/m.php\\/loan\",\"media_id\":\"3\",\"position_id\":\"1\",\"is_show\":\"on\",\"sort\":\"99\",\"advopen\":{\"1\":{\"region_open_id\":\"1\",\"start_time\":\"2020-07-31 00:00:00\",\"end_time\":\"2020-08-01 01:00:00\",\"id\":\"1\",\"_remove_\":\"0\"}},\"_token\":\"qd8UtR26fH3OTEjzhhZIWhZ3h9f0qPWRYv6Hpioe\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/adv\"}', '2020-07-31 17:21:55', '2020-07-31 17:21:55');
INSERT INTO `lied_admin_operation_log` VALUES ('249', '1', 'admin/adv', 'GET', '127.0.0.1', '[]', '2020-07-31 17:21:55', '2020-07-31 17:21:55');
INSERT INTO `lied_admin_operation_log` VALUES ('250', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 17:22:01', '2020-07-31 17:22:01');
INSERT INTO `lied_admin_operation_log` VALUES ('251', '1', 'admin/adv/3', 'PUT', '127.0.0.1', '{\"name\":\"\\u5546\\u57ce\\u5e73\\u53f0\\u63a5\\u53e3\",\"url\":\"https:\\/\\/test.xiehome.com\\/index.php\\/m.php\\/loan\",\"media_id\":\"3\",\"position_id\":\"1\",\"is_show\":\"on\",\"sort\":\"99\",\"advopen\":{\"1\":{\"region_open_id\":\"1\",\"start_time\":\"2020-07-31 00:00:00\",\"end_time\":\"2020-08-01 11:00:00\",\"id\":\"1\",\"_remove_\":\"0\"}},\"_token\":\"qd8UtR26fH3OTEjzhhZIWhZ3h9f0qPWRYv6Hpioe\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/adv\"}', '2020-07-31 17:22:15', '2020-07-31 17:22:15');
INSERT INTO `lied_admin_operation_log` VALUES ('252', '1', 'admin/adv', 'GET', '127.0.0.1', '[]', '2020-07-31 17:22:15', '2020-07-31 17:22:15');
INSERT INTO `lied_admin_operation_log` VALUES ('253', '1', 'admin/adv', 'GET', '127.0.0.1', '[]', '2020-07-31 17:22:19', '2020-07-31 17:22:19');
INSERT INTO `lied_admin_operation_log` VALUES ('254', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 17:22:53', '2020-07-31 17:22:53');
INSERT INTO `lied_admin_operation_log` VALUES ('255', '1', 'admin/adv/3', 'PUT', '127.0.0.1', '{\"name\":\"\\u5546\\u57ce\\u5e73\\u53f0\\u63a5\\u53e3\",\"url\":\"https:\\/\\/test.xiehome.com\\/index.php\\/m.php\\/loan\",\"media_id\":\"3\",\"position_id\":\"1\",\"is_show\":\"on\",\"sort\":\"99\",\"advopen\":{\"1\":{\"region_open_id\":\"1\",\"start_time\":\"2020-07-31 00:00:00\",\"end_time\":\"2020-08-01 20:00:00\",\"id\":\"1\",\"_remove_\":\"0\"}},\"_token\":\"qd8UtR26fH3OTEjzhhZIWhZ3h9f0qPWRYv6Hpioe\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/adv\"}', '2020-07-31 17:23:01', '2020-07-31 17:23:01');
INSERT INTO `lied_admin_operation_log` VALUES ('256', '1', 'admin/adv', 'GET', '127.0.0.1', '[]', '2020-07-31 17:23:01', '2020-07-31 17:23:01');
INSERT INTO `lied_admin_operation_log` VALUES ('257', '1', 'admin/adv', 'GET', '127.0.0.1', '[]', '2020-07-31 17:23:20', '2020-07-31 17:23:20');
INSERT INTO `lied_admin_operation_log` VALUES ('258', '1', 'admin/adv', 'GET', '127.0.0.1', '[]', '2020-07-31 17:25:36', '2020-07-31 17:25:36');
INSERT INTO `lied_admin_operation_log` VALUES ('259', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 17:26:09', '2020-07-31 17:26:09');
INSERT INTO `lied_admin_operation_log` VALUES ('260', '1', 'admin/adv/3', 'PUT', '127.0.0.1', '{\"name\":\"\\u5546\\u57ce\\u5e73\\u53f0\\u63a5\\u53e3\",\"url\":\"https:\\/\\/test.xiehome.com\\/index.php\\/m.php\\/loan\",\"media_id\":\"3\",\"position_id\":\"1\",\"is_show\":\"on\",\"sort\":\"99\",\"advopen\":{\"1\":{\"region_open_id\":\"1\",\"start_time\":\"2020-07-31 00:00:00\",\"end_time\":\"2020-08-01 12:00:00\",\"id\":\"1\",\"_remove_\":\"0\"}},\"_token\":\"qd8UtR26fH3OTEjzhhZIWhZ3h9f0qPWRYv6Hpioe\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/adv\"}', '2020-07-31 17:26:16', '2020-07-31 17:26:16');
INSERT INTO `lied_admin_operation_log` VALUES ('261', '1', 'admin/adv', 'GET', '127.0.0.1', '[]', '2020-07-31 17:26:17', '2020-07-31 17:26:17');
INSERT INTO `lied_admin_operation_log` VALUES ('262', '1', 'admin/adv/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 17:31:07', '2020-07-31 17:31:07');
INSERT INTO `lied_admin_operation_log` VALUES ('263', '1', 'admin/api/adv/position', 'GET', '127.0.0.1', '{\"q\":null}', '2020-07-31 17:31:10', '2020-07-31 17:31:10');
INSERT INTO `lied_admin_operation_log` VALUES ('264', '1', 'admin/api/adv/position', 'GET', '127.0.0.1', '{\"q\":null}', '2020-07-31 17:31:13', '2020-07-31 17:31:13');
INSERT INTO `lied_admin_operation_log` VALUES ('265', '1', 'admin/adv', 'GET', '127.0.0.1', '[]', '2020-07-31 17:31:46', '2020-07-31 17:31:46');
INSERT INTO `lied_admin_operation_log` VALUES ('266', '1', 'admin/adv/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 17:31:48', '2020-07-31 17:31:48');
INSERT INTO `lied_admin_operation_log` VALUES ('267', '1', 'admin/api/adv/position', 'GET', '127.0.0.1', '{\"q\":null}', '2020-07-31 17:31:51', '2020-07-31 17:31:51');
INSERT INTO `lied_admin_operation_log` VALUES ('268', '1', 'admin/adv', 'GET', '127.0.0.1', '[]', '2020-07-31 17:34:41', '2020-07-31 17:34:41');
INSERT INTO `lied_admin_operation_log` VALUES ('269', '1', 'admin/adv/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 17:34:42', '2020-07-31 17:34:42');
INSERT INTO `lied_admin_operation_log` VALUES ('270', '1', 'admin/api/adv/position', 'GET', '127.0.0.1', '{\"q\":null}', '2020-07-31 17:34:45', '2020-07-31 17:34:45');
INSERT INTO `lied_admin_operation_log` VALUES ('271', '1', 'admin/adv/position', 'GET', '127.0.0.1', '[]', '2020-07-31 17:36:10', '2020-07-31 17:36:10');
INSERT INTO `lied_admin_operation_log` VALUES ('272', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-07-31 17:42:40', '2020-07-31 17:42:40');
INSERT INTO `lied_admin_operation_log` VALUES ('273', '1', 'admin/adv/position', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 17:43:42', '2020-07-31 17:43:42');
INSERT INTO `lied_admin_operation_log` VALUES ('274', '1', 'admin/adv/position/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 17:43:48', '2020-07-31 17:43:48');
INSERT INTO `lied_admin_operation_log` VALUES ('275', '1', 'admin/adv/position', 'POST', '127.0.0.1', '{\"name\":\"\\u9996\\u9875\\u5206\\u7c7b\",\"ename\":\"index_category_icon\",\"width\":\"45\",\"height\":\"45\",\"is_show\":\"on\",\"_token\":\"qd8UtR26fH3OTEjzhhZIWhZ3h9f0qPWRYv6Hpioe\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/adv\\/position\"}', '2020-07-31 17:44:29', '2020-07-31 17:44:29');
INSERT INTO `lied_admin_operation_log` VALUES ('276', '1', 'admin/adv/position', 'GET', '127.0.0.1', '[]', '2020-07-31 17:44:29', '2020-07-31 17:44:29');
INSERT INTO `lied_admin_operation_log` VALUES ('277', '1', 'admin/adv', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 17:44:33', '2020-07-31 17:44:33');
INSERT INTO `lied_admin_operation_log` VALUES ('278', '1', 'admin/adv/position', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 17:44:35', '2020-07-31 17:44:35');
INSERT INTO `lied_admin_operation_log` VALUES ('279', '1', 'admin/adv/position', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 17:44:35', '2020-07-31 17:44:35');
INSERT INTO `lied_admin_operation_log` VALUES ('280', '1', 'admin/adv', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 17:44:43', '2020-07-31 17:44:43');
INSERT INTO `lied_admin_operation_log` VALUES ('281', '1', 'admin/adv/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 17:45:35', '2020-07-31 17:45:35');
INSERT INTO `lied_admin_operation_log` VALUES ('282', '1', 'admin/upload/image', 'POST', '127.0.0.1', '{\"name\":\"o_1eei4aechj8n12bplcde84kop8.png\",\"_token\":\"qd8UtR26fH3OTEjzhhZIWhZ3h9f0qPWRYv6Hpioe\",\"upload_url\":\"images\\/adv_thumb\\/20200731\",\"is_lock\":\"0\"}', '2020-07-31 17:47:47', '2020-07-31 17:47:47');
INSERT INTO `lied_admin_operation_log` VALUES ('283', '1', 'admin/api/adv/position', 'GET', '127.0.0.1', '{\"q\":null}', '2020-07-31 17:47:51', '2020-07-31 17:47:51');
INSERT INTO `lied_admin_operation_log` VALUES ('284', '1', 'admin/adv/create', 'GET', '127.0.0.1', '[]', '2020-07-31 17:48:38', '2020-07-31 17:48:38');
INSERT INTO `lied_admin_operation_log` VALUES ('285', '1', 'admin/upload/image', 'POST', '127.0.0.1', '{\"name\":\"o_1eei4c7h91mms1daa3e811gqeom8.png\",\"_token\":\"qd8UtR26fH3OTEjzhhZIWhZ3h9f0qPWRYv6Hpioe\",\"upload_url\":\"images\\/adv_thumb\\/20200731\",\"is_lock\":\"0\"}', '2020-07-31 17:48:45', '2020-07-31 17:48:45');
INSERT INTO `lied_admin_operation_log` VALUES ('286', '1', 'admin/api/adv/position', 'GET', '127.0.0.1', '{\"q\":null}', '2020-07-31 17:48:47', '2020-07-31 17:48:47');
INSERT INTO `lied_admin_operation_log` VALUES ('287', '1', 'admin/adv/create', 'GET', '127.0.0.1', '[]', '2020-07-31 17:49:20', '2020-07-31 17:49:20');
INSERT INTO `lied_admin_operation_log` VALUES ('288', '1', 'admin/upload/image', 'POST', '127.0.0.1', '{\"name\":\"o_1eei4do935sk1bnc1c9815oa1v3q8.png\",\"_token\":\"qd8UtR26fH3OTEjzhhZIWhZ3h9f0qPWRYv6Hpioe\",\"upload_url\":\"images\\/adv_thumb\\/20200731\",\"is_lock\":\"0\"}', '2020-07-31 17:49:35', '2020-07-31 17:49:35');
INSERT INTO `lied_admin_operation_log` VALUES ('289', '1', 'admin/api/adv/position', 'GET', '127.0.0.1', '{\"q\":null}', '2020-07-31 17:49:37', '2020-07-31 17:49:37');
INSERT INTO `lied_admin_operation_log` VALUES ('290', '1', 'admin/adv', 'POST', '127.0.0.1', '{\"name\":\"\\u670d\\u9970\",\"url\":\"https:\\/\\/test.xiehome.com\\/index.php\\/m.php\\/loan\",\"media_id\":\"6\",\"position_id\":\"2\",\"is_show\":\"on\",\"sort\":\"99\",\"advopen\":{\"new_1\":{\"region_open_id\":\"1\",\"start_time\":\"2020-07-31 00:00:00\",\"end_time\":\"2020-08-08 00:00:00\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"qd8UtR26fH3OTEjzhhZIWhZ3h9f0qPWRYv6Hpioe\"}', '2020-07-31 17:49:44', '2020-07-31 17:49:44');
INSERT INTO `lied_admin_operation_log` VALUES ('291', '1', 'admin/adv', 'GET', '127.0.0.1', '[]', '2020-07-31 17:49:45', '2020-07-31 17:49:45');
INSERT INTO `lied_admin_operation_log` VALUES ('292', '1', 'admin/adv/position', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 17:50:27', '2020-07-31 17:50:27');
INSERT INTO `lied_admin_operation_log` VALUES ('293', '1', 'admin/adv/position/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 17:50:29', '2020-07-31 17:50:29');
INSERT INTO `lied_admin_operation_log` VALUES ('294', '1', 'admin/adv/position', 'POST', '127.0.0.1', '{\"name\":\"\\u9996\\u9875\\u63d2\\u69fd\",\"ename\":\"index_plug\",\"width\":\"0\",\"height\":null,\"is_show\":\"on\",\"_token\":\"qd8UtR26fH3OTEjzhhZIWhZ3h9f0qPWRYv6Hpioe\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/adv\\/position\"}', '2020-07-31 17:52:39', '2020-07-31 17:52:39');
INSERT INTO `lied_admin_operation_log` VALUES ('295', '1', 'admin/adv/position/create', 'GET', '127.0.0.1', '[]', '2020-07-31 17:52:40', '2020-07-31 17:52:40');
INSERT INTO `lied_admin_operation_log` VALUES ('296', '1', 'admin/adv/position', 'POST', '127.0.0.1', '{\"name\":\"\\u9996\\u9875\\u63d2\\u69fd\",\"ename\":\"index_plug\",\"width\":\"0\",\"height\":\"0\",\"is_show\":\"on\",\"_token\":\"qd8UtR26fH3OTEjzhhZIWhZ3h9f0qPWRYv6Hpioe\"}', '2020-07-31 17:53:06', '2020-07-31 17:53:06');
INSERT INTO `lied_admin_operation_log` VALUES ('297', '1', 'admin/adv/position', 'GET', '127.0.0.1', '[]', '2020-07-31 17:53:06', '2020-07-31 17:53:06');
INSERT INTO `lied_admin_operation_log` VALUES ('298', '1', 'admin/adv/position/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 17:54:48', '2020-07-31 17:54:48');
INSERT INTO `lied_admin_operation_log` VALUES ('299', '1', 'admin/adv/position/2', 'PUT', '127.0.0.1', '{\"name\":\"\\u9996\\u9875\\u5206\\u7c7b\",\"ename\":\"index_category\",\"width\":\"120\",\"height\":\"120\",\"is_show\":\"on\",\"_token\":\"qd8UtR26fH3OTEjzhhZIWhZ3h9f0qPWRYv6Hpioe\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/adv\\/position\"}', '2020-07-31 17:55:07', '2020-07-31 17:55:07');
INSERT INTO `lied_admin_operation_log` VALUES ('300', '1', 'admin/adv/position', 'GET', '127.0.0.1', '[]', '2020-07-31 17:55:07', '2020-07-31 17:55:07');
INSERT INTO `lied_admin_operation_log` VALUES ('301', '1', 'admin/adv/position/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 17:55:14', '2020-07-31 17:55:14');
INSERT INTO `lied_admin_operation_log` VALUES ('302', '1', 'admin/adv/position', 'POST', '127.0.0.1', '{\"name\":\"\\u9996\\u9875\\u6bcf\\u65e5\\u901b\",\"ename\":\"index_daily\",\"width\":\"120\",\"height\":\"0\",\"is_show\":\"on\",\"_token\":\"qd8UtR26fH3OTEjzhhZIWhZ3h9f0qPWRYv6Hpioe\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/adv\\/position\"}', '2020-07-31 17:56:46', '2020-07-31 17:56:46');
INSERT INTO `lied_admin_operation_log` VALUES ('303', '1', 'admin/adv/position', 'GET', '127.0.0.1', '[]', '2020-07-31 17:56:46', '2020-07-31 17:56:46');
INSERT INTO `lied_admin_operation_log` VALUES ('304', '1', 'admin/adv/position/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 17:57:03', '2020-07-31 17:57:03');
INSERT INTO `lied_admin_operation_log` VALUES ('305', '1', 'admin/adv/position/3', 'PUT', '127.0.0.1', '{\"name\":\"\\u9996\\u9875\\u63d2\\u69fd\",\"ename\":\"index_plug\",\"width\":\"0\",\"height\":\"200\",\"is_show\":\"on\",\"_token\":\"qd8UtR26fH3OTEjzhhZIWhZ3h9f0qPWRYv6Hpioe\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/adv\\/position\"}', '2020-07-31 17:57:09', '2020-07-31 17:57:09');
INSERT INTO `lied_admin_operation_log` VALUES ('306', '1', 'admin/adv/position', 'GET', '127.0.0.1', '[]', '2020-07-31 17:57:10', '2020-07-31 17:57:10');
INSERT INTO `lied_admin_operation_log` VALUES ('307', '1', 'admin/adv', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-31 18:02:16', '2020-07-31 18:02:16');
INSERT INTO `lied_admin_operation_log` VALUES ('308', '1', 'admin/product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 09:39:24', '2020-08-03 09:39:24');
INSERT INTO `lied_admin_operation_log` VALUES ('309', '1', 'admin/product/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 09:39:26', '2020-08-03 09:39:26');
INSERT INTO `lied_admin_operation_log` VALUES ('310', '1', 'admin/adv/position', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 09:44:27', '2020-08-03 09:44:27');
INSERT INTO `lied_admin_operation_log` VALUES ('311', '1', 'admin/adv', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 09:44:29', '2020-08-03 09:44:29');
INSERT INTO `lied_admin_operation_log` VALUES ('312', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 09:44:31', '2020-08-03 09:44:31');
INSERT INTO `lied_admin_operation_log` VALUES ('313', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 09:45:12', '2020-08-03 09:45:12');
INSERT INTO `lied_admin_operation_log` VALUES ('314', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 09:46:45', '2020-08-03 09:46:45');
INSERT INTO `lied_admin_operation_log` VALUES ('315', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 09:46:51', '2020-08-03 09:46:51');
INSERT INTO `lied_admin_operation_log` VALUES ('316', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 09:49:10', '2020-08-03 09:49:10');
INSERT INTO `lied_admin_operation_log` VALUES ('317', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 09:52:09', '2020-08-03 09:52:09');
INSERT INTO `lied_admin_operation_log` VALUES ('318', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 09:52:25', '2020-08-03 09:52:25');
INSERT INTO `lied_admin_operation_log` VALUES ('319', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 09:52:33', '2020-08-03 09:52:33');
INSERT INTO `lied_admin_operation_log` VALUES ('320', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 09:54:32', '2020-08-03 09:54:32');
INSERT INTO `lied_admin_operation_log` VALUES ('321', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 09:54:58', '2020-08-03 09:54:58');
INSERT INTO `lied_admin_operation_log` VALUES ('322', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 09:57:18', '2020-08-03 09:57:18');
INSERT INTO `lied_admin_operation_log` VALUES ('323', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 09:58:56', '2020-08-03 09:58:56');
INSERT INTO `lied_admin_operation_log` VALUES ('324', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 09:59:04', '2020-08-03 09:59:04');
INSERT INTO `lied_admin_operation_log` VALUES ('325', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 09:59:47', '2020-08-03 09:59:47');
INSERT INTO `lied_admin_operation_log` VALUES ('326', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 10:02:17', '2020-08-03 10:02:17');
INSERT INTO `lied_admin_operation_log` VALUES ('327', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 10:02:30', '2020-08-03 10:02:30');
INSERT INTO `lied_admin_operation_log` VALUES ('328', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 10:03:02', '2020-08-03 10:03:02');
INSERT INTO `lied_admin_operation_log` VALUES ('329', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 10:03:31', '2020-08-03 10:03:31');
INSERT INTO `lied_admin_operation_log` VALUES ('330', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 10:03:54', '2020-08-03 10:03:54');
INSERT INTO `lied_admin_operation_log` VALUES ('331', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 10:04:02', '2020-08-03 10:04:02');
INSERT INTO `lied_admin_operation_log` VALUES ('332', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 10:06:21', '2020-08-03 10:06:21');
INSERT INTO `lied_admin_operation_log` VALUES ('333', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 10:06:35', '2020-08-03 10:06:35');
INSERT INTO `lied_admin_operation_log` VALUES ('334', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 10:07:37', '2020-08-03 10:07:37');
INSERT INTO `lied_admin_operation_log` VALUES ('335', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 10:08:05', '2020-08-03 10:08:05');
INSERT INTO `lied_admin_operation_log` VALUES ('336', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 10:08:11', '2020-08-03 10:08:11');
INSERT INTO `lied_admin_operation_log` VALUES ('337', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 10:08:26', '2020-08-03 10:08:26');
INSERT INTO `lied_admin_operation_log` VALUES ('338', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 10:09:23', '2020-08-03 10:09:23');
INSERT INTO `lied_admin_operation_log` VALUES ('339', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 10:09:33', '2020-08-03 10:09:33');
INSERT INTO `lied_admin_operation_log` VALUES ('340', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 10:09:35', '2020-08-03 10:09:35');
INSERT INTO `lied_admin_operation_log` VALUES ('341', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 10:09:43', '2020-08-03 10:09:43');
INSERT INTO `lied_admin_operation_log` VALUES ('342', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 10:10:08', '2020-08-03 10:10:08');
INSERT INTO `lied_admin_operation_log` VALUES ('343', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 10:10:10', '2020-08-03 10:10:10');
INSERT INTO `lied_admin_operation_log` VALUES ('344', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 10:10:17', '2020-08-03 10:10:17');
INSERT INTO `lied_admin_operation_log` VALUES ('345', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 10:10:30', '2020-08-03 10:10:30');
INSERT INTO `lied_admin_operation_log` VALUES ('346', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 10:10:38', '2020-08-03 10:10:38');
INSERT INTO `lied_admin_operation_log` VALUES ('347', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 10:10:59', '2020-08-03 10:10:59');
INSERT INTO `lied_admin_operation_log` VALUES ('348', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 10:11:14', '2020-08-03 10:11:14');
INSERT INTO `lied_admin_operation_log` VALUES ('349', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 10:11:18', '2020-08-03 10:11:18');
INSERT INTO `lied_admin_operation_log` VALUES ('350', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 10:12:43', '2020-08-03 10:12:43');
INSERT INTO `lied_admin_operation_log` VALUES ('351', '1', 'admin/adv/3', 'PUT', '127.0.0.1', '{\"name\":\"\\u5546\\u57ce\\u5e73\\u53f0\\u63a5\\u53e3\",\"url\":\"https:\\/\\/test.xiehome.com\\/index.php\\/m.php\\/loan\",\"media_id\":null,\"position_id\":\"1\",\"desc\":null,\"is_show\":\"on\",\"sort\":\"99\",\"advopen\":{\"1\":{\"region_open_id\":\"1\",\"start_time\":\"2020-07-31 00:00:00\",\"end_time\":\"2020-08-01 12:00:00\",\"id\":\"1\",\"_remove_\":\"0\"}},\"_token\":\"9ynun2hjdFsMmzsXtSVvk7HYh68zrT47EYLmGuvA\",\"_method\":\"PUT\"}', '2020-08-03 10:13:37', '2020-08-03 10:13:37');
INSERT INTO `lied_admin_operation_log` VALUES ('352', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 10:13:39', '2020-08-03 10:13:39');
INSERT INTO `lied_admin_operation_log` VALUES ('353', '1', 'admin/adv', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 10:13:48', '2020-08-03 10:13:48');
INSERT INTO `lied_admin_operation_log` VALUES ('354', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 10:13:51', '2020-08-03 10:13:51');
INSERT INTO `lied_admin_operation_log` VALUES ('355', '1', 'admin/adv', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 10:15:55', '2020-08-03 10:15:55');
INSERT INTO `lied_admin_operation_log` VALUES ('356', '1', 'admin/product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 10:15:58', '2020-08-03 10:15:58');
INSERT INTO `lied_admin_operation_log` VALUES ('357', '1', 'admin/product/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 10:15:59', '2020-08-03 10:15:59');
INSERT INTO `lied_admin_operation_log` VALUES ('358', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-08-03 10:16:31', '2020-08-03 10:16:31');
INSERT INTO `lied_admin_operation_log` VALUES ('359', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-08-03 10:17:39', '2020-08-03 10:17:39');
INSERT INTO `lied_admin_operation_log` VALUES ('360', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-08-03 10:18:27', '2020-08-03 10:18:27');
INSERT INTO `lied_admin_operation_log` VALUES ('361', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-08-03 10:18:43', '2020-08-03 10:18:43');
INSERT INTO `lied_admin_operation_log` VALUES ('362', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-08-03 10:19:21', '2020-08-03 10:19:21');
INSERT INTO `lied_admin_operation_log` VALUES ('363', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-08-03 10:19:25', '2020-08-03 10:19:25');
INSERT INTO `lied_admin_operation_log` VALUES ('364', '1', 'admin/api/brand', 'GET', '127.0.0.1', '{\"q\":null}', '2020-08-03 10:19:34', '2020-08-03 10:19:34');
INSERT INTO `lied_admin_operation_log` VALUES ('365', '1', 'admin/brand', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 10:19:39', '2020-08-03 10:19:39');
INSERT INTO `lied_admin_operation_log` VALUES ('366', '1', 'admin/brand/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 10:19:40', '2020-08-03 10:19:40');
INSERT INTO `lied_admin_operation_log` VALUES ('367', '1', 'admin/brand', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 10:24:21', '2020-08-03 10:24:21');
INSERT INTO `lied_admin_operation_log` VALUES ('368', '1', 'admin/brand/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 10:24:24', '2020-08-03 10:24:24');
INSERT INTO `lied_admin_operation_log` VALUES ('369', '1', 'admin/upload/image', 'POST', '127.0.0.1', '{\"name\":\"o_1eep25bn91e80hgd1kht1k3kkoc8.JPG\",\"_token\":\"9ynun2hjdFsMmzsXtSVvk7HYh68zrT47EYLmGuvA\",\"upload_url\":\"images\\/brand_thumb\\/20200803\",\"is_lock\":\"0\"}', '2020-08-03 10:24:44', '2020-08-03 10:24:44');
INSERT INTO `lied_admin_operation_log` VALUES ('370', '1', 'admin/brand', 'POST', '127.0.0.1', '{\"name\":\"lied\",\"category_id\":\"0\",\"media_id\":\"7\",\"site_url\":\"http:\\/\\/baidu.com\",\"description\":\"qqqqqq\",\"sort_order\":\"99\",\"is_show\":\"on\",\"is_audit\":\"on\",\"_token\":\"9ynun2hjdFsMmzsXtSVvk7HYh68zrT47EYLmGuvA\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/brand\"}', '2020-08-03 10:25:09', '2020-08-03 10:25:09');
INSERT INTO `lied_admin_operation_log` VALUES ('371', '1', 'admin/brand/create', 'GET', '127.0.0.1', '[]', '2020-08-03 10:25:10', '2020-08-03 10:25:10');
INSERT INTO `lied_admin_operation_log` VALUES ('372', '1', 'admin/brand/create', 'GET', '127.0.0.1', '[]', '2020-08-03 10:28:23', '2020-08-03 10:28:23');
INSERT INTO `lied_admin_operation_log` VALUES ('373', '1', 'admin/brand/create', 'GET', '127.0.0.1', '[]', '2020-08-03 10:30:39', '2020-08-03 10:30:39');
INSERT INTO `lied_admin_operation_log` VALUES ('374', '1', 'admin/brand/create', 'GET', '127.0.0.1', '[]', '2020-08-03 10:33:28', '2020-08-03 10:33:28');
INSERT INTO `lied_admin_operation_log` VALUES ('375', '1', 'admin/brand/create', 'GET', '127.0.0.1', '[]', '2020-08-03 10:33:55', '2020-08-03 10:33:55');
INSERT INTO `lied_admin_operation_log` VALUES ('376', '1', 'admin/brand/create', 'GET', '127.0.0.1', '[]', '2020-08-03 10:34:14', '2020-08-03 10:34:14');
INSERT INTO `lied_admin_operation_log` VALUES ('377', '1', 'admin/brand/create', 'GET', '127.0.0.1', '[]', '2020-08-03 10:34:27', '2020-08-03 10:34:27');
INSERT INTO `lied_admin_operation_log` VALUES ('378', '1', 'admin/brand/create', 'GET', '127.0.0.1', '[]', '2020-08-03 10:34:51', '2020-08-03 10:34:51');
INSERT INTO `lied_admin_operation_log` VALUES ('379', '1', 'admin/brand/create', 'GET', '127.0.0.1', '[]', '2020-08-03 10:35:07', '2020-08-03 10:35:07');
INSERT INTO `lied_admin_operation_log` VALUES ('380', '1', 'admin/brand/create', 'GET', '127.0.0.1', '[]', '2020-08-03 10:35:22', '2020-08-03 10:35:22');
INSERT INTO `lied_admin_operation_log` VALUES ('381', '1', 'admin/brand/create', 'GET', '127.0.0.1', '[]', '2020-08-03 10:36:04', '2020-08-03 10:36:04');
INSERT INTO `lied_admin_operation_log` VALUES ('382', '1', 'admin/brand/create', 'GET', '127.0.0.1', '[]', '2020-08-03 10:36:39', '2020-08-03 10:36:39');
INSERT INTO `lied_admin_operation_log` VALUES ('383', '1', 'admin/brand/create', 'GET', '127.0.0.1', '[]', '2020-08-03 10:36:51', '2020-08-03 10:36:51');
INSERT INTO `lied_admin_operation_log` VALUES ('384', '1', 'admin/brand/create', 'GET', '127.0.0.1', '[]', '2020-08-03 10:37:14', '2020-08-03 10:37:14');
INSERT INTO `lied_admin_operation_log` VALUES ('385', '1', 'admin/brand/create', 'GET', '127.0.0.1', '[]', '2020-08-03 10:37:21', '2020-08-03 10:37:21');
INSERT INTO `lied_admin_operation_log` VALUES ('386', '1', 'admin/brand/create', 'GET', '127.0.0.1', '[]', '2020-08-03 10:38:31', '2020-08-03 10:38:31');
INSERT INTO `lied_admin_operation_log` VALUES ('387', '1', 'admin/brand/create', 'GET', '127.0.0.1', '[]', '2020-08-03 10:38:43', '2020-08-03 10:38:43');
INSERT INTO `lied_admin_operation_log` VALUES ('388', '1', 'admin/brand/create', 'GET', '127.0.0.1', '[]', '2020-08-03 10:39:23', '2020-08-03 10:39:23');
INSERT INTO `lied_admin_operation_log` VALUES ('389', '1', 'admin/brand/create', 'GET', '127.0.0.1', '[]', '2020-08-03 10:39:33', '2020-08-03 10:39:33');
INSERT INTO `lied_admin_operation_log` VALUES ('390', '1', 'admin/brand/create', 'GET', '127.0.0.1', '[]', '2020-08-03 10:39:50', '2020-08-03 10:39:50');
INSERT INTO `lied_admin_operation_log` VALUES ('391', '1', 'admin/upload/image', 'POST', '127.0.0.1', '{\"name\":\"o_1eep319v7h5tf6g1rvfhujklp8.JPG\",\"_token\":\"9ynun2hjdFsMmzsXtSVvk7HYh68zrT47EYLmGuvA\",\"upload_url\":\"images\\/brand_thumb\\/20200803\",\"is_lock\":\"0\"}', '2020-08-03 10:40:00', '2020-08-03 10:40:00');
INSERT INTO `lied_admin_operation_log` VALUES ('392', '1', 'admin/brand', 'POST', '127.0.0.1', '{\"name\":\"lied\",\"category_id\":null,\"media_id\":\"8\",\"site_url\":\"http:\\/\\/baidu.com\",\"description\":\"aaaa\",\"sort_order\":\"99\",\"is_show\":\"on\",\"is_audit\":\"on\",\"_token\":\"9ynun2hjdFsMmzsXtSVvk7HYh68zrT47EYLmGuvA\"}', '2020-08-03 10:40:05', '2020-08-03 10:40:05');
INSERT INTO `lied_admin_operation_log` VALUES ('393', '1', 'admin/brand', 'GET', '127.0.0.1', '[]', '2020-08-03 10:40:05', '2020-08-03 10:40:05');
INSERT INTO `lied_admin_operation_log` VALUES ('394', '1', 'admin/product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 10:40:47', '2020-08-03 10:40:47');
INSERT INTO `lied_admin_operation_log` VALUES ('395', '1', 'admin/product/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 10:40:48', '2020-08-03 10:40:48');
INSERT INTO `lied_admin_operation_log` VALUES ('396', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-08-03 10:41:40', '2020-08-03 10:41:40');
INSERT INTO `lied_admin_operation_log` VALUES ('397', '1', 'admin/api/brand', 'GET', '127.0.0.1', '{\"q\":null}', '2020-08-03 10:41:47', '2020-08-03 10:41:47');
INSERT INTO `lied_admin_operation_log` VALUES ('398', '1', 'admin/upload/image', 'POST', '127.0.0.1', '{\"name\":\"o_1eep34pd51di619ff1ij21itbgb48.png\",\"_token\":\"9ynun2hjdFsMmzsXtSVvk7HYh68zrT47EYLmGuvA\",\"upload_url\":\"images\\/product_picture\\/20200803\",\"is_lock\":\"0\"}', '2020-08-03 10:41:54', '2020-08-03 10:41:54');
INSERT INTO `lied_admin_operation_log` VALUES ('399', '1', 'admin/upload/image', 'POST', '127.0.0.1', '{\"name\":\"o_1eep34rs4b8q1tel1uj219sq15m8d.jpg\",\"_token\":\"9ynun2hjdFsMmzsXtSVvk7HYh68zrT47EYLmGuvA\",\"upload_url\":\"images\\/product_picture\\/20200803\",\"is_lock\":\"0\"}', '2020-08-03 10:41:56', '2020-08-03 10:41:56');
INSERT INTO `lied_admin_operation_log` VALUES ('400', '1', 'admin/product', 'POST', '127.0.0.1', '{\"name\":\"lied\",\"category_id\":null,\"brand_id\":\"2\",\"line_price\":\"12.00\",\"picture\":[\"9\",\"10\"],\"description\":\"1231\",\"content\":\"<p><\\/p><p>1211<\\/p>\",\"sort\":\"99\",\"is_real\":\"on\",\"is_on_sale\":\"on\",\"is_audit\":\"on\",\"created_id\":\"1\",\"_token\":\"9ynun2hjdFsMmzsXtSVvk7HYh68zrT47EYLmGuvA\",\"_date\":\"20200803\",\"virtual_quantity\":\"1\",\"is_limit\":\"0\"}', '2020-08-03 10:42:07', '2020-08-03 10:42:07');
INSERT INTO `lied_admin_operation_log` VALUES ('401', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-08-03 10:42:08', '2020-08-03 10:42:08');
INSERT INTO `lied_admin_operation_log` VALUES ('402', '1', 'admin/api/brand', 'GET', '127.0.0.1', '{\"q\":null}', '2020-08-03 10:43:22', '2020-08-03 10:43:22');
INSERT INTO `lied_admin_operation_log` VALUES ('403', '1', 'admin/product', 'POST', '127.0.0.1', '{\"name\":\"lied\",\"category_id\":null,\"brand_id\":\"2\",\"line_price\":\"12.00\",\"picture\":[\"9\",\"10\"],\"description\":\"1231\",\"content\":\"<p><\\/p><p>1211<\\/p>\",\"sort\":\"99\",\"is_real\":\"on\",\"is_on_sale\":\"on\",\"is_audit\":\"on\",\"created_id\":\"1\",\"_token\":\"9ynun2hjdFsMmzsXtSVvk7HYh68zrT47EYLmGuvA\",\"_date\":\"20200803\",\"virtual_quantity\":\"1\",\"is_limit\":\"0\"}', '2020-08-03 10:43:33', '2020-08-03 10:43:33');
INSERT INTO `lied_admin_operation_log` VALUES ('404', '1', 'admin/product', 'GET', '127.0.0.1', '[]', '2020-08-03 10:43:33', '2020-08-03 10:43:33');
INSERT INTO `lied_admin_operation_log` VALUES ('405', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 10:44:36', '2020-08-03 10:44:36');
INSERT INTO `lied_admin_operation_log` VALUES ('406', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 10:44:41', '2020-08-03 10:44:41');
INSERT INTO `lied_admin_operation_log` VALUES ('407', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 10:44:45', '2020-08-03 10:44:45');
INSERT INTO `lied_admin_operation_log` VALUES ('408', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 10:44:51', '2020-08-03 10:44:51');
INSERT INTO `lied_admin_operation_log` VALUES ('409', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 10:45:16', '2020-08-03 10:45:16');
INSERT INTO `lied_admin_operation_log` VALUES ('410', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 10:48:00', '2020-08-03 10:48:00');
INSERT INTO `lied_admin_operation_log` VALUES ('411', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-08-03 10:54:09', '2020-08-03 10:54:09');
INSERT INTO `lied_admin_operation_log` VALUES ('412', '1', 'admin/adv', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 10:54:18', '2020-08-03 10:54:18');
INSERT INTO `lied_admin_operation_log` VALUES ('413', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 10:54:20', '2020-08-03 10:54:20');
INSERT INTO `lied_admin_operation_log` VALUES ('414', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 10:54:28', '2020-08-03 10:54:28');
INSERT INTO `lied_admin_operation_log` VALUES ('415', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 10:55:27', '2020-08-03 10:55:27');
INSERT INTO `lied_admin_operation_log` VALUES ('416', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 10:55:44', '2020-08-03 10:55:44');
INSERT INTO `lied_admin_operation_log` VALUES ('417', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 10:56:51', '2020-08-03 10:56:51');
INSERT INTO `lied_admin_operation_log` VALUES ('418', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 10:57:13', '2020-08-03 10:57:13');
INSERT INTO `lied_admin_operation_log` VALUES ('419', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 10:57:24', '2020-08-03 10:57:24');
INSERT INTO `lied_admin_operation_log` VALUES ('420', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 10:58:24', '2020-08-03 10:58:24');
INSERT INTO `lied_admin_operation_log` VALUES ('421', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 10:59:25', '2020-08-03 10:59:25');
INSERT INTO `lied_admin_operation_log` VALUES ('422', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 10:59:34', '2020-08-03 10:59:34');
INSERT INTO `lied_admin_operation_log` VALUES ('423', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 11:00:39', '2020-08-03 11:00:39');
INSERT INTO `lied_admin_operation_log` VALUES ('424', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 11:00:40', '2020-08-03 11:00:40');
INSERT INTO `lied_admin_operation_log` VALUES ('425', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 11:01:27', '2020-08-03 11:01:27');
INSERT INTO `lied_admin_operation_log` VALUES ('426', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 11:02:54', '2020-08-03 11:02:54');
INSERT INTO `lied_admin_operation_log` VALUES ('427', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 11:04:48', '2020-08-03 11:04:48');
INSERT INTO `lied_admin_operation_log` VALUES ('428', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 11:05:51', '2020-08-03 11:05:51');
INSERT INTO `lied_admin_operation_log` VALUES ('429', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 11:05:53', '2020-08-03 11:05:53');
INSERT INTO `lied_admin_operation_log` VALUES ('430', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 11:06:46', '2020-08-03 11:06:46');
INSERT INTO `lied_admin_operation_log` VALUES ('431', '1', 'admin/product/1', 'PUT', '127.0.0.1', '{\"name\":\"lied\",\"category_id\":null,\"brand_id\":\"2\",\"line_price\":\"12.00\",\"picture\":[\"10\"],\"description\":\"1231\",\"content\":\"<p><\\/p><p>1211<\\/p>\",\"sort\":\"99\",\"is_real\":\"on\",\"is_on_sale\":\"on\",\"is_audit\":\"on\",\"created_id\":\"1\",\"_token\":\"9ynun2hjdFsMmzsXtSVvk7HYh68zrT47EYLmGuvA\",\"_date\":\"20200803\",\"sku_attr\":\"[]\",\"virtual_quantity\":\"1\",\"is_limit\":\"0\",\"_method\":\"PUT\"}', '2020-08-03 11:06:55', '2020-08-03 11:06:55');
INSERT INTO `lied_admin_operation_log` VALUES ('432', '1', 'admin/product', 'GET', '127.0.0.1', '[]', '2020-08-03 11:06:56', '2020-08-03 11:06:56');
INSERT INTO `lied_admin_operation_log` VALUES ('433', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:06:58', '2020-08-03 11:06:58');
INSERT INTO `lied_admin_operation_log` VALUES ('434', '1', 'admin/product/1', 'PUT', '127.0.0.1', '{\"name\":\"lied\",\"category_id\":null,\"brand_id\":\"2\",\"line_price\":\"12.00\",\"picture\":null,\"description\":\"1231\",\"content\":\"<p><\\/p><p>1211<\\/p>\",\"sort\":\"99\",\"is_real\":\"on\",\"is_on_sale\":\"on\",\"is_audit\":\"on\",\"created_id\":\"1\",\"_token\":\"9ynun2hjdFsMmzsXtSVvk7HYh68zrT47EYLmGuvA\",\"_date\":\"20200803\",\"sku_attr\":\"[]\",\"virtual_quantity\":\"1\",\"is_limit\":\"0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/product\"}', '2020-08-03 11:07:08', '2020-08-03 11:07:08');
INSERT INTO `lied_admin_operation_log` VALUES ('435', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 11:07:08', '2020-08-03 11:07:08');
INSERT INTO `lied_admin_operation_log` VALUES ('436', '1', 'admin/product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:07:18', '2020-08-03 11:07:18');
INSERT INTO `lied_admin_operation_log` VALUES ('437', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:07:20', '2020-08-03 11:07:20');
INSERT INTO `lied_admin_operation_log` VALUES ('438', '1', 'admin/upload/image', 'POST', '127.0.0.1', '{\"name\":\"o_1eep4jgm897s1ts91v391ig4faak.jpg\",\"_token\":\"9ynun2hjdFsMmzsXtSVvk7HYh68zrT47EYLmGuvA\",\"upload_url\":\"images\\/product_picture\\/20200803\",\"is_lock\":\"0\"}', '2020-08-03 11:07:25', '2020-08-03 11:07:25');
INSERT INTO `lied_admin_operation_log` VALUES ('439', '1', 'admin/upload/image', 'POST', '127.0.0.1', '{\"name\":\"o_1eep4jgm8esd1r3t1enp1ml68ktl.jpg\",\"_token\":\"9ynun2hjdFsMmzsXtSVvk7HYh68zrT47EYLmGuvA\",\"upload_url\":\"images\\/product_picture\\/20200803\",\"is_lock\":\"0\"}', '2020-08-03 11:07:25', '2020-08-03 11:07:25');
INSERT INTO `lied_admin_operation_log` VALUES ('440', '1', 'admin/upload/image', 'POST', '127.0.0.1', '{\"name\":\"o_1eep4jgm8197afs8jvv1ub77mam.png\",\"_token\":\"9ynun2hjdFsMmzsXtSVvk7HYh68zrT47EYLmGuvA\",\"upload_url\":\"images\\/product_picture\\/20200803\",\"is_lock\":\"0\"}', '2020-08-03 11:07:25', '2020-08-03 11:07:25');
INSERT INTO `lied_admin_operation_log` VALUES ('441', '1', 'admin/product/1', 'PUT', '127.0.0.1', '{\"name\":\"lied\",\"category_id\":null,\"brand_id\":\"2\",\"line_price\":\"12.00\",\"picture\":[\"11\",\"12\",\"13\"],\"description\":\"1231\",\"content\":\"<p><\\/p><p>1211<\\/p>\",\"sort\":\"99\",\"is_real\":\"on\",\"is_on_sale\":\"on\",\"is_audit\":\"on\",\"created_id\":\"1\",\"_token\":\"9ynun2hjdFsMmzsXtSVvk7HYh68zrT47EYLmGuvA\",\"_date\":\"20200803\",\"sku_attr\":\"[]\",\"virtual_quantity\":\"1\",\"is_limit\":\"0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/product\"}', '2020-08-03 11:07:27', '2020-08-03 11:07:27');
INSERT INTO `lied_admin_operation_log` VALUES ('442', '1', 'admin/product', 'GET', '127.0.0.1', '[]', '2020-08-03 11:07:28', '2020-08-03 11:07:28');
INSERT INTO `lied_admin_operation_log` VALUES ('443', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:07:30', '2020-08-03 11:07:30');
INSERT INTO `lied_admin_operation_log` VALUES ('444', '1', 'admin/product/1', 'PUT', '127.0.0.1', '{\"name\":\"lied\",\"category_id\":null,\"brand_id\":\"2\",\"line_price\":\"12.00\",\"picture\":[null],\"description\":\"1231\",\"content\":\"<p><\\/p><p>1211<\\/p>\",\"sort\":\"99\",\"is_real\":\"on\",\"is_on_sale\":\"on\",\"is_audit\":\"on\",\"created_id\":\"1\",\"_token\":\"9ynun2hjdFsMmzsXtSVvk7HYh68zrT47EYLmGuvA\",\"_date\":\"20200803\",\"sku_attr\":\"[]\",\"virtual_quantity\":\"1\",\"is_limit\":\"0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/product\"}', '2020-08-03 11:09:37', '2020-08-03 11:09:37');
INSERT INTO `lied_admin_operation_log` VALUES ('445', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 11:09:37', '2020-08-03 11:09:37');
INSERT INTO `lied_admin_operation_log` VALUES ('446', '1', 'admin/upload/image', 'POST', '127.0.0.1', '{\"name\":\"o_1eep4o0pr4mu4irr4fk2n127i1b.jpg\",\"_token\":\"9ynun2hjdFsMmzsXtSVvk7HYh68zrT47EYLmGuvA\",\"upload_url\":\"images\\/product_picture\\/20200803\",\"is_lock\":\"0\"}', '2020-08-03 11:09:52', '2020-08-03 11:09:52');
INSERT INTO `lied_admin_operation_log` VALUES ('447', '1', 'admin/product/1', 'PUT', '127.0.0.1', '{\"name\":\"lied\",\"category_id\":null,\"brand_id\":\"2\",\"line_price\":\"12.00\",\"picture\":[\"11\",\"12\",\"13\",\"14\"],\"description\":\"1231\",\"content\":\"<p><\\/p><p>1211<\\/p>\",\"sort\":\"99\",\"is_real\":\"on\",\"is_on_sale\":\"on\",\"is_audit\":\"on\",\"created_id\":\"1\",\"_token\":\"9ynun2hjdFsMmzsXtSVvk7HYh68zrT47EYLmGuvA\",\"_date\":\"20200803\",\"sku_attr\":\"[]\",\"virtual_quantity\":\"1\",\"is_limit\":\"0\",\"_method\":\"PUT\"}', '2020-08-03 11:09:59', '2020-08-03 11:09:59');
INSERT INTO `lied_admin_operation_log` VALUES ('448', '1', 'admin/product', 'GET', '127.0.0.1', '[]', '2020-08-03 11:10:00', '2020-08-03 11:10:00');
INSERT INTO `lied_admin_operation_log` VALUES ('449', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:10:02', '2020-08-03 11:10:02');
INSERT INTO `lied_admin_operation_log` VALUES ('450', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 11:10:07', '2020-08-03 11:10:07');
INSERT INTO `lied_admin_operation_log` VALUES ('451', '1', 'admin/product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:13:08', '2020-08-03 11:13:08');
INSERT INTO `lied_admin_operation_log` VALUES ('452', '1', 'admin/product/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:13:10', '2020-08-03 11:13:10');
INSERT INTO `lied_admin_operation_log` VALUES ('453', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-08-03 11:13:22', '2020-08-03 11:13:22');
INSERT INTO `lied_admin_operation_log` VALUES ('454', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-08-03 11:13:36', '2020-08-03 11:13:36');
INSERT INTO `lied_admin_operation_log` VALUES ('455', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-08-03 11:13:46', '2020-08-03 11:13:46');
INSERT INTO `lied_admin_operation_log` VALUES ('456', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-08-03 11:13:58', '2020-08-03 11:13:58');
INSERT INTO `lied_admin_operation_log` VALUES ('457', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-08-03 11:14:04', '2020-08-03 11:14:04');
INSERT INTO `lied_admin_operation_log` VALUES ('458', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-08-03 11:14:21', '2020-08-03 11:14:21');
INSERT INTO `lied_admin_operation_log` VALUES ('459', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-08-03 11:14:27', '2020-08-03 11:14:27');
INSERT INTO `lied_admin_operation_log` VALUES ('460', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-08-03 11:14:34', '2020-08-03 11:14:34');
INSERT INTO `lied_admin_operation_log` VALUES ('461', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-08-03 11:14:51', '2020-08-03 11:14:51');
INSERT INTO `lied_admin_operation_log` VALUES ('462', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-08-03 11:15:00', '2020-08-03 11:15:00');
INSERT INTO `lied_admin_operation_log` VALUES ('463', '1', 'admin/adv', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:15:05', '2020-08-03 11:15:05');
INSERT INTO `lied_admin_operation_log` VALUES ('464', '1', 'admin/adv/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:15:06', '2020-08-03 11:15:06');
INSERT INTO `lied_admin_operation_log` VALUES ('465', '1', 'admin/adv/create', 'GET', '127.0.0.1', '[]', '2020-08-03 11:15:15', '2020-08-03 11:15:15');
INSERT INTO `lied_admin_operation_log` VALUES ('466', '1', 'admin/adv/create', 'GET', '127.0.0.1', '[]', '2020-08-03 11:15:22', '2020-08-03 11:15:22');
INSERT INTO `lied_admin_operation_log` VALUES ('467', '1', 'admin/adv/create', 'GET', '127.0.0.1', '[]', '2020-08-03 11:15:24', '2020-08-03 11:15:24');
INSERT INTO `lied_admin_operation_log` VALUES ('468', '1', 'admin/adv/create', 'GET', '127.0.0.1', '[]', '2020-08-03 11:15:45', '2020-08-03 11:15:45');
INSERT INTO `lied_admin_operation_log` VALUES ('469', '1', 'admin/adv/create', 'GET', '127.0.0.1', '[]', '2020-08-03 11:15:50', '2020-08-03 11:15:50');
INSERT INTO `lied_admin_operation_log` VALUES ('470', '1', 'admin/adv', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:18:38', '2020-08-03 11:18:38');
INSERT INTO `lied_admin_operation_log` VALUES ('471', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:18:39', '2020-08-03 11:18:39');
INSERT INTO `lied_admin_operation_log` VALUES ('472', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 11:19:34', '2020-08-03 11:19:34');
INSERT INTO `lied_admin_operation_log` VALUES ('473', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 11:20:04', '2020-08-03 11:20:04');
INSERT INTO `lied_admin_operation_log` VALUES ('474', '1', 'admin/product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:25:21', '2020-08-03 11:25:21');
INSERT INTO `lied_admin_operation_log` VALUES ('475', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:25:23', '2020-08-03 11:25:23');
INSERT INTO `lied_admin_operation_log` VALUES ('476', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 11:25:44', '2020-08-03 11:25:44');
INSERT INTO `lied_admin_operation_log` VALUES ('477', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 11:26:02', '2020-08-03 11:26:02');
INSERT INTO `lied_admin_operation_log` VALUES ('478', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 11:26:10', '2020-08-03 11:26:10');
INSERT INTO `lied_admin_operation_log` VALUES ('479', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 11:26:37', '2020-08-03 11:26:37');
INSERT INTO `lied_admin_operation_log` VALUES ('480', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 11:27:06', '2020-08-03 11:27:06');
INSERT INTO `lied_admin_operation_log` VALUES ('481', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 11:27:22', '2020-08-03 11:27:22');
INSERT INTO `lied_admin_operation_log` VALUES ('482', '1', 'admin/product/1', 'PUT', '127.0.0.1', '{\"name\":\"lied\",\"category_id\":null,\"brand_id\":\"2\",\"line_price\":\"12.00\",\"picture\":[\"11\",\"14\",\"12\",\"13\"],\"description\":\"1231\",\"content\":\"<p><\\/p><p>1211<\\/p>\",\"sort\":\"99\",\"is_real\":\"on\",\"is_on_sale\":\"on\",\"is_audit\":\"on\",\"created_id\":\"1\",\"_token\":\"9ynun2hjdFsMmzsXtSVvk7HYh68zrT47EYLmGuvA\",\"_date\":\"20200803\",\"sku_attr\":\"[]\",\"virtual_quantity\":\"1\",\"is_limit\":\"0\",\"_method\":\"PUT\"}', '2020-08-03 11:27:37', '2020-08-03 11:27:37');
INSERT INTO `lied_admin_operation_log` VALUES ('483', '1', 'admin/product', 'GET', '127.0.0.1', '[]', '2020-08-03 11:27:37', '2020-08-03 11:27:37');
INSERT INTO `lied_admin_operation_log` VALUES ('484', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:27:39', '2020-08-03 11:27:39');
INSERT INTO `lied_admin_operation_log` VALUES ('485', '1', 'admin/product/1', 'PUT', '127.0.0.1', '{\"name\":\"lied\",\"category_id\":null,\"brand_id\":\"2\",\"line_price\":\"112.00\",\"picture\":[\"11\",\"14\",\"13\",\"12\"],\"description\":\"1231\",\"content\":\"<p><\\/p><p>1211<\\/p>\",\"sort\":\"99\",\"is_real\":\"on\",\"is_on_sale\":\"on\",\"is_audit\":\"on\",\"created_id\":\"1\",\"_token\":\"9ynun2hjdFsMmzsXtSVvk7HYh68zrT47EYLmGuvA\",\"_date\":\"20200803\",\"sku_attr\":\"[]\",\"virtual_quantity\":\"1\",\"is_limit\":\"0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/product\"}', '2020-08-03 11:29:03', '2020-08-03 11:29:03');
INSERT INTO `lied_admin_operation_log` VALUES ('486', '1', 'admin/product', 'GET', '127.0.0.1', '[]', '2020-08-03 11:29:04', '2020-08-03 11:29:04');
INSERT INTO `lied_admin_operation_log` VALUES ('487', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:29:05', '2020-08-03 11:29:05');
INSERT INTO `lied_admin_operation_log` VALUES ('488', '1', 'admin/product/1', 'PUT', '127.0.0.1', '{\"name\":\"lied\",\"category_id\":null,\"brand_id\":\"2\",\"line_price\":\"112.00\",\"picture\":[\"11\",\"14\",\"12\",\"13\"],\"description\":\"1231\",\"content\":\"<p><\\/p><p>1211<\\/p>\",\"sort\":\"99\",\"is_real\":\"on\",\"is_on_sale\":\"on\",\"is_audit\":\"on\",\"created_id\":\"1\",\"_token\":\"9ynun2hjdFsMmzsXtSVvk7HYh68zrT47EYLmGuvA\",\"_date\":\"20200803\",\"sku_attr\":\"[]\",\"virtual_quantity\":\"1\",\"is_limit\":\"0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/product\"}', '2020-08-03 11:29:32', '2020-08-03 11:29:32');
INSERT INTO `lied_admin_operation_log` VALUES ('489', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:29:46', '2020-08-03 11:29:46');
INSERT INTO `lied_admin_operation_log` VALUES ('490', '1', 'admin/product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:29:55', '2020-08-03 11:29:55');
INSERT INTO `lied_admin_operation_log` VALUES ('491', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:29:57', '2020-08-03 11:29:57');
INSERT INTO `lied_admin_operation_log` VALUES ('492', '1', 'admin/product/1', 'PUT', '127.0.0.1', '{\"name\":\"lied\",\"category_id\":null,\"brand_id\":\"2\",\"line_price\":\"112.00\",\"picture\":[\"11\",\"14\",\"12\",\"13\"],\"description\":\"1231\",\"content\":\"<p><\\/p><p>1211<\\/p>\",\"sort\":\"99\",\"is_real\":\"on\",\"is_on_sale\":\"on\",\"is_audit\":\"on\",\"created_id\":\"1\",\"_token\":\"9ynun2hjdFsMmzsXtSVvk7HYh68zrT47EYLmGuvA\",\"_date\":\"20200803\",\"sku_attr\":\"[]\",\"virtual_quantity\":\"1\",\"is_limit\":\"0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/product\"}', '2020-08-03 11:30:18', '2020-08-03 11:30:18');
INSERT INTO `lied_admin_operation_log` VALUES ('493', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:31:43', '2020-08-03 11:31:43');
INSERT INTO `lied_admin_operation_log` VALUES ('494', '1', 'admin/product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:31:44', '2020-08-03 11:31:44');
INSERT INTO `lied_admin_operation_log` VALUES ('495', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:31:46', '2020-08-03 11:31:46');
INSERT INTO `lied_admin_operation_log` VALUES ('496', '1', 'admin/product/1', 'PUT', '127.0.0.1', '{\"name\":\"lied\",\"category_id\":null,\"brand_id\":\"2\",\"line_price\":\"112.00\",\"picture\":[\"11\",\"14\",\"12\",\"13\"],\"description\":\"1231\",\"content\":\"<p><\\/p><p>1211<\\/p>\",\"sort\":\"99\",\"is_real\":\"on\",\"is_on_sale\":\"on\",\"is_audit\":\"on\",\"created_id\":\"1\",\"_token\":\"9ynun2hjdFsMmzsXtSVvk7HYh68zrT47EYLmGuvA\",\"_date\":\"20200803\",\"sku_attr\":\"[]\",\"virtual_quantity\":\"1\",\"is_limit\":\"0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/product\"}', '2020-08-03 11:31:50', '2020-08-03 11:31:50');
INSERT INTO `lied_admin_operation_log` VALUES ('497', '1', 'admin/product', 'GET', '127.0.0.1', '[]', '2020-08-03 11:31:51', '2020-08-03 11:31:51');
INSERT INTO `lied_admin_operation_log` VALUES ('498', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:31:52', '2020-08-03 11:31:52');
INSERT INTO `lied_admin_operation_log` VALUES ('499', '1', 'admin/product/1', 'PUT', '127.0.0.1', '{\"name\":\"lied\",\"category_id\":null,\"brand_id\":\"2\",\"line_price\":\"112.00\",\"picture\":[\"11\",\"14\",\"13\",\"12\"],\"description\":\"1231\",\"content\":\"<p><\\/p><p>1211<\\/p>\",\"sort\":\"99\",\"is_real\":\"on\",\"is_on_sale\":\"on\",\"is_audit\":\"on\",\"created_id\":\"1\",\"_token\":\"9ynun2hjdFsMmzsXtSVvk7HYh68zrT47EYLmGuvA\",\"_date\":\"20200803\",\"sku_attr\":\"[]\",\"virtual_quantity\":\"1\",\"is_limit\":\"0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/product\"}', '2020-08-03 11:33:38', '2020-08-03 11:33:38');
INSERT INTO `lied_admin_operation_log` VALUES ('500', '1', 'admin/product', 'GET', '127.0.0.1', '[]', '2020-08-03 11:33:38', '2020-08-03 11:33:38');
INSERT INTO `lied_admin_operation_log` VALUES ('501', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:33:47', '2020-08-03 11:33:47');
INSERT INTO `lied_admin_operation_log` VALUES ('502', '1', 'admin/product/1', 'PUT', '127.0.0.1', '{\"name\":\"lied\",\"category_id\":null,\"brand_id\":\"2\",\"line_price\":\"112.00\",\"picture\":[\"11\",\"14\",\"12\",\"13\"],\"description\":\"1231\",\"content\":\"<p><\\/p><p>1211<\\/p>\",\"sort\":\"99\",\"is_real\":\"on\",\"is_on_sale\":\"on\",\"is_audit\":\"on\",\"created_id\":\"1\",\"_token\":\"9ynun2hjdFsMmzsXtSVvk7HYh68zrT47EYLmGuvA\",\"_date\":\"20200803\",\"sku_attr\":\"[]\",\"virtual_quantity\":\"1\",\"is_limit\":\"0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/product\"}', '2020-08-03 11:35:56', '2020-08-03 11:35:56');
INSERT INTO `lied_admin_operation_log` VALUES ('503', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 11:35:56', '2020-08-03 11:35:56');
INSERT INTO `lied_admin_operation_log` VALUES ('504', '1', 'admin/product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:36:03', '2020-08-03 11:36:03');
INSERT INTO `lied_admin_operation_log` VALUES ('505', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:36:04', '2020-08-03 11:36:04');
INSERT INTO `lied_admin_operation_log` VALUES ('506', '1', 'admin/product/1', 'PUT', '127.0.0.1', '{\"name\":\"lied\",\"category_id\":null,\"brand_id\":\"2\",\"line_price\":\"112.00\",\"picture\":[\"11\",\"14\",\"12\",\"13\"],\"description\":\"1231\",\"content\":\"<p><\\/p><p>1211<\\/p>\",\"sort\":\"99\",\"is_real\":\"on\",\"is_on_sale\":\"on\",\"is_audit\":\"on\",\"created_id\":\"1\",\"_token\":\"9ynun2hjdFsMmzsXtSVvk7HYh68zrT47EYLmGuvA\",\"_date\":\"20200803\",\"sku_attr\":\"[]\",\"virtual_quantity\":\"1\",\"is_limit\":\"0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/product\"}', '2020-08-03 11:36:09', '2020-08-03 11:36:09');
INSERT INTO `lied_admin_operation_log` VALUES ('507', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 11:36:09', '2020-08-03 11:36:09');
INSERT INTO `lied_admin_operation_log` VALUES ('508', '1', 'admin/product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:39:29', '2020-08-03 11:39:29');
INSERT INTO `lied_admin_operation_log` VALUES ('509', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:39:31', '2020-08-03 11:39:31');
INSERT INTO `lied_admin_operation_log` VALUES ('510', '1', 'admin/product/1', 'PUT', '127.0.0.1', '{\"name\":\"lied\",\"category_id\":null,\"brand_id\":\"2\",\"line_price\":\"112.00\",\"picture\":[\"11\",\"14\",\"12\",\"13\"],\"description\":\"1231\",\"content\":\"<p><\\/p><p>1211<\\/p>\",\"sort\":\"99\",\"is_real\":\"on\",\"is_on_sale\":\"on\",\"is_audit\":\"on\",\"created_id\":\"1\",\"_token\":\"9ynun2hjdFsMmzsXtSVvk7HYh68zrT47EYLmGuvA\",\"_date\":\"20200803\",\"sku_attr\":\"[]\",\"virtual_quantity\":\"1\",\"is_limit\":\"0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/product\"}', '2020-08-03 11:39:38', '2020-08-03 11:39:38');
INSERT INTO `lied_admin_operation_log` VALUES ('511', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:40:08', '2020-08-03 11:40:08');
INSERT INTO `lied_admin_operation_log` VALUES ('512', '1', 'admin/product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:40:10', '2020-08-03 11:40:10');
INSERT INTO `lied_admin_operation_log` VALUES ('513', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:40:11', '2020-08-03 11:40:11');
INSERT INTO `lied_admin_operation_log` VALUES ('514', '1', 'admin/product/1', 'PUT', '127.0.0.1', '{\"name\":\"lied\",\"category_id\":null,\"brand_id\":\"2\",\"line_price\":\"112.00\",\"picture\":[\"11\",\"14\",\"12\",\"13\"],\"description\":\"1231\",\"content\":\"<p><\\/p><p>1211<\\/p>\",\"sort\":\"99\",\"is_real\":\"on\",\"is_on_sale\":\"on\",\"is_audit\":\"on\",\"created_id\":\"1\",\"_token\":\"9ynun2hjdFsMmzsXtSVvk7HYh68zrT47EYLmGuvA\",\"_date\":\"20200803\",\"sku_attr\":\"[]\",\"virtual_quantity\":\"1\",\"is_limit\":\"0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/product\"}', '2020-08-03 11:40:14', '2020-08-03 11:40:14');
INSERT INTO `lied_admin_operation_log` VALUES ('515', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 11:40:14', '2020-08-03 11:40:14');
INSERT INTO `lied_admin_operation_log` VALUES ('516', '1', 'admin/product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:44:33', '2020-08-03 11:44:33');
INSERT INTO `lied_admin_operation_log` VALUES ('517', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:44:36', '2020-08-03 11:44:36');
INSERT INTO `lied_admin_operation_log` VALUES ('518', '1', 'admin/product/1', 'PUT', '127.0.0.1', '{\"name\":\"lied\",\"category_id\":null,\"brand_id\":\"2\",\"line_price\":\"112.00\",\"picture\":[\"11\",\"14\",\"12\",\"13\"],\"description\":\"1231\",\"content\":\"<p><\\/p><p>1211<\\/p>\",\"sort\":\"99\",\"is_real\":\"on\",\"is_on_sale\":\"on\",\"is_audit\":\"on\",\"created_id\":\"1\",\"_token\":\"9ynun2hjdFsMmzsXtSVvk7HYh68zrT47EYLmGuvA\",\"_date\":\"20200803\",\"sku_attr\":\"[]\",\"virtual_quantity\":\"1\",\"is_limit\":\"0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/product\"}', '2020-08-03 11:44:39', '2020-08-03 11:44:39');
INSERT INTO `lied_admin_operation_log` VALUES ('519', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 11:44:39', '2020-08-03 11:44:39');
INSERT INTO `lied_admin_operation_log` VALUES ('520', '1', 'admin/product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:45:32', '2020-08-03 11:45:32');
INSERT INTO `lied_admin_operation_log` VALUES ('521', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:45:34', '2020-08-03 11:45:34');
INSERT INTO `lied_admin_operation_log` VALUES ('522', '1', 'admin/product/1', 'PUT', '127.0.0.1', '{\"name\":\"lied\",\"category_id\":null,\"brand_id\":\"2\",\"line_price\":\"112.00\",\"picture\":[\"11\",\"12\",\"14\",\"13\"],\"description\":\"1231\",\"content\":\"<p><\\/p><p>1211<\\/p>\",\"sort\":\"99\",\"is_real\":\"on\",\"is_on_sale\":\"on\",\"is_audit\":\"on\",\"created_id\":\"1\",\"_token\":\"9ynun2hjdFsMmzsXtSVvk7HYh68zrT47EYLmGuvA\",\"_date\":\"20200803\",\"sku_attr\":\"[]\",\"virtual_quantity\":\"1\",\"is_limit\":\"0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/product\"}', '2020-08-03 11:45:38', '2020-08-03 11:45:38');
INSERT INTO `lied_admin_operation_log` VALUES ('523', '1', 'admin/product', 'GET', '127.0.0.1', '[]', '2020-08-03 11:45:38', '2020-08-03 11:45:38');
INSERT INTO `lied_admin_operation_log` VALUES ('524', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:45:45', '2020-08-03 11:45:45');
INSERT INTO `lied_admin_operation_log` VALUES ('525', '1', 'admin/product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:46:26', '2020-08-03 11:46:26');
INSERT INTO `lied_admin_operation_log` VALUES ('526', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:46:28', '2020-08-03 11:46:28');
INSERT INTO `lied_admin_operation_log` VALUES ('527', '1', 'admin/product/1', 'PUT', '127.0.0.1', '{\"name\":\"lied\",\"category_id\":null,\"brand_id\":\"2\",\"line_price\":\"112.00\",\"picture\":[\"11\",\"12\",\"13\",\"14\"],\"description\":\"1231\",\"content\":\"<p><\\/p><p>1211<\\/p>\",\"sort\":\"99\",\"is_real\":\"on\",\"is_on_sale\":\"on\",\"is_audit\":\"on\",\"created_id\":\"1\",\"_token\":\"9ynun2hjdFsMmzsXtSVvk7HYh68zrT47EYLmGuvA\",\"_date\":\"20200803\",\"sku_attr\":\"[]\",\"virtual_quantity\":\"1\",\"is_limit\":\"0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/product\"}', '2020-08-03 11:46:39', '2020-08-03 11:46:39');
INSERT INTO `lied_admin_operation_log` VALUES ('528', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:46:46', '2020-08-03 11:46:46');
INSERT INTO `lied_admin_operation_log` VALUES ('529', '1', 'admin/product/1', 'PUT', '127.0.0.1', '{\"name\":\"lied\",\"category_id\":null,\"brand_id\":\"2\",\"line_price\":\"112.00\",\"picture\":[\"11\",\"12\",\"13\",\"14\"],\"description\":\"1231\",\"content\":\"<p><\\/p><p>1211<\\/p>\",\"sort\":\"99\",\"is_real\":\"on\",\"is_on_sale\":\"on\",\"is_audit\":\"on\",\"created_id\":\"1\",\"_token\":\"9ynun2hjdFsMmzsXtSVvk7HYh68zrT47EYLmGuvA\",\"_date\":\"20200803\",\"sku_attr\":\"[]\",\"virtual_quantity\":\"1\",\"is_limit\":\"0\",\"_method\":\"PUT\"}', '2020-08-03 11:46:48', '2020-08-03 11:46:48');
INSERT INTO `lied_admin_operation_log` VALUES ('530', '1', 'admin/product/1', 'GET', '127.0.0.1', '[]', '2020-08-03 11:48:08', '2020-08-03 11:48:08');
INSERT INTO `lied_admin_operation_log` VALUES ('531', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-08-03 11:48:16', '2020-08-03 11:48:16');
INSERT INTO `lied_admin_operation_log` VALUES ('532', '1', 'admin/product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:48:21', '2020-08-03 11:48:21');
INSERT INTO `lied_admin_operation_log` VALUES ('533', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:48:22', '2020-08-03 11:48:22');
INSERT INTO `lied_admin_operation_log` VALUES ('534', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 11:48:39', '2020-08-03 11:48:39');
INSERT INTO `lied_admin_operation_log` VALUES ('535', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 11:49:13', '2020-08-03 11:49:13');
INSERT INTO `lied_admin_operation_log` VALUES ('536', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 11:49:21', '2020-08-03 11:49:21');
INSERT INTO `lied_admin_operation_log` VALUES ('537', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 11:49:30', '2020-08-03 11:49:30');
INSERT INTO `lied_admin_operation_log` VALUES ('538', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 11:51:34', '2020-08-03 11:51:34');
INSERT INTO `lied_admin_operation_log` VALUES ('539', '1', 'admin/product/1', 'PUT', '127.0.0.1', '{\"name\":\"lied\",\"category_id\":null,\"brand_id\":\"2\",\"line_price\":\"112.00\",\"picture\":[\"13\",\"11\",\"12\",\"14\"],\"description\":\"1231\",\"content\":\"<p><\\/p><p>1211<\\/p>\",\"sort\":\"99\",\"is_real\":\"on\",\"is_on_sale\":\"on\",\"is_audit\":\"on\",\"created_id\":\"1\",\"_token\":\"9ynun2hjdFsMmzsXtSVvk7HYh68zrT47EYLmGuvA\",\"_date\":\"20200803\",\"sku_attr\":\"[]\",\"virtual_quantity\":\"1\",\"is_limit\":\"0\",\"_method\":\"PUT\"}', '2020-08-03 11:51:46', '2020-08-03 11:51:46');
INSERT INTO `lied_admin_operation_log` VALUES ('540', '1', 'admin/product', 'GET', '127.0.0.1', '[]', '2020-08-03 11:51:46', '2020-08-03 11:51:46');
INSERT INTO `lied_admin_operation_log` VALUES ('541', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:51:48', '2020-08-03 11:51:48');
INSERT INTO `lied_admin_operation_log` VALUES ('542', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 11:52:20', '2020-08-03 11:52:20');
INSERT INTO `lied_admin_operation_log` VALUES ('543', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 11:52:38', '2020-08-03 11:52:38');
INSERT INTO `lied_admin_operation_log` VALUES ('544', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 11:53:13', '2020-08-03 11:53:13');
INSERT INTO `lied_admin_operation_log` VALUES ('545', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 11:53:34', '2020-08-03 11:53:34');
INSERT INTO `lied_admin_operation_log` VALUES ('546', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 11:55:54', '2020-08-03 11:55:54');
INSERT INTO `lied_admin_operation_log` VALUES ('547', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 11:56:15', '2020-08-03 11:56:15');
INSERT INTO `lied_admin_operation_log` VALUES ('548', '1', 'admin/product/1', 'PUT', '127.0.0.1', '{\"name\":\"lied\",\"category_id\":null,\"brand_id\":\"2\",\"line_price\":\"112.00\",\"picture\":[\"13\",\"14\",\"11\",\"12\"],\"description\":\"1231\",\"content\":\"<p><\\/p><p>1211<\\/p>\",\"sort\":\"99\",\"is_real\":\"on\",\"is_on_sale\":\"on\",\"is_audit\":\"on\",\"created_id\":\"1\",\"_token\":\"9ynun2hjdFsMmzsXtSVvk7HYh68zrT47EYLmGuvA\",\"_date\":\"20200803\",\"sku_attr\":\"[]\",\"virtual_quantity\":\"1\",\"is_limit\":\"0\",\"_method\":\"PUT\"}', '2020-08-03 11:56:25', '2020-08-03 11:56:25');
INSERT INTO `lied_admin_operation_log` VALUES ('549', '1', 'admin/product', 'GET', '127.0.0.1', '[]', '2020-08-03 11:56:25', '2020-08-03 11:56:25');
INSERT INTO `lied_admin_operation_log` VALUES ('550', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:56:27', '2020-08-03 11:56:27');
INSERT INTO `lied_admin_operation_log` VALUES ('551', '1', 'admin/product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:56:49', '2020-08-03 11:56:49');
INSERT INTO `lied_admin_operation_log` VALUES ('552', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:56:51', '2020-08-03 11:56:51');
INSERT INTO `lied_admin_operation_log` VALUES ('553', '1', 'admin/product/1', 'PUT', '127.0.0.1', '{\"name\":\"lied\",\"category_id\":null,\"brand_id\":\"2\",\"line_price\":\"112.00\",\"picture\":[\"13\",\"14\",\"12\",\"11\"],\"description\":\"1231\",\"content\":\"<p><\\/p><p>1211<\\/p>\",\"sort\":\"99\",\"is_real\":\"on\",\"is_on_sale\":\"on\",\"is_audit\":\"on\",\"created_id\":\"1\",\"_token\":\"9ynun2hjdFsMmzsXtSVvk7HYh68zrT47EYLmGuvA\",\"_date\":\"20200803\",\"sku_attr\":\"[]\",\"virtual_quantity\":\"1\",\"is_limit\":\"0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/product\"}', '2020-08-03 11:56:54', '2020-08-03 11:56:54');
INSERT INTO `lied_admin_operation_log` VALUES ('554', '1', 'admin/product', 'GET', '127.0.0.1', '[]', '2020-08-03 11:56:54', '2020-08-03 11:56:54');
INSERT INTO `lied_admin_operation_log` VALUES ('555', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:56:56', '2020-08-03 11:56:56');
INSERT INTO `lied_admin_operation_log` VALUES ('556', '1', 'admin/product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:58:42', '2020-08-03 11:58:42');
INSERT INTO `lied_admin_operation_log` VALUES ('557', '1', 'admin/product/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:58:43', '2020-08-03 11:58:43');
INSERT INTO `lied_admin_operation_log` VALUES ('558', '1', 'admin/adv', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:58:45', '2020-08-03 11:58:45');
INSERT INTO `lied_admin_operation_log` VALUES ('559', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:58:47', '2020-08-03 11:58:47');
INSERT INTO `lied_admin_operation_log` VALUES ('560', '1', 'admin/adv', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:58:48', '2020-08-03 11:58:48');
INSERT INTO `lied_admin_operation_log` VALUES ('561', '1', 'admin/adv/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:58:49', '2020-08-03 11:58:49');
INSERT INTO `lied_admin_operation_log` VALUES ('562', '1', 'admin/adv', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 11:58:50', '2020-08-03 11:58:50');
INSERT INTO `lied_admin_operation_log` VALUES ('563', '1', 'admin/product', 'GET', '127.0.0.1', '[]', '2020-08-03 15:09:34', '2020-08-03 15:09:34');
INSERT INTO `lied_admin_operation_log` VALUES ('564', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 15:10:13', '2020-08-03 15:10:13');
INSERT INTO `lied_admin_operation_log` VALUES ('565', '1', 'admin/api/attr/get', 'POST', '127.0.0.1', '{\"key\":\"as\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 15:10:18', '2020-08-03 15:10:18');
INSERT INTO `lied_admin_operation_log` VALUES ('566', '1', 'admin/api/attr/get', 'POST', '127.0.0.1', '{\"key\":\"yanse\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 15:10:23', '2020-08-03 15:10:23');
INSERT INTO `lied_admin_operation_log` VALUES ('567', '1', 'admin/api/attr/get', 'POST', '127.0.0.1', '{\"key\":\"\\u989c\\u8272\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 15:10:26', '2020-08-03 15:10:26');
INSERT INTO `lied_admin_operation_log` VALUES ('568', '1', 'admin/api/attr/create', 'POST', '127.0.0.1', '{\"key\":\"\\u989c\\u8272\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 15:10:28', '2020-08-03 15:10:28');
INSERT INTO `lied_admin_operation_log` VALUES ('569', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"1\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 15:10:33', '2020-08-03 15:10:33');
INSERT INTO `lied_admin_operation_log` VALUES ('570', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"key\":\"\\u7ea2\",\"pid\":\"1\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 15:10:43', '2020-08-03 15:10:43');
INSERT INTO `lied_admin_operation_log` VALUES ('571', '1', 'admin/api/attr/value/create', 'POST', '127.0.0.1', '{\"key\":\"\\u7ea2\",\"pid\":\"1\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 15:10:44', '2020-08-03 15:10:44');
INSERT INTO `lied_admin_operation_log` VALUES ('572', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"key\":null,\"pid\":\"1\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 15:10:48', '2020-08-03 15:10:48');
INSERT INTO `lied_admin_operation_log` VALUES ('573', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"1\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 15:10:53', '2020-08-03 15:10:53');
INSERT INTO `lied_admin_operation_log` VALUES ('574', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"key\":\"lv\",\"pid\":\"1\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 15:10:56', '2020-08-03 15:10:56');
INSERT INTO `lied_admin_operation_log` VALUES ('575', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"key\":\"\\u7eff\",\"pid\":\"1\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 15:10:57', '2020-08-03 15:10:57');
INSERT INTO `lied_admin_operation_log` VALUES ('576', '1', 'admin/api/attr/value/create', 'POST', '127.0.0.1', '{\"key\":\"\\u7eff\",\"pid\":\"1\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 15:10:58', '2020-08-03 15:10:58');
INSERT INTO `lied_admin_operation_log` VALUES ('577', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"1\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 15:11:03', '2020-08-03 15:11:03');
INSERT INTO `lied_admin_operation_log` VALUES ('578', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"key\":\"lan\",\"pid\":\"1\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 15:11:07', '2020-08-03 15:11:07');
INSERT INTO `lied_admin_operation_log` VALUES ('579', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"key\":\"\\u84dd\",\"pid\":\"1\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 15:11:08', '2020-08-03 15:11:08');
INSERT INTO `lied_admin_operation_log` VALUES ('580', '1', 'admin/api/attr/value/create', 'POST', '127.0.0.1', '{\"key\":\"\\u84dd\",\"pid\":\"1\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 15:11:09', '2020-08-03 15:11:09');
INSERT INTO `lied_admin_operation_log` VALUES ('581', '1', 'admin/api/attr/get', 'POST', '127.0.0.1', '{\"key\":\"\\u5c3a\\u5bf8\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 15:11:26', '2020-08-03 15:11:26');
INSERT INTO `lied_admin_operation_log` VALUES ('582', '1', 'admin/api/attr/create', 'POST', '127.0.0.1', '{\"key\":\"\\u5c3a\\u5bf8\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 15:11:27', '2020-08-03 15:11:27');
INSERT INTO `lied_admin_operation_log` VALUES ('583', '1', 'admin/api/attr/get', 'POST', '127.0.0.1', '{\"key\":\"\\u5c3a\\u5bf8\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 15:11:42', '2020-08-03 15:11:42');
INSERT INTO `lied_admin_operation_log` VALUES ('584', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 15:11:57', '2020-08-03 15:11:57');
INSERT INTO `lied_admin_operation_log` VALUES ('585', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"key\":\"L\",\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 15:12:00', '2020-08-03 15:12:00');
INSERT INTO `lied_admin_operation_log` VALUES ('586', '1', 'admin/api/attr/value/create', 'POST', '127.0.0.1', '{\"key\":\"L\",\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 15:12:01', '2020-08-03 15:12:01');
INSERT INTO `lied_admin_operation_log` VALUES ('587', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 15:12:04', '2020-08-03 15:12:04');
INSERT INTO `lied_admin_operation_log` VALUES ('588', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"key\":\"M\",\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 15:12:07', '2020-08-03 15:12:07');
INSERT INTO `lied_admin_operation_log` VALUES ('589', '1', 'admin/api/attr/value/create', 'POST', '127.0.0.1', '{\"key\":\"M\",\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 15:12:08', '2020-08-03 15:12:08');
INSERT INTO `lied_admin_operation_log` VALUES ('590', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 15:12:10', '2020-08-03 15:12:10');
INSERT INTO `lied_admin_operation_log` VALUES ('591', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"key\":\"X\",\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 15:12:18', '2020-08-03 15:12:18');
INSERT INTO `lied_admin_operation_log` VALUES ('592', '1', 'admin/api/attr/value/create', 'POST', '127.0.0.1', '{\"key\":\"X\",\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 15:12:20', '2020-08-03 15:12:20');
INSERT INTO `lied_admin_operation_log` VALUES ('593', '1', 'admin/upload/image', 'POST', '127.0.0.1', '{\"name\":\"o_1eepikbhn1rgas7m136jqvufmcn.png\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\",\"upload_url\":\"images\\/sku\\/20200803\"}', '2020-08-03 15:12:32', '2020-08-03 15:12:32');
INSERT INTO `lied_admin_operation_log` VALUES ('594', '1', 'admin/upload/image', 'POST', '127.0.0.1', '{\"name\":\"o_1eepiqv4ujpad3911cr19h1ra8s.jpg\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\",\"upload_url\":\"images\\/sku\\/20200803\"}', '2020-08-03 15:16:09', '2020-08-03 15:16:09');
INSERT INTO `lied_admin_operation_log` VALUES ('595', '1', 'admin/upload/image', 'POST', '127.0.0.1', '{\"name\":\"o_1eepitnv51go21cl71d3h18sv1g5m11.jpg\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\",\"upload_url\":\"images\\/sku\\/20200803\"}', '2020-08-03 15:17:40', '2020-08-03 15:17:40');
INSERT INTO `lied_admin_operation_log` VALUES ('596', '1', 'admin/upload/image', 'POST', '127.0.0.1', '{\"name\":\"o_1eepitqqsenl1tsi1tocr1c16q016.jpg\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\",\"upload_url\":\"images\\/sku\\/20200803\"}', '2020-08-03 15:17:43', '2020-08-03 15:17:43');
INSERT INTO `lied_admin_operation_log` VALUES ('597', '1', 'admin/upload/image', 'POST', '127.0.0.1', '{\"name\":\"o_1eepitsutne11eutjitvn2tb1b.jpg\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\",\"upload_url\":\"images\\/sku\\/20200803\"}', '2020-08-03 15:17:45', '2020-08-03 15:17:45');
INSERT INTO `lied_admin_operation_log` VALUES ('598', '1', 'admin/product/1', 'PUT', '127.0.0.1', '{\"name\":\"lied\",\"category_id\":null,\"brand_id\":\"2\",\"line_price\":\"112.00\",\"picture\":[\"13\",\"14\",\"12\",\"11\"],\"description\":\"1231\",\"content\":\"<p><\\/p><p>1211<\\/p>\",\"sort\":\"99\",\"is_real\":\"on\",\"is_on_sale\":\"on\",\"is_audit\":\"on\",\"created_id\":\"1\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\",\"_date\":\"20200803\",\"sku_attr\":\"[]\",\"prosku\":{\"1-4\":{\"price\":\"1\",\"stock_num\":\"2\",\"code\":null,\"cost_price\":\"3\",\"warn_number\":\"4\",\"sold_num\":\"0\",\"attr_key\":\"1-4\",\"media_id\":\"17\"},\"1-5\":{\"price\":\"1\",\"stock_num\":\"2\",\"code\":null,\"cost_price\":\"3\",\"warn_number\":\"4\",\"sold_num\":\"0\",\"attr_key\":\"1-5\",\"media_id\":\"17\"},\"1-6\":{\"price\":\"1\",\"stock_num\":\"2\",\"code\":null,\"cost_price\":\"3\",\"warn_number\":\"4\",\"sold_num\":\"0\",\"attr_key\":\"1-6\",\"media_id\":\"17\"},\"2-4\":{\"price\":\"1\",\"stock_num\":\"2\",\"code\":null,\"cost_price\":\"3\",\"warn_number\":\"4\",\"sold_num\":\"0\",\"attr_key\":\"2-4\",\"media_id\":\"18\"},\"2-5\":{\"price\":\"1\",\"stock_num\":\"2\",\"code\":null,\"cost_price\":\"3\",\"warn_number\":\"4\",\"sold_num\":\"0\",\"attr_key\":\"2-5\",\"media_id\":\"18\"},\"2-6\":{\"price\":\"1\",\"stock_num\":\"2\",\"code\":null,\"cost_price\":\"3\",\"warn_number\":\"4\",\"sold_num\":\"0\",\"attr_key\":\"2-6\",\"media_id\":\"18\"},\"3-4\":{\"price\":\"1\",\"stock_num\":\"2\",\"code\":null,\"cost_price\":\"3\",\"warn_number\":\"4\",\"sold_num\":\"0\",\"attr_key\":\"3-4\",\"media_id\":\"19\"},\"3-5\":{\"price\":\"1\",\"stock_num\":\"2\",\"code\":null,\"cost_price\":\"3\",\"warn_number\":\"4\",\"sold_num\":\"0\",\"attr_key\":\"3-5\",\"media_id\":\"19\"},\"3-6\":{\"price\":null,\"stock_num\":null,\"code\":null,\"cost_price\":null,\"warn_number\":null,\"sold_num\":\"0\",\"attr_key\":\"3-6\",\"media_id\":\"19\"}},\"virtual_quantity\":\"1\",\"is_limit\":\"0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/product\"}', '2020-08-03 15:18:21', '2020-08-03 15:18:21');
INSERT INTO `lied_admin_operation_log` VALUES ('599', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 15:18:21', '2020-08-03 15:18:21');
INSERT INTO `lied_admin_operation_log` VALUES ('600', '1', 'admin/product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 15:20:15', '2020-08-03 15:20:15');
INSERT INTO `lied_admin_operation_log` VALUES ('601', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 15:20:17', '2020-08-03 15:20:17');
INSERT INTO `lied_admin_operation_log` VALUES ('602', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 15:20:22', '2020-08-03 15:20:22');
INSERT INTO `lied_admin_operation_log` VALUES ('603', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 15:20:23', '2020-08-03 15:20:23');
INSERT INTO `lied_admin_operation_log` VALUES ('604', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 15:20:27', '2020-08-03 15:20:27');
INSERT INTO `lied_admin_operation_log` VALUES ('605', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"1\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 15:20:33', '2020-08-03 15:20:33');
INSERT INTO `lied_admin_operation_log` VALUES ('606', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 15:20:37', '2020-08-03 15:20:37');
INSERT INTO `lied_admin_operation_log` VALUES ('607', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"1\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 15:20:43', '2020-08-03 15:20:43');
INSERT INTO `lied_admin_operation_log` VALUES ('608', '1', 'admin/upload/image', 'POST', '127.0.0.1', '{\"name\":\"o_1eepj3fml1qhp1tir5gh1019161924.jpg\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\",\"upload_url\":\"images\\/sku\\/20200803\"}', '2020-08-03 15:20:48', '2020-08-03 15:20:48');
INSERT INTO `lied_admin_operation_log` VALUES ('609', '1', 'admin/upload/image', 'POST', '127.0.0.1', '{\"name\":\"o_1eepj3hi61h6lv341a611b1vuco29.png\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\",\"upload_url\":\"images\\/sku\\/20200803\"}', '2020-08-03 15:20:50', '2020-08-03 15:20:50');
INSERT INTO `lied_admin_operation_log` VALUES ('610', '1', 'admin/product/1', 'PUT', '127.0.0.1', '{\"name\":\"lied\",\"category_id\":null,\"brand_id\":\"2\",\"line_price\":\"112.00\",\"picture\":[\"13\",\"14\",\"12\",\"11\"],\"description\":\"1231\",\"content\":\"<p><\\/p><p>1211<\\/p>\",\"sort\":\"99\",\"is_real\":\"on\",\"is_on_sale\":\"on\",\"is_audit\":\"on\",\"created_id\":\"1\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\",\"_date\":\"20200803\",\"sku_attr\":\"[]\",\"prosku\":{\"3-6\":{\"price\":\"1\",\"stock_num\":\"2\",\"code\":\"1\",\"cost_price\":\"3\",\"warn_number\":\"4\",\"sold_num\":\"0\",\"attr_key\":\"6-3\",\"media_id\":\"20\"},\"2-6\":{\"price\":\"1\",\"stock_num\":\"2\",\"code\":\"2\",\"cost_price\":\"3\",\"warn_number\":\"4\",\"sold_num\":\"0\",\"attr_key\":\"6-2\",\"media_id\":\"20\"},\"3-5\":{\"price\":\"1\",\"stock_num\":\"2\",\"code\":\"3\",\"cost_price\":\"3\",\"warn_number\":\"4\",\"sold_num\":\"0\",\"attr_key\":\"5-3\",\"media_id\":\"21\"},\"2-5\":{\"price\":\"1\",\"stock_num\":\"2\",\"code\":\"4\",\"cost_price\":\"3\",\"warn_number\":\"4\",\"sold_num\":\"0\",\"attr_key\":\"5-2\",\"media_id\":\"21\"}},\"virtual_quantity\":\"1\",\"is_limit\":\"0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/product\"}', '2020-08-03 15:21:05', '2020-08-03 15:21:05');
INSERT INTO `lied_admin_operation_log` VALUES ('611', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 15:23:27', '2020-08-03 15:23:27');
INSERT INTO `lied_admin_operation_log` VALUES ('612', '1', 'admin/product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 15:23:30', '2020-08-03 15:23:30');
INSERT INTO `lied_admin_operation_log` VALUES ('613', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 15:23:32', '2020-08-03 15:23:32');
INSERT INTO `lied_admin_operation_log` VALUES ('614', '1', 'admin/product/1', 'PUT', '127.0.0.1', '{\"name\":\"lied\",\"category_id\":null,\"brand_id\":\"2\",\"line_price\":\"112.00\",\"picture\":[\"13\",\"14\",\"12\",\"11\"],\"description\":\"1231\",\"content\":\"<p><\\/p><p>1211<\\/p>\",\"sort\":\"99\",\"is_real\":\"on\",\"is_on_sale\":\"on\",\"is_audit\":\"on\",\"created_id\":\"1\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\",\"_date\":\"20200803\",\"sku_attr\":\"[]\",\"virtual_quantity\":\"1\",\"is_limit\":\"0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/product\"}', '2020-08-03 15:23:34', '2020-08-03 15:23:34');
INSERT INTO `lied_admin_operation_log` VALUES ('615', '1', 'admin/product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 15:24:14', '2020-08-03 15:24:14');
INSERT INTO `lied_admin_operation_log` VALUES ('616', '1', 'admin/product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 15:24:28', '2020-08-03 15:24:28');
INSERT INTO `lied_admin_operation_log` VALUES ('617', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 15:24:30', '2020-08-03 15:24:30');
INSERT INTO `lied_admin_operation_log` VALUES ('618', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 15:26:24', '2020-08-03 15:26:24');
INSERT INTO `lied_admin_operation_log` VALUES ('619', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 15:28:12', '2020-08-03 15:28:12');
INSERT INTO `lied_admin_operation_log` VALUES ('620', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 15:28:35', '2020-08-03 15:28:35');
INSERT INTO `lied_admin_operation_log` VALUES ('621', '1', 'admin/product/1', 'PUT', '127.0.0.1', '{\"name\":\"lied\",\"category_id\":null,\"brand_id\":\"2\",\"line_price\":\"112.00\",\"picture\":[\"13\",\"14\",\"12\",\"11\"],\"description\":\"1231\",\"content\":\"<p><\\/p><p>1211<\\/p>\",\"sort\":\"99\",\"is_real\":\"on\",\"is_on_sale\":\"on\",\"is_audit\":\"on\",\"created_id\":\"1\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\",\"_date\":\"20200803\",\"sku_attr\":\"[{\\\"id\\\":9,\\\"product_id\\\":1,\\\"attr_key\\\":\\\"3-6\\\",\\\"media_id\\\":20,\\\"price\\\":\\\"1.00\\\",\\\"cost_price\\\":\\\"3.00\\\",\\\"sold_num\\\":0,\\\"code\\\":\\\"1\\\",\\\"created_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"updated_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"deleted_at\\\":null,\\\"stock\\\":{\\\"id\\\":9,\\\"product_id\\\":1,\\\"sku_id\\\":9,\\\"quantity\\\":2,\\\"warn_number\\\":4,\\\"created_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"updated_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"deleted_at\\\":null},\\\"media\\\":{\\\"id\\\":20,\\\"type\\\":1,\\\"link\\\":\\\"http:\\\\\\/\\\\\\/www.lied.com\\\\\\/uploads\\\\\\/images\\\\\\/sku\\\\\\/20200803\\\\\\/68562cb301eeae026614cc842a4e6a2f.jpeg\\\",\\\"rlink\\\":\\\"0\\\",\\\"size\\\":365,\\\"file_ext\\\":\\\"jpeg\\\",\\\"file_name\\\":\\\"68562cb301eeae026614cc842a4e6a2f.jpeg\\\",\\\"is_lock\\\":0,\\\"is_show\\\":1,\\\"created_at\\\":\\\"2020-08-03 15:20:48\\\",\\\"updated_at\\\":\\\"2020-08-03 15:20:48\\\",\\\"deleted_at\\\":null}},{\\\"id\\\":10,\\\"product_id\\\":1,\\\"attr_key\\\":\\\"2-6\\\",\\\"media_id\\\":20,\\\"price\\\":\\\"1.00\\\",\\\"cost_price\\\":\\\"3.00\\\",\\\"sold_num\\\":0,\\\"code\\\":\\\"2\\\",\\\"created_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"updated_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"deleted_at\\\":null,\\\"stock\\\":{\\\"id\\\":10,\\\"product_id\\\":1,\\\"sku_id\\\":10,\\\"quantity\\\":2,\\\"warn_number\\\":4,\\\"created_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"updated_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"deleted_at\\\":null},\\\"media\\\":{\\\"id\\\":20,\\\"type\\\":1,\\\"link\\\":\\\"http:\\\\\\/\\\\\\/www.lied.com\\\\\\/uploads\\\\\\/images\\\\\\/sku\\\\\\/20200803\\\\\\/68562cb301eeae026614cc842a4e6a2f.jpeg\\\",\\\"rlink\\\":\\\"0\\\",\\\"size\\\":365,\\\"file_ext\\\":\\\"jpeg\\\",\\\"file_name\\\":\\\"68562cb301eeae026614cc842a4e6a2f.jpeg\\\",\\\"is_lock\\\":0,\\\"is_show\\\":1,\\\"created_at\\\":\\\"2020-08-03 15:20:48\\\",\\\"updated_at\\\":\\\"2020-08-03 15:20:48\\\",\\\"deleted_at\\\":null}},{\\\"id\\\":11,\\\"product_id\\\":1,\\\"attr_key\\\":\\\"3-5\\\",\\\"media_id\\\":21,\\\"price\\\":\\\"1.00\\\",\\\"cost_price\\\":\\\"3.00\\\",\\\"sold_num\\\":0,\\\"code\\\":\\\"3\\\",\\\"created_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"updated_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"deleted_at\\\":null,\\\"stock\\\":{\\\"id\\\":11,\\\"product_id\\\":1,\\\"sku_id\\\":11,\\\"quantity\\\":2,\\\"warn_number\\\":4,\\\"created_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"updated_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"deleted_at\\\":null},\\\"media\\\":{\\\"id\\\":21,\\\"type\\\":1,\\\"link\\\":\\\"http:\\\\\\/\\\\\\/www.lied.com\\\\\\/uploads\\\\\\/images\\\\\\/sku\\\\\\/20200803\\\\\\/f7592c2eb81ff3309cc8f0a5d469d277.png\\\",\\\"rlink\\\":\\\"0\\\",\\\"size\\\":327,\\\"file_ext\\\":\\\"png\\\",\\\"file_name\\\":\\\"f7592c2eb81ff3309cc8f0a5d469d277.png\\\",\\\"is_lock\\\":0,\\\"is_show\\\":1,\\\"created_at\\\":\\\"2020-08-03 15:20:50\\\",\\\"updated_at\\\":\\\"2020-08-03 15:20:50\\\",\\\"deleted_at\\\":null}},{\\\"id\\\":12,\\\"product_id\\\":1,\\\"attr_key\\\":\\\"2-5\\\",\\\"media_id\\\":21,\\\"price\\\":\\\"1.00\\\",\\\"cost_price\\\":\\\"3.00\\\",\\\"sold_num\\\":0,\\\"code\\\":\\\"4\\\",\\\"created_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"updated_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"deleted_at\\\":null,\\\"stock\\\":{\\\"id\\\":12,\\\"product_id\\\":1,\\\"sku_id\\\":12,\\\"quantity\\\":2,\\\"warn_number\\\":4,\\\"created_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"updated_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"deleted_at\\\":null},\\\"media\\\":{\\\"id\\\":21,\\\"type\\\":1,\\\"link\\\":\\\"http:\\\\\\/\\\\\\/www.lied.com\\\\\\/uploads\\\\\\/images\\\\\\/sku\\\\\\/20200803\\\\\\/f7592c2eb81ff3309cc8f0a5d469d277.png\\\",\\\"rlink\\\":\\\"0\\\",\\\"size\\\":327,\\\"file_ext\\\":\\\"png\\\",\\\"file_name\\\":\\\"f7592c2eb81ff3309cc8f0a5d469d277.png\\\",\\\"is_lock\\\":0,\\\"is_show\\\":1,\\\"created_at\\\":\\\"2020-08-03 15:20:50\\\",\\\"updated_at\\\":\\\"2020-08-03 15:20:50\\\",\\\"deleted_at\\\":null}}]\",\"prosku\":{\"3-6\":{\"price\":\"1.00\",\"stock_num\":\"2\",\"code\":\"1\",\"cost_price\":\"3.00\",\"warn_number\":\"4\",\"sold_num\":\"0\",\"attr_key\":\"6-3\",\"media_id\":\"20\"},\"2-6\":{\"price\":\"1.00\",\"stock_num\":\"2\",\"code\":\"2\",\"cost_price\":\"3.00\",\"warn_number\":\"4\",\"sold_num\":\"0\",\"attr_key\":\"6-2\",\"media_id\":\"20\"},\"3-5\":{\"price\":\"1.00\",\"stock_num\":\"2\",\"code\":\"3\",\"cost_price\":\"3.00\",\"warn_number\":\"4\",\"sold_num\":\"0\",\"attr_key\":\"5-3\",\"media_id\":\"21\"},\"2-5\":{\"price\":null,\"stock_num\":null,\"code\":null,\"cost_price\":null,\"warn_number\":null,\"sold_num\":\"0\",\"attr_key\":\"5-2\",\"media_id\":\"21\"}},\"virtual_quantity\":\"1\",\"is_limit\":\"0\",\"_method\":\"PUT\"}', '2020-08-03 15:28:55', '2020-08-03 15:28:55');
INSERT INTO `lied_admin_operation_log` VALUES ('622', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 15:28:55', '2020-08-03 15:28:55');
INSERT INTO `lied_admin_operation_log` VALUES ('623', '1', 'admin/product/1', 'PUT', '127.0.0.1', '{\"name\":\"lied\",\"category_id\":null,\"brand_id\":\"2\",\"line_price\":\"112.00\",\"picture\":[\"13\",\"14\",\"12\",\"11\"],\"description\":\"1231\",\"content\":\"<p><\\/p><p>1211<\\/p>\",\"sort\":\"99\",\"is_real\":\"on\",\"is_on_sale\":\"on\",\"is_audit\":\"on\",\"created_id\":\"1\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\",\"_date\":\"20200803\",\"sku_attr\":\"[{\\\"id\\\":9,\\\"product_id\\\":1,\\\"attr_key\\\":\\\"3-6\\\",\\\"media_id\\\":20,\\\"price\\\":\\\"1.00\\\",\\\"cost_price\\\":\\\"3.00\\\",\\\"sold_num\\\":0,\\\"code\\\":\\\"1\\\",\\\"created_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"updated_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"deleted_at\\\":null,\\\"stock\\\":{\\\"id\\\":9,\\\"product_id\\\":1,\\\"sku_id\\\":9,\\\"quantity\\\":2,\\\"warn_number\\\":4,\\\"created_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"updated_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"deleted_at\\\":null},\\\"media\\\":{\\\"id\\\":20,\\\"type\\\":1,\\\"link\\\":\\\"http:\\\\\\/\\\\\\/www.lied.com\\\\\\/uploads\\\\\\/images\\\\\\/sku\\\\\\/20200803\\\\\\/68562cb301eeae026614cc842a4e6a2f.jpeg\\\",\\\"rlink\\\":\\\"0\\\",\\\"size\\\":365,\\\"file_ext\\\":\\\"jpeg\\\",\\\"file_name\\\":\\\"68562cb301eeae026614cc842a4e6a2f.jpeg\\\",\\\"is_lock\\\":0,\\\"is_show\\\":1,\\\"created_at\\\":\\\"2020-08-03 15:20:48\\\",\\\"updated_at\\\":\\\"2020-08-03 15:20:48\\\",\\\"deleted_at\\\":null}},{\\\"id\\\":10,\\\"product_id\\\":1,\\\"attr_key\\\":\\\"2-6\\\",\\\"media_id\\\":20,\\\"price\\\":\\\"1.00\\\",\\\"cost_price\\\":\\\"3.00\\\",\\\"sold_num\\\":0,\\\"code\\\":\\\"2\\\",\\\"created_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"updated_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"deleted_at\\\":null,\\\"stock\\\":{\\\"id\\\":10,\\\"product_id\\\":1,\\\"sku_id\\\":10,\\\"quantity\\\":2,\\\"warn_number\\\":4,\\\"created_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"updated_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"deleted_at\\\":null},\\\"media\\\":{\\\"id\\\":20,\\\"type\\\":1,\\\"link\\\":\\\"http:\\\\\\/\\\\\\/www.lied.com\\\\\\/uploads\\\\\\/images\\\\\\/sku\\\\\\/20200803\\\\\\/68562cb301eeae026614cc842a4e6a2f.jpeg\\\",\\\"rlink\\\":\\\"0\\\",\\\"size\\\":365,\\\"file_ext\\\":\\\"jpeg\\\",\\\"file_name\\\":\\\"68562cb301eeae026614cc842a4e6a2f.jpeg\\\",\\\"is_lock\\\":0,\\\"is_show\\\":1,\\\"created_at\\\":\\\"2020-08-03 15:20:48\\\",\\\"updated_at\\\":\\\"2020-08-03 15:20:48\\\",\\\"deleted_at\\\":null}},{\\\"id\\\":11,\\\"product_id\\\":1,\\\"attr_key\\\":\\\"3-5\\\",\\\"media_id\\\":21,\\\"price\\\":\\\"1.00\\\",\\\"cost_price\\\":\\\"3.00\\\",\\\"sold_num\\\":0,\\\"code\\\":\\\"3\\\",\\\"created_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"updated_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"deleted_at\\\":null,\\\"stock\\\":{\\\"id\\\":11,\\\"product_id\\\":1,\\\"sku_id\\\":11,\\\"quantity\\\":2,\\\"warn_number\\\":4,\\\"created_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"updated_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"deleted_at\\\":null},\\\"media\\\":{\\\"id\\\":21,\\\"type\\\":1,\\\"link\\\":\\\"http:\\\\\\/\\\\\\/www.lied.com\\\\\\/uploads\\\\\\/images\\\\\\/sku\\\\\\/20200803\\\\\\/f7592c2eb81ff3309cc8f0a5d469d277.png\\\",\\\"rlink\\\":\\\"0\\\",\\\"size\\\":327,\\\"file_ext\\\":\\\"png\\\",\\\"file_name\\\":\\\"f7592c2eb81ff3309cc8f0a5d469d277.png\\\",\\\"is_lock\\\":0,\\\"is_show\\\":1,\\\"created_at\\\":\\\"2020-08-03 15:20:50\\\",\\\"updated_at\\\":\\\"2020-08-03 15:20:50\\\",\\\"deleted_at\\\":null}},{\\\"id\\\":12,\\\"product_id\\\":1,\\\"attr_key\\\":\\\"2-5\\\",\\\"media_id\\\":21,\\\"price\\\":\\\"1.00\\\",\\\"cost_price\\\":\\\"3.00\\\",\\\"sold_num\\\":0,\\\"code\\\":\\\"4\\\",\\\"created_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"updated_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"deleted_at\\\":null,\\\"stock\\\":{\\\"id\\\":12,\\\"product_id\\\":1,\\\"sku_id\\\":12,\\\"quantity\\\":2,\\\"warn_number\\\":4,\\\"created_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"updated_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"deleted_at\\\":null},\\\"media\\\":{\\\"id\\\":21,\\\"type\\\":1,\\\"link\\\":\\\"http:\\\\\\/\\\\\\/www.lied.com\\\\\\/uploads\\\\\\/images\\\\\\/sku\\\\\\/20200803\\\\\\/f7592c2eb81ff3309cc8f0a5d469d277.png\\\",\\\"rlink\\\":\\\"0\\\",\\\"size\\\":327,\\\"file_ext\\\":\\\"png\\\",\\\"file_name\\\":\\\"f7592c2eb81ff3309cc8f0a5d469d277.png\\\",\\\"is_lock\\\":0,\\\"is_show\\\":1,\\\"created_at\\\":\\\"2020-08-03 15:20:50\\\",\\\"updated_at\\\":\\\"2020-08-03 15:20:50\\\",\\\"deleted_at\\\":null}}]\",\"prosku\":{\"3-6\":{\"price\":\"1.00\",\"stock_num\":\"2\",\"code\":\"1\",\"cost_price\":\"3.00\",\"warn_number\":\"4\",\"sold_num\":\"0\",\"attr_key\":\"6-3\",\"media_id\":\"20\"},\"2-6\":{\"price\":\"1.00\",\"stock_num\":\"2\",\"code\":\"2\",\"cost_price\":\"3.00\",\"warn_number\":\"4\",\"sold_num\":\"0\",\"attr_key\":\"6-2\",\"media_id\":\"20\"},\"3-5\":{\"price\":\"1.00\",\"stock_num\":\"2\",\"code\":\"3\",\"cost_price\":\"3.00\",\"warn_number\":\"4\",\"sold_num\":\"0\",\"attr_key\":\"5-3\",\"media_id\":\"21\"},\"2-5\":{\"price\":\"1.00\",\"stock_num\":\"2\",\"code\":\"4\",\"cost_price\":\"3.00\",\"warn_number\":\"4\",\"sold_num\":\"0\",\"attr_key\":\"5-2\",\"media_id\":\"21\"}},\"virtual_quantity\":\"1\",\"is_limit\":\"0\",\"_method\":\"PUT\"}', '2020-08-03 15:29:07', '2020-08-03 15:29:07');
INSERT INTO `lied_admin_operation_log` VALUES ('624', '1', 'admin/product', 'GET', '127.0.0.1', '[]', '2020-08-03 15:29:07', '2020-08-03 15:29:07');
INSERT INTO `lied_admin_operation_log` VALUES ('625', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 15:29:10', '2020-08-03 15:29:10');
INSERT INTO `lied_admin_operation_log` VALUES ('626', '1', 'admin/product/1', 'PUT', '127.0.0.1', '{\"name\":\"lied\",\"category_id\":null,\"brand_id\":\"2\",\"line_price\":\"112.00\",\"picture\":[\"13\",\"14\",\"12\",\"11\"],\"description\":\"1231\",\"content\":\"<p><\\/p><p>1211<\\/p>\",\"sort\":\"99\",\"is_real\":\"on\",\"is_on_sale\":\"on\",\"is_audit\":\"on\",\"created_id\":\"1\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\",\"_date\":\"20200803\",\"sku_attr\":\"[{\\\"id\\\":9,\\\"product_id\\\":1,\\\"attr_key\\\":\\\"3-6\\\",\\\"media_id\\\":20,\\\"price\\\":\\\"1.00\\\",\\\"cost_price\\\":\\\"3.00\\\",\\\"sold_num\\\":0,\\\"code\\\":\\\"1\\\",\\\"created_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"updated_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"deleted_at\\\":null,\\\"stock\\\":{\\\"id\\\":9,\\\"product_id\\\":1,\\\"sku_id\\\":9,\\\"quantity\\\":2,\\\"warn_number\\\":4,\\\"created_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"updated_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"deleted_at\\\":null},\\\"media\\\":{\\\"id\\\":20,\\\"type\\\":1,\\\"link\\\":\\\"http:\\\\\\/\\\\\\/www.lied.com\\\\\\/uploads\\\\\\/images\\\\\\/sku\\\\\\/20200803\\\\\\/68562cb301eeae026614cc842a4e6a2f.jpeg\\\",\\\"rlink\\\":\\\"0\\\",\\\"size\\\":365,\\\"file_ext\\\":\\\"jpeg\\\",\\\"file_name\\\":\\\"68562cb301eeae026614cc842a4e6a2f.jpeg\\\",\\\"is_lock\\\":0,\\\"is_show\\\":1,\\\"created_at\\\":\\\"2020-08-03 15:20:48\\\",\\\"updated_at\\\":\\\"2020-08-03 15:20:48\\\",\\\"deleted_at\\\":null}},{\\\"id\\\":10,\\\"product_id\\\":1,\\\"attr_key\\\":\\\"2-6\\\",\\\"media_id\\\":20,\\\"price\\\":\\\"1.00\\\",\\\"cost_price\\\":\\\"3.00\\\",\\\"sold_num\\\":0,\\\"code\\\":\\\"2\\\",\\\"created_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"updated_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"deleted_at\\\":null,\\\"stock\\\":{\\\"id\\\":10,\\\"product_id\\\":1,\\\"sku_id\\\":10,\\\"quantity\\\":2,\\\"warn_number\\\":4,\\\"created_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"updated_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"deleted_at\\\":null},\\\"media\\\":{\\\"id\\\":20,\\\"type\\\":1,\\\"link\\\":\\\"http:\\\\\\/\\\\\\/www.lied.com\\\\\\/uploads\\\\\\/images\\\\\\/sku\\\\\\/20200803\\\\\\/68562cb301eeae026614cc842a4e6a2f.jpeg\\\",\\\"rlink\\\":\\\"0\\\",\\\"size\\\":365,\\\"file_ext\\\":\\\"jpeg\\\",\\\"file_name\\\":\\\"68562cb301eeae026614cc842a4e6a2f.jpeg\\\",\\\"is_lock\\\":0,\\\"is_show\\\":1,\\\"created_at\\\":\\\"2020-08-03 15:20:48\\\",\\\"updated_at\\\":\\\"2020-08-03 15:20:48\\\",\\\"deleted_at\\\":null}},{\\\"id\\\":11,\\\"product_id\\\":1,\\\"attr_key\\\":\\\"3-5\\\",\\\"media_id\\\":21,\\\"price\\\":\\\"1.00\\\",\\\"cost_price\\\":\\\"3.00\\\",\\\"sold_num\\\":0,\\\"code\\\":\\\"3\\\",\\\"created_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"updated_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"deleted_at\\\":null,\\\"stock\\\":{\\\"id\\\":11,\\\"product_id\\\":1,\\\"sku_id\\\":11,\\\"quantity\\\":2,\\\"warn_number\\\":4,\\\"created_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"updated_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"deleted_at\\\":null},\\\"media\\\":{\\\"id\\\":21,\\\"type\\\":1,\\\"link\\\":\\\"http:\\\\\\/\\\\\\/www.lied.com\\\\\\/uploads\\\\\\/images\\\\\\/sku\\\\\\/20200803\\\\\\/f7592c2eb81ff3309cc8f0a5d469d277.png\\\",\\\"rlink\\\":\\\"0\\\",\\\"size\\\":327,\\\"file_ext\\\":\\\"png\\\",\\\"file_name\\\":\\\"f7592c2eb81ff3309cc8f0a5d469d277.png\\\",\\\"is_lock\\\":0,\\\"is_show\\\":1,\\\"created_at\\\":\\\"2020-08-03 15:20:50\\\",\\\"updated_at\\\":\\\"2020-08-03 15:20:50\\\",\\\"deleted_at\\\":null}},{\\\"id\\\":12,\\\"product_id\\\":1,\\\"attr_key\\\":\\\"2-5\\\",\\\"media_id\\\":21,\\\"price\\\":\\\"1.00\\\",\\\"cost_price\\\":\\\"3.00\\\",\\\"sold_num\\\":0,\\\"code\\\":\\\"4\\\",\\\"created_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"updated_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"deleted_at\\\":null,\\\"stock\\\":{\\\"id\\\":12,\\\"product_id\\\":1,\\\"sku_id\\\":12,\\\"quantity\\\":2,\\\"warn_number\\\":4,\\\"created_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"updated_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"deleted_at\\\":null},\\\"media\\\":{\\\"id\\\":21,\\\"type\\\":1,\\\"link\\\":\\\"http:\\\\\\/\\\\\\/www.lied.com\\\\\\/uploads\\\\\\/images\\\\\\/sku\\\\\\/20200803\\\\\\/f7592c2eb81ff3309cc8f0a5d469d277.png\\\",\\\"rlink\\\":\\\"0\\\",\\\"size\\\":327,\\\"file_ext\\\":\\\"png\\\",\\\"file_name\\\":\\\"f7592c2eb81ff3309cc8f0a5d469d277.png\\\",\\\"is_lock\\\":0,\\\"is_show\\\":1,\\\"created_at\\\":\\\"2020-08-03 15:20:50\\\",\\\"updated_at\\\":\\\"2020-08-03 15:20:50\\\",\\\"deleted_at\\\":null}}]\",\"prosku\":{\"3-6\":{\"price\":\"1.00\",\"stock_num\":\"2\",\"code\":\"1\",\"cost_price\":\"3.00\",\"warn_number\":\"4\",\"sold_num\":\"0\",\"attr_key\":\"6-3\",\"media_id\":\"20\"},\"2-6\":{\"price\":\"1.00\",\"stock_num\":\"2\",\"code\":\"2\",\"cost_price\":\"3.00\",\"warn_number\":\"4\",\"sold_num\":\"0\",\"attr_key\":\"6-2\",\"media_id\":\"20\"},\"3-5\":{\"price\":\"1.00\",\"stock_num\":\"2\",\"code\":\"3\",\"cost_price\":\"3.00\",\"warn_number\":\"4\",\"sold_num\":\"0\",\"attr_key\":\"5-3\",\"media_id\":\"21\"},\"2-5\":{\"price\":null,\"stock_num\":null,\"code\":null,\"cost_price\":null,\"warn_number\":null,\"sold_num\":\"0\",\"attr_key\":\"5-2\",\"media_id\":\"21\"}},\"virtual_quantity\":\"1\",\"is_limit\":\"0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/product\"}', '2020-08-03 15:29:30', '2020-08-03 15:29:30');
INSERT INTO `lied_admin_operation_log` VALUES ('627', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-03 15:29:30', '2020-08-03 15:29:30');
INSERT INTO `lied_admin_operation_log` VALUES ('628', '1', 'admin/product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 15:38:29', '2020-08-03 15:38:29');
INSERT INTO `lied_admin_operation_log` VALUES ('629', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 15:38:32', '2020-08-03 15:38:32');
INSERT INTO `lied_admin_operation_log` VALUES ('630', '1', 'admin/product/1', 'PUT', '127.0.0.1', '{\"name\":\"lied\",\"category_id\":null,\"brand_id\":\"2\",\"line_price\":\"112.00\",\"picture\":[\"13\",\"14\",\"12\",\"11\"],\"description\":\"1231\",\"content\":\"<p><\\/p><p>1211<\\/p>\",\"sort\":\"99\",\"is_real\":\"on\",\"is_on_sale\":\"on\",\"is_audit\":\"on\",\"created_id\":\"1\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\",\"_date\":\"20200803\",\"sku_attr\":\"[{\\\"id\\\":9,\\\"product_id\\\":1,\\\"attr_key\\\":\\\"3-6\\\",\\\"media_id\\\":20,\\\"price\\\":\\\"1.00\\\",\\\"cost_price\\\":\\\"3.00\\\",\\\"sold_num\\\":0,\\\"code\\\":\\\"1\\\",\\\"created_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"updated_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"deleted_at\\\":null,\\\"stock\\\":{\\\"id\\\":9,\\\"product_id\\\":1,\\\"sku_id\\\":9,\\\"quantity\\\":2,\\\"warn_number\\\":4,\\\"created_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"updated_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"deleted_at\\\":null},\\\"media\\\":{\\\"id\\\":20,\\\"type\\\":1,\\\"link\\\":\\\"http:\\\\\\/\\\\\\/www.lied.com\\\\\\/uploads\\\\\\/images\\\\\\/sku\\\\\\/20200803\\\\\\/68562cb301eeae026614cc842a4e6a2f.jpeg\\\",\\\"rlink\\\":\\\"0\\\",\\\"size\\\":365,\\\"file_ext\\\":\\\"jpeg\\\",\\\"file_name\\\":\\\"68562cb301eeae026614cc842a4e6a2f.jpeg\\\",\\\"is_lock\\\":0,\\\"is_show\\\":1,\\\"created_at\\\":\\\"2020-08-03 15:20:48\\\",\\\"updated_at\\\":\\\"2020-08-03 15:20:48\\\",\\\"deleted_at\\\":null}},{\\\"id\\\":10,\\\"product_id\\\":1,\\\"attr_key\\\":\\\"2-6\\\",\\\"media_id\\\":20,\\\"price\\\":\\\"1.00\\\",\\\"cost_price\\\":\\\"3.00\\\",\\\"sold_num\\\":0,\\\"code\\\":\\\"2\\\",\\\"created_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"updated_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"deleted_at\\\":null,\\\"stock\\\":{\\\"id\\\":10,\\\"product_id\\\":1,\\\"sku_id\\\":10,\\\"quantity\\\":2,\\\"warn_number\\\":4,\\\"created_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"updated_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"deleted_at\\\":null},\\\"media\\\":{\\\"id\\\":20,\\\"type\\\":1,\\\"link\\\":\\\"http:\\\\\\/\\\\\\/www.lied.com\\\\\\/uploads\\\\\\/images\\\\\\/sku\\\\\\/20200803\\\\\\/68562cb301eeae026614cc842a4e6a2f.jpeg\\\",\\\"rlink\\\":\\\"0\\\",\\\"size\\\":365,\\\"file_ext\\\":\\\"jpeg\\\",\\\"file_name\\\":\\\"68562cb301eeae026614cc842a4e6a2f.jpeg\\\",\\\"is_lock\\\":0,\\\"is_show\\\":1,\\\"created_at\\\":\\\"2020-08-03 15:20:48\\\",\\\"updated_at\\\":\\\"2020-08-03 15:20:48\\\",\\\"deleted_at\\\":null}},{\\\"id\\\":11,\\\"product_id\\\":1,\\\"attr_key\\\":\\\"3-5\\\",\\\"media_id\\\":21,\\\"price\\\":\\\"1.00\\\",\\\"cost_price\\\":\\\"3.00\\\",\\\"sold_num\\\":0,\\\"code\\\":\\\"3\\\",\\\"created_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"updated_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"deleted_at\\\":null,\\\"stock\\\":{\\\"id\\\":11,\\\"product_id\\\":1,\\\"sku_id\\\":11,\\\"quantity\\\":2,\\\"warn_number\\\":4,\\\"created_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"updated_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"deleted_at\\\":null},\\\"media\\\":{\\\"id\\\":21,\\\"type\\\":1,\\\"link\\\":\\\"http:\\\\\\/\\\\\\/www.lied.com\\\\\\/uploads\\\\\\/images\\\\\\/sku\\\\\\/20200803\\\\\\/f7592c2eb81ff3309cc8f0a5d469d277.png\\\",\\\"rlink\\\":\\\"0\\\",\\\"size\\\":327,\\\"file_ext\\\":\\\"png\\\",\\\"file_name\\\":\\\"f7592c2eb81ff3309cc8f0a5d469d277.png\\\",\\\"is_lock\\\":0,\\\"is_show\\\":1,\\\"created_at\\\":\\\"2020-08-03 15:20:50\\\",\\\"updated_at\\\":\\\"2020-08-03 15:20:50\\\",\\\"deleted_at\\\":null}},{\\\"id\\\":12,\\\"product_id\\\":1,\\\"attr_key\\\":\\\"2-5\\\",\\\"media_id\\\":21,\\\"price\\\":\\\"1.00\\\",\\\"cost_price\\\":\\\"3.00\\\",\\\"sold_num\\\":0,\\\"code\\\":\\\"4\\\",\\\"created_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"updated_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"deleted_at\\\":null,\\\"stock\\\":{\\\"id\\\":12,\\\"product_id\\\":1,\\\"sku_id\\\":12,\\\"quantity\\\":2,\\\"warn_number\\\":4,\\\"created_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"updated_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"deleted_at\\\":null},\\\"media\\\":{\\\"id\\\":21,\\\"type\\\":1,\\\"link\\\":\\\"http:\\\\\\/\\\\\\/www.lied.com\\\\\\/uploads\\\\\\/images\\\\\\/sku\\\\\\/20200803\\\\\\/f7592c2eb81ff3309cc8f0a5d469d277.png\\\",\\\"rlink\\\":\\\"0\\\",\\\"size\\\":327,\\\"file_ext\\\":\\\"png\\\",\\\"file_name\\\":\\\"f7592c2eb81ff3309cc8f0a5d469d277.png\\\",\\\"is_lock\\\":0,\\\"is_show\\\":1,\\\"created_at\\\":\\\"2020-08-03 15:20:50\\\",\\\"updated_at\\\":\\\"2020-08-03 15:20:50\\\",\\\"deleted_at\\\":null}}]\",\"prosku\":{\"3-6\":{\"price\":\"1.00\",\"stock_num\":\"2\",\"code\":\"1\",\"cost_price\":\"3.00\",\"warn_number\":\"4\",\"sold_num\":\"0\",\"attr_key\":\"6-3\",\"media_id\":\"20\"},\"2-6\":{\"price\":\"1.00\",\"stock_num\":\"2\",\"code\":\"2\",\"cost_price\":\"3.00\",\"warn_number\":\"4\",\"sold_num\":\"0\",\"attr_key\":\"6-2\",\"media_id\":\"20\"},\"3-5\":{\"price\":\"1.00\",\"stock_num\":\"2\",\"code\":\"3\",\"cost_price\":\"3.00\",\"warn_number\":\"4\",\"sold_num\":\"0\",\"attr_key\":\"5-3\",\"media_id\":\"21\"},\"2-5\":{\"price\":null,\"stock_num\":null,\"code\":null,\"cost_price\":null,\"warn_number\":null,\"sold_num\":\"0\",\"attr_key\":\"5-2\",\"media_id\":\"21\"}},\"virtual_quantity\":\"1\",\"is_limit\":\"0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/product\"}', '2020-08-03 15:38:41', '2020-08-03 15:38:41');
INSERT INTO `lied_admin_operation_log` VALUES ('631', '1', 'admin/product', 'GET', '127.0.0.1', '[]', '2020-08-03 15:38:42', '2020-08-03 15:38:42');
INSERT INTO `lied_admin_operation_log` VALUES ('632', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 15:38:44', '2020-08-03 15:38:44');
INSERT INTO `lied_admin_operation_log` VALUES ('633', '1', 'admin/product/1', 'PUT', '127.0.0.1', '{\"name\":\"lied\",\"category_id\":null,\"brand_id\":\"2\",\"line_price\":\"112.00\",\"picture\":[\"13\",\"14\",\"12\",\"11\"],\"description\":\"1231\",\"content\":\"<p><\\/p><p>1211<\\/p>\",\"sort\":\"99\",\"is_real\":\"on\",\"is_on_sale\":\"on\",\"is_audit\":\"on\",\"created_id\":\"1\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\",\"_date\":\"20200803\",\"sku_attr\":\"[{\\\"id\\\":9,\\\"product_id\\\":1,\\\"attr_key\\\":\\\"3-6\\\",\\\"media_id\\\":20,\\\"price\\\":\\\"1.00\\\",\\\"cost_price\\\":\\\"3.00\\\",\\\"sold_num\\\":0,\\\"code\\\":\\\"1\\\",\\\"created_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"updated_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"deleted_at\\\":null,\\\"stock\\\":{\\\"id\\\":9,\\\"product_id\\\":1,\\\"sku_id\\\":9,\\\"quantity\\\":2,\\\"warn_number\\\":4,\\\"created_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"updated_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"deleted_at\\\":null},\\\"media\\\":{\\\"id\\\":20,\\\"type\\\":1,\\\"link\\\":\\\"http:\\\\\\/\\\\\\/www.lied.com\\\\\\/uploads\\\\\\/images\\\\\\/sku\\\\\\/20200803\\\\\\/68562cb301eeae026614cc842a4e6a2f.jpeg\\\",\\\"rlink\\\":\\\"0\\\",\\\"size\\\":365,\\\"file_ext\\\":\\\"jpeg\\\",\\\"file_name\\\":\\\"68562cb301eeae026614cc842a4e6a2f.jpeg\\\",\\\"is_lock\\\":0,\\\"is_show\\\":1,\\\"created_at\\\":\\\"2020-08-03 15:20:48\\\",\\\"updated_at\\\":\\\"2020-08-03 15:20:48\\\",\\\"deleted_at\\\":null}},{\\\"id\\\":10,\\\"product_id\\\":1,\\\"attr_key\\\":\\\"2-6\\\",\\\"media_id\\\":20,\\\"price\\\":\\\"1.00\\\",\\\"cost_price\\\":\\\"3.00\\\",\\\"sold_num\\\":0,\\\"code\\\":\\\"2\\\",\\\"created_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"updated_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"deleted_at\\\":null,\\\"stock\\\":{\\\"id\\\":10,\\\"product_id\\\":1,\\\"sku_id\\\":10,\\\"quantity\\\":2,\\\"warn_number\\\":4,\\\"created_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"updated_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"deleted_at\\\":null},\\\"media\\\":{\\\"id\\\":20,\\\"type\\\":1,\\\"link\\\":\\\"http:\\\\\\/\\\\\\/www.lied.com\\\\\\/uploads\\\\\\/images\\\\\\/sku\\\\\\/20200803\\\\\\/68562cb301eeae026614cc842a4e6a2f.jpeg\\\",\\\"rlink\\\":\\\"0\\\",\\\"size\\\":365,\\\"file_ext\\\":\\\"jpeg\\\",\\\"file_name\\\":\\\"68562cb301eeae026614cc842a4e6a2f.jpeg\\\",\\\"is_lock\\\":0,\\\"is_show\\\":1,\\\"created_at\\\":\\\"2020-08-03 15:20:48\\\",\\\"updated_at\\\":\\\"2020-08-03 15:20:48\\\",\\\"deleted_at\\\":null}},{\\\"id\\\":11,\\\"product_id\\\":1,\\\"attr_key\\\":\\\"3-5\\\",\\\"media_id\\\":21,\\\"price\\\":\\\"1.00\\\",\\\"cost_price\\\":\\\"3.00\\\",\\\"sold_num\\\":0,\\\"code\\\":\\\"3\\\",\\\"created_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"updated_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"deleted_at\\\":null,\\\"stock\\\":{\\\"id\\\":11,\\\"product_id\\\":1,\\\"sku_id\\\":11,\\\"quantity\\\":2,\\\"warn_number\\\":4,\\\"created_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"updated_at\\\":\\\"2020-08-03 15:24:14\\\",\\\"deleted_at\\\":null},\\\"media\\\":{\\\"id\\\":21,\\\"type\\\":1,\\\"link\\\":\\\"http:\\\\\\/\\\\\\/www.lied.com\\\\\\/uploads\\\\\\/images\\\\\\/sku\\\\\\/20200803\\\\\\/f7592c2eb81ff3309cc8f0a5d469d277.png\\\",\\\"rlink\\\":\\\"0\\\",\\\"size\\\":327,\\\"file_ext\\\":\\\"png\\\",\\\"file_name\\\":\\\"f7592c2eb81ff3309cc8f0a5d469d277.png\\\",\\\"is_lock\\\":0,\\\"is_show\\\":1,\\\"created_at\\\":\\\"2020-08-03 15:20:50\\\",\\\"updated_at\\\":\\\"2020-08-03 15:20:50\\\",\\\"deleted_at\\\":null}}]\",\"prosku\":{\"3-6\":{\"price\":\"1.00\",\"stock_num\":\"2\",\"code\":\"1\",\"cost_price\":\"3.00\",\"warn_number\":\"4\",\"sold_num\":\"0\",\"attr_key\":\"6-3\",\"media_id\":\"20\"},\"2-6\":{\"price\":\"1.00\",\"stock_num\":\"2\",\"code\":\"2\",\"cost_price\":\"3.00\",\"warn_number\":\"4\",\"sold_num\":\"0\",\"attr_key\":\"6-2\",\"media_id\":\"20\"},\"3-5\":{\"price\":\"1.00\",\"stock_num\":\"2\",\"code\":\"3\",\"cost_price\":\"3.00\",\"warn_number\":\"4\",\"sold_num\":\"0\",\"attr_key\":\"5-3\",\"media_id\":\"21\"},\"2-5\":{\"price\":\"1\",\"stock_num\":\"1\",\"code\":\"1\",\"cost_price\":\"1\",\"warn_number\":\"1\",\"sold_num\":\"0\",\"attr_key\":\"5-2\",\"media_id\":\"21\"}},\"virtual_quantity\":\"1\",\"is_limit\":\"0\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/product\"}', '2020-08-03 15:39:37', '2020-08-03 15:39:37');
INSERT INTO `lied_admin_operation_log` VALUES ('634', '1', 'admin/product', 'GET', '127.0.0.1', '[]', '2020-08-03 15:39:38', '2020-08-03 15:39:38');
INSERT INTO `lied_admin_operation_log` VALUES ('635', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 15:39:39', '2020-08-03 15:39:39');
INSERT INTO `lied_admin_operation_log` VALUES ('636', '1', 'admin/product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 15:40:15', '2020-08-03 15:40:15');
INSERT INTO `lied_admin_operation_log` VALUES ('637', '1', 'admin/product/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 15:40:16', '2020-08-03 15:40:16');
INSERT INTO `lied_admin_operation_log` VALUES ('638', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 15:40:25', '2020-08-03 15:40:25');
INSERT INTO `lied_admin_operation_log` VALUES ('639', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 15:40:28', '2020-08-03 15:40:28');
INSERT INTO `lied_admin_operation_log` VALUES ('640', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 15:45:14', '2020-08-03 15:45:14');
INSERT INTO `lied_admin_operation_log` VALUES ('641', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-08-03 15:45:36', '2020-08-03 15:45:36');
INSERT INTO `lied_admin_operation_log` VALUES ('642', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 15:45:42', '2020-08-03 15:45:42');
INSERT INTO `lied_admin_operation_log` VALUES ('643', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 15:45:46', '2020-08-03 15:45:46');
INSERT INTO `lied_admin_operation_log` VALUES ('644', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-08-03 15:47:00', '2020-08-03 15:47:00');
INSERT INTO `lied_admin_operation_log` VALUES ('645', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 15:47:04', '2020-08-03 15:47:04');
INSERT INTO `lied_admin_operation_log` VALUES ('646', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 15:47:07', '2020-08-03 15:47:07');
INSERT INTO `lied_admin_operation_log` VALUES ('647', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-08-03 15:48:35', '2020-08-03 15:48:35');
INSERT INTO `lied_admin_operation_log` VALUES ('648', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"1\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 15:48:40', '2020-08-03 15:48:40');
INSERT INTO `lied_admin_operation_log` VALUES ('649', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"1\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 15:48:42', '2020-08-03 15:48:42');
INSERT INTO `lied_admin_operation_log` VALUES ('650', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-08-03 15:51:56', '2020-08-03 15:51:56');
INSERT INTO `lied_admin_operation_log` VALUES ('651', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 15:52:00', '2020-08-03 15:52:00');
INSERT INTO `lied_admin_operation_log` VALUES ('652', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 15:52:03', '2020-08-03 15:52:03');
INSERT INTO `lied_admin_operation_log` VALUES ('653', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-08-03 15:52:27', '2020-08-03 15:52:27');
INSERT INTO `lied_admin_operation_log` VALUES ('654', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 15:52:30', '2020-08-03 15:52:30');
INSERT INTO `lied_admin_operation_log` VALUES ('655', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 15:52:33', '2020-08-03 15:52:33');
INSERT INTO `lied_admin_operation_log` VALUES ('656', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-08-03 15:52:52', '2020-08-03 15:52:52');
INSERT INTO `lied_admin_operation_log` VALUES ('657', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 15:52:56', '2020-08-03 15:52:56');
INSERT INTO `lied_admin_operation_log` VALUES ('658', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 15:52:57', '2020-08-03 15:52:57');
INSERT INTO `lied_admin_operation_log` VALUES ('659', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-08-03 15:57:10', '2020-08-03 15:57:10');
INSERT INTO `lied_admin_operation_log` VALUES ('660', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 15:57:15', '2020-08-03 15:57:15');
INSERT INTO `lied_admin_operation_log` VALUES ('661', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 15:57:17', '2020-08-03 15:57:17');
INSERT INTO `lied_admin_operation_log` VALUES ('662', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-08-03 16:15:04', '2020-08-03 16:15:04');
INSERT INTO `lied_admin_operation_log` VALUES ('663', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 16:15:08', '2020-08-03 16:15:08');
INSERT INTO `lied_admin_operation_log` VALUES ('664', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-08-03 16:35:12', '2020-08-03 16:35:12');
INSERT INTO `lied_admin_operation_log` VALUES ('665', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 16:35:16', '2020-08-03 16:35:16');
INSERT INTO `lied_admin_operation_log` VALUES ('666', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 16:35:19', '2020-08-03 16:35:19');
INSERT INTO `lied_admin_operation_log` VALUES ('667', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-08-03 16:37:34', '2020-08-03 16:37:34');
INSERT INTO `lied_admin_operation_log` VALUES ('668', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 16:37:40', '2020-08-03 16:37:40');
INSERT INTO `lied_admin_operation_log` VALUES ('669', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 16:45:32', '2020-08-03 16:45:32');
INSERT INTO `lied_admin_operation_log` VALUES ('670', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-08-03 16:45:53', '2020-08-03 16:45:53');
INSERT INTO `lied_admin_operation_log` VALUES ('671', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 16:45:58', '2020-08-03 16:45:58');
INSERT INTO `lied_admin_operation_log` VALUES ('672', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 16:46:01', '2020-08-03 16:46:01');
INSERT INTO `lied_admin_operation_log` VALUES ('673', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-08-03 16:46:30', '2020-08-03 16:46:30');
INSERT INTO `lied_admin_operation_log` VALUES ('674', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-08-03 16:46:43', '2020-08-03 16:46:43');
INSERT INTO `lied_admin_operation_log` VALUES ('675', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 16:46:46', '2020-08-03 16:46:46');
INSERT INTO `lied_admin_operation_log` VALUES ('676', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-08-03 16:47:34', '2020-08-03 16:47:34');
INSERT INTO `lied_admin_operation_log` VALUES ('677', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-08-03 16:47:58', '2020-08-03 16:47:58');
INSERT INTO `lied_admin_operation_log` VALUES ('678', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"1\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 16:48:02', '2020-08-03 16:48:02');
INSERT INTO `lied_admin_operation_log` VALUES ('679', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"1\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 16:48:06', '2020-08-03 16:48:06');
INSERT INTO `lied_admin_operation_log` VALUES ('680', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-08-03 16:50:08', '2020-08-03 16:50:08');
INSERT INTO `lied_admin_operation_log` VALUES ('681', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"1\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 16:50:12', '2020-08-03 16:50:12');
INSERT INTO `lied_admin_operation_log` VALUES ('682', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"1\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 16:50:14', '2020-08-03 16:50:14');
INSERT INTO `lied_admin_operation_log` VALUES ('683', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-08-03 16:50:28', '2020-08-03 16:50:28');
INSERT INTO `lied_admin_operation_log` VALUES ('684', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 16:50:33', '2020-08-03 16:50:33');
INSERT INTO `lied_admin_operation_log` VALUES ('685', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 16:50:37', '2020-08-03 16:50:37');
INSERT INTO `lied_admin_operation_log` VALUES ('686', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-08-03 16:50:44', '2020-08-03 16:50:44');
INSERT INTO `lied_admin_operation_log` VALUES ('687', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 16:50:48', '2020-08-03 16:50:48');
INSERT INTO `lied_admin_operation_log` VALUES ('688', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 16:50:50', '2020-08-03 16:50:50');
INSERT INTO `lied_admin_operation_log` VALUES ('689', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-08-03 16:53:07', '2020-08-03 16:53:07');
INSERT INTO `lied_admin_operation_log` VALUES ('690', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 16:53:11', '2020-08-03 16:53:11');
INSERT INTO `lied_admin_operation_log` VALUES ('691', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 16:53:11', '2020-08-03 16:53:11');
INSERT INTO `lied_admin_operation_log` VALUES ('692', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 16:53:12', '2020-08-03 16:53:12');
INSERT INTO `lied_admin_operation_log` VALUES ('693', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-08-03 16:53:52', '2020-08-03 16:53:52');
INSERT INTO `lied_admin_operation_log` VALUES ('694', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 16:53:56', '2020-08-03 16:53:56');
INSERT INTO `lied_admin_operation_log` VALUES ('695', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 16:54:12', '2020-08-03 16:54:12');
INSERT INTO `lied_admin_operation_log` VALUES ('696', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-08-03 16:56:22', '2020-08-03 16:56:22');
INSERT INTO `lied_admin_operation_log` VALUES ('697', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"1\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 16:56:28', '2020-08-03 16:56:28');
INSERT INTO `lied_admin_operation_log` VALUES ('698', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"1\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 16:56:35', '2020-08-03 16:56:35');
INSERT INTO `lied_admin_operation_log` VALUES ('699', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-08-03 16:58:30', '2020-08-03 16:58:30');
INSERT INTO `lied_admin_operation_log` VALUES ('700', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 16:58:34', '2020-08-03 16:58:34');
INSERT INTO `lied_admin_operation_log` VALUES ('701', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 16:58:36', '2020-08-03 16:58:36');
INSERT INTO `lied_admin_operation_log` VALUES ('702', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-08-03 17:08:21', '2020-08-03 17:08:21');
INSERT INTO `lied_admin_operation_log` VALUES ('703', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 17:08:25', '2020-08-03 17:08:25');
INSERT INTO `lied_admin_operation_log` VALUES ('704', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 17:08:27', '2020-08-03 17:08:27');
INSERT INTO `lied_admin_operation_log` VALUES ('705', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-08-03 17:08:53', '2020-08-03 17:08:53');
INSERT INTO `lied_admin_operation_log` VALUES ('706', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 17:09:54', '2020-08-03 17:09:54');
INSERT INTO `lied_admin_operation_log` VALUES ('707', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 17:10:00', '2020-08-03 17:10:00');
INSERT INTO `lied_admin_operation_log` VALUES ('708', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 17:10:22', '2020-08-03 17:10:22');
INSERT INTO `lied_admin_operation_log` VALUES ('709', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 17:10:31', '2020-08-03 17:10:31');
INSERT INTO `lied_admin_operation_log` VALUES ('710', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 17:10:39', '2020-08-03 17:10:39');
INSERT INTO `lied_admin_operation_log` VALUES ('711', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 17:11:11', '2020-08-03 17:11:11');
INSERT INTO `lied_admin_operation_log` VALUES ('712', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 17:11:23', '2020-08-03 17:11:23');
INSERT INTO `lied_admin_operation_log` VALUES ('713', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-08-03 17:12:30', '2020-08-03 17:12:30');
INSERT INTO `lied_admin_operation_log` VALUES ('714', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-08-03 17:13:12', '2020-08-03 17:13:12');
INSERT INTO `lied_admin_operation_log` VALUES ('715', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 17:13:18', '2020-08-03 17:13:18');
INSERT INTO `lied_admin_operation_log` VALUES ('716', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 17:13:23', '2020-08-03 17:13:23');
INSERT INTO `lied_admin_operation_log` VALUES ('717', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-08-03 17:13:50', '2020-08-03 17:13:50');
INSERT INTO `lied_admin_operation_log` VALUES ('718', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-08-03 17:14:13', '2020-08-03 17:14:13');
INSERT INTO `lied_admin_operation_log` VALUES ('719', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 17:14:19', '2020-08-03 17:14:19');
INSERT INTO `lied_admin_operation_log` VALUES ('720', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 17:14:23', '2020-08-03 17:14:23');
INSERT INTO `lied_admin_operation_log` VALUES ('721', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-08-03 17:15:29', '2020-08-03 17:15:29');
INSERT INTO `lied_admin_operation_log` VALUES ('722', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 17:15:35', '2020-08-03 17:15:35');
INSERT INTO `lied_admin_operation_log` VALUES ('723', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 17:15:43', '2020-08-03 17:15:43');
INSERT INTO `lied_admin_operation_log` VALUES ('724', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-08-03 17:19:09', '2020-08-03 17:19:09');
INSERT INTO `lied_admin_operation_log` VALUES ('725', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-08-03 17:19:45', '2020-08-03 17:19:45');
INSERT INTO `lied_admin_operation_log` VALUES ('726', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 17:19:51', '2020-08-03 17:19:51');
INSERT INTO `lied_admin_operation_log` VALUES ('727', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 17:19:55', '2020-08-03 17:19:55');
INSERT INTO `lied_admin_operation_log` VALUES ('728', '1', 'admin/product/create', 'GET', '127.0.0.1', '[]', '2020-08-03 17:20:34', '2020-08-03 17:20:34');
INSERT INTO `lied_admin_operation_log` VALUES ('729', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 17:20:38', '2020-08-03 17:20:38');
INSERT INTO `lied_admin_operation_log` VALUES ('730', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 17:20:40', '2020-08-03 17:20:40');
INSERT INTO `lied_admin_operation_log` VALUES ('731', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 17:20:44', '2020-08-03 17:20:44');
INSERT INTO `lied_admin_operation_log` VALUES ('732', '1', 'admin/api/attr/value/get', 'POST', '127.0.0.1', '{\"pid\":\"2\",\"_token\":\"QBexVNLOtN3DHXCGLllynT7ybyPNi1LvLdLqTpsx\"}', '2020-08-03 17:20:50', '2020-08-03 17:20:50');
INSERT INTO `lied_admin_operation_log` VALUES ('733', '1', 'admin/product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 17:21:09', '2020-08-03 17:21:09');
INSERT INTO `lied_admin_operation_log` VALUES ('734', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-03 17:21:15', '2020-08-03 17:21:15');
INSERT INTO `lied_admin_operation_log` VALUES ('735', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-08-04 09:58:09', '2020-08-04 09:58:09');
INSERT INTO `lied_admin_operation_log` VALUES ('736', '1', 'admin/product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 09:58:15', '2020-08-04 09:58:15');
INSERT INTO `lied_admin_operation_log` VALUES ('737', '1', 'admin/adv/position', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 09:58:25', '2020-08-04 09:58:25');
INSERT INTO `lied_admin_operation_log` VALUES ('738', '1', 'admin/adv', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 09:58:36', '2020-08-04 09:58:36');
INSERT INTO `lied_admin_operation_log` VALUES ('739', '1', 'admin/adv/position', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 09:58:39', '2020-08-04 09:58:39');
INSERT INTO `lied_admin_operation_log` VALUES ('740', '1', 'admin/adv/position/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 10:18:22', '2020-08-04 10:18:22');
INSERT INTO `lied_admin_operation_log` VALUES ('741', '1', 'admin/adv/position', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 10:18:26', '2020-08-04 10:18:26');
INSERT INTO `lied_admin_operation_log` VALUES ('742', '1', 'admin/adv/position/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 10:18:27', '2020-08-04 10:18:27');
INSERT INTO `lied_admin_operation_log` VALUES ('743', '1', 'admin/adv/position/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-04 10:19:10', '2020-08-04 10:19:10');
INSERT INTO `lied_admin_operation_log` VALUES ('744', '1', 'admin/adv/position/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-04 10:19:21', '2020-08-04 10:19:21');
INSERT INTO `lied_admin_operation_log` VALUES ('745', '1', 'admin/adv/position/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-04 10:19:34', '2020-08-04 10:19:34');
INSERT INTO `lied_admin_operation_log` VALUES ('746', '1', 'admin/adv/position', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 10:19:55', '2020-08-04 10:19:55');
INSERT INTO `lied_admin_operation_log` VALUES ('747', '1', 'admin/adv', 'GET', '127.0.0.1', '[]', '2020-08-04 16:20:42', '2020-08-04 16:20:42');
INSERT INTO `lied_admin_operation_log` VALUES ('748', '1', 'admin/adv/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 16:20:46', '2020-08-04 16:20:46');
INSERT INTO `lied_admin_operation_log` VALUES ('749', '1', 'admin/adv/3', 'PUT', '127.0.0.1', '{\"name\":\"\\u5546\\u57ce\\u5e73\\u53f0\\u63a5\\u53e3\",\"url\":\"https:\\/\\/test.xiehome.com\\/index.php\\/m.php\\/loan\",\"media_id\":\"3\",\"position_id\":\"1\",\"desc\":null,\"is_show\":\"on\",\"sort\":\"99\",\"advopen\":{\"1\":{\"region_open_id\":\"1\",\"start_time\":\"2020-07-31 00:00:00\",\"end_time\":\"2020-08-31 12:00:00\",\"id\":\"1\",\"_remove_\":\"0\"}},\"_token\":\"7IVahJfBZxSEPwAQe7t1AR29KXudzfPe2Qk8MtAT\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/adv\"}', '2020-08-04 16:20:56', '2020-08-04 16:20:56');
INSERT INTO `lied_admin_operation_log` VALUES ('750', '1', 'admin/adv', 'GET', '127.0.0.1', '[]', '2020-08-04 16:20:56', '2020-08-04 16:20:56');
INSERT INTO `lied_admin_operation_log` VALUES ('751', '1', 'admin/adv/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 16:20:59', '2020-08-04 16:20:59');
INSERT INTO `lied_admin_operation_log` VALUES ('752', '1', 'admin/region/open', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 16:21:07', '2020-08-04 16:21:07');
INSERT INTO `lied_admin_operation_log` VALUES ('753', '1', 'admin/adv', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 16:30:12', '2020-08-04 16:30:12');
INSERT INTO `lied_admin_operation_log` VALUES ('754', '1', 'admin/adv/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-04 16:30:15', '2020-08-04 16:30:15');
INSERT INTO `lied_admin_operation_log` VALUES ('755', '1', 'admin/adv', 'GET', '127.0.0.1', '[]', '2020-08-05 09:11:18', '2020-08-05 09:11:18');
INSERT INTO `lied_admin_operation_log` VALUES ('756', '1', 'admin/product/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 09:14:27', '2020-08-05 09:14:27');
INSERT INTO `lied_admin_operation_log` VALUES ('757', '1', 'admin/product/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 09:24:51', '2020-08-05 09:24:51');
INSERT INTO `lied_admin_operation_log` VALUES ('758', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 09:24:53', '2020-08-05 09:24:53');
INSERT INTO `lied_admin_operation_log` VALUES ('759', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 09:24:54', '2020-08-05 09:24:54');
INSERT INTO `lied_admin_operation_log` VALUES ('760', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 09:24:56', '2020-08-05 09:24:56');
INSERT INTO `lied_admin_operation_log` VALUES ('761', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 09:24:57', '2020-08-05 09:24:57');
INSERT INTO `lied_admin_operation_log` VALUES ('762', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 09:24:58', '2020-08-05 09:24:58');
INSERT INTO `lied_admin_operation_log` VALUES ('763', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 09:24:59', '2020-08-05 09:24:59');
INSERT INTO `lied_admin_operation_log` VALUES ('764', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 09:25:01', '2020-08-05 09:25:01');
INSERT INTO `lied_admin_operation_log` VALUES ('765', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 09:25:02', '2020-08-05 09:25:02');
INSERT INTO `lied_admin_operation_log` VALUES ('766', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 09:25:03', '2020-08-05 09:25:03');
INSERT INTO `lied_admin_operation_log` VALUES ('767', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 09:25:04', '2020-08-05 09:25:04');
INSERT INTO `lied_admin_operation_log` VALUES ('768', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 09:25:06', '2020-08-05 09:25:06');
INSERT INTO `lied_admin_operation_log` VALUES ('769', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 09:25:07', '2020-08-05 09:25:07');
INSERT INTO `lied_admin_operation_log` VALUES ('770', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 09:25:08', '2020-08-05 09:25:08');
INSERT INTO `lied_admin_operation_log` VALUES ('771', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 09:25:09', '2020-08-05 09:25:09');
INSERT INTO `lied_admin_operation_log` VALUES ('772', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 09:25:11', '2020-08-05 09:25:11');
INSERT INTO `lied_admin_operation_log` VALUES ('773', '1', 'admin/product/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 09:25:12', '2020-08-05 09:25:12');
INSERT INTO `lied_admin_operation_log` VALUES ('774', '1', 'admin/product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 09:25:14', '2020-08-05 09:25:14');
INSERT INTO `lied_admin_operation_log` VALUES ('775', '1', 'admin/product/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 09:25:22', '2020-08-05 09:25:22');
INSERT INTO `lied_admin_operation_log` VALUES ('776', '1', 'admin/product', 'GET', '127.0.0.1', '[]', '2020-08-05 09:25:23', '2020-08-05 09:25:23');
INSERT INTO `lied_admin_operation_log` VALUES ('777', '1', 'admin/product/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 09:25:25', '2020-08-05 09:25:25');
INSERT INTO `lied_admin_operation_log` VALUES ('778', '1', 'admin/product', 'GET', '127.0.0.1', '[]', '2020-08-05 09:25:27', '2020-08-05 09:25:27');
INSERT INTO `lied_admin_operation_log` VALUES ('779', '1', 'admin/product/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 09:26:03', '2020-08-05 09:26:03');
INSERT INTO `lied_admin_operation_log` VALUES ('780', '1', 'admin/product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 09:26:04', '2020-08-05 09:26:04');
INSERT INTO `lied_admin_operation_log` VALUES ('781', '1', 'admin/product/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 09:26:05', '2020-08-05 09:26:05');
INSERT INTO `lied_admin_operation_log` VALUES ('782', '1', 'admin/product/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 09:26:07', '2020-08-05 09:26:07');
INSERT INTO `lied_admin_operation_log` VALUES ('783', '1', 'admin/product/category/create', 'GET', '127.0.0.1', '[]', '2020-08-05 09:32:03', '2020-08-05 09:32:03');
INSERT INTO `lied_admin_operation_log` VALUES ('784', '1', 'admin/product/category/create', 'GET', '127.0.0.1', '[]', '2020-08-05 09:32:14', '2020-08-05 09:32:14');
INSERT INTO `lied_admin_operation_log` VALUES ('785', '1', 'admin/product/category', 'POST', '127.0.0.1', '{\"pid\":\"0\",\"name\":\"12311\",\"sort_order\":\"99\",\"is_rec\":\"off\",\"_token\":\"MNaHvHuFpySOSjFVjzZxbOPESWAJQGZm3XYYytWg\"}', '2020-08-05 09:32:32', '2020-08-05 09:32:32');
INSERT INTO `lied_admin_operation_log` VALUES ('786', '1', 'admin/product/category/create', 'GET', '127.0.0.1', '[]', '2020-08-05 09:32:34', '2020-08-05 09:32:34');
INSERT INTO `lied_admin_operation_log` VALUES ('787', '1', 'admin/product/category', 'POST', '127.0.0.1', '{\"pid\":\"0\",\"name\":\"12311\",\"sort_order\":\"99\",\"is_rec\":\"off\",\"_token\":\"MNaHvHuFpySOSjFVjzZxbOPESWAJQGZm3XYYytWg\"}', '2020-08-05 09:32:47', '2020-08-05 09:32:47');
INSERT INTO `lied_admin_operation_log` VALUES ('788', '1', 'admin/product/category/create', 'GET', '127.0.0.1', '[]', '2020-08-05 09:32:49', '2020-08-05 09:32:49');
INSERT INTO `lied_admin_operation_log` VALUES ('789', '1', 'admin/product/category', 'POST', '127.0.0.1', '{\"pid\":\"0\",\"name\":\"12311\",\"sort_order\":\"99\",\"is_rec\":\"off\",\"_token\":\"MNaHvHuFpySOSjFVjzZxbOPESWAJQGZm3XYYytWg\"}', '2020-08-05 09:33:16', '2020-08-05 09:33:16');
INSERT INTO `lied_admin_operation_log` VALUES ('790', '1', 'admin/product/category/create', 'GET', '127.0.0.1', '[]', '2020-08-05 09:33:18', '2020-08-05 09:33:18');
INSERT INTO `lied_admin_operation_log` VALUES ('791', '1', 'admin/product/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 09:36:18', '2020-08-05 09:36:18');
INSERT INTO `lied_admin_operation_log` VALUES ('792', '1', 'admin/product/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 09:36:19', '2020-08-05 09:36:19');
INSERT INTO `lied_admin_operation_log` VALUES ('793', '1', 'admin/product/category', 'POST', '127.0.0.1', '{\"pid\":\"0\",\"name\":\"\\u70ed\\u95e8\\u63a8\\u8350\",\"sort_order\":\"99\",\"is_rec\":\"off\",\"_token\":\"MNaHvHuFpySOSjFVjzZxbOPESWAJQGZm3XYYytWg\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/product\\/category\"}', '2020-08-05 09:36:51', '2020-08-05 09:36:51');
INSERT INTO `lied_admin_operation_log` VALUES ('794', '1', 'admin/product/category/create', 'GET', '127.0.0.1', '[]', '2020-08-05 09:36:53', '2020-08-05 09:36:53');
INSERT INTO `lied_admin_operation_log` VALUES ('795', '1', 'admin/product/category', 'POST', '127.0.0.1', '{\"pid\":\"0\",\"name\":\"\\u70ed\\u95e8\\u63a8\\u8350\",\"sort_order\":\"99\",\"is_rec\":\"on\",\"_token\":\"MNaHvHuFpySOSjFVjzZxbOPESWAJQGZm3XYYytWg\"}', '2020-08-05 09:37:05', '2020-08-05 09:37:05');
INSERT INTO `lied_admin_operation_log` VALUES ('796', '1', 'admin/product/category/create', 'GET', '127.0.0.1', '[]', '2020-08-05 09:37:05', '2020-08-05 09:37:05');
INSERT INTO `lied_admin_operation_log` VALUES ('797', '1', 'admin/product/category', 'POST', '127.0.0.1', '{\"pid\":\"0\",\"name\":\"\\u70ed\\u95e8\\u63a8\\u8350\",\"sort\":\"99\",\"is_rec\":\"off\",\"_token\":\"MNaHvHuFpySOSjFVjzZxbOPESWAJQGZm3XYYytWg\"}', '2020-08-05 09:39:37', '2020-08-05 09:39:37');
INSERT INTO `lied_admin_operation_log` VALUES ('798', '1', 'admin/product/category/create', 'GET', '127.0.0.1', '[]', '2020-08-05 09:39:37', '2020-08-05 09:39:37');
INSERT INTO `lied_admin_operation_log` VALUES ('799', '1', 'admin/product/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 09:39:55', '2020-08-05 09:39:55');
INSERT INTO `lied_admin_operation_log` VALUES ('800', '1', 'admin/product/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 09:39:56', '2020-08-05 09:39:56');
INSERT INTO `lied_admin_operation_log` VALUES ('801', '1', 'admin/product/category', 'POST', '127.0.0.1', '{\"pid\":\"0\",\"name\":\"\\u5546\\u57ce\\u5e73\\u53f0\\u63a5\\u53e3\",\"sort\":\"99\",\"is_rec\":\"on\",\"_token\":\"MNaHvHuFpySOSjFVjzZxbOPESWAJQGZm3XYYytWg\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/product\\/category\"}', '2020-08-05 09:40:00', '2020-08-05 09:40:00');
INSERT INTO `lied_admin_operation_log` VALUES ('802', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 09:40:46', '2020-08-05 09:40:46');
INSERT INTO `lied_admin_operation_log` VALUES ('803', '1', 'admin/product/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 09:40:49', '2020-08-05 09:40:49');
INSERT INTO `lied_admin_operation_log` VALUES ('804', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 09:40:50', '2020-08-05 09:40:50');
INSERT INTO `lied_admin_operation_log` VALUES ('805', '1', 'admin/product/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 09:41:02', '2020-08-05 09:41:02');
INSERT INTO `lied_admin_operation_log` VALUES ('806', '1', 'admin/product/category/create', 'GET', '127.0.0.1', '[]', '2020-08-05 09:41:35', '2020-08-05 09:41:35');
INSERT INTO `lied_admin_operation_log` VALUES ('807', '1', 'admin/product/category', 'POST', '127.0.0.1', '{\"pid\":\"0\",\"name\":\"\\u70ed\\u95e8\\u63a8\\u8350\",\"sort\":\"99\",\"is_rec\":\"on\",\"_token\":\"MNaHvHuFpySOSjFVjzZxbOPESWAJQGZm3XYYytWg\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/product\\/category\"}', '2020-08-05 09:52:59', '2020-08-05 09:52:59');
INSERT INTO `lied_admin_operation_log` VALUES ('808', '1', 'admin/product/category/create', 'GET', '127.0.0.1', '[]', '2020-08-05 09:52:59', '2020-08-05 09:52:59');
INSERT INTO `lied_admin_operation_log` VALUES ('809', '1', 'admin/product/category', 'POST', '127.0.0.1', '{\"pid\":\"0\",\"name\":\"\\u70ed\\u95e8\\u63a8\\u8350\",\"sort\":\"99\",\"is_rec\":\"off\",\"_token\":\"MNaHvHuFpySOSjFVjzZxbOPESWAJQGZm3XYYytWg\"}', '2020-08-05 09:53:11', '2020-08-05 09:53:11');
INSERT INTO `lied_admin_operation_log` VALUES ('810', '1', 'admin/product/category/create', 'GET', '127.0.0.1', '[]', '2020-08-05 09:53:12', '2020-08-05 09:53:12');
INSERT INTO `lied_admin_operation_log` VALUES ('811', '1', 'admin/product/category', 'POST', '127.0.0.1', '{\"pid\":\"0\",\"name\":\"\\u70ed\\u95e8\\u63a8\\u8350\",\"sort\":\"99\",\"is_rec\":\"off\",\"_token\":\"MNaHvHuFpySOSjFVjzZxbOPESWAJQGZm3XYYytWg\"}', '2020-08-05 09:53:31', '2020-08-05 09:53:31');
INSERT INTO `lied_admin_operation_log` VALUES ('812', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 09:55:27', '2020-08-05 09:55:27');
INSERT INTO `lied_admin_operation_log` VALUES ('813', '1', 'admin/product/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 09:55:29', '2020-08-05 09:55:29');
INSERT INTO `lied_admin_operation_log` VALUES ('814', '1', 'admin/product/category', 'POST', '127.0.0.1', '{\"pid\":\"0\",\"name\":\"\\u70ed\\u95e8\\u63a8\\u8350\",\"sort\":\"99\",\"is_rec\":\"on\",\"_token\":\"MNaHvHuFpySOSjFVjzZxbOPESWAJQGZm3XYYytWg\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/product\\/category\"}', '2020-08-05 09:55:33', '2020-08-05 09:55:33');
INSERT INTO `lied_admin_operation_log` VALUES ('815', '1', 'admin/product/category/create', 'GET', '127.0.0.1', '[]', '2020-08-05 09:55:33', '2020-08-05 09:55:33');
INSERT INTO `lied_admin_operation_log` VALUES ('816', '1', 'admin/product/category', 'POST', '127.0.0.1', '{\"pid\":\"0\",\"name\":\"\\u70ed\\u95e8\\u63a8\\u8350\",\"sort\":\"99\",\"is_rec\":\"off\",\"_token\":\"MNaHvHuFpySOSjFVjzZxbOPESWAJQGZm3XYYytWg\"}', '2020-08-05 09:55:37', '2020-08-05 09:55:37');
INSERT INTO `lied_admin_operation_log` VALUES ('817', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 09:55:37', '2020-08-05 09:55:37');
INSERT INTO `lied_admin_operation_log` VALUES ('818', '1', 'admin/product/category/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 09:55:40', '2020-08-05 09:55:40');
INSERT INTO `lied_admin_operation_log` VALUES ('819', '1', 'admin/product/category/1', 'PUT', '127.0.0.1', '{\"pid\":\"0\",\"name\":\"\\u70ed\\u95e8\\u63a8\\u8350\",\"sort\":\"99\",\"is_rec\":\"on\",\"_token\":\"MNaHvHuFpySOSjFVjzZxbOPESWAJQGZm3XYYytWg\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/product\\/category\"}', '2020-08-05 09:55:43', '2020-08-05 09:55:43');
INSERT INTO `lied_admin_operation_log` VALUES ('820', '1', 'admin/product/category/1/edit', 'GET', '127.0.0.1', '[]', '2020-08-05 09:55:43', '2020-08-05 09:55:43');
INSERT INTO `lied_admin_operation_log` VALUES ('821', '1', 'admin/product/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 09:55:45', '2020-08-05 09:55:45');
INSERT INTO `lied_admin_operation_log` VALUES ('822', '1', 'admin/product/category/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 09:59:14', '2020-08-05 09:59:14');
INSERT INTO `lied_admin_operation_log` VALUES ('823', '1', 'admin/product/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 09:59:16', '2020-08-05 09:59:16');
INSERT INTO `lied_admin_operation_log` VALUES ('824', '1', 'admin/product/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 09:59:16', '2020-08-05 09:59:16');
INSERT INTO `lied_admin_operation_log` VALUES ('825', '1', 'admin/product/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 09:59:18', '2020-08-05 09:59:18');
INSERT INTO `lied_admin_operation_log` VALUES ('826', '1', 'admin/product/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 09:59:19', '2020-08-05 09:59:19');
INSERT INTO `lied_admin_operation_log` VALUES ('827', '1', 'admin/product/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 09:59:30', '2020-08-05 09:59:30');
INSERT INTO `lied_admin_operation_log` VALUES ('828', '1', 'admin/product/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 09:59:31', '2020-08-05 09:59:31');
INSERT INTO `lied_admin_operation_log` VALUES ('829', '1', 'admin/product/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 09:59:33', '2020-08-05 09:59:33');
INSERT INTO `lied_admin_operation_log` VALUES ('830', '1', 'admin/product/category/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 09:59:35', '2020-08-05 09:59:35');
INSERT INTO `lied_admin_operation_log` VALUES ('831', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 15:30:12', '2020-08-05 15:30:12');
INSERT INTO `lied_admin_operation_log` VALUES ('832', '1', 'admin/product/category/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 15:30:25', '2020-08-05 15:30:25');
INSERT INTO `lied_admin_operation_log` VALUES ('833', '1', 'admin/product/category/1', 'PUT', '127.0.0.1', '{\"pid\":\"0\",\"name\":\"\\u624b\\u673a\\u6570\\u7801\",\"sort\":\"99\",\"is_rec\":\"off\",\"_token\":\"DHDQxl7NgLF1x17zxGkP0Z07iIwzrNriY7mwrLRV\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/product\\/category\"}', '2020-08-05 15:31:55', '2020-08-05 15:31:55');
INSERT INTO `lied_admin_operation_log` VALUES ('834', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 15:31:55', '2020-08-05 15:31:55');
INSERT INTO `lied_admin_operation_log` VALUES ('835', '1', 'admin/product/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 15:31:57', '2020-08-05 15:31:57');
INSERT INTO `lied_admin_operation_log` VALUES ('836', '1', 'admin/product/category', 'POST', '127.0.0.1', '{\"pid\":\"0\",\"name\":\"\\u70ed\\u95e8\\u54c1\\u724c\",\"sort\":\"99\",\"is_rec\":\"off\",\"_token\":\"DHDQxl7NgLF1x17zxGkP0Z07iIwzrNriY7mwrLRV\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/product\\/category\"}', '2020-08-05 15:32:19', '2020-08-05 15:32:19');
INSERT INTO `lied_admin_operation_log` VALUES ('837', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 15:32:19', '2020-08-05 15:32:19');
INSERT INTO `lied_admin_operation_log` VALUES ('838', '1', 'admin/product/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 15:32:23', '2020-08-05 15:32:23');
INSERT INTO `lied_admin_operation_log` VALUES ('839', '1', 'admin/product/category', 'POST', '127.0.0.1', '{\"pid\":\"0\",\"name\":\"apple\",\"sort\":\"99\",\"is_rec\":\"off\",\"_token\":\"DHDQxl7NgLF1x17zxGkP0Z07iIwzrNriY7mwrLRV\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/product\\/category\"}', '2020-08-05 15:32:29', '2020-08-05 15:32:29');
INSERT INTO `lied_admin_operation_log` VALUES ('840', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 15:32:29', '2020-08-05 15:32:29');
INSERT INTO `lied_admin_operation_log` VALUES ('841', '1', 'admin/product/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 15:32:30', '2020-08-05 15:32:30');
INSERT INTO `lied_admin_operation_log` VALUES ('842', '1', 'admin/product/category', 'POST', '127.0.0.1', '{\"pid\":\"0\",\"name\":\"\\u534e\\u4e3a\",\"sort\":\"99\",\"is_rec\":\"off\",\"_token\":\"DHDQxl7NgLF1x17zxGkP0Z07iIwzrNriY7mwrLRV\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/product\\/category\"}', '2020-08-05 15:32:39', '2020-08-05 15:32:39');
INSERT INTO `lied_admin_operation_log` VALUES ('843', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 15:32:39', '2020-08-05 15:32:39');
INSERT INTO `lied_admin_operation_log` VALUES ('844', '1', 'admin/product/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 15:32:40', '2020-08-05 15:32:40');
INSERT INTO `lied_admin_operation_log` VALUES ('845', '1', 'admin/product/category', 'POST', '127.0.0.1', '{\"pid\":\"0\",\"name\":\"\\u82f9\\u679c\",\"sort\":\"99\",\"is_rec\":\"off\",\"_token\":\"DHDQxl7NgLF1x17zxGkP0Z07iIwzrNriY7mwrLRV\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/product\\/category\"}', '2020-08-05 15:32:44', '2020-08-05 15:32:44');
INSERT INTO `lied_admin_operation_log` VALUES ('846', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 15:32:44', '2020-08-05 15:32:44');
INSERT INTO `lied_admin_operation_log` VALUES ('847', '1', 'admin/product/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 15:32:46', '2020-08-05 15:32:46');
INSERT INTO `lied_admin_operation_log` VALUES ('848', '1', 'admin/product/category', 'POST', '127.0.0.1', '{\"pid\":\"0\",\"name\":\"\\u624b\\u673a\\u901a\\u8baf\",\"sort\":\"99\",\"is_rec\":\"off\",\"_token\":\"DHDQxl7NgLF1x17zxGkP0Z07iIwzrNriY7mwrLRV\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/product\\/category\"}', '2020-08-05 15:32:56', '2020-08-05 15:32:56');
INSERT INTO `lied_admin_operation_log` VALUES ('849', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 15:32:57', '2020-08-05 15:32:57');
INSERT INTO `lied_admin_operation_log` VALUES ('850', '1', 'admin/product/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 15:32:58', '2020-08-05 15:32:58');
INSERT INTO `lied_admin_operation_log` VALUES ('851', '1', 'admin/product/category', 'POST', '127.0.0.1', '{\"pid\":\"0\",\"name\":\"\\u8001\\u4eba\\u673a\",\"sort\":\"99\",\"is_rec\":\"off\",\"_token\":\"DHDQxl7NgLF1x17zxGkP0Z07iIwzrNriY7mwrLRV\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/product\\/category\"}', '2020-08-05 15:33:08', '2020-08-05 15:33:08');
INSERT INTO `lied_admin_operation_log` VALUES ('852', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 15:33:08', '2020-08-05 15:33:08');
INSERT INTO `lied_admin_operation_log` VALUES ('853', '1', 'admin/product/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 15:33:09', '2020-08-05 15:33:09');
INSERT INTO `lied_admin_operation_log` VALUES ('854', '1', 'admin/product/category', 'POST', '127.0.0.1', '{\"pid\":\"0\",\"name\":\"\\u5168\\u9762\\u5c4f\\u624b\\u673a\",\"sort\":\"99\",\"is_rec\":\"off\",\"_token\":\"DHDQxl7NgLF1x17zxGkP0Z07iIwzrNriY7mwrLRV\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/product\\/category\"}', '2020-08-05 15:33:28', '2020-08-05 15:33:28');
INSERT INTO `lied_admin_operation_log` VALUES ('855', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 15:33:28', '2020-08-05 15:33:28');
INSERT INTO `lied_admin_operation_log` VALUES ('856', '1', 'admin/product/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 15:33:36', '2020-08-05 15:33:36');
INSERT INTO `lied_admin_operation_log` VALUES ('857', '1', 'admin/product/category', 'POST', '127.0.0.1', '{\"pid\":\"0\",\"name\":\"\\u6e38\\u620f\\u624b\\u673a\",\"sort\":\"99\",\"is_rec\":\"off\",\"_token\":\"DHDQxl7NgLF1x17zxGkP0Z07iIwzrNriY7mwrLRV\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/product\\/category\"}', '2020-08-05 15:33:42', '2020-08-05 15:33:42');
INSERT INTO `lied_admin_operation_log` VALUES ('858', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 15:33:42', '2020-08-05 15:33:42');
INSERT INTO `lied_admin_operation_log` VALUES ('859', '1', 'admin/product/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 15:33:42', '2020-08-05 15:33:42');
INSERT INTO `lied_admin_operation_log` VALUES ('860', '1', 'admin/product/category', 'POST', '127.0.0.1', '{\"pid\":\"0\",\"name\":\"\\u5168\\u9762\\u5c4f\\u624b\\u673a\",\"sort\":\"99\",\"is_rec\":\"off\",\"_token\":\"DHDQxl7NgLF1x17zxGkP0Z07iIwzrNriY7mwrLRV\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/product\\/category\"}', '2020-08-05 15:33:49', '2020-08-05 15:33:49');
INSERT INTO `lied_admin_operation_log` VALUES ('861', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 15:33:49', '2020-08-05 15:33:49');
INSERT INTO `lied_admin_operation_log` VALUES ('862', '1', 'admin/product/category', 'POST', '127.0.0.1', '{\"_token\":\"DHDQxl7NgLF1x17zxGkP0Z07iIwzrNriY7mwrLRV\",\"_order\":\"[{\\\"id\\\":1,\\\"children\\\":[{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5}]},{\\\"id\\\":6,\\\"children\\\":[{\\\"id\\\":7},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":10}]}]}]\"}', '2020-08-05 15:34:13', '2020-08-05 15:34:13');
INSERT INTO `lied_admin_operation_log` VALUES ('863', '1', 'admin/product/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 15:34:13', '2020-08-05 15:34:13');
INSERT INTO `lied_admin_operation_log` VALUES ('864', '1', 'admin/product/category/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 15:34:16', '2020-08-05 15:34:16');
INSERT INTO `lied_admin_operation_log` VALUES ('865', '1', 'admin/product/category/5', 'PUT', '127.0.0.1', '{\"pid\":\"2\",\"name\":\"vivo\",\"sort\":\"5\",\"is_rec\":\"off\",\"_token\":\"DHDQxl7NgLF1x17zxGkP0Z07iIwzrNriY7mwrLRV\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/product\\/category\"}', '2020-08-05 15:34:21', '2020-08-05 15:34:21');
INSERT INTO `lied_admin_operation_log` VALUES ('866', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 15:34:21', '2020-08-05 15:34:21');
INSERT INTO `lied_admin_operation_log` VALUES ('867', '1', 'admin/product/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 15:34:29', '2020-08-05 15:34:29');
INSERT INTO `lied_admin_operation_log` VALUES ('868', '1', 'admin/product/category', 'POST', '127.0.0.1', '{\"pid\":\"0\",\"name\":\"\\u7535\\u8111\\u529e\\u516c\",\"sort\":\"99\",\"is_rec\":\"off\",\"_token\":\"DHDQxl7NgLF1x17zxGkP0Z07iIwzrNriY7mwrLRV\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/product\\/category\"}', '2020-08-05 15:34:46', '2020-08-05 15:34:46');
INSERT INTO `lied_admin_operation_log` VALUES ('869', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 15:34:46', '2020-08-05 15:34:46');
INSERT INTO `lied_admin_operation_log` VALUES ('870', '1', 'admin/product/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 15:34:55', '2020-08-05 15:34:55');
INSERT INTO `lied_admin_operation_log` VALUES ('871', '1', 'admin/product/category', 'POST', '127.0.0.1', '{\"pid\":\"0\",\"name\":\"\\u70ed\\u5356\\u5206\\u7c7b\",\"sort\":\"99\",\"is_rec\":\"off\",\"_token\":\"DHDQxl7NgLF1x17zxGkP0Z07iIwzrNriY7mwrLRV\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/product\\/category\"}', '2020-08-05 15:35:16', '2020-08-05 15:35:16');
INSERT INTO `lied_admin_operation_log` VALUES ('872', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 15:35:16', '2020-08-05 15:35:16');
INSERT INTO `lied_admin_operation_log` VALUES ('873', '1', 'admin/product/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 15:35:18', '2020-08-05 15:35:18');
INSERT INTO `lied_admin_operation_log` VALUES ('874', '1', 'admin/product/category', 'POST', '127.0.0.1', '{\"pid\":\"0\",\"name\":\"\\u8f7b\\u8584\\u672c\",\"sort\":\"99\",\"is_rec\":\"off\",\"_token\":\"DHDQxl7NgLF1x17zxGkP0Z07iIwzrNriY7mwrLRV\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/product\\/category\"}', '2020-08-05 15:35:31', '2020-08-05 15:35:31');
INSERT INTO `lied_admin_operation_log` VALUES ('875', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 15:35:31', '2020-08-05 15:35:31');
INSERT INTO `lied_admin_operation_log` VALUES ('876', '1', 'admin/product/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 15:35:32', '2020-08-05 15:35:32');
INSERT INTO `lied_admin_operation_log` VALUES ('877', '1', 'admin/product/category', 'POST', '127.0.0.1', '{\"pid\":\"0\",\"name\":\"\\u6e38\\u620f\\u672c\",\"sort\":\"99\",\"is_rec\":\"off\",\"_token\":\"DHDQxl7NgLF1x17zxGkP0Z07iIwzrNriY7mwrLRV\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/product\\/category\"}', '2020-08-05 15:35:37', '2020-08-05 15:35:37');
INSERT INTO `lied_admin_operation_log` VALUES ('878', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 15:35:37', '2020-08-05 15:35:37');
INSERT INTO `lied_admin_operation_log` VALUES ('879', '1', 'admin/product/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 15:35:38', '2020-08-05 15:35:38');
INSERT INTO `lied_admin_operation_log` VALUES ('880', '1', 'admin/product/category', 'POST', '127.0.0.1', '{\"pid\":\"0\",\"name\":\"\\u7ec4\\u88c5\\u7535\\u8111\",\"sort\":\"99\",\"is_rec\":\"off\",\"_token\":\"DHDQxl7NgLF1x17zxGkP0Z07iIwzrNriY7mwrLRV\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/product\\/category\"}', '2020-08-05 15:35:49', '2020-08-05 15:35:49');
INSERT INTO `lied_admin_operation_log` VALUES ('881', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 15:35:49', '2020-08-05 15:35:49');
INSERT INTO `lied_admin_operation_log` VALUES ('882', '1', 'admin/product/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 15:35:53', '2020-08-05 15:35:53');
INSERT INTO `lied_admin_operation_log` VALUES ('883', '1', 'admin/product/category', 'POST', '127.0.0.1', '{\"pid\":\"0\",\"name\":\"\\u7535\\u8111\\u6574\\u673a\",\"sort\":\"99\",\"is_rec\":\"off\",\"_token\":\"DHDQxl7NgLF1x17zxGkP0Z07iIwzrNriY7mwrLRV\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/product\\/category\"}', '2020-08-05 15:36:10', '2020-08-05 15:36:10');
INSERT INTO `lied_admin_operation_log` VALUES ('884', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 15:36:10', '2020-08-05 15:36:10');
INSERT INTO `lied_admin_operation_log` VALUES ('885', '1', 'admin/product/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 15:36:11', '2020-08-05 15:36:11');
INSERT INTO `lied_admin_operation_log` VALUES ('886', '1', 'admin/product/category', 'POST', '127.0.0.1', '{\"pid\":\"0\",\"name\":\"\\u4e00\\u4f53\\u673a\",\"sort\":\"99\",\"is_rec\":\"off\",\"_token\":\"DHDQxl7NgLF1x17zxGkP0Z07iIwzrNriY7mwrLRV\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/product\\/category\"}', '2020-08-05 15:36:19', '2020-08-05 15:36:19');
INSERT INTO `lied_admin_operation_log` VALUES ('887', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 15:36:19', '2020-08-05 15:36:19');
INSERT INTO `lied_admin_operation_log` VALUES ('888', '1', 'admin/product/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 15:36:21', '2020-08-05 15:36:21');
INSERT INTO `lied_admin_operation_log` VALUES ('889', '1', 'admin/product/category', 'POST', '127.0.0.1', '{\"pid\":\"0\",\"name\":\"\\u5e73\\u677f\\u7535\\u8111\",\"sort\":\"99\",\"is_rec\":\"off\",\"_token\":\"DHDQxl7NgLF1x17zxGkP0Z07iIwzrNriY7mwrLRV\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/product\\/category\"}', '2020-08-05 15:36:31', '2020-08-05 15:36:31');
INSERT INTO `lied_admin_operation_log` VALUES ('890', '1', 'admin/product/category/create', 'GET', '127.0.0.1', '[]', '2020-08-05 15:36:31', '2020-08-05 15:36:31');
INSERT INTO `lied_admin_operation_log` VALUES ('891', '1', 'admin/product/category', 'POST', '127.0.0.1', '{\"pid\":\"0\",\"name\":\"\\u7b14\\u8bb0\\u672c\",\"sort\":\"99\",\"is_rec\":\"off\",\"_token\":\"DHDQxl7NgLF1x17zxGkP0Z07iIwzrNriY7mwrLRV\",\"after-save\":\"2\"}', '2020-08-05 15:36:43', '2020-08-05 15:36:43');
INSERT INTO `lied_admin_operation_log` VALUES ('892', '1', 'admin/product/category/create', 'GET', '127.0.0.1', '[]', '2020-08-05 15:36:43', '2020-08-05 15:36:43');
INSERT INTO `lied_admin_operation_log` VALUES ('893', '1', 'admin/product/category', 'POST', '127.0.0.1', '{\"pid\":\"0\",\"name\":\"\\u53f0\\u5f0f\\u673a\",\"sort\":\"99\",\"is_rec\":\"off\",\"_token\":\"DHDQxl7NgLF1x17zxGkP0Z07iIwzrNriY7mwrLRV\",\"after-save\":\"2\"}', '2020-08-05 15:36:49', '2020-08-05 15:36:49');
INSERT INTO `lied_admin_operation_log` VALUES ('894', '1', 'admin/product/category/create', 'GET', '127.0.0.1', '[]', '2020-08-05 15:36:49', '2020-08-05 15:36:49');
INSERT INTO `lied_admin_operation_log` VALUES ('895', '1', 'admin/product/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 15:36:51', '2020-08-05 15:36:51');
INSERT INTO `lied_admin_operation_log` VALUES ('896', '1', 'admin/product/category', 'POST', '127.0.0.1', '{\"_token\":\"DHDQxl7NgLF1x17zxGkP0Z07iIwzrNriY7mwrLRV\",\"_order\":\"[{\\\"id\\\":1,\\\"children\\\":[{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5}]},{\\\"id\\\":6,\\\"children\\\":[{\\\"id\\\":7},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":10}]}]},{\\\"id\\\":11,\\\"children\\\":[{\\\"id\\\":12,\\\"children\\\":[{\\\"id\\\":13},{\\\"id\\\":14},{\\\"id\\\":15}]},{\\\"id\\\":16,\\\"children\\\":[{\\\"id\\\":17},{\\\"id\\\":18},{\\\"id\\\":19},{\\\"id\\\":20}]}]}]\"}', '2020-08-05 15:37:07', '2020-08-05 15:37:07');
INSERT INTO `lied_admin_operation_log` VALUES ('897', '1', 'admin/product/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 15:37:07', '2020-08-05 15:37:07');
INSERT INTO `lied_admin_operation_log` VALUES ('898', '1', 'admin/product/category/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 16:03:00', '2020-08-05 16:03:00');
INSERT INTO `lied_admin_operation_log` VALUES ('899', '1', 'admin/product/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 16:03:02', '2020-08-05 16:03:02');
INSERT INTO `lied_admin_operation_log` VALUES ('900', '1', 'admin/product/category/12/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 16:03:07', '2020-08-05 16:03:07');
INSERT INTO `lied_admin_operation_log` VALUES ('901', '1', 'admin/product/category/12', 'PUT', '127.0.0.1', '{\"pid\":\"11\",\"name\":\"\\u70ed\\u5356\\u5206\\u7c7b\",\"sort\":\"12\",\"is_rec\":\"on\",\"_token\":\"DHDQxl7NgLF1x17zxGkP0Z07iIwzrNriY7mwrLRV\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/product\\/category\"}', '2020-08-05 16:03:09', '2020-08-05 16:03:09');
INSERT INTO `lied_admin_operation_log` VALUES ('902', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 16:03:10', '2020-08-05 16:03:10');
INSERT INTO `lied_admin_operation_log` VALUES ('903', '1', 'admin/product/category/12/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 16:03:29', '2020-08-05 16:03:29');
INSERT INTO `lied_admin_operation_log` VALUES ('904', '1', 'admin/product/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 16:03:31', '2020-08-05 16:03:31');
INSERT INTO `lied_admin_operation_log` VALUES ('905', '1', 'admin/product/category/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 16:03:37', '2020-08-05 16:03:37');
INSERT INTO `lied_admin_operation_log` VALUES ('906', '1', 'admin/product/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 16:03:39', '2020-08-05 16:03:39');
INSERT INTO `lied_admin_operation_log` VALUES ('907', '1', 'admin/product/category/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 16:03:41', '2020-08-05 16:03:41');
INSERT INTO `lied_admin_operation_log` VALUES ('908', '1', 'admin/product/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 16:03:43', '2020-08-05 16:03:43');
INSERT INTO `lied_admin_operation_log` VALUES ('909', '1', 'admin/product/category/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 16:03:47', '2020-08-05 16:03:47');
INSERT INTO `lied_admin_operation_log` VALUES ('910', '1', 'admin/product/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 16:03:49', '2020-08-05 16:03:49');
INSERT INTO `lied_admin_operation_log` VALUES ('911', '1', 'admin/product/category/12/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 16:03:52', '2020-08-05 16:03:52');
INSERT INTO `lied_admin_operation_log` VALUES ('912', '1', 'admin/product/category', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 16:03:53', '2020-08-05 16:03:53');
INSERT INTO `lied_admin_operation_log` VALUES ('913', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 16:07:58', '2020-08-05 16:07:58');
INSERT INTO `lied_admin_operation_log` VALUES ('914', '1', 'admin/product/category/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 16:08:07', '2020-08-05 16:08:07');
INSERT INTO `lied_admin_operation_log` VALUES ('915', '1', 'admin/product/category/6', 'PUT', '127.0.0.1', '{\"pid\":\"1\",\"name\":\"\\u624b\\u673a\\u901a\\u8baf\",\"sort\":\"6\",\"is_rec\":\"on\",\"_token\":\"DHDQxl7NgLF1x17zxGkP0Z07iIwzrNriY7mwrLRV\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/product\\/category\"}', '2020-08-05 16:08:10', '2020-08-05 16:08:10');
INSERT INTO `lied_admin_operation_log` VALUES ('916', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 16:08:11', '2020-08-05 16:08:11');
INSERT INTO `lied_admin_operation_log` VALUES ('917', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 16:08:36', '2020-08-05 16:08:36');
INSERT INTO `lied_admin_operation_log` VALUES ('918', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 16:09:03', '2020-08-05 16:09:03');
INSERT INTO `lied_admin_operation_log` VALUES ('919', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 16:09:06', '2020-08-05 16:09:06');
INSERT INTO `lied_admin_operation_log` VALUES ('920', '1', 'admin/product', 'GET', '127.0.0.1', '[]', '2020-08-05 16:09:21', '2020-08-05 16:09:21');
INSERT INTO `lied_admin_operation_log` VALUES ('921', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 16:09:49', '2020-08-05 16:09:49');
INSERT INTO `lied_admin_operation_log` VALUES ('922', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 16:10:04', '2020-08-05 16:10:04');
INSERT INTO `lied_admin_operation_log` VALUES ('923', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 16:10:11', '2020-08-05 16:10:11');
INSERT INTO `lied_admin_operation_log` VALUES ('924', '1', 'admin/product', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 16:10:31', '2020-08-05 16:10:31');
INSERT INTO `lied_admin_operation_log` VALUES ('925', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 16:10:51', '2020-08-05 16:10:51');
INSERT INTO `lied_admin_operation_log` VALUES ('926', '1', 'admin/product/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 16:11:00', '2020-08-05 16:11:00');
INSERT INTO `lied_admin_operation_log` VALUES ('927', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 16:11:20', '2020-08-05 16:11:20');
INSERT INTO `lied_admin_operation_log` VALUES ('928', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 16:11:29', '2020-08-05 16:11:29');
INSERT INTO `lied_admin_operation_log` VALUES ('929', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 16:11:41', '2020-08-05 16:11:41');
INSERT INTO `lied_admin_operation_log` VALUES ('930', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 16:11:58', '2020-08-05 16:11:58');
INSERT INTO `lied_admin_operation_log` VALUES ('931', '1', 'admin/product/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 17:16:33', '2020-08-05 17:16:33');
INSERT INTO `lied_admin_operation_log` VALUES ('932', '1', 'admin/product/category', 'POST', '127.0.0.1', '{\"pid\":\"0\",\"name\":\"\\u7537\\u88c5\",\"sort\":\"99\",\"is_rec\":\"off\",\"_token\":\"DHDQxl7NgLF1x17zxGkP0Z07iIwzrNriY7mwrLRV\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/product\\/category\"}', '2020-08-05 17:16:39', '2020-08-05 17:16:39');
INSERT INTO `lied_admin_operation_log` VALUES ('933', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 17:16:39', '2020-08-05 17:16:39');
INSERT INTO `lied_admin_operation_log` VALUES ('934', '1', 'admin/product/category/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 17:17:35', '2020-08-05 17:17:35');
INSERT INTO `lied_admin_operation_log` VALUES ('935', '1', 'admin/product/category', 'POST', '127.0.0.1', '{\"pid\":\"21\",\"name\":\"\\u4e0a\\u8863\",\"sort\":\"99\",\"is_rec\":\"off\",\"_token\":\"DHDQxl7NgLF1x17zxGkP0Z07iIwzrNriY7mwrLRV\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/product\\/category\"}', '2020-08-05 17:17:42', '2020-08-05 17:17:42');
INSERT INTO `lied_admin_operation_log` VALUES ('936', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 17:17:42', '2020-08-05 17:17:42');
INSERT INTO `lied_admin_operation_log` VALUES ('937', '1', 'admin/product/category/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 17:35:19', '2020-08-05 17:35:19');
INSERT INTO `lied_admin_operation_log` VALUES ('938', '1', 'admin/product/category/6', 'PUT', '127.0.0.1', '{\"pid\":\"1\",\"name\":\"\\u624b\\u673a\\u901a\\u8baf\",\"sort\":\"6\",\"is_rec\":\"off\",\"_token\":\"DHDQxl7NgLF1x17zxGkP0Z07iIwzrNriY7mwrLRV\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/product\\/category\"}', '2020-08-05 17:35:21', '2020-08-05 17:35:21');
INSERT INTO `lied_admin_operation_log` VALUES ('939', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 17:35:21', '2020-08-05 17:35:21');
INSERT INTO `lied_admin_operation_log` VALUES ('940', '1', 'admin/product/category/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-05 17:35:25', '2020-08-05 17:35:25');
INSERT INTO `lied_admin_operation_log` VALUES ('941', '1', 'admin/product/category/2', 'PUT', '127.0.0.1', '{\"pid\":\"1\",\"name\":\"\\u70ed\\u95e8\\u54c1\\u724c\",\"sort\":\"2\",\"is_rec\":\"on\",\"_token\":\"DHDQxl7NgLF1x17zxGkP0Z07iIwzrNriY7mwrLRV\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/product\\/category\"}', '2020-08-05 17:35:27', '2020-08-05 17:35:27');
INSERT INTO `lied_admin_operation_log` VALUES ('942', '1', 'admin/product/category', 'GET', '127.0.0.1', '[]', '2020-08-05 17:35:27', '2020-08-05 17:35:27');
INSERT INTO `lied_admin_operation_log` VALUES ('943', '1', 'admin', 'GET', '127.0.0.1', '[]', '2020-08-18 16:16:04', '2020-08-18 16:16:04');
INSERT INTO `lied_admin_operation_log` VALUES ('944', '1', 'admin/adv/position', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 16:16:10', '2020-08-18 16:16:10');
INSERT INTO `lied_admin_operation_log` VALUES ('945', '1', 'admin/adv/position', 'GET', '127.0.0.1', '[]', '2020-08-18 16:33:53', '2020-08-18 16:33:53');
INSERT INTO `lied_admin_operation_log` VALUES ('946', '1', 'admin/adv', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 17:08:39', '2020-08-18 17:08:39');
INSERT INTO `lied_admin_operation_log` VALUES ('947', '1', 'admin/adv/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 17:08:47', '2020-08-18 17:08:47');
INSERT INTO `lied_admin_operation_log` VALUES ('948', '1', 'admin/api/adv/position', 'GET', '127.0.0.1', '{\"q\":null}', '2020-08-18 17:09:00', '2020-08-18 17:09:00');
INSERT INTO `lied_admin_operation_log` VALUES ('949', '1', 'admin/upload/image', 'POST', '127.0.0.1', '{\"name\":\"o_1eg0d8ldp1qvm1ti4g701f7f10jj8.png\",\"_token\":\"0QErCISjgan8EZfxXQ7BkvTIhIdDc8U3HYvI3DQb\",\"upload_url\":\"images\\/adv_thumb\\/20200818\",\"is_lock\":\"0\"}', '2020-08-18 17:09:10', '2020-08-18 17:09:10');
INSERT INTO `lied_admin_operation_log` VALUES ('950', '1', 'admin/adv/4', 'PUT', '127.0.0.1', '{\"name\":\"\\u670d\\u9970\",\"url\":\"https:\\/\\/test.xiehome.com\\/index.php\\/m.php\\/loan\",\"media_id\":\"22\",\"position_id\":\"1\",\"desc\":null,\"is_show\":\"on\",\"sort\":\"99\",\"advopen\":{\"2\":{\"region_open_id\":\"1\",\"start_time\":\"2020-07-31 00:00:00\",\"end_time\":\"2020-08-31 00:00:00\",\"id\":\"2\",\"_remove_\":\"0\"}},\"_token\":\"0QErCISjgan8EZfxXQ7BkvTIhIdDc8U3HYvI3DQb\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/www.lied.com\\/admin\\/adv\"}', '2020-08-18 17:09:15', '2020-08-18 17:09:15');
INSERT INTO `lied_admin_operation_log` VALUES ('951', '1', 'admin/adv', 'GET', '127.0.0.1', '[]', '2020-08-18 17:09:16', '2020-08-18 17:09:16');
INSERT INTO `lied_admin_operation_log` VALUES ('952', '1', 'admin/adv/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 17:19:28', '2020-08-18 17:19:28');
INSERT INTO `lied_admin_operation_log` VALUES ('953', '1', 'admin/adv', 'GET', '127.0.0.1', '[]', '2020-08-18 17:19:39', '2020-08-18 17:19:39');
INSERT INTO `lied_admin_operation_log` VALUES ('954', '1', 'admin/adv/position', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-08-18 18:00:14', '2020-08-18 18:00:14');

-- ----------------------------
-- Table structure for `lied_admin_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `lied_admin_permissions`;
CREATE TABLE `lied_admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `http_method` varchar(255) DEFAULT NULL,
  `http_path` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lied_admin_permissions_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lied_admin_permissions
-- ----------------------------
INSERT INTO `lied_admin_permissions` VALUES ('1', 'All permission', '*', '', '*', null, null);
INSERT INTO `lied_admin_permissions` VALUES ('2', 'Dashboard', 'dashboard', 'GET', '/', null, null);
INSERT INTO `lied_admin_permissions` VALUES ('3', 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', null, null);
INSERT INTO `lied_admin_permissions` VALUES ('4', 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', null, null);
INSERT INTO `lied_admin_permissions` VALUES ('5', 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', null, null);
INSERT INTO `lied_admin_permissions` VALUES ('6', 'Logs', 'ext.log-viewer', null, '/logs*', '2019-10-09 11:41:08', '2019-10-09 11:41:08');
INSERT INTO `lied_admin_permissions` VALUES ('7', 'Tab-dashboard', 'tabs.dashboard', '', '/dashboard', '2019-12-10 15:27:18', '2019-12-10 15:27:18');
INSERT INTO `lied_admin_permissions` VALUES ('8', 'Admin helpers', 'ext.helpers', '', '/helpers/*', '2020-04-17 14:14:19', '2020-04-17 14:14:19');
INSERT INTO `lied_admin_permissions` VALUES ('9', 'Redis Manager', 'ext.redis-manager', '', '/redis*', '2020-06-03 08:49:43', '2020-06-03 08:49:43');

-- ----------------------------
-- Table structure for `lied_admin_roles`
-- ----------------------------
DROP TABLE IF EXISTS `lied_admin_roles`;
CREATE TABLE `lied_admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lied_admin_roles_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lied_admin_roles
-- ----------------------------
INSERT INTO `lied_admin_roles` VALUES ('1', 'Administrator', 'administrator', '2018-12-19 09:35:18', '2018-12-19 09:35:18');

-- ----------------------------
-- Table structure for `lied_admin_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `lied_admin_role_menu`;
CREATE TABLE `lied_admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `lied_admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lied_admin_role_menu
-- ----------------------------
INSERT INTO `lied_admin_role_menu` VALUES ('1', '2', null, null);
INSERT INTO `lied_admin_role_menu` VALUES ('1', '35', null, null);
INSERT INTO `lied_admin_role_menu` VALUES ('1', '36', null, null);

-- ----------------------------
-- Table structure for `lied_admin_role_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `lied_admin_role_permissions`;
CREATE TABLE `lied_admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `lied_admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lied_admin_role_permissions
-- ----------------------------
INSERT INTO `lied_admin_role_permissions` VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for `lied_admin_role_users`
-- ----------------------------
DROP TABLE IF EXISTS `lied_admin_role_users`;
CREATE TABLE `lied_admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `lied_admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lied_admin_role_users
-- ----------------------------
INSERT INTO `lied_admin_role_users` VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for `lied_admin_users`
-- ----------------------------
DROP TABLE IF EXISTS `lied_admin_users`;
CREATE TABLE `lied_admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) NOT NULL,
  `password` varchar(60) NOT NULL,
  `name` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lied_admin_users_username_unique` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lied_admin_users
-- ----------------------------
INSERT INTO `lied_admin_users` VALUES ('1', 'admin', '$2y$10$7QvNbNNMgfrh8UmBcnhfdOJExSbF6jayvpFmBxf1JYWX/snjwc5Qi', 'Administrator', null, 'vhsnCXo1NJJGcQ5gERzZFHVJZ3lo3mhih2yqMBMydYA1fIWeJTgAgv07ZqCF', '2018-12-19 09:35:18', '2018-12-19 09:35:18');

-- ----------------------------
-- Table structure for `lied_admin_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `lied_admin_user_permissions`;
CREATE TABLE `lied_admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `lied_admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lied_admin_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `lied_adv`
-- ----------------------------
DROP TABLE IF EXISTS `lied_adv`;
CREATE TABLE `lied_adv` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL COMMENT '名称',
  `desc` varchar(64) DEFAULT NULL COMMENT '描述',
  `url` varchar(255) DEFAULT NULL COMMENT '广告链接',
  `media_id` int(10) NOT NULL COMMENT '广告图片',
  `position_id` int(10) unsigned NOT NULL COMMENT '广告位置ID',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否显示 1-显示 0-不显示',
  `sort` int(4) DEFAULT NULL COMMENT '排序',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `position_id` (`position_id`),
  CONSTRAINT `adv-position_id` FOREIGN KEY (`position_id`) REFERENCES `lied_adv_position` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='广告展示表';

-- ----------------------------
-- Records of lied_adv
-- ----------------------------
INSERT INTO `lied_adv` VALUES ('3', '商城平台接口', null, 'https://test.xiehome.com/index.php/m.php/loan', '3', '1', '1', '99', '2020-07-31 14:57:41', '2020-07-31 14:57:41', null);
INSERT INTO `lied_adv` VALUES ('4', '服饰', null, 'https://test.xiehome.com/index.php/m.php/loan', '22', '1', '1', '99', '2020-07-31 17:49:44', '2020-08-18 17:09:16', null);

-- ----------------------------
-- Table structure for `lied_adv_open`
-- ----------------------------
DROP TABLE IF EXISTS `lied_adv_open`;
CREATE TABLE `lied_adv_open` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `adv_id` int(10) unsigned NOT NULL COMMENT '广告id',
  `region_open_id` int(10) unsigned NOT NULL COMMENT '城市开通id',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='广告开通设置';

-- ----------------------------
-- Records of lied_adv_open
-- ----------------------------
INSERT INTO `lied_adv_open` VALUES ('1', '3', '1', '2020-07-31 00:00:00', '2020-08-31 12:00:00', '2020-07-31 14:57:41', '2020-08-04 16:20:56', null);
INSERT INTO `lied_adv_open` VALUES ('2', '4', '1', '2020-07-31 00:00:00', '2020-08-31 00:00:00', '2020-07-31 17:49:44', '2020-08-18 17:09:16', null);

-- ----------------------------
-- Table structure for `lied_adv_position`
-- ----------------------------
DROP TABLE IF EXISTS `lied_adv_position`;
CREATE TABLE `lied_adv_position` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL COMMENT '名称',
  `ename` varchar(32) NOT NULL COMMENT '英文代号',
  `width` int(4) NOT NULL COMMENT '宽度',
  `height` int(4) NOT NULL COMMENT '高度',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否显示 1-显示 0-不显示',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='广告位置表';

-- ----------------------------
-- Records of lied_adv_position
-- ----------------------------
INSERT INTO `lied_adv_position` VALUES ('1', '首页轮播', 'index', '750', '640', '1', '2019-02-19 09:32:17', '2019-02-19 09:32:17', null);
INSERT INTO `lied_adv_position` VALUES ('2', '首页分类', 'index_category', '120', '120', '1', '2020-07-31 17:44:29', '2020-07-31 17:55:07', null);
INSERT INTO `lied_adv_position` VALUES ('3', '首页插槽', 'index_plug', '0', '200', '1', '2020-07-31 17:53:06', '2020-07-31 17:57:09', null);
INSERT INTO `lied_adv_position` VALUES ('4', '首页每日逛', 'index_daily', '120', '0', '1', '2020-07-31 17:56:46', '2020-07-31 17:56:46', null);

-- ----------------------------
-- Table structure for `lied_article`
-- ----------------------------
DROP TABLE IF EXISTS `lied_article`;
CREATE TABLE `lied_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章自增id',
  `category_id` int(10) unsigned NOT NULL COMMENT '分类id',
  `user_id` int(32) unsigned NOT NULL COMMENT '创建者id',
  `title` varchar(128) NOT NULL COMMENT '文章标题',
  `thumb` int(10) NOT NULL COMMENT '文章缩略图',
  `description` text COMMENT '简介',
  `content` text NOT NULL COMMENT '内容',
  `is_hot` tinyint(1) unsigned DEFAULT NULL COMMENT '热门文章',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `sort_order` int(4) unsigned DEFAULT NULL COMMENT '排序',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章表';

-- ----------------------------
-- Records of lied_article
-- ----------------------------

-- ----------------------------
-- Table structure for `lied_article_category`
-- ----------------------------
DROP TABLE IF EXISTS `lied_article_category`;
CREATE TABLE `lied_article_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `name` varchar(64) NOT NULL COMMENT '分类名称',
  `description` text COMMENT '分类描述',
  `pid` int(10) unsigned NOT NULL COMMENT '父级id',
  `sort_order` int(1) unsigned DEFAULT NULL COMMENT '排序',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章分类表';

-- ----------------------------
-- Records of lied_article_category
-- ----------------------------

-- ----------------------------
-- Table structure for `lied_brand`
-- ----------------------------
DROP TABLE IF EXISTS `lied_brand`;
CREATE TABLE `lied_brand` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL COMMENT '品牌名称',
  `category_id` int(10) unsigned DEFAULT '0' COMMENT '品牌分类id',
  `media_id` int(10) unsigned NOT NULL COMMENT '品牌logo',
  `description` text NOT NULL COMMENT '品牌描述',
  `site_url` varchar(255) NOT NULL COMMENT '品牌的网址',
  `sort` tinyint(4) unsigned NOT NULL COMMENT '排序',
  `is_audit` tinyint(1) NOT NULL,
  `is_show` tinyint(1) NOT NULL COMMENT '是否显示',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `brand-category_id` (`category_id`),
  KEY `brand-thumb` (`media_id`),
  CONSTRAINT `brand-category_id` FOREIGN KEY (`category_id`) REFERENCES `lied_brand_category` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `brand-thumb` FOREIGN KEY (`media_id`) REFERENCES `lied_media` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lied_brand
-- ----------------------------
INSERT INTO `lied_brand` VALUES ('2', 'lied', null, '8', 'aaaa', 'http://baidu.com', '99', '1', '1', '2020-08-03 10:40:05', '2020-08-03 10:40:05', null);

-- ----------------------------
-- Table structure for `lied_brand_category`
-- ----------------------------
DROP TABLE IF EXISTS `lied_brand_category`;
CREATE TABLE `lied_brand_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL,
  `name` varchar(64) NOT NULL COMMENT '名称',
  `sort_order` int(4) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lied_brand_category
-- ----------------------------

-- ----------------------------
-- Table structure for `lied_cart`
-- ----------------------------
DROP TABLE IF EXISTS `lied_cart`;
CREATE TABLE `lied_cart` (
  `id` int(10) NOT NULL,
  `user_id` int(10) unsigned NOT NULL COMMENT '用户id',
  `product_id` int(10) unsigned NOT NULL COMMENT '产品id',
  `attr_id` int(10) unsigned NOT NULL COMMENT '属性id',
  `brand_id` int(10) unsigned NOT NULL COMMENT '品牌id',
  `number` int(4) unsigned NOT NULL COMMENT '产品书数量',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cart-usre_id` (`user_id`),
  KEY `cart-product_id` (`product_id`),
  KEY `cart-brand_id` (`brand_id`),
  CONSTRAINT `cart-brand_id` FOREIGN KEY (`brand_id`) REFERENCES `lied_brand` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `cart-product_id` FOREIGN KEY (`product_id`) REFERENCES `lied_product` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `cart-user_id` FOREIGN KEY (`user_id`) REFERENCES `lied_users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车';

-- ----------------------------
-- Records of lied_cart
-- ----------------------------

-- ----------------------------
-- Table structure for `lied_coupons`
-- ----------------------------
DROP TABLE IF EXISTS `lied_coupons`;
CREATE TABLE `lied_coupons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL COMMENT '优惠券名称',
  `reveive_limit` int(4) unsigned NOT NULL COMMENT '限领取数量',
  `use_start_time` datetime NOT NULL COMMENT '使用开始时间',
  `use_end_time` datetime NOT NULL COMMENT '使用结束时间',
  `receive_start_time` datetime NOT NULL COMMENT '领取开始时间',
  `receive_end_time` datetime NOT NULL COMMENT '领取结束时间',
  `thumb` int(10) unsigned NOT NULL COMMENT '缩略图',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `is_online` tinyint(1) unsigned NOT NULL COMMENT '核销方式 1-线上 0-线下',
  `is_show` tinyint(1) unsigned DEFAULT '0' COMMENT '显示 1-是 0-否',
  `sort_order` int(4) unsigned DEFAULT '0' COMMENT '排序',
  `created_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='优惠券基本表';

-- ----------------------------
-- Records of lied_coupons
-- ----------------------------

-- ----------------------------
-- Table structure for `lied_coupons_batch`
-- ----------------------------
DROP TABLE IF EXISTS `lied_coupons_batch`;
CREATE TABLE `lied_coupons_batch` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL COMMENT '批次名称',
  `num` int(4) unsigned NOT NULL COMMENT '生成数量',
  `coupon_id` int(10) unsigned NOT NULL COMMENT '优惠券id',
  `coupon_limit_id` int(10) unsigned NOT NULL COMMENT '优惠券限领表id',
  `created_id` int(10) unsigned NOT NULL COMMENT '创建者id',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `coupons_batch-coupon_limit_id` (`coupon_limit_id`),
  KEY `coupons_batch-coupon_id` (`coupon_id`),
  CONSTRAINT `coupons_batch-coupon_id` FOREIGN KEY (`coupon_id`) REFERENCES `lied_coupons` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `coupons_batch-coupon_limit_id` FOREIGN KEY (`coupon_limit_id`) REFERENCES `lied_coupons_limit` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='优惠券线下券生成批次设置表';

-- ----------------------------
-- Records of lied_coupons_batch
-- ----------------------------

-- ----------------------------
-- Table structure for `lied_coupons_discount`
-- ----------------------------
DROP TABLE IF EXISTS `lied_coupons_discount`;
CREATE TABLE `lied_coupons_discount` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `coupon_id` int(10) unsigned NOT NULL COMMENT '优惠券id',
  `discount` int(8) unsigned NOT NULL COMMENT '折扣',
  `stock_number` int(8) unsigned NOT NULL DEFAULT '0' COMMENT '库存数量',
  `min_product_number` int(8) unsigned NOT NULL DEFAULT '0' COMMENT '最小购买产品数量',
  `max_discount_price` decimal(8,2) unsigned DEFAULT '0.00' COMMENT '最大优惠金额',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `coupons_discount-coupon_id` (`coupon_id`),
  CONSTRAINT `coupons_discount-coupon_id` FOREIGN KEY (`coupon_id`) REFERENCES `lied_coupons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='优惠券折扣表';

-- ----------------------------
-- Records of lied_coupons_discount
-- ----------------------------

-- ----------------------------
-- Table structure for `lied_coupons_limit`
-- ----------------------------
DROP TABLE IF EXISTS `lied_coupons_limit`;
CREATE TABLE `lied_coupons_limit` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `coupon_id` int(10) unsigned NOT NULL COMMENT '优惠券id',
  `brand_id` int(10) unsigned NOT NULL COMMENT '品牌id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT '产品id',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `coupons_limit-coupon_id` (`coupon_id`),
  CONSTRAINT `coupons_limit-coupon_id` FOREIGN KEY (`coupon_id`) REFERENCES `lied_coupons` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='优惠券限领表';

-- ----------------------------
-- Records of lied_coupons_limit
-- ----------------------------

-- ----------------------------
-- Table structure for `lied_coupons_offline`
-- ----------------------------
DROP TABLE IF EXISTS `lied_coupons_offline`;
CREATE TABLE `lied_coupons_offline` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `coupon_batch_id` int(10) unsigned NOT NULL COMMENT '优惠券线下券生成批次设置表id',
  `code` varchar(16) NOT NULL COMMENT '券码',
  `is_use` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否使用 1-使用 0-未使用',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `coupons_offline-coupon_batch_id` (`coupon_batch_id`),
  CONSTRAINT `coupons_offline-coupon_batch_id` FOREIGN KEY (`coupon_batch_id`) REFERENCES `lied_coupons_batch` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='优惠券线下券生成码记录表';

-- ----------------------------
-- Records of lied_coupons_offline
-- ----------------------------

-- ----------------------------
-- Table structure for `lied_coupons_price`
-- ----------------------------
DROP TABLE IF EXISTS `lied_coupons_price`;
CREATE TABLE `lied_coupons_price` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `coupon_id` int(10) unsigned NOT NULL COMMENT '优惠券id',
  `stock_number` int(8) unsigned NOT NULL DEFAULT '0' COMMENT '库存数量',
  `price` decimal(8,2) unsigned NOT NULL COMMENT '优惠金额',
  `min_consume_price` decimal(8,2) unsigned DEFAULT '0.00' COMMENT '最低消费金额',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `coupons_price-coupon_id` (`coupon_id`),
  CONSTRAINT `coupons_price-coupon_id` FOREIGN KEY (`coupon_id`) REFERENCES `lied_coupons` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='优惠券满减表';

-- ----------------------------
-- Records of lied_coupons_price
-- ----------------------------

-- ----------------------------
-- Table structure for `lied_crontab`
-- ----------------------------
DROP TABLE IF EXISTS `lied_crontab`;
CREATE TABLE `lied_crontab` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(10) NOT NULL COMMENT '类型',
  `title` varchar(150) NOT NULL COMMENT '标题',
  `contents` text NOT NULL COMMENT '内容',
  `schedule` varchar(100) NOT NULL COMMENT 'Cron表达式',
  `sleep` tinyint(4) NOT NULL DEFAULT '0' COMMENT '延迟秒数执行',
  `maximums` int(11) NOT NULL DEFAULT '0' COMMENT '最大执行次数 0为不限',
  `executes` int(11) DEFAULT '0' COMMENT '已经执行的次数',
  `begin_at` datetime NOT NULL COMMENT '开始时间',
  `end_at` datetime NOT NULL COMMENT '结束时间',
  `execute_at` datetime DEFAULT NULL COMMENT '最后执行时间',
  `weigh` int(11) NOT NULL DEFAULT '0' COMMENT '权重',
  `status` enum('completed','expired','disable','normal') NOT NULL DEFAULT 'normal' COMMENT '状态',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lied_crontab
-- ----------------------------

-- ----------------------------
-- Table structure for `lied_crontab_log`
-- ----------------------------
DROP TABLE IF EXISTS `lied_crontab_log`;
CREATE TABLE `lied_crontab_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(10) NOT NULL COMMENT '类型',
  `cid` int(11) NOT NULL COMMENT '任务的ID',
  `title` varchar(150) NOT NULL COMMENT '标题',
  `remark` mediumtext NOT NULL COMMENT '备注',
  `status` tinyint(4) NOT NULL COMMENT '状态 0:失败 1:成功',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lied_crontab_log
-- ----------------------------

-- ----------------------------
-- Table structure for `lied_failed_jobs`
-- ----------------------------
DROP TABLE IF EXISTS `lied_failed_jobs`;
CREATE TABLE `lied_failed_jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lied_failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for `lied_letter`
-- ----------------------------
DROP TABLE IF EXISTS `lied_letter`;
CREATE TABLE `lied_letter` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `letter` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='字母表';

-- ----------------------------
-- Records of lied_letter
-- ----------------------------
INSERT INTO `lied_letter` VALUES ('1', 'A');
INSERT INTO `lied_letter` VALUES ('2', 'B');
INSERT INTO `lied_letter` VALUES ('3', 'C');
INSERT INTO `lied_letter` VALUES ('4', 'D');
INSERT INTO `lied_letter` VALUES ('5', 'E');
INSERT INTO `lied_letter` VALUES ('6', 'F');
INSERT INTO `lied_letter` VALUES ('7', 'G');
INSERT INTO `lied_letter` VALUES ('8', 'H');
INSERT INTO `lied_letter` VALUES ('9', 'I');
INSERT INTO `lied_letter` VALUES ('10', 'J');
INSERT INTO `lied_letter` VALUES ('11', 'K');
INSERT INTO `lied_letter` VALUES ('12', 'L');
INSERT INTO `lied_letter` VALUES ('13', 'M');
INSERT INTO `lied_letter` VALUES ('14', 'N');
INSERT INTO `lied_letter` VALUES ('15', 'O');
INSERT INTO `lied_letter` VALUES ('16', 'P');
INSERT INTO `lied_letter` VALUES ('17', 'Q');
INSERT INTO `lied_letter` VALUES ('18', 'R');
INSERT INTO `lied_letter` VALUES ('19', 'S');
INSERT INTO `lied_letter` VALUES ('20', 'T');
INSERT INTO `lied_letter` VALUES ('21', 'U');
INSERT INTO `lied_letter` VALUES ('22', 'V');
INSERT INTO `lied_letter` VALUES ('23', 'W');
INSERT INTO `lied_letter` VALUES ('24', 'X');
INSERT INTO `lied_letter` VALUES ('25', 'Y');
INSERT INTO `lied_letter` VALUES ('26', 'Z');

-- ----------------------------
-- Table structure for `lied_log_error`
-- ----------------------------
DROP TABLE IF EXISTS `lied_log_error`;
CREATE TABLE `lied_log_error` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `input` text NOT NULL COMMENT '请求参数',
  `ip` varchar(64) NOT NULL COMMENT '请求ip',
  `path` varchar(255) DEFAULT NULL COMMENT '请求路径',
  `method` varchar(16) DEFAULT NULL COMMENT '请求方法',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='错误日志';

-- ----------------------------
-- Records of lied_log_error
-- ----------------------------
INSERT INTO `lied_log_error` VALUES ('1', '商品规格上传失败商品图片不能为空', '127.0.0.1', '/admin/product/1', 'POST', '2020-08-03 11:07:08', '2020-08-03 11:07:08');
INSERT INTO `lied_log_error` VALUES ('2', '商品规格上传失败，产品id：1,商品规格数据：null,第665行:SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'media_id\' cannot be null (SQL: insert into `lied_product_medias` (`product_id`, `media_id`, `sort`, `updated_at`, `created_at`) values (1, ?, 0, 2020-08-03 11:09:37, 2020-08-03 11:09:37))', '127.0.0.1', '/admin/product/1', 'POST', '2020-08-03 11:09:37', '2020-08-03 11:09:37');
INSERT INTO `lied_log_error` VALUES ('3', '商品规格上传失败，产品id：1,商品规格数据：null,第665行:SQLSTATE[23000]: Integrity constraint violation: 1062 Duplicate entry \'1-12-1\' for key \'product_media-product_id_media_id_sort\' (SQL: insert into `lied_product_medias` (`product_id`, `media_id`, `sort`, `updated_at`, `created_at`) values (1, 12, 1, 2020-08-03 11:35:56, 2020-08-03 11:35:56))', '127.0.0.1', '/admin/product/1', 'POST', '2020-08-03 11:35:56', '2020-08-03 11:35:56');
INSERT INTO `lied_log_error` VALUES ('4', '商品规格上传失败，产品id：1,商品规格数据：null,第665行:SQLSTATE[23000]: Integrity constraint violation: 1062 Duplicate entry \'1-12-1\' for key \'product_media-product_id_media_id_sort\' (SQL: insert into `lied_product_medias` (`product_id`, `media_id`, `sort`, `updated_at`, `created_at`) values (1, 12, 1, 2020-08-03 11:36:09, 2020-08-03 11:36:09))', '127.0.0.1', '/admin/product/1', 'POST', '2020-08-03 11:36:09', '2020-08-03 11:36:09');
INSERT INTO `lied_log_error` VALUES ('5', '商品规格上传失败，产品id：1,商品规格数据：null,第665行:SQLSTATE[23000]: Integrity constraint violation: 1062 Duplicate entry \'1-12-1\' for key \'product_media-product_id_media_id_sort\' (SQL: insert into `lied_product_medias` (`product_id`, `media_id`, `sort`, `updated_at`, `created_at`) values (1, 12, 1, 2020-08-03 11:40:14, 2020-08-03 11:40:14))', '127.0.0.1', '/admin/product/1', 'POST', '2020-08-03 11:40:14', '2020-08-03 11:40:14');
INSERT INTO `lied_log_error` VALUES ('6', '商品规格上传失败，产品id：1,商品规格数据：null,第665行:SQLSTATE[23000]: Integrity constraint violation: 1062 Duplicate entry \'1-12-1\' for key \'product_media-product_id_media_id_sort\' (SQL: insert into `lied_product_medias` (`product_id`, `media_id`, `sort`, `updated_at`, `created_at`) values (1, 12, 1, 2020-08-03 11:44:39, 2020-08-03 11:44:39))', '127.0.0.1', '/admin/product/1', 'POST', '2020-08-03 11:44:39', '2020-08-03 11:44:39');
INSERT INTO `lied_log_error` VALUES ('7', '商品规格上传失败，产品id：1,商品规格数据：{\"1-4\":{\"price\":\"1\",\"stock_num\":\"2\",\"code\":null,\"cost_price\":\"3\",\"warn_number\":\"4\",\"sold_num\":\"0\",\"attr_key\":\"1-4\",\"media_id\":\"17\"},\"1-5\":{\"price\":\"1\",\"stock_num\":\"2\",\"code\":null,\"cost_price\":\"3\",\"warn_number\":\"4\",\"sold_num\":\"0\",\"attr_key\":\"1-5\",\"media_id\":\"17\"},\"1-6\":{\"price\":\"1\",\"stock_num\":\"2\",\"code\":null,\"cost_price\":\"3\",\"warn_number\":\"4\",\"sold_num\":\"0\",\"attr_key\":\"1-6\",\"media_id\":\"17\"},\"2-4\":{\"price\":\"1\",\"stock_num\":\"2\",\"code\":null,\"cost_price\":\"3\",\"warn_number\":\"4\",\"sold_num\":\"0\",\"attr_key\":\"2-4\",\"media_id\":\"18\"},\"2-5\":{\"price\":\"1\",\"stock_num\":\"2\",\"code\":null,\"cost_price\":\"3\",\"warn_number\":\"4\",\"sold_num\":\"0\",\"attr_key\":\"2-5\",\"media_id\":\"18\"},\"2-6\":{\"price\":\"1\",\"stock_num\":\"2\",\"code\":null,\"cost_price\":\"3\",\"warn_number\":\"4\",\"sold_num\":\"0\",\"attr_key\":\"2-6\",\"media_id\":\"18\"},\"3-4\":{\"price\":\"1\",\"stock_num\":\"2\",\"code\":null,\"cost_price\":\"3\",\"warn_number\":\"4\",\"sold_num\":\"0\",\"attr_key\":\"3-4\",\"media_id\":\"19\"},\"3-5\":{\"price\":\"1\",\"stock_num\":\"2\",\"code\":null,\"cost_price\":\"3\",\"warn_number\":\"4\",\"sold_num\":\"0\",\"attr_key\":\"3-5\",\"media_id\":\"19\"},\"3-6\":{\"price\":null,\"stock_num\":null,\"code\":null,\"cost_price\":null,\"warn_number\":null,\"sold_num\":\"0\",\"attr_key\":\"3-6\",\"media_id\":\"19\"}},第665行:SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'price\' cannot be null (SQL: insert into `lied_product_sku` (`product_id`, `attr_key`, `media_id`, `price`, `cost_price`, `code`, `updated_at`, `created_at`) values (1, 3-6, 19, ?, ?, ?, 2020-08-03 15:18:21, 2020-08-03 15:18:21))', '127.0.0.1', '/admin/product/1', 'POST', '2020-08-03 15:18:21', '2020-08-03 15:18:21');
INSERT INTO `lied_log_error` VALUES ('8', '商品规格上传失败，产品id：1,商品规格数据：{\"3-6\":{\"price\":\"1.00\",\"stock_num\":\"2\",\"code\":\"1\",\"cost_price\":\"3.00\",\"warn_number\":\"4\",\"sold_num\":\"0\",\"attr_key\":\"6-3\",\"media_id\":\"20\"},\"2-6\":{\"price\":\"1.00\",\"stock_num\":\"2\",\"code\":\"2\",\"cost_price\":\"3.00\",\"warn_number\":\"4\",\"sold_num\":\"0\",\"attr_key\":\"6-2\",\"media_id\":\"20\"},\"3-5\":{\"price\":\"1.00\",\"stock_num\":\"2\",\"code\":\"3\",\"cost_price\":\"3.00\",\"warn_number\":\"4\",\"sold_num\":\"0\",\"attr_key\":\"5-3\",\"media_id\":\"21\"},\"2-5\":{\"price\":null,\"stock_num\":null,\"code\":null,\"cost_price\":null,\"warn_number\":null,\"sold_num\":\"0\",\"attr_key\":\"5-2\",\"media_id\":\"21\"}},第665行:SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'price\' cannot be null (SQL: insert into `lied_product_sku` (`product_id`, `attr_key`, `media_id`, `price`, `cost_price`, `code`, `updated_at`, `created_at`) values (1, 2-5, 21, ?, ?, ?, 2020-08-03 15:28:55, 2020-08-03 15:28:55))', '127.0.0.1', '/admin/product/1', 'POST', '2020-08-03 15:28:55', '2020-08-03 15:28:55');
INSERT INTO `lied_log_error` VALUES ('9', '商品规格上传失败，产品id：1,商品规格数据：{\"3-6\":{\"price\":\"1.00\",\"stock_num\":\"2\",\"code\":\"1\",\"cost_price\":\"3.00\",\"warn_number\":\"4\",\"sold_num\":\"0\",\"attr_key\":\"6-3\",\"media_id\":\"20\"},\"2-6\":{\"price\":\"1.00\",\"stock_num\":\"2\",\"code\":\"2\",\"cost_price\":\"3.00\",\"warn_number\":\"4\",\"sold_num\":\"0\",\"attr_key\":\"6-2\",\"media_id\":\"20\"},\"3-5\":{\"price\":\"1.00\",\"stock_num\":\"2\",\"code\":\"3\",\"cost_price\":\"3.00\",\"warn_number\":\"4\",\"sold_num\":\"0\",\"attr_key\":\"5-3\",\"media_id\":\"21\"},\"2-5\":{\"price\":null,\"stock_num\":null,\"code\":null,\"cost_price\":null,\"warn_number\":null,\"sold_num\":\"0\",\"attr_key\":\"5-2\",\"media_id\":\"21\"}},第665行:SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'price\' cannot be null (SQL: insert into `lied_product_sku` (`product_id`, `attr_key`, `media_id`, `price`, `cost_price`, `code`, `updated_at`, `created_at`) values (1, 2-5, 21, ?, ?, ?, 2020-08-03 15:29:30, 2020-08-03 15:29:30))', '127.0.0.1', '/admin/product/1', 'POST', '2020-08-03 15:29:30', '2020-08-03 15:29:30');

-- ----------------------------
-- Table structure for `lied_media`
-- ----------------------------
DROP TABLE IF EXISTS `lied_media`;
CREATE TABLE `lied_media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned DEFAULT '1' COMMENT '媒体类型 1-图片 2-文件 3-多媒体',
  `link` varchar(255) DEFAULT '0',
  `rlink` varchar(255) DEFAULT '0' COMMENT '原件地址',
  `size` smallint(6) unsigned DEFAULT '0' COMMENT '文件大小 以kb为单位',
  `file_ext` char(16) DEFAULT '0' COMMENT '文件后缀',
  `file_name` varchar(128) DEFAULT '0' COMMENT '文件名称',
  `is_lock` tinyint(1) unsigned DEFAULT '0' COMMENT '是否上锁 0-否 1-是',
  `is_show` tinyint(1) unsigned DEFAULT '1' COMMENT '显示',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lied_media
-- ----------------------------
INSERT INTO `lied_media` VALUES ('1', '1', 'images/adv_thumb/20200731/14ebde02987f22a337c358ae939e8d42.jpeg', '0', '317', 'jpeg', '14ebde02987f22a337c358ae939e8d42.jpeg', '0', '1', '2020-07-31 14:52:09', '2020-07-31 14:52:09', null);
INSERT INTO `lied_media` VALUES ('2', '1', 'images/adv_thumb/20200731/23a6829756e0fe3ebdfeb07fcf86084d.jpeg', '0', '317', 'jpeg', '23a6829756e0fe3ebdfeb07fcf86084d.jpeg', '0', '1', '2020-07-31 14:53:13', '2020-07-31 14:53:13', null);
INSERT INTO `lied_media` VALUES ('3', '1', 'images/adv_thumb/20200731/7a6c1c5142d1b97ec6ed9f918c423142.jpeg', '0', '317', 'jpeg', '7a6c1c5142d1b97ec6ed9f918c423142.jpeg', '0', '1', '2020-07-31 14:57:27', '2020-07-31 14:57:27', null);
INSERT INTO `lied_media` VALUES ('4', '1', 'images/adv_thumb/20200731/6537222a4d6593dbe55d9bf79f83c6ad.png', '0', '7', 'png', '6537222a4d6593dbe55d9bf79f83c6ad.png', '0', '1', '2020-07-31 17:47:47', '2020-07-31 17:47:47', null);
INSERT INTO `lied_media` VALUES ('5', '1', 'images/adv_thumb/20200731/95ca5ddf380b08504b0b2fe6952d4268.png', '0', '7', 'png', '95ca5ddf380b08504b0b2fe6952d4268.png', '0', '1', '2020-07-31 17:48:45', '2020-07-31 17:48:45', null);
INSERT INTO `lied_media` VALUES ('6', '1', 'images/adv_thumb/20200731/19a8a981b94bc8602650ddb77529b364.png', '0', '7', 'png', '19a8a981b94bc8602650ddb77529b364.png', '0', '1', '2020-07-31 17:49:35', '2020-07-31 17:49:35', null);
INSERT INTO `lied_media` VALUES ('7', '1', 'images/brand_thumb/20200803/c76830db191be8fee850d3240744565f.jpeg', '0', '30', 'jpeg', 'c76830db191be8fee850d3240744565f.jpeg', '0', '1', '2020-08-03 10:24:44', '2020-08-03 10:24:44', null);
INSERT INTO `lied_media` VALUES ('8', '1', 'images/brand_thumb/20200803/80997f7a3a540a2dfeaab89dce649468.jpeg', '0', '30', 'jpeg', '80997f7a3a540a2dfeaab89dce649468.jpeg', '0', '1', '2020-08-03 10:40:00', '2020-08-03 10:40:00', null);
INSERT INTO `lied_media` VALUES ('9', '1', 'images/product_picture/20200803/111b36786a5c54399c5eeb34fda793be.png', '0', '327', 'png', '111b36786a5c54399c5eeb34fda793be.png', '0', '1', '2020-08-03 10:41:54', '2020-08-03 10:41:54', null);
INSERT INTO `lied_media` VALUES ('10', '1', 'images/product_picture/20200803/588fa24b404d439942ae290bd372ca89.jpeg', '0', '8', 'jpeg', '588fa24b404d439942ae290bd372ca89.jpeg', '0', '1', '2020-08-03 10:41:56', '2020-08-03 10:41:56', null);
INSERT INTO `lied_media` VALUES ('11', '1', 'images/product_picture/20200803/8f07bb6bbd65489d0dd5564253623664.jpeg', '0', '22', 'jpeg', '8f07bb6bbd65489d0dd5564253623664.jpeg', '0', '1', '2020-08-03 11:07:25', '2020-08-03 11:07:25', null);
INSERT INTO `lied_media` VALUES ('12', '1', 'images/product_picture/20200803/4ea63c55428a214edca940aa511691af.jpeg', '0', '365', 'jpeg', '4ea63c55428a214edca940aa511691af.jpeg', '0', '1', '2020-08-03 11:07:25', '2020-08-03 11:07:25', null);
INSERT INTO `lied_media` VALUES ('13', '1', 'images/product_picture/20200803/f41845d89051a1934ca1c3579187ca82.png', '0', '327', 'png', 'f41845d89051a1934ca1c3579187ca82.png', '0', '1', '2020-08-03 11:07:25', '2020-08-03 11:07:25', null);
INSERT INTO `lied_media` VALUES ('14', '1', 'images/product_picture/20200803/1a1b7ce1c1979509636b599f58cf0ca3.png', '0', '279', 'png', '1a1b7ce1c1979509636b599f58cf0ca3.png', '0', '1', '2020-08-03 11:09:52', '2020-08-03 11:09:52', null);
INSERT INTO `lied_media` VALUES ('15', '1', 'images/sku/20200803/e20aee8b8710ec08d4e233db319a5e52.png', '0', '327', 'png', 'e20aee8b8710ec08d4e233db319a5e52.png', '0', '1', '2020-08-03 15:12:33', '2020-08-03 15:12:33', null);
INSERT INTO `lied_media` VALUES ('16', '1', 'images/sku/20200803/1d746e27612646164f826aec4b7e67b0.jpeg', '0', '365', 'jpeg', '1d746e27612646164f826aec4b7e67b0.jpeg', '0', '1', '2020-08-03 15:16:09', '2020-08-03 15:16:09', null);
INSERT INTO `lied_media` VALUES ('17', '1', 'images/sku/20200803/2bf896afe4f610385ea56d04c724fd45.jpeg', '0', '365', 'jpeg', '2bf896afe4f610385ea56d04c724fd45.jpeg', '0', '1', '2020-08-03 15:17:40', '2020-08-03 15:17:40', null);
INSERT INTO `lied_media` VALUES ('18', '1', 'images/sku/20200803/df12d9c96c580974f3cccc72560aeb22.jpeg', '0', '8', 'jpeg', 'df12d9c96c580974f3cccc72560aeb22.jpeg', '0', '1', '2020-08-03 15:17:43', '2020-08-03 15:17:43', null);
INSERT INTO `lied_media` VALUES ('19', '1', 'images/sku/20200803/6e41bb50a48d71b1cc3a6a0c2ba90608.png', '0', '279', 'png', '6e41bb50a48d71b1cc3a6a0c2ba90608.png', '0', '1', '2020-08-03 15:17:45', '2020-08-03 15:17:45', null);
INSERT INTO `lied_media` VALUES ('20', '1', 'images/sku/20200803/68562cb301eeae026614cc842a4e6a2f.jpeg', '0', '365', 'jpeg', '68562cb301eeae026614cc842a4e6a2f.jpeg', '0', '1', '2020-08-03 15:20:48', '2020-08-03 15:20:48', null);
INSERT INTO `lied_media` VALUES ('21', '1', 'images/sku/20200803/f7592c2eb81ff3309cc8f0a5d469d277.png', '0', '327', 'png', 'f7592c2eb81ff3309cc8f0a5d469d277.png', '0', '1', '2020-08-03 15:20:50', '2020-08-03 15:20:50', null);
INSERT INTO `lied_media` VALUES ('22', '1', 'images/adv_thumb/20200818/a82443a62c9b2d5012a143ff58a7712e.png', '0', '327', 'png', 'a82443a62c9b2d5012a143ff58a7712e.png', '0', '1', '2020-08-18 17:09:10', '2020-08-18 17:09:10', null);

-- ----------------------------
-- Table structure for `lied_migrations`
-- ----------------------------
DROP TABLE IF EXISTS `lied_migrations`;
CREATE TABLE `lied_migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lied_migrations
-- ----------------------------
INSERT INTO `lied_migrations` VALUES ('1', '2000_01_01_000001_create_users_table', '1');
INSERT INTO `lied_migrations` VALUES ('2', '2000_01_01_000002_create_password_resets_table', '1');
INSERT INTO `lied_migrations` VALUES ('3', '2000_01_02_000001_create_payment_accounts_table', '1');
INSERT INTO `lied_migrations` VALUES ('4', '2016_06_01_000001_create_oauth_auth_codes_table', '1');
INSERT INTO `lied_migrations` VALUES ('5', '2016_06_01_000002_create_oauth_access_tokens_table', '1');
INSERT INTO `lied_migrations` VALUES ('6', '2016_06_01_000003_create_oauth_refresh_tokens_table', '1');
INSERT INTO `lied_migrations` VALUES ('7', '2016_06_01_000004_create_oauth_clients_table', '1');
INSERT INTO `lied_migrations` VALUES ('8', '2016_06_01_000005_create_oauth_personal_access_clients_table', '1');
INSERT INTO `lied_migrations` VALUES ('9', '2016_07_08_110947_create_stripe_accounts_table', '1');
INSERT INTO `lied_migrations` VALUES ('10', '2016_12_29_201047_create_permission_tables', '1');
INSERT INTO `lied_migrations` VALUES ('11', '2016_20_09_030201_create_settings_table', '1');
INSERT INTO `lied_migrations` VALUES ('12', '2017_03_28_203558_create_jobs_table', '1');
INSERT INTO `lied_migrations` VALUES ('13', '2017_03_28_203559_create_failed_jobs_table', '1');
INSERT INTO `lied_migrations` VALUES ('14', '2017_09_12_174826_create_notifications_table', '1');
INSERT INTO `lied_migrations` VALUES ('15', '2017_10_26_214459_update_user_table_with_socialauth_columns', '1');
INSERT INTO `lied_migrations` VALUES ('16', '2017_10_27_091547_add_level_column_to_roles_table', '1');
INSERT INTO `lied_migrations` VALUES ('17', '2018_01_01_000001_create_payment_transactions_table', '1');
INSERT INTO `lied_migrations` VALUES ('18', '2016_01_04_173148_create_admin_tables', '2');
INSERT INTO `lied_migrations` VALUES ('19', '2019_03_18_083704_create_crontab_table', '2');
INSERT INTO `lied_migrations` VALUES ('20', '2020_07_28_100026_create_adv_position_table', '2');
INSERT INTO `lied_migrations` VALUES ('21', '2020_07_28_100320_create_adv_table', '2');
INSERT INTO `lied_migrations` VALUES ('22', '2020_07_28_101059_create_article_table', '2');
INSERT INTO `lied_migrations` VALUES ('23', '2020_07_28_101325_create_article_category_table', '2');
INSERT INTO `lied_migrations` VALUES ('24', '2020_07_28_101419_create_brand_category_table', '2');
INSERT INTO `lied_migrations` VALUES ('25', '2020_07_28_101623_create_media_table', '2');
INSERT INTO `lied_migrations` VALUES ('26', '2020_07_28_102041_create_brand_table', '2');
INSERT INTO `lied_migrations` VALUES ('27', '2020_07_28_102126_create_coupon_table', '2');
INSERT INTO `lied_migrations` VALUES ('28', '2020_07_28_103531_create_coupons_discount_table', '2');
INSERT INTO `lied_migrations` VALUES ('29', '2020_07_28_150535_create_coupons_limit_table', '2');
INSERT INTO `lied_migrations` VALUES ('30', '2020_07_28_152952_create_coupons_batch_table', '2');
INSERT INTO `lied_migrations` VALUES ('31', '2020_07_28_153116_create_coupons_offline_table', '2');
INSERT INTO `lied_migrations` VALUES ('32', '2020_07_28_153221_create_coupons_price_table', '2');
INSERT INTO `lied_migrations` VALUES ('33', '2020_07_28_155230_create_letter_table', '2');
INSERT INTO `lied_migrations` VALUES ('34', '2020_07_28_155403_create_log_error_table', '2');
INSERT INTO `lied_migrations` VALUES ('35', '2020_07_28_160213_create_product_category_table', '2');
INSERT INTO `lied_migrations` VALUES ('36', '2020_07_28_160341_create_product_table', '2');
INSERT INTO `lied_migrations` VALUES ('37', '2020_07_28_164956_create_product_attr_table', '2');
INSERT INTO `lied_migrations` VALUES ('38', '2020_07_28_165047_create_product_attr_map_table', '2');
INSERT INTO `lied_migrations` VALUES ('39', '2020_07_28_165148_create_product_attr_values_table', '2');
INSERT INTO `lied_migrations` VALUES ('40', '2020_07_28_165257_create_product_attr_value_map_table', '2');
INSERT INTO `lied_migrations` VALUES ('41', '2020_07_28_165421_create_product_medias_table', '2');
INSERT INTO `lied_migrations` VALUES ('42', '2020_07_28_165525_create_product_seckill_table', '2');
INSERT INTO `lied_migrations` VALUES ('43', '2020_07_28_165620_create_product_sku_table', '2');
INSERT INTO `lied_migrations` VALUES ('44', '2020_07_28_165751_create_product_sku_stock_table', '2');
INSERT INTO `lied_migrations` VALUES ('45', '2020_07_28_165857_create_regions_table', '2');
INSERT INTO `lied_migrations` VALUES ('46', '2020_07_28_170347_create_regions_open_table', '2');
INSERT INTO `lied_migrations` VALUES ('47', '2020_07_28_170500_create_users_collect_table', '2');
INSERT INTO `lied_migrations` VALUES ('48', '2020_07_28_170640_create_users_comment_table', '2');
INSERT INTO `lied_migrations` VALUES ('49', '2020_07_28_170736_create_users_coupon_table', '2');
INSERT INTO `lied_migrations` VALUES ('50', '2020_07_28_170838_create_users_oauth_table', '2');
INSERT INTO `lied_migrations` VALUES ('51', '2020_07_28_171139_create_cart_table', '2');
INSERT INTO `lied_migrations` VALUES ('52', '2020_07_28_171205_create_order_table', '2');

-- ----------------------------
-- Table structure for `lied_model_has_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `lied_model_has_permissions`;
CREATE TABLE `lied_model_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`model_type`,`model_id`,`permission_id`),
  KEY `model_has_permissions_model_type_model_id_index` (`model_type`,`model_id`),
  KEY `model_has_permissions_permission_id_foreign` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lied_model_has_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `lied_model_has_roles`
-- ----------------------------
DROP TABLE IF EXISTS `lied_model_has_roles`;
CREATE TABLE `lied_model_has_roles` (
  `role_id` int(10) unsigned NOT NULL,
  `model_type` varchar(191) NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`model_id`,`role_id`,`model_type`),
  KEY `model_has_roles_model_type_model_id_index` (`model_type`,`model_id`),
  KEY `model_has_roles_role_id_foreign` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lied_model_has_roles
-- ----------------------------

-- ----------------------------
-- Table structure for `lied_notifications`
-- ----------------------------
DROP TABLE IF EXISTS `lied_notifications`;
CREATE TABLE `lied_notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(191) NOT NULL,
  `notifiable_type` varchar(191) NOT NULL,
  `notifiable_id` bigint(20) unsigned NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lied_notifications
-- ----------------------------
INSERT INTO `lied_notifications` VALUES ('8fcabad8-217c-41cc-8c28-c55d9186c83b', 'App\\Containers\\User\\Notifications\\UserRegisteredNotification', 'App\\Containers\\User\\Models\\User', '8', '[]', null, '2020-08-13 15:29:08', '2020-08-13 15:29:08');
INSERT INTO `lied_notifications` VALUES ('36bd342c-c8e6-49f8-8a74-0f7dc7d56955', 'App\\Containers\\User\\Notifications\\UserRegisteredNotification', 'App\\Containers\\User\\Models\\User', '9', '[]', null, '2020-08-13 15:34:13', '2020-08-13 15:34:13');

-- ----------------------------
-- Table structure for `lied_oauth_access_tokens`
-- ----------------------------
DROP TABLE IF EXISTS `lied_oauth_access_tokens`;
CREATE TABLE `lied_oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `scopes` text,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lied_oauth_access_tokens
-- ----------------------------
INSERT INTO `lied_oauth_access_tokens` VALUES ('dc19cf1ccc8b1621f8c23bff6bcf8b5c8fd732c10a36c4950437744d8ee86dc5acafebe202c6d176', '1', '2', null, '[]', '0', '2020-07-30 06:39:30', '2020-07-30 06:39:30', '2020-07-31 06:39:30');
INSERT INTO `lied_oauth_access_tokens` VALUES ('253815742ea1c12564b06785ae15f1f20a50673001b5b3fec6bbf5d571bf217f4fcaf5ae8d35635b', '1', '2', null, '[]', '0', '2020-08-04 03:12:32', '2020-08-04 03:12:32', '2020-08-05 03:12:31');
INSERT INTO `lied_oauth_access_tokens` VALUES ('e002b20e24047989dc4a041fb0fa5531b647671d7899c23f1f214b4ba49e4b0ed027a02b28240a3d', '1', '2', null, '[]', '0', '2020-08-05 14:23:11', '2020-08-05 14:23:11', '2020-08-06 14:23:10');
INSERT INTO `lied_oauth_access_tokens` VALUES ('80d72fdf1d19ceea2bdf9af464109263292605f2e0b90f88a86db7979fc53a010ec7ae5e328869b0', '1', '2', null, '[]', '0', '2020-08-06 14:01:45', '2020-08-06 14:01:45', '2020-08-07 14:01:45');
INSERT INTO `lied_oauth_access_tokens` VALUES ('b22bc4655fe0f1d9f0fe863c44e12881cb53922214fdb6318e9e9a5bcaa091fe6ceefe7ee67c345c', '1', '2', null, '[]', '0', '2020-08-06 14:01:58', '2020-08-06 14:01:58', '2020-08-07 14:01:58');
INSERT INTO `lied_oauth_access_tokens` VALUES ('a71614fb68cc9e79d8e30334a9d31a10ceee5392fe6f6ef86b4e0fbc337a07ab43218006e88a4b91', '1', '2', null, '[]', '0', '2020-08-06 14:02:13', '2020-08-06 14:02:13', '2020-08-07 14:02:13');
INSERT INTO `lied_oauth_access_tokens` VALUES ('c4ad4851aa972bd7a0a4ff1f721294fce2260d94e0b1df21aa18f9e87408450e49616a4dd6490973', '1', '2', null, '[]', '0', '2020-08-06 14:02:32', '2020-08-06 14:02:32', '2020-08-07 14:02:32');
INSERT INTO `lied_oauth_access_tokens` VALUES ('770ad1fbaf7a1d4dc1ddba7909528724562d1e931a83df6ba1a57b26e1e68c6bda6582cca78da486', '1', '2', null, '[]', '0', '2020-08-06 14:02:45', '2020-08-06 14:02:45', '2020-08-07 14:02:45');
INSERT INTO `lied_oauth_access_tokens` VALUES ('96e19526c5cd642ce002d80ca3b7aebcdd67f1c0fade6f989f9e4a886aac0e7e4b132ecd455fa109', '1', '2', null, '[]', '0', '2020-08-06 14:03:58', '2020-08-06 14:03:58', '2020-08-07 14:03:58');
INSERT INTO `lied_oauth_access_tokens` VALUES ('695348fd0e7c81c877d14dd658c9ee0b250ba5fb61db75fe8271c0b3ef01b2e8393d105bf813868c', '1', '2', null, '[]', '0', '2020-08-06 14:04:17', '2020-08-06 14:04:17', '2020-08-07 14:04:17');
INSERT INTO `lied_oauth_access_tokens` VALUES ('5c0f99c7152992c9962554a8a1e4ac81457bf12a4dbb35b6b378e73ffad690cee352c7a9df243785', '1', '2', null, '[]', '0', '2020-08-06 14:04:23', '2020-08-06 14:04:23', '2020-08-07 14:04:23');
INSERT INTO `lied_oauth_access_tokens` VALUES ('9e7d55daf980b72ac4d2ff23568db6278b09d5784d0e28d09db3dbce9af7485efaae41c5a9664f29', '1', '2', null, '[]', '0', '2020-08-06 14:05:26', '2020-08-06 14:05:26', '2020-08-07 14:05:26');
INSERT INTO `lied_oauth_access_tokens` VALUES ('d1639f15a488859a4cdebd6842ca85dea4f9a5a02221183a9b355b49002f32837fc11cca4ca1ce12', '1', '2', null, '[]', '0', '2020-08-06 14:06:01', '2020-08-06 14:06:01', '2020-08-07 14:06:00');
INSERT INTO `lied_oauth_access_tokens` VALUES ('0031b9a437f966e2c4bb32e003a4b29b79e101a7e75a95012926a209513a23c732ccc00b9a2e581a', '1', '2', null, '[]', '0', '2020-08-06 14:06:28', '2020-08-06 14:06:28', '2020-08-07 14:06:28');
INSERT INTO `lied_oauth_access_tokens` VALUES ('202c5749a03d8923bf61e5ae65b64c48dfff648d18087e51a798743d66c730c1135c99398d5c12b7', '1', '2', null, '[]', '0', '2020-08-06 14:06:37', '2020-08-06 14:06:37', '2020-08-07 14:06:37');
INSERT INTO `lied_oauth_access_tokens` VALUES ('eecfac798425a4510b1a3ec2b5969c2c5b96c2f2c5b6db17ac012dc231611c9ff1b63cd8a6e20426', '1', '2', null, '[]', '0', '2020-08-06 14:22:56', '2020-08-06 14:22:56', '2020-08-07 14:22:56');
INSERT INTO `lied_oauth_access_tokens` VALUES ('840a0e8cc335351832308f0e8cd8491d0ef7f8cd26441670733e38a25d47dbdf67dcfbae0a4ce5ef', '1', '2', null, '[]', '0', '2020-08-06 14:23:20', '2020-08-06 14:23:20', '2020-08-07 14:23:20');
INSERT INTO `lied_oauth_access_tokens` VALUES ('5cc901b2ba73c2ae9f9bd7d8e55f7792dae047f112efbdb528e3327f4c29e6c4aac4a4ad53ab8d23', '1', '2', null, '[]', '0', '2020-08-06 14:23:39', '2020-08-06 14:23:39', '2020-08-07 14:23:39');
INSERT INTO `lied_oauth_access_tokens` VALUES ('900f562fec924d15dd5eca2d5b079147dd0f1a12c2149912b8dd5a0c1b97dd08a44f801899d361ca', '1', '2', null, '[]', '0', '2020-08-06 14:24:07', '2020-08-06 14:24:07', '2020-08-07 14:24:07');
INSERT INTO `lied_oauth_access_tokens` VALUES ('31c92044381f0fe3dd8e2fde8760bf33b352a23ec9f5f0495c2a2992cfac4ee2a927ae63c9461b60', '1', '2', null, '[]', '0', '2020-08-07 15:53:42', '2020-08-07 15:53:42', '2020-08-08 15:53:42');
INSERT INTO `lied_oauth_access_tokens` VALUES ('d1766b9dce7b74d4a9bf2d01932b81fab4aa515ebcc0fce56dcc0fe02e32f94f227a00fc13274be7', '1', '2', null, '[]', '0', '2020-08-08 15:53:57', '2020-08-08 15:53:57', '2020-08-09 15:53:57');
INSERT INTO `lied_oauth_access_tokens` VALUES ('e43ff54a02e907aa27525ecbf9e99eae58efdef0a41d7f5a67ee9df3173f62ec8351aa892153d3b2', '1', '2', null, '[]', '0', '2020-08-08 16:06:13', '2020-08-08 16:06:13', '2020-08-09 16:06:12');
INSERT INTO `lied_oauth_access_tokens` VALUES ('6d1f6fbefe85fc2c099b0139d42200186914ce1356bf671c0e79e0a7a55b3295f3b785b09a78f303', '1', '2', null, '[]', '0', '2020-08-08 17:14:42', '2020-08-08 17:14:42', '2020-08-09 17:14:42');
INSERT INTO `lied_oauth_access_tokens` VALUES ('f2dbc467775f0e2b3ce5afed122b719a433d046a13ea059a781e4a4924c1a47333ebe945a44f4a4d', '1', '2', null, '[]', '0', '2020-08-08 17:30:13', '2020-08-08 17:30:13', '2020-08-09 17:30:13');
INSERT INTO `lied_oauth_access_tokens` VALUES ('f450d2cea2ce5a8c2e605dce830aa033e4f0ff2f5d92df523309f32cb02c3b7747d60c8b7a69220e', '1', '2', null, '[]', '0', '2020-08-08 17:34:18', '2020-08-08 17:34:18', '2020-08-09 17:34:17');
INSERT INTO `lied_oauth_access_tokens` VALUES ('ddf843f58d034863c6db9c396efb58c1a91e6a32ac1a571d3c3c7d8e344747fd8eb3f32ffeae6e3f', '1', '2', null, '[]', '0', '2020-08-08 17:36:53', '2020-08-08 17:36:53', '2020-08-09 17:36:53');
INSERT INTO `lied_oauth_access_tokens` VALUES ('906742e0c52c88ba0c0ede3bba5a1a0e632c6d6fee1faea15e05098a565eed1e0391ebf7f15fd0b8', '1', '2', null, '[]', '0', '2020-08-10 13:39:16', '2020-08-10 13:39:16', '2020-08-11 13:39:16');
INSERT INTO `lied_oauth_access_tokens` VALUES ('64fe5194a6f9416477ac67a8d29a30f3048137e4c842903b1c9131f2d3a745942f7c352b6d09b246', '1', '2', null, '[]', '0', '2020-08-10 13:39:49', '2020-08-10 13:39:49', '2020-08-11 13:39:49');
INSERT INTO `lied_oauth_access_tokens` VALUES ('c161a94b10e4ff603ca558269b918d663d59cc8c281ae92b724d8081e344b4622f6543804db50dd6', '1', '2', null, '[]', '0', '2020-08-10 14:22:06', '2020-08-10 14:22:06', '2020-08-11 14:22:06');
INSERT INTO `lied_oauth_access_tokens` VALUES ('159284a6a943e185e8fe3c20e22755247a9c57afb5ea7506b9054c6a681f5b8667faac9b686b98d4', '1', '2', null, '[]', '0', '2020-08-10 14:58:32', '2020-08-10 14:58:32', '2020-08-11 14:58:32');
INSERT INTO `lied_oauth_access_tokens` VALUES ('97ec5984b5f894f3cbf171b2978c45d9d040837b295b2215a80fa7ddeff12f057e336b5a834e4fa9', '1', '2', null, '[]', '0', '2020-08-10 16:15:26', '2020-08-10 16:15:26', '2020-08-11 16:15:26');
INSERT INTO `lied_oauth_access_tokens` VALUES ('812fce5c1bb830e8b414961cb386ae8ae795ad76739c41eff3050b5ec91daad0baccc0a7a0b95028', '1', '2', null, '[]', '0', '2020-08-10 16:55:36', '2020-08-10 16:55:36', '2020-08-11 16:55:36');
INSERT INTO `lied_oauth_access_tokens` VALUES ('007756e2794c93234d1946b26667937ec50b941de2d706d5eedf9135746849545e707175fac9bf3e', '1', '2', null, '[]', '0', '2020-08-12 09:14:29', '2020-08-12 09:14:29', '2020-08-13 09:14:29');
INSERT INTO `lied_oauth_access_tokens` VALUES ('7a5fad485aaf1f952bb42c229ca215c921f2cedb58c9de6a53bd18125dd054ad0461be16ceb94978', '1', '2', null, '[]', '0', '2020-08-12 09:47:46', '2020-08-12 09:47:46', '2020-08-13 09:47:46');
INSERT INTO `lied_oauth_access_tokens` VALUES ('a6b95d5b17ee55fb793087db3e6df02373f6040fedceff3d5fcc77f1d3f3d40203cb002cdf377ca8', '1', '2', null, '[]', '0', '2020-08-12 09:49:04', '2020-08-12 09:49:04', '2020-08-13 09:49:04');
INSERT INTO `lied_oauth_access_tokens` VALUES ('586d0bcef432ef3aed11047cb9e0dc9a8dcab850129cba81bc1b2519c0099438ca93d55cbc13e30c', '1', '2', null, '[]', '0', '2020-08-12 09:49:12', '2020-08-12 09:49:12', '2020-08-13 09:49:12');
INSERT INTO `lied_oauth_access_tokens` VALUES ('c0e260dc9b0e28fae1a22d86996f323783e51da766b1e94e59faa8b18f3f7ee919c99a30eea4ad16', '1', '2', null, '[]', '0', '2020-08-12 09:49:49', '2020-08-12 09:49:49', '2020-08-13 09:49:49');
INSERT INTO `lied_oauth_access_tokens` VALUES ('789db1a9290f92bd92006fe7b75da1f5a2c120dd735e4b262157208b08eea4abca96c6fd315415c4', '1', '2', null, '[]', '0', '2020-08-12 09:50:44', '2020-08-12 09:50:44', '2020-08-13 09:50:44');
INSERT INTO `lied_oauth_access_tokens` VALUES ('8402bb5ccaaa1b40bdce10e74522a92f55f31a811196eed5ab866e75132c6f91f5d31ded39755091', '1', '2', null, '[]', '0', '2020-08-12 09:52:30', '2020-08-12 09:52:30', '2020-08-13 09:52:30');
INSERT INTO `lied_oauth_access_tokens` VALUES ('58019e2ba4579f7f0db44c5dcff54a4dcd0af726c3bc2d4af27f082c126a2e9ba04b4e66bae793ac', '1', '2', null, '[]', '0', '2020-08-12 09:52:44', '2020-08-12 09:52:44', '2020-08-13 09:52:44');
INSERT INTO `lied_oauth_access_tokens` VALUES ('bef77af9eb139880ea28146592bfbc17b516bcfb85cc95d6c48d5cecf419dc67d1d82ceb7130970d', '1', '2', null, '[]', '0', '2020-08-12 09:53:08', '2020-08-12 09:53:08', '2020-08-13 09:53:08');
INSERT INTO `lied_oauth_access_tokens` VALUES ('ad8b97fce9d36b65eaeae8f6908f67bacd727cf447239e2ad123339dbe1d221452075dd427f4d106', '1', '2', null, '[]', '0', '2020-08-12 09:53:18', '2020-08-12 09:53:18', '2020-08-13 09:53:18');
INSERT INTO `lied_oauth_access_tokens` VALUES ('59060e9ada7e56d523e60ea90ee85b931ada36fe05d31e6e0e2793853cd4665acaac5e44bfafab52', '1', '2', null, '[]', '0', '2020-08-12 09:53:25', '2020-08-12 09:53:25', '2020-08-13 09:53:25');
INSERT INTO `lied_oauth_access_tokens` VALUES ('8984b59b6564300648fc3514e61bcbe092cea1b6aaf820c58b4d28c13c3b6aecce496166cae94058', '1', '2', null, '[]', '0', '2020-08-12 09:53:38', '2020-08-12 09:53:38', '2020-08-13 09:53:38');
INSERT INTO `lied_oauth_access_tokens` VALUES ('a86ae79c092cfeb8d2579677d3e04695e68e4e94dcb706feb0a6b0c49c7de8687cd647a74004fef0', '1', '2', null, '[]', '0', '2020-08-12 09:54:02', '2020-08-12 09:54:02', '2020-08-13 09:54:02');
INSERT INTO `lied_oauth_access_tokens` VALUES ('c995cd327fe1dedb20f6d55d8d0854868b5a6c5e0120b68e60745d67f6f483fcae411856cff5fedd', '1', '2', null, '[]', '0', '2020-08-12 09:55:24', '2020-08-12 09:55:24', '2020-08-13 09:55:23');
INSERT INTO `lied_oauth_access_tokens` VALUES ('67f0a51398467fe1f1e1c10a196eee7432e1a1e305b027ec4805b36c2d9890f31c913b94e7d7d3a8', '1', '2', null, '[]', '0', '2020-08-12 09:55:34', '2020-08-12 09:55:34', '2020-08-13 09:55:34');
INSERT INTO `lied_oauth_access_tokens` VALUES ('05ecb5204e01f8135b217931dcceed28ee57c7a2fba0577e52eaf57805d38843bc00b855831aa2dc', '1', '2', null, '[]', '0', '2020-08-12 09:55:48', '2020-08-12 09:55:48', '2020-08-13 09:55:48');
INSERT INTO `lied_oauth_access_tokens` VALUES ('3cd36c62a2dbfb70d7af1c05466424b7e95991e778a1c1f619bcdc1477f95a47d314a3246b72d383', '1', '2', null, '[]', '0', '2020-08-12 09:56:00', '2020-08-12 09:56:00', '2020-08-13 09:56:00');
INSERT INTO `lied_oauth_access_tokens` VALUES ('b85cfcc50840b64db773ce1c5738b71852f5339b498f4f8a84515ff4470bab34ddbe8309e00f0bc9', '1', '2', null, '[]', '0', '2020-08-12 09:57:13', '2020-08-12 09:57:13', '2020-08-13 09:57:13');
INSERT INTO `lied_oauth_access_tokens` VALUES ('2df52a912500c789d7cf03d551794b8ca4affd22993f51b2bb82465305e1b0968d291e121b3e7cd6', '1', '2', null, '[]', '0', '2020-08-12 09:57:51', '2020-08-12 09:57:51', '2020-08-13 09:57:51');
INSERT INTO `lied_oauth_access_tokens` VALUES ('50e82bbafb8d6b04ec465899a34a8dae428d2dfe125dc2564b4a21f395235fcaa145daa4d067356b', '1', '2', null, '[]', '0', '2020-08-12 10:00:51', '2020-08-12 10:00:51', '2020-08-13 10:00:51');
INSERT INTO `lied_oauth_access_tokens` VALUES ('423152999778ee89175c1b1aa1c3d1c74dd42678f304782fc0de8858a6f748c0fcde200ed3345f23', '1', '2', null, '[]', '0', '2020-08-12 10:01:14', '2020-08-12 10:01:14', '2020-08-13 10:01:14');
INSERT INTO `lied_oauth_access_tokens` VALUES ('05ec3d688ebf4a08816c4309a8c0713cb3a5a2fbe116a832b0ff77fe5fbdad5999b0083e175acb42', '1', '2', null, '[]', '0', '2020-08-12 10:01:52', '2020-08-12 10:01:52', '2020-08-13 10:01:52');
INSERT INTO `lied_oauth_access_tokens` VALUES ('3375118693ecece830e7669b0c25c3a2aac7885ed9c6a22c6b3ae79dd2a74c6713779e22a76e3dfa', '1', '2', null, '[]', '0', '2020-08-12 10:02:01', '2020-08-12 10:02:01', '2020-08-13 10:02:01');
INSERT INTO `lied_oauth_access_tokens` VALUES ('cacdd00c194adfa574f8e68208a11f262c3312616ddbb2e6f7c6d9fe61e011be9e1fff3074defb53', '1', '2', null, '[]', '0', '2020-08-12 10:02:16', '2020-08-12 10:02:16', '2020-08-13 10:02:16');
INSERT INTO `lied_oauth_access_tokens` VALUES ('a4926469a80d579eb0c665e4e69d15226b1d8759c50e5f531862a2604c1c97c8b750759326de984e', '1', '2', null, '[]', '0', '2020-08-12 10:03:13', '2020-08-12 10:03:13', '2020-08-13 10:03:13');
INSERT INTO `lied_oauth_access_tokens` VALUES ('09fb0f7f0c588235f19f412d1537a849bee4017f825d4386523ed457a1e0c07d727a73829a3ca793', '1', '2', null, '[]', '0', '2020-08-12 10:03:29', '2020-08-12 10:03:29', '2020-08-13 10:03:29');
INSERT INTO `lied_oauth_access_tokens` VALUES ('0d960dd2870c2741c5fd2a70671969b274c5fc5b309d8a134f3421aa208a9c2c8ce99262b1bae302', '1', '2', null, '[]', '0', '2020-08-12 10:04:55', '2020-08-12 10:04:55', '2020-08-13 10:04:55');
INSERT INTO `lied_oauth_access_tokens` VALUES ('13dd037632ea7b861d0751e92a519a6c9d21f2aaa0d850e91241c0cc4cb3bde1e7031475a5d5ac80', '1', '2', null, '[]', '0', '2020-08-12 10:05:12', '2020-08-12 10:05:12', '2020-08-13 10:05:12');
INSERT INTO `lied_oauth_access_tokens` VALUES ('ec67df814fcd376dc7dc808aa16ca3f9785a68b07cebcb354537c998af6cc5f4597c2e33685490cf', '1', '2', null, '[]', '0', '2020-08-12 10:05:50', '2020-08-12 10:05:50', '2020-08-13 10:05:50');
INSERT INTO `lied_oauth_access_tokens` VALUES ('df47ce22d16deb970630003a8fa881e0a0f196457b46ca3df04bac984c287a8e20411603c1a766d2', '1', '2', null, '[]', '0', '2020-08-12 10:09:55', '2020-08-12 10:09:55', '2020-08-13 10:09:55');
INSERT INTO `lied_oauth_access_tokens` VALUES ('5117c9477e20477416cf211aef05954af8fa8a075822ecd2a207940e15075037e535e0e6e8328c39', '1', '2', null, '[]', '0', '2020-08-12 10:10:02', '2020-08-12 10:10:02', '2020-08-13 10:10:02');
INSERT INTO `lied_oauth_access_tokens` VALUES ('137708cdb6ece3ccfa24e3ae2f621d9877923ed0e13d146e8cfa0312b06e08a66eb76e1ac55dfe4a', '1', '2', null, '[]', '0', '2020-08-12 10:16:25', '2020-08-12 10:16:25', '2020-08-13 10:16:25');
INSERT INTO `lied_oauth_access_tokens` VALUES ('1d3567dafaabac676e473f6468121726d81fe115a3a78e12724de5c27ab30d500d7e3188c7b0ff9e', '1', '2', null, '[]', '0', '2020-08-12 10:16:34', '2020-08-12 10:16:34', '2020-08-13 10:16:34');
INSERT INTO `lied_oauth_access_tokens` VALUES ('662720a20d4487e70166fbb391bba173f174b7b101eb467670047253c8b24b5031daa8650a5cd4a1', '1', '2', null, '[]', '0', '2020-08-12 10:39:01', '2020-08-12 10:39:01', '2020-08-13 10:39:01');
INSERT INTO `lied_oauth_access_tokens` VALUES ('d9da3b1f07d24b163259546899eca1b65f2c0f612fea4463a2889dd7a365f3c69ffe0bc602444bf4', '1', '2', null, '[]', '0', '2020-08-12 10:39:08', '2020-08-12 10:39:08', '2020-08-13 10:39:08');
INSERT INTO `lied_oauth_access_tokens` VALUES ('9629c223bbe385549c056de8d85fd6961e9883f54820e2a3efdde58342a71f3f70faf1e4768eb148', '1', '2', null, '[]', '0', '2020-08-12 10:39:28', '2020-08-12 10:39:28', '2020-08-13 10:39:28');
INSERT INTO `lied_oauth_access_tokens` VALUES ('3f603fc746e2dd24d084ddce4aec18966543a674273b557686981a47ad0dc56393327ae79bc93472', '1', '2', null, '[]', '0', '2020-08-12 10:39:41', '2020-08-12 10:39:41', '2020-08-13 10:39:41');
INSERT INTO `lied_oauth_access_tokens` VALUES ('707200ad8e33668519b804a0529ae0ff905b0e66b3e3328f9e53ece035ec69c6d626c67740f20881', '1', '2', null, '[]', '0', '2020-08-12 10:39:55', '2020-08-12 10:39:55', '2020-08-13 10:39:55');
INSERT INTO `lied_oauth_access_tokens` VALUES ('55d7a46d787352bf80393169833ebd2d7386aa59099cc241b55afa18548207f1c4734c56caeaa931', '1', '2', null, '[]', '0', '2020-08-12 10:40:13', '2020-08-12 10:40:13', '2020-08-13 10:40:13');
INSERT INTO `lied_oauth_access_tokens` VALUES ('a583fd54e2d06a733e6360162f116dabe5a762a0ea7e2fa31d5a74453465b52c698346a58591be43', '1', '2', null, '[]', '0', '2020-08-12 10:41:00', '2020-08-12 10:41:00', '2020-08-13 10:41:00');
INSERT INTO `lied_oauth_access_tokens` VALUES ('b1802e3714c4175fde711dfa379e9077d15fb8af36ee26f13076d225ce5e50cecc7c01f894fea27b', '1', '2', null, '[]', '0', '2020-08-12 10:41:20', '2020-08-12 10:41:20', '2020-08-13 10:41:20');
INSERT INTO `lied_oauth_access_tokens` VALUES ('732cef788fc0155406ccb7969e14b82d28ccf9342a75a6d3b76bd3f3cd6c20f8b1ff6ec4011d8385', '1', '2', null, '[]', '0', '2020-08-12 10:42:12', '2020-08-12 10:42:12', '2020-08-13 10:42:12');
INSERT INTO `lied_oauth_access_tokens` VALUES ('6dc666295bee8e229fdf776917819a1d07f00415364f6655366b30ce67c118dcc349958a2e26b041', '1', '2', null, '[]', '0', '2020-08-12 10:42:29', '2020-08-12 10:42:29', '2020-08-13 10:42:29');
INSERT INTO `lied_oauth_access_tokens` VALUES ('f7764a09aac644cc3656d6c7eebb0b9a986d7df3a979a01b363ecf70cb65ce2d7bac9abfd91ab593', '1', '2', null, '[]', '0', '2020-08-12 10:42:57', '2020-08-12 10:42:57', '2020-08-13 10:42:57');
INSERT INTO `lied_oauth_access_tokens` VALUES ('0236e6cf89fd2849d94699e2f514b8de25971e0fc5967b400fdb6f8e489cfc753da7ad87dc55cc40', '1', '2', null, '[]', '0', '2020-08-12 10:43:17', '2020-08-12 10:43:17', '2020-08-13 10:43:17');
INSERT INTO `lied_oauth_access_tokens` VALUES ('7719c2f0b87e49de97056c6b31342867c746530db7e7b51370d82f6b8e4357750d4aa73a245719f1', '1', '2', null, '[]', '0', '2020-08-12 10:44:39', '2020-08-12 10:44:39', '2020-08-13 10:44:39');
INSERT INTO `lied_oauth_access_tokens` VALUES ('aaffcab8c3644e2ea9217331d92d6caf7ec42d830a678bf80225ca76c987d4bca709740f272ffb19', '1', '2', null, '[]', '0', '2020-08-12 10:46:09', '2020-08-12 10:46:09', '2020-08-13 10:46:09');
INSERT INTO `lied_oauth_access_tokens` VALUES ('cac06a2df05b1644fd88ca7fcbacc8de1a2edce195512f5fc946ddc51f4a80ba74f8ee03987ee91c', '1', '2', null, '[]', '0', '2020-08-12 10:46:36', '2020-08-12 10:46:36', '2020-08-13 10:46:36');
INSERT INTO `lied_oauth_access_tokens` VALUES ('9042221e7f2f86fe094d7c6b477d4f942eab623cddc0c6e52edeb12984af30d998259d99ca0721cb', '1', '2', null, '[]', '0', '2020-08-12 10:46:48', '2020-08-12 10:46:48', '2020-08-13 10:46:48');
INSERT INTO `lied_oauth_access_tokens` VALUES ('5bb959a5782bc3809853f2e586caedee5443af156f6d085d1f884a5e98947ac16a86c17b777c8caa', '1', '2', null, '[]', '0', '2020-08-12 10:58:15', '2020-08-12 10:58:15', '2020-08-13 10:58:15');
INSERT INTO `lied_oauth_access_tokens` VALUES ('fb96f8d1b5520d7166746aee1a7d2cef6d0079ae29017195a022e5336179a491ed8b55fac5dd1e24', '1', '2', null, '[]', '0', '2020-08-12 10:58:54', '2020-08-12 10:58:54', '2020-08-13 10:58:54');
INSERT INTO `lied_oauth_access_tokens` VALUES ('4542513f55c189a88917722b98222528026cdae1e62cb603e776df2db80573dc51ca5dc2842d6ba6', '1', '2', null, '[]', '0', '2020-08-13 14:35:19', '2020-08-13 14:35:19', '2020-08-14 14:35:19');
INSERT INTO `lied_oauth_access_tokens` VALUES ('09e1bbcf1d1ea553cdce7bd31f15fc147e02aeb4cbad02696349bcdf1d26f1371e4698d9ba256388', '1', '2', null, '[]', '0', '2020-08-13 14:47:03', '2020-08-13 14:47:03', '2020-08-14 14:47:03');
INSERT INTO `lied_oauth_access_tokens` VALUES ('0b4af6c999ad4113b4df93908ebf35528a8519f05f7cade06af87c7f72a58484efe4f3d2f3bfae0c', '5', '2', null, '[]', '0', '2020-08-13 15:27:17', '2020-08-13 15:27:17', '2020-08-14 15:27:17');
INSERT INTO `lied_oauth_access_tokens` VALUES ('9ae4b997c34da573fc7452e6bf0032c14573becc243a0e0a61015029948dac12a92a906ebce361fd', '8', '2', null, '[]', '0', '2020-08-13 15:29:08', '2020-08-13 15:29:08', '2020-08-14 15:29:08');
INSERT INTO `lied_oauth_access_tokens` VALUES ('9b9c68c7e1dd9ce44c27f6a8768c88b09358552e16d0aa3ba8d8121f13206c94398e165cc33fd3d4', '8', '2', null, '[]', '0', '2020-08-13 15:30:35', '2020-08-13 15:30:35', '2020-08-14 15:30:34');
INSERT INTO `lied_oauth_access_tokens` VALUES ('15b49ac478d522ab83ce7f6475546611f2622d10d4916f8066acd140eb4aceb949fd4426e9ac1705', '8', '2', null, '[]', '0', '2020-08-13 15:31:36', '2020-08-13 15:31:36', '2020-08-14 15:31:36');
INSERT INTO `lied_oauth_access_tokens` VALUES ('4b05665c9951a6fc85d709bae9bf3083150cc5c1013cc32161a4cae69571ad8c34c054c344ed78f7', '8', '2', null, '[]', '0', '2020-08-13 15:34:01', '2020-08-13 15:34:01', '2020-08-14 15:34:00');
INSERT INTO `lied_oauth_access_tokens` VALUES ('dafdddc668b26cd68b1dade1370f52e4c1868961563238817c7c1da2daac01fd2133a218664dd49f', '9', '2', null, '[]', '0', '2020-08-13 15:34:13', '2020-08-13 15:34:13', '2020-08-14 15:34:12');
INSERT INTO `lied_oauth_access_tokens` VALUES ('17cf6cdbe9042a8b202c1d33582114dbf12b8fec77db0bca365ad52f50a93ed2c5a7e11d6b092801', '1', '2', null, '[]', '0', '2020-08-20 17:51:11', '2020-08-20 17:51:11', '2020-08-21 17:51:11');

-- ----------------------------
-- Table structure for `lied_oauth_auth_codes`
-- ----------------------------
DROP TABLE IF EXISTS `lied_oauth_auth_codes`;
CREATE TABLE `lied_oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `scopes` text,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lied_oauth_auth_codes
-- ----------------------------

-- ----------------------------
-- Table structure for `lied_oauth_clients`
-- ----------------------------
DROP TABLE IF EXISTS `lied_oauth_clients`;
CREATE TABLE `lied_oauth_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lied_oauth_clients
-- ----------------------------
INSERT INTO `lied_oauth_clients` VALUES ('1', null, 'apiato Personal Access Client', 'kf3wij6L3MWaUtmH4da6RMzxzoYrfN12qXkxqWR6', 'http://localhost', '1', '0', '0', '2020-07-30 06:39:08', '2020-07-30 06:39:08');
INSERT INTO `lied_oauth_clients` VALUES ('2', null, 'apiato Password Grant Client', 'hrC6pW2peaCZqhrquOWKQdeCgooYHELzoflHzUEX', 'http://localhost', '0', '1', '0', '2020-07-30 06:39:08', '2020-07-30 06:39:08');

-- ----------------------------
-- Table structure for `lied_oauth_personal_access_clients`
-- ----------------------------
DROP TABLE IF EXISTS `lied_oauth_personal_access_clients`;
CREATE TABLE `lied_oauth_personal_access_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lied_oauth_personal_access_clients
-- ----------------------------
INSERT INTO `lied_oauth_personal_access_clients` VALUES ('1', '1', '2020-07-30 06:39:08', '2020-07-30 06:39:08');

-- ----------------------------
-- Table structure for `lied_oauth_refresh_tokens`
-- ----------------------------
DROP TABLE IF EXISTS `lied_oauth_refresh_tokens`;
CREATE TABLE `lied_oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lied_oauth_refresh_tokens
-- ----------------------------
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('274dfe9243da1a85b244d89f799045282aa1e69a1ee3f698865d89ec2311940587248f27268ba188', 'dc19cf1ccc8b1621f8c23bff6bcf8b5c8fd732c10a36c4950437744d8ee86dc5acafebe202c6d176', '0', '2020-08-29 06:39:30');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('14dd603ae713ad76798986eaaa8136b1099d4bca06d02d09fe0bf0505c7ebe2a51b7202a6bdffdba', '253815742ea1c12564b06785ae15f1f20a50673001b5b3fec6bbf5d571bf217f4fcaf5ae8d35635b', '0', '2020-09-03 03:12:31');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('3059324ec97011675992563795f4cc280ee3765cdfca74aac10e855a4bdf000fbfad3dfe3f67a811', 'e002b20e24047989dc4a041fb0fa5531b647671d7899c23f1f214b4ba49e4b0ed027a02b28240a3d', '0', '2020-09-04 14:23:11');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('ddd03809856c3796cd76ad657d2aa29d501fd594899a4e1e13680321161403d5167584d5d9b66ce7', '80d72fdf1d19ceea2bdf9af464109263292605f2e0b90f88a86db7979fc53a010ec7ae5e328869b0', '0', '2020-09-05 14:01:45');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('2c55fd06046dba42ce2154fe51f23bb5e4d21bb7f366b7d4a3e6dc184f2e5383bcafa41e285056b6', 'b22bc4655fe0f1d9f0fe863c44e12881cb53922214fdb6318e9e9a5bcaa091fe6ceefe7ee67c345c', '0', '2020-09-05 14:01:58');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('4d82318d5d3ed9fe95072b2a4d0c44a507ebe674b81c49782464588d44baee3cf951a8542a52fcdd', 'a71614fb68cc9e79d8e30334a9d31a10ceee5392fe6f6ef86b4e0fbc337a07ab43218006e88a4b91', '0', '2020-09-05 14:02:13');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('8f93506e93bafb9e4a6acade1f172dbaae79735647fd82795d580a6c0ee9154eedaae5c30d463941', 'c4ad4851aa972bd7a0a4ff1f721294fce2260d94e0b1df21aa18f9e87408450e49616a4dd6490973', '0', '2020-09-05 14:02:32');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('aeb1ca6e2cbca91b07561c0916e88f951abb03edfa75c21d7d6092e1bedaad6833d10554a7116f63', '770ad1fbaf7a1d4dc1ddba7909528724562d1e931a83df6ba1a57b26e1e68c6bda6582cca78da486', '0', '2020-09-05 14:02:45');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('17c77bf1fa4805c2cbc41f2b5a6268540b234d16a2971af0c93a00991c67f3e9d92dd7e03aede3c2', '96e19526c5cd642ce002d80ca3b7aebcdd67f1c0fade6f989f9e4a886aac0e7e4b132ecd455fa109', '0', '2020-09-05 14:03:58');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('8b0986b4602624cae0c048a62fe334a8447152c0d774f4585518ddd3f4985e39763619a2d48246e0', '695348fd0e7c81c877d14dd658c9ee0b250ba5fb61db75fe8271c0b3ef01b2e8393d105bf813868c', '0', '2020-09-05 14:04:17');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('f76dd9a35e508d7d2b5e673cc6b8519e0d8ac803dff7f5b55049e1418be06f058754530621246718', '5c0f99c7152992c9962554a8a1e4ac81457bf12a4dbb35b6b378e73ffad690cee352c7a9df243785', '0', '2020-09-05 14:04:23');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('2cce1f5b9587091806928025caaacefa90d189a22c0663ca2dadc570d0ab39d3a7831f8d0b0ace1f', '9e7d55daf980b72ac4d2ff23568db6278b09d5784d0e28d09db3dbce9af7485efaae41c5a9664f29', '0', '2020-09-05 14:05:26');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('dfcb5333af91512c0a04e99760df2a0ce35133ad8625c88ded7f4b55b42629696abf1e6bae9c1f0c', 'd1639f15a488859a4cdebd6842ca85dea4f9a5a02221183a9b355b49002f32837fc11cca4ca1ce12', '0', '2020-09-05 14:06:00');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('622fa5f9fc33d3bc4130a19aab2ce8c122992ec4510883cbc01ce1f7a8a61d081c340fdff81426b7', '0031b9a437f966e2c4bb32e003a4b29b79e101a7e75a95012926a209513a23c732ccc00b9a2e581a', '0', '2020-09-05 14:06:28');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('a6e47e592bf42c99c6ec9bcae69d96bd53e2835b94ab99fab66a73ee79a2e7617cb673006c9ac914', '202c5749a03d8923bf61e5ae65b64c48dfff648d18087e51a798743d66c730c1135c99398d5c12b7', '0', '2020-09-05 14:06:37');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('b8bdc189f6678ad6754577504695f80ad8d038183528b311ae5153e84f25fa5130916dd4879fcacb', 'eecfac798425a4510b1a3ec2b5969c2c5b96c2f2c5b6db17ac012dc231611c9ff1b63cd8a6e20426', '0', '2020-09-05 14:22:56');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('49991529eed248fec433f0be5f408b5b1d35bd6a1444dd55283529a74ff3532121f8d94ff0d2e32d', '840a0e8cc335351832308f0e8cd8491d0ef7f8cd26441670733e38a25d47dbdf67dcfbae0a4ce5ef', '0', '2020-09-05 14:23:20');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('6ef8121b8554174a3efad730d778e2304a4b378e036a60f0a76966bdd00d4675bfbd061632a46aa2', '5cc901b2ba73c2ae9f9bd7d8e55f7792dae047f112efbdb528e3327f4c29e6c4aac4a4ad53ab8d23', '0', '2020-09-05 14:23:39');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('45ae1b5ec174400e5d1f329c97e44a77a62768b207895d5fd975a79ae57d7b657cea4e87c2e4d594', '900f562fec924d15dd5eca2d5b079147dd0f1a12c2149912b8dd5a0c1b97dd08a44f801899d361ca', '0', '2020-09-05 14:24:07');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('51c878629ad28721aee1ae143d4303d0c4c86b22a30d83ce565c53c11761c2b0ddaca0255f9f8125', '31c92044381f0fe3dd8e2fde8760bf33b352a23ec9f5f0495c2a2992cfac4ee2a927ae63c9461b60', '0', '2020-09-06 15:53:42');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('a603aeef61ea0f2aac9a917221db79f0150a9423dde84e46c57f806089c56acd15fc95f31f5dcbe1', 'd1766b9dce7b74d4a9bf2d01932b81fab4aa515ebcc0fce56dcc0fe02e32f94f227a00fc13274be7', '0', '2020-09-07 15:53:57');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('a2e622d60f82fdd3705005706e57123aa8d412c3a648e17e2b817ca07635a96f7d42e44e15e7e30c', 'e43ff54a02e907aa27525ecbf9e99eae58efdef0a41d7f5a67ee9df3173f62ec8351aa892153d3b2', '0', '2020-09-07 16:06:12');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('b92abf64e1ba75ea3f6c17b52519707f7ff27aa69148f1b08148587ab7b3c3a391b066d66efa59d6', '6d1f6fbefe85fc2c099b0139d42200186914ce1356bf671c0e79e0a7a55b3295f3b785b09a78f303', '0', '2020-09-07 17:14:42');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('2496db337f747aac116994c05138d4686f575439aaf8dc18e282cd9c818f6089df9d3d3ec5c30f05', 'f2dbc467775f0e2b3ce5afed122b719a433d046a13ea059a781e4a4924c1a47333ebe945a44f4a4d', '0', '2020-09-07 17:30:13');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('b94054e1054cdb8b55ea104e54f0454a23eba152f04a9fd6da6e03ba1d5feb16df0671e5efb524f1', 'f450d2cea2ce5a8c2e605dce830aa033e4f0ff2f5d92df523309f32cb02c3b7747d60c8b7a69220e', '0', '2020-09-07 17:34:17');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('45fdb9095cf4bb229aa646382248068ab09fb54ee4f43a443e16c46950abf6727e4e340472242194', 'ddf843f58d034863c6db9c396efb58c1a91e6a32ac1a571d3c3c7d8e344747fd8eb3f32ffeae6e3f', '0', '2020-09-07 17:36:53');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('37b4c6e72040235bb474d99a8b476a541041bc2451e9d19df47abda298762f69def71ac6cbb9fa90', '906742e0c52c88ba0c0ede3bba5a1a0e632c6d6fee1faea15e05098a565eed1e0391ebf7f15fd0b8', '0', '2020-09-09 13:39:16');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('094fe6ed0694da8739c7f37860c99eaa54b762ee8225012a9c1f8cfc9d40684d18567b3493a2bf10', '64fe5194a6f9416477ac67a8d29a30f3048137e4c842903b1c9131f2d3a745942f7c352b6d09b246', '0', '2020-09-09 13:39:49');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('be4323d21d0805ab295924e38ca595be592b6a000bdb6ce05af76364e6b28a28ed536bde4aced1b4', 'c161a94b10e4ff603ca558269b918d663d59cc8c281ae92b724d8081e344b4622f6543804db50dd6', '0', '2020-09-09 14:22:06');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('63580fd3f1892486ef4a0b457f912a6c403cac3309966cff43acc989af52f2a3087ae41738c9f373', '159284a6a943e185e8fe3c20e22755247a9c57afb5ea7506b9054c6a681f5b8667faac9b686b98d4', '0', '2020-09-09 14:58:32');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('b592965bfbe05c9147c8787c951da8968986f002473c159f8ae51a04e7233f943b4d0efeea3284e7', '97ec5984b5f894f3cbf171b2978c45d9d040837b295b2215a80fa7ddeff12f057e336b5a834e4fa9', '0', '2020-09-09 16:15:26');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('2e72e9fc169e97573e70d274b88de9c4b68e0c0fa4ca1498cb7fc041582f7a14f8d1a141bd970647', '812fce5c1bb830e8b414961cb386ae8ae795ad76739c41eff3050b5ec91daad0baccc0a7a0b95028', '0', '2020-09-09 16:55:36');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('32af8f4520a669aaecf07b2cc648d35250c8e3f45ba500f79a775868eae70a17ae509945b8e6415a', '007756e2794c93234d1946b26667937ec50b941de2d706d5eedf9135746849545e707175fac9bf3e', '0', '2020-09-11 09:14:29');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('35c66aeef68fc4f291c79cf07bd414188ccfc91b54de0f43c22ed09a29c01d04fb7f3dfb40fc8b93', '7a5fad485aaf1f952bb42c229ca215c921f2cedb58c9de6a53bd18125dd054ad0461be16ceb94978', '0', '2020-09-11 09:47:46');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('964487df7de31f29a40983ae5b51de47eec1b6c48dcff773609baab3ff9565233213d3c3d5a04ee2', 'a6b95d5b17ee55fb793087db3e6df02373f6040fedceff3d5fcc77f1d3f3d40203cb002cdf377ca8', '0', '2020-09-11 09:49:04');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('b8c60a764278a6a6110ee83d5d1c148c05c75d5a55243c297acaf618799c2fe92bbe226ea40d389d', '586d0bcef432ef3aed11047cb9e0dc9a8dcab850129cba81bc1b2519c0099438ca93d55cbc13e30c', '0', '2020-09-11 09:49:12');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('c30a38ae7af06a6661c1e71f4a0972cd12ed3708e8e444fc7cd8e34c974b749e3250479d79f2c745', 'c0e260dc9b0e28fae1a22d86996f323783e51da766b1e94e59faa8b18f3f7ee919c99a30eea4ad16', '0', '2020-09-11 09:49:49');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('c3877e06adc22ed2151c6a2eb1473062fe06a50b3968b8d835c191a2457fa3a957e3baa835972891', '789db1a9290f92bd92006fe7b75da1f5a2c120dd735e4b262157208b08eea4abca96c6fd315415c4', '0', '2020-09-11 09:50:44');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('51440ac678b37b7a01f92e3102d971f289c06b02dd066340cd862996f95ca4e4b379064c73c9d008', '8402bb5ccaaa1b40bdce10e74522a92f55f31a811196eed5ab866e75132c6f91f5d31ded39755091', '0', '2020-09-11 09:52:30');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('90f2db621db0e4d2e290381635e2644f58b19379b8a3f9d05ba4dcacb52bba285ee32eade86f2ee9', '58019e2ba4579f7f0db44c5dcff54a4dcd0af726c3bc2d4af27f082c126a2e9ba04b4e66bae793ac', '0', '2020-09-11 09:52:44');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('b3cafbfe082687266b6052ced3a55ea39175a7ba4f30b61ff17185de09b8230b57d6f75473a03f0c', 'bef77af9eb139880ea28146592bfbc17b516bcfb85cc95d6c48d5cecf419dc67d1d82ceb7130970d', '0', '2020-09-11 09:53:08');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('9822abcc99df78cf002797d6c8474a343b99d7cc2a1c1aa7f331127a29ea3b572779b966302ff295', 'ad8b97fce9d36b65eaeae8f6908f67bacd727cf447239e2ad123339dbe1d221452075dd427f4d106', '0', '2020-09-11 09:53:18');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('a20a2eeb90a0bced1267e8dbd86de3f23374900b3ae45a270980f8f0c7d72b23a178ee29a92a5b6d', '59060e9ada7e56d523e60ea90ee85b931ada36fe05d31e6e0e2793853cd4665acaac5e44bfafab52', '0', '2020-09-11 09:53:25');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('d8da2489ef83216903cea37638b3d5a3601afa2d81de6c692c4a711073bb6730c459957b61138faf', '8984b59b6564300648fc3514e61bcbe092cea1b6aaf820c58b4d28c13c3b6aecce496166cae94058', '0', '2020-09-11 09:53:38');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('c21fd723e571bd95b05f4914a0d91e3a79a2310609783ed424ecd6ab237a323ab7bba9cfc3a38b73', 'a86ae79c092cfeb8d2579677d3e04695e68e4e94dcb706feb0a6b0c49c7de8687cd647a74004fef0', '0', '2020-09-11 09:54:02');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('69336cfdba50c9d67992d7f222cffd1f03e5f5005461145170b05b24cbc7187a624041a27789fde6', 'c995cd327fe1dedb20f6d55d8d0854868b5a6c5e0120b68e60745d67f6f483fcae411856cff5fedd', '0', '2020-09-11 09:55:23');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('a26244f58e8d66d7929f460f1622a0da22d515ab9a7cba5cbe4ae75e195ce1d18fba42cae639a60c', '67f0a51398467fe1f1e1c10a196eee7432e1a1e305b027ec4805b36c2d9890f31c913b94e7d7d3a8', '0', '2020-09-11 09:55:34');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('96e5c328a61f27ae1717e80a0c85312162cfab19a741deb92e25a84b01bb851c0e6943debbfd5063', '05ecb5204e01f8135b217931dcceed28ee57c7a2fba0577e52eaf57805d38843bc00b855831aa2dc', '0', '2020-09-11 09:55:48');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('cc22682b612880edfbb71f5d0e95041ee26e7a1d1fc8d38a10156cf7b01f2d130fe56d4c827d7a37', '3cd36c62a2dbfb70d7af1c05466424b7e95991e778a1c1f619bcdc1477f95a47d314a3246b72d383', '0', '2020-09-11 09:56:00');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('28588aa7e1630a6ec0362500a15685c45abf9378a4e58da5433d428b2d05504a2994bcdf63e9336c', 'b85cfcc50840b64db773ce1c5738b71852f5339b498f4f8a84515ff4470bab34ddbe8309e00f0bc9', '0', '2020-09-11 09:57:13');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('cbb2d3b8554fb48ce723358a4cf365cec246f91d6334b37056656f7f0f3f237e000e2dd3035d5070', '2df52a912500c789d7cf03d551794b8ca4affd22993f51b2bb82465305e1b0968d291e121b3e7cd6', '0', '2020-09-11 09:57:51');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('58771b153b7f4761e8b01738ad7fac3b111f313187acfcb1d1a538f076d3de5268a4c3c8d8636cbd', '50e82bbafb8d6b04ec465899a34a8dae428d2dfe125dc2564b4a21f395235fcaa145daa4d067356b', '0', '2020-09-11 10:00:51');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('df1109c61f84e962d8a5d1c0623d8b92fe9ae1cf80945d254b33e2ea9ae9ef2ae9c3f5f9c754ad37', '423152999778ee89175c1b1aa1c3d1c74dd42678f304782fc0de8858a6f748c0fcde200ed3345f23', '0', '2020-09-11 10:01:14');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('3d81ce42cef5c3dee874d18b4d9cf91e358ce5eb22adaf833448fb0400b624973140478b1a94f882', '05ec3d688ebf4a08816c4309a8c0713cb3a5a2fbe116a832b0ff77fe5fbdad5999b0083e175acb42', '0', '2020-09-11 10:01:52');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('32450a22982b02d77bf161ae5e3306f3174265bb89cd15468dd28eff851734549fc62faa5f0ad27c', '3375118693ecece830e7669b0c25c3a2aac7885ed9c6a22c6b3ae79dd2a74c6713779e22a76e3dfa', '0', '2020-09-11 10:02:01');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('9126f12b6da82aec2169e1984d0289e2e86c21dab40f43e67cb09279d9f7c459e71556809d156b6e', 'cacdd00c194adfa574f8e68208a11f262c3312616ddbb2e6f7c6d9fe61e011be9e1fff3074defb53', '0', '2020-09-11 10:02:16');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('68864ee129d8bce899723f8ef3e9b4739731072f57575c50e7c76fc4ad322fe3e9e480e3c5957539', 'a4926469a80d579eb0c665e4e69d15226b1d8759c50e5f531862a2604c1c97c8b750759326de984e', '0', '2020-09-11 10:03:13');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('818fe0b3ceaf32b696b66637a2e65d5e29cc627b336cf7e9c8b076ebc17c3dd2ef9287f96352c570', '09fb0f7f0c588235f19f412d1537a849bee4017f825d4386523ed457a1e0c07d727a73829a3ca793', '0', '2020-09-11 10:03:29');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('c72f657df0c9bee0694586feaad9a143e0cd5cd8da79f79bf74f7914f5e8bcdbed2b67437536ad9d', '0d960dd2870c2741c5fd2a70671969b274c5fc5b309d8a134f3421aa208a9c2c8ce99262b1bae302', '0', '2020-09-11 10:04:55');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('186dfe7fec793079e11324fb5bc59af6192402261a250117dbb9f3c05b354ea3cee00c9159a62570', '13dd037632ea7b861d0751e92a519a6c9d21f2aaa0d850e91241c0cc4cb3bde1e7031475a5d5ac80', '0', '2020-09-11 10:05:12');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('211676822024d6e874fde07b33c922fc19e40da51a4bd4e62cb30a9b32c8a0426cd75746ca164518', 'ec67df814fcd376dc7dc808aa16ca3f9785a68b07cebcb354537c998af6cc5f4597c2e33685490cf', '0', '2020-09-11 10:05:50');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('0eda8ff3eb442391d6e75a69340181d3ea763b110c00bc1289198a458cfcedbc56122c86ff3bc707', 'df47ce22d16deb970630003a8fa881e0a0f196457b46ca3df04bac984c287a8e20411603c1a766d2', '0', '2020-09-11 10:09:55');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('e50bfb3ea12c11b2ef5dbfe063af5623560994dc99d8da3b8d3c978c4269f39810a614c5d934fccc', '5117c9477e20477416cf211aef05954af8fa8a075822ecd2a207940e15075037e535e0e6e8328c39', '0', '2020-09-11 10:10:02');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('5ac98ff2418c68cb62e458436fb8eb42d3ccc1219ca6f9cb9dbb572f3a509ffc327e8b4f94e5464c', '137708cdb6ece3ccfa24e3ae2f621d9877923ed0e13d146e8cfa0312b06e08a66eb76e1ac55dfe4a', '0', '2020-09-11 10:16:25');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('edaa289292edf0d43a301f51252cb583d033a60a0d9f375ab2e804acf0f63a40ef6ed1d849a104cc', '1d3567dafaabac676e473f6468121726d81fe115a3a78e12724de5c27ab30d500d7e3188c7b0ff9e', '0', '2020-09-11 10:16:34');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('1fddcbe9a0d2770eef2324f64cad7f447528cae95db082493d86e35e4d7ae59ad8c483a0e77edbc0', '662720a20d4487e70166fbb391bba173f174b7b101eb467670047253c8b24b5031daa8650a5cd4a1', '0', '2020-09-11 10:39:01');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('ed433da89b9b702ff17e2a16ec86c28a6e0f1971d5fb729480d59258772d3f4e48b0264701d546e7', 'd9da3b1f07d24b163259546899eca1b65f2c0f612fea4463a2889dd7a365f3c69ffe0bc602444bf4', '0', '2020-09-11 10:39:08');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('3b09c6cf162d1431fd9f69336bbb5bd41e68ca2ba64bea5fcbc25b7dac554887c38ae85b89ac223c', '9629c223bbe385549c056de8d85fd6961e9883f54820e2a3efdde58342a71f3f70faf1e4768eb148', '0', '2020-09-11 10:39:28');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('eb228d448354804a6dbdd32cd7919a794a0e676a723baac16af5c76ea1d317ca0e4a4ee95c1cc232', '3f603fc746e2dd24d084ddce4aec18966543a674273b557686981a47ad0dc56393327ae79bc93472', '0', '2020-09-11 10:39:41');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('e7515684a92aed9e3c54a448a6c5eb6ceadce16b512398f732e4abf63148894ad3150dddf09dcf32', '707200ad8e33668519b804a0529ae0ff905b0e66b3e3328f9e53ece035ec69c6d626c67740f20881', '0', '2020-09-11 10:39:55');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('1d328b67e789b1f925fcc6a57a4bf53d0fd7f76ce0dd748a089e6935a2687f9a0bf03d2d36f06df8', '55d7a46d787352bf80393169833ebd2d7386aa59099cc241b55afa18548207f1c4734c56caeaa931', '0', '2020-09-11 10:40:13');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('2aa2d4c9a42a187cfa10c98e32ce5520b1cb96d89b419ab8b33b80d457ba445415d8851488c82046', 'a583fd54e2d06a733e6360162f116dabe5a762a0ea7e2fa31d5a74453465b52c698346a58591be43', '0', '2020-09-11 10:41:00');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('c15e3ed22d8dd7b112b1d93a4f36f48101ad0327de4d15697f00f6137bd5bef51289e693bbdedf91', 'b1802e3714c4175fde711dfa379e9077d15fb8af36ee26f13076d225ce5e50cecc7c01f894fea27b', '0', '2020-09-11 10:41:20');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('8aa6582a28e892d81655212e7859ddd28b833246e5dfd06612ee5162238cf961cf405f079f9a1a72', '732cef788fc0155406ccb7969e14b82d28ccf9342a75a6d3b76bd3f3cd6c20f8b1ff6ec4011d8385', '0', '2020-09-11 10:42:12');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('2608a9d029ce5335df8214ec705f0949e3532a2813992ef812e5d2598f21d6b460e4b45ddb3d767c', '6dc666295bee8e229fdf776917819a1d07f00415364f6655366b30ce67c118dcc349958a2e26b041', '0', '2020-09-11 10:42:29');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('5f6068d4f66360bf4977884c9a1d9a6a5788b3d15f8c807fa64246aa6a96406cd3611a9b227da6c2', 'f7764a09aac644cc3656d6c7eebb0b9a986d7df3a979a01b363ecf70cb65ce2d7bac9abfd91ab593', '0', '2020-09-11 10:42:57');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('5ba91e42f426fc5d88ba62b385fc08e897e9d7c8a66fbd56094fa6a699aca3f8bebd7f817927af59', '0236e6cf89fd2849d94699e2f514b8de25971e0fc5967b400fdb6f8e489cfc753da7ad87dc55cc40', '0', '2020-09-11 10:43:17');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('7a9902951c8b6d34fc1cced57ba3080183d576de4df390707dbf7760e2d87d4fd8875b0b44a9ead9', '7719c2f0b87e49de97056c6b31342867c746530db7e7b51370d82f6b8e4357750d4aa73a245719f1', '0', '2020-09-11 10:44:39');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('05d1b5ec3dfa8951be0b7ece1b3e81722b4bc8b6a41442abe35c633eda256a657446595056b9a0b4', 'aaffcab8c3644e2ea9217331d92d6caf7ec42d830a678bf80225ca76c987d4bca709740f272ffb19', '0', '2020-09-11 10:46:09');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('00fd3fac5dfc801ce074988d347f13331ba3f4c8d510423d74e919b90b71eabed7536a9f43cad659', 'cac06a2df05b1644fd88ca7fcbacc8de1a2edce195512f5fc946ddc51f4a80ba74f8ee03987ee91c', '0', '2020-09-11 10:46:36');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('10a9ed197a4f6ab92282196d43e7f296b9893aa1e9b654897400fb81b8841a1b67b402cecbad5a98', '9042221e7f2f86fe094d7c6b477d4f942eab623cddc0c6e52edeb12984af30d998259d99ca0721cb', '0', '2020-09-11 10:46:48');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('a35976973a96b4be2c147c56919d5cd9db2800b0e4f9d0c2a4ed493a7493ca0414d0c56bf34b0790', '5bb959a5782bc3809853f2e586caedee5443af156f6d085d1f884a5e98947ac16a86c17b777c8caa', '0', '2020-09-11 10:58:15');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('a4257548b7e691a8e54045bd372fba556d1af2100753fe92c0d19fb1b463068e12205926ca5f3bbd', 'fb96f8d1b5520d7166746aee1a7d2cef6d0079ae29017195a022e5336179a491ed8b55fac5dd1e24', '0', '2020-09-11 10:58:54');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('f33bb5aa3aa92ab290d48203e22a4a1b9c03107055d5adf6453ae64f3a6e93be96ec88d56af1662a', '4542513f55c189a88917722b98222528026cdae1e62cb603e776df2db80573dc51ca5dc2842d6ba6', '0', '2020-09-12 14:35:19');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('3feb027d59c55134b900036662cc2ce20a331c7d1b6c7ae9e3acdf9ea896e402540d4029a392dbb7', '09e1bbcf1d1ea553cdce7bd31f15fc147e02aeb4cbad02696349bcdf1d26f1371e4698d9ba256388', '0', '2020-09-12 14:47:03');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('f2ae61a2562763be8b026c2a2daa55cde277c1b6c0744fcd7893f3a33e7cb33b303f6631bbf1436a', '0b4af6c999ad4113b4df93908ebf35528a8519f05f7cade06af87c7f72a58484efe4f3d2f3bfae0c', '0', '2020-09-12 15:27:17');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('f076d1ff8a461a3374d66177bd67d6818f40622e5b631df8b40ba40381a34a3d62e3163939f6da3f', '9ae4b997c34da573fc7452e6bf0032c14573becc243a0e0a61015029948dac12a92a906ebce361fd', '0', '2020-09-12 15:29:08');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('9763f9a2e075ff1ee58fcef40eac0a3beb4063067c6c69afb360437d11e5f88791dfe70179a5e698', '9b9c68c7e1dd9ce44c27f6a8768c88b09358552e16d0aa3ba8d8121f13206c94398e165cc33fd3d4', '0', '2020-09-12 15:30:34');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('91bc916e34576a002c991e8eeee7baaad4b91afd47bf4c368c09f15a1747e11e9c466260e6b96c66', '15b49ac478d522ab83ce7f6475546611f2622d10d4916f8066acd140eb4aceb949fd4426e9ac1705', '0', '2020-09-12 15:31:36');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('9f565727b42e55225b36da95bf792b84a1000afe5da0c59650c74d51bb2a3a680af06f6985723c9e', '4b05665c9951a6fc85d709bae9bf3083150cc5c1013cc32161a4cae69571ad8c34c054c344ed78f7', '0', '2020-09-12 15:34:00');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('34ca59987266d251b0eb3ffff5e9019eee5122d321b2b0fb0214c4ca28e1b6f4089a93df222f5e49', 'dafdddc668b26cd68b1dade1370f52e4c1868961563238817c7c1da2daac01fd2133a218664dd49f', '0', '2020-09-12 15:34:12');
INSERT INTO `lied_oauth_refresh_tokens` VALUES ('0a6e46c7400bb8bcd1b4897387cdab3305c0e0c21fc78a85ef3daa6fb0c0ddb30a3b73a06d99c64c', '17cf6cdbe9042a8b202c1d33582114dbf12b8fec77db0bca365ad52f50a93ed2c5a7e11d6b092801', '0', '2020-09-19 17:51:11');

-- ----------------------------
-- Table structure for `lied_order`
-- ----------------------------
DROP TABLE IF EXISTS `lied_order`;
CREATE TABLE `lied_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `temp_id` varchar(32) NOT NULL COMMENT '区别订单多商家产生的唯一标识',
  `temp_sid` varchar(32) NOT NULL COMMENT '区别订单单一商家多产品的唯一标识',
  `order_id` varchar(32) NOT NULL COMMENT '订单生成唯一编号',
  `order_num` varchar(64) DEFAULT NULL COMMENT '订单流水支付号',
  `user_id` int(10) unsigned NOT NULL,
  `order_status` tinyint(1) NOT NULL COMMENT '订单的状态;,0关闭,1正常,2完成,',
  `shipping_status` tinyint(1) NOT NULL COMMENT '商品配送情况;0未发货,1已发货,2已收货,3退货',
  `pay_status` tinyint(1) NOT NULL COMMENT '支付状态;0未付款;1已付款',
  `brand_id` int(10) unsigned NOT NULL COMMENT '商家id',
  `product_id` int(10) unsigned NOT NULL COMMENT '产品id',
  `attr_id` int(10) NOT NULL,
  `product_num` int(4) NOT NULL COMMENT '产品数量',
  `product_price` decimal(8,2) NOT NULL COMMENT '产品价格',
  `product_intergral` decimal(8,2) NOT NULL COMMENT '产品积分',
  `total_price` decimal(8,2) unsigned NOT NULL COMMENT '订单总金额',
  `total_intergral` decimal(8,2) unsigned NOT NULL COMMENT '订单总积分',
  `pay_price` decimal(8,2) NOT NULL COMMENT '已支付价格',
  `pay_intergral` decimal(8,2) NOT NULL COMMENT '已支付的积分',
  `discount_price` decimal(8,2) NOT NULL COMMENT '优惠价格',
  `shipping_fee` decimal(8,2) NOT NULL COMMENT '配送费用',
  `region_province_id` int(10) unsigned NOT NULL COMMENT '第一级省id',
  `region_city_id` int(10) unsigned NOT NULL COMMENT '第二级市id',
  `region_area_id` int(10) unsigned NOT NULL COMMENT '第三级区id',
  `address` varchar(255) NOT NULL COMMENT '收货地址',
  `mobile` varchar(32) NOT NULL COMMENT '收货人手机号',
  `postscript` varchar(255) DEFAULT NULL COMMENT '订单留言，由用户提交填写',
  `pay_id` int(10) DEFAULT NULL,
  `pay_time` datetime DEFAULT NULL,
  `to_buyer` varchar(255) DEFAULT NULL COMMENT '商家给用户留言',
  `type` varchar(16) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order-product_id` (`product_id`),
  KEY `order-user_id` (`user_id`),
  CONSTRAINT `order-product_id` FOREIGN KEY (`product_id`) REFERENCES `lied_product` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `order-user_id` FOREIGN KEY (`user_id`) REFERENCES `lied_users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lied_order
-- ----------------------------

-- ----------------------------
-- Table structure for `lied_password_resets`
-- ----------------------------
DROP TABLE IF EXISTS `lied_password_resets`;
CREATE TABLE `lied_password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lied_password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for `lied_payment_accounts`
-- ----------------------------
DROP TABLE IF EXISTS `lied_payment_accounts`;
CREATE TABLE `lied_payment_accounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) DEFAULT NULL,
  `accountable_type` varchar(191) NOT NULL,
  `accountable_id` bigint(20) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `payment_accounts_accountable_type_accountable_id_index` (`accountable_type`,`accountable_id`),
  KEY `payment_accounts_user_id_foreign` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lied_payment_accounts
-- ----------------------------

-- ----------------------------
-- Table structure for `lied_payment_transactions`
-- ----------------------------
DROP TABLE IF EXISTS `lied_payment_transactions`;
CREATE TABLE `lied_payment_transactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `gateway` varchar(191) NOT NULL,
  `transaction_id` varchar(191) NOT NULL,
  `status` varchar(191) NOT NULL,
  `is_successful` tinyint(1) NOT NULL DEFAULT '0',
  `amount` varchar(191) NOT NULL DEFAULT '0',
  `currency` varchar(191) DEFAULT NULL,
  `data` text,
  `custom` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `payment_transactions_user_id_foreign` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lied_payment_transactions
-- ----------------------------

-- ----------------------------
-- Table structure for `lied_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `lied_permissions`;
CREATE TABLE `lied_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `display_name` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lied_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `lied_product`
-- ----------------------------
DROP TABLE IF EXISTS `lied_product`;
CREATE TABLE `lied_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '商品ID',
  `name` varchar(64) NOT NULL DEFAULT '' COMMENT '商品名称',
  `brand_id` int(10) NOT NULL COMMENT '商家品牌ID',
  `category_id` int(10) unsigned DEFAULT NULL COMMENT '商品类别ID',
  `virtual_quantity` int(8) DEFAULT '0' COMMENT '虚拟购买量',
  `line_price` decimal(8,2) unsigned DEFAULT '0.00' COMMENT '市场价格',
  `price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '销售价格',
  `description` text COMMENT '商品描述',
  `content` text COMMENT '内容',
  `is_real` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否实物，1为是',
  `is_audit` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '审核，1为审核',
  `is_on_sale` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示，1为显示',
  `created_id` int(11) unsigned NOT NULL COMMENT '创建者id',
  `sort` int(4) unsigned DEFAULT '0' COMMENT '排序',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product-category_id` (`category_id`),
  CONSTRAINT `product-category_id` FOREIGN KEY (`category_id`) REFERENCES `lied_product_category` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='商品基本表';

-- ----------------------------
-- Records of lied_product
-- ----------------------------
INSERT INTO `lied_product` VALUES ('1', 'lied', '2', '1', '1', '112.00', '0.00', '1231', '&lt;p&gt;&lt;/p&gt;&lt;p&gt;1211&lt;/p&gt;', '1', '1', '1', '1', '99', '2020-08-03 10:43:33', '2020-08-03 15:39:37', null);

-- ----------------------------
-- Table structure for `lied_product_attr`
-- ----------------------------
DROP TABLE IF EXISTS `lied_product_attr`;
CREATE TABLE `lied_product_attr` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL COMMENT '规格名称',
  `sort` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lied_product_attr
-- ----------------------------
INSERT INTO `lied_product_attr` VALUES ('1', '颜色', '0', '2020-08-03 15:10:28', '2020-08-03 15:10:28', null);
INSERT INTO `lied_product_attr` VALUES ('2', '尺寸', '0', '2020-08-03 15:11:27', '2020-08-03 15:11:27', null);

-- ----------------------------
-- Table structure for `lied_product_attr_map`
-- ----------------------------
DROP TABLE IF EXISTS `lied_product_attr_map`;
CREATE TABLE `lied_product_attr_map` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) unsigned NOT NULL COMMENT '产品id',
  `product_attr_id` int(11) unsigned NOT NULL COMMENT '产品规格id',
  `sort` int(4) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_attr_map-product_id` (`product_id`),
  KEY `product_attr_map_product_attr_id` (`product_attr_id`),
  CONSTRAINT `product_attr_map-product_id` FOREIGN KEY (`product_id`) REFERENCES `lied_product` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `product_attr_map_product_attr_id` FOREIGN KEY (`product_attr_id`) REFERENCES `lied_product_attr` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='产品与规格关系表';

-- ----------------------------
-- Records of lied_product_attr_map
-- ----------------------------
INSERT INTO `lied_product_attr_map` VALUES ('3', '1', '2', '1', '2020-08-03 15:24:14', '2020-08-03 15:24:14', null);
INSERT INTO `lied_product_attr_map` VALUES ('4', '1', '1', '0', '2020-08-03 15:24:14', '2020-08-03 15:24:14', null);

-- ----------------------------
-- Table structure for `lied_product_attr_values`
-- ----------------------------
DROP TABLE IF EXISTS `lied_product_attr_values`;
CREATE TABLE `lied_product_attr_values` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_attr_id` int(11) unsigned NOT NULL COMMENT '产品规格表id',
  `name` varchar(64) NOT NULL COMMENT '规格名称',
  `sort` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_attr_values-product_attr_id` (`product_attr_id`),
  CONSTRAINT `product_attr_values-product_attr_id` FOREIGN KEY (`product_attr_id`) REFERENCES `lied_product_attr` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='产品规格值表';

-- ----------------------------
-- Records of lied_product_attr_values
-- ----------------------------
INSERT INTO `lied_product_attr_values` VALUES ('1', '1', '红', '0', '2020-08-03 15:10:44', '2020-08-03 15:10:44', null);
INSERT INTO `lied_product_attr_values` VALUES ('2', '1', '绿', '0', '2020-08-03 15:10:58', '2020-08-03 15:10:58', null);
INSERT INTO `lied_product_attr_values` VALUES ('3', '1', '蓝', '0', '2020-08-03 15:11:09', '2020-08-03 15:11:09', null);
INSERT INTO `lied_product_attr_values` VALUES ('4', '2', 'L', '0', '2020-08-03 15:12:01', '2020-08-03 15:12:01', null);
INSERT INTO `lied_product_attr_values` VALUES ('5', '2', 'M', '0', '2020-08-03 15:12:08', '2020-08-03 15:12:08', null);
INSERT INTO `lied_product_attr_values` VALUES ('6', '2', 'X', '0', '2020-08-03 15:12:20', '2020-08-03 15:12:20', null);

-- ----------------------------
-- Table structure for `lied_product_attr_value_map`
-- ----------------------------
DROP TABLE IF EXISTS `lied_product_attr_value_map`;
CREATE TABLE `lied_product_attr_value_map` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) unsigned NOT NULL COMMENT '产品id',
  `product_attr_id` int(11) unsigned NOT NULL COMMENT '产品规格id',
  `product_attr_map_id` int(11) unsigned NOT NULL COMMENT '产品与规格关系表id',
  `product_attr_value_id` int(11) unsigned NOT NULL COMMENT '产品规格值表id',
  `sort` int(4) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_attr_value_map-product_id` (`product_id`),
  KEY `product_attr_value_map-product_attr_id` (`product_attr_id`),
  KEY `product_attr_value_map-product_attr_map_id` (`product_attr_map_id`),
  KEY `product_attr_value_map-product_attr_value_id` (`product_attr_value_id`),
  CONSTRAINT `product_attr_value_map-product_attr_id` FOREIGN KEY (`product_attr_id`) REFERENCES `lied_product_attr` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `product_attr_value_map-product_attr_map_id` FOREIGN KEY (`product_attr_map_id`) REFERENCES `lied_product_attr_map` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `product_attr_value_map-product_attr_value_id` FOREIGN KEY (`product_attr_value_id`) REFERENCES `lied_product_attr_values` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `product_attr_value_map-product_id` FOREIGN KEY (`product_id`) REFERENCES `lied_product` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='产品与产品规格值关系表';

-- ----------------------------
-- Records of lied_product_attr_value_map
-- ----------------------------
INSERT INTO `lied_product_attr_value_map` VALUES ('7', '1', '2', '3', '6', '1', '2020-08-03 15:24:14', '2020-08-03 15:24:14', null);
INSERT INTO `lied_product_attr_value_map` VALUES ('8', '1', '2', '3', '5', '0', '2020-08-03 15:24:14', '2020-08-03 15:24:14', null);
INSERT INTO `lied_product_attr_value_map` VALUES ('9', '1', '1', '4', '3', '1', '2020-08-03 15:24:14', '2020-08-03 15:24:14', null);
INSERT INTO `lied_product_attr_value_map` VALUES ('10', '1', '1', '4', '2', '0', '2020-08-03 15:24:14', '2020-08-03 15:24:14', null);

-- ----------------------------
-- Table structure for `lied_product_category`
-- ----------------------------
DROP TABLE IF EXISTS `lied_product_category`;
CREATE TABLE `lied_product_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned DEFAULT NULL,
  `name` varchar(64) NOT NULL COMMENT '名称',
  `is_rec` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐',
  `sort` int(4) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lied_product_category
-- ----------------------------
INSERT INTO `lied_product_category` VALUES ('1', '0', '手机数码', '0', '1', '2020-08-05 09:55:37', '2020-08-05 15:34:13', null);
INSERT INTO `lied_product_category` VALUES ('2', '1', '热门品牌', '1', '2', '2020-08-05 15:32:19', '2020-08-05 17:35:27', null);
INSERT INTO `lied_product_category` VALUES ('3', '2', 'apple', '0', '3', '2020-08-05 15:32:29', '2020-08-05 15:34:13', null);
INSERT INTO `lied_product_category` VALUES ('4', '2', '华为', '0', '4', '2020-08-05 15:32:39', '2020-08-05 15:34:13', null);
INSERT INTO `lied_product_category` VALUES ('5', '2', 'vivo', '0', '5', '2020-08-05 15:32:44', '2020-08-05 15:34:21', null);
INSERT INTO `lied_product_category` VALUES ('6', '1', '手机通讯', '0', '6', '2020-08-05 15:32:56', '2020-08-05 17:35:21', null);
INSERT INTO `lied_product_category` VALUES ('7', '6', '老人机', '0', '7', '2020-08-05 15:33:08', '2020-08-05 15:34:13', null);
INSERT INTO `lied_product_category` VALUES ('8', '6', '全面屏手机', '0', '8', '2020-08-05 15:33:28', '2020-08-05 15:34:13', null);
INSERT INTO `lied_product_category` VALUES ('9', '6', '游戏手机', '0', '9', '2020-08-05 15:33:42', '2020-08-05 15:34:13', null);
INSERT INTO `lied_product_category` VALUES ('10', '6', '全面屏手机', '0', '10', '2020-08-05 15:33:49', '2020-08-05 15:34:13', null);
INSERT INTO `lied_product_category` VALUES ('11', '0', '电脑办公', '0', '11', '2020-08-05 15:34:46', '2020-08-05 15:37:07', null);
INSERT INTO `lied_product_category` VALUES ('12', '11', '热卖分类', '1', '12', '2020-08-05 15:35:16', '2020-08-05 16:03:09', null);
INSERT INTO `lied_product_category` VALUES ('13', '12', '轻薄本', '0', '13', '2020-08-05 15:35:31', '2020-08-05 15:37:07', null);
INSERT INTO `lied_product_category` VALUES ('14', '12', '游戏本', '0', '14', '2020-08-05 15:35:37', '2020-08-05 15:37:07', null);
INSERT INTO `lied_product_category` VALUES ('15', '12', '组装电脑', '0', '15', '2020-08-05 15:35:49', '2020-08-05 15:37:07', null);
INSERT INTO `lied_product_category` VALUES ('16', '11', '电脑整机', '0', '16', '2020-08-05 15:36:10', '2020-08-05 15:37:07', null);
INSERT INTO `lied_product_category` VALUES ('17', '16', '一体机', '0', '17', '2020-08-05 15:36:19', '2020-08-05 15:37:07', null);
INSERT INTO `lied_product_category` VALUES ('18', '16', '平板电脑', '0', '18', '2020-08-05 15:36:31', '2020-08-05 15:37:07', null);
INSERT INTO `lied_product_category` VALUES ('19', '16', '笔记本', '0', '19', '2020-08-05 15:36:43', '2020-08-05 15:37:07', null);
INSERT INTO `lied_product_category` VALUES ('20', '16', '台式机', '0', '20', '2020-08-05 15:36:49', '2020-08-05 15:37:07', null);
INSERT INTO `lied_product_category` VALUES ('21', '0', '男装', '0', '99', '2020-08-05 17:16:39', '2020-08-05 17:16:39', null);
INSERT INTO `lied_product_category` VALUES ('22', '21', '上衣', '0', '99', '2020-08-05 17:17:42', '2020-08-05 17:17:42', null);

-- ----------------------------
-- Table structure for `lied_product_medias`
-- ----------------------------
DROP TABLE IF EXISTS `lied_product_medias`;
CREATE TABLE `lied_product_medias` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) unsigned NOT NULL COMMENT '产品id',
  `media_id` int(11) unsigned NOT NULL COMMENT '媒体id',
  `sort` int(4) NOT NULL COMMENT '排序',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_media-product_id_media_id_sort` (`product_id`,`media_id`,`sort`) USING BTREE,
  KEY `product_media-product_id` (`product_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lied_product_medias
-- ----------------------------
INSERT INTO `lied_product_medias` VALUES ('18', '1', '13', '3', '2020-08-03 11:51:46', '2020-08-03 11:51:46', null);
INSERT INTO `lied_product_medias` VALUES ('22', '1', '14', '2', '2020-08-03 11:56:25', '2020-08-03 11:56:25', null);
INSERT INTO `lied_product_medias` VALUES ('23', '1', '11', '0', '2020-08-03 11:56:25', '2020-08-03 11:56:54', null);
INSERT INTO `lied_product_medias` VALUES ('24', '1', '12', '1', '2020-08-03 11:56:25', '2020-08-03 11:56:54', null);

-- ----------------------------
-- Table structure for `lied_product_seckill`
-- ----------------------------
DROP TABLE IF EXISTS `lied_product_seckill`;
CREATE TABLE `lied_product_seckill` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(10) unsigned NOT NULL COMMENT '产品id',
  `stock_number` int(4) unsigned NOT NULL COMMENT '秒杀库存',
  `limit_user` varchar(128) DEFAULT '0' COMMENT '限定用户',
  `limit_buy_num` int(4) unsigned DEFAULT '0' COMMENT '限定用户购买次数',
  `start_time` datetime NOT NULL COMMENT '开始时间',
  `end_time` datetime NOT NULL COMMENT '结束时间',
  `is_show` tinyint(1) NOT NULL COMMENT '是否显示 1为显示',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `seckill-product_id` (`product_id`),
  CONSTRAINT `seckill-product_id` FOREIGN KEY (`product_id`) REFERENCES `lied_product` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='秒杀产品管理';

-- ----------------------------
-- Records of lied_product_seckill
-- ----------------------------

-- ----------------------------
-- Table structure for `lied_product_sku`
-- ----------------------------
DROP TABLE IF EXISTS `lied_product_sku`;
CREATE TABLE `lied_product_sku` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) unsigned NOT NULL COMMENT '产品id',
  `attr_key` varchar(64) NOT NULL COMMENT '销售属性标识 - 链接，按小到大排序, attr_values表的id',
  `media_id` int(11) unsigned NOT NULL COMMENT '缩略图',
  `price` decimal(8,2) unsigned NOT NULL COMMENT '价格',
  `cost_price` decimal(8,2) unsigned NOT NULL COMMENT '成本价格',
  `sold_num` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '销量',
  `code` varchar(64) DEFAULT '' COMMENT '编码',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_sku-product_id` (`product_id`),
  CONSTRAINT `product_sku-product_id` FOREIGN KEY (`product_id`) REFERENCES `lied_product` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='产品sku表';

-- ----------------------------
-- Records of lied_product_sku
-- ----------------------------
INSERT INTO `lied_product_sku` VALUES ('9', '1', '3-6', '20', '1.00', '3.00', '0', '1', '2020-08-03 15:24:14', '2020-08-03 15:24:14', null);
INSERT INTO `lied_product_sku` VALUES ('10', '1', '2-6', '20', '1.00', '3.00', '0', '2', '2020-08-03 15:24:14', '2020-08-03 15:24:14', null);
INSERT INTO `lied_product_sku` VALUES ('11', '1', '3-5', '21', '1.00', '3.00', '0', '3', '2020-08-03 15:24:14', '2020-08-03 15:24:14', null);
INSERT INTO `lied_product_sku` VALUES ('12', '1', '2-5', '21', '1.00', '3.00', '0', '4', '2020-08-03 15:24:14', '2020-08-03 15:38:42', '2020-08-03 15:38:42');
INSERT INTO `lied_product_sku` VALUES ('13', '1', '2-5', '21', '1.00', '1.00', '0', '1', '2020-08-03 15:39:38', '2020-08-03 15:39:38', null);

-- ----------------------------
-- Table structure for `lied_product_sku_stock`
-- ----------------------------
DROP TABLE IF EXISTS `lied_product_sku_stock`;
CREATE TABLE `lied_product_sku_stock` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) unsigned NOT NULL COMMENT '产品id',
  `sku_id` int(11) unsigned NOT NULL COMMENT '产品sku表id',
  `quantity` int(11) unsigned NOT NULL COMMENT '数量',
  `warn_number` int(11) unsigned DEFAULT NULL COMMENT '报警数量',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_sku_stock-product_id` (`product_id`),
  KEY `product_sku_stock-product_sku_id` (`sku_id`),
  CONSTRAINT `product_sku_stock-product_id` FOREIGN KEY (`product_id`) REFERENCES `lied_product` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `product_sku_stock-product_sku_id` FOREIGN KEY (`sku_id`) REFERENCES `lied_product_sku` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='产品sku库存表';

-- ----------------------------
-- Records of lied_product_sku_stock
-- ----------------------------
INSERT INTO `lied_product_sku_stock` VALUES ('9', '1', '9', '2', '4', '2020-08-03 15:24:14', '2020-08-03 15:24:14', null);
INSERT INTO `lied_product_sku_stock` VALUES ('10', '1', '10', '2', '4', '2020-08-03 15:24:14', '2020-08-03 15:24:14', null);
INSERT INTO `lied_product_sku_stock` VALUES ('11', '1', '11', '2', '4', '2020-08-03 15:24:14', '2020-08-03 15:24:14', null);
INSERT INTO `lied_product_sku_stock` VALUES ('12', '1', '12', '2', '4', '2020-08-03 15:24:14', '2020-08-03 15:38:42', '2020-08-03 15:38:42');
INSERT INTO `lied_product_sku_stock` VALUES ('13', '1', '13', '1', '1', '2020-08-03 15:39:38', '2020-08-03 15:39:38', null);

-- ----------------------------
-- Table structure for `lied_regions`
-- ----------------------------
DROP TABLE IF EXISTS `lied_regions`;
CREATE TABLE `lied_regions` (
  `region_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `region_path` varchar(20) DEFAULT NULL,
  `region_grade` mediumint(8) unsigned DEFAULT NULL,
  `e_name` varchar(64) NOT NULL COMMENT '名称拼音',
  `region_name` varchar(50) NOT NULL,
  `letter_id` int(11) unsigned NOT NULL COMMENT '字母表主键id',
  `region_code` varchar(10) DEFAULT NULL,
  `code_path` varchar(50) DEFAULT NULL,
  `sort` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`region_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3335 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of lied_regions
-- ----------------------------
INSERT INTO `lied_regions` VALUES ('1', null, ',1,', '1', 'beijing', '北京', '2', '110000', '110000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2', '1', ',1,2,', '2', 'beijingshi', '北京市', '2', '110000', '110000,110000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3', '2', ',1,2,3,', '3', 'dongchengqu', '东城区', '4', '110101', '110000,110000,110101', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('4', '2', ',1,2,4,', '3', 'xichengqu', '西城区', '24', '110102', '110000,110000,110102', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('5', '2', ',1,2,5,', '3', 'chongwenqu', '崇文区', '3', '110103', '110000,110000,110103', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('6', '2', ',1,2,6,', '3', 'xuanwuqu', '宣武区', '24', '110104', '110000,110000,110104', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('7', '2', ',1,2,7,', '3', 'chaoyangqu', '朝阳区', '3', '110105', '110000,110000,110105', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('8', '2', ',1,2,8,', '3', 'fengtaiqu', '丰台区', '6', '110106', '110000,110000,110106', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('9', '2', ',1,2,9,', '3', 'shijingshanqu', '石景山区', '19', '110107', '110000,110000,110107', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('10', '2', ',1,2,10,', '3', 'haidianqu', '海淀区', '8', '110108', '110000,110000,110108', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('11', '2', ',1,2,11,', '3', 'mentougouqu', '门头沟区', '13', '110109', '110000,110000,110109', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('12', '2', ',1,2,12,', '3', 'fangshanqu', '房山区', '6', '110111', '110000,110000,110111', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('13', '2', ',1,2,13,', '3', 'tongzhouqu', '通州区', '20', '110112', '110000,110000,110112', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('14', '2', ',1,2,14,', '3', 'shunyiqu', '顺义区', '19', '110113', '110000,110000,110113', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('15', '2', ',1,2,15,', '3', 'changpingqu', '昌平区', '3', '110114', '110000,110000,110114', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('16', '2', ',1,2,16,', '3', 'daxingqu', '大兴区', '4', '110115', '110000,110000,110115', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('17', '2', ',1,2,17,', '3', 'huairouqu', '怀柔区', '8', '110116', '110000,110000,110116', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('18', '2', ',1,2,18,', '3', 'pingguqu', '平谷区', '16', '110117', '110000,110000,110117', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('19', '2', ',1,2,19,', '3', 'miyunxian', '密云县', '13', '110228', '110000,110000,110228', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('20', '2', ',1,2,20,', '3', 'yanqingxian', '延庆县', '25', '110229', '110000,110000,110229', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('21', null, ',21,', '1', 'shanghai', '上海', '19', '310000', '310000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('22', '21', ',21,22,', '2', 'shanghaishi', '上海市', '19', '310000', '310000,310000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('23', '22', ',21,22,23,', '3', 'huangpuqu', '黄浦区', '8', '310101', '310000,310000,310101', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('24', '22', ',21,22,24,', '3', 'luwanqu', '卢湾区', '12', '310103', '310000,310000,310103', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('25', '22', ',21,22,25,', '3', 'xuhuiqu', '徐汇区', '24', '310104', '310000,310000,310104', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('26', '22', ',21,22,26,', '3', 'changningqu', '长宁区', '3', '310105', '310000,310000,310105', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('27', '22', ',21,22,27,', '3', 'jinganqu', '静安区', '10', '310106', '310000,310000,310106', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('28', '22', ',21,22,28,', '3', 'putuoqu', '普陀区', '16', '310107', '310000,310000,310107', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('29', '22', ',21,22,29,', '3', 'zhabeiqu', '闸北区', '26', '310108', '310000,310000,310108', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('30', '22', ',21,22,30,', '3', 'hongkouqu', '虹口区', '8', '310109', '310000,310000,310109', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('31', '22', ',21,22,31,', '3', 'yangpuqu', '杨浦区', '25', '310110', '310000,310000,310110', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('32', '22', ',21,22,32,', '3', 'zuoxingqu', '闵行区', '26', '310112', '310000,310000,310112', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('33', '22', ',21,22,33,', '3', 'baoshanqu', '宝山区', '2', '310113', '310000,310000,310113', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('34', '22', ',21,22,34,', '3', 'jiadingqu', '嘉定区', '10', '310114', '310000,310000,310114', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('35', '22', ',21,22,35,', '3', 'pudongxinqu', '浦东新区', '16', '310115', '310000,310000,310115', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('36', '22', ',21,22,36,', '3', 'jinshanqu', '金山区', '10', '310116', '310000,310000,310116', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('37', '22', ',21,22,37,', '3', 'songjiangqu', '松江区', '19', '310117', '310000,310000,310117', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('38', '22', ',21,22,38,', '3', 'qingpuqu', '青浦区', '17', '310118', '310000,310000,310118', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('39', '22', ',21,22,39,', '3', 'nanhuiqu', '南汇区', '14', '310119', '310000,310000,310119', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('40', '22', ',21,22,40,', '3', 'fengxianqu', '奉贤区', '6', '310120', '310000,310000,310120', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('41', '22', ',21,22,41,', '3', 'chongmingxian', '崇明县', '3', '310230', '310000,310000,310230', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('42', null, ',42,', '1', 'tianjin', '天津', '20', '120000', '120000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('43', '42', ',42,43,', '2', 'tianjinshi', '天津市', '20', '120000', '120000,120000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('44', '43', ',42,43,44,', '3', 'hepingqu', '和平区', '8', '120101', '120000,120000,120101', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('45', '43', ',42,43,45,', '3', 'hedongqu', '河东区', '8', '120102', '120000,120000,120102', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('46', '43', ',42,43,46,', '3', 'hexiqu', '河西区', '8', '120103', '120000,120000,120103', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('47', '43', ',42,43,47,', '3', 'nankaiqu', '南开区', '14', '120104', '120000,120000,120104', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('48', '43', ',42,43,48,', '3', 'hebeiqu', '河北区', '8', '120105', '120000,120000,120105', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('49', '43', ',42,43,49,', '3', 'hongqiaoqu', '红桥区', '8', '120106', '120000,120000,120106', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('50', '43', ',42,43,50,', '3', 'tangguqu', '塘沽区', '20', '120107', '120000,120000,120107', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('51', '43', ',42,43,51,', '3', 'hanguqu', '汉沽区', '8', '120108', '120000,120000,120108', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('52', '43', ',42,43,52,', '3', 'dagangqu', '大港区', '4', '120109', '120000,120000,120109', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('53', '43', ',42,43,53,', '3', 'dongliqu', '东丽区', '4', '120110', '120000,120000,120110', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('54', '43', ',42,43,54,', '3', 'xiqingqu', '西青区', '24', '120111', '120000,120000,120111', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('55', '43', ',42,43,55,', '3', 'jinnanqu', '津南区', '10', '120112', '120000,120000,120112', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('56', '43', ',42,43,56,', '3', 'beichenqu', '北辰区', '2', '120113', '120000,120000,120113', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('57', '43', ',42,43,57,', '3', 'wuqingqu', '武清区', '23', '120114', '120000,120000,120114', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('58', '43', ',42,43,58,', '3', 'baozuoqu', '宝坻区', '2', '120115', '120000,120000,120115', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('59', '43', ',42,43,59,', '3', 'ninghexian', '宁河县', '14', '120221', '120000,120000,120221', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('60', '43', ',42,43,60,', '3', 'jinghaixian', '静海县', '10', '120223', '120000,120000,120223', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('61', '43', ',42,43,61,', '3', 'jixian', '蓟县', '10', '120225', '120000,120000,120225', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('62', null, ',62,', '1', 'zhongqing', '重庆', '26', '500000', '500000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('63', '62', ',62,63,', '2', 'zhongqingshi', '重庆市', '26', '500000', '500000,500000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('64', '63', ',62,63,64,', '3', 'wanzhouqu', '万州区', '23', '500101', '500000,500000,500101', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('65', '63', ',62,63,65,', '3', 'fulingqu', '涪陵区', '6', '500102', '500000,500000,500102', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('66', '63', ',62,63,66,', '3', 'yuzhongqu', '渝中区', '25', '500103', '500000,500000,500103', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('67', '63', ',62,63,67,', '3', 'dadukouqu', '大渡口区', '4', '500104', '500000,500000,500104', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('68', '63', ',62,63,68,', '3', 'jiangbeiqu', '江北区', '10', '500105', '500000,500000,500105', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('69', '63', ',62,63,69,', '3', 'shapingbaqu', '沙坪坝区', '19', '500106', '500000,500000,500106', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('70', '63', ',62,63,70,', '3', 'jiulongpoqu', '九龙坡区', '10', '500107', '500000,500000,500107', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('71', '63', ',62,63,71,', '3', 'nananqu', '南岸区', '14', '500108', '500000,500000,500108', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('72', '63', ',62,63,72,', '3', 'beizuoqu', '北碚区', '2', '500109', '500000,500000,500109', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('73', '63', ',62,63,73,', '3', 'wanshengqu', '万盛区', '23', '500110', '500000,500000,500110', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('74', '63', ',62,63,74,', '3', 'shuangqiaoqu', '双桥区', '19', '500111', '500000,500000,500111', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('75', '63', ',62,63,75,', '3', 'yubeiqu', '渝北区', '25', '500112', '500000,500000,500112', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('76', '63', ',62,63,76,', '3', 'bananqu', '巴南区', '2', '500113', '500000,500000,500113', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('77', '63', ',62,63,77,', '3', 'qianjiangqu', '黔江区', '17', '500114', '500000,500000,500114', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('78', '63', ',62,63,78,', '3', 'changshouqu', '长寿区', '3', '500115', '500000,500000,500115', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('79', '63', ',62,63,79,', '3', 'zuojiangxian', '綦江县', '26', '500222', '500000,500000,500222', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('80', '63', ',62,63,80,', '3', 'zuonanxian', '潼南县', '26', '500223', '500000,500000,500223', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('81', '63', ',62,63,81,', '3', 'tongliangxian', '铜梁县', '20', '500224', '500000,500000,500224', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('82', '63', ',62,63,82,', '3', 'dazuxian', '大足县', '4', '500225', '500000,500000,500225', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('83', '63', ',62,63,83,', '3', 'rongchangxian', '荣昌县', '18', '500226', '500000,500000,500226', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('84', '63', ',62,63,84,', '3', 'zuoshanxian', '璧山县', '26', '500227', '500000,500000,500227', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('85', '63', ',62,63,85,', '3', 'liangpingxian', '梁平县', '12', '500228', '500000,500000,500228', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('86', '63', ',62,63,86,', '3', 'chengkouxian', '城口县', '3', '500229', '500000,500000,500229', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('87', '63', ',62,63,87,', '3', 'fengduxian', '丰都县', '6', '500230', '500000,500000,500230', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('88', '63', ',62,63,88,', '3', 'dianjiangxian', '垫江县', '4', '500231', '500000,500000,500231', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('89', '63', ',62,63,89,', '3', 'wulongxian', '武隆县', '23', '500232', '500000,500000,500232', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('90', '63', ',62,63,90,', '3', 'zhongxian', '忠县', '26', '500233', '500000,500000,500233', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('91', '63', ',62,63,91,', '3', 'kaixian', '开县', '11', '500234', '500000,500000,500234', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('92', '63', ',62,63,92,', '3', 'yunyangxian', '云阳县', '25', '500235', '500000,500000,500235', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('93', '63', ',62,63,93,', '3', 'fengjiexian', '奉节县', '6', '500236', '500000,500000,500236', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('94', '63', ',62,63,94,', '3', 'wushanxian', '巫山县', '23', '500237', '500000,500000,500237', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('95', '63', ',62,63,95,', '3', 'wuxixian', '巫溪县', '23', '500238', '500000,500000,500238', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('96', '63', ',62,63,96,', '3', 'shizhutujiazuzizhixian', '石柱土家族自治县', '19', '500240', '500000,500000,500240', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('97', '63', ',62,63,97,', '3', 'xiushantujiazumiaozuzizhixian', '秀山土家族苗族自治县', '24', '500241', '500000,500000,500241', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('98', '63', ',62,63,98,', '3', 'youyangtujiazumiaozuzizhixian', '酉阳土家族苗族自治县', '25', '500242', '500000,500000,500242', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('99', '63', ',62,63,99,', '3', 'pengshuimiaozutujiazuzizhixian', '彭水苗族土家族自治县', '16', '500243', '500000,500000,500243', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('100', '63', ',62,63,100,', '3', 'jiangjinshi', '江津市', '10', '500381', '500000,500000,500381', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('101', '63', ',62,63,101,', '3', 'hechuanshi', '合川市', '8', '500382', '500000,500000,500382', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('102', '63', ',62,63,102,', '3', 'yongchuanshi', '永川市', '25', '500383', '500000,500000,500383', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('103', '63', ',62,63,103,', '3', 'nanchuanshi', '南川市', '14', '500384', '500000,500000,500384', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('104', null, ',104,', '1', 'anhui', '安徽', '1', '340000', '340000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('105', '104', ',104,105,', '2', 'hefeishi', '合肥市', '8', '340100', '340000,340100', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('106', '105', ',104,105,106,', '3', 'yaohaiqu', '瑶海区', '25', '340102', '340000,340100,340102', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('107', '105', ',104,105,107,', '3', 'luyangqu', '庐阳区', '12', '340103', '340000,340100,340103', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('108', '105', ',104,105,108,', '3', 'shushanqu', '蜀山区', '19', '340104', '340000,340100,340104', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('109', '105', ',104,105,109,', '3', 'baohequ', '包河区', '2', '340111', '340000,340100,340111', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('110', '105', ',104,105,110,', '3', 'changfengxian', '长丰县', '3', '340121', '340000,340100,340121', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('111', '105', ',104,105,111,', '3', 'feidongxian', '肥东县', '6', '340122', '340000,340100,340122', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('112', '105', ',104,105,112,', '3', 'feixixian', '肥西县', '6', '340123', '340000,340100,340123', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('113', '104', ',104,113,', '2', 'anqingshi', '安庆市', '1', '340800', '340000,340800', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('114', '113', ',104,113,114,', '3', 'yingjiangqu', '迎江区', '25', '340802', '340000,340800,340802', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('115', '113', ',104,113,115,', '3', 'daguanqu', '大观区', '4', '340803', '340000,340800,340803', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('116', '113', ',104,113,116,', '3', 'jiaoqu', '郊区', '10', '340811', '340000,340800,340811', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('117', '113', ',104,113,117,', '3', 'huainingxian', '怀宁县', '8', '340822', '340000,340800,340822', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('118', '113', ',104,113,118,', '3', 'zuoyangxian', '枞阳县', '26', '340823', '340000,340800,340823', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('119', '113', ',104,113,119,', '3', 'qianshanxian', '潜山县', '17', '340824', '340000,340800,340824', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('120', '113', ',104,113,120,', '3', 'taihuxian', '太湖县', '20', '340825', '340000,340800,340825', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('121', '113', ',104,113,121,', '3', 'susongxian', '宿松县', '19', '340826', '340000,340800,340826', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('122', '113', ',104,113,122,', '3', 'wangjiangxian', '望江县', '23', '340827', '340000,340800,340827', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('123', '113', ',104,113,123,', '3', 'yuexixian', '岳西县', '25', '340828', '340000,340800,340828', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('124', '113', ',104,113,124,', '3', 'tongchengshi', '桐城市', '20', '340821', '340000,340800,340821', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('125', '104', ',104,125,', '2', 'bangbushi', '蚌埠市', '2', '340300', '340000,340300', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('126', '125', ',104,125,126,', '3', 'longzihuqu', '龙子湖区', '12', '340302', '340000,340300,340302', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('127', '125', ',104,125,127,', '3', 'bangshanqu', '蚌山区', '2', '340303', '340000,340300,340303', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('128', '125', ',104,125,128,', '3', 'yuhuiqu', '禹会区', '25', '340304', '340000,340300,340304', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('129', '125', ',104,125,129,', '3', 'huaishangqu', '淮上区', '8', '340311', '340000,340300,340311', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('130', '125', ',104,125,130,', '3', 'huaiyuanxian', '怀远县', '8', '340321', '340000,340300,340321', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('131', '125', ',104,125,131,', '3', 'wuhexian', '五河县', '23', '340322', '340000,340300,340322', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('132', '125', ',104,125,132,', '3', 'guzhenxian', '固镇县', '7', '340323', '340000,340300,340323', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('133', '104', ',104,133,', '2', 'zuozhoushi', '亳州市', '26', '341600', '340000,341600', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('134', '133', ',104,133,134,', '3', 'zuochengqu', '谯城区', '26', '341602', '340000,341600,341602', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('135', '133', ',104,133,135,', '3', 'woyangxian', '涡阳县', '23', '341621', '340000,341600,341621', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('136', '133', ',104,133,136,', '3', 'mengchengxian', '蒙城县', '13', '341622', '340000,341600,341622', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('137', '133', ',104,133,137,', '3', 'lixinxian', '利辛县', '12', '341623', '340000,341600,341623', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('138', '104', ',104,138,', '2', 'chaohushi', '巢湖市', '3', '341400', '340000,341400', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('139', '138', ',104,138,139,', '3', 'juchaoqu', '居巢区', '10', '341402', '340000,341400,341402', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('140', '138', ',104,138,140,', '3', 'lujiangxian', '庐江县', '12', '341421', '340000,341400,341421', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('141', '138', ',104,138,141,', '3', 'wuweixian', '无为县', '23', '341422', '340000,341400,341422', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('142', '138', ',104,138,142,', '3', 'hanshanxian', '含山县', '8', '341423', '340000,341400,341423', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('143', '138', ',104,138,143,', '3', 'hexian', '和县', '8', '341424', '340000,341400,341424', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('144', '104', ',104,144,', '2', 'chizhoushi', '池州市', '3', '341700', '340000,341700', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('145', '144', ',104,144,145,', '3', 'guichiqu', '贵池区', '7', '341702', '340000,341700,341702', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('146', '144', ',104,144,146,', '3', 'dongzhixian', '东至县', '4', '341721', '340000,341700,341721', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('147', '144', ',104,144,147,', '3', 'shitaixian', '石台县', '19', '341722', '340000,341700,341722', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('148', '144', ',104,144,148,', '3', 'qingyangxian', '青阳县', '17', '341723', '340000,341700,341723', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('149', '104', ',104,149,', '2', 'chuzhoushi', '滁州市', '3', '341100', '340000,341100', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('150', '149', ',104,149,150,', '3', 'langzuoqu', '琅琊区', '12', '341102', '340000,341100,341102', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('151', '149', ',104,149,151,', '3', 'nanzuoqu', '南谯区', '14', '341103', '340000,341100,341103', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('152', '149', ',104,149,152,', '3', 'laianxian', '来安县', '12', '341122', '340000,341100,341122', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('153', '149', ',104,149,153,', '3', 'quanjiaoxian', '全椒县', '17', '341124', '340000,341100,341124', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('154', '149', ',104,149,154,', '3', 'dingyuanxian', '定远县', '4', '341125', '340000,341100,341125', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('155', '149', ',104,149,155,', '3', 'fengyangxian', '凤阳县', '6', '341126', '340000,341100,341126', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('156', '149', ',104,149,156,', '3', 'tianchangshi', '天长市', '20', '341121', '340000,341100,341121', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('157', '149', ',104,149,157,', '3', 'mingguangshi', '明光市', '13', '341182', '340000,341100,341182', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('158', '104', ',104,158,', '2', 'fuyangshi', '阜阳市', '6', '341200', '340000,341200', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('159', '158', ',104,158,159,', '3', 'zuozhouqu', '颍州区', '26', '341202', '340000,341200,341202', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('160', '158', ',104,158,160,', '3', 'zuodongqu', '颍东区', '26', '341203', '340000,341200,341203', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('161', '158', ',104,158,161,', '3', 'zuoquanqu', '颍泉区', '26', '341204', '340000,341200,341204', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('162', '158', ',104,158,162,', '3', 'linquanxian', '临泉县', '12', '341221', '340000,341200,341221', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('163', '158', ',104,158,163,', '3', 'taihexian', '太和县', '20', '341222', '340000,341200,341222', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('164', '158', ',104,158,164,', '3', 'funanxian', '阜南县', '6', '341225', '340000,341200,341225', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('165', '158', ',104,158,165,', '3', 'zuoshangxian', '颍上县', '26', '341226', '340000,341200,341226', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('166', '158', ',104,158,166,', '3', 'jieshoushi', '界首市', '10', '341282', '340000,341200,341282', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('167', '104', ',104,167,', '2', 'huaibeishi', '淮北市', '8', '340600', '340000,340600', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('168', '167', ',104,167,168,', '3', 'dujiqu', '杜集区', '4', '340602', '340000,340600,340602', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('169', '167', ',104,167,169,', '3', 'xiangshanqu', '相山区', '24', '340603', '340000,340600,340603', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('170', '167', ',104,167,170,', '3', 'lieshanqu', '烈山区', '12', '340604', '340000,340600,340604', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('171', '167', ',104,167,171,', '3', 'zuoxixian', '濉溪县', '26', '340621', '340000,340600,340621', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('172', '104', ',104,172,', '2', 'huainanshi', '淮南市', '8', '340400', '340000,340400', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('173', '172', ',104,172,173,', '3', 'datongqu', '大通区', '4', '340402', '340000,340400,340402', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('174', '172', ',104,172,174,', '3', 'tianjiazuoqu', '田家庵区', '20', '340403', '340000,340400,340403', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('175', '172', ',104,172,175,', '3', 'xiejiajiqu', '谢家集区', '24', '340404', '340000,340400,340404', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('176', '172', ',104,172,176,', '3', 'bagongshanqu', '八公山区', '2', '340405', '340000,340400,340405', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('177', '172', ',104,172,177,', '3', 'panjiqu', '潘集区', '16', '340406', '340000,340400,340406', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('178', '172', ',104,172,178,', '3', 'fengtaixian', '凤台县', '6', '340421', '340000,340400,340421', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('179', '104', ',104,179,', '2', 'huangshanshi', '黄山市', '8', '341000', '340000,341000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('180', '179', ',104,179,180,', '3', 'tunxiqu', '屯溪区', '20', '341002', '340000,341000,341002', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('181', '179', ',104,179,181,', '3', 'huangshanqu', '黄山区', '8', '341003', '340000,341000,341003', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('182', '179', ',104,179,182,', '3', 'huizhouqu', '徽州区', '8', '341004', '340000,341000,341004', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('183', '179', ',104,179,183,', '3', 'zuoxian', '歙县', '26', '341021', '340000,341000,341021', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('184', '179', ',104,179,184,', '3', 'xiuningxian', '休宁县', '24', '341022', '340000,341000,341022', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('185', '179', ',104,179,185,', '3', 'zuoxian', '黟县', '26', '341023', '340000,341000,341023', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('186', '179', ',104,179,186,', '3', 'qimenxian', '祁门县', '17', '341024', '340000,341000,341024', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('187', '104', ',104,187,', '2', 'liuanshi', '六安市', '12', '341500', '340000,341500', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('188', '187', ',104,187,188,', '3', 'jinanqu', '金安区', '10', '341502', '340000,341500,341502', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('189', '187', ',104,187,189,', '3', 'yuanqu', '裕安区', '25', '341503', '340000,341500,341503', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('190', '187', ',104,187,190,', '3', 'shouxian', '寿县', '19', '341521', '340000,341500,341521', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('191', '187', ',104,187,191,', '3', 'huoqiuxian', '霍邱县', '8', '341522', '340000,341500,341522', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('192', '187', ',104,187,192,', '3', 'shuchengxian', '舒城县', '19', '341523', '340000,341500,341523', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('193', '187', ',104,187,193,', '3', 'jinzhaixian', '金寨县', '10', '341524', '340000,341500,341524', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('194', '187', ',104,187,194,', '3', 'huoshanxian', '霍山县', '8', '341525', '340000,341500,341525', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('195', '104', ',104,195,', '2', 'maanshanshi', '马鞍山市', '13', '340500', '340000,340500', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('196', '195', ',104,195,196,', '3', 'jinjiazhuangqu', '金家庄区', '10', '340502', '340000,340500,340502', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('197', '195', ',104,195,197,', '3', 'huashanqu', '花山区', '8', '340503', '340000,340500,340503', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('198', '195', ',104,195,198,', '3', 'yushanqu', '雨山区', '25', '340504', '340000,340500,340504', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('199', '195', ',104,195,199,', '3', 'dangtuxian', '当涂县', '4', '340521', '340000,340500,340521', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('200', '104', ',104,200,', '2', 'suzhoushi', '宿州市', '19', '341300', '340000,341300', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('201', '200', ',104,200,201,', '3', 'zuoqiaoqu', '墉桥区', '26', '341302', '340000,341300,341302', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('202', '200', ',104,200,202,', '3', 'zuoshanxian', '砀山县', '26', '341321', '340000,341300,341321', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('203', '200', ',104,200,203,', '3', 'xiaoxian', '萧县', '24', '341322', '340000,341300,341322', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('204', '200', ',104,200,204,', '3', 'lingzuoxian', '灵璧县', '12', '341323', '340000,341300,341323', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('205', '200', ',104,200,205,', '3', 'zuoxian', '泗县', '26', '341324', '340000,341300,341324', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('206', '104', ',104,206,', '2', 'tonglingshi', '铜陵市', '20', '340700', '340000,340700', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('207', '206', ',104,206,207,', '3', 'tongguanshanqu', '铜官山区', '20', '340702', '340000,340700,340702', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('208', '206', ',104,206,208,', '3', 'shizishanqu', '狮子山区', '19', '340703', '340000,340700,340703', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('209', '206', ',104,206,209,', '3', 'jiaoqu', '郊区', '10', '340711', '340000,340700,340711', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('210', '206', ',104,206,210,', '3', 'tonglingxian', '铜陵县', '20', '340721', '340000,340700,340721', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('211', '104', ',104,211,', '2', 'wuhushi', '芜湖市', '23', '340200', '340000,340200', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('212', '211', ',104,211,212,', '3', 'jinghuqu', '镜湖区', '10', '340202', '340000,340200,340202', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('213', '211', ',104,211,213,', '3', 'matangqu', '马塘区', '13', '340203', '340000,340200,340203', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('214', '211', ',104,211,214,', '3', 'xinwuqu', '新芜区', '24', '340204', '340000,340200,340204', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('215', '211', ',104,211,215,', '3', 'zuojiangqu', '鸠江区', '26', '340207', '340000,340200,340207', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('216', '211', ',104,211,216,', '3', 'wuhuxian', '芜湖县', '23', '340221', '340000,340200,340221', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('217', '211', ',104,211,217,', '3', 'fanchangxian', '繁昌县', '6', '340222', '340000,340200,340222', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('218', '211', ',104,211,218,', '3', 'nanlingxian', '南陵县', '14', '340223', '340000,340200,340223', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('219', '104', ',104,219,', '2', 'xuanchengshi', '宣城市', '24', '341800', '340000,341800', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('220', '219', ',104,219,220,', '3', 'xuanzhouqu', '宣州区', '24', '341802', '340000,341800,341802', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('221', '219', ',104,219,221,', '3', 'langxixian', '郎溪县', '12', '341821', '340000,341800,341821', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('222', '219', ',104,219,222,', '3', 'guangdexian', '广德县', '7', '341822', '340000,341800,341822', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('223', '219', ',104,219,223,', '3', 'zuoxian', '泾县', '26', '341823', '340000,341800,341823', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('224', '219', ',104,219,224,', '3', 'jixixian', '绩溪县', '10', '341824', '340000,341800,341824', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('225', '219', ',104,219,225,', '3', 'zuodexian', '旌德县', '26', '341825', '340000,341800,341825', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('226', '219', ',104,219,226,', '3', 'ningguoshi', '宁国市', '14', '341881', '340000,341800,341881', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('227', null, ',227,', '1', 'fujian', '福建', '6', '350000', '350000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('228', '227', ',227,228,', '2', 'fuzhoushi', '福州市', '6', '350100', '350000,350100', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('229', '228', ',227,228,229,', '3', 'gulouqu', '鼓楼区', '7', '350102', '350000,350100,350102', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('230', '228', ',227,228,230,', '3', 'taijiangqu', '台江区', '20', '350103', '350000,350100,350103', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('231', '228', ',227,228,231,', '3', 'cangshanqu', '仓山区', '3', '350104', '350000,350100,350104', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('232', '228', ',227,228,232,', '3', 'maweiqu', '马尾区', '13', '350105', '350000,350100,350105', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('233', '228', ',227,228,233,', '3', 'jinanqu', '晋安区', '10', '350111', '350000,350100,350111', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('234', '228', ',227,228,234,', '3', 'minhouxian', '闽侯县', '13', '350121', '350000,350100,350121', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('235', '228', ',227,228,235,', '3', 'lianjiangxian', '连江县', '12', '350122', '350000,350100,350122', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('236', '228', ',227,228,236,', '3', 'luoyuanxian', '罗源县', '12', '350123', '350000,350100,350123', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('237', '228', ',227,228,237,', '3', 'minqingxian', '闽清县', '13', '350124', '350000,350100,350124', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('238', '228', ',227,228,238,', '3', 'yongtaixian', '永泰县', '25', '350125', '350000,350100,350125', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('239', '228', ',227,228,239,', '3', 'pingtanxian', '平潭县', '16', '350128', '350000,350100,350128', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('240', '228', ',227,228,240,', '3', 'fuqingshi', '福清市', '6', '350127', '350000,350100,350127', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('241', '228', ',227,228,241,', '3', 'changleshi', '长乐市', '3', '350126', '350000,350100,350126', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('242', '227', ',227,242,', '2', 'longyanshi', '龙岩市', '12', '350800', '350000,350800', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('243', '242', ',227,242,243,', '3', 'xinluoqu', '新罗区', '24', '350802', '350000,350800,350802', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('244', '242', ',227,242,244,', '3', 'changtingxian', '长汀县', '3', '350821', '350000,350800,350821', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('245', '242', ',227,242,245,', '3', 'yongdingxian', '永定县', '25', '350822', '350000,350800,350822', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('246', '242', ',227,242,246,', '3', 'shanghangxian', '上杭县', '19', '350823', '350000,350800,350823', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('247', '242', ',227,242,247,', '3', 'wupingxian', '武平县', '23', '350824', '350000,350800,350824', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('248', '242', ',227,242,248,', '3', 'lianchengxian', '连城县', '12', '350825', '350000,350800,350825', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('249', '242', ',227,242,249,', '3', 'zhangpingshi', '漳平市', '26', '350881', '350000,350800,350881', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('250', '227', ',227,250,', '2', 'nanpingshi', '南平市', '14', '350700', '350000,350700', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('251', '250', ',227,250,251,', '3', 'yanpingqu', '延平区', '25', '350702', '350000,350700,350702', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('252', '250', ',227,250,252,', '3', 'shunchangxian', '顺昌县', '19', '350721', '350000,350700,350721', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('253', '250', ',227,250,253,', '3', 'puchengxian', '浦城县', '16', '350722', '350000,350700,350722', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('254', '250', ',227,250,254,', '3', 'guangzexian', '光泽县', '7', '350723', '350000,350700,350723', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('255', '250', ',227,250,255,', '3', 'songxixian', '松溪县', '19', '350724', '350000,350700,350724', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('256', '250', ',227,250,256,', '3', 'zhenghexian', '政和县', '26', '350725', '350000,350700,350725', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('257', '250', ',227,250,257,', '3', 'shaowushi', '邵武市', '19', '350781', '350000,350700,350781', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('258', '250', ',227,250,258,', '3', 'wuyishanshi', '武夷山市', '23', '350782', '350000,350700,350782', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('259', '250', ',227,250,259,', '3', 'jianzuoshi', '建瓯市', '10', '350783', '350000,350700,350783', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('260', '250', ',227,250,260,', '3', 'jianyangshi', '建阳市', '10', '350784', '350000,350700,350784', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('261', '227', ',227,261,', '2', 'ningdeshi', '宁德市', '14', '350900', '350000,350900', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('262', '261', ',227,261,262,', '3', 'jiaochengqu', '蕉城区', '10', '350902', '350000,350900,350902', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('263', '261', ',227,261,263,', '3', 'xiapuxian', '霞浦县', '24', '350921', '350000,350900,350921', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('264', '261', ',227,261,264,', '3', 'gutianxian', '古田县', '7', '350922', '350000,350900,350922', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('265', '261', ',227,261,265,', '3', 'pingnanxian', '屏南县', '16', '350923', '350000,350900,350923', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('266', '261', ',227,261,266,', '3', 'shouningxian', '寿宁县', '19', '350924', '350000,350900,350924', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('267', '261', ',227,261,267,', '3', 'zhouningxian', '周宁县', '26', '350925', '350000,350900,350925', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('268', '261', ',227,261,268,', '3', 'zuorongxian', '柘荣县', '26', '350926', '350000,350900,350926', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('269', '261', ',227,261,269,', '3', 'fuanshi', '福安市', '6', '350981', '350000,350900,350981', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('270', '261', ',227,261,270,', '3', 'fudingshi', '福鼎市', '6', '350982', '350000,350900,350982', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('271', '227', ',227,271,', '2', 'putianshi', '莆田市', '16', '350300', '350000,350300', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('272', '271', ',227,271,272,', '3', 'chengxiangqu', '城厢区', '3', '350302', '350000,350300,350302', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('273', '271', ',227,271,273,', '3', 'hanjiangqu', '涵江区', '8', '350303', '350000,350300,350303', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('274', '271', ',227,271,274,', '3', 'lichengqu', '荔城区', '12', '350304', '350000,350300,350304', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('275', '271', ',227,271,275,', '3', 'xiuyuqu', '秀屿区', '24', '350305', '350000,350300,350305', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('276', '271', ',227,271,276,', '3', 'xianyouxian', '仙游县', '24', '350322', '350000,350300,350322', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('277', '227', ',227,277,', '2', 'quanzhoushi', '泉州市', '17', '350500', '350000,350500', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('278', '277', ',227,277,278,', '3', 'lichengqu', '鲤城区', '12', '350502', '350000,350500,350502', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('279', '277', ',227,277,279,', '3', 'fengzequ', '丰泽区', '6', '350503', '350000,350500,350503', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('280', '277', ',227,277,280,', '3', 'luojiangqu', '洛江区', '12', '350504', '350000,350500,350504', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('281', '277', ',227,277,281,', '3', 'quangangqu', '泉港区', '17', '350505', '350000,350500,350505', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('282', '277', ',227,277,282,', '3', 'huianxian', '惠安县', '8', '350521', '350000,350500,350521', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('283', '277', ',227,277,283,', '3', 'anxixian', '安溪县', '1', '350524', '350000,350500,350524', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('284', '277', ',227,277,284,', '3', 'yongchunxian', '永春县', '25', '350525', '350000,350500,350525', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('285', '277', ',227,277,285,', '3', 'dehuaxian', '德化县', '4', '350526', '350000,350500,350526', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('286', '277', ',227,277,286,', '3', 'jinmenxian', '金门县', '10', '350527', '350000,350500,350527', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('287', '277', ',227,277,287,', '3', 'shishishi', '石狮市', '19', '350581', '350000,350500,350581', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('288', '277', ',227,277,288,', '3', 'jinjiangshi', '晋江市', '10', '350522', '350000,350500,350522', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('289', '277', ',227,277,289,', '3', 'nananshi', '南安市', '14', '350523', '350000,350500,350523', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('290', '227', ',227,290,', '2', 'sanmingshi', '三明市', '19', '350400', '350000,350400', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('291', '290', ',227,290,291,', '3', 'meiliequ', '梅列区', '13', '350402', '350000,350400,350402', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('292', '290', ',227,290,292,', '3', 'sanyuanqu', '三元区', '19', '350403', '350000,350400,350403', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('293', '290', ',227,290,293,', '3', 'mingxixian', '明溪县', '13', '350421', '350000,350400,350421', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('294', '290', ',227,290,294,', '3', 'qingliuxian', '清流县', '17', '350423', '350000,350400,350423', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('295', '290', ',227,290,295,', '3', 'ninghuaxian', '宁化县', '14', '350424', '350000,350400,350424', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('296', '290', ',227,290,296,', '3', 'datianxian', '大田县', '4', '350425', '350000,350400,350425', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('297', '290', ',227,290,297,', '3', 'youxixian', '尤溪县', '25', '350426', '350000,350400,350426', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('298', '290', ',227,290,298,', '3', 'shaxian', '沙县', '19', '350427', '350000,350400,350427', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('299', '290', ',227,290,299,', '3', 'jianglexian', '将乐县', '10', '350428', '350000,350400,350428', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('300', '290', ',227,290,300,', '3', 'tainingxian', '泰宁县', '20', '350429', '350000,350400,350429', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('301', '290', ',227,290,301,', '3', 'jianningxian', '建宁县', '10', '350430', '350000,350400,350430', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('302', '290', ',227,290,302,', '3', 'yonganshi', '永安市', '25', '350422', '350000,350400,350422', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('303', '227', ',227,303,', '2', 'xiamenshi', '厦门市', '24', '350200', '350000,350200', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('304', '303', ',227,303,304,', '3', 'simingqu', '思明区', '19', '350203', '350000,350200,350203', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('305', '303', ',227,303,305,', '3', 'haicangqu', '海沧区', '8', '350205', '350000,350200,350205', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('306', '303', ',227,303,306,', '3', 'huliqu', '湖里区', '8', '350206', '350000,350200,350206', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('307', '303', ',227,303,307,', '3', 'jimeiqu', '集美区', '10', '350211', '350000,350200,350211', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('308', '303', ',227,303,308,', '3', 'tonganqu', '同安区', '20', '350212', '350000,350200,350212', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('309', '303', ',227,303,309,', '3', 'xianganqu', '翔安区', '24', '350213', '350000,350200,350213', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('310', '227', ',227,310,', '2', 'zhangzhoushi', '漳州市', '26', '350600', '350000,350600', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('311', '310', ',227,310,311,', '3', 'zuochengqu', '芗城区', '26', '350602', '350000,350600,350602', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('312', '310', ',227,310,312,', '3', 'longwenqu', '龙文区', '12', '350603', '350000,350600,350603', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('313', '310', ',227,310,313,', '3', 'yunxiaoxian', '云霄县', '25', '350621', '350000,350600,350621', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('314', '310', ',227,310,314,', '3', 'zhangpuxian', '漳浦县', '26', '350623', '350000,350600,350623', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('315', '310', ',227,310,315,', '3', 'zuoanxian', '诏安县', '26', '350624', '350000,350600,350624', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('316', '310', ',227,310,316,', '3', 'changtaixian', '长泰县', '3', '350625', '350000,350600,350625', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('317', '310', ',227,310,317,', '3', 'dongshanxian', '东山县', '4', '350626', '350000,350600,350626', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('318', '310', ',227,310,318,', '3', 'nanjingxian', '南靖县', '14', '350627', '350000,350600,350627', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('319', '310', ',227,310,319,', '3', 'pinghexian', '平和县', '16', '350628', '350000,350600,350628', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('320', '310', ',227,310,320,', '3', 'huaanxian', '华安县', '8', '350629', '350000,350600,350629', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('321', '310', ',227,310,321,', '3', 'longhaishi', '龙海市', '12', '350621', '350000,350600,350621', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('322', null, ',322,', '1', 'gansu', '甘肃', '7', '620000', '620000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('323', '322', ',322,323,', '2', 'lanzhoushi', '兰州市', '12', '620100', '620000,620100', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('324', '323', ',322,323,324,', '3', 'chengguanqu', '城关区', '3', '620102', '620000,620100,620102', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('325', '323', ',322,323,325,', '3', 'qilihequ', '七里河区', '17', '620103', '620000,620100,620103', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('326', '323', ',322,323,326,', '3', 'xiguqu', '西固区', '24', '620104', '620000,620100,620104', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('327', '323', ',322,323,327,', '3', 'anningqu', '安宁区', '1', '620105', '620000,620100,620105', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('328', '323', ',322,323,328,', '3', 'hongguqu', '红古区', '8', '620111', '620000,620100,620111', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('329', '323', ',322,323,329,', '3', 'yongdengxian', '永登县', '25', '620121', '620000,620100,620121', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('330', '323', ',322,323,330,', '3', 'gaolanxian', '皋兰县', '7', '620122', '620000,620100,620122', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('331', '323', ',322,323,331,', '3', 'yuzhongxian', '榆中县', '25', '620123', '620000,620100,620123', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('332', '322', ',322,332,', '2', 'baiyinshi', '白银市', '2', '620400', '620000,620400', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('333', '332', ',322,332,333,', '3', 'baiyinqu', '白银区', '2', '620402', '620000,620400,620402', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('334', '332', ',322,332,334,', '3', 'pingchuanqu', '平川区', '16', '620403', '620000,620400,620403', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('335', '332', ',322,332,335,', '3', 'jingyuanxian', '靖远县', '10', '620421', '620000,620400,620421', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('336', '332', ',322,332,336,', '3', 'huiningxian', '会宁县', '8', '620422', '620000,620400,620422', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('337', '332', ',322,332,337,', '3', 'jingtaixian', '景泰县', '10', '620423', '620000,620400,620423', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('338', '322', ',322,338,', '2', 'dingxishi', '定西市', '4', '621100', '620000,621100', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('339', '338', ',322,338,339,', '3', 'andingqu', '安定区', '1', '621102', '620000,621100,621102', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('340', '338', ',322,338,340,', '3', 'tongweixian', '通渭县', '20', '621121', '620000,621100,621121', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('341', '338', ',322,338,341,', '3', 'longxixian', '陇西县', '12', '621122', '620000,621100,621122', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('342', '338', ',322,338,342,', '3', 'weiyuanxian', '渭源县', '23', '621123', '620000,621100,621123', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('343', '338', ',322,338,343,', '3', 'linzuoxian', '临洮县', '12', '621124', '620000,621100,621124', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('344', '338', ',322,338,344,', '3', 'zhangxian', '漳县', '26', '621125', '620000,621100,621125', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('345', '338', ',322,338,345,', '3', 'zuoxian', '岷县', '26', '621126', '620000,621100,621126', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('346', '322', ',322,346,', '2', 'gannancangzuzizhizhou', '甘南藏族自治州', '7', '623000', '620000,623000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('347', '346', ',322,346,347,', '3', 'hezuoshi', '合作市', '8', '623001', '620000,623000,623001', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('348', '346', ',322,346,348,', '3', 'lintanxian', '临潭县', '12', '623021', '620000,623000,623021', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('349', '346', ',322,346,349,', '3', 'zhuonixian', '卓尼县', '26', '623022', '620000,623000,623022', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('350', '346', ',322,346,350,', '3', 'zhouquxian', '舟曲县', '26', '623023', '620000,623000,623023', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('351', '346', ',322,346,351,', '3', 'diebuxian', '迭部县', '4', '623024', '620000,623000,623024', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('352', '346', ',322,346,352,', '3', 'maquxian', '玛曲县', '13', '623025', '620000,623000,623025', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('353', '346', ',322,346,353,', '3', 'luquxian', '碌曲县', '12', '623026', '620000,623000,623026', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('354', '346', ',322,346,354,', '3', 'xiahexian', '夏河县', '24', '623027', '620000,623000,623027', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('355', '322', ',322,355,', '2', 'jiayuguanshi', '嘉峪关市', '10', '620200', '620000,620200', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('356', '322', ',322,356,', '2', 'jinchangshi', '金昌市', '10', '620300', '620000,620300', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('357', '356', ',322,356,357,', '3', 'jinchuanqu', '金川区', '10', '620302', '620000,620300,620302', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('358', '356', ',322,356,358,', '3', 'yongchangxian', '永昌县', '25', '620321', '620000,620300,620321', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('359', '322', ',322,359,', '2', 'jiuquanshi', '酒泉市', '10', '620900', '620000,620900', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('360', '359', ',322,359,360,', '3', 'suzhouqu', '肃州区', '19', '620902', '620000,620900,620902', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('361', '359', ',322,359,361,', '3', 'jintaxian', '金塔县', '10', '622123', '620000,622102,622123', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('362', '359', ',322,359,362,', '3', 'anxixian', '安西县', '1', '622126', '620000,622102,622126', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('363', '359', ',322,359,363,', '3', 'subeimengguzuzizhixian', '肃北蒙古族自治县', '19', '622124', '620000,622102,622124', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('364', '359', ',322,359,364,', '3', 'akesaihasakezuzizhixian', '阿克塞哈萨克族自治县', '1', '622125', '620000,622102,622125', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('365', '359', ',322,359,365,', '3', 'yumenshi', '玉门市', '25', '622101', '620000,622102,622101', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('366', '359', ',322,359,366,', '3', 'dunhuangshi', '敦煌市', '4', '622103', '620000,622102,622103', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('367', '322', ',322,367,', '2', 'linxiahuizuzizhizhou', '临夏回族自治州', '12', '622900', '620000,622900', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('368', '367', ',322,367,368,', '3', 'linxiashi', '临夏市', '12', '622901', '620000,622900,622901', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('369', '367', ',322,367,369,', '3', 'linxiaxian', '临夏县', '12', '622921', '620000,622900,622921', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('370', '367', ',322,367,370,', '3', 'kanglexian', '康乐县', '11', '622922', '620000,622900,622922', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('371', '367', ',322,367,371,', '3', 'yongjingxian', '永靖县', '25', '622923', '620000,622900,622923', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('372', '367', ',322,367,372,', '3', 'guanghexian', '广河县', '7', '622924', '620000,622900,622924', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('373', '367', ',322,367,373,', '3', 'hezhengxian', '和政县', '8', '622925', '620000,622900,622925', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('374', '367', ',322,367,374,', '3', 'dongxiangzuzizhixian', '东乡族自治县', '4', '622926', '620000,622900,622926', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('375', '367', ',322,367,375,', '3', 'jishishanbaoanzudongxiangzusalazuzizhixian', '积石山保安族东乡族撒拉族自治县', '10', '622927', '620000,622900,622927', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('376', '322', ',322,376,', '2', 'longnanshi', '陇南市', '12', '621200', '620000,621200', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('377', '376', ',322,376,377,', '3', 'wuduqu', '武都区', '23', '621202', '620000,621200,621202', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('378', '376', ',322,376,378,', '3', 'chengxian', '成县', '3', '621221', '620000,621200,621221', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('379', '376', ',322,376,379,', '3', 'wenxian', '文县', '23', '621222', '620000,621200,621222', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('380', '376', ',322,376,380,', '3', 'zuochangxian', '宕昌县', '26', '621223', '620000,621200,621223', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('381', '376', ',322,376,381,', '3', 'kangxian', '康县', '11', '621224', '620000,621200,621224', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('382', '376', ',322,376,382,', '3', 'xihexian', '西和县', '24', '621225', '620000,621200,621225', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('383', '376', ',322,376,383,', '3', 'lixian', '礼县', '12', '621226', '620000,621200,621226', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('384', '376', ',322,376,384,', '3', 'huixian', '徽县', '8', '621227', '620000,621200,621227', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('385', '376', ',322,376,385,', '3', 'liangdangxian', '两当县', '12', '621228', '620000,621200,621228', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('386', '322', ',322,386,', '2', 'pingliangshi', '平凉市', '16', '620800', '620000,620800', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('387', '386', ',322,386,387,', '3', 'zuozuoqu', '崆峒区', '26', '620802', '620000,620800,620802', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('388', '386', ',322,386,388,', '3', 'zuochuanxian', '泾川县', '26', '622722', '620000,622701,622722', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('389', '386', ',322,386,389,', '3', 'lingtaixian', '灵台县', '12', '622723', '620000,622701,622723', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('390', '386', ',322,386,390,', '3', 'chongxinxian', '崇信县', '3', '622724', '620000,622701,622724', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('391', '386', ',322,386,391,', '3', 'huatingxian', '华亭县', '8', '620824', '620000,620800,620824', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('392', '386', ',322,386,392,', '3', 'zhuanglangxian', '庄浪县', '26', '622726', '620000,622701,622726', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('393', '386', ',322,386,393,', '3', 'jingningxian', '静宁县', '10', '622727', '620000,622701,622727', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('394', '322', ',322,394,', '2', 'qingyangshi', '庆阳市', '17', '621000', '620000,621000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('395', '394', ',322,394,395,', '3', 'xifengqu', '西峰区', '24', '621002', '620000,621000,621002', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('396', '394', ',322,394,396,', '3', 'qingchengxian', '庆城县', '17', '621021', '620000,621000,621021', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('397', '394', ',322,394,397,', '3', 'huanxian', '环县', '8', '621022', '620000,621000,621022', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('398', '394', ',322,394,398,', '3', 'huachixian', '华池县', '8', '621023', '620000,621000,621023', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('399', '394', ',322,394,399,', '3', 'heshuixian', '合水县', '8', '621024', '620000,621000,621024', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('400', '394', ',322,394,400,', '3', 'zhengningxian', '正宁县', '26', '621025', '620000,621000,621025', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('401', '394', ',322,394,401,', '3', 'ningxian', '宁县', '14', '621026', '620000,621000,621026', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('402', '394', ',322,394,402,', '3', 'zhenyuanxian', '镇原县', '26', '621027', '620000,621000,621027', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('403', '322', ',322,403,', '2', 'tianshuishi', '天水市', '20', '620500', '620000,620500', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('404', '403', ',322,403,404,', '3', 'qinchengqu', '秦城区', '17', '620502', '620000,620500,620502', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('405', '403', ',322,403,405,', '3', 'beidaoqu', '北道区', '2', '620503', '620000,620500,620503', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('406', '403', ',322,403,406,', '3', 'qingshuixian', '清水县', '17', '620521', '620000,620500,620521', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('407', '403', ',322,403,407,', '3', 'qinanxian', '秦安县', '17', '620522', '620000,620500,620522', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('408', '403', ',322,403,408,', '3', 'ganguxian', '甘谷县', '7', '620523', '620000,620500,620523', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('409', '403', ',322,403,409,', '3', 'wushanxian', '武山县', '23', '620524', '620000,620500,620524', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('410', '403', ',322,403,410,', '3', 'zhangjiachuanhuizuzizhixian', '张家川回族自治县', '26', '620525', '620000,620500,620525', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('411', '322', ',322,411,', '2', 'wuweishi', '武威市', '23', '620600', '620000,620600', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('412', '411', ',322,411,412,', '3', 'liangzhouqu', '凉州区', '12', '620602', '620000,620600,620602', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('413', '411', ',322,411,413,', '3', 'minqinxian', '民勤县', '13', '620621', '620000,620600,620621', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('414', '411', ',322,411,414,', '3', 'gulangxian', '古浪县', '7', '620622', '620000,620600,620622', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('415', '411', ',322,411,415,', '3', 'tianzhucangzuzizhixian', '天祝藏族自治县', '20', '620623', '620000,620600,620623', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('416', '322', ',322,416,', '2', 'zhangyeshi', '张掖市', '26', '620700', '620000,620700', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('417', '416', ',322,416,417,', '3', 'ganzhouqu', '甘州区', '7', '620702', '620000,620700,620702', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('418', '416', ',322,416,418,', '3', 'sunanyuguzuzizhixian', '肃南裕固族自治县', '19', '622222', '620000,622201,622222', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('419', '416', ',322,416,419,', '3', 'minlexian', '民乐县', '13', '622223', '620000,622201,622223', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('420', '416', ',322,416,420,', '3', 'linzexian', '临泽县', '12', '622224', '620000,622201,622224', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('421', '416', ',322,416,421,', '3', 'gaotaixian', '高台县', '7', '622225', '620000,622201,622225', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('422', '416', ',322,416,422,', '3', 'shandanxian', '山丹县', '19', '622226', '620000,622201,622226', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('423', null, ',423,', '1', 'guangdong', '广东', '7', '440000', '440000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('424', '423', ',423,424,', '2', 'guangzhoushi', '广州市', '7', '440100', '440000,440100', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('425', '424', ',423,424,425,', '3', 'nanshaqu', '南沙区', '14', '440115', '440000,440100,440115', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('426', '424', ',423,424,426,', '3', 'liwanqu', '荔湾区', '12', '440103', '440000,440100,440103', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('427', '424', ',423,424,427,', '3', 'yuexiuqu', '越秀区', '25', '440104', '440000,440100,440104', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('428', '424', ',423,424,428,', '3', 'haizhuqu', '海珠区', '8', '440105', '440000,440100,440105', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('429', '424', ',423,424,429,', '3', 'tianhequ', '天河区', '20', '440106', '440000,440100,440106', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('430', '424', ',423,424,430,', '3', 'fangcunqu', '芳村区', '6', '440107', '440000,440100,440107', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('431', '424', ',423,424,431,', '3', 'baiyunqu', '白云区', '2', '440111', '440000,440100,440111', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('432', '424', ',423,424,432,', '3', 'huangpuqu', '黄埔区', '8', '440112', '440000,440100,440112', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('433', '424', ',423,424,433,', '3', 'fanzuoqu', '番禺区', '6', '440113', '440000,440100,440113', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('434', '424', ',423,424,434,', '3', 'huaduqu', '花都区', '8', '440114', '440000,440100,440114', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('435', '424', ',423,424,435,', '3', 'zengchengqu', '增城区', '26', '440118', '440000,440100,440118', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('436', '424', ',423,424,436,', '3', 'conghuaqu', '从化区', '3', '440117', '440000,440100,440117', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('437', '423', ',423,437,', '2', 'chaozhoushi', '潮州市', '3', '445100', '440000,445100', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('438', '437', ',423,437,438,', '3', 'xiangqiaoqu', '湘桥区', '24', '445102', '440000,445100,445102', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('439', '437', ',423,437,439,', '3', 'chaoanqu', '潮安区', '3', '445103', '440000,445100,445103', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('440', '437', ',423,437,440,', '3', 'raopingxian', '饶平县', '18', '440522', '440000,440581,440522', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('441', '423', ',423,441,', '2', 'dongzuoshi', '东莞市', '4', '441900', '440000,441900', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('442', '423', ',423,442,', '2', 'foshanshi', '佛山市', '6', '440600', '440000,440600', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('443', '442', ',423,442,443,', '3', 'zuochengqu', '禅城区', '26', '440604', '440000,440600,440604', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('444', '442', ',423,442,444,', '3', 'nanhaiqu', '南海区', '14', '440605', '440000,440600,440605', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('445', '442', ',423,442,445,', '3', 'shundequ', '顺德区', '19', '440606', '440000,440600,440606', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('446', '442', ',423,442,446,', '3', 'sanshuiqu', '三水区', '19', '440607', '440000,440600,440607', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('447', '442', ',423,442,447,', '3', 'gaomingqu', '高明区', '7', '440608', '440000,440600,440608', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('448', '423', ',423,448,', '2', 'heyuanshi', '河源市', '8', '441600', '440000,441600', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('449', '448', ',423,448,449,', '3', 'yuanchengqu', '源城区', '25', '441602', '440000,441600,441602', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('450', '448', ',423,448,450,', '3', 'zijinxian', '紫金县', '26', '441621', '440000,441600,441621', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('451', '448', ',423,448,451,', '3', 'longchuanxian', '龙川县', '12', '441622', '440000,441600,441622', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('452', '448', ',423,448,452,', '3', 'lianpingxian', '连平县', '12', '441623', '440000,441600,441623', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('453', '448', ',423,448,453,', '3', 'hepingxian', '和平县', '8', '441624', '440000,441600,441624', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('454', '448', ',423,448,454,', '3', 'dongyuanxian', '东源县', '4', '441625', '440000,441600,441625', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('455', '423', ',423,455,', '2', 'huizhoushi', '惠州市', '8', '441300', '440000,441300', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('456', '455', ',423,455,456,', '3', 'huichengqu', '惠城区', '8', '441302', '440000,441300,441302', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('457', '455', ',423,455,457,', '3', 'huiyangqu', '惠阳区', '8', '441303', '440000,441300,441303', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('458', '455', ',423,455,458,', '3', 'boluoxian', '博罗县', '2', '441322', '440000,441300,441322', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('459', '455', ',423,455,459,', '3', 'huidongxian', '惠东县', '8', '441323', '440000,441300,441323', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('460', '455', ',423,455,460,', '3', 'longmenxian', '龙门县', '12', '441324', '440000,441300,441324', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('461', '423', ',423,461,', '2', 'jiangmenshi', '江门市', '10', '440700', '440000,440700', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('462', '461', ',423,461,462,', '3', 'pengjiangqu', '蓬江区', '16', '440703', '440000,440700,440703', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('463', '461', ',423,461,463,', '3', 'jianghaiqu', '江海区', '10', '440702', '440000,440700,440702', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('464', '461', ',423,461,464,', '3', 'xinhuiqu', '新会区', '24', '440721', '440000,440700,440721', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('465', '461', ',423,461,465,', '3', 'taishanshi', '台山市', '20', '440722', '440000,440700,440722', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('466', '461', ',423,461,466,', '3', 'kaipingshi', '开平市', '11', '440724', '440000,440700,440724', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('467', '461', ',423,461,467,', '3', 'heshanshi', '鹤山市', '8', '440725', '440000,440700,440725', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('468', '461', ',423,461,468,', '3', 'enpingshi', '恩平市', '5', '440723', '440000,440700,440723', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('469', '423', ',423,469,', '2', 'jieyangshi', '揭阳市', '10', '445200', '440000,445200', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('470', '469', ',423,469,470,', '3', 'zuochengqu', '榕城区', '26', '445202', '440000,445200,445202', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('471', '469', ',423,469,471,', '3', 'jiedongqu', '揭东区', '10', '445203', '440000,445200,445203', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('472', '469', ',423,469,472,', '3', 'jiexixian', '揭西县', '10', '440526', '440000,440525,440526', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('473', '469', ',423,469,473,', '3', 'huilaixian', '惠来县', '8', '440528', '440000,440525,440528', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('474', '469', ',423,469,474,', '3', 'puningshi', '普宁市', '16', '440527', '440000,440525,440527', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('475', '423', ',423,475,', '2', 'maomingshi', '茂名市', '13', '440900', '440000,440900', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('476', '475', ',423,475,476,', '3', 'maonanqu', '茂南区', '13', '440902', '440000,440900,440902', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('477', '475', ',423,475,477,', '3', 'maogangqu', '茂港区', '13', '440903', '440000,440900,440903', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('478', '475', ',423,475,478,', '3', 'dianbaixian', '电白县', '4', '440923', '440000,440900,440923', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('479', '475', ',423,475,479,', '3', 'gaozhoushi', '高州市', '7', '440922', '440000,440900,440922', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('480', '475', ',423,475,480,', '3', 'huazhoushi', '化州市', '8', '440924', '440000,440900,440924', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('481', '475', ',423,475,481,', '3', 'xinyishi', '信宜市', '24', '440921', '440000,440900,440921', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('482', '483', ',423,483,482', '3', 'meijiangqu', '梅江区', '13', '441402', '440000,440000,441400', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('483', '423', ',423,483,', '2', 'meizhoushi', '梅州市', '13', '441400', '440000,441400', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('484', '483', ',423,483,484,', '3', 'meixian', '梅县', '13', '441421', '440000,441400,441421', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('485', '483', ',423,483,485,', '3', 'dapuxian', '大埔县', '4', '441422', '440000,441400,441422', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('486', '483', ',423,483,486,', '3', 'fengshunxian', '丰顺县', '6', '441423', '440000,441400,441423', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('487', '483', ',423,483,487,', '3', 'wuhuaxian', '五华县', '23', '441424', '440000,441400,441424', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('488', '483', ',423,483,488,', '3', 'pingyuanxian', '平远县', '16', '441426', '440000,441400,441426', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('489', '483', ',423,483,489,', '3', 'jiaolingxian', '蕉岭县', '10', '441427', '440000,441400,441427', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('490', '483', ',423,483,490,', '3', 'xingningshi', '兴宁市', '24', '441425', '440000,441400,441425', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('491', '423', ',423,491,', '2', 'qingyuanshi', '清远市', '17', '441800', '440000,441800', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('492', '491', ',423,491,492,', '3', 'qingchengqu', '清城区', '17', '441802', '440000,441800,441802', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('493', '491', ',423,491,493,', '3', 'fogangxian', '佛冈县', '6', '441821', '440000,441800,441821', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('494', '491', ',423,491,494,', '3', 'yangshanxian', '阳山县', '25', '441823', '440000,441800,441823', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('495', '491', ',423,491,495,', '3', 'lianshanzhuangzuyaozuzizhixian', '连山壮族瑶族自治县', '12', '441825', '440000,441800,441825', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('496', '491', ',423,491,496,', '3', 'liannanyaozuzizhixian', '连南瑶族自治县', '12', '441826', '440000,441800,441826', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('497', '491', ',423,491,497,', '3', 'qingxinxian', '清新县', '17', '441827', '440000,441800,441827', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('498', '491', ',423,491,498,', '3', 'yingdeshi', '英德市', '25', '441881', '440000,441800,441881', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('499', '491', ',423,491,499,', '3', 'lianzhoushi', '连州市', '12', '441882', '440000,441800,441882', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('500', '423', ',423,500,', '2', 'shantoushi', '汕头市', '19', '440500', '440000,440500', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('501', '500', ',423,500,501,', '3', 'longhuqu', '龙湖区', '12', '440507', '440000,440500,440507', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('502', '500', ',423,500,502,', '3', 'jinpingqu', '金平区', '10', '440511', '440000,440500,440511', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('503', '500', ',423,500,503,', '3', 'zuojiangqu', '濠江区', '26', '440512', '440000,440500,440512', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('504', '500', ',423,500,504,', '3', 'chaoyangqu', '潮阳区', '3', '440524', '440000,440500,440524', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('505', '500', ',423,500,505,', '3', 'chaonanqu', '潮南区', '3', '440514', '440000,440500,440514', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('506', '500', ',423,500,506,', '3', 'chenghaiqu', '澄海区', '3', '440521', '440000,440500,440521', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('507', '500', ',423,500,507,', '3', 'nanaoxian', '南澳县', '14', '440523', '440000,440500,440523', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('508', '423', ',423,508,', '2', 'shanweishi', '汕尾市', '19', '441500', '440000,441500', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('509', '508', ',423,508,509,', '3', 'chengqu', '城区', '3', '441502', '440000,441500,441502', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('510', '508', ',423,508,510,', '3', 'haifengxian', '海丰县', '8', '441521', '440000,441500,441521', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('511', '508', ',423,508,511,', '3', 'luhexian', '陆河县', '12', '441523', '440000,441500,441523', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('512', '508', ',423,508,512,', '3', 'lufengshi', '陆丰市', '12', '441522', '440000,441500,441522', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('513', '423', ',423,513,', '2', 'shaoguanshi', '韶关市', '19', '440200', '440000,440200', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('514', '513', ',423,513,514,', '3', 'wujiangqu', '武江区', '23', '440203', '440000,440200,440203', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('515', '513', ',423,513,515,', '3', 'zuojiangqu', '浈江区', '26', '440204', '440000,440200,440204', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('516', '513', ',423,513,516,', '3', 'qujiangqu', '曲江区', '17', '440205', '440000,440200,440205', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('517', '513', ',423,513,517,', '3', 'shixingxian', '始兴县', '19', '440222', '440000,440200,440222', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('518', '513', ',423,513,518,', '3', 'renhuaxian', '仁化县', '18', '440224', '440000,440200,440224', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('519', '513', ',423,513,519,', '3', 'wengyuanxian', '翁源县', '23', '440229', '440000,440200,440229', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('520', '513', ',423,513,520,', '3', 'ruyuanyaozuzizhixian', '乳源瑶族自治县', '18', '440232', '440000,440200,440232', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('521', '513', ',423,513,521,', '3', 'xinfengxian', '新丰县', '24', '440233', '440000,440200,440233', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('522', '513', ',423,513,522,', '3', 'lechangshi', '乐昌市', '12', '440225', '440000,440200,440225', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('523', '513', ',423,513,523,', '3', 'nanxiongshi', '南雄市', '14', '440223', '440000,440200,440223', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('524', '423', ',423,524,', '2', 'shenzuoshi', '深圳市', '19', '440300', '440000,440300', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('525', '524', ',423,524,525,', '3', 'luohuqu', '罗湖区', '12', '440303', '440000,440300,440303', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('526', '524', ',423,524,526,', '3', 'futianqu', '福田区', '6', '440304', '440000,440300,440304', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('527', '524', ',423,524,527,', '3', 'nanshanqu', '南山区', '14', '440305', '440000,440300,440305', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('528', '524', ',423,524,528,', '3', 'baoanqu', '宝安区', '2', '440306', '440000,440300,440306', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('529', '524', ',423,524,529,', '3', 'longgangqu', '龙岗区', '12', '440307', '440000,440300,440307', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('530', '524', ',423,524,530,', '3', 'yantianqu', '盐田区', '25', '440308', '440000,440300,440308', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('531', '423', ',423,531,', '2', 'yangjiangshi', '阳江市', '25', '441700', '440000,441700', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('532', '531', ',423,531,532,', '3', 'jiangchengqu', '江城区', '10', '441702', '440000,441700,441702', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('533', '531', ',423,531,533,', '3', 'yangxixian', '阳西县', '25', '441721', '440000,441700,441721', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('534', '531', ',423,531,534,', '3', 'yangdongxian', '阳东县', '25', '441723', '440000,441700,441723', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('535', '531', ',423,531,535,', '3', 'yangchunshi', '阳春市', '25', '440727', '440000,440726,440727', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('536', '423', ',423,536,', '2', 'yunfushi', '云浮市', '25', '445300', '440000,445300', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('537', '536', ',423,536,537,', '3', 'yunchengqu', '云城区', '25', '445302', '440000,445300,445302', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('538', '536', ',423,536,538,', '3', 'xinxingxian', '新兴县', '24', '441228', '440000,441227,441228', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('539', '536', ',423,536,539,', '3', 'yunanxian', '郁南县', '25', '441229', '440000,441227,441229', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('540', '536', ',423,536,540,', '3', 'yunanqu', '云安区', '25', '445303', '440000,445300,445303', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('541', '536', ',423,536,541,', '3', 'luodingshi', '罗定市', '12', '441230', '440000,441227,441230', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('542', '423', ',423,542,', '2', 'zhanjiangshi', '湛江市', '26', '440800', '440000,440800', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('543', '542', ',423,542,543,', '3', 'chikanqu', '赤坎区', '3', '440802', '440000,440800,440802', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('544', '542', ',423,542,544,', '3', 'xiashanqu', '霞山区', '24', '440803', '440000,440800,440803', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('545', '542', ',423,542,545,', '3', 'potouqu', '坡头区', '16', '440804', '440000,440800,440804', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('546', '542', ',423,542,546,', '3', 'mazhangqu', '麻章区', '13', '440811', '440000,440800,440811', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('547', '542', ',423,542,547,', '3', 'suixixian', '遂溪县', '19', '440823', '440000,440800,440823', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('548', '542', ',423,542,548,', '3', 'xuwenxian', '徐闻县', '24', '440825', '440000,440800,440825', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('549', '542', ',423,542,549,', '3', 'lianjiangshi', '廉江市', '12', '440822', '440000,440800,440822', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('550', '542', ',423,542,550,', '3', 'leizhoushi', '雷州市', '12', '440882', '440000,440800,440882', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('551', '542', ',423,542,551,', '3', 'wuchuanshi', '吴川市', '23', '440821', '440000,440800,440821', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('552', '423', ',423,552,', '2', 'zhaoqingshi', '肇庆市', '26', '441200', '440000,441200', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('553', '552', ',423,552,553,', '3', 'duanzhouqu', '端州区', '4', '441202', '440000,441200,441202', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('554', '552', ',423,552,554,', '3', 'dinghuqu', '鼎湖区', '4', '441203', '440000,441200,441203', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('555', '552', ',423,552,555,', '3', 'guangningxian', '广宁县', '7', '441223', '440000,441200,441223', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('556', '552', ',423,552,556,', '3', 'huaijixian', '怀集县', '8', '441224', '440000,441200,441224', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('557', '552', ',423,552,557,', '3', 'fengkaixian', '封开县', '6', '441225', '440000,441200,441225', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('558', '552', ',423,552,558,', '3', 'deqingxian', '德庆县', '4', '441226', '440000,441200,441226', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('559', '552', ',423,552,559,', '3', 'gaoyaoshi', '高要市', '7', '441221', '440000,441200,441221', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('560', '552', ',423,552,560,', '3', 'sihuishi', '四会市', '19', '441222', '440000,441200,441222', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('561', '423', ',423,561,', '2', 'zhongshanshi', '中山市', '26', '442000', '440000,442000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('562', '423', ',423,562,', '2', 'zhuhaishi', '珠海市', '26', '440400', '440000,440400', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('563', '562', ',423,562,563,', '3', 'xiangzhouqu', '香洲区', '24', '440402', '440000,440400,440402', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('564', '562', ',423,562,564,', '3', 'doumenqu', '斗门区', '4', '440403', '440000,440400,440403', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('565', '562', ',423,562,565,', '3', 'jinwanqu', '金湾区', '10', '440404', '440000,440400,440404', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('566', null, ',566,', '1', 'guangxi', '广西', '7', '450000', '450000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('567', '566', ',566,567,', '2', 'nanningshi', '南宁市', '14', '450100', '450000,450100', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('568', '567', ',566,567,568,', '3', 'xingningqu', '兴宁区', '24', '450102', '450000,450100,450102', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('569', '567', ',566,567,569,', '3', 'qingxiuqu', '青秀区', '17', '450103', '450000,450100,450103', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('570', '567', ',566,567,570,', '3', 'jiangnanqu', '江南区', '10', '450105', '450000,450100,450105', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('571', '567', ',566,567,571,', '3', 'xixiangtangqu', '西乡塘区', '24', '450107', '450000,450100,450107', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('572', '567', ',566,567,572,', '3', 'liangqingqu', '良庆区', '12', '450108', '450000,450100,450108', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('573', '567', ',566,567,573,', '3', 'zuoningqu', '邕宁区', '26', '450109', '450000,450100,450109', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('574', '567', ',566,567,574,', '3', 'wumingxian', '武鸣县', '23', '450122', '450000,450100,450122', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('575', '567', ',566,567,575,', '3', 'longanxian', '隆安县', '12', '450123', '450000,450100,450123', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('576', '567', ',566,567,576,', '3', 'mashanxian', '马山县', '13', '450124', '450000,450100,450124', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('577', '567', ',566,567,577,', '3', 'shanglinxian', '上林县', '19', '450125', '450000,450100,450125', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('578', '567', ',566,567,578,', '3', 'binyangxian', '宾阳县', '2', '450126', '450000,450100,450126', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('579', '567', ',566,567,579,', '3', 'hengxian', '横县', '8', '450127', '450000,450100,450127', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('580', '566', ',566,580,', '2', 'baiseshi', '百色市', '2', '451000', '450000,451000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('581', '580', ',566,580,581,', '3', 'youjiangqu', '右江区', '25', '451002', '450000,451000,451002', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('582', '580', ',566,580,582,', '3', 'tianyangxian', '田阳县', '20', '451021', '450000,451000,451021', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('583', '580', ',566,580,583,', '3', 'tiandongxian', '田东县', '20', '451022', '450000,451000,451022', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('584', '580', ',566,580,584,', '3', 'pingguoxian', '平果县', '16', '451023', '450000,451000,451023', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('585', '580', ',566,580,585,', '3', 'debaoxian', '德保县', '4', '451024', '450000,451000,451024', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('586', '580', ',566,580,586,', '3', 'jingxixian', '靖西县', '10', '451025', '450000,451000,451025', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('587', '580', ',566,580,587,', '3', 'napoxian', '那坡县', '14', '451026', '450000,451000,451026', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('588', '580', ',566,580,588,', '3', 'lingyunxian', '凌云县', '12', '451027', '450000,451000,451027', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('589', '580', ',566,580,589,', '3', 'leyexian', '乐业县', '12', '451028', '450000,451000,451028', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('590', '580', ',566,580,590,', '3', 'tianlinxian', '田林县', '20', '451029', '450000,451000,451029', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('591', '580', ',566,580,591,', '3', 'xilinxian', '西林县', '24', '451030', '450000,451000,451030', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('592', '580', ',566,580,592,', '3', 'longlingezuzizhixian', '隆林各族自治县', '12', '451031', '450000,451000,451031', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('593', '566', ',566,593,', '2', 'beihaishi', '北海市', '2', '450500', '450000,450500', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('594', '593', ',566,593,594,', '3', 'haichengqu', '海城区', '8', '450502', '450000,450500,450502', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('595', '593', ',566,593,595,', '3', 'yinhaiqu', '银海区', '25', '450503', '450000,450500,450503', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('596', '593', ',566,593,596,', '3', 'tieshangangqu', '铁山港区', '20', '450512', '450000,450500,450512', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('597', '593', ',566,593,597,', '3', 'hepuxian', '合浦县', '8', '450521', '450000,450500,450521', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('598', '566', ',566,598,', '2', 'chongzuoshi', '崇左市', '3', '451400', '450000,451400', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('599', '598', ',566,598,599,', '3', 'jiangzhouqu', '江洲区', '10', '451402', '450000,451400,451402', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('600', '598', ',566,598,600,', '3', 'fusuixian', '扶绥县', '6', '451421', '450000,451400,451421', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('601', '598', ',566,598,601,', '3', 'ningmingxian', '宁明县', '14', '451422', '450000,451400,451422', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('602', '598', ',566,598,602,', '3', 'longzhouxian', '龙州县', '12', '451423', '450000,451400,451423', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('603', '598', ',566,598,603,', '3', 'daxinxian', '大新县', '4', '451424', '450000,451400,451424', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('604', '598', ',566,598,604,', '3', 'tiandengxian', '天等县', '20', '451425', '450000,451400,451425', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('605', '598', ',566,598,605,', '3', 'pingxiangshi', '凭祥市', '16', '451481', '450000,451400,451481', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('606', '566', ',566,606,', '2', 'fangchenggangshi', '防城港市', '6', '450600', '450000,450600', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('607', '606', ',566,606,607,', '3', 'gangkouqu', '港口区', '7', '450602', '450000,450600,450602', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('608', '606', ',566,606,608,', '3', 'fangchengqu', '防城区', '6', '450603', '450000,450600,450603', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('609', '606', ',566,606,609,', '3', 'shangsixian', '上思县', '19', '450621', '450000,450600,450621', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('610', '606', ',566,606,610,', '3', 'dongxingshi', '东兴市', '4', '450681', '450000,450600,450681', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('611', '566', ',566,611,', '2', 'guigangshi', '贵港市', '7', '450800', '450000,450800', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('612', '611', ',566,611,612,', '3', 'gangbeiqu', '港北区', '7', '450802', '450000,450800,450802', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('613', '611', ',566,611,613,', '3', 'gangnanqu', '港南区', '7', '450803', '450000,450800,450803', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('614', '611', ',566,611,614,', '3', 'zuotangqu', '覃塘区', '26', '450804', '450000,450800,450804', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('615', '611', ',566,611,615,', '3', 'pingnanxian', '平南县', '16', '450821', '450000,450800,450821', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('616', '611', ',566,611,616,', '3', 'guipingshi', '桂平市', '7', '450881', '450000,450800,450881', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('617', '566', ',566,617,', '2', 'guilinshi', '桂林市', '7', '450300', '450000,450300', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('618', '617', ',566,617,618,', '3', 'xiufengqu', '秀峰区', '24', '450302', '450000,450300,450302', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('619', '617', ',566,617,619,', '3', 'diecaiqu', '叠彩区', '4', '450303', '450000,450300,450303', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('620', '617', ',566,617,620,', '3', 'xiangshanqu', '象山区', '24', '450304', '450000,450300,450304', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('621', '617', ',566,617,621,', '3', 'qixingqu', '七星区', '17', '450305', '450000,450300,450305', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('622', '617', ',566,617,622,', '3', 'yanshanqu', '雁山区', '25', '450311', '450000,450300,450311', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('623', '617', ',566,617,623,', '3', 'yangshuoxian', '阳朔县', '25', '450321', '450000,450300,450321', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('624', '617', ',566,617,624,', '3', 'linguixian', '临桂县', '12', '450312', '450000,450300,450312', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('625', '617', ',566,617,625,', '3', 'lingchuanxian', '灵川县', '12', '450323', '450000,450300,450323', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('626', '617', ',566,617,626,', '3', 'quanzhouxian', '全州县', '17', '450324', '450000,450300,450324', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('627', '617', ',566,617,627,', '3', 'xinganxian', '兴安县', '24', '450325', '450000,450300,450325', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('628', '617', ',566,617,628,', '3', 'yongfuxian', '永福县', '25', '450326', '450000,450300,450326', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('629', '617', ',566,617,629,', '3', 'guanyangxian', '灌阳县', '7', '450327', '450000,450300,450327', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('630', '617', ',566,617,630,', '3', 'longshenggezuzizhixian', '龙胜各族自治县', '12', '450328', '450000,450300,450328', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('631', '617', ',566,617,631,', '3', 'ziyuanxian', '资源县', '26', '450329', '450000,450300,450329', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('632', '617', ',566,617,632,', '3', 'pinglexian', '平乐县', '16', '450330', '450000,450300,450330', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('633', '617', ',566,617,633,', '3', 'lipuxian', '荔蒲县', '12', '450331', '450000,450300,450331', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('634', '617', ',566,617,634,', '3', 'gongchengyaozuzizhixian', '恭城瑶族自治县', '7', '450332', '450000,450300,450332', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('635', '566', ',566,635,', '2', 'hechishi', '河池市', '8', '451200', '450000,451200', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('636', '635', ',566,635,636,', '3', 'jinchengjiangqu', '金城江区', '10', '451202', '450000,451200,451202', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('637', '635', ',566,635,637,', '3', 'nandanxian', '南丹县', '14', '451221', '450000,451200,451221', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('638', '635', ',566,635,638,', '3', 'tianexian', '天峨县', '20', '451222', '450000,451200,451222', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('639', '635', ',566,635,639,', '3', 'fengshanxian', '凤山县', '6', '451223', '450000,451200,451223', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('640', '635', ',566,635,640,', '3', 'donglanxian', '东兰县', '4', '451224', '450000,451200,451224', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('641', '635', ',566,635,641,', '3', 'luochengzuolaozuzizhixian', '罗城仫佬族自治县', '12', '451225', '450000,451200,451225', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('642', '635', ',566,635,642,', '3', 'huanjiangmaonanzuzizhixian', '环江毛南族自治县', '8', '451226', '450000,451200,451226', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('643', '635', ',566,635,643,', '3', 'bamayaozuzizhixian', '巴马瑶族自治县', '2', '451227', '450000,451200,451227', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('644', '635', ',566,635,644,', '3', 'duanyaozuzizhixian', '都安瑶族自治县', '4', '451228', '450000,451200,451228', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('645', '635', ',566,635,645,', '3', 'dahuayaozuzizhixian', '大化瑶族自治县', '4', '451229', '450000,451200,451229', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('646', '635', ',566,635,646,', '3', 'yizhoushi', '宜州市', '25', '451281', '450000,451200,451281', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('647', '566', ',566,647,', '2', 'hezhoushi', '贺州市', '8', '451100', '450000,451100', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('648', '647', ',566,647,648,', '3', 'babuqu', '八步区', '2', '451102', '450000,451100,451102', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('649', '647', ',566,647,649,', '3', 'zhaopingxian', '昭平县', '26', '451121', '450000,451100,451121', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('650', '647', ',566,647,650,', '3', 'zhongshanxian', '钟山县', '26', '451122', '450000,451100,451122', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('651', '647', ',566,647,651,', '3', 'fuchuanyaozuzizhixian', '富川瑶族自治县', '6', '451123', '450000,451100,451123', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('652', '566', ',566,652,', '2', 'laibinshi', '来宾市', '12', '451300', '450000,451300', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('653', '652', ',566,652,653,', '3', 'xingbinqu', '兴宾区', '24', '451302', '450000,451300,451302', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('654', '652', ',566,652,654,', '3', 'xinchengxian', '忻城县', '24', '451321', '450000,451300,451321', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('655', '652', ',566,652,655,', '3', 'xiangzhouxian', '象州县', '24', '451322', '450000,451300,451322', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('656', '652', ',566,652,656,', '3', 'wuxuanxian', '武宣县', '23', '451323', '450000,451300,451323', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('657', '652', ',566,652,657,', '3', 'jinxiuyaozuzizhixian', '金秀瑶族自治县', '10', '451324', '450000,451300,451324', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('658', '652', ',566,652,658,', '3', 'heshanshi', '合山市', '8', '451381', '450000,451300,451381', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('659', '566', ',566,659,', '2', 'liuzhoushi', '柳州市', '12', '450200', '450000,450200', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('660', '659', ',566,659,660,', '3', 'chengzhongqu', '城中区', '3', '450202', '450000,450200,450202', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('661', '659', ',566,659,661,', '3', 'yufengqu', '鱼峰区', '25', '450203', '450000,450200,450203', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('662', '659', ',566,659,662,', '3', 'liunanqu', '柳南区', '12', '450204', '450000,450200,450204', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('663', '659', ',566,659,663,', '3', 'liubeiqu', '柳北区', '12', '450205', '450000,450200,450205', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('664', '659', ',566,659,664,', '3', 'liujiangxian', '柳江县', '12', '450221', '450000,450200,450221', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('665', '659', ',566,659,665,', '3', 'liuchengxian', '柳城县', '12', '450222', '450000,450200,450222', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('666', '659', ',566,659,666,', '3', 'luzhaixian', '鹿寨县', '12', '450223', '450000,450200,450223', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('667', '659', ',566,659,667,', '3', 'ronganxian', '融安县', '18', '450224', '450000,450200,450224', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('668', '659', ',566,659,668,', '3', 'rongshuimiaozuzizhixian', '融水苗族自治县', '18', '450225', '450000,450200,450225', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('669', '659', ',566,659,669,', '3', 'sanjiangdongzuzizhixian', '三江侗族自治县', '19', '450226', '450000,450200,450226', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('670', '566', ',566,670,', '2', 'qinzhoushi', '钦州市', '17', '450700', '450000,450700', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('671', '670', ',566,670,671,', '3', 'qinnanqu', '钦南区', '17', '450702', '450000,450700,450702', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('672', '670', ',566,670,672,', '3', 'qinbeiqu', '钦北区', '17', '450703', '450000,450700,450703', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('673', '670', ',566,670,673,', '3', 'lingshanxian', '灵山县', '12', '450721', '450000,450700,450721', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('674', '670', ',566,670,674,', '3', 'pubeixian', '浦北县', '16', '450722', '450000,450700,450722', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('675', '566', ',566,675,', '2', 'wuzhoushi', '梧州市', '23', '450400', '450000,450400', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('676', '675', ',566,675,676,', '3', 'wanxiuqu', '万秀区', '23', '450403', '450000,450400,450403', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('677', '675', ',566,675,677,', '3', 'dieshanqu', '蝶山区', '4', '450404', '450000,450400,450404', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('678', '675', ',566,675,678,', '3', 'changzhouqu', '长洲区', '3', '450405', '450000,450400,450405', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('679', '675', ',566,675,679,', '3', 'cangwuxian', '苍梧县', '3', '450421', '450000,450400,450421', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('680', '675', ',566,675,680,', '3', 'tengxian', '藤县', '20', '450422', '450000,450400,450422', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('681', '675', ',566,675,681,', '3', 'mengshanxian', '蒙山县', '13', '450423', '450000,450400,450423', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('682', '675', ',566,675,682,', '3', 'zuoxishi', '岑溪市', '26', '450481', '450000,450400,450481', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('683', '566', ',566,683,', '2', 'yulinshi', '玉林市', '25', '450900', '450000,450900', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('684', '683', ',566,683,684,', '3', 'yuzhouqu', '玉州区', '25', '450902', '450000,450900,450902', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('685', '683', ',566,683,685,', '3', 'rongxian', '容县', '18', '450921', '450000,450900,450921', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('686', '683', ',566,683,686,', '3', 'luchuanxian', '陆川县', '12', '450922', '450000,450900,450922', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('687', '683', ',566,683,687,', '3', 'bobaixian', '博白县', '2', '450923', '450000,450900,450923', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('688', '683', ',566,683,688,', '3', 'xingyexian', '兴业县', '24', '450924', '450000,450900,450924', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('689', '683', ',566,683,689,', '3', 'beiliushi', '北流市', '2', '450981', '450000,450900,450981', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('690', null, ',690,', '1', 'guizhou', '贵州', '7', '520000', '520000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('691', '690', ',690,691,', '2', 'guiyangshi', '贵阳市', '7', '520100', '520000,520100', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('692', '691', ',690,691,692,', '3', 'nanmingqu', '南明区', '14', '520102', '520000,520100,520102', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('693', '691', ',690,691,693,', '3', 'yunyanqu', '云岩区', '25', '520103', '520000,520100,520103', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('694', '691', ',690,691,694,', '3', 'huaxiqu', '花溪区', '8', '520111', '520000,520100,520111', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('695', '691', ',690,691,695,', '3', 'wudangqu', '乌当区', '23', '520112', '520000,520100,520112', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('696', '691', ',690,691,696,', '3', 'baiyunqu', '白云区', '2', '520113', '520000,520100,520113', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('697', '691', ',690,691,697,', '3', 'xiaohequ', '小河区', '24', '520114', '520000,520100,520114', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('698', '691', ',690,691,698,', '3', 'kaiyangxian', '开阳县', '11', '520121', '520000,520100,520121', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('699', '691', ',690,691,699,', '3', 'xifengxian', '息烽县', '24', '520122', '520000,520100,520122', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('700', '691', ',690,691,700,', '3', 'xiuwenxian', '修文县', '24', '520123', '520000,520100,520123', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('701', '691', ',690,691,701,', '3', 'qingzhenshi', '清镇市', '17', '520181', '520000,520100,520181', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('702', '690', ',690,702,', '2', 'anshunshi', '安顺市', '1', '520400', '520000,520400', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('703', '702', ',690,702,703,', '3', 'xixiuqu', '西秀区', '24', '520402', '520000,520400,520402', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('704', '702', ',690,702,704,', '3', 'pingbaxian', '平坝县', '16', '520421', '520000,520400,520421', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('705', '702', ',690,702,705,', '3', 'pudingxian', '普定县', '16', '520422', '520000,520400,520422', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('706', '702', ',690,702,706,', '3', 'zhenningbuyizumiaozuzizhixian', '镇宁布依族苗族自治县', '26', '520423', '520000,520400,520423', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('707', '702', ',690,702,707,', '3', 'guanlingbuyizumiaozuzizhixian', '关岭布依族苗族自治县', '7', '520424', '520000,520400,520424', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('708', '702', ',690,702,708,', '3', 'ziyunmiaozubuyizuzizhixian', '紫云苗族布依族自治县', '26', '520425', '520000,520400,520425', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('709', '690', ',690,709,', '2', 'bijiediqu', '毕节地区', '2', '522400', '520000,522400', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('710', '709', ',690,709,710,', '3', 'bijieshi', '毕节市', '2', '522401', '520000,522400,522401', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('711', '709', ',690,709,711,', '3', 'dafangxian', '大方县', '4', '522422', '520000,522400,522422', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('712', '709', ',690,709,712,', '3', 'qianxixian', '黔西县', '17', '522423', '520000,522400,522423', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('713', '709', ',690,709,713,', '3', 'jinshaxian', '金沙县', '10', '522424', '520000,522400,522424', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('714', '709', ',690,709,714,', '3', 'zhijinxian', '织金县', '26', '522425', '520000,522400,522425', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('715', '709', ',690,709,715,', '3', 'nayongxian', '纳雍县', '14', '522426', '520000,522400,522426', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('716', '709', ',690,709,716,', '3', 'weiningyizuhuizumiaozuzizhixian', '威宁彝族回族苗族自治县', '23', '522427', '520000,522400,522427', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('717', '709', ',690,709,717,', '3', 'hezhangxian', '赫章县', '8', '522428', '520000,522400,522428', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('718', '690', ',690,718,', '2', 'liupanshuishi', '六盘水市', '12', '520200', '520000,520200', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('719', '718', ',690,718,719,', '3', 'zhongshanqu', '钟山区', '26', '520201', '520000,520200,520201', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('720', '718', ',690,718,720,', '3', 'liuzhitequ', '六枝特区', '12', '520203', '520000,520200,520203', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('721', '718', ',690,718,721,', '3', 'shuichengxian', '水城县', '19', '520221', '520000,520200,520221', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('722', '718', ',690,718,722,', '3', 'panxian', '盘县', '16', '520222', '520000,520200,520222', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('723', '690', ',690,723,', '2', 'qiandongnanmiaozudongzuzizhizhou', '黔东南苗族侗族自治州', '17', '522600', '520000,522600', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('724', '723', ',690,723,724,', '3', 'kailishi', '凯里市', '11', '522601', '520000,522600,522601', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('725', '723', ',690,723,725,', '3', 'huangpingxian', '黄平县', '8', '522622', '520000,522600,522622', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('726', '723', ',690,723,726,', '3', 'shibingxian', '施秉县', '19', '522623', '520000,522600,522623', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('727', '723', ',690,723,727,', '3', 'sansuixian', '三穗县', '19', '522624', '520000,522600,522624', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('728', '723', ',690,723,728,', '3', 'zhenyuanxian', '镇远县', '26', '522625', '520000,522600,522625', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('729', '723', ',690,723,729,', '3', 'zuogongxian', '岑巩县', '26', '522626', '520000,522600,522626', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('730', '723', ',690,723,730,', '3', 'tianzhuxian', '天柱县', '20', '522627', '520000,522600,522627', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('731', '723', ',690,723,731,', '3', 'jinpingxian', '锦屏县', '10', '522628', '520000,522600,522628', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('732', '723', ',690,723,732,', '3', 'jianhexian', '剑河县', '10', '522629', '520000,522600,522629', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('733', '723', ',690,723,733,', '3', 'taijiangxian', '台江县', '20', '522630', '520000,522600,522630', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('734', '723', ',690,723,734,', '3', 'lipingxian', '黎平县', '12', '522631', '520000,522600,522631', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('735', '723', ',690,723,735,', '3', 'zuojiangxian', '榕江县', '26', '522632', '520000,522600,522632', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('736', '723', ',690,723,736,', '3', 'congjiangxian', '从江县', '3', '522633', '520000,522600,522633', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('737', '723', ',690,723,737,', '3', 'leishanxian', '雷山县', '12', '522634', '520000,522600,522634', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('738', '723', ',690,723,738,', '3', 'majiangxian', '麻江县', '13', '522635', '520000,522600,522635', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('739', '723', ',690,723,739,', '3', 'danzhaixian', '丹寨县', '4', '522636', '520000,522600,522636', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('740', '690', ',690,740,', '2', 'qiannanbuyizumiaozuzizhizhou', '黔南布依族苗族自治州', '17', '522700', '520000,522700', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('741', '740', ',690,740,741,', '3', 'duyunshi', '都匀市', '4', '522701', '520000,522700,522701', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('742', '740', ',690,740,742,', '3', 'fuquanshi', '福泉市', '6', '522702', '520000,522700,522702', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('743', '740', ',690,740,743,', '3', 'liboxian', '荔波县', '12', '522722', '520000,522700,522722', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('744', '740', ',690,740,744,', '3', 'guidingxian', '贵定县', '7', '522723', '520000,522700,522723', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('745', '740', ',690,740,745,', '3', 'wenganxian', '瓮安县', '23', '522725', '520000,522700,522725', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('746', '740', ',690,740,746,', '3', 'dushanxian', '独山县', '4', '522726', '520000,522700,522726', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('747', '740', ',690,740,747,', '3', 'pingtangxian', '平塘县', '16', '522727', '520000,522700,522727', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('748', '740', ',690,740,748,', '3', 'luodianxian', '罗甸县', '12', '522728', '520000,522700,522728', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('749', '740', ',690,740,749,', '3', 'changshunxian', '长顺县', '3', '522729', '520000,522700,522729', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('750', '740', ',690,740,750,', '3', 'longlixian', '龙里县', '12', '522730', '520000,522700,522730', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('751', '740', ',690,740,751,', '3', 'huishuixian', '惠水县', '8', '522731', '520000,522700,522731', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('752', '740', ',690,740,752,', '3', 'sandushuizuzizhixian', '三都水族自治县', '19', '522732', '520000,522700,522732', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('753', '690', ',690,753,', '2', 'qianxinanbuyizumiaozuzizhizhou', '黔西南布依族苗族自治州', '17', '522300', '520000,522300', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('754', '753', ',690,753,754,', '3', 'xingyishi', '兴义市', '24', '522301', '520000,522300,522301', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('755', '753', ',690,753,755,', '3', 'xingrenxian', '兴仁县', '24', '522322', '520000,522300,522322', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('756', '753', ',690,753,756,', '3', 'puanxian', '普安县', '16', '522323', '520000,522300,522323', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('757', '753', ',690,753,757,', '3', 'qinglongxian', '晴隆县', '17', '522324', '520000,522300,522324', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('758', '753', ',690,753,758,', '3', 'zhenfengxian', '贞丰县', '26', '522325', '520000,522300,522325', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('759', '753', ',690,753,759,', '3', 'wangzuoxian', '望谟县', '23', '522326', '520000,522300,522326', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('760', '753', ',690,753,760,', '3', 'cehengxian', '册亨县', '3', '522327', '520000,522300,522327', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('761', '753', ',690,753,761,', '3', 'anlongxian', '安龙县', '1', '522328', '520000,522300,522328', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('762', '690', ',690,762,', '2', 'tongrendiqu', '铜仁地区', '20', '522200', '520000,522200', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('763', '762', ',690,762,763,', '3', 'tongrenshi', '铜仁市', '20', '522201', '520000,522200,522201', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('764', '762', ',690,762,764,', '3', 'jiangkouxian', '江口县', '10', '522222', '520000,522200,522222', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('765', '762', ',690,762,765,', '3', 'yupingdongzuzizhixian', '玉屏侗族自治县', '25', '522223', '520000,522200,522223', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('766', '762', ',690,762,766,', '3', 'shizuoxian', '石阡县', '19', '522224', '520000,522200,522224', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('767', '762', ',690,762,767,', '3', 'sinanxian', '思南县', '19', '522225', '520000,522200,522225', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('768', '762', ',690,762,768,', '3', 'yinjiangtujiazumiaozuzizhixian', '印江土家族苗族自治县', '25', '522226', '520000,522200,522226', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('769', '762', ',690,762,769,', '3', 'dejiangxian', '德江县', '4', '522227', '520000,522200,522227', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('770', '762', ',690,762,770,', '3', 'yanhetujiazuzizhixian', '沿河土家族自治县', '25', '522228', '520000,522200,522228', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('771', '762', ',690,762,771,', '3', 'songtaomiaozuzizhixian', '松桃苗族自治县', '19', '522229', '520000,522200,522229', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('772', '762', ',690,762,772,', '3', 'wanshantequ', '万山特区', '23', '522230', '520000,522200,522230', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('773', '690', ',690,773,', '2', 'zunyishi', '遵义市', '26', '520300', '520000,520300', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('774', '773', ',690,773,774,', '3', 'honghuagangqu', '红花岗区', '8', '520302', '520000,520300,520302', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('775', '773', ',690,773,775,', '3', 'huichuanqu', '汇川区', '8', '520303', '520000,520300,520303', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('776', '773', ',690,773,776,', '3', 'zunyixian', '遵义县', '26', '520321', '520000,520300,520321', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('777', '773', ',690,773,777,', '3', 'tongzuoxian', '桐梓县', '20', '520322', '520000,520300,520322', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('778', '773', ',690,773,778,', '3', 'suiyangxian', '绥阳县', '19', '520323', '520000,520300,520323', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('779', '773', ',690,773,779,', '3', 'zhenganxian', '正安县', '26', '520324', '520000,520300,520324', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('780', '773', ',690,773,780,', '3', 'daozhenzuolaozumiaozuzizhixian', '道真仡佬族苗族自治县', '4', '520325', '520000,520300,520325', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('781', '773', ',690,773,781,', '3', 'wuchuanzuolaozumiaozuzizhixian', '务川仡佬族苗族自治县', '23', '520326', '520000,520300,520326', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('782', '773', ',690,773,782,', '3', 'fenggangxian', '凤冈县', '6', '520327', '520000,520300,520327', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('783', '773', ',690,773,783,', '3', 'zuotanxian', '湄潭县', '26', '520328', '520000,520300,520328', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('784', '773', ',690,773,784,', '3', 'yuqingxian', '余庆县', '25', '520329', '520000,520300,520329', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('785', '773', ',690,773,785,', '3', 'xishuixian', '习水县', '24', '520330', '520000,520300,520330', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('786', '773', ',690,773,786,', '3', 'chishuishi', '赤水市', '3', '520381', '520000,520300,520381', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('787', '773', ',690,773,787,', '3', 'renhuaishi', '仁怀市', '18', '520382', '520000,520300,520382', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('788', null, ',788,', '1', 'hainan', '海南', '8', '460000', '460000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('789', '788', ',788,789,', '2', 'haikoushi', '海口市', '8', '460100', '460000,460100', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('790', '789', ',788,789,790,', '3', 'xiuyingqu', '秀英区', '24', '460105', '460000,460100,460105', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('791', '789', ',788,789,791,', '3', 'longhuaqu', '龙华区', '12', '460106', '460000,460100,460106', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('792', '789', ',788,789,792,', '3', 'qiongshanqu', '琼山区', '17', '460107', '460000,460100,460107', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('793', '789', ',788,789,793,', '3', 'meilanqu', '美兰区', '13', '460108', '460000,460100,460108', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('794', '788', ',788,794,', '2', 'baishalizuzizhixian', '白沙黎族自治县', '2', '469025', '460000,469025', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('795', '788', ',788,795,', '2', 'baotinglizumiaozuzizhixian', '保亭黎族苗族自治县', '2', '469029', '460000,469029', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('796', '788', ',788,796,', '2', 'changjianglizuzizhixian', '昌江黎族自治县', '3', '469026', '460000,469026', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('797', '788', ',788,797,', '2', 'chengmaixian', '澄迈县', '3', '469023', '460000,469023', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('798', '788', ',788,798,', '2', 'zuozhoushi', '儋州市', '26', '460003', '460000,460003', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('799', '788', ',788,799,', '2', 'dinganxian', '定安县', '4', '469021', '460000,469021', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('800', '788', ',788,800,', '2', 'dongfangshi', '东方市', '4', '460007', '460000,460007', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('801', '788', ',788,801,', '2', 'ledonglizuzizhixian', '乐东黎族自治县', '12', '469027', '460000,469027', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('802', '788', ',788,802,', '2', 'lingaoxian', '临高县', '12', '469024', '460000,469024', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('803', '788', ',788,803,', '2', 'lingshuilizuzizhixian', '陵水黎族自治县', '12', '469028', '460000,469028', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('804', '788', ',788,804,', '2', 'nanshaqundao', '南沙群岛', '14', '460038', '460000,460038', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('805', '788', ',788,805,', '2', 'qionghaishi', '琼海市', '17', '469002', '460000,469002', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('806', '788', ',788,806,', '2', 'qiongzhonglizumiaozuzizhixian', '琼中黎族苗族自治县', '17', '469030', '460000,469030', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('807', '788', ',788,807,', '2', 'sanyashi', '三亚市', '19', '460200', '460000,460200', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('808', '788', ',788,808,', '2', 'tunchangxian', '屯昌县', '20', '469022', '460000,469022', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('809', '788', ',788,809,', '2', 'wanningshi', '万宁市', '23', '469006', '460000,469006', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('810', '788', ',788,810,', '2', 'wenchangshi', '文昌市', '23', '469005', '460000,469005', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('811', '788', ',788,811,', '2', 'wuzhishanshi', '五指山市', '23', '469001', '460000,469001', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('812', '788', ',788,812,', '2', 'xishaqundao', '西沙群岛', '24', '460037', '460000,460037', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('813', '788', ',788,813,', '2', 'zhongshaqundaodedaojiaojiqihaiyu', '中沙群岛的岛礁及其海域', '26', '460039', '460000,460039', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('814', null, ',814,', '1', 'hebei', '河北', '8', '130000', '130000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('815', '814', ',814,815,', '2', 'shijiazhuangshi', '石家庄市', '19', '130100', '130000,130100', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('816', '815', ',814,815,816,', '3', 'changanqu', '长安区', '3', '130102', '130000,130100,130102', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('817', '815', ',814,815,817,', '3', 'qiaodongqu', '桥东区', '17', '130103', '130000,130100,130103', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('818', '815', ',814,815,818,', '3', 'qiaoxiqu', '桥西区', '17', '130104', '130000,130100,130104', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('819', '815', ',814,815,819,', '3', 'xinhuaqu', '新华区', '24', '130105', '130000,130100,130105', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('820', '815', ',814,815,820,', '3', 'jingzuokuangqu', '井陉矿区', '10', '130107', '130000,130100,130107', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('821', '815', ',814,815,821,', '3', 'yuhuaqu', '裕华区', '25', '130108', '130000,130100,130108', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('822', '815', ',814,815,822,', '3', 'jingzuoxian', '井陉县', '10', '130121', '130000,130100,130121', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('823', '815', ',814,815,823,', '3', 'zhengdingxian', '正定县', '26', '130123', '130000,130100,130123', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('824', '815', ',814,815,824,', '3', 'zuochengxian', '栾城县', '26', '130124', '130000,130100,130124', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('825', '815', ',814,815,825,', '3', 'xingtangxian', '行唐县', '24', '130125', '130000,130100,130125', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('826', '815', ',814,815,826,', '3', 'lingshouxian', '灵寿县', '12', '130126', '130000,130100,130126', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('827', '815', ',814,815,827,', '3', 'gaoyixian', '高邑县', '7', '130127', '130000,130100,130127', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('828', '815', ',814,815,828,', '3', 'shenzexian', '深泽县', '19', '130128', '130000,130100,130128', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('829', '815', ',814,815,829,', '3', 'zanhuangxian', '赞皇县', '26', '130129', '130000,130100,130129', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('830', '815', ',814,815,830,', '3', 'wujixian', '无极县', '23', '130130', '130000,130100,130130', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('831', '815', ',814,815,831,', '3', 'pingshanxian', '平山县', '16', '130131', '130000,130100,130131', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('832', '815', ',814,815,832,', '3', 'yuanshixian', '元氏县', '25', '130132', '130000,130100,130132', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('833', '815', ',814,815,833,', '3', 'zhaoxian', '赵县', '26', '130133', '130000,130100,130133', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('834', '815', ',814,815,834,', '3', 'xinjishi', '辛集市', '24', '130181', '130000,130100,130181', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('835', '815', ',814,815,835,', '3', 'zuochengshi', '藁城市', '26', '130182', '130000,130100,130182', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('836', '815', ',814,815,836,', '3', 'jinzhoushi', '晋州市', '10', '130183', '130000,130100,130183', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('837', '815', ',814,815,837,', '3', 'xinleshi', '新乐市', '24', '130184', '130000,130100,130184', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('838', '815', ',814,815,838,', '3', 'luquanshi', '鹿泉市', '12', '130185', '130000,130100,130185', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('839', '814', ',814,839,', '2', 'baodingshi', '保定市', '2', '130600', '130000,130600', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('840', '839', ',814,839,840,', '3', 'xinshiqu', '新市区', '24', '130602', '130000,130600,130602', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('841', '839', ',814,839,841,', '3', 'beishiqu', '北市区', '2', '130603', '130000,130600,130603', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('842', '839', ',814,839,842,', '3', 'nanshiqu', '南市区', '14', '130604', '130000,130600,130604', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('843', '839', ',814,839,843,', '3', 'manchengxian', '满城县', '13', '130621', '130000,130600,130621', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('844', '839', ',814,839,844,', '3', 'qingyuanxian', '清苑县', '17', '130622', '130000,130600,130622', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('845', '839', ',814,839,845,', '3', 'zuoshuixian', '涞水县', '26', '130623', '130000,130600,130623', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('846', '839', ',814,839,846,', '3', 'fupingxian', '阜平县', '6', '130624', '130000,130600,130624', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('847', '839', ',814,839,847,', '3', 'xushuixian', '徐水县', '24', '130625', '130000,130600,130625', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('848', '839', ',814,839,848,', '3', 'dingxingxian', '定兴县', '4', '130626', '130000,130600,130626', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('849', '839', ',814,839,849,', '3', 'tangxian', '唐县', '20', '130627', '130000,130600,130627', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('850', '839', ',814,839,850,', '3', 'gaoyangxian', '高阳县', '7', '130628', '130000,130600,130628', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('851', '839', ',814,839,851,', '3', 'rongchengxian', '容城县', '18', '130629', '130000,130600,130629', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('852', '839', ',814,839,852,', '3', 'zuoyuanxian', '涞源县', '26', '130630', '130000,130600,130630', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('853', '839', ',814,839,853,', '3', 'wangduxian', '望都县', '23', '130631', '130000,130600,130631', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('854', '839', ',814,839,854,', '3', 'anxinxian', '安新县', '1', '130632', '130000,130600,130632', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('855', '839', ',814,839,855,', '3', 'yixian', '易县', '25', '130633', '130000,130600,130633', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('856', '839', ',814,839,856,', '3', 'quyangxian', '曲阳县', '17', '130634', '130000,130600,130634', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('857', '839', ',814,839,857,', '3', 'zuoxian', '蠡县', '26', '130635', '130000,130600,130635', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('858', '839', ',814,839,858,', '3', 'shunpingxian', '顺平县', '19', '130636', '130000,130600,130636', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('859', '839', ',814,839,859,', '3', 'boyexian', '博野县', '2', '130637', '130000,130600,130637', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('860', '839', ',814,839,860,', '3', 'xiongxian', '雄县', '24', '130638', '130000,130600,130638', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('861', '839', ',814,839,861,', '3', 'zuozhoushi', '涿州市', '26', '130681', '130000,130600,130681', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('862', '839', ',814,839,862,', '3', 'dingzhoushi', '定州市', '4', '130682', '130000,130600,130682', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('863', '839', ',814,839,863,', '3', 'anguoshi', '安国市', '1', '130683', '130000,130600,130683', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('864', '839', ',814,839,864,', '3', 'gaobeidianshi', '高碑店市', '7', '130684', '130000,130600,130684', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('865', '814', ',814,865,', '2', 'cangzhoushi', '沧州市', '3', '130900', '130000,130900', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('866', '865', ',814,865,866,', '3', 'xinhuaqu', '新华区', '24', '130902', '130000,130900,130902', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('867', '865', ',814,865,867,', '3', 'yunhequ', '运河区', '25', '130903', '130000,130900,130903', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('868', '865', ',814,865,868,', '3', 'cangxian', '沧县', '3', '130921', '130000,130900,130921', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('869', '865', ',814,865,869,', '3', 'qingxian', '青县', '17', '130922', '130000,130900,130922', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('870', '865', ',814,865,870,', '3', 'dongguangxian', '东光县', '4', '130923', '130000,130900,130923', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('871', '865', ',814,865,871,', '3', 'haixingxian', '海兴县', '8', '130924', '130000,130900,130924', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('872', '865', ',814,865,872,', '3', 'yanshanxian', '盐山县', '25', '130925', '130000,130900,130925', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('873', '865', ',814,865,873,', '3', 'suningxian', '肃宁县', '19', '130926', '130000,130900,130926', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('874', '865', ',814,865,874,', '3', 'nanpixian', '南皮县', '14', '130927', '130000,130900,130927', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('875', '865', ',814,865,875,', '3', 'wuqiaoxian', '吴桥县', '23', '130928', '130000,130900,130928', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('876', '865', ',814,865,876,', '3', 'xianxian', '献县', '24', '130929', '130000,130900,130929', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('877', '865', ',814,865,877,', '3', 'mengcunhuizuzizhixian', '孟村回族自治县', '13', '130930', '130000,130900,130930', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('878', '865', ',814,865,878,', '3', 'botoushi', '泊头市', '2', '130981', '130000,130900,130981', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('879', '865', ',814,865,879,', '3', 'renqiushi', '任丘市', '18', '130982', '130000,130900,130982', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('880', '865', ',814,865,880,', '3', 'huangzuoshi', '黄骅市', '8', '130983', '130000,130900,130983', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('881', '865', ',814,865,881,', '3', 'hejianshi', '河间市', '8', '130984', '130000,130900,130984', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('882', '814', ',814,882,', '2', 'chengdeshi', '承德市', '3', '130800', '130000,130800', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('883', '882', ',814,882,883,', '3', 'shuangqiaoqu', '双桥区', '19', '130802', '130000,130800,130802', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('884', '882', ',814,882,884,', '3', 'shuangluanqu', '双滦区', '19', '130803', '130000,130800,130803', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('885', '882', ',814,882,885,', '3', 'yingshouyingzikuangqu', '鹰手营子矿区', '25', '130804', '130000,130800,130804', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('886', '882', ',814,882,886,', '3', 'chengdexian', '承德县', '3', '130821', '130000,130800,130821', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('887', '882', ',814,882,887,', '3', 'xinglongxian', '兴隆县', '24', '130822', '130000,130800,130822', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('888', '882', ',814,882,888,', '3', 'pingquanxian', '平泉县', '16', '130823', '130000,130800,130823', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('889', '882', ',814,882,889,', '3', 'luanpingxian', '滦平县', '12', '130824', '130000,130800,130824', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('890', '882', ',814,882,890,', '3', 'longhuaxian', '隆化县', '12', '130825', '130000,130800,130825', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('891', '882', ',814,882,891,', '3', 'fengningmanzuzizhixian', '丰宁满族自治县', '6', '130826', '130000,130800,130826', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('892', '882', ',814,882,892,', '3', 'kuanchengmanzuzizhixian', '宽城满族自治县', '11', '130827', '130000,130800,130827', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('893', '882', ',814,882,893,', '3', 'weichangmanzumengguzuzizhixian', '围场满族蒙古族自治县', '23', '130828', '130000,130800,130828', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('894', '814', ',814,894,', '2', 'handanshi', '邯郸市', '8', '130400', '130000,130400', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('895', '894', ',814,894,895,', '3', 'hanshanqu', '邯山区', '8', '130402', '130000,130400,130402', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('896', '894', ',814,894,896,', '3', 'congtaiqu', '丛台区', '3', '130403', '130000,130400,130403', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('897', '894', ',814,894,897,', '3', 'fuxingqu', '复兴区', '6', '130404', '130000,130400,130404', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('898', '894', ',814,894,898,', '3', 'fengfengkuangqu', '峰峰矿区', '6', '130406', '130000,130400,130406', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('899', '894', ',814,894,899,', '3', 'handanxian', '邯郸县', '8', '130421', '130000,130400,130421', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('900', '894', ',814,894,900,', '3', 'linzhangxian', '临漳县', '12', '130423', '130000,130400,130423', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('901', '894', ',814,894,901,', '3', 'chenganxian', '成安县', '3', '130424', '130000,130400,130424', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('902', '894', ',814,894,902,', '3', 'damingxian', '大名县', '4', '130425', '130000,130400,130425', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('903', '894', ',814,894,903,', '3', 'shexian', '涉县', '19', '130426', '130000,130400,130426', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('904', '894', ',814,894,904,', '3', 'cixian', '磁县', '3', '130427', '130000,130400,130427', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('905', '894', ',814,894,905,', '3', 'feixiangxian', '肥乡县', '6', '130428', '130000,130400,130428', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('906', '894', ',814,894,906,', '3', 'yongnianxian', '永年县', '25', '130429', '130000,130400,130429', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('907', '894', ',814,894,907,', '3', 'qiuxian', '邱县', '17', '130430', '130000,130400,130430', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('908', '894', ',814,894,908,', '3', 'jizexian', '鸡泽县', '10', '130431', '130000,130400,130431', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('909', '894', ',814,894,909,', '3', 'guangpingxian', '广平县', '7', '130432', '130000,130400,130432', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('910', '894', ',814,894,910,', '3', 'guantaoxian', '馆陶县', '7', '130433', '130000,130400,130433', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('911', '894', ',814,894,911,', '3', 'weixian', '魏县', '23', '130434', '130000,130400,130434', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('912', '894', ',814,894,912,', '3', 'quzhouxian', '曲周县', '17', '130435', '130000,130400,130435', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('913', '894', ',814,894,913,', '3', 'wuanshi', '武安市', '23', '130422', '130000,130400,130422', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('914', '814', ',814,914,', '2', 'hengshuishi', '衡水市', '8', '131100', '130000,131100', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('915', '914', ',814,914,915,', '3', 'taochengqu', '桃城区', '20', '131102', '130000,131100,131102', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('916', '914', ',814,914,916,', '3', 'zaoqiangxian', '枣强县', '26', '131121', '130000,131100,131121', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('917', '914', ',814,914,917,', '3', 'wuyixian', '武邑县', '23', '131122', '130000,131100,131122', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('918', '914', ',814,914,918,', '3', 'wuqiangxian', '武强县', '23', '131123', '130000,131100,131123', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('919', '914', ',814,914,919,', '3', 'raoyangxian', '饶阳县', '18', '131124', '130000,131100,131124', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('920', '914', ',814,914,920,', '3', 'anpingxian', '安平县', '1', '131125', '130000,131100,131125', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('921', '914', ',814,914,921,', '3', 'guchengxian', '故城县', '7', '131126', '130000,131100,131126', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('922', '914', ',814,914,922,', '3', 'jingxian', '景县', '10', '131127', '130000,131100,131127', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('923', '914', ',814,914,923,', '3', 'fuchengxian', '阜城县', '6', '131128', '130000,131100,131128', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('924', '914', ',814,914,924,', '3', 'jizhoushi', '冀州市', '10', '131181', '130000,131100,131181', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('925', '914', ',814,914,925,', '3', 'shenzhoushi', '深州市', '19', '131182', '130000,131100,131182', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('926', '814', ',814,926,', '2', 'langfangshi', '廊坊市', '12', '131000', '130000,131000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('927', '926', ',814,926,927,', '3', 'anciqu', '安次区', '1', '131002', '130000,131000,131002', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('928', '926', ',814,926,928,', '3', 'guangyangqu', '广阳区', '7', '131003', '130000,131000,131003', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('929', '926', ',814,926,929,', '3', 'guanxian', '固安县', '7', '131022', '130000,131000,131022', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('930', '926', ',814,926,930,', '3', 'yongqingxian', '永清县', '25', '131023', '130000,131000,131023', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('931', '926', ',814,926,931,', '3', 'xianghexian', '香河县', '24', '131024', '130000,131000,131024', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('932', '926', ',814,926,932,', '3', 'dachengxian', '大城县', '4', '131025', '130000,131000,131025', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('933', '926', ',814,926,933,', '3', 'wenanxian', '文安县', '23', '131026', '130000,131000,131026', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('934', '926', ',814,926,934,', '3', 'dachanghuizuzizhixian', '大厂回族自治县', '4', '131028', '130000,131000,131028', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('935', '926', ',814,926,935,', '3', 'bazhoushi', '霸州市', '2', '131081', '130000,131000,131081', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('936', '926', ',814,926,936,', '3', 'sanheshi', '三河市', '19', '131021', '130000,131000,131021', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('937', '814', ',814,937,', '2', 'qinhuangdaoshi', '秦皇岛市', '17', '130300', '130000,130300', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('938', '937', ',814,937,938,', '3', 'haigangqu', '海港区', '8', '130302', '130000,130300,130302', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('939', '937', ',814,937,939,', '3', 'shanhaiguanqu', '山海关区', '19', '130303', '130000,130300,130303', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('940', '937', ',814,937,940,', '3', 'beidaihequ', '北戴河区', '2', '130304', '130000,130300,130304', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('941', '937', ',814,937,941,', '3', 'qinglongmanzuzizhixian', '青龙满族自治县', '17', '130321', '130000,130300,130321', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('942', '937', ',814,937,942,', '3', 'changlixian', '昌黎县', '3', '130322', '130000,130300,130322', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('943', '937', ',814,937,943,', '3', 'funingxian', '抚宁县', '6', '130323', '130000,130300,130323', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('944', '937', ',814,937,944,', '3', 'lulongxian', '卢龙县', '12', '130324', '130000,130300,130324', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('945', '814', ',814,945,', '2', 'tangshanshi', '唐山市', '20', '130200', '130000,130200', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('946', '945', ',814,945,946,', '3', 'lunanqu', '路南区', '12', '130202', '130000,130200,130202', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('947', '945', ',814,945,947,', '3', 'lubeiqu', '路北区', '12', '130203', '130000,130200,130203', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('948', '945', ',814,945,948,', '3', 'guyequ', '古冶区', '7', '130204', '130000,130200,130204', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('949', '945', ',814,945,949,', '3', 'kaipingqu', '开平区', '11', '130205', '130000,130200,130205', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('950', '945', ',814,945,950,', '3', 'fengnanqu', '丰南区', '6', '130222', '130000,130200,130222', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('951', '945', ',814,945,951,', '3', 'fengrunqu', '丰润区', '6', '130208', '130000,130200,130208', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('952', '945', ',814,945,952,', '3', 'luanxian', '滦县', '12', '130223', '130000,130200,130223', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('953', '945', ',814,945,953,', '3', 'luannanxian', '滦南县', '12', '130224', '130000,130200,130224', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('954', '945', ',814,945,954,', '3', 'letingxian', '乐亭县', '12', '130225', '130000,130200,130225', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('955', '945', ',814,945,955,', '3', 'qianxixian', '迁西县', '17', '130227', '130000,130200,130227', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('956', '945', ',814,945,956,', '3', 'yutianxian', '玉田县', '25', '130229', '130000,130200,130229', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('957', '945', ',814,945,957,', '3', 'tanghaixian', '唐海县', '20', '130230', '130000,130200,130230', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('958', '945', ',814,945,958,', '3', 'zunhuashi', '遵化市', '26', '130228', '130000,130200,130228', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('959', '945', ',814,945,959,', '3', 'qiananshi', '迁安市', '17', '130226', '130000,130200,130226', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('960', '814', ',814,960,', '2', 'xingtaishi', '邢台市', '24', '130500', '130000,130500', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('961', '960', ',814,960,961,', '3', 'qiaodongqu', '桥东区', '17', '130702', '130000,130500,130502', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('962', '960', ',814,960,962,', '3', 'qiaoxiqu', '桥西区', '17', '130703', '130000,130500,130503', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('963', '960', ',814,960,963,', '3', 'xingtaixian', '邢台县', '24', '130521', '130000,130500,130521', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('964', '960', ',814,960,964,', '3', 'linchengxian', '临城县', '12', '130522', '130000,130500,130522', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('965', '960', ',814,960,965,', '3', 'neiqiuxian', '内丘县', '14', '130523', '130000,130500,130523', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('966', '960', ',814,960,966,', '3', 'baixiangxian', '柏乡县', '2', '130524', '130000,130500,130524', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('967', '960', ',814,960,967,', '3', 'longyaoxian', '隆尧县', '12', '130525', '130000,130500,130525', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('968', '960', ',814,960,968,', '3', 'renxian', '任县', '18', '130526', '130000,130500,130526', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('969', '960', ',814,960,969,', '3', 'nanhexian', '南和县', '14', '130527', '130000,130500,130527', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('970', '960', ',814,960,970,', '3', 'ningjinxian', '宁晋县', '14', '130528', '130000,130500,130528', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('971', '960', ',814,960,971,', '3', 'juluxian', '巨鹿县', '10', '130529', '130000,130500,130529', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('972', '960', ',814,960,972,', '3', 'xinhexian', '新河县', '24', '130530', '130000,130500,130530', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('973', '960', ',814,960,973,', '3', 'guangzongxian', '广宗县', '7', '130531', '130000,130500,130531', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('974', '960', ',814,960,974,', '3', 'pingxiangxian', '平乡县', '16', '130532', '130000,130500,130532', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('975', '960', ',814,960,975,', '3', 'weixian', '威县', '23', '130533', '130000,130500,130533', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('976', '960', ',814,960,976,', '3', 'qinghexian', '清河县', '17', '130534', '130000,130500,130534', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('977', '960', ',814,960,977,', '3', 'linxixian', '临西县', '12', '130535', '130000,130500,130535', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('978', '960', ',814,960,978,', '3', 'nangongshi', '南宫市', '14', '130581', '130000,130500,130581', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('979', '960', ',814,960,979,', '3', 'shaheshi', '沙河市', '19', '130582', '130000,130500,130582', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('980', '814', ',814,980,', '2', 'zhangjiakoushi', '张家口市', '26', '130700', '130000,130700', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('981', '980', ',814,980,981,', '3', 'qiaodongqu', '桥东区', '17', '130702', '130000,130700,130702', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('982', '980', ',814,980,982,', '3', 'qiaoxiqu', '桥西区', '17', '130703', '130000,130700,130703', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('983', '980', ',814,980,983,', '3', 'xuanhuaqu', '宣化区', '24', '130705', '130000,130700,130705', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('984', '980', ',814,980,984,', '3', 'xiahuayuanqu', '下花园区', '24', '130706', '130000,130700,130706', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('985', '980', ',814,980,985,', '3', 'xuanhuaxian', '宣化县', '24', '130721', '130000,130700,130721', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('986', '980', ',814,980,986,', '3', 'zhangbeixian', '张北县', '26', '130722', '130000,130700,130722', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('987', '980', ',814,980,987,', '3', 'kangbaoxian', '康保县', '11', '130723', '130000,130700,130723', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('988', '980', ',814,980,988,', '3', 'guyuanxian', '沽源县', '7', '130724', '130000,130700,130724', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('989', '980', ',814,980,989,', '3', 'shangyixian', '尚义县', '19', '130725', '130000,130700,130725', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('990', '980', ',814,980,990,', '3', 'weixian', '蔚县', '23', '130726', '130000,130700,130726', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('991', '980', ',814,980,991,', '3', 'yangyuanxian', '阳原县', '25', '130727', '130000,130700,130727', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('992', '980', ',814,980,992,', '3', 'huaianxian', '怀安县', '8', '130728', '130000,130700,130728', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('993', '980', ',814,980,993,', '3', 'wanquanxian', '万全县', '23', '130729', '130000,130700,130729', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('994', '980', ',814,980,994,', '3', 'huailaixian', '怀来县', '8', '130730', '130000,130700,130730', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('995', '980', ',814,980,995,', '3', 'zuoluxian', '涿鹿县', '26', '130731', '130000,130700,130731', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('996', '980', ',814,980,996,', '3', 'chichengxian', '赤城县', '3', '130732', '130000,130700,130732', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('997', '980', ',814,980,997,', '3', 'chonglixian', '崇礼县', '3', '130733', '130000,130700,130733', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('998', null, ',998,', '1', 'henan', '河南', '8', '410000', '410000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('999', '998', ',998,999,', '2', 'zhengzhoushi', '郑州市', '26', '410100', '410000,410100', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1000', '999', ',998,999,1000,', '3', 'zhongyuanqu', '中原区', '26', '410102', '410000,410100,410102', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1001', '999', ',998,999,1001,', '3', 'erqiqu', '二七区', '5', '410103', '410000,410100,410103', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1002', '999', ',998,999,1002,', '3', 'guanchenghuizuqu', '管城回族区', '7', '410104', '410000,410100,410104', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1003', '999', ',998,999,1003,', '3', 'jinshuiqu', '金水区', '10', '410105', '410000,410100,410105', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1004', '999', ',998,999,1004,', '3', 'shangjiequ', '上街区', '19', '410106', '410000,410100,410106', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1005', '999', ',998,999,1005,', '3', 'zuoshanqu', '邙山区', '26', '410108', '410000,410100,410108', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1006', '999', ',998,999,1006,', '3', 'zhongmouxian', '中牟县', '26', '410122', '410000,410100,410122', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1007', '999', ',998,999,1007,', '3', 'gongyishi', '巩义市', '7', '410181', '410000,410100,410181', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1008', '999', ',998,999,1008,', '3', 'zuoyangshi', '荥阳市', '26', '410121', '410000,410100,410121', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1009', '999', ',998,999,1009,', '3', 'xinmishi', '新密市', '24', '410126', '410000,410100,410126', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1010', '999', ',998,999,1010,', '3', 'xinzhengshi', '新郑市', '24', '410123', '410000,410100,410123', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1011', '999', ',998,999,1011,', '3', 'dengfengshi', '登封市', '4', '410125', '410000,410100,410125', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1012', '998', ',998,1012,', '2', 'anyangshi', '安阳市', '1', '410500', '410000,410500', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1013', '1012', ',998,1012,1013,', '3', 'wenfengqu', '文峰区', '23', '410502', '410000,410500,410502', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1014', '1012', ',998,1012,1014,', '3', 'beiguanqu', '北关区', '2', '410503', '410000,410500,410503', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1015', '1012', ',998,1012,1015,', '3', 'yinduqu', '殷都区', '25', '410505', '410000,410500,410505', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1016', '1012', ',998,1012,1016,', '3', 'longanqu', '龙安区', '12', '410506', '410000,410500,410506', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1017', '1012', ',998,1012,1017,', '3', 'anyangxian', '安阳县', '1', '410522', '410000,410500,410522', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1018', '1012', ',998,1012,1018,', '3', 'tangyinxian', '汤阴县', '20', '410523', '410000,410500,410523', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1019', '1012', ',998,1012,1019,', '3', 'huaxian', '滑县', '8', '410526', '410000,410500,410526', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1020', '1012', ',998,1012,1020,', '3', 'neihuangxian', '内黄县', '14', '410527', '410000,410500,410527', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1021', '1012', ',998,1012,1021,', '3', 'linzhoushi', '林州市', '12', '410581', '410000,410500,410581', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1022', '998', ',998,1022,', '2', 'hebishi', '鹤壁市', '8', '410600', '410000,410600', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1023', '1022', ',998,1022,1023,', '3', 'heshanqu', '鹤山区', '8', '410602', '410000,410600,410602', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1024', '1022', ',998,1022,1024,', '3', 'shanchengqu', '山城区', '19', '410603', '410000,410600,410603', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1025', '1022', ',998,1022,1025,', '3', 'zuobinqu', '淇滨区', '26', '410611', '410000,410600,410611', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1026', '1022', ',998,1022,1026,', '3', 'junxian', '浚县', '10', '410621', '410000,410600,410621', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1027', '1022', ',998,1022,1027,', '3', 'zuoxian', '淇县', '26', '410622', '410000,410600,410622', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1028', '998', ',998,1028,', '2', 'jiyuanshi', '济源市', '10', '410827', '410000,410827', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1029', '998', ',998,1029,', '2', 'jiaozuoshi', '焦作市', '10', '410800', '410000,410800', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1030', '1029', ',998,1029,1030,', '3', 'jiefangqu', '解放区', '10', '410802', '410000,410800,410802', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1031', '1029', ',998,1029,1031,', '3', 'zhongzhanqu', '中站区', '26', '410803', '410000,410800,410803', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1032', '1029', ',998,1029,1032,', '3', 'macunqu', '马村区', '13', '410804', '410000,410800,410804', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1033', '1029', ',998,1029,1033,', '3', 'shanyangqu', '山阳区', '19', '410811', '410000,410800,410811', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1034', '1029', ',998,1029,1034,', '3', 'xiuwuxian', '修武县', '24', '410821', '410000,410800,410821', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1035', '1029', ',998,1029,1035,', '3', 'boaixian', '博爱县', '2', '410822', '410000,410800,410822', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1036', '1029', ',998,1029,1036,', '3', 'wuzuoxian', '武陟县', '23', '410823', '410000,410800,410823', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1037', '1029', ',998,1029,1037,', '3', 'wenxian', '温县', '23', '410825', '410000,410800,410825', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1038', '1029', ',998,1029,1038,', '3', 'jiyuanshi', '济源市', '10', '410827', '410000,410800,410827', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1039', '1029', ',998,1029,1039,', '3', 'qinyangshi', '沁阳市', '17', '410824', '410000,410800,410824', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1040', '1029', ',998,1029,1040,', '3', 'mengzhoushi', '孟州市', '13', '410883', '410000,410800,410883', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1041', '998', ',998,1041,', '2', 'kaifengshi', '开封市', '11', '410200', '410000,410200', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1042', '1041', ',998,1041,1042,', '3', 'longtingqu', '龙亭区', '12', '410202', '410000,410200,410202', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1043', '1041', ',998,1041,1043,', '3', 'shunhehuizuqu', '顺河回族区', '19', '410203', '410000,410200,410203', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1044', '1041', ',998,1041,1044,', '3', 'gulouqu', '鼓楼区', '7', '410204', '410000,410200,410204', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1045', '1041', ',998,1041,1045,', '3', 'nanguanqu', '南关区', '14', '410205', '410000,410200,410205', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1046', '1041', ',998,1041,1046,', '3', 'jinmingqu', '金明区', '10', '410211', '410000,410200,410211', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1047', '1041', ',998,1041,1047,', '3', 'zuoxian', '杞县', '26', '410221', '410000,410200,410221', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1048', '1041', ',998,1041,1048,', '3', 'tongxuxian', '通许县', '20', '410222', '410000,410200,410222', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1049', '1041', ',998,1041,1049,', '3', 'weishixian', '尉氏县', '23', '410223', '410000,410200,410223', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1050', '1041', ',998,1041,1050,', '3', 'kaifengxian', '开封县', '11', '410224', '410000,410200,410224', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1051', '1041', ',998,1041,1051,', '3', 'lankaoxian', '兰考县', '12', '410225', '410000,410200,410225', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1052', '998', ',998,1052,', '2', 'luoyangshi', '洛阳市', '12', '410300', '410000,410300', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1053', '1052', ',998,1052,1053,', '3', 'laochengqu', '老城区', '12', '410302', '410000,410300,410302', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1054', '1052', ',998,1052,1054,', '3', 'xigongqu', '西工区', '24', '410303', '410000,410300,410303', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1055', '1052', ',998,1052,1055,', '3', 'zuohehuizuqu', '廛河回族区', '26', '410304', '410000,410300,410304', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1056', '1052', ',998,1052,1056,', '3', 'jianxiqu', '涧西区', '10', '410305', '410000,410300,410305', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1057', '1052', ',998,1052,1057,', '3', 'jiliqu', '吉利区', '10', '410306', '410000,410300,410306', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1058', '1052', ',998,1052,1058,', '3', 'luolongqu', '洛龙区', '12', '410307', '410000,410300,410307', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1059', '1052', ',998,1052,1059,', '3', 'mengjinxian', '孟津县', '13', '410322', '410000,410300,410322', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1060', '1052', ',998,1052,1060,', '3', 'xinanxian', '新安县', '24', '410323', '410000,410300,410323', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1061', '1052', ',998,1052,1061,', '3', 'zuochuanxian', '栾川县', '26', '410324', '410000,410300,410324', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1062', '1052', ',998,1052,1062,', '3', 'zuoxian', '嵩县', '26', '410325', '410000,410300,410325', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1063', '1052', ',998,1052,1063,', '3', 'ruyangxian', '汝阳县', '18', '410326', '410000,410300,410326', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1064', '1052', ',998,1052,1064,', '3', 'yiyangxian', '宜阳县', '25', '410327', '410000,410300,410327', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1065', '1052', ',998,1052,1065,', '3', 'luoningxian', '洛宁县', '12', '410328', '410000,410300,410328', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1066', '1052', ',998,1052,1066,', '3', 'yichuanxian', '伊川县', '25', '410329', '410000,410300,410329', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1067', '1052', ',998,1052,1067,', '3', 'zuoshishi', '偃师市', '26', '410321', '410000,410300,410321', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1068', '998', ',998,1068,', '2', 'zuoheshi', '漯河市', '26', '411100', '410000,411100', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1069', '1068', ',998,1068,1069,', '3', 'yuanhuiqu', '源汇区', '25', '411102', '410000,411100,411102', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1070', '1068', ',998,1068,1070,', '3', 'zuochengqu', '郾城区', '26', '411103', '410000,411100,411103', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1071', '1068', ',998,1068,1071,', '3', 'zhaolingqu', '召陵区', '26', '411104', '410000,411100,411104', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1072', '1068', ',998,1068,1072,', '3', 'wuyangxian', '舞阳县', '23', '411121', '410000,411100,411121', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1073', '1068', ',998,1068,1073,', '3', 'linzuoxian', '临颍县', '12', '411122', '410000,411100,411122', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1074', '998', ',998,1074,', '2', 'nanyangshi', '南阳市', '14', '411300', '410000,411300', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1075', '1074', ',998,1074,1075,', '3', 'wanchengqu', '宛城区', '23', '411302', '410000,411300,411302', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1076', '1074', ',998,1074,1076,', '3', 'wolongqu', '卧龙区', '23', '411303', '410000,411300,411303', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1077', '1074', ',998,1074,1077,', '3', 'nanzhaoxian', '南召县', '14', '411321', '410000,411300,411321', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1078', '1074', ',998,1074,1078,', '3', 'fangchengxian', '方城县', '6', '411322', '410000,411300,411322', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1079', '1074', ',998,1074,1079,', '3', 'xixiaxian', '西峡县', '24', '411323', '410000,411300,411323', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1080', '1074', ',998,1074,1080,', '3', 'zhenpingxian', '镇平县', '26', '411324', '410000,411300,411324', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1081', '1074', ',998,1074,1081,', '3', 'neixiangxian', '内乡县', '14', '411325', '410000,411300,411325', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1082', '1074', ',998,1074,1082,', '3', 'zuochuanxian', '淅川县', '26', '411326', '410000,411300,411326', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1083', '1074', ',998,1074,1083,', '3', 'sheqixian', '社旗县', '19', '411327', '410000,411300,411327', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1084', '1074', ',998,1074,1084,', '3', 'tanghexian', '唐河县', '20', '411328', '410000,411300,411328', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1085', '1074', ',998,1074,1085,', '3', 'xinyexian', '新野县', '24', '411329', '410000,411300,411329', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1086', '1074', ',998,1074,1086,', '3', 'tongbaixian', '桐柏县', '20', '411330', '410000,411300,411330', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1087', '1074', ',998,1074,1087,', '3', 'dengzhoushi', '邓州市', '4', '411381', '410000,411300,411381', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1088', '998', ',998,1088,', '2', 'pingdingshanshi', '平顶山市', '16', '410400', '410000,410400', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1089', '1088', ',998,1088,1089,', '3', 'xinhuaqu', '新华区', '24', '410402', '410000,410400,410402', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1090', '1088', ',998,1088,1090,', '3', 'weidongqu', '卫东区', '23', '410403', '410000,410400,410403', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1091', '1088', ',998,1088,1091,', '3', 'shilongqu', '石龙区', '19', '410404', '410000,410400,410404', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1092', '1088', ',998,1088,1092,', '3', 'zhanhequ', '湛河区', '26', '410411', '410000,410400,410411', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1093', '1088', ',998,1088,1093,', '3', 'baofengxian', '宝丰县', '2', '410421', '410000,410400,410421', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1094', '1088', ',998,1088,1094,', '3', 'yexian', '叶县', '25', '410422', '410000,410400,410422', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1095', '1088', ',998,1088,1095,', '3', 'lushanxian', '鲁山县', '12', '410423', '410000,410400,410423', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1096', '1088', ',998,1088,1096,', '3', 'zuoxian', '郏县', '26', '410425', '410000,410400,410425', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1097', '1088', ',998,1088,1097,', '3', 'wugangshi', '舞钢市', '23', '410481', '410000,410400,410481', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1098', '1088', ',998,1088,1098,', '3', 'ruzhoushi', '汝州市', '18', '410482', '410000,410400,410482', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1099', '998', ',998,1099,', '2', 'zuoyangshi', '濮阳市', '26', '410900', '410000,410900', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1100', '1099', ',998,1099,1100,', '3', 'hualongqu', '华龙区', '8', '410902', '410000,410900,410902', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1101', '1099', ',998,1099,1101,', '3', 'qingfengxian', '清丰县', '17', '410922', '410000,410900,410922', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1102', '1099', ',998,1099,1102,', '3', 'nanlexian', '南乐县', '14', '410923', '410000,410900,410923', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1103', '1099', ',998,1099,1103,', '3', 'fanxian', '范县', '6', '410926', '410000,410900,410926', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1104', '1099', ',998,1099,1104,', '3', 'taiqianxian', '台前县', '20', '410927', '410000,410900,410927', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1105', '1099', ',998,1099,1105,', '3', 'zuoyangxian', '濮阳县', '26', '410928', '410000,410900,410928', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1106', '998', ',998,1106,', '2', 'sanmenxiashi', '三门峡市', '19', '411200', '410000,411200', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1107', '1106', ',998,1106,1107,', '3', 'hubinqu', '湖滨区', '8', '411202', '410000,411200,411202', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1108', '1106', ',998,1106,1108,', '3', 'zuochixian', '渑池县', '26', '411221', '410000,411200,411221', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1109', '1106', ',998,1106,1109,', '3', 'shanxian', '陕县', '19', '411222', '410000,411200,411222', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1110', '1106', ',998,1106,1110,', '3', 'lushixian', '卢氏县', '12', '411224', '410000,411200,411224', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1111', '1106', ',998,1106,1111,', '3', 'yimashi', '义马市', '25', '411281', '410000,411200,411281', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1112', '1106', ',998,1106,1112,', '3', 'lingbaoshi', '灵宝市', '12', '411282', '410000,411200,411282', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1113', '998', ',998,1113,', '2', 'shangqiushi', '商丘市', '19', '411400', '410000,411400', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1114', '1113', ',998,1113,1114,', '3', 'liangyuanqu', '梁园区', '12', '411402', '410000,411400,411402', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1115', '1113', ',998,1113,1115,', '3', 'zuoyangqu', '睢阳区', '26', '411403', '410000,411400,411403', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1116', '1113', ',998,1113,1116,', '3', 'minquanxian', '民权县', '13', '411421', '410000,411400,411421', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1117', '1113', ',998,1113,1117,', '3', 'zuoxian', '睢县', '26', '411422', '410000,411400,411422', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1118', '1113', ',998,1113,1118,', '3', 'ninglingxian', '宁陵县', '14', '411423', '410000,411400,411423', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1119', '1113', ',998,1113,1119,', '3', 'zuochengxian', '柘城县', '26', '411424', '410000,411400,411424', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1120', '1113', ',998,1113,1120,', '3', 'yuchengxian', '虞城县', '25', '411425', '410000,411400,411425', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1121', '1113', ',998,1113,1121,', '3', 'xiayixian', '夏邑县', '24', '411426', '410000,411400,411426', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1122', '1113', ',998,1113,1122,', '3', 'yongchengshi', '永城市', '25', '411481', '410000,411400,411481', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1123', '998', ',998,1123,', '2', 'xinxiangshi', '新乡市', '24', '410700', '410000,410700', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1124', '1123', ',998,1123,1124,', '3', 'hongqiqu', '红旗区', '8', '410702', '410000,410700,410702', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1125', '1123', ',998,1123,1125,', '3', 'weibinqu', '卫滨区', '23', '410703', '410000,410700,410703', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1126', '1123', ',998,1123,1126,', '3', 'fengquanqu', '凤泉区', '6', '410704', '410000,410700,410704', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1127', '1123', ',998,1123,1127,', '3', 'muyequ', '牧野区', '13', '410711', '410000,410700,410711', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1128', '1123', ',998,1123,1128,', '3', 'xinxiangxian', '新乡县', '24', '410721', '410000,410700,410721', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1129', '1123', ',998,1123,1129,', '3', 'huojiaxian', '获嘉县', '8', '410724', '410000,410700,410724', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1130', '1123', ',998,1123,1130,', '3', 'yuanyangxian', '原阳县', '25', '410725', '410000,410700,410725', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1131', '1123', ',998,1123,1131,', '3', 'yanjinxian', '延津县', '25', '410726', '410000,410700,410726', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1132', '1123', ',998,1123,1132,', '3', 'fengqiuxian', '封丘县', '6', '410727', '410000,410700,410727', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1133', '1123', ',998,1123,1133,', '3', 'changyuanxian', '长垣县', '3', '410728', '410000,410700,410728', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1134', '1123', ',998,1123,1134,', '3', 'weihuishi', '卫辉市', '23', '410781', '410000,410700,410781', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1135', '1123', ',998,1123,1135,', '3', 'huixianshi', '辉县市', '8', '410723', '410000,410700,410723', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1136', '998', ',998,1136,', '2', 'xinyangshi', '信阳市', '24', '411500', '410000,411500', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1137', '1136', ',998,1136,1137,', '3', 'shihequ', '师河区', '19', '411502', '410000,411500,411502', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1138', '1136', ',998,1136,1138,', '3', 'pingqiaoqu', '平桥区', '16', '411503', '410000,411500,411503', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1139', '1136', ',998,1136,1139,', '3', 'luoshanxian', '罗山县', '12', '411521', '410000,411500,411521', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1140', '1136', ',998,1136,1140,', '3', 'guangshanxian', '光山县', '7', '411522', '410000,411500,411522', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1141', '1136', ',998,1136,1141,', '3', 'xinxian', '新县', '24', '411523', '410000,411500,411523', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1142', '1136', ',998,1136,1142,', '3', 'shangchengxian', '商城县', '19', '411524', '410000,411500,411524', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1143', '1136', ',998,1136,1143,', '3', 'gushixian', '固始县', '7', '411525', '410000,411500,411525', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1144', '1136', ',998,1136,1144,', '3', 'zuochuanxian', '潢川县', '26', '411526', '410000,411500,411526', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1145', '1136', ',998,1136,1145,', '3', 'huaibinxian', '淮滨县', '8', '411527', '410000,411500,411527', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1146', '1136', ',998,1136,1146,', '3', 'xixian', '息县', '24', '411528', '410000,411500,411528', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1147', '998', ',998,1147,', '2', 'xuchangshi', '许昌市', '24', '411000', '410000,411000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1148', '1147', ',998,1147,1148,', '3', 'weiduqu', '魏都区', '23', '411002', '410000,411000,411002', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1149', '1147', ',998,1147,1149,', '3', 'xuchangxian', '许昌县', '24', '411023', '410000,411000,411023', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1150', '1147', ',998,1147,1150,', '3', 'zuolingxian', '鄢陵县', '26', '411024', '410000,411000,411024', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1151', '1147', ',998,1147,1151,', '3', 'xiangchengxian', '襄城县', '24', '411025', '410000,411000,411025', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1152', '1147', ',998,1147,1152,', '3', 'yuzhoushi', '禹州市', '25', '411081', '410000,411000,411081', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1153', '1147', ',998,1147,1153,', '3', 'changgeshi', '长葛市', '3', '411022', '410000,411000,411022', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1154', '998', ',998,1154,', '2', 'zhoukoushi', '周口市', '26', '411600', '410000,411600', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1155', '1154', ',998,1154,1155,', '3', 'chuanhuiqu', '川汇区', '3', '411602', '410000,411600,411602', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1156', '1154', ',998,1154,1156,', '3', 'fugouxian', '扶沟县', '6', '411621', '410000,411600,411621', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1157', '1154', ',998,1154,1157,', '3', 'xihuaxian', '西华县', '24', '411622', '410000,411600,411622', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1158', '1154', ',998,1154,1158,', '3', 'shangshuixian', '商水县', '19', '411623', '410000,411600,411623', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1159', '1154', ',998,1154,1159,', '3', 'shenqiuxian', '沈丘县', '19', '411624', '410000,411600,411624', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1160', '1154', ',998,1154,1160,', '3', 'danchengxian', '郸城县', '4', '411625', '410000,411600,411625', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1161', '1154', ',998,1154,1161,', '3', 'huaiyangxian', '淮阳县', '8', '411626', '410000,411600,411626', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1162', '1154', ',998,1154,1162,', '3', 'taikangxian', '太康县', '20', '411627', '410000,411600,411627', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1163', '1154', ',998,1154,1163,', '3', 'luyixian', '鹿邑县', '12', '411628', '410000,411600,411628', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1164', '1154', ',998,1154,1164,', '3', 'xiangchengshi', '项城市', '24', '411681', '410000,411600,411681', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1165', '998', ',998,1165,', '2', 'zhumadianshi', '驻马店市', '26', '411700', '410000,411700', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1166', '1165', ',998,1165,1166,', '3', 'zuochengqu', '驿城区', '26', '411702', '410000,411700,411702', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1167', '1165', ',998,1165,1167,', '3', 'xipingxian', '西平县', '24', '411721', '410000,411700,411721', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1168', '1165', ',998,1165,1168,', '3', 'shangcaixian', '上蔡县', '19', '411722', '410000,411700,411722', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1169', '1165', ',998,1165,1169,', '3', 'pingyuxian', '平舆县', '16', '411723', '410000,411700,411723', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1170', '1165', ',998,1165,1170,', '3', 'zhengyangxian', '正阳县', '26', '411724', '410000,411700,411724', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1171', '1165', ',998,1165,1171,', '3', 'queshanxian', '确山县', '17', '411725', '410000,411700,411725', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1172', '1165', ',998,1165,1172,', '3', 'miyangxian', '泌阳县', '13', '411726', '410000,411700,411726', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1173', '1165', ',998,1165,1173,', '3', 'runanxian', '汝南县', '18', '411727', '410000,411700,411727', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1174', '1165', ',998,1165,1174,', '3', 'suipingxian', '遂平县', '19', '411728', '410000,411700,411728', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1175', '1165', ',998,1165,1175,', '3', 'xincaixian', '新蔡县', '24', '411729', '410000,411700,411729', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1176', null, ',1176,', '1', 'heilongjiang', '黑龙江', '8', '230000', '230000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1177', '1176', ',1176,1177,', '2', 'haerbinshi', '哈尔滨市', '8', '230100', '230000,230100', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1178', '1177', ',1176,1177,1178,', '3', 'daoliqu', '道里区', '4', '230102', '230000,230100,230102', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1179', '1177', ',1176,1177,1179,', '3', 'nangangqu', '南岗区', '14', '230103', '230000,230100,230103', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1180', '1177', ',1176,1177,1180,', '3', 'daowaiqu', '道外区', '4', '230104', '230000,230100,230104', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1181', '1177', ',1176,1177,1181,', '3', 'xiangfangqu', '香坊区', '24', '230106', '230000,230100,230106', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1182', '1177', ',1176,1177,1182,', '3', 'dongliqu', '动力区', '4', '230107', '230000,230100,230107', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1183', '1177', ',1176,1177,1183,', '3', 'pingfangqu', '平房区', '16', '230108', '230000,230100,230108', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1184', '1177', ',1176,1177,1184,', '3', 'songbeiqu', '松北区', '19', '230109', '230000,230100,230109', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1185', '1177', ',1176,1177,1185,', '3', 'hulanqu', '呼兰区', '8', '230111', '230000,230100,230111', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1186', '1177', ',1176,1177,1186,', '3', 'yilanxian', '依兰县', '25', '230123', '230000,230100,230123', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1187', '1177', ',1176,1177,1187,', '3', 'fangzhengxian', '方正县', '6', '230124', '230000,230100,230124', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1188', '1177', ',1176,1177,1188,', '3', 'binxian', '宾县', '2', '230122', '230000,230100,230122', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1189', '1177', ',1176,1177,1189,', '3', 'bayanxian', '巴彦县', '2', '230126', '230000,230100,230126', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1190', '1177', ',1176,1177,1190,', '3', 'mulanxian', '木兰县', '13', '230127', '230000,230100,230127', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1191', '1177', ',1176,1177,1191,', '3', 'tonghexian', '通河县', '20', '230128', '230000,230100,230128', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1192', '1177', ',1176,1177,1192,', '3', 'yanshouxian', '延寿县', '25', '230129', '230000,230100,230129', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1193', '1177', ',1176,1177,1193,', '3', 'achengshi', '阿城市', '1', '230181', '230000,230100,230181', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1194', '1177', ',1176,1177,1194,', '3', 'shuangchengshi', '双城市', '19', '230182', '230000,230100,230182', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1195', '1177', ',1176,1177,1195,', '3', 'shangzhishi', '尚志市', '19', '230183', '230000,230100,230183', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1196', '1177', ',1176,1177,1196,', '3', 'wuchangshi', '五常市', '23', '230184', '230000,230100,230184', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1197', '1176', ',1176,1197,', '2', 'daqingshi', '大庆市', '4', '230600', '230000,230600', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1198', '1197', ',1176,1197,1198,', '3', 'saertuqu', '萨尔图区', '19', '230602', '230000,230600,230602', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1199', '1197', ',1176,1197,1199,', '3', 'longfengqu', '龙凤区', '12', '230603', '230000,230600,230603', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1200', '1197', ',1176,1197,1200,', '3', 'ranghuluqu', '让胡路区', '18', '230604', '230000,230600,230604', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1201', '1197', ',1176,1197,1201,', '3', 'honggangqu', '红岗区', '8', '230605', '230000,230600,230605', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1202', '1197', ',1176,1197,1202,', '3', 'datongqu', '大同区', '4', '230606', '230000,230600,230606', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1203', '1197', ',1176,1197,1203,', '3', 'zhaozhouxian', '肇州县', '26', '230621', '230000,230600,230621', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1204', '1197', ',1176,1197,1204,', '3', 'zhaoyuanxian', '肇源县', '26', '230622', '230000,230600,230622', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1205', '1197', ',1176,1197,1205,', '3', 'lindianxian', '林甸县', '12', '230623', '230000,230600,230623', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1206', '1197', ',1176,1197,1206,', '3', 'duerbotemengguzuzizhixian', '杜尔伯特蒙古族自治县', '4', '230624', '230000,230600,230624', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1207', '1176', ',1176,1207,', '2', 'daxinganlingdiqu', '大兴安岭地区', '4', '232700', '230000,232700', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1208', '1207', ',1176,1207,1208,', '3', 'humaxian', '呼玛县', '8', '232721', '230000,232700,232721', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1209', '1207', ',1176,1207,1209,', '3', 'tahexian', '塔河县', '20', '232722', '230000,232700,232722', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1210', '1207', ',1176,1207,1210,', '3', 'mohexian', '漠河县', '13', '232723', '230000,232700,232723', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1211', '1176', ',1176,1211,', '2', 'hegangshi', '鹤岗市', '8', '230400', '230000,230400', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1212', '1211', ',1176,1211,1212,', '3', 'xiangyangqu', '向阳区', '24', '230402', '230000,230400,230402', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1213', '1211', ',1176,1211,1213,', '3', 'gongnongqu', '工农区', '7', '230403', '230000,230400,230403', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1214', '1211', ',1176,1211,1214,', '3', 'nanshanqu', '南山区', '14', '230404', '230000,230400,230404', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1215', '1211', ',1176,1211,1215,', '3', 'xinganqu', '兴安区', '24', '230405', '230000,230400,230405', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1216', '1211', ',1176,1211,1216,', '3', 'dongshanqu', '东山区', '4', '230406', '230000,230400,230406', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1217', '1211', ',1176,1211,1217,', '3', 'xingshanqu', '兴山区', '24', '230407', '230000,230400,230407', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1218', '1211', ',1176,1211,1218,', '3', 'luobeixian', '萝北县', '12', '230421', '230000,230400,230421', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1219', '1211', ',1176,1211,1219,', '3', 'suibinxian', '绥滨县', '19', '230422', '230000,230400,230422', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1220', '1176', ',1176,1220,', '2', 'heiheshi', '黑河市', '8', '231100', '230000,231100', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1221', '1220', ',1176,1220,1221,', '3', 'aihuiqu', '爱辉区', '1', '231102', '230000,231100,231102', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1222', '1220', ',1176,1220,1222,', '3', 'nenjiangxian', '嫩江县', '14', '231121', '230000,231100,231121', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1223', '1220', ',1176,1220,1223,', '3', 'xunkexian', '逊克县', '24', '231123', '230000,231100,231123', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1224', '1220', ',1176,1220,1224,', '3', 'sunwuxian', '孙吴县', '19', '231124', '230000,231100,231124', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1225', '1220', ',1176,1220,1225,', '3', 'beianshi', '北安市', '2', '231181', '230000,231100,231181', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1226', '1220', ',1176,1220,1226,', '3', 'wudalianchishi', '五大连池市', '23', '231182', '230000,231100,231182', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1227', '1176', ',1176,1227,', '2', 'jixishi', '鸡西市', '10', '230300', '230000,230300', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1228', '1227', ',1176,1227,1228,', '3', 'jiguanqu', '鸡冠区', '10', '230302', '230000,230300,230302', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1229', '1227', ',1176,1227,1229,', '3', 'hengshanqu', '恒山区', '8', '230303', '230000,230300,230303', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1230', '1227', ',1176,1227,1230,', '3', 'didaoqu', '滴道区', '4', '230304', '230000,230300,230304', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1231', '1227', ',1176,1227,1231,', '3', 'lishuqu', '梨树区', '12', '230305', '230000,230300,230305', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1232', '1227', ',1176,1227,1232,', '3', 'chengzihequ', '城子河区', '3', '230306', '230000,230300,230306', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1233', '1227', ',1176,1227,1233,', '3', 'mashanqu', '麻山区', '13', '230307', '230000,230300,230307', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1234', '1227', ',1176,1227,1234,', '3', 'jidongxian', '鸡东县', '10', '230321', '230000,230300,230321', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1235', '1227', ',1176,1227,1235,', '3', 'hulinshi', '虎林市', '8', '230322', '230000,230300,230322', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1236', '1227', ',1176,1227,1236,', '3', 'mishanshi', '密山市', '13', '230382', '230000,230300,230382', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1237', '1176', ',1176,1237,', '2', 'jiamusishi', '佳木斯市', '10', '230800', '230000,230800', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1238', '1237', ',1176,1237,1238,', '3', 'yonghongqu', '永红区', '25', '230802', '230000,230800,230802', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1239', '1237', ',1176,1237,1239,', '3', 'xiangyangqu', '向阳区', '24', '230803', '230000,230800,230803', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1240', '1237', ',1176,1237,1240,', '3', 'qianjinqu', '前进区', '17', '230804', '230000,230800,230804', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1241', '1237', ',1176,1237,1241,', '3', 'dongfengqu', '东风区', '4', '230805', '230000,230800,230805', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1242', '1237', ',1176,1237,1242,', '3', 'jiaoqu', '郊区', '10', '230811', '230000,230800,230811', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1243', '1237', ',1176,1237,1243,', '3', 'zuonanxian', '桦南县', '26', '230822', '230000,230800,230822', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1244', '1237', ',1176,1237,1244,', '3', 'zuochuanxian', '桦川县', '26', '230826', '230000,230800,230826', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1245', '1237', ',1176,1237,1245,', '3', 'tangyuanxian', '汤原县', '20', '230828', '230000,230800,230828', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1246', '1237', ',1176,1237,1246,', '3', 'fuyuanxian', '抚远县', '6', '230833', '230000,230800,230833', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1247', '1237', ',1176,1237,1247,', '3', 'tongjiangshi', '同江市', '20', '230831', '230000,230800,230831', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1248', '1237', ',1176,1237,1248,', '3', 'fujinshi', '富锦市', '6', '230821', '230000,230800,230821', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1249', '1176', ',1176,1249,', '2', 'mudanjiangshi', '牡丹江市', '13', '231000', '230000,231000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1250', '1249', ',1176,1249,1250,', '3', 'donganqu', '东安区', '4', '231002', '230000,231000,231002', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1251', '1249', ',1176,1249,1251,', '3', 'yangmingqu', '阳明区', '25', '231003', '230000,231000,231003', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1252', '1249', ',1176,1249,1252,', '3', 'aiminqu', '爱民区', '1', '231004', '230000,231000,231004', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1253', '1249', ',1176,1249,1253,', '3', 'xianqu', '西安区', '24', '231005', '230000,231000,231005', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1254', '1249', ',1176,1249,1254,', '3', 'dongningxian', '东宁县', '4', '231024', '230000,231000,231024', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1255', '1249', ',1176,1249,1255,', '3', 'linkouxian', '林口县', '12', '231025', '230000,231000,231025', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1256', '1249', ',1176,1249,1256,', '3', 'suifenheshi', '绥芬河市', '19', '231081', '230000,231000,231081', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1257', '1249', ',1176,1249,1257,', '3', 'hailinshi', '海林市', '8', '231022', '230000,231000,231022', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1258', '1249', ',1176,1249,1258,', '3', 'ninganshi', '宁安市', '14', '231021', '230000,231000,231021', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1259', '1249', ',1176,1249,1259,', '3', 'mulengshi', '穆棱市', '13', '231023', '230000,231000,231023', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1260', '1176', ',1176,1260,', '2', 'qitaiheshi', '七台河市', '17', '230900', '230000,230900', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1261', '1260', ',1176,1260,1261,', '3', 'xinxingqu', '新兴区', '24', '230902', '230000,230900,230902', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1262', '1260', ',1176,1260,1262,', '3', 'taoshanqu', '桃山区', '20', '230903', '230000,230900,230903', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1263', '1260', ',1176,1260,1263,', '3', 'qiezihequ', '茄子河区', '17', '230904', '230000,230900,230904', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1264', '1260', ',1176,1260,1264,', '3', 'bolixian', '勃利县', '2', '230921', '230000,230900,230921', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1265', '1176', ',1176,1265,', '2', 'qiqihaershi', '齐齐哈尔市', '17', '230200', '230000,230200', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1266', '1265', ',1176,1265,1266,', '3', 'longshaqu', '龙沙区', '12', '230202', '230000,230200,230202', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1267', '1265', ',1176,1265,1267,', '3', 'jianhuaqu', '建华区', '10', '230203', '230000,230200,230203', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1268', '1265', ',1176,1265,1268,', '3', 'tiefengqu', '铁锋区', '20', '230204', '230000,230200,230204', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1269', '1265', ',1176,1265,1269,', '3', 'angangxiqu', '昂昂溪区', '1', '230205', '230000,230200,230205', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1270', '1265', ',1176,1265,1270,', '3', 'fulaerjiqu', '富拉尔基区', '6', '230206', '230000,230200,230206', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1271', '1265', ',1176,1265,1271,', '3', 'nianzishanqu', '碾子山区', '14', '230207', '230000,230200,230207', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1272', '1265', ',1176,1265,1272,', '3', 'meilisidawoerzuqu', '梅里斯达斡尔族区', '13', '230208', '230000,230200,230208', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1273', '1265', ',1176,1265,1273,', '3', 'longjiangxian', '龙江县', '12', '230221', '230000,230200,230221', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1274', '1265', ',1176,1265,1274,', '3', 'yianxian', '依安县', '25', '230223', '230000,230200,230223', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1275', '1265', ',1176,1265,1275,', '3', 'tailaixian', '泰来县', '20', '230224', '230000,230200,230224', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1276', '1265', ',1176,1265,1276,', '3', 'gannanxian', '甘南县', '7', '230225', '230000,230200,230225', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1277', '1265', ',1176,1265,1277,', '3', 'fuyuxian', '富裕县', '6', '230227', '230000,230200,230227', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1278', '1265', ',1176,1265,1278,', '3', 'keshanxian', '克山县', '11', '230229', '230000,230200,230229', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1279', '1265', ',1176,1265,1279,', '3', 'kedongxian', '克东县', '11', '230230', '230000,230200,230230', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1280', '1265', ',1176,1265,1280,', '3', 'baiquanxian', '拜泉县', '2', '230231', '230000,230200,230231', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1281', '1265', ',1176,1265,1281,', '3', 'zuoheshi', '讷河市', '26', '230222', '230000,230200,230222', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1282', '1176', ',1176,1282,', '2', 'shuangyashanshi', '双鸭山市', '19', '230500', '230000,230500', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1283', '1282', ',1176,1282,1283,', '3', 'jianshanqu', '尖山区', '10', '230502', '230000,230500,230502', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1284', '1282', ',1176,1282,1284,', '3', 'lingdongqu', '岭东区', '12', '230503', '230000,230500,230503', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1285', '1282', ',1176,1282,1285,', '3', 'sifangtaiqu', '四方台区', '19', '230505', '230000,230500,230505', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1286', '1282', ',1176,1282,1286,', '3', 'baoshanqu', '宝山区', '2', '230506', '230000,230500,230506', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1287', '1282', ',1176,1282,1287,', '3', 'jixianxian', '集贤县', '10', '230521', '230000,230500,230521', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1288', '1282', ',1176,1282,1288,', '3', 'youyixian', '友谊县', '25', '230522', '230000,230500,230522', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1289', '1282', ',1176,1282,1289,', '3', 'baoqingxian', '宝清县', '2', '230523', '230000,230500,230523', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1290', '1282', ',1176,1282,1290,', '3', 'raohexian', '饶河县', '18', '230524', '230000,230500,230524', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1291', '1176', ',1176,1291,', '2', 'suihuashi', '绥化市', '19', '231200', '230000,231200', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1292', '1291', ',1176,1291,1292,', '3', 'beilinqu', '北林区', '2', '231202', '230000,231200,231202', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1293', '1291', ',1176,1291,1293,', '3', 'wangkuixian', '望奎县', '23', '231221', '230000,231200,231221', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1294', '1291', ',1176,1291,1294,', '3', 'lanxixian', '兰西县', '12', '231222', '230000,231200,231222', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1295', '1291', ',1176,1291,1295,', '3', 'qinggangxian', '青冈县', '17', '231223', '230000,231200,231223', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1296', '1291', ',1176,1291,1296,', '3', 'qinganxian', '庆安县', '17', '231224', '230000,231200,231224', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1297', '1291', ',1176,1291,1297,', '3', 'mingshuixian', '明水县', '13', '231225', '230000,231200,231225', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1298', '1291', ',1176,1291,1298,', '3', 'suilengxian', '绥棱县', '19', '231226', '230000,231200,231226', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1299', '1291', ',1176,1291,1299,', '3', 'andashi', '安达市', '1', '231281', '230000,231200,231281', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1300', '1291', ',1176,1291,1300,', '3', 'zhaodongshi', '肇东市', '26', '231282', '230000,231200,231282', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1301', '1291', ',1176,1291,1301,', '3', 'hailunshi', '海伦市', '8', '231283', '230000,231200,231283', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1302', '1176', ',1176,1302,', '2', 'yichunshi', '伊春市', '25', '230700', '230000,230700', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1303', '1302', ',1176,1302,1303,', '3', 'yichunqu', '伊春区', '25', '230702', '230000,230700,230702', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1304', '1302', ',1176,1302,1304,', '3', 'nanchaqu', '南岔区', '14', '230703', '230000,230700,230703', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1305', '1302', ',1176,1302,1305,', '3', 'youhaoqu', '友好区', '25', '230704', '230000,230700,230704', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1306', '1302', ',1176,1302,1306,', '3', 'xilinqu', '西林区', '24', '230705', '230000,230700,230705', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1307', '1302', ',1176,1302,1307,', '3', 'cuiluanqu', '翠峦区', '3', '230706', '230000,230700,230706', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1308', '1302', ',1176,1302,1308,', '3', 'xinqingqu', '新青区', '24', '230707', '230000,230700,230707', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1309', '1302', ',1176,1302,1309,', '3', 'meixiqu', '美溪区', '13', '230708', '230000,230700,230708', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1310', '1302', ',1176,1302,1310,', '3', 'jinshantunqu', '金山屯区', '10', '230709', '230000,230700,230709', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1311', '1302', ',1176,1302,1311,', '3', 'wuyingqu', '五营区', '23', '230710', '230000,230700,230710', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1312', '1302', ',1176,1302,1312,', '3', 'wumahequ', '乌马河区', '23', '230711', '230000,230700,230711', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1313', '1302', ',1176,1302,1313,', '3', 'tangwanghequ', '汤旺河区', '20', '230712', '230000,230700,230712', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1314', '1302', ',1176,1302,1314,', '3', 'dailingqu', '带岭区', '4', '230713', '230000,230700,230713', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1315', '1302', ',1176,1302,1315,', '3', 'wuyilingqu', '乌伊岭区', '23', '230714', '230000,230700,230714', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1316', '1302', ',1176,1302,1316,', '3', 'hongxingqu', '红星区', '8', '230715', '230000,230700,230715', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1317', '1302', ',1176,1302,1317,', '3', 'shangganlingqu', '上甘岭区', '19', '230716', '230000,230700,230716', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1318', '1302', ',1176,1302,1318,', '3', 'jiayinxian', '嘉荫县', '10', '230722', '230000,230700,230722', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1319', '1302', ',1176,1302,1319,', '3', 'tielishi', '铁力市', '20', '230721', '230000,230700,230721', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1320', null, ',1320,', '1', 'hubei', '湖北', '8', '420000', '420000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1321', '1320', ',1320,1321,', '2', 'wuhanshi', '武汉市', '23', '420100', '420000,420100', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1322', '1321', ',1320,1321,1322,', '3', 'jianganqu', '江岸区', '10', '420102', '420000,420100,420102', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1323', '1321', ',1320,1321,1323,', '3', 'jianghanqu', '江汉区', '10', '420103', '420000,420100,420103', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1324', '1321', ',1320,1321,1324,', '3', 'qiaokouqu', '乔口区', '17', '420104', '420000,420100,420104', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1325', '1321', ',1320,1321,1325,', '3', 'hanyangqu', '汉阳区', '8', '420105', '420000,420100,420105', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1326', '1321', ',1320,1321,1326,', '3', 'wuchangqu', '武昌区', '23', '420106', '420000,420100,420106', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1327', '1321', ',1320,1321,1327,', '3', 'qingshanqu', '青山区', '17', '420107', '420000,420100,420107', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1328', '1321', ',1320,1321,1328,', '3', 'hongshanqu', '洪山区', '8', '420111', '420000,420100,420111', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1329', '1321', ',1320,1321,1329,', '3', 'dongxihuqu', '东西湖区', '4', '420112', '420000,420100,420112', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1330', '1321', ',1320,1321,1330,', '3', 'hannanqu', '汉南区', '8', '420113', '420000,420100,420113', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1331', '1321', ',1320,1321,1331,', '3', 'caidianqu', '蔡甸区', '3', '420114', '420000,420100,420114', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1332', '1321', ',1320,1321,1332,', '3', 'jiangxiaqu', '江夏区', '10', '420115', '420000,420100,420115', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1333', '1321', ',1320,1321,1333,', '3', 'huangzuoqu', '黄陂区', '8', '420116', '420000,420100,420116', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1334', '1321', ',1320,1321,1334,', '3', 'xinzhouqu', '新洲区', '24', '420117', '420000,420100,420117', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1335', '1320', ',1320,1335,', '2', 'ezhoushi', '鄂州市', '5', '420700', '420000,420700', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1336', '1335', ',1320,1335,1336,', '3', 'liangzihuqu', '梁子湖区', '12', '420702', '420000,420700,420702', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1337', '1335', ',1320,1335,1337,', '3', 'huarongqu', '华容区', '8', '420703', '420000,420700,420703', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1338', '1335', ',1320,1335,1338,', '3', 'echengqu', '鄂城区', '5', '420704', '420000,420700,420704', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1339', '1320', ',1320,1339,', '2', 'enshitujiazumiaozuzizhizhou', '恩施土家族苗族自治州', '5', '422800', '420000,422800', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1340', '1339', ',1320,1339,1340,', '3', 'enshishi', '恩施市', '5', '422801', '420000,422800,422801', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1341', '1339', ',1320,1339,1341,', '3', 'lichuanshi', '利川市', '12', '422802', '420000,422800,422802', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1342', '1339', ',1320,1339,1342,', '3', 'jianshixian', '建始县', '10', '422822', '420000,422800,422822', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1343', '1339', ',1320,1339,1343,', '3', 'badongxian', '巴东县', '2', '422823', '420000,422800,422823', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1344', '1339', ',1320,1339,1344,', '3', 'xuanenxian', '宣恩县', '24', '422825', '420000,422800,422825', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1345', '1339', ',1320,1339,1345,', '3', 'xianfengxian', '咸丰县', '24', '422826', '420000,422800,422826', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1346', '1339', ',1320,1339,1346,', '3', 'laifengxian', '来凤县', '12', '422827', '420000,422800,422827', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1347', '1339', ',1320,1339,1347,', '3', 'hefengxian', '鹤峰县', '8', '422828', '420000,422800,422828', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1348', '1320', ',1320,1348,', '2', 'huanggangshi', '黄冈市', '8', '421100', '420000,421100', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1349', '1348', ',1320,1348,1349,', '3', 'huangzhouqu', '黄州区', '8', '421102', '420000,421100,421102', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1350', '1348', ',1320,1348,1350,', '3', 'tuanfengxian', '团风县', '20', '421121', '420000,421100,421121', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1351', '1348', ',1320,1348,1351,', '3', 'honganxian', '红安县', '8', '421122', '420000,421100,421122', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1352', '1348', ',1320,1348,1352,', '3', 'luotianxian', '罗田县', '12', '421123', '420000,421100,421123', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1353', '1348', ',1320,1348,1353,', '3', 'yingshanxian', '英山县', '25', '421124', '420000,421100,421124', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1354', '1348', ',1320,1348,1354,', '3', 'zuoshuixian', '浠水县', '26', '421125', '420000,421100,421125', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1355', '1348', ',1320,1348,1355,', '3', 'zuochunxian', '蕲春县', '26', '421126', '420000,421100,421126', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1356', '1348', ',1320,1348,1356,', '3', 'huangmeixian', '黄梅县', '8', '421127', '420000,421100,421127', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1357', '1348', ',1320,1348,1357,', '3', 'machengshi', '麻城市', '13', '421181', '420000,421100,421181', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1358', '1348', ',1320,1348,1358,', '3', 'wuxueshi', '武穴市', '23', '421182', '420000,421100,421182', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1359', '1320', ',1320,1359,', '2', 'huangshishi', '黄石市', '8', '420200', '420000,420200', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1360', '1359', ',1320,1359,1360,', '3', 'huangshigangqu', '黄石港区', '8', '420202', '420000,420200,420202', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1361', '1359', ',1320,1359,1361,', '3', 'xisaishanqu', '西塞山区', '24', '420203', '420000,420200,420203', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1362', '1359', ',1320,1359,1362,', '3', 'xialuqu', '下陆区', '24', '420204', '420000,420200,420204', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1363', '1359', ',1320,1359,1363,', '3', 'tieshanqu', '铁山区', '20', '420205', '420000,420200,420205', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1364', '1359', ',1320,1359,1364,', '3', 'yangxinxian', '阳新县', '25', '420222', '420000,420200,420222', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1365', '1359', ',1320,1359,1365,', '3', 'dayeshi', '大冶市', '4', '420221', '420000,420200,420221', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1366', '1320', ',1320,1366,', '2', 'jingmenshi', '荆门市', '10', '420800', '420000,420800', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1367', '1366', ',1320,1366,1367,', '3', 'dongbaoqu', '东宝区', '4', '420802', '420000,420800,420802', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1368', '1366', ',1320,1366,1368,', '3', 'duodaoqu', '掇刀区', '4', '420803', '420000,420800,420803', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1369', '1366', ',1320,1366,1369,', '3', 'jingshanxian', '京山县', '10', '420821', '420000,420800,420821', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1370', '1366', ',1320,1366,1370,', '3', 'shayangxian', '沙洋县', '19', '420822', '420000,420800,420822', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1371', '1366', ',1320,1366,1371,', '3', 'zhongxiangshi', '钟祥市', '26', '420881', '420000,420800,420881', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1372', '1320', ',1320,1372,', '2', 'jingzhoushi', '荆州市', '10', '421000', '420000,421000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1373', '1372', ',1320,1372,1373,', '3', 'shashiqu', '沙市区', '19', '421002', '420000,421000,421002', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1374', '1372', ',1320,1372,1374,', '3', 'jingzhouqu', '荆州区', '10', '421003', '420000,421000,421003', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1375', '1372', ',1320,1372,1375,', '3', 'gonganxian', '公安县', '7', '421022', '420000,421000,421022', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1376', '1372', ',1320,1372,1376,', '3', 'jianlixian', '监利县', '10', '421023', '420000,421000,421023', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1377', '1372', ',1320,1372,1377,', '3', 'jianglingxian', '江陵县', '10', '421024', '420000,421000,421024', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1378', '1372', ',1320,1372,1378,', '3', 'shishoushi', '石首市', '19', '421081', '420000,421000,421081', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1379', '1372', ',1320,1372,1379,', '3', 'honghushi', '洪湖市', '8', '421083', '420000,421000,421083', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1380', '1372', ',1320,1372,1380,', '3', 'songzishi', '松滋市', '19', '421021', '420000,421000,421021', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1381', '1320', ',1320,1381,', '2', 'qianjiangshi', '潜江市', '17', '421085', '420000,421085', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1382', '1320', ',1320,1382,', '2', 'shennongjialinqu', '神农架林区', '19', '429021', '420000,429021', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1383', '1320', ',1320,1383,', '2', 'shiyanshi', '十堰市', '19', '420300', '420000,420300', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1384', '1383', ',1320,1383,1384,', '3', 'maojianqu', '茅箭区', '13', '420302', '420000,420300,420302', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1385', '1383', ',1320,1383,1385,', '3', 'zhangwanqu', '张湾区', '26', '420303', '420000,420300,420303', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1386', '1383', ',1320,1383,1386,', '3', 'yunxian', '郧县', '25', '420321', '420000,420300,420321', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1387', '1383', ',1320,1383,1387,', '3', 'yunxixian', '郧西县', '25', '420322', '420000,420300,420322', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1388', '1383', ',1320,1383,1388,', '3', 'zhushanxian', '竹山县', '26', '420323', '420000,420300,420323', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1389', '1383', ',1320,1383,1389,', '3', 'zhuxixian', '竹溪县', '26', '420324', '420000,420300,420324', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1390', '1383', ',1320,1383,1390,', '3', 'fangxian', '房县', '6', '420325', '420000,420300,420325', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1391', '1383', ',1320,1383,1391,', '3', 'danjiangkoushi', '丹江口市', '4', '420381', '420000,420300,420381', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1392', '1320', ',1320,1392,', '2', 'suizhoushi', '随州市', '19', '421300', '420000,421300', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1393', '1392', ',1320,1392,1393,', '3', 'zengduqu', '曾都区', '26', '421303', '420000,421300,421303', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1394', '1392', ',1320,1392,1394,', '3', 'guangshuishi', '广水市', '7', '421381', '420000,421300,421381', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1395', '1320', ',1320,1395,', '2', 'tianmenshi', '天门市', '20', '421084', '420000,421084', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1396', '1320', ',1320,1396,', '2', 'xiantaoshi', '仙桃市', '24', '429004', '420000,429004', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1397', '1320', ',1320,1397,', '2', 'xianningshi', '咸宁市', '24', '421200', '420000,421200', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1398', '1397', ',1320,1397,1398,', '3', 'xiananqu', '咸安区', '24', '421202', '420000,421200,421202', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1399', '1397', ',1320,1397,1399,', '3', 'jiayuxian', '嘉鱼县', '10', '421221', '420000,421200,421221', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1400', '1397', ',1320,1397,1400,', '3', 'tongchengxian', '通城县', '20', '421222', '420000,421200,421222', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1401', '1397', ',1320,1397,1401,', '3', 'chongyangxian', '崇阳县', '3', '421223', '420000,421200,421223', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1402', '1397', ',1320,1397,1402,', '3', 'tongshanxian', '通山县', '20', '421224', '420000,421200,421224', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1403', '1397', ',1320,1397,1403,', '3', 'chibishi', '赤壁市', '3', '421281', '420000,421200,421281', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1404', '1320', ',1320,1404,', '2', 'xiangfanshi', '襄樊市', '24', '420600', '420000,420600', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1405', '1404', ',1320,1404,1405,', '3', 'xiangchengqu', '襄城区', '24', '420602', '420000,420600,420602', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1406', '1404', ',1320,1404,1406,', '3', 'fanchengqu', '樊城区', '6', '420606', '420000,420600,420606', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1407', '1404', ',1320,1404,1407,', '3', 'xiangyangqu', '襄阳区', '24', '420607', '420000,420600,420607', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1408', '1404', ',1320,1404,1408,', '3', 'nanzhangxian', '南漳县', '14', '420624', '420000,420600,420624', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1409', '1404', ',1320,1404,1409,', '3', 'guchengxian', '谷城县', '7', '420625', '420000,420600,420625', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1410', '1404', ',1320,1404,1410,', '3', 'baokangxian', '保康县', '2', '420626', '420000,420600,420626', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1411', '1404', ',1320,1404,1411,', '3', 'laohekoushi', '老河口市', '12', '420682', '420000,420600,420682', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1412', '1404', ',1320,1404,1412,', '3', 'zaoyangshi', '枣阳市', '26', '420622', '420000,420600,420622', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1413', '1404', ',1320,1404,1413,', '3', 'yichengshi', '宜城市', '25', '420623', '420000,420600,420623', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1414', '1320', ',1320,1414,', '2', 'xiaoganshi', '孝感市', '24', '420900', '420000,420900', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1415', '1414', ',1320,1414,1415,', '3', 'xiaonanqu', '孝南区', '24', '420902', '420000,420900,420902', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1416', '1414', ',1320,1414,1416,', '3', 'xiaochangxian', '孝昌县', '24', '420921', '420000,420900,420921', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1417', '1414', ',1320,1414,1417,', '3', 'dawuxian', '大悟县', '4', '420922', '420000,420900,420922', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1418', '1414', ',1320,1414,1418,', '3', 'yunmengxian', '云梦县', '25', '420923', '420000,420900,420923', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1419', '1414', ',1320,1414,1419,', '3', 'yingchengshi', '应城市', '25', '420981', '420000,420900,420981', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1420', '1414', ',1320,1414,1420,', '3', 'anlushi', '安陆市', '1', '420982', '420000,420900,420982', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1421', '1414', ',1320,1414,1421,', '3', 'hanchuanshi', '汉川市', '8', '420924', '420000,420900,420924', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1422', '1320', ',1320,1422,', '2', 'yichangshi', '宜昌市', '25', '420500', '420000,420500', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1423', '1422', ',1320,1422,1423,', '3', 'xilingqu', '西陵区', '24', '420502', '420000,420500,420502', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1424', '1422', ',1320,1422,1424,', '3', 'wujiagangqu', '伍家岗区', '23', '420503', '420000,420500,420503', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1425', '1422', ',1320,1422,1425,', '3', 'dianjunqu', '点军区', '4', '420504', '420000,420500,420504', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1426', '1422', ',1320,1422,1426,', '3', 'tingqu', '猇亭区', '20', '420505', '420000,420500,420505', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1427', '1422', ',1320,1422,1427,', '3', 'yilingqu', '夷陵区', '25', '420506', '420000,420500,420506', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1428', '1422', ',1320,1422,1428,', '3', 'yuananxian', '远安县', '25', '420525', '420000,420500,420525', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1429', '1422', ',1320,1422,1429,', '3', 'xingshanxian', '兴山县', '24', '420526', '420000,420500,420526', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1430', '1422', ',1320,1422,1430,', '3', 'zuoguixian', '秭归县', '26', '420527', '420000,420500,420527', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1431', '1422', ',1320,1422,1431,', '3', 'changyangtujiazuzizhixian', '长阳土家族自治县', '3', '420528', '420000,420500,420528', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1432', '1422', ',1320,1422,1432,', '3', 'wufengtujiazuzizhixian', '五峰土家族自治县', '23', '420529', '420000,420500,420529', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1433', '1422', ',1320,1422,1433,', '3', 'yidushi', '宜都市', '25', '420581', '420000,420500,420581', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1434', '1422', ',1320,1422,1434,', '3', 'dangyangshi', '当阳市', '4', '420582', '420000,420500,420582', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1435', '1422', ',1320,1422,1435,', '3', 'zhijiangshi', '枝江市', '26', '420583', '420000,420500,420583', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1436', null, ',1436,', '1', 'hunan', '湖南', '8', '430000', '430000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1437', '1436', ',1436,1437,', '2', 'changshashi', '长沙市', '3', '430100', '430000,430100', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1438', '1437', ',1436,1437,1438,', '3', 'zuorongqu', '芙蓉区', '26', '430102', '430000,430100,430102', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1439', '1437', ',1436,1437,1439,', '3', 'tianxinqu', '天心区', '20', '430103', '430000,430100,430103', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1440', '1437', ',1436,1437,1440,', '3', 'yueluqu', '岳麓区', '25', '430104', '430000,430100,430104', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1441', '1437', ',1436,1437,1441,', '3', 'kaifuqu', '开福区', '11', '430105', '430000,430100,430105', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1442', '1437', ',1436,1437,1442,', '3', 'yuhuaqu', '雨花区', '25', '430111', '430000,430100,430111', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1443', '1437', ',1436,1437,1443,', '3', 'changshaxian', '长沙县', '3', '430121', '430000,430100,430121', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1444', '1437', ',1436,1437,1444,', '3', 'wangchengxian', '望城县', '23', '430122', '430000,430100,430122', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1445', '1437', ',1436,1437,1445,', '3', 'ningxiangxian', '宁乡县', '14', '430124', '430000,430100,430124', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1446', '1437', ',1436,1437,1446,', '3', 'zuoyangshi', '浏阳市', '26', '430123', '430000,430100,430123', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1447', '1436', ',1436,1447,', '2', 'changdeshi', '常德市', '3', '430700', '430000,430700', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1448', '1447', ',1436,1447,1448,', '3', 'wulingqu', '武陵区', '23', '430702', '430000,430700,430702', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1449', '1447', ',1436,1447,1449,', '3', 'dingchengqu', '鼎城区', '4', '430703', '430000,430700,430703', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1450', '1447', ',1436,1447,1450,', '3', 'anxiangxian', '安乡县', '1', '430721', '430000,430700,430721', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1451', '1447', ',1436,1447,1451,', '3', 'hanshouxian', '汉寿县', '8', '430722', '430000,430700,430722', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1452', '1447', ',1436,1447,1452,', '3', 'zuoxian', '澧县', '26', '430723', '430000,430700,430723', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1453', '1447', ',1436,1447,1453,', '3', 'linzuoxian', '临澧县', '12', '430724', '430000,430700,430724', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1454', '1447', ',1436,1447,1454,', '3', 'taoyuanxian', '桃源县', '20', '430725', '430000,430700,430725', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1455', '1447', ',1436,1447,1455,', '3', 'shimenxian', '石门县', '19', '430726', '430000,430700,430726', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1456', '1447', ',1436,1447,1456,', '3', 'jinshishi', '津市市', '10', '430781', '430000,430700,430781', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1457', '1436', ',1436,1457,', '2', 'chenzhoushi', '郴州市', '3', '431000', '430000,431000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1458', '1457', ',1436,1457,1458,', '3', 'beihuqu', '北湖区', '2', '431002', '430000,431000,431002', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1459', '1457', ',1436,1457,1459,', '3', 'suxianqu', '苏仙区', '19', '431003', '430000,431000,431003', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1460', '1457', ',1436,1457,1460,', '3', 'guiyangxian', '桂阳县', '7', '431021', '430000,431000,431021', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1461', '1457', ',1436,1457,1461,', '3', 'yizhangxian', '宜章县', '25', '431022', '430000,431000,431022', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1462', '1457', ',1436,1457,1462,', '3', 'yongxingxian', '永兴县', '25', '431023', '430000,431000,431023', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1463', '1457', ',1436,1457,1463,', '3', 'jiahexian', '嘉禾县', '10', '431024', '430000,431000,431024', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1464', '1457', ',1436,1457,1464,', '3', 'linwuxian', '临武县', '12', '431025', '430000,431000,431025', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1465', '1457', ',1436,1457,1465,', '3', 'ruchengxian', '汝城县', '18', '431026', '430000,431000,431026', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1466', '1457', ',1436,1457,1466,', '3', 'guidongxian', '桂东县', '7', '431027', '430000,431000,431027', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1467', '1457', ',1436,1457,1467,', '3', 'anrenxian', '安仁县', '1', '431028', '430000,431000,431028', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1468', '1457', ',1436,1457,1468,', '3', 'zixingshi', '资兴市', '26', '431081', '430000,431000,431081', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1469', '1436', ',1436,1469,', '2', 'hengyangshi', '衡阳市', '8', '430400', '430000,430400', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1470', '1469', ',1436,1469,1470,', '3', 'zhuzuoqu', '珠晖区', '26', '430405', '430000,430400,430405', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1471', '1469', ',1436,1469,1471,', '3', 'yanfengqu', '雁峰区', '25', '430406', '430000,430400,430406', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1472', '1469', ',1436,1469,1472,', '3', 'shiguqu', '石鼓区', '19', '430407', '430000,430400,430407', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1473', '1469', ',1436,1469,1473,', '3', 'zhengxiangqu', '蒸湘区', '26', '430408', '430000,430400,430408', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1474', '1469', ',1436,1469,1474,', '3', 'nanyuequ', '南岳区', '14', '430412', '430000,430400,430412', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1475', '1469', ',1436,1469,1475,', '3', 'hengyangxian', '衡阳县', '8', '430421', '430000,430400,430421', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1476', '1469', ',1436,1469,1476,', '3', 'hengnanxian', '衡南县', '8', '430422', '430000,430400,430422', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1477', '1469', ',1436,1469,1477,', '3', 'hengshanxian', '衡山县', '8', '430423', '430000,430400,430423', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1478', '1469', ',1436,1469,1478,', '3', 'hengdongxian', '衡东县', '8', '430424', '430000,430400,430424', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1479', '1469', ',1436,1469,1479,', '3', 'qidongxian', '祁东县', '17', '430426', '430000,430400,430426', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1480', '1469', ',1436,1469,1480,', '3', 'zuoyangshi', '耒阳市', '26', '430427', '430000,430400,430427', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1481', '1469', ',1436,1469,1481,', '3', 'changningshi', '常宁市', '3', '430425', '430000,430400,430425', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1482', '1436', ',1436,1482,', '2', 'huaihuashi', '怀化市', '8', '431200', '430000,431200', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1483', '1482', ',1436,1482,1483,', '3', 'hechengqu', '鹤城区', '8', '431202', '430000,431200,431202', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1484', '1482', ',1436,1482,1484,', '3', 'zhongfangxian', '中方县', '26', '431221', '430000,431200,431221', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1485', '1482', ',1436,1482,1485,', '3', 'zuolingxian', '沅陵县', '26', '431222', '430000,431200,431222', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1486', '1482', ',1436,1482,1486,', '3', 'chenxixian', '辰溪县', '3', '431223', '430000,431200,431223', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1487', '1482', ',1436,1482,1487,', '3', 'zuopuxian', '溆浦县', '26', '431224', '430000,431200,431224', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1488', '1482', ',1436,1482,1488,', '3', 'huitongxian', '会同县', '8', '431225', '430000,431200,431225', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1489', '1482', ',1436,1482,1489,', '3', 'mayangmiaozuzizhixian', '麻阳苗族自治县', '13', '431226', '430000,431200,431226', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1490', '1482', ',1436,1482,1490,', '3', 'xinhuangdongzuzizhixian', '新晃侗族自治县', '24', '431227', '430000,431200,431227', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1491', '1482', ',1436,1482,1491,', '3', 'zuojiangdongzuzizhixian', '芷江侗族自治县', '26', '431228', '430000,431200,431228', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1492', '1482', ',1436,1482,1492,', '3', 'jingzhoumiaozudongzuzizhixian', '靖州苗族侗族自治县', '10', '431229', '430000,431200,431229', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1493', '1482', ',1436,1482,1493,', '3', 'tongdaodongzuzizhixian', '通道侗族自治县', '20', '431230', '430000,431200,431230', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1494', '1482', ',1436,1482,1494,', '3', 'hongjiangshi', '洪江市', '8', '431281', '430000,431200,431281', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1495', '1436', ',1436,1495,', '2', 'loudishi', '娄底市', '12', '431300', '430000,431300', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1496', '1495', ',1436,1495,1496,', '3', 'louxingqu', '娄星区', '12', '431302', '430000,431300,431302', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1497', '1495', ',1436,1495,1497,', '3', 'shuangfengxian', '双峰县', '19', '431321', '430000,431300,431321', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1498', '1495', ',1436,1495,1498,', '3', 'xinhuaxian', '新化县', '24', '431322', '430000,431300,431322', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1499', '1495', ',1436,1495,1499,', '3', 'lengshuijiangshi', '冷水江市', '12', '431381', '430000,431300,431381', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1500', '1495', ',1436,1495,1500,', '3', 'lianyuanshi', '涟源市', '12', '431382', '430000,431300,431382', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1501', '1436', ',1436,1501,', '2', 'shaoyangshi', '邵阳市', '19', '430500', '430000,430500', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1502', '1501', ',1436,1501,1502,', '3', 'shuangqingqu', '双清区', '19', '430502', '430000,430500,430502', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1503', '1501', ',1436,1501,1503,', '3', 'daxiangqu', '大祥区', '4', '430503', '430000,430500,430503', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1504', '1501', ',1436,1501,1504,', '3', 'beitaqu', '北塔区', '2', '430511', '430000,430500,430511', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1505', '1501', ',1436,1501,1505,', '3', 'shaodongxian', '邵东县', '19', '430521', '430000,430500,430521', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1506', '1501', ',1436,1501,1506,', '3', 'xinshaoxian', '新邵县', '24', '430522', '430000,430500,430522', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1507', '1501', ',1436,1501,1507,', '3', 'shaoyangxian', '邵阳县', '19', '430523', '430000,430500,430523', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1508', '1501', ',1436,1501,1508,', '3', 'longhuixian', '隆回县', '12', '430524', '430000,430500,430524', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1509', '1501', ',1436,1501,1509,', '3', 'dongkouxian', '洞口县', '4', '430525', '430000,430500,430525', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1510', '1501', ',1436,1501,1510,', '3', 'suiningxian', '绥宁县', '19', '430527', '430000,430500,430527', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1511', '1501', ',1436,1501,1511,', '3', 'xinningxian', '新宁县', '24', '430528', '430000,430500,430528', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1512', '1501', ',1436,1501,1512,', '3', 'chengbumiaozuzizhixian', '城步苗族自治县', '3', '430529', '430000,430500,430529', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1513', '1501', ',1436,1501,1513,', '3', 'wugangshi', '武冈市', '23', '430526', '430000,430500,430526', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1514', '1436', ',1436,1514,', '2', 'xiangtanshi', '湘潭市', '24', '430300', '430000,430300', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1515', '1514', ',1436,1514,1515,', '3', 'yuhuqu', '雨湖区', '25', '430302', '430000,430300,430302', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1516', '1514', ',1436,1514,1516,', '3', 'yuetangqu', '岳塘区', '25', '430304', '430000,430300,430304', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1517', '1514', ',1436,1514,1517,', '3', 'xiangtanxian', '湘潭县', '24', '430321', '430000,430300,430321', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1518', '1514', ',1436,1514,1518,', '3', 'xiangxiangshi', '湘乡市', '24', '430322', '430000,430300,430322', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1519', '1514', ',1436,1514,1519,', '3', 'shaoshanshi', '韶山市', '19', '430382', '430000,430300,430382', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1520', '1436', ',1436,1520,', '2', 'xiangxitujiazumiaozuzizhizhou', '湘西土家族苗族自治州', '24', '433100', '430000,433100', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1521', '1520', ',1436,1520,1521,', '3', 'jishoushi', '吉首市', '10', '433101', '430000,433100,433101', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1522', '1520', ',1436,1520,1522,', '3', 'zuoxixian', '泸溪县', '26', '433122', '430000,433100,433122', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1523', '1520', ',1436,1520,1523,', '3', 'fenghuangxian', '凤凰县', '6', '433123', '430000,433100,433123', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1524', '1520', ',1436,1520,1524,', '3', 'huayuanxian', '花垣县', '8', '433124', '430000,433100,433124', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1525', '1520', ',1436,1520,1525,', '3', 'baojingxian', '保靖县', '2', '433125', '430000,433100,433125', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1526', '1520', ',1436,1520,1526,', '3', 'guzhangxian', '古丈县', '7', '433126', '430000,433100,433126', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1527', '1520', ',1436,1520,1527,', '3', 'yongshunxian', '永顺县', '25', '433127', '430000,433100,433127', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1528', '1520', ',1436,1520,1528,', '3', 'longshanxian', '龙山县', '12', '433130', '430000,433100,433130', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1529', '1436', ',1436,1529,', '2', 'yiyangshi', '益阳市', '25', '430900', '430000,430900', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1530', '1529', ',1436,1529,1530,', '3', 'ziyangqu', '资阳区', '26', '430902', '430000,430900,430902', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1531', '1529', ',1436,1529,1531,', '3', 'heshanqu', '赫山区', '8', '430903', '430000,430900,430903', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1532', '1529', ',1436,1529,1532,', '3', 'nanxian', '南县', '14', '430921', '430000,430900,430921', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1533', '1529', ',1436,1529,1533,', '3', 'taojiangxian', '桃江县', '20', '430922', '430000,430900,430922', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1534', '1529', ',1436,1529,1534,', '3', 'anhuaxian', '安化县', '1', '430923', '430000,430900,430923', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1535', '1529', ',1436,1529,1535,', '3', 'zuojiangshi', '沅江市', '26', '430981', '430000,430900,430981', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1536', '1436', ',1436,1536,', '2', 'yongzhoushi', '永州市', '25', '431100', '430000,431100', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1537', '1536', ',1436,1536,1537,', '3', 'zhishanqu', '芝山区', '26', '431102', '430000,431100,431102', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1538', '1536', ',1436,1536,1538,', '3', 'lengshuitanqu', '冷水滩区', '12', '431103', '430000,431100,431103', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1539', '1536', ',1436,1536,1539,', '3', 'qiyangxian', '祁阳县', '17', '431121', '430000,431100,431121', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1540', '1536', ',1436,1536,1540,', '3', 'donganxian', '东安县', '4', '431122', '430000,431100,431122', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1541', '1536', ',1436,1536,1541,', '3', 'shuangpaixian', '双牌县', '19', '431123', '430000,431100,431123', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1542', '1536', ',1436,1536,1542,', '3', 'daoxian', '道县', '4', '431124', '430000,431100,431124', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1543', '1536', ',1436,1536,1543,', '3', 'jiangyongxian', '江永县', '10', '431125', '430000,431100,431125', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1544', '1536', ',1436,1536,1544,', '3', 'ningyuanxian', '宁远县', '14', '431126', '430000,431100,431126', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1545', '1536', ',1436,1536,1545,', '3', 'lanshanxian', '蓝山县', '12', '431127', '430000,431100,431127', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1546', '1536', ',1436,1536,1546,', '3', 'xintianxian', '新田县', '24', '431128', '430000,431100,431128', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1547', '1536', ',1436,1536,1547,', '3', 'jianghuayaozuzizhixian', '江华瑶族自治县', '10', '431129', '430000,431100,431129', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1548', '1436', ',1436,1548,', '2', 'yueyangshi', '岳阳市', '25', '430600', '430000,430600', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1549', '1548', ',1436,1548,1549,', '3', 'yueyanglouqu', '岳阳楼区', '25', '430602', '430000,430600,430602', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1550', '1548', ',1436,1548,1550,', '3', 'yunxiqu', '云溪区', '25', '430603', '430000,430600,430603', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1551', '1548', ',1436,1548,1551,', '3', 'junshanqu', '君山区', '10', '430611', '430000,430600,430611', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1552', '1548', ',1436,1548,1552,', '3', 'yueyangxian', '岳阳县', '25', '430621', '430000,430600,430621', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1553', '1548', ',1436,1548,1553,', '3', 'huarongxian', '华容县', '8', '430623', '430000,430600,430623', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1554', '1548', ',1436,1548,1554,', '3', 'xiangyinxian', '湘阴县', '24', '430624', '430000,430600,430624', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1555', '1548', ',1436,1548,1555,', '3', 'pingjiangxian', '平江县', '16', '430626', '430000,430600,430626', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1556', '1548', ',1436,1548,1556,', '3', 'zuoluoshi', '汨罗市', '26', '430625', '430000,430600,430625', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1557', '1548', ',1436,1548,1557,', '3', 'linxiangshi', '临湘市', '12', '430622', '430000,430600,430622', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1558', '1436', ',1436,1558,', '2', 'zhangjiajieshi', '张家界市', '26', '430800', '430000,430800', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1559', '1558', ',1436,1558,1559,', '3', 'yongdingqu', '永定区', '25', '430802', '430000,430800,430802', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1560', '1558', ',1436,1558,1560,', '3', 'wulingyuanqu', '武陵源区', '23', '430811', '430000,430800,430811', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1561', '1558', ',1436,1558,1561,', '3', 'cilixian', '慈利县', '3', '430821', '430000,430800,430821', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1562', '1558', ',1436,1558,1562,', '3', 'sangzhixian', '桑植县', '19', '430822', '430000,430800,430822', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1563', '1436', ',1436,1563,', '2', 'zhuzhoushi', '株洲市', '26', '430200', '430000,430200', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1564', '1563', ',1436,1563,1564,', '3', 'hetangqu', '荷塘区', '8', '430202', '430000,430200,430202', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1565', '1563', ',1436,1563,1565,', '3', 'luzuoqu', '芦淞区', '12', '430203', '430000,430200,430203', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1566', '1563', ',1436,1563,1566,', '3', 'shifengqu', '石峰区', '19', '430204', '430000,430200,430204', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1567', '1563', ',1436,1563,1567,', '3', 'tianyuanqu', '天元区', '20', '430211', '430000,430200,430211', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1568', '1563', ',1436,1563,1568,', '3', 'zhuzhouxian', '株洲县', '26', '430221', '430000,430200,430221', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1569', '1563', ',1436,1563,1569,', '3', 'zuoxian', '攸县', '26', '430223', '430000,430200,430223', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1570', '1563', ',1436,1563,1570,', '3', 'chalingxian', '茶陵县', '3', '430224', '430000,430200,430224', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1571', '1563', ',1436,1563,1571,', '3', 'yanlingxian', '炎陵县', '25', '430225', '430000,430200,430225', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1572', '1563', ',1436,1563,1572,', '3', 'zuolingshi', '醴陵市', '26', '430222', '430000,430200,430222', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1573', null, ',1573,', '1', 'jilin', '吉林', '10', '220000', '220000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1574', '1573', ',1573,1574,', '2', 'changchunshi', '长春市', '3', '220100', '220000,220100', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1575', '1574', ',1573,1574,1575,', '3', 'nanguanqu', '南关区', '14', '220102', '220000,220100,220102', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1576', '1574', ',1573,1574,1576,', '3', 'kuanchengqu', '宽城区', '11', '220103', '220000,220100,220103', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1577', '1574', ',1573,1574,1577,', '3', 'chaoyangqu', '朝阳区', '3', '220104', '220000,220100,220104', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1578', '1574', ',1573,1574,1578,', '3', 'erdaoqu', '二道区', '5', '220105', '220000,220100,220105', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1579', '1574', ',1573,1574,1579,', '3', 'lvyuanqu', '绿园区', '12', '220106', '220000,220100,220106', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1580', '1574', ',1573,1574,1580,', '3', 'shuangyangqu', '双阳区', '19', '220112', '220000,220100,220112', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1581', '1574', ',1573,1574,1581,', '3', 'nonganxian', '农安县', '14', '220122', '220000,220100,220122', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1582', '1574', ',1573,1574,1582,', '3', 'jiutaishi', '九台市', '10', '220123', '220000,220100,220123', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1583', '1574', ',1573,1574,1583,', '3', 'yushushi', '榆树市', '25', '220121', '220000,220100,220121', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1584', '1574', ',1573,1574,1584,', '3', 'dehuishi', '德惠市', '4', '220124', '220000,220100,220124', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1585', '1573', ',1573,1585,', '2', 'baichengshi', '白城市', '2', '220800', '220000,220800', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1586', '1585', ',1573,1585,1586,', '3', 'zuobeiqu', '洮北区', '26', '220802', '220000,220800,220802', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1587', '1585', ',1573,1585,1587,', '3', 'zhenzuoxian', '镇赉县', '26', '220821', '220000,220800,220821', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1588', '1585', ',1573,1585,1588,', '3', 'tongyuxian', '通榆县', '20', '220822', '220000,220800,220822', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1589', '1585', ',1573,1585,1589,', '3', 'zuonanshi', '洮南市', '26', '220881', '220000,220800,220881', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1590', '1585', ',1573,1585,1590,', '3', 'daanshi', '大安市', '4', '220882', '220000,220800,220882', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1591', '1573', ',1573,1591,', '2', 'baishanshi', '白山市', '2', '220600', '220000,220600', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1592', '1591', ',1573,1591,1592,', '3', 'badaojiangqu', '八道江区', '2', '220602', '220000,220600,220602', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1593', '1591', ',1573,1591,1593,', '3', 'fusongxian', '抚松县', '6', '220621', '220000,220600,220621', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1594', '1591', ',1573,1591,1594,', '3', 'jingyuxian', '靖宇县', '10', '220622', '220000,220600,220622', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1595', '1591', ',1573,1591,1595,', '3', 'changbaichaoxianzuzizhixian', '长白朝鲜族自治县', '3', '220623', '220000,220600,220623', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1596', '1591', ',1573,1591,1596,', '3', 'jiangyuanxian', '江源县', '10', '220625', '220000,220600,220625', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1597', '1591', ',1573,1591,1597,', '3', 'linjiangshi', '临江市', '12', '220681', '220000,220600,220681', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1598', '1573', ',1573,1598,', '2', 'jilinshi', '吉林市', '10', '220000', '220000,220000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1599', '1598', ',1573,1598,1599,', '3', 'changyiqu', '昌邑区', '3', '220202', '220000,220000,220202', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1600', '1598', ',1573,1598,1600,', '3', 'longtanqu', '龙潭区', '12', '220203', '220000,220000,220203', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1601', '1598', ',1573,1598,1601,', '3', 'chuanyingqu', '船营区', '3', '220204', '220000,220000,220204', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1602', '1598', ',1573,1598,1602,', '3', 'fengmanqu', '丰满区', '6', '220205', '220000,220000,220205', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1603', '1598', ',1573,1598,1603,', '3', 'yongjixian', '永吉县', '25', '220221', '220000,220000,220221', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1604', '1598', ',1573,1598,1604,', '3', 'zuoheshi', '蛟河市', '26', '220224', '220000,220000,220224', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1605', '1598', ',1573,1598,1605,', '3', 'zuodianshi', '桦甸市', '26', '220225', '220000,220000,220225', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1606', '1598', ',1573,1598,1606,', '3', 'shulanshi', '舒兰市', '19', '220222', '220000,220000,220222', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1607', '1598', ',1573,1598,1607,', '3', 'panshishi', '磐石市', '16', '220223', '220000,220000,220223', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1608', '1573', ',1573,1608,', '2', 'liaoyuanshi', '辽源市', '12', '220400', '220000,220400', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1609', '1608', ',1573,1608,1609,', '3', 'longshanqu', '龙山区', '12', '220402', '220000,220400,220402', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1610', '1608', ',1573,1608,1610,', '3', 'xianqu', '西安区', '24', '220403', '220000,220400,220403', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1611', '1608', ',1573,1608,1611,', '3', 'dongfengxian', '东丰县', '4', '220421', '220000,220400,220421', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1612', '1608', ',1573,1608,1612,', '3', 'dongliaoxian', '东辽县', '4', '220422', '220000,220400,220422', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1613', '1573', ',1573,1613,', '2', 'sipingshi', '四平市', '19', '220300', '220000,220300', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1614', '1613', ',1573,1613,1614,', '3', 'tiexiqu', '铁西区', '20', '220302', '220000,220300,220302', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1615', '1613', ',1573,1613,1615,', '3', 'tiedongqu', '铁东区', '20', '220303', '220000,220300,220303', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1616', '1613', ',1573,1613,1616,', '3', 'lishuxian', '梨树县', '12', '220322', '220000,220300,220322', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1617', '1613', ',1573,1613,1617,', '3', 'yitongmanzuzizhixian', '伊通满族自治县', '25', '220323', '220000,220300,220323', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1618', '1613', ',1573,1613,1618,', '3', 'gongzhulingshi', '公主岭市', '7', '220381', '220000,220300,220381', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1619', '1613', ',1573,1613,1619,', '3', 'shuangliaoshi', '双辽市', '19', '220382', '220000,220300,220382', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1620', '1573', ',1573,1620,', '2', 'songyuanshi', '松原市', '19', '220700', '220000,220700', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1621', '1620', ',1573,1620,1621,', '3', 'ningjiangqu', '宁江区', '14', '220702', '220000,220700,220702', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1622', '1620', ',1573,1620,1622,', '3', 'qianguoerluosimengguzuzizhixian', '前郭尔罗斯蒙古族自治县', '17', '220721', '220000,220700,220721', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1623', '1620', ',1573,1620,1623,', '3', 'changlingxian', '长岭县', '3', '220722', '220000,220700,220722', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1624', '1620', ',1573,1620,1624,', '3', 'qiananxian', '乾安县', '17', '220723', '220000,220700,220723', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1625', '1620', ',1573,1620,1625,', '3', 'fuyuxian', '扶余县', '6', '220724', '220000,220700,220724', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1626', '1573', ',1573,1626,', '2', 'tonghuashi', '通化市', '20', '220500', '220000,220500', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1627', '1626', ',1573,1626,1627,', '3', 'dongchangqu', '东昌区', '4', '220502', '220000,220500,220502', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1628', '1626', ',1573,1626,1628,', '3', 'erdaojiangqu', '二道江区', '5', '220503', '220000,220500,220503', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1629', '1626', ',1573,1626,1629,', '3', 'tonghuaxian', '通化县', '20', '220521', '220000,220500,220521', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1630', '1626', ',1573,1626,1630,', '3', 'huinanxian', '辉南县', '8', '220523', '220000,220500,220523', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1631', '1626', ',1573,1626,1631,', '3', 'liuhexian', '柳河县', '12', '220524', '220000,220500,220524', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1632', '1626', ',1573,1626,1632,', '3', 'meihekoushi', '梅河口市', '13', '220581', '220000,220500,220581', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1633', '1626', ',1573,1626,1633,', '3', 'jianshi', '集安市', '10', '220522', '220000,220500,220522', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1634', '1573', ',1573,1634,', '2', 'yanbianchaoxianzuzizhizhou', '延边朝鲜族自治州', '25', '222400', '220000,222400', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1635', '1634', ',1573,1634,1635,', '3', 'yanjishi', '延吉市', '25', '222401', '220000,222400,222401', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1636', '1634', ',1573,1634,1636,', '3', 'tumenshi', '图们市', '20', '222402', '220000,222400,222402', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1637', '1634', ',1573,1634,1637,', '3', 'dunhuashi', '敦化市', '4', '222403', '220000,222400,222403', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1638', '1634', ',1573,1634,1638,', '3', 'zuochunshi', '珲春市', '26', '222404', '220000,222400,222404', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1639', '1634', ',1573,1634,1639,', '3', 'longjingshi', '龙井市', '12', '222405', '220000,222400,222405', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1640', '1634', ',1573,1634,1640,', '3', 'helongshi', '和龙市', '8', '222406', '220000,222400,222406', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1641', '1634', ',1573,1634,1641,', '3', 'wangqingxian', '汪清县', '23', '222424', '220000,222400,222424', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1642', '1634', ',1573,1634,1642,', '3', 'antuxian', '安图县', '1', '222426', '220000,222400,222426', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1643', null, ',1643,', '1', 'jiangsu', '江苏', '10', '320000', '320000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1644', '1643', ',1643,1644,', '2', 'nanjingshi', '南京市', '14', '320100', '320000,320100', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1645', '1644', ',1643,1644,1645,', '3', 'xuanwuqu', '玄武区', '24', '320102', '320000,320100,320102', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1646', '1644', ',1643,1644,1646,', '3', 'baixiaqu', '白下区', '2', '320103', '320000,320100,320103', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1647', '1644', ',1643,1644,1647,', '3', 'qinhuaiqu', '秦淮区', '17', '320104', '320000,320100,320104', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1648', '1644', ',1643,1644,1648,', '3', 'jianzuoqu', '建邺区', '10', '320105', '320000,320100,320105', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1649', '1644', ',1643,1644,1649,', '3', 'gulouqu', '鼓楼区', '7', '320106', '320000,320100,320106', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1650', '1644', ',1643,1644,1650,', '3', 'xiaguanqu', '下关区', '24', '320107', '320000,320100,320107', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1651', '1644', ',1643,1644,1651,', '3', 'pukouqu', '浦口区', '16', '320111', '320000,320100,320111', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1652', '1644', ',1643,1644,1652,', '3', 'qixiaqu', '栖霞区', '17', '320113', '320000,320100,320113', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1653', '1644', ',1643,1644,1653,', '3', 'yuhuataiqu', '雨花台区', '25', '320114', '320000,320100,320114', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1654', '1644', ',1643,1644,1654,', '3', 'jiangningqu', '江宁区', '10', '320115', '320000,320100,320115', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1655', '1644', ',1643,1644,1655,', '3', 'liuhequ', '六合区', '12', '320123', '320000,320100,320123', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1656', '1644', ',1643,1644,1656,', '3', 'zuoshuixian', '溧水县', '26', '320124', '320000,320100,320124', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1657', '1644', ',1643,1644,1657,', '3', 'gaochunxian', '高淳县', '7', '320125', '320000,320100,320125', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1658', '1643', ',1643,1658,', '2', 'changzhoushi', '常州市', '3', '320400', '320000,320400', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1659', '1658', ',1643,1658,1659,', '3', 'tianningqu', '天宁区', '20', '320402', '320000,320400,320402', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1660', '1658', ',1643,1658,1660,', '3', 'zhonglouqu', '钟楼区', '26', '320404', '320000,320400,320404', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1661', '1658', ',1643,1658,1661,', '3', 'qishuyanqu', '戚墅堰区', '17', '320405', '320000,320400,320405', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1662', '1658', ',1643,1658,1662,', '3', 'xinbeiqu', '新北区', '24', '320411', '320000,320400,320411', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1663', '1658', ',1643,1658,1663,', '3', 'wujinqu', '武进区', '23', '320412', '320000,320400,320412', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1664', '1658', ',1643,1658,1664,', '3', 'zuoyangshi', '溧阳市', '26', '320481', '320000,320400,320481', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1665', '1658', ',1643,1658,1665,', '3', 'jintanshi', '金坛市', '10', '320482', '320000,320400,320482', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1666', '1643', ',1643,1666,', '2', 'huaianshi', '淮安市', '8', '320800', '320000,320800', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1667', '1666', ',1643,1666,1667,', '3', 'qinghequ', '清河区', '17', '320802', '320000,320800,320802', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1668', '1666', ',1643,1666,1668,', '3', 'chuzhouqu', '楚州区', '3', '320803', '320000,320800,320803', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1669', '1666', ',1643,1666,1669,', '3', 'huaiyinqu', '淮阴区', '8', '320804', '320000,320800,320804', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1670', '1666', ',1643,1666,1670,', '3', 'qingpuqu', '清浦区', '17', '320811', '320000,320800,320811', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1671', '1666', ',1643,1666,1671,', '3', 'lianshuixian', '涟水县', '12', '320826', '320000,320800,320826', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1672', '1666', ',1643,1666,1672,', '3', 'hongzexian', '洪泽县', '8', '320829', '320000,320800,320829', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1673', '1666', ',1643,1666,1673,', '3', 'zuozuoxian', '盱眙县', '26', '320830', '320000,320800,320830', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1674', '1666', ',1643,1666,1674,', '3', 'jinhuxian', '金湖县', '10', '320831', '320000,320800,320831', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1675', '1643', ',1643,1675,', '2', 'lianyungangshi', '连云港市', '12', '320700', '320000,320700', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1676', '1675', ',1643,1675,1676,', '3', 'lianyunqu', '连云区', '12', '320703', '320000,320700,320703', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1677', '1675', ',1643,1675,1677,', '3', 'xinpuqu', '新浦区', '24', '320705', '320000,320700,320705', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1678', '1675', ',1643,1675,1678,', '3', 'haizhouqu', '海州区', '8', '320706', '320000,320700,320706', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1679', '1675', ',1643,1675,1679,', '3', 'ganyuxian', '赣榆县', '7', '320721', '320000,320700,320721', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1680', '1675', ',1643,1675,1680,', '3', 'donghaixian', '东海县', '4', '320722', '320000,320700,320722', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1681', '1675', ',1643,1675,1681,', '3', 'guanyunxian', '灌云县', '7', '320723', '320000,320700,320723', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1682', '1675', ',1643,1675,1682,', '3', 'guannanxian', '灌南县', '7', '320724', '320000,320700,320724', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1683', '1643', ',1643,1683,', '2', 'nantongshi', '南通市', '14', '320600', '320000,320600', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1684', '1683', ',1643,1683,1684,', '3', 'chongchuanqu', '崇川区', '3', '320602', '320000,320600,320602', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1685', '1683', ',1643,1683,1685,', '3', 'gangzhaqu', '港闸区', '7', '320611', '320000,320600,320611', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1686', '1683', ',1643,1683,1686,', '3', 'haianxian', '海安县', '8', '320621', '320000,320600,320621', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1687', '1683', ',1643,1683,1687,', '3', 'rudongxian', '如东县', '18', '320623', '320000,320600,320623', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1688', '1683', ',1643,1683,1688,', '3', 'qidongshi', '启东市', '17', '320626', '320000,320600,320626', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1689', '1683', ',1643,1683,1689,', '3', 'rugaoshi', '如皋市', '18', '320622', '320000,320600,320622', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1690', '1683', ',1643,1683,1690,', '3', 'tongzhoushi', '通州市', '20', '320683', '320000,320600,320683', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1691', '1683', ',1643,1683,1691,', '3', 'haimenshi', '海门市', '8', '320625', '320000,320600,320625', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1692', '1643', ',1643,1692,', '2', 'suzhoushi', '苏州市', '19', '320500', '320000,320500', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1693', '1692', ',1643,1692,1693,', '3', 'canglangqu', '沧浪区', '3', '320502', '320000,320500,320502', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1694', '1692', ',1643,1692,1694,', '3', 'pingjiangqu', '平江区', '16', '320503', '320000,320500,320503', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1695', '1692', ',1643,1692,1695,', '3', 'jinzuoqu', '金阊区', '10', '320504', '320000,320500,320504', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1696', '1692', ',1643,1692,1696,', '3', 'huqiuqu', '虎丘区', '8', '320505', '320000,320500,320505', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1697', '1692', ',1643,1692,1697,', '3', 'wuzhongqu', '吴中区', '23', '320506', '320000,320500,320506', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1698', '1692', ',1643,1692,1698,', '3', 'xiangchengqu', '相城区', '24', '320507', '320000,320500,320507', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1699', '1692', ',1643,1692,1699,', '3', 'changshushi', '常熟市', '3', '320581', '320000,320500,320581', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1700', '1692', ',1643,1692,1700,', '3', 'zhangjiagangshi', '张家港市', '26', '320582', '320000,320500,320582', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1701', '1692', ',1643,1692,1701,', '3', 'kunshanshi', '昆山市', '11', '320523', '320000,320500,320523', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1702', '1692', ',1643,1692,1702,', '3', 'wujiangshi', '吴江市', '23', '320525', '320000,320500,320525', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1703', '1692', ',1643,1692,1703,', '3', 'taicangshi', '太仓市', '20', '320522', '320000,320500,320522', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1704', '1643', ',1643,1704,', '2', 'suqianshi', '宿迁市', '19', '321300', '320000,321300', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1705', '1704', ',1643,1704,1705,', '3', 'suchengqu', '宿城区', '19', '321302', '320000,321300,321302', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1706', '1704', ',1643,1704,1706,', '3', 'suyuqu', '宿豫区', '19', '321311', '320000,321300,321311', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1707', '1704', ',1643,1704,1707,', '3', 'zuoyangxian', '沭阳县', '26', '321322', '320000,321300,321322', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1708', '1704', ',1643,1704,1708,', '3', 'zuoyangxian', '泗阳县', '26', '320825', '320000,320824,320825', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1709', '1704', ',1643,1704,1709,', '3', 'zuohongxian', '泗洪县', '26', '320827', '320000,320824,320827', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1710', '1643', ',1643,1710,', '2', 'taizhoushi', '泰州市', '20', '321200', '320000,321200', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1711', '1710', ',1643,1710,1711,', '3', 'hailingqu', '海陵区', '8', '321202', '320000,321200,321202', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1712', '1710', ',1643,1710,1712,', '3', 'gaogangqu', '高港区', '7', '321203', '320000,321200,321203', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1713', '1710', ',1643,1710,1713,', '3', 'xinghuashi', '兴化市', '24', '321021', '320000,321082,321021', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1714', '1710', ',1643,1710,1714,', '3', 'jingjiangshi', '靖江市', '10', '321024', '320000,321082,321024', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1715', '1710', ',1643,1710,1715,', '3', 'taixingshi', '泰兴市', '20', '321025', '320000,321082,321025', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1716', '1710', ',1643,1710,1716,', '3', 'jiangyanqu', '姜堰区', '10', '321204', '320000,321200,321204', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1717', '1643', ',1643,1717,', '2', 'wuxishi', '无锡市', '23', '320200', '320000,320200', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1718', '1717', ',1643,1717,1718,', '3', 'chonganqu', '崇安区', '3', '320202', '320000,320200,320202', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1719', '1717', ',1643,1717,1719,', '3', 'nanchangqu', '南长区', '14', '320203', '320000,320200,320203', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1720', '1717', ',1643,1717,1720,', '3', 'beitangqu', '北塘区', '2', '320204', '320000,320200,320204', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1721', '1717', ',1643,1717,1721,', '3', 'xishanqu', '锡山区', '24', '320205', '320000,320200,320205', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1722', '1717', ',1643,1717,1722,', '3', 'huishanqu', '惠山区', '8', '320206', '320000,320200,320206', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1723', '1717', ',1643,1717,1723,', '3', 'binhuqu', '滨湖区', '2', '320211', '320000,320200,320211', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1724', '1717', ',1643,1717,1724,', '3', 'jiangyinshi', '江阴市', '10', '320281', '320000,320200,320281', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1725', '1717', ',1643,1717,1725,', '3', 'yixingshi', '宜兴市', '25', '320282', '320000,320200,320282', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1726', '1643', ',1643,1726,', '2', 'xuzhoushi', '徐州市', '24', '320300', '320000,320300', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1727', '1726', ',1643,1726,1727,', '3', 'gulouqu', '鼓楼区', '7', '320302', '320000,320300,320302', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1728', '1726', ',1643,1726,1728,', '3', 'yunlongqu', '云龙区', '25', '320303', '320000,320300,320303', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1729', '1726', ',1643,1726,1729,', '3', 'jiuliqu', '九里区', '10', '320304', '320000,320300,320304', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1730', '1726', ',1643,1726,1730,', '3', 'jiawangqu', '贾汪区', '10', '320305', '320000,320300,320305', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1731', '1726', ',1643,1726,1731,', '3', 'quanshanqu', '泉山区', '17', '320311', '320000,320300,320311', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1732', '1726', ',1643,1726,1732,', '3', 'fengxian', '丰县', '6', '320321', '320000,320300,320321', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1733', '1726', ',1643,1726,1733,', '3', 'peixian', '沛县', '16', '320322', '320000,320300,320322', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1734', '1726', ',1643,1726,1734,', '3', 'tongshanxian', '铜山县', '20', '320323', '320000,320300,320323', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1735', '1726', ',1643,1726,1735,', '3', 'zuoningxian', '睢宁县', '26', '320324', '320000,320300,320324', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1736', '1726', ',1643,1726,1736,', '3', 'xinyishi', '新沂市', '24', '320326', '320000,320300,320326', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1737', '1726', ',1643,1726,1737,', '3', 'zuozhoushi', '邳州市', '26', '320325', '320000,320300,320325', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1738', '1643', ',1643,1738,', '2', 'yanchengshi', '盐城市', '25', '320900', '320000,320900', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1739', '1738', ',1643,1738,1739,', '3', 'tinghuqu', '亭湖区', '20', '320902', '320000,320900,320902', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1740', '1738', ',1643,1738,1740,', '3', 'yanduqu', '盐都区', '25', '320903', '320000,320900,320903', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1741', '1738', ',1643,1738,1741,', '3', 'xiangshuixian', '响水县', '24', '320921', '320000,320900,320921', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1742', '1738', ',1643,1738,1742,', '3', 'binhaixian', '滨海县', '2', '320922', '320000,320900,320922', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1743', '1738', ',1643,1738,1743,', '3', 'funingxian', '阜宁县', '6', '320923', '320000,320900,320923', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1744', '1738', ',1643,1738,1744,', '3', 'sheyangxian', '射阳县', '19', '320924', '320000,320900,320924', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1745', '1738', ',1643,1738,1745,', '3', 'jianhuxian', '建湖县', '10', '320925', '320000,320900,320925', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1746', '1738', ',1643,1738,1746,', '3', 'dongtaishi', '东台市', '4', '320927', '320000,320900,320927', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1747', '1738', ',1643,1738,1747,', '3', 'dafengshi', '大丰市', '4', '320926', '320000,320900,320926', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1748', '1643', ',1643,1748,', '2', 'yangzhoushi', '扬州市', '25', '321000', '320000,321000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1749', '1748', ',1643,1748,1749,', '3', 'guanglingqu', '广陵区', '7', '321002', '320000,321000,321002', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1750', '1748', ',1643,1748,1750,', '3', 'zuojiangqu', '邗江区', '26', '321003', '320000,321000,321003', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1751', '1748', ',1643,1748,1751,', '3', 'jiaoqu', '郊区', '10', '321003', '320000,321000,321003', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1752', '1748', ',1643,1748,1752,', '3', 'baoyingxian', '宝应县', '2', '321023', '320000,321000,321023', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1753', '1748', ',1643,1748,1753,', '3', 'yizhengshi', '仪征市', '25', '321029', '320000,321000,321029', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1754', '1748', ',1643,1748,1754,', '3', 'gaoyoushi', '高邮市', '7', '321022', '320000,321000,321022', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1755', '1748', ',1643,1748,1755,', '3', 'jiangdushi', '江都市', '10', '321026', '320000,321000,321026', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1756', '1643', ',1643,1756,', '2', 'zhenjiangshi', '镇江市', '26', '321100', '320000,321100', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1757', '1756', ',1643,1756,1757,', '3', 'jingkouqu', '京口区', '10', '321102', '320000,321100,321102', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1758', '1756', ',1643,1756,1758,', '3', 'runzhouqu', '润州区', '18', '321111', '320000,321100,321111', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1759', '1756', ',1643,1756,1759,', '3', 'dantuqu', '丹徒区', '4', '321112', '320000,321100,321112', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1760', '1756', ',1643,1756,1760,', '3', 'danyangshi', '丹阳市', '4', '321122', '320000,321100,321122', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1761', '1756', ',1643,1756,1761,', '3', 'yangzhongshi', '扬中市', '25', '321124', '320000,321100,321124', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1762', '1756', ',1643,1756,1762,', '3', 'jurongshi', '句容市', '10', '321123', '320000,321100,321123', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1763', null, ',1763,', '1', 'jiangxi', '江西', '10', '360000', '360000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1764', '1763', ',1763,1764,', '2', 'nanchangshi', '南昌市', '14', '360100', '360000,360100', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1765', '1764', ',1763,1764,1765,', '3', 'donghuqu', '东湖区', '4', '360102', '360000,360100,360102', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1766', '1764', ',1763,1764,1766,', '3', 'xihuqu', '西湖区', '24', '360103', '360000,360100,360103', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1767', '1764', ',1763,1764,1767,', '3', 'qingyunpuqu', '青云谱区', '17', '360104', '360000,360100,360104', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1768', '1764', ',1763,1764,1768,', '3', 'wanliqu', '湾里区', '23', '360105', '360000,360100,360105', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1769', '1764', ',1763,1764,1769,', '3', 'qingshanhuqu', '青山湖区', '17', '360111', '360000,360100,360111', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1770', '1764', ',1763,1764,1770,', '3', 'nanchangxian', '南昌县', '14', '360121', '360000,360100,360121', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1771', '1764', ',1763,1764,1771,', '3', 'xinjianxian', '新建县', '24', '360122', '360000,360100,360122', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1772', '1764', ',1763,1764,1772,', '3', 'anyixian', '安义县', '1', '360123', '360000,360100,360123', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1773', '1764', ',1763,1764,1773,', '3', 'jinxianxian', '进贤县', '10', '360124', '360000,360100,360124', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1774', '1763', ',1763,1774,', '2', 'fuzhoushi', '抚州市', '6', '361000', '360000,361000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1775', '1774', ',1763,1774,1775,', '3', 'linchuanqu', '临川区', '12', '361002', '360000,361000,361002', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1776', '1774', ',1763,1774,1776,', '3', 'nanchengxian', '南城县', '14', '361021', '360000,361000,361021', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1777', '1774', ',1763,1774,1777,', '3', 'lichuanxian', '黎川县', '12', '361022', '360000,361000,361022', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1778', '1774', ',1763,1774,1778,', '3', 'nanfengxian', '南丰县', '14', '361023', '360000,361000,361023', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1779', '1774', ',1763,1774,1779,', '3', 'chongrenxian', '崇仁县', '3', '361024', '360000,361000,361024', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1780', '1774', ',1763,1774,1780,', '3', 'leanxian', '乐安县', '12', '361025', '360000,361000,361025', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1781', '1774', ',1763,1774,1781,', '3', 'yihuangxian', '宜黄县', '25', '361026', '360000,361000,361026', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1782', '1774', ',1763,1774,1782,', '3', 'jinxixian', '金溪县', '10', '361027', '360000,361000,361027', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1783', '1774', ',1763,1774,1783,', '3', 'zixixian', '资溪县', '26', '361028', '360000,361000,361028', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1784', '1774', ',1763,1774,1784,', '3', 'dongxiangxian', '东乡县', '4', '361029', '360000,361000,361029', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1785', '1774', ',1763,1774,1785,', '3', 'guangchangxian', '广昌县', '7', '361030', '360000,361000,361030', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1786', '1763', ',1763,1786,', '2', 'ganzhoushi', '赣州市', '7', '360700', '360000,360700', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1787', '1786', ',1763,1786,1787,', '3', 'zhanggongqu', '章贡区', '26', '360702', '360000,360700,360702', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1788', '1786', ',1763,1786,1788,', '3', 'ganxian', '赣县', '7', '360721', '360000,360700,360721', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1789', '1786', ',1763,1786,1789,', '3', 'xinfengxian', '信丰县', '24', '360722', '360000,360700,360722', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1790', '1786', ',1763,1786,1790,', '3', 'dayuxian', '大余县', '4', '360723', '360000,360700,360723', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1791', '1786', ',1763,1786,1791,', '3', 'shangyouxian', '上犹县', '19', '360724', '360000,360700,360724', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1792', '1786', ',1763,1786,1792,', '3', 'chongyixian', '崇义县', '3', '360725', '360000,360700,360725', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1793', '1786', ',1763,1786,1793,', '3', 'anyuanxian', '安远县', '1', '360726', '360000,360700,360726', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1794', '1786', ',1763,1786,1794,', '3', 'longnanxian', '龙南县', '12', '360727', '360000,360700,360727', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1795', '1786', ',1763,1786,1795,', '3', 'dingnanxian', '定南县', '4', '360728', '360000,360700,360728', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1796', '1786', ',1763,1786,1796,', '3', 'quannanxian', '全南县', '17', '360729', '360000,360700,360729', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1797', '1786', ',1763,1786,1797,', '3', 'ningduxian', '宁都县', '14', '360730', '360000,360700,360730', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1798', '1786', ',1763,1786,1798,', '3', 'yuduxian', '于都县', '25', '360731', '360000,360700,360731', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1799', '1786', ',1763,1786,1799,', '3', 'xingguoxian', '兴国县', '24', '360732', '360000,360700,360732', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1800', '1786', ',1763,1786,1800,', '3', 'huichangxian', '会昌县', '8', '360733', '360000,360700,360733', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1801', '1786', ',1763,1786,1801,', '3', 'xunwuxian', '寻乌县', '24', '360734', '360000,360700,360734', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1802', '1786', ',1763,1786,1802,', '3', 'shichengxian', '石城县', '19', '360735', '360000,360700,360735', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1803', '1786', ',1763,1786,1803,', '3', 'ruijinshi', '瑞金市', '18', '360781', '360000,360700,360781', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1804', '1786', ',1763,1786,1804,', '3', 'nankangshi', '南康市', '14', '360782', '360000,360700,360782', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1805', '1763', ',1763,1805,', '2', 'jianshi', '吉安市', '10', '360800', '360000,360800', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1806', '1805', ',1763,1805,1806,', '3', 'jizhouqu', '吉州区', '10', '360802', '360000,360800,360802', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1807', '1805', ',1763,1805,1807,', '3', 'qingyuanqu', '青原区', '17', '360803', '360000,360800,360803', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1808', '1805', ',1763,1805,1808,', '3', 'jianxian', '吉安县', '10', '360821', '360000,360800,360821', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1809', '1805', ',1763,1805,1809,', '3', 'jishuixian', '吉水县', '10', '360822', '360000,360800,360822', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1810', '1805', ',1763,1805,1810,', '3', 'xiajiangxian', '峡江县', '24', '360823', '360000,360800,360823', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1811', '1805', ',1763,1805,1811,', '3', 'xinganxian', '新干县', '24', '360824', '360000,360800,360824', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1812', '1805', ',1763,1805,1812,', '3', 'yongfengxian', '永丰县', '25', '360825', '360000,360800,360825', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1813', '1805', ',1763,1805,1813,', '3', 'taihexian', '泰和县', '20', '360826', '360000,360800,360826', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1814', '1805', ',1763,1805,1814,', '3', 'suichuanxian', '遂川县', '19', '360827', '360000,360800,360827', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1815', '1805', ',1763,1805,1815,', '3', 'wananxian', '万安县', '23', '360828', '360000,360800,360828', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1816', '1805', ',1763,1805,1816,', '3', 'anfuxian', '安福县', '1', '360829', '360000,360800,360829', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1817', '1805', ',1763,1805,1817,', '3', 'yongxinxian', '永新县', '25', '360830', '360000,360800,360830', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1818', '1805', ',1763,1805,1818,', '3', 'jinggangshanshi', '井冈山市', '10', '360881', '360000,360800,360881', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1819', '1763', ',1763,1819,', '2', 'jingdezhenshi', '景德镇市', '10', '360200', '360000,360200', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1820', '1819', ',1763,1819,1820,', '3', 'changjiangqu', '昌江区', '3', '360202', '360000,360200,360202', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1821', '1819', ',1763,1819,1821,', '3', 'zhushanqu', '珠山区', '26', '360203', '360000,360200,360203', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1822', '1819', ',1763,1819,1822,', '3', 'fuliangxian', '浮梁县', '6', '360222', '360000,360200,360222', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1823', '1819', ',1763,1819,1823,', '3', 'lepingshi', '乐平市', '12', '360221', '360000,360200,360221', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1824', '1763', ',1763,1824,', '2', 'jiujiangshi', '九江市', '10', '360400', '360000,360400', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1825', '1824', ',1763,1824,1825,', '3', 'lushanqu', '庐山区', '12', '360402', '360000,360400,360402', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1826', '1824', ',1763,1824,1826,', '3', 'zuoyangqu', '浔阳区', '26', '360403', '360000,360400,360403', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1827', '1824', ',1763,1824,1827,', '3', 'jiujiangxian', '九江县', '10', '360421', '360000,360400,360421', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1828', '1824', ',1763,1824,1828,', '3', 'wuningxian', '武宁县', '23', '360423', '360000,360400,360423', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1829', '1824', ',1763,1824,1829,', '3', 'xiushuixian', '修水县', '24', '360424', '360000,360400,360424', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1830', '1824', ',1763,1824,1830,', '3', 'yongxiuxian', '永修县', '25', '360425', '360000,360400,360425', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1831', '1824', ',1763,1824,1831,', '3', 'deanxian', '德安县', '4', '360426', '360000,360400,360426', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1832', '1824', ',1763,1824,1832,', '3', 'xingzixian', '星子县', '24', '360427', '360000,360400,360427', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1833', '1824', ',1763,1824,1833,', '3', 'duchangxian', '都昌县', '4', '360428', '360000,360400,360428', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1834', '1824', ',1763,1824,1834,', '3', 'hukouxian', '湖口县', '8', '360429', '360000,360400,360429', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1835', '1824', ',1763,1824,1835,', '3', 'pengzexian', '彭泽县', '16', '360430', '360000,360400,360430', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1836', '1824', ',1763,1824,1836,', '3', 'ruichangshi', '瑞昌市', '18', '360422', '360000,360400,360422', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1837', '1763', ',1763,1837,', '2', 'pingxiangshi', '萍乡市', '16', '360300', '360000,360300', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1838', '1837', ',1763,1837,1838,', '3', 'anyuanqu', '安源区', '1', '360302', '360000,360300,360302', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1839', '1837', ',1763,1837,1839,', '3', 'xiangdongqu', '湘东区', '24', '360313', '360000,360300,360313', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1840', '1837', ',1763,1837,1840,', '3', 'lianhuaxian', '莲花县', '12', '360321', '360000,360300,360321', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1841', '1837', ',1763,1837,1841,', '3', 'shanglixian', '上栗县', '19', '360322', '360000,360300,360322', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1842', '1837', ',1763,1837,1842,', '3', 'luxixian', '芦溪县', '12', '360323', '360000,360300,360323', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1843', '1763', ',1763,1843,', '2', 'shangraoshi', '上饶市', '19', '361100', '360000,361100', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1844', '1843', ',1763,1843,1844,', '3', 'xinzhouqu', '信州区', '24', '361102', '360000,361100,361102', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1845', '1843', ',1763,1843,1845,', '3', 'shangraoxian', '上饶县', '19', '361121', '360000,361100,361121', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1846', '1843', ',1763,1843,1846,', '3', 'guangfengxian', '广丰县', '7', '361122', '360000,361100,361122', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1847', '1843', ',1763,1843,1847,', '3', 'yushanxian', '玉山县', '25', '361123', '360000,361100,361123', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1848', '1843', ',1763,1843,1848,', '3', 'qianshanxian', '铅山县', '17', '361124', '360000,361100,361124', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1849', '1843', ',1763,1843,1849,', '3', 'hengfengxian', '横峰县', '8', '361125', '360000,361100,361125', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1850', '1843', ',1763,1843,1850,', '3', 'zuoyangxian', '弋阳县', '26', '361126', '360000,361100,361126', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1851', '1843', ',1763,1843,1851,', '3', 'yuganxian', '余干县', '25', '361127', '360000,361100,361127', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1852', '1843', ',1763,1843,1852,', '3', 'zuoyangxian', '鄱阳县', '26', '361128', '360000,361100,361128', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1853', '1843', ',1763,1843,1853,', '3', 'wannianxian', '万年县', '23', '361129', '360000,361100,361129', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1854', '1843', ',1763,1843,1854,', '3', 'zuoyuanxian', '婺源县', '26', '361130', '360000,361100,361130', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1855', '1843', ',1763,1843,1855,', '3', 'dexingshi', '德兴市', '4', '361181', '360000,361100,361181', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1856', '1763', ',1763,1856,', '2', 'xinyushi', '新余市', '24', '360500', '360000,360500', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1857', '1856', ',1763,1856,1857,', '3', 'yushuiqu', '渝水区', '25', '360502', '360000,360500,360502', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1858', '1856', ',1763,1856,1858,', '3', 'fenyixian', '分宜县', '6', '360521', '360000,360500,360521', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1859', '1763', ',1763,1859,', '2', 'yichunshi', '宜春市', '25', '360900', '360000,360900', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1860', '1859', ',1763,1859,1860,', '3', 'yuanzhouqu', '袁州区', '25', '360902', '360000,360900,360902', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1861', '1859', ',1763,1859,1861,', '3', 'fengxinxian', '奉新县', '6', '360921', '360000,360900,360921', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1862', '1859', ',1763,1859,1862,', '3', 'wanzaixian', '万载县', '23', '360922', '360000,360900,360922', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1863', '1859', ',1763,1859,1863,', '3', 'shanggaoxian', '上高县', '19', '360923', '360000,360900,360923', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1864', '1859', ',1763,1859,1864,', '3', 'yifengxian', '宜丰县', '25', '360924', '360000,360900,360924', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1865', '1859', ',1763,1859,1865,', '3', 'jinganxian', '靖安县', '10', '360925', '360000,360900,360925', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1866', '1859', ',1763,1859,1866,', '3', 'tongguxian', '铜鼓县', '20', '360926', '360000,360900,360926', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1867', '1859', ',1763,1859,1867,', '3', 'fengchengshi', '丰城市', '6', '360981', '360000,360900,360981', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1868', '1859', ',1763,1859,1868,', '3', 'zhangshushi', '樟树市', '26', '360982', '360000,360900,360982', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1869', '1859', ',1763,1859,1869,', '3', 'gaoanshi', '高安市', '7', '360983', '360000,360900,360983', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1870', '1763', ',1763,1870,', '2', 'yingtanshi', '鹰潭市', '25', '360600', '360000,360600', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1871', '1870', ',1763,1870,1871,', '3', 'yuehuqu', '月湖区', '25', '360602', '360000,360600,360602', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1872', '1870', ',1763,1870,1872,', '3', 'yujiangxian', '余江县', '25', '360622', '360000,360600,360622', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1873', '1870', ',1763,1870,1873,', '3', 'guixishi', '贵溪市', '7', '360621', '360000,360600,360621', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1874', null, ',1874,', '1', 'liaoning', '辽宁', '12', '210000', '210000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1875', '1874', ',1874,1875,', '2', 'shenyangshi', '沈阳市', '19', '210100', '210000,210100', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1876', '1875', ',1874,1875,1876,', '3', 'hepingqu', '和平区', '8', '210102', '210000,210100,210102', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1877', '1875', ',1874,1875,1877,', '3', 'shenhequ', '沈河区', '19', '210103', '210000,210100,210103', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1878', '1875', ',1874,1875,1878,', '3', 'dadongqu', '大东区', '4', '210104', '210000,210100,210104', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1879', '1875', ',1874,1875,1879,', '3', 'huangguqu', '皇姑区', '8', '210105', '210000,210100,210105', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1880', '1875', ',1874,1875,1880,', '3', 'tiexiqu', '铁西区', '20', '210106', '210000,210100,210106', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1881', '1875', ',1874,1875,1881,', '3', 'sujiatunqu', '苏家屯区', '19', '210111', '210000,210100,210111', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1882', '1875', ',1874,1875,1882,', '3', 'donglingqu', '东陵区', '4', '210112', '210000,210100,210112', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1883', '1875', ',1874,1875,1883,', '3', 'xinchengziqu', '新城子区', '24', '210113', '210000,210100,210113', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1884', '1875', ',1874,1875,1884,', '3', 'yuhongqu', '于洪区', '25', '210114', '210000,210100,210114', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1885', '1875', ',1874,1875,1885,', '3', 'liaozhongxian', '辽中县', '12', '210122', '210000,210100,210122', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1886', '1875', ',1874,1875,1886,', '3', 'kangpingxian', '康平县', '11', '210123', '210000,210100,210123', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1887', '1875', ',1874,1875,1887,', '3', 'fakuxian', '法库县', '6', '210124', '210000,210100,210124', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1888', '1875', ',1874,1875,1888,', '3', 'xinminshi', '新民市', '24', '210121', '210000,210100,210121', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1889', '1874', ',1874,1889,', '2', 'anshanshi', '鞍山市', '1', '210300', '210000,210300', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1890', '1889', ',1874,1889,1890,', '3', 'tiedongqu', '铁东区', '20', '210302', '210000,210300,210302', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1891', '1889', ',1874,1889,1891,', '3', 'tiexiqu', '铁西区', '20', '210303', '210000,210300,210303', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1892', '1889', ',1874,1889,1892,', '3', 'lishanqu', '立山区', '12', '210304', '210000,210300,210304', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1893', '1889', ',1874,1889,1893,', '3', 'qianshanqu', '千山区', '17', '210311', '210000,210300,210311', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1894', '1889', ',1874,1889,1894,', '3', 'taianxian', '台安县', '20', '210321', '210000,210300,210321', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1895', '1889', ',1874,1889,1895,', '3', 'zuoyanmanzuzizhixian', '岫岩满族自治县', '26', '210323', '210000,210300,210323', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1896', '1889', ',1874,1889,1896,', '3', 'haichengshi', '海城市', '8', '210322', '210000,210300,210322', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1897', '1874', ',1874,1897,', '2', 'benxishi', '本溪市', '2', '210500', '210000,210500', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1898', '1897', ',1874,1897,1898,', '3', 'pingshanqu', '平山区', '16', '210502', '210000,210500,210502', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1899', '1897', ',1874,1897,1899,', '3', 'xihuqu', '溪湖区', '24', '210503', '210000,210500,210503', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1900', '1897', ',1874,1897,1900,', '3', 'mingshanqu', '明山区', '13', '210504', '210000,210500,210504', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1901', '1897', ',1874,1897,1901,', '3', 'nanfenqu', '南芬区', '14', '210505', '210000,210500,210505', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1902', '1897', ',1874,1897,1902,', '3', 'benximanzuzizhixian', '本溪满族自治县', '2', '210521', '210000,210500,210521', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1903', '1897', ',1874,1897,1903,', '3', 'huanrenmanzuzizhixian', '桓仁满族自治县', '8', '210522', '210000,210500,210522', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1904', '1874', ',1874,1904,', '2', 'chaoyangshi', '朝阳市', '3', '211300', '210000,211300', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1905', '1904', ',1874,1904,1905,', '3', 'shuangtaqu', '双塔区', '19', '211302', '210000,211300,211302', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1906', '1904', ',1874,1904,1906,', '3', 'longchengqu', '龙城区', '12', '211303', '210000,211300,211303', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1907', '1904', ',1874,1904,1907,', '3', 'chaoyangxian', '朝阳县', '3', '211321', '210000,211300,211321', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1908', '1904', ',1874,1904,1908,', '3', 'jianpingxian', '建平县', '10', '211322', '210000,211300,211322', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1909', '1904', ',1874,1904,1909,', '3', 'kalaqinzuoyimengguzuzizhixian', '喀喇沁左翼蒙古族自治县', '11', '211324', '210000,211300,211324', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1910', '1904', ',1874,1904,1910,', '3', 'beipiaoshi', '北票市', '2', '211326', '210000,211300,211326', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1911', '1904', ',1874,1904,1911,', '3', 'lingyuanshi', '凌源市', '12', '211323', '210000,211300,211323', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1912', '1874', ',1874,1912,', '2', 'dalianshi', '大连市', '4', '210200', '210000,210200', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1913', '1912', ',1874,1912,1913,', '3', 'zhongshanqu', '中山区', '26', '210202', '210000,210200,210202', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1914', '1912', ',1874,1912,1914,', '3', 'xigangqu', '西岗区', '24', '210203', '210000,210200,210203', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1915', '1912', ',1874,1912,1915,', '3', 'shahekouqu', '沙河口区', '19', '210204', '210000,210200,210204', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1916', '1912', ',1874,1912,1916,', '3', 'ganjingziqu', '甘井子区', '7', '210211', '210000,210200,210211', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1917', '1912', ',1874,1912,1917,', '3', 'lvshunkouqu', '旅顺口区', '12', '210212', '210000,210200,210212', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1918', '1912', ',1874,1912,1918,', '3', 'jinzhouqu', '金州区', '10', '210213', '210000,210200,210213', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1919', '1912', ',1874,1912,1919,', '3', 'changhaixian', '长海县', '3', '210224', '210000,210200,210224', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1920', '1912', ',1874,1912,1920,', '3', 'wafangdianshi', '瓦房店市', '23', '210281', '210000,210200,210281', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1921', '1912', ',1874,1912,1921,', '3', 'pulandianshi', '普兰店市', '16', '210282', '210000,210200,210282', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1922', '1912', ',1874,1912,1922,', '3', 'zhuangheshi', '庄河市', '26', '210283', '210000,210200,210283', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1923', '1874', ',1874,1923,', '2', 'dandongshi', '丹东市', '4', '210600', '210000,210600', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1924', '1923', ',1874,1923,1924,', '3', 'yuanbaoqu', '元宝区', '25', '210602', '210000,210600,210602', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1925', '1923', ',1874,1923,1925,', '3', 'zhenxingqu', '振兴区', '26', '210603', '210000,210600,210603', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1926', '1923', ',1874,1923,1926,', '3', 'zhenanqu', '振安区', '26', '210604', '210000,210600,210604', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1927', '1923', ',1874,1923,1927,', '3', 'kuandianmanzuzizhixian', '宽甸满族自治县', '11', '210624', '210000,210600,210624', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1928', '1923', ',1874,1923,1928,', '3', 'donggangshi', '东港市', '4', '210681', '210000,210600,210681', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1929', '1923', ',1874,1923,1929,', '3', 'fengchengshi', '凤城市', '6', '210621', '210000,210600,210621', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1930', '1874', ',1874,1930,', '2', 'fushunshi', '抚顺市', '6', '210400', '210000,210400', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1931', '1930', ',1874,1930,1931,', '3', 'xinfuqu', '新抚区', '24', '210402', '210000,210400,210402', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1932', '1930', ',1874,1930,1932,', '3', 'dongzhouqu', '东洲区', '4', '210403', '210000,210400,210403', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1933', '1930', ',1874,1930,1933,', '3', 'wanghuaqu', '望花区', '23', '210404', '210000,210400,210404', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1934', '1930', ',1874,1930,1934,', '3', 'shunchengqu', '顺城区', '19', '210411', '210000,210400,210411', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1935', '1930', ',1874,1930,1935,', '3', 'fushunxian', '抚顺县', '6', '210421', '210000,210400,210421', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1936', '1930', ',1874,1930,1936,', '3', 'xinbinmanzuzizhixian', '新宾满族自治县', '24', '210422', '210000,210400,210422', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1937', '1930', ',1874,1930,1937,', '3', 'qingyuanmanzuzizhixian', '清原满族自治县', '17', '210423', '210000,210400,210423', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1938', '1874', ',1874,1938,', '2', 'fuxinshi', '阜新市', '6', '210900', '210000,210900', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1939', '1938', ',1874,1938,1939,', '3', 'haizhouqu', '海州区', '8', '210902', '210000,210900,210902', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1940', '1938', ',1874,1938,1940,', '3', 'xinqiuqu', '新邱区', '24', '210903', '210000,210900,210903', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1941', '1938', ',1874,1938,1941,', '3', 'taipingqu', '太平区', '20', '210904', '210000,210900,210904', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1942', '1938', ',1874,1938,1942,', '3', 'qinghemenqu', '清河门区', '17', '210905', '210000,210900,210905', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1943', '1938', ',1874,1938,1943,', '3', 'xihequ', '细河区', '24', '210911', '210000,210900,210911', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1944', '1938', ',1874,1938,1944,', '3', 'fuxinmengguzuzizhixian', '阜新蒙古族自治县', '6', '210921', '210000,210900,210921', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1945', '1938', ',1874,1938,1945,', '3', 'zhangwuxian', '彰武县', '26', '210922', '210000,210900,210922', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1946', '1874', ',1874,1946,', '2', 'huludaoshi', '葫芦岛市', '8', '211400', '210000,211400', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1947', '1946', ',1874,1946,1947,', '3', 'lianshanqu', '连山区', '12', '211402', '210000,211400,211402', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1948', '1946', ',1874,1946,1948,', '3', 'longgangqu', '龙港区', '12', '211403', '210000,211400,211403', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1949', '1946', ',1874,1946,1949,', '3', 'nanpiaoqu', '南票区', '14', '211404', '210000,211400,211404', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1950', '1946', ',1874,1946,1950,', '3', 'suizhongxian', '绥中县', '19', '211421', '210000,211400,211421', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1951', '1946', ',1874,1946,1951,', '3', 'jianchangxian', '建昌县', '10', '211422', '210000,211400,211422', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1952', '1946', ',1874,1946,1952,', '3', 'xingchengshi', '兴城市', '24', '211481', '210000,211400,211481', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1953', '1874', ',1874,1953,', '2', 'jinzhoushi', '锦州市', '10', '210700', '210000,210700', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1954', '1953', ',1874,1953,1954,', '3', 'gutaqu', '古塔区', '7', '210702', '210000,210700,210702', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1955', '1953', ',1874,1953,1955,', '3', 'linghequ', '凌河区', '12', '210703', '210000,210700,210703', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1956', '1953', ',1874,1953,1956,', '3', 'taihequ', '太和区', '20', '210711', '210000,210700,210711', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1957', '1953', ',1874,1953,1957,', '3', 'heishanxian', '黑山县', '8', '210726', '210000,210700,210726', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1958', '1953', ',1874,1953,1958,', '3', 'yixian', '义县', '25', '210727', '210000,210700,210727', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1959', '1953', ',1874,1953,1959,', '3', 'linghaishi', '凌海市', '12', '210781', '210000,210700,210781', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1960', '1953', ',1874,1953,1960,', '3', 'beiningshi', '北宁市', '2', '210782', '210000,210700,210782', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1961', '1874', ',1874,1961,', '2', 'liaoyangshi', '辽阳市', '12', '211000', '210000,211000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1962', '1961', ',1874,1961,1962,', '3', 'baitaqu', '白塔区', '2', '211002', '210000,211000,211002', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1963', '1961', ',1874,1961,1963,', '3', 'wenshengqu', '文圣区', '23', '211003', '210000,211000,211003', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1964', '1961', ',1874,1961,1964,', '3', 'hongweiqu', '宏伟区', '8', '211004', '210000,211000,211004', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1965', '1961', ',1874,1961,1965,', '3', 'gongchanglingqu', '弓长岭区', '7', '211005', '210000,211000,211005', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1966', '1961', ',1874,1961,1966,', '3', 'taizihequ', '太子河区', '20', '211011', '210000,211000,211011', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1967', '1961', ',1874,1961,1967,', '3', 'liaoyangxian', '辽阳县', '12', '211021', '210000,211000,211021', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1968', '1961', ',1874,1961,1968,', '3', 'dengtashi', '灯塔市', '4', '211022', '210000,211000,211022', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1969', '1874', ',1874,1969,', '2', 'panjinshi', '盘锦市', '16', '211100', '210000,211100', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1970', '1969', ',1874,1969,1970,', '3', 'shuangtaiziqu', '双台子区', '19', '211102', '210000,211100,211102', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1971', '1969', ',1874,1969,1971,', '3', 'xinglongtaiqu', '兴隆台区', '24', '211103', '210000,211100,211103', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1972', '1969', ',1874,1969,1972,', '3', 'dawaxian', '大洼县', '4', '211121', '210000,211100,211121', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1973', '1969', ',1874,1969,1973,', '3', 'panshanxian', '盘山县', '16', '211122', '210000,211100,211122', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1974', '1874', ',1874,1974,', '2', 'tielingshi', '铁岭市', '20', '211200', '210000,211200', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1975', '1974', ',1874,1974,1975,', '3', 'yinzhouqu', '银州区', '25', '211202', '210000,211200,211202', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1976', '1974', ',1874,1974,1976,', '3', 'qinghequ', '清河区', '17', '211204', '210000,211200,211204', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1977', '1974', ',1874,1974,1977,', '3', 'tielingxian', '铁岭县', '20', '211221', '210000,211200,211221', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1978', '1974', ',1874,1974,1978,', '3', 'xifengxian', '西丰县', '24', '211223', '210000,211200,211223', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1979', '1974', ',1874,1974,1979,', '3', 'changtuxian', '昌图县', '3', '211224', '210000,211200,211224', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1980', '1974', ',1874,1974,1980,', '3', 'diaobingshanshi', '调兵山市', '4', '211281', '210000,211200,211281', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1981', '1974', ',1874,1974,1981,', '3', 'kaiyuanshi', '开原市', '11', '211222', '210000,211200,211222', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1982', '1874', ',1874,1982,', '2', 'yingkoushi', '营口市', '25', '210800', '210000,210800', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1983', '1982', ',1874,1982,1983,', '3', 'zhanqianqu', '站前区', '26', '210802', '210000,210800,210802', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1984', '1982', ',1874,1982,1984,', '3', 'xishiqu', '西市区', '24', '210803', '210000,210800,210803', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1985', '1982', ',1874,1982,1985,', '3', 'zuoyuquanqu', '鲅鱼圈区', '26', '210804', '210000,210800,210804', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1986', '1982', ',1874,1982,1986,', '3', 'laobianqu', '老边区', '12', '210811', '210000,210800,210811', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1987', '1982', ',1874,1982,1987,', '3', 'gaizhoushi', '盖州市', '7', '210881', '210000,210800,210881', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1988', '1982', ',1874,1982,1988,', '3', 'dashiqiaoshi', '大石桥市', '4', '210882', '210000,210800,210882', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1989', null, ',1989,', '1', 'neimenggu', '内蒙古', '14', '150000', '150000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1990', '1989', ',1989,1990,', '2', 'huhehaoteshi', '呼和浩特市', '8', '150100', '150000,150100', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1991', '1990', ',1989,1990,1991,', '3', 'xinchengqu', '新城区', '24', '150102', '150000,150100,150102', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1992', '1990', ',1989,1990,1992,', '3', 'huiminqu', '回民区', '8', '150103', '150000,150100,150103', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1993', '1990', ',1989,1990,1993,', '3', 'yuquanqu', '玉泉区', '25', '150104', '150000,150100,150104', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1994', '1990', ',1989,1990,1994,', '3', 'saihanqu', '赛罕区', '19', '150105', '150000,150100,150105', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1995', '1990', ',1989,1990,1995,', '3', 'tumotezuoqi', '土默特左旗', '20', '150121', '150000,150100,150121', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1996', '1990', ',1989,1990,1996,', '3', 'tuoketuoxian', '托克托县', '20', '150122', '150000,150100,150122', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1997', '1990', ',1989,1990,1997,', '3', 'helingeerxian', '和林格尔县', '8', '150123', '150000,150100,150123', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1998', '1990', ',1989,1990,1998,', '3', 'qingshuihexian', '清水河县', '17', '150124', '150000,150100,150124', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('1999', '1990', ',1989,1990,1999,', '3', 'wuchuanxian', '武川县', '23', '150125', '150000,150100,150125', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2000', '1989', ',1989,2000,', '2', 'alashanmeng', '阿拉善盟', '1', '152900', '150000,152900', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2001', '2000', ',1989,2000,2001,', '3', 'alashanzuoqi', '阿拉善左旗', '1', '152921', '150000,152900,152921', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2002', '2000', ',1989,2000,2002,', '3', 'alashanyouqi', '阿拉善右旗', '1', '152922', '150000,152900,152922', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2003', '2000', ',1989,2000,2003,', '3', 'ejinaqi', '额济纳旗', '5', '152923', '150000,152900,152923', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2004', '1989', ',1989,2004,', '2', 'bayannaoershi', '巴彦淖尔市', '2', '150800', '150000,150800', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2005', '2004', ',1989,2004,2005,', '3', 'linhequ', '临河区', '12', '150802', '150000,150800,150802', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2006', '2004', ',1989,2004,2006,', '3', 'wuyuanxian', '五原县', '23', '150821', '150000,150800,150821', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2007', '2004', ',1989,2004,2007,', '3', 'zuokouxian', '磴口县', '26', '150822', '150000,150800,150822', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2008', '2004', ',1989,2004,2008,', '3', 'wulateqianqi', '乌拉特前旗', '23', '150823', '150000,150800,150823', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2009', '2004', ',1989,2004,2009,', '3', 'wulatezhongqi', '乌拉特中旗', '23', '150824', '150000,150800,150824', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2010', '2004', ',1989,2004,2010,', '3', 'wulatehouqi', '乌拉特后旗', '23', '150825', '150000,150800,150825', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2011', '2004', ',1989,2004,2011,', '3', 'hangjinhouqi', '杭锦后旗', '8', '150826', '150000,150800,150826', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2012', '1989', ',1989,2012,', '2', 'baotoushi', '包头市', '2', '150200', '150000,150200', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2013', '2012', ',1989,2012,2013,', '3', 'donghequ', '东河区', '4', '150202', '150000,150200,150202', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2014', '2012', ',1989,2012,2014,', '3', 'kundulunqu', '昆都仑区', '11', '150203', '150000,150200,150203', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2015', '2012', ',1989,2012,2015,', '3', 'qingshanqu', '青山区', '17', '150204', '150000,150200,150204', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2016', '2012', ',1989,2012,2016,', '3', 'shiguaiqu', '石拐区', '19', '150205', '150000,150200,150205', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2017', '2012', ',1989,2012,2017,', '3', 'baiyunkuangqu', '白云矿区', '2', '150206', '150000,150200,150206', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2018', '2012', ',1989,2012,2018,', '3', 'jiuyuanqu', '九原区', '10', '150207', '150000,150200,150207', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2019', '2012', ',1989,2012,2019,', '3', 'tumoteyouqi', '土默特右旗', '20', '150221', '150000,150200,150221', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2020', '2012', ',1989,2012,2020,', '3', 'guyangxian', '固阳县', '7', '150222', '150000,150200,150222', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2021', '2012', ',1989,2012,2021,', '3', 'daerhanmaominganlianheqi', '达尔罕茂明安联合旗', '4', '150223', '150000,150200,150223', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2022', '1989', ',1989,2022,', '2', 'chifengshi', '赤峰市', '3', '150400', '150000,150400', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2023', '2022', ',1989,2022,2023,', '3', 'hongshanqu', '红山区', '8', '150402', '150000,150400,150402', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2024', '2022', ',1989,2022,2024,', '3', 'yuanbaoshanqu', '元宝山区', '25', '150403', '150000,150400,150403', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2025', '2022', ',1989,2022,2025,', '3', 'songshanqu', '松山区', '19', '150404', '150000,150400,150404', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2026', '2022', ',1989,2022,2026,', '3', 'alukeerqinqi', '阿鲁科尔沁旗', '1', '150421', '150000,150400,150421', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2027', '2022', ',1989,2022,2027,', '3', 'balinzuoqi', '巴林左旗', '2', '150422', '150000,150400,150422', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2028', '2022', ',1989,2022,2028,', '3', 'balinyouqi', '巴林右旗', '2', '150423', '150000,150400,150423', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2029', '2022', ',1989,2022,2029,', '3', 'linxixian', '林西县', '12', '150424', '150000,150400,150424', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2030', '2022', ',1989,2022,2030,', '3', 'keshiketengqi', '克什克腾旗', '11', '150425', '150000,150400,150425', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2031', '2022', ',1989,2022,2031,', '3', 'wengniuteqi', '翁牛特旗', '23', '150426', '150000,150400,150426', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2032', '2022', ',1989,2022,2032,', '3', 'kalaqinqi', '喀喇沁旗', '11', '150428', '150000,150400,150428', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2033', '2022', ',1989,2022,2033,', '3', 'ningchengxian', '宁城县', '14', '150429', '150000,150400,150429', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2034', '2022', ',1989,2022,2034,', '3', 'aohanqi', '敖汉旗', '1', '150430', '150000,150400,150430', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2035', '1989', ',1989,2035,', '2', 'eerduosishi', '鄂尔多斯市', '5', '150600', '150000,150600', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2036', '2035', ',1989,2035,2036,', '3', 'dongshengqu', '东胜区', '4', '150602', '150000,150600,150602', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2037', '2035', ',1989,2035,2037,', '3', 'dalateqi', '达拉特旗', '4', '150621', '150000,150600,150621', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2038', '2035', ',1989,2035,2038,', '3', 'zhungeerqi', '准格尔旗', '26', '150622', '150000,150600,150622', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2039', '2035', ',1989,2035,2039,', '3', 'etuokeqianqi', '鄂托克前旗', '5', '150623', '150000,150600,150623', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2040', '2035', ',1989,2035,2040,', '3', 'etuokeqi', '鄂托克旗', '5', '150624', '150000,150600,150624', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2041', '2035', ',1989,2035,2041,', '3', 'hangjinqi', '杭锦旗', '8', '150625', '150000,150600,150625', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2042', '2035', ',1989,2035,2042,', '3', 'wushenqi', '乌审旗', '23', '150626', '150000,150600,150626', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2043', '2035', ',1989,2035,2043,', '3', 'yijinhuoluoqi', '伊金霍洛旗', '25', '150627', '150000,150600,150627', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2044', '1989', ',1989,2044,', '2', 'hulunbeiershi', '呼伦贝尔市', '8', '150700', '150000,150700', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2045', '2044', ',1989,2044,2045,', '3', 'hailaerqu', '海拉尔区', '8', '150702', '150000,150700,150702', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2046', '2044', ',1989,2044,2046,', '3', 'arongqi', '阿荣旗', '1', '150721', '150000,150700,150721', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2047', '2044', ',1989,2044,2047,', '3', 'molidawadawoerzuzizhiqi', '莫力达瓦达斡尔族自治旗', '13', '150722', '150000,150700,150722', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2048', '2044', ',1989,2044,2048,', '3', 'elunchunzizhiqi', '鄂伦春自治旗', '5', '150723', '150000,150700,150723', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2049', '2044', ',1989,2044,2049,', '3', 'ewenkezuzizhiqi', '鄂温克族自治旗', '5', '150724', '150000,150700,150724', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2050', '2044', ',1989,2044,2050,', '3', 'chenbaerhuqi', '陈巴尔虎旗', '3', '150725', '150000,150700,150725', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2051', '2044', ',1989,2044,2051,', '3', 'xinbaerhuzuoqi', '新巴尔虎左旗', '24', '150726', '150000,150700,150726', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2052', '2044', ',1989,2044,2052,', '3', 'xinbaerhuyouqi', '新巴尔虎右旗', '24', '150727', '150000,150700,150727', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2053', '2044', ',1989,2044,2053,', '3', 'manzhoulishi', '满洲里市', '13', '150781', '150000,150700,150781', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2054', '2044', ',1989,2044,2054,', '3', 'yakeshishi', '牙克石市', '25', '150782', '150000,150700,150782', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2055', '2044', ',1989,2044,2055,', '3', 'zhalantunshi', '扎兰屯市', '26', '150783', '150000,150700,150783', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2056', '2044', ',1989,2044,2056,', '3', 'eergunashi', '额尔古纳市', '5', '150784', '150000,150700,150784', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2057', '2044', ',1989,2044,2057,', '3', 'genheshi', '根河市', '7', '150785', '150000,150700,150785', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2058', '1989', ',1989,2058,', '2', 'tongliaoshi', '通辽市', '20', '150500', '150000,150500', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2059', '2058', ',1989,2058,2059,', '3', 'keerqinqu', '科尔沁区', '11', '150502', '150000,150500,150502', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2060', '2058', ',1989,2058,2060,', '3', 'keerqinzuoyizhongqi', '科尔沁左翼中旗', '11', '150521', '150000,150500,150521', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2061', '2058', ',1989,2058,2061,', '3', 'keerqinzuoyihouqi', '科尔沁左翼后旗', '11', '150522', '150000,150500,150522', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2062', '2058', ',1989,2058,2062,', '3', 'kailuxian', '开鲁县', '11', '150523', '150000,150500,150523', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2063', '2058', ',1989,2058,2063,', '3', 'kulunqi', '库伦旗', '11', '150524', '150000,150500,150524', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2064', '2058', ',1989,2058,2064,', '3', 'naimanqi', '奈曼旗', '14', '150525', '150000,150500,150525', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2065', '2058', ',1989,2058,2065,', '3', 'zhaluteqi', '扎鲁特旗', '26', '150526', '150000,150500,150526', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2066', '2058', ',1989,2058,2066,', '3', 'huolinguoleshi', '霍林郭勒市', '8', '150581', '150000,150500,150581', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2067', '1989', ',1989,2067,', '2', 'wuhaishi', '乌海市', '23', '150300', '150000,150300', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2068', '2067', ',1989,2067,2068,', '3', 'haibowanqu', '海勃湾区', '8', '150302', '150000,150300,150302', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2069', '2067', ',1989,2067,2069,', '3', 'hainanqu', '海南区', '8', '150303', '150000,150300,150303', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2070', '2067', ',1989,2067,2070,', '3', 'wudaqu', '乌达区', '23', '150304', '150000,150300,150304', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2071', '1989', ',1989,2071,', '2', 'wulanchabushi', '乌兰察布市', '23', '150900', '150000,150900', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2072', '2071', ',1989,2071,2072,', '3', 'jiningqu', '集宁区', '10', '150902', '150000,150900,150902', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2073', '2071', ',1989,2071,2073,', '3', 'zhuozixian', '卓资县', '26', '150921', '150000,150900,150921', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2074', '2071', ',1989,2071,2074,', '3', 'huadexian', '化德县', '8', '150922', '150000,150900,150922', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2075', '2071', ',1989,2071,2075,', '3', 'shangduxian', '商都县', '19', '150923', '150000,150900,150923', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2076', '2071', ',1989,2071,2076,', '3', 'xinghexian', '兴和县', '24', '150924', '150000,150900,150924', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2077', '2071', ',1989,2071,2077,', '3', 'liangchengxian', '凉城县', '12', '150925', '150000,150900,150925', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2078', '2071', ',1989,2071,2078,', '3', 'chahaeryouyiqianqi', '察哈尔右翼前旗', '3', '150926', '150000,150900,150926', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2079', '2071', ',1989,2071,2079,', '3', 'chahaeryouyizhongqi', '察哈尔右翼中旗', '3', '150927', '150000,150900,150927', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2080', '2071', ',1989,2071,2080,', '3', 'chahaeryouyihouqi', '察哈尔右翼后旗', '3', '150928', '150000,150900,150928', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2081', '2071', ',1989,2071,2081,', '3', 'siziwangqi', '四子王旗', '19', '150929', '150000,150900,150929', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2082', '2071', ',1989,2071,2082,', '3', 'fengzhenshi', '丰镇市', '6', '150981', '150000,150900,150981', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2083', '1989', ',1989,2083,', '2', 'xilinguolemeng', '锡林郭勒盟', '24', '152500', '150000,152500', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2084', '2083', ',1989,2083,2084,', '3', 'erlianhaoteshi', '二连浩特市', '5', '152501', '150000,152500,152501', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2085', '2083', ',1989,2083,2085,', '3', 'xilinhaoteshi', '锡林浩特市', '24', '152502', '150000,152500,152502', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2086', '2083', ',1989,2083,2086,', '3', 'abagaqi', '阿巴嘎旗', '1', '152522', '150000,152500,152522', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2087', '2083', ',1989,2083,2087,', '3', 'sunitezuoqi', '苏尼特左旗', '19', '152523', '150000,152500,152523', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2088', '2083', ',1989,2083,2088,', '3', 'suniteyouqi', '苏尼特右旗', '19', '152524', '150000,152500,152524', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2089', '2083', ',1989,2083,2089,', '3', 'dongwuzhumuqinqi', '东乌珠穆沁旗', '4', '152525', '150000,152500,152525', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2090', '2083', ',1989,2083,2090,', '3', 'xiwuzhumuqinqi', '西乌珠穆沁旗', '24', '152526', '150000,152500,152526', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2091', '2083', ',1989,2083,2091,', '3', 'taipusiqi', '太仆寺旗', '20', '152527', '150000,152500,152527', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2092', '2083', ',1989,2083,2092,', '3', 'xianghuangqi', '镶黄旗', '24', '152528', '150000,152500,152528', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2093', '2083', ',1989,2083,2093,', '3', 'zhengxiangbaiqi', '正镶白旗', '26', '152529', '150000,152500,152529', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2094', '2083', ',1989,2083,2094,', '3', 'zhenglanqi', '正蓝旗', '26', '152530', '150000,152500,152530', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2095', '2083', ',1989,2083,2095,', '3', 'duolunxian', '多伦县', '4', '152531', '150000,152500,152531', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2096', '1989', ',1989,2096,', '2', 'xinganmeng', '兴安盟', '24', '152200', '150000,152200', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2097', '2096', ',1989,2096,2097,', '3', 'wulanhaoteshi', '乌兰浩特市', '23', '152201', '150000,152200,152201', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2098', '2096', ',1989,2096,2098,', '3', 'aershanshi', '阿尔山市', '1', '152202', '150000,152200,152202', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2099', '2096', ',1989,2096,2099,', '3', 'keerqinyouyiqianqi', '科尔沁右翼前旗', '11', '152221', '150000,152200,152221', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2100', '2096', ',1989,2096,2100,', '3', 'keerqinyouyizhongqi', '科尔沁右翼中旗', '11', '152222', '150000,152200,152222', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2101', '2096', ',1989,2096,2101,', '3', 'zhazuoteqi', '扎赉特旗', '26', '152223', '150000,152200,152223', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2102', '2096', ',1989,2096,2102,', '3', 'tuquanxian', '突泉县', '20', '152224', '150000,152200,152224', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2103', null, ',2103,', '1', 'ningxia', '宁夏', '14', '640000', '640000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2104', '2103', ',2103,2104,', '2', 'yinchuanshi', '银川市', '25', '640100', '640000,640100', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2105', '2104', ',2103,2104,2105,', '3', 'xingqingqu', '兴庆区', '24', '640104', '640000,640100,640104', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2106', '2104', ',2103,2104,2106,', '3', 'xixiaqu', '西夏区', '24', '640105', '640000,640100,640105', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2107', '2104', ',2103,2104,2107,', '3', 'jinfengqu', '金凤区', '10', '640106', '640000,640100,640106', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2108', '2104', ',2103,2104,2108,', '3', 'yongningxian', '永宁县', '25', '640121', '640000,640100,640121', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2109', '2104', ',2103,2104,2109,', '3', 'helanxian', '贺兰县', '8', '640122', '640000,640100,640122', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2110', '2104', ',2103,2104,2110,', '3', 'lingwushi', '灵武市', '12', '640181', '640000,640100,640181', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2111', '2103', ',2103,2111,', '2', 'guyuanshi', '固原市', '7', '640400', '640000,640400', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2112', '2111', ',2103,2111,2112,', '3', 'yuanzhouqu', '原州区', '25', '640402', '640000,640400,640402', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2113', '2111', ',2103,2111,2113,', '3', 'xijixian', '西吉县', '24', '640422', '640000,640400,640422', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2114', '2111', ',2103,2111,2114,', '3', 'longdexian', '隆德县', '12', '640423', '640000,640400,640423', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2115', '2111', ',2103,2111,2115,', '3', 'zuoyuanxian', '泾源县', '26', '640424', '640000,640400,640424', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2116', '2111', ',2103,2111,2116,', '3', 'pengyangxian', '彭阳县', '16', '640425', '640000,640400,640425', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2117', '2103', ',2103,2117,', '2', 'shizuishanshi', '石嘴山市', '19', '640200', '640000,640200', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2118', '2117', ',2103,2117,2118,', '3', 'dawukouqu', '大武口区', '4', '640202', '640000,640200,640202', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2119', '2117', ',2103,2117,2119,', '3', 'huinongqu', '惠农区', '8', '640205', '640000,640200,640205', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2120', '2117', ',2103,2117,2120,', '3', 'pingluoxian', '平罗县', '16', '640221', '640000,640200,640221', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2121', '2103', ',2103,2121,', '2', 'wuzhongshi', '吴忠市', '23', '640300', '640000,640300', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2122', '2121', ',2103,2121,2122,', '3', 'litongqu', '利通区', '12', '640302', '640000,640300,640302', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2123', '2121', ',2103,2121,2123,', '3', 'yanchixian', '盐池县', '25', '640323', '640000,640300,640323', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2124', '2121', ',2103,2121,2124,', '3', 'tongxinxian', '同心县', '20', '640324', '640000,640300,640324', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2125', '2121', ',2103,2121,2125,', '3', 'qingtongxiashi', '青铜峡市', '17', '640381', '640000,640300,640381', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2126', '2103', ',2103,2126,', '2', 'zhongweishi', '中卫市', '26', '640500', '640000,640500', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2127', '2126', ',2103,2126,2127,', '3', 'shapotouqu', '沙坡头区', '19', '640502', '640000,640500,640502', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2128', '2126', ',2103,2126,2128,', '3', 'zhongningxian', '中宁县', '26', '640521', '640000,640500,640521', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2129', '2126', ',2103,2126,2129,', '3', 'haiyuanxian', '海原县', '8', '640522', '640000,640500,640522', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2130', null, ',2130,', '1', 'qinghai', '青海', '17', '630000', '630000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2131', '2130', ',2130,2131,', '2', 'xiningshi', '西宁市', '24', '630100', '630000,630100', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2132', '2131', ',2130,2131,2132,', '3', 'chengdongqu', '城东区', '3', '630102', '630000,630100,630102', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2133', '2131', ',2130,2131,2133,', '3', 'chengzhongqu', '城中区', '3', '630103', '630000,630100,630103', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2134', '2131', ',2130,2131,2134,', '3', 'chengxiqu', '城西区', '3', '630104', '630000,630100,630104', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2135', '2131', ',2130,2131,2135,', '3', 'chengbeiqu', '城北区', '3', '630105', '630000,630100,630105', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2136', '2131', ',2130,2131,2136,', '3', 'datonghuizutuzuzizhixian', '大通回族土族自治县', '4', '630121', '630000,630100,630121', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2137', '2131', ',2130,2131,2137,', '3', 'zuozhongxian', '湟中县', '26', '630122', '630000,630100,630122', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2138', '2131', ',2130,2131,2138,', '3', 'zuoyuanxian', '湟源县', '26', '630123', '630000,630100,630123', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2139', '2130', ',2130,2139,', '2', 'guoluocangzuzizhizhou', '果洛藏族自治州', '7', '632600', '630000,632600', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2140', '2139', ',2130,2139,2140,', '3', 'maqinxian', '玛沁县', '13', '632621', '630000,632600,632621', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2141', '2139', ',2130,2139,2141,', '3', 'banmaxian', '班玛县', '2', '632622', '630000,632600,632622', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2142', '2139', ',2130,2139,2142,', '3', 'gandexian', '甘德县', '7', '632623', '630000,632600,632623', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2143', '2139', ',2130,2139,2143,', '3', 'darixian', '达日县', '4', '632624', '630000,632600,632624', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2144', '2139', ',2130,2139,2144,', '3', 'jiuzhixian', '久治县', '10', '632625', '630000,632600,632625', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2145', '2139', ',2130,2139,2145,', '3', 'maduoxian', '玛多县', '13', '632626', '630000,632600,632626', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2146', '2130', ',2130,2146,', '2', 'haibeicangzuzizhizhou', '海北藏族自治州', '8', '632200', '630000,632200', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2147', '2146', ',2130,2146,2147,', '3', 'menyuanhuizuzizhixian', '门源回族自治县', '13', '632221', '630000,632200,632221', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2148', '2146', ',2130,2146,2148,', '3', 'qilianxian', '祁连县', '17', '632222', '630000,632200,632222', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2149', '2146', ',2130,2146,2149,', '3', 'haizuoxian', '海晏县', '8', '632223', '630000,632200,632223', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2150', '2146', ',2130,2146,2150,', '3', 'gangchaxian', '刚察县', '7', '632224', '630000,632200,632224', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2151', '2130', ',2130,2151,', '2', 'haidongdiqu', '海东地区', '8', '632100', '630000,632100', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2152', '2151', ',2130,2151,2152,', '3', 'pinganxian', '平安县', '16', '632121', '630000,632100,632121', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2153', '2151', ',2130,2151,2153,', '3', 'minhehuizutuzuzizhixian', '民和回族土族自治县', '13', '632122', '630000,632100,632122', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2154', '2151', ',2130,2151,2154,', '3', 'leduxian', '乐都县', '12', '632123', '630000,632100,632123', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2155', '2151', ',2130,2151,2155,', '3', 'huzhutuzuzizhixian', '互助土族自治县', '8', '632126', '630000,632100,632126', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2156', '2151', ',2130,2151,2156,', '3', 'hualonghuizuzizhixian', '化隆回族自治县', '8', '632127', '630000,632100,632127', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2157', '2151', ',2130,2151,2157,', '3', 'xunhuasalazuzizhixian', '循化撒拉族自治县', '24', '632128', '630000,632100,632128', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2158', '2130', ',2130,2158,', '2', 'hainancangzuzizhizhou', '海南藏族自治州', '8', '632500', '630000,632500', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2159', '2158', ',2130,2158,2159,', '3', 'gonghexian', '共和县', '7', '632521', '630000,632500,632521', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2160', '2158', ',2130,2158,2160,', '3', 'tongdexian', '同德县', '20', '632522', '630000,632500,632522', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2161', '2158', ',2130,2158,2161,', '3', 'guidexian', '贵德县', '7', '632523', '630000,632500,632523', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2162', '2158', ',2130,2158,2162,', '3', 'xinghaixian', '兴海县', '24', '632524', '630000,632500,632524', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2163', '2158', ',2130,2158,2163,', '3', 'guinanxian', '贵南县', '7', '632525', '630000,632500,632525', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2164', '2130', ',2130,2164,', '2', 'haiximengguzucangzuzizhizhou', '海西蒙古族藏族自治州', '8', '632800', '630000,632800', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2165', '2164', ',2130,2164,2165,', '3', 'geermushi', '格尔木市', '7', '632801', '630000,632800,632801', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2166', '2164', ',2130,2164,2166,', '3', 'delinghashi', '德令哈市', '4', '632802', '630000,632800,632802', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2167', '2164', ',2130,2164,2167,', '3', 'wulanxian', '乌兰县', '23', '632821', '630000,632800,632821', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2168', '2164', ',2130,2164,2168,', '3', 'dulanxian', '都兰县', '4', '632822', '630000,632800,632822', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2169', '2164', ',2130,2164,2169,', '3', 'tianjunxian', '天峻县', '20', '632823', '630000,632800,632823', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2170', '2130', ',2130,2170,', '2', 'huangnancangzuzizhizhou', '黄南藏族自治州', '8', '632300', '630000,632300', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2171', '2170', ',2130,2170,2171,', '3', 'tongrenxian', '同仁县', '20', '632321', '630000,632300,632321', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2172', '2170', ',2130,2170,2172,', '3', 'jianzhaxian', '尖扎县', '10', '632322', '630000,632300,632322', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2173', '2170', ',2130,2170,2173,', '3', 'zekuxian', '泽库县', '26', '632323', '630000,632300,632323', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2174', '2170', ',2130,2170,2174,', '3', 'henanmengguzuzizhixian', '河南蒙古族自治县', '8', '632324', '630000,632300,632324', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2175', '2130', ',2130,2175,', '2', 'yushucangzuzizhizhou', '玉树藏族自治州', '25', '632700', '630000,632700', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2176', '2175', ',2130,2175,2176,', '3', 'yushuxian', '玉树县', '25', '632721', '630000,632700,632721', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2177', '2175', ',2130,2175,2177,', '3', 'zaduoxian', '杂多县', '26', '632722', '630000,632700,632722', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2178', '2175', ',2130,2175,2178,', '3', 'chengduoxian', '称多县', '3', '632723', '630000,632700,632723', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2179', '2175', ',2130,2175,2179,', '3', 'zhiduoxian', '治多县', '26', '632724', '630000,632700,632724', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2180', '2175', ',2130,2175,2180,', '3', 'nangqianxian', '囊谦县', '14', '632725', '630000,632700,632725', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2181', '2175', ',2130,2175,2181,', '3', 'qumalaixian', '曲麻莱县', '17', '632726', '630000,632700,632726', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2182', null, ',2182,', '1', 'shandong', '山东', '19', '370000', '370000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2183', '2182', ',2182,2183,', '2', 'jinanshi', '济南市', '10', '370100', '370000,370100', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2184', '2183', ',2182,2183,2184,', '3', 'lixiaqu', '历下区', '12', '370102', '370000,370100,370102', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2185', '2183', ',2182,2183,2185,', '3', 'shizhongqu', '市中区', '19', '370103', '370000,370100,370103', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2186', '2183', ',2182,2183,2186,', '3', 'huaiyinqu', '槐荫区', '8', '370104', '370000,370100,370104', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2187', '2183', ',2182,2183,2187,', '3', 'tianqiaoqu', '天桥区', '20', '370105', '370000,370100,370105', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2188', '2183', ',2182,2183,2188,', '3', 'lichengqu', '历城区', '12', '370112', '370000,370100,370112', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2189', '2183', ',2182,2183,2189,', '3', 'changqingqu', '长清区', '3', '370113', '370000,370100,370113', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2190', '2183', ',2182,2183,2190,', '3', 'pingyinxian', '平阴县', '16', '370124', '370000,370100,370124', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2191', '2183', ',2182,2183,2191,', '3', 'jiyangxian', '济阳县', '10', '370125', '370000,370100,370125', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2192', '2183', ',2182,2183,2192,', '3', 'shanghexian', '商河县', '19', '370126', '370000,370100,370126', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2193', '2183', ',2182,2183,2193,', '3', 'zhangqiushi', '章丘市', '26', '370122', '370000,370100,370122', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2194', '2182', ',2182,2194,', '2', 'binzhoushi', '滨州市', '2', '371600', '370000,371600', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2195', '2194', ',2182,2194,2195,', '3', 'binchengqu', '滨城区', '2', '371602', '370000,371600,371602', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2196', '2194', ',2182,2194,2196,', '3', 'huiminxian', '惠民县', '8', '371621', '370000,371600,371621', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2197', '2194', ',2182,2194,2197,', '3', 'yangxinxian', '阳信县', '25', '371622', '370000,371600,371622', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2198', '2194', ',2182,2194,2198,', '3', 'wuzuoxian', '无棣县', '23', '371623', '370000,371600,371623', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2199', '2194', ',2182,2194,2199,', '3', 'zhanhuaxian', '沾化县', '26', '371624', '370000,371600,371624', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2200', '2194', ',2182,2194,2200,', '3', 'boxingxian', '博兴县', '2', '371625', '370000,371600,371625', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2201', '2194', ',2182,2194,2201,', '3', 'zoupingxian', '邹平县', '26', '371626', '370000,371600,371626', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2202', '2182', ',2182,2202,', '2', 'dezhoushi', '德州市', '4', '371400', '370000,371400', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2203', '2202', ',2182,2202,2203,', '3', 'dechengqu', '德城区', '4', '371402', '370000,371400,371402', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2204', '2202', ',2182,2202,2204,', '3', 'lingxian', '陵县', '12', '371421', '370000,371400,371421', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2205', '2202', ',2182,2202,2205,', '3', 'ningjinxian', '宁津县', '14', '371422', '370000,371400,371422', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2206', '2202', ',2182,2202,2206,', '3', 'qingyunxian', '庆云县', '17', '371423', '370000,371400,371423', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2207', '2202', ',2182,2202,2207,', '3', 'linyixian', '临邑县', '12', '371424', '370000,371400,371424', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2208', '2202', ',2182,2202,2208,', '3', 'qihexian', '齐河县', '17', '371425', '370000,371400,371425', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2209', '2202', ',2182,2202,2209,', '3', 'pingyuanxian', '平原县', '16', '371426', '370000,371400,371426', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2210', '2202', ',2182,2202,2210,', '3', 'xiajinxian', '夏津县', '24', '371427', '370000,371400,371427', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2211', '2202', ',2182,2202,2211,', '3', 'wuchengxian', '武城县', '23', '371428', '370000,371400,371428', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2212', '2202', ',2182,2202,2212,', '3', 'lelingshi', '乐陵市', '12', '371481', '370000,371400,371481', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2213', '2202', ',2182,2202,2213,', '3', 'yuchengshi', '禹城市', '25', '371482', '370000,371400,371482', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2214', '2182', ',2182,2214,', '2', 'dongyingshi', '东营市', '4', '370500', '370000,370500', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2215', '2214', ',2182,2214,2215,', '3', 'dongyingqu', '东营区', '4', '370502', '370000,370500,370502', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2216', '2214', ',2182,2214,2216,', '3', 'hekouqu', '河口区', '8', '370503', '370000,370500,370503', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2217', '2214', ',2182,2214,2217,', '3', 'kenlixian', '垦利县', '11', '370521', '370000,370500,370521', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2218', '2214', ',2182,2214,2218,', '3', 'lijinxian', '利津县', '12', '370522', '370000,370500,370522', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2219', '2214', ',2182,2214,2219,', '3', 'guangraoxian', '广饶县', '7', '370523', '370000,370500,370523', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2220', '2182', ',2182,2220,', '2', 'hezeshi', '菏泽市', '8', '371700', '370000,371700', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2221', '2220', ',2182,2220,2221,', '3', 'mudanqu', '牡丹区', '13', '371702', '370000,371700,371702', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2222', '2220', ',2182,2220,2222,', '3', 'caoxian', '曹县', '3', '371721', '370000,371700,371721', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2223', '2220', ',2182,2220,2223,', '3', 'danxian', '单县', '4', '371722', '370000,371700,371722', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2224', '2220', ',2182,2220,2224,', '3', 'chengwuxian', '成武县', '3', '371723', '370000,371700,371723', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2225', '2220', ',2182,2220,2225,', '3', 'juyexian', '巨野县', '10', '371724', '370000,371700,371724', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2226', '2220', ',2182,2220,2226,', '3', 'zuochengxian', '郓城县', '26', '371725', '370000,371700,371725', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2227', '2220', ',2182,2220,2227,', '3', 'zuochengxian', '鄄城县', '26', '371726', '370000,371700,371726', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2228', '2220', ',2182,2220,2228,', '3', 'dingtaoxian', '定陶县', '4', '371727', '370000,371700,371727', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2229', '2220', ',2182,2220,2229,', '3', 'dongmingxian', '东明县', '4', '371728', '370000,371700,371728', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2230', '2182', ',2182,2230,', '2', 'jiningshi', '济宁市', '10', '370800', '370000,370800', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2231', '2230', ',2182,2230,2231,', '3', 'shizhongqu', '市中区', '19', '370802', '370000,370800,370802', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2232', '2230', ',2182,2230,2232,', '3', 'renchengqu', '任城区', '18', '370811', '370000,370800,370811', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2233', '2230', ',2182,2230,2233,', '3', 'weishanxian', '微山县', '23', '370826', '370000,370800,370826', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2234', '2230', ',2182,2230,2234,', '3', 'yutaixian', '鱼台县', '25', '370827', '370000,370800,370827', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2235', '2230', ',2182,2230,2235,', '3', 'jinxiangxian', '金乡县', '10', '370828', '370000,370800,370828', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2236', '2230', ',2182,2230,2236,', '3', 'jiaxiangxian', '嘉祥县', '10', '370829', '370000,370800,370829', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2237', '2230', ',2182,2230,2237,', '3', 'zuoshangxian', '汶上县', '26', '370830', '370000,370800,370830', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2238', '2230', ',2182,2230,2238,', '3', 'zuoshuixian', '泗水县', '26', '370831', '370000,370800,370831', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2239', '2230', ',2182,2230,2239,', '3', 'liangshanxian', '梁山县', '12', '370832', '370000,370800,370832', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2240', '2230', ',2182,2230,2240,', '3', 'qufushi', '曲阜市', '17', '370823', '370000,370800,370823', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2241', '2230', ',2182,2230,2241,', '3', 'zuozhoushi', '兖州市', '26', '370822', '370000,370800,370822', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2242', '2230', ',2182,2230,2242,', '3', 'zouchengshi', '邹城市', '26', '370883', '370000,370800,370883', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2243', '2182', ',2182,2243,', '2', 'laiwushi', '莱芜市', '12', '371200', '370000,371200', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2244', '2243', ',2182,2243,2244,', '3', 'laichengqu', '莱城区', '12', '371202', '370000,371200,371202', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2245', '2243', ',2182,2243,2245,', '3', 'gangchengqu', '钢城区', '7', '371203', '370000,371200,371203', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2246', '2182', ',2182,2246,', '2', 'liaochengshi', '聊城市', '12', '371500', '370000,371500', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2247', '2246', ',2182,2246,2247,', '3', 'dongchangfuqu', '东昌府区', '4', '371502', '370000,371500,371502', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2248', '2246', ',2182,2246,2248,', '3', 'yangguxian', '阳谷县', '25', '371521', '370000,371500,371521', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2249', '2246', ',2182,2246,2249,', '3', 'zuoxian', '莘县', '26', '371522', '370000,371500,371522', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2250', '2246', ',2182,2246,2250,', '3', 'zuopingxian', '茌平县', '26', '371523', '370000,371500,371523', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2251', '2246', ',2182,2246,2251,', '3', 'dongaxian', '东阿县', '4', '371524', '370000,371500,371524', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2252', '2246', ',2182,2246,2252,', '3', 'guanxian', '冠县', '7', '371525', '370000,371500,371525', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2253', '2246', ',2182,2246,2253,', '3', 'gaotangxian', '高唐县', '7', '371526', '370000,371500,371526', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2254', '2246', ',2182,2246,2254,', '3', 'linqingshi', '临清市', '12', '371581', '370000,371500,371581', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2255', '2182', ',2182,2255,', '2', 'linyishi', '临沂市', '12', '371300', '370000,371300', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2256', '2255', ',2182,2255,2256,', '3', 'lanshanqu', '兰山区', '12', '371302', '370000,371300,371302', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2257', '2255', ',2182,2255,2257,', '3', 'luozhuangqu', '罗庄区', '12', '371311', '370000,371300,371311', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2258', '2255', ',2182,2255,2258,', '3', 'hedongqu', '河东区', '8', '371312', '370000,371300,371312', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2259', '2255', ',2182,2255,2259,', '3', 'yinanxian', '沂南县', '25', '371321', '370000,371300,371321', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2260', '2255', ',2182,2255,2260,', '3', 'zuochengxian', '郯城县', '26', '371322', '370000,371300,371322', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2261', '2255', ',2182,2255,2261,', '3', 'yishuixian', '沂水县', '25', '371323', '370000,371300,371323', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2262', '2255', ',2182,2255,2262,', '3', 'cangshanxian', '苍山县', '3', '371324', '370000,371300,371324', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2263', '2255', ',2182,2255,2263,', '3', 'feixian', '费县', '6', '371325', '370000,371300,371325', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2264', '2255', ',2182,2255,2264,', '3', 'pingyixian', '平邑县', '16', '371326', '370000,371300,371326', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2265', '2255', ',2182,2255,2265,', '3', 'zuonanxian', '莒南县', '26', '371327', '370000,371300,371327', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2266', '2255', ',2182,2255,2266,', '3', 'mengyinxian', '蒙阴县', '13', '371328', '370000,371300,371328', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2267', '2255', ',2182,2255,2267,', '3', 'linzuoxian', '临沭县', '12', '371329', '370000,371300,371329', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2268', '2182', ',2182,2268,', '2', 'qingdaoshi', '青岛市', '17', '370200', '370000,370200', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2269', '2268', ',2182,2268,2269,', '3', 'shinanqu', '市南区', '19', '370202', '370000,370200,370202', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2270', '2268', ',2182,2268,2270,', '3', 'shibeiqu', '市北区', '19', '370203', '370000,370200,370203', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2271', '2268', ',2182,2268,2271,', '3', 'sifangqu', '四方区', '19', '370205', '370000,370200,370205', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2272', '2268', ',2182,2268,2272,', '3', 'huangdaoqu', '黄岛区', '8', '370211', '370000,370200,370211', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2273', '2268', ',2182,2268,2273,', '3', 'zuoshanqu', '崂山区', '26', '370212', '370000,370200,370212', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2274', '2268', ',2182,2268,2274,', '3', 'licangqu', '李沧区', '12', '370208', '370000,370200,370208', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2275', '2268', ',2182,2268,2275,', '3', 'chengyangqu', '城阳区', '3', '370209', '370000,370200,370209', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2276', '2268', ',2182,2268,2276,', '3', 'jiaozhoushi', '胶州市', '10', '370281', '370000,370200,370281', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2277', '2268', ',2182,2268,2277,', '3', 'jimoshi', '即墨市', '10', '370282', '370000,370200,370282', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2278', '2268', ',2182,2268,2278,', '3', 'pingdushi', '平度市', '16', '370283', '370000,370200,370283', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2279', '2268', ',2182,2268,2279,', '3', 'jiaonanshi', '胶南市', '10', '370284', '370000,370200,370284', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2280', '2268', ',2182,2268,2280,', '3', 'laixishi', '莱西市', '12', '370285', '370000,370200,370285', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2281', '2182', ',2182,2281,', '2', 'rizhaoshi', '日照市', '18', '371100', '370000,371100', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2282', '2281', ',2182,2281,2282,', '3', 'donggangqu', '东港区', '4', '371102', '370000,371100,371102', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2283', '2281', ',2182,2281,2283,', '3', 'zuoshanqu', '岚山区', '26', '371103', '370000,371100,371103', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2284', '2281', ',2182,2281,2284,', '3', 'wulianxian', '五莲县', '23', '371121', '370000,371100,371121', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2285', '2281', ',2182,2281,2285,', '3', 'zuoxian', '莒县', '26', '371122', '370000,371100,371122', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2286', '2182', ',2182,2286,', '2', 'taianshi', '泰安市', '20', '370900', '370000,370900', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2287', '2286', ',2182,2286,2287,', '3', 'taishanqu', '泰山区', '20', '370902', '370000,370900,370902', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2288', '2286', ',2182,2286,2288,', '3', 'zuoyuequ', '岱岳区', '26', '370903', '370000,370900,370903', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2289', '2286', ',2182,2286,2289,', '3', 'ningyangxian', '宁阳县', '14', '370921', '370000,370900,370921', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2290', '2286', ',2182,2286,2290,', '3', 'dongpingxian', '东平县', '4', '370923', '370000,370900,370923', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2291', '2286', ',2182,2286,2291,', '3', 'xintaishi', '新泰市', '24', '370982', '370000,370900,370982', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2292', '2286', ',2182,2286,2292,', '3', 'feichengshi', '肥城市', '6', '370922', '370000,370900,370922', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2293', '2182', ',2182,2293,', '2', 'weihaishi', '威海市', '23', '371000', '370000,371000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2294', '2293', ',2182,2293,2294,', '3', 'huancuiqu', '环翠区', '8', '371002', '370000,371000,371002', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2295', '2293', ',2182,2293,2295,', '3', 'wendengqu', '文登区', '23', '371003', '370000,371000,371003', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2296', '2293', ',2182,2293,2296,', '3', 'rongchengshi', '荣成市', '18', '371082', '370000,371000,371082', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2297', '2293', ',2182,2293,2297,', '3', 'rushanshi', '乳山市', '18', '371083', '370000,371000,371083', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2298', '2182', ',2182,2298,', '2', 'weifangshi', '潍坊市', '23', '370700', '370000,370700', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2299', '2298', ',2182,2298,2299,', '3', 'weichengqu', '潍城区', '23', '370702', '370000,370700,370702', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2300', '2298', ',2182,2298,2300,', '3', 'hantingqu', '寒亭区', '8', '370703', '370000,370700,370703', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2301', '2298', ',2182,2298,2301,', '3', 'fangziqu', '坊子区', '6', '370704', '370000,370700,370704', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2302', '2298', ',2182,2298,2302,', '3', 'kuiwenqu', '奎文区', '11', '370705', '370000,370700,370705', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2303', '2298', ',2182,2298,2303,', '3', 'linzuoxian', '临朐县', '12', '370724', '370000,370700,370724', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2304', '2298', ',2182,2298,2304,', '3', 'changlexian', '昌乐县', '3', '370725', '370000,370700,370725', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2305', '2298', ',2182,2298,2305,', '3', 'qingzhoushi', '青州市', '17', '370781', '370000,370700,370781', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2306', '2298', ',2182,2298,2306,', '3', 'zhuchengshi', '诸城市', '26', '370728', '370000,370700,370728', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2307', '2298', ',2182,2298,2307,', '3', 'shouguangshi', '寿光市', '19', '370723', '370000,370700,370723', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2308', '2298', ',2182,2298,2308,', '3', 'anqiushi', '安丘市', '1', '370722', '370000,370700,370722', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2309', '2298', ',2182,2298,2309,', '3', 'gaomishi', '高密市', '7', '370727', '370000,370700,370727', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2310', '2298', ',2182,2298,2310,', '3', 'changyishi', '昌邑市', '3', '370726', '370000,370700,370726', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2311', '2182', ',2182,2311,', '2', 'yantaishi', '烟台市', '25', '370600', '370000,370600', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2312', '2311', ',2182,2311,2312,', '3', 'zhizuoqu', '芝罘区', '26', '370602', '370000,370600,370602', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2313', '2311', ',2182,2311,2313,', '3', 'fushanqu', '福山区', '6', '370611', '370000,370600,370611', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2314', '2311', ',2182,2311,2314,', '3', 'moupingqu', '牟平区', '13', '370612', '370000,370600,370612', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2315', '2311', ',2182,2311,2315,', '3', 'laishanqu', '莱山区', '12', '370613', '370000,370600,370613', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2316', '2311', ',2182,2311,2316,', '3', 'changdaoxian', '长岛县', '3', '370634', '370000,370600,370634', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2317', '2311', ',2182,2311,2317,', '3', 'longkoushi', '龙口市', '12', '370681', '370000,370600,370681', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2318', '2311', ',2182,2311,2318,', '3', 'laiyangshi', '莱阳市', '12', '370627', '370000,370600,370627', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2319', '2311', ',2182,2311,2319,', '3', 'laizhoushi', '莱州市', '12', '370683', '370000,370600,370683', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2320', '2311', ',2182,2311,2320,', '3', 'penglaishi', '蓬莱市', '16', '370622', '370000,370600,370622', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2321', '2311', ',2182,2311,2321,', '3', 'zhaoyuanshi', '招远市', '26', '370624', '370000,370600,370624', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2322', '2311', ',2182,2311,2322,', '3', 'qixiashi', '栖霞市', '17', '370628', '370000,370600,370628', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2323', '2311', ',2182,2311,2323,', '3', 'haiyangshi', '海阳市', '8', '370629', '370000,370600,370629', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2324', '2182', ',2182,2324,', '2', 'zaozhuangshi', '枣庄市', '26', '370400', '370000,370400', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2325', '2324', ',2182,2324,2325,', '3', 'shizhongqu', '市中区', '19', '370402', '370000,370400,370402', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2326', '2324', ',2182,2324,2326,', '3', 'xuechengqu', '薛城区', '24', '370403', '370000,370400,370403', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2327', '2324', ',2182,2324,2327,', '3', 'zuochengqu', '峄城区', '26', '370404', '370000,370400,370404', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2328', '2324', ',2182,2324,2328,', '3', 'taierzhuangqu', '台儿庄区', '20', '370405', '370000,370400,370405', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2329', '2324', ',2182,2324,2329,', '3', 'shantingqu', '山亭区', '19', '370406', '370000,370400,370406', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2330', '2324', ',2182,2324,2330,', '3', 'zuozhoushi', '滕州市', '26', '370481', '370000,370400,370481', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2331', '2182', ',2182,2331,', '2', 'ziboshi', '淄博市', '26', '370300', '370000,370300', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2332', '2331', ',2182,2331,2332,', '3', 'zichuanqu', '淄川区', '26', '370302', '370000,370300,370302', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2333', '2331', ',2182,2331,2333,', '3', 'zhangdianqu', '张店区', '26', '370303', '370000,370300,370303', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2334', '2331', ',2182,2331,2334,', '3', 'boshanqu', '博山区', '2', '370304', '370000,370300,370304', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2335', '2331', ',2182,2331,2335,', '3', 'linziqu', '临淄区', '12', '370305', '370000,370300,370305', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2336', '2331', ',2182,2331,2336,', '3', 'zhoucunqu', '周村区', '26', '370306', '370000,370300,370306', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2337', '2331', ',2182,2331,2337,', '3', 'huantaixian', '桓台县', '8', '370321', '370000,370300,370321', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2338', '2331', ',2182,2331,2338,', '3', 'gaoqingxian', '高青县', '7', '370322', '370000,370300,370322', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2339', '2331', ',2182,2331,2339,', '3', 'yiyuanxian', '沂源县', '25', '370323', '370000,370300,370323', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2340', null, ',2340,', '1', 'shanxi', '山西', '19', '140000', '140000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2341', '2340', ',2340,2341,', '2', 'taiyuanshi', '太原市', '20', '140100', '140000,140100', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2342', '2341', ',2340,2341,2342,', '3', 'xiaodianqu', '小店区', '24', '140105', '140000,140100,140105', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2343', '2341', ',2340,2341,2343,', '3', 'yingzequ', '迎泽区', '25', '140106', '140000,140100,140106', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2344', '2341', ',2340,2341,2344,', '3', 'xinghualingqu', '杏花岭区', '24', '140107', '140000,140100,140107', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2345', '2341', ',2340,2341,2345,', '3', 'jiancaopingqu', '尖草坪区', '10', '140108', '140000,140100,140108', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2346', '2341', ',2340,2341,2346,', '3', 'wanbailinqu', '万柏林区', '23', '140109', '140000,140100,140109', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2347', '2341', ',2340,2341,2347,', '3', 'jinyuanqu', '晋源区', '10', '140110', '140000,140100,140110', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2348', '2341', ',2340,2341,2348,', '3', 'qingxuxian', '清徐县', '17', '140121', '140000,140100,140121', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2349', '2341', ',2340,2341,2349,', '3', 'yangquxian', '阳曲县', '25', '140122', '140000,140100,140122', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2350', '2341', ',2340,2341,2350,', '3', 'loufanxian', '娄烦县', '12', '140123', '140000,140100,140123', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2351', '2341', ',2340,2341,2351,', '3', 'gujiaoshi', '古交市', '7', '140181', '140000,140100,140181', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2352', '2340', ',2340,2352,', '2', 'changzhishi', '长治市', '3', '140400', '140000,140400', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2353', '2352', ',2340,2352,2353,', '3', 'chengqu', '城区', '3', '140402', '140000,140400,140402', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2354', '2352', ',2340,2352,2354,', '3', 'jiaoqu', '郊区', '10', '140411', '140000,140400,140411', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2355', '2352', ',2340,2352,2355,', '3', 'changzhixian', '长治县', '3', '140421', '140000,140400,140421', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2356', '2352', ',2340,2352,2356,', '3', 'xiangyuanxian', '襄垣县', '24', '140423', '140000,140400,140423', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2357', '2352', ',2340,2352,2357,', '3', 'tunliuxian', '屯留县', '20', '140424', '140000,140400,140424', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2358', '2352', ',2340,2352,2358,', '3', 'pingshunxian', '平顺县', '16', '140425', '140000,140400,140425', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2359', '2352', ',2340,2352,2359,', '3', 'lichengxian', '黎城县', '12', '140426', '140000,140400,140426', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2360', '2352', ',2340,2352,2360,', '3', 'huguanxian', '壶关县', '8', '140427', '140000,140400,140427', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2361', '2352', ',2340,2352,2361,', '3', 'changzixian', '长子县', '3', '140428', '140000,140400,140428', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2362', '2352', ',2340,2352,2362,', '3', 'wuxiangxian', '武乡县', '23', '140429', '140000,140400,140429', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2363', '2352', ',2340,2352,2363,', '3', 'qinxian', '沁县', '17', '140430', '140000,140400,140430', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2364', '2352', ',2340,2352,2364,', '3', 'qinyuanxian', '沁源县', '17', '140431', '140000,140400,140431', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2365', '2352', ',2340,2352,2365,', '3', 'luchengshi', '潞城市', '12', '140481', '140000,140400,140481', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2366', '2340', ',2340,2366,', '2', 'datongshi', '大同市', '4', '140200', '140000,140200', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2367', '2366', ',2340,2366,2367,', '3', 'chengqu', '城区', '3', '140202', '140000,140200,140202', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2368', '2366', ',2340,2366,2368,', '3', 'kuangqu', '矿区', '11', '140203', '140000,140200,140203', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2369', '2366', ',2340,2366,2369,', '3', 'nanjiaoqu', '南郊区', '14', '140211', '140000,140200,140211', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2370', '2366', ',2340,2366,2370,', '3', 'xinrongqu', '新荣区', '24', '140212', '140000,140200,140212', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2371', '2366', ',2340,2366,2371,', '3', 'yanggaoxian', '阳高县', '25', '140221', '140000,140200,140221', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2372', '2366', ',2340,2366,2372,', '3', 'tianzhenxian', '天镇县', '20', '140222', '140000,140200,140222', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2373', '2366', ',2340,2366,2373,', '3', 'guanglingxian', '广灵县', '7', '140223', '140000,140200,140223', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2374', '2366', ',2340,2366,2374,', '3', 'lingqiuxian', '灵丘县', '12', '140224', '140000,140200,140224', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2375', '2366', ',2340,2366,2375,', '3', 'hunyuanxian', '浑源县', '8', '140225', '140000,140200,140225', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2376', '2366', ',2340,2366,2376,', '3', 'zuoyunxian', '左云县', '26', '140226', '140000,140200,140226', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2377', '2366', ',2340,2366,2377,', '3', 'datongxian', '大同县', '4', '140227', '140000,140200,140227', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2378', '2340', ',2340,2378,', '2', 'jinchengshi', '晋城市', '10', '140500', '140000,140500', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2379', '2378', ',2340,2378,2379,', '3', 'chengqu', '城区', '3', '140502', '140000,140500,140502', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2380', '2378', ',2340,2378,2380,', '3', 'qinshuixian', '沁水县', '17', '140521', '140000,140500,140521', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2381', '2378', ',2340,2378,2381,', '3', 'yangchengxian', '阳城县', '25', '140522', '140000,140500,140522', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2382', '2378', ',2340,2378,2382,', '3', 'lingchuanxian', '陵川县', '12', '140524', '140000,140500,140524', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2383', '2378', ',2340,2378,2383,', '3', 'zezhouxian', '泽州县', '26', '140525', '140000,140500,140525', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2384', '2378', ',2340,2378,2384,', '3', 'gaopingshi', '高平市', '7', '140581', '140000,140500,140581', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2385', '2340', ',2340,2385,', '2', 'jinzhongshi', '晋中市', '10', '140700', '140000,140700', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2386', '2385', ',2340,2385,2386,', '3', 'yuciqu', '榆次区', '25', '140702', '140000,140700,140702', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2387', '2385', ',2340,2385,2387,', '3', 'yushexian', '榆社县', '25', '140721', '140000,140700,140721', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2388', '2385', ',2340,2385,2388,', '3', 'zuoquanxian', '左权县', '26', '140722', '140000,140700,140722', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2389', '2385', ',2340,2385,2389,', '3', 'heshunxian', '和顺县', '8', '140723', '140000,140700,140723', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2390', '2385', ',2340,2385,2390,', '3', 'xiyangxian', '昔阳县', '24', '140724', '140000,140700,140724', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2391', '2385', ',2340,2385,2391,', '3', 'shouyangxian', '寿阳县', '19', '140725', '140000,140700,140725', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2392', '2385', ',2340,2385,2392,', '3', 'taiguxian', '太谷县', '20', '140726', '140000,140700,140726', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2393', '2385', ',2340,2385,2393,', '3', 'qixian', '祁县', '17', '140727', '140000,140700,140727', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2394', '2385', ',2340,2385,2394,', '3', 'pingyaoxian', '平遥县', '16', '140728', '140000,140700,140728', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2395', '2385', ',2340,2385,2395,', '3', 'lingshixian', '灵石县', '12', '140729', '140000,140700,140729', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2396', '2385', ',2340,2385,2396,', '3', 'jiexiushi', '介休市', '10', '140781', '140000,140700,140781', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2397', '2340', ',2340,2397,', '2', 'linfenshi', '临汾市', '12', '141000', '140000,141000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2398', '2397', ',2340,2397,2398,', '3', 'yaoduqu', '尧都区', '25', '141002', '140000,141000,141002', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2399', '2397', ',2340,2397,2399,', '3', 'quwoxian', '曲沃县', '17', '141021', '140000,141000,141021', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2400', '2397', ',2340,2397,2400,', '3', 'yichengxian', '翼城县', '25', '141022', '140000,141000,141022', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2401', '2397', ',2340,2397,2401,', '3', 'xiangfenxian', '襄汾县', '24', '141023', '140000,141000,141023', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2402', '2397', ',2340,2397,2402,', '3', 'hongdongxian', '洪洞县', '8', '141024', '140000,141000,141024', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2403', '2397', ',2340,2397,2403,', '3', 'guxian', '古县', '7', '141025', '140000,141000,141025', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2404', '2397', ',2340,2397,2404,', '3', 'anzexian', '安泽县', '1', '141026', '140000,141000,141026', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2405', '2397', ',2340,2397,2405,', '3', 'fushanxian', '浮山县', '6', '141027', '140000,141000,141027', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2406', '2397', ',2340,2397,2406,', '3', 'jixian', '吉县', '10', '141028', '140000,141000,141028', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2407', '2397', ',2340,2397,2407,', '3', 'xiangningxian', '乡宁县', '24', '141029', '140000,141000,141029', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2408', '2397', ',2340,2397,2408,', '3', 'daningxian', '大宁县', '4', '141030', '140000,141000,141030', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2409', '2397', ',2340,2397,2409,', '3', 'zuoxian', '隰县', '26', '141031', '140000,141000,141031', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2410', '2397', ',2340,2397,2410,', '3', 'yonghexian', '永和县', '25', '141032', '140000,141000,141032', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2411', '2397', ',2340,2397,2411,', '3', 'puxian', '蒲县', '16', '141033', '140000,141000,141033', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2412', '2397', ',2340,2397,2412,', '3', 'fenxixian', '汾西县', '6', '141034', '140000,141000,141034', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2413', '2397', ',2340,2397,2413,', '3', 'houmashi', '侯马市', '8', '141081', '140000,141000,141081', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2414', '2397', ',2340,2397,2414,', '3', 'huozhoushi', '霍州市', '8', '141082', '140000,141000,141082', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2415', '2340', ',2340,2415,', '2', 'lvliangshi', '吕梁市', '12', '141100', '140000,141100', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2416', '2415', ',2340,2415,2416,', '3', 'lishiqu', '离石区', '12', '141102', '140000,141100,141102', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2417', '2415', ',2340,2415,2417,', '3', 'wenshuixian', '文水县', '23', '141121', '140000,141100,141121', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2418', '2415', ',2340,2415,2418,', '3', 'jiaochengxian', '交城县', '10', '141122', '140000,141100,141122', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2419', '2415', ',2340,2415,2419,', '3', 'xingxian', '兴县', '24', '141123', '140000,141100,141123', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2420', '2415', ',2340,2415,2420,', '3', 'linxian', '临县', '12', '141124', '140000,141100,141124', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2421', '2415', ',2340,2415,2421,', '3', 'liulinxian', '柳林县', '12', '141125', '140000,141100,141125', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2422', '2415', ',2340,2415,2422,', '3', 'shilouxian', '石楼县', '19', '141126', '140000,141100,141126', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2423', '2415', ',2340,2415,2423,', '3', 'zuoxian', '岚县', '26', '141127', '140000,141100,141127', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2424', '2415', ',2340,2415,2424,', '3', 'fangshanxian', '方山县', '6', '141128', '140000,141100,141128', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2425', '2415', ',2340,2415,2425,', '3', 'zhongyangxian', '中阳县', '26', '141129', '140000,141100,141129', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2426', '2415', ',2340,2415,2426,', '3', 'jiaokouxian', '交口县', '10', '141130', '140000,141100,141130', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2427', '2415', ',2340,2415,2427,', '3', 'xiaoyishi', '孝义市', '24', '141181', '140000,141100,141181', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2428', '2415', ',2340,2415,2428,', '3', 'fenyangshi', '汾阳市', '6', '141182', '140000,141100,141182', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2429', '2340', ',2340,2429,', '2', 'shuozhoushi', '朔州市', '19', '140600', '140000,140600', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2430', '2429', ',2340,2429,2430,', '3', 'shuochengqu', '朔城区', '19', '140602', '140000,140600,140602', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2431', '2429', ',2340,2429,2431,', '3', 'pingluqu', '平鲁区', '16', '140603', '140000,140600,140603', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2432', '2429', ',2340,2429,2432,', '3', 'shanyinxian', '山阴县', '19', '140621', '140000,140600,140621', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2433', '2429', ',2340,2429,2433,', '3', 'yingxian', '应县', '25', '140622', '140000,140600,140622', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2434', '2429', ',2340,2429,2434,', '3', 'youyuxian', '右玉县', '25', '140623', '140000,140600,140623', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2435', '2429', ',2340,2429,2435,', '3', 'huairenxian', '怀仁县', '8', '140624', '140000,140600,140624', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2436', '2340', ',2340,2436,', '2', 'xinzhoushi', '忻州市', '24', '140900', '140000,140900', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2437', '2436', ',2340,2436,2437,', '3', 'xinfuqu', '忻府区', '24', '140902', '140000,140900,140902', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2438', '2436', ',2340,2436,2438,', '3', 'dingxiangxian', '定襄县', '4', '140921', '140000,140900,140921', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2439', '2436', ',2340,2436,2439,', '3', 'wutaixian', '五台县', '23', '140922', '140000,140900,140922', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2440', '2436', ',2340,2436,2440,', '3', 'daixian', '代县', '4', '140923', '140000,140900,140923', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2441', '2436', ',2340,2436,2441,', '3', 'fanzhixian', '繁峙县', '6', '140924', '140000,140900,140924', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2442', '2436', ',2340,2436,2442,', '3', 'ningwuxian', '宁武县', '14', '140925', '140000,140900,140925', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2443', '2436', ',2340,2436,2443,', '3', 'jinglexian', '静乐县', '10', '140926', '140000,140900,140926', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2444', '2436', ',2340,2436,2444,', '3', 'shenchixian', '神池县', '19', '140927', '140000,140900,140927', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2445', '2436', ',2340,2436,2445,', '3', 'wuzhaixian', '五寨县', '23', '140928', '140000,140900,140928', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2446', '2436', ',2340,2436,2446,', '3', 'zuozuoxian', '岢岚县', '26', '140929', '140000,140900,140929', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2447', '2436', ',2340,2436,2447,', '3', 'hequxian', '河曲县', '8', '140930', '140000,140900,140930', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2448', '2436', ',2340,2436,2448,', '3', 'baodexian', '保德县', '2', '140931', '140000,140900,140931', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2449', '2436', ',2340,2436,2449,', '3', 'pianguanxian', '偏关县', '16', '140932', '140000,140900,140932', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2450', '2436', ',2340,2436,2450,', '3', 'yuanpingshi', '原平市', '25', '140981', '140000,140900,140981', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2451', '2340', ',2340,2451,', '2', 'yangquanshi', '阳泉市', '25', '140300', '140000,140300', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2452', '2451', ',2340,2451,2452,', '3', 'chengqu', '城区', '3', '140302', '140000,140300,140302', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2453', '2451', ',2340,2451,2453,', '3', 'kuangqu', '矿区', '11', '140303', '140000,140300,140303', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2454', '2451', ',2340,2451,2454,', '3', 'jiaoqu', '郊区', '10', '140311', '140000,140300,140311', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2455', '2451', ',2340,2451,2455,', '3', 'pingdingxian', '平定县', '16', '140321', '140000,140300,140321', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2456', '2451', ',2340,2451,2456,', '3', 'yuxian', '盂县', '25', '140322', '140000,140300,140322', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2457', '2340', ',2340,2457,', '2', 'yunchengshi', '运城市', '25', '140800', '140000,140800', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2458', '2457', ',2340,2457,2458,', '3', 'yanhuqu', '盐湖区', '25', '140802', '140000,140800,140802', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2459', '2457', ',2340,2457,2459,', '3', 'linzuoxian', '临猗县', '12', '140821', '140000,140800,140821', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2460', '2457', ',2340,2457,2460,', '3', 'wanrongxian', '万荣县', '23', '140822', '140000,140800,140822', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2461', '2457', ',2340,2457,2461,', '3', 'wenxixian', '闻喜县', '23', '140823', '140000,140800,140823', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2462', '2457', ',2340,2457,2462,', '3', 'zuoshanxian', '稷山县', '26', '140824', '140000,140800,140824', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2463', '2457', ',2340,2457,2463,', '3', 'xinzuoxian', '新绛县', '24', '140825', '140000,140800,140825', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2464', '2457', ',2340,2457,2464,', '3', 'zuoxian', '绛县', '26', '140826', '140000,140800,140826', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2465', '2457', ',2340,2457,2465,', '3', 'yuanquxian', '垣曲县', '25', '140827', '140000,140800,140827', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2466', '2457', ',2340,2457,2466,', '3', 'xiaxian', '夏县', '24', '140828', '140000,140800,140828', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2467', '2457', ',2340,2457,2467,', '3', 'pingluxian', '平陆县', '16', '140829', '140000,140800,140829', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2468', '2457', ',2340,2457,2468,', '3', 'zuochengxian', '芮城县', '26', '140830', '140000,140800,140830', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2469', '2457', ',2340,2457,2469,', '3', 'yongjishi', '永济市', '25', '140881', '140000,140800,140881', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2470', '2457', ',2340,2457,2470,', '3', 'hejinshi', '河津市', '8', '140882', '140000,140800,140882', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2471', null, ',2471,', '1', 'shanxi', '陕西', '19', '610000', '610000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2472', '2471', ',2471,2472,', '2', 'xianshi', '西安市', '24', '610100', '610000,610100', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2473', '2472', ',2471,2472,2473,', '3', 'xinchengqu', '新城区', '24', '610102', '610000,610100,610102', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2474', '2472', ',2471,2472,2474,', '3', 'beilinqu', '碑林区', '2', '610103', '610000,610100,610103', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2475', '2472', ',2471,2472,2475,', '3', 'lianhuqu', '莲湖区', '12', '610104', '610000,610100,610104', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2476', '2472', ',2471,2472,2476,', '3', 'zuoqiaoqu', '灞桥区', '26', '610111', '610000,610100,610111', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2477', '2472', ',2471,2472,2477,', '3', 'weiyangqu', '未央区', '23', '610112', '610000,610100,610112', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2478', '2472', ',2471,2472,2478,', '3', 'yantaqu', '雁塔区', '25', '610113', '610000,610100,610113', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2479', '2472', ',2471,2472,2479,', '3', 'yanliangqu', '阎良区', '25', '610114', '610000,610100,610114', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2480', '2472', ',2471,2472,2480,', '3', 'linzuoqu', '临潼区', '12', '610115', '610000,610100,610115', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2481', '2472', ',2471,2472,2481,', '3', 'changanqu', '长安区', '3', '610116', '610000,610100,610116', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2482', '2472', ',2471,2472,2482,', '3', 'lantianxian', '蓝田县', '12', '610122', '610000,610100,610122', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2483', '2472', ',2471,2472,2483,', '3', 'zhouzhixian', '周至县', '26', '610124', '610000,610100,610124', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2484', '2472', ',2471,2472,2484,', '3', 'huxian', '户县', '8', '610125', '610000,610100,610125', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2485', '2472', ',2471,2472,2485,', '3', 'gaolingxian', '高陵县', '7', '610126', '610000,610100,610126', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2486', '2471', ',2471,2486,', '2', 'ankangshi', '安康市', '1', '610900', '610000,610900', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2487', '2486', ',2471,2486,2487,', '3', 'hanbinqu', '汉滨区', '8', '610902', '610000,610900,610902', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2488', '2486', ',2471,2486,2488,', '3', 'hanyinxian', '汉阴县', '8', '610921', '610000,610900,610921', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2489', '2486', ',2471,2486,2489,', '3', 'shiquanxian', '石泉县', '19', '610922', '610000,610900,610922', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2490', '2486', ',2471,2486,2490,', '3', 'ningshanxian', '宁陕县', '14', '610923', '610000,610900,610923', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2491', '2486', ',2471,2486,2491,', '3', 'ziyangxian', '紫阳县', '26', '610924', '610000,610900,610924', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2492', '2486', ',2471,2486,2492,', '3', 'zuogaoxian', '岚皋县', '26', '610925', '610000,610900,610925', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2493', '2486', ',2471,2486,2493,', '3', 'pinglixian', '平利县', '16', '610926', '610000,610900,610926', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2494', '2486', ',2471,2486,2494,', '3', 'zhenpingxian', '镇坪县', '26', '610927', '610000,610900,610927', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2495', '2486', ',2471,2486,2495,', '3', 'xunyangxian', '旬阳县', '24', '610928', '610000,610900,610928', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2496', '2486', ',2471,2486,2496,', '3', 'baihexian', '白河县', '2', '610929', '610000,610900,610929', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2497', '2471', ',2471,2497,', '2', 'baojishi', '宝鸡市', '2', '610300', '610000,610300', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2498', '2497', ',2471,2497,2498,', '3', 'weibinqu', '渭滨区', '23', '610302', '610000,610300,610302', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2499', '2497', ',2471,2497,2499,', '3', 'jintaiqu', '金台区', '10', '610303', '610000,610300,610303', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2500', '2497', ',2471,2497,2500,', '3', 'chencangqu', '陈仓区', '3', '610304', '610000,610300,610304', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2501', '2497', ',2471,2497,2501,', '3', 'fengxiangxian', '凤翔县', '6', '610322', '610000,610300,610322', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2502', '2497', ',2471,2497,2502,', '3', 'zuoshanxian', '岐山县', '26', '610323', '610000,610300,610323', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2503', '2497', ',2471,2497,2503,', '3', 'fufengxian', '扶风县', '6', '610324', '610000,610300,610324', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2504', '2497', ',2471,2497,2504,', '3', 'meixian', '眉县', '13', '610326', '610000,610300,610326', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2505', '2497', ',2471,2497,2505,', '3', 'longxian', '陇县', '12', '610327', '610000,610300,610327', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2506', '2497', ',2471,2497,2506,', '3', 'qianyangxian', '千阳县', '17', '610328', '610000,610300,610328', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2507', '2497', ',2471,2497,2507,', '3', 'zuoyouxian', '麟游县', '26', '610329', '610000,610300,610329', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2508', '2497', ',2471,2497,2508,', '3', 'fengxian', '凤县', '6', '610330', '610000,610300,610330', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2509', '2497', ',2471,2497,2509,', '3', 'taibaixian', '太白县', '20', '610331', '610000,610300,610331', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2510', '2471', ',2471,2510,', '2', 'hanzhongshi', '汉中市', '8', '610700', '610000,610700', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2511', '2510', ',2471,2510,2511,', '3', 'hantaiqu', '汉台区', '8', '610702', '610000,610700,610702', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2512', '2510', ',2471,2510,2512,', '3', 'nanzhengxian', '南郑县', '14', '610721', '610000,610700,610721', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2513', '2510', ',2471,2510,2513,', '3', 'chengguxian', '城固县', '3', '610722', '610000,610700,610722', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2514', '2510', ',2471,2510,2514,', '3', 'yangxian', '洋县', '25', '610723', '610000,610700,610723', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2515', '2510', ',2471,2510,2515,', '3', 'xixiangxian', '西乡县', '24', '610724', '610000,610700,610724', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2516', '2510', ',2471,2510,2516,', '3', 'mianxian', '勉县', '13', '610725', '610000,610700,610725', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2517', '2510', ',2471,2510,2517,', '3', 'ningqiangxian', '宁强县', '14', '610726', '610000,610700,610726', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2518', '2510', ',2471,2510,2518,', '3', 'lueyangxian', '略阳县', '12', '610727', '610000,610700,610727', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2519', '2510', ',2471,2510,2519,', '3', 'zhenbaxian', '镇巴县', '26', '610728', '610000,610700,610728', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2520', '2510', ',2471,2510,2520,', '3', 'liubaxian', '留坝县', '12', '610729', '610000,610700,610729', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2521', '2510', ',2471,2510,2521,', '3', 'fopingxian', '佛坪县', '6', '610730', '610000,610700,610730', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2522', '2471', ',2471,2522,', '2', 'shangluoshi', '商洛市', '19', '611000', '610000,611000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2523', '2522', ',2471,2522,2523,', '3', 'shangzhouqu', '商州区', '19', '611002', '610000,611000,611002', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2524', '2522', ',2471,2522,2524,', '3', 'luonanxian', '洛南县', '12', '611021', '610000,611000,611021', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2525', '2522', ',2471,2522,2525,', '3', 'danfengxian', '丹凤县', '4', '611022', '610000,611000,611022', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2526', '2522', ',2471,2522,2526,', '3', 'shangnanxian', '商南县', '19', '611023', '610000,611000,611023', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2527', '2522', ',2471,2522,2527,', '3', 'shanyangxian', '山阳县', '19', '611024', '610000,611000,611024', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2528', '2522', ',2471,2522,2528,', '3', 'zhenanxian', '镇安县', '26', '611025', '610000,611000,611025', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2529', '2522', ',2471,2522,2529,', '3', 'zuoshuixian', '柞水县', '26', '611026', '610000,611000,611026', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2530', '2471', ',2471,2530,', '2', 'tongchuanshi', '铜川市', '20', '610200', '610000,610200', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2531', '2530', ',2471,2530,2531,', '3', 'wangyiqu', '王益区', '23', '610202', '610000,610200,610202', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2532', '2530', ',2471,2530,2532,', '3', 'yintaiqu', '印台区', '25', '610203', '610000,610200,610203', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2533', '2530', ',2471,2530,2533,', '3', 'yaozhouqu', '耀州区', '25', '610204', '610000,610200,610204', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2534', '2530', ',2471,2530,2534,', '3', 'yijunxian', '宜君县', '25', '610222', '610000,610200,610222', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2535', '2471', ',2471,2535,', '2', 'weinanshi', '渭南市', '23', '610500', '610000,610500', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2536', '2535', ',2471,2535,2536,', '3', 'linweiqu', '临渭区', '12', '610502', '610000,610500,610502', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2537', '2535', ',2471,2535,2537,', '3', 'huaxian', '华县', '8', '610521', '610000,610500,610521', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2538', '2535', ',2471,2535,2538,', '3', 'zuoguanxian', '潼关县', '26', '610522', '610000,610500,610522', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2539', '2535', ',2471,2535,2539,', '3', 'dalixian', '大荔县', '4', '610523', '610000,610500,610523', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2540', '2535', ',2471,2535,2540,', '3', 'heyangxian', '合阳县', '8', '610524', '610000,610500,610524', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2541', '2535', ',2471,2535,2541,', '3', 'chengchengxian', '澄城县', '3', '610525', '610000,610500,610525', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2542', '2535', ',2471,2535,2542,', '3', 'puchengxian', '蒲城县', '16', '610526', '610000,610500,610526', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2543', '2535', ',2471,2535,2543,', '3', 'baishuixian', '白水县', '2', '610527', '610000,610500,610527', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2544', '2535', ',2471,2535,2544,', '3', 'fupingxian', '富平县', '6', '610528', '610000,610500,610528', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2545', '2535', ',2471,2535,2545,', '3', 'hanchengshi', '韩城市', '8', '610581', '610000,610500,610581', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2546', '2535', ',2471,2535,2546,', '3', 'huayinshi', '华阴市', '8', '610582', '610000,610500,610582', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2547', '2471', ',2471,2547,', '2', 'xianyangshi', '咸阳市', '24', '610400', '610000,610400', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2548', '2547', ',2471,2547,2548,', '3', 'qinduqu', '秦都区', '17', '610402', '610000,610400,610402', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2549', '2547', ',2471,2547,2549,', '3', 'yanglingqu', '杨凌区', '25', '610403', '610000,610400,610403', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2550', '2547', ',2471,2547,2550,', '3', 'weichengqu', '渭城区', '23', '610404', '610000,610400,610404', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2551', '2547', ',2471,2547,2551,', '3', 'sanyuanxian', '三原县', '19', '610422', '610000,610400,610422', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2552', '2547', ',2471,2547,2552,', '3', 'zuoyangxian', '泾阳县', '26', '610423', '610000,610400,610423', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2553', '2547', ',2471,2547,2553,', '3', 'qianxian', '乾县', '17', '610424', '610000,610400,610424', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2554', '2547', ',2471,2547,2554,', '3', 'liquanxian', '礼泉县', '12', '610425', '610000,610400,610425', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2555', '2547', ',2471,2547,2555,', '3', 'yongshouxian', '永寿县', '25', '610426', '610000,610400,610426', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2556', '2547', ',2471,2547,2556,', '3', 'binxian', '彬县', '2', '610427', '610000,610400,610427', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2557', '2547', ',2471,2547,2557,', '3', 'changwuxian', '长武县', '3', '610428', '610000,610400,610428', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2558', '2547', ',2471,2547,2558,', '3', 'xunyixian', '旬邑县', '24', '610429', '610000,610400,610429', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2559', '2547', ',2471,2547,2559,', '3', 'chunhuaxian', '淳化县', '3', '610430', '610000,610400,610430', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2560', '2547', ',2471,2547,2560,', '3', 'wugongxian', '武功县', '23', '610431', '610000,610400,610431', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2561', '2547', ',2471,2547,2561,', '3', 'xingpingshi', '兴平市', '24', '610421', '610000,610400,610421', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2562', '2471', ',2471,2562,', '2', 'yananshi', '延安市', '25', '610600', '610000,610600', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2563', '2562', ',2471,2562,2563,', '3', 'baotaqu', '宝塔区', '2', '610602', '610000,610600,610602', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2564', '2562', ',2471,2562,2564,', '3', 'yanchangxian', '延长县', '25', '610621', '610000,610600,610621', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2565', '2562', ',2471,2562,2565,', '3', 'yanchuanxian', '延川县', '25', '610622', '610000,610600,610622', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2566', '2562', ',2471,2562,2566,', '3', 'zichangxian', '子长县', '26', '610623', '610000,610600,610623', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2567', '2562', ',2471,2562,2567,', '3', 'ansaixian', '安塞县', '1', '610624', '610000,610600,610624', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2568', '2562', ',2471,2562,2568,', '3', 'zhidanxian', '志丹县', '26', '610625', '610000,610600,610625', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2569', '2562', ',2471,2562,2569,', '3', 'wuqixian', '吴旗县', '23', '610626', '610000,610600,610626', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2570', '2562', ',2471,2562,2570,', '3', 'ganquanxian', '甘泉县', '7', '610627', '610000,610600,610627', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2571', '2562', ',2471,2562,2571,', '3', 'fuxian', '富县', '6', '610628', '610000,610600,610628', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2572', '2562', ',2471,2562,2572,', '3', 'luochuanxian', '洛川县', '12', '610629', '610000,610600,610629', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2573', '2562', ',2471,2562,2573,', '3', 'yichuanxian', '宜川县', '25', '610630', '610000,610600,610630', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2574', '2562', ',2471,2562,2574,', '3', 'huanglongxian', '黄龙县', '8', '610631', '610000,610600,610631', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2575', '2562', ',2471,2562,2575,', '3', 'huanglingxian', '黄陵县', '8', '610632', '610000,610600,610632', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2576', '2471', ',2471,2576,', '2', 'yulinshi', '榆林市', '25', '610800', '610000,610800', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2577', '2576', ',2471,2576,2577,', '3', 'yuyangqu', '榆阳区', '25', '610802', '610000,610800,610802', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2578', '2576', ',2471,2576,2578,', '3', 'shenmuxian', '神木县', '19', '610821', '610000,610800,610821', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2579', '2576', ',2471,2576,2579,', '3', 'fuguxian', '府谷县', '6', '610822', '610000,610800,610822', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2580', '2576', ',2471,2576,2580,', '3', 'hengshanxian', '横山县', '8', '610823', '610000,610800,610823', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2581', '2576', ',2471,2576,2581,', '3', 'jingbianxian', '靖边县', '10', '610824', '610000,610800,610824', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2582', '2576', ',2471,2576,2582,', '3', 'dingbianxian', '定边县', '4', '610825', '610000,610800,610825', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2583', '2576', ',2471,2576,2583,', '3', 'suidexian', '绥德县', '19', '610826', '610000,610800,610826', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2584', '2576', ',2471,2576,2584,', '3', 'mizhixian', '米脂县', '13', '610827', '610000,610800,610827', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2585', '2576', ',2471,2576,2585,', '3', 'jiaxian', '佳县', '10', '610828', '610000,610800,610828', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2586', '2576', ',2471,2576,2586,', '3', 'wubaoxian', '吴堡县', '23', '610829', '610000,610800,610829', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2587', '2576', ',2471,2576,2587,', '3', 'qingjianxian', '清涧县', '17', '610830', '610000,610800,610830', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2588', '2576', ',2471,2576,2588,', '3', 'zizhouxian', '子洲县', '26', '610831', '610000,610800,610831', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2589', null, ',2589,', '1', 'sichuan', '四川', '19', '510000', '510000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2590', '2589', ',2589,2590,', '2', 'chengdushi', '成都市', '3', '510100', '510000,510100', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2591', '2590', ',2589,2590,2591,', '3', 'jinjiangqu', '锦江区', '10', '510104', '510000,510100,510104', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2592', '2590', ',2589,2590,2592,', '3', 'qingyangqu', '青羊区', '17', '510105', '510000,510100,510105', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2593', '2590', ',2589,2590,2593,', '3', 'jinniuqu', '金牛区', '10', '510106', '510000,510100,510106', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2594', '2590', ',2589,2590,2594,', '3', 'wuhouqu', '武侯区', '23', '510107', '510000,510100,510107', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2595', '2590', ',2589,2590,2595,', '3', 'chenghuaqu', '成华区', '3', '510108', '510000,510100,510108', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2596', '2590', ',2589,2590,2596,', '3', 'longquanzuoqu', '龙泉驿区', '12', '510112', '510000,510100,510112', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2597', '2590', ',2589,2590,2597,', '3', 'qingbaijiangqu', '青白江区', '17', '510113', '510000,510100,510113', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2598', '2590', ',2589,2590,2598,', '3', 'xinduqu', '新都区', '24', '510114', '510000,510100,510114', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2599', '2590', ',2589,2590,2599,', '3', 'wenjiangqu', '温江区', '23', '510115', '510000,510100,510115', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2600', '2590', ',2589,2590,2600,', '3', 'jintangxian', '金堂县', '10', '510121', '510000,510100,510121', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2601', '2590', ',2589,2590,2601,', '3', 'shuangliuxian', '双流县', '19', '510122', '510000,510100,510122', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2602', '2590', ',2589,2590,2602,', '3', 'zuoxian', '郫县', '26', '510124', '510000,510100,510124', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2603', '2590', ',2589,2590,2603,', '3', 'dayixian', '大邑县', '4', '510129', '510000,510100,510129', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2604', '2590', ',2589,2590,2604,', '3', 'pujiangxian', '蒲江县', '16', '510131', '510000,510100,510131', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2605', '2590', ',2589,2590,2605,', '3', 'xinjinxian', '新津县', '24', '510132', '510000,510100,510132', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2606', '2590', ',2589,2590,2606,', '3', 'dujiangyanshi', '都江堰市', '4', '510181', '510000,510100,510181', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2607', '2590', ',2589,2590,2607,', '3', 'pengzhoushi', '彭州市', '16', '510182', '510000,510100,510182', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2608', '2590', ',2589,2590,2608,', '3', 'zuozuoshi', '邛崃市', '26', '510130', '510000,510100,510130', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2609', '2590', ',2589,2590,2609,', '3', 'chongzhoushi', '崇州市', '3', '510184', '510000,510100,510184', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2610', '2589', ',2589,2610,', '2', 'abacangzuqiangzuzizhizhou', '阿坝藏族羌族自治州', '1', '513200', '510000,513200', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2611', '2610', ',2589,2610,2611,', '3', 'zuochuanxian', '汶川县', '26', '513221', '510000,513200,513221', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2612', '2610', ',2589,2610,2612,', '3', 'lixian', '理县', '12', '513222', '510000,513200,513222', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2613', '2610', ',2589,2610,2613,', '3', 'maoxian', '茂县', '13', '513223', '510000,513200,513223', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2614', '2610', ',2589,2610,2614,', '3', 'songpanxian', '松潘县', '19', '513224', '510000,513200,513224', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2615', '2610', ',2589,2610,2615,', '3', 'jiuzhaigouxian', '九寨沟县', '10', '513225', '510000,513200,513225', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2616', '2610', ',2589,2610,2616,', '3', 'jinchuanxian', '金川县', '10', '513226', '510000,513200,513226', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2617', '2610', ',2589,2610,2617,', '3', 'xiaojinxian', '小金县', '24', '513227', '510000,513200,513227', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2618', '2610', ',2589,2610,2618,', '3', 'heishuixian', '黑水县', '8', '513228', '510000,513200,513228', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2619', '2610', ',2589,2610,2619,', '3', 'maerkangxian', '马尔康县', '13', '513229', '510000,513200,513229', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2620', '2610', ',2589,2610,2620,', '3', 'rangtangxian', '壤塘县', '18', '513230', '510000,513200,513230', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2621', '2610', ',2589,2610,2621,', '3', 'abaxian', '阿坝县', '1', '513231', '510000,513200,513231', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2622', '2610', ',2589,2610,2622,', '3', 'ruoergaixian', '若尔盖县', '18', '513232', '510000,513200,513232', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2623', '2610', ',2589,2610,2623,', '3', 'hongyuanxian', '红原县', '8', '513233', '510000,513200,513233', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2624', '2589', ',2589,2624,', '2', 'bazhongshi', '巴中市', '2', '511900', '510000,511900', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2625', '2624', ',2589,2624,2625,', '3', 'bazhouqu', '巴州区', '2', '511902', '510000,511900,511902', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2626', '2624', ',2589,2624,2626,', '3', 'tongjiangxian', '通江县', '20', '511921', '510000,511900,511921', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2627', '2624', ',2589,2624,2627,', '3', 'nanjiangxian', '南江县', '14', '511922', '510000,511900,511922', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2628', '2624', ',2589,2624,2628,', '3', 'pingchangxian', '平昌县', '16', '511923', '510000,511900,511923', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2629', '2589', ',2589,2629,', '2', 'dazhoushi', '达州市', '4', '511700', '510000,511700', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2630', '2629', ',2589,2629,2630,', '3', 'tongchuanqu', '通川区', '20', '511702', '510000,511700,511702', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2631', '2629', ',2589,2629,2631,', '3', 'daxian', '达县', '4', '511721', '510000,511700,511721', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2632', '2629', ',2589,2629,2632,', '3', 'xuanhanxian', '宣汉县', '24', '511722', '510000,511700,511722', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2633', '2629', ',2589,2629,2633,', '3', 'kaijiangxian', '开江县', '11', '511723', '510000,511700,511723', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2634', '2629', ',2589,2629,2634,', '3', 'dazhuxian', '大竹县', '4', '511724', '510000,511700,511724', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2635', '2629', ',2589,2629,2635,', '3', 'quxian', '渠县', '17', '511725', '510000,511700,511725', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2636', '2629', ',2589,2629,2636,', '3', 'wanyuanshi', '万源市', '23', '511781', '510000,511700,511781', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2637', '2589', ',2589,2637,', '2', 'deyangshi', '德阳市', '4', '510600', '510000,510600', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2638', '2637', ',2589,2637,2638,', '3', 'zuoyangqu', '旌阳区', '26', '510603', '510000,510600,510603', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2639', '2637', ',2589,2637,2639,', '3', 'zhongjiangxian', '中江县', '26', '510623', '510000,510600,510623', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2640', '2637', ',2589,2637,2640,', '3', 'luojiangxian', '罗江县', '12', '510626', '510000,510600,510626', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2641', '2637', ',2589,2637,2641,', '3', 'guanghanshi', '广汉市', '7', '510624', '510000,510600,510624', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2642', '2637', ',2589,2637,2642,', '3', 'shizuoshi', '什邡市', '19', '510625', '510000,510600,510625', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2643', '2637', ',2589,2637,2643,', '3', 'mianzhushi', '绵竹市', '13', '510622', '510000,510600,510622', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2644', '2589', ',2589,2644,', '2', 'ganzicangzuzizhizhou', '甘孜藏族自治州', '7', '513300', '510000,513300', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2645', '2644', ',2589,2644,2645,', '3', 'kangdingxian', '康定县', '11', '513321', '510000,513300,513321', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2646', '2644', ',2589,2644,2646,', '3', 'zuodingxian', '泸定县', '26', '513322', '510000,513300,513322', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2647', '2644', ',2589,2644,2647,', '3', 'danbaxian', '丹巴县', '4', '513323', '510000,513300,513323', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2648', '2644', ',2589,2644,2648,', '3', 'jiulongxian', '九龙县', '10', '513324', '510000,513300,513324', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2649', '2644', ',2589,2644,2649,', '3', 'yajiangxian', '雅江县', '25', '513325', '510000,513300,513325', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2650', '2644', ',2589,2644,2650,', '3', 'daozuoxian', '道孚县', '4', '513326', '510000,513300,513326', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2651', '2644', ',2589,2644,2651,', '3', 'luhuoxian', '炉霍县', '12', '513327', '510000,513300,513327', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2652', '2644', ',2589,2644,2652,', '3', 'ganzixian', '甘孜县', '7', '513328', '510000,513300,513328', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2653', '2644', ',2589,2644,2653,', '3', 'xinlongxian', '新龙县', '24', '513329', '510000,513300,513329', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2654', '2644', ',2589,2644,2654,', '3', 'degexian', '德格县', '4', '513330', '510000,513300,513330', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2655', '2644', ',2589,2644,2655,', '3', 'baiyuxian', '白玉县', '2', '513331', '510000,513300,513331', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2656', '2644', ',2589,2644,2656,', '3', 'shiquxian', '石渠县', '19', '513332', '510000,513300,513332', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2657', '2644', ',2589,2644,2657,', '3', 'sedaxian', '色达县', '19', '513333', '510000,513300,513333', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2658', '2644', ',2589,2644,2658,', '3', 'litangxian', '理塘县', '12', '513334', '510000,513300,513334', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2659', '2644', ',2589,2644,2659,', '3', 'batangxian', '巴塘县', '2', '513335', '510000,513300,513335', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2660', '2644', ',2589,2644,2660,', '3', 'xiangchengxian', '乡城县', '24', '513336', '510000,513300,513336', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2661', '2644', ',2589,2644,2661,', '3', 'daochengxian', '稻城县', '4', '513337', '510000,513300,513337', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2662', '2644', ',2589,2644,2662,', '3', 'derongxian', '得荣县', '4', '513338', '510000,513300,513338', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2663', '2589', ',2589,2663,', '2', 'guanganshi', '广安市', '7', '511600', '510000,511600', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2664', '2663', ',2589,2663,2664,', '3', 'guanganqu', '广安区', '7', '511602', '510000,511600,511602', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2665', '2663', ',2589,2663,2665,', '3', 'yuechixian', '岳池县', '25', '511621', '510000,511600,511621', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2666', '2663', ',2589,2663,2666,', '3', 'wushengxian', '武胜县', '23', '511622', '510000,511600,511622', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2667', '2663', ',2589,2663,2667,', '3', 'linshuixian', '邻水县', '12', '511623', '510000,511600,511623', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2668', '2663', ',2589,2663,2668,', '3', 'huayingshi', '华莹市', '8', '511681', '510000,511600,511681', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2669', '2589', ',2589,2669,', '2', 'guangyuanshi', '广元市', '7', '510800', '510000,510800', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2670', '2669', ',2589,2669,2670,', '3', 'shizhongqu', '市中区', '19', '510802', '510000,510800,510802', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2671', '2669', ',2589,2669,2671,', '3', 'yuanbaqu', '元坝区', '25', '510811', '510000,510800,510811', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2672', '2669', ',2589,2669,2672,', '3', 'chaotianqu', '朝天区', '3', '510812', '510000,510800,510812', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2673', '2669', ',2589,2669,2673,', '3', 'wangcangxian', '旺苍县', '23', '510821', '510000,510800,510821', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2674', '2669', ',2589,2669,2674,', '3', 'qingchuanxian', '青川县', '17', '510822', '510000,510800,510822', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2675', '2669', ',2589,2669,2675,', '3', 'jiangexian', '剑阁县', '10', '510823', '510000,510800,510823', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2676', '2669', ',2589,2669,2676,', '3', 'cangxixian', '苍溪县', '3', '510824', '510000,510800,510824', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2677', '2589', ',2589,2677,', '2', 'leshanshi', '乐山市', '12', '511100', '510000,511100', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2678', '2677', ',2589,2677,2678,', '3', 'shizhongqu', '市中区', '19', '511102', '510000,511100,511102', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2679', '2677', ',2589,2677,2679,', '3', 'shawanqu', '沙湾区', '19', '511111', '510000,511100,511111', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2680', '2677', ',2589,2677,2680,', '3', 'wutongqiaoqu', '五通桥区', '23', '511112', '510000,511100,511112', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2681', '2677', ',2589,2677,2681,', '3', 'jinkouhequ', '金口河区', '10', '511113', '510000,511100,511113', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2682', '2677', ',2589,2677,2682,', '3', 'zuoweixian', '犍为县', '26', '511123', '510000,511100,511123', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2683', '2677', ',2589,2677,2683,', '3', 'jingyanxian', '井研县', '10', '511124', '510000,511100,511124', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2684', '2677', ',2589,2677,2684,', '3', 'jiajiangxian', '夹江县', '10', '511126', '510000,511100,511126', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2685', '2677', ',2589,2677,2685,', '3', 'zuochuanxian', '沐川县', '26', '511129', '510000,511100,511129', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2686', '2677', ',2589,2677,2686,', '3', 'ebianyizuzizhixian', '峨边彝族自治县', '5', '511132', '510000,511100,511132', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2687', '2677', ',2589,2677,2687,', '3', 'mabianyizuzizhixian', '马边彝族自治县', '13', '511133', '510000,511100,511133', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2688', '2677', ',2589,2677,2688,', '3', 'emeishanshi', '峨眉山市', '5', '511125', '510000,511100,511125', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2689', '2589', ',2589,2689,', '2', 'liangshanyizuzizhizhou', '凉山彝族自治州', '12', '513400', '510000,513400', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2690', '2689', ',2589,2689,2690,', '3', 'xichangshi', '西昌市', '24', '513401', '510000,513400,513401', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2691', '2689', ',2589,2689,2691,', '3', 'mulicangzuzizhixian', '木里藏族自治县', '13', '513422', '510000,513400,513422', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2692', '2689', ',2589,2689,2692,', '3', 'yanyuanxian', '盐源县', '25', '513423', '510000,513400,513423', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2693', '2689', ',2589,2689,2693,', '3', 'dechangxian', '德昌县', '4', '513424', '510000,513400,513424', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2694', '2689', ',2589,2689,2694,', '3', 'huilixian', '会理县', '8', '513425', '510000,513400,513425', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2695', '2689', ',2589,2689,2695,', '3', 'huidongxian', '会东县', '8', '513426', '510000,513400,513426', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2696', '2689', ',2589,2689,2696,', '3', 'ningnanxian', '宁南县', '14', '513427', '510000,513400,513427', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2697', '2689', ',2589,2689,2697,', '3', 'pugexian', '普格县', '16', '513428', '510000,513400,513428', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2698', '2689', ',2589,2689,2698,', '3', 'butuoxian', '布拖县', '2', '513429', '510000,513400,513429', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2699', '2689', ',2589,2689,2699,', '3', 'jinyangxian', '金阳县', '10', '513430', '510000,513400,513430', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2700', '2689', ',2589,2689,2700,', '3', 'zhaojuexian', '昭觉县', '26', '513431', '510000,513400,513431', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2701', '2689', ',2589,2689,2701,', '3', 'xidexian', '喜德县', '24', '513432', '510000,513400,513432', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2702', '2689', ',2589,2689,2702,', '3', 'mianningxian', '冕宁县', '13', '513433', '510000,513400,513433', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2703', '2689', ',2589,2689,2703,', '3', 'yuexixian', '越西县', '25', '513434', '510000,513400,513434', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2704', '2689', ',2589,2689,2704,', '3', 'ganluoxian', '甘洛县', '7', '513435', '510000,513400,513435', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2705', '2689', ',2589,2689,2705,', '3', 'meiguxian', '美姑县', '13', '513436', '510000,513400,513436', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2706', '2689', ',2589,2689,2706,', '3', 'leiboxian', '雷波县', '12', '513437', '510000,513400,513437', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2707', '2589', ',2589,2707,', '2', 'zuozhoushi', '泸州市', '26', '510500', '510000,510500', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2708', '2707', ',2589,2707,2708,', '3', 'jiangyangqu', '江阳区', '10', '510502', '510000,510500,510502', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2709', '2707', ',2589,2707,2709,', '3', 'naxiqu', '纳溪区', '14', '510503', '510000,510500,510503', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2710', '2707', ',2589,2707,2710,', '3', 'longmatanqu', '龙马潭区', '12', '510504', '510000,510500,510504', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2711', '2707', ',2589,2707,2711,', '3', 'zuoxian', '泸县', '26', '510521', '510000,510500,510521', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2712', '2707', ',2589,2707,2712,', '3', 'hejiangxian', '合江县', '8', '510522', '510000,510500,510522', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2713', '2707', ',2589,2707,2713,', '3', 'xuyongxian', '叙永县', '24', '510524', '510000,510500,510524', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2714', '2707', ',2589,2707,2714,', '3', 'guzuoxian', '古蔺县', '7', '510525', '510000,510500,510525', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2715', '2589', ',2589,2715,', '2', 'meishanshi', '眉山市', '13', '511400', '510000,511400', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2716', '2715', ',2589,2715,2716,', '3', 'dongpoqu', '东坡区', '4', '511402', '510000,511400,511402', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2717', '2715', ',2589,2715,2717,', '3', 'renshouxian', '仁寿县', '18', '511121', '510000,511122,511121', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2718', '2715', ',2589,2715,2718,', '3', 'pengshanxian', '彭山县', '16', '511422', '510000,511400,511422', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2719', '2715', ',2589,2715,2719,', '3', 'hongyaxian', '洪雅县', '8', '511127', '510000,511122,511127', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2720', '2715', ',2589,2715,2720,', '3', 'danlengxian', '丹棱县', '4', '511131', '510000,511122,511131', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2721', '2715', ',2589,2715,2721,', '3', 'qingshenxian', '青神县', '17', '511130', '510000,511122,511130', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2722', '2589', ',2589,2722,', '2', 'mianyangshi', '绵阳市', '13', '510700', '510000,510700', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2723', '2722', ',2589,2722,2723,', '3', 'fuchengqu', '涪城区', '6', '510703', '510000,510700,510703', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2724', '2722', ',2589,2722,2724,', '3', 'youxianqu', '游仙区', '25', '510704', '510000,510700,510704', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2725', '2722', ',2589,2722,2725,', '3', 'santaixian', '三台县', '19', '510722', '510000,510700,510722', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2726', '2722', ',2589,2722,2726,', '3', 'yantingxian', '盐亭县', '25', '510723', '510000,510700,510723', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2727', '2722', ',2589,2722,2727,', '3', 'anxian', '安县', '1', '510724', '510000,510700,510724', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2728', '2722', ',2589,2722,2728,', '3', 'zuozuoxian', '梓潼县', '26', '510725', '510000,510700,510725', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2729', '2722', ',2589,2722,2729,', '3', 'beichuanqiangzuzizhixian', '北川羌族自治县', '2', '510726', '510000,510700,510726', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2730', '2722', ',2589,2722,2730,', '3', 'pingwuxian', '平武县', '16', '510727', '510000,510700,510727', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2731', '2722', ',2589,2722,2731,', '3', 'jiangyoushi', '江油市', '10', '510721', '510000,510700,510721', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2732', '2589', ',2589,2732,', '2', 'neijiangshi', '内江市', '14', '511000', '510000,511000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2733', '2732', ',2589,2732,2733,', '3', 'shizhongqu', '市中区', '19', '511002', '510000,511000,511002', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2734', '2732', ',2589,2732,2734,', '3', 'dongxingqu', '东兴区', '4', '511011', '510000,511000,511011', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2735', '2732', ',2589,2732,2735,', '3', 'weiyuanxian', '威远县', '23', '511024', '510000,511000,511024', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2736', '2732', ',2589,2732,2736,', '3', 'zizhongxian', '资中县', '26', '511025', '510000,511000,511025', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2737', '2732', ',2589,2732,2737,', '3', 'longchangxian', '隆昌县', '12', '511028', '510000,511000,511028', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2738', '2589', ',2589,2738,', '2', 'nanchongshi', '南充市', '14', '511300', '510000,511300', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2739', '2738', ',2589,2738,2739,', '3', 'shunqingqu', '顺庆区', '19', '511302', '510000,511300,511302', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2740', '2738', ',2589,2738,2740,', '3', 'gaopingqu', '高坪区', '7', '511303', '510000,511300,511303', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2741', '2738', ',2589,2738,2741,', '3', 'jialingqu', '嘉陵区', '10', '511304', '510000,511300,511304', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2742', '2738', ',2589,2738,2742,', '3', 'nanbuxian', '南部县', '14', '511321', '510000,511300,511321', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2743', '2738', ',2589,2738,2743,', '3', 'yingshanxian', '营山县', '25', '511322', '510000,511300,511322', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2744', '2738', ',2589,2738,2744,', '3', 'penganxian', '蓬安县', '16', '511323', '510000,511300,511323', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2745', '2738', ',2589,2738,2745,', '3', 'yilongxian', '仪陇县', '25', '511324', '510000,511300,511324', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2746', '2738', ',2589,2738,2746,', '3', 'xichongxian', '西充县', '24', '511325', '510000,511300,511325', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2747', '2738', ',2589,2738,2747,', '3', 'zuozhongshi', '阆中市', '26', '511381', '510000,511300,511381', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2748', '2589', ',2589,2748,', '2', 'panzhihuashi', '攀枝花市', '16', '510400', '510000,510400', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2749', '2748', ',2589,2748,2749,', '3', 'dongqu', '东区', '4', '510402', '510000,510400,510402', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2750', '2748', ',2589,2748,2750,', '3', 'xiqu', '西区', '24', '510403', '510000,510400,510403', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2751', '2748', ',2589,2748,2751,', '3', 'renhequ', '仁和区', '18', '510411', '510000,510400,510411', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2752', '2748', ',2589,2748,2752,', '3', 'miyixian', '米易县', '13', '510421', '510000,510400,510421', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2753', '2748', ',2589,2748,2753,', '3', 'yanbianxian', '盐边县', '25', '510422', '510000,510400,510422', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2754', '2589', ',2589,2754,', '2', 'suiningshi', '遂宁市', '19', '510900', '510000,510900', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2755', '2754', ',2589,2754,2755,', '3', 'chuanshanqu', '船山区', '3', '510903', '510000,510900,510903', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2756', '2754', ',2589,2754,2756,', '3', 'anjuqu', '安居区', '1', '510904', '510000,510900,510904', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2757', '2754', ',2589,2754,2757,', '3', 'pengxixian', '蓬溪县', '16', '510921', '510000,510900,510921', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2758', '2754', ',2589,2754,2758,', '3', 'shehongxian', '射洪县', '19', '510922', '510000,510900,510922', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2759', '2754', ',2589,2754,2759,', '3', 'dayingxian', '大英县', '4', '510923', '510000,510900,510923', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2760', '2589', ',2589,2760,', '2', 'yaanshi', '雅安市', '25', '511800', '510000,511800', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2761', '2760', ',2589,2760,2761,', '3', 'yuchengqu', '雨城区', '25', '511802', '510000,511800,511802', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2762', '2760', ',2589,2760,2762,', '3', 'mingshanxian', '名山县', '13', '511821', '510000,511800,511821', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2763', '2760', ',2589,2760,2763,', '3', 'zuojingxian', '荥经县', '26', '511822', '510000,511800,511822', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2764', '2760', ',2589,2760,2764,', '3', 'hanyuanxian', '汉源县', '8', '511823', '510000,511800,511823', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2765', '2760', ',2589,2760,2765,', '3', 'shimianxian', '石棉县', '19', '511824', '510000,511800,511824', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2766', '2760', ',2589,2760,2766,', '3', 'tianquanxian', '天全县', '20', '511825', '510000,511800,511825', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2767', '2760', ',2589,2760,2767,', '3', 'lushanxian', '芦山县', '12', '511826', '510000,511800,511826', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2768', '2760', ',2589,2760,2768,', '3', 'baoxingxian', '宝兴县', '2', '511827', '510000,511800,511827', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2769', '2589', ',2589,2769,', '2', 'yibinshi', '宜宾市', '25', '511500', '510000,511500', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2770', '2769', ',2589,2769,2770,', '3', 'cuipingqu', '翠屏区', '3', '511502', '510000,511500,511502', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2771', '2769', ',2589,2769,2771,', '3', 'yibinxian', '宜宾县', '25', '511521', '510000,511500,511521', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2772', '2769', ',2589,2769,2772,', '3', 'nanxixian', '南溪县', '14', '511522', '510000,511500,511522', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2773', '2769', ',2589,2769,2773,', '3', 'jianganxian', '江安县', '10', '511523', '510000,511500,511523', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2774', '2769', ',2589,2769,2774,', '3', 'changningxian', '长宁县', '3', '511524', '510000,511500,511524', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2775', '2769', ',2589,2769,2775,', '3', 'gaoxian', '高县', '7', '511525', '510000,511500,511525', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2776', '2769', ',2589,2769,2776,', '3', 'zuoxian', '珙县', '26', '511526', '510000,511500,511526', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2777', '2769', ',2589,2769,2777,', '3', 'zuolianxian', '筠连县', '26', '511527', '510000,511500,511527', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2778', '2769', ',2589,2769,2778,', '3', 'xingwenxian', '兴文县', '24', '511528', '510000,511500,511528', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2779', '2769', ',2589,2769,2779,', '3', 'pingshanxian', '屏山县', '16', '511529', '510000,511500,511529', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2780', '2589', ',2589,2780,', '2', 'ziyangshi', '资阳市', '26', '512000', '510000,512000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2781', '2780', ',2589,2780,2781,', '3', 'yanjiangqu', '雁江区', '25', '512002', '510000,512000,512002', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2782', '2780', ',2589,2780,2782,', '3', 'anyuexian', '安岳县', '1', '511023', '510000,511026,511023', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2783', '2780', ',2589,2780,2783,', '3', 'lezhixian', '乐至县', '12', '511022', '510000,511026,511022', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2784', '2780', ',2589,2780,2784,', '3', 'jianyangshi', '简阳市', '10', '511027', '510000,511026,511027', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2785', '2589', ',2589,2785,', '2', 'zigongshi', '自贡市', '26', '510300', '510000,510300', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2786', '2785', ',2589,2785,2786,', '3', 'ziliujingqu', '自流井区', '26', '510302', '510000,510300,510302', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2787', '2785', ',2589,2785,2787,', '3', 'gongjingqu', '贡井区', '7', '510303', '510000,510300,510303', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2788', '2785', ',2589,2785,2788,', '3', 'daanqu', '大安区', '4', '510304', '510000,510300,510304', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2789', '2785', ',2589,2785,2789,', '3', 'yantanqu', '沿滩区', '25', '510311', '510000,510300,510311', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2790', '2785', ',2589,2785,2790,', '3', 'rongxian', '荣县', '18', '510321', '510000,510300,510321', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2791', '2785', ',2589,2785,2791,', '3', 'fushunxian', '富顺县', '6', '510322', '510000,510300,510322', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2792', null, ',2792,', '1', 'xicang', '西藏', '24', '540000', '540000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2793', '2792', ',2792,2793,', '2', 'lasashi', '拉萨市', '12', '540100', '540000,540100', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2794', '2793', ',2792,2793,2794,', '3', 'chengguanqu', '城关区', '3', '540102', '540000,540100,540102', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2795', '2793', ',2792,2793,2795,', '3', 'linzhouxian', '林周县', '12', '540121', '540000,540100,540121', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2796', '2793', ',2792,2793,2796,', '3', 'dangxiongxian', '当雄县', '4', '540122', '540000,540100,540122', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2797', '2793', ',2792,2793,2797,', '3', 'nimuxian', '尼木县', '14', '540123', '540000,540100,540123', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2798', '2793', ',2792,2793,2798,', '3', 'qushuixian', '曲水县', '17', '540124', '540000,540100,540124', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2799', '2793', ',2792,2793,2799,', '3', 'duilongdeqingxian', '堆龙德庆县', '4', '540125', '540000,540100,540125', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2800', '2793', ',2792,2793,2800,', '3', 'dazixian', '达孜县', '4', '540126', '540000,540100,540126', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2801', '2793', ',2792,2793,2801,', '3', 'mozhugongkaxian', '墨竹工卡县', '13', '540127', '540000,540100,540127', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2802', '2792', ',2792,2802,', '2', 'alidiqu', '阿里地区', '1', '542500', '540000,542500', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2803', '2802', ',2792,2802,2803,', '3', 'pulanxian', '普兰县', '16', '542521', '540000,542500,542521', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2804', '2802', ',2792,2802,2804,', '3', 'zhadaxian', '札达县', '26', '542522', '540000,542500,542522', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2805', '2802', ',2792,2802,2805,', '3', 'gaerxian', '噶尔县', '7', '542523', '540000,542500,542523', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2806', '2802', ',2792,2802,2806,', '3', 'rituxian', '日土县', '18', '542524', '540000,542500,542524', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2807', '2802', ',2792,2802,2807,', '3', 'gejixian', '革吉县', '7', '542525', '540000,542500,542525', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2808', '2802', ',2792,2802,2808,', '3', 'gaizexian', '改则县', '7', '542526', '540000,542500,542526', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2809', '2802', ',2792,2802,2809,', '3', 'cuoqinxian', '措勤县', '3', '542527', '540000,542500,542527', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2810', '2792', ',2792,2810,', '2', 'changdudiqu', '昌都地区', '3', '542100', '540000,542100', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2811', '2810', ',2792,2810,2811,', '3', 'changduxian', '昌都县', '3', '542121', '540000,542100,542121', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2812', '2810', ',2792,2810,2812,', '3', 'jiangdaxian', '江达县', '10', '542122', '540000,542100,542122', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2813', '2810', ',2792,2810,2813,', '3', 'gongjuexian', '贡觉县', '7', '542123', '540000,542100,542123', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2814', '2810', ',2792,2810,2814,', '3', 'leiwuqixian', '类乌齐县', '12', '542124', '540000,542100,542124', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2815', '2810', ',2792,2810,2815,', '3', 'dingqingxian', '丁青县', '4', '542125', '540000,542100,542125', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2816', '2810', ',2792,2810,2816,', '3', 'chayaxian', '察雅县', '3', '542126', '540000,542100,542126', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2817', '2810', ',2792,2810,2817,', '3', 'basuxian', '八宿县', '2', '542127', '540000,542100,542127', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2818', '2810', ',2792,2810,2818,', '3', 'zuogongxian', '左贡县', '26', '542128', '540000,542100,542128', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2819', '2810', ',2792,2810,2819,', '3', 'mangkangxian', '芒康县', '13', '542129', '540000,542100,542129', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2820', '2810', ',2792,2810,2820,', '3', 'luolongxian', '洛隆县', '12', '542132', '540000,542100,542132', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2821', '2810', ',2792,2810,2821,', '3', 'bianbaxian', '边坝县', '2', '542133', '540000,542100,542133', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2822', '2792', ',2792,2822,', '2', 'linzhidiqu', '林芝地区', '12', '542600', '540000,542600', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2823', '2822', ',2792,2822,2823,', '3', 'linzhixian', '林芝县', '12', '540129', '540000,540129,540129', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2824', '2822', ',2792,2822,2824,', '3', 'gongbujiangdaxian', '工布江达县', '7', '540128', '540000,540129,540128', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2825', '2822', ',2792,2822,2825,', '3', 'milinxian', '米林县', '13', '540130', '540000,540129,540130', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2826', '2822', ',2792,2822,2826,', '3', 'motuoxian', '墨脱县', '13', '540131', '540000,540129,540131', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2827', '2822', ',2792,2822,2827,', '3', 'bomixian', '波密县', '2', '542625', '540000,542600,542625', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2828', '2822', ',2792,2822,2828,', '3', 'chayuxian', '察隅县', '3', '542626', '540000,542600,542626', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2829', '2822', ',2792,2822,2829,', '3', 'langxian', '朗县', '12', '542627', '540000,542600,542627', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2830', '2792', ',2792,2830,', '2', 'naqudiqu', '那曲地区', '14', '542400', '540000,542400', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2831', '2830', ',2792,2830,2831,', '3', 'naquxian', '那曲县', '14', '542421', '540000,542400,542421', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2832', '2830', ',2792,2830,2832,', '3', 'jialixian', '嘉黎县', '10', '542422', '540000,542400,542422', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2833', '2830', ',2792,2830,2833,', '3', 'biruxian', '比如县', '2', '542423', '540000,542400,542423', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2834', '2830', ',2792,2830,2834,', '3', 'nierongxian', '聂荣县', '14', '542424', '540000,542400,542424', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2835', '2830', ',2792,2830,2835,', '3', 'anduoxian', '安多县', '1', '542425', '540000,542400,542425', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2836', '2830', ',2792,2830,2836,', '3', 'shenzhaxian', '申扎县', '19', '542426', '540000,542400,542426', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2837', '2830', ',2792,2830,2837,', '3', 'suoxian', '索县', '19', '542427', '540000,542400,542427', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2838', '2830', ',2792,2830,2838,', '3', 'bangexian', '班戈县', '2', '542428', '540000,542400,542428', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2839', '2830', ',2792,2830,2839,', '3', 'baqingxian', '巴青县', '2', '542429', '540000,542400,542429', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2840', '2830', ',2792,2830,2840,', '3', 'nimaxian', '尼玛县', '14', '542430', '540000,542400,542430', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2841', '2792', ',2792,2841,', '2', 'rikazediqu', '日喀则地区', '18', '542300', '540000,542300', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2842', '2841', ',2792,2841,2842,', '3', 'rikazeshi', '日喀则市', '18', '542301', '540000,542300,542301', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2843', '2841', ',2792,2841,2843,', '3', 'nanmulinxian', '南木林县', '14', '542322', '540000,542300,542322', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2844', '2841', ',2792,2841,2844,', '3', 'jiangzixian', '江孜县', '10', '542323', '540000,542300,542323', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2845', '2841', ',2792,2841,2845,', '3', 'dingrixian', '定日县', '4', '542324', '540000,542300,542324', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2846', '2841', ',2792,2841,2846,', '3', 'sazuoxian', '萨迦县', '19', '542325', '540000,542300,542325', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2847', '2841', ',2792,2841,2847,', '3', 'lazixian', '拉孜县', '12', '542326', '540000,542300,542326', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2848', '2841', ',2792,2841,2848,', '3', 'angrenxian', '昂仁县', '1', '542327', '540000,542300,542327', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2849', '2841', ',2792,2841,2849,', '3', 'xietongmenxian', '谢通门县', '24', '542328', '540000,542300,542328', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2850', '2841', ',2792,2841,2850,', '3', 'bailangxian', '白朗县', '2', '542329', '540000,542300,542329', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2851', '2841', ',2792,2841,2851,', '3', 'renbuxian', '仁布县', '18', '542330', '540000,542300,542330', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2852', '2841', ',2792,2841,2852,', '3', 'kangmaxian', '康马县', '11', '542331', '540000,542300,542331', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2853', '2841', ',2792,2841,2853,', '3', 'dingjiexian', '定结县', '4', '542332', '540000,542300,542332', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2854', '2841', ',2792,2841,2854,', '3', 'zhongbaxian', '仲巴县', '26', '542333', '540000,542300,542333', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2855', '2841', ',2792,2841,2855,', '3', 'yadongxian', '亚东县', '25', '542334', '540000,542300,542334', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2856', '2841', ',2792,2841,2856,', '3', 'jilongxian', '吉隆县', '10', '542335', '540000,542300,542335', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2857', '2841', ',2792,2841,2857,', '3', 'nielamuxian', '聂拉木县', '14', '542336', '540000,542300,542336', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2858', '2841', ',2792,2841,2858,', '3', 'sagaxian', '萨嘎县', '19', '542337', '540000,542300,542337', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2859', '2841', ',2792,2841,2859,', '3', 'gangbaxian', '岗巴县', '7', '542338', '540000,542300,542338', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2860', '2792', ',2792,2860,', '2', 'shannandiqu', '山南地区', '19', '542200', '540000,542200', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2861', '2860', ',2792,2860,2861,', '3', 'naidongxian', '乃东县', '14', '542221', '540000,542200,542221', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2862', '2860', ',2792,2860,2862,', '3', 'zhanangxian', '扎囊县', '26', '542222', '540000,542200,542222', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2863', '2860', ',2792,2860,2863,', '3', 'gonggaxian', '贡嘎县', '7', '542223', '540000,542200,542223', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2864', '2860', ',2792,2860,2864,', '3', 'sangrixian', '桑日县', '19', '542224', '540000,542200,542224', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2865', '2860', ',2792,2860,2865,', '3', 'qiongjiexian', '琼结县', '17', '542225', '540000,542200,542225', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2866', '2860', ',2792,2860,2866,', '3', 'qusongxian', '曲松县', '17', '542226', '540000,542200,542226', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2867', '2860', ',2792,2860,2867,', '3', 'cuomeixian', '措美县', '3', '542227', '540000,542200,542227', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2868', '2860', ',2792,2860,2868,', '3', 'luozhaxian', '洛扎县', '12', '542228', '540000,542200,542228', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2869', '2860', ',2792,2860,2869,', '3', 'jiachaxian', '加查县', '10', '542229', '540000,542200,542229', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2870', '2860', ',2792,2860,2870,', '3', 'longzixian', '隆子县', '12', '542231', '540000,542200,542231', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2871', '2860', ',2792,2860,2871,', '3', 'cuonaxian', '错那县', '3', '542232', '540000,542200,542232', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2872', '2860', ',2792,2860,2872,', '3', 'langkazixian', '浪卡子县', '12', '542233', '540000,542200,542233', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2873', null, ',2873,', '1', 'xinjiang', '新疆', '24', '650000', '650000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2874', '2873', ',2873,2874,', '2', 'wulumuqishi', '乌鲁木齐市', '23', '650100', '650000,650100', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2875', '2874', ',2873,2874,2875,', '3', 'tianshanqu', '天山区', '20', '650102', '650000,650100,650102', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2876', '2874', ',2873,2874,2876,', '3', 'shayibakequ', '沙依巴克区', '19', '650103', '650000,650100,650103', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2877', '2874', ',2873,2874,2877,', '3', 'xinshiqu', '新市区', '24', '650104', '650000,650100,650104', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2878', '2874', ',2873,2874,2878,', '3', 'shuimogouqu', '水磨沟区', '19', '650105', '650000,650100,650105', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2879', '2874', ',2873,2874,2879,', '3', 'toutunhequ', '头屯河区', '20', '650106', '650000,650100,650106', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2880', '2874', ',2873,2874,2880,', '3', 'dazuochengqu', '达坂城区', '4', '650107', '650000,650100,650107', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2881', '2874', ',2873,2874,2881,', '3', 'dongshanqu', '东山区', '4', '650108', '650000,650100,650108', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2882', '2874', ',2873,2874,2882,', '3', 'wulumuqixian', '乌鲁木齐县', '23', '650121', '650000,650100,650121', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2883', '2873', ',2873,2883,', '2', 'akesudiqu', '阿克苏地区', '1', '652900', '650000,652900', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2884', '2883', ',2873,2883,2884,', '3', 'akesushi', '阿克苏市', '1', '652901', '650000,652900,652901', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2885', '2883', ',2873,2883,2885,', '3', 'wensuxian', '温宿县', '23', '652922', '650000,652900,652922', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2886', '2883', ',2873,2883,2886,', '3', 'kuchexian', '库车县', '11', '652923', '650000,652900,652923', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2887', '2883', ',2873,2883,2887,', '3', 'shayaxian', '沙雅县', '19', '652924', '650000,652900,652924', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2888', '2883', ',2873,2883,2888,', '3', 'xinhexian', '新和县', '24', '652925', '650000,652900,652925', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2889', '2883', ',2873,2883,2889,', '3', 'baichengxian', '拜城县', '2', '652926', '650000,652900,652926', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2890', '2883', ',2873,2883,2890,', '3', 'wushixian', '乌什县', '23', '652927', '650000,652900,652927', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2891', '2883', ',2873,2883,2891,', '3', 'awatixian', '阿瓦提县', '1', '652928', '650000,652900,652928', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2892', '2883', ',2873,2883,2892,', '3', 'kepingxian', '柯坪县', '11', '652929', '650000,652900,652929', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2893', '2873', ',2873,2893,', '2', 'alaershi', '阿拉尔市', '1', '659002', '650000,659002', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2894', '2873', ',2873,2894,', '2', 'aletaidiqu', '阿勒泰地区', '1', '654300', '650000,654300', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2895', '2894', ',2873,2894,2895,', '3', 'aletaishi', '阿勒泰市', '1', '652621', '650000,652600,652621', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2896', '2894', ',2873,2894,2896,', '3', 'buerjinxian', '布尔津县', '2', '652622', '650000,652600,652622', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2897', '2894', ',2873,2894,2897,', '3', 'fuyunxian', '富蕴县', '6', '652623', '650000,652600,652623', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2898', '2894', ',2873,2894,2898,', '3', 'fuhaixian', '福海县', '6', '654323', '650000,654300,654323', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2899', '2894', ',2873,2894,2899,', '3', 'habahexian', '哈巴河县', '8', '652624', '650000,652600,652624', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2900', '2894', ',2873,2894,2900,', '3', 'qinghexian', '青河县', '17', '652626', '650000,652600,652626', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2901', '2894', ',2873,2894,2901,', '3', 'jimunaixian', '吉木乃县', '10', '654326', '650000,654300,654326', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2902', '2873', ',2873,2902,', '2', 'bayinguolengmengguzizhizhou', '巴音郭楞蒙古自治州', '2', '652800', '650000,652800', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2903', '2902', ',2873,2902,2903,', '3', 'kuerleshi', '库尔勒市', '11', '652801', '650000,652800,652801', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2904', '2902', ',2873,2902,2904,', '3', 'luntaixian', '轮台县', '12', '652822', '650000,652800,652822', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2905', '2902', ',2873,2902,2905,', '3', 'weilixian', '尉犁县', '23', '652823', '650000,652800,652823', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2906', '2902', ',2873,2902,2906,', '3', 'ruoqiangxian', '若羌县', '18', '652824', '650000,652800,652824', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2907', '2902', ',2873,2902,2907,', '3', 'qiemoxian', '且末县', '17', '652825', '650000,652800,652825', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2908', '2902', ',2873,2902,2908,', '3', 'yanzuohuizuzizhixian', '焉耆回族自治县', '25', '652826', '650000,652800,652826', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2909', '2902', ',2873,2902,2909,', '3', 'hejingxian', '和静县', '8', '652827', '650000,652800,652827', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2910', '2902', ',2873,2902,2910,', '3', 'heshuoxian', '和硕县', '8', '652828', '650000,652800,652828', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2911', '2902', ',2873,2902,2911,', '3', 'bohuxian', '博湖县', '2', '652829', '650000,652800,652829', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2912', '2873', ',2873,2912,', '2', 'boertalamengguzizhizhou', '博尔塔拉蒙古自治州', '2', '652700', '650000,652700', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2913', '2912', ',2873,2912,2913,', '3', 'boleshi', '博乐市', '2', '652701', '650000,652700,652701', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2914', '2912', ',2873,2912,2914,', '3', 'jinghexian', '精河县', '10', '652722', '650000,652700,652722', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2915', '2912', ',2873,2912,2915,', '3', 'wenquanxian', '温泉县', '23', '652723', '650000,652700,652723', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2916', '2873', ',2873,2916,', '2', 'changjihuizuzizhizhou', '昌吉回族自治州', '3', '652300', '650000,652300', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2917', '2916', ',2873,2916,2917,', '3', 'changjishi', '昌吉市', '3', '652301', '650000,652300,652301', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2918', '2916', ',2873,2916,2918,', '3', 'fukangshi', '阜康市', '6', '652302', '650000,652300,652302', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2919', '2916', ',2873,2916,2919,', '3', 'miquanshi', '米泉市', '13', '652303', '650000,652300,652303', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2920', '2916', ',2873,2916,2920,', '3', 'hutubixian', '呼图壁县', '8', '652323', '650000,652300,652323', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2921', '2916', ',2873,2916,2921,', '3', 'manasixian', '玛纳斯县', '13', '652324', '650000,652300,652324', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2922', '2916', ',2873,2916,2922,', '3', 'qitaixian', '奇台县', '17', '652325', '650000,652300,652325', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2923', '2916', ',2873,2916,2923,', '3', 'jimusaerxian', '吉木萨尔县', '10', '652327', '650000,652300,652327', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2924', '2916', ',2873,2916,2924,', '3', 'muleihasakezizhixian', '木垒哈萨克自治县', '13', '652328', '650000,652300,652328', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2925', '2873', ',2873,2925,', '2', 'hamidiqu', '哈密地区', '8', '652200', '650000,652200', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2926', '2925', ',2873,2925,2926,', '3', 'hamishi', '哈密市', '8', '652201', '650000,652200,652201', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2927', '2925', ',2873,2925,2927,', '3', 'balikunhasakezizhixian', '巴里坤哈萨克自治县', '2', '652222', '650000,652200,652222', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2928', '2925', ',2873,2925,2928,', '3', 'yiwuxian', '伊吾县', '25', '652223', '650000,652200,652223', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2929', '2873', ',2873,2929,', '2', 'hetiandiqu', '和田地区', '8', '653200', '650000,653200', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2930', '2929', ',2873,2929,2930,', '3', 'hetianshi', '和田市', '8', '653201', '650000,653200,653201', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2931', '2929', ',2873,2929,2931,', '3', 'hetianxian', '和田县', '8', '653221', '650000,653200,653221', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2932', '2929', ',2873,2929,2932,', '3', 'moyuxian', '墨玉县', '13', '653222', '650000,653200,653222', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2933', '2929', ',2873,2929,2933,', '3', 'pishanxian', '皮山县', '16', '653223', '650000,653200,653223', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2934', '2929', ',2873,2929,2934,', '3', 'luopuxian', '洛浦县', '12', '653224', '650000,653200,653224', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2935', '2929', ',2873,2929,2935,', '3', 'celexian', '策勒县', '3', '653225', '650000,653200,653225', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2936', '2929', ',2873,2929,2936,', '3', 'yutianxian', '于田县', '25', '653226', '650000,653200,653226', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2937', '2929', ',2873,2929,2937,', '3', 'minfengxian', '民丰县', '13', '653227', '650000,653200,653227', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2938', '2873', ',2873,2938,', '2', 'kashidiqu', '喀什地区', '11', '653100', '650000,653100', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2939', '2938', ',2873,2938,2939,', '3', 'kashishi', '喀什市', '11', '653101', '650000,653100,653101', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2940', '2938', ',2873,2938,2940,', '3', 'shufuxian', '疏附县', '19', '653121', '650000,653100,653121', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2941', '2938', ',2873,2938,2941,', '3', 'shulexian', '疏勒县', '19', '653122', '650000,653100,653122', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2942', '2938', ',2873,2938,2942,', '3', 'yingjishaxian', '英吉沙县', '25', '653123', '650000,653100,653123', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2943', '2938', ',2873,2938,2943,', '3', 'zepuxian', '泽普县', '26', '653124', '650000,653100,653124', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2944', '2938', ',2873,2938,2944,', '3', 'shachexian', '莎车县', '19', '653125', '650000,653100,653125', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2945', '2938', ',2873,2938,2945,', '3', 'yechengxian', '叶城县', '25', '653126', '650000,653100,653126', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2946', '2938', ',2873,2938,2946,', '3', 'maigaitixian', '麦盖提县', '13', '653127', '650000,653100,653127', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2947', '2938', ',2873,2938,2947,', '3', 'yuepuhuxian', '岳普湖县', '25', '653128', '650000,653100,653128', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2948', '2938', ',2873,2938,2948,', '3', 'zuoshixian', '伽师县', '26', '653129', '650000,653100,653129', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2949', '2938', ',2873,2938,2949,', '3', 'bachuxian', '巴楚县', '2', '653130', '650000,653100,653130', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2950', '2938', ',2873,2938,2950,', '3', 'tashikuergantajikezizhixian', '塔什库尔干塔吉克自治县', '20', '653131', '650000,653100,653131', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2951', '2873', ',2873,2951,', '2', 'kelamayishi', '克拉玛依市', '11', '650200', '650000,650200', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2952', '2951', ',2873,2951,2952,', '3', 'dushanziqu', '独山子区', '4', '650202', '650000,650200,650202', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2953', '2951', ',2873,2951,2953,', '3', 'kelamayiqu', '克拉玛依区', '11', '650203', '650000,650200,650203', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2954', '2951', ',2873,2951,2954,', '3', 'baijiantanqu', '白碱滩区', '2', '650204', '650000,650200,650204', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2955', '2951', ',2873,2951,2955,', '3', 'wuerhequ', '乌尔禾区', '23', '650205', '650000,650200,650205', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2956', '2873', ',2873,2956,', '2', 'kezilesukeerkezizizhizhou', '克孜勒苏柯尔克孜自治州', '11', '653000', '650000,653000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2957', '2956', ',2873,2956,2957,', '3', 'atushishi', '阿图什市', '1', '653001', '650000,653000,653001', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2958', '2956', ',2873,2956,2958,', '3', 'aketaoxian', '阿克陶县', '1', '653022', '650000,653000,653022', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2959', '2956', ',2873,2956,2959,', '3', 'aheqixian', '阿合奇县', '1', '653023', '650000,653000,653023', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2960', '2956', ',2873,2956,2960,', '3', 'wuqiaxian', '乌恰县', '23', '653024', '650000,653000,653024', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2961', '2873', ',2873,2961,', '2', 'shihezishi', '石河子市', '19', '650300', '650000,650300', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2962', '2873', ',2873,2962,', '2', 'tachengdiqu', '塔城地区', '20', '654200', '650000,654200', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2963', '2962', ',2873,2962,2963,', '3', 'tachengshi', '塔城市', '20', '652521', '650000,652500,652521', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2964', '2962', ',2873,2962,2964,', '3', 'wusushi', '乌苏市', '23', '652523', '650000,652500,652523', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2965', '2962', ',2873,2962,2965,', '3', 'eminxian', '额敏县', '5', '652522', '650000,652500,652522', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2966', '2962', ',2873,2962,2966,', '3', 'shawanxian', '沙湾县', '19', '652524', '650000,652500,652524', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2967', '2962', ',2873,2962,2967,', '3', 'tuolixian', '托里县', '20', '652525', '650000,652500,652525', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2968', '2962', ',2873,2962,2968,', '3', 'yuminxian', '裕民县', '25', '652526', '650000,652500,652526', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2969', '2962', ',2873,2962,2969,', '3', 'hebukesaiermengguzizhixian', '和布克赛尔蒙古自治县', '8', '654226', '650000,654200,654226', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2970', '2873', ',2873,2970,', '2', 'tumushukeshi', '图木舒克市', '20', '659003', '650000,659003', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2971', '2873', ',2873,2971,', '2', 'tulufandiqu', '吐鲁番地区', '20', '652100', '650000,652100', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2972', '2971', ',2873,2971,2972,', '3', 'tulufanshi', '吐鲁番市', '20', '652101', '650000,652100,652101', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2973', '2971', ',2873,2971,2973,', '3', 'zuoshanxian', '鄯善县', '26', '652122', '650000,652100,652122', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2974', '2971', ',2873,2971,2974,', '3', 'tuokexunxian', '托克逊县', '20', '652123', '650000,652100,652123', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2975', '2873', ',2873,2975,', '2', 'wujiaqushi', '五家渠市', '23', '659004', '650000,659004', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2976', '2873', ',2873,2976,', '2', 'yilihasakezizhizhou', '伊犁哈萨克自治州', '25', '652400', '650000,652400', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2977', '2976', ',2873,2976,2977,', '3', 'yiningshi', '伊宁市', '25', '652401', '650000,652400,652401', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2978', '2976', ',2873,2976,2978,', '3', 'kuitunshi', '奎屯市', '11', '652402', '650000,652400,652402', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2979', '2976', ',2873,2976,2979,', '3', 'yiningxian', '伊宁县', '25', '652421', '650000,652400,652421', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2980', '2976', ',2873,2976,2980,', '3', 'chabuchaerxibozizhixian', '察布查尔锡伯自治县', '3', '652422', '650000,652400,652422', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2981', '2976', ',2873,2976,2981,', '3', 'huochengxian', '霍城县', '8', '652423', '650000,652400,652423', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2982', '2976', ',2873,2976,2982,', '3', 'gongliuxian', '巩留县', '7', '652424', '650000,652400,652424', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2983', '2976', ',2873,2976,2983,', '3', 'xinyuanxian', '新源县', '24', '652425', '650000,652400,652425', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2984', '2976', ',2873,2976,2984,', '3', 'zhaosuxian', '昭苏县', '26', '652426', '650000,652400,652426', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2985', '2976', ',2873,2976,2985,', '3', 'tekesixian', '特克斯县', '20', '652427', '650000,652400,652427', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2986', '2976', ',2873,2976,2986,', '3', 'nilekexian', '尼勒克县', '14', '652428', '650000,652400,652428', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2987', null, ',2987,', '1', 'yunnan', '云南', '25', '530000', '530000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2988', '2987', ',2987,2988,', '2', 'kunmingshi', '昆明市', '11', '530100', '530000,530100', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2989', '2988', ',2987,2988,2989,', '3', 'wuhuaqu', '五华区', '23', '530102', '530000,530100,530102', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2990', '2988', ',2987,2988,2990,', '3', 'panlongqu', '盘龙区', '16', '530103', '530000,530100,530103', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2991', '2988', ',2987,2988,2991,', '3', 'guanduqu', '官渡区', '7', '530111', '530000,530100,530111', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2992', '2988', ',2987,2988,2992,', '3', 'xishanqu', '西山区', '24', '530112', '530000,530100,530112', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2993', '2988', ',2987,2988,2993,', '3', 'dongchuanqu', '东川区', '4', '530113', '530000,530100,530113', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2994', '2988', ',2987,2988,2994,', '3', 'chenggongxian', '呈贡县', '3', '530121', '530000,530100,530121', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2995', '2988', ',2987,2988,2995,', '3', 'jinningxian', '晋宁县', '10', '530122', '530000,530100,530122', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2996', '2988', ',2987,2988,2996,', '3', 'fuminxian', '富民县', '6', '530124', '530000,530100,530124', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2997', '2988', ',2987,2988,2997,', '3', 'yiliangxian', '宜良县', '25', '530125', '530000,530100,530125', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2998', '2988', ',2987,2988,2998,', '3', 'shilinyizuzizhixian', '石林彝族自治县', '19', '530126', '530000,530100,530126', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('2999', '2988', ',2987,2988,2999,', '3', 'zuomingxian', '嵩明县', '26', '530127', '530000,530100,530127', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3000', '2988', ',2987,2988,3000,', '3', 'luquanyizumiaozuzizhixian', '禄劝彝族苗族自治县', '12', '530128', '530000,530100,530128', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3001', '2988', ',2987,2988,3001,', '3', 'xundianhuizuyizuzizhixian', '寻甸回族彝族自治县', '24', '530129', '530000,530100,530129', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3002', '2988', ',2987,2988,3002,', '3', 'anningshi', '安宁市', '1', '530123', '530000,530100,530123', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3003', '2987', ',2987,3003,', '2', 'baoshanshi', '保山市', '2', '530500', '530000,530500', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3004', '3003', ',2987,3003,3004,', '3', 'longyangqu', '隆阳区', '12', '530502', '530000,530500,530502', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3005', '3003', ',2987,3003,3005,', '3', 'shidianxian', '施甸县', '19', '530521', '530000,530500,530521', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3006', '3003', ',2987,3003,3006,', '3', 'tengchongxian', '腾冲县', '20', '530522', '530000,530500,530522', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3007', '3003', ',2987,3003,3007,', '3', 'longlingxian', '龙陵县', '12', '530523', '530000,530500,530523', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3008', '3003', ',2987,3003,3008,', '3', 'changningxian', '昌宁县', '3', '530524', '530000,530500,530524', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3009', '2987', ',2987,3009,', '2', 'chuxiongyizuzizhizhou', '楚雄彝族自治州', '3', '532300', '530000,532300', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3010', '3009', ',2987,3009,3010,', '3', 'chuxiongshi', '楚雄市', '3', '532301', '530000,532300,532301', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3011', '3009', ',2987,3009,3011,', '3', 'shuangbaixian', '双柏县', '19', '532322', '530000,532300,532322', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3012', '3009', ',2987,3009,3012,', '3', 'moudingxian', '牟定县', '13', '532323', '530000,532300,532323', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3013', '3009', ',2987,3009,3013,', '3', 'nanhuaxian', '南华县', '14', '532324', '530000,532300,532324', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3014', '3009', ',2987,3009,3014,', '3', 'yaoanxian', '姚安县', '25', '532325', '530000,532300,532325', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3015', '3009', ',2987,3009,3015,', '3', 'dayaoxian', '大姚县', '4', '532326', '530000,532300,532326', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3016', '3009', ',2987,3009,3016,', '3', 'yongrenxian', '永仁县', '25', '532327', '530000,532300,532327', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3017', '3009', ',2987,3009,3017,', '3', 'yuanmouxian', '元谋县', '25', '532328', '530000,532300,532328', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3018', '3009', ',2987,3009,3018,', '3', 'wudingxian', '武定县', '23', '532329', '530000,532300,532329', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3019', '3009', ',2987,3009,3019,', '3', 'lufengxian', '禄丰县', '12', '532331', '530000,532300,532331', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3020', '2987', ',2987,3020,', '2', 'dalibaizuzizhizhou', '大理白族自治州', '4', '532900', '530000,532900', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3021', '3020', ',2987,3020,3021,', '3', 'dalishi', '大理市', '4', '532901', '530000,532900,532901', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3022', '3020', ',2987,3020,3022,', '3', 'yangzuoyizuzizhixian', '漾濞彝族自治县', '25', '532922', '530000,532900,532922', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3023', '3020', ',2987,3020,3023,', '3', 'xiangyunxian', '祥云县', '24', '532923', '530000,532900,532923', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3024', '3020', ',2987,3020,3024,', '3', 'binchuanxian', '宾川县', '2', '532924', '530000,532900,532924', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3025', '3020', ',2987,3020,3025,', '3', 'miduxian', '弥渡县', '13', '532925', '530000,532900,532925', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3026', '3020', ',2987,3020,3026,', '3', 'nanjianyizuzizhixian', '南涧彝族自治县', '14', '532926', '530000,532900,532926', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3027', '3020', ',2987,3020,3027,', '3', 'weishanyizuhuizuzizhixian', '巍山彝族回族自治县', '23', '532927', '530000,532900,532927', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3028', '3020', ',2987,3020,3028,', '3', 'yongpingxian', '永平县', '25', '532928', '530000,532900,532928', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3029', '3020', ',2987,3020,3029,', '3', 'yunlongxian', '云龙县', '25', '532929', '530000,532900,532929', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3030', '3020', ',2987,3020,3030,', '3', 'eryuanxian', '洱源县', '5', '532930', '530000,532900,532930', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3031', '3020', ',2987,3020,3031,', '3', 'jianchuanxian', '剑川县', '10', '532931', '530000,532900,532931', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3032', '3020', ',2987,3020,3032,', '3', 'heqingxian', '鹤庆县', '8', '532932', '530000,532900,532932', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3033', '2987', ',2987,3033,', '2', 'dehongdaizujingpozuzizhizhou', '德宏傣族景颇族自治州', '4', '533100', '530000,533100', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3034', '3033', ',2987,3033,3034,', '3', 'ruilishi', '瑞丽市', '18', '533102', '530000,533100,533102', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3035', '3033', ',2987,3033,3035,', '3', 'luxishi', '潞西市', '12', '533103', '530000,533100,533103', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3036', '3033', ',2987,3033,3036,', '3', 'lianghexian', '梁河县', '12', '533122', '530000,533100,533122', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3037', '3033', ',2987,3033,3037,', '3', 'yingjiangxian', '盈江县', '25', '533123', '530000,533100,533123', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3038', '3033', ',2987,3033,3038,', '3', 'longchuanxian', '陇川县', '12', '533124', '530000,533100,533124', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3039', '2987', ',2987,3039,', '2', 'diqingcangzuzizhizhou', '迪庆藏族自治州', '4', '533400', '530000,533400', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3040', '3039', ',2987,3039,3040,', '3', 'xianggelilaxian', '香格里拉县', '24', '533421', '530000,533400,533421', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3041', '3039', ',2987,3039,3041,', '3', 'deqinxian', '德钦县', '4', '533422', '530000,533400,533422', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3042', '3039', ',2987,3039,3042,', '3', 'weixilisuzuzizhixian', '维西傈僳族自治县', '23', '533423', '530000,533400,533423', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3043', '2987', ',2987,3043,', '2', 'honghehanizuyizuzizhizhou', '红河哈尼族彝族自治州', '8', '532500', '530000,532500', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3044', '3043', ',2987,3043,3044,', '3', 'gejiushi', '个旧市', '7', '532501', '530000,532500,532501', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3045', '3043', ',2987,3043,3045,', '3', 'kaiyuanshi', '开远市', '11', '532502', '530000,532500,532502', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3046', '3043', ',2987,3043,3046,', '3', 'mengzixian', '蒙自县', '13', '532522', '530000,532500,532522', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3047', '3043', ',2987,3043,3047,', '3', 'pingbianmiaozuzizhixian', '屏边苗族自治县', '16', '532523', '530000,532500,532523', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3048', '3043', ',2987,3043,3048,', '3', 'jianshuixian', '建水县', '10', '532524', '530000,532500,532524', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3049', '3043', ',2987,3043,3049,', '3', 'shipingxian', '石屏县', '19', '532525', '530000,532500,532525', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3050', '3043', ',2987,3043,3050,', '3', 'milexian', '弥勒县', '13', '532526', '530000,532500,532526', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3051', '3043', ',2987,3043,3051,', '3', 'zuoxixian', '泸西县', '26', '532527', '530000,532500,532527', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3052', '3043', ',2987,3043,3052,', '3', 'yuanyangxian', '元阳县', '25', '532528', '530000,532500,532528', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3053', '3043', ',2987,3043,3053,', '3', 'honghexian', '红河县', '8', '532529', '530000,532500,532529', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3054', '3043', ',2987,3043,3054,', '3', 'jinpingmiaozuyaozudaizuzizhixian', '金平苗族瑶族傣族自治县', '10', '532530', '530000,532500,532530', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3055', '3043', ',2987,3043,3055,', '3', 'lvchunxian', '绿春县', '12', '532531', '530000,532500,532531', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3056', '3043', ',2987,3043,3056,', '3', 'hekouyaozuzizhixian', '河口瑶族自治县', '8', '532532', '530000,532500,532532', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3057', '2987', ',2987,3057,', '2', 'lijiangshi', '丽江市', '12', '530700', '530000,530700', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3058', '3057', ',2987,3057,3058,', '3', 'guchengqu', '古城区', '7', '530702', '530000,530700,530702', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3059', '3057', ',2987,3057,3059,', '3', 'yulongnaxizuzizhixian', '玉龙纳西族自治县', '25', '530721', '530000,530700,530721', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3060', '3057', ',2987,3057,3060,', '3', 'yongshengxian', '永胜县', '25', '530722', '530000,530700,530722', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3061', '3057', ',2987,3057,3061,', '3', 'huapingxian', '华坪县', '8', '530723', '530000,530700,530723', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3062', '3057', ',2987,3057,3062,', '3', 'ningzuoyizuzizhixian', '宁蒗彝族自治县', '14', '530724', '530000,530700,530724', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3063', '2987', ',2987,3063,', '2', 'lincangshi', '临沧市', '12', '530900', '530000,530900', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3064', '3063', ',2987,3063,3064,', '3', 'linxiangqu', '临翔区', '12', '530902', '530000,530900,530902', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3065', '3063', ',2987,3063,3065,', '3', 'fengqingxian', '凤庆县', '6', '530921', '530000,530900,530921', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3066', '3063', ',2987,3063,3066,', '3', 'yunxian', '云县', '25', '530922', '530000,530900,530922', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3067', '3063', ',2987,3063,3067,', '3', 'yongdexian', '永德县', '25', '530923', '530000,530900,530923', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3068', '3063', ',2987,3063,3068,', '3', 'zhenkangxian', '镇康县', '26', '530924', '530000,530900,530924', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3069', '3063', ',2987,3063,3069,', '3', 'shuangjianglazuozuzuozubulangzudaizuzizhixian', '双江拉祜族佤族布朗族傣族自治县', '19', '530925', '530000,530900,530925', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3070', '3063', ',2987,3063,3070,', '3', 'gengmadaizuzuozuzizhixian', '耿马傣族佤族自治县', '7', '530926', '530000,530900,530926', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3071', '3063', ',2987,3063,3071,', '3', 'cangyuanzuozuzizhixian', '沧源佤族自治县', '3', '530927', '530000,530900,530927', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3072', '2987', ',2987,3072,', '2', 'nujianglisuzuzizhizhou', '怒江傈僳族自治州', '14', '533300', '530000,533300', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3073', '3072', ',2987,3072,3073,', '3', 'zuoshuixian', '泸水县', '26', '533321', '530000,533300,533321', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3074', '3072', ',2987,3072,3074,', '3', 'fugongxian', '福贡县', '6', '533323', '530000,533300,533323', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3075', '3072', ',2987,3072,3075,', '3', 'gongshandulongzunuzuzizhixian', '贡山独龙族怒族自治县', '7', '533324', '530000,533300,533324', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3076', '3072', ',2987,3072,3076,', '3', 'lanpingbaizupumizuzizhixian', '兰坪白族普米族自治县', '12', '533325', '530000,533300,533325', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3077', '2987', ',2987,3077,', '2', 'qujingshi', '曲靖市', '17', '530300', '530000,530300', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3078', '3077', ',2987,3077,3078,', '3', 'zuozuoqu', '麒麟区', '26', '530302', '530000,530300,530302', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3079', '3077', ',2987,3077,3079,', '3', 'malongxian', '马龙县', '13', '530321', '530000,530300,530321', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3080', '3077', ',2987,3077,3080,', '3', 'luliangxian', '陆良县', '12', '530322', '530000,530300,530322', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3081', '3077', ',2987,3077,3081,', '3', 'shizongxian', '师宗县', '19', '530323', '530000,530300,530323', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3082', '3077', ',2987,3077,3082,', '3', 'luopingxian', '罗平县', '12', '530324', '530000,530300,530324', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3083', '3077', ',2987,3077,3083,', '3', 'fuyuanxian', '富源县', '6', '530325', '530000,530300,530325', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3084', '3077', ',2987,3077,3084,', '3', 'huizexian', '会泽县', '8', '530326', '530000,530300,530326', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3085', '3077', ',2987,3077,3085,', '3', 'zhanyixian', '沾益县', '26', '530328', '530000,530300,530328', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3086', '3077', ',2987,3077,3086,', '3', 'xuanweishi', '宣威市', '24', '530381', '530000,530300,530381', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3087', '2987', ',2987,3087,', '2', 'simaoshi', '思茅市', '19', '532701', '530000,532701', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3088', '3087', ',2987,3087,3088,', '3', 'cuiyunqu', '翠云区', '3', '532721', '530000,532701,532721', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3089', '3087', ',2987,3087,3089,', '3', 'puerhanizuyizuzizhixian', '普洱哈尼族彝族自治县', '16', '532722', '530000,532701,532722', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3090', '3087', ',2987,3087,3090,', '3', 'mojianghanizuzizhixian', '墨江哈尼族自治县', '13', '532723', '530000,532701,532723', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3091', '3087', ',2987,3087,3091,', '3', 'jingdongyizuzizhixian', '景东彝族自治县', '10', '532724', '530000,532701,532724', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3092', '3087', ',2987,3087,3092,', '3', 'jinggudaizuyizuzizhixian', '景谷傣族彝族自治县', '10', '532725', '530000,532701,532725', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3093', '3087', ',2987,3087,3093,', '3', 'zhenzuoyizuhanizulazuozuzizhixian', '镇沅彝族哈尼族拉祜族自治县', '26', '532726', '530000,532701,532726', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3094', '3087', ',2987,3087,3094,', '3', 'jiangchenghanizuyizuzizhixian', '江城哈尼族彝族自治县', '10', '532727', '530000,532701,532727', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3095', '3087', ',2987,3087,3095,', '3', 'mengliandaizulazuozuzuozuzizhixian', '孟连傣族拉祜族佤族自治县', '13', '532728', '530000,532701,532728', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3096', '3087', ',2987,3087,3096,', '3', 'lancanglazuozuzizhixian', '澜沧拉祜族自治县', '12', '532729', '530000,532701,532729', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3097', '3087', ',2987,3087,3097,', '3', 'ximengzuozuzizhixian', '西盟佤族自治县', '24', '532730', '530000,532701,532730', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3098', '2987', ',2987,3098,', '2', 'wenshanzhuangzumiaozuzizhizhou', '文山壮族苗族自治州', '23', '532600', '530000,532600', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3099', '3098', ',2987,3098,3099,', '3', 'wenshanxian', '文山县', '23', '532621', '530000,532600,532621', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3100', '3098', ',2987,3098,3100,', '3', 'yanshanxian', '砚山县', '25', '532622', '530000,532600,532622', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3101', '3098', ',2987,3098,3101,', '3', 'xichouxian', '西畴县', '24', '532623', '530000,532600,532623', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3102', '3098', ',2987,3098,3102,', '3', 'malipoxian', '麻栗坡县', '13', '532624', '530000,532600,532624', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3103', '3098', ',2987,3098,3103,', '3', 'maguanxian', '马关县', '13', '532625', '530000,532600,532625', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3104', '3098', ',2987,3098,3104,', '3', 'qiubeixian', '丘北县', '17', '532626', '530000,532600,532626', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3105', '3098', ',2987,3098,3105,', '3', 'guangnanxian', '广南县', '7', '532627', '530000,532600,532627', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3106', '3098', ',2987,3098,3106,', '3', 'funingxian', '富宁县', '6', '532628', '530000,532600,532628', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3107', '2987', ',2987,3107,', '2', 'xishuangbannadaizuzizhizhou', '西双版纳傣族自治州', '24', '532800', '530000,532800', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3108', '3107', ',2987,3107,3108,', '3', 'jinghongshi', '景洪市', '10', '532801', '530000,532800,532801', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3109', '3107', ',2987,3107,3109,', '3', 'zuohaixian', '勐海县', '26', '532822', '530000,532800,532822', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3110', '3107', ',2987,3107,3110,', '3', 'zuolaxian', '勐腊县', '26', '532823', '530000,532800,532823', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3111', '2987', ',2987,3111,', '2', 'yuxishi', '玉溪市', '25', '530400', '530000,530400', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3112', '3111', ',2987,3111,3112,', '3', 'hongtaqu', '红塔区', '8', '530402', '530000,530400,530402', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3113', '3111', ',2987,3111,3113,', '3', 'jiangchuanxian', '江川县', '10', '530421', '530000,530400,530421', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3114', '3111', ',2987,3111,3114,', '3', 'chengjiangxian', '澄江县', '3', '530422', '530000,530400,530422', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3115', '3111', ',2987,3111,3115,', '3', 'tonghaixian', '通海县', '20', '530423', '530000,530400,530423', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3116', '3111', ',2987,3111,3116,', '3', 'huaningxian', '华宁县', '8', '530424', '530000,530400,530424', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3117', '3111', ',2987,3111,3117,', '3', 'yimenxian', '易门县', '25', '530425', '530000,530400,530425', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3118', '3111', ',2987,3111,3118,', '3', 'eshanyizuzizhixian', '峨山彝族自治县', '5', '530426', '530000,530400,530426', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3119', '3111', ',2987,3111,3119,', '3', 'xinpingyizudaizuzizhixian', '新平彝族傣族自治县', '24', '530427', '530000,530400,530427', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3120', '3111', ',2987,3111,3120,', '3', 'yuanjianghanizuyizudaizuzizhixian', '元江哈尼族彝族傣族自治县', '25', '530428', '530000,530400,530428', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3121', '2987', ',2987,3121,', '2', 'zhaotongshi', '昭通市', '26', '530600', '530000,530600', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3122', '3121', ',2987,3121,3122,', '3', 'zhaoyangqu', '昭阳区', '26', '530602', '530000,530600,530602', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3123', '3121', ',2987,3121,3123,', '3', 'ludianxian', '鲁甸县', '12', '530621', '530000,530600,530621', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3124', '3121', ',2987,3121,3124,', '3', 'qiaojiaxian', '巧家县', '17', '530622', '530000,530600,530622', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3125', '3121', ',2987,3121,3125,', '3', 'yanjinxian', '盐津县', '25', '530623', '530000,530600,530623', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3126', '3121', ',2987,3121,3126,', '3', 'daguanxian', '大关县', '4', '530624', '530000,530600,530624', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3127', '3121', ',2987,3121,3127,', '3', 'yongshanxian', '永善县', '25', '530625', '530000,530600,530625', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3128', '3121', ',2987,3121,3128,', '3', 'suijiangxian', '绥江县', '19', '530626', '530000,530600,530626', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3129', '3121', ',2987,3121,3129,', '3', 'zhenxiongxian', '镇雄县', '26', '530627', '530000,530600,530627', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3130', '3121', ',2987,3121,3130,', '3', 'yiliangxian', '彝良县', '25', '530628', '530000,530600,530628', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3131', '3121', ',2987,3121,3131,', '3', 'weixinxian', '威信县', '23', '530629', '530000,530600,530629', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3132', '3121', ',2987,3121,3132,', '3', 'shuifuxian', '水富县', '19', '530630', '530000,530600,530630', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3133', null, ',3133,', '1', 'zhejiang', '浙江', '26', '330000', '330000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3134', '3133', ',3133,3134,', '2', 'hangzhoushi', '杭州市', '8', '330100', '330000,330100', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3135', '3134', ',3133,3134,3135,', '3', 'shangchengqu', '上城区', '19', '330102', '330000,330100,330102', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3136', '3134', ',3133,3134,3136,', '3', 'xiachengqu', '下城区', '24', '330103', '330000,330100,330103', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3137', '3134', ',3133,3134,3137,', '3', 'jiangganqu', '江干区', '10', '330104', '330000,330100,330104', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3138', '3134', ',3133,3134,3138,', '3', 'gongshuqu', '拱墅区', '7', '330105', '330000,330100,330105', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3139', '3134', ',3133,3134,3139,', '3', 'xihuqu', '西湖区', '24', '330106', '330000,330100,330106', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3140', '3134', ',3133,3134,3140,', '3', 'binjiangqu', '滨江区', '2', '330108', '330000,330100,330108', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3141', '3134', ',3133,3134,3141,', '3', 'xiaoshanqu', '萧山区', '24', '330109', '330000,330100,330109', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3142', '3134', ',3133,3134,3142,', '3', 'yuhangqu', '余杭区', '25', '330110', '330000,330100,330110', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3143', '3134', ',3133,3134,3143,', '3', 'tongluxian', '桐庐县', '20', '330122', '330000,330100,330122', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3144', '3134', ',3133,3134,3144,', '3', 'chunanxian', '淳安县', '3', '330127', '330000,330100,330127', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3145', '3134', ',3133,3134,3145,', '3', 'jiandeshi', '建德市', '10', '330126', '330000,330100,330126', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3146', '3134', ',3133,3134,3146,', '3', 'fuyangshi', '富阳市', '6', '330123', '330000,330100,330123', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3147', '3134', ',3133,3134,3147,', '3', 'linanshi', '临安市', '12', '330124', '330000,330100,330124', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3148', '3133', ',3133,3148,', '2', 'huzhoushi', '湖州市', '8', '330500', '330000,330500', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3149', '3148', ',3133,3148,3149,', '3', 'wuxingqu', '吴兴区', '23', '330502', '330000,330500,330502', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3150', '3148', ',3133,3148,3150,', '3', 'nanzuoqu', '南浔区', '14', '330503', '330000,330500,330503', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3151', '3148', ',3133,3148,3151,', '3', 'deqingxian', '德清县', '4', '330521', '330000,330500,330521', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3152', '3148', ',3133,3148,3152,', '3', 'changxingxian', '长兴县', '3', '330522', '330000,330500,330522', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3153', '3148', ',3133,3148,3153,', '3', 'anjixian', '安吉县', '1', '330523', '330000,330500,330523', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3154', '3133', ',3133,3154,', '2', 'jiaxingshi', '嘉兴市', '10', '330400', '330000,330400', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3155', '3154', ',3133,3154,3155,', '3', 'xiuchengqu', '秀城区', '24', '330402', '330000,330400,330402', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3156', '3154', ',3133,3154,3156,', '3', 'xiuzhouqu', '秀洲区', '24', '330411', '330000,330400,330411', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3157', '3154', ',3133,3154,3157,', '3', 'jiashanxian', '嘉善县', '10', '330421', '330000,330400,330421', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3158', '3154', ',3133,3154,3158,', '3', 'haiyanxian', '海盐县', '8', '330424', '330000,330400,330424', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3159', '3154', ',3133,3154,3159,', '3', 'hainingshi', '海宁市', '8', '330419', '330000,330400,330419', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3160', '3154', ',3133,3154,3160,', '3', 'pinghushi', '平湖市', '16', '330422', '330000,330400,330422', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3161', '3154', ',3133,3154,3161,', '3', 'tongxiangshi', '桐乡市', '20', '330425', '330000,330400,330425', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3162', '3133', ',3133,3162,', '2', 'jinhuashi', '金华市', '10', '330700', '330000,330700', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3163', '3162', ',3133,3162,3163,', '3', 'zuochengqu', '婺城区', '26', '330702', '330000,330700,330702', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3164', '3162', ',3133,3162,3164,', '3', 'jindongqu', '金东区', '10', '330703', '330000,330700,330703', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3165', '3162', ',3133,3162,3165,', '3', 'wuyixian', '武义县', '23', '330723', '330000,330700,330723', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3166', '3162', ',3133,3162,3166,', '3', 'pujiangxian', '浦江县', '16', '330726', '330000,330700,330726', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3167', '3162', ',3133,3162,3167,', '3', 'pananxian', '磐安县', '16', '330727', '330000,330700,330727', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3168', '3162', ',3133,3162,3168,', '3', 'lanxishi', '兰溪市', '12', '330781', '330000,330700,330781', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3169', '3162', ',3133,3162,3169,', '3', 'yiwushi', '义乌市', '25', '330725', '330000,330700,330725', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3170', '3162', ',3133,3162,3170,', '3', 'dongyangshi', '东阳市', '4', '330724', '330000,330700,330724', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3171', '3162', ',3133,3162,3171,', '3', 'yongkangshi', '永康市', '25', '330722', '330000,330700,330722', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3172', '3133', ',3133,3172,', '2', 'lishuishi', '丽水市', '12', '331100', '330000,331100', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3173', '3172', ',3133,3172,3173,', '3', 'lianduqu', '莲都区', '12', '331102', '330000,331100,331102', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3174', '3172', ',3133,3172,3174,', '3', 'qingtianxian', '青田县', '17', '331121', '330000,331100,331121', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3175', '3172', ',3133,3172,3175,', '3', 'zuoyunxian', '缙云县', '26', '331122', '330000,331100,331122', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3176', '3172', ',3133,3172,3176,', '3', 'suichangxian', '遂昌县', '19', '331123', '330000,331100,331123', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3177', '3172', ',3133,3172,3177,', '3', 'songyangxian', '松阳县', '19', '331124', '330000,331100,331124', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3178', '3172', ',3133,3172,3178,', '3', 'yunhexian', '云和县', '25', '331125', '330000,331100,331125', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3179', '3172', ',3133,3172,3179,', '3', 'qingyuanxian', '庆元县', '17', '331126', '330000,331100,331126', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3180', '3172', ',3133,3172,3180,', '3', 'jingningzuozuzizhixian', '景宁畲族自治县', '10', '331127', '330000,331100,331127', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3181', '3172', ',3133,3172,3181,', '3', 'longquanshi', '龙泉市', '12', '331181', '330000,331100,331181', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3182', '3133', ',3133,3182,', '2', 'ningboshi', '宁波市', '14', '330200', '330000,330200', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3183', '3182', ',3133,3182,3183,', '3', 'haishuqu', '海曙区', '8', '330203', '330000,330200,330203', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3184', '3182', ',3133,3182,3184,', '3', 'jiangdongqu', '江东区', '10', '330204', '330000,330200,330204', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3185', '3182', ',3133,3182,3185,', '3', 'jiangbeiqu', '江北区', '10', '330205', '330000,330200,330205', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3186', '3182', ',3133,3182,3186,', '3', 'beilunqu', '北仑区', '2', '330206', '330000,330200,330206', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3187', '3182', ',3133,3182,3187,', '3', 'zhenhaiqu', '镇海区', '26', '330211', '330000,330200,330211', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3188', '3182', ',3133,3182,3188,', '3', 'zuozhouqu', '鄞州区', '26', '330212', '330000,330200,330212', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3189', '3182', ',3133,3182,3189,', '3', 'xiangshanxian', '象山县', '24', '330225', '330000,330200,330225', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3190', '3182', ',3133,3182,3190,', '3', 'ninghaixian', '宁海县', '14', '330226', '330000,330200,330226', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3191', '3182', ',3133,3182,3191,', '3', 'yuyaoshi', '余姚市', '25', '330223', '330000,330200,330223', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3192', '3182', ',3133,3182,3192,', '3', 'cixishi', '慈溪市', '3', '330222', '330000,330200,330222', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3193', '3182', ',3133,3182,3193,', '3', 'fenghuashi', '奉化市', '6', '330224', '330000,330200,330224', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3194', '3133', ',3133,3194,', '2', 'zuozhoushi', '衢州市', '26', '330800', '330000,330800', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3195', '3194', ',3133,3194,3195,', '3', 'kechengqu', '柯城区', '11', '330802', '330000,330800,330802', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3196', '3194', ',3133,3194,3196,', '3', 'zuojiangqu', '衢江区', '26', '330803', '330000,330800,330803', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3197', '3194', ',3133,3194,3197,', '3', 'changshanxian', '常山县', '3', '330822', '330000,330800,330822', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3198', '3194', ',3133,3194,3198,', '3', 'kaihuaxian', '开化县', '11', '330824', '330000,330800,330824', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3199', '3194', ',3133,3194,3199,', '3', 'longyouxian', '龙游县', '12', '330825', '330000,330800,330825', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3200', '3194', ',3133,3194,3200,', '3', 'jiangshanshi', '江山市', '10', '330823', '330000,330800,330823', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3201', '3133', ',3133,3201,', '2', 'shaoxingshi', '绍兴市', '19', '330600', '330000,330600', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3202', '3201', ',3133,3201,3202,', '3', 'yuechengqu', '越城区', '25', '330602', '330000,330600,330602', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3203', '3201', ',3133,3201,3203,', '3', 'shaoxingxian', '绍兴县', '19', '330621', '330000,330600,330621', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3204', '3201', ',3133,3201,3204,', '3', 'xinchangxian', '新昌县', '24', '330624', '330000,330600,330624', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3205', '3201', ',3133,3201,3205,', '3', 'zhuzuoshi', '诸暨市', '26', '330625', '330000,330600,330625', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3206', '3201', ',3133,3201,3206,', '3', 'shangyushi', '上虞市', '19', '330622', '330000,330600,330622', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3207', '3201', ',3133,3201,3207,', '3', 'zuozhoushi', '嵊州市', '26', '330683', '330000,330600,330683', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3208', '3133', ',3133,3208,', '2', 'taizhoushi', '台州市', '20', '331000', '330000,331000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3209', '3208', ',3133,3208,3209,', '3', 'jiaojiangqu', '椒江区', '10', '331002', '330000,331000,331002', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3210', '3208', ',3133,3208,3210,', '3', 'huangyanqu', '黄岩区', '8', '331003', '330000,331000,331003', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3211', '3208', ',3133,3208,3211,', '3', 'luqiaoqu', '路桥区', '12', '331004', '330000,331000,331004', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3212', '3208', ',3133,3208,3212,', '3', 'yuhuanxian', '玉环县', '25', '331021', '330000,331000,331021', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3213', '3208', ',3133,3208,3213,', '3', 'sanmenxian', '三门县', '19', '331022', '330000,331000,331022', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3214', '3208', ',3133,3208,3214,', '3', 'tiantaixian', '天台县', '20', '331023', '330000,331000,331023', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3215', '3208', ',3133,3208,3215,', '3', 'xianjuxian', '仙居县', '24', '331024', '330000,331000,331024', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3216', '3208', ',3133,3208,3216,', '3', 'wenlingshi', '温岭市', '23', '331081', '330000,331000,331081', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3217', '3208', ',3133,3208,3217,', '3', 'linhaishi', '临海市', '12', '331082', '330000,331000,331082', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3218', '3133', ',3133,3218,', '2', 'wenzhoushi', '温州市', '23', '330300', '330000,330300', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3219', '3218', ',3133,3218,3219,', '3', 'luchengqu', '鹿城区', '12', '330302', '330000,330300,330302', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3220', '3218', ',3133,3218,3220,', '3', 'longwanqu', '龙湾区', '12', '330303', '330000,330300,330303', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3221', '3218', ',3133,3218,3221,', '3', 'zuohaiqu', '瓯海区', '26', '330304', '330000,330300,330304', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3222', '3218', ',3133,3218,3222,', '3', 'dongtouxian', '洞头县', '4', '330322', '330000,330300,330322', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3223', '3218', ',3133,3218,3223,', '3', 'yongjiaxian', '永嘉县', '25', '330324', '330000,330300,330324', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3224', '3218', ',3133,3218,3224,', '3', 'pingyangxian', '平阳县', '16', '330326', '330000,330300,330326', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3225', '3218', ',3133,3218,3225,', '3', 'cangnanxian', '苍南县', '3', '330327', '330000,330300,330327', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3226', '3218', ',3133,3218,3226,', '3', 'wenchengxian', '文成县', '23', '330328', '330000,330300,330328', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3227', '3218', ',3133,3218,3227,', '3', 'taishunxian', '泰顺县', '20', '330329', '330000,330300,330329', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3228', '3218', ',3133,3218,3228,', '3', 'ruianshi', '瑞安市', '18', '330325', '330000,330300,330325', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3229', '3218', ',3133,3218,3229,', '3', 'leqingshi', '乐清市', '12', '330323', '330000,330300,330323', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3230', '3133', ',3133,3230,', '2', 'zhoushanshi', '舟山市', '26', '330900', '330000,330900', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3231', '3230', ',3133,3230,3231,', '3', 'dinghaiqu', '定海区', '4', '330902', '330000,330900,330902', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3232', '3230', ',3133,3230,3232,', '3', 'putuoqu', '普陀区', '16', '330903', '330000,330900,330903', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3233', '3230', ',3133,3230,3233,', '3', 'zuoshanxian', '岱山县', '26', '330921', '330000,330900,330921', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3234', '3230', ',3133,3230,3234,', '3', 'zuozuoxian', '嵊泗县', '26', '330922', '330000,330900,330922', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3235', null, ',3235,', '1', 'xianggang', '香港', '24', '810000', '810000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3236', '3235', ',3235,3236,', '2', 'jiulong', '九龙', '10', '810200', '810000,810200', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3237', '3235', ',3235,3237,', '2', 'xianggangdao', '香港岛', '24', '810100', '810000,810100', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3238', '3235', ',3235,3238,', '2', 'xinjie', '新界', '24', '810300', '810000,810300', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3239', null, ',3239,', '1', 'aomen', '澳门', '1', '820000', '820000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3240', '3239', ',3239,3240,', '2', 'aomenbandao', '澳门半岛', '1', '820100', '820000,820100', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3241', '3239', ',3239,3241,', '2', 'lidao', '离岛', '12', '820200', '820000,820200', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3242', null, ',3242,', '1', 'taiwan', '台湾', '20', '710000', '710000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3243', '3242', ',3242,3243,', '2', 'taibeishi', '台北市', '20', '710100', '710000,710100', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3244', '3242', ',3242,3244,', '2', 'gaoxiongshi', '高雄市', '7', '710200', '710000,710200', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3245', '3242', ',3242,3245,', '2', 'gaoxiongxian', '高雄县', '7', '710300', '710000,710300', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3246', '3242', ',3242,3246,', '2', 'hualianxian', '花莲县', '8', '710400', '710000,710400', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3247', '3242', ',3242,3247,', '2', 'jilongshi', '基隆市', '10', '710500', '710000,710500', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3248', '3242', ',3242,3248,', '2', 'jiayishi', '嘉义市', '10', '710600', '710000,710600', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3249', '3242', ',3242,3249,', '2', 'jiayixian', '嘉义县', '10', '710700', '710000,710700', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3250', '3242', ',3242,3250,', '2', 'jinmenxian', '金门县', '10', '712400', '710000,712400', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3251', '3242', ',3242,3251,', '2', 'miaolixian', '苗栗县', '13', '710800', '710000,710800', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3252', '3242', ',3242,3252,', '2', 'nantouxian', '南投县', '14', '710900', '710000,710900', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3253', '3242', ',3242,3253,', '2', 'penghuxian', '澎湖县', '16', '711000', '710000,711000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3254', '3242', ',3242,3254,', '2', 'pingdongxian', '屏东县', '16', '711100', '710000,711100', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3255', '3242', ',3242,3255,', '2', 'taibeixian', '台北县', '20', '711200', '710000,711200', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3256', '3242', ',3242,3256,', '2', 'taidongxian', '台东县', '20', '711300', '710000,711300', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3257', '3242', ',3242,3257,', '2', 'tainanshi', '台南市', '20', '711400', '710000,711400', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3258', '3242', ',3242,3258,', '2', 'tainanxian', '台南县', '20', '711500', '710000,711500', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3259', '3242', ',3242,3259,', '2', 'taizhongshi', '台中市', '20', '711600', '710000,711600', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3260', '3242', ',3242,3260,', '2', 'taizhongxian', '台中县', '20', '711700', '710000,711700', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3261', '3242', ',3242,3261,', '2', 'taoyuanxian', '桃园县', '20', '711800', '710000,711800', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3262', '3242', ',3242,3262,', '2', 'xinzhushi', '新竹市', '24', '711900', '710000,711900', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3263', '3242', ',3242,3263,', '2', 'xinzhuxian', '新竹县', '24', '712000', '710000,712000', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3264', '3242', ',3242,3264,', '2', 'yilanxian', '宜兰县', '25', '712100', '710000,712100', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3265', '3242', ',3242,3265,', '2', 'yunlinxian', '云林县', '25', '712200', '710000,712200', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3266', '3242', ',3242,3266,', '2', 'zhanghuaxian', '彰化县', '26', '712300', '710000,712300', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3267', '441', ',423,441,3267,', '3', 'zhongtangzhen', '中堂镇', '26', '441929', '440000,441900,441929', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3268', '441', ',423,441,3268,', '3', 'dongkengzhen', '东坑镇', '4', '441918', '440000,441900,441918', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3269', '441', ',423,441,3269,', '3', 'daozhen', '道滘镇', '4', '441926', '440000,441900,441926', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3270', '441', ',423,441,3270,', '3', 'shatianzhen', '沙田镇', '19', '441925', '440000,441900,441925', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3271', '441', ',423,441,3271,', '3', 'gaozhen', '高埗镇', '7', '441930', '440000,441900,441930', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3272', '441', ',423,441,3272,', '3', 'shilongzhen', '石龙镇', '19', '441902', '440000,441900,441902', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3273', '441', ',423,441,3273,', '3', 'shipaizhen', '石排镇', '19', '441914', '440000,441900,441914', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3274', '441', ',423,441,3274,', '3', 'qishizhen', '企石镇', '17', '441915', '440000,441900,441915', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3275', '441', ',423,441,3275,', '3', 'shizuozhen', '石碣镇', '19', '441912', '440000,441900,441912', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3276', '441', ',423,441,3276,', '3', 'hongmeizhen', '洪梅镇', '8', '441927', '440000,441900,441927', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3277', '441', ',423,441,3277,', '3', 'mayongzhen', '麻涌镇', '13', '441928', '440000,441900,441928', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3278', '441', ',423,441,3278,', '3', 'qiaotouzhen', '桥头镇', '17', '441916', '440000,441900,441916', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3279', '441', ',423,441,3279,', '3', 'wangniudunzhen', '望牛墩镇', '23', '441933', '440000,441900,441933', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3280', '441', ',423,441,3280,', '3', 'chashanzhen', '茶山镇', '3', '441913', '440000,441900,441913', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3281', '441', ',423,441,3281,', '3', 'xiegangzhen', '谢岗镇', '24', '441917', '440000,441900,441917', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3282', '441', ',423,441,3282,', '3', 'songshanhu', '松山湖', '19', '441934', '440000,441900,441934', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3283', '441', ',423,441,3283,', '3', 'zuochengqu', '莞城区', '26', '441909', '440000,441900,441909', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3284', '441', ',423,441,3284,', '3', 'nanchengqu', '南城区', '14', '441922', '440000,441900,441922', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3285', '441', ',423,441,3285,', '3', 'changanzhen', '长安镇', '3', '441903', '440000,441900,441903', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3286', '441', ',423,441,3286,', '3', 'zuobuzhen', '寮步镇', '26', '441906', '440000,441900,441906', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3287', '441', ',423,441,3287,', '3', 'dalingshanzhen', '大岭山镇', '4', '441932', '440000,441900,441932', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3288', '441', ',423,441,3288,', '3', 'changpingzhen', '常平镇', '3', '441919', '440000,441900,441919', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3289', '441', ',423,441,3289,', '3', 'houjiezhen', '厚街镇', '8', '441924', '440000,441900,441924', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3290', '441', ',423,441,3290,', '3', 'wanjiangqu', '万江区', '23', '441910', '440000,441900,441910', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3291', '441', ',423,441,3291,', '3', 'zhangmutouzhen', '樟木头镇', '26', '441931', '440000,441900,441931', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3292', '441', ',423,441,3292,', '3', 'dalangzhen', '大朗镇', '4', '441920', '440000,441900,441920', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3293', '441', ',423,441,3293,', '3', 'tangxiazhen', '塘厦镇', '20', '441921', '440000,441900,441921', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3294', '441', ',423,441,3294,', '3', 'fenggangzhen', '凤岗镇', '6', '441923', '440000,441900,441923', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3295', '441', ',423,441,3295,', '3', 'qingxizhen', '清溪镇', '17', '441908', '440000,441900,441908', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3296', '441', ',423,441,3296,', '3', 'henglizhen', '横沥镇', '8', '441905', '440000,441900,441905', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3297', '441', ',423,441,3297,', '3', 'dongchengqu', '东城区', '4', '441911', '440000,441900,441911', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3298', '441', ',423,441,3298,', '3', 'huangjiangzhen', '黄江镇', '8', '441907', '440000,441900,441907', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3299', '441', ',423,441,3299,', '3', 'humenzhen', '虎门镇', '8', '441904', '440000,441900,441904', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3300', '561', ',423,561,3300,', '3', 'shizuojiedao', '石岐街道', '19', '442105', '440000,442000,442105', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3301', '561', ',423,561,3301,', '3', 'dongqujiedao', '东区街道', '4', '442101', '440000,442000,442101', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3302', '561', ',423,561,3302,', '3', 'xiqujiedao', '西区街道', '24', '442102', '440000,442000,442102', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3303', '561', ',423,561,3303,', '3', 'nanqujiedao', '南区街道', '14', '442103', '440000,442000,442103', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3304', '561', ',423,561,3304,', '3', 'wuguishanjiedao', '五桂山街道', '23', '442106', '440000,442000,442106', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3305', '561', ',423,561,3305,', '3', 'zhongshangangjiedao', '中山港街道', '26', '442104', '440000,442000,442104', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3306', '561', ',423,561,3306,', '3', 'huangpuzhen', '黄圃镇', '8', '442005', '440000,442000,442005', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3307', '561', ',423,561,3307,', '3', 'nantouzhen', '南头镇', '14', '442010', '440000,442000,442010', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3308', '561', ',423,561,3308,', '3', 'dongfengzhen', '东凤镇', '4', '442007', '440000,442000,442007', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3310', '561', ',423,561,3310,', '3', 'xiaozuozhen', '小榄镇', '24', '442002', '440000,442000,442002', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3311', '561', ',423,561,3311,', '3', 'dongshengzhen', '东升镇', '4', '442015', '440000,442000,442015', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3312', '561', ',423,561,3312,', '3', 'guzhenzhen', '古镇镇', '7', '442003', '440000,442000,442003', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3313', '561', ',423,561,3313,', '3', 'henglanzhen', '横栏镇', '8', '442008', '440000,442000,442008', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3314', '561', ',423,561,3314,', '3', 'sanjiaozhen', '三角镇', '19', '442009', '440000,442000,442009', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3315', '561', ',423,561,3315,', '3', 'minzhongzhen', '民众镇', '13', '442022', '440000,442000,442022', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3316', '561', ',423,561,3316,', '3', 'nanlangzhen', '南朗镇', '14', '442001', '440000,442000,442001', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3317', '561', ',423,561,3317,', '3', 'gangkouzhen', '港口镇', '7', '442018', '440000,442000,442018', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3318', '561', ',423,561,3318,', '3', 'dayongzhen', '大涌镇', '4', '442019', '440000,442000,442019', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3319', '561', ',423,561,3319,', '3', 'shaxizhen', '沙溪镇', '19', '442011', '440000,442000,442011', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3320', '561', ',423,561,3320,', '3', 'sanxiangzhen', '三乡镇', '19', '442006', '440000,442000,442006', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3321', '561', ',423,561,3321,', '3', 'banzuozhen', '板芙镇', '2', '442016', '440000,442000,442016', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3322', '561', ',423,561,3322,', '3', 'shenwanzhen', '神湾镇', '19', '442017', '440000,442000,442017', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3323', '561', ',423,561,3323,', '3', 'tanzhouzhen', '坦洲镇', '20', '442004', '440000,442000,442004', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3324', '524', ',423,524,3324,', '3', 'longhuaxinqu', '龙华新区', '12', '440309', '440000,440300,440309', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3325', '524', ',423,524,3325,', '3', 'guangmingxinqu', '光明新区', '7', '440310', '440000,440300,440310', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3326', '524', ',423,524,3326,', '3', 'pingshanxinqu', '坪山新区', '16', '440311', '440000,440300,440311', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3327', '524', ',423,524,3327,', '3', 'dapengxinqu', '大鹏新区', '4', '440312', '440000,440300,440312', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3328', '424', ',423,424,3328,', '3', 'shixiaqu', '市辖区', '19', '440101', '440000,440100,440101', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3329', '424', ',423,424,3329,', '3', 'dongshanqu', '东山区', '4', '440102', '440000,440100,440102', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3330', '441', ',423,441,3330,', '3', 'shixiaqu', '市辖区', '19', '441901', '440000,441900,441901', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3331', '442', ',423,442,3331,', '3', 'shixiaqu', '市辖区', '19', '440601', '440000,440600,440601', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3332', '524', ',423,524,3332,', '3', 'shixiaqu', '市辖区', '19', '440301', '440000,440300,440301', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3333', '455', ',423,455,3333,', '3', 'shixiaqu', '市辖区', '19', '441301', '440000,441300,441301', '0', '1', null, null, null);
INSERT INTO `lied_regions` VALUES ('3334', '424', ',423,424,3334,', '3', 'luogangqu', '萝岗区', '12', '440116', '440000,440100,440116', '0', '1', null, null, null);

-- ----------------------------
-- Table structure for `lied_regions_open`
-- ----------------------------
DROP TABLE IF EXISTS `lied_regions_open`;
CREATE TABLE `lied_regions_open` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `region_id` int(10) unsigned NOT NULL COMMENT '开通城市regions表id',
  `is_show` tinyint(1) unsigned DEFAULT '0' COMMENT '显示',
  `sort_order` int(4) unsigned DEFAULT NULL COMMENT '排序',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='城市开通表';

-- ----------------------------
-- Records of lied_regions_open
-- ----------------------------
INSERT INTO `lied_regions_open` VALUES ('1', '424', '1', '99', '2020-07-31 13:57:01', '2020-07-31 13:57:01', null);

-- ----------------------------
-- Table structure for `lied_roles`
-- ----------------------------
DROP TABLE IF EXISTS `lied_roles`;
CREATE TABLE `lied_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `guard_name` varchar(191) NOT NULL,
  `display_name` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lied_roles
-- ----------------------------

-- ----------------------------
-- Table structure for `lied_role_has_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `lied_role_has_permissions`;
CREATE TABLE `lied_role_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`permission_id`),
  KEY `role_has_permissions_permission_id_foreign` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lied_role_has_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `lied_settings`
-- ----------------------------
DROP TABLE IF EXISTS `lied_settings`;
CREATE TABLE `lied_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) NOT NULL,
  `value` varchar(191) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lied_settings
-- ----------------------------

-- ----------------------------
-- Table structure for `lied_stripe_accounts`
-- ----------------------------
DROP TABLE IF EXISTS `lied_stripe_accounts`;
CREATE TABLE `lied_stripe_accounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(191) NOT NULL,
  `card_id` varchar(191) DEFAULT NULL,
  `card_funding` varchar(191) DEFAULT NULL,
  `card_last_digits` varchar(191) DEFAULT NULL,
  `card_fingerprint` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lied_stripe_accounts
-- ----------------------------

-- ----------------------------
-- Table structure for `lied_users`
-- ----------------------------
DROP TABLE IF EXISTS `lied_users`;
CREATE TABLE `lied_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) DEFAULT NULL,
  `username` varchar(64) DEFAULT NULL COMMENT '用户名 登录用',
  `email` varchar(191) DEFAULT NULL,
  `mobile` varchar(11) NOT NULL,
  `password` varchar(191) DEFAULT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `gender` varchar(191) DEFAULT NULL,
  `birth` varchar(191) DEFAULT NULL,
  `device` varchar(191) DEFAULT NULL,
  `platform` varchar(191) DEFAULT NULL,
  `is_client` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `social_provider` varchar(191) DEFAULT NULL,
  `social_nickname` varchar(191) DEFAULT NULL,
  `social_id` varchar(191) DEFAULT NULL,
  `social_token` longtext,
  `social_token_secret` longtext,
  `social_refresh_token` longtext,
  `social_expires_in` varchar(191) DEFAULT NULL,
  `social_avatar` varchar(191) DEFAULT NULL,
  `social_avatar_original` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users-mobile-unique` (`mobile`) USING BTREE,
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users-username-unique` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lied_users
-- ----------------------------
INSERT INTO `lied_users` VALUES ('1', 'Super Admin', 'admin', 'admin@admin.com', '18825099087', '$2y$10$Tx5tEPD1sZzh5QCUoxrO/.SbQaYvBbpUNpqxdU/ZSMpK886.vfWQu', '0', null, null, null, null, '0', null, '2020-07-29 02:01:29', '2020-07-29 02:01:29', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `lied_users` VALUES ('9', null, null, null, '18825099088', null, '0', null, null, null, null, '1', null, '2020-08-13 15:34:13', '2020-08-13 15:34:13', null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `lied_users_collect`
-- ----------------------------
DROP TABLE IF EXISTS `lied_users_collect`;
CREATE TABLE `lied_users_collect` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL COMMENT '用户id',
  `type` tinyint(1) unsigned NOT NULL COMMENT '收藏类型 0-商品 1-文章 2-商家',
  `id_value` int(10) unsigned NOT NULL COMMENT '所属类型的id',
  `is_attention` tinyint(1) unsigned DEFAULT '0' COMMENT '是否关注该收藏品0-现未关注 1-已关注',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户收藏表';

-- ----------------------------
-- Records of lied_users_collect
-- ----------------------------

-- ----------------------------
-- Table structure for `lied_users_comment`
-- ----------------------------
DROP TABLE IF EXISTS `lied_users_comment`;
CREATE TABLE `lied_users_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL COMMENT '评论的父节点',
  `type` tinyint(3) unsigned NOT NULL COMMENT '类型 0-产品 1-文章',
  `id_value` int(10) unsigned NOT NULL COMMENT '所属类型表的id',
  `user_id` int(10) unsigned NOT NULL COMMENT '用户id',
  `content` text NOT NULL COMMENT '评论内容',
  `rank` tinyint(1) unsigned NOT NULL COMMENT '评论的星星数 1~5星',
  `is_show` tinyint(1) unsigned NOT NULL COMMENT '是否显示',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户评论表';

-- ----------------------------
-- Records of lied_users_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `lied_users_coupon`
-- ----------------------------
DROP TABLE IF EXISTS `lied_users_coupon`;
CREATE TABLE `lied_users_coupon` (
  `id` int(10) unsigned NOT NULL,
  `coupon_id` int(10) unsigned NOT NULL COMMENT '优惠券id',
  `coupon_limit_id` int(10) unsigned NOT NULL COMMENT '优惠券限领取表id',
  `user_id` int(10) unsigned NOT NULL COMMENT '用户id',
  `use_time` datetime DEFAULT NULL COMMENT '使用时间',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `users_coupon-coupon_id` (`coupon_id`),
  CONSTRAINT `users_coupon-coupon_id` FOREIGN KEY (`coupon_id`) REFERENCES `lied_coupons` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户优惠券表';

-- ----------------------------
-- Records of lied_users_coupon
-- ----------------------------

-- ----------------------------
-- Table structure for `lied_users_oauth`
-- ----------------------------
DROP TABLE IF EXISTS `lied_users_oauth`;
CREATE TABLE `lied_users_oauth` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT '0',
  `unionid` varchar(128) DEFAULT '0' COMMENT '多公众号下联合id',
  `openid` varchar(128) NOT NULL COMMENT '唯一授权id',
  `sex` tinyint(1) unsigned DEFAULT '0' COMMENT '性别1-男 2-女',
  `name` varchar(64) DEFAULT '0' COMMENT '姓名',
  `thumb` int(10) unsigned DEFAULT '0' COMMENT '图片id',
  `type` tinyint(1) unsigned NOT NULL COMMENT '授权类型1-wechat',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lied_users_oauth
-- ----------------------------

-- ----------------------------
-- Table structure for `lied_verify_code`
-- ----------------------------
DROP TABLE IF EXISTS `lied_verify_code`;
CREATE TABLE `lied_verify_code` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account` varchar(32) NOT NULL COMMENT '账户',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '类型 0-手机 1-邮箱',
  `code` char(6) NOT NULL COMMENT '验证码',
  `using_type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '使用类型 0-登录 1-注册',
  `repeat_num` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '重复次数',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `verify_code-mobile-normal` (`account`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lied_verify_code
-- ----------------------------
INSERT INTO `lied_verify_code` VALUES ('35', '18825099087', '0', '854216', '0', '2', '2020-08-20 17:50:55', '2020-08-20 17:50:55', '2020-08-20 17:51:11');
