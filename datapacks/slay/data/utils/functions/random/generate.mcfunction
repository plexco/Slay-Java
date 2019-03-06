execute store result score @s random run data get entity @s UUIDLeast 0.0000000001
execute if score @s random matches ..0 run scoreboard players operation @s random *= -1 const
scoreboard players operation @s random %= #modulo random