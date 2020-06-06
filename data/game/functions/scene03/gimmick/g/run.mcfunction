execute as @e[tag=Ga] at @s facing entity @p[team=red] feet run tp @s ^ ^ ^0.1 ~ ~
execute as @e[tag=Gb] at @s facing entity @p[team=red] feet run tp @s ^0.1 ^ ^0.2 ~ ~
execute as @e[tag=Gc] at @s facing entity @p[team=red] feet run tp @s ^-0.1 ^ ^0.15 ~ ~
execute as @e[tag=Gd] at @s facing entity @p[team=blue] feet run tp @s ^ ^ ^0.1 ~ ~
execute as @e[tag=Ge] at @s facing entity @p[team=blue] feet run tp @s ^0.1 ^ ^0.2 ~ ~
execute as @e[tag=Gf] at @s facing entity @p[team=blue] feet run tp @s ^-0.1 ^ ^0.15 ~ ~
execute as @p[team=red] at @s positioned ~ ~0.9 ~ run tp @e[tag=Ga,distance=..1] ^2 ^ ^6
execute as @p[team=red] at @s positioned ~ ~0.9 ~ run tp @e[tag=Gb,distance=..1] ^2 ^ ^6
execute as @p[team=red] at @s positioned ~ ~0.9 ~ run tp @e[tag=Gc,distance=..1] ^ ^ ^6
execute as @p[team=blue] at @s positioned ~ ~0.9 ~ run tp @e[tag=Gd,distance=..1] ^-2 ^ ^-6
execute as @p[team=blue] at @s positioned ~ ~0.9 ~ run tp @e[tag=Ge,distance=..1] ^-2 ^ ^6
execute as @p[team=blue] at @s positioned ~ ~0.9 ~ run tp @e[tag=Gf,distance=..1] ^ ^ ^6
execute as @e[tag=Ga] at @s if entity @p[team=red,distance=2..] run tp @s ~ 65.1 ~
execute as @e[tag=Gb] at @s if entity @p[team=red,distance=2..] run tp @s ~ 65.1 ~
execute as @e[tag=Gc] at @s if entity @p[team=red,distance=2..] run tp @s ~ 65.1 ~
execute as @e[tag=Gd] at @s if entity @p[team=blue,distance=2..] run tp @s ~ 65.1 ~
execute as @e[tag=Ge] at @s if entity @p[team=blue,distance=2..] run tp @s ~ 65.1 ~
execute as @e[tag=Gf] at @s if entity @p[team=blue,distance=2..] run tp @s ~ 65.1 ~
execute as @e[tag=G] at @s run playsound minecraft:block.grass.step master @p[distance=..2] ~ ~ ~ 1 1.8

execute if score *g Gimmick matches 1 run schedule function game:scene03/gimmick/g/run 1t
