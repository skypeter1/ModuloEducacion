CREATE TABLE IF NOT EXISTS `{db_name}`.`empresa` (
  `idemp` int(3) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT '0',
  `nombre_completo` varchar(50) DEFAULT NULL,
  `dsn` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(255) DEFAULT NULL,
  `logotipo` varchar(100) DEFAULT NULL,
  `licencia` varchar(32) DEFAULT NULL,
  `block` tinyint(1) unsigned DEFAULT '0',
  `UID` int(3) unsigned DEFAULT NULL,
  `ultimoacceso` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `emailempresa` varchar(30) DEFAULT NULL,
  `servidor` char(1) DEFAULT 'W',
  `website` varchar(255) DEFAULT NULL,
  `showroom` char(1) NOT NULL DEFAULT '',
  `orden` int(4) unsigned NOT NULL DEFAULT '0',
  `empsup` int(4) NOT NULL DEFAULT '0',
  `tipoFun` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`idemp`)
)