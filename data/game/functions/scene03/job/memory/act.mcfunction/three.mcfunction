tp @p[scores={Memory=3}] -81 66 -105 -19 48

execute if score end _Mem3 matches 0 run schedule function game:scene03/job/memory/act/three 1t
execute if score end _Mem3 matches 1 run scoreboard objectives remove _Mem3