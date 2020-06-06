scoreboard players set *cow Gimmick 1

summon minecraft:ravager -49 67 -20 {Tags:["Cow"],NoAI:1b,Rotation:[180F,0F]}
playsound minecraft:entity.enderman.death master @a -49 67 -25 5 0.1

schedule function game:scene03/gimmick/cow/finish 4s
function game:scene03/gimmick/cow/run
