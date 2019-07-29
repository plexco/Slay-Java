# load correct arena
function slay:game/load_arena/load

# calculate the correct amount of teams
execute store result score humans settings if entity @a[tag=optin]
scoreboard players operation amountTeams gameOptions = humans settings
scoreboard players operation amountTeams gameOptions += AIs menu
#TODO why is there this double implementation?
scoreboard players operation amountTeams settings = amountTeams gameOptions

# distribute colors
function slay:create_field/create_field

# tp cells to play area
# TP AFTER CREATE FIELD IS CALLED OR IT WILL BREAK FOR SOME UNKNOWN REASON!
execute as @e[type=armor_stand,tag=cell] at @s run tp @s ~ ~ ~-53

#set current gameID score
scoreboard players add #gameID gameID 1
execute as @a[tag=optin] run scoreboard players operation @s gameID = #gameID gameID

# check which bot needs to play
scoreboard players set bot1 gameOptions 0
scoreboard players set bot2 gameOptions 0
scoreboard players set bot3 gameOptions 0
scoreboard players set bot4 gameOptions 0
scoreboard players set bot5 gameOptions 0
scoreboard players set bot6 gameOptions 0

execute if score humans settings matches 1.. run scoreboard players set bot1 gameOptions 0
execute if score humans settings matches ..0 run scoreboard players set bot1 gameOptions 1
execute if score humans settings matches 2.. if score amountTeams gameOptions matches 2.. run scoreboard players set bot2 gameOptions 0
execute if score humans settings matches ..1 if score amountTeams gameOptions matches 2.. run scoreboard players set bot2 gameOptions 1
execute if score humans settings matches 3.. if score amountTeams gameOptions matches 3.. run scoreboard players set bot3 gameOptions 0
execute if score humans settings matches ..2 if score amountTeams gameOptions matches 3.. run scoreboard players set bot3 gameOptions 1
execute if score humans settings matches 4.. if score amountTeams gameOptions matches 4.. run scoreboard players set bot4 gameOptions 0
execute if score humans settings matches ..3 if score amountTeams gameOptions matches 4.. run scoreboard players set bot4 gameOptions 1
execute if score humans settings matches 5.. if score amountTeams gameOptions matches 5.. run scoreboard players set bot5 gameOptions 0
execute if score humans settings matches ..4 if score amountTeams gameOptions matches 5.. run scoreboard players set bot5 gameOptions 1
execute if score humans settings matches 6.. if score amountTeams gameOptions matches 6.. run scoreboard players set bot6 gameOptions 0
execute if score humans settings matches ..5 if score amountTeams gameOptions matches 6.. run scoreboard players set bot6 gameOptions 1

# prepare players
clear @a
execute as @a run function slay:player/utils/clear
scoreboard players set @a team 0
scoreboard players set @p[tag=optin,sort=random,scores={team=0}] team 1
scoreboard players set @p[tag=optin,sort=random,scores={team=0}] team 2
scoreboard players set @p[tag=optin,sort=random,scores={team=0}] team 3
scoreboard players set @p[tag=optin,sort=random,scores={team=0}] team 4
scoreboard players set @p[tag=optin,sort=random,scores={team=0}] team 5
scoreboard players set @p[tag=optin,sort=random,scores={team=0}] team 6


scoreboard players set @a forfeitCounter 0
scoreboard players set @a handItems 0

tp @a 0 16 47

# set the gamestate
scoreboard players set gameState menu 1

# make first player start
scoreboard players set #currentPlayer score 100
function slay:game/next_player

# give hats to people
execute as @a[scores={team=1..}] run function slay:player/utils/give_hat

# give books to people
execute as @a run function slay:player/utils/instructions_book

# give books to people
execute as @a[scores={team=1..}] run function slay:player/hotbarmenu/utils/color_display

# misc
scoreboard players set startTimer menu -1
scoreboard objectives setdisplay sidebar