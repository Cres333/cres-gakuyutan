scoreboard objectives add _OverRed dummy "ゲームオーバー"
scoreboard players add *t _OverRed 1
scoreboard players set *max _OverRed 60

execute if score *t _OverRed matches 1 run scoreboard players set @p[team=red] Sight 0
execute if score *t _OverRed matches 1 run tp @p[team=red] -73 67.5 -53 180 -90

execute as @p[team=red] at @s run tp @s -73 67.5 -53 ~5 -90

execute if score *t _OverRed matches 1 as @p[team=red] at @s run playsound minecraft:game_over master @s ~ ~ ~ 1 1
execute unless score *t _OverRed matches 60 run schedule function game:scene03/job/over/red 1t

# execute if score *t _OverRed matches 60 store success score *clear _OverRed run clear @p[team=red] minecraft:blue_banner 1
# execute if score *t _OverRed matches 60 if score *clear _OverRed matches 1 run tellraw @p[team=red] "[!] ロウソクが1本無くなりました"
execute if score *t _OverRed matches 60 run function game:scene03/job/over/set
execute if score *t _OverRed matches 60 run tp @p[team=red] -58 67.5 3 90 0
execute if score *t _OverRed matches 60 run scoreboard objectives remove _OverRed
