# a new territory has been selected
execute unless score @e[tag=selected,limit=1] group = @s group if score @s team = @p[tag=currentPlayer] team run function slay:player/utils/put_unit_back

# it's the same territory as the selected territory and its empty
execute if score @e[tag=selected,limit=1] group = @s group as @s[scores={handItem=0}] run tag @s add moveable
execute if score @e[tag=selected,limit=1] group = @s group as @s[scores={handItem=0}] run function slay:player/hotbarmenu/utils/place_unit

# it's the same territory as the selected territory but it's occupied
execute if score @e[tag=selected,limit=1] group = @s group if entity @p[tag=currentPlayer,scores={handItem=2..5}] as @s[scores={handItem=2..}] run function slay:player/hotbarmenu/select/upgrade_or_tree

# it's not team territory but it's nearby (conquering)
scoreboard players set #nearby tmp 0
execute at @s as @e[type=armor_stand,tag=cell,distance=0.1..1.3] if score @s group = @e[tag=selected,limit=1] group run scoreboard players add #nearby tmp 1
execute unless score @e[tag=selected,limit=1] group = @s group unless score @s team = @p[tag=currentPlayer] team if score #nearby tmp matches 1.. run function slay:player/hotbarmenu/select/enemy_territory

# set new selected cell
scoreboard players set #amount tmp 0
execute at @e[type=armor_stand,tag=cell] if score @e[type=armor_stand,tag=cell,limit=1,sort=nearest] group = @s group run scoreboard players add #amount tmp 1
execute if score #amount tmp matches 2.. if score @s team = @p[tag=currentPlayer] team run tag @e[tag=selected] remove selected
execute if score #amount tmp matches 2.. if score @s team = @p[tag=currentPlayer] team run tag @s add selected
