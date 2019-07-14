scoreboard objectives add _Ev2 dummy

scoreboard players set @a _Ev2 0
scoreboard players set *sum _Ev2 0

scoreboard players set @a[x=74.5,y=63,z=32.5,distance=..7] _Ev2 1
scoreboard players operation *sum _Ev2 += @a _Ev2

execute if score *sum _Ev2 matches 0 run schedule function game:scene02/job/ev02 1s

execute if score *sum _Ev2 matches 1.. run function game:scene02/ev02
execute if score *sum _Ev2 matches 1.. run scoreboard objectives remove _Ev2