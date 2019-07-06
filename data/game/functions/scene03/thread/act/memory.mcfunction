scoreboard players set @p[scores={Sight=-10}] Sight 0
scoreboard players add *count Memory 1
scoreboard players operation @p[scores={Sight=-10}] Memory = *count Memory

execute if score *count Memory matches 1 run function game:scene03/job/memory/one
execute if score *count Memory matches 2 run function game:scene03/job/memory/two
execute if score *count Memory matches 3 run function game:scene03/job/memory/three
execute if score *count Memory matches 4 run function game:scene03/job/memory/four
