execute as @a[tag=!initiated] run function slay:player/handling/new_player
execute as @a[scores={leave=1..}] run function slay:player/handling/returning_player

effect give @a weakness 10 10 true
effect give @a resistance 10 10 true
effect give @a saturation 10 10 true