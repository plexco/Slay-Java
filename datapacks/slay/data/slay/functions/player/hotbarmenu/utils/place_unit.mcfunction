# execute as the armorstand that is supposed to get it

tag @s[tag=capital] remove capital
tag @s[tag=peasant] remove peasant
tag @s[tag=spearman] remove spearman
tag @s[tag=knight] remove knight
tag @s[tag=baron] remove baron 
tag @s[tag=castle] remove castle
tag @s[tag=tree] remove tree
tag @s[tag=palm] remove palm

scoreboard players operation @s handItem = @p[tag=currentPlayer] handItem
execute as @p[tag=currentPlayer] run function slay:player/utils/remove_hand

replaceitem entity @s[scores={handItem=2},tag=!moveable] armor.head minecraft:wooden_sword{Unbreakable:1b} 
replaceitem entity @s[scores={handItem=3},tag=!moveable] armor.head minecraft:stone_sword{Unbreakable:1b} 
replaceitem entity @s[scores={handItem=4},tag=!moveable] armor.head minecraft:iron_sword{Unbreakable:1b} 
replaceitem entity @s[scores={handItem=5},tag=!moveable] armor.head minecraft:diamond_sword{Unbreakable:1b}
replaceitem entity @s[scores={handItem=2},tag=moveable] armor.head minecraft:wooden_shovel{Unbreakable:1b} 
replaceitem entity @s[scores={handItem=3},tag=moveable] armor.head minecraft:stone_shovel{Unbreakable:1b} 
replaceitem entity @s[scores={handItem=4},tag=moveable] armor.head minecraft:iron_shovel{Unbreakable:1b} 
replaceitem entity @s[scores={handItem=5},tag=moveable] armor.head minecraft:diamond_shovel{Unbreakable:1b}
replaceitem entity @s[scores={handItem=6},tag=moveable] armor.head minecraft:diamond_axe{Unbreakable:1b}

execute store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players get theme settings

tag @s add occupied
tag @s[scores={handItem=2}] add peasant
tag @s[scores={handItem=3}] add spearman
tag @s[scores={handItem=4}] add knight
tag @s[scores={handItem=5}] add baron
tag @s[scores={handItem=6}] add castle

tag @e[tag=previousPos] remove previousPos