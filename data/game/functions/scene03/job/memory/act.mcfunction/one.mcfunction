tp @p[scores={Memory=1}] -57.2 66 -103.1 -80 36

execute if score end _Mem1 matches 0 run schedule function game:scene03/job/memory/act/one 1t
execute if score end _Mem1 matches 1 run scoreboard objectives remove _Mem1
