scoreboard players set *exec Grobal 1
scoreboard players set hand Any 0
scoreboard objectives add Talk dummy "会話"
scoreboard players add n Talk 1
execute if score n Talk matches 1 run fill -58 67 8 -58 69 11 minecraft:barrier
execute if score n Talk matches 1 run fill -58 67 -5 -58 69 -2 minecraft:barrier

execute if score n Talk matches 1 run scoreboard players set max Talk 3

execute if score n Talk matches 1 run tellraw @p[team=blue] "そこに書かれた物を持って来ることができたら、"
execute if score n Talk matches 2 run tellraw @p[team=blue] "私が知っていることを教えてあげます"
execute if score n Talk matches 3 run tellraw @p[team=blue] "あと、あなたのお友達には私の声が聞こえてないみたい…"

execute if score n Talk matches 1 run tellraw @p[team=red] "＃＃＃ＦＦｐ＃＃＃＃＃＃Ｈｏ＃＃＃＃＃＃＃"
execute if score n Talk matches 2 run tellraw @p[team=red] "＃ＰＬ＃＃＃＃＃＃＃ＥＬ＃＃＃＃＃＃＃"
execute if score n Talk matches 3 run tellraw @p[team=red] "＃＃＃＃＃＃＃Ｔｉ＃＃＃＃＃＃Ｇ＃＃＃＃＃＃＃＃＃＃"

execute unless score n Talk = max Talk run schedule function game:scene03/talk/t01/re 5s

execute if score n Talk = max Talk run fill -58 67 8 -58 69 11 minecraft:air
execute if score n Talk = max Talk run fill -58 67 -5 -58 69 -2 minecraft:air
execute if score n Talk = max Talk run scoreboard players set *exec Grobal 0
execute if score n Talk = max Talk run scoreboard objectives remove Talk
