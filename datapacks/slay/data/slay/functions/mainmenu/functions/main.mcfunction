function slay:mainmenu/functions/instructions
function slay:mainmenu/player_settings/optincoas
execute as @a[scores={rightClick=1..}] run function slay:mainmenu/player_settings/optinout
execute if score startTimer menu matches 0..200 run function slay:mainmenu/functions/starting
execute unless score startTimer menu matches 0..200 run function slay:mainmenu/functions/waiting

data merge entity afc1b905-d4c4-42e0-9c12-5805dd885bba {ItemRotation:6b}