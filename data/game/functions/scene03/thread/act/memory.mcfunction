tp @s -69.0 66 -105 0 0
scoreboard players add *count Memory 1
scoreboard players add *item Memory 1
scoreboard players operation @s Memory = *count Memory

execute if score *count Memory matches 1 run function game:scene03/job/memory/one
execute if score *count Memory matches 2 run function game:scene03/job/memory/two
execute if score *count Memory matches 3 run function game:scene03/job/memory/three
execute if score *count Memory matches 4 run function game:scene03/job/memory/four

scoreboard players set @s Sight 0
