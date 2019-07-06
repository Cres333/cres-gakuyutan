tp @p[scores={Memory=4}] -94.5 66 -104.5 -26 46

execute if score end _Mem4 matches 0 run schedule function game:scene03/job/memory/act/four 1t
execute if score end _Mem4 matches 1 run scoreboard objectives remove _Mem4
