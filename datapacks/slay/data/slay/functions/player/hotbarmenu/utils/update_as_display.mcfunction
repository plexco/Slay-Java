item replace entity @s[scores={handItem=2},tag=!moveable] armor.head with minecraft:wooden_sword{Unbreakable:1b} 
item replace entity @s[scores={handItem=3},tag=!moveable] armor.head with minecraft:stone_sword{Unbreakable:1b} 
item replace entity @s[scores={handItem=4},tag=!moveable] armor.head with minecraft:iron_sword{Unbreakable:1b} 
item replace entity @s[scores={handItem=5},tag=!moveable] armor.head with minecraft:diamond_sword{Unbreakable:1b}
item replace entity @s[scores={handItem=2},tag=moveable] armor.head with minecraft:wooden_shovel{Unbreakable:1b} 
item replace entity @s[scores={handItem=3},tag=moveable] armor.head with minecraft:stone_shovel{Unbreakable:1b} 
item replace entity @s[scores={handItem=4},tag=moveable] armor.head with minecraft:iron_shovel{Unbreakable:1b} 
item replace entity @s[scores={handItem=5},tag=moveable] armor.head with minecraft:diamond_shovel{Unbreakable:1b}

item replace entity @s[scores={handItem=6}] armor.head with minecraft:diamond_axe{Unbreakable:1b}

item replace entity @s[scores={handItem=1}] armor.head with minecraft:iron_axe{Unbreakable:1b}
execute if score @s[tag=capital] team = #currentPlayer score run item replace entity @s[scores={handItem=1,money=10..}] armor.head with minecraft:golden_sword{Unbreakable:1b}

execute store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players get theme settings