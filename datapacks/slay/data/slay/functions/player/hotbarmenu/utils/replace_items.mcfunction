# run as the current player

function slay:player/utils/clear
replaceitem entity @s hotbar.0 minecraft:carrot_on_a_stick{display:{Name:'{"translate":"slay.item.click","italic":false}'},Unbreakable:1b,Damage:1,type:"click"}
execute as @e[type=armor_stand,tag=cell,tag=capital] if score @s group = @e[type=armor_stand,tag=selected,limit=1] group if score @s money matches 10.. run replaceitem entity @p[tag=currentPlayer,scores={handItem=0}] hotbar.1 minecraft:carrot_on_a_stick{display:{Name:'{"translate":"slay.item.buyUnit","italic":false,"with":[{"translate":"slay.unit.unit"}]}'},Unbreakable:1b,Damage:2,type:"buyUnit"}
execute as @e[type=armor_stand,tag=cell,tag=capital] if score @s group = @e[type=armor_stand,tag=selected,limit=1] group if score @s money matches 10.. run replaceitem entity @p[tag=currentPlayer,scores={handItem=1..4}] hotbar.1 minecraft:carrot_on_a_stick{display:{Name:'{"translate":"slay.item.upgradeUnit","italic":false,"with":[{"translate":"slay.unit.unit"}]}'},Unbreakable:1b,Damage:3,type:"buyUnit"}
execute as @e[type=armor_stand,tag=cell,tag=capital] if score @s group = @e[type=armor_stand,tag=selected,limit=1] group if score @s money matches 15.. run replaceitem entity @p[tag=currentPlayer,scores={handItem=0}] hotbar.2 minecraft:carrot_on_a_stick{display:{Name:'{"translate":"slay.item.buyCastle","italic":false,"with":[{"translate":"slay.unit.castle"}]}'},Unbreakable:1b,Damage:4,type:"buyCastle"}
replaceitem entity @s hotbar.3 minecraft:carrot_on_a_stick{display:{Name:'{"translate":"slay.item.endTurn","italic":false}'},Unbreakable:1b,Damage:5,type:"end"}


execute if entity @s[scores={handItem=2}] run replaceitem block 0 8 125 container.0 minecraft:wooden_sword{display:{Name:'{"translate":"slay.unit.peasant","italic":false}'},Unbreakable:1b,Damage:1}
execute if entity @s[scores={handItem=3}] run replaceitem block 0 8 125 container.0 minecraft:stone_sword{display:{Name:'{"translate":"slay.unit.spearman","italic":false}'},Unbreakable:1b,Damage:1}
execute if entity @s[scores={handItem=4}] run replaceitem block 0 8 125 container.0 minecraft:iron_sword{display:{Name:'{"translate":"slay.unit.knight","italic":false}'},Unbreakable:1b,Damage:1}
execute if entity @s[scores={handItem=5}] run replaceitem block 0 8 125 container.0 minecraft:diamond_sword{display:{Name:'{"translate":"slay.unit.baron","italic":false}'},Unbreakable:1b,Damage:1}
execute if entity @s[scores={handItem=6}] run replaceitem block 0 8 125 container.0 minecraft:diamond_axe{display:{Name:'{"translate":"slay.unit.castle","italic":false}'},Unbreakable:1b,Damage:1}
execute store result block 0 5 128 Items[0].tag.Damage int 1 run scoreboard players get theme settings
loot replace entity @s weapon.offhand 1 mine 0 8 125 air{drop_contents:1b}

replaceitem entity @s hotbar.8 minecraft:carrot_on_a_stick{display:{Name:'{"translate":"slay.item.forfeit","italic":false}'},Unbreakable:1b,Damage:6,type:"forfeit"}

function slay:player/hotbarmenu/utils/color_display

clear @s written_book
function slay:player/utils/instructions_book