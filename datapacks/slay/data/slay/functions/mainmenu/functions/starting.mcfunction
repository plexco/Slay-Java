scoreboard players remove startTimer menu 1
scoreboard players operation startTimerS menu = startTimer menu
scoreboard players operation startTimerS menu /= 20 const
scoreboard players add startTimerS menu 1
function slay:mainmenu/signs/abort_start
title @a[tag=optin] actionbar ["",{"translate":"slay.menu.start.timeLeft","with":[{"score":{"name":"startTimerS","objective":"menu"}}]}," | ",{"translate":"slay.menu.optedIn","color":"dark_green"}]
title @a[tag=!optin] actionbar ["",{"translate":"slay.menu.start.timeLeft","with":[{"score":{"name":"startTimerS","objective":"menu"}}]}," | ",{"translate":"slay.menu.optedOut","color":"dark_red"}]