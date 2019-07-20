execute if score state TalkState matches 1..6 if score *g Gimmick matches 0 positioned -93 67 -34 if entity @p[distance=..4] as @s if block ~ ~ ~ minecraft:barrel[open=true] run function game:scene03/gimmick/g/start
execute if score state TalkState matches 1..6 if score *g Gimmick matches 0 run schedule function game:scene03/gimmick/g/ready 1s
