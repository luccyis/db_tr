use nct127;

-- 공통코드그룹
select 
	b.cdSeq
	,a.cgName
    ,b.cdName
from infrCodeGroup a 
inner join infrCode b on b.infrCodeGroup_cgSeq = a.cgSeq
;

select * from infrMember;

-- 로그인
select * from infrMember where ifmmId = "dlwlrma" and ifmmPassword = "dkdldbWid"
;

-- 영화 메인화면 (박스오피스 화면)
select 
	a.tdmvMovieTitle
    ,a.tdmvLiked
    ,a.tdmvReleaseDate
from tradMovie a
;



-- 빠른 예매 
-- 극장 먼저
select 
	b.tdthRegion
	,b.tdthBranch
    ,c.tdmvMovieTitle
    ,a.tdttShowTime
    ,d.tdpxPlexName
from tradTimeTable a
inner join tradTheater b on b.tdthSeq = a.tradTheater_tdthSeq
inner join tradMovie c on c.tdmvSeq = a.tradMovie_tdmvSeq
inner join tradTheaterPlex d on d.tdpxSeq = a.tradTheaterPlex_tdpxSeq
;

--  영화 먼저
select
	c.tdmvMovieTitle
    ,b.tdthBranch
    ,a.tdttShowTime
from tradTimeTable a
inner join tradTheater b on b.tdthSeq = a.tradTheater_tdthSeq
inner join tradMovie c on c.tdmvSeq = a.tradMovie_tdmvSeq
inner join tradTheaterPlex d on d.tdpxSeq = a.tradTheaterPlex_tdpxSeq
;

-- 결제 페이지

-- 결제 결과 
select
	c.ifmmId
    ,e.tdpxPlexName
    ,b.tdbsRow
    ,b.tdbsCol
    ,d.tdttShowTime
from tradBooking a
inner join tradBookingSeat b on b.tradBooking_tdbkSeq = a.tdbkSeq
inner join infrMember c on c.infrMemberSeq = a.infrMember_infrMemberSeq
inner join tradTimeTable d on d.tdttSeq = b.tradTimeTable_tdttSeq
inner join tradTheaterPlex e on e.tdpxSeq = d.tradTheaterPlex_tdpxSeq
;




