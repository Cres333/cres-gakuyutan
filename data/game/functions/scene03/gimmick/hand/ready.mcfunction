execute if score state TalkState matches 1..6 if score *hand Gimmick matches 0 positioned -79 67 -7 if entity @p[team=blue,distance=..4] run function game:scene03/gimmick/hand/start
execute if score state TalkState matches 1..6 if score *hand Gimmick matches 0 run schedule function game:scene03/gimmick/hand/ready 1s
