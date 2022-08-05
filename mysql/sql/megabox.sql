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
    ,d.tdpxPlexName
from tradMovie a 
inner join tradTimeTable b on a.tdmvSeq = b. tradMovie_tdmvSeq
inner join tradTheater c on c.tdthSeq = b.tradTheater_tdthSeq
inner join tradTheaterPlex d on d.tdpxSeq = b.tradTheaterPlex_tdpxSeq 
;





-- 극장먼저
select 
	a.tmtbSeq
    ,a.tdttShowTime
    b,tdthBranch
from tradTimeTable a 
left join tradTheater b on b.tdthSeq = a.tradTheater_tdthSeq
left join tradMovie c on c.tdmvSeq = a.tradMovie_tdmvSeq
left join tradTheaterPlex d on d.tdpxSeq = tradTheaterPlex_tdpxSeq
;


 

-- 극장 목록

-- 결제 페이지



