setblock 11 16 121 air
execute if score theme settings matches 1 run setblock 11 16 121 minecraft:oak_wall_sign[facing=north]{Text1:'{"text":"Theme","clickEvent":{"action":"run_command","value":"function slay:mainmenu/theme_settings/theme_settings"}}',Text3:'{"text":"<    Default    >","color":"dark_green"}',Text4:'{"text":"Etex","color":"dark_gray","italic":true}'}
execute if score theme settings matches 2 run setblock 11 16 121 minecraft:oak_wall_sign[facing=north]{Text1:'{"text":"Theme","clickEvent":{"action":"run_command","value":"function slay:mainmenu/theme_settings/theme_settings"}}',Text3:'{"text":"<    Classic    >","color":"dark_green"}',Text4:'{"text":"Etex","color":"dark_gray","italic":true}'}
execute if score theme settings matches 3 run setblock 11 16 121 minecraft:oak_wall_sign[facing=north]{Text1:'{"text":"Theme","clickEvent":{"action":"run_command","value":"function slay:mainmenu/theme_settings/theme_settings"}}',Text3:'{"text":"<    Arctic    >","color":"dark_green"}',Text4:'{"text":"Etex","color":"dark_gray","italic":true}'}