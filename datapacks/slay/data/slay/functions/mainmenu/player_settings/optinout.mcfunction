tag @s[tag=optin] add optedin
tag @s[tag=optin] remove optin
tag @s[tag=!optedin] add optin
tag @s[tag=optedin] remove optedin

scoreboard players set optinPlayers menu 0
execute store result score optinPlayers menu if entity @a[tag=optin]
function slay:mainmenu/signs/player_settings/players
function slay:mainmenu/player_settings/calculate_ais