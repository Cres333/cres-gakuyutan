execute if score state TalkState matches 0 if score *with Grobal matches 1 if score *exec Grobal matches 0 run function game:scene03/talk/t01/start
execute if score *withBlue Grobal matches 1 if score *with Grobal matches 1 if entity @s[team=blue] if score *exec Grobal matches 0 run function game:scene03/talk/blue/switch
execute if score *withBlue Grobal matches 1 if entity @s[team=blue] if score *exec Grobal matches 0 run function game:scene03/talk/blue/switch2
execute if score *withRed Grobal matches 1 if entity @s[team=red] if score *exec2 Grobal matches 0 run function game:scene03/talk/red/switch
execute if score *exec Grobal matches 0 if score *exec2 Grobal matches 0 if score *with Grobal matches 0 run tellraw @s "[!] 二人が近くにいる必要があります"
execute if score *exec Grobal matches 0 if score *exec2 Grobal matches 0 if score *with Grobal matches 1 run tellraw @s "[!] あなたは話しかけることができません"
