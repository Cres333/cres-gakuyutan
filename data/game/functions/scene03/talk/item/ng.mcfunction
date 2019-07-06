scoreboard players set exec Any 1
scoreboard objectives add Talk dummy "会話"
scoreboard players add n Talk 1
execute if score n Talk matches 1 run fill -58 67 8 -58 69 11 minecraft:barrier
execute if score n Talk matches 1 run fill -58 67 -5 -58 69 -2 minecraft:barrier

# はずれアイテム没収
execute if score n Talk matches 1 run replaceitem entity @p[team=blue] weapon.mainhand minecraft:air

execute if score n Talk matches 1 run scoreboard players set max Talk 2

execute if score n Talk matches 1 run tellraw @p[team=blue] "違うものを持ってきたみたいです"
execute if score n Talk matches 2 run tellraw @p[team=blue] "もう一度探して来てくれますか？"

execute if score n Talk matches 1 run tellraw @p[team=red] "Ｑ＃＃＃＃＃＃＃＃＃ｆＰ＃＃"
execute if score n Talk matches 2 run tellraw @p[team=red] "＃＃＃Ｉ＃＃Ｊ＃＃＃＃＃＃Ｈ＃"

execute unless score n Talk = max Talk run schedule function game:scene03/talk/item/ng 5s

execute if score n Talk = max Talk run fill -58 67 8 -58 69 11 minecraft:air
execute if score n Talk = max Talk run fill -58 67 -5 -58 69 -2 minecraft:air
execute if score n Talk = max Talk run scoreboard players set exec Any 0
execute if score n Talk = max Talk run tellraw @p[team=blue] "[!] あなたは持っていた物を捨てた"
execute if score n Talk = max Talk run scoreboard objectives remove Talk
