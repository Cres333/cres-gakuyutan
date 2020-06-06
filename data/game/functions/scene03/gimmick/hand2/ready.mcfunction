execute if score state TalkState matches 1..6 if score *hand2 Gimmick matches 0 positioned -65 79 -18 if entity @p[team=red,distance=..4] run function game:scene03/gimmick/hand2/start
execute if score state TalkState matches 1..6 if score *hand2 Gimmick matches 0 run schedule function game:scene03/gimmick/hand2/ready 1s
