# 第二章のタイトル
scoreboard objectives add Title dummy
scoreboard players add time 1

execute if score time Title matches 1 run gamemode spectator @a
execute if score time Title matches 1 run title @a times 3 10 3
# サマヨウ
execute if score time Title matches 1 run title @a subtitle "Ｋ ｅ ｌ Ｃ"
execute if score time Title matches 1 run title @a title "第弐幕"

tp @p[team=red] 91 63 101.0 270 0
tp @p[team=blue] 91 64 101.0 270 0

execute unless score time Title matches 320 run schedule function game:scene02/job/title 1t

execute if score time Title matches 320 run gamemode adventure @a
execute if score time Title matches 320 run function game:scene02/destroy
execute if score time Title matches 320 run scoreboard objectives remove Title
