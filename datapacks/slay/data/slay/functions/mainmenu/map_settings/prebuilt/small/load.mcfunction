execute if score map_small menu matches 0 run data merge block -23 8 77 {posZ:14,name:"slay:maps/small/capital"}
execute if score map_small menu matches 1 run data merge block -23 8 77 {posZ:14,name:"slay:maps/small/cubes1"}
execute if score map_small menu matches 2 run data merge block -23 8 77 {posZ:14,name:"slay:maps/small/diamond_small"}
execute if score map_small menu matches 3 run data merge block -23 8 77 {posZ:14,name:"slay:maps/small/donut_small"}
execute if score map_small menu matches 4 run data merge block -23 8 77 {posZ:14,name:"slay:maps/small/heart"}
execute if score map_small menu matches 5 run data merge block -23 8 77 {posZ:14,name:"slay:maps/small/helmet"}
execute if score map_small menu matches 6 run data merge block -23 8 77 {posZ:14,name:"slay:maps/small/hexflower_small"}
execute if score map_small menu matches 7 run data merge block -23 8 77 {posZ:14,name:"slay:maps/small/lavalamp"}
execute if score map_small menu matches 8 run data merge block -23 8 77 {posZ:14,name:"slay:maps/small/sword"}

kill @e[type=armor_stand,tag=cell]

setblock -23 9 77 redstone_block
setblock -23 9 77 air