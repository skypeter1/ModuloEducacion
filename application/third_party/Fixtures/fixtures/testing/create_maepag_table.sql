CREATE TABLE IF NOT EXISTS `{db_name}`.`maepag` (
  `codcte01` varchar(15) NOT NULL default '0',
  `nomcte01` varchar(80) default '0',
  `cv1cte01` char(1) default '6',
  `cv2cte01` char(1) default '1',
  `tipcte01` varchar(20) default '0',
  `ofienccte01` varchar(4) default '0',
  `vendcte01` varchar(4) default '0',
  `cobrcte01` varchar(4) default '0',
  `loccte01` varchar(4) default '0',
  `dircte01` varchar(40) default '0',
  `telcte01` varchar(11) default '0',
  `cascte01` varchar(15) default '0',
  `fecing01` datetime default NULL,
  `condpag01` varchar(4) default '0',
  `desctocte01` double(6,2) default '0.00',
  `limcred01` double(18,2) default '0.00',
  `desppar01` char(1) default 'S',
  `cheqpro01` int(2) default '0',
  `sdoeje01` double(18,2) default '0.00',
  `sdoant01` double(18,2) default '0.00',
  `sdoact01` double(18,2) default '0.00',
  `acudbm01` double(18,2) default '0.00',
  `acucrm01` double(18,2) default '0.00',
  `acudbe01` double(18,2) default '0.00',
  `acucre01` double(18,2) default '0.00',
  `comentcte01` char(2) default '0',
  `statuscte01` int(1) unsigned default '0',
  `identcte01` varchar(15) default '0',
  `cordcte01` varchar(4) default '0',
  `limcant01` int(1) unsigned default '0',
  `pagleg01` varchar(30) default '0',
  `telcte01b` varchar(11) default '0',
  `telcte01c` varchar(11) default '0',
  `emailcte01` varchar(30) default NULL,
  `ctacgcte01` varchar(15) default '0',
  `obsercte01` text,
  `totexceso01` double(18,2) default '0.00',
  `imagencte01` varchar(100) default NULL,
  `block` tinyint(1) unsigned default NULL,
  `UID` int(3) unsigned default NULL,
  `ultimoacceso` bigint(14) default NULL,
  `idcli` int(10) unsigned NOT NULL auto_increment,
  `catcte01` varchar(20) default NULL,
  `numautosri01` varchar(255) default NULL,
  `seriedoc01` varchar(20) default NULL,
  `fecvencdoc01` date default NULL,
  `repleg01` varchar(255) default NULL,
  `coddest01` varchar(5) default NULL,
  `longitud01` varchar(50) default NULL,
  `latitud01` varchar(50) default NULL,
  `zoom01` int(2) unsigned default NULL,
  `coniva01` char(1) NOT NULL default 'S',
  `conret01` char(1) NOT NULL default 'S',
  `ctacgant01` varchar(15) default '0',
  PRIMARY KEY  (`idcli`),
  UNIQUE KEY `codcte01` (`codcte01`),
  KEY `nomcte01` (`nomcte01`),
  KEY `cascte01` (`cascte01`),
  KEY `nomcte` (`nomcte01`),
  KEY `cedula` (`cascte01`)
);