scoreboard objectives add Villager minecraft.custom:minecraft.talked_to_villager "話しかける"
scoreboard players reset * Villager

scoreboard objectives add Grobal dummy "グローバル変数"
scoreboard players reset * Grobal
# シーン
scoreboard players set *scene Grobal 1
# エンド分岐
scoreboard players set *end Grobal 0
# プレイヤー同士が近くにいるか
scoreboard players set *with Grobal 0
# プレイヤー(青)がレイナの近くにいるか
scoreboard players set *withBlue Grobal 0
# プレイヤー(赤)がユウコの近くにいるか
scoreboard players set *withRed Grobal 0

team add red
team add blue
team empty red
team empty blue
team modify red nametagVisibility never
team modify red seeFriendlyInvisibles true
team modify blue nametagVisibility never
team modify blue seeFriendlyInvisibles true

weather clear
time set 6000
clear @a
