kill @e[type=armor_stand,tag=cell]

scoreboard players operation @s tmp = columns settings

execute positioned -13 9 38 run function slay:create_field/summon_column
function slay:create_field/distribute_colors
execute as @e[type=armor_stand,tag=cell] run function slay:create_field/set_color
execute as @e[type=armor_stand,tag=cell] run function slay:create_field/join_team
function slay:create_field/find_border

# execute as @e[type=armor_stand,tag=cell] at @s run function slay:create_field/random_headrotation
scoreboard players set @e[type=armor_stand,tag=cell] handItem 0

function slay:create_field/distribute_trees
function slay:calculations/capitals/check_where
function slay:calculations/income/initial
function slay:calculations/protection/calculate
