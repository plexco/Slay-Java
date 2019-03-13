scoreboard players set @e[type=armor_stand,tag=cell,scores={team=0},limit=1,sort=random] team 5
scoreboard players remove #5t tmp 1
execute if score #5t tmp matches 1.. run function slay:create_field/color_calc/join_5_recursion
