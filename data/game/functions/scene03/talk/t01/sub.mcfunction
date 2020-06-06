scoreboard players set *exec Grobal 1
scoreboard objectives add Talk dummy "会話"
scoreboard players add n Talk 1
execute if score n Talk matches 1 run fill -58 67 8 -58 69 11 minecraft:barrier
execute if score n Talk matches 1 run fill -58 67 -5 -58 69 -2 minecraft:barrier

execute if score n Talk matches 1 run tellraw @a "[？？？]---"
execute if score n Talk matches 1 run scoreboard players set max Talk 2

scoreboard players set hand Any 1
execute if score n Talk matches 1 run tellraw @p[team=blue] "持ってきてくれましたか？"
execute if score n Talk matches 2 run tellraw @p[team=blue] ["",{"text":"[もう一度話を聞きたい]","color":"dark_red","clickEvent":{"action":"run_command","value":"/execute if score *exec Grobal matches 0 if score state TalkState matches 1 if score hand Any matches 1 run function game:scene03/talk/t01/re"}},{"text":" "},{"text":"[手に持っているアイテムを渡す]","color":"blue","clickEvent":{"action":"run_command","value":"/execute if score *exec Grobal matches 0 if score state TalkState matches 1 if score hand Any matches 1 run function game:scene03/talk/item/switcher"}}]

execute if score n Talk matches 1 run tellraw @p[team=red] "＃＃ＳＧ＃＃＃＃Ｐ＃"

execute unless score n Talk >= max Talk run schedule function game:scene03/talk/t01/sub 5s

execute if score n Talk >= max Talk run fill -58 67 8 -58 69 11 minecraft:air
execute if score n Talk >= max Talk run fill -58 67 -5 -58 69 -2 minecraft:air
execute if score n Talk >= max Talk run scoreboard players set *exec Grobal 0
execute if score n Talk >= max Talk run scoreboard objectives remove Talk
