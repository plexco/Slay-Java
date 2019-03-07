function slay:calculations/joined_cells/run

scoreboard players operation #tmp group = #group group

function slay:calculations/capitals/check_multiple
tag @e[type=armor_stand,tag=activegroup] remove activegroup