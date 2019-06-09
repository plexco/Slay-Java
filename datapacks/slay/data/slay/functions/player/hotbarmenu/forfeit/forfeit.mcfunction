tellraw @a ["@s forfeited."]
scoreboard players set @s team 0
scoreboard players set @s forfeitCounter 0
clear @s
tag @s remove forfeit

function slay:game/next_player

#TODO: Player keeps forfitting rod, teams shift