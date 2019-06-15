tag @s remove currentPlayer

# if they are optin and a game is running, is it the game they left with?
execute if score gameState menu matches 0 run function slay:player/handling/reset_player
execute if score gameState menu matches 1 if score @s gameID = #gameID gameID run function slay:player/handling/return_to_own_game
execute if score gameState menu matches 1 unless score @s gameID = #gameID gameID run function slay:player/handling/reset_player

function slay:player/handling/teleport
scoreboard players set @s leave 0