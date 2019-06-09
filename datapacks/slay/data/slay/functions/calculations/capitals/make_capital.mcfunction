tag @s[tag=capital] remove capital
tag @s[tag=peasant] remove peasant
tag @s[tag=spearman] remove spearman
tag @s[tag=knight] remove knight
tag @s[tag=baron] remove baron 
tag @s[tag=castle] remove castle
tag @s[tag=tree] remove tree
tag @s[tag=palm] remove palm
tag @s[tag=grave] remove grave

tag @s add capital
tag @s add occupied

scoreboard players set @s handItem 1
scoreboard players set @s income 0
scoreboard players set @s wages 0
scoreboard players set @s money 0
function slay:player/hotbarmenu/utils/update_as_display