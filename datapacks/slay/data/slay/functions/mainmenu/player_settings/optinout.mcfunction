execute store result score optinPlayers menu if entity @a[tag=optin]
tag @s[tag=optin] add optedin
tag @s[tag=optin] remove optin
execute if score optinPlayers menu matches ..5 run tag @s[tag=!optedin] add optin
execute if score optinPlayers menu matches 6 run tellraw @s[tag=!optedin] ["> ",{"translate":"slay.menu.gameFull","color":"dark_red"}]
tag @s[tag=optedin] remove optedin

function slay:mainmenu/signs/player_settings/players
function slay:mainmenu/player_settings/calculate_ais

scoreboard players set @s rightClick 0
scoreboard players reset @s optin
scoreboard players set @s[tag=optin] optin 1