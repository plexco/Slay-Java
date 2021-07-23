# run as the armorstand that should get its unit removed

item replace entity @s armor.head with air

tag @s[tag=peasant] remove peasant
tag @s[tag=spearman] remove spearman
tag @s[tag=knight] remove knight
tag @s[tag=baron] remove baron

scoreboard players set @s handItem 0

tag @s[tag=occupied] remove occupied

tag @s[tag=moveable] remove moveable
tag @e[tag=previousPos] remove previousPos
tag @s add previousPos