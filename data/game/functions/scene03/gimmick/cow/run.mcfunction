execute as @e[tag=Cow] at @s run particle minecraft:falling_dust minecraft:nether_wart_block ~ ~ ~2 1 0.2 3 0 100
execute as @e[tag=Cow] at @s run tp @s ~ ~ ~-0.6
execute if score *cow Gimmick matches 1 run schedule function game:scene03/gimmick/cow/run 1t
