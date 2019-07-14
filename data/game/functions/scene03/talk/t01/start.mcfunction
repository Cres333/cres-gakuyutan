scoreboard players set *exec Grobal 1
scoreboard objectives add Talk dummy "会話"
scoreboard players add n Talk 1
execute if score n Talk matches 1 run fill -58 67 8 -58 69 11 minecraft:barrier
execute if score n Talk matches 1 run fill -58 67 -5 -58 69 -2 minecraft:barrier

execute if score n Talk matches 1 run tellraw @a "[？？？]---"
execute if score n Talk matches 1 run scoreboard players set max Talk 9

execute if score n Talk matches 1 run tellraw @p[team=blue] "ここに何の用でしょう？…"
execute if score n Talk matches 2 run tellraw @p[team=blue] "私？私の名前はもう忘れてしまいました…"
execute if score n Talk matches 3 run tellraw @p[team=blue] "どうやらあなた達はここに迷い込んでしまったようだけれど"
execute if score n Talk matches 4 run tellraw @p[team=blue] "ここから出る手段なんて、残念ながら無いかもしれません"
execute if score n Talk matches 5 run tellraw @p[team=blue] "もし、出られるとすれば、あなた達を連れてきた人にお願いするといいかも…"
execute if score n Talk matches 6 run tellraw @p[team=blue] "…そう、詳しいことを知りたければ、これを持ってきてくれますか？"
execute if score n Talk matches 7 run tellraw @p[team=blue] "そこに書かれた物を持って来ることができたら、"
execute if score n Talk matches 8 run tellraw @p[team=blue] "私が知っていることを教えてあげられるかもしれません"
execute if score n Talk matches 9 run tellraw @p[team=blue] "あと、あなたのお友達には私の声が聞こえてないみたい…"

execute if score n Talk matches 1 run tellraw @p[team=red] "Ｊ＃＃＃＃Ｙ＃＃"
execute if score n Talk matches 2 run tellraw @p[team=red] "＃＃＃Ｙ＃＃＃＃＃＃ｐＳ＃＃＃＃＃"
execute if score n Talk matches 3 run tellraw @p[team=red] "＃Ｃｊ＃＃＃＃＃＃Ｊ＃＃＃＃Ｊｔ＃＃＃＃＃＃＃＃＃＃＃"
execute if score n Talk matches 4 run tellraw @p[team=red] "＃＃＃＃＃＃＃＃ＵｔＳ＃＃＃＃＃＃ＵＢ＃"
execute if score n Talk matches 5 run tellraw @p[team=red] "＃＃＃＃＃＃＃＃＃＃＃＃＃ＡＵＰ＃＃＃＃ＧＰ＃＃＃＃＃＃＃＃＃＃"
execute if score n Talk matches 6 run tellraw @p[team=red] "＃ＯＣ＃＃＃＃＃＃＃＃Ｌｎ＃＃＃＃＃＃＃＃＃＃＃＃Ｇ＃＃＃＃＃＃＃＃"
execute if score n Talk matches 7 run tellraw @p[team=red] "＃＃＃ＦＦｐ＃＃＃＃＃＃Ｈｏ＃＃＃＃＃＃＃"
execute if score n Talk matches 8 run tellraw @p[team=red] "＃ＰＬ＃＃＃＃＃＃＃ＥＬ＃＃＃＃＃＃＃"
execute if score n Talk matches 9 run tellraw @p[team=red] "＃＃＃＃＃＃＃Ｔｉ＃＃＃＃＃＃Ｇ＃＃＃＃＃＃＃＃＃＃"

execute unless score n Talk = max Talk run schedule function game:scene03/talk/t01/start 5s

execute if score n Talk = max Talk run fill -58 67 8 -58 69 11 minecraft:air
execute if score n Talk = max Talk run fill -58 67 -5 -58 69 -2 minecraft:air
execute if score n Talk = max Talk run scoreboard players set *exec Grobal 0
execute if score n Talk = max Talk run scoreboard players set state TalkState 1
execute if score n Talk = max Talk run function game:scene03/t01/end
execute if score n Talk = max Talk run scoreboard objectives remove Talk
