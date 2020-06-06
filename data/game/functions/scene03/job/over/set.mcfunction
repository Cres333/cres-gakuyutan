scoreboard players add *light Grobal 1
execute if score *light Grobal matches 8.. run scoreboard players set *light Grobal 0

# 蝋燭初期配置
execute if score *light Grobal matches 1 positioned -78 67 -13 if block ~ ~ ~ minecraft:barrel{Items:[]} run replaceitem block ~ ~ ~ container.10 minecraft:blue_banner
execute if score *light Grobal matches 2 positioned -93 67 -35 if block ~ ~ ~ minecraft:barrel{Items:[]} run replaceitem block ~ ~ ~ container.11 minecraft:blue_banner
execute if score *light Grobal matches 3 positioned -97 67 -48 if block ~ ~ ~ minecraft:barrel{Items:[]} run replaceitem block ~ ~ ~ container.12 minecraft:blue_banner
execute if score *light Grobal matches 4 positioned -43 67 -4 if block ~ ~ ~ minecraft:barrel{Items:[]} run replaceitem block ~ ~ ~ container.13 minecraft:blue_banner
execute if score *light Grobal matches 5 positioned -55 67 -13 if block ~ ~ ~ minecraft:barrel{Items:[]} run replaceitem block ~ ~ ~ container.14 minecraft:blue_banner
execute if score *light Grobal matches 6 positioned -61 67 -40 if block ~ ~ ~ minecraft:barrel{Items:[]} run replaceitem block ~ ~ ~ container.15 minecraft:blue_banner
execute if score *light Grobal matches 7 positioned -87 80 -9 if block ~ ~ ~ minecraft:barrel{Items:[]} run replaceitem block ~ ~ ~ container.15 minecraft:blue_banner

# マッチ初期配置
execute if score *light Grobal matches 1..2 positioned -64 67 -29 if block ~ ~ ~ minecraft:barrel{Items:[]} run replaceitem block ~ ~ ~ container.16 minecraft:yellow_banner
execute if score *light Grobal matches 3..4 positioned -43 67 -1 if block ~ ~ ~ minecraft:barrel{Items:[]} run replaceitem block ~ ~ ~ container.17 minecraft:yellow_banner
execute if score *light Grobal matches 5..7 positioned -99 67 -6 if block ~ ~ ~ minecraft:barrel{Items:[]} run replaceitem block ~ ~ ~ container.18 minecraft:yellow_banner
