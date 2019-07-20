execute if score state TalkState matches 1 run function game:scene03/talk/t01/sub
execute if score state TalkState matches 2 run function game:scene03/talk/t02/sub
execute if score state TalkState matches 5 run function game:scene03/talk/t02/end
execute if score state TalkState matches 6 if score *count Memory matches 0 run function game:scene03/talk/t03/sub
execute if score state TalkState matches 6 unless score *count Memory matches 0 if score *item Memory matches 1..3 run function game:scene03/talk/t03/part
execute if score state TalkState matches 6 unless score *count Memory matches 0 if score *item Memory matches 4.. run function game:scene03/talk/t03/all
