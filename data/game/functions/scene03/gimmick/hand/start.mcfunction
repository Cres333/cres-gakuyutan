scoreboard players set *hand Gimmick 1
execute unless entity @p[team=blue,nbt={Inventory:[{Slot:-106b}]}] run replaceitem entity @p[team=blue] weapon.offhand minecraft:redstone_block
execute as @p[team=blue] at @s run playsound minecraft:entity.elder_guardian.ambient master @s ~ ~ ~ 1 1
schedule function game:scene03/gimmick/hand/finish 4s
