# 第二章のタイトル
scoreboard objectives add Title dummy
scoreboard players add time Title 1

execute if score time Title matches 1 run gamemode spectator @a
execute if score time Title matches 1 run title @a times 60 200 60
execute if score time Title matches 1 run title @a subtitle "學 校"
execute if score time Title matches 1 run title @a title "第弐幕"

tp @p[team=red] 91 63 101.0 270 0
tp @p[team=blue] 91 64 101.0 270 0

execute if score time Title matches 60 as @a at @s run playsound minecraft:entity.elder_guardian.death master @s ~ ~ ~ 3 0.1

execute unless score time Title matches 320 run schedule function game:scene02/job/title 1t

execute if score time Title matches 320 run gamemode adventure @a
execute if score time Title matches 320 run function game:scene02/destroy
execute if score time Title matches 320 run scoreboard objectives remove Title
