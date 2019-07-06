# 首吊り演出
scoreboard objectives add _Mem1 dummy "演出"
scoreboard players add n _Mem1 1
scoreboard players set end _Mem1 0

execute if score n _Mem1 matches 1 run function game:scene03/job/memory/act/one
execute if score n _Mem1 matches 1 run scoreboard players set max _Mem1 6

execute if score n _Mem1 matches 1 run tellraw @p[scores={Memory=1}] "「ユウコ...ごめんね」"
execute if score n _Mem1 matches 2 run tellraw @p[scores={Memory=1}] "「私もうダメかもしれない」"
execute if score n _Mem1 matches 3 run tellraw @p[scores={Memory=1}] "「もしも、死後の世界があったら、また遊ぼうね」"
execute if score n _Mem1 matches 4 run tellraw @p[scores={Memory=1}] "ぼそりとそう呟くと、ほっそりとした首に紐を通した。"
execute if score n _Mem1 matches 5 run tellraw @p[scores={Memory=1}] "・・・物が倒れる音。誰かが叫ぶ音。それはもう彼女には聞こえない。"

execute unless score n _Mem1 = max _Mem1 run schedule function game:scene03/job/memory/one 5s

execute if score n _Mem1 = max _Mem1 as @p[team=red,scores={Memory=1}] run function game:scene03/job/over/red
execute if score n _Mem1 = max _Mem1 as @p[team=blue,scores={Memory=1}] run function game:scene03/job/over/blue
execute if score n _Mem1 = max _Mem1 run scoreboard players set @p[scores={Memory=1}] Memory 0
execute if score n _Mem1 = max _Mem1 run scoreboard players set end _Mem1 1
