execute if score @p[tag=currentPlayer] handItem matches 1.. run function slay:player/utils/put_unit_back
scoreboard players reset @a endTurn
scoreboard players reset @a afktimer
scoreboard players reset @a turntimer
scoreboard players set @p[tag=currentPlayer] handItem 0
title @p[tag=currentPlayer] actionbar ""
execute as @a run function slay:player/utils/clear
tag @a[tag=currentPlayer] remove currentPlayer
scoreboard players add #currentPlayer score 1
execute if score #currentPlayer score > amountTeams gameOptions run scoreboard players set #currentPlayer score 1
execute as @a[tag=optin] if score @s team = #currentPlayer score run tag @s add currentPlayer

title @a times 20 60 20
title @a subtitle ["",{"translate":"slay.player.turn","with":[{"selector":"@p[tag=currentPlayer]"}]}]
title @a title ""
playsound minecraft:block.note_block.pling master @p[tag=currentPlayer]

tag @e[tag=selected] remove selected
execute as @p[tag=currentPlayer] run function slay:player/hotbarmenu/utils/replace_items
execute as @e[type=armor_stand,tag=cell] run data merge entity @s {Glowing:0b}

tag @e[tag=moveable] remove moveable
execute as @e[type=armor_stand,tag=cell,scores={handItem=2..5}] if score @s team = #currentPlayer score run tag @s add moveable

tag @e[tag=changed] remove changed

execute as @e[type=armor_stand,tag=cell] if score @s team = #currentPlayer score run function slay:calculations/trees/create
execute as @e[type=armor_stand,tag=cell,scores={handItem=2..5}] if score @s team = #currentPlayer score run function slay:game/grave_calculation
execute as @e[type=armor_stand,tag=cell,tag=capital] if score @s team = #currentPlayer score run function slay:calculations/income/calculate_one
execute as @e[type=armor_stand,tag=cell] if score @s team = #currentPlayer score at @s run function slay:game/player_feedback/earnings
execute as @e[type=armor_stand,tag=cell] run function slay:player/hotbarmenu/utils/update_as_display
function slay:calculations/protection/calculate

function slay:calculations/ranking/update
function slay:game/check_bots_and_gameover

scoreboard players operation @p[tag=currentPlayer] turntimer = roundtimer settings