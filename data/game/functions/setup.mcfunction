function game:reset

scoreboard objectives add Any dummy "なんでもオブジェクト"
scoreboard objectives add Id dummy "識別子"
scoreboard objectives add Scene dummy "シーン"
team add red
team add blue
team modify red nametagVisibility never
team modify red seeFriendlyInvisibles true
team modify blue nametagVisibility never
team modify blue seeFriendlyInvisibles true
