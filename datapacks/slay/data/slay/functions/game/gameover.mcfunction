# called when the game is over

# announce winner
tellraw @a ["",{"text":"-----------------------\n","color":"dark_green","extra":[{"translate":"slay.gameOver"},"\n\n",{"translate":"slay.winMessage","with":[{"selector":"@a[scores={team=1..}]"}],"color":"green"},"\n",{"text":"-----------------------"}]}]

# reset players
clear @a
execute as @a at @s run tp @s ~ ~ ~53
tag @a[tag=optin] remove optin
tag @a[tag=currentPlayer] remove currentPlayer
function slay:mainmenu/signs/player_settings/players

# set global scores
# scoreboard players add #gameID gameID 1
scoreboard players set gameState menu 0

# tp cells to lobby area
execute as @e[type=armor_stand,tag=cell] at @s run tp @s ~ ~ ~53

# set sign
function slay:mainmenu/signs/start

#clear title
title @a title ""
title @a actionbar ""