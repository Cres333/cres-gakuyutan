scoreboard players set *exec Grobal 1
scoreboard players set click Any 0
scoreboard players set hand Any 0
scoreboard objectives add Talk dummy "会話"
scoreboard players add n Talk 1
execute if score n Talk matches 1 run fill -58 67 8 -58 69 11 minecraft:barrier
execute if score n Talk matches 1 run fill -58 67 -5 -58 69 -2 minecraft:barrier

execute if score n Talk matches 1 run scoreboard players set max Talk 10

execute if score n Talk matches 1 run tellraw @p[team=blue] "黒霧様という古くから伝わる伝承で、神様のようなものです"
execute if score n Talk matches 2 run tellraw @p[team=blue] "黒霧様にお願いをするとそれに見合ったものを失う代わりに叶えてくれます"
execute if score n Talk matches 3 run tellraw @p[team=blue] "失うものは体だったり、記憶だったり、名前だったり…"
execute if score n Talk matches 4 run tellraw @p[team=blue] "私もいくつかお願いを叶えてもらったんでしょうけど、"
execute if score n Talk matches 5 run tellraw @p[team=blue] "何を願ったのかさえも忘れてしまいました…"
execute if score n Talk matches 6 run tellraw @p[team=blue] "ただ、思い出せないってことは、きっと大切な何かを願った…"
execute if score n Talk matches 7 run tellraw @p[team=blue] "黒霧様に渡したものを自分で思い出したり、手に入れたら、"
execute if score n Talk matches 8 run tellraw @p[team=blue] "代わりに願ったものが失われてしまうんですけどね"
execute if score n Talk matches 9 run tellraw @p[team=blue] "だけど、基本的に正面に立ったりして見つからないでください"
execute if score n Talk matches 10 run tellraw @p[team=blue] "黒霧様はそれだけじゃなくて見た者に悪夢を見せるとも言いますから"

execute if score n Talk matches 1 run tellraw @p[team=red] "＃＃＃＃＃＃Ｆｍ＃＃＃＃＃＃＃＃Ｆｆ＃＃＃＃＃＃＃"
execute if score n Talk matches 2 run tellraw @p[team=red] "＃ｑ＃＃＃＃＃＃＃＃＃Ｏ＃＃＃＃＃＃＃＃＃ＣＬＵ＃＃＃＃＃＃＃＃＃＃"
execute if score n Talk matches 3 run tellraw @p[team=red] "＃＃ｉＹ＃＃＃＃＃＃＃＃＃＃＃＃＃＃ＵｅＤ＃＃＃＃＃＃"
execute if score n Talk matches 4 run tellraw @p[team=red] "＃＃＃＃＃＃＃Ｘ＃＃＃ＤＳ＃＃＃＃＃＃＃＃＃＃"
execute if score n Talk matches 5 run tellraw @p[team=red] "＃＃＃＃＃＃＃ＫＤ＃＃＃＃＃Ｌｅ＃＃＃"
execute if score n Talk matches 6 run tellraw @p[team=red] "＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃＃Ｔ＃＃＃＃＃Ｆｓ＃＃＃＃＃"
execute if score n Talk matches 7 run tellraw @p[team=red] "＃＃＃＃＃＃＃ｉ＃＃＃＃＃＃＃＃ＬＰ＃＃＃＃＃＃＃＃＃"
execute if score n Talk matches 8 run tellraw @p[team=red] "＃＃ｎＶ＃＃＃＃＃＃＃ｒｐ＃＃＃＃＃＃＃＃＃"
execute if score n Talk matches 9 run tellraw @p[team=red] "＃＃＃＃＃＃＃＃＃＃＃＃＃Ｐｎ＃＃＃＃＃＃ＵＢ＃＃＃＃＃＃"
execute if score n Talk matches 10 run tellraw @p[team=red] "Ｈｑ＃＃＃＃＃＃＃＃＃＃＃ｆＲＩ＃＃＃＃ＡＨ＃＃＃＃＃＃＃＃＃＃"

execute unless score n Talk >= max Talk run schedule function game:scene03/talk/t02/kuro 5s

execute if score n Talk >= max Talk run fill -58 67 8 -58 69 11 minecraft:air
execute if score n Talk >= max Talk run fill -58 67 -5 -58 69 -2 minecraft:air
execute if score n Talk >= max Talk run scoreboard players set *exec Grobal 0
execute if score n Talk >= max Talk run schedule function game:scene03/talk/separate 1s
execute if score n Talk >= max Talk run scoreboard objectives remove Talk