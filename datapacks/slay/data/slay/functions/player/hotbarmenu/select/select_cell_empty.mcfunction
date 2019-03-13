scoreboard players set #amount tmp 0
execute at @e[type=armor_stand,tag=cell] if score @e[type=armor_stand,tag=cell,limit=1,sort=nearest] group = @s group run scoreboard players add #amount tmp 1
# execute if score #amount tmp matches 2.. unless score @e[tag=selected,limit=1] group = @s group if score @s team = @p[tag=currentPlayer] team run say hi

# there is a thing to pick up 
execute if score #amount tmp matches 2.. if score @s[tag=moveable] handItem matches 2..5 run scoreboard players operation @p[tag=currentPlayer] handItem = @s handItem 
execute if score #amount tmp matches 2.. if score @s[tag=moveable] handItem matches 2..5 run function slay:utils/remove/allunits 

# set selected, only if it's the same team and two or more fields, so selectable
execute if score #amount tmp matches 2.. if score @s team = @p[tag=currentPlayer] team run tag @e[tag=selected] remove selected
execute if score #amount tmp matches 2.. if score @s team = @p[tag=currentPlayer] team run tag @s add selected
