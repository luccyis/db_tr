use nct127;

CREATE TABLE IF NOT EXISTS `test`.`member2` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `mmId` VARCHAR(45) NULL,
  `mmPw` VARCHAR(45) NULL,
  `mmName` VARCHAR(45) NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB
;
