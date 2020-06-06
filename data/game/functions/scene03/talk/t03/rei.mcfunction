scoreboard players set *exec Grobal 1
scoreboard players set select Any 0
scoreboard players set part Any 0
scoreboard players set all Any 0
scoreboard objectives add Talk dummy "会話"
scoreboard players add n Talk 1
execute if score n Talk matches 1 run fill -58 67 8 -58 69 11 minecraft:barrier
execute if score n Talk matches 1 run fill -58 67 -5 -58 69 -2 minecraft:barrier

execute if score n Talk matches 1 run scoreboard players set max Talk 4

execute if score n Talk matches 1 run tellraw @p[team=blue] "私がここに来たのと同じくらいに来たと思います"
execute if score n Talk matches 2 run tellraw @p[team=blue] "詳しくはあまり話したことが無いから知らないです"
execute if score n Talk matches 3 run tellraw @p[team=blue] "この本を読んで、記憶が少しでも戻れば、"
execute if score n Talk matches 4 run tellraw @p[team=blue] "なにか覚えているかもしれませんが"

execute if score n Talk matches 1 run tellraw @p[team=red] "＃＃ＪＪ＃＃＃＃ＴＥ＃＃＃＃＃＃＃＃＃"
execute if score n Talk matches 2 run tellraw @p[team=red] "＃＃＃＃Ａｅ＃＃＃＃＃＃＃＃ＢＦｍ＃＃＃＃＃"
execute if score n Talk matches 3 run tellraw @p[team=red] "Ｊ＃＃＃＃＃＃＃ＧＥ＃＃＃＃＃＃ｐ＃＃"
execute if score n Talk matches 4 run tellraw @p[team=red] "＃ＶＦ＃＃＃＃＃＃＃＃ｐＵＢ＃＃"

execute unless score n Talk >= max Talk run schedule function game:scene03/talk/t03/rei 5s

execute if score n Talk >= max Talk run fill -58 67 8 -58 69 11 minecraft:air
execute if score n Talk >= max Talk run fill -58 67 -5 -58 69 -2 minecraft:air
execute if score n Talk >= max Talk run scoreboard players set *exec Grobal 0
execute if score n Talk >= max Talk run schedule function game:scene03/talk/separate 1s
execute if score n Talk >= max Talk run scoreboard objectives remove Talk