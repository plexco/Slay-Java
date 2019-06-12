scoreboard players set startTimer menu -1
tellraw @a [">",{"translate":"slay.menu.start.abort","color":"dark_red","with":[{"selector":"@s"}]}]
function slay:mainmenu/signs/start