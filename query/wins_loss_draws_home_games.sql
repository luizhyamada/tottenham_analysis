select
    "HomeTeam",
    "WDD" as wins_loss_draws_home_games,
    count("WDD") as Total
from
    tottenham
where
    "HomeTeam" = 'Tottenham'
group by "WDD", "HomeTeam"
order by Total desc