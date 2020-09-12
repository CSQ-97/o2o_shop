/*
Navicat MySQL Data Transfer

Source Server         : xm
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : imooc_o2o

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-02-28 15:14:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for o2o_area
-- ----------------------------
DROP TABLE IF EXISTS `o2o_area`;
CREATE TABLE `o2o_area` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `city_id` int(11) unsigned NOT NULL DEFAULT '0',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `listorder` varchar(20) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `city_id` (`city_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of o2o_area
-- ----------------------------

-- ----------------------------
-- Table structure for o2o_bis
-- ----------------------------
DROP TABLE IF EXISTS `o2o_bis`;
CREATE TABLE `o2o_bis` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `logo` varchar(255) NOT NULL DEFAULT '',
  `licence_logo` varchar(255) NOT NULL DEFAULT '' COMMENT '营业执照照片',
  `description` text NOT NULL,
  `city_id` int(11) unsigned NOT NULL DEFAULT '0',
  `city_path` varchar(255) NOT NULL DEFAULT '' COMMENT '1,2',
  `bank_info` varchar(255) NOT NULL DEFAULT '' COMMENT '体现银行账号',
  `money` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '金额',
  `bank_name` varchar(30) NOT NULL DEFAULT '' COMMENT '提现的开户行名称',
  `bank_user` varchar(30) NOT NULL DEFAULT '' COMMENT '提现的开户行姓名',
  `faren` varchar(255) NOT NULL COMMENT '法人',
  `faren_tel` varchar(255) NOT NULL COMMENT '法人联系电话',
  `listorder` varchar(20) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `city_id` (`city_id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of o2o_bis
-- ----------------------------
INSERT INTO `o2o_bis` VALUES ('1', 'test11111', 'tracywxh0830@126.com', '/upload/20170122/4dd8bbfc7cd3b94cb1a7103191b76662.png', '/upload/20170122/92954b81303a22bd63edce3146c40e19.png', '<p>ss</p>', '4', '4,8', '123', '0.00', '中国农业银行', '王新华', '王新华', '18618158951', '0', '-1', '1485041424', '1486199610');
INSERT INTO `o2o_bis` VALUES ('2', '肯德基哈', 'tracywxh0830@126.com', '/upload/20170122/7b250f7b0af5a4a3c25fa050594fa518.png', '/upload/20170122/b041ef62b92d17ca842713d136628005.png', '<p>水水水水</p>', '4', '4,5', '123', '0.00', '中国农业银行', '王新华', '王新华', '18618158951', '0', '1', '1485043108', '1486200038');
INSERT INTO `o2o_bis` VALUES ('3', 'test1', 'tracywxh0830@126.com', '/upload/20170122/d661330e18bc6a1df35b9a534a13c42d.png', '/upload/20170122/ef8432eccd8af3c0992eae4e630ac259.png', '<p>22ww</p>', '4', '4,8', '123', '0.00', '中国农业银行', '王新华', '王新华', '18618158951', '0', '0', '1485044342', '1486199730');
INSERT INTO `o2o_bis` VALUES ('4', '测试商户', 'tracywxh0830@126.com', '/upload/20170122/28141ad57dbe4191f948bf3211b96b43.png', '/upload/20170122/0abbc2d97c52e0883bac9522d27f0244.png', '<p>试试</p>', '4', '4,5', '123', '0.00', '中国农业银行', '王新华', '王新华', '18618158951', '0', '1', '1485045612', '1486200032');
INSERT INTO `o2o_bis` VALUES ('5', '牛太郎自助烧烤', 'tracywxh0830@126.com', '/upload/20170219/13aacdc4185ac77ddcc6b2d1f356fbd1.jpg', '/upload/20170219/df40f1c2e5a16c296364e4d2393127d6.jpg', '<p><img src=\"/ueditor/php/upload/image/20170219/1487489066106453.jpg\" title=\"图片\" style=\"border: 0px; padding: 0px; margin: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; float: none; display: block;\"/><br/><img src=\"/ueditor/php/upload/image/20170219/1487489066181286.jpg\" title=\"图片\" style=\"border: 0px; padding: 0px; margin: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; float: none; display: block;\"/><br/><img src=\"/ueditor/php/upload/image/20170219/1487489066428679.jpg\" title=\"图片\" style=\"border: 0px; padding: 0px; margin: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; float: none; display: block;\"/><br/><img src=\"/ueditor/php/upload/image/20170219/1487489066858311.jpg\" title=\"图片\" style=\"border: 0px; padding: 0px; margin: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; float: none; display: block;\"/></p><p><br/></p>', '4', '4,5', '22234665464564', '0.00', '中国农业银行', '王南昌', '王南昌', '18618158951', '0', '1', '1487489106', '1487489187');
INSERT INTO `o2o_bis` VALUES ('6', '江户前料理', '', '', '', '', '4', '4', '', '0.00', '', '', '', '', '0', '0', '1487503055', '1487503055');
INSERT INTO `o2o_bis` VALUES ('7', '江户前好料理', 'tracywxh0830@126.com', '/upload/20170219/64fad76c6cb6084ba466b43810fe4d25.jpg', '/upload/20170219/ed6baf2b9686ffe4c17f9052b1c041aa.jpg', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Hiragino Sans GB&#39;, arial, Verdana, tahoma, 宋体, sans-serif; font-size: 14px; line-height: 25px;\">江江户前日式餐厅在大连拥有3家店铺，有着十年左右的历史，本着以品质与文化为基础,以服务与创新为发展,全力打造品牌,不断创新,进取,赢得世界消费者喜爱的品牌如今也坐落在了南昌瑞颐大酒店2楼，主要服务于星级酒店内的宾客，为高端星级酒店提供高品质的美食。依托江户前品牌的强大号召力，在为宾客提供高品质美食的同时，提升酒店的品质与文化。这里不仅让可以让您领略正宗的日式铁板料理，而且奉上了日式，韩式，西式等各国饮食，让您品尝不同美食的同时，体验不一样的各个文化。店内尽显日式装修风格，设有5张铁板烧，厨师团队倾心打造，只需坐店中一隅，便可品尽心中企盼之美味。 万水千山走遍，只为寻到美味的至真至醇。</span></p>', '4', '4,5', '22234665464564', '0.00', '中国农业银行', '王南昌', '王南昌', '18618158951', '0', '1', '1487503182', '1487503201');
INSERT INTO `o2o_bis` VALUES ('8', '黄记煌三汁焖锅', 'tracywxh0830@126.com', '/upload/20170219/a89a8c417e7e5ff3079e4e2b6129d785.jpg', '/upload/20170219/d2f4a90b29ff6f9751456f0fe44d09f2.jpg', '<h3 class=\"w-section-header\" style=\"font-size: 20px; margin: 0px; padding: 30px 0px 15px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(197, 197, 197); outline: 0px; font-weight: normal; font-family: &#39;microsoft yahei&#39;; vertical-align: baseline; width: 725px; font-stretch: normal; color: rgb(102, 102, 102); white-space: normal;\">商家介绍</h3><p><img src=\"/ueditor/php/upload/image/20170219/1487503607377704.jpg\" title=\"图片\" style=\"border: 0px; padding: 0px; margin: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; float: none; display: block;\"/></p><p><br/></p>', '4', '4,5', '22234665464564', '0.00', '中国农业银行', '王南昌', '王南昌', '18618158951', '0', '1', '1487503735', '1487503779');
INSERT INTO `o2o_bis` VALUES ('9', '食在自助火锅百汇', 'tracywxh0830@126.com', '/upload/20170219/1574822f08a76532a74047670f44015e.jpg', '/upload/20170219/de895022acce2a7c94e1dd255a7565f9.jpg', '<p>好吃哦，我在江西九江，快来</p>', '4', '4,9', '22234665464564', '0.00', '中国农业银行', '王新华', '王新华', '18618158951', '0', '1', '1487507175', '1487507227');
INSERT INTO `o2o_bis` VALUES ('10', 'tt', 'singwa30011@126.com', '/upload/20170313/2d8b03615df9193b551c62bd632c0956.jpg', '/upload/20170313/4f971079334b378b1600b9bde052be8d.jpg', '<p>ss</p>', '4', '4,11', '22234665464564', '0.00', '中国农业银行', '王南昌', '王南昌', '123', '0', '0', '1489406359', '1489406359');
INSERT INTO `o2o_bis` VALUES ('14', '&lt;script&gt;alert(\'nihao\')&lt;/script&gt;', 'singwa300@126.com', '/upload/20170314/9259fb71d353b2021cd1655ee757e9d6.jpg', '/upload/20170314/a94e74055d8764e80df471b3453db5d8.jpg', '<p>vvv</p>', '4', '4,10', '123', '0.00', '中国农业银行', '王新华', '王南昌', '123', '0', '0', '1489431176', '1489431176');
INSERT INTO `o2o_bis` VALUES ('15', '&lt;script&gt;alert(1)&lt;/script&gt;', '', '', '', '&lt;p&gt;&amp;lt;script&amp;gt;alert(1)&amp;lt;/script&amp;gt;&lt;/p&gt;', '0', '0', '', '0.00', '', '', '', '', '0', '0', '1490110739', '1490110739');
INSERT INTO `o2o_bis` VALUES ('18', '&lt;script&gt;alert(1)&lt;/script&gt;', '', '', '', '&lt;p&gt;&amp;lt;script&amp;gt;alert(1)&amp;lt;/script&amp;gt;&lt;/p&gt;&lt;p&gt;ss&lt;/p&gt;&lt;h1&gt;sss&lt;br/&gt;&lt;/h1&gt;&lt;p&gt;&lt;span style=&quot;font-family: 微软雅黑, &amp;#39;Microsoft YaHei&amp;#39;;&quot;&gt;sgsgsgsgd&lt;/span&gt;&lt;br/&gt;&lt;/p&gt;', '0', '0', '', '0.00', '', '', '', '', '0', '0', '1489423320', '1489423320');
INSERT INTO `o2o_bis` VALUES ('19', 'zxj', '827215772@qq.com', '/upload\\20181112\\0354b9810ab9fea549c1c6ef94b060aa.png', '/upload\\20181112\\ebf55d2eb11cd75d423435014a9ce6e4.png', '<p>safdsaf&nbsp;</p>', '4', '4,13', '123456', '0.00', '中国工商银行', '开户行姓名:', '赵晓娟', '17746513681', '0', '1', '1542015461', '1542015509');

-- ----------------------------
-- Table structure for o2o_bis_account
-- ----------------------------
DROP TABLE IF EXISTS `o2o_bis_account`;
CREATE TABLE `o2o_bis_account` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `code` varchar(10) NOT NULL COMMENT '登录用的标识码(md5加密前缀)',
  `bis_id` int(11) unsigned NOT NULL DEFAULT '0',
  `last_login_ip` varchar(30) NOT NULL DEFAULT '' COMMENT '最后登录时间',
  `last_login_time` int(11) unsigned NOT NULL DEFAULT '0',
  `is_main` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否为默认总管理员',
  `listorder` varchar(20) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `bis_id` (`bis_id`),
  KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of o2o_bis_account
-- ----------------------------
INSERT INTO `o2o_bis_account` VALUES ('1', 'admin1', '2710619b9515f52075bcf9d5ae75fa98', '3420', '2', '', '0', '1', '0', '1', '1485043108', '1486200038');
INSERT INTO `o2o_bis_account` VALUES ('2', 'admin2', '1ac742cf26dec463b60db60493d4a45c', '9588', '3', '', '0', '1', '0', '0', '1485044342', '1486199730');
INSERT INTO `o2o_bis_account` VALUES ('3', 'admin4', '37308ca2b0879645d9e8cf4984904850', '3449', '4', '', '1489403960', '1', '0', '1', '1485045612', '1489403960');
INSERT INTO `o2o_bis_account` VALUES ('4', 'singwa100', '70b9a5e19130e42553f13cbf553cd213', '3354', '5', '', '1487489257', '1', '0', '1', '1487489106', '1487489257');
INSERT INTO `o2o_bis_account` VALUES ('5', 'singwa101', '828a06ac5130fd1f7b6fde899736c359', '7090', '6', '', '0', '1', '0', '0', '1487503055', '1487503055');
INSERT INTO `o2o_bis_account` VALUES ('6', 'singwa102', '50afac3dedb48c5ef5163773f6bdb8c8', '9258', '7', '', '1487503223', '1', '0', '1', '1487503182', '1487503223');
INSERT INTO `o2o_bis_account` VALUES ('7', 'singwa103', 'bae7c12f678d69a395c777563f71a116', '1821', '8', '', '1487503808', '1', '0', '1', '1487503735', '1487503808');
INSERT INTO `o2o_bis_account` VALUES ('8', 'singwa104', '8c95bcca149a656428ffc0a6d0b9c3d6', '5066', '9', '', '1489455581', '1', '0', '1', '1487507175', '1489455581');
INSERT INTO `o2o_bis_account` VALUES ('9', 'singwa999', '7b5076f7bf86ed71f3d7eae8b3e76376', '208', '10', '', '0', '1', '0', '0', '1489406359', '1489406359');
INSERT INTO `o2o_bis_account` VALUES ('10', 'singwa123123', '92b053c4533864e09f6a85f4caf17687', '1201', '11', '', '0', '1', '0', '0', '1489428353', '1489428353');
INSERT INTO `o2o_bis_account` VALUES ('11', 'singwa111222', '54e912a111416bd755e8141a1961c47c', '6380', '12', '', '0', '1', '0', '0', '1489429036', '1489429036');
INSERT INTO `o2o_bis_account` VALUES ('12', 'singwa22233', '866f33e9523d2680633dc3de505dd348', '1765', '13', '', '0', '1', '0', '0', '1489430408', '1489430408');
INSERT INTO `o2o_bis_account` VALUES ('13', 'admin34', '29a8883047aafdf3f32b623ed3affc4f', '8352', '14', '', '0', '1', '0', '0', '1489431176', '1489431176');
INSERT INTO `o2o_bis_account` VALUES ('14', 'o2o3', 'eb899df43796c7b4c6b9a9181383398c', '4598', '15', '', '0', '1', '0', '0', '1490110739', '1490110739');
INSERT INTO `o2o_bis_account` VALUES ('15', 'o2o3', '54b62aaf6733a5ee951ef3976db6cce1', '8473', '16', '', '0', '1', '0', '0', '1490112176', '1490112176');
INSERT INTO `o2o_bis_account` VALUES ('16', 'o2o3', '4eeae309e355eafae22b78293768dc01', '5432', '17', '', '0', '1', '0', '0', '1490113060', '1490113060');
INSERT INTO `o2o_bis_account` VALUES ('17', 'o2o3', '7b554f06fb2ad6e7147c3a752b2f0b01', '8105', '18', '', '0', '1', '0', '0', '1490114152', '1490114152');
INSERT INTO `o2o_bis_account` VALUES ('18', 'zxj', 'b8bb2c4b82dd8f3be0b41d6a3ca59464', '1601', '19', '', '1550817937', '1', '0', '1', '1542015462', '1550817937');

-- ----------------------------
-- Table structure for o2o_bis_location
-- ----------------------------
DROP TABLE IF EXISTS `o2o_bis_location`;
CREATE TABLE `o2o_bis_location` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `logo` varchar(255) NOT NULL DEFAULT '',
  `tel` varchar(50) NOT NULL DEFAULT '',
  `contact` varchar(50) NOT NULL DEFAULT '' COMMENT '联系人',
  `xpoint` varchar(255) NOT NULL DEFAULT '' COMMENT 'jingdu',
  `ypoint` varchar(255) NOT NULL DEFAULT '' COMMENT 'weidu',
  `bis_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '商家ID',
  `open_time` varchar(100) NOT NULL DEFAULT '' COMMENT '营业时间',
  `content` text NOT NULL COMMENT '门店简介',
  `is_main` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否为默认总店',
  `api_address` text COMMENT '用于地图定位的地址',
  `city_id` int(11) NOT NULL COMMENT '所属城市ID',
  `city_path` varchar(255) NOT NULL DEFAULT '' COMMENT '1,2',
  `category_id` int(11) NOT NULL COMMENT '所属生活服务大分类ID',
  `category_path` varchar(255) NOT NULL DEFAULT '' COMMENT '1,2',
  `preview` varchar(255) NOT NULL DEFAULT '' COMMENT '列表图',
  `listorder` varchar(20) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `bis_id` (`bis_id`),
  KEY `city_id` (`city_id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of o2o_bis_location
-- ----------------------------
INSERT INTO `o2o_bis_location` VALUES ('1', '肯德基哈', '', '010-3467989', 'singwa', '116.294267963', '40.1490726989', '2', '12：00-19：00', '<p>试试</p>', '1', null, '4', '4,8', '2', '2,3', '', '0', '1', '1485043108', '1541150580');
INSERT INTO `o2o_bis_location` VALUES ('2', 'test1', '/upload/20170122/d661330e18bc6a1df35b9a534a13c42d.png', '010-3467989', 'singwa', '116.294267963', '40.1490726989', '3', '09:00~23:00', '<p>ww</p>', '1', null, '4', '4,8', '2', '2,3', '', '0', '0', '1485044342', '1486199730');
INSERT INTO `o2o_bis_location` VALUES ('3', '测试商户', '/upload/20170122/28141ad57dbe4191f948bf3211b96b43.png', '010-3467989', 'singwa', '116.294267963', '40.1490726989', '4', '09:00~23:00', '<p>试试</p>', '1', '北京昌平顺沙路8号院一区', '4', '4,5', '2', '2,3', '', '0', '1', '1485045612', '1486200032');
INSERT INTO `o2o_bis_location` VALUES ('6', ' 测试门店数据', '/upload/20170205/eeb5d7e8ead52b94efe7fcb1fe04f25d.png', '010-3467989', 'singwa', '115.914262827', '28.6892302338', '4', '09:00~23:00', '<p>试试</p><p>试试断点</p><p>刚刚</p>', '0', '江西省南昌市东湖区福州路95号', '4', '4,5', '2', '2,3', '', '0', '1', '1486279362', '1486279362');
INSERT INTO `o2o_bis_location` VALUES ('7', '牛太郎自助烧烤', '/upload/20170219/13aacdc4185ac77ddcc6b2d1f356fbd1.jpg', '18618158941', 'singwa', '115.842138613', '28.7652149761', '5', '09:00~23:00', '<p>很好的门店呀</p>', '1', '江西省南昌经济技术开发区志敏大道1101号', '4', '4,5', '1', '1,27', '', '0', '1', '1487489106', '1487489187');
INSERT INTO `o2o_bis_location` VALUES ('8', '江户前料理', '', '', '', '115.888777186', '28.6890034095', '6', '', '', '1', '南昌市东湖区沿江北路69号（瑞颐大酒店2楼', '4', '4', '0', '0,', '', '0', '0', '1487503055', '1487503055');
INSERT INTO `o2o_bis_location` VALUES ('9', '江户前好料理', '/upload/20170219/64fad76c6cb6084ba466b43810fe4d25.jpg', '010-3467989', 'singwa', '115.888777186', '28.6890034095', '7', '09:00~23:00', '<p><span style=\"color: rgb(102, 102, 102); font-family: SimSun; font-size: 14px;\">南昌市东湖区沿江北路69号</span></p>', '1', '南昌市东湖区沿江北路69号（瑞颐大酒店2楼', '4', '4,5', '1', '1,10', '', '0', '1', '1487503182', '1487503201');
INSERT INTO `o2o_bis_location` VALUES ('10', '黄记煌三汁焖锅', '/upload/20170219/a89a8c417e7e5ff3079e4e2b6129d785.jpg', '010-3467989', 'singwa', '115.905503455', '28.6652145737', '8', '09:00~23:00', '<p>南昌人的好地方</p>', '1', '南昌市西湖区金塔西街3号(绳金塔)', '4', '4,5', '1', '1,14', '', '0', '1', '1487503735', '1487503779');
INSERT INTO `o2o_bis_location` VALUES ('11', '食在自助火锅百汇', '/upload/20170219/1574822f08a76532a74047670f44015e.jpg', '18618158941', 'singwa', '115.826266426', '29.0155615737', '9', '09:00~23:00', '<p>牛</p>', '1', '九江市永修县新城建昌大道永修铜锣湾广场三楼', '4', '4,9', '1', '1,9', '', '0', '1', '1487507175', '1487507227');
INSERT INTO `o2o_bis_location` VALUES ('12', 'nihoa', '/upload/20170311/8f84f9e9d8ebc3a226c008bf842703ee.jpg', '010-3467989', '里的', '116.294267963', '40.1490726989', '9', '09:00~23:00', '<p>ssss</p>', '0', '北京昌平顺沙路8号院一区', '4', '4,10', '2', '2,3', '', '0', '0', '1489227805', '1489227805');
INSERT INTO `o2o_bis_location` VALUES ('13', 'tt', '/upload/20170313/2d8b03615df9193b551c62bd632c0956.jpg', '010-3467989', '里的', '116.294267963', '40.1490726989', '10', '09:00~23:00', '<p>ss</p>', '1', '北京昌平顺沙路8号院一区', '4', '4,11', '1', '1,11|10', '', '0', '0', '1489406359', '1489406359');
INSERT INTO `o2o_bis_location` VALUES ('14', '<script>alert(1)</script>', '/upload/20170314/f87fc2722d2c3a36a396c2c8cbc6e509.jpg', '010-3467989', '里的', '116.294267963', '40.1490726989', '11', '09:00~23:00', '<p>&lt;script&gt;alert(1)&lt;/script&gt;</p>', '1', '北京昌平顺沙路8号院一区', '4', '4,13', '6', '6,18', '', '0', '0', '1489428353', '1489428353');
INSERT INTO `o2o_bis_location` VALUES ('15', '<script>alert(1)</script>', '/upload/20170314/84b2276af08df2a31a4c92cb9ff0abd5.jpg', '010-3467989', '里的', '116.294267963', '40.1490726989', '12', '09:00~23:00', '<p>&lt;script&gt;alert(1)&lt;/script&gt;</p>', '1', '北京昌平顺沙路8号院一区', '4', '4,13', '6', '6,17', '', '0', '0', '1489429036', '1489429036');
INSERT INTO `o2o_bis_location` VALUES ('16', '<script>alert(1)</script>', '/upload/20170314/f0d0c80c0fd8af28e62aa0675ec50797.jpg', '010-3467989', '里的', '', '', '13', '09:00~23:00', '<p>&lt;script&gt;alert(1)&lt;/script&gt;</p>', '1', '北京昌平顺沙路8号院一区', '4', '4,12', '1', '1,11', '', '0', '0', '1489430408', '1489430408');
INSERT INTO `o2o_bis_location` VALUES ('17', '<script>alert(\'nihao\')</script>', '/upload/20170314/9259fb71d353b2021cd1655ee757e9d6.jpg', '18618158941', '里的', '', '', '14', '09:00~23:00', '<p>s</p>', '1', '沙河地铁攻华家园北二村', '4', '4,10', '5', '5,21|20', '', '0', '0', '1489431176', '1489431176');
INSERT INTO `o2o_bis_location` VALUES ('18', '&lt;script&gt;alert(1)&lt;/script&gt;', '', '', '', '', '', '15', '', '', '1', '', '0', '0', '0', '0,', '', '0', '0', '1490110739', '1490110739');
INSERT INTO `o2o_bis_location` VALUES ('19', '&lt;script&gt;alert(1)&lt;/script&gt;', '', '', '', '', '', '16', '', '&lt;p&gt;&amp;lt;script&amp;gt;alert(1)&amp;lt;/script&amp;gt;&lt;/p&gt;', '1', '', '0', '0', '0', '0,', '', '0', '1', '1490112176', '1541150558');
INSERT INTO `o2o_bis_location` VALUES ('20', '&lt;script&gt;alert(1)&lt;/script&gt;', '', '', '', '', '', '17', '', '', '1', '', '0', '0', '0', '0,', '', '0', '1', '1490113060', '1541150565');
INSERT INTO `o2o_bis_location` VALUES ('21', '&lt;script&gt;alert(1)&lt;/script&gt;', '', '', '', '', '', '18', '', '', '1', '', '0', '0', '0', '0,', '', '0', '1', '1490114152', '1541150554');
INSERT INTO `o2o_bis_location` VALUES ('22', '好伦哥', '', '17746513681', 'zxj', '', '', '30', '10：00~23:00', '<p>测试</p>', '0', '中关村国防科医院', '4', '4,5', '1', '1,27', '', '0', '1', '1541137539', '1541137577');
INSERT INTO `o2o_bis_location` VALUES ('23', 'zxj', '/upload\\20181112\\0354b9810ab9fea549c1c6ef94b060aa.png', '17746513681', 'zxj', '', '', '19', '20：00~29:00', '<p>wsfdef</p>', '1', '中关村国防科医院', '4', '4,13', '19', '19,', '', '0', '1', '1542015461', '1542015509');

-- ----------------------------
-- Table structure for o2o_category
-- ----------------------------
DROP TABLE IF EXISTS `o2o_category`;
CREATE TABLE `o2o_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `listorder` int(8) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of o2o_category
-- ----------------------------
INSERT INTO `o2o_category` VALUES ('1', '美食', '0', '6', '1', '1483213792', '1488514830');
INSERT INTO `o2o_category` VALUES ('2', '娱乐', '0', '1', '1', '1483213800', '1487403610');
INSERT INTO `o2o_category` VALUES ('3', 'KTV', '2', '0', '1', '1483213807', '1483213807');
INSERT INTO `o2o_category` VALUES ('4', '酒店', '0', '2', '1', '1483219509', '1487403608');
INSERT INTO `o2o_category` VALUES ('5', '休闲', '0', '3', '1', '1483219542', '1487403605');
INSERT INTO `o2o_category` VALUES ('6', '丽人', '0', '4', '1', '1483219557', '1487403602');
INSERT INTO `o2o_category` VALUES ('7', '电影2', '0', '3', '-1', '1483339774', '1483351709');
INSERT INTO `o2o_category` VALUES ('8', '自助餐', '1', '0', '1', '1487083329', '1487083329');
INSERT INTO `o2o_category` VALUES ('9', '火锅', '1', '0', '1', '1487083350', '1487083350');
INSERT INTO `o2o_category` VALUES ('10', '料理', '1', '0', '1', '1487083438', '1487083438');
INSERT INTO `o2o_category` VALUES ('11', '西餐', '1', '0', '1', '1487083445', '1487083526');
INSERT INTO `o2o_category` VALUES ('12', '东北菜', '1', '0', '1', '1487083456', '1487083480');
INSERT INTO `o2o_category` VALUES ('13', '川湘菜', '1', '0', '1', '1487083469', '1487083469');
INSERT INTO `o2o_category` VALUES ('14', '江浙菜', '1', '5', '1', '1487083504', '1487404840');
INSERT INTO `o2o_category` VALUES ('15', '美发', '6', '0', '1', '1487083549', '1487083549');
INSERT INTO `o2o_category` VALUES ('16', '美甲', '6', '0', '1', '1487083557', '1487083557');
INSERT INTO `o2o_category` VALUES ('17', '纹身', '6', '0', '1', '1487083570', '1487083570');
INSERT INTO `o2o_category` VALUES ('18', '祛痘', '6', '0', '1', '1487083581', '1487083581');
INSERT INTO `o2o_category` VALUES ('19', '旅游', '0', '0', '1', '1487403581', '1487403581');
INSERT INTO `o2o_category` VALUES ('20', '足疗', '5', '0', '1', '1487404644', '1487404644');
INSERT INTO `o2o_category` VALUES ('21', '温泉', '5', '0', '1', '1487404680', '1487404680');
INSERT INTO `o2o_category` VALUES ('22', '电玩', '2', '0', '1', '1487404701', '1487404701');
INSERT INTO `o2o_category` VALUES ('23', '公寓', '4', '0', '1', '1487404755', '1487404755');
INSERT INTO `o2o_category` VALUES ('24', '旅馆', '4', '0', '1', '1487404763', '1487404763');
INSERT INTO `o2o_category` VALUES ('25', '豪华店', '4', '0', '1', '1487404779', '1487404779');
INSERT INTO `o2o_category` VALUES ('26', '素食', '1', '0', '1', '1487404812', '1487404812');
INSERT INTO `o2o_category` VALUES ('27', '烧烤', '1', '0', '1', '1487487960', '1487487960');
INSERT INTO `o2o_category` VALUES ('28', '测试', '1', '0', '-1', '1488092427', '1488451488');
INSERT INTO `o2o_category` VALUES ('29', '测试', '1', '0', '-1', '1488092427', '1488451476');

-- ----------------------------
-- Table structure for o2o_city
-- ----------------------------
DROP TABLE IF EXISTS `o2o_city`;
CREATE TABLE `o2o_city` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `uname` varchar(50) NOT NULL DEFAULT '',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `is_default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `listorder` varchar(20) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uname` (`uname`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of o2o_city
-- ----------------------------
INSERT INTO `o2o_city` VALUES ('1', '北京', 'beijing1', '0', '0', '', '1', '1474013959', '0');
INSERT INTO `o2o_city` VALUES ('2', '北京', 'beijing', '1', '0', '', '1', '1474014007', '0');
INSERT INTO `o2o_city` VALUES ('4', '江西', 'jiangxi', '0', '0', '', '1', '1474014162', '0');
INSERT INTO `o2o_city` VALUES ('5', '南昌', 'nanchang', '4', '1', '', '1', '1474014181', '0');
INSERT INTO `o2o_city` VALUES ('6', '上饶', 'shangrao', '4', '0', '', '1', '1474014193', '0');
INSERT INTO `o2o_city` VALUES ('7', '抚州', 'fuzhou', '4', '0', '', '1', '1474014204', '0');
INSERT INTO `o2o_city` VALUES ('8', '景德镇', 'jdz', '4', '0', '', '1', '1474014220', '0');
INSERT INTO `o2o_city` VALUES ('9', '九江', 'jiujiang', '4', '0', '0', '1', '0', '0');
INSERT INTO `o2o_city` VALUES ('10', '赣州', 'ganzhou', '4', '0', '0', '1', '0', '0');
INSERT INTO `o2o_city` VALUES ('11', '萍乡', 'pingxiang', '4', '0', '0', '1', '0', '0');
INSERT INTO `o2o_city` VALUES ('12', '宜春', 'yichun', '4', '0', '0', '1', '0', '0');
INSERT INTO `o2o_city` VALUES ('13', '吉安', 'jian', '4', '0', '0', '1', '0', '0');

-- ----------------------------
-- Table structure for o2o_coupons
-- ----------------------------
DROP TABLE IF EXISTS `o2o_coupons`;
CREATE TABLE `o2o_coupons` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sn` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `deal_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0:生成未发送给用户 1：已经发送给用户了 2 用户已经使用  3 警用',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sn` (`sn`),
  KEY `user_id` (`user_id`),
  KEY `deal_id` (`deal_id`),
  KEY `create_time` (`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of o2o_coupons
-- ----------------------------

-- ----------------------------
-- Table structure for o2o_deal
-- ----------------------------
DROP TABLE IF EXISTS `o2o_deal`;
CREATE TABLE `o2o_deal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL COMMENT '商品名称',
  `category_id` int(11) NOT NULL COMMENT '生活服务分类ID',
  `se_category_id` varchar(200) NOT NULL,
  `bis_id` int(11) NOT NULL COMMENT '所属的商户ID',
  `location_ids` varchar(200) NOT NULL COMMENT '所属店面ID',
  `image` varchar(255) NOT NULL COMMENT '主图',
  `description` text NOT NULL COMMENT '信息描述详情',
  `start_time` int(11) NOT NULL DEFAULT '0' COMMENT '上线开始时间，可为0为不限时',
  `end_time` int(11) NOT NULL DEFAULT '0' COMMENT '下架时间，可为0为不限时',
  `origin_price` decimal(20,2) NOT NULL COMMENT '原价',
  `current_price` decimal(20,2) NOT NULL COMMENT '当前销售价',
  `city_id` int(11) NOT NULL COMMENT '所属的城市',
  `buy_count` int(11) NOT NULL COMMENT '销量（购买的件数）',
  `total_count` int(11) NOT NULL COMMENT '商品总数',
  `listorder` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `coupons_begin_time` int(11) NOT NULL COMMENT '团购券的生效时间',
  `coupons_end_time` int(11) NOT NULL COMMENT '团购券的过期时间',
  `create_time` int(11) NOT NULL COMMENT '管理员发布时间',
  `update_time` int(11) NOT NULL COMMENT '管理员更新时间',
  `xpoint` varchar(255) NOT NULL COMMENT '经度（第一个分店的经度）',
  `ypoint` varchar(255) NOT NULL COMMENT '纬度（第一个分店的纬度）',
  `status` tinyint(1) NOT NULL COMMENT '商家提交的产品 0:已审核 1审核 2:等待审核 -1 下架',
  `bis_account_id` int(11) NOT NULL COMMENT '商家提交的商家帐号ID',
  `balance_price` decimal(20,2) NOT NULL COMMENT '与商家的结算价（即商价提供给平台商的成本价）',
  `notes` text NOT NULL COMMENT '购买需知',
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `bis_id` (`bis_id`),
  KEY `start_time` (`start_time`),
  KEY `end_time` (`end_time`),
  KEY `current_price` (`current_price`),
  KEY `city_id` (`city_id`),
  KEY `listorder` (`listorder`),
  KEY `create_time` (`create_time`),
  KEY `update_time` (`update_time`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='团购数据表';

-- ----------------------------
-- Records of o2o_deal
-- ----------------------------
INSERT INTO `o2o_deal` VALUES ('1', '测试团购商品', '2', '3', '4', '6,3', '/upload\\20181102\\554b5ed3a863a88040461229218f87bd.png', '<p>ss</p>', '1486509000', '1582352306', '67.90', '23.40', '5', '0', '234', '0', '1486509000', '1490310600', '1486337009', '1486337009', '115.914262827', '28.6892302338', '1', '3', '0.00', '<p>ss</p>');
INSERT INTO `o2o_deal` VALUES ('2', 'hahhhws商品很好的哦', '2', '3', '4', '6,3', '/upload\\20181102\\554b5ed3a863a88040461229218f87bd.png', '<p>的身高多少</p><p>试试</p>', '1486377120', '1582352306', '89.30', '23.80', '5', '0', '234', '0', '1486377120', '1489228320', '1486377155', '1486377155', '115.914262827', '28.6892302338', '1', '3', '0.00', '<p>试试</p>');
INSERT INTO `o2o_deal` VALUES ('3', '美巢公寓酒店', '4', '23', '4', '6,3', '/upload\\20181102\\554b5ed3a863a88040461229218f87bd.png', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; font-family: &#39;Hiragino Sans GB&#39;, arial, Verdana, tahoma, 宋体, sans-serif; font-size: 14px; vertical-align: baseline; color: rgb(102, 102, 102); line-height: 25px; white-space: normal;\"><span style=\"font-weight: 700;\">适用门店：</span><br/><span style=\"padding: 0px; margin: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;\"><span style=\"font-weight: 700;\">南昌美巢公寓酒店</span></span><br/><span style=\"padding: 0px; margin: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;\">预约电话: --18107000109</span><br/><span style=\"padding: 0px; margin: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;\">地址:近郊红谷滩新区万达广场A1座1405</span><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; font-family: &#39;Hiragino Sans GB&#39;, arial, Verdana, tahoma, 宋体, sans-serif; font-size: 14px; vertical-align: baseline; color: rgb(102, 102, 102); line-height: 25px; white-space: normal;\"><span style=\"font-weight: 700;\">房型信息：</span><br/><span style=\"padding: 0px; margin: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;\"><span style=\"font-weight: 700;\">酒店式公寓房</span></span><br/><span style=\"padding: 0px; margin: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;\">– 1 张床&nbsp;<br/><span style=\"padding: 0px; margin: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;\">–方床(长：2 宽：1.8)</span>&nbsp;</span><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; font-family: &#39;Hiragino Sans GB&#39;, arial, Verdana, tahoma, 宋体, sans-serif; font-size: 14px; vertical-align: baseline; color: rgb(102, 102, 102); line-height: 25px; white-space: normal;\"><span style=\"font-weight: 700;\">入住提示:</span><br/><span style=\"padding: 0px; margin: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;\">• 当日06:00点前入住，需当日12:00点前退房</span><br/><span style=\"padding: 0px; margin: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;\">• 当日06:00点后入住，需次日12:00点前退房</span><br/><span style=\"padding: 0px; margin: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;\">• 详情咨询酒店</span><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; font-family: &#39;Hiragino Sans GB&#39;, arial, Verdana, tahoma, 宋体, sans-serif; font-size: 14px; vertical-align: baseline; color: rgb(102, 102, 102); line-height: 25px; white-space: normal;\"><span style=\"font-weight: 700;\">购买须知:</span><br/><span style=\"padding: 0px; margin: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;\">• 凭团购券可享受指定房型1晚住宿。</span><br/><span style=\"padding: 0px; margin: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; color: red;\">• 需提前至少1 天 致电商家预约。&nbsp;</span><br/><span style=\"padding: 0px; margin: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;\">• 需携带有效证件（除驾驶证）办理入住。</span><br/><span style=\"padding: 0px; margin: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;\">• 入住需缴纳100元押金。</span><br/><span style=\"padding: 0px; margin: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;\">• 损坏房间内的物品，需照价赔偿。</span><br/><span style=\"padding: 0px; margin: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;\">• 不能同时享受酒店其他优惠。</span><br/><span style=\"padding: 0px; margin: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;\">• 请不要携带宠物入住 。</span><br/><span style=\"padding: 0px; margin: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;\">• 加价信息：</span><br/><span style=\"padding: 0px; margin: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; color: red;\">–加价信息请咨询商家。</span><br/><span style=\"padding: 0px; margin: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;\">• 团购预留房酒店式公寓房为1间。;</span><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; font-family: &#39;Hiragino Sans GB&#39;, arial, Verdana, tahoma, 宋体, sans-serif; font-size: 14px; vertical-align: baseline; color: rgb(102, 102, 102); line-height: 25px; white-space: normal;\"><span style=\"padding: 0px; margin: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;\">如需发票，请咨询商家。</span></p><p><br style=\"color: rgb(102, 102, 102); font-family: &#39;Hiragino Sans GB&#39;, arial, Verdana, tahoma, 宋体, sans-serif; font-size: 14px; line-height: 25px; white-space: normal;\"/><span style=\"color: rgb(102, 102, 102); font-family: &#39;Hiragino Sans GB&#39;, arial, Verdana, tahoma, 宋体, sans-serif; font-size: 14px; line-height: 25px;\">此产品由去哪儿网提供。</span></p><p><br/></p>', '1487746200', '1582352306', '128.00', '68.00', '5', '0', '10000', '0', '1488005460', '1498200660', '1487487204', '1488416282', '115.914262827', '28.6892302338', '1', '3', '0.00', '<h3 class=\"w-section-header\" style=\"font-size: 20px; margin: 0px; padding: 30px 0px 15px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(197, 197, 197); outline: 0px; font-weight: normal; font-family: &#39;microsoft yahei&#39;; vertical-align: baseline; width: 725px; font-stretch: normal; color: rgb(102, 102, 102); white-space: normal;\">消费提示</h3><p>1、请携带有效证件办理入住登记；&nbsp;<br/>2、驾驶证不是有效证件；&nbsp;<br/>3、每位入住的客人都需要登记；&nbsp;<br/>4、如不小心损坏房间内的物品，需照价赔偿；&nbsp;</p><p><br/></p>');
INSERT INTO `o2o_deal` VALUES ('4', '牛太郎自助烧烤(奥体天虹店)', '1', '27', '5', '7', '/upload\\20181102\\554b5ed3a863a88040461229218f87bd.png', '<p>快快来消费哦。很好的价格</p>', '1487662260', '1582352306', '100.00', '50.00', '5', '0', '10000', '0', '1488007920', '1550907120', '1487489578', '1487489578', '115.842138613', '28.7652149761', '1', '4', '0.00', '<p>本券周六日不能使用，请注意</p>');
INSERT INTO `o2o_deal` VALUES ('5', '牛太郎自助烧烤(奥体天虹店)-2人无限狂吃券', '1', '27', '5', '7', '/upload\\20181102\\554b5ed3a863a88040461229218f87bd.png', '<p>本券100份，先买先得，原价300无限制2个狂吃，本店所有商品全部都能随便选择吃，不能带走，吃饱为止。快快来哦</p>', '1489131180', '1582352306', '300.00', '150.00', '5', '0', '100', '0', '1489131240', '1498808040', '1487489743', '1487489743', '115.842138613', '28.7652149761', '1', '4', '0.00', '<p>本券只限工作日的中午使用</p>');
INSERT INTO `o2o_deal` VALUES ('6', '江户前-仅售198元，价值258元单人自助餐！', '1', '10', '7', '9', '/upload\\20181102\\554b5ed3a863a88040461229218f87bd.png', '<ul class=\"ext-info list-paddingleft-2\" style=\"list-style-type: square;\"><li><p>儿童按成人收费，可用餐2小时。</p></li><li><p>本店特色：</p></li><li><p>-刺身：鸟贝刺身，乌贼刺身，章鱼刺身，生吃三拼，生吃贝类三种，三文鱼刺身、红金枪鱼刺身，白金枪鱼刺身，牙片鱼刺身。</p></li><li><p>-醋物：醋拌什锦海鲜，醋拌裙带菜，醋拌虾，醋拌赤贝，醋拌胺肝，醋拌鸟贝</p></li><li><p>-烤物：烤牛肉，蒜味烤脆排，亚细亚风烤羊排，烤海螺，培根卷，多春鱼，烤鸡排，烤鳗鱼，烤三文鱼头，烤鸡肉串，烤鸡翅，盐烤秋刀鱼，盐烤鱿鱼，盐烤鲐鱼，酱味大鲅鱼，酱烤鲽鱼，凤尾虾炸面包虾炸物：香炸鸡脆骨，香炸鱿鱼圈，香炸牡蛎，香酥面条鱼，什锦天妇罗，脆炸鱿鱼须，脆炸鸡肉块，蒜香炸鸡翅中，炸猪排，炸虾天妇罗，蔬菜天妇罗，凤尾酥炸面包虾，柠檬虾仁</p></li><li><p>-煮物：百合虾仁，酒蒸蚬子，辣炒牛蒡，嫩煮豆腐，日式蒸蛋，日式红烧肉，酱煮鲐鱼</p></li><li><p>-寿司：纳豆细卷，黄瓜细卷，炸虾手卷，三文鱼籽寿司，三文鱼寿司，金枪鱼细卷，什锦粗卷，章鱼寿司，虾寿司，乌贼寿司，飞鱼籽寿司，鳗鱼寿司，鸟贝寿司，鸡蛋寿司，竹寿司</p></li><li><p>-铁板烧：蔬菜什锦，铁板海蛎子，铁板五花肉，铁板香辣鱿鱼须，铁板香菇，铁板虾仁，铁板牛肉卷，蒜香牛香片，铁板牛肉，铁板羊排，银芽鸡脆骨，铁板培根荷兰豆，铁板培根炒菠菜，铁板特色豆腐，铁板煎鲍菇，铁板三文鱼，铁板木瓜桂花酱，铁板蓝莓香蕉，铁板虾，铁板鱿鱼，银芽虾仁爆螺片</p></li><li><p>-主食，汤类：海鲜乌冬面，滑子磨乌冬面，铁板乌冬面，散花寿司饭，海鲜粥，牛肉乌冬面，紫菜泡饭，三文鱼泡饭，梅肉茶泡饭，豆腐皮乌冬面，日式拉面，日式烤饭团，冷荞麦面，小咸菜，炸虾热荞麦面，酱汤，鳗鱼盖饭，蔬菜粥，辣白菜炒饭，牛筋炒饭，培根炒饭，蚬肉裙带菜汤。</p></li></ul><h3 class=\"w-section-header\" style=\"font-size: 20px; margin: 0px; padding: 30px 0px 15px; border-width: 0px 0px 1px; border-bottom-style: solid; border-bottom-color: rgb(197, 197, 197); outline: 0px; font-weight: normal; font-family: &#39;microsoft yahei&#39;; vertical-align: baseline; width: 725px; font-stretch: normal; line-height: normal;\">团单详情<br/></h3><p>日本料理自助:<br/></p><p class=\"wrap-img\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; font-size: 0px; vertical-align: baseline; line-height: 0;\"><img src=\"/ueditor/php/upload/image/20170219/1487503337338610.jpg\" title=\"图片\" style=\"border: 0px; padding: 0px; margin: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; float: none; display: block;\"/></p><p><br/></p><p class=\"wrap-img\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; font-size: 0px; vertical-align: baseline; line-height: 0;\"><img src=\"/ueditor/php/upload/image/20170219/1487503337702592.jpg\" title=\"图片\" style=\"border: 0px; padding: 0px; margin: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; float: none; display: block;\"/></p><p><br/></p>', '1487503260', '1582352306', '125.00', '23.00', '5', '0', '1000', '0', '1487676060', '1491564060', '1487503396', '1487503396', '115.888777186', '28.6890034095', '1', '6', '0.00', '<table class=\"consume\"><tbody style=\"padding: 0px; margin: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;\"><tr style=\"padding: 0px; margin: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;\" class=\"firstRow\"><th valign=\"top\" style=\"padding: 0px; margin: 0px; border-top-width: 0px; border-right-width: 0px; border-left-width: 0px; border-bottom-color: rgb(240, 240, 240); outline: 0px; font-weight: bolder; font-style: inherit; font-family: songti; font-size: 14px; vertical-align: middle; text-align: center; background: rgb(245, 245, 245);\"><p>有效期</p></th><td style=\"padding: 0px; margin: 0px; border-top-width: 0px; border-right-width: 0px; border-left-width: 0px; border-bottom-color: rgb(240, 240, 240); outline: 0px; font-style: inherit; font-family: songti; font-size: 14px; vertical-align: middle; color: rgb(88, 88, 88); word-break: break-all;\"><p>2017年02月21日至2017年04月07日<br/></p></td></tr><tr style=\"padding: 0px; margin: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;\"><th valign=\"top\" style=\"padding: 0px; margin: 0px; border-top-width: 0px; border-right-width: 0px; border-left-width: 0px; border-bottom-color: rgb(240, 240, 240); outline: 0px; font-weight: bolder; font-style: inherit; font-family: songti; font-size: 14px; vertical-align: middle; text-align: center; background: rgb(245, 245, 245);\"><p>可用时间</p></th><td style=\"padding: 0px; margin: 0px; border-top-width: 0px; border-right-width: 0px; border-left-width: 0px; border-bottom-color: rgb(240, 240, 240); outline: 0px; font-style: inherit; font-family: songti; font-size: 14px; vertical-align: middle; color: rgb(88, 88, 88);\"><p>周末法定节假日通用<br/>10:30 - 13:30;16:30 - 21:30，为正常接待时间。<br/></p></td></tr><tr style=\"padding: 0px; margin: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;\"><th valign=\"top\" style=\"padding: 0px; margin: 0px; border-top-width: 0px; border-right-width: 0px; border-left-width: 0px; border-bottom-color: rgb(240, 240, 240); outline: 0px; font-weight: bolder; font-style: inherit; font-family: songti; font-size: 14px; vertical-align: middle; text-align: center; background: rgb(245, 245, 245);\"><p>预约提示</p></th><td style=\"padding: 0px; margin: 0px; border-top-width: 0px; border-right-width: 0px; border-left-width: 0px; border-bottom-color: rgb(240, 240, 240); outline: 0px; font-style: inherit; font-family: songti; font-size: 14px; vertical-align: middle; color: rgb(88, 88, 88);\"><p>请至少提前1小时预约<br/>预约位逾期不保留，请准时<br/></p></td></tr><tr style=\"padding: 0px; margin: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;\"><th valign=\"top\" style=\"padding: 0px; margin: 0px; border-top-width: 0px; border-right-width: 0px; border-left-width: 0px; border-bottom-color: rgb(240, 240, 240); outline: 0px; font-weight: bolder; font-style: inherit; font-family: songti; font-size: 14px; vertical-align: middle; text-align: center; background: rgb(245, 245, 245);\"><p>使用规则</p></th><td style=\"padding: 0px; margin: 0px; border-top-width: 0px; border-right-width: 0px; border-left-width: 0px; border-bottom-color: rgb(240, 240, 240); outline: 0px; font-style: inherit; font-family: songti; font-size: 14px; vertical-align: middle; color: rgb(88, 88, 88);\"><ul style=\"list-style-type: none;\" class=\" list-paddingleft-2\"><li><p>团购用户暂不享受店内其他优惠</p></li><li><p>每张糯米券限1人使用</p></li><li><p>每次消费不限使用糯米券张数，可叠加使用</p></li><li><p>自助餐仅限堂食，不提供打包服务<br/>部分菜品因时令原因有所不同，请以店内当日实际供应为准</p></li><li><p>不论是否儿童均计入人数，需按店内当时实际价格收费或另购糯米券。免费停车三小时，超出按实际收费。</p></li></ul></td></tr><tr style=\"padding: 0px; margin: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;\"><th valign=\"top\" style=\"padding: 0px; margin: 0px; border-top-width: 0px; border-right-width: 0px; border-left-width: 0px; border-bottom-color: rgb(240, 240, 240); outline: 0px; font-weight: bolder; font-style: inherit; font-family: songti; font-size: 14px; vertical-align: middle; text-align: center; background: rgb(245, 245, 245);\"><p>温馨提示</p></th><td style=\"padding: 0px; margin: 0px; border-top-width: 0px; border-right-width: 0px; border-left-width: 0px; border-bottom-color: rgb(240, 240, 240); outline: 0px; font-style: inherit; font-family: songti; font-size: 14px; vertical-align: middle; color: rgb(88, 88, 88); word-break: break-all;\"><ul style=\"list-style-type: none;\" class=\" list-paddingleft-2\"><li><p>无停车位</p></li><li><p>提供免费WiFi</p></li></ul></td></tr></tbody></table><p><br/></p>');
INSERT INTO `o2o_deal` VALUES ('7', '仅售780元，价值1032元4人自助餐！', '1', '10,8', '7', '9', '/upload\\20181102\\554b5ed3a863a88040461229218f87bd.png', '<p><span style=\"color: rgb(88, 88, 88); font-family: &#39;Hiragino Sans GB&#39;, arial, Verdana, tahoma, 宋体, sans-serif; font-size: 14px; line-height: 25px;\">汤类：海鲜乌冬面，滑子磨乌冬面，铁板乌冬面，散花寿司饭，海鲜粥，牛肉乌冬面，紫菜泡饭，三文鱼泡饭，梅肉茶泡饭，豆腐皮乌冬面，日式拉面，日式烤饭团，冷荞麦面，小咸菜，炸虾热荞麦面，酱汤，鳗鱼盖饭，蔬菜粥，辣白菜炒饭，牛筋炒饭，培根炒饭，蚬肉裙带菜汤</span></p><p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Hiragino Sans GB&#39;, arial, Verdana, tahoma, 宋体, sans-serif; font-size: 14px; line-height: 25px;\">单人日本料理自助:</span><br style=\"color: rgb(102, 102, 102); font-family: &#39;Hiragino Sans GB&#39;, arial, Verdana, tahoma, 宋体, sans-serif; font-size: 14px; line-height: 25px; white-space: normal;\"/></p><p class=\"wrap-img\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; font-family: &#39;Hiragino Sans GB&#39;, arial, Verdana, tahoma, 宋体, sans-serif; font-size: 0px; vertical-align: baseline; line-height: 0; color: rgb(102, 102, 102); white-space: normal;\"><img src=\"https://gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C0%2C470%2C285%3Bw%3D470%3Bq%3D99%3Bc%3Dnuomi%2C95%2C95/sign=a746735aab51f3ded7fde324a9dedc2f/c9fcc3cec3fdfc03a8155828d03f8794a4c22634.jpg\" title=\"图片\" style=\"border: 0px; padding: 0px; margin: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; float: none; display: block;\"/></p><p><br style=\"color: rgb(102, 102, 102); font-family: &#39;Hiragino Sans GB&#39;, arial, Verdana, tahoma, 宋体, sans-serif; font-size: 14px; line-height: 25px; white-space: normal;\"/></p><p class=\"wrap-img\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; font-family: &#39;Hiragino Sans GB&#39;, arial, Verdana, tahoma, 宋体, sans-serif; font-size: 0px; vertical-align: baseline; line-height: 0; color: rgb(102, 102, 102); white-space: normal;\"><img src=\"https://gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/crop%3D0%2C0%2C470%2C705%3Bw%3D470%3Bq%3D99/sign=b9fd96ec550fd9f9b4580f29181df81a/aa18972bd40735fab4c8f7299a510fb30f240861.jpg\" title=\"图片\" style=\"border: 0px; padding: 0px; margin: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; float: none; display: block;\"/></p><p><br/></p>', '1487849040', '1582352306', '800.00', '200.00', '5', '0', '2000', '0', '1489231440', '1552044240', '1487503535', '1487503535', '115.888777186', '28.6890034095', '1', '6', '0.00', '<p>很好的东西哦</p>');
INSERT INTO `o2o_deal` VALUES ('8', '黄记煌三汁焖锅代金券', '1', '14', '8', '10', '/upload\\20181102\\554b5ed3a863a88040461229218f87bd.png', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Hiragino Sans GB&#39;, arial, Verdana, tahoma, 宋体, sans-serif; font-size: 14px; line-height: 25px;\">代金券:</span><br style=\"color: rgb(102, 102, 102); font-family: &#39;Hiragino Sans GB&#39;, arial, Verdana, tahoma, 宋体, sans-serif; font-size: 14px; line-height: 25px; white-space: normal;\"/></p><p class=\"wrap-img\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; font-family: &#39;Hiragino Sans GB&#39;, arial, Verdana, tahoma, 宋体, sans-serif; font-size: 0px; vertical-align: baseline; line-height: 0; color: rgb(102, 102, 102); white-space: normal;\"><img src=\"https://gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/w%3D470%3Bq%3D99/sign=14c0fee70ed162d985ee631b21e4d8d1/35a85edf8db1cb135f9c8c30d954564e92584b1f.jpg\" title=\"图片\" style=\"border: 0px; padding: 0px; margin: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; float: none; display: block;\"/></p><p><br style=\"color: rgb(102, 102, 102); font-family: &#39;Hiragino Sans GB&#39;, arial, Verdana, tahoma, 宋体, sans-serif; font-size: 14px; line-height: 25px; white-space: normal;\"/></p><p class=\"wrap-img\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; font-family: &#39;Hiragino Sans GB&#39;, arial, Verdana, tahoma, 宋体, sans-serif; font-size: 0px; vertical-align: baseline; line-height: 0; color: rgb(102, 102, 102); white-space: normal;\"><img src=\"https://gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/w%3D470%3Bq%3D99/sign=29ac1991d558ccbf1bbcb43d29e3cd03/1c950a7b02087bf490a3e7caf6d3572c11dfcf42.jpg\" title=\"图片\" style=\"border: 0px; padding: 0px; margin: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; float: none; display: block;\"/></p><p><br/></p>', '1487331060', '1582352306', '349.00', '120.00', '5', '0', '10000', '0', '1489231860', '1526124660', '1487503950', '1487503950', '115.905503455', '28.6652145737', '1', '7', '0.00', '<ul style=\"list-style-type: none;\" class=\" list-paddingleft-2\"><li><p>无停车位</p></li><li><p>提供免费WiFi</p></li><li><p>本单仅限堂食，不可外带</p></li><li><p>商家提供餐后打包服务，需另付 1元/个打包盒</p></li></ul><p><br/></p>');
INSERT INTO `o2o_deal` VALUES ('9', '仅售75元，价值100元代金券！', '1', '14', '8', '10', '/upload\\20181102\\055b8e40f56b923e0b5a7f5db515ab03.png', '<p><span style=\"color: rgb(102, 102, 102); font-family: &#39;Hiragino Sans GB&#39;, arial, Verdana, tahoma, 宋体, sans-serif; font-size: 14px; line-height: 25px;\">代金券:</span><br style=\"color: rgb(102, 102, 102); font-family: &#39;Hiragino Sans GB&#39;, arial, Verdana, tahoma, 宋体, sans-serif; font-size: 14px; line-height: 25px; white-space: normal;\"/></p><p class=\"wrap-img\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; border: 0px; outline: 0px; font-family: &#39;Hiragino Sans GB&#39;, arial, Verdana, tahoma, 宋体, sans-serif; font-size: 0px; vertical-align: baseline; line-height: 0; color: rgb(102, 102, 102); white-space: normal;\"><img src=\"https://gss0.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/bainuo/w%3D470%3Bq%3D99%3Bc%3Dnuomi%2C95%2C95/sign=cf9d1792adec8a13141a56e7c738e0b2/ca1349540923dd54ceff9415d509b3de9c82483a.jpg\" title=\"图片\" style=\"border: 0px; padding: 0px; margin: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; float: none;\"/></p><p><br/></p>', '1541667480', '1582352306', '100.00', '75.00', '5', '0', '1000', '0', '1493465580', '1582889580', '1487504051', '1487504051', '115.905503455', '28.6652145737', '0', '7', '0.00', '<p><span style=\"color: rgb(88, 88, 88); font-family: songti; font-size: 14px; line-height: 24px;\">无需预约，直接消费（高峰期间消费需排号等位）</span></p>');
INSERT INTO `o2o_deal` VALUES ('10', '食在自助火锅百汇(铜锣湾店)', '1', '9', '9', '11', '/upload\\20181102\\055b8e40f56b923e0b5a7f5db515ab03.png', '<p>很好吃哦</p>', '1541667480', '1582352306', '100.00', '24.00', '9', '0', '10000', '0', '1488976080', '1527337680', '1487507340', '1487507340', '115.826266426', '29.0155615737', '0', '8', '0.00', '<p>星期六不能使用</p>');
INSERT INTO `o2o_deal` VALUES ('11', '快快来便宜甩卖', '1', '27,26,11', '9', '11', '/upload\\20181102\\055b8e40f56b923e0b5a7f5db515ab03.png', '<p>试试</p>', '1541667480', '1582352306', '89.30', '23.80', '5', '0', '10000', '0', '1491666720', '1553961120', '1489420357', '1489420391', '115.826266426', '29.0155615737', '0', '8', '0.00', '<p>试试</p>');
INSERT INTO `o2o_deal` VALUES ('12', 'test', '1', '27', '9', '11', '/upload\\20181102\\055b8e40f56b923e0b5a7f5db515ab03.png', '<p>&lt;script&gt;alert(1)&lt;/script&gt;</p>', '1541667480', '1582352306', '89.30', '23.80', '5', '0', '10000', '0', '1490896560', '1521827760', '1489427825', '1489427825', '115.826266426', '29.0155615737', '0', '8', '0.00', '<p>&lt;script&gt;alert(2)&lt;/script&gt;</p>');
INSERT INTO `o2o_deal` VALUES ('13', '1分购', '1', '27,12,8', '9', '11', '/upload\\20181102\\055b8e40f56b923e0b5a7f5db515ab03.png', '<p>ss</p>', '1541667480', '1582352306', '1.00', '0.01', '5', '9', '100', '0', '1489954500', '1522440900', '1489868121', '1489868131', '115.826266426', '29.0155615737', '0', '8', '0.00', '<p>ss</p>');
INSERT INTO `o2o_deal` VALUES ('14', '火锅', '1', '27,9', '30', '22', '/upload\\20181102\\055b8e40f56b923e0b5a7f5db515ab03.png', '<p>团购描述</p>', '1543729560', '1582352306', '300.00', '230.00', '5', '0', '30', '0', '1543816020', '1544161620', '1541137648', '1541137655', '', '', '0', '25', '0.00', '<p>团购须知</p>');
INSERT INTO `o2o_deal` VALUES ('15', '烤肉', '1', '27', '30', '22', '/upload\\20181102\\055b8e40f56b923e0b5a7f5db515ab03.png', '<p>团购描述</p>', '1541742840', '1582352306', '300.00', '230.00', '2', '0', '30', '0', '1541829240', '1543557300', '1541138148', '1541138169', '', '', '0', '25', '0.00', '<p>购买须知</p>');
INSERT INTO `o2o_deal` VALUES ('16', '火锅', '1', '9', '30', '22', '/upload\\20181102\\554b5ed3a863a88040461229218f87bd.png', '<p><strong style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 18px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: &quot;Microsoft YaHei&quot;; color: rgb(51, 51, 51); text-indent: 36px; white-space: normal;\">牵肠挂肚火锅</strong><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 18px; text-indent: 36px;\">是成都首家主打鸭肠毛肚的精品市井火锅，秉承“火锅，从鸭肠毛肚开始”的理念，在延续老火锅九宫格锅底味髓的基础上，推出以鸭肠毛肚为主、成都传统经典小吃为辅的特色菜品，还原80年代市井老成都的麻辣滋味；将正宗老成都火锅完美融入老成都时代背景中，再现市井成都的人文生活，老味道新环境，让消费者在用餐体验中找到熟悉的记忆，引发情感共鸣，重回那个</span></p>', '1544250420', '1582352306', '300.00', '230.00', '2', '0', '30', '0', '1544164080', '1544855280', '1541140171', '1541140197', '', '', '0', '25', '0.00', '<p><span style=\"color: rgb(204, 0, 0); font-family: arial; font-size: 13px; background-color: rgb(255, 255, 255);\">火锅</span><span style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 13px; background-color: rgb(255, 255, 255);\">(英语：Hot Pot)，古称“古董羹”，因食物投入沸水时发出的“咕咚”声而得名，它是中国独创的美食，历史悠久，是一种老少皆宜的食物。据考证，战国时期即有</span><span style=\"color: rgb(204, 0, 0); font-family: arial; font-size: 13px; background-color: rgb(255, 255, 255);\">火锅</span><span style=\"color: rgb(51, 51, 51); font-family: arial; font-size: 13px; background-color: rgb(255, 255, 255);\">，时人以陶...</span></p>');

-- ----------------------------
-- Table structure for o2o_featured
-- ----------------------------
DROP TABLE IF EXISTS `o2o_featured`;
CREATE TABLE `o2o_featured` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '推荐位类别默认为0',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `image` varchar(255) NOT NULL COMMENT '图片',
  `url` varchar(255) NOT NULL COMMENT '地址',
  `description` varchar(255) NOT NULL COMMENT '描述',
  `create_time` int(11) NOT NULL COMMENT '注册时间',
  `update_time` int(11) NOT NULL COMMENT '修改时间',
  `status` tinyint(1) NOT NULL COMMENT '状态 0 -1 1 2等 1为正常',
  `listorder` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='推荐位表';

-- ----------------------------
-- Records of o2o_featured
-- ----------------------------
INSERT INTO `o2o_featured` VALUES ('1', '0', '测试', '/upload\\20181102\\d9496d1e0c563fa393c249d8fbf676f8.png', 'http://weibo.com/ajaxlogin.php?framelogin=1&callback=parent.sinaSSOController.feedBackUrlCallBack', '', '1483203600', '1486895058', '-1', '0');
INSERT INTO `o2o_featured` VALUES ('2', '0', '新浪体育', '/upload\\20181102\\7f14b10fc04f3d8284c0b6b47807d486.png', 'http://d.nuomi.com/?1009764s', 'ss', '1483203600', '1486916853', '1', '0');
INSERT INTO `o2o_featured` VALUES ('6', '0', '酒店住宿', '/upload\\20181102\\7f14b10fc04f3d8284c0b6b47807d486.png', 'http://www.imooc.com', '酒店住宿', '1541140620', '1541140620', '0', '0');
INSERT INTO `o2o_featured` VALUES ('7', '1', '广告推荐', '/upload\\20181102\\2ec5a3546f1ed9975667dd659ccd67b9.png', 'https://www.imooc.com', '广告', '1541140667', '1541140667', '0', '0');
INSERT INTO `o2o_featured` VALUES ('8', '0', '电影预约', '/upload\\20181102\\7f14b10fc04f3d8284c0b6b47807d486.png', 'https://www.baidu.com', '看电影', '1541140711', '1541140711', '0', '0');
INSERT INTO `o2o_featured` VALUES ('9', '0', 'ceshi ', '/upload\\20181102\\d9496d1e0c563fa393c249d8fbf676f8.png', 'https://www.imooc.com', '测试', '1541140826', '1541140826', '0', '0');

-- ----------------------------
-- Table structure for o2o_order
-- ----------------------------
DROP TABLE IF EXISTS `o2o_order`;
CREATE TABLE `o2o_order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `out_trade_no` varchar(100) NOT NULL DEFAULT '',
  `transaction_id` varchar(100) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `pay_time` varchar(20) NOT NULL DEFAULT '',
  `payment_id` tinyint(1) NOT NULL DEFAULT '1',
  `deal_id` int(11) NOT NULL DEFAULT '0',
  `deal_count` int(11) NOT NULL DEFAULT '0',
  `pay_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '支付状态 0：未支付 1支付成功 2支付失败  3',
  `total_price` decimal(20,2) NOT NULL DEFAULT '0.00',
  `pay_amount` decimal(20,2) NOT NULL DEFAULT '0.00',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `referer` varchar(255) NOT NULL DEFAULT '',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `out_trade_no` (`out_trade_no`),
  KEY `user_id` (`user_id`),
  KEY `create_time` (`create_time`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of o2o_order
-- ----------------------------
INSERT INTO `o2o_order` VALUES ('1', '1489920532730340090', '', '1', 'singwa', '', '1', '13', '3', '1', '0.00', '0.00', '1', 'http://o2o.singwa.com/index.php/index/order/confirm.html?id=13&count=1', '1489920532', '1489920532');
INSERT INTO `o2o_order` VALUES ('2', '1489920648431182035', '', '1', 'singwa', '', '1', '13', '5', '0', '0.00', '0.00', '1', 'http://o2o.singwa.com/index.php/index/order/confirm.html?id=13&count=1', '1489920648', '1489920648');
INSERT INTO `o2o_order` VALUES ('3', '1489941050652580785', '', '1', 'singwa', '', '1', '13', '1', '0', '0.00', '0.00', '1', 'http://o2o.singwa.com/index.php/index/order/confirm.html?id=13&count=1', '1489941050', '1489941050');
INSERT INTO `o2o_order` VALUES ('4', '1489941423655036043', '', '1', 'singwa', '', '1', '13', '1', '0', '0.00', '0.00', '1', 'http://o2o.singwa.com/index.php/index/order/confirm.html?id=13&count=1', '1489941423', '1489941423');
INSERT INTO `o2o_order` VALUES ('5', '148994160820136222', '', '1', 'singwa', '', '1', '13', '1', '0', '0.00', '0.00', '1', 'http://o2o.singwa.com/index.php/index/order/confirm.html?id=13&count=1', '1489941607', '1489941607');
INSERT INTO `o2o_order` VALUES ('6', '1489941786892671313', '4004102001201703203974903406', '1', 'singwa', '20170320015511', '1', '13', '1', '1', '0.00', '0.01', '1', 'http://o2o.singwa.com/index.php/index/order/confirm.html?id=13&count=1', '1489941786', '1489952064');
INSERT INTO `o2o_order` VALUES ('7', '148994303698780471', '4004102001201703193969410548', '1', 'singwa', '20170319233929', '1', '13', '2', '1', '0.02', '0.01', '1', 'http://o2o.singwa.com/index.php/index/order/confirm.html?id=13&count=1', '1489943036', '1489950025');
INSERT INTO `o2o_order` VALUES ('8', '1489953745665510961', '', '1', 'singwa', '', '1', '13', '1', '0', '0.01', '0.00', '1', 'http://o2o.singwa.com/index.php/index/order/confirm.html?id=13&count=1', '1489953745', '1489953745');

-- ----------------------------
-- Table structure for o2o_user
-- ----------------------------
DROP TABLE IF EXISTS `o2o_user`;
CREATE TABLE `o2o_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL COMMENT '会员名',
  `password` varchar(32) NOT NULL COMMENT '会员密码',
  `code` varchar(10) NOT NULL COMMENT '登录用的标识码(md5加密前缀)',
  `last_login_time` varchar(255) NOT NULL COMMENT '最后登录时间',
  `email` varchar(255) DEFAULT '' COMMENT '会员邮件',
  `mobile` varchar(255) DEFAULT '' COMMENT '会员手机号',
  `create_time` int(11) NOT NULL COMMENT '注册时间',
  `update_time` int(11) NOT NULL COMMENT '修改时间',
  `status` tinyint(1) NOT NULL COMMENT '状态 0 -1 1 2等 1为正常',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='会员表';

-- ----------------------------
-- Records of o2o_user
-- ----------------------------
INSERT INTO `o2o_user` VALUES ('1', 'singwa', 'c19a21c9282e5e2067740256440b6649', '9396', '1489869612', 'singwa3@126.com', '', '1486916110', '1489869612', '1');
INSERT INTO `o2o_user` VALUES ('2', 'singwa1', 'ac71888f17a4b50524cea4c330c6e48d', '2189', '', 'singwa30@126.com', '', '1486916208', '1486916208', '1');
INSERT INTO `o2o_user` VALUES ('3', 'singwa12', 'eef008dfc7139735271c3291df44e9b1', '1524', '', 'singwa300@126.com', '', '1486918455', '1486918455', '1');
INSERT INTO `o2o_user` VALUES ('4', 'test', 'c4f01b0b44aac11d25f670ac34d92140', '589', '1489227867', 'tracywxh0830@126.com', '', '1489227844', '1489227867', '1');
