function game:reset

scoreboard objectives add Any dummy "なんでもオブジェクト"
scoreboard objectives add Id dummy "識別子"
scoreboard objectives add Scene dummy "シーン"
scoreboard players set exec Any 0
scoreboard players set exec2 Any 0

team add red
team add blue
team modify red nametagVisibility never
team modify red seeFriendlyInvisibles true
team modify blue nametagVisibility never
team modify blue seeFriendlyInvisibles true
