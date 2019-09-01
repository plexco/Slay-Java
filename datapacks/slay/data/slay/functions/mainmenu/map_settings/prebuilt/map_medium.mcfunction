execute if score #mapCd tmp matches ..0 run function slay:mainmenu/subposition/get
execute if score #mapCd tmp matches ..0 if score signy tmp matches 30..63 if score signx tmp matches 0..25 run scoreboard players add map_medium menu 1
execute if score #mapCd tmp matches ..0 if score signy tmp matches 30..63 if score signx tmp matches 75..100 run scoreboard players remove map_medium menu 1

execute if score #mapCd tmp matches ..0 if score map_medium menu matches ..-1 run scoreboard players set map_medium menu 21
execute if score #mapCd tmp matches ..0 if score map_medium menu matches 22.. run scoreboard players set map_medium menu 0

execute if score #mapCd tmp matches ..0 run function slay:mainmenu/signs/map_settings/prebuilt/maps_medium
execute if score #mapCd tmp matches ..0 run function slay:mainmenu/map_settings/prebuilt/medium/load