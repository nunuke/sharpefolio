CREATE  TABLE `sharpefolio`.`prices` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `stock_id` INT NOT NULL ,
  `date` date NOT NULL ,
  `closing_price` double(10,4) UNSIGNED NOT NULL ,
  `change` double(14,8) NOT NULL DEFAULT 0 ,
  PRIMARY KEY (`id`, `stock_id`, `date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `stocks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `symbol` varchar(50) NOT NULL,
  `company` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`,`symbol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `duration` int(11) NOT NULL,
  `formula` varchar(50) NOT NULL,
  PRIMARY KEY (`id`, `date`, `duration`, `formula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `ratios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_id` int(11) NOT NULL,
  `report_id` int(11) NOT NULL,
  `ratio` double(10,6),
  PRIMARY KEY (`id`, `stock_id`, `report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;