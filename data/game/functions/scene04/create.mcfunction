tp @p[team=red] -60 65 39 90 0
tp @p[team=blue] -60 65 35 90 0
effect clear @a
effect give @a minecraft:slowness 1000000 2 true
effect give @a minecraft:jump_boost 1000000 129 true
scoreboard objectives add _Freeze dummy "停止"
scoreboard players set *stop _Freeze 0

scoreboard players set *scene Grobal 4
schedule function game:scene04/tp 5s
