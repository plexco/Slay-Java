execute store result score #amount tmp2 if entity @e[type=armor_stand,scores={group=0},tag=capital]
# none existant yet
execute if score #amount tmp2 matches 0 store success score #worked tmp as @e[type=armor_stand,tag=cell,scores={group=0},limit=1,sort=random,tag=!occupied] run function slay:calculations/capitals/make_capital
execute if score #worked tmp matches 0 store success score #worked tmp as @e[type=armor_stand,tag=cell,scores={group=0},limit=1,sort=random,tag=peasant] run function slay:calculations/capitals/make_capital
execute if score #worked tmp matches 0 store success score #worked tmp as @e[type=armor_stand,tag=cell,scores={group=0},limit=1,sort=random,tag=spearman] run function slay:calculations/capitals/make_capital
execute if score #worked tmp matches 0 store success score #worked tmp as @e[type=armor_stand,tag=cell,scores={group=0},limit=1,sort=random,tag=castle] run function slay:calculations/capitals/make_capital
execute if score #worked tmp matches 0 store success score #worked tmp as @e[type=armor_stand,tag=cell,scores={group=0},limit=1,sort=random,tag=knight] run function slay:calculations/capitals/make_capital
execute if score #worked tmp matches 0 store success score #worked tmp as @e[type=armor_stand,tag=cell,scores={group=0},limit=1,sort=random,tag=baron] run function slay:calculations/capitals/make_capital
execute if score #worked tmp matches 0 store success score #worked tmp as @e[type=armor_stand,tag=cell,scores={group=0},limit=1,sort=random] run function slay:calculations/capitals/make_capital

# too many exist
execute if score #amount tmp2 matches 2.. store success score #worked tmp as @e[type=armor_stand,tag=cell,scores={group=0},limit=1,sort=random,tag=capital] run function slay:calculations/capitals/transfer