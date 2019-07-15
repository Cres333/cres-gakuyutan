scoreboard objectives add Talk dummy "会話"
scoreboard players add n Talk 1

execute if score n Talk matches 1 run scoreboard players set max Talk 11
execute if score n Talk matches 1 run clear @a written_book

execute if score n Talk matches 1 run tellraw @p[team=blue] "＃Ｔ＃＃＃ｓ＃＃＃Ｍ＃＃"
execute if score n Talk matches 2 run tellraw @p[team=blue] "＃ｐ＃＃＃＃＃＃＃＃＃Ｏ＃＃＃＃＃＃＃Ｂ＃"
execute if score n Talk matches 3 run tellraw @p[team=blue] "＃＃Ｕ＃＃＃＃＃＃＃Ｚ＃＃＃"
execute if score n Talk matches 4 run tellraw @p[team=blue] "Ａ＃＃＃＃Ｆ＃＃＃＃＃＃＃＃＃Ａ＃＃＃＃＃＃＃"
execute if score n Talk matches 5 run tellraw @p[team=blue] "＃＃＃＃Ｂ＃＃＃＃＃＃＃＃＃＃＃＃Ｎ＃＃＃"
execute if score n Talk matches 11 run tellraw @p[team=blue] "『今すぐ逃げて！この世界が壊れます！』"

execute if score n Talk matches 1 run tellraw @p[team=red] "…突然、何を言い出すの？"
execute if score n Talk matches 2 run tellraw @p[team=red] "それは私の望む答えは、そんな言葉じゃないわ"
execute if score n Talk matches 3 run tellraw @p[team=red] "その名前は…その、名前は……"
execute if score n Talk matches 4 run tellraw @p[team=red] "あれ？…おかしい、聞いたことがあるはずなのに、"
execute if score n Talk matches 5 run tellraw @p[team=red] "忘れちゃいけないはずなのに、思い出せない？"
execute if score n Talk matches 11 run tellraw @p[team=red] "＃Ｍ＃＃Ｓ＃＃＃＃＃＃＃ｐ＃＃＃"

execute if score n Talk matches 6 run tellraw @a "ＦＵ＃＃＃ｅＱ＃＃＃ｐＢ＃＃＃Ｕ＃＃＃＃＃＃"
execute if score n Talk matches 7 run tellraw @a "ｐＢＵ、ｐＢＵ、ｐＢＵ＃＃＃ｐＢＵ、ＯＪＶＢｏ＃＃＃"
execute if score n Talk matches 8 run tellraw @a "＃＃＃"
execute if score n Talk matches 9 run tellraw @a "ＡＡＡＡＡＡＡＡＡＡＡＡＡＡＡＡＡＡＡＡＡＡＡＡＡ"
execute if score n Talk matches 10 run function game:scene04/earth

execute unless score n Talk >= max Talk run schedule function game:scene04/reina 5s

execute if score n Talk >= max Talk run function game:scene04/movie/start
execute if score n Talk >= max Talk run scoreboard players set *end Grobal 2
execute if score n Talk >= max Talk run scoreboard objectives remove Talk
