execute if score state TalkState matches 1..6 if score *rocker Gimmick matches 0 positioned -66 67 9 if entity @p[distance=..3] run function game:scene03/gimmick/rocker/finish
execute if score state TalkState matches 1..6 if score *rocker Gimmick matches 0 run schedule function game:scene03/gimmick/rocker/ready 1s
