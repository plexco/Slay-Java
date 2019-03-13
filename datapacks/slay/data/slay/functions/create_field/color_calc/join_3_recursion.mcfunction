scoreboard players set @e[type=armor_stand,tag=cell,scores={team=0},limit=1,sort=random] team 3
scoreboard players remove #3t tmp 1
execute if score #3t tmp matches 1.. run function slay:create_field/color_calc/join_3_recursion
