scoreboard players set exec Any 1
scoreboard objectives add Talk dummy "会話"
scoreboard players add n Talk 1
execute if score n Talk matches 1 run fill -58 67 8 -58 69 11 minecraft:barrier
execute if score n Talk matches 1 run fill -58 67 -5 -58 69 -2 minecraft:barrier

execute if score n Talk matches 1 run scoreboard players set max Talk 8

execute if score n Talk matches 1 run tellraw @p[team=blue] "手伝ってくれて、ありがとう"
execute if score n Talk matches 2 run tellraw @p[team=blue] "そのおかげで、ほとんどの記憶を思い出すことができました"
execute if score n Talk matches 3 run tellraw @p[team=blue] "それであなた達がここから出るためには、"
execute if score n Talk matches 4 run tellraw @p[team=blue] "この学校を壊さなきゃいけないみたいです"
execute if score n Talk matches 5 run tellraw @p[team=blue] "そのためには、この学校を作ったときに捧げたものを取り返す…"
execute if score n Talk matches 6 run tellraw @p[team=blue] "それは「私達」の名前を「私達」が思い出す必要があります"
execute if score n Talk matches 7 run tellraw @p[team=blue] "私はもう思い出してしまった、あとは彼女だけ…"
execute if score n Talk matches 8 run tellraw @p[team=blue] "彼女の名ーーー"
execute if score n Talk matches 8 run tellraw @p[team=blue] "＃＃ｅ＃＃＃＃"

execute if score n Talk matches 1 run tellraw @p[team=red] "＃＃＃＃Ｈ＃＃＃＃＃＃＃＃"
execute if score n Talk matches 2 run tellraw @p[team=red] "＃＃ＥＦ＃＃＃＃＃＃＃＃＃＃＃ｓ＃＃＃＃＃＃＃＃＃＃＃"
execute if score n Talk matches 3 run tellraw @p[team=red] "＃＃＃＃Ａ＃＃＃＃ＪＪ＃＃＃＃＃＃＃＃"
execute if score n Talk matches 4 run tellraw @p[team=red] "ＪＹ＃＃＃＃＃＃＃＃＃＃ＵＢ＃＃＃＃＃"
execute if score n Talk matches 5 run tellraw @p[team=red] "＃＃＃ｈＶ＃＃＃＃＃＃＃＃＃＃Ｐ＃＃＃＃＃＃＃＃＃＃ｎ＃＃"
execute if score n Talk matches 6 run tellraw @p[team=red] "＃＃＃＃＃＃＃＃Ｕ＃Ｄ＃＃＃＃＃＃Ｅｉ＃＃＃＃＃＃＃＃＃"
execute if score n Talk matches 7 run tellraw @p[team=red] "＃＃ｉ＃＃＃＃＃＃＃Ｌ＃＃＃ＡＴ＃＃＃＃＃＃"
execute if score n Talk matches 8 run tellraw @p[team=red] "Ｆ＃Ｙ＃＃＃＃"
execute if score n Talk matches 8 run tellraw @p[team=red] "そこまでよ！！"

execute unless score n Talk = max Talk run schedule function game:scene03/talk/t03end 5s

execute if score n Talk = max Talk run fill -58 67 8 -58 69 11 minecraft:air
execute if score n Talk = max Talk run fill -58 67 -5 -58 69 -2 minecraft:air
execute if score n Talk = max Talk run scoreboard players set exec Any 0
execute if score n Talk = max Talk run scoreboard players set state TalkState -1
execute if score n Talk = max Talk run function game:scene04/create
execute if score n Talk = max Talk run scoreboard objectives remove Talk
