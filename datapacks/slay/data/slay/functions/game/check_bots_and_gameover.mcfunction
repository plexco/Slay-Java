execute if score #currentPlayer score matches 1 if score bot1 gameOptions matches 1 run say Bot1's turn.
execute if score #currentPlayer score matches 2 if score bot2 gameOptions matches 1 run say Bot2's turn.
execute if score #currentPlayer score matches 3 if score bot3 gameOptions matches 1 run say Bot3's turn.
execute if score #currentPlayer score matches 4 if score bot4 gameOptions matches 1 run say Bot4's turn.
execute if score #currentPlayer score matches 5 if score bot5 gameOptions matches 1 run say Bot5's turn.
execute if score #currentPlayer score matches 6 if score bot6 gameOptions matches 1 run say Bot6's turn.

scoreboard players set #caps tmp 0
execute as @e[type=armor_stand,tag=cell,tag=capital] if score @s team = #currentPlayer score run scoreboard players add #caps tmp 1
execute if entity @p[tag=currentPlayer] if score #caps tmp matches ..0 run tellraw @a [">>>",{"translate":"slay.player.lostCapitals","color":"red","with":[{"selector":"@p[tag=currentPlayer]","color":"dark_red"}]}]
execute if entity @p[tag=currentPlayer] if score #caps tmp matches ..0 run playsound minecraft:block.bell.use master @a
execute if entity @p[tag=currentPlayer] if score #caps tmp matches ..0 run scoreboard players set @p[tag=currentPlayer] team 0
# execute if entity @p[tag=currentPlayer] if score #caps tmp matches ..0 run function slay:game/next_player

# tellraw @a ["",{"score":{"name":"#caps","objective":"tmp"}},{"text":" capitals"}]
execute unless entity @p[tag=currentPlayer] if score #currentPlayer score matches 1 if score bot1 gameOptions matches 1 if score #caps tmp matches ..0 run tellraw @a [">>>",{"translate":"slay.player.lostCapitals","color":"red","with":["Bot1"]}]
execute unless entity @p[tag=currentPlayer] if score #currentPlayer score matches 1 if score bot1 gameOptions matches 1 if score #caps tmp matches ..0 run scoreboard players set bot1 gameOptions 0
execute unless entity @p[tag=currentPlayer] if score #currentPlayer score matches 2 if score bot2 gameOptions matches 1 if score #caps tmp matches ..0 run tellraw @a [">>>",{"translate":"slay.player.lostCapitals","color":"red","with":["Bot2"]}]
execute unless entity @p[tag=currentPlayer] if score #currentPlayer score matches 2 if score bot2 gameOptions matches 1 if score #caps tmp matches ..0 run scoreboard players set bot2 gameOptions 0
execute unless entity @p[tag=currentPlayer] if score #currentPlayer score matches 3 if score bot3 gameOptions matches 1 if score #caps tmp matches ..0 run tellraw @a [">>>",{"translate":"slay.player.lostCapitals","color":"red","with":["Bot3"]}]
execute unless entity @p[tag=currentPlayer] if score #currentPlayer score matches 3 if score bot3 gameOptions matches 1 if score #caps tmp matches ..0 run scoreboard players set bot3 gameOptions 0
execute unless entity @p[tag=currentPlayer] if score #currentPlayer score matches 4 if score bot4 gameOptions matches 1 if score #caps tmp matches ..0 run tellraw @a [">>>",{"translate":"slay.player.lostCapitals","color":"red","with":["Bot4"]}]
execute unless entity @p[tag=currentPlayer] if score #currentPlayer score matches 4 if score bot4 gameOptions matches 1 if score #caps tmp matches ..0 run scoreboard players set bot4 gameOptions 0
execute unless entity @p[tag=currentPlayer] if score #currentPlayer score matches 5 if score bot5 gameOptions matches 1 if score #caps tmp matches ..0 run tellraw @a [">>>",{"translate":"slay.player.lostCapitals","color":"red","with":["Bot5"]}]
execute unless entity @p[tag=currentPlayer] if score #currentPlayer score matches 5 if score bot5 gameOptions matches 1 if score #caps tmp matches ..0 run scoreboard players set bot5 gameOptions 0
execute unless entity @p[tag=currentPlayer] if score #currentPlayer score matches 6 if score bot6 gameOptions matches 1 if score #caps tmp matches ..0 run tellraw @a [">>>",{"translate":"slay.player.lostCapitals","color":"red","with":["Bot6"]}]
execute unless entity @p[tag=currentPlayer] if score #currentPlayer score matches 6 if score bot6 gameOptions matches 1 if score #caps tmp matches ..0 run scoreboard players set bot6 gameOptions 0

# Game Over?
#TO DO: game doesn't end when only one bot is left
scoreboard players set #ply tmp 0
execute as @a[scores={team=1..}] run scoreboard players add #ply tmp 1
execute if score bot1 gameOptions matches 1 run scoreboard players add #ply tmp 1
execute if score bot2 gameOptions matches 1 run scoreboard players add #ply tmp 1
execute if score bot3 gameOptions matches 1 run scoreboard players add #ply tmp 1
execute if score bot4 gameOptions matches 1 run scoreboard players add #ply tmp 1
execute if score bot5 gameOptions matches 1 run scoreboard players add #ply tmp 1
execute if score bot6 gameOptions matches 1 run scoreboard players add #ply tmp 1

execute if score #ply tmp matches ..1 run function slay:game/gameover

#TODO: rewrite when bots are implemented
execute if entity @p[tag=currentPlayer] if score #caps tmp matches ..0 run function slay:game/next_player
execute unless score #ply tmp matches ..1 unless entity @p[tag=currentPlayer] run function slay:game/next_player