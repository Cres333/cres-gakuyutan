scoreboard objectives add _Ev4 dummy

scoreboard players set @a _Ev4 0
scoreboard players set *sum _Ev4 0

scoreboard players set @a[x=55,y=63,z=3,distance=..5] _Ev4 1
scoreboard players operation *sum _Ev4 += @a _Ev4

execute if score *sum _Ev4 matches 0 run schedule function game:scene02/job/ev04 1s

execute if score *sum _Ev4 matches 1.. as @a at @s run playsound minecraft:entity.bat.loop master @s ~ ~ ~ 1 0.8
execute if score *sum _Ev4 matches 1.. run scoreboard objectives remove _Ev4
