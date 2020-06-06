scoreboard players set *find Sight 0
execute as @a if score @s Sight matches 20 run scoreboard players set *find Sight 1
execute as @p[scores={Sight=30}] at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 0.2 1
execute if score state TalkState matches ..5 as @p[scores={Sight=30}] run scoreboard players add pos KuroAct 1
execute as @p[team=red,scores={Sight=30}] run function game:scene03/job/over/red
execute as @p[team=blue,scores={Sight=30}] run function game:scene03/job/over/blue
