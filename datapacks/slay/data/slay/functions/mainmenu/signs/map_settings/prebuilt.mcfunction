function slay:mainmenu/signs/map_settings/prebuilt/mapsize

execute if score mapsize menu matches 0 run function slay:mainmenu/signs/map_settings/prebuilt/maps_small
execute if score mapsize menu matches 1 run function slay:mainmenu/signs/map_settings/prebuilt/maps_medium
execute if score mapsize menu matches 2 run function slay:mainmenu/signs/map_settings/prebuilt/maps_big