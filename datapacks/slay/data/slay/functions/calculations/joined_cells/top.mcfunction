scoreboard players add #group group 1
scoreboard players operation @s group = #group group

function slay:calculations/joined_cells/join_adjacent

execute as @e[type=armor_stand,tag=cell,scores={group=0},limit=1] at @s run function slay:calculations/joined_cells/top