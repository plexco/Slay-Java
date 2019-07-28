replaceitem entity @s armor.head minecraft:leather_horse_armor{HideFlags:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'{"translate":"slay.item.helmet"}',Lore:['{"translate":"slay.item.helmet.lore.one"}','{"translate":"slay.item.helmet.lore.two"}']}}

execute store result entity @s[scores={team=1}] Inventory[{Slot:103b}].tag.display.color int 1 run scoreboard players get 1 fieldColors
execute store result entity @s[scores={team=2}] Inventory[{Slot:103b}].tag.display.color int 1 run scoreboard players get 2 fieldColors
execute store result entity @s[scores={team=3}] Inventory[{Slot:103b}].tag.display.color int 1 run scoreboard players get 3 fieldColors
execute store result entity @s[scores={team=4}] Inventory[{Slot:103b}].tag.display.color int 1 run scoreboard players get 4 fieldColors
execute store result entity @s[scores={team=5}] Inventory[{Slot:103b}].tag.display.color int 1 run scoreboard players get 5 fieldColors
execute store result entity @s[scores={team=6}] Inventory[{Slot:103b}].tag.display.color int 1 run scoreboard players get 6 fieldColors

execute as @s[name=Plagiatus] run function slay:player/utils/give_fancy_hat
execute as @s[name=Etex] run function slay:player/utils/give_fancy_hat
execute as @s[name=pollieboy] run function slay:player/utils/give_fancy_hat
execute as @s[name=iWacky] run function slay:player/utils/give_fancy_hat
execute as @s[name=JannisX11] run function slay:player/utils/give_fancy_hat
execute as @s[name=dragonmaster95] run function slay:player/utils/give_fancy_hat