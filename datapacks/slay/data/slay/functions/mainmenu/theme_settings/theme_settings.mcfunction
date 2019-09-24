function slay:mainmenu/subposition/get
execute if score signy tmp matches 30..63 if score signx tmp matches 0..25 run scoreboard players add theme settings 1
execute if score signy tmp matches 30..63 if score signx tmp matches 75..100 run scoreboard players remove theme settings 1

execute if score theme settings matches ..0 run scoreboard players set theme settings 7
execute if score theme settings matches 4 if score signx tmp matches 0..25 run scoreboard players set theme settings 5
execute if score theme settings matches 4 if score signx tmp matches 75..100 run scoreboard players set theme settings 3
execute if score theme settings matches 8.. run scoreboard players set theme settings 1


execute if score signy tmp matches 30..63 unless score signx tmp matches 26..74 run function slay:skins/update_visuals/update

execute if score signy tmp matches 30..63 unless score signx tmp matches 26..74 run function slay:mainmenu/signs/theme_settings
execute if score signy tmp matches 30..63 unless score signx tmp matches 26..74 run function slay:mainmenu/theme_settings/place_creator
execute if score signy tmp matches 30..63 unless score signx tmp matches 26..74 run function slay:mainmenu/theme_settings/update_armorstands