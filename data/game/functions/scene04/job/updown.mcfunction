scoreboard players add n _UpDown 1
execute if score n _UpDown matches 9 run scoreboard players set n _UpDown 1

execute if score n _UpDown matches 1 as @a at @s run tp @s ~ ~ ~ ~2 ~
execute if score n _UpDown matches 2 as @a at @s run tp @s ~ ~ ~ ~ ~-2
execute if score n _UpDown matches 3 as @a at @s run tp @s ~ ~ ~ ~2 ~2
execute if score n _UpDown matches 4 as @a at @s run tp @s ~ ~ ~ ~-2 ~-4
execute if score n _UpDown matches 5 as @a at @s run tp @s ~ ~ ~ ~2 ~2
execute if score n _UpDown matches 6 as @a at @s run tp @s ~ ~ ~ ~-2 ~-2
execute if score n _UpDown matches 7 as @a at @s run tp @s ~ ~ ~ ~2 ~
execute if score n _UpDown matches 8 as @a at @s run tp @s ~ ~ ~ ~-4 ~4

execute if score n _UpDown matches 1.. run schedule function game:scene04/job/updown 1t
