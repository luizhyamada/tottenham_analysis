with base as (
    select
        "Season",
        "HomeTeam",
        "HS" as ShotsMadeHome,
        "AS" as ShotsMadeAway,
        "HST" as ShotTargetHome,
        "AST" as ShotTargetAway,
        "FTHG" as HomeGoal,
        "FTAG" as AwayGoal
    from
        tottenham
    where
        "HomeTeam" = 'Tottenham' or "AwayTeam" = 'Tottenham'
)
select
    "Season",
    sum(case when "HomeTeam" = 'Tottenham' then ShotsMadeHome else ShotsMadeAway end) as TotalShots,
    sum(case when "HomeTeam" = 'Tottenham' then ShotTargetHome else ShotTargetAway end) as TotalTargetShots,
    sum(case when "HomeTeam" = 'Tottenham' then HomeGoal else AwayGoal end) as GoalsScored
from
    base
group by "Season"
order by "Season" asc