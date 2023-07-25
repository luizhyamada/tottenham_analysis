select
    "Season",
    count(*) as TotalWins,
    "HTAG" as GoalsScored
from
    tottenham
where
    ("HomeTeam" = 'Tottenham' and "HTHG" < "HTAG" and "FTR" = 'H')
    OR
    ("AwayTeam" = 'Tottenham' and "HTAG" < "HTHG" and "FTR" = 'A')
group by
    "Season",
    "HTAG"
order by
    "Season",
    "HTAG"