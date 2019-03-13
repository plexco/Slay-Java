scoreboard players set @e[type=armor_stand,tag=cell,scores={team=0},limit=1,sort=random] team 4
scoreboard players remove #4t tmp 1
execute if score #4t tmp matches 1.. run function slay:create_field/color_calc/join_4_recursion
