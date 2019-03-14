# executed as the armorstand

# tree
# execute as @s[scores={handItem=7..8}] run function slay:player/hotbarmenu/utils/place_unit

# upgrade unit?
execute as @s[scores={handItem=2..5}] run say hi
execute as @s[scores={handItem=2..5}] run scoreboard players set #tmp tmp -1
execute as @s[scores={handItem=2..5}] run scoreboard players operation #tmp tmp += @s handItem
execute as @s[scores={handItem=2..5}] run scoreboard players operation #tmp tmp += @p[tag=currentPlayer] handItem
execute as @s[scores={handItem=2..5}] if score #tmp tmp matches 2..5 run scoreboard players operation @p[tag=currentPlayer] handItem = #tmp tmp

# run for both trees or units
execute unless entity @s[scores={handItem=..1}] unless entity @s[scores={handItem=6}] unless entity @s[scores={handItem=9..}] run function slay:player/hotbarmenu/utils/place_unit

# castle
# execute as @s[scores={handItem=6}]
# don't do anything then.