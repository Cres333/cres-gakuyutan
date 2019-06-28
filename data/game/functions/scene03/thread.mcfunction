scoreboard players set @a Light 0
scoreboard players set sum Light 0

# 盲目対象検知
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:orange_dye"}]}] run scoreboard players set @s Light 1
scoreboard players operation sum Light += @a Light

# 蝋燭ゲージ0ならアイテム交換
execute if score sum Light matches 1.. if score value Light matches 0 run clear @a minecraft:orange_dye
execute if score sum Light matches 1.. if score value Light matches 0 run give @p[scores={Light=1}] minecraft:red_dye 1

# 蝋燭ゲージ調整
execute if score sum Light matches 1.. unless score value Light matches ..0 run scoreboard players remove value Light 1
execute store result bossbar light value run scoreboard players get value Light

# 蝋燭ゲージ回復
execute as @a at @s if score @s Candle matches 1.. run scoreboard players set value Light 18000
execute as @a at @s if score @s Candle matches 1.. run scoreboard players set @s Candle 0

# 蝋燭持っていない人も近くにいれば盲目にならない
scoreboard players set sum Light 0
execute as @p[scores={Light=1}] at @s if entity @p[scores={Light=0},distance=..4] run scoreboard players set @a Light 1
scoreboard players operation sum Light += @a Light

# 盲目
effect give @a[scores={Light=0}] minecraft:blindness 1000 0 true
effect give @a[scores={Light=0}] minecraft:slowness 10000 3 true
effect clear @a[scores={Light=1}] minecraft:blindness
effect clear @a[scores={Light=1}] minecraft:slowness
effect give @a[scores={Light=1}] minecraft:slowness 10000 2 true
