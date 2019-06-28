scoreboard players set @a Light 0
scoreboard players set sum Light 0

# 盲目対象検知
execute as @a at @s if entity @s[nbt={Inventory:[{id:"minecraft:diamond_hoe"}]}] run scoreboard players set @s Light 1
execute as @p[scores={Light=1}] at @s if entity @p[scores={Light=0},distance=..3] run scoreboard players set @a Light 1
scoreboard players operation sum Light += @a Light

# 蝋燭ゲージ調整
execute if score sum Light matches 1.. unless score value Light matches ..0 run scoreboard players remove value Light 1
execute store result bossbar light value run scoreboard players get value Light

# 蝋燭ゲージ0ならアイテム交換
execute if score sum Light matches 1.. if score value Light matches 0 run clear @a minecraft:diamond_hoe
execute if score sum Light matches 1.. if score value Light matches 0 run give @p[scores={Light=1}] minecraft:stone_hoe 1

# 蝋燭ゲージ回復
execute as @a at @s if score @s Candle matches 1.. run scoreboard players set value Light 18000
execute as @a at @s if score @s Candle matches 1.. run scoreboard players set @s Candle 0

# 盲目
effect give @a[scores={Light=0}] minecraft:blindness 1000 0 true
effect clear @a[scores={Light=1}] minecraft:blindness
