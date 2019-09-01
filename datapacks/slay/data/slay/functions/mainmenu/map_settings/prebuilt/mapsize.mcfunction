execute if score #mapCd tmp matches ..0 run function slay:mainmenu/subposition/get
execute if score #mapCd tmp matches ..0 if score signy tmp matches 30..63 if score signx tmp matches 0..25 run scoreboard players add mapsize menu 1
execute if score #mapCd tmp matches ..0 if score signy tmp matches 30..63 if score signx tmp matches 75..100 run scoreboard players remove mapsize menu 1

execute if score #mapCd tmp matches ..0 if score mapsize menu matches ..-1 run scoreboard players set mapsize menu 2
execute if score #mapCd tmp matches ..0 if score mapsize menu matches 3.. run scoreboard players set mapsize menu 0

execute if score #mapCd tmp matches ..0 run function slay:mainmenu/signs/map_settings/prebuilt
execute if score #mapCd tmp matches ..0 if score mapsize menu matches 0 run function slay:mainmenu/map_settings/prebuilt/small/load
execute if score #mapCd tmp matches ..0 if score mapsize menu matches 1 run function slay:mainmenu/map_settings/prebuilt/medium/load
execute if score #mapCd tmp matches ..0 if score mapsize menu matches 2 run function slay:mainmenu/map_settings/prebuilt/big/load
