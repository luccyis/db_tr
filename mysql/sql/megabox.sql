use nct127;


-- 공통코드그룹
select 
	a.cgSeq
    ,a.cgName
    ,b.cdSeq

    ,b.cdName
from infrCodeGroup a 
inner join infrCode b on b.infrCodeGroup_cgSeq = a.cgSeq
;

 -- 합 구하기
SELECT
	a.*
    ,(select count(aa.cdName) from infrCode aa where 1=1 and cdDelNy = 0 and aa.infrCodeGroup_cgSeq = a.cgSeq) as count
FROM infrCodeGroup a
WHERE 1=1
	AND cgDelNy = 0
;
SELECT COUNT(a.thprSeq)
FROM tradTheaterPrice a
JOIN tradTheater b on b.tdthSeq = a.tradTheater_tdthSeq
;


-- insert 공통코드 그룹
INSERT INTO infrCodeGroup (
	cgName
    ,cgNameEng
    ,cgUseNy
    ,cgDelNy
)
VALUES (
	#{cgName}
    ,#{cgNameEng}
    ,1
    ,0
)
;


-- 멤버 전체
SELECT
	a.*
FROM infrMember a
WHERE 1=1
;

-- 셀렉트원
SELECT
	a.*
FROM infrCodeGroup a
WHERE 1=1
AND  cgSeq = #{shValue}
;
-- 로그인
select 
	a.ifmmId
    ,a.ifmmName
from infrMember a
where 1=1
AND 	a.ifmmId = "dlwlrma" and a.ifmmPassword = "dkdldbWid"
;

-- 영화 메인화면 (박스오피스 화면)
select 
	a.tdmvRank
	,a.tdmvMovieTitle
    ,a.tdmvLiked
    ,a.tdmvReleaseDate
from tradMovie a
order by 
	a.tdmvRank
    ,a.tdmvReleaseDate
;

-- 영화 상세 페이지

select
	a.tdmvMovieTitle
    ,a.tdmvTitleEng
    ,a.tdmvAudienceScore
    ,a.tdmvRank
    ,a.tdmvLiked
    ,a.tdmvAudienceNumber
    ,a.tdmvStory
    ,a.tdmvShowType
    ,a.tdmvDirector
    ,a.tdmvGenres
    ,a.tdmvRunningTime
    ,a.tdmvAge
    ,a.tdmvReleaseDate
    ,a.tdmvCast
    
from tradMovie a
where a.tdmvSeq = 4
;


-- main.무비포스트 
 select 
	a.tdmpId
    ,a.tdmpImage
    ,a.tdmpMovieTitle
    ,a.tdmpSummary
    ,a.tdmpTime
 from tradMoviePost a
 inner join tradMovie b on b.tdmvSeq = a.tradMovie_tdmvSeq
 where a.tradMovie_tdmvSeq = 4
 ;


-- 예매. 영화 먼저
select
	a.tdmvMovieTitle
    ,a.tdmvAge
    ,c.tdthRegion
    ,c.tdthBranch
    ,(select tdpxPlexName from tradTheaterPlex aa where aa.tdpxSeq = b.tradTheaterPlex_tdpxSeq) as plexname
    ,b.tdttShowTime
from tradMovie a
inner join tradTimeTable b on b.tradMovie_tdmvSeq = a. tdmvSeq
inner join tradTheater c on c.tdthSeq = b.tradTheater_tdthSeq
where a.tdmvSeq = 1
;
-- 결제 하기


-- 결제 페이지.좌석선택

-- 결제 후. 예매확인
select 
	(select tdthBranch from tradTheater aa where aa.tdthSeq = d.tradTheater_tdthSeq) as branch
    ,(select tdpxPlexName from tradTheaterPlex bb where bb.tdpxSeq = d.tradTheaterPlex_tdpxSeq) as plexname
    ,d.tdttShowTime
	,c.tdbsRow 
    ,c.tdbsCol
from tradBooking a
inner join infrMember b on b.ifmmSeq = a.infrMember_ifmmSeq
inner join tradBookingSeat c on c.tradBooking_tdbkSeq = a.tdbkSeq
inner join tradTimeTable d on d.tdttSeq = a.tradTimeTable_tdttSeq
where b.ifmmId = "mjee08"
;

--  select 
-- 	a.tdmvMovieTitle
--     ,a.tdmvTitleEng
-- from tradMovie a where 1=1

-- union all
-- select
-- 	b.tdmvDirector
--     ,b.tdmvCast
-- from  tradMovie b where 1=1
-- ;

-- 마이페이지



-- 마이페이지history
SELECT 
	mv.tdmvSeq
    ,mv.tdmvMovieTitle
    ,(select tdthBranch from tradTheater th where th.tdthSeq = tt.tradTheater_tdthSeq) as tdthBranch
    ,(select tdpxPlexName from tradTheaterPlex px where px.tdpxSeq = tt.tradTheaterPlex_tdpxSeq) as tdpxPlexName
    ,tt.tdttShowTime
    ,bk.tdbkBookingDate
FROM infrMember mm
JOIN tradBooking bk on mm.ifmmSeq = bk.infrMember_ifmmSeq
JOIN tradBookingSeat bs on bs.tradBooking_tdbkSeq = bk.tdbkSeq
JOIN tradTimeTable tt on tt.tdttSeq =  bk.tradTimeTable_tdttSeq
JOIN tradMovie mv on mv.tdmvSeq = tt.tradMovie_tdmvSeq
WHERE 1=1
AND mm.ifmmId = "hiii"
;

-- 마이페이지 메인, 선호 극장
SELECT
	(select tdthBranch from tradTheater th where th.tdthSeq = ft.tradTheater_tdthSeq) as tdthBranch
FROM infrMember mm 
JOIN tradFavoriteTheater ft on ft.infrMember_ifmmSeq = mm.ifmmSeq 
WHERE 1=1 
and mm.ifmmSeq = 2
;

-- 기본 정보 수정
INSERT INTO infrMember (
ifmmEmailAddress
,ifmmEmailDomain
,ifmmPhone
,ifmmDob
,ifmmDobLoginNy
,ifmmSnsLogin
)
VALUES (

) 
;
-- 선택정보 입력
INSERT INTO infrMember (
ifmmEmailNy
,ifmmSmsNy
)
VALUES (

)
;
-- 선호극장. 배열로.....? 들어감
INSERT INTO tradFavoriteTheater (
infrMember_ifmmSeq
,tradTheater_tdthSeq
,tdftDefaultNy
)
VALUES(


)
;











