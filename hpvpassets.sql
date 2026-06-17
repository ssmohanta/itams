-- --------------------------------------------------------
-- Host:                         10.100.1.45
-- Server version:               10.2.16-MariaDB - MariaDB Server
-- Server OS:                    Linux
-- HeidiSQL Version:             12.10.0.7000
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table hpvp3.assets_group
CREATE TABLE IF NOT EXISTS `assets_group` (
  `SLNO` int(3) NOT NULL AUTO_INCREMENT,
  `GRP` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`SLNO`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC COMMENT='Asset Source';

-- Data exporting was unselected.

-- Dumping structure for table hpvp3.assets_hardware
CREATE TABLE IF NOT EXISTS `assets_hardware` (
  `asset_hardware_id` int(10) NOT NULL AUTO_INCREMENT,
  `asset_source` varchar(50) DEFAULT NULL,
  `asset_type` varchar(50) DEFAULT NULL,
  `vendor` varchar(50) NOT NULL DEFAULT '',
  `model` varchar(30) DEFAULT '',
  `serialnumber` varchar(30) DEFAULT NULL,
  `assetnumber` varchar(30) DEFAULT NULL COMMENT 'ISMS Asset Number',
  `asset_tag` varchar(24) DEFAULT NULL,
  `macaddress` varchar(12) DEFAULT NULL,
  `purchase_order` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `date_purchase` date DEFAULT NULL,
  `date_decomission` date DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `date_received` date DEFAULT NULL,
  `date_issued` date DEFAULT NULL,
  `staffno` varchar(7) DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `division` varchar(50) DEFAULT NULL,
  `platform` varchar(50) DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `monitor_size` int(2) DEFAULT NULL,
  `warranty` varchar(15) DEFAULT NULL,
  `cube` varchar(10) DEFAULT NULL,
  `field_address` text DEFAULT NULL,
  `user_account` varchar(12) DEFAULT NULL,
  `act_flag` int(1) DEFAULT 1,
  `update_by` varchar(12) DEFAULT NULL,
  `last_update` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`asset_hardware_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5416 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table hpvp3.assets_hardware_backup
CREATE TABLE IF NOT EXISTS `assets_hardware_backup` (
  `asset_hardware_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_source` varchar(50) DEFAULT NULL,
  `asset_type` varchar(50) DEFAULT NULL,
  `vendor` varchar(50) NOT NULL DEFAULT '',
  `model` varchar(30) DEFAULT '',
  `serialnumber` varchar(30) DEFAULT NULL,
  `assetnumber` varchar(30) DEFAULT NULL COMMENT 'ISMS Asset Number',
  `asset_tag` varchar(24) DEFAULT NULL,
  `macaddress` varchar(12) DEFAULT NULL,
  `purchase_order` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `date_purchase` date DEFAULT NULL,
  `date_decomission` date DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `date_received` date DEFAULT NULL,
  `date_issued` date DEFAULT NULL,
  `staffno` varchar(7) DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `division` varchar(50) DEFAULT NULL,
  `platform` varchar(50) DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `monitor_size` int(2) DEFAULT NULL,
  `warranty` varchar(15) DEFAULT NULL,
  `cube` varchar(10) DEFAULT NULL,
  `field_address` text DEFAULT NULL,
  `user_account` varchar(12) DEFAULT NULL,
  `act_flag` int(1) DEFAULT 1,
  `update_by` varchar(12) DEFAULT NULL,
  `last_update` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`asset_hardware_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5295 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table hpvp3.assets_hardware_backup_new
CREATE TABLE IF NOT EXISTS `assets_hardware_backup_new` (
  `asset_hardware_id` int(10) NOT NULL AUTO_INCREMENT,
  `asset_source` varchar(50) DEFAULT NULL,
  `asset_type` varchar(50) DEFAULT NULL,
  `vendor` varchar(50) NOT NULL DEFAULT '',
  `model` varchar(30) DEFAULT '',
  `serialnumber` varchar(30) DEFAULT NULL,
  `assetnumber` varchar(30) DEFAULT NULL COMMENT 'ISMS Asset Number',
  `asset_tag` varchar(24) DEFAULT NULL,
  `macaddress` varchar(12) DEFAULT NULL,
  `purchase_order` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `date_purchase` date DEFAULT NULL,
  `date_decomission` date DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `date_received` date DEFAULT NULL,
  `date_issued` date DEFAULT NULL,
  `staffno` varchar(7) DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `division` varchar(50) DEFAULT NULL,
  `platform` varchar(50) DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `monitor_size` int(2) DEFAULT NULL,
  `warranty` varchar(15) DEFAULT NULL,
  `cube` varchar(10) DEFAULT NULL,
  `field_address` text DEFAULT NULL,
  `user_account` varchar(12) DEFAULT NULL,
  `act_flag` int(1) DEFAULT 1,
  `update_by` varchar(12) DEFAULT NULL,
  `last_update` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`asset_hardware_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for view hpvp3.assets_hardware_backup_view
-- Creating temporary table to overcome VIEW dependency errors
CREATE TABLE `assets_hardware_backup_view` (
	`asset_type` VARCHAR(1) NULL COLLATE 'latin1_swedish_ci',
	`assetnumber` VARCHAR(1) NULL COMMENT 'ISMS Asset Number' COLLATE 'latin1_swedish_ci'
) ENGINE=MyISAM;

-- Dumping structure for table hpvp3.assets_hardware_copy
CREATE TABLE IF NOT EXISTS `assets_hardware_copy` (
  `asset_hardware_id` int(10) NOT NULL AUTO_INCREMENT,
  `asset_source` varchar(50) DEFAULT NULL,
  `asset_type` varchar(50) DEFAULT NULL,
  `vendor` varchar(50) NOT NULL DEFAULT '',
  `model` varchar(30) DEFAULT '',
  `serialnumber` varchar(30) DEFAULT NULL,
  `assetnumber` varchar(30) DEFAULT NULL COMMENT 'ISMS Asset Number',
  `asset_tag` varchar(24) DEFAULT NULL,
  `macaddress` varchar(12) DEFAULT NULL,
  `purchase_order` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `date_purchase` date DEFAULT NULL,
  `date_decomission` date DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `date_received` date DEFAULT NULL,
  `date_issued` date DEFAULT NULL,
  `staffno` varchar(7) DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `division` varchar(50) DEFAULT NULL,
  `platform` varchar(50) DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `monitor_size` int(2) DEFAULT NULL,
  `warranty` varchar(15) DEFAULT NULL,
  `cube` varchar(10) DEFAULT NULL,
  `field_address` text DEFAULT NULL,
  `user_account` varchar(12) DEFAULT NULL,
  `act_flag` int(1) DEFAULT 1,
  `update_by` varchar(12) DEFAULT NULL,
  `last_update` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`asset_hardware_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3115 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table hpvp3.assets_hardware_log
CREATE TABLE IF NOT EXISTS `assets_hardware_log` (
  `asset_hardware_id` int(10) unsigned NOT NULL,
  `asset_source` varchar(50) DEFAULT NULL,
  `asset_type` varchar(50) DEFAULT NULL,
  `vendor` varchar(50) NOT NULL DEFAULT '',
  `model` varchar(30) DEFAULT '',
  `serialnumber` varchar(30) DEFAULT NULL,
  `assetnumber` varchar(30) DEFAULT NULL COMMENT 'ISMS Asset Number',
  `asset_tag` varchar(24) DEFAULT NULL,
  `macaddress` varchar(12) DEFAULT NULL,
  `purchase_order` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `date_purchase` date DEFAULT NULL,
  `date_decomission` date DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `date_received` date DEFAULT NULL,
  `date_issued` date DEFAULT NULL,
  `staffno` varchar(7) DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `division` varchar(50) DEFAULT NULL,
  `platform` varchar(50) DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `monitor_size` int(2) DEFAULT NULL,
  `warranty` varchar(15) DEFAULT NULL,
  `cube` varchar(10) DEFAULT NULL,
  `field_address` text DEFAULT NULL,
  `user_account` varchar(12) DEFAULT NULL,
  `act_flag` int(1) DEFAULT 1,
  `update_by` varchar(12) DEFAULT NULL,
  `last_update` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table hpvp3.assets_hardware_monitor_size
CREATE TABLE IF NOT EXISTS `assets_hardware_monitor_size` (
  `size` int(2) NOT NULL DEFAULT 0,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table hpvp3.assets_hardware_old
CREATE TABLE IF NOT EXISTS `assets_hardware_old` (
  `asset_hardware_id` int(10) NOT NULL AUTO_INCREMENT,
  `asset_source` varchar(50) DEFAULT NULL,
  `asset_type` varchar(50) DEFAULT NULL,
  `vendor` varchar(50) NOT NULL DEFAULT '',
  `model` varchar(30) DEFAULT '',
  `serialnumber` varchar(30) DEFAULT NULL,
  `assetnumber` varchar(30) DEFAULT NULL COMMENT 'ISMS Asset Number',
  `asset_tag` varchar(24) DEFAULT NULL,
  `macaddress` varchar(12) DEFAULT NULL,
  `purchase_order` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `date_purchase` date,
  `date_decomission` date DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `date_received` date DEFAULT NULL,
  `date_issued` date DEFAULT NULL,
  `staffno` varchar(7) DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `division` varchar(50) DEFAULT NULL,
  `platform` varchar(50) DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `monitor_size` int(2),
  `warranty` varchar(15),
  `cube` varchar(10),
  `field_address` text DEFAULT NULL,
  `user_account` varchar(12) DEFAULT NULL,
  `act_flag` int(1) DEFAULT 1,
  `update_by` varchar(12) DEFAULT NULL,
  `last_update` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`asset_hardware_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6476 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table hpvp3.assets_hardware_platform
CREATE TABLE IF NOT EXISTS `assets_hardware_platform` (
  `platform_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `platform` varchar(100) NOT NULL DEFAULT '',
  `comments` text DEFAULT NULL,
  PRIMARY KEY (`platform_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table hpvp3.assets_hardware_status
CREATE TABLE IF NOT EXISTS `assets_hardware_status` (
  `assets_hardware_status` varchar(50) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table hpvp3.assets_hardware_type
CREATE TABLE IF NOT EXISTS `assets_hardware_type` (
  `assets_hardware_type` varchar(25) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table hpvp3.assets_software
CREATE TABLE IF NOT EXISTS `assets_software` (
  `asset_software_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset` varchar(100) NOT NULL DEFAULT '',
  `vendor` varchar(30) NOT NULL DEFAULT '',
  `version` varchar(20) NOT NULL,
  `date_purchase` varchar(12) DEFAULT NULL,
  `license_type` varchar(50) NOT NULL DEFAULT '',
  `status` varchar(50) DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `division` varchar(50) DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `platform` varchar(15) DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL,
  `seats` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`asset_software_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table hpvp3.assets_software_license
CREATE TABLE IF NOT EXISTS `assets_software_license` (
  `assets_software_license` varchar(50) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COMMENT='location lookup list';

-- Data exporting was unselected.

-- Dumping structure for table hpvp3.assets_software_platform
CREATE TABLE IF NOT EXISTS `assets_software_platform` (
  `assets_software_type` varchar(15) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COMMENT='location lookup list';

-- Data exporting was unselected.

-- Dumping structure for table hpvp3.assets_source
CREATE TABLE IF NOT EXISTS `assets_source` (
  `SLNO` int(3) NOT NULL AUTO_INCREMENT,
  `SRC` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`SLNO`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1 COMMENT='Asset Source';

-- Data exporting was unselected.

-- Dumping structure for table hpvp3.assets_source_1
CREATE TABLE IF NOT EXISTS `assets_source_1` (
  `SLNO` int(3) NOT NULL AUTO_INCREMENT,
  `SRC` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`SRC`),
  KEY `SLNO` (`SLNO`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC COMMENT='Asset Source';

-- Data exporting was unselected.

-- Dumping structure for table hpvp3.asset_1
CREATE TABLE IF NOT EXISTS `asset_1` (
  `asset_slno` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_source` varchar(50) DEFAULT NULL,
  `asset_type` varchar(50) DEFAULT NULL,
  `vendor` varchar(50) NOT NULL DEFAULT '',
  `model` varchar(30) DEFAULT '',
  `serialnumber` varchar(30) DEFAULT NULL,
  `assetnumber` varchar(30) NOT NULL COMMENT 'ISMS Asset Number',
  `asset_tag` varchar(24) DEFAULT NULL,
  `macaddress` varchar(12) DEFAULT NULL,
  `purchase_order` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `date_purchase` date DEFAULT NULL,
  `date_decomission` date DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `date_received` date DEFAULT NULL,
  `date_issued` date DEFAULT NULL,
  `staffno` varchar(7) DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `act_flag` int(1) DEFAULT 1,
  `update_by` varchar(12) DEFAULT NULL,
  `last_update` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`assetnumber`),
  KEY `asset_slno` (`asset_slno`),
  KEY `FK_asset_1_asset_type_1` (`asset_type`),
  CONSTRAINT `FK_asset_1_asset_type_1` FOREIGN KEY (`asset_type`) REFERENCES `asset_type_1` (`asset_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table hpvp3.asset_type_1
CREATE TABLE IF NOT EXISTS `asset_type_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_type` varchar(25) NOT NULL DEFAULT '',
  `comments` text DEFAULT NULL,
  PRIMARY KEY (`asset_type`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table hpvp3.company
CREATE TABLE IF NOT EXISTS `company` (
  `company_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(200) NOT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table hpvp3.division
CREATE TABLE IF NOT EXISTS `division` (
  `division` varchar(25) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table hpvp3.ied_wcdmachine
CREATE TABLE IF NOT EXISTS `ied_wcdmachine` (
  `building_no` varchar(50) NOT NULL,
  `bay_no` varchar(50) DEFAULT NULL,
  `bay_name` varchar(50) DEFAULT NULL,
  `machine_inventory` varchar(50) NOT NULL,
  `machine_name` varchar(100) DEFAULT NULL,
  `machine_type` varchar(100) DEFAULT NULL,
  `machine_specification` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`machine_inventory`),
  KEY `FK_ied_wcdmachine_ied_buildingdetails` (`building_no`,`bay_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='iedworkcentredirectorymachinedetails';

-- Data exporting was unselected.

-- Dumping structure for table hpvp3.location
CREATE TABLE IF NOT EXISTS `location` (
  `location` varchar(50) NOT NULL DEFAULT '',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table hpvp3.members
CREATE TABLE IF NOT EXISTS `members` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(41) NOT NULL DEFAULT '',
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `role` varchar(24) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table hpvp3.vendors
CREATE TABLE IF NOT EXISTS `vendors` (
  `vendor_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vendor` varchar(100) NOT NULL DEFAULT '',
  `comments` text DEFAULT NULL,
  PRIMARY KEY (`vendor_id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table hpvp3.vendors_software
CREATE TABLE IF NOT EXISTS `vendors_software` (
  `vendor` varchar(30) NOT NULL DEFAULT '',
  `vendor_id` int(11) NOT NULL AUTO_INCREMENT,
  `comments` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`vendor_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Removing temporary table and create final VIEW structure
DROP TABLE IF EXISTS `assets_hardware_backup_view`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `assets_hardware_backup_view` AS select `assets_hardware_backup`.`asset_type` AS `asset_type`,`assets_hardware_backup`.`assetnumber` AS `assetnumber` from `assets_hardware_backup`
;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
