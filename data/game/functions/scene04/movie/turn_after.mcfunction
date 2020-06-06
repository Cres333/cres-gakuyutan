execute if score *wool _Turn matches 1 as @e[tag=movie] at @s run tp @s ~ 64 ~ facing -5 64 44
execute if score *wool _Turn matches 2 as @e[tag=movie] at @s run tp @s ~ 64 ~ facing 15 64 46
execute if score *wool _Turn matches 3 as @e[tag=movie] at @s run tp @s ~ 64 ~ facing 13 64 70
execute if score *wool _Turn matches 4 as @e[tag=movie] at @s run tp @s ~ 64 ~ facing -1 64 68
execute if score *wool _Turn matches 5 as @e[tag=movie] at @s run tp @s ~ 64 ~ facing 2 64 86
execute if score *wool _Turn matches 6 as @e[tag=movie] at @s run tp @s ~ 64 ~ facing 31 64 84
execute if score *wool _Turn matches 7 as @e[tag=movie] at @s run tp @s 29 64 84 facing 29 118 84
execute if score *wool _Turn matches 7 as @a at @s run playsound minecraft:kurokirisama master @s ~ ~ ~ 1 1

execute if score *wool _Turn matches 7 as @e[tag=movie] run data merge entity @s {NoGrabity:1b}
execute if score *wool _Turn matches 1..7 as @e[tag=movie] at @s anchored feet run tp @a ~ ~ ~ ~ ~
execute if score *wool _Turn matches 1..7 run scoreboard players add *state _Movie 1
execute if score *wool _Turn matches 1..7 as @a at @s run playsound minecraft:earth master @s ~ ~ ~ 1000 2

scoreboard objectives remove _Turn
