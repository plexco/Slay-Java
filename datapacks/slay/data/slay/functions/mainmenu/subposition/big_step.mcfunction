scoreboard players remove #maxBigSteps tmp 1
execute if block ~ ~ ~ #minecraft:wall_signs run function slay:mainmenu/subposition/small_step
execute unless block ~ ~ ~ #minecraft:wall_signs if score #maxBigSteps tmp matches 1.. positioned ^ ^ ^0.25 run function slay:mainmenu/subposition/big_step