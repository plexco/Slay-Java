scoreboard players set @e[type=armor_stand,tag=cell] team 0

scoreboard players set #amount tmp 0
execute at @e[type=armor_stand,tag=cell] run scoreboard players add #amount tmp 1
scoreboard players operation #team tmp = amountTeams settings

execute if score amountTeams settings matches 2 run function slay:create_field/color_calc/2teams_amount
execute if score amountTeams settings matches 3 run function slay:create_field/color_calc/3teams_amount
execute if score amountTeams settings matches 4 run function slay:create_field/color_calc/4teams_amount
execute if score amountTeams settings matches 5 run function slay:create_field/color_calc/5teams_amount
execute if score amountTeams settings matches 6 run function slay:create_field/color_calc/6teams_amount

scoreboard players operation #amount tmp *= 100 const

scoreboard players operation #1t tmp = #amount tmp
scoreboard players operation #1t tmp /= #total tmp
scoreboard players operation #2t tmp = #1t tmp
scoreboard players operation #3t tmp = #1t tmp
scoreboard players operation #4t tmp = #1t tmp
scoreboard players operation #5t tmp = #1t tmp
scoreboard players operation #6t tmp = #1t tmp

scoreboard players operation #2t tmp *= #2 tmp
scoreboard players operation #3t tmp *= #3 tmp
scoreboard players operation #4t tmp *= #4 tmp
scoreboard players operation #5t tmp *= #5 tmp
scoreboard players operation #6t tmp *= #6 tmp

scoreboard players operation #2t tmp /= 100 const
scoreboard players operation #3t tmp /= 100 const
scoreboard players operation #4t tmp /= 100 const
scoreboard players operation #5t tmp /= 100 const
scoreboard players operation #6t tmp /= 100 const

function slay:create_field/color_calc/join_1_recursion
function slay:create_field/color_calc/join_2_recursion
execute if score #3t tmp matches 1.. run function slay:create_field/color_calc/join_3_recursion
execute if score #4t tmp matches 1.. run function slay:create_field/color_calc/join_4_recursion
execute if score #5t tmp matches 1.. run function slay:create_field/color_calc/join_5_recursion
execute if score #6t tmp matches 1.. run function slay:create_field/color_calc/join_6_recursion

execute if entity @e[type=armor_stand,tag=cell,scores={team=0}] run function slay:create_field/color_calc/fill_rest

# 100

# a + b + c + d = 100
# d / a = 1.25
# c / a = 1.17
# b / a = 1.08
# a / a = 1

# d = a * (1 + 0.25 / 3 * 3)
# c = a * (1 + 0.25 / 3 * 2)
# b = a * (1 + 0.25 / 3 * 1)

# a + a * 1.25 + a * 1.17 + a * 1.08 = 100

# a * (1 + 1.08 + 1.17 + 1.25) = 100
# 4.5a = 100