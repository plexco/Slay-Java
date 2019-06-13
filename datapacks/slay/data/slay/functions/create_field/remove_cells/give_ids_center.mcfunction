scoreboard players set total id 0
scoreboard players set @e[type=armor_stand,tag=cell] id -1
execute as @e[type=armor_stand,tag=cell,tag=!border] run function slay:create_field/remove_cells/set_id