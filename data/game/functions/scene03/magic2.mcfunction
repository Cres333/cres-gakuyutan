clear @a minecraft:pink_dye
scoreboard players set state TalkState 5
tp @a[team=red] -57 67 -22 0 0
data modify entity @e[limit=1,type=minecraft:item_frame,x=-57,y=67,z=-22,distance=..3] Item set *value {id:"minecraft:bow",Count:1b,tag:{CustomModelData:18}}
