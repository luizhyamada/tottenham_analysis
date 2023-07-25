select
    "Season",
    count(*) as TotalWins
from
    tottenham
where
    "HomeTeam" = 'Tottenham' and "HTHG" > "HTAG" and "FTR" = 'H'
    or
    "AwayTeam" = 'Tottenham' and "HTAG" > "HTHG" and "FTR" = 'A'
group by "Season"
order by "Season" asc