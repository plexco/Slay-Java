function slay:mainmenu/subposition/get
execute if score gamemode menu matches 0 if score signy tmp matches 30..63 if score signx tmp matches 0..33 run scoreboard players add afktimer settings 200
execute if score gamemode menu matches 0 if score signy tmp matches 30..63 if score signx tmp matches 66..100 run scoreboard players remove afktimer settings 200


execute if score gamemode menu matches 1 if score signy tmp matches 20..45 if score signx tmp matches 0..33 run scoreboard players add roundtimer settings 100
execute if score gamemode menu matches 1 if score signy tmp matches 46..63 if score signx tmp matches 0..33 run scoreboard players add afktimer settings 200
execute if score gamemode menu matches 1 if score signy tmp matches 20..45 if score signx tmp matches 66..100 run scoreboard players remove roundtimer settings 100
execute if score gamemode menu matches 1 if score signy tmp matches 46..63 if score signx tmp matches 66..100 run scoreboard players remove afktimer settings 200



execute if score afktimer settings matches ..0 run scoreboard players set afktimer settings 0
execute if score afktimer settings matches 1200.. run scoreboard players set afktimer settings 1200

execute if score roundtimer settings matches ..300 run scoreboard players set roundtimer settings 300
execute if score roundtimer settings matches 2400.. run scoreboard players set roundtimer settings 2400

function slay:mainmenu/signs/general/timer