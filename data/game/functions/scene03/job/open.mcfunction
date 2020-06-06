# 部屋から出られる
# execute unless score *sum Light matches 0 run 扉を開く
execute if score *red Light matches 0 if score *blue Light matches 0 run schedule function game:scene03/job/open 1s

execute if score *red Light matches 1 run fill -52 67 -2 -52 69 -5 minecraft:air
execute if score *blue Light matches 1 run fill -52 67 -2 -52 69 -5 minecraft:air
