team join red @p
team join blue @p[team=!red]
weather rain 100000
time set 21000
replaceitem entity @a armor.head minecraft:carved_pumpkin{display:{Name:"\"外さないでください\""}}
effect give @a minecraft:invisibility 100000 0 true
scoreboard objectives add _Buss dummy "バス待機"
scoreboard players set *stop _Buss 0
schedule function game:scene01/job/title 15s
schedule function game:scene01/message 10s
function game:scene01/job/buss

# レシピ削除
recipe take @a *
gamerule doLimitedCrafting true

scoreboard objectives remove _OK
