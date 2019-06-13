scoreboard players remove startTimer menu 1
scoreboard players operation startTimerS menu = startTimer menu
scoreboard players operation startTimerS menu /= 20 const
scoreboard players add startTimerS menu 1
function slay:mainmenu/signs/abort_start
title @a[tag=optin] actionbar ["",{"translate":"slay.menu.start.timeLeft","with":[{"score":{"name":"startTimerS","objective":"menu"}}]}," | ",{"translate":"slay.menu.optedIn","color":"dark_green"}]
title @a[tag=!optin] actionbar ["",{"translate":"slay.menu.start.timeLeft","with":[{"score":{"name":"startTimerS","objective":"menu"}}]}," | ",{"translate":"slay.menu.optedOut","color":"dark_red"}]

# abort start?
function slay:mainmenu/player_settings/check_playability
execute if score #players tmp matches ..1 run tellraw @a ["> ",{"translate":"slay.menu.abort.players","color":"dark_red"}]
execute if score #players tmp matches ..1 run scoreboard players set startTimer menu -1
execute if score #players tmp matches ..1 run function slay:mainmenu/signs/start

execute store result score #fieldsize tmp if entity @e[type=armor_stand,tag=cell]
execute if score #fieldsize tmp matches ..39 run tellraw @a ["> ",{"translate":"slay.menu.abort.fieldsize","color":"dark_red"}]
execute if score #fieldsize tmp matches ..39 run scoreboard players set startTimer menu -1
execute if score #fieldsize tmp matches ..39 run function slay:mainmenu/signs/start

# start
execute if score startTimer menu matches 0 run function slay:game/start