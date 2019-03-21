scoreboard players remove @s tmp 1
scoreboard players operation @s tmp2 = rows settings
function slay:create_field/summon_row
scoreboard players remove @s tmp 1
scoreboard players operation @s tmp2 = rows settings
execute if score @s tmp matches 1.. positioned ~1 ~ ~0.5 run function slay:create_field/summon_row
execute if score @s tmp matches 1.. positioned ~2 ~ ~ run function slay:create_field/summon_column