select
    "AwayTeam",
    "WDD" as wins_loss_draws_away_games,
    count("WDD") as Total
from
    tottenham
where
    "AwayTeam" = 'Tottenham'
group by "WDD", "AwayTeam"
order by Total desc