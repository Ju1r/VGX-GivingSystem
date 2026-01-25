CREATE TABLE IF NOT EXISTS `vgx_giving_permissions` (
  `playername` VARCHAR(100) DEFAULT NULL,
  `citizenid` VARCHAR(50) NOT NULL,
  `license` VARCHAR(50) DEFAULT NULL,
  `permissions` JSON NOT NULL,
  `granted_by` VARCHAR(50) DEFAULT NULL,
  `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`citizenid`),
  UNIQUE KEY `license` (`license`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;