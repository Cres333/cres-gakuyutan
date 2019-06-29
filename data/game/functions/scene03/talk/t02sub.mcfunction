scoreboard players set exec Any 1
scoreboard objectives add Talk dummy "会話"
scoreboard players add n Talk 1
execute if score n Talk matches 1 run fill -58 67 8 -58 69 11 minecraft:barrier
execute if score n Talk matches 1 run fill -58 67 -5 -58 69 -2 minecraft:barrier

execute if score n Talk matches 1 run tellraw @a "[幽霊]---"
execute if score n Talk matches 1 run scoreboard players set max Talk 2

scoreboard players set hand Any 1
execute if score n Talk matches 1 run tellraw @p[team=blue] "何か聞きたいことはある？"
execute if score n Talk matches 2 run tellraw @p[team=blue] ["",{"text":"[もう一度話を聞きたい]","color":"dark_red","clickEvent":{"action":"run_command","value":"/execute if score hand Any matches 1 run function game:scene03/talk/t02re"}},{"text":" "},{"text":"[能面の化物について聞く]","color":"blue","clickEvent":{"action":"run_command","value":"/execute if score hand Any matches 1 run function game:scene03/talk/t02kuro"}}]

execute if score n Talk matches 1 run tellraw @p[team=red] "＃Ｆ＃＃＃＃＃＃＃Ａ＃"

execute unless score n Talk = max Talk run schedule function game:scene03/talk/t02sub 5s

execute if score n Talk = max Talk run fill -58 67 8 -58 69 11 minecraft:air
execute if score n Talk = max Talk run fill -58 67 -5 -58 69 -2 minecraft:air
execute if score n Talk = max Talk run scoreboard players set exec Any 0
execute if score n Talk = max Talk run scoreboard objectives remove Talk
