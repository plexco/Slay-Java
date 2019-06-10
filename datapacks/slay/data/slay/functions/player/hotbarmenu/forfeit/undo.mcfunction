scoreboard players remove @s forfeitCounter 1
execute as @s[scores={forfeitCounter=0}] run function slay:player/utils/clear
execute as @s[scores={forfeitCounter=0}] run function slay:player/hotbarmenu/utils/replace_items
tag @s[scores={forfeitCounter=0}] remove forfeit