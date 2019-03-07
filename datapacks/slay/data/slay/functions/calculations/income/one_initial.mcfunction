scoreboard players set @s income 0
scoreboard players set @s wages 0

scoreboard players operation #tmp tmp = @s group

execute as @e[type=armor_stand,tag=cell] run scoreboard players operation @s group -= #tmp tmp

execute at @e[type=armor_stand,tag=cell,tag=!tree,tag=!palm,scores={group=0}] run scoreboard players add @s income 1

scoreboard players operation @s money += @s income
scoreboard players operation @s money *= 4 const

execute as @e[type=armor_stand,tag=cell] run scoreboard players operation @s group += #tmp tmp