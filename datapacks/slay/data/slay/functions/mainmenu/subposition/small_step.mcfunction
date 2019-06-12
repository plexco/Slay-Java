scoreboard players remove #maxSmallSteps tmp 1
tp @e[type=area_effect_cloud,tag=position_finder] ~ ~ ~
execute store result score @s tmp run data get entity @e[type=area_effect_cloud,tag=position_finder,limit=1] Pos[2] 100
scoreboard players operation @s tmp %= 100 const
execute if score @s tmp matches 80..99 as @e[type=area_effect_cloud,tag=position_finder] run function slay:mainmenu/subposition/save_pos
execute unless score @s tmp matches 80..99 if score #maxSmallSteps tmp matches 1.. positioned ^ ^ ^0.01 run function slay:mainmenu/subposition/small_step