execute as @s[type=armor_stand,tag=grave] run function slay:create_field/create_tree

scoreboard players set #modulo random 3
execute as @s[type=armor_stand,tag=cell,tag=!occupied] run function utils:random/generate

tag @e[tag=tree] add tree_prev
tag @e[tag=palm] add palm_prev
execute as @s[type=armor_stand,tag=cell,tag=!occupied,scores={random=0}] at @s run function slay:calculations/trees/check_tree

tag @e[tag=tree] remove tree_prev
tag @e[tag=palm] remove palm_prev