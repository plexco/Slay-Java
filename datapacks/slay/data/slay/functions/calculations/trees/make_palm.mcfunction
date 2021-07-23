tag @s add occupied
tag @s add palm

item replace entity @s armor.head with minecraft:stone_axe{Unbreakable: 1b, Damage: 1}

scoreboard players set @s handItem 8

execute store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players get theme settings

execute at @s run function slay:game/effects/grow