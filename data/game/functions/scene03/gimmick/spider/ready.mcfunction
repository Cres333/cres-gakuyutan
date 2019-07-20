execute if score state TalkState matches 2..6 if score *spider Gimmick matches 0 positioned -61 67 -35 if entity @p[distance=..2] run function game:scene03/gimmick/spider/start
execute if score state TalkState matches 2..6 if score *spider Gimmick matches 0 positioned -61 67 -46 if entity @p[distance=..2] run function game:scene03/gimmick/spider/start
execute if score state TalkState matches 2..6 if score *spider Gimmick matches 0 run schedule function game:scene03/gimmick/spider/ready 1s
