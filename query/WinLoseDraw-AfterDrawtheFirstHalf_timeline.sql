select
    "Season",
    "HTD" as HalfTimeResult,
    "WDD" as WinsLossDraws,
    count(*) as Total
from
    tottenham
where
    "HTD" = 'D' and "WDD" = 'W' -- Draw at half-time and won the game
    or
    "HTD" = 'D' and "WDD" = 'D' -- Draw at half-time and ended in a draw
    or
    "HTD" = 'D' and "WDD" = 'L' -- Draw at half-time and lost the game
group by "WDD", "HTD", "Season"
order by "Season" asc