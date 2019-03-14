# run as the armorstand that should get its unit removed

tag @s[tag=peasant] add grave
tag @s[tag=spearman] add grave
tag @s[tag=knight] add grave
tag @s[tag=baron] add grave

replaceitem entity @s armor.head golden_axe{Unbreakable:1b}

execute store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players get theme settings

tag @s[tag=peasant] remove peasant
tag @s[tag=spearman] remove spearman
tag @s[tag=knight] remove knight
tag @s[tag=baron] remove baron

scoreboard players set @s handItem 0

tag @s[tag=moveable] remove moveable