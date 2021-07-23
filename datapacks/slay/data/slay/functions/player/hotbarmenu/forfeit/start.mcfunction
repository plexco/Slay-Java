# execute as @s[tag=forfeit] run function slay:player/hotbarmenu/forfeit/forfeit

tag @s add forfeit
scoreboard players set @s forfeitCounter 100
function slay:player/utils/clear

scoreboard players set @s rightClick 0
item replace entity @s hotbar.5 with minecraft:carrot_on_a_stick{display:{Name:'{"translate":"slay.item.forfeitForReal","italic":false}'},Unbreakable:1b,Damage:6,type:"forfeitReal"}