tellraw @a ["",{"selector":"@s","color":"red", "bold":true},{"text":"forfeited and is out of the game.","color":"red"}]
scoreboard players set @s team 0
scoreboard players set @s forfeitCounter 0
clear @s
tag @s remove forfeit

function slay:game/next_player

#TODO: Player keeps forfitting rod, teams shift