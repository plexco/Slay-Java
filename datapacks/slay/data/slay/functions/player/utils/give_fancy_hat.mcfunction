replaceitem entity @s armor.head minecraft:firework_star{Explosion:{Type:0,Colors:[I;16777215]},HideFlags:33,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:"{\"text\":\"Fancy Helmet\"}",Lore:["{\"text\":\"Because you're better\"}","{\"text\":\"than the others and\"}","{\"text\":\"you know that\"}"]}} 1

execute store result entity @s[scores={team=1}] Inventory[{Slot:103b}].tag.Explosion.Colors[0] int 1 run scoreboard players get 1 fieldColors
execute store result entity @s[scores={team=2}] Inventory[{Slot:103b}].tag.Explosion.Colors[0] int 1 run scoreboard players get 2 fieldColors
execute store result entity @s[scores={team=3}] Inventory[{Slot:103b}].tag.Explosion.Colors[0] int 1 run scoreboard players get 3 fieldColors
execute store result entity @s[scores={team=4}] Inventory[{Slot:103b}].tag.Explosion.Colors[0] int 1 run scoreboard players get 4 fieldColors
execute store result entity @s[scores={team=5}] Inventory[{Slot:103b}].tag.Explosion.Colors[0] int 1 run scoreboard players get 5 fieldColors
execute store result entity @s[scores={team=6}] Inventory[{Slot:103b}].tag.Explosion.Colors[0] int 1 run scoreboard players get 6 fieldColors