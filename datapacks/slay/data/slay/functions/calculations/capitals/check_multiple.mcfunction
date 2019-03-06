execute as @e[type=armor_stand,tag=cell] run scoreboard players operation @s group -= #group group

execute store result score #amount tmp if entity @e[type=armor_stand,scores={group=0}]
execute if score #amount tmp matches 1 as @e[type=armor_stand,scores={group=0},tag=capital] run function slay:calculations/capitals/remove_capital
execute if score #amount tmp matches 2.. run function slay:calculations/capitals/check_one

execute as @e[type=armor_stand,tag=cell] run scoreboard players operation @s group += #group group

scoreboard players remove #group group 1
execute if score #group group matches 0.. run function slay:calculations/capitals/check_multiple