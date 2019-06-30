scoreboard players set exec Any 1
scoreboard players set select Any 0
scoreboard objectives add Talk dummy "会話"
scoreboard players add n Talk 1
execute if score n Talk matches 1 run fill -58 67 8 -58 69 11 minecraft:barrier
execute if score n Talk matches 1 run fill -58 67 -5 -58 69 -2 minecraft:barrier

execute if score n Talk matches 1 run scoreboard players set max Talk 4

execute if score n Talk matches 1 run tellraw @p[team=blue] "黒霧様は私から奪った記憶を持っているわ"
execute if score n Talk matches 2 run tellraw @p[team=blue] "その記憶を見ることができれば、ここから出られるかもしれない"
execute if score n Talk matches 3 run tellraw @p[team=blue] "黒霧様の背後から、この学校にある物を手に持って近づけば、"
execute if score n Talk matches 4 run tellraw @p[team=blue] "その物に関係した記憶が断片として見られるはずよ"

execute if score n Talk matches 1 run tellraw @p[team=red] "＃＃＃＃ｒＰ＃＃＃＃＃＃＃＃＃Ｂｏ＃"
execute if score n Talk matches 2 run tellraw @p[team=red] "Ｏ＃＃＃＃＃ｏＪＴ＃＃＃＃＃＃＃＃＃＃＃＃＃＃Ｆｉ＃＃＃＃"
execute if score n Talk matches 3 run tellraw @p[team=red] "＃＃＃＃ＺＢ＃＃＃＃＃＃＃＃Ａｏ＃＃＃＃＃＃＃Ｑ＃＃＃"
execute if score n Talk matches 4 run tellraw @p[team=red] "＃＃ｉ＃＃＃＃＃＃＃＃＃＃＃＃Ｓｆ＃＃＃＃＃＃"

execute unless score n Talk = max Talk run schedule function game:scene03/talk/t03re 5s

execute if score n Talk = max Talk run fill -58 67 8 -58 69 11 minecraft:air
execute if score n Talk = max Talk run fill -58 67 -5 -58 69 -2 minecraft:air
execute if score n Talk = max Talk run scoreboard players set exec Any 0
execute if score n Talk = max Talk run scoreboard objectives remove Talk