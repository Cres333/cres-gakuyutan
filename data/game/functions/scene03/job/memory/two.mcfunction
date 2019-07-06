# 後悔演出
scoreboard objectives add _Mem2 dummy "演出"
scoreboard players add n _Mem2 1
scoreboard players set end _Mem2 0

execute if score n _Mem2 matches 1 run function game:scene03/job/memory/act/two
execute if score n _Mem2 matches 1 run scoreboard players set max _Mem2 6

execute if score n _Mem2 matches 1 run tellraw @p[scores={Memory=2}] "「なんで？なんで相談してくれなかったの？・・・」"
execute if score n _Mem2 matches 2 run tellraw @p[scores={Memory=2}] "冷え切ったレイナの身体は、もう何も語ることはない。"
execute if score n _Mem2 matches 3 run tellraw @p[scores={Memory=2}] "「私がもっとそばに居てあげられれば、もっと、もっと・・・」"
execute if score n _Mem2 matches 4 run tellraw @p[scores={Memory=2}] "もう枯れきった声と涙は、レイナの心に届くことはない。"
execute if score n _Mem2 matches 5 run tellraw @p[scores={Memory=2}] "彼女は唯一人、親友の身体にすがりついていた。"

execute unless score n _Mem2 = max _Mem2 run schedule function game:scene03/job/memory/two 5s

execute if score n _Mem2 = max _Mem2 as @p[team=red,scores={Memory=2}] run function game:scene03/job/over/red
execute if score n _Mem2 = max _Mem2 as @p[team=blue,scores={Memory=2}] run function game:scene03/job/over/blue
execute if score n _Mem2 = max _Mem2 run scoreboard players set @p[scores={Memory=2}] Memory 0
execute if score n _Mem2 = max _Mem2 run scoreboard players set end _Mem2 1
