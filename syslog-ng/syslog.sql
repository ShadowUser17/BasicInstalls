DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) AUTO_INCREMENT,
  `host` varchar(255) NOT NULL DEFAULT '',
  `facility` bigint(20) NOT NULL DEFAULT 0,
  `priority` bigint(20) NOT NULL DEFAULT 0,
  `level` bigint(20) NOT NULL DEFAULT 0,
  `tag` varchar(255) NOT NULL DEFAULT '',
  `msg` text NOT NULL DEFAULT '',
  `received_ts` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `host` (`host`)
);

DROP VIEW IF EXISTS `sv_hosts`;
CREATE VIEW `sv_hosts` AS SELECT DISTINCT `host` FROM `messages`;

DROP VIEW IF EXISTS `sv_last_hour`;
CREATE VIEW `sv_last_hour` AS SELECT `host`, `msg` FROM `messages` WHERE `created_at` >= (NOW() - INTERVAL 1 HOUR);

DROP VIEW IF EXISTS `sv_last_day`;
CREATE VIEW `sv_last_day` AS SELECT `host`, `msg` FROM `messages` WHERE `created_at` >= (NOW() - INTERVAL 24 HOUR);

DROP VIEW IF EXISTS `sv_last_week`;
CREATE VIEW `sv_last_week` AS SELECT `host`, `msg` FROM `messages` WHERE `created_at` >= (NOW() - INTERVAL 7 DAY);
