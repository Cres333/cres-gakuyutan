scoreboard objectives add _Turn dummy "方向転換"
scoreboard players set *wool _Turn 0

execute if score *state _Movie matches 1 if block ~ 62 ~ minecraft:red_wool run scoreboard players set *wool _Turn 1
execute if score *state _Movie matches 2 if block ~ 62 ~ minecraft:yellow_wool run scoreboard players set *wool _Turn 2
execute if score *state _Movie matches 3 if block ~ 62 ~ minecraft:blue_wool run scoreboard players set *wool _Turn 3
execute if score *state _Movie matches 4 if block ~ 62 ~ minecraft:green_wool run scoreboard players set *wool _Turn 4
execute if score *state _Movie matches 5 if block ~ 62 ~ minecraft:pink_wool run scoreboard players set *wool _Turn 5
execute if score *state _Movie matches 6 if block ~ 62 ~ minecraft:orange_wool run scoreboard players set *wool _Turn 6
execute if score *state _Movie matches 7 if block ~ 62 ~ minecraft:white_wool run scoreboard players set *wool _Turn 7

execute if score *wool _Turn matches 1..7 run function game:scene04/movie/wait
