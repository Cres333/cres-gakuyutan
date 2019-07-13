execute if score *wait _Movie matches 1 run scoreboard players set *wait _Movie -1
execute if score *wait _Movie matches 0 run scoreboard players set *wait _Movie 1

execute if score *wait _Movie matches 1 unless score *wool _Turn matches 5..6 run schedule function game:scene04/movie/wait 2s
execute if score *wait _Movie matches 1 if score *wool _Turn matches 5..6 run schedule function game:scene04/movie/wait 10t

execute if score *wait _Movie matches -1 run function game:scene04/movie/turn_after
execute if score *wait _Movie matches -1 run scoreboard players set *wait _Movie 0
