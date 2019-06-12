function slay:mainmenu/signs/map_settings/generated/seed_calc
function slay:mainmenu/subposition/get
execute if score signy tmp matches 20..49 if score signx tmp matches 0..20 run scoreboard players remove #seed1 tmp 1
execute if score signy tmp matches 60..72 if score signx tmp matches 0..20 run scoreboard players add #seed1 tmp 1
execute if score signy tmp matches 20..49 if score signx tmp matches 21..40 run scoreboard players remove #seed10 tmp 1
execute if score signy tmp matches 60..72 if score signx tmp matches 21..40 run scoreboard players add #seed10 tmp 1
execute if score signy tmp matches 20..49 if score signx tmp matches 41..60 run scoreboard players remove #seed100 tmp 1
execute if score signy tmp matches 60..72 if score signx tmp matches 41..60 run scoreboard players add #seed100 tmp 1
execute if score signy tmp matches 20..49 if score signx tmp matches 61..80 run scoreboard players remove #seed1000 tmp 1
execute if score signy tmp matches 60..72 if score signx tmp matches 61..80 run scoreboard players add #seed1000 tmp 1
execute if score signy tmp matches 20..49 if score signx tmp matches 81..100 run scoreboard players remove #seed10000 tmp 1
execute if score signy tmp matches 60..72 if score signx tmp matches 81..100 run scoreboard players add #seed10000 tmp 1

execute if score #seed1 tmp matches 10.. run scoreboard players set #seed1 tmp 9
execute if score #seed1 tmp matches ..-1 run scoreboard players set #seed1 tmp 0
execute if score #seed10 tmp matches 10.. run scoreboard players set #seed10 tmp 9
execute if score #seed10 tmp matches ..-1 run scoreboard players set #seed10 tmp 0
execute if score #seed100 tmp matches 10.. run scoreboard players set #seed100 tmp 9
execute if score #seed100 tmp matches ..-1 run scoreboard players set #seed100 tmp 0
execute if score #seed1000 tmp matches 10.. run scoreboard players set #seed1000 tmp 9
execute if score #seed1000 tmp matches ..-1 run scoreboard players set #seed1000 tmp 0
execute if score #seed10000 tmp matches 10.. run scoreboard players set #seed10000 tmp 9
execute if score #seed10000 tmp matches ..-1 run scoreboard players set #seed10000 tmp 0

scoreboard players operation seed settings = #seed10000 tmp
scoreboard players operation seed settings *= 10 const
scoreboard players operation seed settings += #seed1000 tmp
scoreboard players operation seed settings *= 10 const
scoreboard players operation seed settings += #seed100 tmp
scoreboard players operation seed settings *= 10 const
scoreboard players operation seed settings += #seed10 tmp
scoreboard players operation seed settings *= 10 const
scoreboard players operation seed settings += #seed1 tmp

function slay:mainmenu/signs/map_settings/generated/seed