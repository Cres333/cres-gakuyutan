execute if score *wait _Movie matches 0 if score *state _Movie matches ..9 as @e[tag=movie] at @s run function game:scene04/movie/move
execute if score *wait _Movie matches 1 if score *state _Movie matches ..9 as @e[tag=movie] at @s run tp @s ^ ^ ^0.02
execute if score *wait _Movie matches 0 if score *state _Movie matches ..8 as @e[tag=movie] at @s unless block ~ 62 ~ minecraft:air run function game:scene04/movie/turn
execute if score *state _Movie matches 8 as @e[tag=movie] at @s if block ~ ~6 ~ minecraft:lime_wool run function game:scene04/movie/kuro

execute if score *state _Movie matches ..8 as @e[tag=movie] at @s anchored feet run tp @a ~ ~ ~
execute if score *state _Movie matches 9 as @e[tag=movie] at @s anchored feet run tp @a ~ ~ ~ ~ ~

execute unless score *state _Movie matches 10 run schedule function game:scene04/movie/job 1t
