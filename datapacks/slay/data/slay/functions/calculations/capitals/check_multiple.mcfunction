tag @e[type=armor_stand,tag=activegroup] remove activegroup
execute as @e[type=armor_stand,tag=cell] if score @s group = #tmp group run tag @s add activegroup

execute store result score #amount tmp if entity @e[type=armor_stand,tag=activegroup]
execute if score #amount tmp matches 1 as @e[type=armor_stand,tag=activegroup,tag=capital] run function slay:calculations/capitals/remove_capital
execute if score #amount tmp matches 2.. run function slay:calculations/capitals/check_one

scoreboard players remove #tmp group 1
execute if score #tmp group matches 0.. run function slay:calculations/capitals/check_multiple