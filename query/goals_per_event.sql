with base as (
select
	"Season",
    case when "HomeTeam" = 'Tottenham' then "FTHG" else "FTAG" end as GoalsScored,
    case when "HomeTeam" = 'Tottenham' then "FTAG" else "FTHG" end as GoalsConceded,
    "WDD"
from
    tottenham
where
    ("HomeTeam" = 'Tottenham' or "AwayTeam" = 'Tottenham')
group by "Season", "WDD", "HomeTeam", "FTHG", "FTAG"
order by "Season" asc
), event_occur as (
	select 
		GoalsScored, 
		"WDD", 
		count(*) as times_scored
	from 
		base
	group by GoalsScored, "WDD"
	order by GoalsScored, "WDD"
)
select 
	*
from 
	event_occur
