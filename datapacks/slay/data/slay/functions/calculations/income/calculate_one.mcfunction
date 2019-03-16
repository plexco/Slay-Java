#
# run as the capital
# 

scoreboard players set @s income 0
scoreboard players set @s wages 0

scoreboard players set #peasant tmp 0
scoreboard players set #spearman tmp 0
scoreboard players set #knight tmp 0
scoreboard players set #baron tmp 0
scoreboard players operation #tmp tmp = @s group

execute as @e[type=armor_stand,tag=cell] run scoreboard players operation @s group -= #tmp tmp

execute at @e[type=armor_stand,tag=cell,tag=!tree,tag=!palm,scores={group=0}] run scoreboard players add @s income 1

execute at @e[type=armor_stand,tag=cell,tag=peasant,scores={group=0}] run scoreboard players add #peasant tmp 1
execute at @e[type=armor_stand,tag=cell,tag=spearman,scores={group=0}] run scoreboard players add #spearman tmp 1
execute at @e[type=armor_stand,tag=cell,tag=knight,scores={group=0}] run scoreboard players add #knight tmp 1
execute at @e[type=armor_stand,tag=cell,tag=baron,scores={group=0}] run scoreboard players add #baron tmp 1

scoreboard players operation #peasant tmp *= peasant wages
scoreboard players operation #spearman tmp *= spearman wages
scoreboard players operation #knight tmp *= knight wages
scoreboard players operation #baron tmp *= baron wages

scoreboard players operation @s wages += #peasant tmp
scoreboard players operation @s wages += #spearman tmp
scoreboard players operation @s wages += #knight tmp
scoreboard players operation @s wages += #baron tmp

scoreboard players operation @s money += @s income
scoreboard players operation @s money -= @s wages

execute if score @s money matches ..-1 as @e[type=armor_stand,scores={group=0,handItem=2..5}] run function slay:utils/remove/killunit
execute if score @s money matches ..-1 run scoreboard players operation @s money += @s wages

execute as @e[type=armor_stand,tag=cell] run scoreboard players operation @s group += #tmp tmp