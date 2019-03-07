scoreboard players remove #tmp tmp 1
execute as @e[type=armor_stand,tag=cell,tag=!occupied,limit=1,sort=random] at @s run function slay:create_field/create_tree
execute if score #tmp tmp matches 1.. run function slay:create_field/tree_recursion