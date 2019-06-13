scoreboard players remove @s tmp 1
tellraw @s [{"text":"before: "},{"score":{"name":"@s","objective":"tmp"}}]
scoreboard players operation @s tmp2 = rows settings
execute if score @s tmp matches 0.. run function slay:create_field/summon_row
scoreboard players remove @s tmp 1
tellraw @s [{"text":"after: "},{"score":{"name":"@s","objective":"tmp"}}]
scoreboard players operation @s tmp2 = rows settings
execute if score @s tmp matches 0.. positioned ~1 ~ ~0.5 run function slay:create_field/summon_row
execute if score @s tmp matches 0.. positioned ~2 ~ ~ run function slay:create_field/summon_column