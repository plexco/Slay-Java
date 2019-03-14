scoreboard players remove @s forfeitCounter 1
clear @s[scores={forfeitCounter=0}]
execute as @s[scores={forfeitCounter=0}] run function slay:player/hotbarmenu/utils/replace_items
tag @s[scores={forfeitCounter=0}] remove forfeit