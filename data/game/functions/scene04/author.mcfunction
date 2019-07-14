scoreboard objectives add Talk dummy "会話"
scoreboard players add n Talk 1

execute if score n Talk matches 1 run scoreboard players set max Talk 7
execute if score n Talk matches 1 run clear @a written_book

execute if score n Talk matches 1 run tellraw @a "…なーんだ、知ってたのか"
execute if score n Talk matches 2 run tellraw @a "私とレイナのお遊びもここまでね"
execute if score n Talk matches 3 run tellraw @a "そうよ、私達は存在しない、どこにもいない"
execute if score n Talk matches 4 run tellraw @a "小説と同じように、ここはフィクションの世界"
execute if score n Talk matches 5 run tellraw @a "さあ、目を覚ましなさい"
execute if score n Talk matches 6 run tellraw @a "そろそろ、この悪夢の世界が壊れるわ"

execute unless score n Talk = max Talk run schedule function game:scene04/author 5s

execute if score n Talk = max Talk run function game:scene04/movie/start
execute if score n Talk = max Talk run scoreboard objectives remove Talk
