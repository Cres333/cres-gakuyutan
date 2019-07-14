# 黒霧様
execute as @e[tag=kuro] at @s positioned ^ ^ ^-1.4 run particle minecraft:smoke ~ ~ ~ 0.5 1 0.5 0.02 50
execute as @e[tag=kuro] at @s positioned ^ ^ ^-1 run particle minecraft:squid_ink ~ ~0.5 ~ 0 1 0 0 1
execute as @e[tag=kuro] at @s positioned ^ ^ ^-1.2 run particle minecraft:enchant ~ ~-1 ~ 1 0 1 0.5 10

# 黒霧様の視界
execute if score state TalkState matches 0.. as @a[scores={Sight=1}] at @s if block ~ 75 ~ minecraft:air run scoreboard players set @s Sight 0
execute if score state TalkState matches 0..1 as @a[scores={Sight=0}] at @s if block ~ 75 ~ minecraft:white_terracotta run scoreboard players set @s Sight 1
execute if score state TalkState matches 2 as @a[scores={Sight=0}] at @s if block ~ 75 ~ minecraft:brown_terracotta run scoreboard players set @s Sight 1
execute if score state TalkState matches 3..4 as @a[team=blue,scores={Sight=0}] at @s if block ~ 75 ~ minecraft:brown_terracotta run scoreboard players set @s Sight 1
execute if score state TalkState matches 5 as @a[scores={Sight=0}] at @s if block ~ 75 ~ minecraft:brown_terracotta run scoreboard players set @s Sight 1
execute if score state TalkState matches 6.. as @a[scores={Sight=0}] at @s if block ~ 75 ~ minecraft:black_terracotta run scoreboard players set @s Sight 1
execute if score @p Sight matches 1 run function game:scene03/thread/act/sight

# 黒霧様の行動
execute if score *find Sight matches 0 run function game:scene03/thread/act/act
execute unless score *find Sight matches 0 as @e[tag=kuro] at @s facing entity @p[scores={Sight=20}] feet run tp @s ^ ^ ^0.35 ~ ~

# 黒神様の判定
execute as @e[tag=kuro] at @s positioned ^ ^ ^-1.0 run scoreboard players set @a[distance=..1] Sight 30
execute if score state TalkState matches 6.. unless score *find Sight matches 0 as @e[tag=kuro] at @s run scoreboard players set @a[distance=..2] Sight 40
execute as @a if score @s Sight matches 30 run function game:scene03/thread/act/find
execute as @a if score @s Sight matches 40 run function game:scene03/thread/act/item
