execute as @a[scores={rightClick=1..},nbt={SelectedItemSlot:0}] at @s run function slay:player/hotbarmenu/select/find_clicked
execute as @a[scores={rightClick=1..},nbt={SelectedItemSlot:1}] at @s run function slay:player/hotbarmenu/upgrade/upgrade_hand
execute as @a[scores={rightClick=1..},nbt={SelectedItemSlot:2}] at @s run function slay:player/hotbarmenu/buy/buy_castle
execute as @a[scores={rightClick=1..},nbt={SelectedItemSlot:3}] at @s run function slay:player/hotbarmenu/end_turn
execute as @a[scores={rightClick=1..},nbt={SelectedItemSlot:9}] at @s run function slay:player/hotbarmenu/forfeit/start
execute as @a[scores={rightClick=1..}] at @s run function slay:player/hotbarmenu/utils/replace_items
scoreboard players remove @a[scores={rightClick=1..,endTurn=1..}] endTurn 1
scoreboard players set @a[scores={rightClick=1..}] rightClick 0

function slay:utils/display/money