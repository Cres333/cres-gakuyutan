# 部屋から出られる
# execute unless score sum Light matches 0 run 扉を開く
execute if score sum Light matches 0 run schedule function game:scene03/job/open 1s
