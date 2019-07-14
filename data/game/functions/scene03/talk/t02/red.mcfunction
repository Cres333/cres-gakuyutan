scoreboard players set *exec2 Grobal 1
scoreboard objectives add RTalk dummy "会話"
scoreboard players add n RTalk 1
execute if score n RTalk matches 1 run setblock -79 81 -1 minecraft:barrier
execute if score n RTalk matches 1 run setblock -79 81 -12 minecraft:barrier

execute if score n RTalk matches 1 run tellraw @p[team=red] "[？？？]---"
execute if score n RTalk matches 1 run scoreboard players set max RTalk 9

execute if score n RTalk matches 1 run tellraw @p[team=red] "どう？ここで楽しんでる？"
execute if score n RTalk matches 2 run tellraw @p[team=red] "あなた達はまだまだ返さないわ"
execute if score n RTalk matches 3 run tellraw @p[team=red] "いえ、ずっとここに居てもらわなきゃ"
execute if score n RTalk matches 4 run tellraw @p[team=red] "だって友達が多いほうが楽しいでしょ？"
execute if score n RTalk matches 5 run tellraw @p[team=red] "私はいっぱい友達を集めなきゃいけないの"
execute if score n RTalk matches 6 run tellraw @p[team=red] "なんで友達を集めなきゃいけなかったのか思い出せないけど…"
execute if score n RTalk matches 7 run tellraw @p[team=red] "でも、集めなきゃいけない…一人でも多く…"
execute if score n RTalk matches 8 run tellraw @p[team=red] "だから、あなたもここで誰にも何も言われない世界で、"
execute if score n RTalk matches 9 run tellraw @p[team=red] "一緒に遊びましょ？"

execute unless score n RTalk = max RTalk run schedule function game:scene03/talk/t02/red 5s

execute if score n RTalk = max RTalk run setblock -79 81 -1 minecraft:air
execute if score n RTalk = max RTalk run setblock -79 81 -12 minecraft:air
execute if score n RTalk = max RTalk run scoreboard players set *exec2 Grobal 0
execute if score n RTalk = max RTalk run scoreboard players set state TalkState 4
execute if score n RTalk = max RTalk run scoreboard objectives remove RTalk