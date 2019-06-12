function slay:mainmenu/subposition/get
execute if score signy tmp matches 20..45 if score signx tmp matches 0..33 run scoreboard players add columns settings 10
execute if score signy tmp matches 46..63 if score signx tmp matches 0..33 run scoreboard players add columns settings 1
execute if score signy tmp matches 20..45 if score signx tmp matches 66..100 run scoreboard players remove columns settings 10
execute if score signy tmp matches 46..63 if score signx tmp matches 66..100 run scoreboard players remove columns settings 1

execute if score columns settings matches ..0 run scoreboard players set columns settings 1
execute if score columns settings matches 30.. run scoreboard players set columns settings 30

function slay:mainmenu/map_settings/generated/removed_cells_calc
function slay:mainmenu/map_settings/generated/total_cells
function slay:mainmenu/signs/map_settings/generated/columns