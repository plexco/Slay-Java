scoreboard players operation @e[type=armor_stand,tag=cell,tag=activegroup,limit=1,tag=capital,distance=0.1..] money += @s money
execute as @e[type=armor_stand,tag=cell,tag=activegroup,limit=1,tag=capital,distance=0.1..] run function slay:player/hotbarmenu/utils/update_as_display
function slay:calculations/capitals/remove_capital