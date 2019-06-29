scoreboard players set exec Any 1
scoreboard objectives add Talk dummy "会話"
scoreboard players add n Talk 1
execute if score n Talk matches 1 run fill -58 67 8 -58 69 11 minecraft:barrier
execute if score n Talk matches 1 run fill -58 67 -5 -58 69 -2 minecraft:barrier

execute if score n Talk matches 1 run scoreboard players set max Talk 10

execute if score n Talk matches 1 run tellraw @p[team=blue] "ちゃんと持ってこれたようね"
execute if score n Talk matches 2 run tellraw @p[team=blue] "次は開かずの間に行ってきて、なにか取ってきてちょうだい"
execute if score n Talk matches 3 run tellraw @p[team=blue] "開かずの教室に行くためには二人が一緒にいかないとダメなの"
execute if score n Talk matches 4 run tellraw @p[team=blue] "ただ、開かずの教室は普通に歩いて行くことができないの"
execute if score n Talk matches 5 run tellraw @p[team=blue] "そのチョークで魔法陣を完成させてちょうだい"
execute if score n Talk matches 6 run tellraw @p[team=blue] "別にあなた達の血でもいいんだけど、嫌でしょ？"
execute if score n Talk matches 7 run tellraw @p[team=blue] "完成させたら光を頼りに開かずの教室に行けると思うわ"
execute if score n Talk matches 8 run tellraw @p[team=blue] "…なぜ、こんなこと知っているのか私も分からないんだけどね"
execute if score n Talk matches 9 run tellraw @p[team=blue] "昔、誰かに聞いた…？いえ、誰かと…？"
execute if score n Talk matches 10 run tellraw @p[team=blue] "やっぱり、分からないわ"

execute if score n Talk matches 1 run tellraw @p[team=red] "＃＃＃Ｔ＃＃＃＃Ｊｐ＃＃＃＃"
execute if score n Talk matches 2 run tellraw @p[team=red] "＃＃ＡＦ＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃ＧＳ＃＃＃＃＃"
execute if score n Talk matches 3 run tellraw @p[team=red] "＃＃＃＃＃＃＃Ｂ＃＃＃＃＃＃ｂＰ＃＃＃＃＃Ｕ＃＃＃＃＃＃"
execute if score n Talk matches 4 run tellraw @p[team=red] "Ｐ＃＃＃＃＃＃＃＃＃＃＃＃Ａｏ＃＃＃＃＃＃＃＃＃＃"
execute if score n Talk matches 5 run tellraw @p[team=red] "＃＃＃＃＃＃＃ｅｄ＃＃＃＃＃ＮＳ＃＃＃＃＃＃"
execute if score n Talk matches 6 run tellraw @p[team=red] "＃＃ＵＰ＃＃＃＃＃＃＃＃Ｂ＃＃＃＃＃ｊ＃＃＃＃"
execute if score n Talk matches 7 run tellraw @p[team=red] "＃Ｎ＃＃＃＃＃ａＦ＃＃＃＃＃＃＃＃＃ＢＩ＃＃＃＃＃＃"
execute if score n Talk matches 8 run tellraw @p[team=red] "＃＃＃＃Ｊｔ＃＃＃＃＃＃＃＃＃＃ｒＦ＃＃＃ＵＢ＃＃＃＃＃"
execute if score n Talk matches 9 run tellraw @p[team=red] "＃＃＃＃ＧＢＰ＃＃＃＃＃＃＃＃＃Ｔ＃"
execute if score n Talk matches 10 run tellraw @p[team=red] "＃＃ｎ＃＃＃＃＃＃ＵＢ＃"

execute unless score n Talk = max Talk run schedule function game:scene03/talk/item/ok 5s

execute if score n Talk = max Talk run fill -58 67 8 -58 69 11 minecraft:air
execute if score n Talk = max Talk run fill -58 67 -5 -58 69 -2 minecraft:air
execute if score n Talk = max Talk run scoreboard players set exec Any 0
execute if score n Talk = max Talk run scoreboard players set state TalkState 2
execute if score n Talk = max Talk run function game:scene03/t02end
execute if score n Talk = max Talk run scoreboard objectives remove Talk