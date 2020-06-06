# 誰かが猫に近づくの検知
scoreboard objectives add CatDefect dummy "猫接近検知"

scoreboard players set @a CatDefect 0
scoreboard players set *sum CatDefect 0

scoreboard players set @a[x=50,y=63,z=-114,distance=..3] CatDefect 1
scoreboard players operation *sum CatDefect += @a CatDefect

execute if score *sum CatDefect matches 0 run schedule function game:scene02/job/cat 1s

execute unless score *sum CatDefect matches 0 run execute as @a at @s run data merge entity @e[limit=1,tag=cat] {Sitting:0}
execute unless score *sum CatDefect matches 0 run scoreboard objectives remove CatDefect
