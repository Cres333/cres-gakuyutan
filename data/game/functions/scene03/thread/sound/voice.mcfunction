execute as @e[tag=kuro] at @s run playsound minecraft:entity.blaze.ambient master @a ~ ~ ~ 0.3 0.1
execute if score state TalkState matches 1..6 run schedule function game:scene03/thread/sound/voice 8s
