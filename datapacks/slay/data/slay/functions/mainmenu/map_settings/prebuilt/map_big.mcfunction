execute if score #mapCd tmp matches ..0 run function slay:mainmenu/subposition/get
execute if score #mapCd tmp matches ..0 if score signy tmp matches 30..63 if score signx tmp matches 0..25 run scoreboard players add map_big menu 1
execute if score #mapCd tmp matches ..0 if score signy tmp matches 30..63 if score signx tmp matches 75..100 run scoreboard players remove map_big menu 1

execute if score #mapCd tmp matches ..0 if score map_big menu matches ..-1 run scoreboard players set map_big menu 10
execute if score #mapCd tmp matches ..0 if score map_big menu matches 11.. run scoreboard players set map_big menu 0

execute if score #mapCd tmp matches ..0 run function slay:mainmenu/signs/map_settings/prebuilt/maps_big
execute if score #mapCd tmp matches ..0 run function slay:mainmenu/map_settings/prebuilt/big/load