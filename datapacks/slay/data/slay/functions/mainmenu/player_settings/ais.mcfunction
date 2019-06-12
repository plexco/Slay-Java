function slay:mainmenu/subposition/get
execute if score signy tmp matches 63..74 run scoreboard players add AIs menu 1
execute if score signy tmp matches 30..41 run scoreboard players remove AIs menu 1

function slay:mainmenu/player_settings/calculate_ais