function slay:mainmenu/subposition/get
execute if score signy tmp matches 30..63 if score signx tmp matches 0..25 run scoreboard players add gamemode menu 1
execute if score signy tmp matches 30..63 if score signx tmp matches 75..100 run scoreboard players remove gamemode menu 1

execute if score gamemode menu matches ..-1 run scoreboard players set gamemode menu 1
execute if score gamemode menu matches 2.. run scoreboard players set gamemode menu 0

function slay:mainmenu/signs/general/mode
function slay:mainmenu/signs/general/timer