scoreboard objectives add _OverRed dummy "ゲームオーバー"
scoreboard players add *t _OverRed 1
scoreboard players set *max _OverRed 140

execute if score *t _OverRed matches 1 run scoreboard players set @p[team=red] Sight 0
execute if score *t _OverRed matches 1 run tp @p[team=red] -73 67.5 -53 180 -90

execute as @p[team=red] at @s run tp @s -73 67.5 -53 ~5 -90

execute unless score *t _OverRed matches 140 run schedule function game:scene03/job/over/red 1t

execute if score *t _OverRed matches 140 run clear @p[team=red] minecraft:blue_dye 1
execute if score *t _OverRed matches 140 run tp @p[team=red] -58 67.5 3 90 0
execute if score *t _OverRed matches 140 run scoreboard objectives remove _OverRed
