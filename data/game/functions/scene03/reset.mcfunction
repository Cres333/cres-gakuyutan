# 最初の部屋のバリアブロック復活
fill -52 67 -2 -52 69 -5 minecraft:barrier

# 廊下の壁復活
fill -57 67 -7 -57 71 -9 minecraft:cobblestone

# 魔法陣老朽化
data modify entity @e[limit=1,type=minecraft:item_frame,x=-95,y=67,z=-14,distance=..3] Item set *value {id:"minecraft:bow",Count:1b,tag:{CustomModelData:17}}
data modify entity @e[limit=1,type=minecraft:item_frame,x=-57,y=67,z=-22,distance=..3] Item set *value {id:"minecraft:bow",Count:1b,tag:{CustomModelData:17}}

# ダンボールアイテム
execute positioned -49 67 -48 if block ~ ~ ~ minecraft:barrel{Items:[]} run replaceitem block ~ ~ ~ container.1 minecraft:pink_dye
execute positioned -57 67 -13 if block ~ ~ ~ minecraft:barrel{Items:[]} run replaceitem block ~ ~ ~ container.3 minecraft:pink_dye
execute positioned -65 67 10 if block ~ ~ ~ minecraft:barrel{Items:[]} run replaceitem block ~ ~ ~ container.5 minecraft:green_dye
execute positioned -97 67 0 if block ~ ~ ~ minecraft:barrel{Items:[]} run replaceitem block ~ ~ ~ container.7 minecraft:gray_dye
execute positioned -82 67 -31 if block ~ ~ ~ minecraft:barrel{Items:[]} run replaceitem block ~ ~ ~ container.8 minecraft:white_dye
execute positioned -76 67 -8 if block ~ ~ ~ minecraft:barrel{Items:[]} run replaceitem block ~ ~ ~ container.9 minecraft:black_dye

# 蝋燭初期配置
execute positioned -78 67 -13 if block ~ ~ ~ minecraft:barrel{Items:[]} run replaceitem block ~ ~ ~ container.10 minecraft:blue_dye
execute positioned -93 67 -35 if block ~ ~ ~ minecraft:barrel{Items:[]} run replaceitem block ~ ~ ~ container.11 minecraft:blue_dye
execute positioned -97 67 -48 if block ~ ~ ~ minecraft:barrel{Items:[]} run replaceitem block ~ ~ ~ container.12 minecraft:blue_dye
execute positioned -43 67 -4 if block ~ ~ ~ minecraft:barrel{Items:[]} run replaceitem block ~ ~ ~ container.13 minecraft:blue_dye
execute positioned -43 67 -4 run replaceitem block ~ ~ ~ container.20 minecraft:blue_dye
execute positioned -55 67 -13 if block ~ ~ ~ minecraft:barrel{Items:[]} run replaceitem block ~ ~ ~ container.14 minecraft:blue_dye
execute positioned -61 67 -40 if block ~ ~ ~ minecraft:barrel{Items:[]} run replaceitem block ~ ~ ~ container.15 minecraft:blue_dye

# マッチ初期配置
execute positioned -64 67 -29 if block ~ ~ ~ minecraft:barrel{Items:[]} run replaceitem block ~ ~ ~ container.16 minecraft:yellow_dye
execute positioned -43 67 -1 if block ~ ~ ~ minecraft:barrel{Items:[]} run replaceitem block ~ ~ ~ container.17 minecraft:yellow_dye
execute positioned -99 67 -6 if block ~ ~ ~ minecraft:barrel{Items:[]} run replaceitem block ~ ~ ~ container.18 minecraft:yellow_dye
execute positioned -93 67 -34 if block ~ ~ ~ minecraft:barrel{Items:[]} run replaceitem block ~ ~ ~ container.19 minecraft:yellow_dye

# 燭台初期配置
execute positioned -43 67 -3 if block ~ ~ ~ minecraft:barrel{Items:[]} run replaceitem block ~ ~ ~ container.20 minecraft:red_dye
