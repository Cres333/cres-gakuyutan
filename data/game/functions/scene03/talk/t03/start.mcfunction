clear @a minecraft:written_book{title:"日記"}

scoreboard players set *exec Grobal 1
scoreboard objectives add Talk dummy "会話"
scoreboard players add n Talk 1
execute if score n Talk matches 1 run fill -58 67 8 -58 69 11 minecraft:barrier
execute if score n Talk matches 1 run fill -58 67 -5 -58 69 -2 minecraft:barrier

execute if score n Talk matches 1 run scoreboard players set max Talk 9

execute if score n Talk matches 1 run tellraw @p[team=blue] "これは…日記みたいですね"
execute if score n Talk matches 2 run tellraw @p[team=blue] "ここにあるってことは大切なもののはず"
execute if score n Talk matches 3 run tellraw @p[team=blue] "私がこれを読んでいる間に、あなた達には黒霧様が持っている、"
execute if score n Talk matches 4 run tellraw @p[team=blue] "記憶を見てきていただけませんか？"
execute if score n Talk matches 5 run tellraw @p[team=blue] "黒霧様は私から奪った記憶を持っています"
execute if score n Talk matches 6 run tellraw @p[team=blue] "その記憶を見ることができれば、ここから出られるかもしれません"
execute if score n Talk matches 7 run tellraw @p[team=blue] "…確証はないんだけど、なんとなくそう思うんです"
execute if score n Talk matches 8 run tellraw @p[team=blue] "黒霧様の背後から、この学校にある物を手に持って近づけば、"
execute if score n Talk matches 9 run tellraw @p[team=blue] "学校に関係した記憶が断片として見られると思います"

execute if score n Talk matches 1 run tellraw @p[team=red] "Ｊ＃＃＃＃＃ｆＰ＃＃"
execute if score n Talk matches 2 run tellraw @p[team=red] "＃＃＃Ａ＃＃＃＃＃＃ＰＢ＃＃＃＃＃＃"
execute if score n Talk matches 3 run tellraw @p[team=red] "＃＃＃＃ｌｔ＃＃＃＃＃＃＃＃ＵＰ＃＃＃＃＃＃＃＃＃＃＃＃＃"
execute if score n Talk matches 4 run tellraw @p[team=red] "＃ＥＨ＃＃＃＃ｄ＃＃＃"
execute if score n Talk matches 5 run tellraw @p[team=red] "＃＃＃＃ｒＰ＃＃＃＃＃＃＃＃＃Ｂｏ＃"
execute if score n Talk matches 6 run tellraw @p[team=red] "Ｏ＃＃＃＃＃ｏＪＴ＃＃＃＃＃＃＃＃＃＃＃＃＃＃Ｆｉ＃＃＃＃"
execute if score n Talk matches 7 run tellraw @p[team=red] "＃＃＃＃ＵＢ＃＃＃＃＃＃＃＃＃＃ＯＣ＃＃＃"
execute if score n Talk matches 8 run tellraw @p[team=red] "＃＃＃＃ＺＢ＃＃＃＃＃＃＃＃Ａｏ＃＃＃＃＃＃＃Ｑ＃＃＃"
execute if score n Talk matches 9 run tellraw @p[team=red] "＃＃ｉ＃＃＃＃＃＃＃＃＃＃＃＃Ｓｆ＃＃＃＃＃＃"

execute unless score n Talk >= max Talk run schedule function game:scene03/talk/t03/start 5s

execute if score n Talk >= max Talk run fill -58 67 8 -58 69 11 minecraft:air
execute if score n Talk >= max Talk run fill -58 67 -5 -58 69 -2 minecraft:air
execute if score n Talk >= max Talk run scoreboard players set *exec Grobal 0
execute if score n Talk >= max Talk run scoreboard players set state TalkState 6
execute if score n Talk >= max Talk run scoreboard objectives remove Talk