# cells
execute as @e[type=armor_stand,tag=cell,scores={team=1}] store result entity @s HandItems[0].tag.display.color int 1 run scoreboard players get 1 fieldColors
execute as @e[type=armor_stand,tag=cell,scores={team=2}] store result entity @s HandItems[0].tag.display.color int 1 run scoreboard players get 2 fieldColors
execute as @e[type=armor_stand,tag=cell,scores={team=3}] store result entity @s HandItems[0].tag.display.color int 1 run scoreboard players get 3 fieldColors
execute as @e[type=armor_stand,tag=cell,scores={team=4}] store result entity @s HandItems[0].tag.display.color int 1 run scoreboard players get 4 fieldColors
execute as @e[type=armor_stand,tag=cell,scores={team=5}] store result entity @s HandItems[0].tag.display.color int 1 run scoreboard players get 5 fieldColors
execute as @e[type=armor_stand,tag=cell,scores={team=6}] store result entity @s HandItems[0].tag.display.color int 1 run scoreboard players get 6 fieldColors

execute as @e[type=armor_stand,tag=cell] run function slay:player/hotbarmenu/utils/update_as_display