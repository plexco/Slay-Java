#check protected level
scoreboard players operation #tmp tmp = @p[tag=currentPlayer] handItem
scoreboard players operation #tmp tmp -= 1 const

#protection is lower than unit level
execute if score @s protectionLvl < #tmp tmp run scoreboard players operation @s team = @p[tag=currentPlayer] team
execute if score @s protectionLvl < #tmp tmp run function slay:create_field/join_team
execute if score @s protectionLvl < #tmp tmp run function slay:create_field/set_color
execute if score @s protectionLvl < #tmp tmp run function slay:player/hotbarmenu/utils/place_unit
# execute if score @s protectionLvl < #tmp tmp run function slay:calculations/joined_cells/run
execute if score @s protectionLvl < #tmp tmp run function slay:calculations/capitals/check_where
execute if score @s protectionLvl < #tmp tmp run function slay:calculations/protection/calculate