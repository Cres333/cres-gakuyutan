bossbar add light "蝋燭"
bossbar set light color white
bossbar set light style progress
bossbar set light max 18000
bossbar set light value 0
bossbar set light players @a

scoreboard objectives add Light dummy "明るさ判定"
scoreboard players set value Light 0
scoreboard objectives add Candle minecraft.crafted:minecraft.diamond_hoe "蝋燭作成"
scoreboard players set @a Candle 0

scoreboard objectives add TalkState dummy "会話の進行状態"
scoreboard players set state TalkState 0

scoreboard players set scene Scene 3
function game:scene03/open
