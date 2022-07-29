use nct127;

CREATE TABLE IF NOT EXISTS `nct127`.`infrMember` (
  `infrMemberSeq` INT NOT NULL AUTO_INCREMENT COMMENT '시퀀스\n',
  `ifmmId` VARCHAR(45) NULL COMMENT '아이디',
  `ifmmPassword` VARCHAR(45) NULL COMMENT '비밀번호',
  `ifmmName` VARCHAR(45) NULL COMMENT '이름',
  `ifmmGrade` VARCHAR(45) NULL,
  `ifmmGender` TINYINT NULL COMMENT '성별',
  `ifmmEmail` VARCHAR(45) NULL COMMENT '이메일',
  `ifmmPhone` VARCHAR(45) NULL COMMENT '휴대전화\n',
  `ifmmDob` DATE NULL COMMENT '생년월일\n',
  `ifmmEmailNy` TINYINT NULL COMMENT '이메일 수신 동의',
  `ifmmSmsNy` TINYINT NULL COMMENT 'sms 수신동의',
  `ifmmDobLoginNy` TINYINT NULL COMMENT '생년월일 로그인 ',
  `ifmmSnsLogin` VARCHAR(45) NULL COMMENT '간편로그인',
  PRIMARY KEY (`infrMemberSeq`))
ENGINE = InnoDB
;

INSERT INTO infrMember(
	ifmmId
    ,ifmmPassword
    ,ifmmName
    ,ifmmGrade
    ,ifmmGender
    ,ifmmEmail
    ,ifmmPhone
    ,ifmmDob
    ,ifmmEmailNy
    ,ifmmSmsNy
    ,ifmmDobLoginNy
    ,ifmmSnsLogin
)
VALUES(
	"mjee08"
    ,"lucylucy2344"
    ,"고명지"
    ,"VIP"
    ,1
    ,"mungjee08@naver.com"
    ,01024452344
    ,19940608
    ,0
    ,0
    ,0
    ,"네이버로그인"
);
INSERT INTO infrMember(
	ifmmId
    ,ifmmPassword
    ,ifmmName
    ,ifmmGrade
    ,ifmmGender
    ,ifmmEmail
    ,ifmmPhone
    ,ifmmDob
    ,ifmmEmailNy
    ,ifmmSmsNy
    ,ifmmDobLoginNy
    ,ifmmSnsLogin
)
VALUES(
	"wldnj322"
    ,"wldnsjwldnjs987"
    ,"박지원"
    ,"VIP"
    ,1
    ,"wldnj322@naver.com"
    ,01009867870
    ,19961120
    ,0
    ,0
    ,0
    ,"페이스북로그인"
);
INSERT INTO infrMember(
	ifmmId
    ,ifmmPassword
    ,ifmmName
    ,ifmmGrade
    ,ifmmGender
    ,ifmmEmail
    ,ifmmPhone
    ,ifmmDob
    ,ifmmEmailNy
    ,ifmmSmsNy
    ,ifmmDobLoginNy
    ,ifmmSnsLogin
)
VALUES(
	"dlwlrma"
    ,"dkdldbWid"
    ,"아이유"
    ,"일반"
    ,1
    ,"iu@gmail.com"
    ,01020220918
    ,19930507
    ,1
    ,1
    ,0
    ,"없음"
);
INSERT INTO infrMember(
	ifmmId
    ,ifmmPassword
    ,ifmmName
    ,ifmmGrade
    ,ifmmGender
    ,ifmmEmail
    ,ifmmPhone
    ,ifmmDob
    ,ifmmEmailNy
    ,ifmmSmsNy
    ,ifmmDobLoginNy
    ,ifmmSnsLogin
)
VALUES(
	"doorjh"
    ,"dlwnsghdlwn087"
    ,"이준호"
    ,"일반"
    ,0
    ,"juun@gmail.com"
    ,01029872345
    ,19901020
    ,1
    ,1
    ,0
    ,"네이버로그인"
);
INSERT INTO infrMember(
	ifmmId
    ,ifmmPassword
    ,ifmmName
    ,ifmmGrade
    ,ifmmGender
    ,ifmmEmail
    ,ifmmPhone
    ,ifmmDob
    ,ifmmEmailNy
    ,ifmmSmsNy
    ,ifmmDobLoginNy
    ,ifmmSnsLogin
)
VALUES(
	"whales"
    ,"rhfowhgdk"
    ,"우영우"
    ,"일반"
    ,1
    ,"whales@gmail.com"
    ,01020220729
    ,19920814
    ,0
    ,0
    ,0
    ,"없음"
);
INSERT INTO infrMember(
	ifmmId
    ,ifmmPassword
    ,ifmmName
    ,ifmmGrade
    ,ifmmGender
    ,ifmmEmail
    ,ifmmPhone
    ,ifmmDob
    ,ifmmEmailNy
    ,ifmmSmsNy
    ,ifmmDobLoginNy
    ,ifmmSnsLogin
)
VALUES(
	"springsunshine"
    ,"qhaskfdml"
    ,"최수연"
    ,"일반"
    ,1
    ,"springsun@gmail.com"
    ,01076634889
    ,19920912
    ,0
    ,1
    ,0
    ,"페이스북 로그인"
);
INSERT INTO infrMember(
	ifmmId
    ,ifmmPassword
    ,ifmmName
    ,ifmmGrade
    ,ifmmGender
    ,ifmmEmail
    ,ifmmPhone
    ,ifmmDob
    ,ifmmEmailNy
    ,ifmmSmsNy
    ,ifmmDobLoginNy
    ,ifmmSnsLogin
)
VALUES(
	"kwonmosulsu"
    ,"sdflweo9078y"
    ,"권민우"
    ,"VIP"
    ,0
    ,"kwon22@gmail.com"
    ,01024983455
    ,19910405
    ,1
    ,1
    ,1
    ,"없음"
);
SELECT *FROM infrMember;
INSERT INTO infrMember(
	ifmmId
    ,ifmmPassword
    ,ifmmName
    ,ifmmGrade
    ,ifmmGender
    ,ifmmEmail
    ,ifmmPhone
    ,ifmmDob
    ,ifmmEmailNy
    ,ifmmSmsNy
    ,ifmmDobLoginNy
    ,ifmmSnsLogin
)
VALUES(
	"circledong"
    ,"eehdrmfehd"
    ,"동그라미"
    ,"일반"
    ,1
    ,"circle0@gmail.com"
    ,01079829877
    ,19920916
    ,0
    ,0
    ,0
    ,"네이버 로그인"
);
INSERT INTO infrMember(
	ifmmId
    ,ifmmPassword
    ,ifmmName
    ,ifmmGrade
    ,ifmmGender
    ,ifmmEmail
    ,ifmmPhone
    ,ifmmDob
    ,ifmmEmailNy
    ,ifmmSmsNy
    ,ifmmDobLoginNy
    ,ifmmSnsLogin
)
VALUES(
	"myeonsuk"
    ,"dkdldbWid"
    ,"정명석"
    ,"VIP"
    ,0
    ,"briliant@gmail.com"
    ,01023988777
    ,19810614
    ,1
    ,1
    ,0
    ,"없음"
);
INSERT INTO infrMember(
	ifmmId
    ,ifmmPassword
    ,ifmmName
    ,ifmmGrade
    ,ifmmGender
    ,ifmmEmail
    ,ifmmPhone
    ,ifmmDob
    ,ifmmEmailNy
    ,ifmmSmsNy
    ,ifmmDobLoginNy
    ,ifmmSnsLogin
)
VALUES(
	"bigsea3"
    ,"cotna24"
    ,"태수미"
    ,"일반"
    ,1
    ,"bigsea233@gmail.com"
    ,01023355589
    ,19731223
    ,1
    ,1
    ,1
    ,"없음"
);
SELECT *FROM infrMember;