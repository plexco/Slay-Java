scoreboard players set @e[type=armor_stand,tag=cell,scores={team=0},limit=1,sort=random] team 2
scoreboard players remove #2t tmp 1
execute if score #2t tmp matches 1.. run function slay:create_field/color_calc/join_2_recursion
