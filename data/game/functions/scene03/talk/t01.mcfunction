scoreboard objectives add Talk dummy "会話"
scoreboard players add n Talk 1
execute if score n Talk matches 1 run scoreboard players set max Talk 10
execute if score n Talk matches 1 run fill -58 67 8 -58 69 11 minecraft:barrier
execute if score n Talk matches 1 run fill -58 67 -5 -58 69 -2 minecraft:barrier

execute if score n Talk matches 1 run tellraw @a "[幽霊]---"

execute if score n Talk matches 1 run tellraw @p[team=blue] ""
execute if score n Talk matches 2 run tellraw @p[team=blue] ""
execute if score n Talk matches 3 run tellraw @p[team=blue] ""
execute if score n Talk matches 4 run tellraw @p[team=blue] ""
execute if score n Talk matches 5 run tellraw @p[team=blue] ""
execute if score n Talk matches 6 run tellraw @p[team=blue] ""
execute if score n Talk matches 7 run tellraw @p[team=blue] ""
execute if score n Talk matches 8 run tellraw @p[team=blue] ""
execute if score n Talk matches 9 run tellraw @p[team=blue] ""
execute if score n Talk matches 10 run tellraw @p[team=blue] ""

execute if score n Talk matches 1 run tellraw @p[team=red] ""
execute if score n Talk matches 2 run tellraw @p[team=red] ""
execute if score n Talk matches 3 run tellraw @p[team=red] ""
execute if score n Talk matches 4 run tellraw @p[team=red] ""
execute if score n Talk matches 5 run tellraw @p[team=red] ""
execute if score n Talk matches 6 run tellraw @p[team=red] ""
execute if score n Talk matches 7 run tellraw @p[team=red] ""
execute if score n Talk matches 8 run tellraw @p[team=red] ""
execute if score n Talk matches 9 run tellraw @p[team=red] ""
execute if score n Talk matches 10 run tellraw @p[team=red] ""

execute unless score n Talk = max Talk run schedule function game:scene03/talk/t01

execute if score n Talk = max Talk run fill -58 67 8 -58 69 11 minecraft:air
execute if score n Talk = max Talk run fill -58 67 -5 -58 69 -2 minecraft:air
execute if score n Talk = max Talk run function game:scene03/t01end
execute if score n Talk = max Talk run scoreboard objectives remove Talk
