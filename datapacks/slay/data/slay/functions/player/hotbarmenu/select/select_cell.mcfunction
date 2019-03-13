execute if score @e[tag=selected,limit=1] group = @s group run say same group
execute unless score @e[tag=selected,limit=1] group = @s group run say different group

tag @e[tag=selected] remove selected
tag @s add selected