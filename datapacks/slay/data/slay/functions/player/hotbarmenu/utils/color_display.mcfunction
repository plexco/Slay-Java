clear @s leather_helmet

replaceitem entity @s hotbar.4 minecraft:leather_helmet{display:{color:0,Name:'{"translate":"slay.item.display_color","italic":false}'},Unbreakable:1b,HideFlags:36}

execute store result entity @s[scores={team=1}] Inventory[{id:"minecraft:leather_helmet"}].tag.display.color int 1 run scoreboard players get 1 fieldColors
execute store result entity @s[scores={team=2}] Inventory[{id:"minecraft:leather_helmet"}].tag.display.color int 1 run scoreboard players get 2 fieldColors
execute store result entity @s[scores={team=3}] Inventory[{id:"minecraft:leather_helmet"}].tag.display.color int 1 run scoreboard players get 3 fieldColors
execute store result entity @s[scores={team=4}] Inventory[{id:"minecraft:leather_helmet"}].tag.display.color int 1 run scoreboard players get 4 fieldColors
execute store result entity @s[scores={team=5}] Inventory[{id:"minecraft:leather_helmet"}].tag.display.color int 1 run scoreboard players get 5 fieldColors
execute store result entity @s[scores={team=6}] Inventory[{id:"minecraft:leather_helmet"}].tag.display.color int 1 run scoreboard players get 6 fieldColors