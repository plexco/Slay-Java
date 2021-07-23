clear @s leather_helmet

item replace block 0 8 125 container.0 with minecraft:leather_helmet{display:{color:0,Name:'{"translate":"slay.item.display_color","italic":false}'},Unbreakable:1b,HideFlags:36}

execute if entity @s[scores={team=1}] store result block 0 8 125 Items[0].tag.display.color int 1 run scoreboard players get 1 fieldColors
execute if entity @s[scores={team=2}] store result block 0 8 125 Items[0].tag.display.color int 1 run scoreboard players get 2 fieldColors
execute if entity @s[scores={team=3}] store result block 0 8 125 Items[0].tag.display.color int 1 run scoreboard players get 3 fieldColors
execute if entity @s[scores={team=4}] store result block 0 8 125 Items[0].tag.display.color int 1 run scoreboard players get 4 fieldColors
execute if entity @s[scores={team=5}] store result block 0 8 125 Items[0].tag.display.color int 1 run scoreboard players get 5 fieldColors
execute if entity @s[scores={team=6}] store result block 0 8 125 Items[0].tag.display.color int 1 run scoreboard players get 6 fieldColors

loot replace entity @s hotbar.4 1 mine 0 8 125 air{drop_contents:1b}