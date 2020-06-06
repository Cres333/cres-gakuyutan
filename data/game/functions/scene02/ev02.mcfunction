data modify entity @e[limit=1,type=minecraft:item_frame,x=74.5,y=63,z=32.5,distance=..1] Item set value {id:""}
setblock 74 66 32 minecraft:air
execute positioned 74 63 32 as @a run playsound minecraft:item.chorus_fruit.teleport master @s ~ ~ ~ 1 0.1
