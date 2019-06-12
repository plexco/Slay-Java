function slay:mainmenu/subposition/get
execute if score signy tmp matches 30..63 if score signx tmp matches 0..25 run scoreboard players add maptype menu 1
execute if score signy tmp matches 30..63 if score signx tmp matches 75..100 run scoreboard players remove maptype menu 1

execute if score maptype menu matches ..-1 run scoreboard players set maptype menu 1
execute if score maptype menu matches 2.. run scoreboard players set maptype menu 0

function slay:mainmenu/map_settings/sign_handler