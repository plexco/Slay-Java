# executed as the armorstand


# upgrade unit?
scoreboard players set #tmp tmp -1
execute as @s[scores={handItem=2..5}] run scoreboard players operation #tmp tmp += @s handItem
execute as @s[scores={handItem=2..5}] run scoreboard players operation #tmp tmp += @p[tag=currentPlayer] handItem
execute as @s[scores={handItem=2..5}] if score #tmp tmp matches 2..5 run scoreboard players operation @p[tag=currentPlayer] handItem = #tmp tmp

# tree
execute as @s[scores={handItem=7..8}] run function slay:player/hotbarmenu/utils/place_unit

# run for both trees or units
execute if score #tmp tmp matches 2..5 if entity @s[scores={handItem=2..5}] run function slay:player/hotbarmenu/utils/place_unit
# castle
# execute as @s[scores={handItem=6}]
# don't do anything then.