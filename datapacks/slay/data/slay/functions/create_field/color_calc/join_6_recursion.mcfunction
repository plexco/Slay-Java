scoreboard players set @e[type=armor_stand,tag=cell,scores={team=0},limit=1,sort=random] team 6
scoreboard players remove #6t tmp 1
execute if score #6t tmp matches 1.. run function slay:create_field/color_calc/join_6_recursion
