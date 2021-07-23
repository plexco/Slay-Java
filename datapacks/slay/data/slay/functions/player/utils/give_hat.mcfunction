item replace block 0 8 125 container.0 with minecraft:leather_horse_armor{HideFlags:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'{"translate":"slay.item.helmet"}',Lore:['{"translate":"slay.item.helmet.lore.one"}','{"translate":"slay.item.helmet.lore.two"}']}}

execute if entity @s[scores={team=1}] store result block 0 8 125 Items[0].tag.display.color int 1 run scoreboard players get 1 fieldColors
execute if entity @s[scores={team=2}] store result block 0 8 125 Items[0].tag.display.color int 1 run scoreboard players get 2 fieldColors
execute if entity @s[scores={team=3}] store result block 0 8 125 Items[0].tag.display.color int 1 run scoreboard players get 3 fieldColors
execute if entity @s[scores={team=4}] store result block 0 8 125 Items[0].tag.display.color int 1 run scoreboard players get 4 fieldColors
execute if entity @s[scores={team=5}] store result block 0 8 125 Items[0].tag.display.color int 1 run scoreboard players get 5 fieldColors
execute if entity @s[scores={team=6}] store result block 0 8 125 Items[0].tag.display.color int 1 run scoreboard players get 6 fieldColors

loot replace entity @s armor.head 1 mine 0 8 125 air{drop_contents:1b}

execute as @s[name=Plagiatus] run function slay:player/utils/give_fancy_hat
execute as @s[name=Etex] run function slay:player/utils/give_fancy_hat
execute as @s[name=pollieboy] run function slay:player/utils/give_fancy_hat
execute as @s[name=iWacky] run function slay:player/utils/give_fancy_hat
execute as @s[name=JannisX11] run function slay:player/utils/give_fancy_hat
execute as @s[name=dragonmaster95] run function slay:player/utils/give_fancy_hat