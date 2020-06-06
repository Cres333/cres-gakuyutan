execute if score state TalkState matches 1..6 if score *hall Gimmick matches 0 positioned -81.0 67 -17.0 if entity @p[distance=..1] run function game:scene03/gimmick/hall/finish
execute if score state TalkState matches 1..6 if score *hall Gimmick matches 0 run schedule function game:scene03/gimmick/hall/ready 1s
