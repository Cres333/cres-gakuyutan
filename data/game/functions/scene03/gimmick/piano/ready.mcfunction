execute if score state TalkState matches 1..6 if score *piano Gimmick matches 0 positioned -89 67 -45 if entity @p[distance=..3] run function game:scene03/gimmick/piano/finish
execute if score state TalkState matches 1..6 if score *piano Gimmick matches 0 run schedule function game:scene03/gimmick/piano/ready 1s
