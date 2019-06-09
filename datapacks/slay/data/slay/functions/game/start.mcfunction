scoreboard players operation amountTeams gameOptions = amountTeams settings
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


clear @a
scoreboard players set @a team 0
scoreboard players set @p[tag=optin,sort=random,scores={team=0}] team 1
scoreboard players set @p[tag=optin,sort=random,scores={team=0}] team 2
scoreboard players set @p[tag=optin,sort=random,scores={team=0}] team 3
scoreboard players set @p[tag=optin,sort=random,scores={team=0}] team 4
scoreboard players set @p[tag=optin,sort=random,scores={team=0}] team 5
scoreboard players set @p[tag=optin,sort=random,scores={team=0}] team 6

scoreboard players set #currentPlayer score 100

scoreboard players set @a forfeitCounter 0
scoreboard players set @a handItems 0

function slay:game/next_player