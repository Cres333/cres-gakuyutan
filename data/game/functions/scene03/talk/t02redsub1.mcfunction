scoreboard players set exec2 Any 1
scoreboard players reset click2 Any
scoreboard objectives add RTalk dummy "会話"
scoreboard players add n RTalk 1
execute if score n RTalk matches 1 run setblock -79 81 -1 minecraft:barrier
execute if score n RTalk matches 1 run setblock -79 81 -12 minecraft:barrier

execute if score n RTalk matches 1 run scoreboard players set max RTalk 5

execute if score n RTalk matches 1 run tellraw @p[team=red] "さあ？知らないわ"
execute if score n RTalk matches 2 run tellraw @p[team=red] "私がここにいるよりも前から居たみたいだけど"
execute if score n RTalk matches 3 run tellraw @p[team=red] "いかにも本が好きですって感じの子よね"
execute if score n RTalk matches 4 run tellraw @p[team=red] "ずっと一人でいる暗い感じの子よ"
execute if score n RTalk matches 5 run tellraw @p[team=red] "まあ、私も自分の名前を忘れてしまったから同じみたいだけどね"

execute unless score n RTalk = max RTalk run schedule function game:scene03/talk/t02redsub1 5s

execute if score n RTalk = max RTalk run setblock -79 81 -1 minecraft:air
execute if score n RTalk = max RTalk run setblock -79 81 -12 minecraft:air
execute if score n RTalk = max RTalk run scoreboard players set exec2 Any 0
execute if score n RTalk = max RTalk run scoreboard objectives remove RTalk