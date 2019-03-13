scoreboard players add @s tmp 1
teleport @s ^ ^ ^0.1
execute as @s[scores={tmp=..100}] at @s unless entity @e[type=armor_stand,tag=cell,distance=..0.5] run function slay:player/hotbarmenu/select/move_forward
kill @s[scores={tmp=101..}]