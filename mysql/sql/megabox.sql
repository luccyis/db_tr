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


-- 상세 페이지



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
where tdmvMovieTitle = "탑건: 매버릭"
;

-- 결제 페이지.좌석선택

SELECT 
	f.tdmvMovieTitle
    ,f.tdmvShowType
    ,g.tdthBranch
    ,e.tdpxPlexName
    ,d.tdttShowTime
    ,b.tdbsRow
    ,b.tdbsCol
    ,b.tdbsTotalPrice
from tradBooking a
inner join tradBookingSeat b on b.tradBooking_tdbkSeq = a.tdbkSeq
inner join infrMember c on c.ifmmSeq = a.infrMember_ifmmSeq
inner join tradTimeTable d on d.tdttSeq = b.tradTimeTable_tdttSeq
inner join tradTheaterPlex e on e.tdpxSeq = d.tradTheaterPlex_tdpxSeq
inner join tradMovie f on f.tdmvSeq = d.tradMovie_tdmvSeq
inner join tradTheater g on g.tdthSeq = d.tradTheater_tdthSeq
where tdbkSeq = 1
;


-- 결제 중 bookingPay.html 
select
	f.tdmvMovieTitle
    ,f.tdmvShowType
    ,g.tdthBranch
    ,e.tdpxPlexName
    ,d.tdttShowTime
    ,b.tdbsTotalPrice
    ,a.tdbkPayment
from tradBooking a
inner join tradBookingSeat b on b.tradBooking_tdbkSeq = a.tdbkSeq
inner join infrMember c on c.ifmmSeq = a.infrMember_ifmmSeq
inner join tradTimeTable d on d.tdttSeq = b.tradTimeTable_tdttSeq
inner join tradTheaterPlex e on e.tdpxSeq = d.tradTheaterPlex_tdpxSeq
inner join tradMovie f on f.tdmvSeq = d.tradMovie_tdmvSeq
inner join tradTheater g on g.tdthSeq = d.tradTheater_tdthSeq
where tdbkSeq = 2
;




