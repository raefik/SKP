/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50537
Source Host           : localhost:3306
Source Database       : ges2014_development

Target Server Type    : MYSQL
Target Server Version : 50537
File Encoding         : 65001

Date: 2014-07-07 20:59:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `chats`
-- ----------------------------
DROP TABLE IF EXISTS `chats`;
CREATE TABLE `chats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of chats
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of eventdates
-- ----------------------------
INSERT INTO `eventdates` VALUES ('1', '2014-06-11', '2014-06-09 10:47:38', '2014-06-09 10:47:38');
INSERT INTO `eventdates` VALUES ('2', '2014-06-20', '2014-06-09 12:43:31', '2014-06-09 12:43:31');
INSERT INTO `eventdates` VALUES ('3', '2014-07-05', '2014-07-03 16:52:35', '2014-07-03 16:52:35');

-- ----------------------------
-- Table structure for `gesparticipants`
-- ----------------------------
DROP TABLE IF EXISTS `gesparticipants`;
CREATE TABLE `gesparticipants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `participanttype_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reg_id` int(11) DEFAULT NULL,
  `rfid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hotelstatus_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `transportstatus_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `committeestatus_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `registrationstatus_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of gesparticipants
-- ----------------------------
INSERT INTO `gesparticipants` VALUES ('1', 'DLG', '39', 'aaaa', null, null, null, '2014-06-02 20:13:00', '2014-06-03 05:57:17', 'ACT');
INSERT INTO `gesparticipants` VALUES ('2', 'DLG', '33', 'bbb', null, null, null, '2014-06-03 06:10:56', '2014-06-03 06:15:07', 'ACT');
INSERT INTO `gesparticipants` VALUES ('3', 'DLG', '37', 'ccc', null, null, null, '2014-06-03 06:21:46', '2014-06-03 06:21:59', 'ACT');
INSERT INTO `gesparticipants` VALUES ('4', 'DLG', '6', 'aaa', null, null, null, '2014-06-03 06:22:22', '2014-06-03 06:23:43', 'ACT');
INSERT INTO `gesparticipants` VALUES ('5', 'DLG', '24', 'aa', null, null, null, '2014-06-03 06:23:23', '2014-06-27 20:03:31', 'ACT');
INSERT INTO `gesparticipants` VALUES ('6', 'DLG', '15', null, null, null, null, '2014-06-03 07:52:20', '2014-06-03 07:52:20', 'ACT');
INSERT INTO `gesparticipants` VALUES ('7', 'DLG', '11', 'c', null, null, null, '2014-06-21 10:01:31', '2014-06-27 20:04:57', 'ACT');
INSERT INTO `gesparticipants` VALUES ('8', 'DLG', '20', 'a', null, null, null, '2014-06-21 10:02:12', '2014-06-27 20:04:29', 'ACT');
INSERT INTO `gesparticipants` VALUES ('9', 'DLG', '7', null, null, null, null, '2014-07-05 06:09:23', '2014-07-05 06:09:23', 'QU');
INSERT INTO `gesparticipants` VALUES ('10', 'DLG', '19', null, null, null, null, '2014-07-05 06:14:09', '2014-07-05 06:14:09', 'QU');
INSERT INTO `gesparticipants` VALUES ('11', 'DLG', '2', null, null, null, null, '2014-07-05 07:28:48', '2014-07-05 07:28:48', 'QU');

-- ----------------------------
-- Table structure for `hotels`
-- ----------------------------
DROP TABLE IF EXISTS `hotels`;
CREATE TABLE `hotels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of hotels
-- ----------------------------
INSERT INTO `hotels` VALUES ('1', 'TDKL', 'TRADERS HOTEL KUALA LUMPUR', null, '03-23329888', '2014-06-09 10:52:56', '2014-06-09 10:52:56');
INSERT INTO `hotels` VALUES ('2', 'RKLH', 'RENAISSANCE KUALA LUMPUR HOTEL', null, '03-21622233', '2014-06-09 10:52:56', '2014-06-09 10:52:56');
INSERT INTO `hotels` VALUES ('3', 'IKHSKL', 'IMPIANA KLCC HOTEL & SPA KUALA LUMPUR', null, '03-21471111', '2014-06-09 10:52:56', '2014-06-09 10:52:56');
INSERT INTO `hotels` VALUES ('4', 'GYKLH', 'GRAND YATT KUALA LUMPUR HOTEL', null, '03-21821234', '2014-06-09 10:52:56', '2014-06-09 10:52:56');
INSERT INTO `hotels` VALUES ('5', 'TRBKLH', 'THE ROYAL BINTANG KUALA LUMPUR HOTEL', null, '03-21439898', '2014-06-09 10:52:56', '2014-06-09 10:52:56');
INSERT INTO `hotels` VALUES ('6', 'RIHKL', 'RADIUS INTERNATIONAL HOTEL KUALA LUMPUR', null, '03-27153888', '2014-06-09 10:52:56', '2014-06-09 10:52:56');
INSERT INTO `hotels` VALUES ('7', 'CRSSKL', 'CROWN REGENCY SERVICED SUITES KUALA LUMPUR', null, '03-21623888', '2014-06-09 10:52:56', '2014-06-09 10:52:56');
INSERT INTO `hotels` VALUES ('8', 'OTH', 'OTHERS', null, null, '2014-07-01 16:08:20', '2014-07-01 16:08:22');

-- ----------------------------
-- Table structure for `nationalities`
-- ----------------------------
DROP TABLE IF EXISTS `nationalities`;
CREATE TABLE `nationalities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=483 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of nationalities
-- ----------------------------
INSERT INTO `nationalities` VALUES ('242', 'AFG', 'AFGHANISTAN', '2014-06-09 10:52:57', '2014-06-09 10:52:57');
INSERT INTO `nationalities` VALUES ('243', 'ALB', 'ALBANIA', '2014-06-09 10:52:57', '2014-06-09 10:52:57');
INSERT INTO `nationalities` VALUES ('244', 'DZA', 'ALGERIA', '2014-06-09 10:52:57', '2014-06-09 10:52:57');
INSERT INTO `nationalities` VALUES ('245', 'ASM', 'AMERICAN SAMOA', '2014-06-09 10:52:57', '2014-06-09 10:52:57');
INSERT INTO `nationalities` VALUES ('246', 'AND', 'ANDORRA', '2014-06-09 10:52:57', '2014-06-09 10:52:57');
INSERT INTO `nationalities` VALUES ('247', 'AGO', 'ANGOLA', '2014-06-09 10:52:57', '2014-06-09 10:52:57');
INSERT INTO `nationalities` VALUES ('248', 'AIA', 'ANGUILLA', '2014-06-09 10:52:57', '2014-06-09 10:52:57');
INSERT INTO `nationalities` VALUES ('249', 'ATA', 'ANTARCTICA', '2014-06-09 10:52:57', '2014-06-09 10:52:57');
INSERT INTO `nationalities` VALUES ('250', 'ATG', 'ANTIGUA AND BARBUDA', '2014-06-09 10:52:57', '2014-06-09 10:52:57');
INSERT INTO `nationalities` VALUES ('251', 'ARG', 'ARGENTINA', '2014-06-09 10:52:57', '2014-06-09 10:52:57');
INSERT INTO `nationalities` VALUES ('252', 'ARM', 'ARMENIA', '2014-06-09 10:52:57', '2014-06-09 10:52:57');
INSERT INTO `nationalities` VALUES ('253', 'ABW', 'ARUBA', '2014-06-09 10:52:57', '2014-06-09 10:52:57');
INSERT INTO `nationalities` VALUES ('254', 'AUS', 'AUSTRALIA', '2014-06-09 10:52:57', '2014-06-09 10:52:57');
INSERT INTO `nationalities` VALUES ('255', 'AUT', 'AUSTRIA', '2014-06-09 10:52:57', '2014-06-09 10:52:57');
INSERT INTO `nationalities` VALUES ('256', 'AZE', 'AZERBAIJAN', '2014-06-09 10:52:57', '2014-06-09 10:52:57');
INSERT INTO `nationalities` VALUES ('257', 'BHS', 'BAHAMAS', '2014-06-09 10:52:57', '2014-06-09 10:52:57');
INSERT INTO `nationalities` VALUES ('258', 'BHR', 'BAHRAIN', '2014-06-09 10:52:57', '2014-06-09 10:52:57');
INSERT INTO `nationalities` VALUES ('259', 'BGD', 'BANGLADESH', '2014-06-09 10:52:57', '2014-06-09 10:52:57');
INSERT INTO `nationalities` VALUES ('260', 'BRB', 'BARBADOS', '2014-06-09 10:52:57', '2014-06-09 10:52:57');
INSERT INTO `nationalities` VALUES ('261', 'BLR', 'BELARUS', '2014-06-09 10:52:57', '2014-06-09 10:52:57');
INSERT INTO `nationalities` VALUES ('262', 'BEL', 'BELGIUM', '2014-06-09 10:52:57', '2014-06-09 10:52:57');
INSERT INTO `nationalities` VALUES ('263', 'BLZ', 'BELIZE', '2014-06-09 10:52:57', '2014-06-09 10:52:57');
INSERT INTO `nationalities` VALUES ('264', 'BEN', 'BENIN', '2014-06-09 10:52:57', '2014-06-09 10:52:57');
INSERT INTO `nationalities` VALUES ('265', 'BMU', 'BERMUDA', '2014-06-09 10:52:57', '2014-06-09 10:52:57');
INSERT INTO `nationalities` VALUES ('266', 'BTN', 'BHUTAN', '2014-06-09 10:52:57', '2014-06-09 10:52:57');
INSERT INTO `nationalities` VALUES ('267', 'BOL', 'BOLIVIA', '2014-06-09 10:52:57', '2014-06-09 10:52:57');
INSERT INTO `nationalities` VALUES ('268', 'BIH', 'BOSNIA AND HERZEGOWINA', '2014-06-09 10:52:57', '2014-06-09 10:52:57');
INSERT INTO `nationalities` VALUES ('269', 'BWA', 'BOTSWANA', '2014-06-09 10:52:57', '2014-06-09 10:52:57');
INSERT INTO `nationalities` VALUES ('270', 'BVT', 'BOUVET ISLAND', '2014-06-09 10:52:57', '2014-06-09 10:52:57');
INSERT INTO `nationalities` VALUES ('271', 'BRA', 'BRAZIL', '2014-06-09 10:52:58', '2014-06-09 10:52:58');
INSERT INTO `nationalities` VALUES ('272', 'IOT', 'BRITISH INDIAN OCEAN TERRITORY', '2014-06-09 10:52:58', '2014-06-09 10:52:58');
INSERT INTO `nationalities` VALUES ('273', 'BRN', 'BRUNEI DARUSSALAM', '2014-06-09 10:52:58', '2014-06-09 10:52:58');
INSERT INTO `nationalities` VALUES ('274', 'BGR', 'BULGARIA', '2014-06-09 10:52:58', '2014-06-09 10:52:58');
INSERT INTO `nationalities` VALUES ('275', 'BFA', 'BURKINA FASO', '2014-06-09 10:52:58', '2014-06-09 10:52:58');
INSERT INTO `nationalities` VALUES ('276', 'BDI', 'BURUNDI', '2014-06-09 10:52:58', '2014-06-09 10:52:58');
INSERT INTO `nationalities` VALUES ('277', 'KHM', 'CAMBODIA', '2014-06-09 10:52:58', '2014-06-09 10:52:58');
INSERT INTO `nationalities` VALUES ('278', 'CMR', 'CAMEROON', '2014-06-09 10:52:58', '2014-06-09 10:52:58');
INSERT INTO `nationalities` VALUES ('279', 'CAN', 'CANADA', '2014-06-09 10:52:58', '2014-06-09 10:52:58');
INSERT INTO `nationalities` VALUES ('280', 'CPV', 'CAPE VERDE', '2014-06-09 10:52:58', '2014-06-09 10:52:58');
INSERT INTO `nationalities` VALUES ('281', 'CYM', 'CAYMAN ISLANDS', '2014-06-09 10:52:58', '2014-06-09 10:52:58');
INSERT INTO `nationalities` VALUES ('282', 'CAF', 'CENTRAL AFRICAN REPUBLIC', '2014-06-09 10:52:58', '2014-06-09 10:52:58');
INSERT INTO `nationalities` VALUES ('283', 'TCD', 'CHAD', '2014-06-09 10:52:58', '2014-06-09 10:52:58');
INSERT INTO `nationalities` VALUES ('284', 'CHL', 'CHILE', '2014-06-09 10:52:58', '2014-06-09 10:52:58');
INSERT INTO `nationalities` VALUES ('285', 'CHN', 'CHINA', '2014-06-09 10:52:58', '2014-06-09 10:52:58');
INSERT INTO `nationalities` VALUES ('286', 'CXR', 'CHRISTMAS ISLAND', '2014-06-09 10:52:58', '2014-06-09 10:52:58');
INSERT INTO `nationalities` VALUES ('287', 'CCK', 'COCOS (KEELING) ISLANDS', '2014-06-09 10:52:58', '2014-06-09 10:52:58');
INSERT INTO `nationalities` VALUES ('288', 'COL', 'COLOMBIA', '2014-06-09 10:52:58', '2014-06-09 10:52:58');
INSERT INTO `nationalities` VALUES ('289', 'COM', 'COMOROS', '2014-06-09 10:52:58', '2014-06-09 10:52:58');
INSERT INTO `nationalities` VALUES ('290', 'COG', 'CONGO', '2014-06-09 10:52:58', '2014-06-09 10:52:58');
INSERT INTO `nationalities` VALUES ('291', 'COD', 'CONGO, THE DRC', '2014-06-09 10:52:58', '2014-06-09 10:52:58');
INSERT INTO `nationalities` VALUES ('292', 'COK', 'COOK ISLANDS', '2014-06-09 10:52:58', '2014-06-09 10:52:58');
INSERT INTO `nationalities` VALUES ('293', 'CRI', 'COSTA RICA', '2014-06-09 10:52:58', '2014-06-09 10:52:58');
INSERT INTO `nationalities` VALUES ('294', 'CIV', 'COTE D\'IVOIRE', '2014-06-09 10:52:58', '2014-06-09 10:52:58');
INSERT INTO `nationalities` VALUES ('295', 'HRV', 'CROATIA (local name: Hrvatska)', '2014-06-09 10:52:59', '2014-06-09 10:52:59');
INSERT INTO `nationalities` VALUES ('296', 'CUB', 'CUBA', '2014-06-09 10:52:59', '2014-06-09 10:52:59');
INSERT INTO `nationalities` VALUES ('297', 'CYP', 'CYPRUS', '2014-06-09 10:52:59', '2014-06-09 10:52:59');
INSERT INTO `nationalities` VALUES ('298', 'CZE', 'CZECH REPUBLIC', '2014-06-09 10:52:59', '2014-06-09 10:52:59');
INSERT INTO `nationalities` VALUES ('299', 'DNK', 'DENMARK', '2014-06-09 10:52:59', '2014-06-09 10:52:59');
INSERT INTO `nationalities` VALUES ('300', 'DJI', 'DJIBOUTI', '2014-06-09 10:52:59', '2014-06-09 10:52:59');
INSERT INTO `nationalities` VALUES ('301', 'DMA', 'DOMINICA', '2014-06-09 10:52:59', '2014-06-09 10:52:59');
INSERT INTO `nationalities` VALUES ('302', 'DOM', 'DOMINICAN REPUBLIC', '2014-06-09 10:52:59', '2014-06-09 10:52:59');
INSERT INTO `nationalities` VALUES ('303', 'TMP', 'EAST TIMOR', '2014-06-09 10:52:59', '2014-06-09 10:52:59');
INSERT INTO `nationalities` VALUES ('304', 'ECU', 'ECUADOR', '2014-06-09 10:52:59', '2014-06-09 10:52:59');
INSERT INTO `nationalities` VALUES ('305', 'EGY', 'EGYPT', '2014-06-09 10:52:59', '2014-06-09 10:52:59');
INSERT INTO `nationalities` VALUES ('306', 'SLV', 'EL SALVADOR', '2014-06-09 10:52:59', '2014-06-09 10:52:59');
INSERT INTO `nationalities` VALUES ('307', 'GNQ', 'EQUATORIAL GUINEA', '2014-06-09 10:52:59', '2014-06-09 10:52:59');
INSERT INTO `nationalities` VALUES ('308', 'ERI', 'ERITREA', '2014-06-09 10:52:59', '2014-06-09 10:52:59');
INSERT INTO `nationalities` VALUES ('309', 'EST', 'ESTONIA', '2014-06-09 10:52:59', '2014-06-09 10:52:59');
INSERT INTO `nationalities` VALUES ('310', 'ETH ', 'ETHIOPIA', '2014-06-09 10:52:59', '2014-06-09 10:52:59');
INSERT INTO `nationalities` VALUES ('311', 'FLK', 'FALKLAND ISLANDS (MALVINAS)', '2014-06-09 10:52:59', '2014-06-09 10:52:59');
INSERT INTO `nationalities` VALUES ('312', 'FRO', 'FAROE ISLANDS', '2014-06-09 10:52:59', '2014-06-09 10:52:59');
INSERT INTO `nationalities` VALUES ('313', 'FJI', 'FIJI', '2014-06-09 10:52:59', '2014-06-09 10:52:59');
INSERT INTO `nationalities` VALUES ('314', 'FIN', 'FINLAND', '2014-06-09 10:52:59', '2014-06-09 10:52:59');
INSERT INTO `nationalities` VALUES ('315', 'FRA', 'FRANCE', '2014-06-09 10:52:59', '2014-06-09 10:52:59');
INSERT INTO `nationalities` VALUES ('316', 'FXX', 'FRANCE, METROPOLITAN', '2014-06-09 10:52:59', '2014-06-09 10:52:59');
INSERT INTO `nationalities` VALUES ('317', 'GUF', 'FRENCH GUIANA', '2014-06-09 10:52:59', '2014-06-09 10:52:59');
INSERT INTO `nationalities` VALUES ('318', 'PYF', 'FRENCH POLYNESIA', '2014-06-09 10:52:59', '2014-06-09 10:52:59');
INSERT INTO `nationalities` VALUES ('319', 'ATF', 'FRENCH SOUTHERN TERRITORIES', '2014-06-09 10:52:59', '2014-06-09 10:52:59');
INSERT INTO `nationalities` VALUES ('320', 'GAB', 'GABON', '2014-06-09 10:52:59', '2014-06-09 10:52:59');
INSERT INTO `nationalities` VALUES ('321', 'GMB', 'GAMBIA', '2014-06-09 10:52:59', '2014-06-09 10:52:59');
INSERT INTO `nationalities` VALUES ('322', 'GEO', 'GEORGIA', '2014-06-09 10:52:59', '2014-06-09 10:52:59');
INSERT INTO `nationalities` VALUES ('323', 'DEU', 'GERMANY', '2014-06-09 10:52:59', '2014-06-09 10:52:59');
INSERT INTO `nationalities` VALUES ('324', 'GHA', 'GHANA', '2014-06-09 10:53:00', '2014-06-09 10:53:00');
INSERT INTO `nationalities` VALUES ('325', 'GIB', 'GIBRALTAR', '2014-06-09 10:53:00', '2014-06-09 10:53:00');
INSERT INTO `nationalities` VALUES ('326', 'GRC', 'GREECE', '2014-06-09 10:53:00', '2014-06-09 10:53:00');
INSERT INTO `nationalities` VALUES ('327', 'GRL', 'GREENLAND', '2014-06-09 10:53:00', '2014-06-09 10:53:00');
INSERT INTO `nationalities` VALUES ('328', 'GRD', 'GRENADA', '2014-06-09 10:53:00', '2014-06-09 10:53:00');
INSERT INTO `nationalities` VALUES ('329', 'GLP', 'GUADELOUPE', '2014-06-09 10:53:00', '2014-06-09 10:53:00');
INSERT INTO `nationalities` VALUES ('330', 'GUM', 'GUAM', '2014-06-09 10:53:00', '2014-06-09 10:53:00');
INSERT INTO `nationalities` VALUES ('331', 'GTM', 'GUATEMALA', '2014-06-09 10:53:00', '2014-06-09 10:53:00');
INSERT INTO `nationalities` VALUES ('332', 'GIN', 'GUINEA', '2014-06-09 10:53:00', '2014-06-09 10:53:00');
INSERT INTO `nationalities` VALUES ('333', 'GNB', 'GUINEA-BISSAU', '2014-06-09 10:53:00', '2014-06-09 10:53:00');
INSERT INTO `nationalities` VALUES ('334', 'GUY', 'GUYANA', '2014-06-09 10:53:00', '2014-06-09 10:53:00');
INSERT INTO `nationalities` VALUES ('335', 'HTI', 'HAITI', '2014-06-09 10:53:00', '2014-06-09 10:53:00');
INSERT INTO `nationalities` VALUES ('336', 'HMD', 'HEARD AND MC DONALD ISLANDS', '2014-06-09 10:53:00', '2014-06-09 10:53:00');
INSERT INTO `nationalities` VALUES ('337', 'VAT', 'HOLY SEE (VATICAN CITY STATE)', '2014-06-09 10:53:00', '2014-06-09 10:53:00');
INSERT INTO `nationalities` VALUES ('338', 'HND', 'HONDURAS', '2014-06-09 10:53:00', '2014-06-09 10:53:00');
INSERT INTO `nationalities` VALUES ('339', 'HKG', 'HONG KONG', '2014-06-09 10:53:00', '2014-06-09 10:53:00');
INSERT INTO `nationalities` VALUES ('340', 'HUN', 'HUNGARY', '2014-06-09 10:53:00', '2014-06-09 10:53:00');
INSERT INTO `nationalities` VALUES ('341', 'ISL', 'ICELAND', '2014-06-09 10:53:00', '2014-06-09 10:53:00');
INSERT INTO `nationalities` VALUES ('342', 'IND', 'INDIA', '2014-06-09 10:53:00', '2014-06-09 10:53:00');
INSERT INTO `nationalities` VALUES ('343', 'IDN', 'INDONESIA', '2014-06-09 10:53:00', '2014-06-09 10:53:00');
INSERT INTO `nationalities` VALUES ('344', 'IRN', 'IRAN (ISLAMIC REPUBLIC OF)', '2014-06-09 10:53:00', '2014-06-09 10:53:00');
INSERT INTO `nationalities` VALUES ('345', 'IRQ', 'IRAQ', '2014-06-09 10:53:00', '2014-06-09 10:53:00');
INSERT INTO `nationalities` VALUES ('346', 'IRL', 'IRELAND', '2014-06-09 10:53:00', '2014-06-09 10:53:00');
INSERT INTO `nationalities` VALUES ('347', 'ISR', 'ISRAEL', '2014-06-09 10:53:00', '2014-06-09 10:53:00');
INSERT INTO `nationalities` VALUES ('348', 'ITA', 'ITALY', '2014-06-09 10:53:00', '2014-06-09 10:53:00');
INSERT INTO `nationalities` VALUES ('349', 'JAM', 'JAMAICA', '2014-06-09 10:53:00', '2014-06-09 10:53:00');
INSERT INTO `nationalities` VALUES ('350', 'JPN', 'JAPAN', '2014-06-09 10:53:00', '2014-06-09 10:53:00');
INSERT INTO `nationalities` VALUES ('351', 'JOR', 'JORDAN', '2014-06-09 10:53:00', '2014-06-09 10:53:00');
INSERT INTO `nationalities` VALUES ('352', 'KAZ', 'KAZAKHSTAN', '2014-06-09 10:53:00', '2014-06-09 10:53:00');
INSERT INTO `nationalities` VALUES ('353', 'KEN', 'KENYA', '2014-06-09 10:53:00', '2014-06-09 10:53:00');
INSERT INTO `nationalities` VALUES ('354', 'KIR', 'KIRIBATI', '2014-06-09 10:53:01', '2014-06-09 10:53:01');
INSERT INTO `nationalities` VALUES ('355', 'PRK', 'KOREA, D.P.R.O.', '2014-06-09 10:53:01', '2014-06-09 10:53:01');
INSERT INTO `nationalities` VALUES ('356', 'KOR', 'KOREA, REPUBLIC OF', '2014-06-09 10:53:01', '2014-06-09 10:53:01');
INSERT INTO `nationalities` VALUES ('357', 'KWT', 'KUWAIT', '2014-06-09 10:53:01', '2014-06-09 10:53:01');
INSERT INTO `nationalities` VALUES ('358', 'KGZ', 'KYRGYZSTAN', '2014-06-09 10:53:01', '2014-06-09 10:53:01');
INSERT INTO `nationalities` VALUES ('359', 'LAO', 'LAOS ', '2014-06-09 10:53:01', '2014-06-09 10:53:01');
INSERT INTO `nationalities` VALUES ('360', 'LVA', 'LATVIA', '2014-06-09 10:53:01', '2014-06-09 10:53:01');
INSERT INTO `nationalities` VALUES ('361', 'LBN', 'LEBANON', '2014-06-09 10:53:01', '2014-06-09 10:53:01');
INSERT INTO `nationalities` VALUES ('362', 'LSO', 'LESOTHO', '2014-06-09 10:53:01', '2014-06-09 10:53:01');
INSERT INTO `nationalities` VALUES ('363', 'LBR', 'LIBERIA', '2014-06-09 10:53:01', '2014-06-09 10:53:01');
INSERT INTO `nationalities` VALUES ('364', 'LBY', 'LIBYAN ARAB JAMAHIRIYA', '2014-06-09 10:53:01', '2014-06-09 10:53:01');
INSERT INTO `nationalities` VALUES ('365', 'LIE', 'LIECHTENSTEIN', '2014-06-09 10:53:01', '2014-06-09 10:53:01');
INSERT INTO `nationalities` VALUES ('366', 'LTU', 'LITHUANIA', '2014-06-09 10:53:01', '2014-06-09 10:53:01');
INSERT INTO `nationalities` VALUES ('367', 'LUX', 'LUXEMBOURG', '2014-06-09 10:53:01', '2014-06-09 10:53:01');
INSERT INTO `nationalities` VALUES ('368', 'MAC', 'MACAU', '2014-06-09 10:53:01', '2014-06-09 10:53:01');
INSERT INTO `nationalities` VALUES ('369', 'MKD', 'MACEDONIA', '2014-06-09 10:53:01', '2014-06-09 10:53:01');
INSERT INTO `nationalities` VALUES ('370', 'MDG', 'MADAGASCAR', '2014-06-09 10:53:01', '2014-06-09 10:53:01');
INSERT INTO `nationalities` VALUES ('371', 'MWI', 'MALAWI', '2014-06-09 10:53:01', '2014-06-09 10:53:01');
INSERT INTO `nationalities` VALUES ('372', 'MYS', 'MALAYSIA', '2014-06-09 10:53:01', '2014-06-09 10:53:01');
INSERT INTO `nationalities` VALUES ('373', 'MDV', 'MALDIVES', '2014-06-09 10:53:01', '2014-06-09 10:53:01');
INSERT INTO `nationalities` VALUES ('374', 'MLI', 'MALI', '2014-06-09 10:53:01', '2014-06-09 10:53:01');
INSERT INTO `nationalities` VALUES ('375', 'MLT', 'MALTA', '2014-06-09 10:53:01', '2014-06-09 10:53:01');
INSERT INTO `nationalities` VALUES ('376', 'MHL', 'MARSHALL ISLANDS', '2014-06-09 10:53:01', '2014-06-09 10:53:01');
INSERT INTO `nationalities` VALUES ('377', 'MTQ', 'MARTINIQUE', '2014-06-09 10:53:01', '2014-06-09 10:53:01');
INSERT INTO `nationalities` VALUES ('378', 'MRT', 'MAURITANIA', '2014-06-09 10:53:01', '2014-06-09 10:53:01');
INSERT INTO `nationalities` VALUES ('379', 'MUS', 'MAURITIUS', '2014-06-09 10:53:01', '2014-06-09 10:53:01');
INSERT INTO `nationalities` VALUES ('380', 'MYT', 'MAYOTTE', '2014-06-09 10:53:01', '2014-06-09 10:53:01');
INSERT INTO `nationalities` VALUES ('381', 'MEX', 'MEXICO', '2014-06-09 10:53:01', '2014-06-09 10:53:01');
INSERT INTO `nationalities` VALUES ('382', 'FSM', 'MICRONESIA, FEDERATED STATES OF', '2014-06-09 10:53:02', '2014-06-09 10:53:02');
INSERT INTO `nationalities` VALUES ('383', 'MDA', 'MOLDOVA, REPUBLIC OF', '2014-06-09 10:53:02', '2014-06-09 10:53:02');
INSERT INTO `nationalities` VALUES ('384', 'MCO', 'MONACO', '2014-06-09 10:53:02', '2014-06-09 10:53:02');
INSERT INTO `nationalities` VALUES ('385', 'MNG', 'MONGOLIA', '2014-06-09 10:53:02', '2014-06-09 10:53:02');
INSERT INTO `nationalities` VALUES ('386', 'MNE', 'MONTENEGRO', '2014-06-09 10:53:02', '2014-06-09 10:53:02');
INSERT INTO `nationalities` VALUES ('387', 'MSR', 'MONTSERRAT', '2014-06-09 10:53:02', '2014-06-09 10:53:02');
INSERT INTO `nationalities` VALUES ('388', 'MAR', 'MOROCCO', '2014-06-09 10:53:02', '2014-06-09 10:53:02');
INSERT INTO `nationalities` VALUES ('389', 'MOZ', 'MOZAMBIQUE', '2014-06-09 10:53:02', '2014-06-09 10:53:02');
INSERT INTO `nationalities` VALUES ('390', 'MMR', 'MYANMAR (Burma) ', '2014-06-09 10:53:02', '2014-06-09 10:53:02');
INSERT INTO `nationalities` VALUES ('391', 'NAM', 'NAMIBIA', '2014-06-09 10:53:02', '2014-06-09 10:53:02');
INSERT INTO `nationalities` VALUES ('392', 'NRU', 'NAURU', '2014-06-09 10:53:02', '2014-06-09 10:53:02');
INSERT INTO `nationalities` VALUES ('393', 'NPL', 'NEPAL', '2014-06-09 10:53:02', '2014-06-09 10:53:02');
INSERT INTO `nationalities` VALUES ('394', 'NLD', 'NETHERLANDS', '2014-06-09 10:53:02', '2014-06-09 10:53:02');
INSERT INTO `nationalities` VALUES ('395', 'ANT', 'NETHERLANDS ANTILLES', '2014-06-09 10:53:02', '2014-06-09 10:53:02');
INSERT INTO `nationalities` VALUES ('396', 'NCL', 'NEW CALEDONIA', '2014-06-09 10:53:02', '2014-06-09 10:53:02');
INSERT INTO `nationalities` VALUES ('397', 'NZL', 'NEW ZEALAND', '2014-06-09 10:53:02', '2014-06-09 10:53:02');
INSERT INTO `nationalities` VALUES ('398', 'NIC', 'NICARAGUA', '2014-06-09 10:53:02', '2014-06-09 10:53:02');
INSERT INTO `nationalities` VALUES ('399', 'NER', 'NIGER', '2014-06-09 10:53:02', '2014-06-09 10:53:02');
INSERT INTO `nationalities` VALUES ('400', 'NGA', 'NIGERIA', '2014-06-09 10:53:02', '2014-06-09 10:53:02');
INSERT INTO `nationalities` VALUES ('401', 'NIU', 'NIUE', '2014-06-09 10:53:02', '2014-06-09 10:53:02');
INSERT INTO `nationalities` VALUES ('402', 'NFK', 'NORFOLK ISLAND', '2014-06-09 10:53:02', '2014-06-09 10:53:02');
INSERT INTO `nationalities` VALUES ('403', 'MNP', 'NORTHERN MARIANA ISLANDS', '2014-06-09 10:53:02', '2014-06-09 10:53:02');
INSERT INTO `nationalities` VALUES ('404', 'NOR', 'NORWAY', '2014-06-09 10:53:02', '2014-06-09 10:53:02');
INSERT INTO `nationalities` VALUES ('405', 'OMN', 'OMAN', '2014-06-09 10:53:02', '2014-06-09 10:53:02');
INSERT INTO `nationalities` VALUES ('406', 'PAK', 'PAKISTAN', '2014-06-09 10:53:02', '2014-06-09 10:53:02');
INSERT INTO `nationalities` VALUES ('407', 'PLW', 'PALAU', '2014-06-09 10:53:02', '2014-06-09 10:53:02');
INSERT INTO `nationalities` VALUES ('408', 'PAN', 'PANAMA', '2014-06-09 10:53:02', '2014-06-09 10:53:02');
INSERT INTO `nationalities` VALUES ('409', 'PNG', 'PAPUA NEW GUINEA', '2014-06-09 10:53:02', '2014-06-09 10:53:02');
INSERT INTO `nationalities` VALUES ('410', 'PRY', 'PARAGUAY', '2014-06-09 10:53:03', '2014-06-09 10:53:03');
INSERT INTO `nationalities` VALUES ('411', 'PER', 'PERU', '2014-06-09 10:53:03', '2014-06-09 10:53:03');
INSERT INTO `nationalities` VALUES ('412', 'PHL', 'PHILIPPINES', '2014-06-09 10:53:03', '2014-06-09 10:53:03');
INSERT INTO `nationalities` VALUES ('413', 'PCN', 'PITCAIRN', '2014-06-09 10:53:03', '2014-06-09 10:53:03');
INSERT INTO `nationalities` VALUES ('414', 'POL', 'POLAND', '2014-06-09 10:53:03', '2014-06-09 10:53:03');
INSERT INTO `nationalities` VALUES ('415', 'PRT', 'PORTUGAL', '2014-06-09 10:53:03', '2014-06-09 10:53:03');
INSERT INTO `nationalities` VALUES ('416', 'PRI', 'PUERTO RICO', '2014-06-09 10:53:03', '2014-06-09 10:53:03');
INSERT INTO `nationalities` VALUES ('417', 'QAT', 'QATAR', '2014-06-09 10:53:03', '2014-06-09 10:53:03');
INSERT INTO `nationalities` VALUES ('418', 'REU', 'REUNION', '2014-06-09 10:53:03', '2014-06-09 10:53:03');
INSERT INTO `nationalities` VALUES ('419', 'ROM', 'ROMANIA', '2014-06-09 10:53:03', '2014-06-09 10:53:03');
INSERT INTO `nationalities` VALUES ('420', 'RUS', 'RUSSIAN FEDERATION', '2014-06-09 10:53:03', '2014-06-09 10:53:03');
INSERT INTO `nationalities` VALUES ('421', 'RWA', 'RWANDA', '2014-06-09 10:53:03', '2014-06-09 10:53:03');
INSERT INTO `nationalities` VALUES ('422', 'KNA', 'SAINT KITTS AND NEVIS', '2014-06-09 10:53:03', '2014-06-09 10:53:03');
INSERT INTO `nationalities` VALUES ('423', 'LCA', 'SAINT LUCIA', '2014-06-09 10:53:03', '2014-06-09 10:53:03');
INSERT INTO `nationalities` VALUES ('424', 'VCT', 'SAINT VINCENT AND THE GRENADINES', '2014-06-09 10:53:03', '2014-06-09 10:53:03');
INSERT INTO `nationalities` VALUES ('425', 'WSM', 'SAMOA', '2014-06-09 10:53:03', '2014-06-09 10:53:03');
INSERT INTO `nationalities` VALUES ('426', 'SMR', 'SAN MARINO', '2014-06-09 10:53:03', '2014-06-09 10:53:03');
INSERT INTO `nationalities` VALUES ('427', 'STP', 'SAO TOME AND PRINCIPE', '2014-06-09 10:53:03', '2014-06-09 10:53:03');
INSERT INTO `nationalities` VALUES ('428', 'SAU', 'SAUDI ARABIA', '2014-06-09 10:53:03', '2014-06-09 10:53:03');
INSERT INTO `nationalities` VALUES ('429', 'SEN', 'SENEGAL', '2014-06-09 10:53:03', '2014-06-09 10:53:03');
INSERT INTO `nationalities` VALUES ('430', 'SRB', 'SERBIA', '2014-06-09 10:53:03', '2014-06-09 10:53:03');
INSERT INTO `nationalities` VALUES ('431', 'SYC', 'SEYCHELLES', '2014-06-09 10:53:03', '2014-06-09 10:53:03');
INSERT INTO `nationalities` VALUES ('432', 'SLE', 'SIERRA LEONE', '2014-06-09 10:53:03', '2014-06-09 10:53:03');
INSERT INTO `nationalities` VALUES ('433', 'SGP', 'SINGAPORE', '2014-06-09 10:53:03', '2014-06-09 10:53:03');
INSERT INTO `nationalities` VALUES ('434', 'SVK', 'SLOVAKIA (Slovak Republic)', '2014-06-09 10:53:03', '2014-06-09 10:53:03');
INSERT INTO `nationalities` VALUES ('435', 'SVN', 'SLOVENIA', '2014-06-09 10:53:03', '2014-06-09 10:53:03');
INSERT INTO `nationalities` VALUES ('436', 'SLB', 'SOLOMON ISLANDS', '2014-06-09 10:53:03', '2014-06-09 10:53:03');
INSERT INTO `nationalities` VALUES ('437', 'SOM', 'SOMALIA', '2014-06-09 10:53:03', '2014-06-09 10:53:03');
INSERT INTO `nationalities` VALUES ('438', 'ZAF', 'SOUTH AFRICA', '2014-06-09 10:53:03', '2014-06-09 10:53:03');
INSERT INTO `nationalities` VALUES ('439', 'SSD', 'SOUTH SUDAN', '2014-06-09 10:53:04', '2014-06-09 10:53:04');
INSERT INTO `nationalities` VALUES ('440', 'SGS', 'SOUTH GEORGIA AND SOUTH S.S.', '2014-06-09 10:53:04', '2014-06-09 10:53:04');
INSERT INTO `nationalities` VALUES ('441', 'ESP', 'SPAIN', '2014-06-09 10:53:04', '2014-06-09 10:53:04');
INSERT INTO `nationalities` VALUES ('442', 'LKA', 'SRI LANKA', '2014-06-09 10:53:04', '2014-06-09 10:53:04');
INSERT INTO `nationalities` VALUES ('443', 'SHN', 'ST. HELENA', '2014-06-09 10:53:04', '2014-06-09 10:53:04');
INSERT INTO `nationalities` VALUES ('444', 'SPM', 'ST. PIERRE AND MIQUELON', '2014-06-09 10:53:04', '2014-06-09 10:53:04');
INSERT INTO `nationalities` VALUES ('445', 'SDN', 'SUDAN', '2014-06-09 10:53:04', '2014-06-09 10:53:04');
INSERT INTO `nationalities` VALUES ('446', 'SUR', 'SURINAME', '2014-06-09 10:53:04', '2014-06-09 10:53:04');
INSERT INTO `nationalities` VALUES ('447', 'SJM', 'SVALBARD AND JAN MAYEN ISLANDS', '2014-06-09 10:53:04', '2014-06-09 10:53:04');
INSERT INTO `nationalities` VALUES ('448', 'SWZ', 'SWAZILAND', '2014-06-09 10:53:04', '2014-06-09 10:53:04');
INSERT INTO `nationalities` VALUES ('449', 'SWE', 'SWEDEN', '2014-06-09 10:53:04', '2014-06-09 10:53:04');
INSERT INTO `nationalities` VALUES ('450', 'CHE', 'SWITZERLAND', '2014-06-09 10:53:04', '2014-06-09 10:53:04');
INSERT INTO `nationalities` VALUES ('451', 'SYR', 'SYRIAN ARAB REPUBLIC', '2014-06-09 10:53:04', '2014-06-09 10:53:04');
INSERT INTO `nationalities` VALUES ('452', 'TWN', 'TAIWAN, PROVINCE OF CHINA', '2014-06-09 10:53:04', '2014-06-09 10:53:04');
INSERT INTO `nationalities` VALUES ('453', 'TJK', 'TAJIKISTAN', '2014-06-09 10:53:04', '2014-06-09 10:53:04');
INSERT INTO `nationalities` VALUES ('454', 'TZA', 'TANZANIA, UNITED REPUBLIC OF', '2014-06-09 10:53:04', '2014-06-09 10:53:04');
INSERT INTO `nationalities` VALUES ('455', 'THA', 'THAILAND', '2014-06-09 10:53:04', '2014-06-09 10:53:04');
INSERT INTO `nationalities` VALUES ('456', 'TGO', 'TOGO', '2014-06-09 10:53:04', '2014-06-09 10:53:04');
INSERT INTO `nationalities` VALUES ('457', 'TKL', 'TOKELAU', '2014-06-09 10:53:04', '2014-06-09 10:53:04');
INSERT INTO `nationalities` VALUES ('458', 'TON', 'TONGA', '2014-06-09 10:53:04', '2014-06-09 10:53:04');
INSERT INTO `nationalities` VALUES ('459', 'TTO', 'TRINIDAD AND TOBAGO', '2014-06-09 10:53:04', '2014-06-09 10:53:04');
INSERT INTO `nationalities` VALUES ('460', 'TUN', 'TUNISIA', '2014-06-09 10:53:04', '2014-06-09 10:53:04');
INSERT INTO `nationalities` VALUES ('461', 'TUR', 'TURKEY', '2014-06-09 10:53:04', '2014-06-09 10:53:04');
INSERT INTO `nationalities` VALUES ('462', 'TKM', 'TURKMENISTAN', '2014-06-09 10:53:05', '2014-06-09 10:53:05');
INSERT INTO `nationalities` VALUES ('463', 'TCA', 'TURKS AND CAICOS ISLANDS', '2014-06-09 10:53:05', '2014-06-09 10:53:05');
INSERT INTO `nationalities` VALUES ('464', 'TUV', 'TUVALU', '2014-06-09 10:53:05', '2014-06-09 10:53:05');
INSERT INTO `nationalities` VALUES ('465', 'UGA', 'UGANDA', '2014-06-09 10:53:05', '2014-06-09 10:53:05');
INSERT INTO `nationalities` VALUES ('466', 'UKR', 'UKRAINE', '2014-06-09 10:53:05', '2014-06-09 10:53:05');
INSERT INTO `nationalities` VALUES ('467', 'ARE', 'UNITED ARAB EMIRATES', '2014-06-09 10:53:05', '2014-06-09 10:53:05');
INSERT INTO `nationalities` VALUES ('468', 'GBR', 'UNITED KINGDOM', '2014-06-09 10:53:05', '2014-06-09 10:53:05');
INSERT INTO `nationalities` VALUES ('469', 'USA', 'UNITED STATES', '2014-06-09 10:53:05', '2014-06-09 10:53:05');
INSERT INTO `nationalities` VALUES ('470', 'UMI', 'U.S. MINOR ISLANDS', '2014-06-09 10:53:05', '2014-06-09 10:53:05');
INSERT INTO `nationalities` VALUES ('471', 'URY', 'URUGUAY', '2014-06-09 10:53:05', '2014-06-09 10:53:05');
INSERT INTO `nationalities` VALUES ('472', 'UZB', 'UZBEKISTAN', '2014-06-09 10:53:05', '2014-06-09 10:53:05');
INSERT INTO `nationalities` VALUES ('473', 'VUT', 'VANUATU', '2014-06-09 10:53:05', '2014-06-09 10:53:05');
INSERT INTO `nationalities` VALUES ('474', 'VEN', 'VENEZUELA', '2014-06-09 10:53:05', '2014-06-09 10:53:05');
INSERT INTO `nationalities` VALUES ('475', 'VNM', 'VIET NAM', '2014-06-09 10:53:05', '2014-06-09 10:53:05');
INSERT INTO `nationalities` VALUES ('476', 'VGB', 'VIRGIN ISLANDS (BRITISH)', '2014-06-09 10:53:05', '2014-06-09 10:53:05');
INSERT INTO `nationalities` VALUES ('477', 'VIR', 'VIRGIN ISLANDS (U.S.)', '2014-06-09 10:53:05', '2014-06-09 10:53:05');
INSERT INTO `nationalities` VALUES ('478', 'WLF', 'WALLIS AND FUTUNA ISLANDS', '2014-06-09 10:53:05', '2014-06-09 10:53:05');
INSERT INTO `nationalities` VALUES ('479', 'ESH', 'WESTERN SAHARA', '2014-06-09 10:53:06', '2014-06-09 10:53:06');
INSERT INTO `nationalities` VALUES ('480', 'YEM', 'YEMEN', '2014-06-09 10:53:06', '2014-06-09 10:53:06');
INSERT INTO `nationalities` VALUES ('481', 'ZMB', 'ZAMBIA', '2014-06-09 10:53:06', '2014-06-09 10:53:06');
INSERT INTO `nationalities` VALUES ('482', 'ZWE ', 'ZIMBABWE', '2014-06-09 10:53:06', '2014-06-09 10:53:06');

-- ----------------------------
-- Table structure for `notifystatuses`
-- ----------------------------
DROP TABLE IF EXISTS `notifystatuses`;
CREATE TABLE `notifystatuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of notifystatuses
-- ----------------------------
INSERT INTO `notifystatuses` VALUES ('10', 'NO', 'Not Notify', '2014-06-09 10:52:55', '2014-06-09 10:52:55');
INSERT INTO `notifystatuses` VALUES ('11', 'PE', 'Pending Notification', '2014-06-09 10:52:55', '2014-06-09 10:52:55');
INSERT INTO `notifystatuses` VALUES ('12', 'ACK', 'Acknowledged', '2014-06-09 10:52:55', '2014-06-09 10:52:55');

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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of participantanswers
-- ----------------------------
INSERT INTO `participantanswers` VALUES ('3', '25', '4', '2014-07-04 03:22:44', '2014-07-04 03:22:44', '11');
INSERT INTO `participantanswers` VALUES ('4', '24', '5', '2014-07-04 04:02:20', '2014-07-04 04:02:20', '11');
INSERT INTO `participantanswers` VALUES ('5', '21', '4', '2014-07-04 04:03:25', '2014-07-04 04:03:25', '11');
INSERT INTO `participantanswers` VALUES ('22', '20', '16', '2014-07-04 19:56:28', '2014-07-04 19:56:28', '14');
INSERT INTO `participantanswers` VALUES ('23', '21', '15', '2014-07-04 19:56:34', '2014-07-04 19:56:34', '14');
INSERT INTO `participantanswers` VALUES ('26', '24', '24', '2014-07-04 20:14:06', '2014-07-04 20:14:06', '16');
INSERT INTO `participantanswers` VALUES ('27', '21', '23', '2014-07-04 20:14:24', '2014-07-04 20:14:24', '16');
INSERT INTO `participantanswers` VALUES ('28', '25', '26', '2014-07-04 20:18:18', '2014-07-04 20:18:18', '16');
INSERT INTO `participantanswers` VALUES ('29', '20', '24', '2014-07-04 20:20:36', '2014-07-04 20:20:36', '16');
INSERT INTO `participantanswers` VALUES ('30', '25', '17', '2014-07-04 21:41:46', '2014-07-04 21:41:46', '15');
INSERT INTO `participantanswers` VALUES ('31', '20', '17', '2014-07-04 21:43:56', '2014-07-04 21:43:56', '15');
INSERT INTO `participantanswers` VALUES ('32', '0', '25', '2014-07-04 23:24:50', '2014-07-04 23:24:50', '16');
INSERT INTO `participantanswers` VALUES ('33', '25', '15', '2014-07-05 00:06:57', '2014-07-05 00:06:57', '14');
INSERT INTO `participantanswers` VALUES ('34', '25', '30', '2014-07-05 00:09:35', '2014-07-05 00:09:35', '17');
INSERT INTO `participantanswers` VALUES ('35', '0', '30', '2014-07-05 00:09:39', '2014-07-05 00:09:39', '17');
INSERT INTO `participantanswers` VALUES ('36', '0', '14', '2014-07-05 00:16:12', '2014-07-05 00:16:12', '14');
INSERT INTO `participantanswers` VALUES ('37', '21', '28', '2014-07-05 00:52:05', '2014-07-05 00:52:05', '17');

-- ----------------------------
-- Table structure for `participanttypes`
-- ----------------------------
DROP TABLE IF EXISTS `participanttypes`;
CREATE TABLE `participanttypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of participanttypes
-- ----------------------------
INSERT INTO `participanttypes` VALUES ('10', 'DLG', 'Participant', '2014-06-09 10:52:55', '2014-06-09 10:52:55');
INSERT INTO `participanttypes` VALUES ('11', 'MDA', 'Media', '2014-06-09 10:52:55', '2014-06-09 10:52:55');
INSERT INTO `participanttypes` VALUES ('12', 'SPK', 'Speaker', '2014-06-09 10:52:55', '2014-06-09 10:52:55');

-- ----------------------------
-- Table structure for `pollanswers`
-- ----------------------------
DROP TABLE IF EXISTS `pollanswers`;
CREATE TABLE `pollanswers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `answer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `poll_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of pollanswers
-- ----------------------------
INSERT INTO `pollanswers` VALUES ('4', 'Mozilla Firefox', '11', '2014-07-04 00:58:03', '2014-07-04 00:58:03');
INSERT INTO `pollanswers` VALUES ('5', 'Google Chrome', '11', '2014-07-04 00:58:03', '2014-07-04 00:58:03');
INSERT INTO `pollanswers` VALUES ('13', 'Zabedah', '14', '2014-07-04 04:25:28', '2014-07-04 04:25:28');
INSERT INTO `pollanswers` VALUES ('14', 'Embong', '14', '2014-07-04 04:25:28', '2014-07-04 04:25:28');
INSERT INTO `pollanswers` VALUES ('15', 'Siti Harnani', '14', '2014-07-04 04:25:28', '2014-07-04 04:25:28');
INSERT INTO `pollanswers` VALUES ('16', 'Rafeah', '14', '2014-07-04 04:25:28', '2014-07-04 04:25:28');
INSERT INTO `pollanswers` VALUES ('17', 'Windows', '15', '2014-07-04 20:05:40', '2014-07-04 20:05:40');
INSERT INTO `pollanswers` VALUES ('18', 'Linux', '15', '2014-07-04 20:05:40', '2014-07-04 20:05:40');
INSERT INTO `pollanswers` VALUES ('19', 'Ubuntu', '15', '2014-07-04 20:05:40', '2014-07-04 20:05:40');
INSERT INTO `pollanswers` VALUES ('20', 'Mac', '15', '2014-07-04 20:05:40', '2014-07-04 20:05:40');
INSERT INTO `pollanswers` VALUES ('21', 'Huhu', '16', '2014-07-04 20:13:43', '2014-07-04 20:13:43');
INSERT INTO `pollanswers` VALUES ('22', 'Hihi', '16', '2014-07-04 20:13:43', '2014-07-04 20:13:43');
INSERT INTO `pollanswers` VALUES ('23', 'Hoho', '16', '2014-07-04 20:13:43', '2014-07-04 20:13:43');
INSERT INTO `pollanswers` VALUES ('24', 'Hehe', '16', '2014-07-04 20:13:43', '2014-07-04 20:13:43');
INSERT INTO `pollanswers` VALUES ('25', 'Lalalalalala', '16', '2014-07-04 20:13:43', '2014-07-04 20:13:43');
INSERT INTO `pollanswers` VALUES ('26', 'Jaja', '16', '2014-07-04 20:13:43', '2014-07-04 20:13:43');
INSERT INTO `pollanswers` VALUES ('27', 'Brazil', '17', '2014-07-05 00:08:51', '2014-07-05 00:08:51');
INSERT INTO `pollanswers` VALUES ('28', 'Columbia', '17', '2014-07-05 00:08:51', '2014-07-05 00:08:51');
INSERT INTO `pollanswers` VALUES ('29', 'Germany', '17', '2014-07-05 00:08:51', '2014-07-05 00:08:51');
INSERT INTO `pollanswers` VALUES ('30', 'Malaysia', '17', '2014-07-05 00:08:51', '2014-07-05 00:08:51');
INSERT INTO `pollanswers` VALUES ('31', 'Thailand', '17', '2014-07-05 00:08:51', '2014-07-05 00:08:51');

-- ----------------------------
-- Table structure for `polls`
-- ----------------------------
DROP TABLE IF EXISTS `polls`;
CREATE TABLE `polls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `presenter_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `pollstatus_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `track_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of polls
-- ----------------------------
INSERT INTO `polls` VALUES ('11', 'Which is the best Browser?', '10', '2014-07-04 00:58:03', '2014-07-04 00:58:03', 'ACT', '5');
INSERT INTO `polls` VALUES ('14', 'Perempuan mana yang paling cantik di dunia?', '10', '2014-07-04 04:25:28', '2014-07-04 04:25:28', 'ACT', '5');
INSERT INTO `polls` VALUES ('15', 'What is the best operating system? ', '3', '2014-07-04 20:05:40', '2014-07-04 20:05:40', 'ACT', '3');
INSERT INTO `polls` VALUES ('16', 'Haha', '3', '2014-07-04 20:13:43', '2014-07-04 20:13:43', 'ACT', '3');
INSERT INTO `polls` VALUES ('17', 'Siapakah pemenang World Cup? ', '10', '2014-07-05 00:08:51', '2014-07-05 00:08:51', 'ACT', '5');

-- ----------------------------
-- Table structure for `pollstatuses`
-- ----------------------------
DROP TABLE IF EXISTS `pollstatuses`;
CREATE TABLE `pollstatuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of pollstatuses
-- ----------------------------
INSERT INTO `pollstatuses` VALUES ('1', 'ACT', 'Active', '2014-06-09 10:52:56', '2014-06-09 10:52:56');
INSERT INTO `pollstatuses` VALUES ('2', 'INA', 'Inactive', '2014-06-09 10:52:56', '2014-06-09 10:52:56');

-- ----------------------------
-- Table structure for `presenterfiles`
-- ----------------------------
DROP TABLE IF EXISTS `presenterfiles`;
CREATE TABLE `presenterfiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `presenter_id` int(11) DEFAULT NULL,
  `files` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reg_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of presenterfiles
-- ----------------------------

-- ----------------------------
-- Table structure for `presenters`
-- ----------------------------
DROP TABLE IF EXISTS `presenters`;
CREATE TABLE `presenters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gesparticipant_id` int(11) DEFAULT NULL,
  `identification` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `details` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `registration_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of presenters
-- ----------------------------
INSERT INTO `presenters` VALUES ('1', null, '537393-49-84801', null, null, null, 'azhamd@gmail.com', null, 'ok', '2014-06-30 21:42:34', '2014-06-30 21:41:52', '23');
INSERT INTO `presenters` VALUES ('2', null, '428050-14-97054', null, null, null, 'rohani@gmail.com', null, 'ok', '2014-06-30 21:42:38', '2014-06-30 21:41:56', '25');
INSERT INTO `presenters` VALUES ('3', null, '640773-86-41810', null, null, null, 'nor@gmail.com', null, 'oko', '2014-06-30 21:42:40', '2014-06-30 21:41:59', '26');
INSERT INTO `presenters` VALUES ('4', null, '859512-48-46589', null, null, null, 'azham@yahoo.com', null, 'oo', '2014-06-30 21:42:43', '2014-06-30 21:42:03', '27');
INSERT INTO `presenters` VALUES ('5', null, '134247-19-70365', null, null, null, 'fiona@yahoo.com.uk', null, 'kkk', '2014-06-30 21:42:46', '2014-06-30 21:42:06', '31');
INSERT INTO `presenters` VALUES ('6', null, '952360-42-23880', null, null, null, 'nurzie@gmail.com', null, 'kkjj', '2014-06-30 21:42:50', '2014-06-30 21:42:11', '35');
INSERT INTO `presenters` VALUES ('7', null, '976667-88-90081', null, null, null, 'farah@gmail.com', null, 'jjj', '2014-06-30 21:42:54', '2014-06-30 21:42:16', '36');
INSERT INTO `presenters` VALUES ('8', null, '308659-90-34388', null, null, null, 'mira@gmail.com', null, 'hhh', '2014-06-30 21:43:02', '2014-06-30 21:42:23', '38');
INSERT INTO `presenters` VALUES ('9', null, '475851-16-68254', null, null, null, 'rose@yahoo.com', null, 'gg', '2014-06-30 21:43:00', '2014-06-30 21:42:27', '42');
INSERT INTO `presenters` VALUES ('10', null, '699145-75-58059', null, null, null, 'amzar@gmail.com', null, 'mmmm', '2014-06-30 21:43:04', '2014-06-30 21:42:30', '47');
INSERT INTO `presenters` VALUES ('11', null, '887744123154', null, null, null, 'jack@oku.com', '18 March 2014', 'Pengasas OKU di Malaysia', '2014-07-05 15:16:50', '2014-07-05 15:16:50', '51');
INSERT INTO `presenters` VALUES ('12', null, '85211444221', null, null, null, '', '24 April 1985', '', '2014-07-06 07:46:45', '2014-07-06 07:46:45', '52');
INSERT INTO `presenters` VALUES ('13', null, '723445', null, null, null, '', '24 February 1982', '', '2014-07-06 07:53:32', '2014-07-06 07:53:32', '53');
INSERT INTO `presenters` VALUES ('14', null, '8542125454632', null, null, null, '', '14 June 1984', 'Berasal dr Boolay Singapore', '2014-07-06 07:59:48', '2014-07-06 07:59:48', '54');
INSERT INTO `presenters` VALUES ('15', null, '8254321', null, null, null, '', '20 April 1984', 'Berasal dr Singapore\nAnak ada 5', '2014-07-06 08:00:58', '2014-07-06 08:00:58', '55');
INSERT INTO `presenters` VALUES ('16', null, '910423146531', null, null, null, 'fadli@iras.my', '23 April 1991', '', '2014-07-06 08:52:16', '2014-07-06 08:52:16', '56');

-- ----------------------------
-- Table structure for `registrations`
-- ----------------------------
DROP TABLE IF EXISTS `registrations`;
CREATE TABLE `registrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `noic` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nationality_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hotel_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `participanttype_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `organization` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of registrations
-- ----------------------------
INSERT INTO `registrations` VALUES ('1', 'Miezaniera Amin', '571059-17-86475', '019-6320815', 'mieza.niera@gmail.com', null, 'DEU', null, 'DLG', '2014-06-03 03:27:32', '2014-06-03 03:27:48', 'Pegawai Teknologi Maklumat', 'UiTM');
INSERT INTO `registrations` VALUES ('2', 'Azniza Md Aziz', '476453-99-86422', '012-6069607', 'azniza_aziz@salam.uitm.edu.my', null, 'SGP', null, 'DLG', '2014-06-03 03:27:32', '2014-06-03 03:27:48', 'Pegawai Teknologi Maklumat', 'UiTM');
INSERT INTO `registrations` VALUES ('3', 'Rossalinda Rose Kimberly ', '377185-94-75140', '019-7367626', 'isabella@zuberg.com', null, 'MYS', null, 'MDA', '2014-06-03 03:27:32', '2014-06-03 03:27:48', 'Pegawai Teknologi Maklumat', 'UiTM');
INSERT INTO `registrations` VALUES ('4', 'Melissa Ooi', '169391-81-31089', '018-1177558', 'melissa@yahoo.com', null, 'MYS', null, 'DLG', '2014-06-03 03:27:32', '2014-06-03 03:27:48', 'Pegawai Teknologi Maklumat', 'UiTM');
INSERT INTO `registrations` VALUES ('5', 'Siti Adila', '843779-50-83549', '015-7275673', 'adila@yahoo.com', null, 'MYS', null, 'DLG', '2014-06-03 03:27:32', '2014-06-03 03:27:48', 'Pengarah ILQAM', 'ILQAM');
INSERT INTO `registrations` VALUES ('6', 'Ahmad Sopian', '178686-50-52632', '011-8568920', 'ahmad@yahoo.com', null, 'JPN', null, 'DLG', '2014-06-03 03:27:32', '2014-06-03 03:27:48', 'Pengarah Masmed', 'Masmed');
INSERT INTO `registrations` VALUES ('7', 'Ezin, H.E. Jean-Pierre ', '125939-24-36653', '018-3356520', 'jean@gmail.com', null, 'DEU', null, 'DLG', '2014-06-03 03:27:32', '2014-06-03 03:27:48', 'Pegawai RISDA', 'RISDA');
INSERT INTO `registrations` VALUES ('8', 'Norita', '321062-27-25091', '013-9458761', 'norita@gmail.com', null, 'MYS', null, 'DLG', '2014-06-03 03:27:32', '2014-06-03 03:27:48', 'Pegawai infoTech', 'infoTech');
INSERT INTO `registrations` VALUES ('9', 'Zirdane Koyoski', '759934-31-29912', '012-5049658', 'zirdane@yahoo.co.uk', null, 'MYS', null, 'DLG', '2014-06-03 03:27:32', '2014-06-03 03:27:48', 'Pegawai infoTech', 'infoTech');
INSERT INTO `registrations` VALUES ('10', 'Tina Adella', '854975-38-42742', '017-1037693', 'tina@tino.com', null, 'DEU', null, 'DLG', '2014-06-03 03:27:32', '2014-06-03 03:27:48', 'Pegawai infoTech', 'infoTech');
INSERT INTO `registrations` VALUES ('11', 'Azman', '222111-88-67772', '013-5301796', 'man@yahoo.com', null, 'MYS', null, 'DLG', '2014-06-03 03:27:32', '2014-06-03 03:27:48', 'Pegawai infoTech', 'infoTech');
INSERT INTO `registrations` VALUES ('12', 'Zirkosh Soros', '544218-32-62718', '019-9466897', 'sirkos@co.uk', null, 'CHN', null, 'MDA', '2014-06-03 03:27:32', '2014-06-03 03:27:48', 'Pegawai Teknologi Maklumat', 'UiTM');
INSERT INTO `registrations` VALUES ('13', 'Firdaus', '502318-54-59830', '017-8093241', 'firdaus@gmail.com', null, 'MYS', null, 'DLG', '2014-06-03 03:27:32', '2014-06-03 03:27:48', 'Pegawai infoTech', 'infoTech');
INSERT INTO `registrations` VALUES ('14', 'Firdaus', '813396-58-71372', '014-6665179', 'firdaus@gmail.com', null, 'MYS', null, 'DLG', '2014-06-03 03:27:32', '2014-06-03 03:27:48', 'Pegawai infoTech', 'infoTech');
INSERT INTO `registrations` VALUES ('15', 'Azman', '142591-93-19066', '017-9132592', 'azman@gmail.com', null, 'JPN', null, 'DLG', '2014-06-03 03:27:32', '2014-06-03 03:27:48', 'Pegawai infoTech', 'infoTech');
INSERT INTO `registrations` VALUES ('16', 'Roslan', '859870-49-97108', '017-6501271', 'roslan@gmail.com', null, 'JPN', null, 'MDA', '2014-06-03 03:27:32', '2014-06-03 03:27:48', 'Pegawai Teknologi Maklumat', 'UiTM');
INSERT INTO `registrations` VALUES ('17', 'Azniza Binti Md Aziz', '701086-94-6418', '017-6694716', 'azniza.md.aziz@gmail.com', null, 'DEU', null, 'DLG', '2014-06-03 03:27:32', '2014-06-03 03:27:48', 'Pegawai infoTech', 'infoTech');
INSERT INTO `registrations` VALUES ('18', 'Hidayah', '593575-24-69317', '012-8792489', 'hidayah@gmail.com', null, 'MYS', null, 'MDA', '2014-06-03 03:27:32', '2014-06-03 03:27:48', 'Pegawai infoTech', 'infoTech');
INSERT INTO `registrations` VALUES ('19', 'Atia Adina Mohd Azham', '825976-39-88290', '010-6666860', 'atia@gmail.com', null, 'IDN', null, 'DLG', '2014-06-03 03:27:32', '2014-06-03 03:27:48', 'Pegawai infoTech', 'infoTech');
INSERT INTO `registrations` VALUES ('20', 'Alias', '828774-19-58840', '015-6538399', 'alias@gmail.com', null, 'CHN', null, 'DLG', '2014-06-03 03:27:32', '2014-06-03 03:27:48', 'Pegawai infoTech', 'infoTech');
INSERT INTO `registrations` VALUES ('21', 'Mohd Azham Shaari', '451983-27-68941', '015-6846247', 'azham@gmail.com', null, 'SGP', null, 'MDA', '2014-06-03 03:27:32', '2014-06-03 03:27:48', 'Pegawai Teknologi Maklumat', 'UiTM');
INSERT INTO `registrations` VALUES ('22', 'Polly', '604534-14-15569', '014-5017054', 'polly@gmail.com', null, 'AUS', null, 'DLG', '2014-06-03 03:27:32', '2014-06-03 03:27:48', 'Pegawai infoTech', 'infoTech');
INSERT INTO `registrations` VALUES ('23', 'Azham Shaari', '537393-49-84801', '014-1729551', 'azhamd@gmail.com', null, 'IDN', null, 'SPK', '2014-06-03 03:27:32', '2014-06-03 03:27:48', 'Pegawai infoTech', 'infoTech');
INSERT INTO `registrations` VALUES ('24', 'Aiman Alif Nor Azlan', '319732-97-95655', '018-4337157', 'alif@gmail.com', null, 'MYS', null, 'DLG', '2014-06-03 03:27:32', '2014-06-03 03:27:48', 'Pegawai infoTech', 'infoTech');
INSERT INTO `registrations` VALUES ('25', 'Rohani Esa', '428050-14-97054', '019-1824775', 'rohani@gmail.com', null, 'MYS', null, 'SPK', '2014-06-03 03:27:32', '2014-06-03 03:27:48', 'Pengarah ICAN', 'ICAN');
INSERT INTO `registrations` VALUES ('26', 'Norelissuryani Mokhtar', '640773-86-41810', '010-4930689', 'nor@gmail.com', null, 'AUS', null, 'SPK', '2014-06-03 03:27:32', '2014-06-03 03:27:48', 'Penolong Pengarah infoTech', 'infoTech');
INSERT INTO `registrations` VALUES ('27', 'Azham', '859512-48-46589', '016-3138640', 'azham@yahoo.com', null, 'MYS', null, 'SPK', '2014-06-03 03:27:32', '2014-06-03 03:27:48', 'Pengarah infoTech', 'infoTech');
INSERT INTO `registrations` VALUES ('28', 'Khairul Naim Mohd Tajudin', '233694-41-24810', '010-8966471', 'naim3502@gmail.com', null, 'MYS', null, 'DLG', '2014-06-03 03:27:32', '2014-06-03 03:27:48', 'Pegawai infoTech', 'infoTech');
INSERT INTO `registrations` VALUES ('29', 'Mohd Zaini', '345939-37-4766', '017-3865080', 'zaini@gmail.com', null, 'MYS', null, 'DLG', '2014-06-03 03:27:32', '2014-06-03 03:27:48', 'Pegawai infoTech', 'infoTech');
INSERT INTO `registrations` VALUES ('30', 'Mark Zuckerberg', '113394-19-40711', '010-9713344', 'mark@facebook.com', null, 'IDN', null, 'MDA', '2014-06-03 03:27:32', '2014-06-03 03:27:48', 'Pegawai Teknologi Maklumat', 'UiTM');
INSERT INTO `registrations` VALUES ('31', 'Harvey, Fiona', '134247-19-70365', '019-4308808', 'fiona@yahoo.com.uk', null, 'MYS', null, 'SPK', '2014-06-03 03:27:32', '2014-06-03 03:27:48', 'Pegawai infoTech', 'infoTech');
INSERT INTO `registrations` VALUES ('32', 'Wahid Omar', '604031-66-39813', '014-6511593', 'Omar@gmail.com', null, 'MYS', null, 'DLG', '2014-06-03 03:27:32', '2014-06-03 03:27:48', 'Pegawai infoTech', 'infoTech');
INSERT INTO `registrations` VALUES ('33', 'Adam Amzar Mohd Azham', '366283-38-62647', '014-7147579', 'adam@gmail.com', null, 'AUS', null, 'DLG', '2014-06-03 03:27:32', '2014-06-03 03:27:48', 'Pegawai Teknologi Maklumat', 'UiTM');
INSERT INTO `registrations` VALUES ('34', 'Roslina', '424744-53-99927', '013-2111415', 'roslina@gmail.com', null, 'IDN', null, 'DLG', '2014-06-03 03:27:32', '2014-06-03 03:27:48', 'Pegawai infoTech', 'infoTech');
INSERT INTO `registrations` VALUES ('35', 'Nurzie', '952360-42-23880', '017-4700349', 'nurzie@gmail.com', null, 'MYS', null, 'SPK', '2014-06-03 03:27:32', '2014-06-03 03:27:48', 'Pegawai infoTech', 'infoTech');
INSERT INTO `registrations` VALUES ('36', 'Farahtul Shuhada Khairul Anuar', '976667-88-90081', '014-9941057', 'farah@gmail.com', null, 'MYS', null, 'SPK', '2014-06-03 03:27:32', '2014-06-03 03:27:48', 'Pegawai infoTech', 'infoTech');
INSERT INTO `registrations` VALUES ('37', 'Aiman Alif Bin Nor Azlan', '878000-77-98917', '016-4101073', 'aiman@gmail.com', null, 'SGP', null, 'DLG', '2014-06-03 03:27:32', '2014-06-03 03:27:48', 'Pegawai Teknologi Maklumat', 'UiTM');
INSERT INTO `registrations` VALUES ('38', 'Mira', '308659-90-34388', '013-9155236', 'mira@gmail.com', null, 'CHN', null, 'SPK', '2014-06-03 03:27:32', '2014-06-03 03:27:48', 'Pegawai infoTech', 'infoTech');
INSERT INTO `registrations` VALUES ('39', 'Ahmad Abu', '970626-82-77810', '010-9495040', 'a@gmail.com', null, 'AUS', null, 'DLG', '2014-06-03 03:27:32', '2014-06-03 03:27:48', 'Pegawai infoTech', 'infoTech');
INSERT INTO `registrations` VALUES ('40', 'Masita', '648526-54-40269', '016-4155830', 'masita@yahoo.com', null, 'AUS', null, 'DLG', '2014-06-03 03:27:32', '2014-06-03 03:27:48', 'Pegawai Teknologi Maklumat', 'UiTM');
INSERT INTO `registrations` VALUES ('41', 'Husna', '276223-55-85411', '015-1431537', 'husna@gmail.com', null, 'SGP', null, 'MDA', '2014-06-03 03:27:32', '2014-06-03 03:27:48', 'Pegawai infoTech', 'infoTech');
INSERT INTO `registrations` VALUES ('42', 'Ariana Rose', '475851-16-68254', '019-3576262', 'rose@yahoo.com', null, 'CHN', null, 'SPK', '2014-06-03 03:27:32', '2014-06-03 03:27:48', 'Pegawai infoTech', 'infoTech');
INSERT INTO `registrations` VALUES ('43', 'Siti Zubaidah', '793418-52-46664', '018-2304728', 'zue1234@yahoo.com', null, 'JPN', null, 'DLG', '2014-06-03 03:27:32', '2014-06-03 03:27:48', 'Pegawai infoTech', 'infoTech');
INSERT INTO `registrations` VALUES ('44', 'Faiz', '490680-60-32389', '016-3519661', 'fais@gmail.com', null, 'AUS', null, 'DLG', '2014-06-03 03:27:32', '2014-06-03 03:27:48', 'Pegawai infoTech', 'infoTech');
INSERT INTO `registrations` VALUES ('45', 'Zahrah', '555611-89-6641', '015-4544637', 'zahrah@gmail.com', null, 'AUS', null, 'DLG', '2014-06-03 03:27:32', '2014-06-03 03:27:48', 'Pegawai Teknologi Maklumat', 'UiTM');
INSERT INTO `registrations` VALUES ('46', 'Fakhrul Afiq Khairul Anuar', '696610-35-17614', '013-5889513', 'afiq@gmail.com', null, 'JPN', null, 'DLG', '2014-06-03 03:27:32', '2014-06-03 03:27:48', 'Pegawai infoTech', 'infoTech');
INSERT INTO `registrations` VALUES ('47', 'Atia Adina Adam Amzar', '699145-75-58059', '014-9282367', 'amzar@gmail.com', null, 'IDN', null, 'SPK', '2014-06-03 03:27:32', '2014-06-03 03:27:48', 'Pegawai Teknologi Maklumat', 'UiTM');
INSERT INTO `registrations` VALUES ('48', 'Norbaiduri Huzaifah', '811293-48-95699', '018-5595704', 'bai@gmail.com', null, 'AUS', null, 'DLG', '2014-06-03 03:27:32', '2014-06-03 03:27:48', 'Pegawai Teknologi Maklumat', 'UiTM');
INSERT INTO `registrations` VALUES ('49', 'Norelissuryani', '560807-44-46660', '015-6031794', 'eliss@salam.uitm.edu.my', null, 'DEU', null, 'DLG', '2014-06-03 03:27:32', '2014-06-03 03:27:48', 'Pegawai infoTech', 'infoTech');
INSERT INTO `registrations` VALUES ('50', 'Zack Black', '8885544111', '0192223311', 'zack@yatim.my', null, 'MYS', 'OTH', 'DLG', '2014-07-05 15:13:15', '2014-07-05 15:13:15', 'Pegawai Atasan Rumah Anak Yatim', 'Persatuan Anak Yatim Malaysia');
INSERT INTO `registrations` VALUES ('51', 'Jack Black', '887744123154', '', 'jack@oku.com', null, 'MYS', 'RIHKL', 'SPK', '2014-07-05 15:16:50', '2014-07-05 15:16:50', 'President Of Oku', 'OKU Organization');
INSERT INTO `registrations` VALUES ('52', 'Johannah', '85211444221', '', '', null, 'MYS', 'OTH', 'SPK', '2014-07-06 07:46:45', '2014-07-06 07:46:45', 'Founder Terlajak Laris', 'Terlajak Laris Sdn Bhd');
INSERT INTO `registrations` VALUES ('53', 'Jihann Ahmad', '723445', '', '', null, 'MYS', 'OTH', 'SPK', '2014-07-06 07:53:32', '2014-07-06 07:53:32', 'Founder Ubat Kuat', 'Ubat Kuat Sdn Bhd');
INSERT INTO `registrations` VALUES ('54', 'Jamilah Hassan', '8542125454632', '', '', null, 'SGP', 'TDKL', 'SPK', '2014-07-06 07:59:47', '2014-07-06 07:59:47', 'Co Founder Karipap Frozen', 'Karipap Frozen Jam  Sdn Bhd');
INSERT INTO `registrations` VALUES ('55', 'Kamilah Hassan', '8254321', '', '', null, 'SGP', 'CRSSKL', 'SPK', '2014-07-06 08:00:58', '2014-07-06 08:00:58', 'Co Founder Terung Frozen', 'Terung Frozen Kam  Sdn Bhd');
INSERT INTO `registrations` VALUES ('56', 'Mohd Fadli Abdul Rahman', '910423146531', '0122222222', 'fadli@iras.my', '16.gif', 'MYS', 'RIHKL', 'SPK', '2014-07-06 08:52:16', '2014-07-06 08:52:16', 'Founder I Ras', 'i-RAS');

-- ----------------------------
-- Table structure for `registrationstatuses`
-- ----------------------------
DROP TABLE IF EXISTS `registrationstatuses`;
CREATE TABLE `registrationstatuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of registrationstatuses
-- ----------------------------
INSERT INTO `registrationstatuses` VALUES ('4', 'PR', 'Pre-registered', '2014-06-09 10:52:56', '2014-06-09 10:52:56');
INSERT INTO `registrationstatuses` VALUES ('5', 'QU', 'Queue', '2014-06-09 10:52:56', '2014-06-09 10:52:56');
INSERT INTO `registrationstatuses` VALUES ('6', 'ACT', 'Activated', '2014-06-09 10:52:56', '2014-06-09 10:52:56');

-- ----------------------------
-- Table structure for `roles`
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('28', 'ADM', 'Admin', '2014-06-09 10:52:54', '2014-06-09 10:52:54');
INSERT INTO `roles` VALUES ('29', 'ATT', 'Attendance', '2014-06-09 10:52:54', '2014-06-09 10:52:54');
INSERT INTO `roles` VALUES ('30', 'DNR', 'Dinner', '2014-06-09 10:52:54', '2014-06-09 10:52:54');
INSERT INTO `roles` VALUES ('31', 'HTL', 'Admin Hotel', '2014-06-09 10:52:54', '2014-06-09 10:52:54');
INSERT INTO `roles` VALUES ('32', 'LGS', 'Admin Logistic', '2014-06-09 10:52:54', '2014-06-09 10:52:54');
INSERT INTO `roles` VALUES ('33', 'USH', 'Admin Usherer', '2014-06-09 10:52:54', '2014-06-09 10:52:54');
INSERT INTO `roles` VALUES ('34', 'APT', 'Admin Airport', '2014-06-09 10:52:54', '2014-06-09 10:52:54');
INSERT INTO `roles` VALUES ('35', 'DLG', 'Admin Participant', '2014-06-09 10:52:54', '2014-06-09 10:52:54');
INSERT INTO `roles` VALUES ('36', 'SPK', 'Admin Speaker', '2014-06-09 10:52:55', '2014-06-09 10:52:55');
INSERT INTO `roles` VALUES ('37', 'MDA', 'Admin Media', '2014-06-09 10:52:55', '2014-06-09 10:52:55');

-- ----------------------------
-- Table structure for `rooms`
-- ----------------------------
DROP TABLE IF EXISTS `rooms`;
CREATE TABLE `rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `capacity` int(11) DEFAULT NULL,
  `current` int(11) DEFAULT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of rooms
-- ----------------------------
INSERT INTO `rooms` VALUES ('9', 'PHG', 'Pahang', '2014-06-09 10:52:56', '2014-06-09 10:52:56', '100', '0', 'pahang.png');
INSERT INTO `rooms` VALUES ('10', 'SLG', 'Selangor', '2014-06-09 10:52:56', '2014-06-09 10:52:56', '100', '0', 'selangor.png');
INSERT INTO `rooms` VALUES ('11', 'JHR', 'Johor', '2014-06-09 10:52:56', '2014-06-09 10:52:56', '100', '0', 'johor.png');
INSERT INTO `rooms` VALUES ('12', 'PRK', 'Perak', '2014-06-09 10:52:56', '2014-06-09 10:52:56', '100', '0', 'perak.png');
INSERT INTO `rooms` VALUES ('13', 'KDH', 'Kedah', '2014-06-09 10:52:56', '2014-06-09 10:52:56', '100', '0', 'kedah.png');
INSERT INTO `rooms` VALUES ('14', 'PNG', 'Penang', '2014-06-09 10:52:56', '2014-06-09 10:52:56', '100', '0', 'penang.png');
INSERT INTO `rooms` VALUES ('15', 'SBH', 'Sabah', '2014-06-09 10:52:56', '2014-06-09 10:52:56', '100', '0', 'sabah.png');
INSERT INTO `rooms` VALUES ('16', 'SRK', 'Sarawak', '2014-06-09 10:52:56', '2014-06-09 10:52:56', '100', '0', 'sarawak.png');

-- ----------------------------
-- Table structure for `schema_migrations`
-- ----------------------------
DROP TABLE IF EXISTS `schema_migrations`;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of slots
-- ----------------------------
INSERT INTO `slots` VALUES ('1', '09:00:00', '10:30:00', '2014-06-09 10:52:56', '2014-06-09 10:52:56', 'Slot 1', 'SL1');
INSERT INTO `slots` VALUES ('2', '11:00:00', '12:30:00', '2014-06-09 10:52:56', '2014-06-09 10:52:56', 'Slot 2', 'SL2');
INSERT INTO `slots` VALUES ('3', '14:00:00', '15:30:00', '2014-06-09 10:52:56', '2014-06-09 10:52:56', 'Slot 3', 'SL3');
INSERT INTO `slots` VALUES ('4', '16:00:00', '17:30:00', '2014-06-09 10:52:56', '2014-06-09 10:52:56', 'Slot 4', 'SL4');
INSERT INTO `slots` VALUES ('5', '18:00:00', '19:30:00', '2014-06-09 10:52:56', '2014-06-09 10:52:56', 'Slot 5', 'SL5');

-- ----------------------------
-- Table structure for `trackattendances`
-- ----------------------------
DROP TABLE IF EXISTS `trackattendances`;
CREATE TABLE `trackattendances` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `track_id` int(11) DEFAULT NULL,
  `rfid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_in` datetime DEFAULT NULL,
  `last_out` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of trackattendances
-- ----------------------------

-- ----------------------------
-- Table structure for `trackroles`
-- ----------------------------
DROP TABLE IF EXISTS `trackroles`;
CREATE TABLE `trackroles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of trackroles
-- ----------------------------
INSERT INTO `trackroles` VALUES ('3', 'MDR', 'Moderator', '2014-06-09 10:52:56', '2014-06-09 10:52:56');
INSERT INTO `trackroles` VALUES ('4', 'SPK', 'Speaker', '2014-06-09 10:52:56', '2014-06-09 10:52:56');

-- ----------------------------
-- Table structure for `tracks`
-- ----------------------------
DROP TABLE IF EXISTS `tracks`;
CREATE TABLE `tracks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `theme` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `room_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trackstatus_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `slot_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `eventdate_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tracktype_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tracks
-- ----------------------------
INSERT INTO `tracks` VALUES ('3', 'Islamic Economic', null, 'PHG', 'ACT', '2014-06-09 12:42:11', '2014-06-09 12:42:11', 'SL1', null, '1', 'PRL');
INSERT INTO `tracks` VALUES ('4', 'gg', null, 'PHG', 'ACT', '2014-06-09 12:44:20', '2014-06-09 12:44:20', 'SL1', null, '2', 'PRL');
INSERT INTO `tracks` VALUES ('6', 'ggggggg', null, 'PHG', 'ACT', '2014-07-03 16:53:16', '2014-07-03 16:53:16', 'SL2', null, '3', 'PRL');

-- ----------------------------
-- Table structure for `trackspeakers`
-- ----------------------------
DROP TABLE IF EXISTS `trackspeakers`;
CREATE TABLE `trackspeakers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `presenter_id` int(11) DEFAULT NULL,
  `track_id` int(11) DEFAULT NULL,
  `trackrole_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of trackspeakers
-- ----------------------------
INSERT INTO `trackspeakers` VALUES ('1', '4', '3', 'MDR', '2014-06-09 12:42:11', '2014-06-09 12:42:11');
INSERT INTO `trackspeakers` VALUES ('2', '3', '3', 'SPK', '2014-06-09 12:42:11', '2014-06-09 12:42:11');
INSERT INTO `trackspeakers` VALUES ('3', '6', '3', 'SPK', '2014-06-09 12:42:12', '2014-06-09 12:42:12');
INSERT INTO `trackspeakers` VALUES ('4', '8', '3', 'SPK', '2014-06-09 12:42:12', '2014-06-09 12:42:12');
INSERT INTO `trackspeakers` VALUES ('5', '9', '3', 'SPK', '2014-06-09 12:42:12', '2014-06-09 12:42:12');
INSERT INTO `trackspeakers` VALUES ('6', '1', '4', 'MDR', '2014-06-09 12:44:20', '2014-06-09 12:44:20');
INSERT INTO `trackspeakers` VALUES ('7', '4', '4', 'SPK', '2014-06-09 12:44:20', '2014-06-09 12:44:20');
INSERT INTO `trackspeakers` VALUES ('8', '6', '4', 'SPK', '2014-06-09 12:44:20', '2014-06-09 12:44:20');
INSERT INTO `trackspeakers` VALUES ('9', '7', '4', 'SPK', '2014-06-09 12:44:21', '2014-06-09 12:44:21');
INSERT INTO `trackspeakers` VALUES ('10', '8', '4', 'SPK', '2014-06-09 12:44:21', '2014-06-09 12:44:21');
INSERT INTO `trackspeakers` VALUES ('11', '2', '6', 'MDR', '2014-07-03 16:53:16', '2014-07-03 16:53:16');
INSERT INTO `trackspeakers` VALUES ('12', '3', '6', 'SPK', '2014-07-03 16:53:16', '2014-07-03 16:53:16');
INSERT INTO `trackspeakers` VALUES ('13', '4', '6', 'SPK', '2014-07-03 16:53:16', '2014-07-03 16:53:16');
INSERT INTO `trackspeakers` VALUES ('14', '7', '6', 'SPK', '2014-07-03 16:53:16', '2014-07-03 16:53:16');
INSERT INTO `trackspeakers` VALUES ('15', '10', '6', 'SPK', '2014-07-03 16:53:16', '2014-07-03 16:53:16');

-- ----------------------------
-- Table structure for `trackstatuses`
-- ----------------------------
DROP TABLE IF EXISTS `trackstatuses`;
CREATE TABLE `trackstatuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of trackstatuses
-- ----------------------------
INSERT INTO `trackstatuses` VALUES ('7', 'ACT', 'Active', '2014-06-09 10:52:55', '2014-06-09 10:52:55');
INSERT INTO `trackstatuses` VALUES ('8', 'INA', 'Inactive', '2014-06-09 10:52:55', '2014-06-09 10:52:55');

-- ----------------------------
-- Table structure for `tracktypes`
-- ----------------------------
DROP TABLE IF EXISTS `tracktypes`;
CREATE TABLE `tracktypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of tracktypes
-- ----------------------------
INSERT INTO `tracktypes` VALUES ('1', 'PLN', 'Plenary', '2014-07-07 20:57:42', '2014-07-07 20:57:47');
INSERT INTO `tracktypes` VALUES ('2', 'PRL', 'Parallel', '2014-07-07 20:58:05', '2014-07-07 20:58:07');
INSERT INTO `tracktypes` VALUES ('3', 'DNR', 'Dinner', '2014-07-07 20:58:23', '2014-07-07 20:58:26');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `push_notification` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `usefor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('31', 'adminGES', '$2a$10$qKRzjhOFvEE5u8H4UqBxJet4xGEQIvx4HiOOaNyF2NN54R0Zjf3BK', '$2a$10$qKRzjhOFvEE5u8H4UqBxJe', 'ADM', null, '2014-06-09 10:52:55', '2014-06-27 19:45:16', 'system');
INSERT INTO `users` VALUES ('32', 'attendance', '$2a$10$a49gi6O71PFBz/rfD/Jfl.ZbNFNcNuspT/gOk9VF9crzfujGJ36le', '$2a$10$a49gi6O71PFBz/rfD/Jfl.', 'ATT', null, '2014-06-09 10:52:55', '2014-06-09 10:52:55', 'attendance');
INSERT INTO `users` VALUES ('33', 'hotel', '$2a$10$uHxUoaYpimjZcMznwbTA7uiXFbppBZ6ufDOvFdcJU8zQQ6nwGW56O', '$2a$10$uHxUoaYpimjZcMznwbTA7u', 'HTL', null, '2014-06-09 10:52:55', '2014-06-09 10:52:55', 'notification');
INSERT INTO `users` VALUES ('34', 'transport', '$2a$10$Zd8ZTHGCLPyWVKV4HnDdkeDsWY9QsOqBQOKcLONK6IqyW.TC4/NjS', '$2a$10$Zd8ZTHGCLPyWVKV4HnDdke', 'LGS', null, '2014-06-09 10:52:55', '2014-06-09 10:52:55', 'notification');
INSERT INTO `users` VALUES ('35', 'ushered', '$2a$10$5tQUlkugccJ3NGeD7f7MQOOxy1sWXCp3OyFT8096llOOeRpOxDf2K', '$2a$10$5tQUlkugccJ3NGeD7f7MQO', 'USH', null, '2014-06-09 10:52:55', '2014-06-09 10:52:55', 'notification');
INSERT INTO `users` VALUES ('36', 'participant', '$2a$10$2rGUitMRUqbjYZsxQYKNpeBJ36Zr48w2S7aFPgwvuvttK94WvusLO', '$2a$10$2rGUitMRUqbjYZsxQYKNpe', 'DLG', null, '2014-06-09 10:52:55', '2014-06-27 19:47:56', 'system');
INSERT INTO `users` VALUES ('37', 'speaker', '$2a$10$mEE5pSGqAKg5R4.z1ms.CepUQO9mWD48h8M7L0T57xPqDf7Aqs1Na', '$2a$10$mEE5pSGqAKg5R4.z1ms.Ce', 'SPK', null, '2014-06-09 10:52:55', '2014-06-09 10:52:55', 'system');
INSERT INTO `users` VALUES ('38', 'media', '$2a$10$rQpq9O/bDDWPMDlDLuFCheUFpx3Q.Hst8wxYGkYUBXv4n2Q7cTBBy', '$2a$10$rQpq9O/bDDWPMDlDLuFChe', 'MDA', null, '2014-06-09 10:52:55', '2014-06-09 10:52:55', 'system');
INSERT INTO `users` VALUES ('39', 'airport', '$2a$10$c8wtZ/KsMfdbylDvUrlE7.3wn1aA1lvPuPwu0zpv6co9I/euBIDEK', '$2a$10$c8wtZ/KsMfdbylDvUrlE7.', 'APT', null, '2014-06-09 10:52:55', '2014-06-09 10:52:55', 'notification');
INSERT INTO `users` VALUES ('40', 'hotel2', '$2a$10$vq63ZRp5jgMn/jV9eyhdH.ATl9No/VOj/7h2NpVoX/919Ab/WdUo2', '$2a$10$vq63ZRp5jgMn/jV9eyhdH.', 'HTL', null, '2014-06-09 10:52:55', '2014-06-09 10:52:55', 'notification');
INSERT INTO `users` VALUES ('42', 'admin', '$2a$10$.fSm7.LZljr3I3jRIBvEA.rgm88jbShBR9jNqvi1UZVwZXNul4mPi', '$2a$10$.fSm7.LZljr3I3jRIBvEA.', 'ADM', null, '2014-06-26 19:23:03', '2014-06-26 19:23:03', 'system');
INSERT INTO `users` VALUES ('48', 'aaaa', '$2a$10$WqM/6AJvzahWjdxUdq4IXux39z0GTM5.fklh9Y7NOeP31WmujSSiy', '$2a$10$WqM/6AJvzahWjdxUdq4IXu', 'ATT', null, '2014-06-26 22:06:57', '2014-06-26 22:11:03', 'attendance');
