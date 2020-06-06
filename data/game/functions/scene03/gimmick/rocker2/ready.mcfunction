execute if score state TalkState matches 1..6 if score *rocker2 Gimmick matches 0 positioned -84 67 5 if entity @p[distance=..3] run function game:scene03/gimmick/rocker2/finish
execute if score state TalkState matches 1..6 if score *rocker2 Gimmick matches 0 run schedule function game:scene03/gimmick/rocker2/ready 1s
