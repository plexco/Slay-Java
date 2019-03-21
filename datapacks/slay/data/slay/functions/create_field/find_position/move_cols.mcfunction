execute if score #cols tmp matches 0 run function slay:create_field/summon_column
scoreboard players remove #cols tmp 1
execute if score #cols tmp matches 0.. positioned ~1 ~ ~ run function slay:create_field/find_position/move_cols