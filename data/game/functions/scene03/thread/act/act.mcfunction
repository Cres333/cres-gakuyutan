execute store success score *find Sight unless entity @p[scores={Sight=20}] as @p[scores={Sight=10}] run scoreboard players set @s Sight 20
execute if score state TalkState matches 0.. as @e[tag=kuro] at @s run tp @s ^ ^ ^0.05

execute if score pos KuroAct matches 4.. run scoreboard players set pos KuroAct 1

execute if score pos KuroAct matches 1 run function game:scene03/thread/act/one
execute if score pos KuroAct matches 2 run function game:scene03/thread/act/two
execute if score pos KuroAct matches 3 run function game:scene03/thread/act/three
