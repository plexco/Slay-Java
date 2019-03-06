scoreboard players set #modulo random 6
function utils:random/generate

execute if score @s random matches 0 store result entity @s HandItems[0].tag.display.color int 1 run scoreboard players get 1 fieldColors
execute if score @s random matches 1 store result entity @s HandItems[0].tag.display.color int 1 run scoreboard players get 2 fieldColors
execute if score @s random matches 2 store result entity @s HandItems[0].tag.display.color int 1 run scoreboard players get 3 fieldColors
execute if score @s random matches 3 store result entity @s HandItems[0].tag.display.color int 1 run scoreboard players get 4 fieldColors
execute if score @s random matches 4 store result entity @s HandItems[0].tag.display.color int 1 run scoreboard players get 5 fieldColors
execute if score @s random matches 5 store result entity @s HandItems[0].tag.display.color int 1 run scoreboard players get 6 fieldColors