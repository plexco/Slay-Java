scoreboard players operation #grp tmp = @s group
scoreboard players operation #prt tmp = @s protectionLvl
tag @s add lookAtMe
execute as @e[type=armor_stand,tag=cell,distance=..1.3] if score @s group = #grp tmp if score @s protectionLvl = #prt tmp at @s run function slay:calculations/protection/show_protector
execute at @e[type=armor_stand,tag=cell,tag=protector,distance=.1..1.3] run summon area_effect_cloud ~ ~ ~ {Passengers:[{Rotation:[180f,0f],id:"armor_stand",Tags:["protector_display"],Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"stone_hoe",Count:1b}]}],Tags:["protector_display","needs_rotation"],Duration:20}
execute at @s[tag=protector] run summon area_effect_cloud ~ ~ ~ {Passengers:[{Rotation:[180f,0f],id:"armor_stand",Tags:["protector_display"],Invisible:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"stone_hoe",Count:1b}]}],Duration:20}
execute as @e[type=area_effect_cloud,tag=needs_rotation] at @s facing entity @e[type=armor_stand,tag=lookAtMe,limit=1] feet run tp @s ~ ~ ~ ~ 0
tag @e[tag=protector] remove protector
tag @e[tag=needs_rotation] remove needs_rotation
tag @s remove lookAtMe