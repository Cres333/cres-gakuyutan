scoreboard objectives add _Item dummy "手持ち"
scoreboard players set *hand _Item 0

scoreboard players set @p[scores={Sight=40}] _Item 1

# 演出アイテムを持っている
execute as @a if score @s _Item matches 1 if entity @s[nbt={SelectedItem:{id:"minecraft:green_banner"}}] run scoreboard players set *hand _Item 1
execute as @a if score @s _Item matches 1 if entity @s[nbt={SelectedItem:{id:"minecraft:gray_banner"}}] run scoreboard players set *hand _Item 2
execute as @a if score @s _Item matches 1 if entity @s[nbt={SelectedItem:{id:"minecraft:white_banner"}}] run scoreboard players set *hand _Item 3
execute as @a if score @s _Item matches 1 if entity @s[nbt={SelectedItem:{id:"minecraft:black_banner"}}] run scoreboard players set *hand _Item 4

execute if score *hand _Item matches 1 run clear @a minecraft:green_banner
execute if score *hand _Item matches 2 run clear @a minecraft:gray_banner
execute if score *hand _Item matches 3 run clear @a minecraft:white_banner
execute if score *hand _Item matches 4 run clear @a minecraft:black_banner

# 何も持っていない
execute as @a if score @s _Item matches 1 if score *hand _Item matches 0 run scoreboard players set @s Sight 30
execute as @a if score @s _Item matches 1 if score *hand _Item matches 0 run function game:scene03/thread/act/find

# 記憶演出
execute as @a if score @s _Item matches 1 if score *hand _Item matches 1.. run function game:scene03/thread/act/memory

scoreboard objectives remove _Item
