scoreboard players set signx tmp 0
scoreboard players set signy tmp 0

execute store result score signx tmp run data get entity @s Pos[0] 100
execute store result score signy tmp run data get entity @s Pos[1] 100

scoreboard players operation signx tmp %= 100 const
scoreboard players operation signy tmp %= 100 const