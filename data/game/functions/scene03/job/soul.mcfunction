execute as @p[team=blue] at @s run particle minecraft:end_rod ~ ~14 ~ 0 0 0 0 0
execute as @p[team=red] at @s run particle minecraft:end_rod ~ ~-13 ~ 0 0 0 0 0

execute if score state TalkState matches 3 run schedule function game:scene03/job/soul 1t
