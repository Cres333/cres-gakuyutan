clear @a minecraft:pink_banner
scoreboard players set state TalkState 3
tp @a[team=red] -95 80 -14 0 0
data modify entity @e[limit=1,type=minecraft:item_frame,x=-95,y=67,z=-14,distance=..3] Item set value {id:"minecraft:bow",Count:1b,tag:{CustomModelData:18}}
execute as @a at @s run playsound minecraft:entity.evoker.cast_spell master @s ~ ~ ~ 1 0.1
setblock -95 73 -14 minecraft:glowstone
function game:scene03/job/soul
