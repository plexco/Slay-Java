execute as @a[scores={rightClick=1..},nbt={SelectedItemSlot:0}] at @s run function slay:player/hotbarmenu/select/find_clicked
execute as @a[scores={rightClick=1..},nbt={SelectedItemSlot:1}] at @s run function slay:player/hotbarmenu/upgrade/upgrade_hand
execute as @a[scores={rightClick=1..},nbt={SelectedItemSlot:2}] at @s run function slay:player/hotbarmenu/upgrade/buy_castle
execute as @a[scores={rightClick=1..},nbt={SelectedItemSlot:3}] at @s run function slay:game/next_player
execute as @a[scores={rightClick=1..},nbt={SelectedItemSlot:8}] at @s run function slay:player/hotbarmenu/forfeit/start
execute as @a[scores={rightClick=1..},nbt={SelectedItemSlot:5}] at @s run function slay:player/hotbarmenu/forfeit/start
execute as @a[scores={rightClick=1..,forfeitCounter=..0},tag=currentPlayer] at @s run function slay:player/hotbarmenu/utils/replace_items
scoreboard players set @a[scores={rightClick=1..}] rightClick 0
execute as @a[tag=currentPlayer,scores={forfeitCounter=1..}] run function slay:player/hotbarmenu/forfeit/undo

function slay:utils/display/money