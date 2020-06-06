execute if score state TalkState matches 1..6 if score *step Gimmick matches 0 positioned -71 80 3 if entity @p[team=red,distance=..4] run function game:scene03/gimmick/step/finish
execute if score state TalkState matches 1..6 if score *step Gimmick matches 0 run schedule function game:scene03/gimmick/step/ready 1s
