scoreboard players set AIs tmp 6
scoreboard players operation AIs tmp -= optinPlayers menu
execute if score AIs tmp < AIs menu run scoreboard players operation AIs menu = AIs tmp
execute if score AIs menu matches ..-1 run scoreboard players set AIs menu 0

function slay:mainmenu/signs/player_settings/ais

fill -3 16 123 -2 18 123 air
execute if score AIs menu matches 1.. run function slay:mainmenu/signs/player_settings/ai_signs/ai1
execute if score AIs menu matches 2.. run function slay:mainmenu/signs/player_settings/ai_signs/ai2
execute if score AIs menu matches 3.. run function slay:mainmenu/signs/player_settings/ai_signs/ai3
execute if score AIs menu matches 4.. run function slay:mainmenu/signs/player_settings/ai_signs/ai4
execute if score AIs menu matches 5.. run function slay:mainmenu/signs/player_settings/ai_signs/ai5
execute if score AIs menu matches 6 run function slay:mainmenu/signs/player_settings/ai_signs/ai6
