with base as (
select
	"Season",
    case when "HomeTeam" = 'Tottenham' then "FTHG" else "FTAG" end as GoalsScored,
    --case when "HomeTeam" = 'Tottenham' then "FTAG" else "FTHG" end as GoalsConceded,
    avg(case when "HomeTeam" = 'Tottenham' then "HST" else "AST" end) as TotalTargetShots
from
    tottenham
where
    ("HomeTeam" = 'Tottenham' or "AwayTeam" = 'Tottenham')
group by "Season", "WDD", "HomeTeam", "FTHG", "FTAG", "HST", "AST"
order by "Season" asc
), event_occur as (
	select 
		GoalsScored,
		TotalTargetShots,
		count(*) as number_events
	from 
		base
	group by GoalsScored, TotalTargetShots
	order by GoalsScored, TotalTargetShots
)
select 
	*
from 
	event_occur
