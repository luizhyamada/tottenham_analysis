select
    "Season",
    "HTD" as HalfTimeResult,
    "WDD" as WinsLossDraws,
    count(*) as Total
from
    tottenham
where
    "HTD" = 'W' and "WDD" = 'W' -- Won at half-time and won the game
    or
    "HTD" = 'W' and "WDD" = 'D' -- Won at half-time and ended in a draw
    or
    "HTD" = 'W' and "WDD" = 'L' -- Won at half-time and lost the game
group by "WDD", "HTD", "Season"
order by "Season" asc