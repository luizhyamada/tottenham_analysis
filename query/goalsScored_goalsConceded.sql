select
	"Season",
    sum(case when "HomeTeam" = 'Tottenham' then "FTHG" else "FTAG" end) as GoalsScored,
    sum(case when "HomeTeam" = 'Tottenham' then "FTAG" else "FTHG" end) as GoalsConceded
from
    tottenham
where
    ("HomeTeam" = 'Tottenham' or "AwayTeam" = 'Tottenham')
group by "Season"
order by "Season" asc