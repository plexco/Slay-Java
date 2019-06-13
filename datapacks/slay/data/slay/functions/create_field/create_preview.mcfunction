kill @e[type=armor_stand,tag=cell]
scoreboard players operation @s tmp = columns settings
execute positioned -13 9 91 run function slay:create_field/find_position/find