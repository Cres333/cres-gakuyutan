scoreboard players set exec Any 1
scoreboard objectives add Talk dummy "会話"
scoreboard players add n Talk 1

execute if score n Talk matches 1 run scoreboard players set max Talk 10

execute if score n Talk matches 1 run tellraw @p[team=blue] "Ｐ＃＃＃＃＃＃＃＃ｅＬ＃＃＃＃＃＃"
execute if score n Talk matches 2 run tellraw @p[team=blue] "＃＃Ａ＃＃＃＃＃＃＃Ｉ＃＃＃＃＃＃＃"
execute if score n Talk matches 3 run tellraw @p[team=blue] "＃＃Ｅ＃＃＃＃＃＃Ｐ＃＃＃＃＃Ｕ＃＃＃"
execute if score n Talk matches 4 run tellraw @p[team=blue] "ｒＰ＃＃＃＃＃Ｃ＃＃＃＃＃＃＃＃＃Ｂ＃"
execute if score n Talk matches 5 run tellraw @p[team=blue] "＃＃ＰＱ＃Ｇ＃＃＃＃＃Ｎ＃＃＃＃＃＃＃＃＃＃＃＃＃＃"
execute if score n Talk matches 6 run tellraw @p[team=blue] "＃＃＃＃Ｊ＃＃＃＃＃Ｂ＃＃＃＃＃＃＃＃＃＃＃＃＃＃"
execute if score n Talk matches 7 run tellraw @p[team=blue] "＃＃＃＃＃＃Ｊ＃Ｄ＃＃＃＃＃＃＃＃＃＃Ｆ＃＃"
execute if score n Talk matches 10 run tellraw @p[team=blue] "『あの子の名を、私の親友の名を…』"

execute if score n Talk matches 1 run tellraw @p[team=red] "楽しいお話の時間を邪魔しちゃったわね"
execute if score n Talk matches 2 run tellraw @p[team=red] "でも、あなた達を返すわけには行かないわ"
execute if score n Talk matches 3 run tellraw @p[team=red] "あの女が何を思い出したのか知らないけど、"
execute if score n Talk matches 4 run tellraw @p[team=red] "私の大切な場所を奪わせたりなんかしない！"
execute if score n Talk matches 5 run tellraw @p[team=red] "あなた達の気が変わるまで、ここで一緒に過ごしましょう？"
execute if score n Talk matches 6 run tellraw @p[team=red] "だって、ここには怒る人も虐める人もいないんだから！！"
execute if score n Talk matches 7 run tellraw @p[team=red] "…さあ、私の望む答えを聞かせてもらおうかしら？"
execute if score n Talk matches 10 run tellraw @p[team=red] "『ＡＹＪＹＵｓ＃ｒＰＬＹＬｔｋＣＹＵｓ…』"

execute unless score n Talk = max Talk run schedule function game:scene04/q 5s

execute if score n Talk = max Talk run scoreboard players set exec Any 0
execute if score n Talk = max Talk run function game:scene04/a
execute if score n Talk = max Talk run scoreboard objectives remove Talk
