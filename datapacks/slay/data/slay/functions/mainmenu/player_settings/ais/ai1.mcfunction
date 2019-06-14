function slay:mainmenu/subposition/get
execute if score signy tmp matches 30..63 if score signx tmp matches 0..25 run scoreboard players add ai1 difficulty 1
execute if score signy tmp matches 30..63 if score signx tmp matches 75..100 run scoreboard players remove ai1 difficulty 1

execute if score ai1 difficulty matches ..-1 run scoreboard players set ai1 difficulty 2
execute if score ai1 difficulty matches 3.. run scoreboard players set ai1 difficulty 0

function slay:mainmenu/signs/player_settings/ai_signs/ai1
function slay:mainmenu/player_settings/place_ai_armorstands