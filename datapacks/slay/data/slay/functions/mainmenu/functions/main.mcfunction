execute if score startTimer menu matches 0..200 run function slay:mainmenu/functions/starting
execute unless score startTimer menu matches 0..200 run function slay:mainmenu/functions/waiting
function slay:mainmenu/functions/instructions

data merge entity afc1b905-d4c4-42e0-9c12-5805dd885bba {ItemRotation:6b}