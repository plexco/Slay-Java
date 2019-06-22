tag @s add cell
data merge entity @s {NoGravity:1b,DisabledSlots: 4144959,Pose: {RightArm: [0.0f, 0.0f, 0.0f], Head: [0.0f, 1.0f, 0.0f], Body: [0.0f, 0.0f, 0.0f]},Rotation: [0.0f, 0.0f], HandItems: [{id: "minecraft:leather_boots", Count: 1b, tag: {display: {color: 16777215}, Damage: 0}}, {}],NoBasePlate: 1b}
execute store result score @s tmp run data get entity @s Pos[0]
scoreboard players operation @s tmp %= 2 const
execute if score @s tmp matches 1 at @s run tp @s ~ ~ ~.5
execute at @s run tp @s ~ ~.01 ~