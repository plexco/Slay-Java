execute as @a[tag=currentPlayer,scores={rightClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{type:"click"}}}] at @s run function slay:player/hotbarmenu/select/find_clicked
execute as @a[tag=currentPlayer,scores={rightClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{type:"buyUnit"}}}] at @s run function slay:player/hotbarmenu/upgrade/upgrade_hand
execute as @a[tag=currentPlayer,scores={rightClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{type:"buyCastle"}}}] at @s run function slay:player/hotbarmenu/upgrade/buy_castle
execute as @a[tag=currentPlayer,scores={rightClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{type:"end"}}}] at @s run function slay:game/check_end_turn
execute as @a[tag=currentPlayer,scores={rightClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{type:"forfeit"}}}] at @s run function slay:player/hotbarmenu/forfeit/start
execute as @a[tag=currentPlayer,scores={rightClick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{type:"forfeitReal"}}}] at @s run function slay:player/hotbarmenu/forfeit/forfeit
execute as @a[tag=currentPlayer,scores={rightClick=1..,forfeitCounter=..0},tag=currentPlayer] at @s run function slay:player/hotbarmenu/utils/replace_items
scoreboard players remove @a[scores={rightClick=1..,endTurn=1..},tag=currentPlayer] endTurn 1 
scoreboard players set @a[scores={rightClick=1..}] rightClick 0
execute as @a[tag=currentPlayer,scores={forfeitCounter=1..}] run function slay:player/hotbarmenu/forfeit/undo

execute as @e[type=item] run data merge entity @s {PickupDelay:0}