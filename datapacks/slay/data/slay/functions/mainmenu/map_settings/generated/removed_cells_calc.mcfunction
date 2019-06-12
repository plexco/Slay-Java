scoreboard players operation #tmp tmp = rows settings
scoreboard players operation #tmp tmp *= columns settings

execute if score removed_cells menu matches ..-1 run scoreboard players set removed_cells menu 0
execute if score removed_cells menu > #tmp tmp run scoreboard players operation removed_cells menu = #tmp tmp 

function slay:mainmenu/signs/map_settings/generated/removed_cells