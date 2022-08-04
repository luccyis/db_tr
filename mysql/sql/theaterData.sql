use nct127;

CREATE TABLE IF NOT EXISTS `nct127`.`tradTheater` (
  `tdthSeq` INT NOT NULL AUTO_INCREMENT,
  `tdthRegion` VARCHAR(45) NULL COMMENT '지역',
  `tdthBranch` VARCHAR(45) NULL COMMENT '극장명',
  `tdthAddress` VARCHAR(45) NULL COMMENT '상세주소\n',
  PRIMARY KEY (`tdthSeq`))
ENGINE = InnoDB
;

INSERT INTO tradTheater(

    tdthRegion
    ,tdthBranch
    ,tdthAddress
)
VALUES (
	"서울"
    ,"코엑스"
    ,"서울시 강남구 봉은사로524 B1(삼성동,코엑스몰)"
    );
INSERT INTO tradTheater(
	 tdthRegion
    ,tdthBranch
    ,tdthAddress
)
VALUES(
	"서울"
	,"성수"
	,"서울특별시 성동구 왕십리로 50"
);
INSERT INTO tradTheater(
	tdthRegion
    ,tdthBranch
    ,tdthAddress
)
VALUES(
	"서울"
    ,"동대문"
    ,"서울 중구 장충단로 247 굿모닝시티9층"
);
SELECT 
	tdthRegion
    ,tdthBranch
    ,tdthAddress
FROM tradTheater ;

CREATE TABLE IF NOT EXISTS `nct127`.`tradTheaterPlex` (
  `tdpxSeq` INT NOT NULL AUTO_INCREMENT,
  `tdpxPlexName` VARCHAR(45) NULL COMMENT '상영관 이름\n',
  `tdpxTotalSeatNum` INT NULL COMMENT '총 좌석수',
  `tdpxSittingRowNum` INT NULL COMMENT '가로 좌석수\n',
  `tdpxSittingColNum` INT NULL COMMENT '세로 좌석 수 ',
  `tdpxTicketPrice` INT NULL COMMENT '티켓 가격',
  `tradTheater_tdthSeq` INT NOT NULL,
  PRIMARY KEY (`tdpxSeq`),
  INDEX `fk_tradTheaterPlex_tradTheater1_idx` (`tradTheater_tdthSeq` ASC) VISIBLE,
  CONSTRAINT `fk_tradTheaterPlex_tradTheater1`
    FOREIGN KEY (`tradTheater_tdthSeq`)
    REFERENCES `nct127`.`tradTheater` (`tdthSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
;
SELECT 
	tdthSeq
    ,tdthRegion
    ,tdthBranch
    ,tdthAddress
FROM tradTheater;

INSERT INTO tradTheaterPlex(
	tdpxPlexName
    ,tdpxTotalSeatNum
    ,tdpxSittingRowNum
    ,tdpxSittingColNum
    ,tdpxTicketPrice
    ,tradTheater_tdthSeq
    )
VALUES (
	"1관"
    ,32
    ,8
    ,4
    ,15000
    ,1
);
INSERT INTO tradTheaterPlex(
	tdpxPlexName
    ,tdpxTotalSeatNum
    ,tdpxSittingRowNum
    ,tdpxSittingColNum
    ,tdpxTicketPrice
    ,tradTheater_tdthSeq
)
VALUES(
	"2관"
    ,32
    ,8
    ,4
    ,15000
    ,1
)
;
INSERT INTO tradTheaterPlex(
	tdpxplexName
    ,tdpxTotalSeatNum
    ,tdpxSittingRowNum
    ,tdpxSittingColNum
    ,tdpxTicketPrice
    ,tradTheater_tdthSeq
)
VALUES(
	"3관"
    ,32
    ,8
    ,4
    ,15000
    ,1
)
;
SELECT *FROM tradTheaterPlex ;

INSERT INTO tradTheaterPlex(
	tdpxPlexName
    ,tdpxTotalSeatNum
    ,tdpxSittingRowNum
    ,tdpxSittingColNum
    ,tdpxTicketPrice
    ,tradTheater_tdthSeq
)
VALUES(
	"1관"
    ,32
    ,8
    ,4
    ,15000
    ,2
)
;
INSERT INTO tradTheaterPlex(
	tdpxPlexName
    ,tdpxTotalSeatNum
    ,tdpxSittingRowNum
    ,tdpxSittingColNum
    ,tdpxTicketPrice
    ,tradTheater_tdthSeq
)
VALUES(
	"2관"
    ,32
    ,8
    ,4
    ,15000
    ,2
)
;
INSERT INTO tradTheaterPlex(
	tdpxPlexName
    ,tdpxTotalSeatNum
    ,tdpxSittingRowNum
    ,tdpxSittingColNum
    ,tdpxTicketPrice
    ,tradTheater_tdthSeq
)
VALUES(
	"3관"
    ,32
    ,8
    ,4
    ,15000
    ,2
)
;
SELECT *FROM tradTheaterPlex;
INSERT INTO tradTheaterPlex(
	tdpxPlexName
    ,tdpxTotalSeatNum
    ,tdpxSittingRowNum
    ,tdpxSittingColNum
    ,tdpxTicketPrice
    ,tradTheater_tdthSeq
)
VALUE(
	"1관"
    ,32
    ,8
    ,4
    ,15000
    ,3
)
;
INSERT INTO tradTheaterPlex(
	tdpxPlexName
    ,tdpxTotalSeatNum
    ,tdpxSittingRowNum
    ,tdpxSittingColNum
    ,tdpxTicketPrice
    ,tradTheater_tdthSeq
)
VALUE(
	"2관"
    ,32
    ,8
    ,4
    ,15000
    ,3
)
;
INSERT INTO tradTheaterPlex(
	tdpxPlexName
    ,tdpxTotalSeatNum
    ,tdpxSittingRowNum
    ,tdpxSittingColNum
    ,tdpxTicketPrice
    ,tradTheater_tdthSeq
)
VALUE(
	"3관"
    ,32
    ,8
    ,4
    ,15000
    ,3
)
;
SELECT * FROM tradTheaterPlex;
SELECT * FROM tradTheater;     
SELECT * FROM tradMovie;
SELECT * FROM tradTheaterPrice;
SELECT * FROM infrMember;
SELECT * FROM tradTimeTable;

CREATE TABLE IF NOT EXISTS `nct127`.`tradBooking` (
  `bkSeq` INT NOT NULL AUTO_INCREMENT,
  `tdbkPayment` VARCHAR(45) NULL COMMENT '결제수단\n',
  `tdbkBookingDate` DATETIME NULL COMMENT '예매날짜\n',
  `tradTimeTable_tmtbSeq` INT NOT NULL,
  `infrMember_infrMemberSeq` INT NOT NULL,
  PRIMARY KEY (`bkSeq`),
  INDEX `fk_tradBooking_tradTimeTable1_idx` (`tradTimeTable_tmtbSeq` ASC) VISIBLE,
  INDEX `fk_tradBooking_infrMember1_idx` (`infrMember_infrMemberSeq` ASC) VISIBLE,
  CONSTRAINT `fk_tradBooking_tradTimeTable1`
    FOREIGN KEY (`tradTimeTable_tmtbSeq`)
    REFERENCES `nct127`.`tradTimeTable` (`tmtbSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tradBooking_infrMember1`
    FOREIGN KEY (`infrMember_infrMemberSeq`)
    REFERENCES `nct127`.`infrMember` (`infrMemberSeq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
;



