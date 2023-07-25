select
    "Season",
    count(*) as TotalWins
from
    matches
where
    ("HomeTeam" = 'Tottenham' and "HTHG" = "HTAG" and "FTR" = 'H')
    or
    ("AwayTeam" = 'Tottenham' and "HTHG" = "HTAG" and "FTR" = 'A')
group by "Season"
order by "Season"
