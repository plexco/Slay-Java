scoreboard players add @s afktimer 1

scoreboard players operation @s tmp = @s afktimer
scoreboard players operation @s tmp -= afktimer settings

execute if score @s tmp matches -100.. run title @s times 0 10 0
execute if score @s tmp matches -100.. run title @s subtitle [{"translate":"slay.game.afk.warn","color":"red"}," ",{"translate":"slay.game.afk.warnmsg","color":"white"}]
execute if score @s tmp matches -100.. run title @s title " "
execute if score @s tmp matches -100.. at @s run playsound minecraft:block.note_block.bell voice @s ~ ~ ~ 1 0.1

execute if score @s tmp matches 0.. run function slay:game/next_player