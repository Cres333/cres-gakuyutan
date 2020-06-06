execute unless entity @e[tag=kuro] run function game:scene03/thread/act/reset
execute if score state TalkState matches 1..6 run schedule function game:scene03/thread/kuro_check 60s
