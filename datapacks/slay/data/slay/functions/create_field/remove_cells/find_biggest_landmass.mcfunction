scoreboard players set @e[type=armor_stand,tag=cell] tmp 0
function slay:create_field/remove_cells/check_multiple
tag @e[type=armor_stand,tag=checked] remove checked

scoreboard players set #tmp tmp 0
execute as @e[type=armor_stand,tag=cell] run scoreboard players operation #tmp tmp > @s tmp
execute as @e[type=armor_stand,tag=cell] if score @s tmp < #tmp tmp run kill @s

# tellraw @a ["",{"score":{"name":"#tmp","objective":"tmp"}}]