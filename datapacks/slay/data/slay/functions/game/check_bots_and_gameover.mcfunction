execute if score #currentPlayer score matches 1 if score bot1 gameOptions matches 1 run say Bot1's turn.
execute if score #currentPlayer score matches 2 if score bot2 gameOptions matches 1 run say Bot2's turn.
execute if score #currentPlayer score matches 3 if score bot3 gameOptions matches 1 run say Bot3's turn.
execute if score #currentPlayer score matches 4 if score bot4 gameOptions matches 1 run say Bot4's turn.
execute if score #currentPlayer score matches 5 if score bot5 gameOptions matches 1 run say Bot5's turn.
execute if score #currentPlayer score matches 6 if score bot6 gameOptions matches 1 run say Bot6's turn.

scoreboard players set #caps tmp 0
execute as @e[type=armor_stand,tag=cell,tag=capital] if score @s team = #currentPlayer score run scoreboard players add #caps tmp 1
execute if entity @p[tag=currentPlayer] if score #caps tmp matches ..0 run tellraw @a ["",{"selector":"@p[tag=currentPlayer]"},{"text":" lost all their capitals and is out of the game.","color":"red"}]
execute if entity @p[tag=currentPlayer] if score #caps tmp matches ..0 run scoreboard players set @p[tag=currentPlayer] team 0
# execute if entity @p[tag=currentPlayer] if score #caps tmp matches ..0 run function slay:game/next_player

# tellraw @a ["",{"score":{"name":"#caps","objective":"tmp"}},{"text":" capitals"}]
execute unless entity @p[tag=currentPlayer] if score #currentPlayer score matches 1 if score bot1 gameOptions matches 1 if score #caps tmp matches ..0 run tellraw @a ["Bot1 lost all their capitals and is out of the game."]
execute unless entity @p[tag=currentPlayer] if score #currentPlayer score matches 1 if score bot1 gameOptions matches 1 if score #caps tmp matches ..0 run scoreboard players set bot1 gameOptions 0
execute unless entity @p[tag=currentPlayer] if score #currentPlayer score matches 2 if score bot2 gameOptions matches 1 if score #caps tmp matches ..0 run tellraw @a ["Bot2 lost all their capitals and is out of the game."]
execute unless entity @p[tag=currentPlayer] if score #currentPlayer score matches 2 if score bot2 gameOptions matches 1 if score #caps tmp matches ..0 run scoreboard players set bot2 gameOptions 0
execute unless entity @p[tag=currentPlayer] if score #currentPlayer score matches 3 if score bot3 gameOptions matches 1 if score #caps tmp matches ..0 run tellraw @a ["Bot3 lost all their capitals and is out of the game."]
execute unless entity @p[tag=currentPlayer] if score #currentPlayer score matches 3 if score bot3 gameOptions matches 1 if score #caps tmp matches ..0 run scoreboard players set bot3 gameOptions 0
execute unless entity @p[tag=currentPlayer] if score #currentPlayer score matches 4 if score bot4 gameOptions matches 1 if score #caps tmp matches ..0 run tellraw @a ["Bot4 lost all their capitals and is out of the game."]
execute unless entity @p[tag=currentPlayer] if score #currentPlayer score matches 4 if score bot4 gameOptions matches 1 if score #caps tmp matches ..0 run scoreboard players set bot4 gameOptions 0
execute unless entity @p[tag=currentPlayer] if score #currentPlayer score matches 5 if score bot5 gameOptions matches 1 if score #caps tmp matches ..0 run tellraw @a ["Bot5 lost all their capitals and is out of the game."]
execute unless entity @p[tag=currentPlayer] if score #currentPlayer score matches 5 if score bot5 gameOptions matches 1 if score #caps tmp matches ..0 run scoreboard players set bot5 gameOptions 0
execute unless entity @p[tag=currentPlayer] if score #currentPlayer score matches 6 if score bot6 gameOptions matches 1 if score #caps tmp matches ..0 run tellraw @a ["Bot6 lost all their capitals and is out of the game."]
execute unless entity @p[tag=currentPlayer] if score #currentPlayer score matches 6 if score bot6 gameOptions matches 1 if score #caps tmp matches ..0 run scoreboard players set bot6 gameOptions 0

scoreboard players set #ply tmp 0
execute as @a[scores={team=1..}] run scoreboard players add #ply tmp 1
execute if score bot1 gameOptions matches 1 run scoreboard players add #ply tmp 1
execute if score bot2 gameOptions matches 1 run scoreboard players add #ply tmp 1
execute if score bot3 gameOptions matches 1 run scoreboard players add #ply tmp 1
execute if score bot4 gameOptions matches 1 run scoreboard players add #ply tmp 1
execute if score bot5 gameOptions matches 1 run scoreboard players add #ply tmp 1
execute if score bot6 gameOptions matches 1 run scoreboard players add #ply tmp 1

execute if score #ply tmp matches ..1 run tellraw @a ["",{"text":"Game Over\n","color":"dark_green"},{"selector":"@a[scores={team=1..}]","color":"green"},{"text":" won!","color":"green"}]

#TODO: rewrite when bots are implemented
execute if entity @p[tag=currentPlayer] if score #caps tmp matches ..0 run function slay:game/next_player
execute unless score #ply tmp matches ..1 unless entity @p[tag=currentPlayer] run function slay:game/next_player