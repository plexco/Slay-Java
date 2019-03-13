scoreboard players remove @s tmp2 1
function slay:create_field/summon_one
execute if score @s tmp2 matches 1.. positioned ~ ~ ~1 run function slay:create_field/summon_row