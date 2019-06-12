function slay:mainmenu/subposition/get
execute if score signy tmp matches 20..45 if score signx tmp matches 0..33 run scoreboard players remove remove_border menu 1
execute if score signy tmp matches 46..63 if score signx tmp matches 0..33 run scoreboard players add remove_border menu 1
execute if score signy tmp matches 20..45 if score signx tmp matches 66..100 run scoreboard players remove remove_center menu 1
execute if score signy tmp matches 46..63 if score signx tmp matches 66..100 run scoreboard players add remove_center menu 1

execute if score remove_border menu matches ..-1 run scoreboard players set remove_border menu 0
execute if score remove_border menu matches 11.. run scoreboard players set remove_border menu 10
execute if score remove_center menu matches ..-1 run scoreboard players set remove_center menu 0
execute if score remove_center menu matches 11.. run scoreboard players set remove_center menu 10

function slay:mainmenu/signs/map_settings/generated/removal_position