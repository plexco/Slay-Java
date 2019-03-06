scoreboard players set #group group 0

scoreboard players set @e[type=armor_stand,tag=cell] group 0
execute as @e[type=armor_stand,tag=cell,scores={group=0},limit=1] at @s run function slay:calculations/joined_cells/top