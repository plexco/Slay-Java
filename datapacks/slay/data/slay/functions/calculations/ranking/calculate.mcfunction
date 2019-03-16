scoreboard players set #total tmp 0
scoreboard players set #1 tmp 0
scoreboard players set #2 tmp 0
scoreboard players set #3 tmp 0
scoreboard players set #4 tmp 0
scoreboard players set #5 tmp 0
scoreboard players set #6 tmp 0

execute as @e[type=armor_stand,tag=cell] run scoreboard players add #total tmp 1
execute as @e[type=armor_stand,tag=cell,team=1] run scoreboard players add #1 tmp 1
execute as @e[type=armor_stand,tag=cell,team=2] run scoreboard players add #2 tmp 1
execute as @e[type=armor_stand,tag=cell,team=3] run scoreboard players add #3 tmp 1
execute as @e[type=armor_stand,tag=cell,team=4] run scoreboard players add #4 tmp 1
execute as @e[type=armor_stand,tag=cell,team=5] run scoreboard players add #5 tmp 1
execute as @e[type=armor_stand,tag=cell,team=6] run scoreboard players add #6 tmp 1

#get percentages
scoreboard players operation #1p tmp = #1 tmp
scoreboard players operation #2p tmp = #2 tmp
scoreboard players operation #3p tmp = #3 tmp
scoreboard players operation #4p tmp = #4 tmp
scoreboard players operation #5p tmp = #5 tmp
scoreboard players operation #6p tmp = #6 tmp

scoreboard players operation #1p tmp *= 100 const
scoreboard players operation #2p tmp *= 100 const
scoreboard players operation #3p tmp *= 100 const
scoreboard players operation #4p tmp *= 100 const
scoreboard players operation #5p tmp *= 100 const
scoreboard players operation #6p tmp *= 100 const

scoreboard players operation #1p tmp /= #total tmp
scoreboard players operation #2p tmp /= #total tmp
scoreboard players operation #3p tmp /= #total tmp
scoreboard players operation #4p tmp /= #total tmp
scoreboard players operation #5p tmp /= #total tmp
scoreboard players operation #6p tmp /= #total tmp

# tellraw @a ["",{"score":{"name":"#1","objective":"tmp"}},{"text":" - "},{"score":{"name":"#2","objective":"tmp"}},{"text":" - "},{"score":{"name":"#3","objective":"tmp"}},{"text":" - "},{"score":{"name":"#4","objective":"tmp"}},{"text":" - "},{"score":{"name":"#5","objective":"tmp"}},{"text":" - "},{"score":{"name":"#6","objective":"tmp"}},{"text":""}]
# tellraw @a ["",{"score":{"name":"#1p","objective":"tmp"}},{"text":"% - "},{"score":{"name":"#2p","objective":"tmp"}},{"text":"% - "},{"score":{"name":"#3p","objective":"tmp"}},{"text":"% - "},{"score":{"name":"#4p","objective":"tmp"}},{"text":"% - "},{"score":{"name":"#5p","objective":"tmp"}},{"text":"% - "},{"score":{"name":"#6p","objective":"tmp"}},{"text":"%"}]
