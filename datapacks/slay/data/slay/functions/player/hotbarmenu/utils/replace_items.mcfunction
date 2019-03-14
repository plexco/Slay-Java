# run as the current player

clear @s
replaceitem entity @s hotbar.0 minecraft:carrot_on_a_stick{display:{Name:"\"click\""}}
execute as @e[type=armor_stand,tag=cell,tag=capital] if score @s group = @e[type=armor_stand,tag=selected,limit=1] group if score @s money matches 10.. run replaceitem entity @p[tag=currentPlayer] hotbar.1 minecraft:carrot_on_a_stick{display:{Name:"\"buy/upgrade unit (10$)\""}}
execute as @e[type=armor_stand,tag=cell,tag=capital] if score @s group = @e[type=armor_stand,tag=selected,limit=1] group if score @s money matches 15.. run replaceitem entity @p[tag=currentPlayer] hotbar.2 minecraft:carrot_on_a_stick{display:{Name:"\"buy castle (15$)\""}}
replaceitem entity @s hotbar.3 minecraft:carrot_on_a_stick{display:{Name:"\"end turn\""}}

replaceitem entity @s[scores={handItem=2}] hotbar.5 minecraft:wooden_sword{display:{Name:"\"Peasant\""},Unbreakable:1b,Damage:1}
replaceitem entity @s[scores={handItem=3}] hotbar.5 minecraft:stone_sword{display:{Name:"\"Spearman\""},Unbreakable:1b,Damage:1}
replaceitem entity @s[scores={handItem=4}] hotbar.5 minecraft:iron_sword{display:{Name:"\"Knight\""},Unbreakable:1b,Damage:1}
replaceitem entity @s[scores={handItem=5}] hotbar.5 minecraft:diamond_sword{display:{Name:"\"Baron\""},Unbreakable:1b,Damage:1}
replaceitem entity @s[scores={handItem=6}] hotbar.5 minecraft:diamond_axe{display:{Name:"\"Castle\""},Unbreakable:1b,Damage:1}

replaceitem entity @s hotbar.8 minecraft:carrot_on_a_stick{display:{Name:"\"forfeit\""}}