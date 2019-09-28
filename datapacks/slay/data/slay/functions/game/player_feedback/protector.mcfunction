scoreboard players add @s tmp 1
execute as @s[type=area_effect_cloud,scores={tmp=..11}] run tp @s ^ ^ ^0.1
execute as @s[type=area_effect_cloud,scores={tmp=..11}] run data merge entity @s {Air:0b}
execute as @s[type=area_effect_cloud,scores={tmp=..11}] run data merge entity @s {Air:1b}
kill @s[type=armor_stand,scores={tmp=20..}]