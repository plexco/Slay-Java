scoreboard players operation @s group = #group group
execute as @e[type=armor_stand,distance=0.1..1.3,scores={group=0},team=5] at @s run function slay:calculations/joined_cells/join_adjacent_5