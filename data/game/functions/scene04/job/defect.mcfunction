scoreboard objectives add _Ev1 dummy

scoreboard players set @a _Ev1 0
scoreboard players set *sum _Ev1 0

scoreboard players set @a[x=-41,y=64,z=76,distance=..3] _Ev1 1
scoreboard players operation *sum _Ev1 += @a _Ev1

execute if score *sum _Ev1 matches 0 run schedule function game:scene04/job/ev01 1s

execute if score *sum _Ev1 matches 1.. run function game:scene04/q
execute if score *sum _Ev1 matches 1.. run scoreboard players set *stop _Freeze 1
execute if score *sum _Ev1 matches 1.. run function game:scene04/job/freeze
execute if score *sum _Ev1 matches 1.. run scoreboard objectives remove _Ev1
