scoreboard players set #tmp3 tmp 0
execute as @e[type=armor_stand,tag=previousPos] run tag @s add moveable
execute store success score #tmp3 tmp as @e[type=armor_stand,tag=previousPos] run function slay:player/hotbarmenu/utils/place_unit

execute if score #tmp3 tmp matches 0 as @e[type=armor_stand,tag=cell,tag=!occupied,scores={handItem=..0}] if score @s group = @e[tag=selected,limit=1] group run tag @s add possiblepos
execute store success score #tmp3 tmp run tag @e[type=armor_stand,tag=possiblepos,limit=1,sort=random] add newpos
execute if score #tmp3 tmp matches 1 run tag @e[type=armor_stand,tag=newpos] add moveable

execute if score #tmp3 tmp matches 0 as @e[type=armor_stand,tag=cell,tag=!occupied,scores={handItem=7..8}] if score @s group = @e[tag=selected,limit=1] group run tag @s add newpos

execute if score #tmp3 tmp matches 1 as @e[type=armor_stand,tag=newpos] run function slay:player/hotbarmenu/utils/place_unit

tag @e[tag=possiblepos] remove possiblepos
tag @e[tag=newpos] remove newpos