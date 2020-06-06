data modify entity @e[limit=1,type=minecraft:item_frame,x=48.5,y=63,z=-82,distance=..1] Item set value {id:""}
execute as @e[type=minecraft:cat] at @s run tp @s ~ ~-200 ~
execute positioned 48 63 -82 as @a run playsound minecraft:item.chorus_fruit.teleport master @s ~ ~ ~ 1 0.1
