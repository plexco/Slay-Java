tellraw @a [">>>",{"translate":"slay.player.forfeit","color":"red","with":[{"selector":"@s","color":"dark_red"}]}]
playsound minecraft:block.bell.use master @a
scoreboard players set @s team 0
scoreboard players set @s forfeitCounter 0
clear @s
tag @s remove forfeit

function slay:game/next_player

#TODO: Player keeps forfitting rod, teams shift