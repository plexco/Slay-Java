execute if score #mapCd tmp matches ..0 run function slay:mainmenu/subposition/get
execute if score #mapCd tmp matches ..0 if score signy tmp matches 30..63 if score signx tmp matches 0..25 run scoreboard players add map_small menu 1
execute if score #mapCd tmp matches ..0 if score signy tmp matches 30..63 if score signx tmp matches 75..100 run scoreboard players remove map_small menu 1

execute if score #mapCd tmp matches ..0 if score map_small menu matches ..-1 run scoreboard players set map_small menu 8
execute if score #mapCd tmp matches ..0 if score map_small menu matches 9.. run scoreboard players set map_small menu 0

execute if score #mapCd tmp matches ..0 run function slay:mainmenu/signs/map_settings/prebuilt/maps_small
execute if score #mapCd tmp matches ..0 run function slay:mainmenu/map_settings/prebuilt/small/load