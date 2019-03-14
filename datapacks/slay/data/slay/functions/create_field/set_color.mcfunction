function slay:create_field/join_team
execute if score @s team matches 1 store result entity @s HandItems[0].tag.display.color int 1 run scoreboard players get 1 fieldColors
execute if score @s team matches 2 store result entity @s HandItems[0].tag.display.color int 1 run scoreboard players get 2 fieldColors
execute if score @s team matches 3 store result entity @s HandItems[0].tag.display.color int 1 run scoreboard players get 3 fieldColors
execute if score @s team matches 4 store result entity @s HandItems[0].tag.display.color int 1 run scoreboard players get 4 fieldColors
execute if score @s team matches 5 store result entity @s HandItems[0].tag.display.color int 1 run scoreboard players get 5 fieldColors
execute if score @s team matches 6 store result entity @s HandItems[0].tag.display.color int 1 run scoreboard players get 6 fieldColors