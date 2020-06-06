execute if score state TalkState matches 1..6 positioned -101 68 -1 unless block ~ ~ ~ minecraft:air if entity @p[team=blue,distance=..2] run setblock ~ ~ ~ minecraft:air destroy
execute if score state TalkState matches 1..6 positioned -101 68 -1 unless block ~ ~ ~ minecraft:air run schedule function game:scene03/gimmick/glass/ready1 5t
