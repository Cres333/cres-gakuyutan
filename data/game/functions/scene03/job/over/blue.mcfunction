scoreboard objectives add _OverBlue dummy "ゲームオーバー"
scoreboard players add *t _OverBlue 1
scoreboard players set *max _OverBlue 140

execute if score *t _OverBlue matches 1 run scoreboard players set @p[team=blue] Sight 0
execute if score *t _OverBlue matches 1 run tp @p[team=blue] -73 67.5 -49 180 -90

execute as @p[team=blue] at @s run tp @s -73 67.5 -49 ~5 -90

execute unless score *t _OverBlue matches 140 run schedule function game:scene03/job/over/blue 1t

execute if score *t _OverBlue matches 140 run clear @p[team=blue] minecraft:blue_dye 1
execute if score *t _OverBlue matches 140 run tp @p[team=blue] -58 67.5 3 90 0
execute if score *t _OverBlue matches 140 run scoreboard objectives remove _OverBlue
