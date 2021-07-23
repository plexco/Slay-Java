tag @s add occupied
tag @s remove grave

tag @s[tag=!border] add tree
tag @s[tag=border] add palm

scoreboard players set @s[tag=tree] handItem 7
scoreboard players set @s[tag=palm] handItem 8

item replace entity @s[tag=tree] armor.head with minecraft:wooden_axe{Unbreakable:1b,Damage:1}
scoreboard players set @s[tag=tree] handItem 7

item replace entity @s[tag=palm] armor.head with minecraft:stone_axe{Unbreakable:1b,Damage:1}
scoreboard players set @s[tag=palm] handItem 8

execute store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players get theme settings

execute at @s run function slay:game/effects/grow