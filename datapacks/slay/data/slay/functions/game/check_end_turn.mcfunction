scoreboard players add @s endTurn 2

scoreboard players set #cap tmp 0
scoreboard players set #mve tmp 0

execute as @e[type=armor_stand,tag=cell,scores={handItem=2..5},tag=moveable] if score @s team = #currentPlayer score run scoreboard players add #mve tmp 1
execute as @e[type=armor_stand,tag=cell,scores={handItem=1,money=10..}] if score @s team = #currentPlayer score run scoreboard players add #cap tmp 1

execute if score #cap tmp matches 1.. if score #mve tmp matches 1.. unless score @s endTurn matches 3.. run tellraw @p[tag=currentPlayer] [{"text":"","extra":["You still have ",{"text":"men","color":"dark_red"}," who can move and ",{"text":"capitals","color":"dark_red"}," that can afford new men. Do you really want to end your turn?"],"color":"red"}]
execute if score #cap tmp matches 1.. unless score #mve tmp matches 1.. unless score @s endTurn matches 3.. run tellraw @p[tag=currentPlayer] [{"text":"","extra":["You still have ",{"text":"capitals","color":"dark_red"}," that can afford new men. Do you really want to end your turn?"],"color":"red"}]
execute unless score #cap tmp matches 1.. if score #mve tmp matches 1.. unless score @s endTurn matches 3.. run tellraw @p[tag=currentPlayer] [{"text":"","extra":["You still have ",{"text":"men","color":"dark_red"}," who can move. Do you really want to end your turn?"],"color":"red"}]
execute unless score #cap tmp matches 1.. unless score #mve tmp matches 1.. unless score @s endTurn matches 3.. run function slay:game/next_player
execute if score @s endTurn matches 3.. run function slay:game/next_player