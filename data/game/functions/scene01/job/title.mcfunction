# 第一章のタイトル
scoreboard objectives add Title dummy
scoreboard players add time Title 1

execute if score time Title matches 1 run scoreboard objectives remove _Buss
execute if score time Title matches 1 run gamemode spectator @a
execute if score time Title matches 1 run title @a times 60 200 60
# 黒霧町
execute if score time Title matches 1 run title @a subtitle "ｘｙｚ"
execute if score time Title matches 1 run title @a title "第壱幕"

tp @p[team=red] 54.0 64 -115 180 0
tp @p[team=blue] 54.0 65 -115 180 0

execute unless score time Title matches 320 run schedule function game:scene01/job/title 1t

execute if score time Title matches 320 run gamemode adventure @a
execute if score time Title matches 320 run function game:scene02/create
execute if score time Title matches 320 run scoreboard objectives remove Title
