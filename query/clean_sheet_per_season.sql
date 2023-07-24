with base as (
    select
        "Season",
        "HomeTeam",
        "AwayTeam",
        "FTAG" as GoalsConcededHome,
        "FTHG" as GoalsConcededAway
    from
        tottenham
    where
        "HomeTeam" = 'Tottenham' or "AwayTeam" = 'Tottenham'
)
select
    "Season",
    count(*) as CleanSheets
from
    base
where
    ("HomeTeam" = 'Tottenham' and GoalsConcededHome = 0) or
    ("AwayTeam" = 'Tottenham' and GoalsConcededAway = 0)
group by "Season"
order by "Season" asc
