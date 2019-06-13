scoreboard players set remove_border tmp 0
scoreboard players set remove_center tmp 0
scoreboard players operation removed_cells tmp = removed_cells menu
scoreboard players operation funcSeed random = seed settings
scoreboard players set funcBase random 24000

function slay:create_field/remove_cells/kill_one

tellraw @a ["",{"translate":"slay.menu.generator.removeDebris"}]
tellraw @a ["",{"translate":"slay.menu.generator.finished"}]