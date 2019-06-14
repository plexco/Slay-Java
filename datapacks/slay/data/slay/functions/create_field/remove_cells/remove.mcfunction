scoreboard players set remove_border tmp 0
scoreboard players set remove_center tmp 0
scoreboard players operation removed_cells tmp = removed_cells menu
scoreboard players operation funcSeed random = seed settings
scoreboard players set funcBase random 24000

execute if score removed_cells tmp matches 1.. run function slay:create_field/remove_cells/kill_one
tellraw @a ["> ",{"translate":"slay.menu.generator.removeDebris"}]
function slay:create_field/remove_cells/find_biggest_landmass
tellraw @a ["> ",{"translate":"slay.menu.generator.finished"}]