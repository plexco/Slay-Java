tag @s add occupied
tag @s add tree
replaceitem entity @s armor.head minecraft:wooden_axe{Unbreakable:1b,Damage:1}

scoreboard players set @s handItem 7

execute store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players get theme settings

execute at @s run function slay:game/effects/grow