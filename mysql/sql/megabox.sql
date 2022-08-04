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


--  영화 먼저
select 
	a.tdmvMovieTitle
    ,c.tdthBranch
    ,b.tdttShowTime
from tradMovie a
left join tradTimeTable b on b.tradMovie_tdmvSeq = a.tdmvSeq
left join tradTheater c on c.tdthSeq = b.tradTheater_tdthSeq
left join tradTheaterPlex d on d.tdpxSeq = b.tradTheaterPlex_tdpxSeq
;

-- 극장먼저
select 
	a.tdthBranch
    ,c.tdmvMovieTitle
    ,b.tdttShowTime
from tradTheater a
left join tradTimeTable b on b.tradTheater_tdthSeq = a.tdthSeq
left join tradMovie c on c.tdmvSeq = b.tradMovie_tdmvSeq
;

 

-- 극장 목록

-- 결제 페이지

