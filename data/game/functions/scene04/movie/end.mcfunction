scoreboard objectives remove _Movie
kill @e[tag=movie]
tp @p[team=red] -60 65 39 90 0
tp @p[team=blue] -60 65 35 90 0
clear @a
effect clear @a
weather clear
time set 6000
schedule function game:scene05/message 5s
