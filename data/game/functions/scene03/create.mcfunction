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

scoreboard objectives add Candle minecraft.crafted:minecraft.orange_banner "蝋燭作成"
scoreboard players set @a Candle 0

scoreboard objectives add TalkState dummy "会話の進行状態"
scoreboard players set state TalkState 0

scoreboard objectives add Sight dummy "黒霧様の視界"
scoreboard players set *find Sight 0
scoreboard players set @a Sight 0

scoreboard objectives add Memory dummy "記憶演出"
scoreboard players set *count Memory 0
scoreboard players set *item Memory 0

tp @p[team=red] -47 67 -3 0 25
tp @p[team=blue] -49 67 -3 0 25
gamemode adventure @a

# 燭台初期配置
execute positioned -43 67 -3 if block ~ ~ ~ minecraft:barrel{Items:[]} run replaceitem block ~ ~ ~ container.20 minecraft:red_banner
execute positioned -43 67 -3 if block ~ ~ ~ minecraft:barrel run replaceitem block ~ ~ ~ container.8 written_book{pages:["{\"text\":\"明かりを灯すには、\\n火のついた燭台を作る必要がある\\n\\n火のついた燭台は、\\n- 燭台(ショクダイ)\\n- 蝋燭(ロウソク)\\n- マッチ\\nを組み合わせれば良い\"}","{\"text\":\"火のついた燭台は、\\n蝋燭が無くなれば火が消える\\n\\n火が消える前に、\\n- 火のついた燭台\\n- 蝋燭(ロウソク)\\nを組み合わせれば蝋燭を\\n交換できる\"}","{\"text\":\"火のついた燭台を持っている人の近くにいる人も周りが明るくなる\\n\\n離れれば暗くなる\"}"],title:"取扱説明書",author:""}
execute positioned -43 67 -3 if block ~ ~ ~ minecraft:barrel run replaceitem block ~ ~ ~ container.10 minecraft:knowledge_book{Recipes:["game:crafting_candle","game:crafting_full_candle"],display:{Name:"\"燭台の作成方法 (1人1冊)\""}}
execute positioned -43 67 -3 if block ~ ~ ~ minecraft:barrel run replaceitem block ~ ~ ~ container.11 minecraft:knowledge_book{Recipes:["game:crafting_candle","game:crafting_full_candle"],display:{Name:"\"燭台の作成方法 (1人1冊)\""}}

scoreboard players set *scene Grobal 3
function game:scene03/job/open
