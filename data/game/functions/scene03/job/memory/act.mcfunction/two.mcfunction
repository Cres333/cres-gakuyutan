tp @p[scores={Memory=2}] -39.3 66 -106.665 -26 46

execute if score end _Mem2 matches 0 run schedule function game:scene03/job/memory/act/two 1t
execute if score end _Mem2 matches 1 run scoreboard objectives remove _Mem2
