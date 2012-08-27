/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50090
Source Host           : localhost:3306
Source Database       : pet

Target Server Type    : MYSQL
Target Server Version : 50090
File Encoding         : 65001

Date: 2012-08-28 02:35:13
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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stcms_admins
-- ----------------------------
INSERT INTO `stcms_admins` VALUES ('2', 'sutoo', '刘利伟', 'ea26d421251bcccf0dd656e88c8dac9e', '3', '速途管理员', '1346078969', '127.0.0.1');

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
  `ismenu` tinyint(1) unsigned NOT NULL default '1',
  `ishtml` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`catid`),
  KEY `siteid` (`siteid`,`modelid`)
) ENGINE=MyISAM AUTO_INCREMENT=175 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stcms_category
-- ----------------------------
INSERT INTO `stcms_category` VALUES ('155', '1', '1', 'QA', '0', '', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('156', '1', '1', '판매자알림', '0', '', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('30', '1', '3', '여성슈즈', '0', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('31', '1', '3', '남성슈즈', '0', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('29', '1', '1', '알림', '0', '', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('32', '1', '3', '가방/핸드백', '0', '', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('33', '1', '3', '지갑/벨트', '0', '', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('34', '1', '3', '악세서리', '0', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('35', '1', '3', '여성의류', '0', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('36', '1', '3', '남성의류', '0', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('37', '1', '3', '화장품/향수', '0', '', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('38', '1', '3', '선글래스/안경', '0', '', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('39', '1', '3', '시계', '0', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('40', '1', '3', '패션잡화', '0', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('41', '1', '3', 'KIDS', '0', '', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('42', '1', '3', '기타', '0', '', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('43', '1', '3', '구두', '30', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('44', '1', '3', '스니커즈', '30', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('45', '1', '3', '샌들', '30', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('46', '1', '3', '로퍼', '30', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('47', '1', '3', '부츠', '30', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('48', '1', '3', '기타', '30', '', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('49', '1', '3', '구두', '31', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('50', '1', '3', '스니커즈', '31', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('51', '1', '3', '샌들', '31', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('52', '1', '3', '로퍼', '31', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('53', '1', '3', '부츠', '31', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('54', '1', '3', '기타', '31', '', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('55', '1', '3', '숄더백', '32', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('56', '1', '3', '크로스백', '32', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('57', '1', '3', '토드백', '32', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('58', '1', '3', '백팩', '32', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('59', '1', '3', '파우치', '32', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('60', '1', '3', '클러치백', '32', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('61', '1', '3', '서류가방', '32', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('62', '1', '3', '세컨백', '32', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('63', '1', '3', '여행가방', '32', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('64', '1', '3', '힙색', '32', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('65', '1', '3', '남성용숄더백', '32', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('66', '1', '3', '남성용크로스백', '32', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('67', '1', '3', '남성용토드백', '32', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('68', '1', '3', '남성용백팩', '32', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('69', '1', '3', '기타', '32', '', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('70', '1', '3', '여성용지갑', '33', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('71', '1', '3', '여성용장지갑', '33', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('72', '1', '3', '여성용중지갑', '33', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('73', '1', '3', '남성용지갑', '33', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('74', '1', '3', '명함지갑', '33', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('75', '1', '3', '키지갑', '33', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('76', '1', '3', '다이어리', '33', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('77', '1', '3', '여성용벨트', '33', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('78', '1', '3', '남성용벨트', '33', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('79', '1', '3', '기타', '33', '', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('80', '1', '3', '반지', '34', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('81', '1', '3', '목걸이/팬던트', '34', '', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('82', '1', '3', '귀걸이', '34', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('83', '1', '3', '팔찌/발찌', '34', '', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('84', '1', '3', '보석', '34', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('85', '1', '3', '핸드폰악세서리', '34', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('86', '1', '3', '키링', '34', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('87', '1', '3', '기타', '34', '', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('88', '1', '3', '스커트', '35', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('89', '1', '3', '티/민소매/탑', '35', '', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('90', '1', '3', '니트/스웨터', '35', '', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('91', '1', '3', '블라우스/남방', '35', '', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('92', '1', '3', '가디건', '35', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('93', '1', '3', '코트', '35', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('94', '1', '3', '자켓', '35', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('95', '1', '3', '바지', '35', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('96', '1', '3', '반바지', '35', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('97', '1', '3', 'Jean', '35', '', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('98', '1', '3', '원피스', '35', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('99', '1', '3', '투피스', '35', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('100', '1', '3', '쓰리피스', '35', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('101', '1', '3', '속옷', '35', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('102', '1', '3', '수영복', '35', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('103', '1', '3', '기타', '35', '', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('104', '1', '3', '티셔츠/민소매', '36', '', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('105', '1', '3', '니트/스웨터', '36', '', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('106', '1', '3', '남방/셔츠', '36', '', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('107', '1', '3', '가디건', '36', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('108', '1', '3', '코트', '36', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('109', '1', '3', '자켓', '36', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('110', '1', '3', '바지', '36', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('111', '1', '3', '반바지', '36', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('112', '1', '3', 'Jean', '36', '', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('113', '1', '3', '정장', '36', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('114', '1', '3', '속옷', '36', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('115', '1', '3', '수영복', '36', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('116', '1', '3', '기타', '36', '', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('117', '1', '3', '스킨케어', '37', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('118', '1', '3', '메이크업', '37', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('119', '1', '3', '클렌징/썬', '37', '', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('120', '1', '3', '남성용화장품', '37', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('121', '1', '3', '향수', '37', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('122', '1', '3', '기타', '37', '', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('123', '1', '3', '선글래스', '38', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('124', '1', '3', '안경/안경테', '38', '', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('125', '1', '3', '기타', '38', '', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('126', '1', '3', '손목시계', '39', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('127', '1', '3', '여성용시계', '39', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('128', '1', '3', '남성용시계', '39', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('129', '1', '3', '기타', '39', '', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('130', '1', '3', '모자', '40', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('131', '1', '3', '헤어악세서리', '40', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('132', '1', '3', '넥타이', '40', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('133', '1', '3', '장갑', '40', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('134', '1', '3', '머플러/스카프', '40', '', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('135', '1', '3', '스타킹/레깅스', '40', '', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('136', '1', '3', '우산', '40', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('137', '1', '3', '손수건', '40', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('138', '1', '3', '양말', '40', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('139', '1', '3', '기타', '40', '', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('140', '1', '3', '유아복', '41', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('141', '1', '3', '여아-상의', '41', '', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('142', '1', '3', '여아-하의', '41', '', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('143', '1', '3', '여아-자켓/코트', '41', '', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('144', '1', '3', '원피스/드레스', '41', '', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('145', '1', '3', '남아-상의', '41', '', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('146', '1', '3', '남아-하의', '41', '', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('147', '1', '3', '남아-자켓/코트', '41', '', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('148', '1', '3', '신발', '41', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('149', '1', '3', '가방/지갑', '41', '', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('150', '1', '3', '패션소품', '41', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('151', '1', '3', '기타', '41', '', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('152', '1', '3', '펜', '42', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('153', '1', '3', '라이터', '42', '\r', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('154', '1', '3', '기타', '42', '', '0', '', '', '', '1', '0');
INSERT INTO `stcms_category` VALUES ('174', '1', '1', 'GOODS QA', '0', 'goodsqa', '0', null, null, null, '1', '0');
INSERT INTO `stcms_category` VALUES ('162', '1', '1', '이용안내', '0', '', '0', null, null, null, '1', '0');
INSERT INTO `stcms_category` VALUES ('163', '1', '1', '주문처리과정', '162', '', '0', null, null, null, '1', '0');
INSERT INTO `stcms_category` VALUES ('164', '1', '1', '구매자 - 주문/입금', '162', ' - /', '0', null, null, null, '1', '0');
INSERT INTO `stcms_category` VALUES ('165', '1', '1', '신용카드결제', '162', '', '0', null, null, null, '1', '0');
INSERT INTO `stcms_category` VALUES ('166', '1', '1', '판매자 - 등록/배송', '162', ' - /', '0', null, null, null, '1', '0');
INSERT INTO `stcms_category` VALUES ('167', '1', '1', '반품/환불', '162', '/', '0', null, null, null, '1', '0');
INSERT INTO `stcms_category` VALUES ('168', '1', '1', '구매결정요청/정산일정', '162', '/', '0', null, null, null, '1', '0');
INSERT INTO `stcms_category` VALUES ('169', '1', '1', '수수료/이머니', '162', '/', '0', null, null, null, '1', '0');
INSERT INTO `stcms_category` VALUES ('170', '1', '1', '모조품판매자색출/처벌', '162', '/', '0', null, null, null, '1', '0');
INSERT INTO `stcms_category` VALUES ('171', '1', '1', '회원정보', '162', '', '0', null, null, null, '1', '0');
INSERT INTO `stcms_category` VALUES ('172', '1', '1', '매매보호-안전거래', '162', '-', '0', null, null, null, '1', '0');
INSERT INTO `stcms_category` VALUES ('173', '1', '1', '필폰/사은품', '162', '/', '0', null, null, null, '1', '0');

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
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stcms_fields
-- ----------------------------

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
  `siteid` int(10) unsigned NOT NULL default '0',
  `modelname` varchar(50) NOT NULL,
  `tbname` varchar(50) NOT NULL,
  `intro` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL default '1',
  `rownum` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`modelid`),
  KEY `siteid` (`siteid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 PACK_KEYS=0;

-- ----------------------------
-- Records of stcms_model
-- ----------------------------
INSERT INTO `stcms_model` VALUES ('3', '0', '商城模型', 'shops', '系统内置商城', '1', '0');
INSERT INTO `stcms_model` VALUES ('1', '0', '文章模型', 'news', '通用文章模型', '1', '0');
INSERT INTO `stcms_model` VALUES ('2', '0', '图片模型', 'pics', '图片浏览模型', '0', '0');

-- ----------------------------
-- Table structure for `stcms_news`
-- ----------------------------
DROP TABLE IF EXISTS `stcms_news`;
CREATE TABLE `stcms_news` (
  `id` int(11) NOT NULL auto_increment,
  `brandid` int(11) unsigned NOT NULL default '0',
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
  `sellerid` int(11) unsigned default '0',
  `sellername` varchar(50) default NULL,
  `qacate` varchar(100) default NULL,
  `buyer_seller` varchar(50) default NULL,
  `shopid` int(11) unsigned default '0',
  `islock` tinyint(1) unsigned default '0',
  `pid` int(11) unsigned default '0',
  `userhome` varchar(255) default NULL,
  `pic` varchar(255) default NULL,
  `ip` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stcms_news
-- ----------------------------
INSERT INTO `stcms_news` VALUES ('4', '0', '0', '155', '0', '업뎃해주세요 ', '업뎃해주세요 ', 'sm1009kim', 'Feelway', 'http://', '0', '', '모바일버전으로 상품검색하면 검색이잘안되네요<br />\r\npc버전은어찌어찌되는데<br />\r\n필웨이도경쟁시대에맞게업뎃해주세요<br />\r\n아이스크림샌드위치로업뎃했는데<br />\r\n잘안들어가져요.....<br />', '0', '0', '0', '0', '2012-06-28 19:53:00', '1', '3', 'yjliwei', '0', null, null, null, '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('5', '0', '0', '155', '0', '测试提问', null, 'yjliwei', null, null, '0', null, '测试提问\r\n测试提问\r\n测试提问', '0', '0', '0', '0', '2012-07-02 13:30:34', '10', '3', 'yjliwei', '0', null, null, null, '0', '1', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('6', '0', '0', '155', '0', '대하여는 일체의 책임을 지지 않습니다.', null, 'yjliwei', null, null, '0', null, '대하여는 일체의 책임을 지지 않습니다.\r\n대하여는 일체의 책임을 지지 않습니다.', '0', '0', '0', '0', '2012-07-02 13:04:40', '8', '3', 'yjliwei', '0', null, '구매결정요청', '판매자', '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('7', '0', '0', '155', '0', '测试回复', null, 'yjliwei', null, null, '0', null, '测试回复测试回复', '0', '0', '0', '0', '2012-07-02 14:12:32', '5', '3', 'yjliwei', '0', null, null, null, '0', '0', '5', null, null, null);
INSERT INTO `stcms_news` VALUES ('8', '0', '0', '156', '0', '这里是卖家公告', null, 'yjliwei', null, null, '0', null, null, '0', '0', '0', '0', '2012-07-02 18:42:04', '1', '3', 'yjliwei', '0', null, null, null, '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('9', '0', '0', '156', '0', 'ssssss', null, 'yjliwei', null, null, '0', null, null, '0', '0', '0', '0', '2012-07-03 18:41:37', '1', '3', 'yjliwei', '0', null, null, null, '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('79', '51', '33', '74', '7', '반복적으로 등록하는 경우,해당 아이디는', null, 'yjliwei', null, null, '0', null, '반복적으로 등록하는 경우,해당 아이디는', '0', '0', '0', '0', '2012-07-26 15:25:24', '10', '3', 'yjliwei', '0', null, null, null, '0', '0', '0', 'http://hdplus.sutoo.com/?u=yjliwei', './newspic/201207/6be2618ce30c76baca3963965d2cba263892.jpg', '119.50.7.190');
INSERT INTO `stcms_news` VALUES ('76', '0', '0', '0', '0', 'wetw42345', null, 'weiwei001', null, null, '0', null, '234523452345', '0', '0', '0', '0', '2012-07-26 14:52:07', '1', '5', 'weiwei001', '0', null, null, null, '0', '0', '0', 'hdplus.sutoo.com/?u=weiwei001', null, '119.50.7.190');
INSERT INTO `stcms_news` VALUES ('77', '0', '0', '0', '0', '235423442', null, 'weiwei001', null, null, '0', null, '23452345', '0', '0', '0', '0', '2012-07-26 14:53:58', '1', '5', 'weiwei001', '0', null, null, null, '0', '0', '75', 'hdplus.sutoo.com/?u=weiwei001', null, '119.50.7.190');
INSERT INTO `stcms_news` VALUES ('13', '0', '0', '29', '0', '사이트 제작중입니다', '사이트 제작', '', '', 'http://', '0', '', '현재 사이트 제작중입니다,기대하셔도 좋습니다.현재 사이트 제작중입니다,기대하셔도 좋습니다.', '0', '0', '0', '0', '2012-06-28 19:53:00', '1', '0', null, '0', null, null, null, '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('14', '0', '0', '29', '0', '사이트 테스트', '', '', '', 'http://', '0', '', '사이트 제작중입니다.테스트 중입니다..', '0', '0', '0', '0', '2012-06-28 19:53:00', '0', '0', null, '0', null, null, null, '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('15', '0', '0', '29', '0', '안녕하세요', '', '', '', 'http://', '0', '', '안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요', '0', '0', '0', '0', '2012-06-28 19:53:00', '0', '0', null, '0', null, null, null, '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('16', '0', '0', '29', '0', 'HDPLUS플러스', '', '', '', 'http://', '0', '', 'HDPLUS플러스HDPLUS플러스HDPLUS플러스HDPLUS플러스HDPLUS플러스HDPLUS플러스HDPLUS플러스HDPLUS플러스', '0', '0', '0', '0', '2012-06-28 19:53:00', '13', '0', null, '0', null, null, null, '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('17', '0', '0', '29', '0', '알림 테스트 중...', '', '', '', 'http://', '0', '', '알림 테스트 중...알림 테스트 중...알림 테스트 중...알림 테스트 중...알림 테스트 중...알림 테스트 중...알림 테스트 중...알림 테스트 중...', '0', '0', '0', '0', '2012-06-28 19:53:00', '3', '0', null, '0', null, null, null, '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('18', '0', '0', '156', '0', 'sdfgsdfg', null, 'weiwei001', null, null, '0', null, null, '0', '0', '0', '0', '2012-07-17 14:31:29', '1', '5', 'weiwei001', '0', null, null, null, '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('19', '0', '0', '163', '0', '반품절차', null, '', null, null, '0', '', '<div align=\"justify\">\r\n	<table border=\"0\" align=\"left\" cellpadding=\"2\" cellspacing=\"1\" bgcolor=\"#999999\">\r\n		<tbody>\r\n			<tr>\r\n				<td bgcolor=\"#ffffff\" width=\"40\" height=\"22\" style=\"font-family:돋움;color:#333333;\">\r\n					1\r\n				</td>\r\n				<td bgcolor=\"#ffffff\" width=\"150\" style=\"font-family:돋움;color:#333333;\">\r\n					주문하기\r\n				</td>\r\n				<td bgcolor=\"#ffffff\" width=\"200\" style=\"font-family:돋움;color:#333333;\">\r\n					구매자\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td bgcolor=\"#ffffff\" width=\"40\" height=\"22\" style=\"font-family:돋움;color:#333333;\">\r\n					2\r\n				</td>\r\n				<td bgcolor=\"#ffffff\" width=\"150\" style=\"font-family:돋움;color:#333333;\">\r\n					입금하기\r\n				</td>\r\n				<td bgcolor=\"#ffffff\" width=\"200\" style=\"font-family:돋움;color:#333333;\">\r\n					구매자\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td bgcolor=\"#ffffff\" width=\"40\" height=\"22\" style=\"font-family:돋움;color:#333333;\">\r\n					3\r\n				</td>\r\n				<td bgcolor=\"#ffffff\" width=\"150\" style=\"font-family:돋움;color:#333333;\">\r\n					입금확인처리\r\n				</td>\r\n				<td bgcolor=\"#ffffff\" width=\"200\" style=\"font-family:돋움;color:#333333;\">\r\n					필웨이\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td bgcolor=\"#ffffff\" width=\"40\" height=\"22\" style=\"font-family:돋움;color:#333333;\">\r\n					4\r\n				</td>\r\n				<td bgcolor=\"#ffffff\" width=\"150\" style=\"font-family:돋움;color:#333333;\">\r\n					배송\r\n				</td>\r\n				<td bgcolor=\"#ffffff\" width=\"200\" style=\"font-family:돋움;color:#333333;\">\r\n					판매자\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td bgcolor=\"#ffffff\" width=\"40\" height=\"22\" style=\"font-family:돋움;color:#333333;\">\r\n					5\r\n				</td>\r\n				<td bgcolor=\"#ffffff\" width=\"150\" style=\"font-family:돋움;color:#333333;\">\r\n					제품접수/반품요청\r\n				</td>\r\n				<td bgcolor=\"#ffffff\" width=\"200\" style=\"font-family:돋움;color:#333333;\">\r\n					구매자\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td bgcolor=\"#ffffff\" width=\"40\" height=\"22\" style=\"font-family:돋움;color:#333333;\">\r\n					6\r\n				</td>\r\n				<td bgcolor=\"#ffffff\" width=\"150\" style=\"font-family:돋움;color:#333333;\">\r\n					반품동의\r\n				</td>\r\n				<td bgcolor=\"#ffffff\" width=\"200\" style=\"font-family:돋움;color:#333333;\">\r\n					판매자\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td bgcolor=\"#ffffff\" width=\"40\" height=\"22\" style=\"font-family:돋움;color:#333333;\">\r\n					7\r\n				</td>\r\n				<td bgcolor=\"#ffffff\" width=\"150\" style=\"font-family:돋움;color:#333333;\">\r\n					상품반송\r\n				</td>\r\n				<td bgcolor=\"#ffffff\" width=\"200\" style=\"font-family:돋움;color:#333333;\">\r\n					구매자\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td bgcolor=\"#ffffff\" width=\"40\" height=\"22\" style=\"font-family:돋움;color:#333333;\">\r\n					8\r\n				</td>\r\n				<td bgcolor=\"#ffffff\" width=\"150\" style=\"font-family:돋움;color:#333333;\">\r\n					반품접수확인\r\n				</td>\r\n				<td bgcolor=\"#ffffff\" width=\"200\" style=\"font-family:돋움;color:#333333;\">\r\n					판매자\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td bgcolor=\"#ffffff\" width=\"40\" height=\"22\" style=\"font-family:돋움;color:#333333;\">\r\n					9\r\n				</td>\r\n				<td bgcolor=\"#ffffff\" width=\"150\" style=\"font-family:돋움;color:#333333;\">\r\n					환불요청\r\n				</td>\r\n				<td bgcolor=\"#ffffff\" width=\"200\" style=\"font-family:돋움;color:#333333;\">\r\n					구매자\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td bgcolor=\"#ffffff\" width=\"40\" height=\"22\" style=\"font-family:돋움;color:#333333;\">\r\n					10\r\n				</td>\r\n				<td bgcolor=\"#ffffff\" width=\"150\" style=\"font-family:돋움;color:#333333;\">\r\n					환불처리\r\n				</td>\r\n				<td bgcolor=\"#ffffff\" width=\"200\" style=\"font-family:돋움;color:#333333;\">\r\n					필웨이\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n</div>', '0', '0', '0', '0', '2012-06-28 19:53:00', '0', '0', null, '0', null, null, null, '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('20', '0', '0', '163', '0', '정상 구매절차', null, '', null, null, '0', '', '<span style=\"color:#333333;font-family:돋움;\">1. 주문하기 - 구매자</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">2. 입금 - 구매자</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">3. 입금확인처리 - 필웨이</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">4. 배송 - 판매자</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">5. 제품접수/구매결정 - 구매자</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">6. 정산요청 - 판매자</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">7. 정산지급 - 필웨이</span>', '0', '0', '0', '0', '2012-06-28 19:53:00', '0', '0', null, '0', null, null, null, '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('21', '0', '0', '163', '0', '[구매자] 처리상태 및 처리하기', null, '', null, null, '0', '', '<div align=\"justify\">\r\n	1. 입금미확인 - 결제확인이 되지 않은 결과입니다.<br />\r\n<br />\r\n2. 입금확인됨 - 통장입금 또는 카드결제가 확인된 결과입니다.<br />\r\n<br />\r\n3. 판매거부 - 판매자가 다른경로판매, 물품파손 등으로 판매거부를&nbsp;<br />\r\n신청한 결과입니다.<br />\r\n<br />\r\n4. 배송중 - 구매정보에서 배송정보를 확인하실수 있습니다.<br />\r\n<br />\r\n5. 구매완료 - 구매자가 구매결정을 한 결과입니다.<br />\r\n<br />\r\n6. 반품요청 - 구매자가 반품의사를 밝힌 결과입니다.<br />\r\n<br />\r\n7. 반품거절 - 판매자가 반품거절을 한 결과입니다.<br />\r\n<br />\r\n8. 반송중 - 구매자의 반품요청에 대해 판매자가 동의한 결과 입니다.<br />\r\n<br />\r\n9. 반품완료 - 판매자가 반송받은것을 확인한 결과입니다.<br />\r\n</div>', '0', '0', '0', '0', '2012-06-28 19:53:00', '0', '0', null, '0', null, null, null, '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('22', '0', '0', '163', '0', '[판매자] 처리상태 및 처리하기', null, '', null, null, '0', '', '<div align=\"justify\">\r\n	1. 결제확인됨 - 입금확인되면 자동 설정됩니다<br />\r\n<br />\r\n2. 거래취소 - 판매자가 거래취소한 결과입니다.<br />\r\n<br />\r\n3. 배송중 - 판매자가 배송확인 처리한 결과입니다<br />\r\n<br />\r\n4. 판매완료(구매완료) - 구매자가 구매결정한 결과입니다.<br />\r\n<br />\r\n5. 정산요청중 - 판매자가 정산요청한 결과입니다.<br />\r\n<br />\r\n6. 정산완료 - 필웨이에서 정산후 처리한결과입니다.<br />\r\n<br />\r\n7. 반품요청 - 구매자가 반품요청한 결과입니다.<br />\r\n<br />\r\n8. 반품거절 - 판매자가 반품거절한 결과입니다.<br />\r\n<br />\r\n9. 반송중 - 구매자가 반송확인한 결과입니다.<br />\r\n<br />\r\n10. 반품완료 - 판매자가 반송받으시고 반품확인한 결과입니다.<br />\r\n<br />\r\n11 환불대기중 - 구매자가 환불요청한 결과입니다.<br />\r\n<br />\r\n12. 환불완료 - 필웨이에서 환불후 처리결과입니다.\r\n</div>', '0', '0', '0', '0', '2012-06-28 19:53:00', '0', '0', null, '0', null, null, null, '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('23', '0', '0', '164', '0', '현금영수증 발급', null, '', null, null, '0', '', '<span style=\"color:#333333;font-family:돋움;\">현금영수증은 구매자의 소득공제나 세액공제를 위해 자동으로 발급됩니다.</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">- 소득공제용(일반개인용) : 개인이 소득공제를 받을 수 있는 영수증</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">- 지출증빙용(사업자용) : 세금계산서처럼 기업이 세액공제를 받을 수 있는 영수증&nbsp;</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">현금영수증은 거래가 완료된후 필웨이에서 자동 발행됩니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">현금영수증이 발행되면, 마이페이지-구매정보 에서 현금영수증 승인번호를 클릭하시고 확인 하실수 있습니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">현금영수증은 출력하실 필요는 없고, 연말에 국세청 홈페이지(www.taxsave.go.kr)에서 일괄발행하여 신고하실수 있습니다.</span>', '0', '0', '0', '0', '2012-06-28 19:53:00', '0', '0', null, '0', null, null, null, '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('24', '0', '0', '164', '0', '입금을 했는데, 입금확인이 되지 않아요', null, '', null, null, '0', '', '<span style=\"color:#333333;font-family:돋움;\">1. 주문자가 입금을 하고나서 입금 확인되는데 까지 걸리는 시간은</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">- 평일 근무시간 기준으로 5~30분 정도</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">- 일과시간 이후 혹은 휴일 기준으로 10분~1시간 정도</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">2. 주문시 기재한 입금자명과 실제로 입금한 입금자명이 다르면 입금확인이 늦어질수 있습니다.</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">- 이 경우 qna 게시판에 확인요청 글을 남겨 주시거나, 필웨이로 연락주시면 됩니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">3. 주문한후에 입금이 늦어져서, 다른 구매자가 해당상품을 구매하거나, 판매자가 제품을 삭제한경우</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">- 마이페이지-구매정보 의 주문내역을 확인하시면, 내용을 확인하실수 있습니다.</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">- 이경우 필웨이에서 확인하여 처리됩니다.</span>', '0', '0', '1', '0', '2012-06-28 19:53:00', '0', '0', null, '0', null, null, null, '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('25', '0', '0', '164', '0', '필웨이 계좌 번호는 어떻게 되나요', null, '', null, null, '0', '', '<span style=\"color:#333333;font-family:돋움;\">국민은행 093401-04-022865&nbsp;</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">우리은행 100520-0970-543&nbsp;</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">조흥은행 579-010-227-48&nbsp;</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">하나은행 411-9100-021-7904&nbsp;</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">기업은행 395-050-277-010-10&nbsp;</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">신한은행 674-050-036-83&nbsp;</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">외환은행 630-004-771-663&nbsp;</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">한미은행 357-006-322-41&nbsp;</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">농협 090-17-004054</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">(주)감성커뮤니케이션</span>', '0', '0', '0', '0', '2012-06-28 19:53:00', '0', '0', null, '0', null, null, null, '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('26', '0', '0', '164', '0', '주문후 입금은 어떻게 하면 되나요?', null, '', null, null, '0', '', '<span style=\"color:#333333;font-family:돋움;\">1. 주문시 선택하신 계좌로 입금 하시면 됩니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">2. 주문후 입금하기전에 제품이 삭제되거나 다른구매자에게 판매되는 경우가 있을수 있습니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">3. 주문후 입금까지 시간이 오래지난경우에는 반드시 마이페이지-구매정보에서 입금가능여부를 확인하고 입금하시기 바랍니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">4. 하나의 상품에 다수의 구매자가 동시에 주문한후 입금한 경우, 주문 입금처리는 입금된 순서로 처리되며, 판매자에게 추가 재고가 없을경우, 후순위 입금자의 주문은 처리되지 않고, 입금금액은 환불처리 됩니다.</span>', '0', '0', '0', '0', '2012-06-28 19:53:00', '0', '0', null, '0', null, null, null, '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('27', '0', '0', '164', '0', '구매하는 절차는 어떻게 되나요?', null, '', null, null, '0', '', '<span style=\"color:#333333;font-family:돋움;\">1. 우선 제품을 검색하셔서 원하는 제품을 찾습니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">2. 제품보기에서 제품의 상세설명과 판매자신용도 등을 확인합니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">3. 구매하기 버튼을 클릭하시고, 구매정보를 입력합니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">4. 결제방법(통장결제/카드결제)을 선택하셔서 결제를 합니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">5. 결제가 성공적으로 처리되면, 판매자에게 주문정보가 전달됩니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">6. 판매자가 제품을 배송하면, 제품을 받아보고 나서 구매결정을 하시면, 판매자에게 정산지급되어 거래가 완료됩니다. 해외배송의 경우 구매자에게 관세부담의무가 있습니다.(관세청참조)</span>', '0', '0', '0', '0', '2012-06-28 19:53:00', '0', '0', null, '0', null, null, null, '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('28', '0', '0', '165', '0', '신용카드 부정 사용 관련내용', null, '', null, null, '0', '', '<span style=\"color:#333333;font-family:돋움;\">신용카드 부정 사용&nbsp;</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">\'신용카드 부정 사용\'이란 여신전문금융업법및 필웨이 이용약관에 근거하여 물품의 판매 또는 용역의 제공 등을 가장하거나, 실제 매출 금액을 초과하여 신용카드에 의한 거래를 하고, 또는 신용카드에 거래를 대행시키고 자금을 융통,중개.알선하는 행위 일체 등 물품대금 결제 이외의 목적으로 사용되는 모든 부정행위를 말합니다.&nbsp;</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">신용카드 부정 사용 적용사례&nbsp;</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">1. 카드 거래가 실물이 없는 허위거래로 판단되는 경우</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">2. 사전 협의된 거래(타사이트 및 동호회, 오프라인 등에서 이미 협의된 거래) 또는 지인간 거래 시 카드를 사용한 경우 즉, 실물을 동반한 거래라도 사전협의를 통해 당사의 카드결제 시스템만을 이용한 경우&nbsp;</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">3. 전자금융거래 기본법에 의거한 공인인증서 사용 결제금액대 및 카드사용한도액을 피하기 위해 고액을 분할하여 여러 건의 경매로 진행하는 경우(고액을 분할하여 소액 반복 카드 결제하는 경우)&nbsp;</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">4. 자신의 개인정보 및 카드 정보를 타인에게 유출한 경우 또는 타인의 신용카드 정보를 이용하여 거래한 경우 (가족간 또는 지인간이라고 하더라도 여전법상 신용카드는 양도 및 대여가 불가)&nbsp;</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">5. 기타 카드사 및 관련 기관으로부터 불법 카드 거래로 확인된 경우 등&nbsp;</span><br />\r\n<br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">신용카드 부정 사용에 대한 제재사항&nbsp;</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">1. 거래취소 및 관련 회원 아이디 영구정지</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">2. 기타 관계 법률 위반 시, 관계기관에 수사의뢰&nbsp;</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">당사에서는 신용카드 부정 사용 거래 건에 대해서, 거래취소로 인한 반품 배송비 등 일체의 손해에 대해서 책임을 지지 않습니다.&nbsp;</span><br />', '0', '0', '0', '0', '2012-06-28 19:53:00', '0', '0', null, '0', null, null, null, '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('29', '0', '0', '165', '0', '신용카드 결제가 되지 않아요', null, '', null, null, '0', '', '<span style=\"color:#333333;font-family:돋움;\">1. 2005년 11월 1일부터 정부의 전자금융거래 안정성 강화대책에 따라 “공인인증서 사용기준”이 변경됨에 따라 30만원 이상 금액의 신용카드 결제 시 반드시 범용공인인증서(유료발급) 또는 신용카드용 공인인증서(무료발급)를 사용하여야 합니다.(은행용 또는 보험증권용 인증서로는 신용카드 결제가 불가능합니다)</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">** 신용카드용(용도제한용) 공인인증서 발급을 원하실 때에는 은행용 공인인증서나 증권사에서 발급받은 인증서가 하나라도 있어야 신용카드용 공인인증서 발급이 가능합니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">-.은행/보험용 인증서가 있는 경우 금융결제원(http://www.yessign.or.kr)에서 신용카드용 공인인증서를 무료로 발급 받으실 수 있습니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">-.증권용 인증서가 있는 경우 한국증권전산(http://www.signkorea.com) 에서 신용카드용 공인인증서를 무료로 발급 받으실 수 있습니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">-.은행용 공인인증서가 없을 경우 공인인증서는 본인과의 대면 확인이 필요하므로 거래하시는 가까운 은행을 직접 방문하여 신청하시면 됩니다. (현재 인터넷 뱅킹 이용 고객은 별도 발급 필요가 없습니다.)</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">①.사용하시는 가까운 은행 영업점 방문 → ②.인터넷뱅킹 사용 신청서 제출 →③.해당은행 홈페이지 방문 →④.공인인증서 센터 선택 →⑤.안내에 따라 공인인증서를 발급받으시고 →⑥.금융결제원(http://www.yessign.or.kr)에서 신용카드용 공인인증서를 무료로 발급 받으신 뒤 결제를 하시면 됩니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">자세한 문의는 금융결제원 공인인증서 담당부서 02-531-1123에 문의하시면 됩니다.&nbsp;</span><br />\r\n<br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">2. inipay plugin 이 설치되지 않은경우</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">- 사이트 하단에 있는 inipay 플러그인 을 클릭하셔서 설치하시면 됩니다.&nbsp;</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">3. 기타오류로 인한경우</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">- 오류메세지를 체크하셔서 필웨이로 문의주시기 바랍니다.</span>', '0', '0', '0', '0', '2012-06-28 19:53:00', '0', '0', null, '0', null, null, null, '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('30', '0', '0', '166', '0', '판매완료된 상품 재등록 하기', null, '', null, null, '0', '', '<div align=\"justify\">\r\n	주문처리가 되어 판매완료 상태가 된 상품은 재등록 할수 있습니다.<br />\r\n<br />\r\n판매완료상태가 된지 20일 이내만 가능합니다.<br />\r\n<br />\r\n마이페이지 -&gt; 판매정보-&gt; 내가등록한상품목록 -&gt; 판매완료 또는 상품번호 (검색) -&gt; 재등록 버튼을 클릭하시기 바랍니다<br />\r\n<br />\r\n플러스등록기간이 남은 상품은 재등록시 플러스 등록 상태가 유지됩니다.\r\n</div>', '0', '0', '0', '0', '2012-06-28 19:53:00', '0', '0', null, '0', null, null, null, '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('31', '0', '0', '166', '0', '통신판매업 신고사항 안내', null, '', null, null, '0', '', '<span style=\"color:#333333;font-family:돋움;\">1. 관련법령 : 전자상거래등에서의소비자보호에 관한 법률&nbsp;</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">1) 동법 제2조(정의)</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">① \"전자상거래\"라 함은 전자거래(전자거래기본법 제2조 제5호의 규정에 의한 전자거래를 말한다.</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">이하 같다)의 방법으로 상행위를 하는 것을 말한다.</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">② \"통신판매\"라 함은 우편·전기통신 기타 총리령이 정하는 방법에 따라 재화 또는 용역</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">(일정한 시설을 이용하거나 용역의 제공을 받을 수 있는 권리를 포함한다. 이하 같다)의 판매에 관한 정보를 제공하고&nbsp;</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">소비자의 청약에 의하여 재화 또는 용역(이하 \"재화등\"이라 한다)을 판매하는 것을 말한다.&nbsp;</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">다만, 방문판매등에관한법률 제2조 제3호의 규정에 의한 전화 권유판매를 제외한다.&nbsp;</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">2) 동법 제12조 및 시행령 제13~17조</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">3) 동법 제38조 및 시행령 제40조&nbsp;</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">2. 신고요령&nbsp;</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">1) 신고대상 : 전자상거래 쇼핑몰을 구축, 운영하고자 하는 경우에도 통신판매신고를 하셔야 영업을 할 수 있음&nbsp;</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">2) 신고서 제출처 : 시·군·구청의 유관부서</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">3) 첨부서류</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">① 사업자등록증사본 (신고증의 교부일부터 30일 이내에 제출가능)</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">② 법인등기부등본 (법인의 설립 등기 전에 신고를 하는 때에는 법인설립을 위한 발기인의 주민등록표등본)</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">③ 도장(신고서 날인시 필요없음)&nbsp;</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">④ 신분증(방문하시는 분)&nbsp;</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">4) 신고서 기재사항&nbsp;</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">① 상호(법인인 경우에는 대표자의 성명 및 주민등록번호포함), 주소, 전화번호&nbsp;</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">② 전자우편주소, 인터넷도메인이름, 호스트서버의소재지&nbsp;</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">③ 사업자의 성명 및 주민등록번호(개인인 경우에 한함)&nbsp;</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">5) 신고의무 제외대상 통신판매업자 : 부가가치세법 제25조 제1항의 규정에 의한 간이과세자인 사업자</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">(단, 통신판매에 관한 표시·광고를 하는 경우 법 제13조 제1항 제3호의 통신판매업 신고번호에 갈음하여&nbsp;</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">그 면제사유를 명시)&nbsp;</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">3. 벌칙 (동법 제42조 제1항)</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">통신판매업 미신고, 허위 신고시 : 3천만원 이하의 벌금&nbsp;</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">4. 수수료 : 없음&nbsp;</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">5. 면허세 : \\45,000원</span>', '0', '0', '0', '0', '2012-06-28 19:53:00', '0', '0', null, '0', null, null, null, '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('32', '0', '0', '166', '0', '사업자회원등록', null, '', null, null, '0', '', '<span style=\"color:#333333;font-family:돋움;\">사업자회원은 일반회원 가입 후 사업자등록과 통신판매업 신고를 하신 판매자에 한해서 등록이 가능합니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">마이페이지-&gt;관리하기-&gt;사업자회원등록/수정을 클릭하신 후 사업자등록증 정보를 기재하시면 됩니다.&nbsp;</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">심사는 등록 후 3일이내 진행이 되며, 회원명의와 사업자명의가 다를 경우 필웨이로 확인을 하셔야 됩니다.</span><br />\r\n<br />\r\n<br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">필웨이에서 상품을 팔거나, 인터넷 쇼핑몰을 운영하는 것은 전자상거래에 해당됩니다.</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">전자상거래를 하는 사업자는 전자상거래로 인한 사건 사고가 빈번히 일어나면서 반드시 통신판매업신고를 하도록 되었습니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">1. 사업자등록증 등록 방법(관할 세무서에서 신고)</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">사업자등록은 사업을 시작하는 사람이라면 사업전 모든 사람이 관할 세무서에서 사업자등록을 하신 후 사업자등록증을 발행받으셔야 됩니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">사업자등록은 사업개시일로부터 20일 이내에 해야 합니다. 만약에 사업개시전이라면 예정일 또는 신고하시는 날을 사업개시일로 작성하셔도 됩니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">사업자등록시 필요한 서류</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">- 사업자등록 신청서 1부(세무서 민원실에 비치)</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">- 주민등록등본 1부</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">- 사업장을 임대한 경우 임대차 계약서 1부</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">- 동업관계로 있을 경우 동업계약서, 도장, 신분증&nbsp;</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">(사업자등록 신청서 작성시 업종은 \'소매\', 업태는 \'전자상거래\'로 작성하면 됩니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">* 일반과세자, 간이과세자 차이점</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">선택기준은 연 매출액이 4,800만원이 넘고, 세금계산서를 발행한다면 \'일반과세자\'를 선택을 하고, 그렇지 않을 경우 \'간이과세자\'를 선택하시면 됩니다.&nbsp;</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">사업전으로 매출액을 예상할 수 없을 경우 \'간이과세자\'로 신청을 하시는 것이 좋습니다.</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">간이과세자로 등록 후 판매를 하시다가 매출이 4,800만원이 넘게 된다면 자동적으로 일반과세자로 변경이 되므로 고민을 하지 않아도 됩니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">2. 통신판매업 신고하기(관할 시,도에서 신고)</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">전자상거래로 인한 사건 사고가 빈번히 일어나면서 전자상거래를 하려면 사업자등록 후 \'방문판매 등에 관한 법률\'에 의하여 시,도지사에게 통신판매업을 반드시 해야 합니다.(미 신고시 영업정지 15일 이상 및 최고 500만원 이하의 벌금에 처해질 수 있습니다.)</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">통신판매업은 각, 시,군,구청의 지역경제개발과에서 하면 됩니다.&nbsp;</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">통신판매업 신고시 필요한 서류</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">- 신고서(해당 관청에 비치)</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">- 사업자등록증 사본</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">- 도장, 신분증, 면허세(45,000원)</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">참고로 지역에 따라 간이과세자일 경우 통신판매업 신고가 면제되는 경우가 있으니 사전에 지역경제개발과에 문의를 하시는 것이 좋습니다.&nbsp;</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">3. 사업자등록 및 통신판매업 신고 절차</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">- 사업자등록 후 통신판매업을 신고 : 통신판매업 신고증 수령 후 사업자등록증에 업태, 업종 추가 신청</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">- 통신판매업을 신고 후 사업자등록 : 사업자등록증 사본은 신고 후 1달 내에 제출</span>', '0', '0', '1', '0', '2012-06-28 19:53:00', '0', '0', null, '0', null, null, null, '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('33', '0', '0', '166', '0', '상품등록오류 - 가격제대로 입력되지않음', null, '', null, null, '0', '', '<span style=\"color:#333333;font-family:돋움;\">상품등록시 등록하기 버튼을 클릭하면 \"가격이 제대로 입력되지 않았습니다\" 라는 창이 뜨고, 등록되지 않는 경우가 있습니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">해결방법은</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">1. 상품사진을 1~2개 정도만 입력해서 등록하시면 됩니다. 등록후에 수정하기로 사진을 추가하실수 있습니다.</span>', '0', '0', '1', '0', '2012-06-28 19:53:00', '0', '0', null, '0', null, null, null, '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('34', '0', '0', '166', '0', '위탁판매 혹은 필웨이에서 매입도 하나요?', null, '', null, null, '0', '', '<div align=\"justify\">\r\n	필웨이에서는 위탁판매 혹은 매입을 하지 않습니다.<br />\r\n<br />\r\n필웨이는 판매자님이 제품을 직접 등록하셔서 판매하는 방식입니다.\r\n</div>', '0', '0', '0', '0', '2012-06-28 19:53:00', '0', '0', null, '0', null, null, null, '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('35', '0', '0', '166', '0', '등록위치 갱신하기가 뭔가요?', null, '', null, null, '0', '', '<span style=\"color:#333333;font-family:돋움;\">등록한지 오래된 제품은 뒤쪽으로 밀리기 때문에 구매자들이 찾기기 힘들어 집니다.</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">그렇다고 해서 판매자가 제품을 다시 등록하기엔 너무 많은 시간과 노력이 필요합니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">등록위치 갱신하기는 이러한 불편을 덜기 위해 만들어 졌으며, 클릭하면 제일 앞으로 당겨집니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">갱신하기는 한제품에 대해서 1일 1회 무료로 가능하며, 2회이상 하실때에는 회당 100원씩 이머니가 부과됩니다.</span>', '0', '0', '0', '0', '2012-06-28 19:53:00', '0', '0', null, '0', null, null, null, '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('36', '0', '0', '166', '0', '구매자가 입금하면 판매자는 어떻게 알수 있죠?', null, '', null, null, '0', '', '<span style=\"color:#333333;font-family:돋움;\">1. 입금확인이 되면, 판매자님께 문자메세지, 이메일이 발송됩니다. 그리고 마이페이지에 알림내용으로 발송됩니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">2. 주문상세내용은 마이페이지-판매정보에 가시면 구매자 연락처, 주소, 요청사항등 상세정보를 확인하실수 있습니다.</span>', '0', '0', '0', '0', '2012-06-28 19:53:00', '0', '0', null, '0', null, null, null, '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('37', '0', '0', '166', '0', '플러스 등록이 뭐죠?', null, '', null, null, '0', '', '<span style=\"color:#333333;font-family:돋움;\">빨리팔기 방법중에 하나이며, 상품목록의 상단에 상품을 노출하는 광고입니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">플러스등록 상품은 상품목록의 첫번째 페이지에 노출됩니다.</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">플러스등록은 구매자들의 눈에 잘띄어 판매가 잘 됩니다.</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">노출되는 상품의 개수와 순서는, 검색된 플러스 등록 상품수에 따라 결정됩니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">플러스 등록된 상품중 18개는 필웨이 첫페이지에 무작위로 노출됩니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">플러스 등록된 상품은 일반등록에도 노출 됩니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">플러스 등록 수수료는 (10,000원/개)</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">20일간 유효하고 20일이 지난후에도 일반등록상태는 계속유지됩니다.</span>', '0', '0', '0', '0', '2012-06-28 19:53:00', '0', '0', null, '0', null, null, null, '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('38', '0', '0', '166', '0', '상품등록은 어떻게 합니까?', null, '', null, null, '0', '', '<span style=\"color:#333333;font-family:돋움;\">1. 제품을 등록하시려면, 우선 회원가입을 하셔야 합니다.(주의-계좌정보를 정확히 기재하셔야 합니다)</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">2. 상품을 처음 등록하실때에, 판매회원 인증 절차를 한번 더 거쳐야 하며, 이후로는 바로 상품등록 페이지로 이동합니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">3. 내상품팔기클릭후 약관에 동의하시고 제품을 등록하시면 됩니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">4. 제품등록후 등록여부는 판매자홈(http:www.feelway.com/판매자아이디) 에서 확인이 가능합니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">5. 제품관리 주문관리 등은 마이페이지에 가시면 내용확인이 가능합니다.</span>', '0', '0', '0', '0', '2012-06-28 19:53:00', '0', '0', null, '0', null, null, null, '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('39', '0', '0', '167', '0', '통장입금된 주문의 환불처리', null, '', null, null, '0', '', '<div align=\"justify\">\r\n	1. 통장입금으로 결제된 주문의 환불처리는 구매자 계좌로 환불 입금을 의미합니다.<br />\r\n<br />\r\n2. 판매자의 판매취소 혹은 구매자의 반품에 의해 취소된 주문은, 구매자가 마이페이지-구매정보 페이지를 이용하여 환불요청을 할수 있습니다.<br />\r\n<br />\r\n3. 구매자의 회원정보에 기재된 계좌로 환불 지급됩니다.<br />\r\n<br />\r\n4. 금일 18:00 이전에 환불요청을 클릭하면, 익일 오후 12:00~16:00 사이에 환불지급됩니다.(근무일기준)<br />\r\n<br />\r\nex)&nbsp;<br />\r\n- 2007년7월10일 오후 17:30 에 환불요청하면, 2007년7월11일 오후에 지급됩니다.<br />\r\n- 2007년7월10일 오후 18:30 에 환불요청하면, 2007년7월12일 오후에 지급됩니다.<br />\r\n<br />\r\n5. 정산/환불지급 등의 입금업무는 전자금융거래법에 따라 결제중계업체인 이니시스의 시스템을 이용하기 때문에, 위 4항에 나오는 시간이외에 개별 처리는 불가능합니다.<br />\r\n</div>', '0', '0', '1', '0', '2012-06-28 19:53:00', '0', '0', null, '0', null, null, null, '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('40', '0', '0', '167', '0', '판매자에 의한 판매취소', null, '', null, null, '0', '', '<span style=\"color:#333333;font-family:돋움;\">판매자의 사정에 의해서 판매를 못하게 되는 경우 판매취소를 하셔야 합니다.&nbsp;</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">판매취소를 하면 판매자는 불이익을 받을수 있으며, 특히 정당하지 않은 이유로 판매취소하는 경우 판매보류 혹은 아이디정지 될 수도 있습니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">판매취소후 환불절차는 반품절차와 동일합니다.</span>', '0', '0', '0', '0', '2012-06-28 19:53:00', '0', '0', null, '0', null, null, null, '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('41', '0', '0', '167', '0', '신용카드로 결제된 주문의 환불처리는 어떻게 되나요?', null, '', null, null, '0', '', '<span style=\"color:#333333;font-family:돋움;\">1. 신용카드로 결제했는데 환불은 어떻게 받나요?&nbsp;</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">신용카드로 결제된 주문의 환불처리는 카드결제 취소를 의미합니다.</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">카드취소처리를 하면, 해당 결제는 없었던 것이 됩니다.</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">단, 카드사에서의 승인취소 확인은 카드사와 인터넷 전자지불 서비스센터의 확인 절차를 거치는 관계로 취소일로부터 근무일 기준 5일(토,공휴일 제외) 후 확인하실 수 있사오니 유의하십시오.</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">자세한 환불방법과 환불일자에 대한 자세한 사항은 해당 카드사로 문의해 주시기 바랍니다.&nbsp;</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">ex) 카드결제된 주문이 마이페이지-판매정보에 7월1일 환불완료로 체크되어 있으면, 해당 카드사에는 7/8일 에 확인하실수 있습니다.</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">직불카드도 마찬가지이며, 환급시기는 카드회사에 따라서 차이가 있습니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">2. 신용카드 결제 후 환불(카드취소)이 되었는데 카드대금 청구서가 왔어요.&nbsp;</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">신용카드로 결제한 상품이 반품완료되어 환불(카드취소)이 되면 신용카드 승인이 자동 취소됩니다.&nbsp;</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">환불된 거래목록에 대해 카드대금 청구서를 받으셨다면 카드취소 전에 해당 카드사에서 청구서를 작성하였기 때문입니다.</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">청구된 카드대금은 취소데이타를 접수한 해당 신용카드사에서 회원님께 환급, 승인취소, 한도복구를 해 드리니 환불방법과 환불일자에 대한 자세한 사항은 해당 카드사로 직접 문의하여 주시기 바랍니다.</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">카드사에서의 승인취소 확인은 취소일로부터 근무일 기준 5일(토,공휴일 제외) 후 확인하실 수 있습니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">3. 반품했는데 신용카드 대금이 청구되었어요.&nbsp;</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">반품을 하시더라도 판매자가 반품수령 후 반품접수확인을 해줘야 해당 거래가 취소되므로, 신용카드 대금이 청구될 수 있습니다.&nbsp;</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">이런 경우에는 판매자에게 반품접수확인을 요청하시기 바랍니다.&nbsp;</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">추후 판매자가 반품접수확인 후 구매자가 환불요청을 클릭할 경우 결제하셨던 카드는 자동으로 취소 처리됩니다.&nbsp;</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">카드사에서의 승인취소 확인은 취소일로부터 근무일 기준 5일(토,공휴일 제외) 후 확인하실 수 있습니다.</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">승인취소에 대한 환불처리는 카드사마다 다소 차이가 있으나, 대개의 경우 다음과 같이 처리됩니다.</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">대금 출금 전 카드취소 : 정상 승인취소됩니다.&nbsp;</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">(결제내역이 발생하였어도 실제 청구가 안되는 수가 있습니다.)&nbsp;</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">대금 출금 후 카드취소 : 익월에 해당 카드사에서 환불처리됩니다.</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">카드사별로 차이가 있을 수 있으니 보다 자세한 환불방법과 환불일자는 해당 카드사로 직접 문의해 주시기 바랍니다.&nbsp;</span><br />', '0', '0', '1', '0', '2012-06-28 19:53:00', '0', '0', null, '0', null, null, null, '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('42', '0', '0', '167', '0', '반품하고 싶어요', null, '', null, null, '0', '', '<span style=\"color:#333333;font-family:돋움;\">1. 반품절차</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">- 판매자와협의 : 판매자와 직접 연락하여 반품이유와 운송비 등에 관해서 협의</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">- 반품요청클릭 : 마이페이지-구매정보 에서 반품요청 버튼클릭</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">- 제품반송 : 판매자에게 정확한 반품주소를 확인하여 반송</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">- 판매자가 반품접수 체크하면, 구매자가 환불요청하고, 필웨이에서 환불처리</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">2. 반품은 \'전자상거래에 의한 소비자 보호에 관한 법률\' 과 필웨이 규정에 의거 판매자가 특별한 사유없이 반품을 거부하실수 없습니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">※ 반품기간 및 반품비 (전상법 제17조 및 필웨이규정)</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">단순 변심인 경우 : 물품 수령 후 7일 이내 반품가능, 반품비 구매자 부담&nbsp;</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">표시.광고 내용과 상이하거나, 물품 하자인 경우 : 물품 수령 후 3개월 이내 또는 그 사실을 안 날 또는 알 수 있었던 날로부터 30일 이내 반품가능, 반품비 판매자 부담 (단, 물품하자여부는 판매자가 입증해야 함)&nbsp;</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">※ 환불요청후 그 익일이나 2일후(근무일기준) 환불됩니다.</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">※ 반품이 불가능한 경우</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">다음과 같은 경우에는 판매자의 승인 없이 단순변심으로 인한 반품이 불가합니다.</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">-소비자의 책임 있는 사유로 물품이 훼손된 경우(판매자가 입증)</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">-시간 경과에 의해 재판매가 곤란할 정도로 물품 가치가 현저히 감소한 경우</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">-복제가 가능한 물품의 포장이 훼손된 경우에는 판매자의 의사에 반하여 환불처리는 불가 (예, 음반 및 CD 등)&nbsp;</span>', '0', '0', '1', '0', '2012-06-28 19:53:00', '0', '0', null, '0', null, null, null, '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('43', '0', '0', '167', '0', '반품이 잦은 구매자에 대한 제제 규정은 없나요?', null, '', null, null, '0', '', '<span style=\"color:#333333;font-family:돋움;\">1. 필웨이에서 판단하여 반품을 자주하는 구매자는 반품이유와 상황을 판단하여 경고후 강제로 회원자격을 박탈할 것입니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">2. 또 반품동의에 후한 판매자에게 높은 판매자평가점을 부여하여 많은 물건을 팔수 있도록 혜택을 드리겠습니다.</span>', '0', '0', '0', '0', '2012-06-28 19:53:00', '0', '0', null, '0', null, null, null, '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('44', '0', '0', '167', '0', '반품하면 반품 경비는 누가 부담하나요?', null, '', null, null, '0', '', '<span style=\"color:#333333;font-family:돋움;\">1. 제품의 하자가 있거나 등록한 내용과 다른 물건을 배송하는 등 판매자에게 귀책사유가 있는경우 판매자가 모든 반품 경비를 부담합니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">2. 구매자가 변심하여 반품하는 경우는 구매자가 배송/반품에 대한 경비를 부담하여야 합니다. 반품에 따른 경비는 구매자가 판매자게에 물건을 돌려보낼때 함께 넣어 보내야 빠른 환불처리가 가능합니다.&nbsp;</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">3. 반품된 상품에 대해 임의적인 재반송 및 수취거절시 판매자가 운송비를 추가 부담할 수 있으므로 구매자와 사전에 운송비 협의가 없으셨다면 반품을 수령 후에 구매자와 연락하여 운송비에 대해 상의하셔야 됩니다.&nbsp;</span><br />', '0', '0', '0', '0', '2012-06-28 19:53:00', '0', '0', null, '0', null, null, null, '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('45', '0', '0', '167', '0', '언제까지 반품 할수 있나요?', null, '', null, null, '0', '', '<span style=\"color:#333333;font-family:돋움;\">1. 물건에 하자가 있는 경우나 판매자에게 귀책사유가 있는 경우, 구매자가 구매결정을 클릭한 후에도 판매자는 반품에 응할 의무가 있습니다.&nbsp;</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">2. 구매자가 변심하여 반품하는 경우 신속히 \"반품요청\"을 클릭하시고 판매자에게 물건을 돌려보내야 합니다. \"구매결정\"을 클릭한 후에는 판매자에게 반품 의무가 없고, 구매자는 판매자와 협의후 반품할 수 있습니다. 배송과 반품에 따른 경비는 구매자 부담 합니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">3. 필웨이는 반품동의에 후한 판매자에게는 차후 판매자 신용도평가에서 높은 평가 점수를 부여하여 많은 물건을 팔수 있도로 적극협조하겠습니다.</span>', '0', '0', '0', '0', '2012-06-28 19:53:00', '0', '0', null, '0', null, null, null, '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('46', '0', '0', '167', '0', '반품가능 여부에 대해 알고 싶어요?', null, '', null, null, '0', '', '<span style=\"color:#333333;font-family:돋움;\">1.반품가능여부</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">전자상거래 일반 원칙에 따라 판매자가 등록한 모든 제품은 반품이 가능합니다.&nbsp;</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">반품접수가 확인되면 필웨이에서 구매자에게 환불처리 합니다. 거래가 완료되어 판매자에게 판매대금이 보내진 경우는 판매자가 환불처리 하여야 합니다.</span><br />\r\n<br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">2.다음의 경우는 판매자가 반품을 거절할수 있습니다.</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">* 구매자의 귀책사유나 사용으로 물건이 훼손된 경우</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">* 화장품 등 소모품인 경우 사용한 경우</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">* 구매결정을 클릭한 후&nbsp;</span>', '0', '0', '0', '0', '2012-06-28 19:53:00', '0', '0', null, '0', null, null, null, '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('47', '0', '0', '168', '0', '구매자가 상품수령 후 구매결정이 지연되고 있어요?', null, '', null, null, '0', '', '<span style=\"color:#333333;font-family:돋움;\">1. 구매자님과 연락을 하셔서 구매결정을 요청해 보시기 바랍니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">2. 구매자님과 연락이 되지 않거나, 연락은 되었으나, 구매결정한다고 하고 계속 미루고 있는 경우에는</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">- 마이페이지-판매중인주문내역에서 [구매결정지연시-필웨이에요청하기] 버튼을 클릭하셔서 요청해 주시기 바랍니다.&nbsp;</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">- 필웨이에서 내용접수하고, 구매자님과 연락하여 구매결정처리합니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">- 필웨이측에서 구매자와 계속 연락이 되지 않으면, 배송택배번호 조회하여, 구매자가 제품 받으신 날부터 7일이상 경과후, 직권 구매결정 처리됩니다.</span>', '0', '0', '1', '0', '2012-06-28 19:53:00', '0', '0', null, '0', null, null, null, '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('48', '0', '0', '168', '0', '[판매자]물건이 판매되었는데 언제 정산되나요?', null, '', null, null, '0', '', '<span style=\"color:#333333;font-family:돋움;\">1. 지급된 금액은 마이페이지-기타-정산/환불 지급내역 에서 확인하실수 있습니다.(2007년 7월 1일 이후 지급된 내역)</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">2. 1일 1회 지급으로 회원이 받을금액 전체가 한꺼번에 입금됩니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">3. 금일 18시 이전에 정산/환불요청을 하면 익일 오후 12:00~16:00 사이에 지급됩니다(근무일기준).</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">ex)&nbsp;</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">- 2007년7월10일 오후 17:30 에 환불요청하면, 2007년7월11일 오후에 지급됩니다.</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">- 2007년7월10일 오후 18:30 에 환불요청하면, 2007년7월12일 오후에 지급됩니다.</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">※ 신용카드로 결제된 경우 정산일은, 위의 조건을 만족하면서, 결제일로 부터 9일이 경과해야 합니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">4. 기존에 입금받던 계좌를 수정하면, 입금이 하루 지연됩니다.&nbsp;</span><br />', '0', '0', '0', '0', '2012-06-28 19:53:00', '0', '0', null, '0', null, null, null, '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('49', '0', '0', '169', '0', 'e머니 사용 및 충전', null, '', null, null, '0', '', '<span style=\"color:#333333;font-family:돋움;\">1. e머니는 상품등록시 등급별 갯수 초과등록시, 상품목록위치갱신시, 플러스 등록시 등에 사용됩니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">2. e머니는 미리 결제를하고 사용하실수도 있고, 마이너스로 사용하고 난후, 차후에 충전하실수 있습니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">3. 마이너스 e머니란? 판매자가 물품등록시 이용할 수 있도록 회사가 일정 금액의 범위 내에서 제공하는 신용으로서 회사에 대한 미결제수수료액을 말합니다.&nbsp;</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">4. 마이너스 e머니 금액은 판매등급에 따라 회사가 제공한 일정금액을 한도로 사용할 수 있습니다.&nbsp;</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">5. 판매등급에 따른 한도금액은 변경될 수 있으며, 별도의 화면에 게재합니다.&nbsp;</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">6. 마이너스 eMoney는 판매성사에 의한 물품대금 송금시 대금의 10%의 범위내에서 조금씩 공제되어 충당되거나 이머니 적립을 통하여 결제할 수 있습니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">7. e-money는 판매자의 귀책사유로 인한 삭제인 경우 환불되지 않습니다.</span><br />', '0', '0', '0', '0', '2012-06-28 19:53:00', '0', '0', null, '0', null, null, null, '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('50', '0', '0', '169', '0', '모든 수수료에 대해서 알고 싶어요?', null, '', null, null, '0', '', '<span style=\"color:#333333;font-family:돋움;\">1. 중개수수료</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">중고품 7.9%, 새제품 9.9% , 100만원 초과분에대해서는 5.9% 일괄 적용</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">ex) 중고품 300만원 상품 판매후 판매수수료는</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">(100만원 × 7.9%) + (200만원 × 5.9%) = 79,000 + 118,000 = 197,000 원</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">2. 플러스등록(빠른팔기옵션)</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">- 수수료는 (10,000원/개, 20일간 유효)</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">3. 등록수수료: 무료/유료(2,000원)</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">- 초보판매자: 판매중이 물건 10개까지 무료</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">- 일반판매자: 판매중이 물건 30개까지 무료</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">- 우수판매자: 판매중이 물건 500개까지 무료</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">- 추천판매자: 무한등록</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">- 샵회원 : 무한등록</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">※ 플러스 등록 수수료와 등록수수료는 e머니로 결제되는 수수료 입니다.</span>', '0', '0', '1', '0', '2012-06-28 19:53:00', '0', '0', null, '0', null, null, null, '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('51', '0', '0', '169', '0', '플러스등록에 추가', null, '', null, null, '0', '', '<span style=\"color:#333333;font-family:돋움;\">플러스등록(빠른팔기옵션) 비용은 10000원이고&nbsp;</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">한번 등록시 20일간 유효합니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">플러스등록비는 등록상품삭제 등 판매자의 귀책사유로 인한 삭제인 경우 환불되지 않습니다.</span>', '0', '0', '0', '0', '2012-06-28 19:53:00', '0', '0', null, '0', null, null, null, '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('52', '0', '0', '169', '0', '물품 등록은 무료입니까?', null, '', null, null, '0', '', '<span style=\"color:#333333;font-family:돋움;\">제품등록은 기본적으로 무료이며, 등급에 따라 무료로 등록할수 있는 개수가 정해져 있습니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">초보판매자: 판매중인 제품 10개까지 무료</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">일반판매자: 판매중인 제품 30개까지 무료</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">우수판매자: 판매중인 제품 500개까지 무료</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">추천판매자: 무한등록</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">shop판매자 : 무한등록</span>', '0', '0', '0', '0', '2012-06-28 19:53:00', '0', '0', null, '0', null, null, null, '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('53', '0', '0', '170', '0', '모조품 판매자를 어떤 방법으로 색출하나요?', null, '', null, null, '0', '', '<span style=\"color:#333333;font-family:돋움;\">1. 필웨이에서 물건을 판매한 사람에 대한 정보는 회원 탈퇴후에도 필웨이에 6개월간 남아 있게 됩니다. 이 자료는 유사시에 경찰의 요청에 따라 경찰에 넘겨지게 됩니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">2. 남겨지는 신상정보는 이름, 주민번호, 접속아이피, 입금받은 계좌, 물건등록한접속아이피, 로그인 접속아이피, 판매자에게 물건을 구매한 모든 구매자 정보 등입니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">3. 따라서 모조품을 판매한 사람은 경찰의 수사를 피해 갈수 없게 됩니다.</span>', '0', '0', '0', '0', '2012-06-28 19:53:00', '0', '0', null, '0', null, null, null, '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('54', '0', '0', '170', '0', '모조품 판매자 처벌법규(상표법93조)', null, '', null, null, '0', '', '<span style=\"color:#333333;font-family:돋움;\">모조품 판매는 형사처벌의 대상입니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">1. 상표법93조: 상표법위반의 범죄행위는 7년이하의 징역 1억원 이하의 벌금형에 처해집니다.(상표법 93조)</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">모조품임을 모르고 판매한 경우도 처벌을 받으며, 알고 판매한경우는 사기죄의 적용도 받습니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">2. 신상이 공개된 시장에서 모조품을 판매한는 것은&nbsp;</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">경찰수사대상 일순위를 자처하는 행위입니다</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">3. 알고 판매하건 모르고 판매하건 적발시 처벌을 피할수 없습니다. 모든 판매자는 주의하셔서 뜻하지 않은 처벌을 받는 경우가 없기 바랍니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">4. 필웨이는 모조품 판매자에대해서는 영업방해자로 간주하여 고발조치 하겠습니다.</span>', '0', '0', '0', '0', '2012-06-28 19:53:00', '0', '0', null, '0', null, null, null, '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('55', '0', '0', '171', '0', '아이디 변경은 가능한가요?', null, '', null, null, '0', '', '<span style=\"color:#333333;font-family:돋움;\">아이디 변경은 불가능합니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">회원정보 중 실명확인된 이름과 주민등록번호, 아이디는 변경되지 않습니다.</span>', '0', '0', '0', '0', '2012-06-28 19:53:00', '0', '0', null, '0', null, null, null, '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('56', '0', '0', '171', '0', '회원가입은 어떻게 하나요?', null, '', null, null, '0', '', '<span style=\"color:#333333;font-family:돋움;\">필웨이 우측상단에 보시면 \"회원가입\" 메뉴가 있습니다.&nbsp;</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">등록내용을 기재하시고 회원가입을 클릭하시면 즉시 회원가입이 됩니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">회원가입시에는 반드시 본인실명과 주민번호로 가입하셔야 합니다.</span><br />\r\n<span style=\"color:#333333;font-family:돋움;\">상품거래를 위해서 회원가입하시는 경우라면, 반드시 계좌정보를 기재해 주시기 바랍니다.</span>', '0', '0', '0', '0', '2012-06-28 19:53:00', '0', '0', null, '0', null, null, null, '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('57', '0', '0', '171', '0', '회원탈퇴후 다시 회원가입이 안되요?', null, '', null, null, '0', '', '<span style=\"color:#333333;font-family:돋움;\">회원탈퇴 하신 경우는 다시 회원가입을 하실때는 필웨이로 연락을 취하셔서 이유를 소명하여야 합니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">또 이미 판매하신 물건이 있는 경우는 물건을 판매한지 2개월이 지나기 전까지는 회원탈퇴를 하셔도 바로 회원탈퇴처리가 되지 않고 회원탈퇴대기 상태를 유지하게 됩니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">회원탈퇴대기 상태에서는 필웨이의 서비스를 이용하실수가 없습니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">불량제품 등을 팔고 바로 회원탈퇴하여 회원정보를 삭제해버리는 경우를 막기 위한 조치입니다.&nbsp;</span>', '0', '0', '0', '0', '2012-06-28 19:53:00', '0', '0', null, '0', null, null, null, '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('58', '0', '0', '171', '0', '\"회원탈퇴\"는 어떻게 하나요?', null, '', null, null, '0', '', '<span style=\"color:#333333;font-family:돋움;\">로그인후 myPage로 가시면 회원탈퇴기능이 있습니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">회원탈퇴후 동일한 아이디로 재가입은 불가능합니다.</span>', '0', '0', '0', '0', '2012-06-28 19:53:00', '0', '0', null, '0', null, null, null, '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('59', '0', '0', '171', '0', '실명확인 안되요?', null, '', null, null, '0', '', '<span style=\"color:#333333;font-family:돋움;\">실명확인 서비스는 한국신용평가(주)와 협력합니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">실명확인이 안되는 경우는 한국신용평가원에 회원의 정보가 없는 경우입니다.&nbsp;</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">미성년자이거나 사회생활을 거의하지 않는 경우 한국신용평가원에 회원님의 정보 없을수 있습니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">한신평정보콜센터(http://www.namecheck.co.kr/per/nr1/pn100.asp) 로 가셔서 확인/신청하신후에 다시 가입하시면 됩니다</span>', '0', '0', '0', '0', '2012-06-28 19:53:00', '0', '0', null, '0', null, null, null, '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('60', '0', '0', '172', '0', '안전거래를 위하여 필웨이의 조치를 취하나요?', null, '', null, null, '0', '', '<span style=\"color:#333333;font-family:돋움;\">1.판매자 통장으로 직접입금하는 직거래는 엄격히 규제합니다. 적발시 회원자격이 박탈됩니다. 직거래의 경우 돈을 먼저보내고 물건을 못받는 경우나 물건을 먼저 보내고 돈을 못받는 경우가 있기 때문입니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">직거래로 물건을 구매한 경우 필웨이는 어떠한 책임도 지지 않습니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">2. 판매자의 모든 로그는 필웨이에 남습니다. 접속아이피, 판매한 물건 목록, 구매자 명단, 불량등록 건수, 신고접수된 현황 등이 필웨이에 6개월간 저장됩니다.&nbsp;</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">유사시에 이 자료등은 경찰에 넘겨지게 됩니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">3.판매자는 반드시 실명계좌를 사용하여야 합니다. 차명 계좌인 경우 대금 정산이 이루어 지지 않습니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">4. 필웨이를 통해서 판매하시는 판매자는 모든 제품에 대해 반품을 허용하여야 합니다.&nbsp;</span><br />', '0', '0', '0', '0', '2012-06-28 19:53:00', '0', '0', null, '0', null, null, null, '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('61', '0', '0', '172', '0', '차명계좌는 입금이 안되나요?', null, '', null, null, '0', '', '<span style=\"color:#333333;font-family:돋움;\">본인 명의의 통장이 아닌경우 판매대금 등을 입금받을 수 없습니다.&nbsp;</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">차명계좌를 이용하여 구매자와 필웨이를 기망하는 행위를 사전에 차단하여 안전거래가 이루어지게 하기 위한 조치입니다.</span><br />\r\n<br />\r\n<span style=\"color:#333333;font-family:돋움;\">차명계좌인 경우 가족에 한해서 주민등록등본에 회원아이디, 차명계좌 및 사유를 자필로 소명하고 필웨이 fax로 보내주시면 확인 후 입금 받을 수 있습니다.</span><br />', '0', '0', '0', '0', '2012-06-28 19:53:00', '0', '0', null, '0', null, null, null, '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('62', '0', '0', '173', '0', '상품등록시 사은품(필폰) 등록하기', null, '', null, null, '0', '', '<div align=\"justify\">\r\n	1. 상품등록시 사은품으로 필폰을 등록하실수 있습니다.<br />\r\n<br />\r\n2. 반품률 감소, 구매결정 클릭률 향상에 도움에 됩니다.<br />\r\n<br />\r\n3. 사은품은 필웨이쿠폰(필폰)이며 1개당 금액은 1,000원 입니다.<br />\r\n<br />\r\n4. 사은품은 상품금액의 3% 이내(최소1개, 최대20개)로 등록할수 있습니다.<br />\r\n<br />\r\n5. 사은품은 구매자가 구매하신후 구매결정할때 발행됩니다.(구매자가 구매결정하지 않고, 필웨이에서 직권 구매결정하는 경우에는 사은품이 지급되지 않습니다)&nbsp;<br />\r\n<br />\r\n6. 사은품 발행시, 판매자가 보유중인 필폰이 없거나 모자르면 그 금액만큼 정산금에서 차감됩니다.\r\n</div>', '0', '0', '0', '0', '2012-06-28 19:53:00', '0', '0', null, '0', null, null, null, '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('63', '0', '0', '173', '0', '필폰(필웨이쿠폰)이란?', null, '', null, null, '0', '', '<div align=\"justify\">\r\n	1. 필폰은 상품구매하실때에 사용하실수 있으며, 1개는 1,000원과 같습니다.<br />\r\n<br />\r\n2. 필폰을 보유한 회원이 상품을 주문할때, 주문 첫단계에서 필폰 사용여부와 개수를 체크하여, 필폰을 사용하실수 있습니다.<br />\r\n<br />\r\n3. 주문에 사용시 최대 사용가능한 필폰은 상품가격의 50% 까지 입니다.<br />\r\n<br />\r\n4. 필폰은 회원간에 선물할수 있습니다.<br />\r\n<br />\r\n5. 필폰은 주로 필웨이에서 포상으로 배포하거나, 사은품으로 발행되며, 현금으로 환불되지 않습니다.<br />\r\n<br />\r\n6. 포상은 지식활동과 판매활동, 신고활동 등에 대해서 포상되며, 필폰을 판매진작을 위해 구매자에게 선물할수 있습니다.<br />\r\n<br />\r\n7. 발행된 필폰은, 사용한 주문이 정산완료될때, 사용종료됩니다.<br />\r\n<br />\r\n8. 필폰을 사용한 주문이 환불처리되면, 해당 필폰은 다시 사용가능으로 변경됩니다.\r\n</div>', '0', '0', '0', '0', '2012-06-28 19:53:00', '0', '0', null, '0', null, null, null, '0', '0', '0', null, null, null);
INSERT INTO `stcms_news` VALUES ('64', '0', '0', '174', '0', 'testsetsteestet', null, null, null, null, '0', null, 'testsetsteestet', '0', '0', '0', '0', '2012-07-24 17:18:29', '3', '5', 'weiwei001', '0', null, null, null, '91', '1', '0', null, null, '123.123.123.123');
INSERT INTO `stcms_news` VALUES ('65', '0', '0', '174', '0', '34535', null, null, null, null, '0', null, '3534535', '0', '0', '0', '0', '2012-07-23 17:18:32', '6', '5', 'weiwei001', '0', null, null, null, '91', '0', '0', null, null, '123.321.123.321');
INSERT INTO `stcms_news` VALUES ('66', '0', '0', '174', '0', 'sadasdf', null, null, null, null, '0', null, 'asdfasdf', '0', '0', '0', '0', '2012-07-24 17:20:10', '10', '5', 'weiwei001', '0', null, null, null, '91', '1', '0', null, null, '58.245.109.58');
INSERT INTO `stcms_news` VALUES ('67', '0', '0', '174', '0', '234234', null, null, null, null, '0', null, '234', '0', '0', '0', '0', '2012-07-24 21:43:54', '1', '5', 'weiwei001', '0', null, null, null, '90', '1', '0', null, null, '58.245.109.58');
INSERT INTO `stcms_news` VALUES ('68', '0', '0', '174', '0', '234243', null, null, null, null, '0', null, '23423434', '0', '0', '0', '0', '2012-07-25 14:02:13', '1', '5', 'weiwei001', '3', 'yjliwei', null, null, '86', '1', '0', null, null, '119.50.7.190');
INSERT INTO `stcms_news` VALUES ('69', '0', '0', '174', '0', '456456', null, null, null, null, '0', null, '345345', '0', '0', '0', '0', '2012-07-25 14:02:22', '1', '5', 'weiwei001', '3', 'yjliwei', null, null, '86', '0', '0', null, null, '119.50.7.190');
INSERT INTO `stcms_news` VALUES ('70', '0', '0', '0', '0', '3456346', null, null, null, null, '0', null, '3456356', '0', '0', '0', '0', '2012-07-25 00:00:00', '1', '3', 'yjliwei', '0', null, null, null, '0', '0', '69', null, null, null);
INSERT INTO `stcms_news` VALUES ('71', '0', '0', '0', '0', '67896879', null, null, null, null, '0', null, '68796789', '0', '0', '0', '0', '2012-07-25 00:00:00', '1', '3', 'yjliwei', '0', null, null, null, '0', '0', '69', null, null, null);
INSERT INTO `stcms_news` VALUES ('72', '0', '0', '174', '0', 'test', null, null, null, null, '0', null, 'test', '0', '0', '0', '0', '2012-07-25 14:29:15', '1', '3', 'yjliwei', '0', null, null, null, '0', '1', '68', null, null, null);
INSERT INTO `stcms_news` VALUES ('73', '0', '0', '174', '0', '2435243', null, null, null, null, '0', null, '52345245', '0', '0', '0', '0', '2012-07-25 20:51:24', '1', '3', 'yjliwei', '5', 'weiwei001', null, null, '91', '0', '0', null, null, '119.50.7.190');
INSERT INTO `stcms_news` VALUES ('74', '159', '30', '43', '1', '바드싲개키디가미두애123123', null, 'weiwei001', null, null, '0', null, '바드싲개키디가미두애', '0', '0', '0', '0', '2012-07-26 12:10:35', '10', '5', 'weiwei001', '0', null, null, null, '0', '0', '0', 'http://hdplus.sutoo.com/?u=weiwei001', null, null);
INSERT INTO `stcms_news` VALUES ('75', '76', '34', '82', '5', '정보/뉴스로 반복적으로 등록하는 경우', null, 'weiwei001', null, null, '0', null, '정보/뉴스로 반복적으로 등록하는 경우', '0', '0', '0', '0', '2012-07-26 12:12:21', '31', '5', 'weiwei001', '0', null, null, null, '0', '0', '0', 'http://hdplus.sutoo.com/?u=weiwei001', null, null);
INSERT INTO `stcms_news` VALUES ('78', '0', '0', '0', '0', '2345', null, 'weiwei001', null, null, '0', null, '23452345', '0', '0', '0', '0', '2012-07-26 14:54:22', '1', '5', 'weiwei001', '0', null, null, null, '0', '0', '75', null, 'QQ截图20120726145415.jpg', '119.50.7.190');
INSERT INTO `stcms_news` VALUES ('82', '0', '0', '0', '0', '3452345', null, 'yjliwei', null, null, '0', null, '2345245', '0', '0', '0', '0', '2012-07-26 15:48:36', '1', '3', 'yjliwei', '0', null, null, null, '0', '0', '79', 'hdplus.sutoo.com/?u=yjliwei', './newspic/201207/61f62f1e35dcdac939f863a9c25f9b207864.jpg', '119.50.7.190');

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
INSERT INTO `stcms_roles` VALUES ('3', '超级管理员', null, null, '1');
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
INSERT INTO `stcms_sessions` VALUES ('bm5npk2cpg716mrd48tatn5an3', '1346091331', '127.0.0.1', 'user|a:4:{s:8:\"zipcode1\";s:0:\"\";s:8:\"zipcode2\";N;s:8:\"address1\";s:0:\"\";s:8:\"address2\";N;}auth_code|s:6:\"990817\";admin|a:11:{s:3:\"uid\";s:1:\"2\";s:8:\"username\";s:5:\"sutoo\";s:8:\"realname\";s:9:\"刘利伟\";s:8:\"password\";s:32:\"ea26d421251bcccf0dd656e88c8dac9e\";s:6:\"roleid\";s:1:\"3\";s:5:\"intro\";N;s:8:\"lasttime\";s:10:\"1345023151\";s:6:\"lastip\";s:14:\"58.245.105.173\";s:8:\"rolename\";s:15:\"超级管理员\";s:9:\"powerlist\";N;s:7:\"usernum\";s:1:\"1\";}');

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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stcms_sites
-- ----------------------------
INSERT INTO `stcms_sites` VALUES ('1', 'HDPLUS', '127.0.0.1', 'a:3:{s:4:\"news\";s:1:\"1\";s:3:\"pic\";s:1:\"1\";s:4:\"shop\";s:1:\"1\";}', 'default', 'HDPLUS');
INSERT INTO `stcms_sites` VALUES ('2', '宠物一帮', 'localhost', 'a:1:{s:4:\"news\";s:1:\"1\";}', 'pet', 'Pet');

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
