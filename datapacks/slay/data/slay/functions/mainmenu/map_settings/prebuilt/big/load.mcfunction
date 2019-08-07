execute if score map_big menu matches 0 run data merge block -23 8 77 {posZ:13,name:"slay:maps/big/australia"}
execute if score map_big menu matches 1 run data merge block -23 8 77 {posZ:13,name:"slay:maps/big/castle"}
execute if score map_big menu matches 2 run data merge block -23 8 77 {posZ:14,name:"slay:maps/big/checkerboard"}
execute if score map_big menu matches 3 run data merge block -23 8 77 {posZ:14,name:"slay:maps/big/diamond_big"}
execute if score map_big menu matches 4 run data merge block -23 8 77 {posZ:13,name:"slay:maps/big/galaxy"}
execute if score map_big menu matches 5 run data merge block -23 8 77 {posZ:13,name:"slay:maps/big/germany"}
execute if score map_big menu matches 6 run data merge block -23 8 77 {posZ:13,name:"slay:maps/big/globe"}
execute if score map_big menu matches 7 run data merge block -23 8 77 {posZ:13,name:"slay:maps/big/hexflower_big"}
execute if score map_big menu matches 8 run data merge block -23 8 77 {posZ:14,name:"slay:maps/big/pokeball"}
execute if score map_big menu matches 9 run data merge block -23 8 77 {posZ:14,name:"slay:maps/big/six_quadrants"}
execute if score map_big menu matches 10 run data merge block -23 8 77 {posZ:14,name:"slay:maps/big/usa"}

kill @e[type=armor_stand,tag=cell]

setblock -23 9 77 redstone_block
setblock -23 9 77 air