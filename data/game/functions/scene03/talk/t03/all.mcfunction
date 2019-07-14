scoreboard players set *exec Grobal 1
scoreboard objectives add Talk dummy "会話"
scoreboard players add n Talk 1
execute if score n Talk matches 1 run fill -58 67 8 -58 69 11 minecraft:barrier
execute if score n Talk matches 1 run fill -58 67 -5 -58 69 -2 minecraft:barrier

execute if score n Talk matches 1 run tellraw @a "[？？？]---"
execute if score n Talk matches 1 run scoreboard players set max Talk 2

scoreboard players set all Any 1
execute if score n Talk matches 1 run tellraw @p[team=blue] "どうしますか？"
execute if score n Talk matches 2 run tellraw @p[team=blue] ["",{"text":"[もう十分な記憶を見た]","color":"dark_red","clickEvent":{"action":"run_command","value":"/execute if score *exec Grobal matches 0 if score all Any matches 1 if score state TalkState matches 6 run function game:scene03/talk/t03/end"}},{"text":" "},{"text":"[もう一人の幽霊について聞く]","color":"blue","clickEvent":{"action":"run_command","value":"/execute if score *exec Grobal matches 0 if score all Any matches 1 if score state TalkState matches 6 run function game:scene03/talk/t03/rei"}}]

execute if score n Talk matches 1 run tellraw @p[team=red] "＃Ｆ＃＃＃＃＃＃＃Ａ＃"

execute unless score n Talk = max Talk run schedule function game:scene03/talk/t03/all 5s

execute if score n Talk = max Talk run fill -58 67 8 -58 69 11 minecraft:air
execute if score n Talk = max Talk run fill -58 67 -5 -58 69 -2 minecraft:air
execute if score n Talk = max Talk run scoreboard players set *exec Grobal 0
execute if score n Talk = max Talk run scoreboard objectives remove Talk
