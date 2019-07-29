scoreboard players remove @s turntimer 1

scoreboard players operation #seconds tmp = @s turntimer
scoreboard players operation #seconds tmp /= 20 const
scoreboard players add #seconds tmp 1

title @s times 0 10 0
title @s subtitle [{"score":{"objective":"tmp","name":"#seconds"}}]
title @s title " "

execute if score @s turntimer matches ..0 run function slay:game/next_player