# 居場所判定
execute if score *scene Grobal matches 3 run function game:grobal/with

# 会話イベント
execute as @a if score @s Villager matches 1.. at @s run function game:grobal/talk

# 各シーンの常時実行
execute if score *scene Grobal matches 2 run function game:scene02/thread
execute if score *scene Grobal matches 3 run function game:scene03/thread
