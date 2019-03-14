# execute as the armorstand that is supposed to get it

scoreboard players operation @s handItem = @p[tag=currentPlayer] handItem
execute as @p[tag=currentPlayer] run function slay:players/utils/remove_hand

replaceitem entity @s[scores={handItem=2}] armor.head minecraft:wooden_sword{Unbreakable:1b} 
replaceitem entity @s[scores={handItem=3}] armor.head minecraft:stone_sword{Unbreakable:1b} 
replaceitem entity @s[scores={handItem=4}] armor.head minecraft:iron_sword{Unbreakable:1b} 
replaceitem entity @s[scores={handItem=5}] armor.head minecraft:diamond_sword{Unbreakable:1b}

execute store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players get theme settings

tag @s add occupied
tag @s[scores={handItems=2}] add peasant
tag @s[scores={handItems=3}] add spearman
tag @s[scores={handItems=4}] add knight
tag @s[scores={handItems=5}] add baron