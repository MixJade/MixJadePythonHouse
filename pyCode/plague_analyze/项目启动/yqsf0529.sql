/*
Navicat MySQL Data Transfer

Source Server         : 天下无双
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : shixun0515

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2022-09-24 10:57:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `yqsf0529`
-- ----------------------------
DROP TABLE IF EXISTS `yqsf0529`;
CREATE TABLE `yqsf0529` (
  `序列` int(255) NOT NULL DEFAULT '0',
  `时间` date NOT NULL DEFAULT '0000-00-00',
  `省份名称` varchar(255) DEFAULT NULL,
  `现存确诊` int(255) DEFAULT NULL,
  `累计确诊` int(255) DEFAULT NULL,
  `治愈人数` int(255) DEFAULT NULL,
  `死亡人数` int(255) DEFAULT NULL,
  PRIMARY KEY (`序列`,`时间`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yqsf0529
-- ----------------------------
INSERT INTO `yqsf0529` VALUES ('0', '2022-05-29', '台湾', '1800050', '1815703', '13742', '1911');
INSERT INTO `yqsf0529` VALUES ('0', '2022-05-30', '台湾', '1876474', '1892272', '13742', '2056');
INSERT INTO `yqsf0529` VALUES ('0', '2022-05-31', '台湾', '1936448', '1952355', '13742', '2165');
INSERT INTO `yqsf0529` VALUES ('0', '2022-06-01', '台湾', '2016986', '2032983', '13742', '2255');
INSERT INTO `yqsf0529` VALUES ('0', '2022-06-02', '台湾', '2105112', '2121231', '13742', '2377');
INSERT INTO `yqsf0529` VALUES ('0', '2022-09-09', '台湾', '5556115', '5580027', '13742', '10170');
INSERT INTO `yqsf0529` VALUES ('0', '2022-09-10', '台湾', '5590260', '5614227', '13742', '10225');
INSERT INTO `yqsf0529` VALUES ('0', '2022-09-19', '台湾', '5946148', '5970438', '13742', '10548');
INSERT INTO `yqsf0529` VALUES ('0', '2022-09-23', '台湾', '6148284', '6172769', '13742', '10743');
INSERT INTO `yqsf0529` VALUES ('0', '2022-09-24', '台湾', '6148284', '6172769', '13742', '10743');
INSERT INTO `yqsf0529` VALUES ('1', '2022-05-29', '香港', '260712', '332251', '62163', '9376');
INSERT INTO `yqsf0529` VALUES ('1', '2022-05-30', '香港', '260738', '332288', '62174', '9376');
INSERT INTO `yqsf0529` VALUES ('1', '2022-05-31', '香港', '260757', '332335', '62200', '9378');
INSERT INTO `yqsf0529` VALUES ('1', '2022-06-01', '香港', '260765', '332398', '62255', '9378');
INSERT INTO `yqsf0529` VALUES ('1', '2022-06-02', '香港', '260765', '332398', '62255', '9378');
INSERT INTO `yqsf0529` VALUES ('1', '2022-09-09', '香港', '309354', '396687', '77564', '9769');
INSERT INTO `yqsf0529` VALUES ('1', '2022-09-10', '香港', '310212', '397913', '77921', '9780');
INSERT INTO `yqsf0529` VALUES ('1', '2022-09-19', '香港', '316022', '406835', '80922', '9891');
INSERT INTO `yqsf0529` VALUES ('1', '2022-09-23', '香港', '317291', '409495', '82270', '9934');
INSERT INTO `yqsf0529` VALUES ('1', '2022-09-24', '香港', '318374', '411056', '82583', '10099');
INSERT INTO `yqsf0529` VALUES ('2', '2022-05-29', '上海', '1024', '62984', '61365', '595');
INSERT INTO `yqsf0529` VALUES ('2', '2022-05-30', '上海', '908', '62990', '61487', '595');
INSERT INTO `yqsf0529` VALUES ('2', '2022-05-31', '上海', '732', '63003', '61676', '595');
INSERT INTO `yqsf0529` VALUES ('2', '2022-06-01', '上海', '637', '63009', '61777', '595');
INSERT INTO `yqsf0529` VALUES ('2', '2022-06-02', '上海', '637', '63009', '61777', '595');
INSERT INTO `yqsf0529` VALUES ('2', '2022-09-09', '海南', '2142', '8942', '6794', '6');
INSERT INTO `yqsf0529` VALUES ('2', '2022-09-10', '海南', '2142', '8942', '6794', '6');
INSERT INTO `yqsf0529` VALUES ('2', '2022-09-19', '四川', '1239', '5234', '3992', '3');
INSERT INTO `yqsf0529` VALUES ('2', '2022-09-23', '四川', '989', '5391', '4399', '3');
INSERT INTO `yqsf0529` VALUES ('2', '2022-09-24', '四川', '978', '5443', '4462', '3');
INSERT INTO `yqsf0529` VALUES ('3', '2022-05-29', '北京', '535', '3344', '2800', '9');
INSERT INTO `yqsf0529` VALUES ('3', '2022-05-30', '北京', '493', '3352', '2850', '9');
INSERT INTO `yqsf0529` VALUES ('3', '2022-05-31', '北京', '472', '3368', '2887', '9');
INSERT INTO `yqsf0529` VALUES ('3', '2022-06-01', '北京', '446', '3382', '2927', '9');
INSERT INTO `yqsf0529` VALUES ('3', '2022-06-02', '北京', '446', '3382', '2927', '9');
INSERT INTO `yqsf0529` VALUES ('3', '2022-09-09', '四川', '1352', '4455', '3100', '3');
INSERT INTO `yqsf0529` VALUES ('3', '2022-09-10', '四川', '1311', '4544', '3230', '3');
INSERT INTO `yqsf0529` VALUES ('3', '2022-09-19', '海南', '521', '8952', '8425', '6');
INSERT INTO `yqsf0529` VALUES ('3', '2022-09-23', '海南', '351', '8954', '8597', '6');
INSERT INTO `yqsf0529` VALUES ('3', '2022-09-24', '海南', '342', '8955', '8607', '6');
INSERT INTO `yqsf0529` VALUES ('4', '2022-05-29', '四川', '225', '2329', '2101', '3');
INSERT INTO `yqsf0529` VALUES ('4', '2022-05-30', '四川', '215', '2330', '2112', '3');
INSERT INTO `yqsf0529` VALUES ('4', '2022-05-31', '四川', '207', '2332', '2122', '3');
INSERT INTO `yqsf0529` VALUES ('4', '2022-06-01', '四川', '189', '2334', '2142', '3');
INSERT INTO `yqsf0529` VALUES ('4', '2022-06-02', '四川', '189', '2334', '2142', '3');
INSERT INTO `yqsf0529` VALUES ('4', '2022-09-09', '广东', '696', '9559', '8855', '8');
INSERT INTO `yqsf0529` VALUES ('4', '2022-09-10', '广东', '712', '9608', '8888', '8');
INSERT INTO `yqsf0529` VALUES ('4', '2022-09-19', '广东', '395', '9783', '9380', '8');
INSERT INTO `yqsf0529` VALUES ('4', '2022-09-23', '贵州', '272', '492', '218', '2');
INSERT INTO `yqsf0529` VALUES ('4', '2022-09-24', '贵州', '301', '524', '221', '2');
INSERT INTO `yqsf0529` VALUES ('5', '2022-05-29', '天津', '123', '1969', '1843', '3');
INSERT INTO `yqsf0529` VALUES ('5', '2022-05-30', '天津', '122', '1975', '1850', '3');
INSERT INTO `yqsf0529` VALUES ('5', '2022-05-31', '天津', '114', '1975', '1858', '3');
INSERT INTO `yqsf0529` VALUES ('5', '2022-06-01', '天津', '84', '1975', '1888', '3');
INSERT INTO `yqsf0529` VALUES ('5', '2022-06-02', '天津', '84', '1975', '1888', '3');
INSERT INTO `yqsf0529` VALUES ('5', '2022-09-09', '西藏', '654', '1159', '505', '0');
INSERT INTO `yqsf0529` VALUES ('5', '2022-09-10', '西藏', '654', '1159', '505', '0');
INSERT INTO `yqsf0529` VALUES ('5', '2022-09-19', '内蒙古', '252', '2748', '2495', '1');
INSERT INTO `yqsf0529` VALUES ('5', '2022-09-23', '广东', '248', '9843', '9587', '8');
INSERT INTO `yqsf0529` VALUES ('5', '2022-09-24', '内蒙古', '242', '2759', '2516', '1');
INSERT INTO `yqsf0529` VALUES ('6', '2022-05-29', '河南', '105', '3180', '3053', '22');
INSERT INTO `yqsf0529` VALUES ('6', '2022-05-30', '河南', '98', '3180', '3060', '22');
INSERT INTO `yqsf0529` VALUES ('6', '2022-05-31', '福建', '96', '3255', '3158', '1');
INSERT INTO `yqsf0529` VALUES ('6', '2022-06-01', '福建', '83', '3262', '3178', '1');
INSERT INTO `yqsf0529` VALUES ('6', '2022-06-02', '福建', '83', '3262', '3178', '1');
INSERT INTO `yqsf0529` VALUES ('6', '2022-09-09', '内蒙古', '259', '2637', '2377', '1');
INSERT INTO `yqsf0529` VALUES ('6', '2022-09-10', '内蒙古', '291', '2670', '2378', '1');
INSERT INTO `yqsf0529` VALUES ('6', '2022-09-19', '西藏', '221', '1266', '1045', '0');
INSERT INTO `yqsf0529` VALUES ('6', '2022-09-23', '内蒙古', '241', '2755', '2513', '1');
INSERT INTO `yqsf0529` VALUES ('6', '2022-09-24', '广东', '236', '9863', '9619', '8');
INSERT INTO `yqsf0529` VALUES ('7', '2022-05-29', '福建', '102', '3247', '3144', '1');
INSERT INTO `yqsf0529` VALUES ('7', '2022-05-30', '福建', '96', '3251', '3154', '1');
INSERT INTO `yqsf0529` VALUES ('7', '2022-05-31', '河南', '83', '3180', '3075', '22');
INSERT INTO `yqsf0529` VALUES ('7', '2022-06-01', '河南', '74', '3182', '3086', '22');
INSERT INTO `yqsf0529` VALUES ('7', '2022-06-02', '河南', '74', '3182', '3086', '22');
INSERT INTO `yqsf0529` VALUES ('7', '2022-09-09', '黑龙江', '141', '3220', '3066', '13');
INSERT INTO `yqsf0529` VALUES ('7', '2022-09-10', '黑龙江', '132', '3222', '3077', '13');
INSERT INTO `yqsf0529` VALUES ('7', '2022-09-19', '福建', '127', '4262', '4134', '1');
INSERT INTO `yqsf0529` VALUES ('7', '2022-09-23', '西藏', '185', '1317', '1132', '0');
INSERT INTO `yqsf0529` VALUES ('7', '2022-09-24', '西藏', '190', '1328', '1138', '0');
INSERT INTO `yqsf0529` VALUES ('8', '2022-05-29', '吉林', '66', '40292', '40221', '5');
INSERT INTO `yqsf0529` VALUES ('8', '2022-05-30', '吉林', '66', '40292', '40221', '5');
INSERT INTO `yqsf0529` VALUES ('8', '2022-05-31', '吉林', '59', '40293', '40229', '5');
INSERT INTO `yqsf0529` VALUES ('8', '2022-06-01', '吉林', '47', '40293', '40241', '5');
INSERT INTO `yqsf0529` VALUES ('8', '2022-06-02', '吉林', '47', '40293', '40241', '5');
INSERT INTO `yqsf0529` VALUES ('8', '2022-09-09', '福建', '127', '4161', '4033', '1');
INSERT INTO `yqsf0529` VALUES ('8', '2022-09-10', '福建', '125', '4168', '4042', '1');
INSERT INTO `yqsf0529` VALUES ('8', '2022-09-19', '北京', '123', '4160', '4028', '9');
INSERT INTO `yqsf0529` VALUES ('8', '2022-09-23', '福建', '112', '4291', '4178', '1');
INSERT INTO `yqsf0529` VALUES ('8', '2022-09-24', '福建', '109', '4296', '4186', '1');
INSERT INTO `yqsf0529` VALUES ('9', '2022-05-29', '广东', '47', '7292', '7237', '8');
INSERT INTO `yqsf0529` VALUES ('9', '2022-05-30', '广东', '46', '7296', '7242', '8');
INSERT INTO `yqsf0529` VALUES ('9', '2022-05-31', '广东', '45', '7300', '7247', '8');
INSERT INTO `yqsf0529` VALUES ('9', '2022-06-01', '广东', '36', '7303', '7259', '8');
INSERT INTO `yqsf0529` VALUES ('9', '2022-06-02', '广东', '36', '7303', '7259', '8');
INSERT INTO `yqsf0529` VALUES ('9', '2022-09-09', '陕西', '103', '3710', '3604', '3');
INSERT INTO `yqsf0529` VALUES ('9', '2022-09-10', '北京', '99', '4077', '3969', '9');
INSERT INTO `yqsf0529` VALUES ('9', '2022-09-19', '上海', '107', '64016', '63314', '595');
INSERT INTO `yqsf0529` VALUES ('9', '2022-09-23', '北京', '107', '4184', '4068', '9');
INSERT INTO `yqsf0529` VALUES ('9', '2022-09-24', '上海', '106', '64068', '63367', '595');
INSERT INTO `yqsf0529` VALUES ('10', '2022-05-29', '浙江', '22', '3136', '3113', '1');
INSERT INTO `yqsf0529` VALUES ('10', '2022-05-30', '浙江', '23', '3137', '3113', '1');
INSERT INTO `yqsf0529` VALUES ('10', '2022-05-31', '浙江', '23', '3137', '3113', '1');
INSERT INTO `yqsf0529` VALUES ('10', '2022-06-01', '浙江', '20', '3137', '3116', '1');
INSERT INTO `yqsf0529` VALUES ('10', '2022-06-02', '浙江', '20', '3137', '3116', '1');
INSERT INTO `yqsf0529` VALUES ('10', '2022-09-09', '天津', '93', '2237', '2141', '3');
INSERT INTO `yqsf0529` VALUES ('10', '2022-09-10', '山东', '95', '3027', '2925', '7');
INSERT INTO `yqsf0529` VALUES ('10', '2022-09-19', '贵州', '102', '309', '205', '2');
INSERT INTO `yqsf0529` VALUES ('10', '2022-09-23', '上海', '106', '64053', '63352', '595');
INSERT INTO `yqsf0529` VALUES ('10', '2022-09-24', '天津', '102', '2314', '2209', '3');
INSERT INTO `yqsf0529` VALUES ('11', '2022-05-29', '江苏', '18', '2235', '2217', '0');
INSERT INTO `yqsf0529` VALUES ('11', '2022-05-30', '江苏', '17', '2235', '2218', '0');
INSERT INTO `yqsf0529` VALUES ('11', '2022-05-31', '云南', '16', '2148', '2130', '2');
INSERT INTO `yqsf0529` VALUES ('11', '2022-06-01', '云南', '17', '2149', '2130', '2');
INSERT INTO `yqsf0529` VALUES ('11', '2022-06-02', '云南', '17', '2149', '2130', '2');
INSERT INTO `yqsf0529` VALUES ('11', '2022-09-09', '上海', '88', '63906', '63223', '595');
INSERT INTO `yqsf0529` VALUES ('11', '2022-09-10', '上海', '90', '63913', '63228', '595');
INSERT INTO `yqsf0529` VALUES ('11', '2022-09-19', '山东', '99', '3078', '2972', '7');
INSERT INTO `yqsf0529` VALUES ('11', '2022-09-23', '天津', '99', '2308', '2206', '3');
INSERT INTO `yqsf0529` VALUES ('11', '2022-09-24', '北京', '89', '4186', '4088', '9');
INSERT INTO `yqsf0529` VALUES ('12', '2022-05-29', '云南', '13', '2143', '2128', '2');
INSERT INTO `yqsf0529` VALUES ('12', '2022-05-30', '云南', '15', '2145', '2128', '2');
INSERT INTO `yqsf0529` VALUES ('12', '2022-05-31', '广西', '15', '1632', '1615', '2');
INSERT INTO `yqsf0529` VALUES ('12', '2022-06-01', '广西', '15', '1634', '1617', '2');
INSERT INTO `yqsf0529` VALUES ('12', '2022-06-02', '广西', '15', '1634', '1617', '2');
INSERT INTO `yqsf0529` VALUES ('12', '2022-09-09', '山东', '88', '3014', '2919', '7');
INSERT INTO `yqsf0529` VALUES ('12', '2022-09-10', '天津', '90', '2242', '2149', '3');
INSERT INTO `yqsf0529` VALUES ('12', '2022-09-19', '天津', '99', '2298', '2196', '3');
INSERT INTO `yqsf0529` VALUES ('12', '2022-09-23', '山东', '71', '3083', '3005', '7');
INSERT INTO `yqsf0529` VALUES ('12', '2022-09-24', '黑龙江', '87', '3307', '3207', '13');
INSERT INTO `yqsf0529` VALUES ('13', '2022-05-29', '广西', '13', '1627', '1612', '2');
INSERT INTO `yqsf0529` VALUES ('13', '2022-05-30', '广西', '13', '1629', '1614', '2');
INSERT INTO `yqsf0529` VALUES ('13', '2022-05-31', '江苏', '14', '2235', '2221', '0');
INSERT INTO `yqsf0529` VALUES ('13', '2022-06-01', '江苏', '14', '2235', '2221', '0');
INSERT INTO `yqsf0529` VALUES ('13', '2022-06-02', '江苏', '14', '2235', '2221', '0');
INSERT INTO `yqsf0529` VALUES ('13', '2022-09-09', '辽宁', '86', '1864', '1776', '2');
INSERT INTO `yqsf0529` VALUES ('13', '2022-09-10', '陕西', '88', '3712', '3621', '3');
INSERT INTO `yqsf0529` VALUES ('13', '2022-09-19', '广西', '68', '2328', '2258', '2');
INSERT INTO `yqsf0529` VALUES ('13', '2022-09-23', '黑龙江', '67', '3285', '3205', '13');
INSERT INTO `yqsf0529` VALUES ('13', '2022-09-24', '山东', '67', '3083', '3009', '7');
INSERT INTO `yqsf0529` VALUES ('14', '2022-05-29', '陕西', '5', '3283', '3275', '3');
INSERT INTO `yqsf0529` VALUES ('14', '2022-05-30', '陕西', '5', '3283', '3275', '3');
INSERT INTO `yqsf0529` VALUES ('14', '2022-05-31', '陕西', '5', '3283', '3275', '3');
INSERT INTO `yqsf0529` VALUES ('14', '2022-06-01', '陕西', '5', '3283', '3275', '3');
INSERT INTO `yqsf0529` VALUES ('14', '2022-06-02', '陕西', '5', '3283', '3275', '3');
INSERT INTO `yqsf0529` VALUES ('14', '2022-09-09', '北京', '85', '4059', '3965', '9');
INSERT INTO `yqsf0529` VALUES ('14', '2022-09-10', '辽宁', '87', '1867', '1778', '2');
INSERT INTO `yqsf0529` VALUES ('14', '2022-09-19', '辽宁', '54', '1883', '1827', '2');
INSERT INTO `yqsf0529` VALUES ('14', '2022-09-23', '云南', '54', '2367', '2311', '2');
INSERT INTO `yqsf0529` VALUES ('14', '2022-09-24', '云南', '57', '2374', '2315', '2');
INSERT INTO `yqsf0529` VALUES ('15', '2022-05-29', '辽宁', '5', '1675', '1668', '2');
INSERT INTO `yqsf0529` VALUES ('15', '2022-05-30', '重庆', '3', '711', '702', '6');
INSERT INTO `yqsf0529` VALUES ('15', '2022-05-31', '重庆', '3', '711', '702', '6');
INSERT INTO `yqsf0529` VALUES ('15', '2022-06-01', '重庆', '3', '712', '703', '6');
INSERT INTO `yqsf0529` VALUES ('15', '2022-06-02', '重庆', '3', '712', '703', '6');
INSERT INTO `yqsf0529` VALUES ('15', '2022-09-09', '河南', '44', '3307', '3241', '22');
INSERT INTO `yqsf0529` VALUES ('15', '2022-09-10', '河南', '44', '3307', '3241', '22');
INSERT INTO `yqsf0529` VALUES ('15', '2022-09-19', '黑龙江', '53', '3246', '3180', '13');
INSERT INTO `yqsf0529` VALUES ('15', '2022-09-23', '广西', '34', '2328', '2292', '2');
INSERT INTO `yqsf0529` VALUES ('15', '2022-09-24', '陕西', '26', '3726', '3697', '3');
INSERT INTO `yqsf0529` VALUES ('16', '2022-05-29', '重庆', '3', '711', '702', '6');
INSERT INTO `yqsf0529` VALUES ('16', '2022-05-30', '山东', '2', '2735', '2726', '7');
INSERT INTO `yqsf0529` VALUES ('16', '2022-05-31', '山东', '2', '2735', '2726', '7');
INSERT INTO `yqsf0529` VALUES ('16', '2022-06-01', '辽宁', '2', '1675', '1671', '2');
INSERT INTO `yqsf0529` VALUES ('16', '2022-06-02', '辽宁', '2', '1675', '1671', '2');
INSERT INTO `yqsf0529` VALUES ('16', '2022-09-09', '吉林', '36', '40329', '40288', '5');
INSERT INTO `yqsf0529` VALUES ('16', '2022-09-10', '重庆', '36', '1008', '966', '6');
INSERT INTO `yqsf0529` VALUES ('16', '2022-09-19', '陕西', '44', '3721', '3674', '3');
INSERT INTO `yqsf0529` VALUES ('16', '2022-09-23', '陕西', '32', '3724', '3689', '3');
INSERT INTO `yqsf0529` VALUES ('16', '2022-09-24', '辽宁', '25', '1888', '1861', '2');
INSERT INTO `yqsf0529` VALUES ('17', '2022-05-29', '山东', '2', '2735', '2726', '7');
INSERT INTO `yqsf0529` VALUES ('17', '2022-05-30', '辽宁', '2', '1675', '1671', '2');
INSERT INTO `yqsf0529` VALUES ('17', '2022-05-31', '辽宁', '2', '1675', '1671', '2');
INSERT INTO `yqsf0529` VALUES ('17', '2022-06-01', '湖北', '1', '68399', '63886', '4512');
INSERT INTO `yqsf0529` VALUES ('17', '2022-06-02', '湖北', '1', '68399', '63886', '4512');
INSERT INTO `yqsf0529` VALUES ('17', '2022-09-09', '重庆', '36', '1008', '966', '6');
INSERT INTO `yqsf0529` VALUES ('17', '2022-09-10', '吉林', '35', '40329', '40289', '5');
INSERT INTO `yqsf0529` VALUES ('17', '2022-09-19', '云南', '39', '2342', '2301', '2');
INSERT INTO `yqsf0529` VALUES ('17', '2022-09-23', '辽宁', '31', '1885', '1852', '2');
INSERT INTO `yqsf0529` VALUES ('17', '2022-09-24', '广西', '24', '2328', '2302', '2');
INSERT INTO `yqsf0529` VALUES ('18', '2022-05-29', '湖北', '1', '68399', '63886', '4512');
INSERT INTO `yqsf0529` VALUES ('18', '2022-05-30', '湖北', '1', '68399', '63886', '4512');
INSERT INTO `yqsf0529` VALUES ('18', '2022-05-31', '湖北', '1', '68399', '63886', '4512');
INSERT INTO `yqsf0529` VALUES ('18', '2022-06-01', '黑龙江', '1', '2984', '2970', '13');
INSERT INTO `yqsf0529` VALUES ('18', '2022-06-02', '黑龙江', '1', '2984', '2970', '13');
INSERT INTO `yqsf0529` VALUES ('18', '2022-09-09', '青海', '34', '227', '193', '0');
INSERT INTO `yqsf0529` VALUES ('18', '2022-09-10', '云南', '35', '2310', '2273', '2');
INSERT INTO `yqsf0529` VALUES ('18', '2022-09-19', '吉林', '29', '40329', '40295', '5');
INSERT INTO `yqsf0529` VALUES ('18', '2022-09-23', '吉林', '22', '40329', '40302', '5');
INSERT INTO `yqsf0529` VALUES ('18', '2022-09-24', '吉林', '20', '40329', '40304', '5');
INSERT INTO `yqsf0529` VALUES ('19', '2022-05-29', '黑龙江', '1', '2984', '2970', '13');
INSERT INTO `yqsf0529` VALUES ('19', '2022-05-30', '黑龙江', '1', '2984', '2970', '13');
INSERT INTO `yqsf0529` VALUES ('19', '2022-05-31', '黑龙江', '1', '2984', '2970', '13');
INSERT INTO `yqsf0529` VALUES ('19', '2022-06-01', '山东', '1', '2735', '2727', '7');
INSERT INTO `yqsf0529` VALUES ('19', '2022-06-02', '山东', '1', '2735', '2727', '7');
INSERT INTO `yqsf0529` VALUES ('19', '2022-09-09', '广西', '33', '2285', '2250', '2');
INSERT INTO `yqsf0529` VALUES ('19', '2022-09-10', '青海', '34', '227', '193', '0');
INSERT INTO `yqsf0529` VALUES ('19', '2022-09-19', '重庆', '20', '1026', '1000', '6');
INSERT INTO `yqsf0529` VALUES ('19', '2022-09-23', '重庆', '15', '1030', '1009', '6');
INSERT INTO `yqsf0529` VALUES ('19', '2022-09-24', '重庆', '16', '1031', '1009', '6');
INSERT INTO `yqsf0529` VALUES ('20', '2022-05-29', '湖南', '1', '1393', '1388', '4');
INSERT INTO `yqsf0529` VALUES ('20', '2022-05-30', '湖南', '1', '1393', '1388', '4');
INSERT INTO `yqsf0529` VALUES ('20', '2022-05-31', '湖南', '1', '1393', '1388', '4');
INSERT INTO `yqsf0529` VALUES ('20', '2022-06-01', '河北', '1', '2005', '1997', '7');
INSERT INTO `yqsf0529` VALUES ('20', '2022-06-02', '河北', '1', '2005', '1997', '7');
INSERT INTO `yqsf0529` VALUES ('20', '2022-09-09', '云南', '30', '2304', '2272', '2');
INSERT INTO `yqsf0529` VALUES ('20', '2022-09-10', '广西', '33', '2285', '2250', '2');
INSERT INTO `yqsf0529` VALUES ('20', '2022-09-19', '江苏', '17', '2378', '2361', '0');
INSERT INTO `yqsf0529` VALUES ('20', '2022-09-23', '湖南', '14', '1455', '1437', '4');
INSERT INTO `yqsf0529` VALUES ('20', '2022-09-24', '湖南', '15', '1456', '1437', '4');
INSERT INTO `yqsf0529` VALUES ('21', '2022-05-29', '青海', '1', '147', '146', '0');
INSERT INTO `yqsf0529` VALUES ('21', '2022-05-30', '青海', '1', '147', '146', '0');
INSERT INTO `yqsf0529` VALUES ('21', '2022-05-31', '青海', '1', '147', '146', '0');
INSERT INTO `yqsf0529` VALUES ('21', '2022-06-01', '湖南', '1', '1393', '1388', '4');
INSERT INTO `yqsf0529` VALUES ('21', '2022-06-02', '湖南', '1', '1393', '1388', '4');
INSERT INTO `yqsf0529` VALUES ('21', '2022-09-09', '浙江', '24', '3394', '3369', '1');
INSERT INTO `yqsf0529` VALUES ('21', '2022-09-10', '贵州', '24', '218', '192', '2');
INSERT INTO `yqsf0529` VALUES ('21', '2022-09-19', '青海', '17', '233', '216', '0');
INSERT INTO `yqsf0529` VALUES ('21', '2022-09-23', '浙江', '13', '3404', '3390', '1');
INSERT INTO `yqsf0529` VALUES ('21', '2022-09-24', '江苏', '14', '2382', '2368', '0');
INSERT INTO `yqsf0529` VALUES ('22', '2022-05-29', '澳门', '1', '83', '82', '0');
INSERT INTO `yqsf0529` VALUES ('22', '2022-05-30', '澳门', '1', '83', '82', '0');
INSERT INTO `yqsf0529` VALUES ('22', '2022-05-31', '澳门', '1', '83', '82', '0');
INSERT INTO `yqsf0529` VALUES ('22', '2022-06-01', '青海', '1', '147', '146', '0');
INSERT INTO `yqsf0529` VALUES ('22', '2022-06-02', '青海', '1', '147', '146', '0');
INSERT INTO `yqsf0529` VALUES ('22', '2022-09-09', '山西', '21', '469', '448', '0');
INSERT INTO `yqsf0529` VALUES ('22', '2022-09-10', '浙江', '22', '3394', '3371', '1');
INSERT INTO `yqsf0529` VALUES ('22', '2022-09-19', '河南', '15', '3319', '3282', '22');
INSERT INTO `yqsf0529` VALUES ('22', '2022-09-23', '江苏', '12', '2380', '2368', '0');
INSERT INTO `yqsf0529` VALUES ('22', '2022-09-24', '浙江', '12', '3404', '3391', '1');
INSERT INTO `yqsf0529` VALUES ('23', '2022-05-29', '河北', '0', '2004', '1997', '7');
INSERT INTO `yqsf0529` VALUES ('23', '2022-05-30', '河北', '0', '2004', '1997', '7');
INSERT INTO `yqsf0529` VALUES ('23', '2022-05-31', '河北', '0', '2004', '1997', '7');
INSERT INTO `yqsf0529` VALUES ('23', '2022-06-01', '澳门', '1', '83', '82', '0');
INSERT INTO `yqsf0529` VALUES ('23', '2022-06-02', '澳门', '1', '83', '82', '0');
INSERT INTO `yqsf0529` VALUES ('23', '2022-09-09', '贵州', '19', '213', '192', '2');
INSERT INTO `yqsf0529` VALUES ('23', '2022-09-10', '江西', '17', '1489', '1471', '1');
INSERT INTO `yqsf0529` VALUES ('23', '2022-09-19', '浙江', '14', '3401', '3386', '1');
INSERT INTO `yqsf0529` VALUES ('23', '2022-09-23', '河南', '11', '3325', '3292', '22');
INSERT INTO `yqsf0529` VALUES ('23', '2022-09-24', '河南', '10', '3325', '3293', '22');
INSERT INTO `yqsf0529` VALUES ('24', '2022-05-29', '内蒙古', '0', '1753', '1752', '1');
INSERT INTO `yqsf0529` VALUES ('24', '2022-05-30', '内蒙古', '0', '1753', '1752', '1');
INSERT INTO `yqsf0529` VALUES ('24', '2022-05-31', '内蒙古', '0', '1753', '1752', '1');
INSERT INTO `yqsf0529` VALUES ('24', '2022-06-01', '内蒙古', '0', '1753', '1752', '1');
INSERT INTO `yqsf0529` VALUES ('24', '2022-06-02', '内蒙古', '0', '1753', '1752', '1');
INSERT INTO `yqsf0529` VALUES ('24', '2022-09-09', '江西', '17', '1489', '1471', '1');
INSERT INTO `yqsf0529` VALUES ('24', '2022-09-10', '山西', '17', '469', '452', '0');
INSERT INTO `yqsf0529` VALUES ('24', '2022-09-19', '江西', '12', '1495', '1482', '1');
INSERT INTO `yqsf0529` VALUES ('24', '2022-09-23', '江西', '8', '1495', '1486', '1');
INSERT INTO `yqsf0529` VALUES ('24', '2022-09-24', '江西', '6', '1495', '1488', '1');
INSERT INTO `yqsf0529` VALUES ('25', '2022-05-29', '江西', '0', '1383', '1382', '1');
INSERT INTO `yqsf0529` VALUES ('25', '2022-05-30', '江西', '0', '1383', '1382', '1');
INSERT INTO `yqsf0529` VALUES ('25', '2022-05-31', '江西', '0', '1383', '1382', '1');
INSERT INTO `yqsf0529` VALUES ('25', '2022-06-01', '江西', '0', '1383', '1382', '1');
INSERT INTO `yqsf0529` VALUES ('25', '2022-06-02', '江西', '0', '1383', '1382', '1');
INSERT INTO `yqsf0529` VALUES ('25', '2022-09-09', '河北', '15', '2027', '2005', '7');
INSERT INTO `yqsf0529` VALUES ('25', '2022-09-10', '湖南', '16', '1442', '1422', '4');
INSERT INTO `yqsf0529` VALUES ('25', '2022-09-19', '湖南', '10', '1450', '1436', '4');
INSERT INTO `yqsf0529` VALUES ('25', '2022-09-23', '青海', '7', '233', '226', '0');
INSERT INTO `yqsf0529` VALUES ('25', '2022-09-24', '青海', '6', '233', '227', '0');
INSERT INTO `yqsf0529` VALUES ('26', '2022-05-29', '安徽', '0', '1065', '1059', '6');
INSERT INTO `yqsf0529` VALUES ('26', '2022-05-30', '安徽', '0', '1065', '1059', '6');
INSERT INTO `yqsf0529` VALUES ('26', '2022-05-31', '安徽', '0', '1065', '1059', '6');
INSERT INTO `yqsf0529` VALUES ('26', '2022-06-01', '安徽', '0', '1065', '1059', '6');
INSERT INTO `yqsf0529` VALUES ('26', '2022-06-02', '安徽', '0', '1065', '1059', '6');
INSERT INTO `yqsf0529` VALUES ('26', '2022-09-09', '湖南', '15', '1441', '1422', '4');
INSERT INTO `yqsf0529` VALUES ('26', '2022-09-10', '江苏', '15', '2366', '2351', '0');
INSERT INTO `yqsf0529` VALUES ('26', '2022-09-19', '新疆', '7', '1168', '1158', '3');
INSERT INTO `yqsf0529` VALUES ('26', '2022-09-23', '宁夏', '4', '126', '122', '0');
INSERT INTO `yqsf0529` VALUES ('26', '2022-09-24', '宁夏', '4', '126', '122', '0');
INSERT INTO `yqsf0529` VALUES ('27', '2022-05-29', '新疆', '0', '1008', '1005', '3');
INSERT INTO `yqsf0529` VALUES ('27', '2022-05-30', '新疆', '0', '1008', '1005', '3');
INSERT INTO `yqsf0529` VALUES ('27', '2022-05-31', '新疆', '0', '1008', '1005', '3');
INSERT INTO `yqsf0529` VALUES ('27', '2022-06-01', '新疆', '0', '1008', '1005', '3');
INSERT INTO `yqsf0529` VALUES ('27', '2022-06-02', '新疆', '0', '1008', '1005', '3');
INSERT INTO `yqsf0529` VALUES ('27', '2022-09-09', '新疆', '15', '1147', '1129', '3');
INSERT INTO `yqsf0529` VALUES ('27', '2022-09-10', '河北', '15', '2027', '2005', '7');
INSERT INTO `yqsf0529` VALUES ('27', '2022-09-19', '山西', '6', '469', '463', '0');
INSERT INTO `yqsf0529` VALUES ('27', '2022-09-23', '河北', '3', '2027', '2017', '7');
INSERT INTO `yqsf0529` VALUES ('27', '2022-09-24', '湖北', '3', '68428', '63913', '4512');
INSERT INTO `yqsf0529` VALUES ('28', '2022-05-29', '甘肃', '0', '681', '679', '2');
INSERT INTO `yqsf0529` VALUES ('28', '2022-05-30', '甘肃', '0', '681', '679', '2');
INSERT INTO `yqsf0529` VALUES ('28', '2022-05-31', '甘肃', '0', '681', '679', '2');
INSERT INTO `yqsf0529` VALUES ('28', '2022-06-01', '甘肃', '0', '681', '679', '2');
INSERT INTO `yqsf0529` VALUES ('28', '2022-06-02', '甘肃', '0', '681', '679', '2');
INSERT INTO `yqsf0529` VALUES ('28', '2022-09-09', '江苏', '14', '2364', '2350', '0');
INSERT INTO `yqsf0529` VALUES ('28', '2022-09-10', '新疆', '15', '1147', '1129', '3');
INSERT INTO `yqsf0529` VALUES ('28', '2022-09-19', '河北', '4', '2027', '2016', '7');
INSERT INTO `yqsf0529` VALUES ('28', '2022-09-23', '湖北', '2', '68427', '63913', '4512');
INSERT INTO `yqsf0529` VALUES ('28', '2022-09-24', '河北', '3', '2027', '2017', '7');
INSERT INTO `yqsf0529` VALUES ('29', '2022-05-29', '山西', '0', '420', '420', '0');
INSERT INTO `yqsf0529` VALUES ('29', '2022-05-30', '山西', '0', '420', '420', '0');
INSERT INTO `yqsf0529` VALUES ('29', '2022-05-31', '山西', '0', '420', '420', '0');
INSERT INTO `yqsf0529` VALUES ('29', '2022-06-01', '山西', '0', '420', '420', '0');
INSERT INTO `yqsf0529` VALUES ('29', '2022-06-02', '山西', '0', '420', '420', '0');
INSERT INTO `yqsf0529` VALUES ('29', '2022-09-09', '湖北', '4', '68426', '63910', '4512');
INSERT INTO `yqsf0529` VALUES ('29', '2022-09-10', '湖北', '4', '68426', '63910', '4512');
INSERT INTO `yqsf0529` VALUES ('29', '2022-09-19', '湖北', '3', '68427', '63912', '4512');
INSERT INTO `yqsf0529` VALUES ('29', '2022-09-23', '甘肃', '2', '1350', '1346', '2');
INSERT INTO `yqsf0529` VALUES ('29', '2022-09-24', '甘肃', '2', '1350', '1346', '2');
INSERT INTO `yqsf0529` VALUES ('30', '2022-05-29', '海南', '0', '288', '282', '6');
INSERT INTO `yqsf0529` VALUES ('30', '2022-05-30', '海南', '0', '288', '282', '6');
INSERT INTO `yqsf0529` VALUES ('30', '2022-05-31', '海南', '0', '288', '282', '6');
INSERT INTO `yqsf0529` VALUES ('30', '2022-06-01', '海南', '0', '288', '282', '6');
INSERT INTO `yqsf0529` VALUES ('30', '2022-06-02', '海南', '0', '288', '282', '6');
INSERT INTO `yqsf0529` VALUES ('30', '2022-09-09', '甘肃', '4', '1347', '1341', '2');
INSERT INTO `yqsf0529` VALUES ('30', '2022-09-10', '甘肃', '4', '1347', '1341', '2');
INSERT INTO `yqsf0529` VALUES ('30', '2022-09-19', '甘肃', '3', '1350', '1345', '2');
INSERT INTO `yqsf0529` VALUES ('30', '2022-09-23', '新疆', '1', '1168', '1164', '3');
INSERT INTO `yqsf0529` VALUES ('30', '2022-09-24', '新疆', '2', '1169', '1164', '3');
INSERT INTO `yqsf0529` VALUES ('31', '2022-05-29', '贵州', '0', '185', '183', '2');
INSERT INTO `yqsf0529` VALUES ('31', '2022-05-30', '贵州', '0', '185', '183', '2');
INSERT INTO `yqsf0529` VALUES ('31', '2022-05-31', '贵州', '0', '185', '183', '2');
INSERT INTO `yqsf0529` VALUES ('31', '2022-06-01', '贵州', '0', '185', '183', '2');
INSERT INTO `yqsf0529` VALUES ('31', '2022-06-02', '贵州', '0', '185', '183', '2');
INSERT INTO `yqsf0529` VALUES ('31', '2022-09-09', '安徽', '1', '1506', '1499', '6');
INSERT INTO `yqsf0529` VALUES ('31', '2022-09-10', '安徽', '1', '1506', '1499', '6');
INSERT INTO `yqsf0529` VALUES ('31', '2022-09-19', '安徽', '0', '1506', '1500', '6');
INSERT INTO `yqsf0529` VALUES ('31', '2022-09-23', '山西', '1', '469', '468', '0');
INSERT INTO `yqsf0529` VALUES ('31', '2022-09-24', '山西', '1', '469', '468', '0');
INSERT INTO `yqsf0529` VALUES ('32', '2022-05-29', '宁夏', '0', '122', '122', '0');
INSERT INTO `yqsf0529` VALUES ('32', '2022-05-30', '宁夏', '0', '122', '122', '0');
INSERT INTO `yqsf0529` VALUES ('32', '2022-05-31', '宁夏', '0', '122', '122', '0');
INSERT INTO `yqsf0529` VALUES ('32', '2022-06-01', '宁夏', '0', '122', '122', '0');
INSERT INTO `yqsf0529` VALUES ('32', '2022-06-02', '宁夏', '0', '122', '122', '0');
INSERT INTO `yqsf0529` VALUES ('32', '2022-09-09', '澳门', '0', '793', '787', '6');
INSERT INTO `yqsf0529` VALUES ('32', '2022-09-10', '澳门', '0', '793', '787', '6');
INSERT INTO `yqsf0529` VALUES ('32', '2022-09-19', '澳门', '0', '793', '787', '6');
INSERT INTO `yqsf0529` VALUES ('32', '2022-09-23', '安徽', '0', '1506', '1500', '6');
INSERT INTO `yqsf0529` VALUES ('32', '2022-09-24', '安徽', '0', '1506', '1500', '6');
INSERT INTO `yqsf0529` VALUES ('33', '2022-05-29', '西藏', '0', '1', '1', '0');
INSERT INTO `yqsf0529` VALUES ('33', '2022-05-30', '西藏', '0', '1', '1', '0');
INSERT INTO `yqsf0529` VALUES ('33', '2022-05-31', '西藏', '0', '1', '1', '0');
INSERT INTO `yqsf0529` VALUES ('33', '2022-06-01', '西藏', '0', '1', '1', '0');
INSERT INTO `yqsf0529` VALUES ('33', '2022-06-02', '西藏', '0', '1', '1', '0');
INSERT INTO `yqsf0529` VALUES ('33', '2022-09-09', '宁夏', '0', '122', '122', '0');
INSERT INTO `yqsf0529` VALUES ('33', '2022-09-10', '宁夏', '0', '122', '122', '0');
INSERT INTO `yqsf0529` VALUES ('33', '2022-09-19', '宁夏', '0', '122', '122', '0');
INSERT INTO `yqsf0529` VALUES ('33', '2022-09-23', '澳门', '0', '793', '787', '6');
INSERT INTO `yqsf0529` VALUES ('33', '2022-09-24', '澳门', '0', '793', '787', '6');
