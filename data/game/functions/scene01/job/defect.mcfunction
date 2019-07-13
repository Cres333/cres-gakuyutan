# 二人がバス停に揃うの検知
scoreboard objectives add Defect dummy "バス停検知"

scoreboard players set @a Defect 0
scoreboard players set *sum Defect 0

scoreboard players set @a[x=-8,y=63,z=-40,distance=..2] Defect 1
scoreboard players operation *sum Defect += @a Defect

execute unless score *sum Defect matches 2 run schedule function game:scene01/job/defect 1s

execute if score *sum Defect matches 2 run function game:scene01/buss
execute if score *sum Defect matches 2 run scoreboard objectives remove Defect
