execute store result score optinPlayers menu if entity @a[tag=optin]
setblock 0 17 123 air
setblock 0 17 123 minecraft:oak_wall_sign[facing=north]{Text1:'{"text":"Players ready"}',Text2:'{"text":"to play"}',Text4:'[{"score":{"name":"optinPlayers","objective":"menu"},"bold":true}]'}