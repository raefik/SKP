/*
Navicat MySQL Data Transfer

Source Server         : 103.8.25.8
Source Server Version : 50537
Source Host           : 103.8.25.8:3306
Source Database       : secumcom_ges2014production

Target Server Type    : MYSQL
Target Server Version : 50537
File Encoding         : 65001

Date: 2014-09-07 13:57:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `chats`
-- ----------------------------
DROP TABLE IF EXISTS `chats`;
CREATE TABLE `chats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of chats
-- ----------------------------
INSERT INTO `chats` VALUES ('1', 'hotel', 'aaaa', '2:21 AM', '2014-07-12 02:21:32', '2014-07-12 02:21:32');
INSERT INTO `chats` VALUES ('2', 'hotel', 'sadas', '2:21 AM', '2014-07-12 02:21:38', '2014-07-12 02:21:38');
INSERT INTO `chats` VALUES ('3', 'hotel', 'ddsfsdf', '2:51 AM', '2014-07-12 02:51:25', '2014-07-12 02:51:25');
INSERT INTO `chats` VALUES ('4', 'transport', 'Apaaaa', '2:51 AM', '2014-07-12 02:51:40', '2014-07-12 02:51:40');
INSERT INTO `chats` VALUES ('5', 'hotel', 'Hhhh', '10:45 PM', '2014-07-13 22:45:54', '2014-07-13 22:45:54');
INSERT INTO `chats` VALUES ('6', 'transport', 'haaa', '10:46 PM', '2014-07-13 22:46:04', '2014-07-13 22:46:04');
INSERT INTO `chats` VALUES ('7', 'transport', 'zzzz', '10:46 PM', '2014-07-13 22:46:20', '2014-07-13 22:46:20');
INSERT INTO `chats` VALUES ('8', 'hotel2', 'Halo', '12:18 AM', '2014-07-14 00:18:58', '2014-07-14 00:18:58');

-- ----------------------------
-- Table structure for `eventdates`
-- ----------------------------
DROP TABLE IF EXISTS `eventdates`;
CREATE TABLE `eventdates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of eventdates
-- ----------------------------
INSERT INTO `eventdates` VALUES ('1', '2014-09-07', '2014-07-10 18:00:07', '2014-07-10 18:00:07');
INSERT INTO `eventdates` VALUES ('2', '2014-09-08', '2014-07-10 18:14:40', '2014-07-10 18:14:40');

-- ----------------------------
-- Table structure for `gesparticipants`
-- ----------------------------
DROP TABLE IF EXISTS `gesparticipants`;
CREATE TABLE `gesparticipants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `participanttype_code` varchar(255) DEFAULT NULL,
  `reg_id` int(11) DEFAULT NULL,
  `rfid` varchar(255) DEFAULT NULL,
  `hotelstatus_code` varchar(255) DEFAULT NULL,
  `transportstatus_code` varchar(255) DEFAULT NULL,
  `committeestatus_code` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `registrationstatus_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of gesparticipants
-- ----------------------------
INSERT INTO `gesparticipants` VALUES ('1', 'DLG', '21', '0004030185', null, null, null, '2014-09-07 12:13:30', '2014-09-07 14:21:31', 'ACT');
INSERT INTO `gesparticipants` VALUES ('2', 'SPK', '5', null, 'PE', 'ACK', 'PE', '2014-07-13 22:44:55', '2014-07-13 22:44:55', 'PR');
INSERT INTO `gesparticipants` VALUES ('3', 'DLG', '14', null, 'PE', 'PE', 'PE', '2014-07-14 00:18:38', '2014-07-14 00:18:38', 'PR');

-- ----------------------------
-- Table structure for `hotels`
-- ----------------------------
DROP TABLE IF EXISTS `hotels`;
CREATE TABLE `hotels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hotels
-- ----------------------------
INSERT INTO `hotels` VALUES ('1', 'TDKL', 'TRADERS HOTEL KUALA LUMPUR', null, '03-23329888', '2014-07-10 16:00:02', '2014-07-10 16:00:02');
INSERT INTO `hotels` VALUES ('2', 'RKLH', 'RENAISSANCE KUALA LUMPUR HOTEL', null, '03-21622233', '2014-07-10 16:00:02', '2014-07-10 16:00:02');
INSERT INTO `hotels` VALUES ('3', 'IKHSKL', 'IMPIANA KLCC HOTEL & SPA KUALA LUMPUR', null, '03-21471111', '2014-07-10 16:00:03', '2014-07-10 16:00:03');
INSERT INTO `hotels` VALUES ('4', 'GYKLH', 'GRAND YATT KUALA LUMPUR HOTEL', null, '03-21821234', '2014-07-10 16:00:03', '2014-07-10 16:00:03');
INSERT INTO `hotels` VALUES ('5', 'TRBKLH', 'THE ROYAL BINTANG KUALA LUMPUR HOTEL', null, '03-21439898', '2014-07-10 16:00:03', '2014-07-10 16:00:03');
INSERT INTO `hotels` VALUES ('6', 'RIHKL', 'RADIUS INTERNATIONAL HOTEL KUALA LUMPUR', null, '03-27153888', '2014-07-10 16:00:03', '2014-07-10 16:00:03');
INSERT INTO `hotels` VALUES ('7', 'CRSSKL', 'CROWN REGENCY SERVICED SUITES KUALA LUMPUR', null, '03-21623888', '2014-07-10 16:00:04', '2014-07-10 16:00:04');
INSERT INTO `hotels` VALUES ('8', 'OTH', 'OTHERS', null, '', '2014-07-10 16:00:04', '2014-07-10 16:00:04');

-- ----------------------------
-- Table structure for `nationalities`
-- ----------------------------
DROP TABLE IF EXISTS `nationalities`;
CREATE TABLE `nationalities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of nationalities
-- ----------------------------
INSERT INTO `nationalities` VALUES ('1', 'AFG', 'AFGHANISTAN', '2014-07-10 16:00:04', '2014-07-10 16:00:04');
INSERT INTO `nationalities` VALUES ('2', 'ALB', 'ALBANIA', '2014-07-10 16:00:04', '2014-07-10 16:00:04');
INSERT INTO `nationalities` VALUES ('3', 'DZA', 'ALGERIA', '2014-07-10 16:00:05', '2014-07-10 16:00:05');
INSERT INTO `nationalities` VALUES ('4', 'ASM', 'AMERICAN SAMOA', '2014-07-10 16:00:05', '2014-07-10 16:00:05');
INSERT INTO `nationalities` VALUES ('5', 'AND', 'ANDORRA', '2014-07-10 16:00:05', '2014-07-10 16:00:05');
INSERT INTO `nationalities` VALUES ('6', 'AGO', 'ANGOLA', '2014-07-10 16:00:06', '2014-07-10 16:00:06');
INSERT INTO `nationalities` VALUES ('7', 'AIA', 'ANGUILLA', '2014-07-10 16:00:06', '2014-07-10 16:00:06');
INSERT INTO `nationalities` VALUES ('8', 'ATA', 'ANTARCTICA', '2014-07-10 16:00:07', '2014-07-10 16:00:07');
INSERT INTO `nationalities` VALUES ('9', 'ATG', 'ANTIGUA AND BARBUDA', '2014-07-10 16:00:07', '2014-07-10 16:00:07');
INSERT INTO `nationalities` VALUES ('10', 'ARG', 'ARGENTINA', '2014-07-10 16:00:07', '2014-07-10 16:00:07');
INSERT INTO `nationalities` VALUES ('11', 'ARM', 'ARMENIA', '2014-07-10 16:00:08', '2014-07-10 16:00:08');
INSERT INTO `nationalities` VALUES ('12', 'ABW', 'ARUBA', '2014-07-10 16:00:08', '2014-07-10 16:00:08');
INSERT INTO `nationalities` VALUES ('13', 'AUS', 'AUSTRALIA', '2014-07-10 16:00:08', '2014-07-10 16:00:08');
INSERT INTO `nationalities` VALUES ('14', 'AUT', 'AUSTRIA', '2014-07-10 16:00:08', '2014-07-10 16:00:08');
INSERT INTO `nationalities` VALUES ('15', 'AZE', 'AZERBAIJAN', '2014-07-10 16:00:08', '2014-07-10 16:00:08');
INSERT INTO `nationalities` VALUES ('16', 'BHS', 'BAHAMAS', '2014-07-10 16:00:08', '2014-07-10 16:00:08');
INSERT INTO `nationalities` VALUES ('17', 'BHR', 'BAHRAIN', '2014-07-10 16:00:08', '2014-07-10 16:00:08');
INSERT INTO `nationalities` VALUES ('18', 'BGD', 'BANGLADESH', '2014-07-10 16:00:08', '2014-07-10 16:00:08');
INSERT INTO `nationalities` VALUES ('19', 'BRB', 'BARBADOS', '2014-07-10 16:00:09', '2014-07-10 16:00:09');
INSERT INTO `nationalities` VALUES ('20', 'BLR', 'BELARUS', '2014-07-10 16:00:09', '2014-07-10 16:00:09');
INSERT INTO `nationalities` VALUES ('21', 'BEL', 'BELGIUM', '2014-07-10 16:00:09', '2014-07-10 16:00:09');
INSERT INTO `nationalities` VALUES ('22', 'BLZ', 'BELIZE', '2014-07-10 16:00:09', '2014-07-10 16:00:09');
INSERT INTO `nationalities` VALUES ('23', 'BEN', 'BENIN', '2014-07-10 16:00:09', '2014-07-10 16:00:09');
INSERT INTO `nationalities` VALUES ('24', 'BMU', 'BERMUDA', '2014-07-10 16:00:09', '2014-07-10 16:00:09');
INSERT INTO `nationalities` VALUES ('25', 'BTN', 'BHUTAN', '2014-07-10 16:00:09', '2014-07-10 16:00:09');
INSERT INTO `nationalities` VALUES ('26', 'BOL', 'BOLIVIA', '2014-07-10 16:00:10', '2014-07-10 16:00:10');
INSERT INTO `nationalities` VALUES ('27', 'BIH', 'BOSNIA AND HERZEGOWINA', '2014-07-10 16:00:10', '2014-07-10 16:00:10');
INSERT INTO `nationalities` VALUES ('28', 'BWA', 'BOTSWANA', '2014-07-10 16:00:10', '2014-07-10 16:00:10');
INSERT INTO `nationalities` VALUES ('29', 'BVT', 'BOUVET ISLAND', '2014-07-10 16:00:10', '2014-07-10 16:00:10');
INSERT INTO `nationalities` VALUES ('30', 'BRA', 'BRAZIL', '2014-07-10 16:00:10', '2014-07-10 16:00:10');
INSERT INTO `nationalities` VALUES ('31', 'IOT', 'BRITISH INDIAN OCEAN TERRITORY', '2014-07-10 16:00:10', '2014-07-10 16:00:10');
INSERT INTO `nationalities` VALUES ('32', 'BRN', 'BRUNEI DARUSSALAM', '2014-07-10 16:00:10', '2014-07-10 16:00:10');
INSERT INTO `nationalities` VALUES ('33', 'BGR', 'BULGARIA', '2014-07-10 16:00:10', '2014-07-10 16:00:10');
INSERT INTO `nationalities` VALUES ('34', 'BFA', 'BURKINA FASO', '2014-07-10 16:00:10', '2014-07-10 16:00:10');
INSERT INTO `nationalities` VALUES ('35', 'BDI', 'BURUNDI', '2014-07-10 16:00:11', '2014-07-10 16:00:11');
INSERT INTO `nationalities` VALUES ('36', 'KHM', 'CAMBODIA', '2014-07-10 16:00:11', '2014-07-10 16:00:11');
INSERT INTO `nationalities` VALUES ('37', 'CMR', 'CAMEROON', '2014-07-10 16:00:11', '2014-07-10 16:00:11');
INSERT INTO `nationalities` VALUES ('38', 'CAN', 'CANADA', '2014-07-10 16:00:11', '2014-07-10 16:00:11');
INSERT INTO `nationalities` VALUES ('39', 'CPV', 'CAPE VERDE', '2014-07-10 16:00:11', '2014-07-10 16:00:11');
INSERT INTO `nationalities` VALUES ('40', 'CYM', 'CAYMAN ISLANDS', '2014-07-10 16:00:11', '2014-07-10 16:00:11');
INSERT INTO `nationalities` VALUES ('41', 'CAF', 'CENTRAL AFRICAN REPUBLIC', '2014-07-10 16:00:11', '2014-07-10 16:00:11');
INSERT INTO `nationalities` VALUES ('42', 'TCD', 'CHAD', '2014-07-10 16:00:11', '2014-07-10 16:00:11');
INSERT INTO `nationalities` VALUES ('43', 'CHL', 'CHILE', '2014-07-10 16:00:11', '2014-07-10 16:00:11');
INSERT INTO `nationalities` VALUES ('44', 'CHN', 'CHINA', '2014-07-10 16:00:12', '2014-07-10 16:00:12');
INSERT INTO `nationalities` VALUES ('45', 'CXR', 'CHRISTMAS ISLAND', '2014-07-10 16:00:12', '2014-07-10 16:00:12');
INSERT INTO `nationalities` VALUES ('46', 'CCK', 'COCOS (KEELING) ISLANDS', '2014-07-10 16:00:12', '2014-07-10 16:00:12');
INSERT INTO `nationalities` VALUES ('47', 'COL', 'COLOMBIA', '2014-07-10 16:00:12', '2014-07-10 16:00:12');
INSERT INTO `nationalities` VALUES ('48', 'COM', 'COMOROS', '2014-07-10 16:00:12', '2014-07-10 16:00:12');
INSERT INTO `nationalities` VALUES ('49', 'COG', 'CONGO', '2014-07-10 16:00:12', '2014-07-10 16:00:12');
INSERT INTO `nationalities` VALUES ('50', 'COD', 'CONGO, THE DRC', '2014-07-10 16:00:12', '2014-07-10 16:00:12');
INSERT INTO `nationalities` VALUES ('51', 'COK', 'COOK ISLANDS', '2014-07-10 16:00:12', '2014-07-10 16:00:12');
INSERT INTO `nationalities` VALUES ('52', 'CRI', 'COSTA RICA', '2014-07-10 16:00:12', '2014-07-10 16:00:12');
INSERT INTO `nationalities` VALUES ('53', 'CIV', 'COTE D\'IVOIRE', '2014-07-10 16:00:12', '2014-07-10 16:00:12');
INSERT INTO `nationalities` VALUES ('54', 'HRV', 'CROATIA (local name: Hrvatska)', '2014-07-10 16:00:13', '2014-07-10 16:00:13');
INSERT INTO `nationalities` VALUES ('55', 'CUB', 'CUBA', '2014-07-10 16:00:13', '2014-07-10 16:00:13');
INSERT INTO `nationalities` VALUES ('56', 'CYP', 'CYPRUS', '2014-07-10 16:00:13', '2014-07-10 16:00:13');
INSERT INTO `nationalities` VALUES ('57', 'CZE', 'CZECH REPUBLIC', '2014-07-10 16:00:13', '2014-07-10 16:00:13');
INSERT INTO `nationalities` VALUES ('58', 'DNK', 'DENMARK', '2014-07-10 16:00:13', '2014-07-10 16:00:13');
INSERT INTO `nationalities` VALUES ('59', 'DJI', 'DJIBOUTI', '2014-07-10 16:00:14', '2014-07-10 16:00:14');
INSERT INTO `nationalities` VALUES ('60', 'DMA', 'DOMINICA', '2014-07-10 16:00:14', '2014-07-10 16:00:14');
INSERT INTO `nationalities` VALUES ('61', 'DOM', 'DOMINICAN REPUBLIC', '2014-07-10 16:00:14', '2014-07-10 16:00:14');
INSERT INTO `nationalities` VALUES ('62', 'TMP', 'EAST TIMOR', '2014-07-10 16:00:14', '2014-07-10 16:00:14');
INSERT INTO `nationalities` VALUES ('63', 'ECU', 'ECUADOR', '2014-07-10 16:00:14', '2014-07-10 16:00:14');
INSERT INTO `nationalities` VALUES ('64', 'EGY', 'EGYPT', '2014-07-10 16:00:14', '2014-07-10 16:00:14');
INSERT INTO `nationalities` VALUES ('65', 'SLV', 'EL SALVADOR', '2014-07-10 16:00:14', '2014-07-10 16:00:14');
INSERT INTO `nationalities` VALUES ('66', 'GNQ', 'EQUATORIAL GUINEA', '2014-07-10 16:00:14', '2014-07-10 16:00:14');
INSERT INTO `nationalities` VALUES ('67', 'ERI', 'ERITREA', '2014-07-10 16:00:14', '2014-07-10 16:00:14');
INSERT INTO `nationalities` VALUES ('68', 'EST', 'ESTONIA', '2014-07-10 16:00:14', '2014-07-10 16:00:14');
INSERT INTO `nationalities` VALUES ('69', 'ETH ', 'ETHIOPIA', '2014-07-10 16:00:15', '2014-07-10 16:00:15');
INSERT INTO `nationalities` VALUES ('70', 'FLK', 'FALKLAND ISLANDS (MALVINAS)', '2014-07-10 16:00:15', '2014-07-10 16:00:15');
INSERT INTO `nationalities` VALUES ('71', 'FRO', 'FAROE ISLANDS', '2014-07-10 16:00:15', '2014-07-10 16:00:15');
INSERT INTO `nationalities` VALUES ('72', 'FJI', 'FIJI', '2014-07-10 16:00:15', '2014-07-10 16:00:15');
INSERT INTO `nationalities` VALUES ('73', 'FIN', 'FINLAND', '2014-07-10 16:00:15', '2014-07-10 16:00:15');
INSERT INTO `nationalities` VALUES ('74', 'FRA', 'FRANCE', '2014-07-10 16:00:15', '2014-07-10 16:00:15');
INSERT INTO `nationalities` VALUES ('75', 'FXX', 'FRANCE, METROPOLITAN', '2014-07-10 16:00:15', '2014-07-10 16:00:15');
INSERT INTO `nationalities` VALUES ('76', 'GUF', 'FRENCH GUIANA', '2014-07-10 16:00:15', '2014-07-10 16:00:15');
INSERT INTO `nationalities` VALUES ('77', 'PYF', 'FRENCH POLYNESIA', '2014-07-10 16:00:15', '2014-07-10 16:00:15');
INSERT INTO `nationalities` VALUES ('78', 'ATF', 'FRENCH SOUTHERN TERRITORIES', '2014-07-10 16:00:15', '2014-07-10 16:00:15');
INSERT INTO `nationalities` VALUES ('79', 'GAB', 'GABON', '2014-07-10 16:00:16', '2014-07-10 16:00:16');
INSERT INTO `nationalities` VALUES ('80', 'GMB', 'GAMBIA', '2014-07-10 16:00:16', '2014-07-10 16:00:16');
INSERT INTO `nationalities` VALUES ('81', 'GEO', 'GEORGIA', '2014-07-10 16:00:16', '2014-07-10 16:00:16');
INSERT INTO `nationalities` VALUES ('82', 'DEU', 'GERMANY', '2014-07-10 16:00:16', '2014-07-10 16:00:16');
INSERT INTO `nationalities` VALUES ('83', 'GHA', 'GHANA', '2014-07-10 16:00:16', '2014-07-10 16:00:16');
INSERT INTO `nationalities` VALUES ('84', 'GIB', 'GIBRALTAR', '2014-07-10 16:00:16', '2014-07-10 16:00:16');
INSERT INTO `nationalities` VALUES ('85', 'GRC', 'GREECE', '2014-07-10 16:00:16', '2014-07-10 16:00:16');
INSERT INTO `nationalities` VALUES ('86', 'GRL', 'GREENLAND', '2014-07-10 16:00:16', '2014-07-10 16:00:16');
INSERT INTO `nationalities` VALUES ('87', 'GRD', 'GRENADA', '2014-07-10 16:00:16', '2014-07-10 16:00:16');
INSERT INTO `nationalities` VALUES ('88', 'GLP', 'GUADELOUPE', '2014-07-10 16:00:17', '2014-07-10 16:00:17');
INSERT INTO `nationalities` VALUES ('89', 'GUM', 'GUAM', '2014-07-10 16:00:17', '2014-07-10 16:00:17');
INSERT INTO `nationalities` VALUES ('90', 'GTM', 'GUATEMALA', '2014-07-10 16:00:17', '2014-07-10 16:00:17');
INSERT INTO `nationalities` VALUES ('91', 'GIN', 'GUINEA', '2014-07-10 16:00:17', '2014-07-10 16:00:17');
INSERT INTO `nationalities` VALUES ('92', 'GNB', 'GUINEA-BISSAU', '2014-07-10 16:00:17', '2014-07-10 16:00:17');
INSERT INTO `nationalities` VALUES ('93', 'GUY', 'GUYANA', '2014-07-10 16:00:17', '2014-07-10 16:00:17');
INSERT INTO `nationalities` VALUES ('94', 'HTI', 'HAITI', '2014-07-10 16:00:17', '2014-07-10 16:00:17');
INSERT INTO `nationalities` VALUES ('95', 'HMD', 'HEARD AND MC DONALD ISLANDS', '2014-07-10 16:00:18', '2014-07-10 16:00:18');
INSERT INTO `nationalities` VALUES ('96', 'VAT', 'HOLY SEE (VATICAN CITY STATE)', '2014-07-10 16:00:18', '2014-07-10 16:00:18');
INSERT INTO `nationalities` VALUES ('97', 'HND', 'HONDURAS', '2014-07-10 16:00:18', '2014-07-10 16:00:18');
INSERT INTO `nationalities` VALUES ('98', 'HKG', 'HONG KONG', '2014-07-10 16:00:19', '2014-07-10 16:00:19');
INSERT INTO `nationalities` VALUES ('99', 'HUN', 'HUNGARY', '2014-07-10 16:00:19', '2014-07-10 16:00:19');
INSERT INTO `nationalities` VALUES ('100', 'ISL', 'ICELAND', '2014-07-10 16:00:19', '2014-07-10 16:00:19');
INSERT INTO `nationalities` VALUES ('101', 'IND', 'INDIA', '2014-07-10 16:00:19', '2014-07-10 16:00:19');
INSERT INTO `nationalities` VALUES ('102', 'IDN', 'INDONESIA', '2014-07-10 16:00:19', '2014-07-10 16:00:19');
INSERT INTO `nationalities` VALUES ('103', 'IRN', 'IRAN (ISLAMIC REPUBLIC OF)', '2014-07-10 16:00:19', '2014-07-10 16:00:19');
INSERT INTO `nationalities` VALUES ('104', 'IRQ', 'IRAQ', '2014-07-10 16:00:20', '2014-07-10 16:00:20');
INSERT INTO `nationalities` VALUES ('105', 'IRL', 'IRELAND', '2014-07-10 16:00:20', '2014-07-10 16:00:20');
INSERT INTO `nationalities` VALUES ('106', 'ISR', 'ISRAEL', '2014-07-10 16:00:20', '2014-07-10 16:00:20');
INSERT INTO `nationalities` VALUES ('107', 'ITA', 'ITALY', '2014-07-10 16:00:20', '2014-07-10 16:00:20');
INSERT INTO `nationalities` VALUES ('108', 'JAM', 'JAMAICA', '2014-07-10 16:00:20', '2014-07-10 16:00:20');
INSERT INTO `nationalities` VALUES ('109', 'JPN', 'JAPAN', '2014-07-10 16:00:20', '2014-07-10 16:00:20');
INSERT INTO `nationalities` VALUES ('110', 'JOR', 'JORDAN', '2014-07-10 16:00:20', '2014-07-10 16:00:20');
INSERT INTO `nationalities` VALUES ('111', 'KAZ', 'KAZAKHSTAN', '2014-07-10 16:00:20', '2014-07-10 16:00:20');
INSERT INTO `nationalities` VALUES ('112', 'KEN', 'KENYA', '2014-07-10 16:00:20', '2014-07-10 16:00:20');
INSERT INTO `nationalities` VALUES ('113', 'KIR', 'KIRIBATI', '2014-07-10 16:00:20', '2014-07-10 16:00:20');
INSERT INTO `nationalities` VALUES ('114', 'PRK', 'KOREA, D.P.R.O.', '2014-07-10 16:00:21', '2014-07-10 16:00:21');
INSERT INTO `nationalities` VALUES ('115', 'KOR', 'KOREA, REPUBLIC OF', '2014-07-10 16:00:21', '2014-07-10 16:00:21');
INSERT INTO `nationalities` VALUES ('116', 'KWT', 'KUWAIT', '2014-07-10 16:00:21', '2014-07-10 16:00:21');
INSERT INTO `nationalities` VALUES ('117', 'KGZ', 'KYRGYZSTAN', '2014-07-10 16:00:21', '2014-07-10 16:00:21');
INSERT INTO `nationalities` VALUES ('118', 'LAO', 'LAOS ', '2014-07-10 16:00:21', '2014-07-10 16:00:21');
INSERT INTO `nationalities` VALUES ('119', 'LVA', 'LATVIA', '2014-07-10 16:00:21', '2014-07-10 16:00:21');
INSERT INTO `nationalities` VALUES ('120', 'LBN', 'LEBANON', '2014-07-10 16:00:22', '2014-07-10 16:00:22');
INSERT INTO `nationalities` VALUES ('121', 'LSO', 'LESOTHO', '2014-07-10 16:00:22', '2014-07-10 16:00:22');
INSERT INTO `nationalities` VALUES ('122', 'LBR', 'LIBERIA', '2014-07-10 16:00:22', '2014-07-10 16:00:22');
INSERT INTO `nationalities` VALUES ('123', 'LBY', 'LIBYAN ARAB JAMAHIRIYA', '2014-07-10 16:00:22', '2014-07-10 16:00:22');
INSERT INTO `nationalities` VALUES ('124', 'LIE', 'LIECHTENSTEIN', '2014-07-10 16:00:22', '2014-07-10 16:00:22');
INSERT INTO `nationalities` VALUES ('125', 'LTU', 'LITHUANIA', '2014-07-10 16:00:22', '2014-07-10 16:00:22');
INSERT INTO `nationalities` VALUES ('126', 'LUX', 'LUXEMBOURG', '2014-07-10 16:00:22', '2014-07-10 16:00:22');
INSERT INTO `nationalities` VALUES ('127', 'MAC', 'MACAU', '2014-07-10 16:00:23', '2014-07-10 16:00:23');
INSERT INTO `nationalities` VALUES ('128', 'MKD', 'MACEDONIA', '2014-07-10 16:00:23', '2014-07-10 16:00:23');
INSERT INTO `nationalities` VALUES ('129', 'MDG', 'MADAGASCAR', '2014-07-10 16:00:23', '2014-07-10 16:00:23');
INSERT INTO `nationalities` VALUES ('130', 'MWI', 'MALAWI', '2014-07-10 16:00:23', '2014-07-10 16:00:23');
INSERT INTO `nationalities` VALUES ('131', 'MYS', 'MALAYSIA', '2014-07-10 16:00:23', '2014-07-10 16:00:23');
INSERT INTO `nationalities` VALUES ('132', 'MDV', 'MALDIVES', '2014-07-10 16:00:23', '2014-07-10 16:00:23');
INSERT INTO `nationalities` VALUES ('133', 'MLI', 'MALI', '2014-07-10 16:00:23', '2014-07-10 16:00:23');
INSERT INTO `nationalities` VALUES ('134', 'MLT', 'MALTA', '2014-07-10 16:00:23', '2014-07-10 16:00:23');
INSERT INTO `nationalities` VALUES ('135', 'MHL', 'MARSHALL ISLANDS', '2014-07-10 16:00:23', '2014-07-10 16:00:23');
INSERT INTO `nationalities` VALUES ('136', 'MTQ', 'MARTINIQUE', '2014-07-10 16:00:23', '2014-07-10 16:00:23');
INSERT INTO `nationalities` VALUES ('137', 'MRT', 'MAURITANIA', '2014-07-10 16:00:24', '2014-07-10 16:00:24');
INSERT INTO `nationalities` VALUES ('138', 'MUS', 'MAURITIUS', '2014-07-10 16:00:24', '2014-07-10 16:00:24');
INSERT INTO `nationalities` VALUES ('139', 'MYT', 'MAYOTTE', '2014-07-10 16:00:24', '2014-07-10 16:00:24');
INSERT INTO `nationalities` VALUES ('140', 'MEX', 'MEXICO', '2014-07-10 16:00:24', '2014-07-10 16:00:24');
INSERT INTO `nationalities` VALUES ('141', 'FSM', 'MICRONESIA, FEDERATED STATES OF', '2014-07-10 16:00:24', '2014-07-10 16:00:24');
INSERT INTO `nationalities` VALUES ('142', 'MDA', 'MOLDOVA, REPUBLIC OF', '2014-07-10 16:00:24', '2014-07-10 16:00:24');
INSERT INTO `nationalities` VALUES ('143', 'MCO', 'MONACO', '2014-07-10 16:00:24', '2014-07-10 16:00:24');
INSERT INTO `nationalities` VALUES ('144', 'MNG', 'MONGOLIA', '2014-07-10 16:00:24', '2014-07-10 16:00:24');
INSERT INTO `nationalities` VALUES ('145', 'MNE', 'MONTENEGRO', '2014-07-10 16:00:24', '2014-07-10 16:00:24');
INSERT INTO `nationalities` VALUES ('146', 'MSR', 'MONTSERRAT', '2014-07-10 16:00:25', '2014-07-10 16:00:25');
INSERT INTO `nationalities` VALUES ('147', 'MAR', 'MOROCCO', '2014-07-10 16:00:25', '2014-07-10 16:00:25');
INSERT INTO `nationalities` VALUES ('148', 'MOZ', 'MOZAMBIQUE', '2014-07-10 16:00:25', '2014-07-10 16:00:25');
INSERT INTO `nationalities` VALUES ('149', 'MMR', 'MYANMAR (Burma) ', '2014-07-10 16:00:25', '2014-07-10 16:00:25');
INSERT INTO `nationalities` VALUES ('150', 'NAM', 'NAMIBIA', '2014-07-10 16:00:25', '2014-07-10 16:00:25');
INSERT INTO `nationalities` VALUES ('151', 'NRU', 'NAURU', '2014-07-10 16:00:25', '2014-07-10 16:00:25');
INSERT INTO `nationalities` VALUES ('152', 'NPL', 'NEPAL', '2014-07-10 16:00:25', '2014-07-10 16:00:25');
INSERT INTO `nationalities` VALUES ('153', 'NLD', 'NETHERLANDS', '2014-07-10 16:00:25', '2014-07-10 16:00:25');
INSERT INTO `nationalities` VALUES ('154', 'ANT', 'NETHERLANDS ANTILLES', '2014-07-10 16:00:25', '2014-07-10 16:00:25');
INSERT INTO `nationalities` VALUES ('155', 'NCL', 'NEW CALEDONIA', '2014-07-10 16:00:25', '2014-07-10 16:00:25');
INSERT INTO `nationalities` VALUES ('156', 'NZL', 'NEW ZEALAND', '2014-07-10 16:00:26', '2014-07-10 16:00:26');
INSERT INTO `nationalities` VALUES ('157', 'NIC', 'NICARAGUA', '2014-07-10 16:00:26', '2014-07-10 16:00:26');
INSERT INTO `nationalities` VALUES ('158', 'NER', 'NIGER', '2014-07-10 16:00:26', '2014-07-10 16:00:26');
INSERT INTO `nationalities` VALUES ('159', 'NGA', 'NIGERIA', '2014-07-10 16:00:26', '2014-07-10 16:00:26');
INSERT INTO `nationalities` VALUES ('160', 'NIU', 'NIUE', '2014-07-10 16:00:26', '2014-07-10 16:00:26');
INSERT INTO `nationalities` VALUES ('161', 'NFK', 'NORFOLK ISLAND', '2014-07-10 16:00:26', '2014-07-10 16:00:26');
INSERT INTO `nationalities` VALUES ('162', 'MNP', 'NORTHERN MARIANA ISLANDS', '2014-07-10 16:00:27', '2014-07-10 16:00:27');
INSERT INTO `nationalities` VALUES ('163', 'NOR', 'NORWAY', '2014-07-10 16:00:27', '2014-07-10 16:00:27');
INSERT INTO `nationalities` VALUES ('164', 'OMN', 'OMAN', '2014-07-10 16:00:27', '2014-07-10 16:00:27');
INSERT INTO `nationalities` VALUES ('165', 'PAK', 'PAKISTAN', '2014-07-10 16:00:27', '2014-07-10 16:00:27');
INSERT INTO `nationalities` VALUES ('166', 'PLW', 'PALAU', '2014-07-10 16:00:27', '2014-07-10 16:00:27');
INSERT INTO `nationalities` VALUES ('167', 'PAN', 'PANAMA', '2014-07-10 16:00:27', '2014-07-10 16:00:27');
INSERT INTO `nationalities` VALUES ('168', 'PNG', 'PAPUA NEW GUINEA', '2014-07-10 16:00:27', '2014-07-10 16:00:27');
INSERT INTO `nationalities` VALUES ('169', 'PRY', 'PARAGUAY', '2014-07-10 16:00:28', '2014-07-10 16:00:28');
INSERT INTO `nationalities` VALUES ('170', 'PER', 'PERU', '2014-07-10 16:00:28', '2014-07-10 16:00:28');
INSERT INTO `nationalities` VALUES ('171', 'PHL', 'PHILIPPINES', '2014-07-10 16:00:28', '2014-07-10 16:00:28');
INSERT INTO `nationalities` VALUES ('172', 'PCN', 'PITCAIRN', '2014-07-10 16:00:28', '2014-07-10 16:00:28');
INSERT INTO `nationalities` VALUES ('173', 'POL', 'POLAND', '2014-07-10 16:00:28', '2014-07-10 16:00:28');
INSERT INTO `nationalities` VALUES ('174', 'PRT', 'PORTUGAL', '2014-07-10 16:00:28', '2014-07-10 16:00:28');
INSERT INTO `nationalities` VALUES ('175', 'PRI', 'PUERTO RICO', '2014-07-10 16:00:28', '2014-07-10 16:00:28');
INSERT INTO `nationalities` VALUES ('176', 'QAT', 'QATAR', '2014-07-10 16:00:28', '2014-07-10 16:00:28');
INSERT INTO `nationalities` VALUES ('177', 'REU', 'REUNION', '2014-07-10 16:00:28', '2014-07-10 16:00:28');
INSERT INTO `nationalities` VALUES ('178', 'ROM', 'ROMANIA', '2014-07-10 16:00:28', '2014-07-10 16:00:28');
INSERT INTO `nationalities` VALUES ('179', 'RUS', 'RUSSIAN FEDERATION', '2014-07-10 16:00:29', '2014-07-10 16:00:29');
INSERT INTO `nationalities` VALUES ('180', 'RWA', 'RWANDA', '2014-07-10 16:00:29', '2014-07-10 16:00:29');
INSERT INTO `nationalities` VALUES ('181', 'KNA', 'SAINT KITTS AND NEVIS', '2014-07-10 16:00:29', '2014-07-10 16:00:29');
INSERT INTO `nationalities` VALUES ('182', 'LCA', 'SAINT LUCIA', '2014-07-10 16:00:29', '2014-07-10 16:00:29');
INSERT INTO `nationalities` VALUES ('183', 'VCT', 'SAINT VINCENT AND THE GRENADINES', '2014-07-10 16:00:29', '2014-07-10 16:00:29');
INSERT INTO `nationalities` VALUES ('184', 'WSM', 'SAMOA', '2014-07-10 16:00:29', '2014-07-10 16:00:29');
INSERT INTO `nationalities` VALUES ('185', 'SMR', 'SAN MARINO', '2014-07-10 16:00:29', '2014-07-10 16:00:29');
INSERT INTO `nationalities` VALUES ('186', 'STP', 'SAO TOME AND PRINCIPE', '2014-07-10 16:00:30', '2014-07-10 16:00:30');
INSERT INTO `nationalities` VALUES ('187', 'SAU', 'SAUDI ARABIA', '2014-07-10 16:00:30', '2014-07-10 16:00:30');
INSERT INTO `nationalities` VALUES ('188', 'SEN', 'SENEGAL', '2014-07-10 16:00:30', '2014-07-10 16:00:30');
INSERT INTO `nationalities` VALUES ('189', 'SRB', 'SERBIA', '2014-07-10 16:00:30', '2014-07-10 16:00:30');
INSERT INTO `nationalities` VALUES ('190', 'SYC', 'SEYCHELLES', '2014-07-10 16:00:30', '2014-07-10 16:00:30');
INSERT INTO `nationalities` VALUES ('191', 'SLE', 'SIERRA LEONE', '2014-07-10 16:00:30', '2014-07-10 16:00:30');
INSERT INTO `nationalities` VALUES ('192', 'SGP', 'SINGAPORE', '2014-07-10 16:00:30', '2014-07-10 16:00:30');
INSERT INTO `nationalities` VALUES ('193', 'SVK', 'SLOVAKIA (Slovak Republic)', '2014-07-10 16:00:30', '2014-07-10 16:00:30');
INSERT INTO `nationalities` VALUES ('194', 'SVN', 'SLOVENIA', '2014-07-10 16:00:31', '2014-07-10 16:00:31');
INSERT INTO `nationalities` VALUES ('195', 'SLB', 'SOLOMON ISLANDS', '2014-07-10 16:00:31', '2014-07-10 16:00:31');
INSERT INTO `nationalities` VALUES ('196', 'SOM', 'SOMALIA', '2014-07-10 16:00:31', '2014-07-10 16:00:31');
INSERT INTO `nationalities` VALUES ('197', 'ZAF', 'SOUTH AFRICA', '2014-07-10 16:00:31', '2014-07-10 16:00:31');
INSERT INTO `nationalities` VALUES ('198', 'SSD', 'SOUTH SUDAN', '2014-07-10 16:00:31', '2014-07-10 16:00:31');
INSERT INTO `nationalities` VALUES ('199', 'SGS', 'SOUTH GEORGIA AND SOUTH S.S.', '2014-07-10 16:00:31', '2014-07-10 16:00:31');
INSERT INTO `nationalities` VALUES ('200', 'ESP', 'SPAIN', '2014-07-10 16:00:31', '2014-07-10 16:00:31');
INSERT INTO `nationalities` VALUES ('201', 'LKA', 'SRI LANKA', '2014-07-10 16:00:31', '2014-07-10 16:00:31');
INSERT INTO `nationalities` VALUES ('202', 'SHN', 'ST. HELENA', '2014-07-10 16:00:32', '2014-07-10 16:00:32');
INSERT INTO `nationalities` VALUES ('203', 'SPM', 'ST. PIERRE AND MIQUELON', '2014-07-10 16:00:32', '2014-07-10 16:00:32');
INSERT INTO `nationalities` VALUES ('204', 'SDN', 'SUDAN', '2014-07-10 16:00:33', '2014-07-10 16:00:33');
INSERT INTO `nationalities` VALUES ('205', 'SUR', 'SURINAME', '2014-07-10 16:00:33', '2014-07-10 16:00:33');
INSERT INTO `nationalities` VALUES ('206', 'SJM', 'SVALBARD AND JAN MAYEN ISLANDS', '2014-07-10 16:00:33', '2014-07-10 16:00:33');
INSERT INTO `nationalities` VALUES ('207', 'SWZ', 'SWAZILAND', '2014-07-10 16:00:33', '2014-07-10 16:00:33');
INSERT INTO `nationalities` VALUES ('208', 'SWE', 'SWEDEN', '2014-07-10 16:00:33', '2014-07-10 16:00:33');
INSERT INTO `nationalities` VALUES ('209', 'CHE', 'SWITZERLAND', '2014-07-10 16:00:33', '2014-07-10 16:00:33');
INSERT INTO `nationalities` VALUES ('210', 'SYR', 'SYRIAN ARAB REPUBLIC', '2014-07-10 16:00:33', '2014-07-10 16:00:33');
INSERT INTO `nationalities` VALUES ('211', 'TWN', 'TAIWAN, PROVINCE OF CHINA', '2014-07-10 16:00:33', '2014-07-10 16:00:33');
INSERT INTO `nationalities` VALUES ('212', 'TJK', 'TAJIKISTAN', '2014-07-10 16:00:33', '2014-07-10 16:00:33');
INSERT INTO `nationalities` VALUES ('213', 'TZA', 'TANZANIA, UNITED REPUBLIC OF', '2014-07-10 16:00:34', '2014-07-10 16:00:34');
INSERT INTO `nationalities` VALUES ('214', 'THA', 'THAILAND', '2014-07-10 16:00:34', '2014-07-10 16:00:34');
INSERT INTO `nationalities` VALUES ('215', 'TGO', 'TOGO', '2014-07-10 16:00:34', '2014-07-10 16:00:34');
INSERT INTO `nationalities` VALUES ('216', 'TKL', 'TOKELAU', '2014-07-10 16:00:34', '2014-07-10 16:00:34');
INSERT INTO `nationalities` VALUES ('217', 'TON', 'TONGA', '2014-07-10 16:00:34', '2014-07-10 16:00:34');
INSERT INTO `nationalities` VALUES ('218', 'TTO', 'TRINIDAD AND TOBAGO', '2014-07-10 16:00:34', '2014-07-10 16:00:34');
INSERT INTO `nationalities` VALUES ('219', 'TUN', 'TUNISIA', '2014-07-10 16:00:35', '2014-07-10 16:00:35');
INSERT INTO `nationalities` VALUES ('220', 'TUR', 'TURKEY', '2014-07-10 16:00:35', '2014-07-10 16:00:35');
INSERT INTO `nationalities` VALUES ('221', 'TKM', 'TURKMENISTAN', '2014-07-10 16:00:35', '2014-07-10 16:00:35');
INSERT INTO `nationalities` VALUES ('222', 'TCA', 'TURKS AND CAICOS ISLANDS', '2014-07-10 16:00:35', '2014-07-10 16:00:35');
INSERT INTO `nationalities` VALUES ('223', 'TUV', 'TUVALU', '2014-07-10 16:00:35', '2014-07-10 16:00:35');
INSERT INTO `nationalities` VALUES ('224', 'UGA', 'UGANDA', '2014-07-10 16:00:35', '2014-07-10 16:00:35');
INSERT INTO `nationalities` VALUES ('225', 'UKR', 'UKRAINE', '2014-07-10 16:00:35', '2014-07-10 16:00:35');
INSERT INTO `nationalities` VALUES ('226', 'ARE', 'UNITED ARAB EMIRATES', '2014-07-10 16:00:35', '2014-07-10 16:00:35');
INSERT INTO `nationalities` VALUES ('227', 'GBR', 'UNITED KINGDOM', '2014-07-10 16:00:36', '2014-07-10 16:00:36');
INSERT INTO `nationalities` VALUES ('228', 'USA', 'UNITED STATES', '2014-07-10 16:00:36', '2014-07-10 16:00:36');
INSERT INTO `nationalities` VALUES ('229', 'UMI', 'U.S. MINOR ISLANDS', '2014-07-10 16:00:36', '2014-07-10 16:00:36');
INSERT INTO `nationalities` VALUES ('230', 'URY', 'URUGUAY', '2014-07-10 16:00:36', '2014-07-10 16:00:36');
INSERT INTO `nationalities` VALUES ('231', 'UZB', 'UZBEKISTAN', '2014-07-10 16:00:36', '2014-07-10 16:00:36');
INSERT INTO `nationalities` VALUES ('232', 'VUT', 'VANUATU', '2014-07-10 16:00:36', '2014-07-10 16:00:36');
INSERT INTO `nationalities` VALUES ('233', 'VEN', 'VENEZUELA', '2014-07-10 16:00:36', '2014-07-10 16:00:36');
INSERT INTO `nationalities` VALUES ('234', 'VNM', 'VIET NAM', '2014-07-10 16:00:36', '2014-07-10 16:00:36');
INSERT INTO `nationalities` VALUES ('235', 'VGB', 'VIRGIN ISLANDS (BRITISH)', '2014-07-10 16:00:37', '2014-07-10 16:00:37');
INSERT INTO `nationalities` VALUES ('236', 'VIR', 'VIRGIN ISLANDS (U.S.)', '2014-07-10 16:00:37', '2014-07-10 16:00:37');
INSERT INTO `nationalities` VALUES ('237', 'WLF', 'WALLIS AND FUTUNA ISLANDS', '2014-07-10 16:00:37', '2014-07-10 16:00:37');
INSERT INTO `nationalities` VALUES ('238', 'ESH', 'WESTERN SAHARA', '2014-07-10 16:00:37', '2014-07-10 16:00:37');
INSERT INTO `nationalities` VALUES ('239', 'YEM', 'YEMEN', '2014-07-10 16:00:37', '2014-07-10 16:00:37');
INSERT INTO `nationalities` VALUES ('240', 'ZMB', 'ZAMBIA', '2014-07-10 16:00:37', '2014-07-10 16:00:37');
INSERT INTO `nationalities` VALUES ('241', 'ZWE ', 'ZIMBABWE', '2014-07-10 16:00:37', '2014-07-10 16:00:37');

-- ----------------------------
-- Table structure for `notifystatuses`
-- ----------------------------
DROP TABLE IF EXISTS `notifystatuses`;
CREATE TABLE `notifystatuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of notifystatuses
-- ----------------------------
INSERT INTO `notifystatuses` VALUES ('4', 'NO', 'Not Notify', '2014-07-10 15:59:58', '2014-07-10 15:59:58');
INSERT INTO `notifystatuses` VALUES ('5', 'PE', 'Pending Notification', '2014-07-10 15:59:58', '2014-07-10 15:59:58');
INSERT INTO `notifystatuses` VALUES ('6', 'ACK', 'Acknowledged', '2014-07-10 15:59:58', '2014-07-10 15:59:58');

-- ----------------------------
-- Table structure for `participantanswers`
-- ----------------------------
DROP TABLE IF EXISTS `participantanswers`;
CREATE TABLE `participantanswers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `participant_id` int(11) DEFAULT NULL,
  `pollanswer_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `poll_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of participantanswers
-- ----------------------------
INSERT INTO `participantanswers` VALUES ('1', '11', '8', '2014-07-12 01:52:36', '2014-07-12 01:52:36', '3');
INSERT INTO `participantanswers` VALUES ('2', '3', '7', '2014-07-12 01:54:14', '2014-07-12 01:54:14', '3');
INSERT INTO `participantanswers` VALUES ('3', '3', '9', '2014-07-12 01:54:56', '2014-07-12 01:54:56', '4');
INSERT INTO `participantanswers` VALUES ('4', '11', '10', '2014-07-12 01:55:08', '2014-07-12 01:55:08', '4');
INSERT INTO `participantanswers` VALUES ('5', '11', '11', '2014-07-13 22:49:34', '2014-07-13 22:49:34', '5');
INSERT INTO `participantanswers` VALUES ('6', '3', '12', '2014-07-13 22:49:39', '2014-07-13 22:49:39', '5');
INSERT INTO `participantanswers` VALUES ('7', '13', '11', '2014-07-13 22:52:01', '2014-07-13 22:52:01', '5');

-- ----------------------------
-- Table structure for `participanttypes`
-- ----------------------------
DROP TABLE IF EXISTS `participanttypes`;
CREATE TABLE `participanttypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of participanttypes
-- ----------------------------
INSERT INTO `participanttypes` VALUES ('1', 'DLG', 'Participant', '2014-07-10 15:59:59', '2014-07-10 15:59:59');
INSERT INTO `participanttypes` VALUES ('2', 'MDA', 'Media', '2014-07-10 15:59:59', '2014-07-10 15:59:59');
INSERT INTO `participanttypes` VALUES ('3', 'SPK', 'Speaker', '2014-07-10 15:59:59', '2014-07-10 15:59:59');

-- ----------------------------
-- Table structure for `pollanswers`
-- ----------------------------
DROP TABLE IF EXISTS `pollanswers`;
CREATE TABLE `pollanswers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `answer` varchar(255) DEFAULT NULL,
  `poll_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pollanswers
-- ----------------------------
INSERT INTO `pollanswers` VALUES ('7', 'saya', '3', '2014-07-12 01:52:30', '2014-07-12 01:52:30');
INSERT INTO `pollanswers` VALUES ('8', 'dia', '3', '2014-07-12 01:52:30', '2014-07-12 01:52:30');
INSERT INTO `pollanswers` VALUES ('9', 'Dah', '4', '2014-07-12 01:54:49', '2014-07-12 01:54:49');
INSERT INTO `pollanswers` VALUES ('10', 'Belum', '4', '2014-07-12 01:54:49', '2014-07-12 01:54:49');
INSERT INTO `pollanswers` VALUES ('11', 'Pasar tanu', '5', '2014-07-13 22:48:51', '2014-07-13 22:48:51');
INSERT INTO `pollanswers` VALUES ('12', 'Pasar malam', '5', '2014-07-13 22:48:51', '2014-07-13 22:48:51');

-- ----------------------------
-- Table structure for `polls`
-- ----------------------------
DROP TABLE IF EXISTS `polls`;
CREATE TABLE `polls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) DEFAULT NULL,
  `presenter_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `pollstatus_code` varchar(255) DEFAULT NULL,
  `track_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of polls
-- ----------------------------
INSERT INTO `polls` VALUES ('3', 'Siapa hensem?', '10', '2014-07-12 01:52:30', '2014-07-12 01:52:30', 'ACT', '3');
INSERT INTO `polls` VALUES ('4', 'Dah makan ke? ', '3', '2014-07-12 01:54:49', '2014-07-12 01:54:49', 'ACT', '5');
INSERT INTO `polls` VALUES ('5', 'What is the best market? ', '10', '2014-07-13 22:48:51', '2014-07-13 22:48:51', 'ACT', '4');

-- ----------------------------
-- Table structure for `pollstatuses`
-- ----------------------------
DROP TABLE IF EXISTS `pollstatuses`;
CREATE TABLE `pollstatuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pollstatuses
-- ----------------------------
INSERT INTO `pollstatuses` VALUES ('1', 'ACT', 'Active', '2014-07-10 16:00:01', '2014-07-10 16:00:01');
INSERT INTO `pollstatuses` VALUES ('2', 'INA', 'Inactive', '2014-07-10 16:00:01', '2014-07-10 16:00:01');

-- ----------------------------
-- Table structure for `presenterfiles`
-- ----------------------------
DROP TABLE IF EXISTS `presenterfiles`;
CREATE TABLE `presenterfiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `presenter_id` int(11) DEFAULT NULL,
  `files` varchar(255) DEFAULT NULL,
  `reg_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of presenterfiles
-- ----------------------------
INSERT INTO `presenterfiles` VALUES ('30', null, 'image%3A62690.jpeg', '11', '2014-07-14 00:04:00', '2014-07-14 00:04:00');
INSERT INTO `presenterfiles` VALUES ('31', null, '4417.pdf', '11', '2014-07-14 00:09:30', '2014-07-14 00:09:30');
INSERT INTO `presenterfiles` VALUES ('32', null, '4396..doc', '11', '2014-07-14 00:12:47', '2014-07-14 00:12:47');

-- ----------------------------
-- Table structure for `presenters`
-- ----------------------------
DROP TABLE IF EXISTS `presenters`;
CREATE TABLE `presenters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gesparticipant_id` int(11) DEFAULT NULL,
  `identification` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `password_salt` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `registration_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of presenters
-- ----------------------------
INSERT INTO `presenters` VALUES ('1', null, 'UK1298834', null, null, null, '', '10 June 1965', '', '2014-07-10 16:17:14', '2014-07-10 16:17:14', '1');
INSERT INTO `presenters` VALUES ('2', null, 'FR12384', null, null, null, '', '15 December 1965', '', '2014-07-10 16:25:15', '2014-07-10 16:25:15', '2');
INSERT INTO `presenters` VALUES ('3', null, 'US123994', null, null, null, '', '23 April 1959', '', '2014-07-10 16:29:38', '2014-07-10 16:29:38', '3');
INSERT INTO `presenters` VALUES ('4', null, 'CH2348', null, null, null, '', '08 May 1960', '', '2014-07-10 16:40:59', '2014-07-10 16:40:59', '5');
INSERT INTO `presenters` VALUES ('5', null, 'IN92130', null, null, null, '', '30 October 1973', '', '2014-07-10 16:58:01', '2014-07-10 16:58:01', '6');
INSERT INTO `presenters` VALUES ('6', null, 'US8932', null, null, null, '', '25 March 1954', '', '2014-07-10 17:02:41', '2014-07-10 17:02:41', '7');
INSERT INTO `presenters` VALUES ('8', null, 'GR213890', null, null, null, '', '20 November 1954', '', '2014-07-10 17:06:41', '2014-07-10 17:06:41', '9');
INSERT INTO `presenters` VALUES ('9', null, 'IN87123', null, null, null, '', '08 January 1959', '', '2014-07-10 17:08:22', '2014-07-10 17:08:22', '10');
INSERT INTO `presenters` VALUES ('10', null, 'SG71289', null, null, null, '', '21 August 1964', '', '2014-07-10 17:15:59', '2014-07-10 17:15:59', '11');
INSERT INTO `presenters` VALUES ('11', null, 'SA3104', null, null, null, '', '16 September 1964', '', '2014-07-10 17:18:51', '2014-07-10 17:18:51', '12');

-- ----------------------------
-- Table structure for `registrations`
-- ----------------------------
DROP TABLE IF EXISTS `registrations`;
CREATE TABLE `registrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) DEFAULT NULL,
  `noic` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `nationality_code` varchar(255) DEFAULT NULL,
  `hotel_code` varchar(255) DEFAULT NULL,
  `participanttype_code` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `organization` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of registrations
-- ----------------------------
INSERT INTO `registrations` VALUES ('1', 'David Arkless', '1234', '', 'speaker7@ges.com', '1.jpg', 'GBR', 'OTH', 'SPK', '2014-07-10 16:17:13', '2014-07-10 16:17:14', 'CEO and Founder', 'ArkLight Consulting');
INSERT INTO `registrations` VALUES ('2', 'Jacques Attali', 'FR12384', '', 'speaker1@ges.com', '2.jpg', 'FRA', 'RIHKL', 'SPK', '2014-07-10 16:25:15', '2014-07-10 16:25:16', 'President and Founder', 'PlaNet Finance Group');
INSERT INTO `registrations` VALUES ('3', 'Shumeet Banerji', '1234', '', 'speaker2@ges.com', '3.jpg', 'USA', 'TDKL', 'SPK', '2014-07-10 16:29:38', '2014-07-10 16:29:38', 'Member of the Board of Directors', 'Hewlett-Packard Company');
INSERT INTO `registrations` VALUES ('5', 'Erik Bethel', 'CH2348', '', 'speaker3@ges.com', '4.jpg', 'CHN', 'CRSSKL', 'SPK', '2014-07-10 16:40:58', '2014-07-10 16:40:59', 'Managing Partner', 'SinoLatin Capital');
INSERT INTO `registrations` VALUES ('6', 'Debu Bhattacharya', 'IN92130', '', 'speaker4@ges.com', '5.jpg', 'IND', 'RKLH', 'SPK', '2014-07-10 16:58:01', '2014-07-10 16:58:01', 'Managing Director', 'Hidalco');
INSERT INTO `registrations` VALUES ('7', 'Philippe Bourguignon', 'US8932', '', 'speaker5@ges.com', '6.jpg', 'USA', 'TDKL', 'SPK', '2014-07-10 17:02:41', '2014-07-10 17:02:41', 'Vice Chairman', 'Revolution Places');
INSERT INTO `registrations` VALUES ('9', 'Hans Paul Bürkner', 'GR213890', '', 'speaker6@ges.com', '8.jpg', 'DEU', 'TRBKLH', 'SPK', '2014-07-10 17:06:40', '2014-07-10 17:06:41', 'Chairman', 'The Boston Consulting Group');
INSERT INTO `registrations` VALUES ('10', 'Ravi Chaudhry', '1234', '', 'speaker8@ges.com', '9.jpg', 'IND', 'RIHKL', 'SPK', '2014-07-10 17:08:22', '2014-07-10 17:08:23', 'Chairman', 'CeNext Consulting & Investment');
INSERT INTO `registrations` VALUES ('11', 'Hans Diederen', '1234', '', 'speaker@ges.com', '10.jpg', 'SGP', 'RIHKL', 'SPK', '2014-07-10 17:15:58', '2014-07-10 17:16:00', 'CEO Asia', 'Credit Agricole Private Banking');
INSERT INTO `registrations` VALUES ('12', 'Hermann Erdmann', 'SA3104', '', 'speaker9@ges.com', '11.jpg', 'ZAF', 'RIHKL', 'SPK', '2014-07-10 17:18:50', '2014-07-10 17:18:51', 'CEO', 'REDISA');
INSERT INTO `registrations` VALUES ('13', 'Hasbullah Thabrany', '1234', '', 'delegate@ges.com', null, 'IDN', 'RKLH', 'DLG', '2014-07-10 17:22:17', '2014-07-10 17:22:17', 'Professor', 'University of Jakarta');
INSERT INTO `registrations` VALUES ('14', 'Joseph Stiglitz', '1234', '', 'delegate2@ges.com', null, 'USA', 'OTH', 'DLG', '2014-07-10 17:23:55', '2014-07-10 17:23:55', 'Nobel Laureate ; Professor', 'School of International and Public Affairs (SIPA)');
INSERT INTO `registrations` VALUES ('15', 'Michael Spence', 'US7094', '', 'delegate3@ges.com', null, 'USA', 'RIHKL', 'DLG', '2014-07-10 17:25:40', '2014-07-10 17:25:40', 'Nobel Laureate ; William R. Berkley Professor in Economics and Business', 'NYU Stern School of Business');
INSERT INTO `registrations` VALUES ('16', 'Andrew Sheng ', 'HK16521', '', 'delegate4@ges.com', null, 'HKG', 'RKLH', 'DLG', '2014-07-10 17:26:41', '2014-07-10 17:26:41', 'President', 'Fung Global Institute');
INSERT INTO `registrations` VALUES ('17', 'Andrew Sheng ', 'HK16521', '', 'delegate5@ges.com', null, 'HKG', 'RKLH', 'DLG', '2014-07-10 17:26:42', '2014-07-10 17:26:42', 'President', 'Fung Global Institute');
INSERT INTO `registrations` VALUES ('18', 'George Selgin', 'US42013', '', 'delegate6@ges.com', null, 'USA', 'TDKL', 'DLG', '2014-07-10 17:28:15', '2014-07-10 17:28:15', 'Professor of Economics', 'University of Georgia, The Terry College of Business');
INSERT INTO `registrations` VALUES ('19', 'Anya Schiffrin', 'US61204', '', 'delegate7@ges.com', null, 'USA', 'OTH', 'DLG', '2014-07-10 17:30:27', '2014-07-10 17:30:27', 'Lecturer in Discipline of International and Public Affairs', 'School of International and Public Affairs, Columbia University');
INSERT INTO `registrations` VALUES ('21', 'Michele Petochi', 'SW4124001', '', 'delegate8@ges.com', null, 'CHE', 'IKHSKL', 'DLG', '2014-07-10 17:42:58', '2014-07-10 17:42:58', 'Managing Director', 'EPFL Venice Project');
INSERT INTO `registrations` VALUES ('22', 'John Pang', 'US210054', '', 'delegate9@ges.com', null, 'USA', 'OTH', 'DLG', '2014-07-10 17:45:00', '2014-07-10 17:45:00', 'Visiting Scholar at the Urbanization Project', 'NYU Stern School of Business');
INSERT INTO `registrations` VALUES ('23', 'Pierre Monnin', 'SW900123', '', 'delegate10@ges.com', null, 'CHE', 'GYKLH', 'DLG', '2014-07-10 17:46:15', '2014-07-10 17:46:15', 'Fellow, Monetary Policy', 'Council on Economic Policies');

-- ----------------------------
-- Table structure for `registrationstatuses`
-- ----------------------------
DROP TABLE IF EXISTS `registrationstatuses`;
CREATE TABLE `registrationstatuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of registrationstatuses
-- ----------------------------
INSERT INTO `registrationstatuses` VALUES ('1', 'PR', 'Pre-registered', '2014-07-10 16:00:00', '2014-07-10 16:00:00');
INSERT INTO `registrationstatuses` VALUES ('2', 'QU', 'Queue', '2014-07-10 16:00:00', '2014-07-10 16:00:00');
INSERT INTO `registrationstatuses` VALUES ('3', 'ACT', 'Activated', '2014-07-10 16:00:00', '2014-07-10 16:00:00');

-- ----------------------------
-- Table structure for `roles`
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('11', 'ADM', 'Admin', '2014-07-10 15:59:55', '2014-07-10 15:59:55');
INSERT INTO `roles` VALUES ('12', 'ATT', 'Attendance', '2014-07-10 15:59:55', '2014-07-10 15:59:55');
INSERT INTO `roles` VALUES ('13', 'DNR', 'Dinner', '2014-07-10 15:59:55', '2014-07-10 15:59:55');
INSERT INTO `roles` VALUES ('14', 'HTL', 'Admin Hotel', '2014-07-10 15:59:55', '2014-07-10 15:59:55');
INSERT INTO `roles` VALUES ('15', 'LGS', 'Admin Logistic', '2014-07-10 15:59:55', '2014-07-10 15:59:55');
INSERT INTO `roles` VALUES ('16', 'USH', 'Admin Ushrer', '2014-07-10 15:59:56', '2014-07-10 15:59:56');
INSERT INTO `roles` VALUES ('17', 'APT', 'Admin Airport', '2014-07-10 15:59:56', '2014-07-10 15:59:56');
INSERT INTO `roles` VALUES ('18', 'DLG', 'Admin Participant', '2014-07-10 15:59:56', '2014-07-10 15:59:56');
INSERT INTO `roles` VALUES ('19', 'SPK', 'Admin Speaker', '2014-07-10 15:59:56', '2014-07-10 15:59:56');
INSERT INTO `roles` VALUES ('20', 'MDA', 'Admin Media', '2014-07-10 15:59:56', '2014-07-10 15:59:56');

-- ----------------------------
-- Table structure for `rooms`
-- ----------------------------
DROP TABLE IF EXISTS `rooms`;
CREATE TABLE `rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `capacity` int(11) DEFAULT NULL,
  `current` int(11) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rooms
-- ----------------------------
INSERT INTO `rooms` VALUES ('1', 'PHG', 'Pahang', '2014-07-10 15:59:59', '2014-07-10 15:59:59', '100', '100', 'pahang.png');
INSERT INTO `rooms` VALUES ('2', 'SLG', 'Selangor', '2014-07-10 15:59:59', '2014-07-10 15:59:59', '100', '100', 'selangor.png');
INSERT INTO `rooms` VALUES ('3', 'JHR', 'Johor', '2014-07-10 15:59:59', '2014-07-10 15:59:59', '100', '100', 'johor.png');
INSERT INTO `rooms` VALUES ('4', 'PRK', 'Perak', '2014-07-10 15:59:59', '2014-07-10 15:59:59', '100', '100', 'perak.png');
INSERT INTO `rooms` VALUES ('5', 'KDH', 'Kedah', '2014-07-10 15:59:59', '2014-07-10 15:59:59', '100', '100', 'kedah.png');
INSERT INTO `rooms` VALUES ('6', 'PNG', 'Penang', '2014-07-10 16:00:00', '2014-07-10 16:00:00', '100', '100', 'penang.png');
INSERT INTO `rooms` VALUES ('7', 'SBH', 'Sabah', '2014-07-10 16:00:00', '2014-07-10 16:00:00', '100', '100', 'sabah.png');
INSERT INTO `rooms` VALUES ('8', 'SRK', 'Sarawak', '2014-07-10 16:00:00', '2014-07-10 16:00:00', '100', '100', 'sarawak.png');

-- ----------------------------
-- Table structure for `schema_migrations`
-- ----------------------------
DROP TABLE IF EXISTS `schema_migrations`;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of schema_migrations
-- ----------------------------
INSERT INTO `schema_migrations` VALUES ('20140311172544');
INSERT INTO `schema_migrations` VALUES ('20140312171019');
INSERT INTO `schema_migrations` VALUES ('20140319041352');
INSERT INTO `schema_migrations` VALUES ('20140319041452');
INSERT INTO `schema_migrations` VALUES ('20140319041524');
INSERT INTO `schema_migrations` VALUES ('20140319041542');
INSERT INTO `schema_migrations` VALUES ('20140319041627');
INSERT INTO `schema_migrations` VALUES ('20140319041740');
INSERT INTO `schema_migrations` VALUES ('20140319041824');
INSERT INTO `schema_migrations` VALUES ('20140319042103');
INSERT INTO `schema_migrations` VALUES ('20140319042241');
INSERT INTO `schema_migrations` VALUES ('20140319044119');
INSERT INTO `schema_migrations` VALUES ('20140319044311');
INSERT INTO `schema_migrations` VALUES ('20140319044418');
INSERT INTO `schema_migrations` VALUES ('20140326150346');
INSERT INTO `schema_migrations` VALUES ('20140428105742');
INSERT INTO `schema_migrations` VALUES ('20140428111225');
INSERT INTO `schema_migrations` VALUES ('20140428112053');
INSERT INTO `schema_migrations` VALUES ('20140428112250');
INSERT INTO `schema_migrations` VALUES ('20140512045822');
INSERT INTO `schema_migrations` VALUES ('20140512055219');
INSERT INTO `schema_migrations` VALUES ('20140524164019');
INSERT INTO `schema_migrations` VALUES ('20140524164656');
INSERT INTO `schema_migrations` VALUES ('20140524165000');
INSERT INTO `schema_migrations` VALUES ('20140526122540');
INSERT INTO `schema_migrations` VALUES ('20140526124955');
INSERT INTO `schema_migrations` VALUES ('20140527154916');
INSERT INTO `schema_migrations` VALUES ('20140527155207');
INSERT INTO `schema_migrations` VALUES ('20140602125920');
INSERT INTO `schema_migrations` VALUES ('20140602130132');
INSERT INTO `schema_migrations` VALUES ('20140602130320');
INSERT INTO `schema_migrations` VALUES ('20140602132358');
INSERT INTO `schema_migrations` VALUES ('20140602132541');
INSERT INTO `schema_migrations` VALUES ('20140602132759');
INSERT INTO `schema_migrations` VALUES ('20140604043417');
INSERT INTO `schema_migrations` VALUES ('20140604045152');
INSERT INTO `schema_migrations` VALUES ('20140604055215');
INSERT INTO `schema_migrations` VALUES ('20140604055308');
INSERT INTO `schema_migrations` VALUES ('20140607185002');
INSERT INTO `schema_migrations` VALUES ('20140630165555');
INSERT INTO `schema_migrations` VALUES ('20140630171905');
INSERT INTO `schema_migrations` VALUES ('20140705043827');
INSERT INTO `schema_migrations` VALUES ('20140707125038');
INSERT INTO `schema_migrations` VALUES ('20140707125107');
INSERT INTO `schema_migrations` VALUES ('20140707125312');

-- ----------------------------
-- Table structure for `slots`
-- ----------------------------
DROP TABLE IF EXISTS `slots`;
CREATE TABLE `slots` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start` time DEFAULT NULL,
  `end` time DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of slots
-- ----------------------------
INSERT INTO `slots` VALUES ('1', '09:00:00', '10:30:00', '2014-07-10 16:00:01', '2014-07-10 16:00:01', 'Slot 1', 'SL1');
INSERT INTO `slots` VALUES ('2', '11:00:00', '12:30:00', '2014-07-10 16:00:01', '2014-07-10 16:00:01', 'Slot 2', 'SL2');
INSERT INTO `slots` VALUES ('3', '14:00:00', '15:30:00', '2014-07-10 16:00:01', '2014-07-10 16:00:01', 'Slot 3', 'SL3');
INSERT INTO `slots` VALUES ('4', '16:00:00', '17:30:00', '2014-07-10 16:00:01', '2014-07-10 16:00:01', 'Slot 4', 'SL4');
INSERT INTO `slots` VALUES ('5', '18:00:00', '19:30:00', '2014-07-10 16:00:01', '2014-07-10 16:00:01', 'Slot 5', 'SL5');
INSERT INTO `slots` VALUES ('6', '20:00:00', '22:00:00', '2014-07-10 16:00:01', '2014-07-10 16:00:01', 'Slot 6', 'SL6');
INSERT INTO `slots` VALUES ('7', '22:00:00', '00:00:00', '2014-07-10 16:00:01', '2014-07-10 16:00:01', 'Slot 7', 'SL7');

-- ----------------------------
-- Table structure for `trackattendances`
-- ----------------------------
DROP TABLE IF EXISTS `trackattendances`;
CREATE TABLE `trackattendances` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `track_id` int(11) DEFAULT NULL,
  `rfid` varchar(255) DEFAULT NULL,
  `first_in` datetime DEFAULT NULL,
  `last_out` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of trackattendances
-- ----------------------------

-- ----------------------------
-- Table structure for `trackroles`
-- ----------------------------
DROP TABLE IF EXISTS `trackroles`;
CREATE TABLE `trackroles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of trackroles
-- ----------------------------
INSERT INTO `trackroles` VALUES ('1', 'MDR', 'Moderator', '2014-07-10 16:00:00', '2014-07-10 16:00:00');
INSERT INTO `trackroles` VALUES ('2', 'SPK', 'Speaker', '2014-07-10 16:00:00', '2014-07-10 16:00:00');

-- ----------------------------
-- Table structure for `tracks`
-- ----------------------------
DROP TABLE IF EXISTS `tracks`;
CREATE TABLE `tracks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `theme` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `room_code` varchar(255) DEFAULT NULL,
  `trackstatus_code` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `slot_code` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `eventdate_id` varchar(255) DEFAULT NULL,
  `tracktype_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tracks
-- ----------------------------
INSERT INTO `tracks` VALUES ('1', 'Investing in Asia - Cyclical or  Structural Growth Slowdown?', null, 'KDH', 'ACT', '2014-07-10 18:00:07', '2014-07-10 18:00:07', 'SL1', null, '1', 'PRL');
INSERT INTO `tracks` VALUES ('2', 'Enhancing Social Capital', null, 'KDH', 'ACT', '2014-07-10 18:09:35', '2014-07-10 18:09:35', 'SL2', null, '1', 'PRL');
INSERT INTO `tracks` VALUES ('3', 'Bringing Electricity to the Poor', null, 'KDH', 'ACT', '2014-07-10 18:10:20', '2014-07-10 18:10:20', 'SL3', null, '1', 'PRL');
INSERT INTO `tracks` VALUES ('4', 'How to Bring Morality into  Markets?', null, 'KDH', 'ACT', '2014-07-10 18:11:11', '2014-07-10 18:11:11', 'SL4', null, '1', 'PRL');
INSERT INTO `tracks` VALUES ('5', 'Forests, Food and Biodiversity', null, 'KDH', 'ACT', '2014-07-10 18:12:24', '2014-07-10 18:12:24', 'SL5', null, '1', 'PRL');
INSERT INTO `tracks` VALUES ('6', 'The Role of the Media in Today\'s  World', null, 'KDH', 'ACT', '2014-07-10 18:14:41', '2014-07-10 18:14:41', 'SL2', null, '2', 'PRL');
INSERT INTO `tracks` VALUES ('7', 'Global Supply Chain and  Sustainability', null, 'KDH', 'ACT', '2014-07-10 18:15:36', '2014-07-10 18:15:36', 'SL3', null, '2', 'PRL');
INSERT INTO `tracks` VALUES ('8', 'Smart Urban Planning for  Megacities', null, 'KDH', 'ACT', '2014-07-10 18:16:08', '2014-07-10 18:16:08', 'SL4', null, '2', 'PRL');

-- ----------------------------
-- Table structure for `trackspeakers`
-- ----------------------------
DROP TABLE IF EXISTS `trackspeakers`;
CREATE TABLE `trackspeakers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `presenter_id` int(11) DEFAULT NULL,
  `track_id` int(11) DEFAULT NULL,
  `trackrole_code` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of trackspeakers
-- ----------------------------
INSERT INTO `trackspeakers` VALUES ('1', '2', '1', 'MDR', '2014-07-10 18:00:08', '2014-07-10 18:00:08');
INSERT INTO `trackspeakers` VALUES ('2', '4', '1', 'SPK', '2014-07-10 18:00:09', '2014-07-10 18:00:09');
INSERT INTO `trackspeakers` VALUES ('3', '10', '1', 'SPK', '2014-07-10 18:00:09', '2014-07-10 18:00:09');
INSERT INTO `trackspeakers` VALUES ('4', '11', '1', 'SPK', '2014-07-10 18:00:09', '2014-07-10 18:00:09');
INSERT INTO `trackspeakers` VALUES ('5', '9', '1', 'SPK', '2014-07-10 18:00:10', '2014-07-10 18:00:10');
INSERT INTO `trackspeakers` VALUES ('6', '2', '2', 'MDR', '2014-07-10 18:09:36', '2014-07-10 18:09:36');
INSERT INTO `trackspeakers` VALUES ('7', '5', '2', 'SPK', '2014-07-10 18:09:37', '2014-07-10 18:09:37');
INSERT INTO `trackspeakers` VALUES ('8', '4', '2', 'SPK', '2014-07-10 18:09:37', '2014-07-10 18:09:37');
INSERT INTO `trackspeakers` VALUES ('9', '10', '2', 'SPK', '2014-07-10 18:09:37', '2014-07-10 18:09:37');
INSERT INTO `trackspeakers` VALUES ('10', '8', '2', 'SPK', '2014-07-10 18:09:37', '2014-07-10 18:09:37');
INSERT INTO `trackspeakers` VALUES ('11', '10', '3', 'MDR', '2014-07-10 18:10:20', '2014-07-10 18:10:20');
INSERT INTO `trackspeakers` VALUES ('12', '5', '3', 'SPK', '2014-07-10 18:10:21', '2014-07-10 18:10:21');
INSERT INTO `trackspeakers` VALUES ('13', '4', '3', 'SPK', '2014-07-10 18:10:21', '2014-07-10 18:10:21');
INSERT INTO `trackspeakers` VALUES ('14', '11', '3', 'SPK', '2014-07-10 18:10:21', '2014-07-10 18:10:21');
INSERT INTO `trackspeakers` VALUES ('15', '3', '3', 'SPK', '2014-07-10 18:10:21', '2014-07-10 18:10:21');
INSERT INTO `trackspeakers` VALUES ('16', '8', '4', 'MDR', '2014-07-10 18:11:12', '2014-07-10 18:11:12');
INSERT INTO `trackspeakers` VALUES ('17', '5', '4', 'SPK', '2014-07-10 18:11:12', '2014-07-10 18:11:12');
INSERT INTO `trackspeakers` VALUES ('18', '4', '4', 'SPK', '2014-07-10 18:11:13', '2014-07-10 18:11:13');
INSERT INTO `trackspeakers` VALUES ('19', '10', '4', 'SPK', '2014-07-10 18:11:13', '2014-07-10 18:11:13');
INSERT INTO `trackspeakers` VALUES ('20', '9', '4', 'SPK', '2014-07-10 18:11:13', '2014-07-10 18:11:13');
INSERT INTO `trackspeakers` VALUES ('21', '4', '5', 'MDR', '2014-07-10 18:12:24', '2014-07-10 18:12:24');
INSERT INTO `trackspeakers` VALUES ('22', '5', '5', 'SPK', '2014-07-10 18:12:25', '2014-07-10 18:12:25');
INSERT INTO `trackspeakers` VALUES ('23', '11', '5', 'SPK', '2014-07-10 18:12:25', '2014-07-10 18:12:25');
INSERT INTO `trackspeakers` VALUES ('24', '2', '5', 'SPK', '2014-07-10 18:12:25', '2014-07-10 18:12:25');
INSERT INTO `trackspeakers` VALUES ('25', '3', '5', 'SPK', '2014-07-10 18:12:26', '2014-07-10 18:12:26');
INSERT INTO `trackspeakers` VALUES ('26', '8', '6', 'MDR', '2014-07-10 18:14:41', '2014-07-10 18:14:41');
INSERT INTO `trackspeakers` VALUES ('27', '1', '6', 'SPK', '2014-07-10 18:14:41', '2014-07-10 18:14:41');
INSERT INTO `trackspeakers` VALUES ('28', '5', '6', 'SPK', '2014-07-10 18:14:41', '2014-07-10 18:14:41');
INSERT INTO `trackspeakers` VALUES ('29', '2', '6', 'SPK', '2014-07-10 18:14:42', '2014-07-10 18:14:42');
INSERT INTO `trackspeakers` VALUES ('30', '9', '6', 'SPK', '2014-07-10 18:14:42', '2014-07-10 18:14:42');
INSERT INTO `trackspeakers` VALUES ('31', '3', '6', 'SPK', '2014-07-10 18:14:42', '2014-07-10 18:14:42');
INSERT INTO `trackspeakers` VALUES ('32', '4', '7', 'MDR', '2014-07-10 18:15:36', '2014-07-10 18:15:36');
INSERT INTO `trackspeakers` VALUES ('33', '5', '7', 'SPK', '2014-07-10 18:15:37', '2014-07-10 18:15:37');
INSERT INTO `trackspeakers` VALUES ('34', '10', '7', 'SPK', '2014-07-10 18:15:37', '2014-07-10 18:15:37');
INSERT INTO `trackspeakers` VALUES ('35', '11', '7', 'SPK', '2014-07-10 18:15:37', '2014-07-10 18:15:37');
INSERT INTO `trackspeakers` VALUES ('36', '9', '7', 'SPK', '2014-07-10 18:15:37', '2014-07-10 18:15:37');
INSERT INTO `trackspeakers` VALUES ('37', '9', '8', 'MDR', '2014-07-10 18:16:08', '2014-07-10 18:16:08');
INSERT INTO `trackspeakers` VALUES ('38', '1', '8', 'SPK', '2014-07-10 18:16:09', '2014-07-10 18:16:09');
INSERT INTO `trackspeakers` VALUES ('39', '4', '8', 'SPK', '2014-07-10 18:16:09', '2014-07-10 18:16:09');
INSERT INTO `trackspeakers` VALUES ('40', '10', '8', 'SPK', '2014-07-10 18:16:09', '2014-07-10 18:16:09');
INSERT INTO `trackspeakers` VALUES ('41', '2', '8', 'SPK', '2014-07-10 18:16:09', '2014-07-10 18:16:09');

-- ----------------------------
-- Table structure for `trackstatuses`
-- ----------------------------
DROP TABLE IF EXISTS `trackstatuses`;
CREATE TABLE `trackstatuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of trackstatuses
-- ----------------------------
INSERT INTO `trackstatuses` VALUES ('3', 'ACT', 'Active', '2014-07-10 15:59:58', '2014-07-10 15:59:58');
INSERT INTO `trackstatuses` VALUES ('4', 'INA', 'Inactive', '2014-07-10 15:59:58', '2014-07-10 15:59:58');

-- ----------------------------
-- Table structure for `tracktypes`
-- ----------------------------
DROP TABLE IF EXISTS `tracktypes`;
CREATE TABLE `tracktypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tracktypes
-- ----------------------------
INSERT INTO `tracktypes` VALUES ('1', 'PLN', 'Plenary', '2014-07-10 15:59:58', '2014-07-10 15:59:58');
INSERT INTO `tracktypes` VALUES ('2', 'PRL', 'Parallel', '2014-07-10 15:59:58', '2014-07-10 15:59:58');
INSERT INTO `tracktypes` VALUES ('3', 'DNR', 'Dinner', '2014-07-10 15:59:58', '2014-07-10 15:59:58');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `password_salt` varchar(255) DEFAULT NULL,
  `role_code` varchar(255) DEFAULT NULL,
  `push_notification` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `usefor` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('11', 'adminGES', '$2a$10$qKRzjhOFvEE5u8H4UqBxJet4xGEQIvx4HiOOaNyF2NN54R0Zjf3BK', '$2a$10$qKRzjhOFvEE5u8H4UqBxJe', 'ADM', null, '2014-07-10 15:59:56', '2014-07-10 15:59:56', 'system');
INSERT INTO `users` VALUES ('12', 'attendance', '$2a$10$a49gi6O71PFBz/rfD/Jfl.ZbNFNcNuspT/gOk9VF9crzfujGJ36le', '$2a$10$a49gi6O71PFBz/rfD/Jfl.', 'ATT', null, '2014-07-10 15:59:56', '2014-07-10 15:59:56', 'attendance');
INSERT INTO `users` VALUES ('13', 'hotel', '$2a$10$uHxUoaYpimjZcMznwbTA7uiXFbppBZ6ufDOvFdcJU8zQQ6nwGW56O', '$2a$10$uHxUoaYpimjZcMznwbTA7u', 'HTL', 'APA91bE-fP3S73697_DvPYbiOZfMW1Nr9mdMhN4xENedAgIrhfrygouYuPGjwnlwS23YXuUJrDXrK3-3WwCsZrXoc1G_0HNJXgyw0sPU0Fg_xyEjf1OUf9kee4aR1caeSSs83Lk4XEdfTbUO6tcjA6x65z6ZgcJMKQ', '2014-07-10 15:59:56', '2014-07-10 15:59:56', 'notification');
INSERT INTO `users` VALUES ('14', 'transport', '$2a$10$Zd8ZTHGCLPyWVKV4HnDdkeDsWY9QsOqBQOKcLONK6IqyW.TC4/NjS', '$2a$10$Zd8ZTHGCLPyWVKV4HnDdke', 'LGS', 'APA91bFI-c4aNFb4GHcX55_I7d3stcSajpqr4H2FzXGRH7ONlomjuAftSsB6p3sRifAz5Lc6P8ReXVKFWkfjQ3zsEhZ9QbskzbINSIT7ClYzvcsibxBd0kL5YCTOQV_YZOFMWmNLipY60kSaFrZbXnF6MJVl8cf2Ew', '2014-07-10 15:59:57', '2014-07-10 15:59:57', 'notification');
INSERT INTO `users` VALUES ('15', 'ushered', '$2a$10$5tQUlkugccJ3NGeD7f7MQOOxy1sWXCp3OyFT8096llOOeRpOxDf2K', '$2a$10$5tQUlkugccJ3NGeD7f7MQO', 'USH', 'APA91bECZzkQ4PSVzfQTQpVHphlla6w7IYIXvKRkdB_dTNolW7Ju3vQqgObT_mh1vvz-iRhYKIrN9BbIDv4FbASFP920zcEExmJx8cUFLoPjEywr6sm-VzTGN9xYlDonkIYZvTxx2-QZy5eGUEyGdVX2Vfk1NTTHmg', '2014-07-10 15:59:57', '2014-07-10 15:59:57', 'notification');
INSERT INTO `users` VALUES ('16', 'participant', '$2a$10$2rGUitMRUqbjYZsxQYKNpeBJ36Zr48w2S7aFPgwvuvttK94WvusLO', '$2a$10$2rGUitMRUqbjYZsxQYKNpe', 'DLG', null, '2014-07-10 15:59:57', '2014-07-10 15:59:57', 'system');
INSERT INTO `users` VALUES ('17', 'speaker', '$2a$10$mEE5pSGqAKg5R4.z1ms.CepUQO9mWD48h8M7L0T57xPqDf7Aqs1Na', '$2a$10$mEE5pSGqAKg5R4.z1ms.Ce', 'SPK', null, '2014-07-10 15:59:57', '2014-07-10 15:59:57', 'system');
INSERT INTO `users` VALUES ('18', 'media', '$2a$10$rQpq9O/bDDWPMDlDLuFCheUFpx3Q.Hst8wxYGkYUBXv4n2Q7cTBBy', '$2a$10$rQpq9O/bDDWPMDlDLuFChe', 'MDA', null, '2014-07-10 15:59:57', '2014-07-10 15:59:57', 'system');
INSERT INTO `users` VALUES ('19', 'airport', '$2a$10$c8wtZ/KsMfdbylDvUrlE7.3wn1aA1lvPuPwu0zpv6co9I/euBIDEK', '$2a$10$c8wtZ/KsMfdbylDvUrlE7.', 'APT', null, '2014-07-10 15:59:57', '2014-07-10 15:59:57', 'notification');
INSERT INTO `users` VALUES ('20', 'hotel2', '$2a$10$vq63ZRp5jgMn/jV9eyhdH.ATl9No/VOj/7h2NpVoX/919Ab/WdUo2', '$2a$10$vq63ZRp5jgMn/jV9eyhdH.', 'HTL', 'APA91bHZ_9AKzfIHJB0C8MAfx3sH7iFZhXhHsEv9ZarCg4e2a4AA4Mi7MX7Jl-d2aRW0nv3AB8xlCQCx5ATSM0PV9wJ1QxFhZUZBvna37KmmmlA07dbCOShzrZO5_WyDKpSS23SU0hyrgezDlQuaxOabI-QOaYobMw', '2014-07-10 15:59:57', '2014-07-10 15:59:57', null);
