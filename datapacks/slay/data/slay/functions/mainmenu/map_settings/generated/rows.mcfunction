function slay:mainmenu/subposition/get
execute if score signy tmp matches 20..45 if score signx tmp matches 0..33 run scoreboard players add rows settings 10
execute if score signy tmp matches 46..63 if score signx tmp matches 0..33 run scoreboard players add rows settings 1
execute if score signy tmp matches 20..45 if score signx tmp matches 66..100 run scoreboard players remove rows settings 10
execute if score signy tmp matches 46..63 if score signx tmp matches 66..100 run scoreboard players remove rows settings 1

execute if score rows settings matches ..0 run scoreboard players set rows settings 1
execute if score rows settings matches 20.. run scoreboard players set rows settings 20

function slay:mainmenu/map_settings/generated/removed_cells_calc
function slay:mainmenu/map_settings/generated/total_cells
function slay:mainmenu/signs/map_settings/generated/rows