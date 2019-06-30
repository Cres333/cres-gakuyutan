clear @a minecraft:pink_dye
scoreboard players set state TalkState 3
tp @a[team=red] -95 80 -14 0 0
data modify entity @e[limit=1,type=minecraft:item_frame,x=-95,y=67,z=-14,distance=..3] Item set value {id:"minecraft:bow",Count:1b,tag:{CustomModelData:18}}
function game:scene03/job/soul
