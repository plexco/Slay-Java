execute if score map_medium menu matches 0 run data merge block -23 8 77 {posZ:12,name:"slay:maps/medium/atomium"}
execute if score map_medium menu matches 1 run data merge block -23 8 77 {posZ:14,name:"slay:maps/medium/batman"}
execute if score map_medium menu matches 2 run data merge block -23 8 77 {posZ:14,name:"slay:maps/medium/britain"}
execute if score map_medium menu matches 3 run data merge block -23 8 77 {posZ:14,name:"slay:maps/medium/creeper"}
execute if score map_medium menu matches 4 run data merge block -23 8 77 {posZ:14,name:"slay:maps/medium/cube1"}
execute if score map_medium menu matches 5 run data merge block -23 8 77 {posZ:14,name:"slay:maps/medium/cubes2"}
execute if score map_medium menu matches 6 run data merge block -23 8 77 {posZ:14,name:"slay:maps/medium/diamond_medium"}
execute if score map_medium menu matches 7 run data merge block -23 8 77 {posZ:14,name:"slay:maps/medium/donut_medium"}
execute if score map_medium menu matches 8 run data merge block -23 8 77 {posZ:13,name:"slay:maps/medium/finland"}
execute if score map_medium menu matches 9 run data merge block -23 8 77 {posZ:14,name:"slay:maps/medium/four_quadrants"}
execute if score map_medium menu matches 10 run data merge block -23 8 77 {posZ:13,name:"slay:maps/medium/hermitcraft"}
execute if score map_medium menu matches 11 run data merge block -23 8 77 {posZ:14,name:"slay:maps/medium/hexflower_medium"}
execute if score map_medium menu matches 12 run data merge block -23 8 77 {posZ:15,name:"slay:maps/medium/mushroom"}
execute if score map_medium menu matches 13 run data merge block -23 8 77 {posZ:14,name:"slay:maps/medium/pacman"}
execute if score map_medium menu matches 14 run data merge block -23 8 77 {posZ:14,name:"slay:maps/medium/plagiatus"}
execute if score map_medium menu matches 15 run data merge block -23 8 77 {posZ:14,name:"slay:maps/medium/saturn"}
execute if score map_medium menu matches 16 run data merge block -23 8 77 {posZ:13,name:"slay:maps/medium/slay"}
execute if score map_medium menu matches 17 run data merge block -23 8 77 {posZ:14,name:"slay:maps/medium/star"}
execute if score map_medium menu matches 18 run data merge block -23 8 77 {posZ:14,name:"slay:maps/medium/sun"}
execute if score map_medium menu matches 19 run data merge block -23 8 77 {posZ:14,name:"slay:maps/medium/tiefighter"}
execute if score map_medium menu matches 20 run data merge block -23 8 77 {posZ:14,name:"slay:maps/medium/triangle"}
execute if score map_medium menu matches 21 run data merge block -23 8 77 {posZ:14,name:"slay:maps/medium/triforce"}

kill @e[type=armor_stand,tag=cell]

setblock -23 9 77 redstone_block
setblock -23 9 77 air