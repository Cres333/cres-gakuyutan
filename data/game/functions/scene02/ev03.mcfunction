data modify entity @e[limit=1,type=minecraft:item_frame,x=101.5,y=63,z=98.5,distance=..1] Item set value {id:""}
setblock 101 66 98 minecraft:air
execute positioned 101 63 98 as @a run playsound minecraft:item.chorus_fruit.teleport master @s ~ ~ ~ 1 0.1