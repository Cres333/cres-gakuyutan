# 自殺演出
scoreboard objectives add _Mem3 dummy "演出"
scoreboard players add n _Mem3 1
scoreboard players set end _Mem3 0

execute if score n _Mem3 matches 1 run function game:scene03/job/memory/act/three
execute if score n _Mem3 matches 1 run scoreboard players set max _Mem3 6

execute if score n _Mem3 matches 1 run tellraw @p[scores={Memory=3}] "「この世界は狂っている、レイナが居ない世界は狂っている」"
execute if score n _Mem3 matches 2 run tellraw @p[scores={Memory=3}] "ユウコはそっと、鈍く光る刃を首にあてがった。"
execute if score n _Mem3 matches 3 run tellraw @p[scores={Memory=3}] "「たった一人の親友、この世界で唯一人、私を理解してくれる人」"
execute if score n _Mem3 matches 4 run tellraw @p[scores={Memory=3}] "息を止める。そこにはただただ静寂な闇が広がっている。"
execute if score n _Mem3 matches 5 run tellraw @p[scores={Memory=3}] "覚悟を決めた痛みとともに、世界は鮮やかな赤に染まっていった。"

execute unless score n _Mem3 >= max _Mem3 run schedule function game:scene03/job/memory/three 5s

execute if score n _Mem3 >= max _Mem3 as @p[team=red,scores={Memory=3}] run tp @p[team=red] -58 67.5 3 90 0
execute if score n _Mem3 >= max _Mem3 as @p[team=blue,scores={Memory=3}] run tp @p[team=blue] -58 67.5 3 90 0
execute if score n _Mem3 >= max _Mem3 run scoreboard players set @p[scores={Memory=3}] Memory 0
execute if score n _Mem3 >= max _Mem3 run scoreboard objectives remove _Mem3
