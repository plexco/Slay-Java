scoreboard players set #maxBigSteps tmp 20
scoreboard players set #maxSmallSteps tmp 100
execute at @s anchored eyes positioned ^ ^ ^ run summon area_effect_cloud ~ ~ ~ {Tags:["position_finder"]}
execute at @s anchored eyes positioned ^ ^ ^ anchored feet run function slay:mainmenu/subposition/big_step
# tellraw @a ["",{"score":{"name":"signx","objective":"tmp"}}," ",{"score":{"name":"signy","objective":"tmp"}}]
kill @e[type=area_effect_cloud,tag=position_finder]