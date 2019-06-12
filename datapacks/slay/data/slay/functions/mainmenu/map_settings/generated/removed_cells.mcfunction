function slay:mainmenu/subposition/get
execute if score signy tmp matches 20..45 if score signx tmp matches 0..33 run scoreboard players add removed_cells menu 10
execute if score signy tmp matches 46..63 if score signx tmp matches 0..33 run scoreboard players add removed_cells menu 1
execute if score signy tmp matches 20..45 if score signx tmp matches 66..100 run scoreboard players remove removed_cells menu 10
execute if score signy tmp matches 46..63 if score signx tmp matches 66..100 run scoreboard players remove removed_cells menu 1

function slay:mainmenu/map_settings/generated/removed_cells_calc
function slay:mainmenu/map_settings/generated/total_cells