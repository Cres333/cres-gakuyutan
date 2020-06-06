scoreboard objectives add _Ev3 dummy

scoreboard players set @a _Ev3 0
scoreboard players set *sum _Ev3 0

scoreboard players set @a[x=101.5,y=63,z=98.5,distance=..10] _Ev3 1
scoreboard players operation *sum _Ev3 += @a _Ev3

execute if score *sum _Ev3 matches 0 run schedule function game:scene02/job/ev03 1s

execute if score *sum _Ev3 matches 1.. run function game:scene02/ev03
execute if score *sum _Ev3 matches 1.. run scoreboard objectives remove _Ev3