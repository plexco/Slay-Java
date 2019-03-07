kill @e[type=armor_stand,tag=cell]

scoreboard players set @s tmp 0

execute positioned 0 10 0 run function slay:create_field/summon_column
execute as @e[type=armor_stand,tag=cell] run function slay:create_field/random_color
execute as @e[type=armor_stand,tag=cell] run function slay:create_field/join_team
function slay:create_field/find_border

function slay:create_field/distribute_trees
function slay:calculations/capitals/check_where