tp @p[team=red] -60 65 39 90 0
tp @p[team=blue] -60 65 35 90 0
clear @a
effect clear @a
weather clear
time set 6000
effect give @a minecraft:saturation 1000000 100 true
scoreboard players set *scene Grobal 5
schedule function game:scene05/message 5s
