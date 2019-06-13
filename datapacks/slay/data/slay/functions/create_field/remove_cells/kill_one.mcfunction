execute if score remove_border tmp matches 0 if score remove_center tmp matches 0 run function slay:create_field/remove_cells/get_ratio
tag @e[type=armor_stand,tag=cell] remove border
function slay:create_field/find_border
execute if score remove_border tmp matches 1.. run function slay:create_field/remove_cells/give_ids_border
execute if score remove_border tmp matches 0 run function slay:create_field/remove_cells/give_ids_center
execute if score remove_border tmp matches 0 run scoreboard players remove remove_center tmp 1
execute if score remove_border tmp matches 1.. run scoreboard players remove remove_border tmp 1
scoreboard players operation #modulo random = total id
function utils:random/generate
execute as @e[type=armor_stand,tag=cell] if score @s id = funcOutp random run kill @s

scoreboard players remove removed_cells tmp 1
execute if score removed_cells tmp matches 1.. run function slay:create_field/remove_cells/kill_one