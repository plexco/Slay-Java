# run as the armorstand that should get its unit removed

tag @s[tag=peasant] add grave
tag @s[tag=spearman] add grave
tag @s[tag=knight] add grave
tag @s[tag=baron] add grave

replaceitem entity @s[tag=peasant] armor.head golden_axe
replaceitem entity @s[tag=spearman] armor.head golden_axe
replaceitem entity @s[tag=knight] armor.head golden_axe
replaceitem entity @s[tag=baron] armor.head golden_axe

tag @s[tag=peasant] remove peasant
tag @s[tag=spearman] remove spearman
tag @s[tag=knight] remove knight
tag @s[tag=baron] remove baron
