/*
Navicat MySQL Data Transfer

Source Server         : Mysql
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : crm

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2018-03-22 14:54:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for crm_contact
-- ----------------------------
DROP TABLE IF EXISTS `crm_contact`;
CREATE TABLE `crm_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `C_name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `C_sex` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `C_department` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `C_position` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `C_birthday` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `C_tel` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `C_fax` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `C_email` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `C_mob` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `C_QQ` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `C_add` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `C_hobby` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `C_remarks` longtext CHARACTER SET utf8,
  `C_customerid` int(11) DEFAULT NULL,
  `C_customername` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `C_createId` int(11) DEFAULT NULL,
  `C_createDate` datetime DEFAULT NULL,
  `isDelete` int(11) DEFAULT NULL,
  `Delete_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of crm_contact
-- ----------------------------

-- ----------------------------
-- Table structure for crm_contract
-- ----------------------------
DROP TABLE IF EXISTS `crm_contract`;
CREATE TABLE `crm_contract` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Contract_name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `Serialnumber` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `Customer_id` int(11) DEFAULT NULL,
  `Customer_name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `C_depid` int(11) DEFAULT NULL,
  `C_depname` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `C_empid` int(11) DEFAULT NULL,
  `C_empname` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `Contract_amount` double DEFAULT NULL,
  `Pay_cycle` int(11) DEFAULT NULL,
  `Start_date` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `End_date` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `Sign_date` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `Customer_Contractor` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `Our_Contractor_depid` int(11) DEFAULT NULL,
  `Our_Contractor_depname` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `Our_Contractor_id` int(11) DEFAULT NULL,
  `Our_Contractor_name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `Creater_id` int(11) DEFAULT NULL,
  `Creater_name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `Create_time` datetime DEFAULT NULL,
  `Main_Content` longtext CHARACTER SET utf8,
  `Remarks` longtext CHARACTER SET utf8,
  `File_serialnumber` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `isDelete` int(11) DEFAULT NULL,
  `Delete_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of crm_contract
-- ----------------------------

-- ----------------------------
-- Table structure for crm_contract_attachment
-- ----------------------------
DROP TABLE IF EXISTS `crm_contract_attachment`;
CREATE TABLE `crm_contract_attachment` (
  `contract_id` int(11) DEFAULT NULL,
  `page_id` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `file_id` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `file_name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `real_name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `create_name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `create_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of crm_contract_attachment
-- ----------------------------

-- ----------------------------
-- Table structure for crm_customer
-- ----------------------------
DROP TABLE IF EXISTS `crm_customer`;
CREATE TABLE `crm_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Serialnumber` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `Customer` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `tel` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `fax` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `site` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `industry_id` int(11) DEFAULT NULL,
  `industry` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `Provinces_id` int(11) DEFAULT NULL,
  `Provinces` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `City_id` int(11) DEFAULT NULL,
  `City` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `CustomerType_id` int(11) DEFAULT NULL,
  `CustomerType` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `CustomerLevel_id` int(11) DEFAULT NULL,
  `CustomerLevel` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `CustomerSource_id` int(11) DEFAULT NULL,
  `CustomerSource` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `DesCripe` text CHARACTER SET utf8,
  `Remarks` text CHARACTER SET utf8,
  `Department_id` int(11) DEFAULT NULL,
  `Department` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `Employee_id` int(11) DEFAULT NULL,
  `Employee` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `privatecustomer` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `lastfollow` datetime DEFAULT NULL,
  `Create_id` int(11) DEFAULT NULL,
  `Create_name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `Create_date` datetime DEFAULT NULL,
  `isDelete` int(11) DEFAULT NULL,
  `Delete_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of crm_customer
-- ----------------------------

-- ----------------------------
-- Table structure for crm_follow
-- ----------------------------
DROP TABLE IF EXISTS `crm_follow`;
CREATE TABLE `crm_follow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Customer_id` int(11) DEFAULT NULL,
  `Customer_name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `Follow` longtext CHARACTER SET utf8,
  `Follow_date` datetime DEFAULT NULL,
  `Follow_Type_id` int(11) DEFAULT NULL,
  `Follow_Type` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `department_name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `employee_name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `isDelete` int(11) DEFAULT NULL,
  `Delete_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of crm_follow
-- ----------------------------

-- ----------------------------
-- Table structure for crm_invoice
-- ----------------------------
DROP TABLE IF EXISTS `crm_invoice`;
CREATE TABLE `crm_invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Customer_id` int(11) DEFAULT NULL,
  `Customer_name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `invoice_num` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `invoice_type_id` int(11) DEFAULT NULL,
  `invoice_type` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `invoice_amount` double DEFAULT NULL,
  `invoice_content` longtext CHARACTER SET utf8,
  `invoice_date` datetime DEFAULT NULL,
  `C_depid` int(11) DEFAULT NULL,
  `C_depname` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `C_empid` int(11) DEFAULT NULL,
  `C_empname` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `create_name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `isDelete` int(11) DEFAULT NULL,
  `Delete_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of crm_invoice
-- ----------------------------

-- ----------------------------
-- Table structure for crm_order
-- ----------------------------
DROP TABLE IF EXISTS `crm_order`;
CREATE TABLE `crm_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Serialnumber` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `Customer_id` int(11) DEFAULT NULL,
  `Customer_name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `Order_date` datetime DEFAULT NULL,
  `pay_type_id` int(11) DEFAULT NULL,
  `pay_type` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `Order_details` longtext CHARACTER SET utf8,
  `Order_status_id` int(11) DEFAULT NULL,
  `Order_status` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `Order_amount` double DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `C_dep_id` int(11) DEFAULT NULL,
  `C_dep_name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `C_emp_id` int(11) DEFAULT NULL,
  `C_emp_name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `F_dep_id` int(11) DEFAULT NULL,
  `F_dep_name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `F_emp_id` int(11) DEFAULT NULL,
  `F_emp_name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `receive_money` double DEFAULT NULL,
  `arrears_money` double DEFAULT NULL,
  `invoice_money` double DEFAULT NULL,
  `arrears_invoice` double DEFAULT NULL,
  `isDelete` int(11) DEFAULT NULL,
  `Delete_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of crm_order
-- ----------------------------

-- ----------------------------
-- Table structure for crm_order_details
-- ----------------------------
DROP TABLE IF EXISTS `crm_order_details`;
CREATE TABLE `crm_order_details` (
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `unit` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `amount` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of crm_order_details
-- ----------------------------

-- ----------------------------
-- Table structure for crm_product
-- ----------------------------
DROP TABLE IF EXISTS `crm_product`;
CREATE TABLE `crm_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `category_name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `specifications` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `unit` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `remarks` longtext CHARACTER SET utf8,
  `price` double DEFAULT NULL,
  `isDelete` int(11) DEFAULT NULL,
  `Delete_time` datetime DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of crm_product
-- ----------------------------

-- ----------------------------
-- Table structure for crm_product_category
-- ----------------------------
DROP TABLE IF EXISTS `crm_product_category`;
CREATE TABLE `crm_product_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_category` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `parentid` int(11) DEFAULT NULL,
  `product_icon` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `isDelete` int(11) DEFAULT NULL,
  `Delete_id` int(11) DEFAULT NULL,
  `Delete_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of crm_product_category
-- ----------------------------

-- ----------------------------
-- Table structure for crm_receive
-- ----------------------------
DROP TABLE IF EXISTS `crm_receive`;
CREATE TABLE `crm_receive` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Customer_id` int(11) DEFAULT NULL,
  `Customer_name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `Receive_num` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `Pay_type_id` int(11) DEFAULT NULL,
  `Pay_type` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `Receive_amount` double DEFAULT NULL,
  `Receive_date` datetime DEFAULT NULL,
  `C_depid` int(11) DEFAULT NULL,
  `C_depname` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `C_empid` int(11) DEFAULT NULL,
  `C_empname` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `create_name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `remarks` longtext CHARACTER SET utf8,
  `isDelete` int(11) DEFAULT NULL,
  `Delete_time` datetime DEFAULT NULL,
  `receive_direction_id` int(11) DEFAULT NULL,
  `receive_direction_name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `receive_type_id` int(11) DEFAULT NULL,
  `receive_type_name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `receive_real` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of crm_receive
-- ----------------------------

-- ----------------------------
-- Table structure for hr_department
-- ----------------------------
DROP TABLE IF EXISTS `hr_department`;
CREATE TABLE `hr_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `d_name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `parentid` int(11) DEFAULT NULL,
  `parentname` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `d_type` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `d_icon` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `d_fuzeren` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `d_tel` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `d_fax` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `d_add` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `d_email` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `d_miaoshu` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `d_order` int(11) DEFAULT NULL,
  `isDelete` int(11) DEFAULT NULL,
  `Delete_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hr_department
-- ----------------------------
INSERT INTO `hr_department` VALUES ('1', '财政辅助决策系统', '0', '无', '公司', 'images/icon/61.png', '黄大刚', '18688483025', '', '广东省广州市海珠区', '516156003@qq.com', '', '10', '0', null);

-- ----------------------------
-- Table structure for hr_employee
-- ----------------------------
DROP TABLE IF EXISTS `hr_employee`;
CREATE TABLE `hr_employee` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `pwd` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `idcard` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `birthday` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `d_id` int(11) DEFAULT NULL,
  `dname` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `postid` int(11) DEFAULT NULL,
  `post` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `sex` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `tel` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `zhiwuid` int(11) DEFAULT NULL,
  `zhiwu` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `EntryDate` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `education` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `level` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `professional` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `schools` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `title` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `isDelete` int(11) DEFAULT NULL,
  `Delete_time` datetime DEFAULT NULL,
  `portal` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `theme` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `canlogin` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hr_employee
-- ----------------------------
INSERT INTO `hr_employee` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '超级管理员', '', '1983-02-03', '0', null, '0', null, 'google_2009@163.com', '男', '18688483025', null, '0', null, null, null, '广东省广州市海珠区', null, '', null, '', '家里蹲大学', '20180210231745254595.jpg', '0', null, null, null, '1');
INSERT INTO `hr_employee` VALUES ('2', 'crm1501', 'E10ADC3949BA59ABBE56E057F20F883E', '黄大刚', '', '2013-12-01', '1', '财政辅助决策系统', '1', '总经理', '516156003@qq.com', '男', '18688483025', '在职', '1', '总经理', null, '2018-02-10', '', '', '', null, '', '', '', '0', null, null, null, '1');
INSERT INTO `hr_employee` VALUES ('3', 'test', 'E10ADC3949BA59ABBE56E057F20F883E', 't', '', '2018-02-24', '1', '财政辅助决策系统', '1', '总经理', '', '男', '13822222222', '', '1', '总经理', null, '', '', '', '', null, '', '', '', '0', null, null, null, '1');

-- ----------------------------
-- Table structure for hr_position
-- ----------------------------
DROP TABLE IF EXISTS `hr_position`;
CREATE TABLE `hr_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position_name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `position_order` int(11) DEFAULT NULL,
  `position_level` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `isDelete` int(11) DEFAULT NULL,
  `Delete_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hr_position
-- ----------------------------
INSERT INTO `hr_position` VALUES ('1', '总经理', '20', '20', '1', '2015-01-21 17:57:51', '0', null);
INSERT INTO `hr_position` VALUES ('2', '总工程师', '20', '20', '1', '2015-01-21 17:58:01', '0', null);

-- ----------------------------
-- Table structure for hr_post
-- ----------------------------
DROP TABLE IF EXISTS `hr_post`;
CREATE TABLE `hr_post` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `position_id` int(11) DEFAULT NULL,
  `position_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `position_order` int(11) DEFAULT NULL,
  `dep_id` int(11) DEFAULT NULL,
  `depname` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `emp_id` int(11) DEFAULT NULL,
  `emp_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `default_post` int(11) DEFAULT NULL,
  `note` longtext CHARACTER SET utf8,
  `post_descript` longtext CHARACTER SET utf8,
  `isDelete` int(11) DEFAULT NULL,
  `Delete_time` datetime DEFAULT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hr_post
-- ----------------------------
INSERT INTO `hr_post` VALUES ('1', '总经理', '1', '总经理', '20', '1', '财政辅助决策系统', '3', 't', '1', '', null, '0', null);

-- ----------------------------
-- Table structure for param_city
-- ----------------------------
DROP TABLE IF EXISTS `param_city`;
CREATE TABLE `param_city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentid` int(11) DEFAULT NULL,
  `City` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `Create_id` int(11) DEFAULT NULL,
  `Create_date` datetime DEFAULT NULL,
  `Update_id` int(11) DEFAULT NULL,
  `Update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=557 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of param_city
-- ----------------------------
INSERT INTO `param_city` VALUES ('1', '0', '北京', null, null, null, null);
INSERT INTO `param_city` VALUES ('2', '0', '上海', null, null, null, null);
INSERT INTO `param_city` VALUES ('3', '0', '天津', null, null, null, null);
INSERT INTO `param_city` VALUES ('4', '0', ' 重庆', null, null, null, null);
INSERT INTO `param_city` VALUES ('5', '0', ' 黑龙江', null, null, null, null);
INSERT INTO `param_city` VALUES ('6', '0', '吉林', null, null, null, null);
INSERT INTO `param_city` VALUES ('7', '0', '辽宁', null, null, null, null);
INSERT INTO `param_city` VALUES ('8', '0', '内蒙古', null, null, null, null);
INSERT INTO `param_city` VALUES ('9', '0', '宁夏', null, null, null, null);
INSERT INTO `param_city` VALUES ('10', '0', '新疆', null, null, null, null);
INSERT INTO `param_city` VALUES ('11', '0', '青海', null, null, null, null);
INSERT INTO `param_city` VALUES ('12', '0', '甘肃', null, null, null, null);
INSERT INTO `param_city` VALUES ('13', '0', '陕西', null, null, null, null);
INSERT INTO `param_city` VALUES ('14', '0', '河北', null, null, null, null);
INSERT INTO `param_city` VALUES ('15', '0', '河南', null, null, null, null);
INSERT INTO `param_city` VALUES ('16', '0', '山东', null, null, null, null);
INSERT INTO `param_city` VALUES ('17', '0', '山西', null, null, null, null);
INSERT INTO `param_city` VALUES ('18', '0', '湖北', null, null, null, null);
INSERT INTO `param_city` VALUES ('19', '0', '湖南', null, null, null, null);
INSERT INTO `param_city` VALUES ('20', '0', '安徽', null, null, null, null);
INSERT INTO `param_city` VALUES ('21', '0', '江苏', null, null, null, null);
INSERT INTO `param_city` VALUES ('22', '0', ' 浙江', null, null, null, null);
INSERT INTO `param_city` VALUES ('23', '0', '江西', null, null, null, null);
INSERT INTO `param_city` VALUES ('24', '0', '广东', null, null, null, null);
INSERT INTO `param_city` VALUES ('25', '0', '广西', null, null, null, null);
INSERT INTO `param_city` VALUES ('26', '0', '福建', null, null, null, null);
INSERT INTO `param_city` VALUES ('27', '0', '四川', null, null, null, null);
INSERT INTO `param_city` VALUES ('28', '0', '云南', null, null, null, null);
INSERT INTO `param_city` VALUES ('29', '0', '贵州', null, null, null, null);
INSERT INTO `param_city` VALUES ('30', '0', '西藏', null, null, null, null);
INSERT INTO `param_city` VALUES ('31', '0', '海南', null, null, null, null);
INSERT INTO `param_city` VALUES ('32', '0', '香港', null, null, null, null);
INSERT INTO `param_city` VALUES ('33', '0', '澳门', null, null, null, null);
INSERT INTO `param_city` VALUES ('34', '0', '台湾', null, null, null, null);
INSERT INTO `param_city` VALUES ('35', '1', '东城区', null, null, null, null);
INSERT INTO `param_city` VALUES ('36', '1', '西城区', null, null, null, null);
INSERT INTO `param_city` VALUES ('37', '1', '宣武区', null, null, null, null);
INSERT INTO `param_city` VALUES ('38', '1', '崇文区', null, null, null, null);
INSERT INTO `param_city` VALUES ('39', '1', '朝阳区', null, null, null, null);
INSERT INTO `param_city` VALUES ('40', '1', '海淀区', null, null, null, null);
INSERT INTO `param_city` VALUES ('41', '1', '丰台区', null, null, null, null);
INSERT INTO `param_city` VALUES ('42', '1', '石景山区', null, null, null, null);
INSERT INTO `param_city` VALUES ('43', '1', '门头沟区', null, null, null, null);
INSERT INTO `param_city` VALUES ('44', '1', '昌平区', null, null, null, null);
INSERT INTO `param_city` VALUES ('45', '1', '大兴区', null, null, null, null);
INSERT INTO `param_city` VALUES ('46', '1', '怀柔区', null, null, null, null);
INSERT INTO `param_city` VALUES ('47', '1', '密云县', null, null, null, null);
INSERT INTO `param_city` VALUES ('48', '1', '平谷区', null, null, null, null);
INSERT INTO `param_city` VALUES ('49', '1', '顺义区', null, null, null, null);
INSERT INTO `param_city` VALUES ('50', '1', '通州区', null, null, null, null);
INSERT INTO `param_city` VALUES ('51', '1', '延庆县', null, null, null, null);
INSERT INTO `param_city` VALUES ('52', '1', '房山区', null, null, null, null);
INSERT INTO `param_city` VALUES ('53', '2', '黄浦区', null, null, null, null);
INSERT INTO `param_city` VALUES ('54', '2', '南市区', null, null, null, null);
INSERT INTO `param_city` VALUES ('55', '2', '卢湾区', null, null, null, null);
INSERT INTO `param_city` VALUES ('56', '2', '徐汇区', null, null, null, null);
INSERT INTO `param_city` VALUES ('57', '2', '长宁区', null, null, null, null);
INSERT INTO `param_city` VALUES ('58', '2', '静安区', null, null, null, null);
INSERT INTO `param_city` VALUES ('59', '2', '普陀区', null, null, null, null);
INSERT INTO `param_city` VALUES ('60', '2', '金山区', null, null, null, null);
INSERT INTO `param_city` VALUES ('61', '2', '闸北区', null, null, null, null);
INSERT INTO `param_city` VALUES ('62', '2', '虹口区', null, null, null, null);
INSERT INTO `param_city` VALUES ('63', '2', '杨浦区', null, null, null, null);
INSERT INTO `param_city` VALUES ('64', '2', '宝山区', null, null, null, null);
INSERT INTO `param_city` VALUES ('65', '2', '闵行区', null, null, null, null);
INSERT INTO `param_city` VALUES ('66', '2', '嘉定区', null, null, null, null);
INSERT INTO `param_city` VALUES ('67', '2', '松江区', null, null, null, null);
INSERT INTO `param_city` VALUES ('68', '2', '浦东新区', null, null, null, null);
INSERT INTO `param_city` VALUES ('69', '2', '青浦县', null, null, null, null);
INSERT INTO `param_city` VALUES ('70', '2', '奉贤县', null, null, null, null);
INSERT INTO `param_city` VALUES ('71', '2', '南汇县', null, null, null, null);
INSERT INTO `param_city` VALUES ('72', '2', '崇明县', null, null, null, null);
INSERT INTO `param_city` VALUES ('73', '3', '和平区', null, null, null, null);
INSERT INTO `param_city` VALUES ('74', '3', '河东区', null, null, null, null);
INSERT INTO `param_city` VALUES ('75', '3', '河西区', null, null, null, null);
INSERT INTO `param_city` VALUES ('76', '3', '河北区', null, null, null, null);
INSERT INTO `param_city` VALUES ('77', '3', '南开区', null, null, null, null);
INSERT INTO `param_city` VALUES ('78', '3', '红桥区', null, null, null, null);
INSERT INTO `param_city` VALUES ('79', '3', '塘沽区', null, null, null, null);
INSERT INTO `param_city` VALUES ('80', '3', '汉沽区', null, null, null, null);
INSERT INTO `param_city` VALUES ('81', '3', '大港区', null, null, null, null);
INSERT INTO `param_city` VALUES ('82', '3', '东丽区', null, null, null, null);
INSERT INTO `param_city` VALUES ('83', '3', '西青区', null, null, null, null);
INSERT INTO `param_city` VALUES ('84', '3', '津南区', null, null, null, null);
INSERT INTO `param_city` VALUES ('85', '3', '北辰区', null, null, null, null);
INSERT INTO `param_city` VALUES ('86', '3', ' 武清区', null, null, null, null);
INSERT INTO `param_city` VALUES ('87', '3', '宝坻区', null, null, null, null);
INSERT INTO `param_city` VALUES ('88', '3', '蓟 县', null, null, null, null);
INSERT INTO `param_city` VALUES ('89', '3', '宁河县', null, null, null, null);
INSERT INTO `param_city` VALUES ('90', '3', '静海县', null, null, null, null);
INSERT INTO `param_city` VALUES ('91', '4', '永川市', null, null, null, null);
INSERT INTO `param_city` VALUES ('92', '4', '黔江区', null, null, null, null);
INSERT INTO `param_city` VALUES ('93', '4', '涪陵区', null, null, null, null);
INSERT INTO `param_city` VALUES ('94', '4', '万洲区', null, null, null, null);
INSERT INTO `param_city` VALUES ('95', '4', '渝中区', null, null, null, null);
INSERT INTO `param_city` VALUES ('96', '4', '大渡口区', null, null, null, null);
INSERT INTO `param_city` VALUES ('97', '4', '江北区', null, null, null, null);
INSERT INTO `param_city` VALUES ('98', '4', '沙坪坝区', null, null, null, null);
INSERT INTO `param_city` VALUES ('99', '4', '九龙坡区', null, null, null, null);
INSERT INTO `param_city` VALUES ('100', '4', '南岸区', null, null, null, null);
INSERT INTO `param_city` VALUES ('101', '4', '北碚区', null, null, null, null);
INSERT INTO `param_city` VALUES ('102', '4', ' 万盛区', null, null, null, null);
INSERT INTO `param_city` VALUES ('103', '4', '双桥区', null, null, null, null);
INSERT INTO `param_city` VALUES ('104', '4', '渝北区', null, null, null, null);
INSERT INTO `param_city` VALUES ('105', '4', '巴南区', null, null, null, null);
INSERT INTO `param_city` VALUES ('106', '4', '长寿区', null, null, null, null);
INSERT INTO `param_city` VALUES ('107', '5', '哈尔滨', null, null, null, null);
INSERT INTO `param_city` VALUES ('108', '5', '齐齐哈尔', null, null, null, null);
INSERT INTO `param_city` VALUES ('109', '5', '牡丹江', null, null, null, null);
INSERT INTO `param_city` VALUES ('110', '5', '鹤岗', null, null, null, null);
INSERT INTO `param_city` VALUES ('111', '5', '双鸭山', null, null, null, null);
INSERT INTO `param_city` VALUES ('112', '5', '鸡西', null, null, null, null);
INSERT INTO `param_city` VALUES ('113', '5', '大庆', null, null, null, null);
INSERT INTO `param_city` VALUES ('114', '5', '伊春', null, null, null, null);
INSERT INTO `param_city` VALUES ('115', '5', '佳木斯', null, null, null, null);
INSERT INTO `param_city` VALUES ('116', '5', '七台河', null, null, null, null);
INSERT INTO `param_city` VALUES ('117', '5', '黑河', null, null, null, null);
INSERT INTO `param_city` VALUES ('118', '5', '绥化', null, null, null, null);
INSERT INTO `param_city` VALUES ('119', '5', '大兴安岭地区', null, null, null, null);
INSERT INTO `param_city` VALUES ('120', '6', '长春', null, null, null, null);
INSERT INTO `param_city` VALUES ('121', '6', '吉林', null, null, null, null);
INSERT INTO `param_city` VALUES ('122', '6', '四平', null, null, null, null);
INSERT INTO `param_city` VALUES ('123', '6', '辽源', null, null, null, null);
INSERT INTO `param_city` VALUES ('124', '6', '通化', null, null, null, null);
INSERT INTO `param_city` VALUES ('125', '6', '白山', null, null, null, null);
INSERT INTO `param_city` VALUES ('126', '6', '松原', null, null, null, null);
INSERT INTO `param_city` VALUES ('127', '6', '白城', null, null, null, null);
INSERT INTO `param_city` VALUES ('128', '6', '延边朝鲜族自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('129', '6', '高新', null, null, null, null);
INSERT INTO `param_city` VALUES ('130', '6', '延吉', null, null, null, null);
INSERT INTO `param_city` VALUES ('131', '6', '梅河口', null, null, null, null);
INSERT INTO `param_city` VALUES ('132', '7', '沈阳', null, null, null, null);
INSERT INTO `param_city` VALUES ('133', '7', '大连', null, null, null, null);
INSERT INTO `param_city` VALUES ('134', '7', '锦州', null, null, null, null);
INSERT INTO `param_city` VALUES ('135', '7', '鞍山', null, null, null, null);
INSERT INTO `param_city` VALUES ('136', '7', '抚顺', null, null, null, null);
INSERT INTO `param_city` VALUES ('137', '7', '本溪', null, null, null, null);
INSERT INTO `param_city` VALUES ('138', '7', '丹东', null, null, null, null);
INSERT INTO `param_city` VALUES ('139', '7', '葫芦岛', null, null, null, null);
INSERT INTO `param_city` VALUES ('140', '7', '营口', null, null, null, null);
INSERT INTO `param_city` VALUES ('141', '7', '盘锦', null, null, null, null);
INSERT INTO `param_city` VALUES ('142', '7', '阜新', null, null, null, null);
INSERT INTO `param_city` VALUES ('143', '7', '辽阳', null, null, null, null);
INSERT INTO `param_city` VALUES ('144', '7', '铁岭', null, null, null, null);
INSERT INTO `param_city` VALUES ('145', '7', '朝阳', null, null, null, null);
INSERT INTO `param_city` VALUES ('146', '7', '瓦房店', null, null, null, null);
INSERT INTO `param_city` VALUES ('147', '8', '呼和浩特', null, null, null, null);
INSERT INTO `param_city` VALUES ('148', '8', '包头', null, null, null, null);
INSERT INTO `param_city` VALUES ('149', '8', '乌海', null, null, null, null);
INSERT INTO `param_city` VALUES ('150', '8', '赤峰', null, null, null, null);
INSERT INTO `param_city` VALUES ('151', '8', '通辽', null, null, null, null);
INSERT INTO `param_city` VALUES ('152', '8', '鄂尔多斯', null, null, null, null);
INSERT INTO `param_city` VALUES ('153', '8', '乌兰察布盟', null, null, null, null);
INSERT INTO `param_city` VALUES ('154', '8', '锡林郭勒盟', null, null, null, null);
INSERT INTO `param_city` VALUES ('155', '8', '巴彦淖尔盟', null, null, null, null);
INSERT INTO `param_city` VALUES ('156', '8', '阿拉善盟', null, null, null, null);
INSERT INTO `param_city` VALUES ('157', '8', '兴安盟', null, null, null, null);
INSERT INTO `param_city` VALUES ('158', '8', '巴彦淖尔', null, null, null, null);
INSERT INTO `param_city` VALUES ('159', '8', '呼伦贝尔', null, null, null, null);
INSERT INTO `param_city` VALUES ('160', '8', '集宁', null, null, null, null);
INSERT INTO `param_city` VALUES ('161', '8', ' 乌兰浩特', null, null, null, null);
INSERT INTO `param_city` VALUES ('162', '8', '锡林浩特', null, null, null, null);
INSERT INTO `param_city` VALUES ('163', '9', '银川', null, null, null, null);
INSERT INTO `param_city` VALUES ('164', '9', '石嘴山', null, null, null, null);
INSERT INTO `param_city` VALUES ('165', '9', '吴忠', null, null, null, null);
INSERT INTO `param_city` VALUES ('166', '9', '固原', null, null, null, null);
INSERT INTO `param_city` VALUES ('167', '10', '乌鲁木齐', null, null, null, null);
INSERT INTO `param_city` VALUES ('168', '10', '克拉玛依', null, null, null, null);
INSERT INTO `param_city` VALUES ('169', '10', '吐鲁番地区', null, null, null, null);
INSERT INTO `param_city` VALUES ('170', '10', '哈密地区', null, null, null, null);
INSERT INTO `param_city` VALUES ('171', '10', '和田地区', null, null, null, null);
INSERT INTO `param_city` VALUES ('172', '10', '阿克苏地区', null, null, null, null);
INSERT INTO `param_city` VALUES ('173', '10', '喀什地区', null, null, null, null);
INSERT INTO `param_city` VALUES ('174', '10', '克孜勒苏柯尔克孜自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('175', '10', '巴音郭楞蒙古自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('176', '10', '昌吉回族自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('177', '10', '博尔塔拉蒙古自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('178', '10', '伊犁哈萨克自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('179', '10', '阿克苏', null, null, null, null);
INSERT INTO `param_city` VALUES ('180', '10', '昌吉', null, null, null, null);
INSERT INTO `param_city` VALUES ('181', '10', '哈密', null, null, null, null);
INSERT INTO `param_city` VALUES ('182', '10', '和田', null, null, null, null);
INSERT INTO `param_city` VALUES ('183', '10', '喀什', null, null, null, null);
INSERT INTO `param_city` VALUES ('184', '10', '克拉马依', null, null, null, null);
INSERT INTO `param_city` VALUES ('185', '10', '库尔勒', null, null, null, null);
INSERT INTO `param_city` VALUES ('186', '10', '石河子', null, null, null, null);
INSERT INTO `param_city` VALUES ('187', '10', '吐鲁番', null, null, null, null);
INSERT INTO `param_city` VALUES ('188', '10', ' 乌市', null, null, null, null);
INSERT INTO `param_city` VALUES ('189', '10', '奎屯', null, null, null, null);
INSERT INTO `param_city` VALUES ('190', '10', '伊犁', null, null, null, null);
INSERT INTO `param_city` VALUES ('191', '10', '伊宁', null, null, null, null);
INSERT INTO `param_city` VALUES ('192', '11', '西宁', null, null, null, null);
INSERT INTO `param_city` VALUES ('193', '11', '海东地区', null, null, null, null);
INSERT INTO `param_city` VALUES ('194', '11', ' 海北藏族自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('195', '11', '黄南藏族自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('196', '11', '海南藏族自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('197', '11', '果洛藏族自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('198', '11', '玉树藏族自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('199', '11', '海西蒙古族藏族自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('200', '11', '格尔木', null, null, null, null);
INSERT INTO `param_city` VALUES ('201', '12', '兰州', null, null, null, null);
INSERT INTO `param_city` VALUES ('202', '12', '天水', null, null, null, null);
INSERT INTO `param_city` VALUES ('203', '12', '金昌', null, null, null, null);
INSERT INTO `param_city` VALUES ('204', '12', '白银', null, null, null, null);
INSERT INTO `param_city` VALUES ('205', '12', '嘉峪关', null, null, null, null);
INSERT INTO `param_city` VALUES ('206', '12', '武 威 ', null, null, null, null);
INSERT INTO `param_city` VALUES ('207', '12', '张掖', null, null, null, null);
INSERT INTO `param_city` VALUES ('208', '12', '平凉', null, null, null, null);
INSERT INTO `param_city` VALUES ('209', '12', '酒泉', null, null, null, null);
INSERT INTO `param_city` VALUES ('210', '12', '庆阳', null, null, null, null);
INSERT INTO `param_city` VALUES ('211', '12', '定西地区', null, null, null, null);
INSERT INTO `param_city` VALUES ('212', '12', '陇南地区', null, null, null, null);
INSERT INTO `param_city` VALUES ('213', '12', '甘南藏族自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('214', '12', '临夏回族自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('215', '12', '嘉峪', null, null, null, null);
INSERT INTO `param_city` VALUES ('216', '12', '武威', null, null, null, null);
INSERT INTO `param_city` VALUES ('217', '13', '西安', null, null, null, null);
INSERT INTO `param_city` VALUES ('218', '13', '宝鸡', null, null, null, null);
INSERT INTO `param_city` VALUES ('219', '13', '延安', null, null, null, null);
INSERT INTO `param_city` VALUES ('220', '13', '铜川', null, null, null, null);
INSERT INTO `param_city` VALUES ('221', '13', '咸阳', null, null, null, null);
INSERT INTO `param_city` VALUES ('222', '13', '渭南', null, null, null, null);
INSERT INTO `param_city` VALUES ('223', '13', '汉中', null, null, null, null);
INSERT INTO `param_city` VALUES ('224', '13', '榆林', null, null, null, null);
INSERT INTO `param_city` VALUES ('225', '13', '安康', null, null, null, null);
INSERT INTO `param_city` VALUES ('226', '13', '商洛', null, null, null, null);
INSERT INTO `param_city` VALUES ('227', '13', '韩城', null, null, null, null);
INSERT INTO `param_city` VALUES ('228', '14', '石家庄', null, null, null, null);
INSERT INTO `param_city` VALUES ('229', '14', '保定', null, null, null, null);
INSERT INTO `param_city` VALUES ('230', '14', '唐山', null, null, null, null);
INSERT INTO `param_city` VALUES ('231', '14', '秦皇岛', null, null, null, null);
INSERT INTO `param_city` VALUES ('232', '14', '邯郸', null, null, null, null);
INSERT INTO `param_city` VALUES ('233', '14', '邢台', null, null, null, null);
INSERT INTO `param_city` VALUES ('234', '14', '张家口', null, null, null, null);
INSERT INTO `param_city` VALUES ('235', '14', '承德', null, null, null, null);
INSERT INTO `param_city` VALUES ('236', '14', '沧州', null, null, null, null);
INSERT INTO `param_city` VALUES ('237', '14', '廊坊', null, null, null, null);
INSERT INTO `param_city` VALUES ('238', '14', '衡水', null, null, null, null);
INSERT INTO `param_city` VALUES ('239', '14', '霸州', null, null, null, null);
INSERT INTO `param_city` VALUES ('240', '14', '青县', null, null, null, null);
INSERT INTO `param_city` VALUES ('241', '14', '任丘', null, null, null, null);
INSERT INTO `param_city` VALUES ('242', '14', '涿州', null, null, null, null);
INSERT INTO `param_city` VALUES ('243', '15', '郑州', null, null, null, null);
INSERT INTO `param_city` VALUES ('244', '15', '洛阳', null, null, null, null);
INSERT INTO `param_city` VALUES ('245', '15', '开封', null, null, null, null);
INSERT INTO `param_city` VALUES ('246', '15', '平顶山', null, null, null, null);
INSERT INTO `param_city` VALUES ('247', '15', '焦作', null, null, null, null);
INSERT INTO `param_city` VALUES ('248', '15', '鹤壁', null, null, null, null);
INSERT INTO `param_city` VALUES ('249', '15', '新乡', null, null, null, null);
INSERT INTO `param_city` VALUES ('250', '15', '安阳', null, null, null, null);
INSERT INTO `param_city` VALUES ('251', '15', '濮阳', null, null, null, null);
INSERT INTO `param_city` VALUES ('252', '15', '许昌', null, null, null, null);
INSERT INTO `param_city` VALUES ('253', '15', '漯河', null, null, null, null);
INSERT INTO `param_city` VALUES ('254', '15', '三门峡', null, null, null, null);
INSERT INTO `param_city` VALUES ('255', '15', '南阳', null, null, null, null);
INSERT INTO `param_city` VALUES ('256', '15', '商丘', null, null, null, null);
INSERT INTO `param_city` VALUES ('257', '15', '信阳', null, null, null, null);
INSERT INTO `param_city` VALUES ('258', '15', '周口', null, null, null, null);
INSERT INTO `param_city` VALUES ('259', '15', '驻马店', null, null, null, null);
INSERT INTO `param_city` VALUES ('260', '16', '济南', null, null, null, null);
INSERT INTO `param_city` VALUES ('261', '16', '青岛', null, null, null, null);
INSERT INTO `param_city` VALUES ('262', '16', '烟台', null, null, null, null);
INSERT INTO `param_city` VALUES ('263', '16', '淄博', null, null, null, null);
INSERT INTO `param_city` VALUES ('264', '16', '枣庄', null, null, null, null);
INSERT INTO `param_city` VALUES ('265', '16', '东营', null, null, null, null);
INSERT INTO `param_city` VALUES ('266', '16', '潍坊', null, null, null, null);
INSERT INTO `param_city` VALUES ('267', '16', '威海', null, null, null, null);
INSERT INTO `param_city` VALUES ('268', '16', '济宁', null, null, null, null);
INSERT INTO `param_city` VALUES ('269', '16', '泰安', null, null, null, null);
INSERT INTO `param_city` VALUES ('270', '16', '日照', null, null, null, null);
INSERT INTO `param_city` VALUES ('271', '16', '莱芜', null, null, null, null);
INSERT INTO `param_city` VALUES ('272', '16', '德州', null, null, null, null);
INSERT INTO `param_city` VALUES ('273', '16', '临沂', null, null, null, null);
INSERT INTO `param_city` VALUES ('274', '16', '聊城', null, null, null, null);
INSERT INTO `param_city` VALUES ('275', '16', '滨州', null, null, null, null);
INSERT INTO `param_city` VALUES ('276', '16', '菏泽', null, null, null, null);
INSERT INTO `param_city` VALUES ('277', '16', '高密', null, null, null, null);
INSERT INTO `param_city` VALUES ('278', '16', '荷泽', null, null, null, null);
INSERT INTO `param_city` VALUES ('279', '16', '淮坊', null, null, null, null);
INSERT INTO `param_city` VALUES ('280', '16', '即墨', null, null, null, null);
INSERT INTO `param_city` VALUES ('281', '16', '胶南', null, null, null, null);
INSERT INTO `param_city` VALUES ('282', '16', '莱州', null, null, null, null);
INSERT INTO `param_city` VALUES ('283', '16', '林沂', null, null, null, null);
INSERT INTO `param_city` VALUES ('284', '16', '临忻', null, null, null, null);
INSERT INTO `param_city` VALUES ('285', '16', '龙口', null, null, null, null);
INSERT INTO `param_city` VALUES ('286', '16', '蓬莱', null, null, null, null);
INSERT INTO `param_city` VALUES ('287', '16', '青州', null, null, null, null);
INSERT INTO `param_city` VALUES ('288', '16', '乳山', null, null, null, null);
INSERT INTO `param_city` VALUES ('289', '16', '寿光', null, null, null, null);
INSERT INTO `param_city` VALUES ('290', '16', '滕州', null, null, null, null);
INSERT INTO `param_city` VALUES ('291', '16', '文登', null, null, null, null);
INSERT INTO `param_city` VALUES ('292', '16', '招远', null, null, null, null);
INSERT INTO `param_city` VALUES ('293', '17', '太原', null, null, null, null);
INSERT INTO `param_city` VALUES ('294', '17', '大同', null, null, null, null);
INSERT INTO `param_city` VALUES ('295', '17', '朔州', null, null, null, null);
INSERT INTO `param_city` VALUES ('296', '17', '阳泉', null, null, null, null);
INSERT INTO `param_city` VALUES ('297', '17', '长治', null, null, null, null);
INSERT INTO `param_city` VALUES ('298', '17', '晋城', null, null, null, null);
INSERT INTO `param_city` VALUES ('299', '17', '忻州', null, null, null, null);
INSERT INTO `param_city` VALUES ('300', '17', '晋中', null, null, null, null);
INSERT INTO `param_city` VALUES ('301', '17', '临汾', null, null, null, null);
INSERT INTO `param_city` VALUES ('302', '17', '运城', null, null, null, null);
INSERT INTO `param_city` VALUES ('303', '17', '吕梁地区', null, null, null, null);
INSERT INTO `param_city` VALUES ('304', '17', '河津', null, null, null, null);
INSERT INTO `param_city` VALUES ('305', '17', '侯马', null, null, null, null);
INSERT INTO `param_city` VALUES ('306', '17', '孝义', null, null, null, null);
INSERT INTO `param_city` VALUES ('307', '17', '榆次', null, null, null, null);
INSERT INTO `param_city` VALUES ('308', '18', '武汉', null, null, null, null);
INSERT INTO `param_city` VALUES ('309', '18', '黄石', null, null, null, null);
INSERT INTO `param_city` VALUES ('310', '18', '襄樊', null, null, null, null);
INSERT INTO `param_city` VALUES ('311', '18', '十堰', null, null, null, null);
INSERT INTO `param_city` VALUES ('312', '18', '荆州', null, null, null, null);
INSERT INTO `param_city` VALUES ('313', '18', '宜昌', null, null, null, null);
INSERT INTO `param_city` VALUES ('314', '18', '荆门', null, null, null, null);
INSERT INTO `param_city` VALUES ('315', '18', '鄂州', null, null, null, null);
INSERT INTO `param_city` VALUES ('316', '18', '孝感', null, null, null, null);
INSERT INTO `param_city` VALUES ('317', '18', '黄冈', null, null, null, null);
INSERT INTO `param_city` VALUES ('318', '18', '咸宁', null, null, null, null);
INSERT INTO `param_city` VALUES ('319', '18', '随州', null, null, null, null);
INSERT INTO `param_city` VALUES ('320', '18', '恩施土家族苗族自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('321', '18', '安陆', null, null, null, null);
INSERT INTO `param_city` VALUES ('322', '18', '恩施', null, null, null, null);
INSERT INTO `param_city` VALUES ('323', '18', '汉口', null, null, null, null);
INSERT INTO `param_city` VALUES ('324', '18', '汉阳', null, null, null, null);
INSERT INTO `param_city` VALUES ('325', '18', '潜江', null, null, null, null);
INSERT INTO `param_city` VALUES ('326', '18', '仙桃', null, null, null, null);
INSERT INTO `param_city` VALUES ('327', '18', '株州', null, null, null, null);
INSERT INTO `param_city` VALUES ('328', '19', '长沙', null, null, null, null);
INSERT INTO `param_city` VALUES ('329', '19', '株洲', null, null, null, null);
INSERT INTO `param_city` VALUES ('330', '19', '湘潭', null, null, null, null);
INSERT INTO `param_city` VALUES ('331', '19', '衡阳', null, null, null, null);
INSERT INTO `param_city` VALUES ('332', '19', '邵阳', null, null, null, null);
INSERT INTO `param_city` VALUES ('333', '19', '岳阳', null, null, null, null);
INSERT INTO `param_city` VALUES ('334', '19', '常德', null, null, null, null);
INSERT INTO `param_city` VALUES ('335', '19', '张家界', null, null, null, null);
INSERT INTO `param_city` VALUES ('336', '19', '益阳', null, null, null, null);
INSERT INTO `param_city` VALUES ('337', '19', '郴州', null, null, null, null);
INSERT INTO `param_city` VALUES ('338', '19', '永州', null, null, null, null);
INSERT INTO `param_city` VALUES ('339', '19', '怀化', null, null, null, null);
INSERT INTO `param_city` VALUES ('340', '19', '娄底', null, null, null, null);
INSERT INTO `param_city` VALUES ('341', '19', '湘西土家族苗族自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('342', '19', '株州', null, null, null, null);
INSERT INTO `param_city` VALUES ('343', '19', '邵东', null, null, null, null);
INSERT INTO `param_city` VALUES ('344', '20', '合肥', null, null, null, null);
INSERT INTO `param_city` VALUES ('345', '20', '芜湖', null, null, null, null);
INSERT INTO `param_city` VALUES ('346', '20', '蚌埠', null, null, null, null);
INSERT INTO `param_city` VALUES ('347', '20', '淮南', null, null, null, null);
INSERT INTO `param_city` VALUES ('348', '20', '马鞍山', null, null, null, null);
INSERT INTO `param_city` VALUES ('349', '20', '淮北', null, null, null, null);
INSERT INTO `param_city` VALUES ('350', '20', '铜陵', null, null, null, null);
INSERT INTO `param_city` VALUES ('351', '20', '安庆', null, null, null, null);
INSERT INTO `param_city` VALUES ('352', '20', '黄山', null, null, null, null);
INSERT INTO `param_city` VALUES ('353', '20', '滁州', null, null, null, null);
INSERT INTO `param_city` VALUES ('354', '20', '阜阳', null, null, null, null);
INSERT INTO `param_city` VALUES ('355', '20', '宿州', null, null, null, null);
INSERT INTO `param_city` VALUES ('356', '20', '巢湖', null, null, null, null);
INSERT INTO `param_city` VALUES ('357', '20', '六安', null, null, null, null);
INSERT INTO `param_city` VALUES ('358', '20', '亳州', null, null, null, null);
INSERT INTO `param_city` VALUES ('359', '20', '池州', null, null, null, null);
INSERT INTO `param_city` VALUES ('360', '20', '宣城', null, null, null, null);
INSERT INTO `param_city` VALUES ('361', '20', '蒙城', null, null, null, null);
INSERT INTO `param_city` VALUES ('362', '20', '宁国', null, null, null, null);
INSERT INTO `param_city` VALUES ('363', '20', '桐城', null, null, null, null);
INSERT INTO `param_city` VALUES ('364', '21', '南京', null, null, null, null);
INSERT INTO `param_city` VALUES ('365', '21', '徐州', null, null, null, null);
INSERT INTO `param_city` VALUES ('366', '21', '连云港', null, null, null, null);
INSERT INTO `param_city` VALUES ('367', '21', '淮安', null, null, null, null);
INSERT INTO `param_city` VALUES ('368', '21', '宿迁', null, null, null, null);
INSERT INTO `param_city` VALUES ('369', '21', '盐城', null, null, null, null);
INSERT INTO `param_city` VALUES ('370', '21', '扬州', null, null, null, null);
INSERT INTO `param_city` VALUES ('371', '21', '泰州', null, null, null, null);
INSERT INTO `param_city` VALUES ('372', '21', '南通', null, null, null, null);
INSERT INTO `param_city` VALUES ('373', '21', '镇江', null, null, null, null);
INSERT INTO `param_city` VALUES ('374', '21', '常州', null, null, null, null);
INSERT INTO `param_city` VALUES ('375', '21', '无锡', null, null, null, null);
INSERT INTO `param_city` VALUES ('376', '21', '苏州', null, null, null, null);
INSERT INTO `param_city` VALUES ('377', '21', '常熟', null, null, null, null);
INSERT INTO `param_city` VALUES ('378', '21', '丹阳', null, null, null, null);
INSERT INTO `param_city` VALUES ('379', '21', '海门', null, null, null, null);
INSERT INTO `param_city` VALUES ('380', '21', '江都', null, null, null, null);
INSERT INTO `param_city` VALUES ('381', '21', '江阴', null, null, null, null);
INSERT INTO `param_city` VALUES ('382', '21', '靖江', null, null, null, null);
INSERT INTO `param_city` VALUES ('383', '21', '昆山', null, null, null, null);
INSERT INTO `param_city` VALUES ('384', '21', '溧阳', null, null, null, null);
INSERT INTO `param_city` VALUES ('385', '21', '太仓', null, null, null, null);
INSERT INTO `param_city` VALUES ('386', '21', '泰州华', null, null, null, null);
INSERT INTO `param_city` VALUES ('387', '21', '吴江', null, null, null, null);
INSERT INTO `param_city` VALUES ('388', '21', '吴县', null, null, null, null);
INSERT INTO `param_city` VALUES ('389', '21', '宜兴', null, null, null, null);
INSERT INTO `param_city` VALUES ('390', '21', '张家港', null, null, null, null);
INSERT INTO `param_city` VALUES ('391', '22', '杭州', null, null, null, null);
INSERT INTO `param_city` VALUES ('392', '22', '宁波', null, null, null, null);
INSERT INTO `param_city` VALUES ('393', '22', '温州', null, null, null, null);
INSERT INTO `param_city` VALUES ('394', '22', '嘉兴', null, null, null, null);
INSERT INTO `param_city` VALUES ('395', '22', '湖州', null, null, null, null);
INSERT INTO `param_city` VALUES ('396', '22', '绍兴', null, null, null, null);
INSERT INTO `param_city` VALUES ('397', '22', '金华', null, null, null, null);
INSERT INTO `param_city` VALUES ('398', '22', '衢州', null, null, null, null);
INSERT INTO `param_city` VALUES ('399', '22', '舟山', null, null, null, null);
INSERT INTO `param_city` VALUES ('400', '22', '台州', null, null, null, null);
INSERT INTO `param_city` VALUES ('401', '22', '丽水', null, null, null, null);
INSERT INTO `param_city` VALUES ('402', '22', '慈溪', null, null, null, null);
INSERT INTO `param_city` VALUES ('403', '22', '东阳', null, null, null, null);
INSERT INTO `param_city` VALUES ('404', '22', '奉化', null, null, null, null);
INSERT INTO `param_city` VALUES ('405', '22', '乐清', null, null, null, null);
INSERT INTO `param_city` VALUES ('406', '22', '临安', null, null, null, null);
INSERT INTO `param_city` VALUES ('407', '22', '临海', null, null, null, null);
INSERT INTO `param_city` VALUES ('408', '22', '平湖', null, null, null, null);
INSERT INTO `param_city` VALUES ('409', '22', '瑞安', null, null, null, null);
INSERT INTO `param_city` VALUES ('410', '22', '上虞', null, null, null, null);
INSERT INTO `param_city` VALUES ('411', '22', '嵊州', null, null, null, null);
INSERT INTO `param_city` VALUES ('412', '22', '温岭', null, null, null, null);
INSERT INTO `param_city` VALUES ('413', '22', '义乌', null, null, null, null);
INSERT INTO `param_city` VALUES ('414', '22', '永康', null, null, null, null);
INSERT INTO `param_city` VALUES ('415', '22', '余姚', null, null, null, null);
INSERT INTO `param_city` VALUES ('416', '22', '诸暨', null, null, null, null);
INSERT INTO `param_city` VALUES ('417', '22', '新昌', null, null, null, null);
INSERT INTO `param_city` VALUES ('418', '23', '南昌', null, null, null, null);
INSERT INTO `param_city` VALUES ('419', '23', '景德镇', null, null, null, null);
INSERT INTO `param_city` VALUES ('420', '23', '萍乡', null, null, null, null);
INSERT INTO `param_city` VALUES ('421', '23', '新余', null, null, null, null);
INSERT INTO `param_city` VALUES ('422', '23', '九江', null, null, null, null);
INSERT INTO `param_city` VALUES ('423', '23', '鹰潭', null, null, null, null);
INSERT INTO `param_city` VALUES ('424', '23', '赣州', null, null, null, null);
INSERT INTO `param_city` VALUES ('425', '23', '吉安', null, null, null, null);
INSERT INTO `param_city` VALUES ('426', '23', '宜春', null, null, null, null);
INSERT INTO `param_city` VALUES ('427', '23', '抚州', null, null, null, null);
INSERT INTO `param_city` VALUES ('428', '23', '上饶', null, null, null, null);
INSERT INTO `param_city` VALUES ('429', '23', '高安', null, null, null, null);
INSERT INTO `param_city` VALUES ('430', '24', '广州', null, null, null, null);
INSERT INTO `param_city` VALUES ('431', '24', '深圳', null, null, null, null);
INSERT INTO `param_city` VALUES ('432', '24', '珠海', null, null, null, null);
INSERT INTO `param_city` VALUES ('433', '24', '汕头', null, null, null, null);
INSERT INTO `param_city` VALUES ('434', '24', '韶关', null, null, null, null);
INSERT INTO `param_city` VALUES ('435', '24', '河源', null, null, null, null);
INSERT INTO `param_city` VALUES ('436', '24', '梅州', null, null, null, null);
INSERT INTO `param_city` VALUES ('437', '24', '惠州', null, null, null, null);
INSERT INTO `param_city` VALUES ('438', '24', '汕尾', null, null, null, null);
INSERT INTO `param_city` VALUES ('439', '24', '东莞', null, null, null, null);
INSERT INTO `param_city` VALUES ('440', '24', '中山', null, null, null, null);
INSERT INTO `param_city` VALUES ('441', '24', '江门', null, null, null, null);
INSERT INTO `param_city` VALUES ('442', '24', '佛山', null, null, null, null);
INSERT INTO `param_city` VALUES ('443', '24', '阳江', null, null, null, null);
INSERT INTO `param_city` VALUES ('444', '24', '湛江', null, null, null, null);
INSERT INTO `param_city` VALUES ('445', '24', '茂名', null, null, null, null);
INSERT INTO `param_city` VALUES ('446', '24', '肇庆', null, null, null, null);
INSERT INTO `param_city` VALUES ('447', '24', '清远', null, null, null, null);
INSERT INTO `param_city` VALUES ('448', '24', '潮州', null, null, null, null);
INSERT INTO `param_city` VALUES ('449', '24', '揭阳', null, null, null, null);
INSERT INTO `param_city` VALUES ('450', '24', '云浮', null, null, null, null);
INSERT INTO `param_city` VALUES ('451', '24', '花都', null, null, null, null);
INSERT INTO `param_city` VALUES ('452', '24', '开平', null, null, null, null);
INSERT INTO `param_city` VALUES ('453', '24', '南海', null, null, null, null);
INSERT INTO `param_city` VALUES ('454', '24', '顺德', null, null, null, null);
INSERT INTO `param_city` VALUES ('455', '24', '台山', null, null, null, null);
INSERT INTO `param_city` VALUES ('456', '24', '增城', null, null, null, null);
INSERT INTO `param_city` VALUES ('457', '24', '市梅', null, null, null, null);
INSERT INTO `param_city` VALUES ('458', '25', '南宁', null, null, null, null);
INSERT INTO `param_city` VALUES ('459', '25', '柳州', null, null, null, null);
INSERT INTO `param_city` VALUES ('460', '25', '桂林', null, null, null, null);
INSERT INTO `param_city` VALUES ('461', '25', '梧州', null, null, null, null);
INSERT INTO `param_city` VALUES ('462', '25', '北海', null, null, null, null);
INSERT INTO `param_city` VALUES ('463', '25', '防城港', null, null, null, null);
INSERT INTO `param_city` VALUES ('464', '25', '钦州', null, null, null, null);
INSERT INTO `param_city` VALUES ('465', '25', '贵港', null, null, null, null);
INSERT INTO `param_city` VALUES ('466', '25', '玉林', null, null, null, null);
INSERT INTO `param_city` VALUES ('467', '25', '百色', null, null, null, null);
INSERT INTO `param_city` VALUES ('468', '25', '贺州', null, null, null, null);
INSERT INTO `param_city` VALUES ('469', '25', '河池', null, null, null, null);
INSERT INTO `param_city` VALUES ('470', '25', '来宾', null, null, null, null);
INSERT INTO `param_city` VALUES ('471', '25', '崇左', null, null, null, null);
INSERT INTO `param_city` VALUES ('472', '26', '福州', null, null, null, null);
INSERT INTO `param_city` VALUES ('473', '26', '厦门', null, null, null, null);
INSERT INTO `param_city` VALUES ('474', '26', '三明', null, null, null, null);
INSERT INTO `param_city` VALUES ('475', '26', '莆田', null, null, null, null);
INSERT INTO `param_city` VALUES ('476', '26', '泉州', null, null, null, null);
INSERT INTO `param_city` VALUES ('477', '26', '漳州', null, null, null, null);
INSERT INTO `param_city` VALUES ('478', '26', '南平', null, null, null, null);
INSERT INTO `param_city` VALUES ('479', '26', '龙岩', null, null, null, null);
INSERT INTO `param_city` VALUES ('480', '26', '宁德', null, null, null, null);
INSERT INTO `param_city` VALUES ('481', '26', '福清', null, null, null, null);
INSERT INTO `param_city` VALUES ('482', '26', '建瓯', null, null, null, null);
INSERT INTO `param_city` VALUES ('483', '26', '晋江', null, null, null, null);
INSERT INTO `param_city` VALUES ('484', '26', '南安', null, null, null, null);
INSERT INTO `param_city` VALUES ('485', '26', '邵武', null, null, null, null);
INSERT INTO `param_city` VALUES ('486', '26', '石狮', null, null, null, null);
INSERT INTO `param_city` VALUES ('487', '26', '仙游', null, null, null, null);
INSERT INTO `param_city` VALUES ('488', '27', '成都', null, null, null, null);
INSERT INTO `param_city` VALUES ('489', '27', '自贡', null, null, null, null);
INSERT INTO `param_city` VALUES ('490', '27', '攀枝花', null, null, null, null);
INSERT INTO `param_city` VALUES ('491', '27', '泸州', null, null, null, null);
INSERT INTO `param_city` VALUES ('492', '27', '德阳', null, null, null, null);
INSERT INTO `param_city` VALUES ('493', '27', '绵阳', null, null, null, null);
INSERT INTO `param_city` VALUES ('494', '27', '广元', null, null, null, null);
INSERT INTO `param_city` VALUES ('495', '27', '遂宁', null, null, null, null);
INSERT INTO `param_city` VALUES ('496', '27', '内江', null, null, null, null);
INSERT INTO `param_city` VALUES ('497', '27', '乐山', null, null, null, null);
INSERT INTO `param_city` VALUES ('498', '27', '南充', null, null, null, null);
INSERT INTO `param_city` VALUES ('499', '27', '宜宾', null, null, null, null);
INSERT INTO `param_city` VALUES ('500', '27', '广安', null, null, null, null);
INSERT INTO `param_city` VALUES ('501', '27', '达州', null, null, null, null);
INSERT INTO `param_city` VALUES ('502', '27', '巴中', null, null, null, null);
INSERT INTO `param_city` VALUES ('503', '27', '雅安', null, null, null, null);
INSERT INTO `param_city` VALUES ('504', '27', '眉山', null, null, null, null);
INSERT INTO `param_city` VALUES ('505', '27', '资阳', null, null, null, null);
INSERT INTO `param_city` VALUES ('506', '27', '阿坝藏族羌族自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('507', '27', '甘孜藏族自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('508', '27', '凉山彝族自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('509', '27', '广汉', null, null, null, null);
INSERT INTO `param_city` VALUES ('510', '27', '锦阳', null, null, null, null);
INSERT INTO `param_city` VALUES ('511', '27', '西昌', null, null, null, null);
INSERT INTO `param_city` VALUES ('512', '28', '昆明', null, null, null, null);
INSERT INTO `param_city` VALUES ('513', '28', '曲靖', null, null, null, null);
INSERT INTO `param_city` VALUES ('514', '28', '玉溪', null, null, null, null);
INSERT INTO `param_city` VALUES ('515', '28', '保山', null, null, null, null);
INSERT INTO `param_city` VALUES ('516', '28', '昭通', null, null, null, null);
INSERT INTO `param_city` VALUES ('517', '28', '思茅地区', null, null, null, null);
INSERT INTO `param_city` VALUES ('518', '28', '临沧地区', null, null, null, null);
INSERT INTO `param_city` VALUES ('519', '28', '丽江', null, null, null, null);
INSERT INTO `param_city` VALUES ('520', '28', ' 文山壮族苗族自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('521', '28', '红河哈尼族彝族自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('522', '28', '西双版纳傣族自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('523', '28', '楚雄彝族自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('524', '28', '大理白族自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('525', '28', '德宏傣族景颇族自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('526', '28', '怒江傈傈族自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('527', '28', '迪庆藏族自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('528', '28', '大理', null, null, null, null);
INSERT INTO `param_city` VALUES ('529', '29', '贵阳', null, null, null, null);
INSERT INTO `param_city` VALUES ('530', '29', '六盘水', null, null, null, null);
INSERT INTO `param_city` VALUES ('531', '29', '遵义', null, null, null, null);
INSERT INTO `param_city` VALUES ('532', '29', '安顺', null, null, null, null);
INSERT INTO `param_city` VALUES ('533', '29', '铜仁地区', null, null, null, null);
INSERT INTO `param_city` VALUES ('534', '29', '毕节地区', null, null, null, null);
INSERT INTO `param_city` VALUES ('535', '29', '黔西南布依族苗族自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('536', '29', '黔东南苗族侗族自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('537', '29', '黔南布依族苗族自治州', null, null, null, null);
INSERT INTO `param_city` VALUES ('538', '29', '都匀', null, null, null, null);
INSERT INTO `param_city` VALUES ('539', '29', '贵恙', null, null, null, null);
INSERT INTO `param_city` VALUES ('540', '29', '凯里', null, null, null, null);
INSERT INTO `param_city` VALUES ('541', '29', '铜仁', null, null, null, null);
INSERT INTO `param_city` VALUES ('542', '30', '拉萨', null, null, null, null);
INSERT INTO `param_city` VALUES ('543', '30', '那曲地区', null, null, null, null);
INSERT INTO `param_city` VALUES ('544', '30', '昌都地区', null, null, null, null);
INSERT INTO `param_city` VALUES ('545', '30', '山南地区', null, null, null, null);
INSERT INTO `param_city` VALUES ('546', '30', '日喀则地区', null, null, null, null);
INSERT INTO `param_city` VALUES ('547', '30', '阿里地区', null, null, null, null);
INSERT INTO `param_city` VALUES ('548', '30', '林芝地区', null, null, null, null);
INSERT INTO `param_city` VALUES ('549', '31', '海口', null, null, null, null);
INSERT INTO `param_city` VALUES ('550', '31', '三亚', null, null, null, null);
INSERT INTO `param_city` VALUES ('551', '34', '台北', null, null, null, null);
INSERT INTO `param_city` VALUES ('552', '34', '高雄', null, null, null, null);
INSERT INTO `param_city` VALUES ('553', '34', '台中', null, null, null, null);
INSERT INTO `param_city` VALUES ('554', '34', '台南', null, null, null, null);
INSERT INTO `param_city` VALUES ('555', '34', '基隆', null, null, null, null);
INSERT INTO `param_city` VALUES ('556', '34', '新竹', null, null, null, null);

-- ----------------------------
-- Table structure for param_sysparam
-- ----------------------------
DROP TABLE IF EXISTS `param_sysparam`;
CREATE TABLE `param_sysparam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentid` int(11) DEFAULT NULL,
  `params_name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `params_order` int(11) DEFAULT NULL,
  `Create_id` int(11) DEFAULT NULL,
  `Create_date` datetime DEFAULT NULL,
  `Update_id` int(11) DEFAULT NULL,
  `Update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of param_sysparam
-- ----------------------------

-- ----------------------------
-- Table structure for param_sysparam_type
-- ----------------------------
DROP TABLE IF EXISTS `param_sysparam_type`;
CREATE TABLE `param_sysparam_type` (
  `id` int(11) NOT NULL,
  `params_name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `params_order` int(11) DEFAULT NULL,
  `isDelete` int(11) DEFAULT NULL,
  `Delete_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of param_sysparam_type
-- ----------------------------

-- ----------------------------
-- Table structure for personal_calendar
-- ----------------------------
DROP TABLE IF EXISTS `personal_calendar`;
CREATE TABLE `personal_calendar` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` int(11) DEFAULT NULL,
  `emp_name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `Subject` longtext CHARACTER SET utf8,
  `Location` longtext CHARACTER SET utf8,
  `MasterId` int(11) DEFAULT NULL,
  `Description` longtext CHARACTER SET utf8,
  `CalendarType` tinyint(3) unsigned DEFAULT NULL,
  `StartTime` datetime DEFAULT NULL,
  `EndTime` datetime DEFAULT NULL,
  `IsAllDayEvent` bit(1) DEFAULT NULL,
  `HasAttachment` bit(1) DEFAULT NULL,
  `Category` longtext CHARACTER SET utf8,
  `InstanceType` tinyint(3) unsigned DEFAULT NULL,
  `Attendees` longtext CHARACTER SET utf8,
  `AttendeeNames` longtext CHARACTER SET utf8,
  `OtherAttendee` longtext CHARACTER SET utf8,
  `UPAccount` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `UPName` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `UPTime` datetime DEFAULT NULL,
  `RecurringRule` longtext CHARACTER SET utf8,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of personal_calendar
-- ----------------------------
INSERT INTO `personal_calendar` VALUES ('1', '1', null, null, 'sssss test', null, '8', null, '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '\0', null, '1', '0', null, null, null, '1', null, '2018-02-11 12:19:59', null);
INSERT INTO `personal_calendar` VALUES ('2', '1', null, null, 'sdfsss', null, '8', null, '1', '2018-02-11 12:20:00', '2018-02-12 12:20:00', '\0', null, '1', '0', null, null, null, '1', null, '2018-02-11 12:20:38', null);

-- ----------------------------
-- Table structure for personal_notes
-- ----------------------------
DROP TABLE IF EXISTS `personal_notes`;
CREATE TABLE `personal_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` int(11) DEFAULT NULL,
  `emp_name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `note_content` longtext CHARACTER SET utf8,
  `note_color` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `xyz` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `note_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of personal_notes
-- ----------------------------
INSERT INTO `personal_notes` VALUES ('1', '1', null, 'test', 'blue', '385,0,4', '2018-02-11 12:19:11');
INSERT INTO `personal_notes` VALUES ('2', '1', null, 'sssss', 'yellow', '153,0,1', '2018-02-11 12:19:17');
INSERT INTO `personal_notes` VALUES ('3', '1', null, 'tssss', 'green', '592,0,6', '2018-02-11 12:19:30');
INSERT INTO `personal_notes` VALUES ('4', '1', null, 'ssssddd', 'yellow', '262,185,1', '2018-02-11 13:47:52');

-- ----------------------------
-- Table structure for public_news
-- ----------------------------
DROP TABLE IF EXISTS `public_news`;
CREATE TABLE `public_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_title` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `news_content` longtext CHARACTER SET utf8,
  `create_id` int(11) DEFAULT NULL,
  `create_name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `dep_id` int(11) DEFAULT NULL,
  `dep_name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `news_time` datetime DEFAULT NULL,
  `isDelete` int(11) DEFAULT NULL,
  `Delete_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of public_news
-- ----------------------------
INSERT INTO `public_news` VALUES ('1', 'test', '&lt;p&gt;sssss tste&lt;/p&gt;', '1', '超级管理员', '0', '', '2018-02-11 12:23:29', null, null);

-- ----------------------------
-- Table structure for public_notice
-- ----------------------------
DROP TABLE IF EXISTS `public_notice`;
CREATE TABLE `public_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notice_title` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `notice_content` longtext CHARACTER SET utf8,
  `create_id` int(11) DEFAULT NULL,
  `create_name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `dep_id` int(11) DEFAULT NULL,
  `dep_name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `notice_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of public_notice
-- ----------------------------
INSERT INTO `public_notice` VALUES ('1', 'assfssss', '&lt;p&gt;ssssas &nbsp;tsss&lt;/p&gt;', '1', '超级管理员', '0', '', '2018-02-11 13:55:38');

-- ----------------------------
-- Table structure for sys_app
-- ----------------------------
DROP TABLE IF EXISTS `sys_app`;
CREATE TABLE `sys_app` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `App_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `App_order` int(11) DEFAULT NULL,
  `App_url` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `App_handler` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `App_type` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `App_icon` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sys_app
-- ----------------------------
INSERT INTO `sys_app` VALUES ('1', '我的主页', '10', null, null, null, 'images/icon/62.png');
INSERT INTO `sys_app` VALUES ('3', '人事管理', '30', null, null, null, 'images/icon/37.png');
INSERT INTO `sys_app` VALUES ('6', '系统管理', '40', null, null, null, 'images/icon/77.png');

-- ----------------------------
-- Table structure for sys_authority
-- ----------------------------
DROP TABLE IF EXISTS `sys_authority`;
CREATE TABLE `sys_authority` (
  `Role_id` int(11) NOT NULL,
  `App_ids` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `Menu_ids` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `Button_ids` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `Create_id` int(11) DEFAULT NULL,
  `Create_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sys_authority
-- ----------------------------
INSERT INTO `sys_authority` VALUES ('1', 'a3,', 'm17,m21,m22,m23,m24,', 'b21,b22,b20,b23,b24,b25,b28,b27,b26,b29,b31,b30,b92,', null, null);
INSERT INTO `sys_authority` VALUES ('1', 'a1,', 'm1,m2,m7,m12,m13,m14,', 'b93,b94,b95,b11,b12,b13,', null, null);
INSERT INTO `sys_authority` VALUES ('1', 'a6,', 'm30,m31,m32,m43,m84,m85,m86,m95,m59,m76,', 'b32,b34,b33,b35,b37,b36,b87,b85,b86,b88,b89,b90,b4,b5,b6,b7,b1,b2,b3,', null, null);
INSERT INTO `sys_authority` VALUES ('1', 'a7,', 'm101,m96,m97,m98,m99,m100,', '', null, null);
INSERT INTO `sys_authority` VALUES ('2', 'a7,', 'm101,m96,m97,m98,m99,m100,', '', null, null);
INSERT INTO `sys_authority` VALUES ('2', 'a1,', 'm1,m2,m7,m12,m13,m14,', ',,b93,b94,b95,b11,b12,b13,', null, null);
INSERT INTO `sys_authority` VALUES ('3', 'a1,', 'm1,m2,m7,m12,m13,m14,', ',,b93,b94,b95,b11,b12,b13,', null, null);
INSERT INTO `sys_authority` VALUES ('3', 'a7,', 'm101,m96,m99,', ',,', null, null);

-- ----------------------------
-- Table structure for sys_button
-- ----------------------------
DROP TABLE IF EXISTS `sys_button`;
CREATE TABLE `sys_button` (
  `Btn_id` int(11) NOT NULL AUTO_INCREMENT,
  `Btn_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Btn_icon` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Btn_handler` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Menu_id` int(11) DEFAULT NULL,
  `Menu_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Btn_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`Btn_id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sys_button
-- ----------------------------
INSERT INTO `sys_button` VALUES ('1', '新增', 'images/icon/11.png', 'add()', '76', '目录管理', '10');
INSERT INTO `sys_button` VALUES ('2', '修改', 'images/icon/33.png', 'edit()', '76', '目录管理', '20');
INSERT INTO `sys_button` VALUES ('3', '删除', 'images/icon/12.png', 'del()', '76', '目录管理', '30');
INSERT INTO `sys_button` VALUES ('4', '新增', 'images/icon/11.png', 'add()', '59', '按钮管理', '10');
INSERT INTO `sys_button` VALUES ('5', '修改', 'images/icon/33.png', 'edit()', '59', '按钮管理', '20');
INSERT INTO `sys_button` VALUES ('6', '删除', 'images/icon/12.png', 'del()', '59', '按钮管理', '30');
INSERT INTO `sys_button` VALUES ('7', '批量新增', 'images/icon/69.png', 'batch()', '59', '按钮管理', '40');
INSERT INTO `sys_button` VALUES ('11', '新增', 'images/icon/11.png', 'add()', '14', '公告', '10');
INSERT INTO `sys_button` VALUES ('12', '修改', 'images/icon/33.png', 'edit()', '14', '公告', '20');
INSERT INTO `sys_button` VALUES ('13', '删除', 'images/icon/12.png', 'del()', '14', '公告', '30');
INSERT INTO `sys_button` VALUES ('20', '删除', 'images/icon/12.png', 'del()', '21', '组织架构', '30');
INSERT INTO `sys_button` VALUES ('21', '新增', 'images/icon/11.png', 'add()', '21', '组织架构', '10');
INSERT INTO `sys_button` VALUES ('22', '修改', 'images/icon/33.png', 'edit()', '21', '组织架构', '20');
INSERT INTO `sys_button` VALUES ('23', '新增', 'images/icon/11.png', 'add()', '22', '职务管理', '10');
INSERT INTO `sys_button` VALUES ('24', '修改', 'images/icon/33.png', 'edit()', '22', '职务管理', '20');
INSERT INTO `sys_button` VALUES ('25', '删除', 'images/icon/12.png', 'del()', '22', '职务管理', '30');
INSERT INTO `sys_button` VALUES ('26', '删除', 'images/icon/12.png', 'del()', '23', '岗位管理', '30');
INSERT INTO `sys_button` VALUES ('27', '修改', 'images/icon/33.png', 'edit()', '23', '岗位管理', '20');
INSERT INTO `sys_button` VALUES ('28', '新增', 'images/icon/11.png', 'add()', '23', '岗位管理', '10');
INSERT INTO `sys_button` VALUES ('29', '新增', 'images/icon/11.png', 'add()', '24', '员工管理', '10');
INSERT INTO `sys_button` VALUES ('30', '删除', 'images/icon/12.png', 'del()', '24', '员工管理', '30');
INSERT INTO `sys_button` VALUES ('31', '修改', 'images/icon/33.png', 'edit()', '24', '员工管理', '20');
INSERT INTO `sys_button` VALUES ('32', '新增', 'images/icon/11.png', 'add()', '31', '角色授权', '10');
INSERT INTO `sys_button` VALUES ('33', '删除', 'images/icon/12.png', 'del()', '31', '角色授权', '30');
INSERT INTO `sys_button` VALUES ('34', '修改', 'images/icon/33.png', 'edit()', '31', '角色授权', '20');
INSERT INTO `sys_button` VALUES ('35', '操作权限', 'images/icon/91.png', 'authorized()', '31', '角色授权', '40');
INSERT INTO `sys_button` VALUES ('36', '包含人员', 'images/icon/37.png', 'role_emp()', '31', '角色授权', '60');
INSERT INTO `sys_button` VALUES ('85', '修改', 'images/icon/33.png', 'edit()', '43', '参数配置', '20');
INSERT INTO `sys_button` VALUES ('86', '删除', 'images/icon/12.png', 'del()', '43', '参数配置', '30');
INSERT INTO `sys_button` VALUES ('87', '新增', 'images/icon/11.png', 'add()', '43', '参数配置', '10');
INSERT INTO `sys_button` VALUES ('88', '新增', 'images/icon/11.png', 'add()', '84', '城市管理', '10');
INSERT INTO `sys_button` VALUES ('89', '修改', 'images/icon/33.png', 'edit()', '84', '城市管理', '20');
INSERT INTO `sys_button` VALUES ('90', '删除', 'images/icon/12.png', 'del()', '84', '城市管理', '30');
INSERT INTO `sys_button` VALUES ('92', '修改密码', 'images/icon/36.png', 'changepwd()', '24', '员工管理', '40');
INSERT INTO `sys_button` VALUES ('93', '新增', 'images/icon/11.png', 'add()', '13', '新闻', '10');
INSERT INTO `sys_button` VALUES ('94', '修改', 'images/icon/33.png', 'edit()', '13', '新闻', '20');
INSERT INTO `sys_button` VALUES ('95', '删除', 'images/icon/12.png', 'del()', '13', '新闻', '30');

-- ----------------------------
-- Table structure for sys_data_authority
-- ----------------------------
DROP TABLE IF EXISTS `sys_data_authority`;
CREATE TABLE `sys_data_authority` (
  `Role_id` int(11) DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `Sys_option` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `Sys_view` int(11) DEFAULT NULL,
  `Sys_add` int(11) DEFAULT NULL,
  `Sys_edit` int(11) DEFAULT NULL,
  `Sys_del` int(11) DEFAULT NULL,
  `Create_id` int(11) DEFAULT NULL,
  `Create_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sys_data_authority
-- ----------------------------
INSERT INTO `sys_data_authority` VALUES ('1', '1', '客户管理', '4', '4', '4', '4', null, null);
INSERT INTO `sys_data_authority` VALUES ('1', '2', '跟进管理', '4', '1', '4', '4', null, null);
INSERT INTO `sys_data_authority` VALUES ('1', '3', '订单管理', '4', '4', '4', '4', null, null);
INSERT INTO `sys_data_authority` VALUES ('1', '4', '合同管理', '4', '4', '4', '4', null, null);
INSERT INTO `sys_data_authority` VALUES ('2', '1', '客户管理', '1', '1', '1', '1', null, null);
INSERT INTO `sys_data_authority` VALUES ('2', '2', '跟进管理', '1', '1', '1', '1', null, null);
INSERT INTO `sys_data_authority` VALUES ('2', '3', '订单管理', '1', '1', '1', '1', null, null);
INSERT INTO `sys_data_authority` VALUES ('2', '4', '合同管理', '1', '1', '1', '1', null, null);
INSERT INTO `sys_data_authority` VALUES ('3', '1', '客户管理', '1', '1', '1', '1', null, null);
INSERT INTO `sys_data_authority` VALUES ('3', '2', '跟进管理', '1', '1', '1', '1', null, null);
INSERT INTO `sys_data_authority` VALUES ('3', '3', '订单管理', '1', '1', '1', '1', null, null);
INSERT INTO `sys_data_authority` VALUES ('3', '4', '合同管理', '1', '1', '1', '1', null, null);

-- ----------------------------
-- Table structure for sys_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_info`;
CREATE TABLE `sys_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sys_key` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `sys_value` longtext CHARACTER SET utf8,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sys_info
-- ----------------------------
INSERT INTO `sys_info` VALUES ('1', 'sys_guid', '81A9C576-C0A3-4895-95A0-9E82D70FEA56');
INSERT INTO `sys_info` VALUES ('2', 'sys_name', '广联达智能化平台管理');
INSERT INTO `sys_info` VALUES ('3', 'sys_logo', 'images/logo/logo.png');
INSERT INTO `sys_info` VALUES ('4', 'sys_version', 'v1.0.0.0');
INSERT INTO `sys_info` VALUES ('5', 'sys_vinfo', '测试版本');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `EventType` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `EventID` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `EventTitle` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `Original_txt` text CHARACTER SET utf8,
  `Current_txt` text CHARACTER SET utf8,
  `UserID` int(11) DEFAULT NULL,
  `UserName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `IPStreet` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `EventDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('1', '系统登录', null, null, null, null, '1', '超级管理员', '::1', '2018-03-22 11:58:40');
INSERT INTO `sys_log` VALUES ('2', '系统登录', null, null, null, null, '1', '超级管理员', '::1', '2018-03-22 14:47:01');
INSERT INTO `sys_log` VALUES ('3', '系统登录', null, null, null, null, '1', '超级管理员', '::1', '2018-03-22 14:47:25');
INSERT INTO `sys_log` VALUES ('4', '系统登录', null, null, null, null, '1', '超级管理员', '::1', '2018-03-22 14:48:50');
INSERT INTO `sys_log` VALUES ('5', '系统登录', null, null, null, null, '1', '超级管理员', '::1', '2018-03-22 14:49:58');
INSERT INTO `sys_log` VALUES ('6', '系统登录', null, null, null, null, '1', '超级管理员', '::1', '2018-03-22 14:50:39');
INSERT INTO `sys_log` VALUES ('7', '系统登录', null, null, null, null, '1', '超级管理员', '::1', '2018-03-22 14:51:57');

-- ----------------------------
-- Table structure for sys_log_err
-- ----------------------------
DROP TABLE IF EXISTS `sys_log_err`;
CREATE TABLE `sys_log_err` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Err_typeid` int(11) DEFAULT NULL,
  `Err_type` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `Err_time` datetime DEFAULT NULL,
  `Err_url` text CHARACTER SET utf8,
  `Err_message` longtext CHARACTER SET utf8,
  `Err_source` text CHARACTER SET utf8,
  `Err_trace` longtext CHARACTER SET utf8,
  `Err_emp_id` int(11) DEFAULT NULL,
  `Err_emp_name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `Err_ip` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sys_log_err
-- ----------------------------

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `Menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `Menu_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `parentid` int(11) DEFAULT NULL,
  `parentname` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `App_id` int(11) DEFAULT NULL,
  `Menu_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Menu_icon` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Menu_handler` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Menu_order` int(11) DEFAULT NULL,
  `Menu_type` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`Menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '个人工作', '0', '无', '1', '', 'images/icon/37.png', null, '10', 'sys');
INSERT INTO `sys_menu` VALUES ('2', '我的便签', '1', '个人工作', '1', 'personal/personal/notes.aspx', 'images/icon/33.png', null, '10', 'sys');
INSERT INTO `sys_menu` VALUES ('7', '日程安排', '1', '个人工作', '1', 'personal/personal/Calendar.aspx', 'images/icon/29.png', null, '20', 'sys');
INSERT INTO `sys_menu` VALUES ('12', '信息中心', '0', '无', '1', '', 'images/icon/56.png', null, '30', 'sys');
INSERT INTO `sys_menu` VALUES ('13', '新闻', '12', '信息中心', '1', 'personal/message/news.aspx', 'images/icon/57.png', null, '10', 'sys');
INSERT INTO `sys_menu` VALUES ('14', '公告', '12', '信息中心', '1', 'personal/message/notice.aspx', 'images/icon/58.png', null, '20', 'sys');
INSERT INTO `sys_menu` VALUES ('17', '人事架构', '0', '无', '3', '', 'images/icon/37.png', null, '10', 'sys');
INSERT INTO `sys_menu` VALUES ('21', '组织架构', '17', '人事架构', '3', 'hr/hr_department.aspx', 'images/icon/67.png', null, '20', 'sys');
INSERT INTO `sys_menu` VALUES ('22', '职务管理', '17', '人事架构', '3', 'hr/hr_position.aspx', 'images/icon/68.png', null, '20', 'sys');
INSERT INTO `sys_menu` VALUES ('23', '岗位管理', '17', '人事架构', '3', 'hr/hr_post.aspx', 'images/icon/49.png', null, '30', 'sys');
INSERT INTO `sys_menu` VALUES ('24', '员工管理', '17', '人事架构', '3', 'hr/hr_employee.aspx', 'images/icon/37.png', null, '40', 'sys');
INSERT INTO `sys_menu` VALUES ('26', '劳动合同', '19', '人事资料', '3', 'hr/hr_contract.aspx', 'images/icon/24.png', null, '20', 'sys');
INSERT INTO `sys_menu` VALUES ('30', '系统管理', '0', '无', '6', '', 'images/icon/77.png', null, '10', 'sys');
INSERT INTO `sys_menu` VALUES ('31', '角色授权', '30', '系统管理', '6', 'System/Sys_role.aspx', 'images/icon/70.png', null, '10', 'sys');
INSERT INTO `sys_menu` VALUES ('32', '日志管理', '30', '系统管理', '6', 'system/sys_log.aspx', 'images/icon/51.png', null, '20', 'sys');
INSERT INTO `sys_menu` VALUES ('43', '参数配置', '30', '系统管理', '6', 'system/Param_SysParam.aspx', 'images/icon/77.png', null, '30', 'sys');
INSERT INTO `sys_menu` VALUES ('59', '按钮管理', '95', '配置信息', '6', 'system/sys_button.aspx', 'images/icon/85.png', null, '20', 'sys');
INSERT INTO `sys_menu` VALUES ('61', '系统信息', '61', '配置信息', '6', 'system/sys_info.aspx', 'images/icon/49.png', null, '10', 'sys');
INSERT INTO `sys_menu` VALUES ('76', '目录管理', '95', '配置信息', '6', 'system/sys_menu.aspx', 'images/icon/81.png', null, '10', 'sys');
INSERT INTO `sys_menu` VALUES ('84', '城市管理', '30', '系统管理', '6', 'system/Param_City.aspx', 'images/icon/64.png', null, '40', 'sys');
INSERT INTO `sys_menu` VALUES ('85', '系统信息', '0', '无', '6', '', 'images/icon/77.png', null, '20', 'sys');
INSERT INTO `sys_menu` VALUES ('86', '系统信息', '85', '系统信息', '6', 'system/sys_info.aspx', 'images/icon/77.png', null, '10', 'sys');
INSERT INTO `sys_menu` VALUES ('87', '版本信息', '85', '系统信息', '6', 'system/sys_version.aspx', 'images/icon/78.png', null, '20', 'sys');
INSERT INTO `sys_menu` VALUES ('95', '配置信息', '0', '无', '6', null, 'images/icon/37.png', null, '20', 'sys');

-- ----------------------------
-- Table structure for sys_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_online`;
CREATE TABLE `sys_online` (
  `UserID` int(11) DEFAULT NULL,
  `UserName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `LastLogTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sys_online
-- ----------------------------
INSERT INTO `sys_online` VALUES ('1', '超级管理员', '2018-03-22 14:51:58');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `RoleID` int(11) NOT NULL AUTO_INCREMENT,
  `RoleName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `RoleDscript` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `RoleSort` int(11) DEFAULT NULL,
  `CreateID` int(11) DEFAULT NULL,
  `CreateDate` datetime DEFAULT NULL,
  `UpdateID` int(11) DEFAULT NULL,
  `UpdateDate` datetime DEFAULT NULL,
  PRIMARY KEY (`RoleID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '系统管理员', '拥有全部权限', '999', null, null, null, null);
INSERT INTO `sys_role` VALUES ('2', 'test', 'test', '20', '1', '2018-02-19 20:02:03', null, null);
INSERT INTO `sys_role` VALUES ('3', '无权限角色测试', '无权限角色测试', '22', '1', '2018-02-24 17:36:15', null, null);

-- ----------------------------
-- Table structure for sys_role_emp
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_emp`;
CREATE TABLE `sys_role_emp` (
  `RoleID` int(11) NOT NULL,
  `empID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sys_role_emp
-- ----------------------------
INSERT INTO `sys_role_emp` VALUES ('2', '2');
INSERT INTO `sys_role_emp` VALUES ('3', '3');
INSERT INTO `sys_role_emp` VALUES ('1', '2');

-- ----------------------------
-- Table structure for tool_batch
-- ----------------------------
DROP TABLE IF EXISTS `tool_batch`;
CREATE TABLE `tool_batch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `batch_type` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `o_dep_id` int(11) DEFAULT NULL,
  `o_dep` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `o_emp_id` int(11) DEFAULT NULL,
  `o_emp` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `c_dep_id` int(11) DEFAULT NULL,
  `c_dep` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `c_emp_id` int(11) DEFAULT NULL,
  `c_emp` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `b_count` int(11) DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `create_name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tool_batch
-- ----------------------------

-- ----------------------------
-- Procedure structure for sp_AutoAddMoney
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_AutoAddMoney`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_AutoAddMoney`(IN `money` decimal)
BEGIN
	#Routine body goes here...
  if money<>0 then 
    update db_fz_czsr set INCOME_BUDGET=INCOME_BUDGET+money;
    update db_fz_czsr_ys set INCOME_BUDGET=INCOME_BUDGET+money;
    update db_fz_pay set PAY_MONEY=PAY_MONEY+money;
    update db_fz_pay_ys set PAY_MONEY=PAY_MONEY+money;
    update db_fz_zbxx set BUDGET_MONEY=BUDGET_MONEY+money;
    update db_fz_zysr set BUDGET_MONEY=BUDGET_MONEY+money;
  else 
    select '参数输入有误！';
  end if;

END
;;
DELIMITER ;

-- ----------------------------
-- Event structure for et_AutoAddMoney
-- ----------------------------
DROP EVENT IF EXISTS `et_AutoAddMoney`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `et_AutoAddMoney` ON SCHEDULE EVERY 3 SECOND STARTS '2018-02-25 18:22:36' ON COMPLETION NOT PRESERVE DISABLE DO call sp_AutoAddMoney(100)
;;
DELIMITER ;
