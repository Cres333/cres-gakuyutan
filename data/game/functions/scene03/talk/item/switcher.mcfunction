scoreboard objectives add _Item dummy "手持ち"
scoreboard players set hand _Item 0

# 所持していない
scoreboard players set any Any 0
execute as @p[team=blue] store success score any Any run data get entity @s SelectedItem
execute if score any Any matches 0 run scoreboard players set hand _Item 1
scoreboard players reset any Any

# チョークを持っている
execute as @p[team=blue] if entity @s[nbt={SelectedItem:{id:"minecraft:pink_banner"}}] run scoreboard players set hand _Item 2

# はずれアイテムを持っている
execute as @p[team=blue] if entity @s[nbt={SelectedItem:{id:"minecraft:green_banner"}}] run scoreboard players set hand _Item 3
execute as @p[team=blue] if entity @s[nbt={SelectedItem:{id:"minecraft:gray_banner"}}] run scoreboard players set hand _Item 3
execute as @p[team=blue] if entity @s[nbt={SelectedItem:{id:"minecraft:white_banner"}}] run scoreboard players set hand _Item 3
execute as @p[team=blue] if entity @s[nbt={SelectedItem:{id:"minecraft:black_banner"}}] run scoreboard players set hand _Item 3

# 距離が遠い
execute as @p[team=blue] if entity @s[x=-63,y=67,z=3,distance=6..] run scoreboard players set hand _Item 10

execute as @p[team=blue] if score hand _Item matches 0 run tellraw @s "[!] 今、手に持っているアイテムは渡せない"
execute as @p[team=blue] if score hand _Item matches 1 run tellraw @s "[!] 渡すアイテムを手に持っていない"
execute as @p[team=blue] if score hand _Item matches 2 run function game:scene03/talk/item/ok
execute as @p[team=blue] if score hand _Item matches 3 run function game:scene03/talk/item/ng
execute as @p[team=blue] if score hand _Item matches 10 run tellraw @s "[!] 遠くてアイテムを渡せない"

scoreboard players set hand Any 0
scoreboard objectives remove _Item
