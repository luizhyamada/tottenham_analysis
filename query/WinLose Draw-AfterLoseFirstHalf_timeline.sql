select
    "Season",
    "HTD" as HalfTimeResult,
    "WDD" as WinsLossDraws,
    count(*) as Total
from
    tottenham
where
    "HTD" = 'L' and "WDD" = 'W' -- Lose at half-time and won the game
    or
    "HTD" = 'L' and "WDD" = 'D' -- Lose at half-time and ended in a draw
    or
    "HTD" = 'L' and "WDD" = 'L' -- Lose at half-time and lost the game
group by "Season", "WDD", "HTD"
order by "Season" asc