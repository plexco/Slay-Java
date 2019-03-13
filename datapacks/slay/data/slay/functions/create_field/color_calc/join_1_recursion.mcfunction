scoreboard players set @e[type=armor_stand,tag=cell,scores={team=0},limit=1,sort=random] team 1
scoreboard players remove #1t tmp 1
execute if score #1t tmp matches 1.. run function slay:create_field/color_calc/join_1_recursion
