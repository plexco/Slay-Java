execute if entity @s[tag=!tree,tag=!palm] run summon area_effect_cloud ~ ~.5 ~ {Duration:80,CustomName:'{"text":"+1","color":"green"}',CustomNameVisible:1b}
execute if entity @s[tag=tree] run summon area_effect_cloud ~ ~.5 ~ {Duration:80,CustomName:'{"text":"0","color":"white"}',CustomNameVisible:1b}
execute if entity @s[tag=palm] run summon area_effect_cloud ~ ~.5 ~ {Duration:80,CustomName:'{"text":"0","color":"white"}',CustomNameVisible:1b}
execute if entity @s[tag=peasant] run summon area_effect_cloud ~ ~1 ~ {Duration:100,CustomName:'{"text":"-2","color":"dark_red"}',CustomNameVisible:1b}
execute if entity @s[tag=spearman] run summon area_effect_cloud ~ ~1 ~ {Duration:100,CustomName:'{"text":"-6","color":"dark_red"}',CustomNameVisible:1b}
execute if entity @s[tag=knight] run summon area_effect_cloud ~ ~1 ~ {Duration:100,CustomName:'{"text":"-18","color":"dark_red"}',CustomNameVisible:1b}
execute if entity @s[tag=baron] run summon area_effect_cloud ~ ~1 ~ {Duration:100,CustomName:'{"text":"-54","color":"dark_red"}',CustomNameVisible:1b}