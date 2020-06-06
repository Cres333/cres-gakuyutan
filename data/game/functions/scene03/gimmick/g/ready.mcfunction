execute if score state TalkState matches 1..6 if score *g Gimmick matches 0 positioned -99 67 -23 if entity @p[distance=..4] if block ~ ~ ~ minecraft:barrel[open=true] run function game:scene03/gimmick/g/start
execute if score state TalkState matches 1..6 if score *g Gimmick matches 0 run schedule function game:scene03/gimmick/g/ready 5t
