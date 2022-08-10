use nct127;


-- 공통코드그룹
select 
	b.cdSeq
	,a.cgName
    ,b.cdName
from infrCodeGroup a 
inner join infrCode b on b.infrCodeGroup_cgSeq = a.cgSeq
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
order by tdmvRank
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
    ,d.tdpxPlexName
    ,b.tdttShowTime
from tradMovie a
inner join tradTimeTable b on b.tradMovie_tdmvSeq = a. tdmvSeq
inner join tradTheater c on c.tdthSeq = b.tradTheater_tdthSeq
inner join tradTheaterPlex d on d.tdpxSeq = b.tradTheaterPlex_tdpxSeq
where a.tdmvSeq = 1
;


-- 결제 페이지.좌석선택






