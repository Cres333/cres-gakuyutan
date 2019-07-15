scoreboard players set *exec2 Grobal 1
scoreboard objectives add RTalk dummy "会話"
scoreboard players add n RTalk 1
execute if score n RTalk matches 1 run setblock -79 81 -1 minecraft:barrier
execute if score n RTalk matches 1 run setblock -79 81 -12 minecraft:barrier

execute if score n RTalk matches 1 run tellraw @p[team=red] "[？？？]---"
execute if score n RTalk matches 1 run scoreboard players set max RTalk 2

scoreboard players set click2 Any 1
execute if score n RTalk matches 1 run tellraw @p[team=red] "どうかした？"
execute if score n RTalk matches 2 run tellraw @p[team=red] ["",{"text":"[もう一人の幽霊について聞きたい]","color":"dark_red","clickEvent":{"action":"run_command","value":"/execute if score *exec2 Grobal matches 0 if score click2 Any matches 1 if score state TalkState matches 4 run function game:scene03/talk/t02/redsub1"}},{"text":" "},{"text":"[この世界から出る方法を聞きたい]","color":"blue","clickEvent":{"action":"run_command","value":"/execute if score *exec2 Grobal matches 0 if score state TalkState matches 4 if score click2 Any matches 1 run function game:scene03/talk/t02/redsub2"}}]

execute unless score n RTalk >= max RTalk run schedule function game:scene03/talk/t02/redsub 5s

execute if score n RTalk >= max RTalk run setblock -79 81 -1 minecraft:air
execute if score n RTalk >= max RTalk run setblock -79 81 -12 minecraft:air
execute if score n RTalk >= max RTalk run scoreboard players set *exec2 Grobal 0
execute if score n RTalk >= max RTalk run scoreboard objectives remove RTalk