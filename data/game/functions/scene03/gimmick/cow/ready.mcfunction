execute if score state TalkState matches 1..6 if score *cow Gimmick matches 0 if entity @p[x=-50,y=67,z=-49,dx=2,dy=2,dz=13,y_rotation=-5..5] run function game:scene03/gimmick/cow/start
execute if score state TalkState matches 1..6 if score *cow Gimmick matches 0 run schedule function game:scene03/gimmick/cow/ready 5t
