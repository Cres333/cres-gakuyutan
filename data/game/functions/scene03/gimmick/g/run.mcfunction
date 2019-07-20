execute as @e[tag=Ga] at @s facing entity @p feet run tp @s ^ ^ ^0.1 ~ ~
execute as @e[tag=Gb] at @s facing entity @p feet run tp @s ^0.1 ^ ^0.2 ~ ~
execute as @e[tag=Gc] at @s facing entity @p feet run tp @s ^-0.1 ^ ^0.15 ~ ~
execute as @a at @s run tp @e[tag=Ga,distance=..0.3] ^2 ^ ^3
execute as @a at @s run tp @e[tag=Gb,distance=..0.3] ^-2 ^ ^3
execute as @a at @s run tp @e[tag=Gc,distance=..0.3] ^ ^ ^3
execute as @e[tag=G] at @s if entity @p[distance=2..] run tp @s ~ 65.1 ~

execute if score *g Gimmick matches 1 run schedule function game:scene03/gimmick/g/run 1t
