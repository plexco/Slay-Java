
execute as @e[type=armor_stand,tag=cell] at @s store result score @s tmp if entity @e[type=armor_stand,tag=cell,distance=0.1..1.3]

tag @e[type=armor_stand,tag=cell,scores={tmp=..5}] add border