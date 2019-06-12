function slay:mainmenu/signs/map_settings/maptype

fill 5 16 123 7 18 123 air
execute if score maptype menu matches 0 run function slay:mainmenu/signs/map_settings/prebuilt
execute if score maptype menu matches 1 run function slay:mainmenu/signs/map_settings/generated