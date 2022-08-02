use nct127;
CREATE TABLE IF NOT EXISTS `nct127`.`tradMovie` (
  `tdmvSeq` INT NOT NULL AUTO_INCREMENT COMMENT '시퀀스',
  `tdmvMovieTitle` VARCHAR(45) NULL,
  `tdmvTitleEng` VARCHAR(45) NULL COMMENT '영어제목\n',
  `tdmvAudienceScore` DOUBLE NULL COMMENT '관람객 평점\n',
  `tdmvRank` INT NULL COMMENT '예매순위',
  `tdmvStory` VARCHAR(45) NULL COMMENT '주요정보',
  `tdmvShowType` VARCHAR(45) NULL COMMENT '상영타입',
  `tdmvDirector` VARCHAR(45) NULL COMMENT '감독',
  `tdmvCast` VARCHAR(45) NULL COMMENT '출연진',
  `tdmvGenres` VARCHAR(45) NULL COMMENT '장르',
  `tdmvRunningTime` INT NULL COMMENT '상영시간',
  `tdmvAge` VARCHAR(45) NULL COMMENT '등급\n',
  `tdmvReleaseDate` DATE NULL COMMENT '개봉일',
  `tdmvAudienceNumber` INT NULL COMMENT '누적관객수\n',
  `tdmvTrailer` VARCHAR(45) NULL COMMENT '예고편',
  PRIMARY KEY (`tdmvSeq`))
ENGINE = InnoDB
;
SELECT * FROM tradMovie;

CREATE TABLE IF NOT EXISTS `nct127`.`tradTheaterPrice` (
  `thprSeq` INT NOT NULL AUTO_INCREMENT,
  `tradTheater_tdthSeq` INT NOT NULL,
  `thprWeekendNy` TINYINT NULL COMMENT '1. 주중\n2. 주말',
  `thprMorningNy` TINYINT NULL COMMENT '1. 조조\n2. 일반',
  `thprAdultNy` TINYINT NULL COMMENT '1.어른\n2. 청소년',
  `thprPrice` INT NULL COMMENT '티켓가격\n',
  PRIMARY KEY (`thprSeq`),
  INDEX `fk_tradTheaterPrice_tradTheater1_idx` (`tradTheater_tdthSeq` ASC) VISIBLE,
  CONSTRAINT `fk_tradTheaterPrice_tradTheater1`
    FOREIGN KEY (`tradTheater_tdthSeq`)
    REFERENCES `nct127`.`tradTheater` (`tdthSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
;
SELECT * FROM tradTheaterPrice;

SELECT * FROM tradTheater;

CREATE TABLE IF NOT EXISTS `nct127`.`tradTimeTable` (
  `tmtbSeq` INT NOT NULL AUTO_INCREMENT,
  `tdttShowTime` DATETIME NULL COMMENT '상영시간\n',
  `tdttMorningNy` TINYINT NULL COMMENT '조조할인\n',
  `tradTheater_tdthSeq` INT NOT NULL,
  `tradTheaterPlex_tdpxSeq` INT NOT NULL,
  `tradMovie_tdmvSeq` INT NOT NULL,
  PRIMARY KEY (`tmtbSeq`),
  INDEX `fk_tradTimeTable_tradTheater1_idx` (`tradTheater_tdthSeq` ASC) VISIBLE,
  INDEX `fk_tradTimeTable_tradTheaterPlex1_idx` (`tradTheaterPlex_tdpxSeq` ASC) VISIBLE,
  INDEX `fk_tradTimeTable_tradMovie1_idx` (`tradMovie_tdmvSeq` ASC) VISIBLE,
  CONSTRAINT `fk_tradTimeTable_tradTheater1`
    FOREIGN KEY (`tradTheater_tdthSeq`)
    REFERENCES `nct127`.`tradTheater` (`tdthSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tradTimeTable_tradTheaterPlex1`
    FOREIGN KEY (`tradTheaterPlex_tdpxSeq`)
    REFERENCES `nct127`.`tradTheaterPlex` (`tdpxSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tradTimeTable_tradMovie1`
    FOREIGN KEY (`tradMovie_tdmvSeq`)
    REFERENCES `nct127`.`tradMovie` (`tdmvSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
;

SELECT * FROM tradTimeTable;

