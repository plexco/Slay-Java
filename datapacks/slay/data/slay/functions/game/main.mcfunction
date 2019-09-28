# run this before hotbarmenu or the game will end twice
function slay:game/check_current_player

function slay:player/hotbarmenu/main
function slay:utils/display/money

execute if score afktimer settings matches 1.. as @p[tag=currentPlayer] run function slay:game/afktimer
execute if score gamemode menu matches 1 as @p[tag=currentPlayer] run function slay:game/turntimer

execute as @e[tag=protector_display] at @s run function slay:game/player_feedback/protector