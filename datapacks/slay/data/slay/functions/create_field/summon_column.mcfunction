scoreboard players add @s tmp 1
scoreboard players set @s tmp2 0
function slay:create_field/summon_row
scoreboard players set @s tmp2 0
execute positioned ~1 ~ ~0.5 run function slay:create_field/summon_row
execute if score @s tmp matches ..15 positioned ~2 ~ ~ run function slay:create_field/summon_column