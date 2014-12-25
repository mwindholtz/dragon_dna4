# CocoaMySQL dump
# Version 0.7b5
# http://cocoamysql.sourceforge.net
#
# Host: localhost (MySQL 5.1.34)
# Database: dd_dev
# Generation Time: 2009-07-18 16:13:48 -0400
# ************************************************************

# Dump of table groups
# ------------------------------------------------------------

CREATE TABLE `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `present` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

INSERT INTO `groups` (`id`,`name`,`location`,`present`,`created_at`,`updated_at`) VALUES ('1','Party','here','1','2008-12-21 14:27:05','2008-12-21 14:27:05');
INSERT INTO `groups` (`id`,`name`,`location`,`present`,`created_at`,`updated_at`) VALUES ('8','Characters','Waiting','0','2009-07-18 17:59:50','2009-07-18 19:52:29');
INSERT INTO `groups` (`id`,`name`,`location`,`present`,`created_at`,`updated_at`) VALUES ('9','Scenario 1','The Blarney Chicken','0','2009-07-18 18:48:11','2009-07-18 19:43:44');


# Dump of table schema_migrations
# ------------------------------------------------------------

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `schema_migrations` (`version`) VALUES ('1');
INSERT INTO `schema_migrations` (`version`) VALUES ('2');
INSERT INTO `schema_migrations` (`version`) VALUES ('3');


# Dump of table targets
# ------------------------------------------------------------

CREATE TABLE `targets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `race_align` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT '1',
  `max_hp` int(11) DEFAULT '2',
  `hp` int(11) DEFAULT '2',
  `ac` int(11) DEFAULT '10',
  `treasures` text,
  `weapons` text,
  `notes` text,
  `player` varchar(255) DEFAULT NULL,
  `klass_option` varchar(255) DEFAULT NULL,
  `exp_needed` int(11) DEFAULT NULL,
  `exp_pts` int(11) DEFAULT NULL,
  `str` int(11) DEFAULT NULL,
  `int` int(11) DEFAULT NULL,
  `wiz` int(11) DEFAULT NULL,
  `dex` int(11) DEFAULT NULL,
  `cons` int(11) DEFAULT NULL,
  `char` int(11) DEFAULT NULL,
  `num_attacks` int(11) DEFAULT '1',
  `damage` varchar(255) DEFAULT NULL,
  `size` varchar(1) DEFAULT 'M',
  `exp_value` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

INSERT INTO `targets` (`id`,`group_id`,`type`,`name`,`race_align`,`level`,`max_hp`,`hp`,`ac`,`treasures`,`weapons`,`notes`,`player`,`klass_option`,`exp_needed`,`exp_pts`,`str`,`int`,`wiz`,`dex`,`cons`,`char`,`num_attacks`,`damage`,`size`,`exp_value`,`created_at`,`updated_at`) VALUES ('23','1','Character','Giadora','Gnome','5','24','24','8','','dagger\r\nleather armour\r\ndagger 1-4, 1-3\r\nshort sword 1-6, 1-8\r\n','+4 on saving throws\r\n3x damage when backstabbing\r\n25% read languages\r\n\r\nopen locks 35%\r\nremove traps 30%\r\npick pockets 40%\r\nmove silently 40%\r\nclimb walls 91%\r\nhide in shadows 30%\r\nhear noise 1-3\r\n','Monica','T','20000','12000','17','15','17','17','16','16','1',NULL,'M','0','2009-07-14 01:10:21','2009-07-18 18:24:50');
INSERT INTO `targets` (`id`,`group_id`,`type`,`name`,`race_align`,`level`,`max_hp`,`hp`,`ac`,`treasures`,`weapons`,`notes`,`player`,`klass_option`,`exp_needed`,`exp_pts`,`str`,`int`,`wiz`,`dex`,`cons`,`char`,`num_attacks`,`damage`,`size`,`exp_value`,`created_at`,`updated_at`) VALUES ('24','1','Character','Rohaan','Human','5','31','31','2','100gp','Paladin, title: Warder<br/>\r\nPlate mail<br/>\r\nLong bow 1-6, 1-6<br/>\r\n','saves at +2 <br/>\r\n2hp heal per level = 10hp<br/>\r\nprotection from evil spell 1\"<br/>\r\n3rd level cleric effect undead<br/>\r\nadd 10% to xps given<br/>\r\n','Wolfgang','F','45000','30000','18','15','14','15','15','14','1',NULL,'M','0','2009-07-14 01:21:09','2009-07-18 17:11:37');
INSERT INTO `targets` (`id`,`group_id`,`type`,`name`,`race_align`,`level`,`max_hp`,`hp`,`ac`,`treasures`,`weapons`,`notes`,`player`,`klass_option`,`exp_needed`,`exp_pts`,`str`,`int`,`wiz`,`dex`,`cons`,`char`,`num_attacks`,`damage`,`size`,`exp_value`,`created_at`,`updated_at`) VALUES ('25','8','Character','Ariel','Human','7','23','23','8','200 gp.','some','str +1, Save +1 Missile -1\r\n\r\nSpells\r\n1st: cure light wounds, detect magic\r\n2nd: find trap, silence 15\' radius\r\n3rd: striking\r\n4th: cure serious wounds','na','C','1','1','13','9','14','8','10','11','1',NULL,'M','0','2009-07-18 18:04:25','2009-07-18 18:14:21');
INSERT INTO `targets` (`id`,`group_id`,`type`,`name`,`race_align`,`level`,`max_hp`,`hp`,`ac`,`treasures`,`weapons`,`notes`,`player`,`klass_option`,`exp_needed`,`exp_pts`,`str`,`int`,`wiz`,`dex`,`cons`,`char`,`num_attacks`,`damage`,`size`,`exp_value`,`created_at`,`updated_at`) VALUES ('26','8','Character','Clydell','dwarf','6','40','40','6','200 gp','War hammer\r\ndagger\r\nChain mail armor','Str +2, Save +0, Missile +0\r\n\r\n','na2','F','1','1','16','7','9','10','14','8','1',NULL,'M','0','2009-07-18 18:06:47','2009-07-18 18:16:14');
INSERT INTO `targets` (`id`,`group_id`,`type`,`name`,`race_align`,`level`,`max_hp`,`hp`,`ac`,`treasures`,`weapons`,`notes`,`player`,`klass_option`,`exp_needed`,`exp_pts`,`str`,`int`,`wiz`,`dex`,`cons`,`char`,`num_attacks`,`damage`,`size`,`exp_value`,`created_at`,`updated_at`) VALUES ('27','8','Character','Annelise','Elf','5','18','18','10','200 gp.','staff\r\n6 darts','str +1, save 0, missile +1\r\n\r\nSpells:\r\n1st: sleep, magic missile\r\n2nd: invisibility, knock\r\n3rd: haste','tbd 3','M','1','1','13','12','8','14','9','11','1',NULL,'M','0','2009-07-18 18:10:31','2009-07-18 18:10:31');
INSERT INTO `targets` (`id`,`group_id`,`type`,`name`,`race_align`,`level`,`max_hp`,`hp`,`ac`,`treasures`,`weapons`,`notes`,`player`,`klass_option`,`exp_needed`,`exp_pts`,`str`,`int`,`wiz`,`dex`,`cons`,`char`,`num_attacks`,`damage`,`size`,`exp_value`,`created_at`,`updated_at`) VALUES ('28','8','Character','Kimbra','human','6','13','13','10','','staff\r\n2 daggers\r\n\r\n','Str -1, save 0, missile 0\r\n\r\nSpells:\r\n1st; detect magic,  charm person\r\n2nd: web, ESP\r\n3rd:  fireball, fly\r\n\r\n\r\n','tbd 4','M','1','1','7','15','11','12','9','10','1',NULL,'M','0','2009-07-18 18:13:30','2009-07-18 18:13:30');
INSERT INTO `targets` (`id`,`group_id`,`type`,`name`,`race_align`,`level`,`max_hp`,`hp`,`ac`,`treasures`,`weapons`,`notes`,`player`,`klass_option`,`exp_needed`,`exp_pts`,`str`,`int`,`wiz`,`dex`,`cons`,`char`,`num_attacks`,`damage`,`size`,`exp_value`,`created_at`,`updated_at`) VALUES ('29','8','Character','Barthel','Halfling','5','22','22','6','200 gp.','Shortsword\r\nChain-mail armor\r\n','str 0, save 0, missile +2','tbd 5','F','1','1','11','9','8','16','11','12','1',NULL,'M','0','2009-07-18 18:19:07','2009-07-18 18:19:07');
INSERT INTO `targets` (`id`,`group_id`,`type`,`name`,`race_align`,`level`,`max_hp`,`hp`,`ac`,`treasures`,`weapons`,`notes`,`player`,`klass_option`,`exp_needed`,`exp_pts`,`str`,`int`,`wiz`,`dex`,`cons`,`char`,`num_attacks`,`damage`,`size`,`exp_value`,`created_at`,`updated_at`) VALUES ('30','8','Character','Lamar','human','6','30','30','6','200 gp','longsword\r\nbow and arrows\r\ndagger\r\n\r\n','str +1, save +0, missile 0','tbd 6','F','1','1','14','10','9','11','9','12','1',NULL,'M','0','2009-07-18 18:21:07','2009-07-18 18:21:07');
INSERT INTO `targets` (`id`,`group_id`,`type`,`name`,`race_align`,`level`,`max_hp`,`hp`,`ac`,`treasures`,`weapons`,`notes`,`player`,`klass_option`,`exp_needed`,`exp_pts`,`str`,`int`,`wiz`,`dex`,`cons`,`char`,`num_attacks`,`damage`,`size`,`exp_value`,`created_at`,`updated_at`) VALUES ('31','8','Character','Quillian','human','5','12','12','8','200 gp.','short sword\r\ndagger\r\nbow and arrows\r\n\r\nLeather armor','str +0, save +0, missile +1\r\n\r\nopen locks 35%\r\nremove traps 30%\r\npick pockets 40%\r\nmove silently 40%\r\nclimb walls 91%\r\nhide in shadows 30%\r\nhear noise 1-3\r\n','tbd 7','T','1','1','10','11','8','15','10','10','1',NULL,'M','0','2009-07-18 18:24:34','2009-07-18 19:44:53');
INSERT INTO `targets` (`id`,`group_id`,`type`,`name`,`race_align`,`level`,`max_hp`,`hp`,`ac`,`treasures`,`weapons`,`notes`,`player`,`klass_option`,`exp_needed`,`exp_pts`,`str`,`int`,`wiz`,`dex`,`cons`,`char`,`num_attacks`,`damage`,`size`,`exp_value`,`created_at`,`updated_at`) VALUES ('32','8','Character','Raynor','human','6','28','28','4','200 gp','platemail armor\r\nlongsword\r\nshield\r\n\r\n','str +1, save +1, missile +0','tbd 8','F','1','1','15','7','13','10','13','8','1',NULL,'M','0','2009-07-18 18:27:21','2009-07-18 18:27:21');
INSERT INTO `targets` (`id`,`group_id`,`type`,`name`,`race_align`,`level`,`max_hp`,`hp`,`ac`,`treasures`,`weapons`,`notes`,`player`,`klass_option`,`exp_needed`,`exp_pts`,`str`,`int`,`wiz`,`dex`,`cons`,`char`,`num_attacks`,`damage`,`size`,`exp_value`,`created_at`,`updated_at`) VALUES ('33','9','Monster','Grimmvat Stonebreaker',NULL,'4','24','24','3','','battle Axe and plate-mail\r\n','Lawful.\r\n',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','d8','M','0','2009-07-18 18:46:27','2009-07-18 19:52:12');
INSERT INTO `targets` (`id`,`group_id`,`type`,`name`,`race_align`,`level`,`max_hp`,`hp`,`ac`,`treasures`,`weapons`,`notes`,`player`,`klass_option`,`exp_needed`,`exp_pts`,`str`,`int`,`wiz`,`dex`,`cons`,`char`,`num_attacks`,`damage`,`size`,`exp_value`,`created_at`,`updated_at`) VALUES ('34','9','Monster','Eric Forsett',NULL,'14','52','52','8','','staff','High Priest, Temple of Forsetta\r\n\r\nSpells:\r\n1st \r\ncure light wounds(x2)\r\ndetect evil\r\ndetect magic\r\nlight \r\nprotection from evil\r\n   \r\n2nd\r\nbless\r\nfind traps\r\nknow alignment\r\nresist fire\r\nspeak with animals\r\n\r\n3rd\r\ncontinual light\r\ncure disease\r\nlocate object\r\nremove curse\r\nstricking\r\n\r\n4th\r\ncreate water\r\ncure serious wounds\r\nneutralize poison\r\nprotection from evil 10\'\r\nspeak with plants\r\n\r\n5th\r\ncommune create food\r\ndispel evil\r\nraise dead\r\n',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','','M','0','2009-07-18 18:50:31','2009-07-18 18:54:03');
INSERT INTO `targets` (`id`,`group_id`,`type`,`name`,`race_align`,`level`,`max_hp`,`hp`,`ac`,`treasures`,`weapons`,`notes`,`player`,`klass_option`,`exp_needed`,`exp_pts`,`str`,`int`,`wiz`,`dex`,`cons`,`char`,`num_attacks`,`damage`,`size`,`exp_value`,`created_at`,`updated_at`) VALUES ('35','9','Monster','Duke\'s Wizard',NULL,'5','11','11','8','','dagger','Spells:\r\nRead Magic\r\nmagic missile\r\n\r\n2nd: mirror image\r\nwizard lock\r\n\r\n3rd: invisibility',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1-4','M','0','2009-07-18 18:59:35','2009-07-18 18:59:35');
INSERT INTO `targets` (`id`,`group_id`,`type`,`name`,`race_align`,`level`,`max_hp`,`hp`,`ac`,`treasures`,`weapons`,`notes`,`player`,`klass_option`,`exp_needed`,`exp_pts`,`str`,`int`,`wiz`,`dex`,`cons`,`char`,`num_attacks`,`damage`,`size`,`exp_value`,`created_at`,`updated_at`) VALUES ('36','9','Monster','Weapons master',NULL,'12','60','60','1','','Shield +1\r\nLongsword +2\r\n\r\n','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','4-11','M','0','2009-07-18 19:01:54','2009-07-18 19:37:10');
INSERT INTO `targets` (`id`,`group_id`,`type`,`name`,`race_align`,`level`,`max_hp`,`hp`,`ac`,`treasures`,`weapons`,`notes`,`player`,`klass_option`,`exp_needed`,`exp_pts`,`str`,`int`,`wiz`,`dex`,`cons`,`char`,`num_attacks`,`damage`,`size`,`exp_value`,`created_at`,`updated_at`) VALUES ('38','9','Monster','Duke\'s Captain',NULL,'6','30','30','9','200 gp diamond','longsword +1\r\n','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','d8+1','M','0','2009-07-18 19:05:34','2009-07-18 20:01:39');
INSERT INTO `targets` (`id`,`group_id`,`type`,`name`,`race_align`,`level`,`max_hp`,`hp`,`ac`,`treasures`,`weapons`,`notes`,`player`,`klass_option`,`exp_needed`,`exp_pts`,`str`,`int`,`wiz`,`dex`,`cons`,`char`,`num_attacks`,`damage`,`size`,`exp_value`,`created_at`,`updated_at`) VALUES ('39','9','Monster','Officer room #22',NULL,'5','26','2','9','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','d8','M','0','2009-07-18 19:06:29','2009-07-18 19:34:05');


# Dump of table weapons
# ------------------------------------------------------------

CREATE TABLE `weapons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `speed` int(11) DEFAULT NULL,
  `medium` varchar(255) DEFAULT NULL,
  `large` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



