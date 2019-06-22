execute if score gameState menu matches 0 run function slay:mainmenu/functions/main
execute if score gameState menu matches 1 run function slay:game/main
execute if score gameState menu matches 2 run function slay:mapcreator/main

execute if score gameState menu matches 0..1 run function slay:player/handling/handle