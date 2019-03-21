execute if score #rows tmp matches 0 run function slay:create_field/find_position/move_cols
scoreboard players remove #rows tmp 1
execute if score #rows tmp matches 0.. positioned ~ ~ ~1 run function slay:create_field/find_position/move_rows