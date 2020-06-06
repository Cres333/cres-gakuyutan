execute if score state TalkState matches 1..6 positioned -73 68 -7 unless block ~ ~ ~ minecraft:air if entity @p[team=red,distance=..2] run setblock ~ ~ ~ minecraft:air destroy
execute if score state TalkState matches 1..6 positioned -73 68 -7 unless block ~ ~ ~ minecraft:air run schedule function game:scene03/gimmick/glass/ready2 5t
