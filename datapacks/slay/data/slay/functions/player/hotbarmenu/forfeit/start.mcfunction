execute as @s[tag=forfeit] run function slay:player/hotbarmenu/forfeit/forfeit

tag @s add forfeit
scoreboard players set @s forfeitCounter 100
clear @s
replaceitem entity @s hotbar.5 minecraft:carrot_on_a_stick{display:{Name:"\"Forfeit for real yo\""}}