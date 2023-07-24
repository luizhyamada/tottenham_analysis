with base as (
    select
        "Season",
        "HomeTeam",
        "HS" as ShotsMadeHome,
        "AS" as ShotsMadeAway,
        "HST" as ShotTargetHome,
        "AST" as ShotTargetAway
    from
        tottenham
    where
        "HomeTeam" = 'Tottenham' or "AwayTeam" = 'Tottenham'
)
select
    "Season",
    sum(case when "HomeTeam" = 'Tottenham' then ShotsMadeHome else ShotsMadeAway end) as TotalShots,
    sum(case when "HomeTeam" = 'Tottenham' then ShotTargetHome else ShotTargetAway end) as TotalTargetShots
from
    base
group by "Season"
order by "Season" asc