execute if score state TalkState matches 1..6 if score *statue Gimmick matches 0 positioned -97 67 -48 if entity @p[distance=..3] run function game:scene03/gimmick/statue/finish
execute if score state TalkState matches 1..6 if score *statue Gimmick matches 0 run schedule function game:scene03/gimmick/statue/ready 1s
