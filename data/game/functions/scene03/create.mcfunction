bossbar add light "蝋燭"
bossbar set light color white
bossbar set light style progress
bossbar set light max 18000
bossbar set light value 0
bossbar set light players @a

scoreboard objectives add Any dummy "なんでもオブジェクト"
scoreboard players reset * Any

scoreboard objectives add Light dummy "明るさ判定"
scoreboard players set *value Light 0
scoreboard players set *red Light 0
scoreboard players set *blue Light 0
effect give @a minecraft:blindness 1000000 0 true
effect give @a minecraft:slowness 1000000 3 true
effect give @a minecraft:jump_boost 1000000 129 true
effect give @a minecraft:saturation 1000000 100 true

scoreboard objectives add Candle minecraft.crafted:minecraft.orange_dye "蝋燭作成"
scoreboard players set @a Candle 0

scoreboard objectives add TalkState dummy "会話の進行状態"
scoreboard players set state TalkState 0

scoreboard objectives add Sight dummy "黒霧様の視界"
scoreboard players set *find Sight 0
scoreboard players set @a Sight 0

scoreboard objectives add Memory dummy "記憶演出"
scoreboard players set *count Memory 0

tp @p[team=red] -47 67 -3 0 25
tp @p[team=blue] -49 67 -3 0 25
gamemode adventure @a

recipe give @a game:crafting_candle
recipe give @a game:crafting_full_candle

scoreboard players set *scene Grobal 3
function game:scene03/job/open
