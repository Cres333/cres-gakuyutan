scoreboard objectives add _UpDown dummy
scoreboard players add n _UpDown 1
execute if score n _UpDown matches 9 run scoreboard players set n _UpDown 1

execute if score n _Updown matches 1 as @a at @s run tp @s ~ ~ ~ ~.1 ~
execute if score n _Updown matches 2 as @a at @s run tp @s ~ ~ ~ ~ ~-.1
execute if score n _Updown matches 3 as @a at @s run tp @s ~ ~ ~ ~.1 ~.1
execute if score n _Updown matches 4 as @a at @s run tp @s ~ ~ ~ ~-.1 ~
execute if score n _Updown matches 5 as @a at @s run tp @s ~ ~ ~ ~.1 ~.1
execute if score n _Updown matches 6 as @a at @s run tp @s ~ ~ ~ ~ ~-.1
execute if score n _Updown matches 7 as @a at @s run tp @s ~ ~ ~ ~.1 ~
execute if score n _Updown matches 8 as @a at @s run tp @s ~ ~ ~ ~-.2 ~.2

execute if score n _UpDown matches 1.. run schedule function game:scene04/job/updown 1t
