scoreboard players set *exec2 Grobal 1
scoreboard players set click2 Any 0
scoreboard objectives add RTalk dummy "会話"
scoreboard players add n RTalk 1
execute if score n RTalk matches 1 run setblock -79 81 -1 minecraft:barrier
execute if score n RTalk matches 1 run setblock -79 81 -12 minecraft:barrier

execute if score n RTalk matches 1 run scoreboard players set max RTalk 6

execute if score n RTalk matches 1 run tellraw @p[team=red] "出る必要なんてないじゃない"
execute if score n RTalk matches 2 run tellraw @p[team=red] "まあ、黒霧様にお願いすれば叶えてくれるかもね"
execute if score n RTalk matches 3 run tellraw @p[team=red] "ただ、ここから出たいなんてお願いなんてしたら、"
execute if score n RTalk matches 4 run tellraw @p[team=red] "それこそ命を失って外に出ることになるでしょうけどね"
execute if score n RTalk matches 5 run tellraw @p[team=red] "あとは、この世界を壊したら出られるかもね"
execute if score n RTalk matches 6 run tellraw @p[team=red] "誰が作ったかもわからない、この世界をね"

execute unless score n RTalk >= max RTalk run schedule function game:scene03/talk/t02/redsub2 5s

execute if score n RTalk >= max RTalk run setblock -79 81 -1 minecraft:air
execute if score n RTalk >= max RTalk run setblock -79 81 -12 minecraft:air
execute if score n RTalk >= max RTalk run scoreboard players set *exec2 Grobal 0
execute if score n Talk >= max Talk run schedule function game:scene03/talk/separate_red 1s
execute if score n RTalk >= max RTalk run scoreboard objectives remove RTalk