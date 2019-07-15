scoreboard objectives add Talk dummy "会話"
scoreboard players add n Talk 1

execute if score n Talk matches 1 run scoreboard players set max Talk 9
execute if score n Talk matches 1 run clear @a written_book

execute if score n Talk matches 1 run tellraw @p[team=blue] "＃Ｔ＃＃＃ｓ＃＃＃Ｍ＃＃"
execute if score n Talk matches 2 run tellraw @p[team=blue] "＃ｐ＃＃＃＃＃＃＃＃＃Ｏ＃＃＃＃＃＃＃Ｂ＃"
execute if score n Talk matches 3 run tellraw @p[team=blue] "＃＃Ｕ＃＃＃＃＃＃＃Ｚ＃＃＃"
execute if score n Talk matches 4 run tellraw @p[team=blue] "ｒＰ＃＃Ｕ＃"
execute if score n Talk matches 5 run tellraw @p[team=blue] "＃ｈ＃＃ＥｉＢ＃Ｕ＃ｒ＃ｐＢ＃ＹＮＦＢ＃＃"
execute if score n Talk matches 6 run tellraw @p[team=blue] "ｐＢＵ＃ｐＢＵ＃＃＃Ｊ＃＃ＪＶＢｏ＃＃"
execute if score n Talk matches 7 run tellraw @p[team=blue] "＃＃ＥＢＳＢＦ＃＃＃＃ｅＰａＴｎ＃＃＃ＵｎＰＨＵＢ＃＃"
execute if score n Talk matches 9 run tellraw @p[team=blue] "『早く！この世界が壊れてしまう前に！今すぐ逃げて！』"

execute if score n Talk matches 1 run tellraw @p[team=red] "…突然、何を言い出すの？"
execute if score n Talk matches 2 run tellraw @p[team=red] "それは私の望む答えは、そんな言葉じゃないわ"
execute if score n Talk matches 3 run tellraw @p[team=red] "その名前は…その、名前は……"
execute if score n Talk matches 4 run tellraw @p[team=red] "私の…名前？"
execute if score n Talk matches 5 run tellraw @p[team=red] "駄目だ！思い出すな！私とレイナの世界が！！"
execute if score n Talk matches 6 run tellraw @p[team=red] "レイナ！レイナ！！どこ？どこにいるの？"
execute if score n Talk matches 7 run tellraw @p[team=red] "私を置いて行かないで！また一人になんてなりたくない！！"
execute if score n Talk matches 9 run tellraw @p[team=red] "＃Ｚ＃＃Ｊ＃＃＃＃Ｊ＃＃＃＃＃ｅ＃＃＃Ｍ＃＃＃Ｓ＃＃"

execute unless score n Talk >= max Talk run schedule function game:scene04/yuuko 5s

execute if score n Talk >= max Talk run function game:scene04/movie/start
execute if score n Talk >= max Talk run scoreboard players set *end Grobal 1
execute if score n Talk >= max Talk run scoreboard objectives remove Talk
