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

SELECT
	a.*
    ,(select count(aa.cdName) from infrCode aa where 1=1 and cdDelNy = 0 and aa.infrCodeGroup_cgSeq = a.cgSeq) as count
FROM infrCodeGroup a
WHERE 1=1
	AND cgDelNy = 0
;

            
 -- 합 구하기
 SELECT
	a.infrCodeGroup_cgSeq
	,count(cdName)
 FROM infrCode a 
group by infrCodeGroup_cgSeq
;

-- 로그인
select 
	a.ifmmId
    ,a.ifmmName
from infrMember a
where a.ifmmId = "dlwlrma" and a.ifmmPassword = "dkdldbWid"
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

-- 선호 극장
select
	a.ifmmId
    ,c.tdthBranch
from infrMember a 
inner join tradFavoriteTheater b on b.infrMember_ifmmSeq = a.ifmmSeq and b.tdftDefaultNy = 1 
inner join tradTheater c on c.tdthSeq = b.tradTheater_tdthSeq 
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


 



