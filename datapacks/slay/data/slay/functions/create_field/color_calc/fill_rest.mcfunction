execute if score amountTeams settings matches 6.. run scoreboard players set @e[type=armor_stand,tag=cell,scores={team=0},limit=1,sort=random] team 6
execute if score amountTeams settings matches 5.. run scoreboard players set @e[type=armor_stand,tag=cell,scores={team=0},limit=1,sort=random] team 5
execute if score amountTeams settings matches 4.. run scoreboard players set @e[type=armor_stand,tag=cell,scores={team=0},limit=1,sort=random] team 4
execute if score amountTeams settings matches 3.. run scoreboard players set @e[type=armor_stand,tag=cell,scores={team=0},limit=1,sort=random] team 3
execute if score amountTeams settings matches 2.. run scoreboard players set @e[type=armor_stand,tag=cell,scores={team=0},limit=1,sort=random] team 2
execute if score amountTeams settings matches 1.. run scoreboard players set @e[type=armor_stand,tag=cell,scores={team=0},limit=1,sort=random] team 1

execute if entity @e[type=armor_stand,tag=cell,scores={team=0}] run function slay:create_field/color_calc/fill_rest