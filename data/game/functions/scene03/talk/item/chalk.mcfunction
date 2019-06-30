scoreboard objectives add _Item dummy "手持ち"
scoreboard players set hand _Item 0

# 距離が遠い
execute as @p[nbt={Inventory:[{id:"minecraft:pink_dye"}]}] if entity @s[x=-95,y=67,z=-14,distance=5..] run scoreboard players set hand _Item 10

execute as @p[nbt={Inventory:[{id:"minecraft:pink_dye"}]}] if score hand _Item matches 0 run function game:scene03/magic
execute as @p[nbt={Inventory:[{id:"minecraft:pink_dye"}]}] if score hand _Item matches 10 run tellraw @s "[!] 遠くてアイテムを使えない"

scoreboard objectives remove _Item
