select
   "Season",
   count(*) as TotalWins,
   "HTHG" as GoalsScored
from
   tottenham
where
   ("HomeTeam" = 'Tottenham' and "HTHG" > "HTAG" and "FTR" = 'H')
   or
   ("AwayTeam" = 'Tottenham' and "HTAG" > "HTHG" and "FTR" = 'A')
group by
   "Season",
   "HTHG"
order by
   "Season",
   "HTHG"