select
    "Season",
    "WDD" as wins_loss_draws,
    count("WDD") as Total
from
    tottenham
group by "Season", "WDD"
order by "Season" asc