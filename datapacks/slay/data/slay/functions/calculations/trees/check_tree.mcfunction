execute if entity @s[tag=!border] store result score @s tmp2 if entity @e[type=armor_stand,tag=tree_prev,distance=0.1..1.3]
execute if entity @s[tag=!border,scores={tmp2=2..}] run function slay:calculations/trees/make_tree

execute if entity @s[tag=border] store result score @s tmp2 if entity @e[type=armor_stand,tag=palm_prev,distance=0.1..1.3]
execute if entity @s[tag=border,scores={tmp2=1..}] run function slay:calculations/trees/make_palm