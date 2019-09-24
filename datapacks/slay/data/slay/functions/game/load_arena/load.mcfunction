fill -22 49 24 25 49 71 air
execute if score theme settings matches 1 run function slay:game/load_arena/default
execute if score theme settings matches 2 run function slay:game/load_arena/classic
execute if score theme settings matches 3 run function slay:game/load_arena/arctic
execute if score theme settings matches 4 run function slay:game/load_arena/pacman
execute if score theme settings matches 5 run function slay:game/load_arena/orcs
execute if score theme settings matches 6 run function slay:game/load_arena/robots
execute if score theme settings matches 7 run function slay:game/load_arena/suits


function slay:game/load_arena/set_redstone