scoreboard objectives add Villager minecraft.custom:minecraft.talked_to_villager "話しかける"
scoreboard players reset * Villager

scoreboard objectives add Food food "食料ゲージ"
scoreboard players reset * Food

scoreboard objectives add Jump minecraft.custom:minecraft.jump "ジャンプ"
scoreboard players reset * Jump

scoreboard objectives add KuroAct dummy "黒霧様の位置"
scoreboard players reset * KuroAct
scoreboard players set pos KuroAct 3

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
# ロウソク補充
scoreboard players set *light Grobal 0
# 会話実行中
scoreboard players set *exec Grobal 0
scoreboard players set *exec2 Grobal 0

scoreboard objectives add Gimmick dummy "ギミック"
scoreboard players reset * Gimmick
scoreboard players set *g Gimmick 0
scoreboard players set *spider Gimmick 0
scoreboard players set *hall Gimmick 0
scoreboard players set *piano Gimmick 0
scoreboard players set *hand Gimmick 0
scoreboard players set *hand2 Gimmick 0
scoreboard players set *cow Gimmick 0
scoreboard players set *step Gimmick 0
scoreboard players set *rocker Gimmick 0
scoreboard players set *rocker2 Gimmick 0
scoreboard players set *statue Gimmick 0

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

function game:scene01/create