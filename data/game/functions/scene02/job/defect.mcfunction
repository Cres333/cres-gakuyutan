# どちらかが学校に揃うの検知
scoreboard objectives add Defect dummy "学校検知"

scoreboard players set @a Defect 0
scoreboard players set *sum Defect 0

scoreboard players set @a[x=104,y=63,z=101,distance=..3] Defect 1
scoreboard players operation *sum Defect += @a Defect

execute if score *sum Defect matches 0 run schedule function game:scene02/job/defect 1s

execute if score *sum Defect matches 1.. run function game:scene02/job/title
execute if score *sum Defect matches 1.. run scoreboard objectives remove Defect
