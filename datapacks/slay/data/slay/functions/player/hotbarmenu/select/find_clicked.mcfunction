summon area_effect_cloud ~ ~ ~ {Tags:["finder"],Duration:1}
execute anchored eyes positioned ^ ^ ^ run teleport @e[type=area_effect_cloud,tag=finder,limit=1] ~ ~ ~ ~ ~
execute as @e[type=area_effect_cloud,tag=finder,limit=1] at @s run function slay:player/hotbarmenu/select/move_forward
execute if entity @p[tag=currentPlayer,scores={handItem=1..}] as @e[type=area_effect_cloud,tag=finder] at @s as @e[type=armor_stand,tag=cell,limit=1,sort=nearest] run function slay:player/hotbarmenu/select/select_cell
execute if entity @p[tag=currentPlayer,scores={handItem=0}] as @e[type=area_effect_cloud,tag=finder] at @s as @e[type=armor_stand,tag=cell,limit=1,sort=nearest] run function slay:player/hotbarmenu/select/select_cell_empty
function slay:player/hotbarmenu/select/highlight_selected