execute if score state TalkState matches 0 run function game:scene03/talk/t01
execute if score state TalkState matches 1 run function game:scene03/talk/t01sub
execute if score state TalkState matches 2 run function game:scene03/talk/t02sub
execute if score state TalkState matches 3 run function game:scene03/talk/t02blue
execute if score state TalkState matches 4 run function game:scene03/talk/t02bluesub
execute if score state TalkState matches 5 run function game:scene03/talk/t02end
execute if score state TalkState matches 6 if score *count Memory matches 0 run function game:scene03/talk/t03sub
execute if score state TalkState matches 6 if score *count Memory matches 1..3 run function game:scene03/talk/t03part
execute if score state TalkState matches 6 if score *count Memory matches 4.. run function game:scene03/talk/t03all
