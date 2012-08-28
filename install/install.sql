/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50090
Source Host           : localhost:3306
Source Database       : sutoocms

Target Server Type    : MYSQL
Target Server Version : 50090
File Encoding         : 65001

Date: 2012-08-29 00:42:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `stcms_admins`
-- ----------------------------
DROP TABLE IF EXISTS `stcms_admins`;
CREATE TABLE `stcms_admins` (
  `uid` int(10) unsigned NOT NULL auto_increment,
  `username` varchar(32) NOT NULL,
  `realname` varchar(32) default NULL,
  `password` varchar(32) NOT NULL,
  `roleid` int(10) unsigned default '0',
  `intro` varchar(255) default NULL,
  `lasttime` int(10) default '0',
  `lastip` varchar(50) default NULL,
  PRIMARY KEY  (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stcms_admins
-- ----------------------------
INSERT INTO `stcms_admins` VALUES ('2', 'sutoo', '刘利伟', 'ea26d421251bcccf0dd656e88c8dac9e', '3', '速途管理员', '1346160447', '127.0.0.1');
INSERT INTO `stcms_admins` VALUES ('5', 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', '3', 'admin', '1346164247', '127.0.0.1');

-- ----------------------------
-- Table structure for `stcms_brands`
-- ----------------------------
DROP TABLE IF EXISTS `stcms_brands`;
CREATE TABLE `stcms_brands` (
  `id` int(11) NOT NULL auto_increment,
  `brandname` varchar(255) default NULL,
  `brandlid` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=184 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stcms_brands
-- ----------------------------
INSERT INTO `stcms_brands` VALUES ('105', '3.1 phillip lim', 'brand_no1');
INSERT INTO `stcms_brands` VALUES ('142', 'A.P.C.', 'brand_a1');
INSERT INTO `stcms_brands` VALUES ('108', 'A.Testoni', 'brand_a2');
INSERT INTO `stcms_brands` VALUES ('155', 'Abercrombie', 'brand_a3');
INSERT INTO `stcms_brands` VALUES ('165', 'Acne', 'brand_a4');
INSERT INTO `stcms_brands` VALUES ('51', 'Agatha', 'brand_a5');
INSERT INTO `stcms_brands` VALUES ('17', 'Aigner', 'brand_a6');
INSERT INTO `stcms_brands` VALUES ('56', 'Alain Mikli', 'brand_a7');
INSERT INTO `stcms_brands` VALUES ('159', 'Alberta Ferretti', 'brand_a8');
INSERT INTO `stcms_brands` VALUES ('106', 'Alexander Mcqueen', 'brand_a9');
INSERT INTO `stcms_brands` VALUES ('133', 'Alexander Wang', 'brand_a10');
INSERT INTO `stcms_brands` VALUES ('163', 'Alice & Olivia', 'brand_a11');
INSERT INTO `stcms_brands` VALUES ('86', 'Alviero Martini', 'brand_a12');
INSERT INTO `stcms_brands` VALUES ('136', 'Ann Demeulemeester', 'brand_a13');
INSERT INTO `stcms_brands` VALUES ('35', 'Anna Molinari', 'brand_a14');
INSERT INTO `stcms_brands` VALUES ('54', 'Anna Sui', 'brand_a15');
INSERT INTO `stcms_brands` VALUES ('171', 'Antonio Marras', 'brand_a16');
INSERT INTO `stcms_brands` VALUES ('18', 'Armani', 'brand_a17');
INSERT INTO `stcms_brands` VALUES ('147', 'Ash', 'brand_a18');
INSERT INTO `stcms_brands` VALUES ('55', 'Balenciaga', 'brand_b1');
INSERT INTO `stcms_brands` VALUES ('1', 'BALLY', 'brand_b2');
INSERT INTO `stcms_brands` VALUES ('139', 'Balmain', 'brand_b3');
INSERT INTO `stcms_brands` VALUES ('164', 'Berluti', 'brand_b4');
INSERT INTO `stcms_brands` VALUES ('58', 'Blue Cult', 'brand_b5');
INSERT INTO `stcms_brands` VALUES ('37', 'Blumarine', 'brand_b6');
INSERT INTO `stcms_brands` VALUES ('19', 'Boss', 'brand_b7');
INSERT INTO `stcms_brands` VALUES ('92', 'Bottega Veneta', 'brand_b8');
INSERT INTO `stcms_brands` VALUES ('144', 'Brunello Cucinelli', 'brand_b9');
INSERT INTO `stcms_brands` VALUES ('2', 'Burberry', 'brand_b10');
INSERT INTO `stcms_brands` VALUES ('3', 'BVLGARI', 'brand_b11');
INSERT INTO `stcms_brands` VALUES ('46', 'Cacharel', 'brand_c1');
INSERT INTO `stcms_brands` VALUES ('34', 'Calvin Klein', 'brand_c2');
INSERT INTO `stcms_brands` VALUES ('156', 'Camper', 'brand_c3');
INSERT INTO `stcms_brands` VALUES ('20', 'Cartier', 'brand_c4');
INSERT INTO `stcms_brands` VALUES ('178', 'Castaner', 'brand_c5');
INSERT INTO `stcms_brands` VALUES ('140', 'Castelbajac', 'brand_c6');
INSERT INTO `stcms_brands` VALUES ('5', 'CELINE', 'brand_c7');
INSERT INTO `stcms_brands` VALUES ('6', 'CHANEL', 'brand_c8');
INSERT INTO `stcms_brands` VALUES ('151', 'Chaumet', 'brand_c9');
INSERT INTO `stcms_brands` VALUES ('44', 'Chloe', 'brand_c10');
INSERT INTO `stcms_brands` VALUES ('174', 'Chopard', 'brand_c11');
INSERT INTO `stcms_brands` VALUES ('7', 'Christian Dior', 'brand_c12');
INSERT INTO `stcms_brands` VALUES ('97', 'Christian Louboutin', 'brand_c13');
INSERT INTO `stcms_brands` VALUES ('175', 'Chrome Hearts', 'brand_c14');
INSERT INTO `stcms_brands` VALUES ('45', 'Coach', 'brand_c15');
INSERT INTO `stcms_brands` VALUES ('125', 'Colombo', 'brand_c16');
INSERT INTO `stcms_brands` VALUES ('109', 'Comme des Garcons', 'brand_c17');
INSERT INTO `stcms_brands` VALUES ('122', 'Costume National', 'brand_c18');
INSERT INTO `stcms_brands` VALUES ('173', 'Current Elliott', 'brand_c19');
INSERT INTO `stcms_brands` VALUES ('84', 'D&G', 'brand_d1');
INSERT INTO `stcms_brands` VALUES ('85', 'Diane Von furstenberg', 'brand_d2');
INSERT INTO `stcms_brands` VALUES ('67', 'Diesel', 'brand_d3');
INSERT INTO `stcms_brands` VALUES ('79', 'Dior Homme', 'brand_d4');
INSERT INTO `stcms_brands` VALUES ('21', 'DKNY', 'brand_d5');
INSERT INTO `stcms_brands` VALUES ('8', 'Dolce&Gabbana', 'brand_d6');
INSERT INTO `stcms_brands` VALUES ('121', 'Dries Van Noten', 'brand_d7');
INSERT INTO `stcms_brands` VALUES ('63', 'Dsquared2', 'brand_d8');
INSERT INTO `stcms_brands` VALUES ('119', 'Dunhill', 'brand_d9');
INSERT INTO `stcms_brands` VALUES ('40', 'Dupont', 'brand_d10');
INSERT INTO `stcms_brands` VALUES ('39', 'Earl Jean', 'brand_e1');
INSERT INTO `stcms_brands` VALUES ('131', 'Ed Hardy', 'brand_e2');
INSERT INTO `stcms_brands` VALUES ('166', 'Elie Tahari', 'brand_e3');
INSERT INTO `stcms_brands` VALUES ('128', 'Emilio Pucci', 'brand_e4');
INSERT INTO `stcms_brands` VALUES ('42', 'ESCADA', 'brand_e5');
INSERT INTO `stcms_brands` VALUES ('9', 'ETRO', 'brand_e6');
INSERT INTO `stcms_brands` VALUES ('48', 'exte', 'brand_e7');
INSERT INTO `stcms_brands` VALUES ('10', 'FENDI', 'brand_f1');
INSERT INTO `stcms_brands` VALUES ('11', 'Ferragamo', 'brand_f2');
INSERT INTO `stcms_brands` VALUES ('88', 'Franck Muller', 'brand_f3');
INSERT INTO `stcms_brands` VALUES ('78', 'Frankie Morello', 'brand_f4');
INSERT INTO `stcms_brands` VALUES ('49', 'G.F.Ferre', 'brand_g1');
INSERT INTO `stcms_brands` VALUES ('50', 'Genny', 'brand_g2');
INSERT INTO `stcms_brands` VALUES ('176', 'George Cox', 'brand_g3');
INSERT INTO `stcms_brands` VALUES ('117', 'Giuseppe Zanotti', 'brand_g4');
INSERT INTO `stcms_brands` VALUES ('47', 'Givenchy', 'brand_g5');
INSERT INTO `stcms_brands` VALUES ('179', 'Golden Goose', 'brand_g6');
INSERT INTO `stcms_brands` VALUES ('101', 'GOYARD', 'brand_g7');
INSERT INTO `stcms_brands` VALUES ('12', 'GUCCI', 'brand_g8');
INSERT INTO `stcms_brands` VALUES ('154', 'Helen Kaminski', 'brand_h1');
INSERT INTO `stcms_brands` VALUES ('146', 'Helmut Lang', 'brand_h2');
INSERT INTO `stcms_brands` VALUES ('13', 'HERMES', 'brand_h3');
INSERT INTO `stcms_brands` VALUES ('90', 'Hudson', 'brand_h4');
INSERT INTO `stcms_brands` VALUES ('32', 'Hunting World', 'brand_h5');
INSERT INTO `stcms_brands` VALUES ('23', 'Iceberg', 'brand_i1');
INSERT INTO `stcms_brands` VALUES ('124', 'Isabel Marant', 'brand_i2');
INSERT INTO `stcms_brands` VALUES ('172', 'Issey Miyake', 'brand_i3');
INSERT INTO `stcms_brands` VALUES ('134', 'Jean Paul Gaultier', 'brand_j1');
INSERT INTO `stcms_brands` VALUES ('162', 'Jeffrey Campbell', 'brand_j2');
INSERT INTO `stcms_brands` VALUES ('33', 'JIL SANDER', 'brand_j3');
INSERT INTO `stcms_brands` VALUES ('114', 'Jill Stuart', 'brand_j4');
INSERT INTO `stcms_brands` VALUES ('94', 'Jimmy Choo', 'brand_j5');
INSERT INTO `stcms_brands` VALUES ('81', 'John Galliano', 'brand_j6');
INSERT INTO `stcms_brands` VALUES ('158', 'John Varvatos', 'brand_j7');
INSERT INTO `stcms_brands` VALUES ('111', 'Juicy Couture', 'brand_j8');
INSERT INTO `stcms_brands` VALUES ('160', 'Kate Spade', 'brand_k1');
INSERT INTO `stcms_brands` VALUES ('61', 'Kenzo', 'brand_k2');
INSERT INTO `stcms_brands` VALUES ('102', 'Kris Van Assche', 'brand_k3');
INSERT INTO `stcms_brands` VALUES ('153', 'Ksubi', 'brand_k4');
INSERT INTO `stcms_brands` VALUES ('149', 'Laguna Beach jean', 'brand_l1');
INSERT INTO `stcms_brands` VALUES ('99', 'Lanvin', 'brand_l2');
INSERT INTO `stcms_brands` VALUES ('66', 'Lesportsac', 'brand_l3');
INSERT INTO `stcms_brands` VALUES ('52', 'Loewe', 'brand_l4');
INSERT INTO `stcms_brands` VALUES ('68', 'Longchamp', 'brand_l5');
INSERT INTO `stcms_brands` VALUES ('143', 'Loro Piana', 'brand_l6');
INSERT INTO `stcms_brands` VALUES ('24', 'Louis Vuitton', 'brand_l7');
INSERT INTO `stcms_brands` VALUES ('72', 'Luella', 'brand_l8');
INSERT INTO `stcms_brands` VALUES ('59', 'LuLu Guinness', 'brand_l9');
INSERT INTO `stcms_brands` VALUES ('96', 'Manolo Blahnik', 'brand_m1');
INSERT INTO `stcms_brands` VALUES ('141', 'Manoush', 'brand_m2');
INSERT INTO `stcms_brands` VALUES ('103', 'Marc by Marc Jacobs', 'brand_m3');
INSERT INTO `stcms_brands` VALUES ('38', 'Marc Jacobs', 'brand_m4');
INSERT INTO `stcms_brands` VALUES ('53', 'Marni', 'brand_m5');
INSERT INTO `stcms_brands` VALUES ('104', 'Martin Margiela', 'brand_m6');
INSERT INTO `stcms_brands` VALUES ('25', 'Max Mara', 'brand_m7');
INSERT INTO `stcms_brands` VALUES ('41', 'MCM', 'brand_m8');
INSERT INTO `stcms_brands` VALUES ('65', 'Metrocity', 'brand_m9');
INSERT INTO `stcms_brands` VALUES ('75', 'Michael Kors', 'brand_m10');
INSERT INTO `stcms_brands` VALUES ('27', 'Missoni', 'brand_m11');
INSERT INTO `stcms_brands` VALUES ('26', 'Miu Miu', 'brand_m12');
INSERT INTO `stcms_brands` VALUES ('112', 'Moncler', 'brand_m13');
INSERT INTO `stcms_brands` VALUES ('76', 'Montblanc', 'brand_m14');
INSERT INTO `stcms_brands` VALUES ('28', 'Moschino', 'brand_m15');
INSERT INTO `stcms_brands` VALUES ('95', 'Mulberry', 'brand_m16');
INSERT INTO `stcms_brands` VALUES ('100', 'Neil Barrett', 'brand_n1');
INSERT INTO `stcms_brands` VALUES ('69', 'Oilily', 'brand_o1');
INSERT INTO `stcms_brands` VALUES ('4', 'OMEGA', 'brand_o2');
INSERT INTO `stcms_brands` VALUES ('177', 'Opening Ceremony', 'brand_o3');
INSERT INTO `stcms_brands` VALUES ('60', 'Paul Smith', 'brand_p1');
INSERT INTO `stcms_brands` VALUES ('89', 'PIAGET', 'brand_p2');
INSERT INTO `stcms_brands` VALUES ('169', 'Pierre Hardy', 'brand_p3');
INSERT INTO `stcms_brands` VALUES ('14', 'PRADA', 'brand_p4');
INSERT INTO `stcms_brands` VALUES ('168', 'Proenza Schouler', 'brand_p5');
INSERT INTO `stcms_brands` VALUES ('71', 'Puma', 'brand_p6');
INSERT INTO `stcms_brands` VALUES ('116', 'Raf Simons', 'brand_r1');
INSERT INTO `stcms_brands` VALUES ('29', 'Ralph Lauren', 'brand_r2');
INSERT INTO `stcms_brands` VALUES ('98', 'Ray Ban', 'brand_r3');
INSERT INTO `stcms_brands` VALUES ('145', 'Rebecca Minkoff', 'brand_r4');
INSERT INTO `stcms_brands` VALUES ('138', 'Rebecca taylor', 'brand_r5');
INSERT INTO `stcms_brands` VALUES ('170', 'Repetto', 'brand_r6');
INSERT INTO `stcms_brands` VALUES ('135', 'Richmond', 'brand_r7');
INSERT INTO `stcms_brands` VALUES ('126', 'Rick Owens', 'brand_r8');
INSERT INTO `stcms_brands` VALUES ('152', 'Rimowa', 'brand_r9');
INSERT INTO `stcms_brands` VALUES ('70', 'Roberto Cavalli', 'brand_r10');
INSERT INTO `stcms_brands` VALUES ('129', 'Robins jean', 'brand_r11');
INSERT INTO `stcms_brands` VALUES ('43', 'Rolex', 'brand_r12');
INSERT INTO `stcms_brands` VALUES ('130', 'Sergio Rossi', 'brand_s1');
INSERT INTO `stcms_brands` VALUES ('57', 'Seven Jeans', 'brand_s2');
INSERT INTO `stcms_brands` VALUES ('167', 'Siwy', 'brand_s3');
INSERT INTO `stcms_brands` VALUES ('113', 'Sonia Rykiel', 'brand_s4');
INSERT INTO `stcms_brands` VALUES ('62', 'St.John', 'brand_s5');
INSERT INTO `stcms_brands` VALUES ('80', 'Stella McCartney', 'brand_s6');
INSERT INTO `stcms_brands` VALUES ('77', 'Stone Island', 'brand_s7');
INSERT INTO `stcms_brands` VALUES ('64', 'Swarovski', 'brand_s8');
INSERT INTO `stcms_brands` VALUES ('87', 'Tag Heuer', 'brand_t1');
INSERT INTO `stcms_brands` VALUES ('31', 'TechnoMarine', 'brand_t2');
INSERT INTO `stcms_brands` VALUES ('120', 'Theory', 'brand_t3');
INSERT INTO `stcms_brands` VALUES ('180', 'Thom Browne', 'brand_t4');
INSERT INTO `stcms_brands` VALUES ('15', 'TIFFANY & Co', 'brand_t5');
INSERT INTO `stcms_brands` VALUES ('91', 'TODS', 'brand_t6');
INSERT INTO `stcms_brands` VALUES ('115', 'Tomford', 'brand_t7');
INSERT INTO `stcms_brands` VALUES ('132', 'Tory Burch', 'brand_t8');
INSERT INTO `stcms_brands` VALUES ('74', 'True religion', 'brand_t9');
INSERT INTO `stcms_brands` VALUES ('123', 'Tsumori Chisato', 'brand_t10');
INSERT INTO `stcms_brands` VALUES ('148', 'Tumi', 'brand_t11');
INSERT INTO `stcms_brands` VALUES ('110', 'Valentino', 'brand_v1');
INSERT INTO `stcms_brands` VALUES ('157', 'Valextra', 'brand_v2');
INSERT INTO `stcms_brands` VALUES ('150', 'Van Cleef & Arpels', 'brand_v3');
INSERT INTO `stcms_brands` VALUES ('118', 'Vanessa Bruno', 'brand_v4');
INSERT INTO `stcms_brands` VALUES ('137', 'Vera Wang', 'brand_v5');
INSERT INTO `stcms_brands` VALUES ('30', 'Versace', 'brand_v6');
INSERT INTO `stcms_brands` VALUES ('93', 'Victorias secret', 'brand_v7');
INSERT INTO `stcms_brands` VALUES ('107', 'Viktor&Rolf', 'brand_v8');
INSERT INTO `stcms_brands` VALUES ('161', 'Vince', 'brand_v9');
INSERT INTO `stcms_brands` VALUES ('36', 'ViVienne westwood', 'brand_v10');
INSERT INTO `stcms_brands` VALUES ('127', 'Voom', 'brand_v11');
INSERT INTO `stcms_brands` VALUES ('83', 'Yohji Yamamoto', 'brand_y1');
INSERT INTO `stcms_brands` VALUES ('73', 'YSL', 'brand_y2');
INSERT INTO `stcms_brands` VALUES ('82', 'Zegna', 'brand_z1');
INSERT INTO `stcms_brands` VALUES ('16', '그외 기타브랜드', 'brand_other1');

-- ----------------------------
-- Table structure for `stcms_category`
-- ----------------------------
DROP TABLE IF EXISTS `stcms_category`;
CREATE TABLE `stcms_category` (
  `catid` int(10) unsigned NOT NULL auto_increment,
  `siteid` int(10) unsigned NOT NULL,
  `modelid` int(10) NOT NULL,
  `catename` varchar(50) NOT NULL,
  `parentid` int(10) unsigned NOT NULL default '0',
  `catdir` varchar(255) NOT NULL,
  `listorder` int(10) unsigned NOT NULL default '0',
  `meta_title` varchar(255) default NULL,
  `meta_keywords` varchar(255) default NULL,
  `meta_description` varchar(255) default NULL,
  `rownum` int(11) unsigned default '0',
  `ismenu` tinyint(1) unsigned NOT NULL default '1',
  `ishtml` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`catid`),
  KEY `siteid` (`siteid`,`modelid`)
) ENGINE=MyISAM AUTO_INCREMENT=183 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stcms_category
-- ----------------------------
INSERT INTO `stcms_category` VALUES ('176', '2', '1', '知名宠物店', '0', 'zhimingchongwudian', '2', null, null, null, '0', '1', '0');
INSERT INTO `stcms_category` VALUES ('175', '2', '1', '名犬展示', '0', 'mingquanzhanshi', '1', null, null, null, '0', '1', '0');
INSERT INTO `stcms_category` VALUES ('177', '2', '1', '种公借配', '0', 'zhonggongjiepei', '3', null, null, null, '0', '1', '0');
INSERT INTO `stcms_category` VALUES ('178', '2', '1', '宠物医院', '0', 'chongwuyiyuan', '4', null, null, null, '0', '1', '0');
INSERT INTO `stcms_category` VALUES ('179', '2', '3', '宠物用品', '0', 'chongwuyongpin', '5', null, null, null, '0', '1', '0');
INSERT INTO `stcms_category` VALUES ('180', '2', '4', '买卖信息', '0', 'maimaixinxi', '6', null, null, null, '0', '1', '0');
INSERT INTO `stcms_category` VALUES ('181', '2', '4', '寻宠启示', '0', 'xunchongqishi', '7', null, null, null, '0', '1', '0');
INSERT INTO `stcms_category` VALUES ('182', '2', '1', '流浪犬猫救助站', '0', 'liulangquanmaojiuzhuzhan', '8', null, null, null, '0', '1', '0');

-- ----------------------------
-- Table structure for `stcms_fav`
-- ----------------------------
DROP TABLE IF EXISTS `stcms_fav`;
CREATE TABLE `stcms_fav` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `shopid` int(11) unsigned default NULL,
  `shopname` varchar(255) default NULL,
  `uid` int(11) unsigned default NULL,
  `username` varchar(255) default NULL,
  `sellerid` int(11) unsigned default '0',
  `sellername` varchar(255) default NULL,
  `sellerintro` text,
  `remark` text,
  `addtime` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stcms_fav
-- ----------------------------
INSERT INTO `stcms_fav` VALUES ('4', null, null, '3', 'yjliwei', '5', 'weiwei001', '레이벤 RB5227 2144 명품안경테 사각뿔테 연예인착용 이태', '12341', '2012-07-25 17:28:08');
INSERT INTO `stcms_fav` VALUES ('5', '90', '꽃나비 나의 행복 여성의상', '5', 'weiwei001', '4', 'dora117', '345', null, '2012-07-25 17:28:12');
INSERT INTO `stcms_fav` VALUES ('6', '88', '(해외배송)123 12 S/S Chancery Rosa 5443', '5', 'weiwei001', '3', 'yjliwei', '345', null, '2012-07-25 17:28:15');
INSERT INTO `stcms_fav` VALUES ('9', '92', '상품등록 테스트 -타이틀', '3', 'yjliwei', '5', 'weiwei001', null, null, '2012-07-25 18:47:15');
INSERT INTO `stcms_fav` VALUES ('10', null, null, '12', 'kuku22', '4', 'dora117', '레이벤 RB5227 2144 명품안경테 사각뿔테 연예인착용 이태', null, '2012-08-04 00:41:25');

-- ----------------------------
-- Table structure for `stcms_fields`
-- ----------------------------
DROP TABLE IF EXISTS `stcms_fields`;
CREATE TABLE `stcms_fields` (
  `fieldid` mediumint(8) unsigned NOT NULL auto_increment,
  `siteid` smallint(5) NOT NULL,
  `modelid` smallint(5) unsigned NOT NULL default '0',
  `name` varchar(20) NOT NULL,
  `cname` varchar(30) NOT NULL,
  `tips` text NOT NULL,
  `css` varchar(30) NOT NULL,
  `minlength` int(10) unsigned NOT NULL default '0',
  `maxlength` int(10) unsigned NOT NULL default '0',
  `pattern` varchar(255) NOT NULL,
  `errortips` varchar(255) NOT NULL,
  `formtype` varchar(20) NOT NULL,
  `isunique` tinyint(1) unsigned NOT NULL default '0',
  `issearch` tinyint(1) unsigned NOT NULL default '0',
  `isadd` tinyint(1) unsigned NOT NULL default '0',
  `islist` tinyint(1) unsigned NOT NULL default '0',
  `listorder` mediumint(8) unsigned NOT NULL default '0',
  `disabled` tinyint(1) unsigned NOT NULL default '0',
  `setting` text,
  PRIMARY KEY  (`fieldid`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stcms_fields
-- ----------------------------
INSERT INTO `stcms_fields` VALUES ('19', '0', '1', 'pic1', '图片1', '上传图片1', '', '1', '0', '', '', 'image', '0', '0', '1', '0', '0', '0', null);

-- ----------------------------
-- Table structure for `stcms_guestbook`
-- ----------------------------
DROP TABLE IF EXISTS `stcms_guestbook`;
CREATE TABLE `stcms_guestbook` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(50) NOT NULL,
  `userid` int(11) NOT NULL,
  `adddate` datetime NOT NULL,
  `state` tinyint(2) default '1',
  `guesttel` varchar(50) NOT NULL,
  `guestemail` varchar(50) NOT NULL,
  `guestqq` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `reply` text,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stcms_guestbook
-- ----------------------------
INSERT INTO `stcms_guestbook` VALUES ('1', '伟伟', '1', '2011-11-26 15:14:31', '1', '15504338262', 'phpox@qq.com', '86958842', '测试留言', '测试留言', '测试回复');

-- ----------------------------
-- Table structure for `stcms_info`
-- ----------------------------
DROP TABLE IF EXISTS `stcms_info`;
CREATE TABLE `stcms_info` (
  `id` int(11) NOT NULL auto_increment,
  `catid` int(11) NOT NULL,
  `typeid` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `catid` (`catid`),
  KEY `typeid` (`typeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stcms_info
-- ----------------------------

-- ----------------------------
-- Table structure for `stcms_keywords`
-- ----------------------------
DROP TABLE IF EXISTS `stcms_keywords`;
CREATE TABLE `stcms_keywords` (
  `keyword` varchar(100) NOT NULL,
  `num` int(11) unsigned default '1',
  `uptime` int(10) unsigned default '0',
  PRIMARY KEY  (`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stcms_keywords
-- ----------------------------
INSERT INTO `stcms_keywords` VALUES ('12', '9', '1343224355');
INSERT INTO `stcms_keywords` VALUES ('asdf', '11', '1343224337');
INSERT INTO `stcms_keywords` VALUES ('gnvv', '4', '1343577222');
INSERT INTO `stcms_keywords` VALUES ('Ksubi', '3', '1342245295');
INSERT INTO `stcms_keywords` VALUES ('꽃나비', '2', '1342177973');
INSERT INTO `stcms_keywords` VALUES ('나의', '2', '1342178078');
INSERT INTO `stcms_keywords` VALUES ('여성의상', '1', '1342177380');
INSERT INTO `stcms_keywords` VALUES ('행복', '23', '1343112770');

-- ----------------------------
-- Table structure for `stcms_members`
-- ----------------------------
DROP TABLE IF EXISTS `stcms_members`;
CREATE TABLE `stcms_members` (
  `uid` int(10) unsigned NOT NULL auto_increment,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(100) default NULL,
  `realname` varchar(50) default NULL,
  `zipcode` varchar(50) default NULL,
  `address` varchar(255) default NULL,
  `tel` varchar(20) default NULL,
  `mobile` varchar(20) default NULL,
  `regtime` int(10) default NULL,
  `lasttime` int(10) default NULL,
  `lastip` varchar(20) default NULL,
  `ischeck` tinyint(1) default '0',
  `siteid` int(11) unsigned default '0',
  PRIMARY KEY  (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stcms_members
-- ----------------------------
INSERT INTO `stcms_members` VALUES ('8', 'sutoo', '10971ea637ec0a6550b8e2d28c5735ab', 'phpox@qq.com', '速途', '100-200', '我的住址-ad发放', '2342342', '234243', '1343225998', '1343228565', '119.50.7.190', '0', '1');
INSERT INTO `stcms_members` VALUES ('3', 'yjliwei', '9e5315e0ce61f36529d9d140b1cecb86', 'phpox@qq.com', '刘利伟', '133-000', '吉林省延吉市-河南街18号', '04332900108', '15504338262', '1339486904', '1343296401', '119.50.7.190', '0', '1');
INSERT INTO `stcms_members` VALUES ('4', 'dora117', 'f78a6665fbec0404210495e2c942603d', 'dora_117@sina.com', '이상은', '3333-1111', '중국-길림성연길시천우생태가원', '0433-3333333', '18888888888', '1341983954', '1342598851', '58.245.110.126', '0', '1');
INSERT INTO `stcms_members` VALUES ('5', 'weiwei001', '0659c7992e268962384eb17fafe88364', 'weiwei@sutoo.com', '서비', '0432-132135', 'asdfasdfasdfasdf서비서비서비서비서비-', '0433-3333333', '18888888888', '1342170554', '1343283267', '119.50.7.190', '0', '1');
INSERT INTO `stcms_members` VALUES ('12', 'kuku22', '24b88c0d82b311be399a2699ae318356', 'admin@admin.com', '김용', '510-410', 'ㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎ-', '', '15811880101', '1344011959', '1344011971', '119.130.192.67', '0', '1');
INSERT INTO `stcms_members` VALUES ('11', '12345', 'af8f9dffa5d420fbc249141645b962ee', '121@6777.com', '11111', '121-1212', '1212-1212', '', '11111111', '1343576875', '1343576886', '211.234.216.54', '0', '1');

-- ----------------------------
-- Table structure for `stcms_model`
-- ----------------------------
DROP TABLE IF EXISTS `stcms_model`;
CREATE TABLE `stcms_model` (
  `modelid` int(10) unsigned NOT NULL auto_increment,
  `modelname` varchar(50) NOT NULL,
  `tbname` varchar(50) NOT NULL,
  `intro` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL default '1',
  `rownum` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`modelid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 PACK_KEYS=0;

-- ----------------------------
-- Records of stcms_model
-- ----------------------------
INSERT INTO `stcms_model` VALUES ('3', '商城模型', 'shops', '系统内置商城', '1', '0');
INSERT INTO `stcms_model` VALUES ('1', '文章模型', 'news', '通用文章模型', '1', '0');
INSERT INTO `stcms_model` VALUES ('2', '图片模型', 'pics', '图片浏览模型', '1', '0');
INSERT INTO `stcms_model` VALUES ('4', '供求模型', 'info', '供求模型', '1', '0');
INSERT INTO `stcms_model` VALUES ('5', '音乐模型', 'music', '音乐模型', '1', '0');

-- ----------------------------
-- Table structure for `stcms_music`
-- ----------------------------
DROP TABLE IF EXISTS `stcms_music`;
CREATE TABLE `stcms_music` (
  `id` int(11) NOT NULL auto_increment,
  `catid` int(11) NOT NULL,
  `typeid` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `catid` (`catid`),
  KEY `typeid` (`typeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stcms_music
-- ----------------------------

-- ----------------------------
-- Table structure for `stcms_news`
-- ----------------------------
DROP TABLE IF EXISTS `stcms_news`;
CREATE TABLE `stcms_news` (
  `id` int(11) NOT NULL auto_increment,
  `pcatid` int(11) unsigned NOT NULL default '0',
  `catid` int(11) unsigned NOT NULL default '0',
  `typeid` int(11) unsigned NOT NULL default '0',
  `title` varchar(255) default NULL,
  `keywords` varchar(255) default NULL,
  `author` varchar(50) default NULL,
  `atfrom` varchar(100) default NULL,
  `linkurl` varchar(255) default NULL,
  `uselinkurl` tinyint(1) unsigned default '0',
  `intro` text,
  `content` mediumtext,
  `page` tinyint(1) unsigned default '0',
  `istop` tinyint(1) unsigned default '0',
  `iselite` tinyint(1) unsigned default '0',
  `ishot` tinyint(1) unsigned default '0',
  `addtime` datetime default '0000-00-00 00:00:00',
  `hits` int(11) default '1',
  `uid` int(11) default '0',
  `username` varchar(255) default NULL,
  `ip` varchar(50) default NULL,
  `pic1` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stcms_news
-- ----------------------------
INSERT INTO `stcms_news` VALUES ('83', '0', '175', '0', '测试1', null, '测试1', null, null, '0', '测试1', '测试1', '0', '0', '1', '0', '2012-06-28 19:53:00', '0', '0', null, null, null);

-- ----------------------------
-- Table structure for `stcms_orders`
-- ----------------------------
DROP TABLE IF EXISTS `stcms_orders`;
CREATE TABLE `stcms_orders` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `selleruid` int(11) default NULL,
  `sellerusername` varchar(50) default NULL,
  `shopid` int(11) default NULL,
  `shopname` varchar(255) default NULL,
  `shopcode` varchar(50) default NULL,
  `g_price` int(11) default NULL,
  `c_price` int(11) unsigned default '0',
  `uid` int(11) default NULL,
  `username` varchar(50) default NULL,
  `realname` varchar(50) default NULL,
  `email` varchar(100) default NULL,
  `tel` varchar(50) default NULL,
  `mobile` varchar(50) default NULL,
  `zipcode1` varchar(50) default NULL,
  `zipcode2` varchar(50) default NULL,
  `address1` varchar(100) default NULL,
  `address2` varchar(100) default NULL,
  `request` text,
  `rcp_s_1` tinyint(1) unsigned default '0',
  `rcp_s_2` tinyint(1) default NULL,
  `rcp_s_3` varchar(50) default NULL,
  `rcp_no_ju_1` varchar(50) default NULL,
  `rcp_no_ju_2` varchar(50) default NULL,
  `rcp_no_ph_1` varchar(50) default NULL,
  `rcp_no_ph_2` varchar(50) default NULL,
  `rcp_no_ph_3` varchar(50) default NULL,
  `sending_price` int(11) unsigned NOT NULL default '0',
  `bank_code` varchar(30) default NULL,
  `status` tinyint(2) unsigned NOT NULL default '0',
  `addtime` datetime default NULL,
  `uptime` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stcms_orders
-- ----------------------------
INSERT INTO `stcms_orders` VALUES ('13', '4', 'dora117', '90', 'Alexander Wang- 꽃나비 나의 행복 여성의상', '122341234', '21000', '22000', '3', 'yjliwei', '刘利伟', 'phpox@qq.com', '04332900108', '15504338262', '133', '000', '吉林省延吉市', '河南街18号', '其他要求', '1', '1', '핸드폰번호', '234', '234', '234', '23', '234', '1000', '국민은행', '6', '2012-07-18 15:33:55', null);
INSERT INTO `stcms_orders` VALUES ('14', '4', 'dora117', '90', 'Alexander Wang- 꽃나비 나의 행복 여성의상', '122341234', '21000', '22000', '5', 'weiwei001', '서비', 'weiwei@sutoo.com', '0433-3333333', '18888888888', '0432', '132135', 'asdfasdfasdfasdf서비서비서비서비서비', '34535', '其他要求', '1', '1', '주민등록번호', '345', '354', '', '', '', '1000', '국민은행', '1', '2012-07-24 21:44:28', '2012-07-25 01:24:05');
INSERT INTO `stcms_orders` VALUES ('15', '3', 'yjliwei', '88', 'Anna Molinari- ▶독점신상 12 S/S Chancery Rosa 5443', '2452435', '20000', '20000', '5', 'weiwei001', '서비', 'weiwei@sutoo.com', null, '456488', '0432', '132135', '343434', '5445646', '其他要求', '1', '1', '주민등록번호', '123', '123', '', '', '', '0', '국민은행', '6', '2012-07-24 22:34:11', '2012-07-25 01:59:52');
INSERT INTO `stcms_orders` VALUES ('17', '4', 'dora117', '90', 'Alexander Wang- 꽃나비 나의 행복 여성의상', '122341234', '21000', '22000', '5', 'weiwei001', '서비', 'weiwei@sutoo.com', '0433-3333333', '18888888888', '0432', '132135', 'asdfasdfasdfasdf서비서비서비서비서비', '', '其他要求', '1', '1', '주민등록번호', '123', '123', '', '', '', '1000', '국민은행', '6', '2012-07-25 00:01:17', '2012-07-25 01:25:23');

-- ----------------------------
-- Table structure for `stcms_petmembers`
-- ----------------------------
DROP TABLE IF EXISTS `stcms_petmembers`;
CREATE TABLE `stcms_petmembers` (
  `uid` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `petcat` varchar(255) default NULL,
  `petsubcat` varchar(255) default NULL,
  `petname` varchar(255) default NULL,
  `petage` varchar(255) default NULL,
  PRIMARY KEY  (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stcms_petmembers
-- ----------------------------

-- ----------------------------
-- Table structure for `stcms_pics`
-- ----------------------------
DROP TABLE IF EXISTS `stcms_pics`;
CREATE TABLE `stcms_pics` (
  `id` int(11) NOT NULL auto_increment,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stcms_pics
-- ----------------------------

-- ----------------------------
-- Table structure for `stcms_roles`
-- ----------------------------
DROP TABLE IF EXISTS `stcms_roles`;
CREATE TABLE `stcms_roles` (
  `roleid` int(11) unsigned NOT NULL auto_increment,
  `rolename` varchar(50) default NULL,
  `intro` varchar(255) default NULL,
  `powerlist` text,
  `usernum` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`roleid`)
) ENGINE=MyISAM AUTO_INCREMENT=1002 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stcms_roles
-- ----------------------------
INSERT INTO `stcms_roles` VALUES ('1000', '游客', null, null, '0');
INSERT INTO `stcms_roles` VALUES ('2', '普通用户', null, null, '0');
INSERT INTO `stcms_roles` VALUES ('3', '超级管理员', null, null, '2');
INSERT INTO `stcms_roles` VALUES ('4', '二级管理员', null, '', '0');
INSERT INTO `stcms_roles` VALUES ('1001', '三级管理员', '测试管理员', null, '0');

-- ----------------------------
-- Table structure for `stcms_searchbrands`
-- ----------------------------
DROP TABLE IF EXISTS `stcms_searchbrands`;
CREATE TABLE `stcms_searchbrands` (
  `brandid` int(11) unsigned NOT NULL default '0',
  `brandname` varchar(100) default NULL,
  `num` int(11) unsigned default '0',
  `uptime` int(10) unsigned default '0',
  PRIMARY KEY  (`brandid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stcms_searchbrands
-- ----------------------------
INSERT INTO `stcms_searchbrands` VALUES ('35', 'Anna Molinari', '15', '1341998701');
INSERT INTO `stcms_searchbrands` VALUES ('36', 'ViVienne westwood', '59', '1341998701');
INSERT INTO `stcms_searchbrands` VALUES ('133', 'Alexander Wang', '1', '1342054406');
INSERT INTO `stcms_searchbrands` VALUES ('153', 'Ksubi', '1', '1342054406');

-- ----------------------------
-- Table structure for `stcms_sessions`
-- ----------------------------
DROP TABLE IF EXISTS `stcms_sessions`;
CREATE TABLE `stcms_sessions` (
  `PHPSESSID` varchar(50) NOT NULL,
  `update_time` int(10) NOT NULL,
  `client_ip` varchar(15) NOT NULL,
  `data` text,
  PRIMARY KEY  (`PHPSESSID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stcms_sessions
-- ----------------------------
INSERT INTO `stcms_sessions` VALUES ('rlslth758jhb60uufr0f69i176', '1346157337', '127.0.0.1', 'user|a:4:{s:8:\"zipcode1\";s:0:\"\";s:8:\"zipcode2\";N;s:8:\"address1\";s:0:\"\";s:8:\"address2\";N;}auth_code|s:6:\"074015\";');
INSERT INTO `stcms_sessions` VALUES ('no81e9u08d6u501sduqukc8fm1', '1346169721', '127.0.0.1', 'user|a:4:{s:8:\"zipcode1\";s:0:\"\";s:8:\"zipcode2\";N;s:8:\"address1\";s:0:\"\";s:8:\"address2\";N;}');
INSERT INTO `stcms_sessions` VALUES ('l566lp1ufvtmnost22j0lbea44', '1346130875', '127.0.0.1', 'user|a:4:{s:8:\"zipcode1\";s:0:\"\";s:8:\"zipcode2\";N;s:8:\"address1\";s:0:\"\";s:8:\"address2\";N;}');
INSERT INTO `stcms_sessions` VALUES ('gfohml5h23065k4uohpd8jf3k0', '1346172047', '127.0.0.1', 'user|a:4:{s:8:\"zipcode1\";s:0:\"\";s:8:\"zipcode2\";N;s:8:\"address1\";s:0:\"\";s:8:\"address2\";N;}auth_code|s:6:\"283632\";admin|a:11:{s:3:\"uid\";s:1:\"5\";s:8:\"username\";s:5:\"admin\";s:8:\"realname\";s:5:\"admin\";s:8:\"password\";s:32:\"21232f297a57a5a743894a0e4a801fc3\";s:6:\"roleid\";s:1:\"3\";s:5:\"intro\";N;s:8:\"lasttime\";s:10:\"1346160964\";s:6:\"lastip\";s:9:\"127.0.0.1\";s:8:\"rolename\";s:15:\"超级管理员\";s:9:\"powerlist\";N;s:7:\"usernum\";s:1:\"2\";}');

-- ----------------------------
-- Table structure for `stcms_shopmember`
-- ----------------------------
DROP TABLE IF EXISTS `stcms_shopmember`;
CREATE TABLE `stcms_shopmember` (
  `uid` int(11) NOT NULL default '0',
  `username` varchar(50) default NULL,
  `realname` varchar(50) default NULL,
  `bankname` varchar(100) default NULL,
  `bkusername` varchar(50) default NULL,
  `bkcardid` varchar(20) default NULL,
  `level` tinyint(1) unsigned default '1',
  `intro` text,
  `remark` text,
  `userfav` int(11) unsigned default '0',
  `goodnum` int(11) unsigned default '0',
  `normalnum` int(11) unsigned default '0',
  `badnum` int(11) unsigned default '0',
  `shopname` varchar(255) default NULL,
  `shopproject` varchar(255) default NULL,
  `zipcode` varchar(50) default NULL,
  `faren` varchar(50) default NULL,
  `shopaddress` varchar(255) default NULL,
  `bizno` varchar(255) default NULL,
  `cptype` varchar(50) default NULL,
  `photo1` varchar(255) default NULL,
  `photo2` varchar(255) default NULL,
  `mappic` varchar(255) default NULL,
  `corpname` varchar(255) default NULL,
  `addtime` int(10) default '0',
  `siteid` int(11) unsigned default '0',
  `isseller` tinyint(1) unsigned default '0',
  `iscorp` tinyint(1) unsigned default '0',
  `kydatey` varchar(10) default NULL,
  `kydatem` varchar(10) default NULL,
  `kydated` varchar(10) default NULL,
  `xingzhi` varchar(255) default NULL,
  `zhonglei` varchar(255) default NULL,
  `bizpic` varchar(255) default NULL,
  `sellername` varchar(50) default NULL,
  `selleridcard` varchar(50) default NULL,
  `sellerbank` varchar(100) default NULL,
  `sellerbankuser` varchar(50) default NULL,
  `sellercardid` varchar(50) default NULL,
  `status` tinyint(1) unsigned default '0',
  PRIMARY KEY  (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stcms_shopmember
-- ----------------------------
INSERT INTO `stcms_shopmember` VALUES ('8', 'sutoo', '速途', '23424', '速途', '234234234', '1', '밪디긷자', '밪디긷자', '0', '0', '0', '0', '밪디긷자', '밪디긷자', '2345-2345', '지브', '밪디긷자', '10000', '일반과세자', './bizpic/201207/a7f2ec42140ca6d5138b384ce3a3102c9040.png', './bizpic/201207/a7f2ec42140ca6d5138b384ce3a3102c9049.png', './bizpic/201207/a7f2ec42140ca6d5138b384ce3a3102c4752.png', '2345245', '1343230293', '1', '0', '0', '2012', '1', '1', '234', '2323', './bizpic/201207/496ca88bee5c60ed0e09bb3123c17bb13347.png', '치가', '13413434', '치가', '미디가대', '65432154623', '2');
INSERT INTO `stcms_shopmember` VALUES ('3', 'yjliwei', '刘利伟', '中国银行天池路支行', '刘利伟', '15504338262', '1', '레이벤 RB5227 2144 명품안경테 사각뿔테 연예인착용 이태', '레이벤 RB5227 2144 명품안경테 사각뿔테 연예인착용 이태\r\n레이벤 RB5227 2144 명품안경테 사각뿔테 연예인착용 이태', '1', '0', '0', '0', '명품안경테', 'asdfas,adsfasfda,asdfafds,asdfasf', '123-123', '발급받으실', '발급받으실', '발급받으실', '간이과세자', './bizpic/201207/5f1d9e758d96bebd36d14b73bb0da93d7184.jpg', null, null, '발급받으실', '0', '1', '0', '0', '2012', '3', '25', '발급받으실', '발급받으실', './bizpic/201207/5f1d9e758d96bebd36d14b73bb0da93d7184.jpg', null, null, null, null, null, '2');
INSERT INTO `stcms_shopmember` VALUES ('4', 'dora117', '이상은', '', '', '', '1', '레이벤 RB5227 2144 명품안경테 사각뿔테 연예인착용 이태', null, '1', '0', '0', '0', '명품안경테', null, null, null, null, null, null, './bizpic/201207/5f1d9e758d96bebd36d14b73bb0da93d7184.jpg', null, null, null, '0', '1', '0', '0', null, null, null, null, null, './bizpic/201207/5f1d9e758d96bebd36d14b73bb0da93d7184.jpg', null, null, null, null, null, '0');
INSERT INTO `stcms_shopmember` VALUES ('5', 'weiwei001', '서비', '서비', '서비', '15504338262', '1', '레이벤 RB5227 2144 명품안경테 사각뿔테 연예인착용 이태', null, '0', '0', '0', '0', '명품안경테', null, '0432-132135', null, null, null, null, './bizpic/201207/5f1d9e758d96bebd36d14b73bb0da93d7184.jpg', null, null, null, '0', '1', '0', '0', null, null, null, null, null, './bizpic/201207/5f1d9e758d96bebd36d14b73bb0da93d7184.jpg', null, null, null, null, null, '1');
INSERT INTO `stcms_shopmember` VALUES ('11', '12345', '11111', '', '', '', '1', null, null, '0', '0', '0', '0', null, null, '121-1212', null, null, null, null, null, null, null, null, '0', '1', '0', '0', null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `stcms_shopmember` VALUES ('12', 'kuku22', '김용', '', '', '', '1', null, null, '0', '0', '0', '0', null, null, '510-410', null, null, null, null, null, null, null, null, '1344012048', '1', '0', '0', null, null, null, null, null, null, '김용', '810516100000', '중국은행', '김용', '223333333333333333333', '0');

-- ----------------------------
-- Table structure for `stcms_shops`
-- ----------------------------
DROP TABLE IF EXISTS `stcms_shops`;
CREATE TABLE `stcms_shops` (
  `id` int(11) NOT NULL auto_increment,
  `brandid` int(11) default NULL,
  `pcatid` int(11) unsigned default NULL,
  `catid` int(11) unsigned default NULL,
  `typeid` int(11) unsigned default NULL,
  `new_product` tinyint(1) unsigned default '0',
  `g_code` varchar(100) default NULL,
  `g_name` varchar(255) default NULL,
  `g_name_add_key` varchar(255) default '0.00',
  `g_origin` varchar(100) default NULL,
  `g_size` varchar(100) default NULL,
  `g_buy_year` int(4) unsigned default NULL,
  `g_buy_price` int(11) default NULL,
  `g_buy_place` varchar(255) default NULL,
  `real_photo` tinyint(1) unsigned default '0',
  `g_photo1` varchar(255) default NULL,
  `g_photo2` varchar(255) default NULL,
  `g_photo3` varchar(255) default NULL,
  `g_photo4` varchar(255) default NULL,
  `g_photo5` varchar(255) default NULL,
  `g_photo6` varchar(255) default NULL,
  `g_photo7` varchar(255) default NULL,
  `g_photo8` varchar(255) default NULL,
  `g_photo9` varchar(255) default NULL,
  `g_photo10` varchar(255) default NULL,
  `g_scrach` varchar(100) default NULL,
  `part1` tinyint(50) unsigned default '0',
  `part2` varchar(50) NOT NULL default '0',
  `part3` varchar(50) default '0',
  `part4` varchar(50) default '0',
  `part5` varchar(50) default '0',
  `part_text` varchar(50) default NULL,
  `g_price` int(11) unsigned default NULL,
  `card` tinyint(1) unsigned default NULL,
  `sending_nation` tinyint(1) unsigned default '0',
  `sending_payer` tinyint(1) unsigned default '0',
  `sending_method` varchar(50) default NULL,
  `sending_price` int(11) default NULL,
  `uid` int(11) unsigned default NULL,
  `username` varchar(50) default NULL,
  `phone` varchar(50) default NULL,
  `hphone` varchar(50) default NULL,
  `g_intro` mediumtext,
  `addtime` int(10) unsigned default NULL,
  `uptime` int(10) unsigned default '0',
  `hits` int(11) unsigned default '1',
  `shopfav` int(11) unsigned default '0',
  `status` int(11) unsigned default '1',
  `toptime` int(10) unsigned default '0',
  PRIMARY KEY  (`id`),
  KEY `catid` (`catid`),
  KEY `typeid` (`typeid`)
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stcms_shops
-- ----------------------------
INSERT INTO `stcms_shops` VALUES ('46', '36', '30', '43', null, '1', null, '▶독점신상 12 S/S Chancery Rosa 5443', '독점신상|Chancery|Rosa', '독점', '26', '2009', '26000', '신상', '1', './shoppic_w/201206/5f39d7b97468db24e695f06c9f2944f88877.jpg', './shoppic_w/201206/04536a8fa9070f33cc86aeeb92e130054499.jpg', './shoppic_w/201206/550c09f713e24bb55759a5cc207ddb869104.jpg', '', '', '', '', '', '', '', '20%', '1', '1', '1', '0', '0', '234', '20000', '1', '2', '0', '일반우편', '1000', '3', 'yjliwei', '04332900108', '15504338262', '▶ 사이즈 : 가로 19.5cm 세로 10.5cm 폭 3.5cm ', '1340789620', '0', '4', '0', '1', '0');
INSERT INTO `stcms_shops` VALUES ('42', '36', '30', '43', null, '1', null, '▶독점신상 12 S/S Chancery Rosa 5443', '독점신상|Chancery|Rosa', '독점', '26', '2009', '26000', '신상', '1', './shoppic_w/201206/5f39d7b97468db24e695f06c9f2944f88877.jpg', './shoppic_w/201206/04536a8fa9070f33cc86aeeb92e130054499.jpg', './shoppic_w/201206/550c09f713e24bb55759a5cc207ddb869104.jpg', '', '', '', '', '', '', '', '20%', '1', '1', '1', '0', '0', '234', '20000', '1', '2', '0', '일반우편', '1000', '3', 'yjliwei', '04332900108', '15504338262', '▶ 사이즈 : 가로 19.5cm 세로 10.5cm 폭 3.5cm ', '1340789620', '0', '1', '0', '1', '0');
INSERT INTO `stcms_shops` VALUES ('43', '36', '30', '43', null, '1', null, '▶독점신상 12 S/S Chancery Rosa 5443', '독점신상|Chancery|Rosa', '독점', '26', '2009', '26000', '신상', '1', './shoppic_w/201206/5f39d7b97468db24e695f06c9f2944f88877.jpg', './shoppic_w/201206/04536a8fa9070f33cc86aeeb92e130054499.jpg', './shoppic_w/201206/550c09f713e24bb55759a5cc207ddb869104.jpg', '', '', '', '', '', '', '', '20%', '1', '1', '1', '0', '0', '234', '20000', '1', '2', '0', '일반우편', '1000', '3', 'yjliwei', '04332900108', '15504338262', '▶ 사이즈 : 가로 19.5cm 세로 10.5cm 폭 3.5cm ', '1340789620', '0', '2', '0', '1', '0');
INSERT INTO `stcms_shops` VALUES ('44', '36', '30', '43', null, '1', null, '▶독점신상 12 S/S Chancery Rosa 5443', '독점신상|Chancery|Rosa', '독점', '26', '2009', '26000', '신상', '1', './shoppic_w/201206/5f39d7b97468db24e695f06c9f2944f88877.jpg', './shoppic_w/201206/04536a8fa9070f33cc86aeeb92e130054499.jpg', './shoppic_w/201206/550c09f713e24bb55759a5cc207ddb869104.jpg', '', '', '', '', '', '', '', '20%', '1', '1', '1', '0', '0', '234', '20000', '1', '2', '0', '일반우편', '1000', '3', 'yjliwei', '04332900108', '15504338262', '▶ 사이즈 : 가로 19.5cm 세로 10.5cm 폭 3.5cm ', '1340789620', '0', '2', '0', '1', '0');
INSERT INTO `stcms_shops` VALUES ('45', '36', '30', '43', null, '1', null, '▶독점신상 12 S/S Chancery Rosa 5443', '독점신상|Chancery|Rosa', '독점', '26', '2009', '26000', '신상', '1', './shoppic_w/201206/5f39d7b97468db24e695f06c9f2944f88877.jpg', './shoppic_w/201206/04536a8fa9070f33cc86aeeb92e130054499.jpg', './shoppic_w/201206/550c09f713e24bb55759a5cc207ddb869104.jpg', '', '', '', '', '', '', '', '20%', '1', '1', '1', '0', '0', '234', '20000', '1', '2', '0', '일반우편', '1000', '3', 'yjliwei', '04332900108', '15504338262', '▶ 사이즈 : 가로 19.5cm 세로 10.5cm 폭 3.5cm ', '1340789620', '0', '1', '0', '1', '0');
INSERT INTO `stcms_shops` VALUES ('18', '36', '30', '43', null, '1', null, '▶독점신상 12 S/S Chancery Rosa 5443', '독점신상|Chancery|Rosa', '독점', '26', '2009', '26000', '신상', '1', './shoppic_w/201206/5f39d7b97468db24e695f06c9f2944f88877.jpg', './shoppic_w/201206/04536a8fa9070f33cc86aeeb92e130054499.jpg', './shoppic_w/201206/550c09f713e24bb55759a5cc207ddb869104.jpg', '', '', '', '', '', '', '', '20%', '1', '1', '1', '0', '0', '234', '20000', '1', '2', '0', '일반우편', '1000', '3', 'yjliwei', '04332900108', '15504338262', '▶ 사이즈 : 가로 19.5cm 세로 10.5cm 폭 3.5cm ', '1340789620', '0', '1', '0', '1', '0');
INSERT INTO `stcms_shops` VALUES ('38', '36', '30', '43', null, '1', null, '▶독점신상 12 S/S Chancery Rosa 5443', '독점신상|Chancery|Rosa', '독점', '26', '2009', '26000', '신상', '1', './shoppic_w/201206/5f39d7b97468db24e695f06c9f2944f88877.jpg', './shoppic_w/201206/04536a8fa9070f33cc86aeeb92e130054499.jpg', './shoppic_w/201206/550c09f713e24bb55759a5cc207ddb869104.jpg', '', '', '', '', '', '', '', '20%', '1', '1', '1', '0', '0', '234', '20000', '1', '2', '0', '일반우편', '1000', '3', 'yjliwei', '04332900108', '15504338262', '▶ 사이즈 : 가로 19.5cm 세로 10.5cm 폭 3.5cm ', '1340789620', '0', '1', '0', '1', '0');
INSERT INTO `stcms_shops` VALUES ('39', '36', '30', '43', null, '1', null, '▶독점신상 12 S/S Chancery Rosa 5443', '독점신상|Chancery|Rosa', '독점', '26', '2009', '26000', '신상', '1', './shoppic_w/201206/5f39d7b97468db24e695f06c9f2944f88877.jpg', './shoppic_w/201206/04536a8fa9070f33cc86aeeb92e130054499.jpg', './shoppic_w/201206/550c09f713e24bb55759a5cc207ddb869104.jpg', '', '', '', '', '', '', '', '20%', '1', '1', '1', '0', '0', '234', '20000', '1', '2', '0', '일반우편', '1000', '3', 'yjliwei', '04332900108', '15504338262', '▶ 사이즈 : 가로 19.5cm 세로 10.5cm 폭 3.5cm ', '1340789620', '0', '1', '0', '1', '0');
INSERT INTO `stcms_shops` VALUES ('40', '36', '30', '43', null, '1', null, '▶독점신상 12 S/S Chancery Rosa 5443', '독점신상|Chancery|Rosa', '독점', '26', '2009', '26000', '신상', '1', './shoppic_w/201206/5f39d7b97468db24e695f06c9f2944f88877.jpg', './shoppic_w/201206/04536a8fa9070f33cc86aeeb92e130054499.jpg', './shoppic_w/201206/550c09f713e24bb55759a5cc207ddb869104.jpg', '', '', '', '', '', '', '', '20%', '1', '1', '1', '0', '0', '234', '20000', '1', '2', '0', '일반우편', '1000', '3', 'yjliwei', '04332900108', '15504338262', '▶ 사이즈 : 가로 19.5cm 세로 10.5cm 폭 3.5cm ', '1340789620', '0', '1', '0', '1', '0');
INSERT INTO `stcms_shops` VALUES ('41', '36', '30', '43', null, '1', null, '▶독점신상 12 S/S Chancery Rosa 5443', '독점신상|Chancery|Rosa', '독점', '26', '2009', '26000', '신상', '1', './shoppic_w/201206/5f39d7b97468db24e695f06c9f2944f88877.jpg', './shoppic_w/201206/04536a8fa9070f33cc86aeeb92e130054499.jpg', './shoppic_w/201206/550c09f713e24bb55759a5cc207ddb869104.jpg', '', '', '', '', '', '', '', '20%', '1', '1', '1', '0', '0', '234', '20000', '1', '2', '0', '일반우편', '1000', '3', 'yjliwei', '04332900108', '15504338262', '▶ 사이즈 : 가로 19.5cm 세로 10.5cm 폭 3.5cm ', '1340789620', '0', '1', '0', '1', '0');
INSERT INTO `stcms_shops` VALUES ('47', '36', '30', '43', null, '1', null, '▶독점신상 12 S/S Chancery Rosa 5443', '독점신상|Chancery|Rosa', '독점', '26', '2009', '26000', '신상', '1', './shoppic_w/201206/5f39d7b97468db24e695f06c9f2944f88877.jpg', './shoppic_w/201206/04536a8fa9070f33cc86aeeb92e130054499.jpg', './shoppic_w/201206/550c09f713e24bb55759a5cc207ddb869104.jpg', '', '', '', '', '', '', '', '20%', '1', '1', '1', '0', '0', '234', '20000', '1', '2', '0', '일반우편', '1000', '3', 'yjliwei', '04332900108', '15504338262', '▶ 사이즈 : 가로 19.5cm 세로 10.5cm 폭 3.5cm ', '1340789620', '0', '1', '0', '1', '0');
INSERT INTO `stcms_shops` VALUES ('48', '36', '30', '43', null, '1', null, '▶독점신상 12 S/S Chancery Rosa 5443', '독점신상|Chancery|Rosa', '독점', '26', '2009', '26000', '신상', '1', './shoppic_w/201206/5f39d7b97468db24e695f06c9f2944f88877.jpg', './shoppic_w/201206/04536a8fa9070f33cc86aeeb92e130054499.jpg', './shoppic_w/201206/550c09f713e24bb55759a5cc207ddb869104.jpg', '', '', '', '', '', '', '', '20%', '1', '1', '1', '0', '0', '234', '20000', '1', '2', '0', '일반우편', '1000', '3', 'yjliwei', '04332900108', '15504338262', '▶ 사이즈 : 가로 19.5cm 세로 10.5cm 폭 3.5cm ', '1340789620', '0', '1', '0', '1', '0');
INSERT INTO `stcms_shops` VALUES ('49', '36', '30', '43', null, '1', null, '▶독점신상 12 S/S Chancery Rosa 5443', '독점신상|Chancery|Rosa', '독점', '26', '2009', '26000', '신상', '1', './shoppic_w/201206/5f39d7b97468db24e695f06c9f2944f88877.jpg', './shoppic_w/201206/04536a8fa9070f33cc86aeeb92e130054499.jpg', './shoppic_w/201206/550c09f713e24bb55759a5cc207ddb869104.jpg', '', '', '', '', '', '', '', '20%', '1', '1', '1', '0', '0', '234', '20000', '1', '2', '0', '일반우편', '1000', '3', 'yjliwei', '04332900108', '15504338262', '▶ 사이즈 : 가로 19.5cm 세로 10.5cm 폭 3.5cm ', '1340789620', '0', '4', '0', '1', '0');
INSERT INTO `stcms_shops` VALUES ('50', '36', '30', '43', null, '1', null, '▶독점신상 12 S/S Chancery Rosa 5443', '독점신상|Chancery|Rosa', '독점', '26', '2009', '26000', '신상', '1', './shoppic_w/201206/5f39d7b97468db24e695f06c9f2944f88877.jpg', './shoppic_w/201206/04536a8fa9070f33cc86aeeb92e130054499.jpg', './shoppic_w/201206/550c09f713e24bb55759a5cc207ddb869104.jpg', '', '', '', '', '', '', '', '20%', '1', '1', '1', '0', '0', '234', '20000', '1', '2', '0', '일반우편', '1000', '3', 'yjliwei', '04332900108', '15504338262', '▶ 사이즈 : 가로 19.5cm 세로 10.5cm 폭 3.5cm ', '1340789620', '0', '2', '0', '1', '0');
INSERT INTO `stcms_shops` VALUES ('51', '36', '30', '43', null, '1', null, '▶독점신상 12 S/S Chancery Rosa 5443', '독점신상|Chancery|Rosa', '독점', '26', '2009', '26000', '신상', '1', './shoppic_w/201206/5f39d7b97468db24e695f06c9f2944f88877.jpg', './shoppic_w/201206/04536a8fa9070f33cc86aeeb92e130054499.jpg', './shoppic_w/201206/550c09f713e24bb55759a5cc207ddb869104.jpg', '', '', '', '', '', '', '', '20%', '1', '1', '1', '0', '0', '234', '20000', '1', '2', '0', '일반우편', '1000', '3', 'yjliwei', '04332900108', '15504338262', '▶ 사이즈 : 가로 19.5cm 세로 10.5cm 폭 3.5cm ', '1340789620', '0', '3', '0', '1', '0');
INSERT INTO `stcms_shops` VALUES ('52', '36', '30', '43', null, '1', null, '▶독점신상 12 S/S Chancery Rosa 5443', '독점신상|Chancery|Rosa', '독점', '26', '2009', '26000', '신상', '1', './shoppic_w/201206/5f39d7b97468db24e695f06c9f2944f88877.jpg', './shoppic_w/201206/04536a8fa9070f33cc86aeeb92e130054499.jpg', './shoppic_w/201206/550c09f713e24bb55759a5cc207ddb869104.jpg', '', '', '', '', '', '', '', '20%', '1', '1', '1', '0', '0', '234', '20000', '1', '2', '0', '일반우편', '1000', '3', 'yjliwei', '04332900108', '15504338262', '▶ 사이즈 : 가로 19.5cm 세로 10.5cm 폭 3.5cm ', '1340789620', '0', '1', '0', '1', '0');
INSERT INTO `stcms_shops` VALUES ('53', '36', '30', '43', null, '1', null, '▶독점신상 12 S/S Chancery Rosa 5443', '독점신상|Chancery|Rosa', '독점', '26', '2009', '26000', '신상', '1', './shoppic_w/201206/5f39d7b97468db24e695f06c9f2944f88877.jpg', './shoppic_w/201206/04536a8fa9070f33cc86aeeb92e130054499.jpg', './shoppic_w/201206/550c09f713e24bb55759a5cc207ddb869104.jpg', '', '', '', '', '', '', '', '20%', '1', '1', '1', '0', '0', '234', '20000', '1', '2', '0', '일반우편', '1000', '3', 'yjliwei', '04332900108', '15504338262', '▶ 사이즈 : 가로 19.5cm 세로 10.5cm 폭 3.5cm ', '1340789620', '0', '2', '0', '1', '0');
INSERT INTO `stcms_shops` VALUES ('54', '36', '30', '43', null, '1', null, '▶독점신상 12 S/S Chancery Rosa 5443', '독점신상|Chancery|Rosa', '독점', '26', '2009', '26000', '신상', '1', './shoppic_w/201206/5f39d7b97468db24e695f06c9f2944f88877.jpg', './shoppic_w/201206/04536a8fa9070f33cc86aeeb92e130054499.jpg', './shoppic_w/201206/550c09f713e24bb55759a5cc207ddb869104.jpg', '', '', '', '', '', '', '', '20%', '1', '1', '1', '0', '0', '234', '20000', '1', '2', '0', '일반우편', '1000', '3', 'yjliwei', '04332900108', '15504338262', '▶ 사이즈 : 가로 19.5cm 세로 10.5cm 폭 3.5cm ', '1340789620', '0', '1', '0', '1', '0');
INSERT INTO `stcms_shops` VALUES ('55', '36', '30', '43', null, '1', null, '▶독점신상 12 S/S Chancery Rosa 5443', '독점신상|Chancery|Rosa', '독점', '26', '2009', '26000', '신상', '1', './shoppic_w/201206/5f39d7b97468db24e695f06c9f2944f88877.jpg', './shoppic_w/201206/04536a8fa9070f33cc86aeeb92e130054499.jpg', './shoppic_w/201206/550c09f713e24bb55759a5cc207ddb869104.jpg', '', '', '', '', '', '', '', '20%', '1', '1', '1', '0', '0', '234', '20000', '1', '2', '0', '일반우편', '1000', '3', 'yjliwei', '04332900108', '15504338262', '▶ 사이즈 : 가로 19.5cm 세로 10.5cm 폭 3.5cm ', '1340789620', '0', '1', '0', '1', '0');
INSERT INTO `stcms_shops` VALUES ('56', '36', '30', '43', null, '1', null, '▶독점신상 12 S/S Chancery Rosa 5443', '독점신상|Chancery|Rosa', '독점', '26', '2009', '26000', '신상', '1', './shoppic_w/201206/5f39d7b97468db24e695f06c9f2944f88877.jpg', './shoppic_w/201206/04536a8fa9070f33cc86aeeb92e130054499.jpg', './shoppic_w/201206/550c09f713e24bb55759a5cc207ddb869104.jpg', '', '', '', '', '', '', '', '20%', '1', '1', '1', '0', '0', '234', '20000', '1', '2', '0', '일반우편', '1000', '3', 'yjliwei', '04332900108', '15504338262', '▶ 사이즈 : 가로 19.5cm 세로 10.5cm 폭 3.5cm ', '1340789620', '0', '1', '0', '1', '0');
INSERT INTO `stcms_shops` VALUES ('57', '36', '30', '43', null, '1', null, '▶독점신상 12 S/S Chancery Rosa 5443', '독점신상|Chancery|Rosa', '독점', '26', '2009', '26000', '신상', '1', './shoppic_w/201206/5f39d7b97468db24e695f06c9f2944f88877.jpg', './shoppic_w/201206/04536a8fa9070f33cc86aeeb92e130054499.jpg', './shoppic_w/201206/550c09f713e24bb55759a5cc207ddb869104.jpg', '', '', '', '', '', '', '', '20%', '1', '1', '1', '0', '0', '234', '20000', '1', '2', '0', '일반우편', '1000', '3', 'yjliwei', '04332900108', '15504338262', '▶ 사이즈 : 가로 19.5cm 세로 10.5cm 폭 3.5cm ', '1340789620', '0', '1', '0', '1', '0');
INSERT INTO `stcms_shops` VALUES ('58', '36', '30', '43', null, '1', null, '▶독점신상 12 S/S Chancery Rosa 5443', '독점신상|Chancery|Rosa', '독점', '26', '2009', '26000', '신상', '1', './shoppic_w/201206/5f39d7b97468db24e695f06c9f2944f88877.jpg', './shoppic_w/201206/04536a8fa9070f33cc86aeeb92e130054499.jpg', './shoppic_w/201206/550c09f713e24bb55759a5cc207ddb869104.jpg', '', '', '', '', '', '', '', '20%', '1', '1', '1', '0', '0', '234', '20000', '1', '2', '0', '일반우편', '1000', '3', 'yjliwei', '04332900108', '15504338262', '▶ 사이즈 : 가로 19.5cm 세로 10.5cm 폭 3.5cm ', '1340789620', '0', '1', '0', '1', '0');
INSERT INTO `stcms_shops` VALUES ('59', '36', '30', '43', null, '1', null, '▶독점신상 12 S/S Chancery Rosa 5443', '독점신상|Chancery|Rosa', '독점', '26', '2009', '26000', '신상', '1', './shoppic_w/201206/5f39d7b97468db24e695f06c9f2944f88877.jpg', './shoppic_w/201206/04536a8fa9070f33cc86aeeb92e130054499.jpg', './shoppic_w/201206/550c09f713e24bb55759a5cc207ddb869104.jpg', '', '', '', '', '', '', '', '20%', '1', '1', '1', '0', '0', '234', '20000', '1', '2', '0', '일반우편', '1000', '3', 'yjliwei', '04332900108', '15504338262', '▶ 사이즈 : 가로 19.5cm 세로 10.5cm 폭 3.5cm ', '1340789620', '0', '1', '0', '1', '0');
INSERT INTO `stcms_shops` VALUES ('60', '36', '30', '43', null, '1', null, '▶독점신상 12 S/S Chancery Rosa 5443', '독점신상|Chancery|Rosa', '독점', '26', '2009', '26000', '신상', '1', './shoppic_w/201206/5f39d7b97468db24e695f06c9f2944f88877.jpg', './shoppic_w/201206/04536a8fa9070f33cc86aeeb92e130054499.jpg', './shoppic_w/201206/550c09f713e24bb55759a5cc207ddb869104.jpg', '', '', '', '', '', '', '', '20%', '1', '1', '1', '0', '0', '234', '20000', '1', '2', '0', '일반우편', '1000', '3', 'yjliwei', '04332900108', '15504338262', '▶ 사이즈 : 가로 19.5cm 세로 10.5cm 폭 3.5cm ', '1340789620', '0', '12', '0', '1', '0');
INSERT INTO `stcms_shops` VALUES ('61', '35', '31', '49', null, '1', null, '▶독점신상 12 S/S Chancery Rosa 5443', '독점신상|Chancery|Rosa', '독점', '26', '2009', '26000', '신상', '1', './shoppic_w/201206/5f39d7b97468db24e695f06c9f2944f88877.jpg', './shoppic_w/201206/04536a8fa9070f33cc86aeeb92e130054499.jpg', './shoppic_w/201206/550c09f713e24bb55759a5cc207ddb869104.jpg', '', '', '', '', '', '', '', '20%', '1', '1', '1', '0', '0', '234', '20000', '1', '2', '0', '일반우편', '1000', '3', 'yjliwei', '04332900108', '15504338262', '▶ 사이즈 : 가로 19.5cm 세로 10.5cm 폭 3.5cm ', '1340789620', '0', '1', '0', '1', '0');
INSERT INTO `stcms_shops` VALUES ('62', '35', '32', '55', null, '1', '', '▶독점신상 12 S/S Chancery Rosa 5443', '독점신상|Chancery|Rosa', '독점', '26', '2009', '26000', '신상', '1', './shoppic_w/201206/5f39d7b97468db24e695f06c9f2944f88877.jpg', './shoppic_w/201206/04536a8fa9070f33cc86aeeb92e130054499.jpg', './shoppic_w/201206/550c09f713e24bb55759a5cc207ddb869104.jpg', '', '', '', '', '', '', '', '20%', '1', '1', '1', '0', '0', '234', '20000', '1', '2', '0', '일반우편', '1000', '3', 'yjliwei', '04332900108', '15504338262', '▶ 사이즈 : 가로 19.5cm 세로 10.5cm 폭 3.5cm ', '1340789620', '0', '17', '0', '1', '0');
INSERT INTO `stcms_shops` VALUES ('63', '36', '30', '43', null, '1', null, '▶독점신상 12 S/S Chancery Rosa 5443', '독점신상|Chancery|Rosa', '독점', '26', '2009', '26000', '신상', '1', './shoppic_w/201206/5f39d7b97468db24e695f06c9f2944f88877.jpg', './shoppic_w/201206/04536a8fa9070f33cc86aeeb92e130054499.jpg', './shoppic_w/201206/550c09f713e24bb55759a5cc207ddb869104.jpg', '', '', '', '', '', '', '', '20%', '1', '1', '1', '0', '0', '234', '20000', '1', '2', '0', '일반우편', '1000', '3', 'yjliwei', '04332900108', '15504338262', '▶ 사이즈 : 가로 19.5cm 세로 10.5cm 폭 3.5cm ', '1340789620', '0', '1', '0', '1', '0');
INSERT INTO `stcms_shops` VALUES ('64', '36', '30', '43', null, '1', null, '▶독점신상 12 S/S Chancery Rosa 5443', '독점신상|Chancery|Rosa', '독점', '26', '2009', '26000', '신상', '1', './shoppic_w/201206/5f39d7b97468db24e695f06c9f2944f88877.jpg', './shoppic_w/201206/04536a8fa9070f33cc86aeeb92e130054499.jpg', './shoppic_w/201206/550c09f713e24bb55759a5cc207ddb869104.jpg', '', '', '', '', '', '', '', '20%', '1', '1', '1', '0', '0', '234', '20000', '1', '2', '0', '일반우편', '1000', '3', 'yjliwei', '04332900108', '15504338262', '▶ 사이즈 : 가로 19.5cm 세로 10.5cm 폭 3.5cm ', '1340789620', '0', '4', '0', '1', '0');
INSERT INTO `stcms_shops` VALUES ('65', '36', '30', '43', null, '1', null, '▶독점신상 12 S/S Chancery Rosa 5443', '독점신상|Chancery|Rosa', '독점', '26', '2009', '26000', '신상', '1', './shoppic_w/201206/5f39d7b97468db24e695f06c9f2944f88877.jpg', './shoppic_w/201206/04536a8fa9070f33cc86aeeb92e130054499.jpg', './shoppic_w/201206/550c09f713e24bb55759a5cc207ddb869104.jpg', '', '', '', '', '', '', '', '20%', '1', '1', '1', '0', '0', '234', '20000', '1', '2', '0', '일반우편', '1000', '3', 'yjliwei', '04332900108', '15504338262', '▶ 사이즈 : 가로 19.5cm 세로 10.5cm 폭 3.5cm ', '1340789620', '0', '1', '0', '1', '0');
INSERT INTO `stcms_shops` VALUES ('66', '36', '30', '43', null, '1', null, '▶독점신상 12 S/S Chancery Rosa 5443', '독점신상|Chancery|Rosa', '독점', '26', '2009', '26000', '신상', '1', './shoppic_w/201206/5f39d7b97468db24e695f06c9f2944f88877.jpg', './shoppic_w/201206/04536a8fa9070f33cc86aeeb92e130054499.jpg', './shoppic_w/201206/550c09f713e24bb55759a5cc207ddb869104.jpg', '', '', '', '', '', '', '', '20%', '1', '1', '1', '0', '0', '234', '20000', '1', '2', '0', '일반우편', '1000', '3', 'yjliwei', '04332900108', '15504338262', '▶ 사이즈 : 가로 19.5cm 세로 10.5cm 폭 3.5cm ', '1340789620', '0', '1', '0', '1', '0');
INSERT INTO `stcms_shops` VALUES ('67', '36', '30', '43', null, '1', null, '▶독점신상 12 S/S Chancery Rosa 5443', '독점신상|Chancery|Rosa', '독점', '26', '2009', '26000', '신상', '1', './shoppic_w/201206/5f39d7b97468db24e695f06c9f2944f88877.jpg', './shoppic_w/201206/04536a8fa9070f33cc86aeeb92e130054499.jpg', './shoppic_w/201206/550c09f713e24bb55759a5cc207ddb869104.jpg', '', '', '', '', '', '', '', '20%', '1', '1', '1', '0', '0', '234', '20000', '1', '2', '0', '일반우편', '1000', '3', 'yjliwei', '04332900108', '15504338262', '▶ 사이즈 : 가로 19.5cm 세로 10.5cm 폭 3.5cm ', '1340789620', '0', '7', '0', '1', '0');
INSERT INTO `stcms_shops` VALUES ('68', '36', '30', '43', null, '1', null, '▶독점신상 12 S/S Chancery Rosa 5443', '독점신상|Chancery|Rosa', '독점', '26', '2009', '26000', '신상', '1', './shoppic_w/201206/5f39d7b97468db24e695f06c9f2944f88877.jpg', './shoppic_w/201206/04536a8fa9070f33cc86aeeb92e130054499.jpg', './shoppic_w/201206/550c09f713e24bb55759a5cc207ddb869104.jpg', '', '', '', '', '', '', '', '20%', '1', '1', '1', '0', '0', '234', '20000', '1', '2', '0', '일반우편', '1000', '3', 'yjliwei', '04332900108', '15504338262', '▶ 사이즈 : 가로 19.5cm 세로 10.5cm 폭 3.5cm ', '1340789620', '0', '3', '0', '1', '0');
INSERT INTO `stcms_shops` VALUES ('69', '36', '30', '43', null, '1', null, '▶독점신상 12 S/S Chancery Rosa 5443', '독점신상|Chancery|Rosa', '독점', '26', '2009', '26000', '신상', '1', './shoppic_w/201206/5f39d7b97468db24e695f06c9f2944f88877.jpg', './shoppic_w/201206/04536a8fa9070f33cc86aeeb92e130054499.jpg', './shoppic_w/201206/550c09f713e24bb55759a5cc207ddb869104.jpg', '', '', '', '', '', '', '', '20%', '1', '1', '1', '0', '0', '234', '20000', '1', '2', '0', '일반우편', '1000', '3', 'yjliwei', '04332900108', '15504338262', '▶ 사이즈 : 가로 19.5cm 세로 10.5cm 폭 3.5cm ', '1340789620', '0', '1', '0', '1', '0');
INSERT INTO `stcms_shops` VALUES ('70', '36', '30', '43', null, '1', null, '▶독점신상 12 S/S Chancery Rosa 5443', '독점신상|Chancery|Rosa', '독점', '26', '2009', '26000', '신상', '1', './shoppic_w/201206/5f39d7b97468db24e695f06c9f2944f88877.jpg', './shoppic_w/201206/04536a8fa9070f33cc86aeeb92e130054499.jpg', './shoppic_w/201206/550c09f713e24bb55759a5cc207ddb869104.jpg', '', '', '', '', '', '', '', '20%', '1', '1', '1', '0', '0', '234', '20000', '1', '2', '0', '일반우편', '1000', '3', 'yjliwei', '04332900108', '15504338262', '▶ 사이즈 : 가로 19.5cm 세로 10.5cm 폭 3.5cm ', '1340789620', '0', '1', '0', '1', '0');
INSERT INTO `stcms_shops` VALUES ('71', '36', '30', '43', null, '1', null, '▶독점신상 12 S/S Chancery Rosa 5443', '독점신상|Chancery|Rosa', '독점', '26', '2009', '26000', '신상', '1', './shoppic_w/201206/5f39d7b97468db24e695f06c9f2944f88877.jpg', './shoppic_w/201206/04536a8fa9070f33cc86aeeb92e130054499.jpg', './shoppic_w/201206/550c09f713e24bb55759a5cc207ddb869104.jpg', '', '', '', '', '', '', '', '20%', '1', '1', '1', '0', '0', '234', '20000', '1', '2', '0', '일반우편', '1000', '3', 'yjliwei', '04332900108', '15504338262', '▶ 사이즈 : 가로 19.5cm 세로 10.5cm 폭 3.5cm ', '1340789620', '0', '1', '0', '1', '0');
INSERT INTO `stcms_shops` VALUES ('72', '36', '30', '43', null, '1', null, '▶독점신상 12 S/S Chancery Rosa 5443', '독점신상|Chancery|Rosa', '독점', '26', '2009', '26000', '신상', '1', './shoppic_w/201206/5f39d7b97468db24e695f06c9f2944f88877.jpg', './shoppic_w/201206/04536a8fa9070f33cc86aeeb92e130054499.jpg', './shoppic_w/201206/550c09f713e24bb55759a5cc207ddb869104.jpg', '', '', '', '', '', '', '', '20%', '1', '1', '1', '0', '0', '234', '20000', '1', '2', '0', '일반우편', '1000', '3', 'yjliwei', '04332900108', '15504338262', '▶ 사이즈 : 가로 19.5cm 세로 10.5cm 폭 3.5cm ', '1340789620', '0', '2', '0', '1', '0');
INSERT INTO `stcms_shops` VALUES ('73', '36', '30', '43', null, '1', null, '▶독점신상 12 S/S Chancery Rosa 5443', '독점신상|Chancery|Rosa', '독점', '26', '2009', '26000', '신상', '1', './shoppic_w/201206/5f39d7b97468db24e695f06c9f2944f88877.jpg', './shoppic_w/201206/04536a8fa9070f33cc86aeeb92e130054499.jpg', './shoppic_w/201206/550c09f713e24bb55759a5cc207ddb869104.jpg', '', '', '', '', '', '', '', '20%', '1', '1', '1', '0', '0', '234', '20000', '1', '2', '0', '일반우편', '1000', '3', 'yjliwei', '04332900108', '15504338262', '▶ 사이즈 : 가로 19.5cm 세로 10.5cm 폭 3.5cm ', '1340789620', '0', '1', '0', '1', '0');
INSERT INTO `stcms_shops` VALUES ('74', '36', '30', '43', null, '1', null, '▶독점신상 12 S/S Chancery Rosa 5443', '독점신상|Chancery|Rosa', '독점', '26', '2009', '26000', '신상', '1', './shoppic_w/201206/5f39d7b97468db24e695f06c9f2944f88877.jpg', './shoppic_w/201206/04536a8fa9070f33cc86aeeb92e130054499.jpg', './shoppic_w/201206/550c09f713e24bb55759a5cc207ddb869104.jpg', '', '', '', '', '', '', '', '20%', '1', '1', '1', '0', '0', '234', '20000', '1', '2', '0', '일반우편', '1000', '3', 'yjliwei', '04332900108', '15504338262', '▶ 사이즈 : 가로 19.5cm 세로 10.5cm 폭 3.5cm ', '1340789620', '0', '2', '0', '1', '0');
INSERT INTO `stcms_shops` VALUES ('75', '36', '30', '43', null, '1', null, '▶독점신상 12 S/S Chancery Rosa 5443', '독점신상|Chancery|Rosa', '독점', '26', '2009', '26000', '신상', '1', './shoppic_w/201206/5f39d7b97468db24e695f06c9f2944f88877.jpg', './shoppic_w/201206/04536a8fa9070f33cc86aeeb92e130054499.jpg', './shoppic_w/201206/550c09f713e24bb55759a5cc207ddb869104.jpg', '', '', '', '', '', '', '', '20%', '1', '1', '1', '0', '0', '234', '20000', '1', '2', '0', '일반우편', '1000', '3', 'yjliwei', '04332900108', '15504338262', '▶ 사이즈 : 가로 19.5cm 세로 10.5cm 폭 3.5cm ', '1340789620', '0', '1', '0', '1', '0');
INSERT INTO `stcms_shops` VALUES ('76', '36', '30', '43', null, '1', null, '▶독점신상 12 S/S Chancery Rosa 5443', '독점신상|Chancery|Rosa', '독점', '26', '2009', '26000', '신상', '1', './shoppic_w/201206/5f39d7b97468db24e695f06c9f2944f88877.jpg', './shoppic_w/201206/04536a8fa9070f33cc86aeeb92e130054499.jpg', './shoppic_w/201206/550c09f713e24bb55759a5cc207ddb869104.jpg', '', '', '', '', '', '', '', '20%', '1', '1', '1', '0', '0', '234', '20000', '1', '2', '0', '일반우편', '1000', '3', 'yjliwei', '04332900108', '15504338262', '▶ 사이즈 : 가로 19.5cm 세로 10.5cm 폭 3.5cm ', '1340789620', '0', '1', '0', '1', '0');
INSERT INTO `stcms_shops` VALUES ('77', '36', '30', '43', null, '1', null, '▶독점신상 12 S/S Chancery Rosa 5443', '독점신상|Chancery|Rosa', '독점', '26', '2009', '26000', '신상', '1', './shoppic_w/201206/5f39d7b97468db24e695f06c9f2944f88877.jpg', './shoppic_w/201206/04536a8fa9070f33cc86aeeb92e130054499.jpg', './shoppic_w/201206/550c09f713e24bb55759a5cc207ddb869104.jpg', '', '', '', '', '', '', '', '20%', '1', '1', '1', '0', '0', '234', '20000', '1', '2', '0', '일반우편', '1000', '3', 'yjliwei', '04332900108', '15504338262', '▶ 사이즈 : 가로 19.5cm 세로 10.5cm 폭 3.5cm ', '1340789620', '0', '1', '0', '1', '0');
INSERT INTO `stcms_shops` VALUES ('78', '36', '30', '43', null, '1', null, '▶독점신상 12 S/S Chancery Rosa 5443', '독점신상|Chancery|Rosa', '독점', '26', '2009', '26000', '신상', '1', './shoppic_w/201206/5f39d7b97468db24e695f06c9f2944f88877.jpg', './shoppic_w/201206/04536a8fa9070f33cc86aeeb92e130054499.jpg', './shoppic_w/201206/550c09f713e24bb55759a5cc207ddb869104.jpg', '', '', '', '', '', '', '', '20%', '1', '1', '1', '0', '0', '234', '20000', '1', '2', '0', '일반우편', '1000', '3', 'yjliwei', '04332900108', '15504338262', '▶ 사이즈 : 가로 19.5cm 세로 10.5cm 폭 3.5cm ', '1340789620', '0', '1', '0', '1', '0');
INSERT INTO `stcms_shops` VALUES ('79', '36', '30', '43', null, '1', null, '▶독점신상 12 S/S Chancery Rosa 5443', '독점신상|Chancery|Rosa', '독점', '26', '2009', '26000', '신상', '1', './shoppic_w/201206/5f39d7b97468db24e695f06c9f2944f88877.jpg', './shoppic_w/201206/04536a8fa9070f33cc86aeeb92e130054499.jpg', './shoppic_w/201206/550c09f713e24bb55759a5cc207ddb869104.jpg', '', '', '', '', '', '', '', '20%', '1', '1', '1', '0', '0', '234', '20000', '1', '2', '0', '일반우편', '1000', '3', 'yjliwei', '04332900108', '15504338262', '▶ 사이즈 : 가로 19.5cm 세로 10.5cm 폭 3.5cm ', '1340789620', '0', '1', '0', '1', '0');
INSERT INTO `stcms_shops` VALUES ('80', '36', '30', '43', null, '1', null, '▶독점신상 12 S/S Chancery Rosa 5443', '독점신상|Chancery|Rosa', '독점', '26', '2009', '26000', '신상', '1', './shoppic_w/201206/5f39d7b97468db24e695f06c9f2944f88877.jpg', './shoppic_w/201206/04536a8fa9070f33cc86aeeb92e130054499.jpg', './shoppic_w/201206/550c09f713e24bb55759a5cc207ddb869104.jpg', '', '', '', '', '', '', '', '20%', '1', '1', '1', '0', '0', '234', '20000', '1', '2', '0', '일반우편', '1000', '3', 'yjliwei', '04332900108', '15504338262', '▶ 사이즈 : 가로 19.5cm 세로 10.5cm 폭 3.5cm ', '1340789620', '0', '4', '0', '1', '0');
INSERT INTO `stcms_shops` VALUES ('81', '36', '30', '43', null, '1', null, '▶독점신상 12 S/S Chancery Rosa 5443', '독점신상|Chancery|Rosa', '독점', '26', '2009', '26000', '신상', '1', './shoppic_w/201206/5f39d7b97468db24e695f06c9f2944f88877.jpg', './shoppic_w/201206/04536a8fa9070f33cc86aeeb92e130054499.jpg', './shoppic_w/201206/550c09f713e24bb55759a5cc207ddb869104.jpg', '', '', '', '', '', '', '', '20%', '1', '1', '1', '0', '0', '234', '20000', '1', '2', '0', '일반우편', '1000', '3', 'yjliwei', '04332900108', '15504338262', '▶ 사이즈 : 가로 19.5cm 세로 10.5cm 폭 3.5cm ', '1340789620', '0', '1', '0', '1', '0');
INSERT INTO `stcms_shops` VALUES ('83', '36', '30', '43', null, '1', null, '▶독점신상 12 S/S Chancery Rosa 5443', '독점신상|Chancery|Rosa', '독점', '26', '2009', '26000', '신상', '1', './shoppic_w/201206/5f39d7b97468db24e695f06c9f2944f88877.jpg', './shoppic_w/201206/04536a8fa9070f33cc86aeeb92e130054499.jpg', './shoppic_w/201206/550c09f713e24bb55759a5cc207ddb869104.jpg', '', '', '', '', '', '', '', '20%', '1', '1', '1', '0', '0', '234', '20000', '1', '2', '0', '일반우편', '1000', '3', 'yjliwei', '04332900108', '15504338262', '▶ 사이즈 : 가로 19.5cm 세로 10.5cm 폭 3.5cm ', '1340789620', '0', '2', '0', '1', '0');
INSERT INTO `stcms_shops` VALUES ('84', '36', '30', '43', null, '1', null, '▶독점신상 12 S/S Chancery Rosa 5443', '독점신상|Chancery|Rosa', '독점', '26', '2009', '26000', '신상', '1', './shoppic_w/201206/5f39d7b97468db24e695f06c9f2944f88877.jpg', './shoppic_w/201206/04536a8fa9070f33cc86aeeb92e130054499.jpg', './shoppic_w/201206/550c09f713e24bb55759a5cc207ddb869104.jpg', '', '', '', '', '', '', '', '20%', '1', '1', '1', '0', '0', '234', '20000', '1', '2', '0', '일반우편', '1000', '3', 'yjliwei', '04332900108', '15504338262', '▶ 사이즈 : 가로 19.5cm 세로 10.5cm 폭 3.5cm ', '1340789620', '0', '4', '0', '1', '0');
INSERT INTO `stcms_shops` VALUES ('85', '36', '30', '43', null, '1', null, '▶독점신상 12 S/S Chancery Rosa 5443', '독점신상|Chancery|Rosa', '독점', '26', '2009', '26000', '신상', '1', './shoppic_w/201206/5f39d7b97468db24e695f06c9f2944f88877.jpg', './shoppic_w/201206/04536a8fa9070f33cc86aeeb92e130054499.jpg', './shoppic_w/201206/550c09f713e24bb55759a5cc207ddb869104.jpg', '', '', '', '', '', '', '', '20%', '1', '1', '1', '0', '0', '234', '20000', '1', '2', '0', '일반우편', '1000', '3', 'yjliwei', '04332900108', '15504338262', '▶ 사이즈 : 가로 19.5cm 세로 10.5cm 폭 3.5cm ', '1340789620', '0', '2', '0', '1', '0');
INSERT INTO `stcms_shops` VALUES ('86', '36', '30', '43', null, '1', null, '▶독점신상 12 S/S Chancery Rosa 5443', '독점신상|Chancery|Rosa', '독점', '26', '2009', '26000', '신상', '1', './shoppic_w/201206/5f39d7b97468db24e695f06c9f2944f88877.jpg', './shoppic_w/201206/04536a8fa9070f33cc86aeeb92e130054499.jpg', './shoppic_w/201206/550c09f713e24bb55759a5cc207ddb869104.jpg', '', '', '', '', '', '', '', '20%', '1', '1', '1', '0', '0', '234', '20000', '1', '2', '0', '일반우편', '1000', '3', 'yjliwei', '04332900108', '15504338262', '▶ 사이즈 : 가로 19.5cm 세로 10.5cm 폭 3.5cm ', '1340789620', '0', '41', '0', '1', '0');
INSERT INTO `stcms_shops` VALUES ('87', '35', '31', '49', null, '1', null, '▶독점신상 12 S/S Chancery Rosa 5443', '독점신상|Chancery|Rosa', '독점', '26', '2009', '26000', '신상', '1', './shoppic_w/201206/5f39d7b97468db24e695f06c9f2944f88877.jpg', './shoppic_w/201206/04536a8fa9070f33cc86aeeb92e130054499.jpg', './shoppic_w/201206/550c09f713e24bb55759a5cc207ddb869104.jpg', '', '', '', '', '', '', '', '20%', '1', '1', '1', '0', '0', '234', '20000', '1', '2', '0', '일반우편', '1000', '3', 'yjliwei', '04332900108', '15504338262', '▶ 사이즈 : 가로 19.5cm 세로 10.5cm 폭 3.5cm ', '1340789620', '0', '4', '0', '3', '0');
INSERT INTO `stcms_shops` VALUES ('88', '35', '32', '55', null, '1', '2452435', '123 12 S/S Chancery Rosa 5443', '독점신상|Chancery|Rosa', '독점', '26', '2009', '26000', '신상', '1', './shoppic_w/201206/5f39d7b97468db24e695f06c9f2944f88877.jpg', './shoppic_w/201206/04536a8fa9070f33cc86aeeb92e130054499.jpg', './shoppic_w/201206/550c09f713e24bb55759a5cc207ddb869104.jpg', '', '', '', '', '', '', '', '20%', '1', '1', '1', '0', '0', '234', '200000', '1', '2', '0', '일반우편', '10000', '3', 'yjliwei', '04332900108', '15504338262', '▶ 사이즈 : 가로 19.5cm 세로 10.5cm 폭 3.5cm ', '1340789620', '1343161541', '36', '1', '1', '0');
INSERT INTO `stcms_shops` VALUES ('89', '153', '31', '49', null, '1', '25435345243', '나의 행복 여성의상  꽃나비', '꽃나비  행복 여성 의상', '중국', 'L', '2009', '211', '중국연길시', '1', './shoppic_w/201207/7a90db8ca9bd7421ab35ded4a9cba2536740.jpg', '', '', '', '', '', '', '', '', '', '새상품', '1', '1', '0', '0', '0', '악세서리', '256000', '1', '1', '0', '일반우편', '1000', '4', 'dora117', '04338888888', '18888888888', '홈페이지 홍보나 가게 홍보 문구가 있는 경우 상품삭제 조치 및 불량판매자로 간주됩니다. \r\n-직거래로 인하여 발생하는 피해를 막고, 신뢰할 수 있는 거래를 위하여 직거래 유도문구등은 입력하실 수 없습니다 \r\n- 상품정보 이외의 개인정보 (전화번호, email)도 입력할 수 없으며, 입력시 판매보류 처분, 회원강제탈퇴 등의 불이익을 받을 수 있습니다. \r\n- 반품은 아래의 필웨이 반품규정을 따릅니다. 따라서 반품 환불에 관한 내용은 기재할 수 없습니다. \r\n- 등록가격 이외에 다른가격(\"수수료제외시', '1341989204', '0', '55', '0', '1', '0');
INSERT INTO `stcms_shops` VALUES ('90', '133', '32', '57', null, '1', '122341234', '꽃나비 나의 행복 여성의상', '꽃나비 나의 행복 여성 의상', '중국', '', '0', '0', '', '1', './shoppic_w/201207/a81c26f8ab1d5d7836b0108ec8c2d8d42980.jpg', '', '', '', '', '', '', '', '', '', '새상품', '1', '1', '0', '0', '0', '악세서리', '21000', '1', '1', '1', '일반우편', '1000', '4', 'dora117', '04338888888', '18888888888', '발생하는 피해를 막고, 신뢰할 수 있는 거래를 위하여 직거래 유도문구등은 입력하실 수 없습니다 \r\n- 상품정보 이외의 개인정보 (전화번호, email)도 입력할 수 없으며, 입력시 판매보류 처분, 회원강제탈퇴 등의 불이익을 받을 수 있습니다. \r\n- 반품은 아래의 필웨이 반품규정을 따릅니다. 따라서 반품 환불에 관한 내용은 기재할 수 없습니다. \r\n- 등록가격 이외에 다른가격(\"수수료제외시', '1341989467', '0', '144', '0', '1', '0');
INSERT INTO `stcms_shops` VALUES ('91', '156', '30', '43', null, '1', '12312332432', '123123', '', '123123', '123', '0', '0', '', '1', './shoppic_w/201207/a81c26f8ab1d5d7836b0108ec8c2d8d42980.jpg', '', '', '', '', '', '', '', '', '', '', '0', '0', '0', '0', '0', '', '123123', '1', '2', '1', '일반우편', '1000', '5', 'weiwei001', '123', '', '123123', '1342428406', '0', '94', '0', '1', '0');
INSERT INTO `stcms_shops` VALUES ('92', '51', '33', '72', null, '1', 'a11165441354', '상품등록2342 테스트 -타이틀123', null, '중국', null, '0', '0', null, '1', './shoppic/201207/eba9185af774e5c20251c1398301a9e46500.jpg', './shoppic_w/201207/eba9185af774e5c20251c1398301a9e41651.jpg', './shoppic_w/201207/734be9e79ca07ee329ee5247c5e8531b2054.jpg', null, null, null, null, null, null, null, '1234', '0', '1', '0', '0', '0', '234', '32000', '1', '1', '0', '택배', '1000', '5', 'weiwei001', '0433-1111111', null, '- 홈페이지 홍보나 가게 홍보 문구가 있는 경우 상품삭제 조치 및 불량판매자로 간주됩니다.\r\n-직거래로 인하여 발생하는 피해를 막고, 신뢰할 수 있는 거래를 위하여 직거래 유도문구등은 입력하실 수 없습니다\r\n- 상품정보 이외의 개인정보 (전화번호, email)도 입력할 수 없으며, 입력시 판매보류 처분, 회원강제탈퇴 등의 불이익을 받을 수 있습니다.\r\n- 반품은 아래의 필웨이 반품규정을 따릅니다. 따라서 반품 환불에 관한 내용은 기재할 수 없습니다.\r\n- 등록가격 이외에 다른가격(\"수수료제외시 얼마\" or \"등록가격은 수수료제외금액\")으로 이중가격을 표시하는 행위는 직거래 유도행위로 적발시 해당회원은 판매자격이 정지됩니다.', '1343212675', '1343271597', '21', '1', '1', '1343271925');

-- ----------------------------
-- Table structure for `stcms_sites`
-- ----------------------------
DROP TABLE IF EXISTS `stcms_sites`;
CREATE TABLE `stcms_sites` (
  `siteid` int(10) unsigned NOT NULL auto_increment,
  `sitename` varchar(50) default NULL,
  `sitedomain` varchar(100) default NULL,
  `sttype` varchar(255) default NULL,
  `template_dir` varchar(255) default NULL,
  `intro` varchar(255) default NULL,
  PRIMARY KEY  (`siteid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stcms_sites
-- ----------------------------
INSERT INTO `stcms_sites` VALUES ('1', 'HDPLUS', '127.0.0.1', 'a:3:{s:4:\"news\";s:1:\"1\";s:3:\"pic\";s:1:\"1\";s:4:\"shop\";s:1:\"1\";}', 'default', 'HDPLUS');
INSERT INTO `stcms_sites` VALUES ('2', '宠物一帮', 'localhost', '1,3,4', 'pet', 'Pet');

-- ----------------------------
-- Table structure for `stcms_types`
-- ----------------------------
DROP TABLE IF EXISTS `stcms_types`;
CREATE TABLE `stcms_types` (
  `typeid` int(10) unsigned NOT NULL auto_increment,
  `typename` varchar(50) NOT NULL,
  `siteid` int(10) unsigned NOT NULL,
  `intro` varchar(255) default NULL,
  PRIMARY KEY  (`typeid`),
  KEY `siteid` (`siteid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stcms_types
-- ----------------------------
INSERT INTO `stcms_types` VALUES ('1', '질문', '1', null);
INSERT INTO `stcms_types` VALUES ('5', '정보', '1', null);
INSERT INTO `stcms_types` VALUES ('6', '뉴스', '1', '');
INSERT INTO `stcms_types` VALUES ('7', '필톡', '1', '');

-- ----------------------------
-- Table structure for `stcms_ufields`
-- ----------------------------
DROP TABLE IF EXISTS `stcms_ufields`;
CREATE TABLE `stcms_ufields` (
  `fieldid` mediumint(8) unsigned NOT NULL auto_increment,
  `siteid` smallint(5) NOT NULL,
  `modelid` smallint(5) unsigned NOT NULL default '0',
  `name` varchar(20) NOT NULL,
  `cname` varchar(30) NOT NULL,
  `tips` text NOT NULL,
  `css` varchar(30) NOT NULL,
  `minlength` int(10) unsigned NOT NULL default '0',
  `maxlength` int(10) unsigned NOT NULL default '0',
  `pattern` varchar(255) NOT NULL,
  `errortips` varchar(255) NOT NULL,
  `formtype` varchar(20) NOT NULL,
  `isunique` tinyint(1) unsigned NOT NULL default '0',
  `issearch` tinyint(1) unsigned NOT NULL default '0',
  `isadd` tinyint(1) unsigned NOT NULL default '0',
  `islist` tinyint(1) unsigned NOT NULL default '0',
  `listorder` mediumint(8) unsigned NOT NULL default '0',
  `disabled` tinyint(1) unsigned NOT NULL default '0',
  `setting` text,
  PRIMARY KEY  (`fieldid`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stcms_ufields
-- ----------------------------
INSERT INTO `stcms_ufields` VALUES ('21', '0', '2', 'petcat', '宠物种类', '猫狗等', '', '1', '0', '', '', 'text', '0', '0', '1', '0', '0', '0', null);
INSERT INTO `stcms_ufields` VALUES ('22', '0', '2', 'petsubcat', '子分类', '金毛 波斯猫等', '', '1', '0', '', '', 'text', '0', '0', '1', '0', '0', '0', null);
INSERT INTO `stcms_ufields` VALUES ('23', '0', '2', 'petname', '宠物名字', '', '', '0', '0', '', '', 'text', '0', '0', '1', '0', '0', '0', null);
INSERT INTO `stcms_ufields` VALUES ('24', '0', '2', 'petage', '宠龄', '一岁 三个月等', '', '0', '0', '', '', 'text', '0', '0', '1', '0', '0', '0', null);

-- ----------------------------
-- Table structure for `stcms_umodel`
-- ----------------------------
DROP TABLE IF EXISTS `stcms_umodel`;
CREATE TABLE `stcms_umodel` (
  `modelid` int(11) unsigned NOT NULL auto_increment,
  `modelname` varchar(50) default NULL,
  `tbname` varchar(50) default NULL,
  `intro` varchar(255) default NULL,
  `status` tinyint(1) unsigned default '1',
  PRIMARY KEY  (`modelid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stcms_umodel
-- ----------------------------
INSERT INTO `stcms_umodel` VALUES ('1', '普通会员', 'members', '全站通用', '1');
INSERT INTO `stcms_umodel` VALUES ('2', '宠物网站会员', 'petmembers', '宠物网站会员', '1');

-- ----------------------------
-- Table structure for `stcms_weak`
-- ----------------------------
DROP TABLE IF EXISTS `stcms_weak`;
CREATE TABLE `stcms_weak` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `g_code` varchar(100) default NULL,
  `shopid` int(11) unsigned default '0',
  `shopname` varchar(255) default NULL,
  `sellerid` int(11) unsigned default '0',
  `sellername` varchar(50) default NULL,
  `uid` int(11) unsigned default '0',
  `username` varchar(50) default NULL,
  `brandname` varchar(100) default NULL,
  `info` varchar(100) default NULL,
  `remark` text,
  `addtime` datetime default NULL,
  `ip` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stcms_weak
-- ----------------------------
INSERT INTO `stcms_weak` VALUES ('2', '12312332432', '91', '(해외배송)123123', '5', 'weiwei001', '3', 'yjliwei', 'Camper', '잘못된 브랜드 등록', 'ads', '2012-07-24 20:31:59', '58.245.109.58');
