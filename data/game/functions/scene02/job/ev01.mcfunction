scoreboard objectives add _Ev1 dummy

scoreboard players set @a _Ev1 0
scoreboard players set *sum _Ev1 0

scoreboard players set @a[x=48.5,y=63,z=-82,distance=..7] _Ev1 1
scoreboard players operation *sum _Ev1 += @a _Ev1

execute if score *sum _Ev1 matches 0 run schedule function game:scene02/job/ev01 5t

execute if score *sum _Ev1 matches 1.. run function game:scene02/ev01
execute if score *sum _Ev1 matches 1.. run scoreboard objectives remove _Ev1
