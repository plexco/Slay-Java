setblock 6 17 123 air
execute if score map_big menu matches 0 run setblock 6 17 123 minecraft:oak_wall_sign[facing=north]{Text1:'{"text":"Map","clickEvent":{"action":"run_command","value":"function slay:mainmenu/map_settings/prebuilt/map_big"}}',Text3:'{"text":"<    Big1     >","color":"dark_green"}'}
execute if score map_big menu matches 1 run setblock 6 17 123 minecraft:oak_wall_sign[facing=north]{Text1:'{"text":"Map","clickEvent":{"action":"run_command","value":"function slay:mainmenu/map_settings/prebuilt/map_big"}}',Text3:'{"text":"<    Big2     >","color":"dark_green"}'}
execute if score map_big menu matches 2 run setblock 6 17 123 minecraft:oak_wall_sign[facing=north]{Text1:'{"text":"Map","clickEvent":{"action":"run_command","value":"function slay:mainmenu/map_settings/prebuilt/map_big"}}',Text3:'{"text":"<    Big3     >","color":"dark_green"}'}