function slay:mainmenu/player_settings/check_playability

execute store result score #fieldsize tmp if entity @e[type=armor_stand,tag=cell]

execute if score #players tmp matches 2.. if score total_cells tmp matches 40.. run scoreboard players set startTimer menu 200
execute if score #players tmp matches 2.. if score total_cells tmp matches 40.. run tellraw @a ["> ",{"translate":"slay.menu.start","color":"dark_green","with":[{"selector":"@s"}]}]
execute if score #players tmp matches 2.. if score total_cells tmp matches 40.. run function slay:mainmenu/signs/abort_start
execute if score #players tmp matches ..1 run tellraw @s ["> ",{"translate":"slay.menu.cannotStart.players","color":"dark_red"}]
execute if score total_cells tmp matches ..39 run tellraw @s ["> ",{"translate":"slay.menu.cannotStart.fieldsize","color":"dark_red"}]