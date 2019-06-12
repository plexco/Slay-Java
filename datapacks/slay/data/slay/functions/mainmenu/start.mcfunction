scoreboard players set startTimer menu 200
tellraw @a ["> ",{"translate":"slay.menu.start","color":"dark_green","with":[{"selector":"@s"}]}]
function slay:mainmenu/signs/abort_start