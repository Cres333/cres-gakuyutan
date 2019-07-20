scoreboard players set *exec Grobal 1
scoreboard players set click Any 0
scoreboard objectives add Talk dummy "会話"
scoreboard players add n Talk 1
execute if score n Talk matches 1 run fill -58 67 8 -58 69 11 minecraft:barrier
execute if score n Talk matches 1 run fill -58 67 -5 -58 69 -2 minecraft:barrier

execute if score n Talk matches 1 run scoreboard players set max Talk 3

execute if score n Talk matches 1 run tellraw @p[team=blue] "次は開かずの教室に行ってきて、なにか取ってきてくれますか？"
execute if score n Talk matches 2 run tellraw @p[team=blue] "ただ、開かずの教室は普通に歩いて行くことができないんです"
execute if score n Talk matches 3 run tellraw @p[team=blue] "そのチョークで「扉」を完成させてみてください"

execute if score n Talk matches 1 run tellraw @p[team=red] "＃＃ＡＦ＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃ＧＳ＃＃＃＃＃"
execute if score n Talk matches 2 run tellraw @p[team=red] "Ｐ＃＃＃＃＃＃＃＃＃＃＃＃Ａｏ＃＃＃＃＃＃＃＃＃＃"
execute if score n Talk matches 3 run tellraw @p[team=red] "＃＃＃＃＃＃＃ｅｄ＃＃＃＃＃ＮＳ＃＃＃＃＃＃"

execute unless score n Talk >= max Talk run schedule function game:scene03/talk/t02/re 5s

execute if score n Talk >= max Talk run fill -58 67 8 -58 69 11 minecraft:air
execute if score n Talk >= max Talk run fill -58 67 -5 -58 69 -2 minecraft:air
execute if score n Talk >= max Talk run scoreboard players set *exec Grobal 0
execute if score n Talk >= max Talk run schedule function game:scene03/talk/separate 1s
execute if score n Talk >= max Talk run scoreboard objectives remove Talk