-- nct127 database를 사용하겠다.
use nct127;

CREATE TABLE IF NOT EXISTS `nct127`.`member` (
  `seq` INT NOT NULL AUTO_INCREMENT,
  `Id` VARCHAR(45) NULL,
  `Pw` VARCHAR(45) NULL,
  `Name` VARCHAR(45) NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB
;

-- 중요 별 백개 ***************************
-- 테이블 수정 전에 항상 꼭 반드시 진짜로 ER 부터 수정
-- 중요 별 백개 ***************************

-- 전체 컬럼 조회
SELECT *FROM member;

-- 컬럼 추가
ALTER TABLE member ADD COLUMN nickname varchar(45);

ALTER TABLE member ADD COLUMN nameEng varchar(45) AFTER name;

-- 컬럼 변경
ALTER TABLE member MODIFY COLUMN nickname varchar(100);

-- 컬럼 이름 변경
ALTER TABLE member CHANGE COLUMN nickname nick varchar(45); 

-- 컬럼 삭제
ALTER TABLE member drop COLUMN nick;


-- row 삭제
-- DELETE FROM member WHERE seq = 2;

-- commit / rollback 

-- select *from member;

-- 데이터 수정
-- 여기도 where 를 먼저쓰고 수정사항 입력
UPDATE member SET 
	name = "Tony" 
	, nameENG="Great"
where seq=1;

INSERT INTO member(
	Id
    ,Pw
    ,name
    ,nameEng
    ,nick
)
VALUES(
	"wefdf"
    
)
;
