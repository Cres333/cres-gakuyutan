tp @a 26 64 91 -90 -4
clear @a
weather clear
effect give @a minecraft:saturation 1000000 100 true
scoreboard players set *scene Grobal 5
scoreboard objectives add _Image dummy "画像"
scoreboard players set *end _Image 0

function game:scene05/image
execute as @a at @s run playsound minecraft:last master @s ~ ~ ~ 3 1
execute as @a at @s run playsound minecraft:entity.lightning.thunder master @s ~ ~ ~ 1 1

schedule function game:scene05/image_end 2s
schedule function game:scene05/message 7s
