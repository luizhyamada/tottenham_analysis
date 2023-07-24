select
    "WDD" as wins_loss_draws,
    count("WDD") as Total
from
    tottenham
group by "WDD"