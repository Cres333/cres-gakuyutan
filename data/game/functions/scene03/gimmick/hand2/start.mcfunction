scoreboard players set *hand2 Gimmick 1
execute unless entity @p[team=red,nbt={Inventory:[{Slot:-106b}]}] run replaceitem entity @p[team=red] weapon.offhand minecraft:redstone_block
execute as @p[team=red] at @s run playsound minecraft:entity.elder_guardian.ambient master @s ~ ~ ~ 1 1
schedule function game:scene03/gimmick/hand2/finish 4s
