scoreboard players set *debug Grobal 1
execute if score *debug Grobal matches 1 as @p at @s run summon armor_stand ~ ~ ~ {Tags:["debug"],Marker:1b,Invisible:1b,NoGravity:1b}
execute if score *debug Grobal matches 1 as @p[team=red] at @s run team join blue @e[tag=debug,limit=1]
execute if score *debug Grobal matches 1 as @p[team=blue] at @s run team join red @e[tag=debug,limit=1]
