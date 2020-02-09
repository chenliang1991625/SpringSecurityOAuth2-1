/*
Navicat MySQL Data Transfer

Source Server         : firstDataBase
Source Server Version : 50725
Source Host           : localhost:3306
Source Database       : springcloud-security-autho2

Target Server Type    : MYSQL
Target Server Version : 50725
File Encoding         : 65001

Date: 2020-02-09 18:22:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for oauth_client_details
-- ----------------------------
DROP TABLE IF EXISTS `oauth_client_details`;
CREATE TABLE `oauth_client_details` (
  `client_id` varchar(255) NOT NULL COMMENT '客户端标 识',
  `resource_ids` varchar(255) DEFAULT NULL COMMENT '接入资源列表',
  `client_secret` varchar(255) DEFAULT NULL COMMENT '客户端秘钥',
  `scope` varchar(255) DEFAULT NULL,
  `authorized_grant_types` varchar(255) DEFAULT NULL,
  `web_server_redirect_uri` varchar(255) DEFAULT NULL,
  `authorities` varchar(255) DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additional_information` longtext,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `archived` tinyint(4) DEFAULT NULL,
  `trusted` tinyint(4) DEFAULT NULL,
  `autoapprove` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`client_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='接入客户端信息';

-- ----------------------------
-- Records of oauth_client_details
-- ----------------------------
INSERT INTO `oauth_client_details` VALUES ('c1', 'res1', '$2a$10$Jti4ZDkWNPW7Hlt08MAVk.PzC40alUTyG3PGovjQUJX.qAWy3c3Fi', 'ROLE_ADMIN,ROLE_USER,ROLE_API,ALL', 'client_credentials,password,authorization_code,implicit,refresh_token', 'http://www.baidu.com', null, '7200', '259200', null, '2020-02-07 10:31:58', '0', '0', '0');
INSERT INTO `oauth_client_details` VALUES ('c2', 'res2', '$2a$10$Jti4ZDkWNPW7Hlt08MAVk.PzC40alUTyG3PGovjQUJX.qAWy3c3Fi', 'ROLE_API', 'client_credentials,password,authorization_code,implicit,refresh_token', 'http://www.baidu.com', null, '31536000', '2592000', null, '2020-02-07 10:33:26', '0', '0', '0');
