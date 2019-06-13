tag @s add checked
scoreboard players add #tmp tmp 1
# scoreboard players add @s tmp2 1
# tellraw @a ["",{"score":{"name":"#tmp","objective":"tmp"}}]
execute as @e[type=armor_stand,tag=cell,tag=!checked,scores={tmp=0},distance=0.1..1.3] at @s run function slay:create_field/remove_cells/check_intermediate
# scoreboard players operation @s tmp = #tmp tmp