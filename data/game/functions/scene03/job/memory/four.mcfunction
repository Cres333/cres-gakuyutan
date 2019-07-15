# 作者視点演出
scoreboard objectives add _Mem4 dummy "演出"
scoreboard players add n _Mem4 1
scoreboard players set end _Mem4 0

execute if score n _Mem4 matches 1 run function game:scene03/job/memory/act/four
execute if score n _Mem4 matches 1 run scoreboard players set max _Mem4 6

execute if score n _Mem4 matches 1 run tellraw @p[scores={Memory=4}] "青白い顔をした少女と、真っ赤に染まった少女。"
execute if score n _Mem4 matches 2 run tellraw @p[scores={Memory=4}] "二人の少女は何を思い、何を願ったのか。"
execute if score n _Mem4 matches 3 run tellraw @p[scores={Memory=4}] "それは彼女たちの理解者だけが知っているのかもしれない。"
execute if score n _Mem4 matches 4 run tellraw @p[scores={Memory=4}] "果たして、その理解者は彼女たちの世界に居るのだろうか。"
execute if score n _Mem4 matches 5 run tellraw @p[scores={Memory=4}] "それを知る人は彼女たちの世界に居たのだろうか。"

execute unless score n _Mem4 >= max _Mem4 run schedule function game:scene03/job/memory/four 5s

execute if score n _Mem4 >= max _Mem4 as @p[team=red,scores={Memory=4}] run function game:scene03/job/over/red
execute if score n _Mem4 >= max _Mem4 as @p[team=blue,scores={Memory=4}] run function game:scene03/job/over/blue
execute if score n _Mem4 >= max _Mem4 run scoreboard players set @p[scores={Memory=4}] Memory 0
execute if score n _Mem4 >= max _Mem4 run scoreboard objectives remove _Mem4
