team join red @p
team join blue @p[team=!red]
weather rain 100000
time set 21000

gamerule announceAdvancements false

replaceitem entity @a armor.head minecraft:carved_pumpkin{Enchantments:[{id:"binding_curse",lvl:1}],display:{Name:"\"\""}}
replaceitem entity @a inventory.17 minecraft:redstone_block
effect give @a minecraft:invisibility 100000 0 true
scoreboard objectives add _Buss dummy "バス待機"
scoreboard players set *stop _Buss 0
schedule function game:scene01/job/title 15s
schedule function game:scene01/message 10s
function game:scene01/job/bus
execute as @a at @s run playsound minecraft:bus master @s ~ ~ ~ 1 1

scoreboard objectives remove _OK
