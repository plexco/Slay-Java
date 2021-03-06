execute store result score #amount tmp2 if entity @e[type=armor_stand,tag=activegroup,tag=capital]

# none existant yet
scoreboard players set #worked tmp 0
execute if score #amount tmp2 matches 0 store success score #worked tmp as @e[type=armor_stand,tag=cell,tag=activegroup,limit=1,sort=random,tag=!occupied] run function slay:calculations/capitals/make_capital
execute if score #amount tmp2 matches 0 if score #worked tmp matches 0 store success score #worked tmp as @e[type=armor_stand,tag=cell,tag=activegroup,limit=1,sort=random,tag=grave] run function slay:calculations/capitals/make_capital
execute if score #amount tmp2 matches 0 if score #worked tmp matches 0 store success score #worked tmp as @e[type=armor_stand,tag=cell,tag=activegroup,limit=1,sort=random,tag=tree] run function slay:calculations/capitals/make_capital
execute if score #amount tmp2 matches 0 if score #worked tmp matches 0 store success score #worked tmp as @e[type=armor_stand,tag=cell,tag=activegroup,limit=1,sort=random,tag=palm] run function slay:calculations/capitals/make_capital
execute if score #amount tmp2 matches 0 if score #worked tmp matches 0 store success score #worked tmp as @e[type=armor_stand,tag=cell,tag=activegroup,limit=1,sort=random,tag=peasant] run function slay:calculations/capitals/make_capital
execute if score #amount tmp2 matches 0 if score #worked tmp matches 0 store success score #worked tmp as @e[type=armor_stand,tag=cell,tag=activegroup,limit=1,sort=random,tag=spearman] run function slay:calculations/capitals/make_capital
execute if score #amount tmp2 matches 0 if score #worked tmp matches 0 store success score #worked tmp as @e[type=armor_stand,tag=cell,tag=activegroup,limit=1,sort=random,tag=castle] run function slay:calculations/capitals/make_capital
execute if score #amount tmp2 matches 0 if score #worked tmp matches 0 store success score #worked tmp as @e[type=armor_stand,tag=cell,tag=activegroup,limit=1,sort=random,tag=knight] run function slay:calculations/capitals/make_capital
execute if score #amount tmp2 matches 0 if score #worked tmp matches 0 store success score #worked tmp as @e[type=armor_stand,tag=cell,tag=activegroup,limit=1,sort=random,tag=baron] run function slay:calculations/capitals/make_capital
execute if score #amount tmp2 matches 0 if score #worked tmp matches 0 store success score #worked tmp as @e[type=armor_stand,tag=cell,tag=activegroup,limit=1,sort=random] run function slay:calculations/capitals/make_capital

# too many exist
scoreboard players set #mx tmp 10000
execute if score #amount tmp2 matches 2.. as @e[type=armor_stand,tag=cell,tag=activegroup,tag=capital] run scoreboard players operation #mx tmp < @s money
execute if score #amount tmp2 matches 2.. as @e[type=armor_stand,tag=cell,tag=activegroup,tag=capital] run scoreboard players operation @s tmp = @s money
execute if score #amount tmp2 matches 2.. as @e[type=armor_stand,tag=cell,tag=activegroup,tag=capital] run scoreboard players operation @s tmp -= #mx tmp
execute if score #amount tmp2 matches 2.. as @e[type=armor_stand,tag=cell,tag=activegroup,limit=1,scores={tmp=0},tag=capital] at @s run function slay:calculations/capitals/transfer

execute store result score #amount tmp2 if entity @e[type=armor_stand,tag=activegroup,tag=capital]
scoreboard players set #mx tmp 10000
execute if score #amount tmp2 matches 2.. as @e[type=armor_stand,tag=cell,tag=activegroup,tag=capital] run scoreboard players operation #mx tmp < @s money
execute if score #amount tmp2 matches 2.. as @e[type=armor_stand,tag=cell,tag=activegroup,tag=capital] run scoreboard players operation @s tmp = @s money
execute if score #amount tmp2 matches 2.. as @e[type=armor_stand,tag=cell,tag=activegroup,tag=capital] run scoreboard players operation @s tmp -= #mx tmp
execute if score #amount tmp2 matches 2.. as @e[type=armor_stand,tag=cell,tag=activegroup,limit=1,scores={tmp=0},tag=capital] at @s run function slay:calculations/capitals/transfer
