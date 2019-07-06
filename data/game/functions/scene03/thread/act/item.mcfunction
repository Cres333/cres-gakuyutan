scoreboard objectives add _Item dummy "手持ち"
scoreboard players set hand _Item 0

scoreboard players set @p[scores={Sight=40}] Sight -10

# 演出アイテムを持っている
execute as @p[scores={Sight=-10},nbt={SelectedItem:{id:"minecraft:green_dye"}}] run scoreboard players set hand _Item 1
execute as @p[scores={Sight=-10},nbt={SelectedItem:{id:"minecraft:gray_dye"}}] run scoreboard players set hand _Item 2
execute as @p[scores={Sight=-10},nbt={SelectedItem:{id:"minecraft:white_dye"}}] run scoreboard players set hand _Item 3
execute as @p[scores={Sight=-10},nbt={SelectedItem:{id:"minecraft:black_dye"}}] run scoreboard players set hand _Item 4

# 何も持っていない
execute as @p[scores={Sight=-10}] if score hand _Item matches 0 run scoreboard players set @s Sight 30
execute as @a if score @s Sight matches 30 run function game:scene03/thread/act/find

# 記憶演出
execute if score hand _item matches 1.. run function game:scene03/thread/act/memory

scoreboard objectives remove _Item
