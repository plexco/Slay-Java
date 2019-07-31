scoreboard players set #max tmp 0

scoreboard players operation #max tmp > #1 tmp
scoreboard players operation #max tmp > #2 tmp
scoreboard players operation #max tmp > #3 tmp
scoreboard players operation #max tmp > #4 tmp
scoreboard players operation #max tmp > #5 tmp
scoreboard players operation #max tmp > #6 tmp

scoreboard players operation #1h tmp = #1 tmp
scoreboard players operation #2h tmp = #2 tmp
scoreboard players operation #3h tmp = #3 tmp
scoreboard players operation #4h tmp = #4 tmp
scoreboard players operation #5h tmp = #5 tmp
scoreboard players operation #6h tmp = #6 tmp

scoreboard players operation #1h tmp *= 10 const
scoreboard players operation #2h tmp *= 10 const
scoreboard players operation #3h tmp *= 10 const
scoreboard players operation #4h tmp *= 10 const
scoreboard players operation #5h tmp *= 10 const
scoreboard players operation #6h tmp *= 10 const

scoreboard players operation #1h tmp /= #max tmp
scoreboard players operation #2h tmp /= #max tmp
scoreboard players operation #3h tmp /= #max tmp
scoreboard players operation #4h tmp /= #max tmp
scoreboard players operation #5h tmp /= #max tmp
scoreboard players operation #6h tmp /= #max tmp

# tellraw @a ["",{"score":{"name":"#max","objective":"tmp"}},{"text":"max"}]
# tellraw @a ["",{"score":{"name":"#1h","objective":"tmp"}},{"text":"b - "},{"score":{"name":"#2h","objective":"tmp"}},{"text":"b - "},{"score":{"name":"#3h","objective":"tmp"}},{"text":"b - "},{"score":{"name":"#4h","objective":"tmp"}},{"text":"b - "},{"score":{"name":"#5h","objective":"tmp"}},{"text":"b - "},{"score":{"name":"#6h","objective":"tmp"}},{"text":"b"}]

execute at @e[type=armor_stand,tag=scoredisplay] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~10 ~1 air

execute if score #1h tmp matches 1 at @e[type=armor_stand,tag=scoredisplay,tag=1] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~ ~1 white_concrete
execute if score #1h tmp matches 2 at @e[type=armor_stand,tag=scoredisplay,tag=1] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~1 ~1 white_concrete
execute if score #1h tmp matches 3 at @e[type=armor_stand,tag=scoredisplay,tag=1] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~2 ~1 white_concrete
execute if score #1h tmp matches 4 at @e[type=armor_stand,tag=scoredisplay,tag=1] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~3 ~1 white_concrete
execute if score #1h tmp matches 5 at @e[type=armor_stand,tag=scoredisplay,tag=1] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~4 ~1 white_concrete
execute if score #1h tmp matches 6 at @e[type=armor_stand,tag=scoredisplay,tag=1] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~5 ~1 white_concrete
execute if score #1h tmp matches 7 at @e[type=armor_stand,tag=scoredisplay,tag=1] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~6 ~1 white_concrete
execute if score #1h tmp matches 8 at @e[type=armor_stand,tag=scoredisplay,tag=1] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~7 ~1 white_concrete
execute if score #1h tmp matches 9 at @e[type=armor_stand,tag=scoredisplay,tag=1] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~8 ~1 white_concrete
execute if score #1h tmp matches 10 at @e[type=armor_stand,tag=scoredisplay,tag=1] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~9 ~1 white_concrete

execute if score #2h tmp matches 1 at @e[type=armor_stand,tag=scoredisplay,tag=2] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~ ~1 white_concrete
execute if score #2h tmp matches 2 at @e[type=armor_stand,tag=scoredisplay,tag=2] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~1 ~1 white_concrete
execute if score #2h tmp matches 3 at @e[type=armor_stand,tag=scoredisplay,tag=2] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~2 ~1 white_concrete
execute if score #2h tmp matches 4 at @e[type=armor_stand,tag=scoredisplay,tag=2] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~3 ~1 white_concrete
execute if score #2h tmp matches 5 at @e[type=armor_stand,tag=scoredisplay,tag=2] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~4 ~1 white_concrete
execute if score #2h tmp matches 6 at @e[type=armor_stand,tag=scoredisplay,tag=2] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~5 ~1 white_concrete
execute if score #2h tmp matches 7 at @e[type=armor_stand,tag=scoredisplay,tag=2] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~6 ~1 white_concrete
execute if score #2h tmp matches 8 at @e[type=armor_stand,tag=scoredisplay,tag=2] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~7 ~1 white_concrete
execute if score #2h tmp matches 9 at @e[type=armor_stand,tag=scoredisplay,tag=2] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~8 ~1 white_concrete
execute if score #2h tmp matches 10 at @e[type=armor_stand,tag=scoredisplay,tag=2] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~9 ~1 white_concrete

execute if score #3h tmp matches 1 at @e[type=armor_stand,tag=scoredisplay,tag=3] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~ ~1 white_concrete
execute if score #3h tmp matches 2 at @e[type=armor_stand,tag=scoredisplay,tag=3] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~1 ~1 white_concrete
execute if score #3h tmp matches 3 at @e[type=armor_stand,tag=scoredisplay,tag=3] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~2 ~1 white_concrete
execute if score #3h tmp matches 4 at @e[type=armor_stand,tag=scoredisplay,tag=3] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~3 ~1 white_concrete
execute if score #3h tmp matches 5 at @e[type=armor_stand,tag=scoredisplay,tag=3] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~4 ~1 white_concrete
execute if score #3h tmp matches 6 at @e[type=armor_stand,tag=scoredisplay,tag=3] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~5 ~1 white_concrete
execute if score #3h tmp matches 7 at @e[type=armor_stand,tag=scoredisplay,tag=3] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~6 ~1 white_concrete
execute if score #3h tmp matches 8 at @e[type=armor_stand,tag=scoredisplay,tag=3] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~7 ~1 white_concrete
execute if score #3h tmp matches 9 at @e[type=armor_stand,tag=scoredisplay,tag=3] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~8 ~1 white_concrete
execute if score #3h tmp matches 10 at @e[type=armor_stand,tag=scoredisplay,tag=3] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~9 ~1 white_concrete

execute if score #4h tmp matches 1 at @e[type=armor_stand,tag=scoredisplay,tag=4] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~ ~1 white_concrete
execute if score #4h tmp matches 2 at @e[type=armor_stand,tag=scoredisplay,tag=4] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~1 ~1 white_concrete
execute if score #4h tmp matches 3 at @e[type=armor_stand,tag=scoredisplay,tag=4] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~2 ~1 white_concrete
execute if score #4h tmp matches 4 at @e[type=armor_stand,tag=scoredisplay,tag=4] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~3 ~1 white_concrete
execute if score #4h tmp matches 5 at @e[type=armor_stand,tag=scoredisplay,tag=4] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~4 ~1 white_concrete
execute if score #4h tmp matches 6 at @e[type=armor_stand,tag=scoredisplay,tag=4] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~5 ~1 white_concrete
execute if score #4h tmp matches 7 at @e[type=armor_stand,tag=scoredisplay,tag=4] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~6 ~1 white_concrete
execute if score #4h tmp matches 8 at @e[type=armor_stand,tag=scoredisplay,tag=4] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~7 ~1 white_concrete
execute if score #4h tmp matches 9 at @e[type=armor_stand,tag=scoredisplay,tag=4] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~8 ~1 white_concrete
execute if score #4h tmp matches 10 at @e[type=armor_stand,tag=scoredisplay,tag=4] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~9 ~1 white_concrete

execute if score #5h tmp matches 1 at @e[type=armor_stand,tag=scoredisplay,tag=5] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~ ~1 white_concrete
execute if score #5h tmp matches 2 at @e[type=armor_stand,tag=scoredisplay,tag=5] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~1 ~1 white_concrete
execute if score #5h tmp matches 3 at @e[type=armor_stand,tag=scoredisplay,tag=5] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~2 ~1 white_concrete
execute if score #5h tmp matches 4 at @e[type=armor_stand,tag=scoredisplay,tag=5] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~3 ~1 white_concrete
execute if score #5h tmp matches 5 at @e[type=armor_stand,tag=scoredisplay,tag=5] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~4 ~1 white_concrete
execute if score #5h tmp matches 6 at @e[type=armor_stand,tag=scoredisplay,tag=5] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~5 ~1 white_concrete
execute if score #5h tmp matches 7 at @e[type=armor_stand,tag=scoredisplay,tag=5] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~6 ~1 white_concrete
execute if score #5h tmp matches 8 at @e[type=armor_stand,tag=scoredisplay,tag=5] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~7 ~1 white_concrete
execute if score #5h tmp matches 9 at @e[type=armor_stand,tag=scoredisplay,tag=5] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~8 ~1 white_concrete
execute if score #5h tmp matches 10 at @e[type=armor_stand,tag=scoredisplay,tag=5] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~9 ~1 white_concrete

execute if score #6h tmp matches 1 at @e[type=armor_stand,tag=scoredisplay,tag=6] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~ ~1 white_concrete
execute if score #6h tmp matches 2 at @e[type=armor_stand,tag=scoredisplay,tag=6] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~1 ~1 white_concrete
execute if score #6h tmp matches 3 at @e[type=armor_stand,tag=scoredisplay,tag=6] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~2 ~1 white_concrete
execute if score #6h tmp matches 4 at @e[type=armor_stand,tag=scoredisplay,tag=6] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~3 ~1 white_concrete
execute if score #6h tmp matches 5 at @e[type=armor_stand,tag=scoredisplay,tag=6] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~4 ~1 white_concrete
execute if score #6h tmp matches 6 at @e[type=armor_stand,tag=scoredisplay,tag=6] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~5 ~1 white_concrete
execute if score #6h tmp matches 7 at @e[type=armor_stand,tag=scoredisplay,tag=6] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~6 ~1 white_concrete
execute if score #6h tmp matches 8 at @e[type=armor_stand,tag=scoredisplay,tag=6] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~7 ~1 white_concrete
execute if score #6h tmp matches 9 at @e[type=armor_stand,tag=scoredisplay,tag=6] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~8 ~1 white_concrete
execute if score #6h tmp matches 10 at @e[type=armor_stand,tag=scoredisplay,tag=6] positioned ~2 ~3 ~-1 run fill ~ ~ ~ ~ ~9 ~1 white_concrete

execute if score theme settings matches 1 run fill 23 18 37 23 27 58 brown_concrete replace white_concrete
execute if score theme settings matches 2 run fill 23 18 37 23 27 58 yellow_concrete replace white_concrete
execute if score theme settings matches 3 run fill 23 18 37 23 27 58 light_blue_concrete replace white_concrete
execute if score theme settings matches 4 run fill 23 18 37 23 27 58 light_blue_concrete replace white_concrete
execute if score theme settings matches 5 run fill 23 18 37 23 27 58 smooth_sandstone replace white_concrete