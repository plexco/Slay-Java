setblock 4 17 123 air
execute if score maptype menu matches 0 run setblock 4 17 123 minecraft:oak_wall_sign[facing=north]{Text1:'{"text":"Maptype","clickEvent":{"action":"run_command","value":"function slay:mainmenu/map_settings/maptype"}}',Text3:'{"text":"<    Pre-Built    >","color":"dark_green"}'}
execute if score maptype menu matches 1 run setblock 4 17 123 minecraft:oak_wall_sign[facing=north]{Text1:'{"text":"Maptype","clickEvent":{"action":"run_command","value":"function slay:mainmenu/map_settings/maptype"}}',Text3:'{"text":"<   Generated   >","color":"dark_green"}',Text4:'{"text":"(Advanced)","color":"gray","italic":true}'}