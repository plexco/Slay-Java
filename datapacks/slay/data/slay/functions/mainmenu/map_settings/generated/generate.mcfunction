execute if score #mapCd tmp matches ..0 run tellraw @a ["> ",{"translate":"slay.menu.generating"}]
execute if score #mapCd tmp matches ..0 run execute as @s run function slay:create_field/create_preview

execute if score #mapCd tmp matches ..0 run function slay:create_field/remove_cells/remove

execute if score #mapCd tmp matches ..0 run scoreboard players set #mapCd tmp 30