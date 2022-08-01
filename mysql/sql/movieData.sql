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


