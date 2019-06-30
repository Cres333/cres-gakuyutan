scoreboard players set exec Any 1
scoreboard objectives add Talk dummy "会話"
scoreboard players add n Talk 1
execute if score n Talk matches 1 run fill -58 67 8 -58 69 11 minecraft:barrier
execute if score n Talk matches 1 run fill -58 67 -5 -58 69 -2 minecraft:barrier

execute if score n Talk matches 1 run tellraw @a "[？？？]---"
execute if score n Talk matches 1 run scoreboard players set max Talk 2

scoreboard players set hand Any 1
execute if score n Talk matches 1 run tellraw @p[team=blue] "持ってきてくれた？"
execute if score n Talk matches 2 run tellraw @p[team=blue] ["",{"text":"[手に持っているアイテムを渡す]","color":"dark_red","clickEvent":{"action":"run_command","value":"/execute if score exec Any matches 0 if score state TalkState matches 5 run function game:scene03/talk/item/book"}},{"text":" "},{"text":"[能面の化物について聞く]","color":"blue","clickEvent":{"action":"run_command","value":"/execute if score exec Any matches 0 if score state TalkState matches 5 run function game:scene03/talk/t02kuro"}}]

execute if score n Talk matches 1 run tellraw @p[team=red] "＃＃ＳＧ＃＃＃＃Ｐ＃"

execute unless score n Talk = max Talk run schedule function game:scene03/talk/t02sub 5s

execute if score n Talk = max Talk run fill -58 67 8 -58 69 11 minecraft:air
execute if score n Talk = max Talk run fill -58 67 -5 -58 69 -2 minecraft:air
execute if score n Talk = max Talk run scoreboard players set exec Any 0
execute if score n Talk = max Talk run scoreboard objectives remove Talk