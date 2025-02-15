scoreboard players set @a Light 0

# 盲目対象検知
execute as @a store success score @s Light if entity @s[nbt={Inventory:[{id:"minecraft:orange_banner"}]}]

# 蝋燭ゲージ回復
execute as @a if score @s Candle matches 1.. run function game:scene03/thread/param/heal

# 蝋燭ゲージ0ならアイテム交換
execute as @a at @s if score @s Light matches 1 if score *value Light matches 0 run function game:scene03/thread/param/zero

# 蝋燭ゲージ調整
execute as @a if score @s Light matches 1 unless score *value Light matches ..0 run scoreboard players remove *value Light 1
execute store result bossbar light value run scoreboard players get *value Light

# 蝋燭持っていない人も近くにいれば盲目にならない
execute unless score state TalkState matches 3..4 as @a if score @s Light matches 1 at @s if score *with Grobal matches 1 run scoreboard players set @a Light 1
execute if score state TalkState matches 3..4 as @p[team=red,scores={Light=1}] at @s positioned ~ ~-13 ~ if entity @p[scores={Light=0},distance=..4] run scoreboard players set @a Light 1
execute if score state TalkState matches 3..4 as @p[team=blue,scores={Light=1}] at @s positioned ~ ~13 ~ if entity @p[scores={Light=0},distance=..4] run scoreboard players set @a Light 1

# 盲目
execute if score *red Light matches 1 as @p[team=red] if score @s Light matches 0 run function game:scene03/thread/param/on/red
execute if score *red Light matches 0 as @p[team=red] if score @s Light matches 1 run function game:scene03/thread/param/off/red
execute if score *blue Light matches 1 as @p[team=blue] if score @s Light matches 0 run function game:scene03/thread/param/on/blue
execute if score *blue Light matches 0 as @p[team=blue] if score @s Light matches 1 run function game:scene03/thread/param/off/blue
