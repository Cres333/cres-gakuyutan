scoreboard objectives add _OverBlue dummy "ゲームオーバー"
scoreboard players add *t _OverBlue 1
scoreboard players set *max _OverBlue 60

execute if score *t _OverBlue matches 1 run scoreboard players set @p[team=blue] Sight 0
execute if score *t _OverBlue matches 1 run tp @p[team=blue] -73 67.5 -49 180 -90

execute as @p[team=blue] at @s run tp @s -73 67.5 -49 ~5 -90

execute if score *t _OverBlue matches 1 as @p[team=blue] at @s run playsound minecraft:game_over master @s ~ ~ ~ 1 1
execute unless score *t _OverBlue matches 60 run schedule function game:scene03/job/over/blue 1t

# execute if score *t _OverBlue matches 60 store success score *clear _OverBlue run clear @p[team=blue] minecraft:blue_banner 1
# execute if score *t _OverBlue matches 60 if score *clear _OverBlue matches 1 run tellraw @p[team=blue] "[!] ロウソクが1本無くなりました"
execute if score *t _OverBlue matches 60 run function game:scene03/job/over/set
execute if score *t _OverBlue matches 60 run tp @p[team=blue] -58 67.5 3 90 0
execute if score *t _OverBlue matches 60 run scoreboard objectives remove _OverBlue
