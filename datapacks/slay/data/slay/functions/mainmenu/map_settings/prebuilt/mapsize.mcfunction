function slay:mainmenu/subposition/get
execute if score signy tmp matches 30..63 if score signx tmp matches 0..25 run scoreboard players add mapsize menu 1
execute if score signy tmp matches 30..63 if score signx tmp matches 75..100 run scoreboard players remove mapsize menu 1

execute if score mapsize menu matches ..-1 run scoreboard players set mapsize menu 2
execute if score mapsize menu matches 3.. run scoreboard players set mapsize menu 0

function slay:mainmenu/signs/map_settings/prebuilt