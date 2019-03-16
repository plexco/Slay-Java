# execute as the armorstand that is supposed to get it

tag @s[tag=capital] remove capital
tag @s[tag=peasant] remove peasant
tag @s[tag=spearman] remove spearman
tag @s[tag=knight] remove knight
tag @s[tag=baron] remove baron 
tag @s[tag=castle] remove castle
tag @s[tag=tree] remove tree
tag @s[tag=palm] remove palm

scoreboard players operation @s handItem = @p[tag=currentPlayer] handItem
execute as @p[tag=currentPlayer] run function slay:player/utils/remove_hand

function slay:player/hotbarmenu/utils/update_as_display

tag @s add occupied
tag @s[scores={handItem=2}] add peasant
tag @s[scores={handItem=3}] add spearman
tag @s[scores={handItem=4}] add knight
tag @s[scores={handItem=5}] add baron
tag @s[scores={handItem=6}] add castle

tag @e[tag=previousPos] remove previousPos