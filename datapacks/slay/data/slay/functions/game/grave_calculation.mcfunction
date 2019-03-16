
scoreboard players set #tmp tmp 0
execute at @e[type=armor_stand,tag=cell] if score @e[type=armor_stand,tag=cell,limit=1,distance=..0.1] group = @s group run scoreboard players add #tmp tmp 1
# execute at @e[tag=armor_stand,tag=cell] if score @e[type=armor_stand,tag=cell,limit=1,distance=..0.1] group = @s group run say here
execute if score #tmp tmp matches 1 run function slay:utils/remove/killunit
tellraw @a ["tmp: ",{"score":{"name":"#tmp","objective":"tmp"}}]