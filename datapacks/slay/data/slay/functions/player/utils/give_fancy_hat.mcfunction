replaceitem block 0 8 125 container.0 minecraft:potion{CustomPotionColor:16777215,HideFlags:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:"{\"text\":\"Fancy Helmet\"}",Lore:["{\"text\":\"Because you're better\"}","{\"text\":\"than the others and\"}","{\"text\":\"you know that\"}"]}} 1

execute if entity @s[scores={team=1}] store result block 0 8 125 Items[0].tag.CustomPotionColor int 1 run scoreboard players get 1 fieldColors
execute if entity @s[scores={team=2}] store result block 0 8 125 Items[0].tag.CustomPotionColor int 1 run scoreboard players get 2 fieldColors
execute if entity @s[scores={team=3}] store result block 0 8 125 Items[0].tag.CustomPotionColor int 1 run scoreboard players get 3 fieldColors
execute if entity @s[scores={team=4}] store result block 0 8 125 Items[0].tag.CustomPotionColor int 1 run scoreboard players get 4 fieldColors
execute if entity @s[scores={team=5}] store result block 0 8 125 Items[0].tag.CustomPotionColor int 1 run scoreboard players get 5 fieldColors
execute if entity @s[scores={team=6}] store result block 0 8 125 Items[0].tag.CustomPotionColor int 1 run scoreboard players get 6 fieldColors

loot replace entity @s armor.head 1 mine 0 8 125 air{drop_contents:1b}