scoreboard players set *exec Grobal 0
scoreboard objectives add _Movie dummy "エンディング向け"
scoreboard players set *state _Movie 1
scoreboard players set *wait _Movie 0
scoreboard players set *stop _Freeze 0
effect give @a minecraft:invisibility 100000 0 true
effect give @a minecraft:levitation 100000 255 true
bossbar remove light
summon minecraft:armor_stand -40.00 64 76.50 {Rotation:[-90F,0F],Tags:["movie"],Marker:1b,Invisible:1b}
execute as @e[tag=movie] at @s anchored feet run tp @a ~ ~ ~ ~ ~
function game:scene04/movie/job
