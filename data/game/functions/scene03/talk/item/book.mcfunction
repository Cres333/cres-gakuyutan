scoreboard objectives add _Item dummy "手持ち"
scoreboard players set hand _Item 0

# 距離が遠い
execute as @p[nbt={Inventory:[{id:"minecraft:written_book",tag:{title:"日記"}}]}] if entity @s[x=-63,y=67,z=3,distance=6..] run scoreboard players set hand _Item 10

execute as @p[nbt={Inventory:[{id:"minecraft:written_book",tag:{title:"日記"}}]}] if score hand _Item matches 0 run function game:scene03/talk/t03
execute as @p[nbt={Inventory:[{id:"minecraft:written_book",tag:{title:"日記"}}]}] if score hand _Item matches 10 run tellraw @s "[!] 遠くてアイテムを渡せない"

scoreboard objectives remove _Item
