use nct127;

SELECT * FROM infrMember;
SELECT count(*) from infrMember;

select
	a.tdthSeq
    ,a.tdthBranch
	,b.tdttShowTime
    ,b.tradMovie_tdmvSeq
from tradTheater a
left join tradTimeTable b on b.tradTheater_tdthSeq = a.tdthSeq
;

select
	a.tdmvMovieTitle
    ,a.tdmvAge
    ,b.tdttShowTime
    ,c.tdthBranch
    ,d.tdpxPlexName
from tradMovie a
inner join tradTimeTable b on b.tradMovie_tdmvSeq = a.tdmvSeq
inner join tradTheater c on c.tdthSeq = b.tradTheater_tdthSeq
left join tradTheaterPlex d on d.tdpxSeq = b.tradTheaterPlex_tdpxSeq
;

select * from tradTimeTable;
select * from tradTheaterPlex;
 
	
