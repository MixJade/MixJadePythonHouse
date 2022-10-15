/*
Navicat MySQL Data Transfer

Source Server         : 天下无双
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : shixun0515

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2022-09-24 10:58:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `yqqg0529`
-- ----------------------------
DROP TABLE IF EXISTS `yqqg0529`;
CREATE TABLE `yqqg0529` (
  `时间` varchar(255) NOT NULL DEFAULT '',
  `现存确诊` int(11) DEFAULT NULL,
  `累计确诊` int(11) DEFAULT NULL,
  `累计死亡` int(11) DEFAULT NULL,
  `累计治愈` int(11) DEFAULT NULL,
  PRIMARY KEY (`时间`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yqqg0529
-- ----------------------------
INSERT INTO `yqqg0529` VALUES ('2022-05-29', '2063075', '2372052', '16513', '292464');
INSERT INTO `yqqg0529` VALUES ('2022-05-30', '2139341', '2448692', '16658', '292693');
INSERT INTO `yqqg0529` VALUES ('2022-05-31', '2199098', '2508868', '16769', '293001');
INSERT INTO `yqqg0529` VALUES ('2022-06-01', '2279430', '2589598', '16859', '293309');
INSERT INTO `yqqg0529` VALUES ('2022-06-02', '2367556', '2677846', '16981', '293309');
INSERT INTO `yqqg0529` VALUES ('2022-09-09', '5871745', '6223835', '25171', '326919');
INSERT INTO `yqqg0529` VALUES ('2022-09-10', '5906755', '6259503', '25237', '327511');
INSERT INTO `yqqg0529` VALUES ('2022-09-19', '6265870', '6626392', '25671', '334851');
INSERT INTO `yqqg0529` VALUES ('2022-09-23', '6468689', '6832041', '25909', '337443');
INSERT INTO `yqqg0529` VALUES ('2022-09-24', '6469753', '6833790', '26074', '337963');
