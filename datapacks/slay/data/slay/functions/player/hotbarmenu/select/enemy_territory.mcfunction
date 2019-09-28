#check protected level
scoreboard players operation #tmp tmp = @p[tag=currentPlayer] handItem
scoreboard players operation #tmp tmp -= 1 const

execute if score @s protectionLvl >= #tmp tmp at @s run function slay:calculations/protection/get_protector

#protection is lower than unit level
execute if score @s protectionLvl < #tmp tmp run scoreboard players operation @s team = @p[tag=currentPlayer] team
execute if score @s protectionLvl < #tmp tmp run function slay:create_field/join_team
execute if score @s protectionLvl < #tmp tmp run function slay:create_field/set_color
execute if score @s protectionLvl < #tmp tmp unless score @s handItem matches 1..6 at @s run function slay:game/effects/conquer
execute if score @s protectionLvl < #tmp tmp run function slay:player/hotbarmenu/utils/place_unit
# execute if score @s protectionLvl < #tmp tmp run function slay:calculations/joined_cells/run
execute if score @s protectionLvl < #tmp tmp run function slay:calculations/capitals/check_where
execute if score @s protectionLvl < #tmp tmp run function slay:calculations/protection/calculate
