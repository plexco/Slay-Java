execute store result score #tmp tmp if entity @e[type=armor_stand,tag=cell]
scoreboard players operation #tmp tmp /= 20 const
function slay:create_field/tree_recursion