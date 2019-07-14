scoreboard players set *exec Grobal 1
scoreboard objectives add Talk dummy "会話"
scoreboard players add n Talk 1

execute if score n Talk matches 1 run tellraw @a "[村人]---"
execute if score n Talk matches 1 run scoreboard players set max Talk 6

execute if score n Talk matches 1 run tellraw @a "こんな田舎町に何か用かね？"
execute if score n Talk matches 2 run tellraw @a "ああ、あの小説の読者さんかい"
execute if score n Talk matches 3 run tellraw @a "実はあの作者は私の教え子でねえ"
execute if score n Talk matches 4 run tellraw @a "金町さんには親友の幹瀬という子がいてね、"
execute if score n Talk matches 5 run tellraw @a "残念ながら幹瀬さんは事故で亡くなってしまったけど"
execute if score n Talk matches 6 run tellraw @a "今でも小説として形に残そうとしてるのかも知れないねえ"

execute unless score n Talk = max Talk run schedule function game:scene05/talk/end2 5s

execute if score n Talk = max Talk run scoreboard players set *exec Grobal 0
execute if score n Talk = max Talk run scoreboard objectives remove Talk
