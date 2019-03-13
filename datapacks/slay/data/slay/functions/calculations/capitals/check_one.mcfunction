execute store result score #amount tmp2 if entity @e[type=armor_stand,tag=activegroup,tag=capital]

# none existant yet
execute if score #amount tmp2 matches 0 store success score #worked tmp as @e[type=armor_stand,tag=cell,tag=activegroup,limit=1,sort=random,tag=!occupied] run function slay:calculations/capitals/make_capital
execute if score #amount tmp2 matches 0 if score #worked tmp matches 0 store success score #worked tmp as @e[type=armor_stand,tag=cell,tag=activegroup,limit=1,sort=random,tag=tree] run function slay:calculations/capitals/make_capital
execute if score #amount tmp2 matches 0 if score #worked tmp matches 0 store success score #worked tmp as @e[type=armor_stand,tag=cell,tag=activegroup,limit=1,sort=random,tag=palmtree] run function slay:calculations/capitals/make_capital
execute if score #worked tmp matches 0 store success score #worked tmp as @e[type=armor_stand,tag=cell,tag=activegroup,limit=1,sort=random,tag=peasant] run function slay:calculations/capitals/make_capital
execute if score #worked tmp matches 0 store success score #worked tmp as @e[type=armor_stand,tag=cell,tag=activegroup,limit=1,sort=random,tag=spearman] run function slay:calculations/capitals/make_capital
execute if score #worked tmp matches 0 store success score #worked tmp as @e[type=armor_stand,tag=cell,tag=activegroup,limit=1,sort=random,tag=castle] run function slay:calculations/capitals/make_capital
execute if score #worked tmp matches 0 store success score #worked tmp as @e[type=armor_stand,tag=cell,tag=activegroup,limit=1,sort=random,tag=knight] run function slay:calculations/capitals/make_capital
execute if score #worked tmp matches 0 store success score #worked tmp as @e[type=armor_stand,tag=cell,tag=activegroup,limit=1,sort=random,tag=baron] run function slay:calculations/capitals/make_capital
execute if score #worked tmp matches 0 store success score #worked tmp as @e[type=armor_stand,tag=cell,tag=activegroup,limit=1,sort=random] run function slay:calculations/capitals/make_capital

# too many exist
execute if score #amount tmp2 matches 2.. store success score #worked tmp as @e[type=armor_stand,tag=cell,tag=activegroup,limit=1,sort=random,tag=capital] run function slay:calculations/capitals/transfer