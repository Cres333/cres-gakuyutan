# 最初の部屋のバリアブロック復活
fill -52 67 -2 -52 69 -5 minecraft:barrier

# 廊下の壁復活
fill -57 67 -7 -57 71 -9 minecraft:cobblestone

# 魔法陣老朽化
data modify entity @e[limit=1,type=minecraft:item_frame,x=-95,y=67,z=-14,distance=..3] Item set value {id:"minecraft:bow",Count:1b,tag:{CustomModelData:17}}
