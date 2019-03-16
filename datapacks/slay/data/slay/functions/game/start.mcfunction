scoreboard players operation amountTeams gameOptions = amountTeams settings
execute if score humans settings matches 1.. run scoreboard players set player1 gameOptions 1
execute if score humans settings matches ..0 run scoreboard players set player1 gameOptions 0
execute if score humans settings matches 2.. if score amountTeams gameOptions matches 2.. run scoreboard players set player2 gameOptions 1
execute if score humans settings matches ..1 if score amountTeams gameOptions matches 2.. run scoreboard players set player2 gameOptions 0
execute if score humans settings matches 3.. if score amountTeams gameOptions matches 3.. run scoreboard players set player3 gameOptions 1
execute if score humans settings matches ..2 if score amountTeams gameOptions matches 3.. run scoreboard players set player3 gameOptions 0
execute if score humans settings matches 4.. if score amountTeams gameOptions matches 4.. run scoreboard players set player4 gameOptions 1
execute if score humans settings matches ..3 if score amountTeams gameOptions matches 4.. run scoreboard players set player4 gameOptions 0
execute if score humans settings matches 5.. if score amountTeams gameOptions matches 5.. run scoreboard players set player5 gameOptions 1
execute if score humans settings matches ..4 if score amountTeams gameOptions matches 5.. run scoreboard players set player5 gameOptions 0
execute if score humans settings matches 6.. if score amountTeams gameOptions matches 6.. run scoreboard players set player6 gameOptions 1
execute if score humans settings matches ..5 if score amountTeams gameOptions matches 6.. run scoreboard players set player6 gameOptions 0


clear @a
scoreboard players reset @a team
execute as @a[tag=optin] run scoreboard players add @a[tag=optin] team
