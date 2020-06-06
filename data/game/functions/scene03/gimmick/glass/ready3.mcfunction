execute if score state TalkState matches 1..6 positioned -63 68 -41 unless block ~ ~ ~ minecraft:air if entity @p[distance=..2] run setblock ~ ~ ~ minecraft:air destroy
execute if score state TalkState matches 1..6 positioned -63 68 -41 unless block ~ ~ ~ minecraft:air run schedule function game:scene03/gimmick/glass/ready3 5t
